# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
"""U3 Lemma 5.1 check: background-field (F) Taylor coefficients of the block-M Schur complement.

d = 2 model (4D is out of reach in real space for M = 8, 16), SU(2), constant abelian flux in sigma_3.
Fine torus n = M*nc, fine plaquette angle phi = 2 pi q / n^2, coarse flux f = M^2 phi = 2 pi q / nc^2.
Constraint = linearization at the background of CMP 109 (0.4) averaging (U3 Lemma 1.1 at F = 0):
  mode "comp":   composition of j one-step L-averagings (Lemma 5.0 structure), M = L^j;
  mode "single": one averaging step with block M.
S_M(q) = min{<B, Hess B> : C B = V} (exact, KKT with residual gauge fixing), scaled by M^(4-d) = M^2.
Probes (Cartan-gauge invariant, averaged over coarse links): charged/neutral diagonal blocks and
link-dressed nearest-neighbour blocks.  a_m = f^m Taylor coefficients from q = -2..2.
Usage: python -I u3_lemma51_check.py [nc] [L] [jmax]
"""
import sys, os, json, time, itertools, functools
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import numpy as np
import jax.numpy as jnp
import scipy.sparse as sp
import scipy.sparse.linalg as spla
from ym_oneloop import qmul, qinv, IDQ, rot, _hess, _grad, make_avg_fn

d = 2

def links(n, x, mu):
    return 2 * ((x[..., 0] % n) * n + (x[..., 1] % n)) + mu

def background(n, q):
    phi = 2 * np.pi * q / n**2
    x = np.array(list(np.ndindex(n, n)))
    U = np.tile(IDQ, (2 * n * n, 1))
    a = phi * x[:, 0]
    U[links(n, x, 1)] = np.stack([np.cos(a), 0 * a, 0 * a, np.sin(a)], 1)
    e = x[:, 0] == n - 1
    a2 = -phi * n * x[e, 1]
    U[links(n, x[e], 0)] = np.stack([np.cos(a2), 0 * a2, 0 * a2, np.sin(a2)], 1)
    return U, phi

def plaqs(n):
    x = np.array(list(np.ndindex(n, n)))
    e0, e1 = np.array([1, 0]), np.array([0, 1])
    return np.stack([links(n, x, 0), links(n, x + e0, 1), links(n, x + e1, 0), links(n, x, 1)], 1)

def hessian(n, U0):
    pl = plaqs(n)
    H = np.asarray(_hess(jnp.asarray(U0[pl]))); G = np.asarray(_grad(jnp.asarray(U0[pl])))
    dof = (3 * pl[:, :, None] + np.arange(3)).reshape(len(pl), 12)
    rows = np.repeat(dof, 12, 1).ravel(); cols = np.tile(dof, (1, 12)).ravel()
    g = np.zeros(6 * n * n); np.add.at(g, dof.ravel(), G.ravel())
    return sp.coo_matrix((H.ravel(), (rows, cols)), shape=(6 * n * n,) * 2).tocsr(), np.abs(g).max()

def loops(L, h, mu, family):
    """CMP 109 (0.4) loops c- -> x -> x+L e_mu -> c+ -> c- in d = 2 (anchor at 0)."""
    def path(start, dd):
        dirs = [k for k in range(d) if dd[k] != 0]
        perms = list(itertools.permutations(dirs)) or [()]
        out = []
        for perm in (perms if family == "all" else perms[:1]):
            z = np.array(start); st = []
            for k in perm:
                s = int(np.sign(dd[k]))
                for _ in range(abs(dd[k])):
                    if s > 0: st.append((tuple(z), k, 1)); z[k] += 1
                    else: z[k] -= 1; st.append((tuple(z), k, -1))
            out.append(st)
        return out
    e = np.zeros(d, int); e[mu] = L
    straight = [(tuple(k * e // L), mu, 1) for k in range(L)]
    lps, ws = [], []
    for dd in itertools.product(range(-h, L - h), repeat=d):
        dd = np.array(dd)
        G1, G2 = path(np.zeros(d, int), dd), path(e, dd)
        seg = [(tuple(dd + k * e // L), mu, 1) for k in range(L)]
        for g1 in G1:
            for g2 in G2:
                lps.append(g1 + seg + [(s, k, -g) for (s, k, g) in reversed(g2)] + [(s, k, -g) for (s, k, g) in reversed(straight)])
                ws.append(1.0 / L**d / (len(G1) * len(G2)))
    keys = sorted({(s, k) for lp in lps for (s, k, _) in lp} | {(s, k) for (s, k, _) in straight})
    ki = {key: i for i, key in enumerate(keys)}
    m, T = len(keys), max(len(lp) for lp in lps)
    pos = np.full((len(lps), T), m, int); sgn = np.ones((len(lps), T), int)
    for i, lp in enumerate(lps):
        for t, (s, k, g) in enumerate(lp):
            pos[i, t] = ki[(s, k)]; sgn[i, t] = g
    return dict(pos=pos, sgn=sgn, w=np.array(ws), spos=np.array([ki[(s, k)] for (s, k, _) in straight]),
                rel=np.array([s for (s, k) in keys]), rdir=np.array([k for (s, k) in keys]), m=m)

@functools.lru_cache(None)
def avg_fn(L, h, mu, family):  # cache: JAX recompiles otherwise on every call
    lp = loops(L, h, mu, family)
    return (lp, *make_avg_fn(lp))

def averaging(n, L, h, U0, family):
    nc = n // L
    mc = np.array(list(np.ndindex(nc, nc)))
    rows, cols, vals = [], [], []
    V = np.zeros((2 * nc * nc, 4))
    for mu in range(d):
        lp, jac, cl = avg_fn(L, h, mu, family)
        idx = links(n, (h + L * mc)[:, None, :] + lp["rel"][None], lp["rdir"][None])
        cb = links(nc, mc, mu)
        U0loc = jnp.asarray(U0[idx])
        J = np.asarray(jac(U0loc)); V[cb] = np.asarray(cl(U0loc))
        r = (3 * cb[:, None, None, None] + np.arange(3)[None, :, None, None]) * np.ones((1, 1, lp["m"], 3), int)
        c = (3 * idx[:, None, :, None] + np.arange(3)[None, None, None, :]) * np.ones((1, 3, 1, 1), int)
        rows.append(r.ravel()); cols.append(c.ravel()); vals.append(J.ravel())
    Q = sp.coo_matrix((np.concatenate(vals), (np.concatenate(rows), np.concatenate(cols))), shape=(6 * nc * nc, 6 * n * n)).tocsr()
    return Q, V

def rots(qs):  # batched ym_oneloop.rot
    e = np.zeros((3, 4)); e[:, 1:] = np.eye(3)
    r = np.asarray(qmul(qmul(qs[:, None], e[None]), qinv(qs)[:, None]))
    return np.transpose(r[:, :, 1:], (0, 2, 1))

def gauge_grad(n, U0, anchor):
    x = np.array(list(np.ndindex(n, n))); pos = x[:, 0] * n + x[:, 1]
    na = np.cumsum(~anchor) - 1
    rows, cols, vals = [], [], []
    for mu in range(d):
        y = x.copy(); y[:, mu] += 1; py = (y[:, 0] % n) * n + y[:, 1] % n
        b = links(n, x, mu)
        s = ~anchor[pos]
        rows.append((3 * b[s, None] + np.arange(3)).ravel()); cols.append((3 * na[pos[s], None] + np.arange(3)).ravel()); vals.append(np.ones(3 * s.sum()))
        s = ~anchor[py]
        R = rots(U0[b[s]])
        rows.append(((3 * b[s, None, None] + np.arange(3)[None, :, None]) * np.ones((1, 1, 3), int)).ravel())
        cols.append(((3 * na[py[s], None, None] + np.arange(3)[None, None, :]) * np.ones((1, 3, 1), int)).ravel())
        vals.append(-R.ravel())
    return sp.coo_matrix((np.concatenate(vals), (np.concatenate(rows), np.concatenate(cols))), shape=(6 * n * n, 3 * int((~anchor).sum()))).tocsr()

def schur(M, nc, q, steps, family):
    """steps = list of (L, h); returns scaled S (6nc^2 square), coarse background V, checks."""
    n = M * nc
    U0, phi = background(n, q)
    Hs, gmax = hessian(n, U0)
    C = sp.identity(6 * n * n, format="csr"); U = U0; nn = n; apos = np.array(list(np.ndindex(nc, nc)))
    for (L, h) in steps:
        Q, U = averaging(nn, L, h, U, family); C = Q @ C; nn //= L
    for (L, h) in reversed(steps):
        apos = h + L * apos
    anchor = np.zeros(n * n, bool); anchor[apos[:, 0] * n + apos[:, 1]] = True
    D = gauge_grad(n, U0, anchor)
    K = (Hs + D @ D.T).tocsr()
    r = C.shape[0]
    KKT = sp.bmat([[K, C.T], [C, None]], format="csc")
    lu = spla.splu(KKT, permc_spec="MMD_AT_PLUS_A", options=dict(SymmetricMode=True))
    rhs = np.zeros((KKT.shape[0], r)); rhs[-r:] = np.eye(r)
    Z = lu.solve(rhs)[-r:]
    S = -0.5 * (Z + Z.T) * M**(4 - d)
    # checks: stationarity, coarse plaquette angles, gauge zero modes of S
    Vq = U
    return S, Vq, dict(grad=float(gmax), asym=float(np.abs(Z - Z.T).max()))

def probes(S, V, nc):
    mc = np.array(list(np.ndindex(nc, nc)))
    out = {}
    blk = lambda b, bp: S[3 * b[:, None, None] + np.arange(3)[None, :, None], 3 * bp[:, None, None] + np.arange(3)[None, None, :]]
    for mu in range(d):
        b = links(nc, mc, mu); B = blk(b, b)
        out[f"diag_ch_{mu}"] = float(np.mean(B[:, 0, 0] + B[:, 1, 1])); out[f"diag_neu_{mu}"] = float(np.mean(B[:, 2, 2]))
        for nu in range(d):
            e = np.zeros(d, int); e[nu] = 1
            bp = links(nc, mc + e, mu)
            R = rots(V[links(nc, mc, nu)])
            X = np.einsum("bij,bkj->bik", blk(b, bp), R)
            out[f"hop_ch_{mu}{nu}"] = float(np.mean(X[:, 0, 0] + X[:, 1, 1]))
            out[f"hop_odd_{mu}{nu}"] = float(np.mean(X[:, 0, 1] - X[:, 1, 0]))
            out[f"hop_neu_{mu}{nu}"] = float(np.mean(X[:, 2, 2]))
    return out

def coarse_angles(V, nc):
    mc = np.array(list(np.ndindex(nc, nc))); e0, e1 = np.array([1, 0]), np.array([0, 1])
    P = qmul(qmul(V[links(nc, mc, 0)], V[links(nc, mc + e0, 1)]), qmul(qinv(V[links(nc, mc + e1, 0)]), qinv(V[links(nc, mc, 1)])))
    P = np.asarray(P)
    return np.arctan2(P[:, 3], P[:, 0]), np.abs(P[:, 1:3]).max()

def run(nc, L, jmax, family="all", qs=(0, 1, 2), outdir="results_l51"):
    os.makedirs(outdir, exist_ok=True)
    h = (L - 1) // 2
    for j in range(1, jmax + 1):
        M = L**j
        for mode in ("comp", "single"):
            if mode == "single" and j == 1: continue
            steps = [(L, h)] * j if mode == "comp" else [(M, (M - 1) // 2 if L % 2 else 0)]
            path = os.path.join(outdir, f"{mode}_{family}_L{L}_M{M}_nc{nc}.json")
            if os.path.exists(path): continue
            t = time.time(); res = {}
            for q in qs:
                S, V, chk = schur(M, nc, q, steps, family)
                ang, nonab = coarse_angles(V, nc)
                res[q] = dict(probes(S, V, nc), **chk, fang_mean=float(ang.mean()), fang_spread=float(np.ptp(ang)), nonab=float(nonab))
            json.dump(dict(M=M, nc=nc, L=L, mode=mode, family=family, res=res), open(path, "w"), indent=1)
            print(f"{mode} M={M}: {time.time()-t:.1f}s  grad={res[0]['grad']:.1e} fang={res[1]['fang_mean']:.4f}±{res[1]['fang_spread']:.1e} f={2*np.pi/nc**2:.4f}", flush=True)

def taylor(res, nc, key):
    res = dict(res)
    for q in list(res):  # reflect with charge conjugation: odd probes flip sign
        if str(-int(q)) not in res: res[str(-int(q))] = {key: (-1 if key.startswith("hop_odd") else 1) * res[q][key]}
    qs = sorted(res, key=int); f = np.array([2 * np.pi * int(q) / nc**2 for q in qs])
    y = np.array([res[q][key] for q in qs])
    return np.linalg.solve(np.vander(f, len(f), increasing=True), y)  # a0..a4

if __name__ == "__main__":
    nc = int(sys.argv[1]) if len(sys.argv) > 1 else 8
    L = int(sys.argv[2]) if len(sys.argv) > 2 else 2
    jmax = int(sys.argv[3]) if len(sys.argv) > 3 else 3
    run(nc, L, jmax)

def report(nc, L, family="all", outdir="results_l51", keys=("diag_ch_0", "hop_ch_00", "hop_ch_01", "hop_odd_01", "diag_neu_0")):
    for mode in ("comp", "single"):
        rs = []
        for fn in sorted(os.listdir(outdir)):
            if fn.startswith(f"{mode}_{family}_L{L}_") and fn.endswith(f"_nc{nc}.json"):
                rs.append(json.load(open(os.path.join(outdir, fn))))
        rs.sort(key=lambda r: r["M"])
        if mode == "single": rs = [json.load(open(os.path.join(outdir, f"comp_{family}_L{L}_M{L}_nc{nc}.json")))] + rs
        print(f"--- {mode}, L={L}, nc={nc}, M = {[r['M'] for r in rs]}")
        for key in keys:
            A = np.array([taylor(r["res"], nc, key)[:3] for r in rs])
            for m in range(3):
                e = np.diff(A[:, m])
                rat = e[:-1] / e[1:] if len(e) > 1 else []
                print(f"  {key:12s} a{m}: " + " ".join(f"{v:+.6f}" for v in A[:, m]) + "  diffs " + " ".join(f"{v:+.2e}" for v in e) + "  ratios " + " ".join(f"{v:.2f}" for v in rat))
