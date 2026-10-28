"""K_0(d) = sup_B min{<A, Delta_fine A> : QA = B}/||B||^2 = 1/inf_{p'} T_mu(p')  (free case, SOURCES_CDC section 3, SOURCES_EU section 3).
T_mu from kappa_d.py; a = 1 so K_0 = kappa_d - 1. Self-check: dense real-space min-energy extension on a periodic d = 2 lattice.
Usage: python k0_d.py
"""
import itertools
import numpy as np
from kappa_d import T, infT

def realspace_K0(d, N, Lu, mu=0):
    # fine periodic lattice (N*Lu)^d, spacing eta = 1/N; one component A_mu; B on unit lattice Lu^d
    n = N * Lu; eta = 1.0 / N
    sites = list(itertools.product(range(n), repeat=d)); idx = {s: i for i, s in enumerate(sites)}
    Lap = np.zeros((n**d, n**d))
    for s, i in idx.items():
        for nu in range(d):
            for sg in (1, -1):
                t = list(s); t[nu] = (t[nu] + sg) % n
                Lap[i, i] += 1; Lap[i, idx[tuple(t)]] -= 1
    E = eta**d * Lap / eta**2                                      # energy form eta^d sum |grad_eta A|^2
    blocks = list(itertools.product(range(Lu), repeat=d))
    Q = np.zeros((len(blocks), n**d))
    for ci, c in enumerate(blocks):                                # equal-weight corridor: cube start x, N bonds along mu
        for off in itertools.product(range(N), repeat=d):
            for t in range(N):
                x = [c[nu] * N + off[nu] for nu in range(d)]; x[mu] = (x[mu] + t) % n
                Q[ci, idx[tuple(x)]] += N**-(d + 1)
    M = Q @ np.linalg.pinv(E) @ Q.T                               # = Q E^{-1} Q* off the zero mode
    P = np.eye(len(blocks)) - 1.0 / len(blocks)                   # drop p' = 0 (T = inf there, cost 0)
    w, V = np.linalg.eigh(P @ M @ P); w = w[w > 1e-10]
    Kreal = 1 / w.min()
    ps = [np.array(m) * 2 * np.pi / Lu for m in itertools.product(range(Lu), repeat=d) if any(m)]
    ps = [np.where(p > np.pi, p - 2 * np.pi, p) for p in ps]
    Kmom = 1 / min(T(np.abs(p), N, mu) for p in ps)
    return Kreal, Kmom

def T_cont(d, M):                                                  # k -> inf at p' = (pi,..,pi): s -> 4/q^2, Delta -> |q|^2
    q = np.pi * (2 * np.arange(-M, M + 1) + 1); s = 4 / q**2; W = s**2; Dl = q**2
    for _ in range(1, d): W = np.multiply.outer(W, s); Dl = np.add.outer(Dl, q**2)
    return np.sum(W / Dl)

if __name__ == "__main__":
    for N, Lu in ((3, 4), (3, 3), (5, 3)):
        kr, km = realspace_K0(2, N, Lu)
        print(f"check d=2 N={N} Lu={Lu}: real-space {kr:.8f}  momentum {km:.8f}", flush=True)
        assert abs(kr - km) < 1e-6 * km
    for d, ng in ((3, 10), (4, 8)):
        for N in (3, 5, 13):
            t, p, tc = infT(d, N, ng)
            print(f"d={d} N={N:3d}  inf T={t:.6f} at {np.round(p, 3)}  T(pi..pi)={tc:.6f}  K_0={1 / t:.4f}", flush=True)
        for M in ((40, 80, 160) if d == 3 else (20, 40, 60)):
            print(f"d={d} N=inf M={M}  K_0={1 / T_cont(d, M):.4f}", flush=True)
