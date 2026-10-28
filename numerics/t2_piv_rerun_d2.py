"""SOURCES_T2_PI_VERIFY §8: independent rerun of the d = 2 probe-independence test of SOURCES_T2_PI §8.1.
Imports (does not modify) t2_pi_d2check.py. Writes a new JSON only.
Adds two checks not in the derivation run: (i) Gamma at a randomly SU(2)-gauge-transformed constant-field
background equals Gamma at the original (Lemma 3.2 / (I2)); (ii) a fourth plane-wave point for the p -> 0 fit.
Usage: python t2_piv_rerun_d2.py [L] [nc]"""
import sys, os, json, time
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import numpy as np
import u3_lemma51_check as u3
from ym_oneloop import qmul, qinv
from t2_pi_d2check import gamma, wilson, abelian, plane

L = int(sys.argv[1]) if len(sys.argv) > 1 else 3
nc = int(sys.argv[2]) if len(sys.argv) > 2 else 18
n = L * nc; t = time.time(); out = dict(L=L, nc=nc, n=n, cf={}, pw={})
U0 = abelian(n, np.zeros(2 * n * n)); G0, _ = gamma(n, L, U0); A0 = wilson(n, U0)
for q in (1, 2, 3):
    U, phi = u3.background(n, q); G, gm = gamma(n, L, U); A = wilson(n, U)
    out["cf"][q] = dict(f=phi * L**2, beta=(G - G0) / (A - A0), G=G)
    print(f"cf q={q} f={phi*L**2:.4f} beta={(G-G0)/(A-A0):.7f} ({time.time()-t:.0f}s)", flush=True)
    if q == 1:  # random SU(2) gauge transform of the q = 1 background
        rng = np.random.default_rng(1); g = rng.normal(size=(n * n, 4)); g /= np.linalg.norm(g, axis=1, keepdims=True)
        x = np.array(list(np.ndindex(n, n))); Ug = U.copy()
        for mu, e in ((0, np.array([1, 0])), (1, np.array([0, 1]))):
            li = u3.links(n, x, mu); y = (x + e) % n
            Ug[li] = np.asarray(qmul(qmul(g[x[:, 0] * n + x[:, 1]], U[li]), qinv(g[y[:, 0] * n + y[:, 1]])))
        Gg, _ = gamma(n, L, Ug); out["gauge_diff_q1"] = Gg - G
        print(f"gauge check q=1: Gamma(U^g) - Gamma(U) = {Gg-G:.2e}", flush=True)
a = 0.01
for pol, ms in (("pw10", (1, 2, 3, 4)), ("pw01", (1,))):
    for m in ms:
        Gp, _ = gamma(n, L, plane(n, a, m, pol)); Gm, _ = gamma(n, L, plane(n, -a, m, pol))
        Ap, Am = wilson(n, plane(n, a, m, pol)), wilson(n, plane(n, -a, m, pol))
        b = (Gp + Gm - 2 * G0) / (Ap + Am - 2 * A0); p = 2 * np.pi * m / n
        out["pw"][f"{pol}_m{m}"] = dict(p=p, Lp=L * p, beta=b)
        print(f"{pol} m={m} Lp={L*p:.4f} beta={b:.7f} ({time.time()-t:.0f}s)", flush=True)
        if time.time() - t > 270: break
x2 = np.array([out["cf"][q]["f"]**2 for q in (1, 2, 3)]); y = np.array([out["cf"][q]["beta"] for q in (1, 2, 3)])
out["cf_fit_quad"] = float(np.polyfit(x2, y, 2)[-1]); out["cf_fit_lin2"] = float(np.polyfit(x2[:2], y[:2], 1)[-1])
pk = [k for k in out["pw"] if k.startswith("pw10")]
X = np.array([out["pw"][k]["Lp"]**2 for k in pk]); Y = np.array([out["pw"][k]["beta"] for k in pk])
for deg in range(1, len(pk)):
    out[f"pw_fit_deg{deg}"] = float(np.polyfit(X, Y, deg)[-1])
out["time_s"] = time.time() - t
print({k: v for k, v in out.items() if "fit" in k}, out["time_s"])
path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "results", f"t2_piv_d2_L{L}_nc{nc}.json")
assert not os.path.exists(path), path
json.dump(out, open(path, "w"), indent=1, default=float)
