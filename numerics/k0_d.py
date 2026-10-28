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

def kernel_moments(d, N, Lu, mu=0):
    # free minimizer A = E_0 B for B = delta at block 0 (mean removed); moments of |A| and |grad A| about the corridor centre
    n = N * Lu; eta = 1.0 / N
    m = np.arange(2 * N - 1); cnt = np.minimum(m + 1, 2 * N - 1 - m)
    w = np.zeros((n,) * d); sl = [slice(0, N)] * d; sl[mu] = slice(0, 2 * N - 1)
    shp = [1] * d; shp[mu] = 2 * N - 1
    w[tuple(sl)] = cnt.reshape(shp) * N**-(d + 1)                  # corridor weight, total 1
    k1 = 4 * N**2 * np.sin(np.pi * np.arange(n) / n)**2
    lam = sum(np.meshgrid(*([k1] * d), indexing="ij", sparse=True)); lam.flat[0] = np.inf
    W = np.fft.fftn(w); f = np.real(np.fft.ifftn(W / lam)) * eta**-d     # f = (-Delta)^{-1} Q* delta
    G = np.real(np.fft.ifftn(np.conj(W) * np.fft.fftn(f)))[tuple([slice(0, n, N)] * d)]
    B = -np.full((Lu,) * d, Lu**-d); B.flat[0] += 1
    Gh = np.fft.fftn(G); Gh.flat[0] = np.inf
    X = np.real(np.fft.ifftn(np.fft.fftn(B) / Gh))
    Xf = np.zeros((n,) * d); Xf[tuple([slice(0, n, N)] * d)] = X
    A = np.real(np.fft.ifftn(np.fft.fftn(Xf) * np.fft.fftn(f)))
    QA = np.real(np.fft.ifftn(np.conj(W) * np.fft.fftn(A)))[tuple([slice(0, n, N)] * d)]
    gr = [(np.roll(A, -1, a) - A) / eta for a in range(d)]
    En = eta**d * sum(np.sum(g**2) for g in gr)
    assert np.allclose(QA, B, atol=1e-9) and abs(En - np.sum(B * X)) < 1e-8 * abs(En)
    ctr = np.full(d, (N - 1) / 2 * eta); ctr[mu] = (N - 1) * eta
    ax = [np.minimum(np.abs(np.arange(n) * eta - c), Lu - np.abs(np.arange(n) * eta - c)) for c in ctr]
    r = np.sqrt(sum(np.meshgrid(*[a**2 for a in ax], indexing="ij", sparse=True)))
    gA = np.sqrt(sum(g**2 for g in gr))
    mom = lambda F: [eta**d * np.sum(np.abs(F) * r**j) for j in (0, 1, 2)]
    shell = [np.abs(A[(r >= R) & (r < R + 1)]).max() for R in range(0, Lu // 2)]
    return En, mom(A), mom(gA), shell

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
    for d, N, Lu in ((2, 5, 16), (4, 3, 10), (4, 5, 8)):
        En, mA, mG, sh = kernel_moments(d, N, Lu)
        print(f"kernel d={d} N={N} Lu={Lu}: energy={En:.4f}  |A| moments j=0,1,2: {np.round(mA, 4)}  |grad A| moments: {np.round(mG, 3)}  shell max|A|: {np.array2string(np.array(sh), precision=2)}", flush=True)
