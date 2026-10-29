# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
import sys, os, numpy as np
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
import h2_scan as h2
from h1cert_rho1 import prof, pieces, rho1
def parts(L, M, K, pf):
    K = np.asarray(K, float); s = L**-2.0
    k, d, Ed, Y, Si, R = pieces(L, M, K, pf)
    E = h2.qsym(pf, K[None]/L, L)[0]                       # (L^4, 4c, 4f)
    kh = np.exp(1j*k)-1; a2 = (abs(kh)**2).sum(-1); n = kh/np.sqrt(a2)[:,None]
    P = np.eye(4)[None] - n[:,:,None]*n.conj()[:,None,:]
    PDP = P @ (d[:,:,None]*P)
    EP = E @ P
    T = s**2*np.einsum('lab,lbc,ldc->ad', E, PDP, E.conj())
    T2 = s**2*np.einsum('lab,lbc,lcd,led->ae', E, PDP, PDP, E.conj())
    Kh = np.exp(1j*K)-1; nK = Kh/np.linalg.norm(Kh); PK = np.eye(4)-np.outer(nK, nK.conj())
    Z = np.linalg.pinv(PK@T@PK, rcond=1e-12, hermitian=True)
    sig = s**2*(1/a2).sum()
    G = Z@T2@Z
    c = (Kh.conj()@(np.eye(4)-T@Z))                         # row: K^dag (1 - T Z)
    G = G + np.outer(c.conj(), c)/(sig*np.linalg.norm(Kh)**4)
    r_exact = np.sqrt(np.linalg.eigvalsh(G)[-1])/L
    Mc = "inf" if M=="inf" else M*L
    th = [np.array([K[i]]) for i in range(4)]
    dc = h2.dgrid(th, Mc, h2.snodes(max((K**2).sum(),1e-30))).reshape(4)
    Sc = PK@np.diag(dc)@PK
    return dict(r_exact=r_exact, r_ref=rho1(L, M, K, pf), PTPvsS=np.abs(PK@T@PK-Sc).max()/np.abs(Sc).max(),
                TK_offdiag=np.linalg.norm(PK@T@nK)/np.linalg.norm(T), dmax=PDP.max() if False else np.linalg.eigvalsh(PDP)[:,-1].max(),
                Znorm=np.linalg.eigvalsh(Z)[-1], dcmin=dc.min(), dc=dc, sig=sig, Kh=Kh, cross=np.linalg.norm(Kh.conj()@T@Z))
if __name__ == "__main__":
 for L in (3,5):
    pf = prof(L)
    for M in ("inf", 1):
        for K in [(2.4,2.4,np.pi,np.pi),(0.3,-1.1,2.0,0.7),(np.pi,)*4,(0.05,0.02,0.01,0.03)]:
            p = parts(L, M, K, pf)
            print(L, M, K, {k: (np.round(v,6) if np.isscalar(v) else None) for k,v in p.items() if k not in ('dc','Kh')})
