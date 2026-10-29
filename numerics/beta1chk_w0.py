# Grid sum of umk_beta1 at p = 0 (constant background, exact value 0): measures the quadrature offset E(L, Ng) of w.
# Usage: python beta1chk_w0.py L Ng [Lp_list]   -> /tmp/beta1chk/w0_L{L}_Ng{Ng}.json; with Lp_list also w(p) and the
# subtracted beta~ = 4 (w(p) - w(0)) / (L^4 (1 - cos p)) next to the raw beta.
import sys, os, json, numpy as np
from umk_beta1 import run
L, Ng = int(sys.argv[1]), int(sys.argv[2]); Lps = [float(x) for x in sys.argv[3].split(",")] if len(sys.argv) > 3 else []
os.makedirs("/tmp/beta1chk", exist_ok=True); out = f"/tmp/beta1chk/w0_L{L}_Ng{Ng}.json"
res = json.load(open(out)) if os.path.exists(out) else {}
for key, Lp in [("0", 0.0)] + [(str(x), x) for x in Lps]:
    if key not in res:
        r = run(L, Ng, Lp / L); res[key] = dict(w=r["w"], ghost=r["ghost"], bord=r["bord"], secs=r["secs"])
        json.dump(res, open(out, "w"), indent=1)
    if key != "0":
        s = 4 / (L**4 * (1 - np.cos(Lp / L)))
        res[key].update(beta=s * res[key]["w"], beta_sub=s * (res[key]["w"] - res["0"]["w"]))
    print(L, Ng, key, res[key], flush=True)
json.dump(res, open(out, "w"), indent=1)
