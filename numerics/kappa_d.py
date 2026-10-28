"""kappa_d = sup_{p',mu} phi_mu/(phi_mu - 1), CMP 95 (1.84),(1.101), free case, a = 1 by default.
phi_mu(p') = 1 + a T_mu(p'),  T_mu(p') = sum_l |u(p'+l)|^2 |v_mu(p'+l)|^2 / Delta(p'+l)   (Delta_0 cancels in (1.101))
eta = 1/N, N = L^k;  l = 2 pi m, m_nu in [-(N-1)/2, (N-1)/2] (N odd);
|u(p)|^2 = prod_nu s(p_nu),  |v_mu(p)|^2 = s(p_mu),  s(q) = sin^2(q/2) / (N sin(q/(2N)))^2   ((1.31),(1.61))
Delta(p) = sum_nu 4 N^2 sin^2(p_nu/(2N))   ((1.30)).  So kappa = 1 + 1/(a inf T).
Usage: python kappa_d.py   (scans d = 3, 4; N = 3, 5, 13 [k=1], 9, 25 [k=2 at L=3,5])
"""
import itertools
import numpy as np
from scipy.optimize import minimize

def T(pp, N, mu=0):
    pp = np.asarray(pp, float); d = len(pp)
    m = 2 * np.pi * (np.arange(N) - (N - 1) // 2)
    q = pp[:, None] + m[None, :]                                   # (d, N)
    sN = np.sin(q / (2 * N))
    s = np.where(np.abs(sN) < 1e-300, 1.0, np.sin(q / 2)**2 / np.maximum((N * sN)**2, 1e-300))
    D1 = 4 * N**2 * sN**2                                          # per-axis Laplacian symbol
    w = [s[n] * (s[n] if n == mu else 1.0) for n in range(d)]      # |u|^2 |v_mu|^2 per axis
    W = w[0]; Dl = D1[0]
    for n in range(1, d):
        W = np.multiply.outer(W, w[n]); Dl = np.add.outer(Dl, D1[n])
    return float(np.sum(W / Dl))

def infT(d, N, ng):
    g = np.linspace(np.pi / ng, np.pi, ng)                         # T even in each p'_nu; p' = 0 gives T = inf
    best = (np.inf, None)
    for mu_val in g:                                               # mu = 0 axis; others symmetric -> sorted tuples
        for rest in itertools.combinations_with_replacement(g, d - 1):
            p = (mu_val,) + rest; t = T(p, N)
            if t < best[0]: best = (t, p)
    r = minimize(lambda x: T(np.clip(x, 1e-6, np.pi), N), best[1], method="Nelder-Mead", options=dict(xatol=1e-6, fatol=1e-12))
    pc = np.clip(r.x, 1e-6, np.pi)
    return min(best[0], T(pc, N)), best[1], T(np.full(d, np.pi), N)

if __name__ == "__main__":
    # self-check: d = 1 closed form at p' = pi: sum_m s^2/(4N^2 sin^2) must match direct T
    N = 5; q = np.pi + 2 * np.pi * (np.arange(N) - 2)
    ref = np.sum((np.sin(q / 2)**2 / (N * np.sin(q / (2 * N)))**2)**2 / (4 * N**2 * np.sin(q / (2 * N))**2))
    assert abs(T([np.pi], N) - ref) < 1e-12
    a = 1.0
    for d, Ns, ng in ((3, (3, 5, 9, 13, 25), 10), (4, (3, 5, 9, 13, 25), 8)):
        for N in Ns:
            t, p, tc = infT(d, N, ng)
            print(f"d={d} N={N:3d}  inf T={t:.6f}  T(pi,..,pi)={tc:.6f}  grid argmin={np.round(p, 3)}  kappa={1 + 1 / (a * t):.6f}", flush=True)
    # k -> inf (eta -> 0) at the minimizing corner: s -> 4/q^2 at q = pi(2m+1), Delta -> |q|^2; truncate |m| <= M, M -> inf
    for d in (3, 4):
        for N in (41, 81):
            print(f"d={d} N={N:3d}  T(pi,..,pi)={T(np.full(d, np.pi), N):.6f}", flush=True)
        for M in (40, 80, 160) if d == 3 else (20, 40, 60):
            q = np.pi * (2 * np.arange(-M, M + 1) + 1); s = 4 / q**2; W = s**2; Dl = q**2
            for n in range(1, d): W = np.multiply.outer(W, s); Dl = np.add.outer(Dl, q**2)
            t = np.sum(W / Dl); print(f"d={d} continuum M={M}  T={t:.6f}  kappa={1 + 1 / (a * t):.4f}", flush=True)
