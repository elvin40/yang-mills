import sys, os, numpy as np
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from fcs import Fcs
from gform import alpha
sinc = lambda x: np.sinc(np.asarray(x)/np.pi)
def Bvar(K, L, useP=False):
    K = np.abs(np.asarray(K, float)); gam = sinc(np.pi/(2*L))**-2
    F = Fcs(K)[0]; K2 = K@K; Zn = F*K2
    lv = np.indices((L,)*4).reshape(4,-1).T; k = (K[None]+2*np.pi*lv)/L
    al = alpha(k, L); a2 = al**2; s = 4*np.sin(k/2)**2; kh2 = s.sum(1); Kh = 4*np.sin(K/2)**2; Kh2 = Kh.sum()
    br = np.abs(L*L*a2 - Kh2/kh2[:,None]).max(1)
    V = L**-4*np.sum(np.prod(a2,1)/kh2*br)
    g = np.sqrt(np.sum(np.abs(1-al)**2/s, 1))
    U = L**-3*np.sum(np.prod(np.abs(al),1)*np.abs(al).max(1)/kh2*g)
    SL = L**-2*np.sum(1/kh2); tau = Zn*(V+np.sqrt(Kh2)*U)
    G = (1+tau)**2/(Kh2*SL); return gam*F + G, gam*F, G, tau
if __name__ == "__main__":
    rng = np.random.default_rng(3); L = int(sys.argv[1])
    pts = [rng.uniform(0, np.pi, 4) for _ in range(300)] + [np.array([2.42,2.42,2.42,2.98]), np.full(4,np.pi), np.array([.3,.1,.05,.2]), np.array([1e-3,2e-3,1e-3,0.5e-3]), np.array([np.pi,.01,.01,.01])]
    R = np.array([Bvar(p, L) for p in pts]); i = np.argmax(R[:,0])
    print("L",L,"max B", R[i], pts[i].round(3)); print("max G", R[:,2].max(), "max tau", R[:,3].max())
    for p,r in zip(pts[-5:], R[-5:]): print(p.round(3), r.round(4))
