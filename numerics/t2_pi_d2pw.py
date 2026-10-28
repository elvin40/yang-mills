"""SOURCES_T2_PI §8: plane-wave probe only, d = 2, larger torus (complements t2_pi_d2check.py, which timed out
at nc = 18 after the m = 2 point). Single amplitude a = 0.01 (a^2 error ~ 3e-5 by the nc = 12 Richardson data).
Usage: python t2_pi_d2pw.py [L] [nc] [m1,m2,...]"""
import sys, os, json, time
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import numpy as np
from t2_pi_d2check import gamma, wilson, abelian, plane

L = int(sys.argv[1]); nc = int(sys.argv[2]); ms = [int(s) for s in sys.argv[3].split(",")]
n = L * nc; a = 0.01; t = time.time(); out = dict(L=L, nc=nc, a=a, pw={})
U0 = abelian(n, np.zeros(2 * n * n)); G0, _ = gamma(n, L, U0); A0 = wilson(n, U0)
for m in ms:
    Gp, _ = gamma(n, L, plane(n, a, m, "pw10")); Gm, _ = gamma(n, L, plane(n, -a, m, "pw10"))
    Ap, Am = wilson(n, plane(n, a, m, "pw10")), wilson(n, plane(n, -a, m, "pw10"))
    b = (Gp + Gm - 2 * G0) / (Ap + Am - 2 * A0); p = 2 * np.pi * m / n
    out["pw"][m] = dict(p=p, Lp=L * p, beta=b)
    print(f"m={m} p={p:.4f} Lp={L*p:.3f} beta={b:.6f}  ({time.time()-t:.0f}s)", flush=True)
path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "results", f"t2_pi_d2pw_L{L}_nc{nc}.json")
assert not os.path.exists(path), path
json.dump(out, open(path, "w"), indent=1)
