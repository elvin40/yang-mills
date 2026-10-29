# Exact limits of umk_beta1 at one L: abelian sector (sigma_3 only) -> (1 - L^-4)/4, ghost part 0; pure gauge at commensurate p -> w = 0.
# Usage: python beta1chk_limits.py L [Ng]   -> /tmp/beta1chk/limits_L{L}_Ng{Ng}.json (skip-if-done per case)
import sys, os, json, numpy as np
from umk_beta1 import run
L = int(sys.argv[1]); Ng = int(sys.argv[2]) if len(sys.argv) > 2 else 2
os.makedirs("/tmp/beta1chk", exist_ok=True); out = f"/tmp/beta1chk/limits_L{L}_Ng{Ng}.json"
res = json.load(open(out)) if os.path.exists(out) else {}
cases = {"u1_p0.1": (0.1, "trans", (2,)), "u1_Lp1": (1.0 / L, "trans", (2,)),
         "gauge_comm": (2 * np.pi / (L * Ng), "gauge", (0, 1, 2)), "gauge_incomm": (0.5 / L, "gauge", (0, 1, 2))}
for name, (p, kind, cols) in cases.items():
    if name in res: continue
    r = run(L, Ng, p, kind, cols); s = 4 / (L**4 * (1 - np.cos(p)))
    res[name] = dict(p=p, w=r["w"], ghost=r["ghost"], bord=r["bord"], beta=s * r["w"], beta_ghost=s * r["ghost"],
                     exact=(1 - L**-4.0) / 4 if kind == "trans" else 0.0, secs=r["secs"])
    json.dump(res, open(out, "w"), indent=1); print(name, res[name], flush=True)
