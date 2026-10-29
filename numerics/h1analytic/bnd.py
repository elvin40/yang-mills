import sys, os, numpy as np
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__))); sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
from ft import dinf
sinc = lambda x: np.sinc(np.asarray(x)/np.pi)
def bound(K, L, h=None):
    K = np.abs(np.asarray(K, float)); h = (L-1)//2 if h is None else h
    gam = sinc(np.pi/(2*L))**-2
    dl = dinf(K, N=h)[0].min()
    K2 = K@K; Kh = np.abs(np.exp(1j*K)-1); Kh2 = Kh@Kh
    F = 1/(K2*dl)
    lv = np.indices((L,)*4).reshape(4,-1).T; k = (K[None]+2*np.pi*lv)/L
    with np.errstate(divide='ignore', invalid='ignore'):
        a = np.where(np.abs(np.sin(k/2))<1e-300, 1.0, np.sin(K/2)[None]/(L*np.sin(k/2)))
    kh2 = (4*np.sin(k/2)**2).sum(1)
    Pa = np.prod(np.abs(a),1); mx = np.abs(a).max(1)
    zeta = L**-4*np.sum(Pa**2/kh2**2)
    ug = (L*L-1)/(2*L)*L**-3*np.sum(Pa*mx/kh2)
    SL = 1/K2 + (L*L-L**-2)/16
    c0 = min(1.0, np.prod(sinc(K/2)**2)*np.max(sinc(K/2)**2)*gam**5)
    dbar = c0*gam/K2 + (1-c0)*gam/np.pi**2
    tau0 = min(np.sqrt(dbar/dl), (dbar-dl)/(2*dl))
    G = (1 + tau0 + Kh2*zeta/dl + np.sqrt(Kh2)*ug/dl)**2/(Kh2*SL)
    return dict(Bt=gam*F, G=G, B=gam*F+G, tau0=tau0, zt=Kh2*zeta/dl, ugt=np.sqrt(Kh2)*ug/dl, SL=SL)
if __name__ == "__main__":
    from chk import parts
    from h1cert_rho1 import prof
    L = int(sys.argv[1]); pf = prof(L); rng = np.random.default_rng(1)
    Ks = [(2.48,2.48,np.pi,np.pi),(np.pi,)*4,(2.3,2.3,2.3,2.86),(0.02,0.01,0.03,0.01),(0.3,0.1,0.05,0.2),(np.pi,0.01,0.01,0.01)] + [tuple(np.sort(rng.uniform(0,np.pi,4))) for _ in range(6)]
    for M in ("inf", 1):
        for K in Ks:
            p = parts(L, M, K, pf); b = bound(K, L)
            print(M, np.round(K,3), "rho2=%.4f  B=%.4f (Bt %.4f, G %.4f; tau0 %.3f zt %.3f ugt %.3f)" % (p['r_exact']**2, b['B'], b['Bt'], b['G'], b['tau0'], b['zt'], b['ugt']))
