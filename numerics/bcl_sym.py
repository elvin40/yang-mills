"""p-symmetrized beta-integrand near K = 0: i(K) and i(K - p e0), K = (kappa/L) n, several unit directions n (coarse units).
i(K) = 4 w_K/(L^4(1-cos(Lp/L))); the symmetrized integrand (i(K)+i(K-p))/2 has the same BZ average and collects every term
with a propagator leg at small momentum. Usage: python bcl_sym.py L Lp -> results/bclsym_L{L}_Lp{Lp}.json (skip-if-done)."""
import sys, os, json, time
import numpy as np
from umk_beta1 import Umk
from bcl_split import fine_part

KAPPA = [0.5, 1, 1.5, 2, 2.5, 3.5, 5, 7, 10, 14, 20]
DIRS = {"e0": [1, 0, 0, 0], "e1": [0, 1, 0, 0], "e2": [0, 0, 1, 0], "d01": [1, 1, 0, 0], "d02": [1, 0, 1, 0],
        "d0123": [1, 1, 1, 1]}  # e3 ~ e2 by the 2<->3 symmetry

if __name__ == "__main__":
    L, Lp = int(sys.argv[1]), float(sys.argv[2])
    path = f"results/bclsym_L{L}_Lp{Lp}.json"
    if os.path.exists(path): sys.exit()
    t = time.time(); u = Umk(L, Lp / L); tp = time.time() - t
    out = {}
    for dn, n in DIRS.items():
        n = np.array(n, float) / np.linalg.norm(n)
        for kap in KAPPA:
            for sh in (0, 1):
                Kc = kap / L * n - sh * np.array([Lp, 0, 0, 0])
                if np.linalg.norm(Kc) < 1e-9: continue  # K = 0 exactly: zero mode
                g, b = u.terms(Kc[None] / L); fn = fine_part(u, Kc[None] / L)
                c = 4 / (L**4 * (1 - np.cos(Lp / L)))
                out[f"{dn}_k{kap}_s{sh}"] = dict(K=Kc.tolist(), ghost=c * g[0], half_bord=c * b[0] / 2, half_fine=c * fn[0] / 2, i=c * (g[0] - b[0] / 2))
        json.dump(dict(L=L, Lp=Lp, prof_secs=tp, secs=time.time() - t, data=out), open(path + ".tmp", "w"))
    os.replace(path + ".tmp", path)
    print(L, Lp, "prof", round(tp, 1), "total", round(time.time() - t, 1), flush=True)
