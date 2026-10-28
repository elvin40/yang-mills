"""P5 full-group check: symbol covariance E_q(Rk) = W_R(Lk) E_q(k) W_R(k)^dag and rho_1(j, RK) = rho_1(j, K) over all 384 R in B_4.
Usage: python p5_check.py [L]"""
import sys, os, itertools
import numpy as np
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
from h1cert_rho1 import rho1, prof
import h2_scan as h2
L = int(sys.argv[1]) if len(sys.argv) > 1 else 13
G = [(p, s) for p in itertools.permutations(range(4)) for s in itertools.product([1, -1], repeat=4)]
def act(R, k):
    p, s = R; out = np.empty(4); out[list(p)] = np.array(s) * k; return out
def W(R, k):
    p, s = R; w = np.zeros((4, 4), complex)
    for nu in range(4): w[p[nu], nu] = 1 if s[nu] > 0 else -np.exp(-1j * k[nu])
    return w
pf = prof(L); rng = np.random.default_rng(5)
E = lambda k: h2.qsym(pf, k[None], L)[0, 0]
kh = lambda k: np.exp(1j * k) - 1
ws, wk = 0, 0  # symbol: all 384 R at 5 random fine k
for _ in range(5):
    k = rng.uniform(-np.pi, np.pi, 4) / L * rng.uniform(0.5, 3)
    for R in G:
        ws = max(ws, np.abs(E(act(R, k)) - W(R, L * k) @ E(k) @ W(R, k).conj().T).max() / np.abs(E(k)).max())
        wk = max(wk, np.abs(kh(act(R, k)) - W(R, k) @ kh(k)).max())
print(f"symbol covariance, 384 R x 5 k: max rel {ws:.1e}; k-hat covariance max {wk:.1e}")
bad = set(); worst = 0
for t, M in enumerate(["inf", L, 1]):  # all 384 R at 3 K
    K = rng.uniform(-np.pi, np.pi, 4); a = rho1(L, M, K, pf)
    for i, R in enumerate(G):
        r = abs(rho1(L, M, act(R, K), pf) - a) / a; worst = max(worst, r)
        if r > 1e-12: bad.add(i)
    print(f"all-384 M={M} K={np.round(K, 4).tolist()} rho1={a:.12f} max rel so far {worst:.1e}")
for t in range(20):  # 20 random K, 8 random R each
    M = ["inf", L, 1][t % 3]; K = rng.uniform(-np.pi, np.pi, 4); a = rho1(L, M, K, pf)
    for i in rng.choice(384, 8, replace=False):
        r = abs(rho1(L, M, act(G[i], K), pf) - a) / a; worst = max(worst, r)
        if r > 1e-12: bad.add(int(i))
print(f"max rel diff {worst:.1e}; failing elements: {sorted(bad)}")
assert worst < 1e-12 and not bad
