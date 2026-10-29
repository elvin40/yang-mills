"""Per-K split (ghost, border, fine, constraint) of one-step beta_1 at coarse K, as in SOURCES_BETA1_F_TENSION §11.
Usage: python bcl_split.py L Lp  -> results/bcl_L{L}_Lp{Lp}.json (skip-if-done). Values per K divided by L^2 (coarse normalization)."""
import sys, os, json, time
import numpy as np
import jax.numpy as jnp
from umk_beta1 import Umk, d0, dsym, hess_sym, H

def fine_part(u, K):
    """sum_l tr A1^{-1}A'' - 2 tr A2^{-1} a A1^{-1} a^dag (the fine Feynman-gauge piece of the border trace)."""
    L, C = u.L, u.cons; pv = np.array([u.p, 0, 0, 0])
    kl = K[:, None, :] + u.lv[None]; kp = kl + pv
    D1, D2 = d0(kl), d0(kp)
    Dp = lambda k: dsym(k, -0.5 * u.c, C["G"]); Dm = lambda k: dsym(k, -0.5 * np.conj(u.c), C["G"])
    Dpp = dsym(kl, -0.5 * np.abs(u.c)**2, C["G2"])
    b0, bp, b2 = u.hb; z = np.zeros(4)
    A1 = hess_sym(kl, z, b0) + D1 @ H(D1); A2 = hess_sym(kp, z, b0) + D2 @ H(D2)
    a = hess_sym(kl, pv, bp) + Dp(kl) @ H(D1) + D2 @ H(Dm(kp))
    A2nd = (hess_sym(kl, z, b2) + Dpp @ H(D1) + D1 @ H(Dpp) + 2 * (Dp(kl - pv) @ H(Dp(kl - pv)) + Dm(kp) @ H(Dm(kp))))
    f = u.fi; F = lambda X: X[..., f[:, None], f[None, :]]
    A1i, A2i = np.linalg.inv(F(A1)), np.linalg.inv(F(A2)); aa = F(a)
    t = np.einsum("klij,klji->k", A1i, F(A2nd)) - 2 * np.einsum("klij,klji->k", A2i @ aa, A1i @ H(aa))
    return t.real

KAPPA = [0.5, 1, 1.5, 2, 2.5, 3.5, 5, 7, 10, 14, 20]
def kset(L):
    ks = {"K1": [0, 0, 1.2, 0], "K2": [0, 0.6, 1.2, 0], "K3": [1.5, 0, 0.8, 2.0]}
    for kap in KAPPA:
        for name, d in (("e2", 2), ("e0", 0), ("e1", 1), ("e3", 3)):
            v = [0.0] * 4; v[d] = kap / L; ks[f"{name}_k{kap}"] = v
    return ks

if __name__ == "__main__":
    L, Lp = int(sys.argv[1]), float(sys.argv[2])
    path = f"results/bcl_L{L}_Lp{Lp}.json"
    if os.path.exists(path): print(open(path).read()); sys.exit()
    t = time.time(); u = Umk(L, Lp / L); tp = time.time() - t
    ks = kset(L); names = list(ks); Kc = np.array([ks[n] for n in names]); Kf = Kc / L
    out = {}
    for i in range(len(names)):
        g, b = u.terms(Kf[i:i + 1]); fn = fine_part(u, Kf[i:i + 1])
        g, b, fn = g[0] / L**2, b[0] / L**2, fn[0] / L**2
        out[names[i]] = dict(K=Kc[i].tolist(), ghost=g, bord=b, fine=fn, constraint=b - fn, w=g - 0.5 * b)
    json.dump(dict(L=L, Lp=Lp, prof_secs=tp, secs=time.time() - t, data=out), open(path, "w"), indent=1)
    print(L, Lp, "prof", round(tp, 1), "total", round(time.time() - t, 1))
    for n in ("K1", "K2", "K3"): print(n, {k: round(v, 4) for k, v in out[n].items() if k != "K"})
