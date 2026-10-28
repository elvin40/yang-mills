# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# t2_fstepb_verify_umk.py with a jax port of Umk.terms (d0, dsym, hess_sym, csym, terms in one jit; float64). Same output and
# checkpoint names as t2_fstepb_verify_umk.py, so either script resumes the other's .partial.npz.
# Usage: python t2_fstepb_verify_umk_gpu.py L Ng Lp [--backend numpy|jax]   (default numpy = unported path)
import sys, os, json, numpy as np
import jax, jax.numpy as jnp
import umk_beta1
from umk_beta1 import run, taus, PLANES, plaq_geom

I3 = np.eye(3)
Hj = lambda X: jnp.conj(jnp.swapaxes(X, -1, -2))

def d0_j(k):
    return ((1 - jnp.exp(1j * k))[..., None, None] * I3).reshape(k.shape[:-1] + (12, 3))

def dsym_j(k, coef, M):  # coef[mu] = 0 gives exact zeros, as the numpy branch
    return ((coef * jnp.exp(1j * k))[..., None, None] * M).reshape(k.shape[:-1] + (12, 3))

def hess_sym_j(k, q, blocks):
    out = 0
    for (mu, nu), h in zip(PLANES, blocks):
        dirs, offs = plaq_geom(mu, nu); sel = np.eye(4)[list(dirs)]
        r = jnp.exp(-1j * (k + q) @ offs.T); c = jnp.exp(1j * k @ offs.T)
        out = out + jnp.einsum("...j,jd,jaib,ie,...i->...daeb", r, sel, jnp.reshape(h, (4, 3, 4, 3)), sel, c)
    return out.reshape(k.shape[:-1] + (12, 12))

def csym_j(prof, K, L):
    h = (L - 1) // 2; Bn = K.shape[0]
    lv = np.array(list(np.ndindex(*(4 * [L]))))
    lph = np.exp(-2j * np.pi * lv.sum(1) * h / L)
    outs = []
    for mu, (F, M) in enumerate(prof):
        shape = F.shape[2:]
        g = F[None]
        for ax in range(4):
            ph = jnp.exp(1j * K[:, ax, None] * (np.arange(shape[ax]) - h))
            sh = [Bn, 1, 1, 1, 1, 1, 1]; sh[3 + ax] = shape[ax]
            g = g * ph.reshape(sh)
        if shape[mu] == 2 * L:
            s = list(g.shape); s[3 + mu:4 + mu] = [2, L]
            g = g.reshape(s).sum(3 + mu)
        ft = jnp.fft.ifftn(g, axes=(-4, -3, -2, -1)).reshape(Bn, M.shape[0], 4, L**4) * L**4 * lph
        outs.append(jnp.einsum("zrnl,rab->zlanb", ft, M))
    return jnp.stack(outs, 2).reshape(Bn, L**4, 12, 12)

def taus_inputs(u, K, P):
    """Umk.terms up to the two taus calls, in jax. Returns (border args, ghost args)."""
    L, C = u.L, u.cons; pv = np.array([u.p, 0, 0, 0]); s = L**-2.0
    kl = K[:, None, :] + u.lv[None]; kp = kl + pv
    D1, D2 = d0_j(kl), d0_j(kp)
    Dp = lambda k: dsym_j(k, -0.5 * u.c, C["G"]); Dm = lambda k: dsym_j(k, -0.5 * np.conj(u.c), C["G"])
    Dpp = dsym_j(kl, -0.5 * np.abs(u.c)**2, C["G2"])
    b0, bp, b2 = u.hb; z = np.zeros(4)
    A1 = hess_sym_j(kl, z, b0) + D1 @ Hj(D1); A2 = hess_sym_j(kp, z, b0) + D2 @ Hj(D2)
    a = hess_sym_j(kl, pv, bp) + Dp(kl) @ Hj(D1) + D2 @ Hj(Dm(kp))
    A2nd = (hess_sym_j(kl, z, b2) + Dpp @ Hj(D1) + D1 @ Hj(Dpp)
            + 2 * (Dp(kl - pv) @ Hj(Dp(kl - pv)) + Dm(kp) @ Hj(Dm(kp))))
    E1 = s * jnp.concatenate([csym_j(P["0"], K, L), Hj(D1)], -2)
    E2 = s * jnp.concatenate([csym_j(P["0"], K + pv, L), Hj(D2)], -2)
    cc = s * jnp.concatenate([csym_j(P["+"], K, L), Hj(Dm(kp))], -2)
    bb = Hj(s * jnp.concatenate([csym_j(P["-"], K + pv, L), Hj(Dp(kl))], -2))
    E2nd = s * jnp.concatenate([csym_j(P["2"], K, L), Hj(Dpp)], -2)
    J = np.diag(np.r_[np.zeros(12), np.ones(3)])
    f, r = u.fi, u.ri
    F = lambda X, i, j: X[..., i[:, None], j[None, :]]
    bord = (F(A1, f, f), F(E1, r, f), F(A2, f, f), F(E2, r, f), J[np.ix_(r, r)], F(a, f, f), F(bb, f, r), F(cc, r, f),
            F(A2nd, f, f), F(E2nd, r, f))
    g = u.gi
    G1, G2 = Hj(D1) @ D1, Hj(D2) @ D2
    ga = Hj(Dm(kp)) @ D1 + Hj(D2) @ Dp(kl)
    G2nd = Hj(Dpp) @ D1 + Hj(D1) @ Dpp + 2 * (Hj(Dp(kl)) @ Dp(kl) + Hj(Dm(kl)) @ Dm(kl))
    Eg = jnp.broadcast_to(s * np.eye(len(g)), G1.shape[:2] + (len(g), len(g)))
    Z = jnp.zeros_like(Eg)
    ghost = (F(G1, g, g), Eg, F(G2, g, g), Eg, np.zeros((len(g), len(g))), F(ga, g, g), Z, Z, F(G2nd, g, g), Z)
    return bord, ghost

def terms_jax(self, K):
    if not hasattr(self, "_tj"):
        self._P = {k: [(jnp.asarray(F), jnp.asarray(M)) for F, M in v] for k, v in self.prof.items()}
        def f(K, P):
            bord, ghost = taus_inputs(self, K, P)
            return taus(*ghost), taus(*bord)
        self._tj = jax.jit(f)
    g, b = self._tj(jnp.asarray(K), self._P)
    return np.asarray(g), np.asarray(b)

if __name__ == "__main__":
    backend = sys.argv[sys.argv.index("--backend") + 1] if "--backend" in sys.argv else "numpy"
    if backend == "jax": umk_beta1.Umk.terms = terms_jax
    L, Ng, Lp = int(sys.argv[1]), int(sys.argv[2]), float(sys.argv[3]); p = Lp / L
    tag = f"results/t2_fstepb_verify_umk_L{L}_Ng{Ng}_Lp{Lp}"
    if os.path.exists(tag + ".json"): print(json.load(open(tag + ".json"))); sys.exit()
    r = run(L, Ng, p, ckpt=tag + ".partial.npz")
    r.update(L=L, Ng=Ng, p=p, Lp=Lp, beta=4 * r["w"] / (L**4 * (1 - np.cos(p))),
             beta_ghost=4 * r["ghost"] / (L**4 * (1 - np.cos(p))), beta_bord=-2 * r["bord"] / (L**4 * (1 - np.cos(p))))
    json.dump(r, open(tag + ".json", "w"), indent=1)
    if os.path.exists(tag + ".partial.npz"): os.remove(tag + ".partial.npz")
    print(r)
