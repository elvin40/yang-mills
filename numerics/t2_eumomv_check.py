# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
"""EUMOM VERIFY (SOURCES_T2_EUMOM_VERIFY.md section 6), d = 4.
(a) E_0 on the torus from the symbol formula e(p) = w(p)/(Delta(p) T(p')) (SOURCES_T2_EUMOM 2.1) vs k0_d-style kernel (t2_eumom_n7.kernel) + Lu^{-d}.
(b) grid checks of (S4) sum_l |w_l|^2 <= 1, T >= t0, and the symbol bound |e| <= C_e |w| / (1 + |p|^2) (4.1).
(c) corner-based gamma~_j, sigma_j^grad (distance to the block corner c), the 5.4 bound on Gamma_j, and Gamma_j computed directly.
Usage: numerics/.venv/bin/python numerics/t2_eumomv_check.py
"""
import sys, os, time
import numpy as np
from math import pi, comb
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from t2_eumom_n7 import kernel

def symbol_kernel(d, N, Lu, mu=0):
    n = N * Lu; eta = 1.0 / N
    m = np.arange(2 * N - 1); cnt = np.minimum(m + 1, 2 * N - 1 - m)
    w = np.zeros((n,) * d); sl = [slice(0, N)] * d; sl[mu] = slice(0, 2 * N - 1)
    shp = [1] * d; shp[mu] = 2 * N - 1
    w[tuple(sl)] = cnt.reshape(shp) * N**-(d + 1)
    W = np.fft.fftn(w)                                   # w^(p), p = 2 pi k / Lu
    k1 = 4 * N**2 * np.sin(np.pi * np.arange(n) / n)**2
    lam = sum(np.meshgrid(*([k1] * d), indexing="ij", sparse=True))
    lam0 = lam.copy(); lam0.flat[0] = np.inf
    R = np.abs(W)**2 / lam0
    Tp = R.reshape(*([N, Lu] * d)).sum(axis=tuple(range(0, 2 * d, 2)))     # T(p'), index k' = k mod Lu
    S4 = (np.abs(W)**2).reshape(*([N, Lu] * d)).sum(axis=tuple(range(0, 2 * d, 2)))
    Tp = Tp.copy(); Tp.flat[0] = np.inf                  # p' = 0: T = inf
    Tfull = np.tile(Tp, (N,) * d)
    with np.errstate(divide="ignore", invalid="ignore"):
        e = W / (lam * Tfull)
    e.flat[0] = 1.0                                      # p = 0: e = 1
    for idx in np.argwhere(~np.isfinite(e)):             # l != 0 at p' = 0: w_l = 0
        e[tuple(idx)] = 0.0
    E = np.real(np.fft.ifftn(e)) * eta**-d
    # symbol bound
    kk = np.arange(n); kk = np.where(kk > n // 2, kk - n, kk) * 2 * np.pi / Lu
    p2 = sum(np.meshgrid(*([kk**2] * d), indexing="ij", sparse=True))
    om = (pi / 2)**(2 * (d + 1)); Ce = om * d * pi**2 * (pi**2 + 1) / 4; t0 = 1 / (d * pi**2 * om)
    msk = np.abs(W) > 1e-12
    ratio = (np.abs(e) * (1 + p2))[msk] / np.abs(W)[msk]
    return E, ratio.max(), Ce, Tp.min(), t0, S4.max()

def corner(d, N, Lu, mu=0):
    A, eta = kernel(d, N, Lu, mu); n = N * Lu; E = A + Lu**-d
    gA = np.sqrt(sum(((np.roll(E, -1, a) - E) / eta)**2 for a in range(d)))
    ax0 = [np.minimum(np.arange(n) * eta, Lu - np.arange(n) * eta)] * d
    r0 = np.sqrt(sum(np.meshgrid(*[x**2 for x in ax0], indexing="ij", sparse=True)))
    gt = [eta**d * np.sum(gA * r0**j) for j in range(3)]                    # gamma~_j about the corner
    def coset(F):                                                           # S(z) = sum_c F(z + c), z in cell, periodic
        return F.reshape(*([Lu, N] * d)).sum(axis=tuple(range(0, 2 * d, 2)))
    S = [coset(gA * r0**i) for i in range(3)]
    sig = [coset(gA * (1 + r0)**j).max() for j in range(3)]                 # sigma_j^grad, corner distance
    Sfull = [np.tile(s, (Lu,) * d) for s in S]
    Gam = []
    for j in range(3):
        inner = sum(comb(j, i) * r0**(j - i) * Sfull[i] for i in range(j + 1))   # sum_c' |gradE(y - c')| (|y| + |y - c'|)^j
        Gam.append(eta**d * np.sum(gA * inner))
    bnd = [gt[0] * sig[0], gt[1] * sig[0] + gt[0] * sig[1], 2 * (gt[2] * sig[0] + gt[0] * sig[2])]
    return gt, sig, Gam, bnd

if __name__ == "__main__":
    t = time.time()
    for N, Lu in ((3, 10), (5, 8)):
        E, rmax, Ce, Tmin, t0, s4 = symbol_kernel(4, N, Lu)
        A, eta = kernel(4, N, Lu); E2 = A + Lu**-4
        print(f"N={N} Lu={Lu}: max|E_symbol - E_k0d| = {np.abs(E - E2).max():.2e} (max|E| = {np.abs(E).max():.4f}); "
              f"max |e|(1+p^2)/|w| = {rmax:.3f} vs C_e = {Ce:.1f}; min T = {Tmin:.5f} (1/minT = {1/Tmin:.3f}) vs t0 = {t0:.3e}; max sum_l|w_l|^2 = {s4:.12f}", flush=True)
    for N, Lu in ((3, 10), (3, 14), (5, 8), (5, 10), (7, 8)):
        gt, sig, Gam, bnd = corner(4, N, Lu)
        print(f"N={N} Lu={Lu}: gamma~_j (corner) = {np.round(gt, 2)}; sigma_j^grad (corner) = {np.round(sig, 2)}; "
              f"Gamma_j direct = {np.round(Gam, 1)}; 5.4 bound = {np.round(bnd, 1)}", flush=True)
    print(f"({time.time() - t:.1f} s)")
