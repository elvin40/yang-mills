"""EUMOM (SOURCES_T2_EUMOM.md): (1) proof constants of sections 2-5 for d = 4; (2) free minimal-extension kernel E_0
at N = 3, 5, 7 (d = 4) on the torus: moments with and without the mean shift, shell decay, coset sums sigma_j.
Kernel code is a copy of numerics/k0_d.py kernel_moments (read only), extended to return the field.
Usage: numerics/.venv/bin/python numerics/t2_eumom_n7.py
"""
import sys, time
import numpy as np
from math import pi, sqrt, exp, lgamma, log, comb

def consts(d=4):
    om = (pi / 2)**(2 * (d + 1)); c1 = (1 + 2 * om) / 4; c2 = 2 * om; t0 = 1 / (d * pi**2 * om); D = sqrt(d + 3)
    best = None
    for a in np.geomspace(0.01, 100, 81):
        m = 1 / max(c1, c2 / a); s0 = t0 / (1 + a * t0)
        def ok(dl):
            b = exp(dl) - 1; q = exp(dl * D / 2) - 1
            th = 2 * b * sqrt(d / m) + (b * b * d + a * (exp(dl * D) - 1)) / m
            eS = (2 * q * (1 + q) + 2 * th * (1 + q) + q) / m
            return th <= 0.5 and eS <= s0 / 2
        lo, hi = 0.0, 1.0
        for _ in range(200):
            mid = (lo + hi) / 2
            lo, hi = (mid, hi) if ok(mid) else (lo, mid)
        if best is None or lo > best[0]: best = (lo, a, m, s0)
    dl, a, m, s0 = best; b = exp(dl) - 1; q = exp(dl * D / 2) - 1
    W0 = (2 / m) * (1 + q) * (2 / s0); W1 = (2 / sqrt(m) + 2 * b * sqrt(d) / m) * (1 + q) * (2 / s0)
    Ce = om * d * pi**2 * (pi**2 + 1) / 4; kap = Ce / (2 * pi)**d
    I1 = lambda g: 2 * pi * (1 + pi**(-2 * g) / (2 * g)); J = lambda be: 4 * pi * I1((2 - be) / (2 * d))**(d - 1)
    H0 = kap * J(1); H1 = 2**0.5 * kap * J(1.5)
    def Cpt(W, H, al):
        return max(2 * W * d**(d / 4) * exp(dl), (4 * W**2 * d**(d / 2) * (2 * H)**(d / al) * exp(2 * dl))**(al / (2 * al + d)))
    dp0, dp1 = 2 * dl / (d + 2), dl / (d + 1)
    bb = 1 + sqrt(d) + D / 2; Sd = 2 * pi**(d / 2) / exp(lgamma(d / 2))
    def logM(j):   # log of M_j = (e^{2 dl sqrt d} |S^{d-1}| int r^{d-1}(bb+r)^{2j} e^{-2 dl r} dr)^{1/2}
        terms = [log(comb(2 * j, i)) + (2 * j - i) * log(bb) + lgamma(d + i) - (d + i) * log(2 * dl) for i in range(2 * j + 1)]
        mx = max(terms); return 0.5 * (2 * dl * sqrt(d) + log(Sd) + mx + log(sum(exp(t - mx) for t in terms)))
    print(f"[consts d={d}] omega={om:.4f} c1={c1:.4f} c2={c2:.4f} t0={t0:.4e} (1/t0={1/t0:.1f}) D={D:.4f}")
    print(f"[consts] best a={a:.4g} m={m:.5f} s0={s0:.4e} delta*={dl:.4e} W0={W0:.4e} W1={W1:.4e}")
    print(f"[consts] C_e={Ce:.4e} kappa_d={kap:.4f} J(0)={J(0):.4e} J(1)={J(1):.4e} J(1.5)={J(1.5):.4e} sup|E0|<={kap*J(0):.3e} H0={H0:.4e} H1={H1:.4e}")
    print(f"[consts] pointwise: delta'_0={dp0:.4e} C_pt0={Cpt(W0, H0, 1.0):.4e}; delta'_1={dp1:.4e} C_pt1={Cpt(W1, H1, 0.5):.4e}")
    for j in (0, 1, 2):
        print(f"[consts] j={j}: log10 nu_j bound = {(log(W0) + logM(j)) / log(10):.2f}, log10 gamma_j bound = {(log(W1) + logM(j)) / log(10):.2f}")

def kernel(d, N, Lu, mu=0):
    n = N * Lu; eta = 1.0 / N
    m = np.arange(2 * N - 1); cnt = np.minimum(m + 1, 2 * N - 1 - m)
    w = np.zeros((n,) * d); sl = [slice(0, N)] * d; sl[mu] = slice(0, 2 * N - 1)
    shp = [1] * d; shp[mu] = 2 * N - 1
    w[tuple(sl)] = cnt.reshape(shp) * N**-(d + 1)
    k1 = 4 * N**2 * np.sin(np.pi * np.arange(n) / n)**2
    lam = sum(np.meshgrid(*([k1] * d), indexing="ij", sparse=True)); lam.flat[0] = np.inf
    W = np.fft.fftn(w); f = np.real(np.fft.ifftn(W / lam)) * eta**-d
    G = np.real(np.fft.ifftn(np.conj(W) * np.fft.fftn(f)))[tuple([slice(0, n, N)] * d)]
    B = -np.full((Lu,) * d, Lu**-d); B.flat[0] += 1
    Gh = np.fft.fftn(G); Gh.flat[0] = np.inf
    X = np.real(np.fft.ifftn(np.fft.fftn(B) / Gh))
    Xf = np.zeros((n,) * d); Xf[tuple([slice(0, n, N)] * d)] = X
    del G, Gh, lam
    A = np.real(np.fft.ifftn(np.fft.fftn(Xf) * np.fft.fftn(f)))
    QA = np.real(np.fft.ifftn(np.conj(W) * np.fft.fftn(A)))[tuple([slice(0, n, N)] * d)]
    assert np.allclose(QA, B, atol=1e-9)
    return A, eta

def analyse(d, N, Lu, mu=0):
    t = time.time(); A, eta = kernel(d, N, Lu, mu); n = N * Lu
    E = A + Lu**-d                      # torus kernel E_0^T(., 0) = A + Lu^{-d} (E_0 maps constants to constants)
    gr = [(np.roll(E, -1, a) - E) / eta for a in range(d)]; gA = np.sqrt(sum(g**2 for g in gr))
    ctr = np.full(d, (N - 1) / 2 * eta); ctr[mu] = (N - 1) * eta
    ax = [np.minimum(np.abs(np.arange(n) * eta - c), Lu - np.abs(np.arange(n) * eta - c)) for c in ctr]
    r = np.sqrt(sum(np.meshgrid(*[x**2 for x in ax], indexing="ij", sparse=True)))
    ax0 = [np.minimum(np.arange(n) * eta, Lu - np.arange(n) * eta)] * d
    r0 = np.sqrt(sum(np.meshgrid(*[x**2 for x in ax0], indexing="ij", sparse=True)))
    momr = lambda F, rr: [eta**d * np.sum(np.abs(F) * rr**j) for j in (0, 1, 2)]
    mom1 = lambda F, rr: [eta**d * np.sum(np.abs(F) * (1 + rr)**j) for j in (0, 1, 2)]
    print(f"N={N} Lu={Lu} n={n}: sum eta^d E = {eta**d*E.sum():.6f} (should be 1); max|E|={np.abs(E).max():.4f} max|gradE|={gA.max():.4f}")
    print(f"  |A| (mean-shifted, as SOURCES_EU) r^j moments: {np.round(momr(A, r), 3)}")
    print(f"  |E0T| r^j moments about corridor centre: {np.round(momr(E, r), 3)};  |grad| : {np.round(momr(gA, r), 3)}")
    print(f"  nu_j, gamma_j as defined in brief ((1+|y|)^j, about y = 0): nu={np.round(mom1(E, r0), 3)} gamma={np.round(mom1(gA, r0), 3)}")
    sh = [np.abs(E[(r >= R) & (r < R + 1)]).max() for R in range(0, Lu // 2)]
    shg = [gA[(r >= R) & (r < R + 1)].max() for R in range(0, Lu // 2)]
    print(f"  shell max |E0|: {np.array2string(np.array(sh), precision=4)}  ratios: {np.round(np.array(sh[:-1]) / np.array(sh[1:]), 2)}")
    print(f"  shell max |gradE0|: {np.array2string(np.array(shg), precision=4)}  ratios: {np.round(np.array(shg[:-1]) / np.array(shg[1:]), 2)}")
    # coset sums sigma_j(y) = sum_{c in Z^d} |F(y - c)| (1 + |y - c|)^j, sup over y in the unit cell (torus, c over Lu^d)
    for name, F in (("E0", np.abs(E)), ("gradE0", gA)):
        out = []
        for j in (0, 1, 2):
            G = (F * (1 + r)**j).reshape(*sum([[Lu, N] for _ in range(d)], []))
            S = G.sum(axis=tuple(range(0, 2 * d, 2)))     # sum over the Lu^d coset representatives
            out.append(S.max())
        print(f"  coset sup_y sum_c |{name}|(1+r)^j, j=0,1,2: {np.round(out, 3)}")
    print(f"  ({time.time() - t:.1f} s)", flush=True)

if __name__ == "__main__":
    consts(4)
    for N, Lu in ((3, 10), (5, 8), (7, 6), (7, 7)):
        analyse(4, N, Lu)
