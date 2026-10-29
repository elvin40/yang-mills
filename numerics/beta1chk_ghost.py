# Ghost part of umk_beta1 alone (no averaging profile needed): beta_ghost(L, Lp, Ng), same code lines as Umk.terms.
# Usage: python beta1chk_ghost.py L Ng Lp_list   (prints beta_ghost = 4 ghost / (L^4 (1 - cos p)))
import sys, numpy as np
from umk_beta1 import consts, d0, dsym, taus, kgrid, H
L, Ng = int(sys.argv[1]), int(sys.argv[2]); Lps = [float(x) for x in sys.argv[3].split(",")]
C = consts(); lv = np.array(list(np.ndindex(*(4 * [L])))) * 2 * np.pi / L; s = L**-2.0
K, W = kgrid(L, Ng); bs = max(1, 20000 // L**4)
for Lp in Lps:
    p = Lp / L; pv = np.array([p, 0, 0, 0]); c = np.zeros(4, complex); c[1] = 1; tot = 0.0
    for i in range(0, len(K), bs):
        kl = K[i:i + bs, None, :] + lv[None]; kp = kl + pv
        D1, D2 = d0(kl), d0(kp)
        Dp = lambda k: dsym(k, -0.5 * c, C["G"]); Dm = lambda k: dsym(k, -0.5 * np.conj(c), C["G"])
        Dpp = dsym(kl, -0.5 * np.abs(c)**2, C["G2"])
        G1, G2 = H(D1) @ D1, H(D2) @ D2
        ga = H(Dm(kp)) @ D1 + H(D2) @ Dp(kl)
        G2nd = H(Dpp) @ D1 + H(D1) @ Dpp + 2 * (H(Dp(kl)) @ Dp(kl) + H(Dm(kl)) @ Dm(kl))
        Eg = np.broadcast_to(s * np.eye(3), G1.shape[:2] + (3, 3)); Z = np.zeros_like(Eg)
        tot += W[i:i + bs] @ np.asarray(taus(G1, Eg, G2, Eg, np.zeros((3, 3)), ga, Z, Z, G2nd, Z))
    g = tot / W.sum(); print(f"L={L} Ng={Ng} Lp={Lp}: ghost w={g:.12g} beta_ghost={4 * g / (L**4 * (1 - np.cos(p))):.8f}", flush=True)
