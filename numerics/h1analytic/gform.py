import sys, numpy as np, itertools
sys.path.insert(0, "~/claude_code/yang_mills/numerics")
import h2_scan as h2
from h1cert_rho1 import prof
from math import comb
def alpha(k, L): 
    h=(L-1)//2; return sum(np.exp(1j*k*t) for t in range(-h,h+1)).real/L
def gclosed(k, L):  # gamma-bar_nu(k) = Phi_nu (alpha_nu - 1)/khat_nu, Phi_nu = (1/4) sum_r e_r(others)/C(3,r)
    al = alpha(k, L); kh = np.exp(1j*k)-1; out = np.zeros(k.shape, complex)
    for nu in range(4):
        o = [al[:,r] for r in range(4) if r!=nu]
        e = [np.ones(len(k)), o[0]+o[1]+o[2], o[0]*o[1]+o[0]*o[2]+o[1]*o[2], o[0]*o[1]*o[2]]
        Phi = sum(e[r]/comb(3,r) for r in range(4))/4
        with np.errstate(divide='ignore', invalid='ignore'):
            out[:,nu] = np.where(np.abs(kh[:,nu])<1e-14, 0, Phi*(al[:,nu]-1)/kh[:,nu])
    return out
for L in (3,5,9,13):
    pf = prof(L)
    for K in [np.array([2.4,2.4,np.pi,np.pi]), np.array([0.3,-1.1,2.0,0.7])]:
        lv = np.indices((L,)*4).reshape(4,-1).T; k = (K[None]+2*np.pi*lv)/L
        E = h2.qsym(pf, K[None]/L, L)[0]
        A = np.prod(alpha(k, L),1); S = np.exp(1j*k*0)*sum(np.exp(1j*k*t) for t in range(L))
        E0 = np.einsum('lm,mn->lmn', S*A[:,None], np.eye(4))
        Kh = np.exp(1j*K)-1
        R = E - E0                                   # should be -Kh gbar^T  (gbar = gamma-bar row)
        gb = gclosed(k, L)
        err = np.abs(R + Kh[None,:,None]*gb[:,None,:]).max()/np.abs(E).max()
        print(L, K, "rel err closed-form g:", f"{err:.2e}")
