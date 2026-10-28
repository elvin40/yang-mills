import sys, numpy as np
sys.path.insert(0, "~/claude_code/yang_mills/numerics")
import h2_scan as h2
from h1cert_rho1 import prof
for L in (3,5,7,9,13):
    pf = prof(L); h=(L-1)//2
    for K in [np.array([2.4,2.4,np.pi,np.pi]), np.array([0.3,-1.1,2.0,0.7])]:
        lv = np.indices((L,)*4).reshape(4,-1).T; k = (K[None]+2*np.pi*lv)/L
        E = h2.qsym(pf, K[None]/L, L)[0]
        Kh = np.exp(1j*K)-1; PK = np.eye(4)-np.outer(Kh,Kh.conj())/np.vdot(Kh,Kh).real
        best=None
        for c0 in (0, -h):
          for c1 in (0, -h):
            S = np.exp(1j*k*c0)*sum(np.exp(1j*k*t) for t in range(L))          # straight path symbol (L^4,4)
            A = np.prod(sum(np.exp(1j*k*(t+c1)) for t in range(L))/L, -1)     # block average symbol
            E0 = np.einsum('lm,mn->lmn', S*A[:,None], np.eye(4))
            r = np.abs(np.einsum('ab,lbc->lac', PK, E-E0)).max()/np.abs(E).max()
            if best is None or r<best[0]: best=(r,c0,c1,E0)
        r,c0,c1,E0 = best
        R = E-E0; g = np.einsum('a,lab->lb', Kh.conj(), R)/np.vdot(Kh,Kh).real   # R = -K g^dag  ->  g^dag row
        print(f"L={L} K={K.round(2)} best phases c0={c0} c1={c1} rel|P_perp(E-E0)|={r:.1e}  max|g|={np.abs(g).max():.3f}  rms|g|={np.sqrt((np.abs(g)**2).sum(-1).mean()):.3f}  |g_0|={np.linalg.norm(g[0]):.3f}")
