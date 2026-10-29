"""Local minimisation of B_sharp/rho_1^2 (j = inf and 1) from random starts in the interior, L = 13."""
import sys, os, numpy as np
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "..")); sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from scipy.optimize import minimize
from h1cert_rho1 import prof, rho1
from verify_ab import B_sharp
L = 13; pf = prof(L); rng = np.random.default_rng(5)
def f(K, j): return B_sharp(K, L)[0]/rho1(L, j, K, pf)**2
starts = [np.array([-0.322, 1.291, -1.271, 0.762])] + [rng.uniform(-np.pi, np.pi, 4) for _ in range(300)]
vals = sorted(((f(K, "inf"), tuple(K)) for K in starts))[:6]
for v, K in vals:
    for j in ("inf", 1):
        r = minimize(lambda x: f(x, j), np.array(K), method="Nelder-Mead", options=dict(maxfev=250, xatol=1e-4, fatol=1e-6))
        print(f"start {v:.4f} j={j}: min ratio {r.fun:.4f} at {np.round(r.x,3)} rho^2 {rho1(L, j, r.x, pf)**2:.4f}", flush=True)
