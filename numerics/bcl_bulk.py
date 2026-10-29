"""Per-K split at fixed generic coarse K out to the BZ corner, to map the log L coefficient s(K).
Usage: python bcl_bulk.py L Lp -> results/bclbulk_L{L}_Lp{Lp}.json (skip-if-done). Values are beta-integrand units."""
import sys, os, json
import numpy as np
from umk_beta1 import Umk
from bcl_split import fine_part

PI = np.pi
KS = {"d_0.75": 0.375 * np.ones(4), "d_1.5": 0.75 * np.ones(4), "d_3.0": 1.5 * np.ones(4), "d_4.5": 2.25 * np.ones(4),
      "d_6.28": PI * np.ones(4), "e2_1.5": [0, 0, 1.5, 0], "e2_3.14": [0, 0, PI, 0], "e0_1.5": [1.5, 0, 0, 0],
      "e0_3.14": [PI, 0, 0, 0], "e1_3.14": [0, PI, 0, 0], "c0202": [PI, 0, PI, 0], "c1212": [0, PI, PI, 0], "c0222": [PI, 0, PI, PI]}

if __name__ == "__main__":
    L, Lp = int(sys.argv[1]), float(sys.argv[2])
    path = f"results/bclbulk_L{L}_Lp{Lp}.json"
    if os.path.exists(path): sys.exit()
    u = Umk(L, Lp / L); c = 4 / (L**4 * (1 - np.cos(Lp / L))); out = {}
    for n, K in KS.items():
        Kf = np.array(K, float)[None] / L
        g, b = u.terms(Kf); fn = fine_part(u, Kf)
        out[n] = dict(K=list(map(float, K)), ghost=c * g[0], half_bord=c * b[0] / 2, half_fine=c * fn[0] / 2, i=c * (g[0] - b[0] / 2))
    json.dump(dict(L=L, Lp=Lp, data=out), open(path, "w"))
    print(L, "done", flush=True)
