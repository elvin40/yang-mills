import numpy as np, itertools
def Fcs(K):  # K (B,4) in (0,pi]; CS bound with per-direction choice of terms {0} or {0,-1}; returns min over choices of F-bound
    K = np.atleast_2d(K); s2 = np.sin(K/2)**2
    best = np.full(len(K), np.inf)
    for ch in itertools.product((0,1), repeat=4):
        c = np.array(ch)[None]
        i2 = 1/K**2 + c/(2*np.pi-K)**2; i4 = 1/K**4 + c/(2*np.pi-K)**4
        S = 4*s2*i2; Smu = 16*s2**2*i4
        eta = 2*(1+c)/(4*i2) * 4 / 4   # Q/S for rho != mu: (1+c)*4 s2 / S = (1+c)/i2
        eta = (1+c)/i2; etamu = i2/i4
        K2 = (K**2).sum(1)
        val = np.zeros(len(K))
        for mu in range(4):
            Sp = np.prod(np.where(np.arange(4)[None]==mu, Smu, S), 1)
            den = np.where(np.arange(4)[None]==mu, etamu, eta).sum(1)
            val = np.maximum(val, den/(K2*Sp))   # F_mu bound; F uses min_mu d -> max_mu F
        best = np.minimum(best, val)
    return best
if __name__ == "__main__":
    g = np.linspace(1e-3, np.pi, 40)
    P = np.array(list(itertools.product(g, repeat=4))); P = P[(np.diff(P,axis=1)>=0).all(1)]
    f = Fcs(P); i = np.argmax(f); print("sup Fcs grid", f[i], P[i]); 
    for K in [(np.pi,)*4,(2.48,2.48,np.pi,np.pi),(1e-3,)*4,(np.pi,1e-3,1e-3,1e-3)]: print(K, Fcs(np.array(K)))
