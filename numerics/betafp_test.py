"""Checks for betafp_recursion.py: abelian exactness per level, pure-gauge zero, reality/transversality of the level-1 data."""
import sys, time, numpy as np
from betafp_recursion import *

L = int(sys.argv[1]) if len(sys.argv) > 1 else 2
Ns = [int(a) for a in sys.argv[2].split(",")] if len(sys.argv) > 2 else [4, 6]
Ng = int(sys.argv[3]) if len(sys.argv) > 3 else 4
jmax = int(sys.argv[4]) if len(sys.argv) > 4 else 2
p = 0.2

print("== abelian sector: beta_{j+1} must be (L^-4j - L^-4(j+1))/4 ==")
stu = Step(L, (2,))
for N in Ns:
    for j in range(jmax + 1):
        t = time.time()
        lev, p0 = chain(stu, j, p, N, np.array([0, 1, 0, 0], complex), log=lambda s: None)
        w, g, b = lev.increment(Ng)
        beta = beta_from_w(w, L, j, p0); exact = (L**(-4 * j) - L**(-4 * (j + 1))) / 4
        print(f"N={N} j={j}: beta={beta:.12f} exact={exact:.12f} diff={beta-exact:+.2e} ghost={g:.1e} ({time.time()-t:.0f}s)", flush=True)

print("== SU(2): pure-gauge wave must give w = 0; reality Tm(q) = conj(Tp(-q)); transversality D0(K) Khat = 0 ==")
st = Step(L, (0, 1, 2))
N = Ns[0]
for j in range(min(jmax, 1) + 1):
    t = time.time()
    v0 = np.array([1 - np.exp(1j * p / L**j), 0, 0, 0])
    lev, p0 = chain(st, j, p, N, v0, log=lambda s: None)
    w, g, b = lev.increment(Ng)
    print(f"gauge j={j}: w={w:+.2e} (ghost {g:+.2e}, bord {b:+.2e}) ({time.time()-t:.0f}s)", flush=True)
lev, p0 = chain(st, 1, p, N, np.array([0, 1, 0, 0], complex), log=lambda s: None)
rng = np.random.default_rng(0); q = rng.uniform(-np.pi, np.pi, (5, 4))
Tp, Tm = lev.data.eval("Tp", -q), lev.data.eval("Tm", q)
print("level-1 |Tm(q) - conj(Tp(-q))| =", np.abs(Tm - Tp.conj()).max(), " |Tp| =", np.abs(Tp).max())
D0 = lev.data.eval("D0", q); kh = np.exp(1j * q) - 1
nc = len(st.colors)
for i in range(len(q)):
    M = D0[i].reshape(4, nc, 4, nc)
    print(f"  q={np.round(q[i],2)}: |D0 khat| = {np.abs(np.einsum('aibj,b->aij', M, kh[i])).max():.2e}, |D0| = {np.abs(M).max():.3f}, herm err = {np.abs(D0[i]-D0[i].conj().T).max():.1e}")
D0g = lev.data.eval("D0", 2 * np.pi * np.array([[0., 0, 0, 0], [0.5, 0, 0, 0]]) / N)
print("level-1 D0 at K=0:", np.abs(D0g[0]).max(), " at K=(pi,0,0,0) diag:", np.round(np.diag(D0g[1]).real[::nc], 4))
