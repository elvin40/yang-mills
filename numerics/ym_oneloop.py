"""One-loop increment of one Balaban block-spin step for SU(2) lattice gauge theory.

Setup (THEOREM2.md section 8, with the determinant formula derived 2026-10-27):
  fine periodic lattice n^4, block factor L, averaging CMP 109 eq. (0.4),
  background U0 = constant abelian flux F = 2 pi q / n^2 in the (0,1) plane, sigma_3 direction.
  log Z(V_F) = const + log det(D^T D) - 1/2 log |det Bord|,
    D       = covariant gradient on gauge parameters vanishing at block anchors,
    Bord    = [[Delta + D D^T, Qt^T], [Qt, 0]],  Delta = Hessian of Wilson action at U0,
    Qt      = linearization of the averaging at U0.
  D(F) = log Z(V_F) - log Z(1),  beta_1(0) ~ D(F) / A_coarse(V_F).
Conventions: SU(2) as quaternions (q0, v) <-> q0 + i v.sigma; Lie algebra vector B <-> B.sigma/2;
  links U = exp(iB) U0; gauge: U(x,y) -> g(x) U g(y)^-1.
"""
import sys, json, time, itertools, os
import numpy as np
import jax, jax.numpy as jnp
import scipy.sparse as sp
import scipy.sparse.linalg as spla

jax.config.update("jax_enable_x64", True)

# ---------- SU(2) quaternion algebra ----------
def qmul(a, b):
    a0, av = a[..., :1], a[..., 1:]
    b0, bv = b[..., :1], b[..., 1:]
    return jnp.concatenate([a0 * b0 - jnp.sum(av * bv, -1, keepdims=True),
                            a0 * bv + b0 * av - jnp.cross(av, bv)], -1)

def qinv(a):
    return a * jnp.array([1., -1., -1., -1.])

def _safe(s, series, exact, thr=1e-4):
    s_safe = jnp.where(s < thr, 1.0, s)
    return jnp.where(s < thr, series(s), exact(s_safe))

def qexp(B):  # exp(i B.sigma/2)
    s = jnp.sum(B * B, -1, keepdims=True)
    c = _safe(s, lambda s: 1 - s / 8 + s**2 / 384 - s**3 / 46080, lambda s: jnp.cos(jnp.sqrt(s) / 2))
    v = _safe(s, lambda s: 0.5 - s / 48 + s**2 / 3840 - s**3 / 645120,
              lambda s: jnp.sin(jnp.sqrt(s) / 2) / jnp.sqrt(s))
    return jnp.concatenate([c, v * B], -1)

def qlog(q):  # (1/i) log, returns B with q = exp(i B.sigma/2); principal branch, q0 > 0 assumed near identity
    q0, v = q[..., :1], q[..., 1:]
    s = jnp.sum(v * v, -1, keepdims=True)
    g = _safe(s, lambda s: 2 / q0 * (1 - s / (3 * q0**2) + s**2 / (5 * q0**4) - s**3 / (7 * q0**6)),
              lambda s: 2 * jnp.arctan2(jnp.sqrt(s), q0) / jnp.sqrt(s))
    return g * v

IDQ = np.array([1., 0., 0., 0.])

def rot(q):  # R with U (i lam.sigma) U^-1 = i (R lam).sigma, computed from qmul (no convention risk)
    e = np.zeros((3, 4)); e[:, 1:] = np.eye(3)
    r = np.asarray(qmul(qmul(q[None], e), qinv(q)[None]))
    return r[:, 1:].T  # column a = image of e_a

# ---------- lattice ----------
class Lat:
    def __init__(self, n, L, anchor=None):
        assert n % L == 0
        self.n, self.L, self.nc = n, L, n // L
        self.h = (L - 1) // 2 if anchor is None else anchor  # anchor offset inside block
        self.nsites, self.nlinks = n**4, 4 * n**4
        self.coords = np.array(list(np.ndindex(n, n, n, n)))  # site -> x
        m = np.array(list(np.ndindex(*(4 * [self.nc]))))
        self.anchors = (self.h + L * m) % n  # coarse site -> anchor x
        self.ncs = len(m)
        self.is_anchor = np.zeros(self.nsites, bool)
        self.is_anchor[self.pos(self.anchors)] = True
        self.nc_index = np.cumsum(~self.is_anchor) - 1  # non-anchor site -> index

    def pos(self, x):
        x = np.asarray(x) % self.n
        return ((x[..., 0] * self.n + x[..., 1]) * self.n + x[..., 2]) * self.n + x[..., 3]

    def link(self, x, mu):
        return 4 * self.pos(x) + mu

    def cpos(self, m):
        m = np.asarray(m) % self.nc
        return ((m[..., 0] * self.nc + m[..., 1]) * self.nc + m[..., 2]) * self.nc + m[..., 3]

# ---------- background ----------
def background(lat, q, plane=(0, 1)):
    """Constant abelian flux F = 2 pi q / n^2 in plane, sigma_3 direction. Returns (nlinks,4) quaternions."""
    n = lat.n
    F = 2 * np.pi * q / n**2
    U = np.tile(IDQ, (lat.nlinks, 1))
    mu, nu = plane
    x = lat.coords
    ang = F * x[:, mu]
    U[4 * np.arange(lat.nsites) + nu] = np.stack([np.cos(ang), 0 * ang, 0 * ang, np.sin(ang)], 1)
    edge = x[:, mu] == n - 1
    ang2 = -F * n * x[edge, nu]
    U[4 * np.where(edge)[0] + mu] = np.stack([np.cos(ang2), 0 * ang2, 0 * ang2, np.sin(ang2)], 1)
    return U, F

def gauge_transform(lat, U, g):
    """U^g(x,y) = g(x) U g(y)^-1 with g (nsites,4)."""
    x = lat.coords
    out = np.zeros_like(U)
    for mu in range(4):
        y = x.copy(); y[:, mu] += 1
        b = 4 * np.arange(lat.nsites) + mu
        out[b] = np.asarray(qmul(qmul(g, U[b]), qinv(g[lat.pos(y)])))
    return out

# ---------- plaquettes and Hessian ----------
def plaq_links(lat):
    """(6 n^4, 4) link indices b1..b4 with U_p = U1 U2 U3^-1 U4^-1."""
    x = lat.coords
    out = []
    for mu, nu in itertools.combinations(range(4), 2):
        xm = x.copy(); xm[:, mu] += 1
        xn = x.copy(); xn[:, nu] += 1
        out.append(np.stack([lat.link(x, mu), lat.link(xm, nu), lat.link(xn, mu), lat.link(x, nu)], 1))
    return np.concatenate(out, 0)

def plaq_action(Bs, U0s):  # Bs (4,3), U0s (4,4)
    U = qmul(qexp(Bs), U0s)
    P = qmul(qmul(U[0], U[1]), qmul(qinv(U[2]), qinv(U[3])))
    return 1.0 - P[0]

_hess = jax.jit(jax.vmap(lambda U0s: jax.hessian(lambda b: plaq_action(b.reshape(4, 3), U0s))(jnp.zeros(12))))
_grad = jax.jit(jax.vmap(lambda U0s: jax.grad(lambda b: plaq_action(b.reshape(4, 3), U0s))(jnp.zeros(12))))

def hessian_matrix(lat, U0, chunk=20000):
    pl = plaq_links(lat)
    H = np.concatenate([np.asarray(_hess(jnp.asarray(U0[pl[i:i + chunk]]))) for i in range(0, len(pl), chunk)])
    G = np.concatenate([np.asarray(_grad(jnp.asarray(U0[pl[i:i + chunk]]))) for i in range(0, len(pl), chunk)])
    dof = (3 * pl[:, :, None] + np.arange(3)).reshape(len(pl), 12)
    rows = np.repeat(dof, 12, axis=1).ravel(); cols = np.tile(dof, (1, 12)).ravel()
    Delta = sp.coo_matrix((H.ravel(), (rows, cols)), shape=(3 * lat.nlinks,) * 2).tocsr()
    grad = np.zeros(3 * lat.nlinks); np.add.at(grad, dof.ravel(), G.ravel())
    return Delta, grad

# ---------- averaging (CMP 109 eq. (0.4)) ----------
def loops_for_direction(lat, mu):
    """Loops c- -> x -> x' -> c+ -> c- relative to anchor 0, per CMP 109 (0.4). Returns padded arrays."""
    L, h = lat.L, lat.h
    rng = range(-h, L - h)
    loops, weights = [], []
    def path(start, d):  # all axis-ordered monotone paths from start by displacement d
        dirs = [k for k in range(4) if d[k] != 0]
        out = []
        for perm in itertools.permutations(dirs):
            z = np.array(start); steps = []
            for k in perm:
                sgn = int(np.sign(d[k]))
                for _ in range(abs(d[k])):
                    if sgn > 0:
                        steps.append((tuple(z), k, +1)); z[k] += 1
                    else:
                        z[k] -= 1; steps.append((tuple(z), k, -1))
            out.append(steps)
        return out
    e = np.zeros(4, int); e[mu] = L
    straight = [(tuple(k * e // L), mu, +1) for k in range(L)]  # c- -> c+
    for d in itertools.product(rng, repeat=4):
        d = np.array(d)
        G1 = path(np.zeros(4, int), d)
        G2 = path(e, d)  # c+ -> x'
        seg = [(tuple(d + k * e // L), mu, +1) for k in range(L)]  # x -> x'
        w = 1.0 / L**4 / (len(G1) * len(G2))
        for g1 in G1:
            for g2 in G2:
                loop = g1 + seg + [(s, k, -sg) for (s, k, sg) in reversed(g2)] + [(s, k, -sg) for (s, k, sg) in reversed(straight)]
                loops.append(loop); weights.append(w)
    keys = sorted({(s, k) for lp in loops for (s, k, _) in lp} | {(s, k) for (s, k, _) in straight})
    kidx = {key: i for i, key in enumerate(keys)}
    m, T = len(keys), max(len(lp) for lp in loops)
    pos = np.full((len(loops), T), m, int); sgn = np.ones((len(loops), T), int)
    for i, lp in enumerate(loops):
        for t, (s, k, sg) in enumerate(lp):
            pos[i, t] = kidx[(s, k)]; sgn[i, t] = sg
    spos = np.array([kidx[(s, k)] for (s, k, _) in straight])
    rel = np.array([s for (s, k) in keys]); rdir = np.array([k for (s, k) in keys])
    return dict(pos=pos, sgn=sgn, w=np.array(weights), spos=spos, rel=rel, rdir=rdir, m=m)

def make_avg_fn(lp):
    pos, sgn, w, spos = (jnp.asarray(lp[k]) for k in ("pos", "sgn", "w", "spos"))
    def coarse_link(Bloc, U0loc):  # Bloc (m,3), U0loc (m,4) -> coarse link quaternion
        U = qmul(qexp(Bloc), U0loc)
        U = jnp.concatenate([U, jnp.asarray(IDQ)[None]], 0)
        Uinv = qinv(U)
        acc = jnp.tile(jnp.asarray(IDQ), (pos.shape[0], 1))
        for t in range(pos.shape[1]):
            f = jnp.where(sgn[:, t:t + 1] > 0, U[pos[:, t]], Uinv[pos[:, t]])
            acc = qmul(acc, f)
        abar = jnp.sum(w[:, None] * qlog(acc), 0)
        Uc = jnp.asarray(IDQ)
        for i in range(spos.shape[0]):
            Uc = qmul(Uc, U[spos[i]])
        return qmul(qexp(abar), Uc)
    def f(Bloc, U0loc):
        V0 = coarse_link(jnp.zeros_like(Bloc), U0loc)
        return qlog(qmul(coarse_link(Bloc, U0loc), qinv(V0)))
    jac = jax.jit(jax.vmap(lambda U0loc: jax.jacrev(f)(jnp.zeros((lp["m"], 3)), U0loc)))
    cl = jax.jit(jax.vmap(lambda U0loc: coarse_link(jnp.zeros((lp["m"], 3)), U0loc)))
    return jac, cl

def averaging(lat, U0, chunk=64):
    """Returns Qt (sparse 3*ncbonds x 3*nlinks) and coarse field V (ncbonds,4)."""
    rows, cols, vals = [], [], []
    V = np.zeros((4 * lat.ncs, 4))
    for mu in range(4):
        lp = loops_for_direction(lat, mu)
        jac, cl = make_avg_fn(lp)
        absidx = lat.link(lat.anchors[:, None, :] + lp["rel"][None], lp["rdir"][None])  # (ncs, m)
        cb = 4 * np.arange(lat.ncs) + mu
        for i in range(0, lat.ncs, chunk):
            U0loc = jnp.asarray(U0[absidx[i:i + chunk]])
            J = np.asarray(jac(U0loc))  # (c, 3, m, 3)
            V[cb[i:i + chunk]] = np.asarray(cl(U0loc))
            c = J.shape[0]
            r = (3 * cb[i:i + chunk, None, None, None] + np.arange(3)[None, :, None, None]) * np.ones((1, 1, lp["m"], 3), int)
            cc = (3 * absidx[i:i + chunk, None, :, None] + np.arange(3)[None, None, None, :]) * np.ones((1, 3, 1, 1), int)
            rows.append(r.ravel()); cols.append(cc.ravel()); vals.append(J.ravel())
    Qt = sp.coo_matrix((np.concatenate(vals), (np.concatenate(rows), np.concatenate(cols))),
                       shape=(12 * lat.ncs, 3 * lat.nlinks)).tocsr()
    return Qt, V

def coarse_action(lat, V):
    m = np.array(list(np.ndindex(*(4 * [lat.nc]))))
    A = 0.0
    for mu, nu in itertools.combinations(range(4), 2):
        mm = m.copy(); mm[:, mu] += 1
        mn = m.copy(); mn[:, nu] += 1
        V1, V2, V3, V4 = (jnp.asarray(V[4 * lat.cpos(a) + b]) for a, b in ((m, mu), (mm, nu), (mn, mu), (m, nu)))
        P = qmul(qmul(V1, V2), qmul(qinv(V3), qinv(V4)))
        A += float(jnp.sum(1 - P[:, 0]))
    return A

# ---------- gauge gradient D ----------
def gauge_gradient(lat, U0):
    x = lat.coords
    rows, cols, vals = [], [], []
    nna = lat.nsites - lat.ncs
    for mu in range(4):
        y = x.copy(); y[:, mu] += 1
        b = 4 * np.arange(lat.nsites) + mu
        py = lat.pos(y)
        # +I at x (if non-anchor)
        sel = ~lat.is_anchor
        r = (3 * b[sel, None] + np.arange(3)).ravel(); c = (3 * lat.nc_index[sel, None] + np.arange(3)).ravel()
        rows.append(r); cols.append(c); vals.append(np.ones(len(r)))
        # -R(U0(b)) at y (if non-anchor)
        sel = ~lat.is_anchor[py]
        R = np.stack([rot(U0[bb]) for bb in b[sel]])  # (k,3,3)
        r = (3 * b[sel, None, None] + np.arange(3)[None, :, None]) * np.ones((1, 1, 3), int)
        c = (3 * lat.nc_index[py[sel], None, None] + np.arange(3)[None, None, :]) * np.ones((1, 3, 1), int)
        rows.append(r.ravel()); cols.append(c.ravel()); vals.append(-R.ravel())
    return sp.coo_matrix((np.concatenate(vals), (np.concatenate(rows), np.concatenate(cols))),
                         shape=(3 * lat.nlinks, 3 * nna)).tocsr()

# ---------- determinants ----------
def logdet_splu(A):
    lu = spla.splu(sp.csc_matrix(A))
    return float(np.sum(np.log(np.abs(lu.U.diagonal()))))

def min_eig_constrained(K, Qt, c=1e3, k=1):
    """Smallest eigenvalue of K restricted to ker Qt (projected operator plus c on the complement)."""
    QQt = np.asarray((Qt @ Qt.T).todense())
    cho = np.linalg.cholesky(QQt)
    def P(v):
        y = Qt @ v
        y = np.linalg.solve(cho.T, np.linalg.solve(cho, y))
        return v - Qt.T @ y
    op = spla.LinearOperator(K.shape, matvec=lambda v: P(K @ P(v)) + c * (v - P(v)), dtype=float)
    w = spla.eigsh(op, k=k, which="SA", tol=1e-7, maxiter=20000, return_eigenvectors=False)
    return float(np.min(w))

def one_step(lat, U0, check_eig=False, verbose=True):
    t = time.time()
    Delta, grad = hessian_matrix(lat, U0)
    Qt, V = averaging(lat, U0)
    D = gauge_gradient(lat, U0)
    K = (Delta + D @ D.T).tocsr()
    r = Qt.shape[0]
    Bord = sp.bmat([[K, Qt.T], [Qt, None]], format="csc")
    if verbose:
        print(f"  assembled in {time.time()-t:.1f}s: M={K.shape[0]} r={r} nnz(K)={K.nnz} |grad|={np.abs(grad).max():.2e}", flush=True)
    out = dict(M=int(K.shape[0]), r=int(r), grad_max=float(np.abs(grad).max()))
    t = time.time(); out["logdet_DtD"] = logdet_splu(D.T @ D)
    t2 = time.time(); out["logabsdet_Bord"] = logdet_splu(Bord)
    out["A_coarse"] = coarse_action(lat, V)
    out["logZ"] = out["logdet_DtD"] - 0.5 * out["logabsdet_Bord"]
    if verbose:
        print(f"  logdets: DtD {time.time()-t:.1f}s, Bord {time.time()-t2:.1f}s; logZ={out['logZ']:.10f} A={out['A_coarse']:.6f}", flush=True)
    if check_eig:
        out["min_eig_KW"] = min_eig_constrained(K, Qt)
        if verbose:
            print(f"  min eig of K on ker Qt: {out['min_eig_KW']:.6f}", flush=True)
    return out

def run(n, L, q, outdir="results", check_eig=False, gauge_seed=None):
    os.makedirs(outdir, exist_ok=True)
    tag = f"n{n}_L{L}_q{q}" + (f"_g{gauge_seed}" if gauge_seed is not None else "")
    path = os.path.join(outdir, tag + ".json")
    if os.path.exists(path):
        return json.load(open(path))
    lat = Lat(n, L)
    U0, F = background(lat, q)
    if gauge_seed is not None:
        g = np.random.default_rng(gauge_seed).normal(size=(lat.nsites, 4)); g /= np.linalg.norm(g, axis=1, keepdims=True)
        U0 = gauge_transform(lat, U0, g)
    print(f"[{tag}] F={F:.6f}", flush=True)
    out = one_step(lat, U0, check_eig=check_eig)
    out.update(n=n, L=L, q=q, F=F)
    json.dump(out, open(path, "w"), indent=1)
    return out

if __name__ == "__main__":
    n, L = int(sys.argv[1]), int(sys.argv[2])
    qs = [int(a) for a in sys.argv[3].split(",")]
    check = "--eig" in sys.argv
    res = {q: run(n, L, q, check_eig=check) for q in qs}
    z0 = res[0]["logZ"] if 0 in res else None
    for q in qs:
        if q and z0 is not None:
            DF = res[q]["logZ"] - z0
            print(f"n={n} L={L} q={q}: D(F)={DF:.8f}  A={res[q]['A_coarse']:.6f}  beta_est={DF/res[q]['A_coarse']:.6f}")
