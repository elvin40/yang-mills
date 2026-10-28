"""SU(2) structure checks on the level-1 data at grid nodes (exact values) and an exact pure-gauge test with commensurate momentum.
Commensurate setup: tabulation N = L*Ng, unshifted final grid, p_1 = 2 pi m_p / N: the final step uses only tabulated values,
so the periodized level-1 data must give w = 0 for the pure-gauge wave to machine precision."""
import sys, time, numpy as np
from betafp_recursion import *

L = 2; Ng = int(sys.argv[1]) if len(sys.argv) > 1 else 4; N = L * Ng; mp = 1
p1 = 2 * np.pi * mp / N
st = Step(L, (0, 1, 2)); nc = 3
t = time.time()
lev, p0 = chain(st, 1, p1, N, np.array([0, 1, 0, 0], complex), log=lambda s: None)
print(f"chain to level 1 built: p1={p1:.4f} p0={p0:.4f} ({time.time()-t:.0f}s)", flush=True)
# (a) exact level-1 symbols at grid nodes
K = 2 * np.pi * np.array([[1, 0, 0, 0], [1, 1, 0, 0], [2, 1, 3, 0], [0, 0, 0, 0], [3, 3, 3, 3]], float) / N
D0 = lev.data.eval("D0", K); kh = np.exp(1j * K) - 1
for i in range(len(K)):
    M = D0[i].reshape(4, nc, 4, nc)
    tr = np.abs(np.einsum("aibj,b->aij", M, kh[i])).max(); he = np.abs(D0[i] - D0[i].conj().T).max()
    kk = (np.abs(kh[i])**2).sum()
    PT = np.eye(4) - np.outer(kh[i], kh[i].conj()) / kk if kk > 0 else np.eye(4)
    ratio = np.abs(M[:, 0, :, 0] - 0.25 * kk * PT).max() / (0.25 * kk) if kk > 0 else np.abs(M).max()
    print(f"  K=2pi/{N}*{np.round(K[i]*N/(2*np.pi)).astype(int)}: |D0 Khat|={tr:.1e} herm={he:.1e} |D0|={np.abs(M).max():.4f}  |D0 - (1/4)|Khat|^2 P_T|/((1/4)|Khat|^2) = {ratio:.3e}")
# (b) pure gauge, commensurate, unshifted
w, g, b = lev.increment(Ng, shift=0.0)
print(f"transverse j=1 (N={N}, Ng={Ng}, shift 0, p1={p1:.3f}): w={w:.6f} ghost={g:.6f} beta={beta_from_w(w, L, 1, p0):.5f}")
t = time.time()
v0 = np.array([1 - np.exp(1j * p0), 0, 0, 0])
levg, _ = chain(st, 1, p1, N, v0, log=lambda s: None)
wg, gg, bg = levg.increment(Ng, shift=0.0)
print(f"pure gauge j=1 (same grids): w={wg:+.3e} ghost={gg:+.3e} bord={bg:+.3e}  ({time.time()-t:.0f}s)")
w0, g0, b0 = Level(st, level0_data(st, p0, v0, N), onestep_kernels(st, p0, v0)[0], p0).increment(Ng, shift=0.0)
print(f"pure gauge j=0 (p0={p0:.4f}, incommensurate with the level-0 grid): w={w0:+.3e}")
