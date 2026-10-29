"""Fixed generic coarse K (K1, K2, K3 of §11): fit i_L(K) over L = 5..13 with and without a log L term."""
import json, numpy as np
Lp = 0.5; Ls = [5, 7, 9, 11, 13]
D = {L: json.load(open(f"results/bcl_L{L}_Lp{Lp}.json"))["data"] for L in Ls}
conv = lambda L: 4 / (L**2 * (1 - np.cos(Lp / L)))
L = np.array(Ls, float)
models = {"a+b/L2+d/L4": [L**0, L**-2, L**-4], "a+s logL+b/L2": [L**0, np.log(L), L**-2],
          "a+s logL+b/L2+d/L4": [L**0, np.log(L), L**-2, L**-4], "a+b/L2+d/L3": [L**0, L**-2, L**-3]}
for n in ["K1", "K2", "K3"]:
    for piece in ["w", "ghost", "fine", "constraint"]:
        y = np.array([conv(l) * D[l][n][piece] * (1 if piece in ("w", "ghost") else -0.5) for l in Ls])
        out = []
        for m, cols in models.items():
            X = np.array(cols).T; c, *_ = np.linalg.lstsq(X, y, rcond=None); r = y - X @ c
            out.append(f"{m}: rms {np.sqrt(np.mean(r**2)):.1e}" + (f" s={c[1]:+.3f}" if "log" in m else ""))
        print(n, piece, np.round(y, 4), " | ".join(out))
