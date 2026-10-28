# Verifier rerun of single-step beta_1(L) via umk_beta1.run, own output names; resumable (run repeatedly under `timeout`).
# Usage: python t2_fstepb_verify_umk.py L Ng Lp   -> results/t2_fstepb_verify_umk_L{L}_Ng{Ng}_Lp{Lp}.json
import sys, os, json, numpy as np
from umk_beta1 import run
L, Ng, Lp = int(sys.argv[1]), int(sys.argv[2]), float(sys.argv[3]); p = Lp / L
tag = f"results/t2_fstepb_verify_umk_L{L}_Ng{Ng}_Lp{Lp}"
if os.path.exists(tag + ".json"): print(json.load(open(tag + ".json"))); sys.exit()
r = run(L, Ng, p, ckpt=tag + ".partial.npz")
r.update(L=L, Ng=Ng, p=p, Lp=Lp, beta=4 * r["w"] / (L**4 * (1 - np.cos(p))),
         beta_ghost=4 * r["ghost"] / (L**4 * (1 - np.cos(p))), beta_bord=-2 * r["bord"] / (L**4 * (1 - np.cos(p))))
json.dump(r, open(tag + ".json", "w"), indent=1)
if os.path.exists(tag + ".partial.npz"): os.remove(tag + ".partial.npz")
print(r)
