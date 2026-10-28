"""P5a/P5b check: rho_1(j, R K) = rho_1(j, K) for random signed permutations R (hypercubic group). Usage: python sym_check.py [L] [n]"""
import sys, os
import numpy as np
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
from h1cert_rho1 import rho1, prof
L = int(sys.argv[1]) if len(sys.argv) > 1 else 13; n = int(sys.argv[2]) if len(sys.argv) > 2 else 20
pf = prof(L); rng = np.random.default_rng(11); worst = 0
for t in range(n):
    M = ["inf", L, 1][t % 3]; K = rng.uniform(-np.pi, np.pi, 4)
    RK = (rng.choice([-1, 1], 4) * K)[rng.permutation(4)]
    a, b = rho1(L, M, K, pf), rho1(L, M, RK, pf); worst = max(worst, abs(a - b) / a)
    print(f"M={M} K={np.round(K, 4).tolist()} RK={np.round(RK, 4).tolist()} rho1 {a:.12f} {b:.12f} rel {abs(a - b) / a:.1e}")
print("max rel diff", worst); assert worst < 1e-10
