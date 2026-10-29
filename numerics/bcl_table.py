"""Tables from results/bcl_L*_Lp*.json: beta-integrand i_L(K) = 4 w_K/(L^4(1-cos(Lp/L))) per piece, at K = kappa/L and generic K."""
import json, glob, sys
import numpy as np
Lp = float(sys.argv[1]) if len(sys.argv) > 1 else 0.5
R = {}
for f in sorted(glob.glob(f"results/bcl_L*_Lp{Lp}.json")):
    d = json.load(open(f)); R[d["L"]] = d["data"]
Ls = sorted(R)
conv = lambda L: 4 / (L**2 * (1 - np.cos(Lp / L)))  # per-K value is already /L^2
def row(name, piece):
    return [conv(L) * (R[L][name][piece] if piece != "half_bord" else 0.5 * R[L][name]["bord"]) for L in Ls]
print("L:", Ls)
for name in ["K1", "K2", "K3"]:
    print(name, "total", np.round(row(name, "w"), 4))
for d in ["e2", "e0", "e1", "e3"]:
    print("--- direction", d)
    for kap in [0.5, 1, 1.5, 2, 2.5, 3.5, 5, 7, 10, 14, 20]:
        n = f"{d}_k{kap}"
        if n not in R[Ls[0]]: continue
        print(f"k={kap:5}", "tot", np.round(row(n, "w"), 4), "ghost", np.round(row(n, "ghost"), 3),
              "fine/2", np.round(np.array(row(n, "fine")) / 2, 3), "cons/2", np.round(np.array(row(n, "constraint")) / 2, 3))
