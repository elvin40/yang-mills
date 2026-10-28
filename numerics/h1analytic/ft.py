# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
import numpy as np, itertools
def dinf(K, N=6, tail=True):   # Prop. A M=inf, direct sum over |n|_inf<=N  (lower bound: truncated sum of positive terms)
    K = np.atleast_2d(K); n = np.arange(-N, N+1)
    q = K[:,:,None] + 2*np.pi*n[None,None,:]                 # (B,4,2N+1)
    with np.errstate(divide='ignore', invalid='ignore'):
        sg2 = np.where(np.abs(q)<1e-300, 1.0, np.sin(K[:,:,None]/2)**2/(q/2)**2)
    out = np.zeros(K.shape)
    for idx in itertools.product(range(2*N+1), repeat=4):
        s = np.stack([sg2[:,r,idx[r]] for r in range(4)], 1)       # (B,4)
        qq = sum(q[:,r,idx[r]]**2 for r in range(4))
        out += np.prod(s,1)[:,None]*s/qq[:,None]
    return out
if __name__ == "__main__":
    g = np.linspace(0.05, np.pi, 12)
    pts = np.array([p for p in itertools.product(g, repeat=4) if p[0]<=p[1]<=p[2]<=p[3]])
    d = dinf(pts, N=3)
    f = 1/((pts**2).sum(1)*d.min(1))
    i = np.argsort(-f)[:6]
    for j in i: print(pts[j].round(3), f[j].round(4))
    for K in [(np.pi,)*4, (2.48,2.48,np.pi,np.pi), (0.01,0.01,0.01,0.01), (np.pi,0.01,0.01,0.01),(np.pi,np.pi,0.01,0.01)]:
        for N in (3,6):
            dd = dinf(np.array(K), N=N)[0]; print(K, N, (1/(np.dot(K,K)*dd.min())).round(5), dd.round(5))
