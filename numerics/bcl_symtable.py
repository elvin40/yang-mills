"""Tables from results/bclsym_L*_Lp*.json: raw i(K), partner i(K-p), symmetrized (i(K)+i(K-p))/2 at K = (kappa/L) n; /L^2 scaled."""
import json, glob, sys
import numpy as np
Lp = float(sys.argv[1]) if len(sys.argv) > 1 else 0.5
R = {json.load(open(f))["L"]: json.load(open(f))["data"] for f in glob.glob(f"results/bclsym_L*_Lp{Lp}.json")}
Ls = sorted(R); print("L:", Ls)
KAPPA = [0.5, 1, 1.5, 2, 2.5, 3.5, 5, 7, 10, 14, 20]
get = lambda L, d, k, s, q="i": R[L].get(f"{d}_k{k}_s{s}", {}).get(q, np.nan)
for d in ["e0", "e1", "e2", "d01", "d02", "d0123"]:
    print("=== ", d)
    for k in KAPPA:
        raw = [get(L, d, k, 0) for L in Ls]; par = [get(L, d, k, 1) for L in Ls]
        sym = [(a + b) / 2 for a, b in zip(raw, par)]
        print(f"k={k:5}", "raw", np.round(raw, 2), "partner", np.round(par, 2), "sym", np.round(sym, 2),
              "sym/L^2", np.round([s / L**2 for s, L in zip(sym, Ls)], 4))
