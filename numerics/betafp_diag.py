"""Diagnostics of the level-j data along the chain: real-space decay (aliasing indicator), structure, and Ng sensitivity."""
import sys, time, numpy as np
from betafp_recursion import *

L = 2; N = int(sys.argv[1]) if len(sys.argv) > 1 else 8; jmax = int(sys.argv[2]) if len(sys.argv) > 2 else 3; p = 0.2
colors = (2,) if "--u1" in sys.argv else (0, 1, 2)
st = Step(L, colors); nc = len(colors)
p0 = p / L**jmax; v = np.array([0, 1, 0, 0], complex)
data = level0_data(st, p0, v, N)
t = time.time()
for i in range(jmax + 1):
    pi = p0 * L**i
    ker, vnext = onestep_kernels(st, pi, v)
    lev = Level(st, data, ker, pi)
    x = data.x; r = np.abs(x).max(1)
    line = []
    for key in ("D0", "Tp", "D2"):
        s = np.abs(data.ker[key]).max(axis=(1, 2))
        line.append(f"{key}: max|s|={s.max():.3e} |x|inf=1:{s[r==1].max()/s.max():.1e} 2:{s[r==2].max()/s.max():.1e} 3:{s[r==3].max()/s.max() if (r==3).any() else 0:.1e} {N//2}:{s[r==N//2].max()/s.max():.1e}")
    print(f"level {i} (p_i={pi:.4f}, |v|={np.linalg.norm(v):.3f}):\n  " + "\n  ".join(line), flush=True)
    K = 2 * np.pi * np.array([[1, 0, 0, 0], [1, 1, 1, 1]], float) / N
    D0 = lev.data.eval("D0", K); kh = np.exp(1j * K) - 1
    for m in range(len(K)):
        M = D0[m].reshape(4, nc, 4, nc); kk = (np.abs(kh[m])**2).sum(); PT = np.eye(4) - np.outer(kh[m], kh[m].conj()) / kk
        print(f"  K={np.round(K[m]*N/(2*np.pi)).astype(int)}: |D0 Khat|={np.abs(np.einsum('aibj,b->aij', M, kh[m])).max():.1e} herm={np.abs(D0[m]-D0[m].conj().T).max():.1e} Maxwell dev={np.abs(M[:,0,:,0]-0.25*kk*PT).max()/(0.25*kk):.3e}")
    for Ng in (4, 6):
        w, g, b = lev.increment(Ng)
        print(f"  increment Ng={Ng}: beta_{i+1} = {beta_from_w(w, L, i, p0):.5f} (w={w:.5f}, ghost={g:.5f})  [{time.time()-t:.0f}s]", flush=True)
    if i < jmax:
        data = lev.next_data(N); v = vnext
