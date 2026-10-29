"""Fit i_L(K) = a + s log L + b/L^2 + d/L^4 (L = 5..13) at the fixed coarse K of bcl_bulk.py and bcl_split.py, per piece."""
import json, glob, numpy as np
R = {json.load(open(f))["L"]: json.load(open(f))["data"] for f in glob.glob("results/bclbulk_L*_Lp0.5.json")}
Ls = sorted(R); L = np.array(Ls, float); print("L:", Ls)
X = np.array([L**0, np.log(L), L**-2, L**-4]).T; X0 = np.array([L**0, L**-2, L**-4]).T
for n in R[Ls[0]]:
    out = []
    for piece, sg in (("i", 1), ("half_fine", -1), ("ghost", 1)):
        y = np.array([sg * R[l][n][piece] for l in Ls])
        c, *_ = np.linalg.lstsq(X, y, rcond=None); r = np.sqrt(np.mean((y - X @ c)**2))
        c0, *_ = np.linalg.lstsq(X0, y, rcond=None); r0 = np.sqrt(np.mean((y - X0 @ c0)**2))
        out.append(f"{piece}: s={c[1]:+.3f} (rms {r:.0e} vs no-log {r0:.0e})")
    cons = np.array([-(R[l][n]["half_bord"] - R[l][n]["half_fine"]) for l in Ls]); c, *_ = np.linalg.lstsq(X, cons, rcond=None)
    print(f"{n:8} |K|={np.linalg.norm(R[Ls[0]][n]['K']):.2f} i(L)=", np.round([R[l][n]['i'] for l in Ls], 3), " | ".join(out), f"| constraint s={c[1]:+.3f}")
