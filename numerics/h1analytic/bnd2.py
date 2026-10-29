import sys, os, numpy as np
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
from ft import dinf
from gform import gclosed, alpha
sinc = lambda x: np.sinc(np.asarray(x)/np.pi)
def gauge_terms(K, L, dl):
    K = np.asarray(K, float); lv = np.indices((L,)*4).reshape(4,-1).T; k = (K[None]+2*np.pi*lv)/L
    al = alpha(k, L); a2 = al**2
    kh = np.exp(1j*k)-1; kh2 = (np.abs(kh)**2).sum(1); Kh2 = (np.abs(np.exp(1j*K)-1)**2).sum()
    Pa2 = np.prod(a2,1)
    br = L*L*a2 - Kh2/kh2[:,None]
    V = L**-4*np.sum(Pa2/kh2*np.abs(br).max(1))
    g = gclosed(k, L).conj()                       # g_l (column); |P g| exact
    n = kh/np.sqrt(kh2)[:,None]
    Pg = g - n*(n.conj()*g).sum(1)[:,None]
    U = L**-4*np.sum(L*np.sqrt(Pa2)*np.sqrt(a2.max(1))/kh2*np.linalg.norm(Pg,axis=1))
    SL = L**-2*np.sum(1/kh2)
    tau = (V + np.sqrt(Kh2)*U)/dl
    return dict(G=(1+tau)**2/(Kh2*SL), tau=tau, V=V, U=U, SL=SL)
def B(K, L, h=6):
    K = np.abs(np.asarray(K, float)); gam = sinc(np.pi/(2*L))**-2
    dl = dinf(K, N=h)[0].min(); Bt = gam/((K@K)*dl)
    gt = gauge_terms(K, L, dl); return dict(Bt=Bt, **gt, B=Bt+gt['G'])
if __name__ == "__main__":
    from chk import parts
    from h1cert_rho1 import prof
    L = int(sys.argv[1]); pf = prof(L); rng = np.random.default_rng(1)
    Ks = [(2.48,2.48,np.pi,np.pi),(np.pi,)*4,(2.3,2.3,2.3,2.86),(0.02,0.01,0.03,0.01),(0.3,0.1,0.05,0.2),(np.pi,0.01,0.01,0.01),(1e-4,2e-4,0,0)] + [tuple(np.sort(rng.uniform(0,np.pi,4))) for _ in range(6)]
    for M in ("inf", 1):
        for K in Ks:
            p = parts(L, M, K, pf); b = B(K, L)
            # exact gauge piece for comparison
            print(M, np.round(K,3), "rho2=%.4f B=%.4f (Bt %.4f G %.4f tau %.3f)" % (p['r_exact']**2, b['B'], b['Bt'], b['G'], b['tau']))
