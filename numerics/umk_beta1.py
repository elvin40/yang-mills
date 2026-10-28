"""beta_1(0) of one Balaban step for arbitrary L by umklapp sums (formulas: ../UMK_BETA1.md).
Per coarse momentum K only 12x12 blocks at the L^4 umklapp momenta k_l = K + 2 pi l / L plus a rank-15 border.
Usage: python umk_beta1.py L Ng p_list [--u1] [--gauge]   -> results/umk_L{L}_Ng{Ng}_p{p}_{kind}[_u1].json (skip-if-done,
per-chunk checkpoint in results/*.partial.npz).
"""
import sys, os, json, time, itertools
import numpy as np
import jax, jax.numpy as jnp
from ym_oneloop import qmul, qexp, qlog
from ym_momentum import _hess_t2, _rot_t2

jax.config.update("jax_enable_x64", True)
E3 = jnp.array([0., 0., 1.])
PLANES = list(itertools.combinations(range(4), 2))
I3 = np.eye(3)
H = lambda X: np.conj(np.swapaxes(X, -1, -2))

def consts():
    _, G, G2 = (np.asarray(x)[0] for x in _rot_t2(jnp.ones(1)))
    Jf = lambda f: jax.jacfwd(lambda Y: qlog(qmul(qexp(Y), qexp(f * E3))))(jnp.zeros(3))
    Ef = lambda f: jax.jacfwd(lambda d: qlog(qmul(qexp(f * E3 + d), qexp(-f * E3))))(jnp.zeros(3))
    d1 = lambda F: np.asarray(jax.jacfwd(F)(0.0)); d2 = lambda F: np.asarray(jax.jacfwd(jax.jacfwd(F))(0.0))
    H0, H1, _ = (np.asarray(x) for x in _hess_t2(jnp.eye(4)))
    Hq = lambda A: np.asarray(_hess_t2(jnp.asarray(A))[2])
    e = np.eye(4); dg = Hq(e); T = np.zeros((4, 4, 12, 12))
    for j, jp in itertools.product(range(4), repeat=2):
        T[j, jp] = dg[j] if j == jp else (Hq((e[j] + e[jp])[None])[0] - dg[j] - dg[jp]) / 2
    return dict(G=G, G2=G2, J1=d1(Jf), J2=d2(Jf), E1=d1(Ef), E2=d2(Ef), H0=H0[0], H1=H1, T=T)

# ---------- fine symbols ----------
def plaq_geom(mu, nu):
    offs = np.zeros((4, 4)); offs[1, mu] = 1; offs[2, nu] = 1
    return (mu, nu, mu, nu), offs

def hess_sym(k, q, blocks):
    """sum_planes sum_jj' e^{-i(k+q).o_j} h_jj' e^{ik.o_j'}; blocks[plane] (12,12) slot-major."""
    out = np.zeros(k.shape[:-1] + (4, 3, 4, 3), complex)
    for (mu, nu), h in zip(PLANES, blocks):
        dirs, offs = plaq_geom(mu, nu); h = h.reshape(4, 3, 4, 3)
        for j in range(4):
            r = np.exp(-1j * (k + q) @ offs[j])
            for jp in range(4):
                out[..., dirs[j], :, dirs[jp], :] += (r * np.exp(1j * k @ offs[jp]))[..., None, None] * h[j, :, jp, :]
    return out.reshape(k.shape[:-1] + (12, 12))

def hess_blocks(cons, c, p):
    b0, bp, b2 = [], [], []
    for mu, nu in PLANES:
        dirs, offs = plaq_geom(mu, nu)
        A = np.array([c[dirs[j]] * np.exp(1j * p * offs[j, 0]) for j in range(4)])
        b0.append(cons["H0"])
        bp.append(sum(0.5 * A[j] * cons["H1"][j] for j in range(4)))
        b2.append(sum(0.5 * (A[j] * np.conj(A[jp])).real * cons["T"][j, jp] for j in range(4) for jp in range(4)))
    return b0, bp, b2

def d0(k):
    out = np.zeros(k.shape[:-1] + (4, 3, 3), complex)
    for mu in range(4):
        out[..., mu, :, :] = (1 - np.exp(1j * k[..., mu]))[..., None, None] * I3
    return out.reshape(k.shape[:-1] + (12, 3))

def dsym(k, coef, M):
    out = np.zeros(k.shape[:-1] + (4, 3, 3), complex)
    for mu in range(4):
        if coef[mu] != 0:
            out[..., mu, :, :] = (coef[mu] * np.exp(1j * k[..., mu]))[..., None, None] * M
    return out.reshape(k.shape[:-1] + (12, 3))

# ---------- averaging profile (Balaban (0.4) as in ym_oneloop.loops_for_direction) ----------
def path_arrays(d):
    dirs = [k for k in range(4) if d[k] != 0]; m = int(np.abs(d).sum())
    S, R, Gs = [], [], []
    for perm in itertools.permutations(dirs):
        z = np.zeros(4, int)
        for k in perm:
            sg = int(np.sign(d[k]))
            for _ in range(abs(d[k])):
                if sg > 0: S.append(z.copy()); z[k] += 1
                else: z[k] -= 1; S.append(z.copy())
                R.append(k); Gs.append(sg)
    n = max(1, len(R) // max(m, 1))
    return np.array(S, int).reshape(n, m, 4), np.array(R, int).reshape(n, m), np.array(Gs, float).reshape(n, m)

def avg_profile(L, mu, p, c, cons):
    """Fields of the coarse-bond Jacobian (direction mu) at the anchor 0: dict '0','+','-','2' -> (F (r,4,*shape), M (r,3,3))."""
    h = (L - 1) // 2
    shape = [L] * 4; shape[mu] = 2 * L; nb = 4 * int(np.prod(shape))
    lid = lambda s, r: 4 * np.ravel_multi_index(tuple(np.moveaxis(s + h, -1, 0)), shape) + r
    alpha = lambda s, r: c[r] * np.exp(1j * p * s[..., 0])
    e = np.zeros(4, int); e[mu] = L
    st = np.array([k * e // L for k in range(L)])
    acc = np.zeros((6, nb), complex); Psi = 0j
    bi, bv, nbuf = [], [], 0
    def flush():
        nonlocal bi, bv, nbuf
        if not bi: return
        i = np.concatenate(bi); v = np.concatenate(bv, 1)
        for q in range(6):
            acc[q] += np.bincount(i, v[q].real, nb) + 1j * np.bincount(i, v[q].imag, nb)
        bi, bv, nbuf = [], [], 0
    ac = -alpha(st[::-1], mu); phic = ac.sum(); thc_r = np.cumsum(ac)  # reversed straight, s = -1 (inclusive prefix)
    for d in itertools.product(range(-h, L - h), repeat=4):
        d = np.array(d)
        s1, r1, g1 = path_arrays(d)
        s2, r2, g2 = (s1 + e)[:, ::-1], r1[:, ::-1], -g1[:, ::-1]   # reversed, negated Gamma'
        seg = d + st
        n = s1.shape[0]; w = 1.0 / L**4 / n**2
        a1 = g1 * alpha(s1, r1); phi1 = a1.sum(1)
        a2 = g2 * alpha(s2, r2); phi2 = a2.sum(1)
        asg = alpha(seg, mu); phis = asg.sum()
        Phi = (phi1[:, None] + phis + phi2[None, :] + phic)[:, :, None]
        Psi += w * Phi.sum()
        parts = [  # (links, signs, theta broadcastable to (n,n,T), axes summed)
            (lid(s1, r1), g1[:, None, :], (np.cumsum(a1, 1) - (g1 > 0) * a1)[:, None, :], (1,)),
            (lid(seg, mu), np.ones((1, 1, L)), phi1[:, None, None] + (np.cumsum(asg) - asg)[None, None, :], (0, 1)),
            (lid(s2, r2), g2[None], (phi1 + phis)[:, None, None] + (np.cumsum(a2, 1) - (g2 > 0) * a2)[None], (0,)),
            (lid(st[::-1], mu), -np.ones((1, 1, L)), (phi1[:, None] + phis + phi2[None, :])[:, :, None] + thc_r[None, None, :], (0, 1)),
        ]
        for links, sg, th, ax in parts:
            if links.size == 0: continue
            th = np.broadcast_to(th, (n, n, th.shape[-1])); ws = w * sg
            q6 = np.stack([np.broadcast_to(ws, th.shape), ws * Phi, ws * th, ws * np.abs(Phi)**2,
                           ws * (Phi * np.conj(th)).real, ws * np.abs(th)**2]).sum(axis=tuple(a + 1 for a in ax))
            bi.append(links.ravel()); bv.append(q6.reshape(6, -1)); nbuf += links.size
        if nbuf > 2_000_000: flush()
    flush()
    S0, SF, ST, SFF, SFT, STT = acc
    ind = np.zeros(nb); ind[lid(st, mu)] = 1
    thc = np.zeros(nb, complex); a_st = alpha(st, mu); thc[lid(st, mu)] = np.cumsum(a_st) - a_st
    C = cons; P = Psi + thc
    raw = {"0": [(S0 + ind, I3)],
           "+": [(0.5 * Psi * S0, C["E1"]), (0.5 * SF, C["J1"]), (0.5 * (ST + P * ind), C["G"])],
           "-": [(0.5 * np.conj(Psi) * S0, C["E1"]), (0.5 * np.conj(SF), C["J1"]), (0.5 * (np.conj(ST) + np.conj(P) * ind), C["G"])],
           "2": [(0.5 * abs(Psi)**2 * S0, C["E2"]), ((Psi * np.conj(SF)).real, C["E1"] @ C["J1"]), ((Psi * np.conj(ST)).real, C["E1"] @ C["G"]),
                 (0.5 * SFF, C["J2"]), (SFT, C["J1"] @ C["G"]), (0.5 * (STT + abs(P)**2 * ind), C["G2"])]}
    out = {}
    for key, lst in raw.items():
        Ms = np.array([M.ravel() for _, M in lst]); U, sv, Vt = np.linalg.svd(Ms, full_matrices=False)
        B = Vt[sv > 1e-12 * max(sv.max(), 1e-300)]
        coef = Ms @ B.T  # (F, r)
        F = np.einsum("fr,fn->rn", coef, np.array([f for f, _ in lst]))
        F = np.moveaxis(F.reshape((len(B),) + tuple(shape) + (4,)), -1, 1)
        out[key] = (F, B.reshape(-1, 3, 3))
    return out

def csym(prof, K, L):
    """Coarse symbols q(k_l) = sum_z q(z) e^{i k_l z} for all l: (B, L^4, 12 rows (mu,a), 12 cols (nu,b))."""
    h = (L - 1) // 2; Bn = len(K)
    lv = np.array(list(np.ndindex(*(4 * [L]))))
    lph = np.exp(-2j * np.pi * lv.sum(1) * h / L)
    out = np.zeros((Bn, L**4, 4, 3, 4, 3), complex)
    for mu, (F, M) in enumerate(prof):
        shape = F.shape[2:]
        g = F[None].astype(complex)
        for ax in range(4):
            ph = np.exp(1j * K[:, ax, None] * (np.arange(shape[ax]) - h))
            sh = [Bn, 1, 1, 1, 1, 1, 1]; sh[3 + ax] = shape[ax]
            g = g * ph.reshape(sh)
        if shape[mu] == 2 * L:
            s = list(g.shape); s[3 + mu:4 + mu] = [2, L]
            g = g.reshape(s).sum(3 + mu)
        ft = np.fft.ifftn(g, axes=(-4, -3, -2, -1)).reshape(Bn, len(M), 4, L**4) * L**4 * lph
        out[:, :, mu] = np.einsum("zrnl,rab->zlanb", ft, M)
    return out.reshape(Bn, L**4, 12, 12)

# ---------- per-sector traces (UMK_BETA1.md section 4) ----------
def taus(A1, E1, A2, E2, J, a, b, c, A2nd, E2nd):
    tr = lambda X, Y: np.einsum("...ij,...ji->...", X, Y)
    A1i, A2i = np.linalg.inv(A1), np.linalg.inv(A2)
    Y1, Y2 = A1i @ H(E1), A2i @ H(E2)
    S1i, S2i = np.linalg.inv(J - (E1 @ Y1).sum(1)), np.linalg.inv(J - (E2 @ Y2).sum(1))
    t1 = tr(A1i, A2nd).sum(1) + tr(S1i, (H(Y1) @ A2nd @ Y1).sum(1)) - 2 * tr(S1i, (E2nd @ Y1).sum(1)).real
    V = b - a @ Y1; R = H(c) - H(a) @ Y2
    X = (H(Y2) @ a @ Y1 - H(Y2) @ b - c @ Y1).sum(1)
    t2 = (tr(A2i @ a, A1i @ H(a)).sum(1) + tr(S1i, (H(V) @ A2i @ V).sum(1)) + tr(S2i, (H(R) @ A1i @ R).sum(1))
          + tr(S2i @ X, S1i @ H(X)))
    return (t1 - 2 * t2).real

class Umk:
    def __init__(self, L, p, kind="trans", colors=(0, 1, 2), pol=1):
        self.L, self.p = L, p
        c = np.zeros(4, complex)
        if kind == "trans": c[pol] = 1
        else: c[0] = 1 - np.exp(1j * p)
        self.c = c; cons = self.cons = consts()
        self.hb = hess_blocks(cons, c, p)
        profs = [avg_profile(L, mu, p, c, cons) for mu in range(4)]
        self.prof = {key: [pr[key] for pr in profs] for key in "0+-2"}
        cols = list(colors)
        self.fi = np.array([3 * d + a for d in range(4) for a in cols])
        self.ri = np.concatenate([self.fi, 12 + np.array(cols)])
        self.gi = np.array(cols)
        self.lv = np.array(list(np.ndindex(*(4 * [L])))) * 2 * np.pi / L

    def terms(self, K):
        L, C = self.L, self.cons; pv = np.array([self.p, 0, 0, 0]); s = L**-2.0
        kl = K[:, None, :] + self.lv[None]; kp = kl + pv
        D1, D2 = d0(kl), d0(kp)
        Dp = lambda k: dsym(k, -0.5 * self.c, C["G"]); Dm = lambda k: dsym(k, -0.5 * np.conj(self.c), C["G"])
        Dpp = dsym(kl, -0.5 * np.abs(self.c)**2, C["G2"])
        b0, bp, b2 = self.hb; z = np.zeros(4)
        A1 = hess_sym(kl, z, b0) + D1 @ H(D1); A2 = hess_sym(kp, z, b0) + D2 @ H(D2)
        a = hess_sym(kl, pv, bp) + Dp(kl) @ H(D1) + D2 @ H(Dm(kp))
        A2nd = (hess_sym(kl, z, b2) + Dpp @ H(D1) + D1 @ H(Dpp)
                + 2 * (Dp(kl - pv) @ H(Dp(kl - pv)) + Dm(kp) @ H(Dm(kp))))
        P = self.prof
        E1 = s * np.concatenate([csym(P["0"], K, L), H(D1)], -2)
        E2 = s * np.concatenate([csym(P["0"], K + pv, L), H(D2)], -2)
        cc = s * np.concatenate([csym(P["+"], K, L), H(Dm(kp))], -2)
        bb = H(s * np.concatenate([csym(P["-"], K + pv, L), H(Dp(kl))], -2))
        E2nd = s * np.concatenate([csym(P["2"], K, L), H(Dpp)], -2)
        J = np.diag(np.r_[np.zeros(12), np.ones(3)])
        f, r = self.fi, self.ri
        F = lambda X, i, j: X[..., i[:, None], j[None, :]]
        bord = taus(F(A1, f, f), F(E1, r, f), F(A2, f, f), F(E2, r, f), J[np.ix_(r, r)], F(a, f, f), F(bb, f, r), F(cc, r, f),
                    F(A2nd, f, f), F(E2nd, r, f))
        g = self.gi
        G1, G2 = H(D1) @ D1, H(D2) @ D2
        ga = H(Dm(kp)) @ D1 + H(D2) @ Dp(kl)
        G2nd = H(Dpp) @ D1 + H(D1) @ Dpp + 2 * (H(Dp(kl)) @ Dp(kl) + H(Dm(kl)) @ Dm(kl))
        Eg = np.broadcast_to(s * np.eye(len(g)), G1.shape[:2] + (len(g), len(g)))
        Z = np.zeros_like(Eg)
        ghost = taus(F(G1, g, g), Eg, F(G2, g, g), Eg, np.zeros((len(g), len(g))), F(ga, g, g), Z, Z, F(G2nd, g, g), Z)
        return ghost, bord

def kgrid(L, Ng, shift=0.5):
    ks = (np.arange(Ng) + shift) * 2 * np.pi / (L * Ng)
    return np.array(list(itertools.product(ks, repeat=4)))

def run(L, Ng, p, kind="trans", colors=(0, 1, 2), ckpt=None):
    t = time.time(); u = Umk(L, p, kind, colors); tprof = time.time() - t
    K = kgrid(L, Ng); bs = max(1, 20000 // L**4)
    i0, sg, sb = 0, 0.0, 0.0
    if ckpt and os.path.exists(ckpt):
        z = np.load(ckpt); i0, sg, sb = int(z["i"]), float(z["g"]), float(z["b"])
    tl = time.time()
    for i in range(i0, len(K), bs):
        g, b = u.terms(K[i:i + bs]); sg += g.sum(); sb += b.sum()
        if ckpt and time.time() - tl > 60:
            np.savez(ckpt, i=i + bs, g=sg, b=sb); tl = time.time()
    g, b = sg / len(K), sb / len(K)
    return dict(w=g - 0.5 * b, ghost=g, bord=b, secs=time.time() - t, prof_secs=tprof)

if __name__ == "__main__":
    L, Ng = int(sys.argv[1]), int(sys.argv[2]); ps = [float(x) for x in sys.argv[3].split(",")]
    kind = "gauge" if "--gauge" in sys.argv else "trans"
    colors = (2,) if "--u1" in sys.argv else (0, 1, 2)
    os.makedirs("results", exist_ok=True)
    for p in ps:
        tag = f"umk_L{L}_Ng{Ng}_p{p}_{kind}" + ("_u1" if colors == (2,) else "")
        path = os.path.join("results", tag + ".json")
        if os.path.exists(path):
            print(tag, "cached", json.load(open(path))); continue
        r = run(L, Ng, p, kind, colors, ckpt=os.path.join("results", tag + ".partial.npz"))
        r.update(L=L, Ng=Ng, p=p, kind=kind, colors=list(colors), beta=4 * r["w"] / (L**4 * (1 - np.cos(p))))
        json.dump(r, open(path, "w"), indent=1)
        if os.path.exists(os.path.join("results", tag + ".partial.npz")): os.remove(os.path.join("results", tag + ".partial.npz"))
        print(tag, r, flush=True)
