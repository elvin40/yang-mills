# One umk_beta1 point (L, Ng, Lp) with 60 s checkpoints; Lp = 0 gives the quadrature offset w(0).
# Usage: python beta1chk_pt.py L Ng Lp   -> /tmp/beta1chk/pt_L{L}_Ng{Ng}_Lp{Lp}.json (skip-if-done, resumes .partial.npz)
import sys, os, json, numpy as np
from umk_beta1 import run
L, Ng, Lp = int(sys.argv[1]), int(sys.argv[2]), float(sys.argv[3]); p = Lp / L
os.makedirs("/tmp/beta1chk", exist_ok=True); tag = f"/tmp/beta1chk/pt_L{L}_Ng{Ng}_Lp{Lp}"
if os.path.exists(tag + ".json"): print(json.load(open(tag + ".json"))); sys.exit()
r = run(L, Ng, p, ckpt=tag + ".partial.npz"); r.update(L=L, Ng=Ng, Lp=Lp, p=p)
if p > 0: r["beta"] = 4 * r["w"] / (L**4 * (1 - np.cos(p)))
json.dump(r, open(tag + ".json", "w"), indent=1)
if os.path.exists(tag + ".partial.npz"): os.remove(tag + ".partial.npz")
print(r)
