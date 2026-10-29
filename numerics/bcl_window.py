"""Radial integrals of the beta-integrand around the two soft-leg points K = 0 (raw) and K = -p e0 (partner), from bclsym data.
W(R) = (2 pi^2/(2 pi)^4) int_0^R K^3 <i>_dir dK, trapezoid on the nodes K = kappa/L, directions weighted e0,e1,e2,e3(=e2),d01,d02,d0123 equally."""
import json, glob, numpy as np
R = {json.load(open(f))["L"]: json.load(open(f))["data"] for f in glob.glob("results/bclsym_L*_Lp0.5.json")}
KAPPA = [0.5, 1, 1.5, 2, 2.5, 3.5, 5, 7, 10, 14, 20]; DIRS = ["e0", "e1", "e2", "e2", "d01", "d02", "d0123"]
c4 = 2 * np.pi**2 / (2 * np.pi)**4
def prof(L, s, kmax):
    K, v = [0.0], [0.0]
    for k in KAPPA:
        vals = [R[L].get(f"{d}_k{k}_s{s}", {}).get("i") for d in DIRS]
        if any(x is None for x in vals) or k / L > kmax + 1e-12: continue
        K.append(k / L); v.append(np.mean(vals))
    K, v = np.array(K), np.array(v)
    if K[-1] < kmax - 1e-12:  # extend to kmax with the next node (linear interpolation of K^3 <i>)
        k = min(x for x in KAPPA if x / L > kmax); vals = [R[L][f"{d}_k{k}_s{s}"]["i"] for d in DIRS]
        g = np.interp(kmax, [K[-1], k / L], [K[-1]**3 * v[-1], (k / L)**3 * np.mean(vals)])
        return (np.trapezoid(K**3 * v, K) + 0.5 * (kmax - K[-1]) * (K[-1]**3 * v[-1] + g)) * c4, kmax
    return np.trapezoid(K**3 * v, K) * c4, K[-1]
print("L  | ball R=2.5/L raw, partner | window K<=0.35 raw, partner, sum (Kmax used)")
for L in sorted(R):
    rb, _ = prof(L, 0, 2.5 / L); pb, _ = prof(L, 1, 2.5 / L)
    rw, km = prof(L, 0, 0.35); pw, km2 = prof(L, 1, 0.35)
    print(L, np.round([rb, pb], 5), np.round([rw, pw, rw + pw], 4), round(km, 3), round(km2, 3))
