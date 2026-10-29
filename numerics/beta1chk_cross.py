# Cross-check: ym_momentum (dense per-k blocks) against umk_beta1 (umklapp sums) on the same L, Ng, p.
# Usage: python beta1chk_cross.py L Ng p [--sym0] [--only umk|mom]   (p may be "2pi/N"); writes /tmp/beta1chk/cross_*.json (skip-if-done)
import sys, os, json, time, numpy as np
import umk_beta1, ym_momentum
L, Ng = int(sys.argv[1]), int(sys.argv[2])
ps = sys.argv[3]; p = 2 * np.pi / float(ps[4:]) if ps.startswith("2pi/") else float(ps)
only = sys.argv[sys.argv.index("--only") + 1] if "--only" in sys.argv else None
if "--sym0" in sys.argv:  # full grid in umk (no 16-fold reduction)
    kg = umk_beta1.kgrid; umk_beta1.kgrid = lambda L, Ng: kg(L, Ng, sym=False)
os.makedirs("/tmp/beta1chk", exist_ok=True)
out = f"/tmp/beta1chk/cross_L{L}_Ng{Ng}_p{ps.replace('/', '_')}{'_sym0' if '--sym0' in sys.argv else ''}.json"
res = json.load(open(out)) if os.path.exists(out) else {}
beta = lambda w: 4 * w / (L**4 * (1 - np.cos(p)))
if only != "mom" and "umk" not in res:
    r = umk_beta1.run(L, Ng, p); res["umk"] = dict(w=r["w"], ghost=r["ghost"], bord=r["bord"], beta=beta(r["w"]), secs=r["secs"])
    json.dump(res, open(out, "w"), indent=1); print("umk", res["umk"], flush=True)
if only != "umk" and "mom" not in res:
    t = time.time(); w, g, b = ym_momentum.w_of_p(ym_momentum.Step(L), p, Ng)
    res["mom"] = dict(w=w, ghost=g, bord=b, beta=beta(w), secs=time.time() - t)
    json.dump(res, open(out, "w"), indent=1); print("mom", res["mom"], flush=True)
if "umk" in res and "mom" in res:
    for k in ("w", "ghost", "bord"):
        a, b = res["umk"][k], res["mom"][k]; print(f"{k}: umk {a:.15g} mom {b:.15g} rel {abs(a - b) / abs(b):.2e}")
