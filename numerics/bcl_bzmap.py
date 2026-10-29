"""Per-K beta-integrand on the symmetric kgrid (coarse K = (m+1/2) 2 pi/Ng, the same points for every L), saved per K,
so the log L coefficient s(K) can be fitted point by point and binned. The weighted mean reproduces the Ng-grid beta.
Usage: python bcl_bzmap.py L Ng Lp -> results/bclmap_L{L}_Ng{Ng}_Lp{Lp}.npz (skip-if-done; .partial.npz checkpoint every 60 s)."""
import sys, os, time
import numpy as np
from umk_beta1 import Umk, kgrid
from bcl_split import fine_part

if __name__ == "__main__":
    L, Ng, Lp = int(sys.argv[1]), int(sys.argv[2]), float(sys.argv[3])
    path = f"results/bclmap_L{L}_Ng{Ng}_Lp{Lp}.npz"; ck = path.replace(".npz", ".partial.npz")
    if os.path.exists(path): sys.exit()
    u = Umk(L, Lp / L); K, W = kgrid(L, Ng); c = 4 / (L**4 * (1 - np.cos(Lp / L)))
    G, B, F = np.full(len(K), np.nan), np.full(len(K), np.nan), np.full(len(K), np.nan); i0 = 0
    if os.path.exists(ck):
        z = np.load(ck); G, B, F, i0 = z["G"], z["B"], z["F"], int(z["i"])
    bs = max(1, 20000 // L**4); tl = time.time()
    for i in range(i0, len(K), bs):
        g, b = u.terms(K[i:i + bs]); G[i:i + bs], B[i:i + bs] = c * g, c * b / 2; F[i:i + bs] = c * fine_part(u, K[i:i + bs]) / 2
        if time.time() - tl > 60: np.savez(ck, G=G, B=B, F=F, i=i + bs); tl = time.time()
    np.savez(path, K=K * L, W=W, ghost=G, half_bord=B, half_fine=F, i=G - B)
    if os.path.exists(ck): os.remove(ck)
    print(L, Ng, Lp, "beta", (W @ (G - B)) / W.sum(), flush=True)
