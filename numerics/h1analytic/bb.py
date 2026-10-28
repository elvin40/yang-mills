"""Interval branch-and-bound for B_L(K) = gamma_L*F_CS(K) + G_L(K) over the sorted chamber 0<=K1<=..<=K4<=pi (H1_ANALYTIC.md sec 6).
All enclosures use monotone 1D pieces; no directed rounding (results inflated by 1e-9 relative)."""
import sys, itertools, time, numpy as np
P2 = 2*np.pi
VERT = [np.array(v, bool) for v in itertools.product((0,1), repeat=4)]
sinc = lambda x: np.sinc(np.asarray(x, float)/np.pi)
def sin2_iv(t1, t2):  # enclosure of sin^2 on [t1,t2] (arrays, t2-t1 < pi/2 assumed small)
    v1, v2 = np.sin(t1)**2, np.sin(t2)**2; lo, hi = np.minimum(v1, v2), np.maximum(v1, v2)
    m = np.floor(t2/(np.pi/2)) >= np.ceil(t1/(np.pi/2))       # a multiple of pi/2 inside
    k = np.ceil(t1/(np.pi/2))
    hit_max = m & (k % 2 == 1); hit_min = m & (k % 2 == 0)
    return np.where(hit_min, 0.0, lo), np.where(hit_max, 1.0, hi)
def Fcs_box(lo, hi):
    best = np.inf
    tlo, thi = lo/(P2-lo), hi/(P2-hi)
    s2lo, s2hi = np.sin(lo/2)**2, np.sin(hi/2)**2
    with np.errstate(divide='ignore', invalid='ignore'):
        for ch in itertools.product((0,1), repeat=4):
            c = np.array(ch, float)
            rr = (1+c)/(1+c*tlo**2)                                   # r_rho upper (decreasing in t)
            rm = (1+c*thi**2)/(1+c*tlo**4)                            # r_mu upper
            S = sinc(hi/2)**2 + c*4*s2lo/(P2-lo)**2                   # S_rho lower
            Sm = sinc(hi/2)**4 + c*16*s2lo**2/(P2-lo)**4              # S_mu lower
            val = 0.0
            for mu in range(4):
                r = np.where(np.arange(4)==mu, rm, rr)
                q = max(((np.where(v, hi, lo)**2*r).sum()/max((np.where(v, hi, lo)**2).sum(), 1e-300)) for v in VERT)
                den = np.prod(np.where(np.arange(4)==mu, Sm, S))
                val = max(val, q/den)
            best = min(best, val)
    return best
class Gbox:
    def __init__(self, L):
        self.L = L; self.l = np.arange(L); self.gam = sinc(np.pi/(2*L))**-2
        self.idx = np.indices((L,)*4).reshape(4,-1)
    def tables(self, lo, hi):  # per direction rho, per l_rho: intervals (shape (4,L))
        L, l = self.L, self.l
        lo_, hi_ = lo[:,None], hi[:,None]
        t1, t2 = (lo_+P2*l)/(2*L), (hi_+P2*l)/(2*L)
        slo, shi = sin2_iv(t1, t2); slo, shi = 4*slo, 4*shi              # s = 4 sin^2(k/2)
        nlo, nhi = np.sin(lo_/2)**2, np.sin(hi_/2)**2
        with np.errstate(divide='ignore', invalid='ignore'):
            a2lo = nlo/(L*L*shi/4); a2hi = nhi/(L*L*slo/4)
        a0 = lambda K: np.where(K < 1e-12, 1.0, np.sin(K/2)/(L*np.sin(K/(2*L))))
        a2lo[:,0], a2hi[:,0] = a0(lo)**2, a0(hi*0+lo)**2                 # l=0: decreasing
        a2lo[:,0] = a0(hi)**2
        a2hi = np.minimum(a2hi, 1.0)
        aa = np.sqrt(a2hi)
        sg = np.where(l % 2 == 0, -1.0, 1.0)[None]                       # |1-alpha| = 1 - |a| (even l), 1 + |a| (odd l)
        om = np.where(sg < 0, 1 - np.sqrt(a2lo), 1 + aa)
        with np.errstate(divide='ignore', invalid='ignore'):
            g2 = om**2/slo
        g2_0 = ((L*L-1)*hi/(24*L*sinc(np.pi/(2*L))))**2                   # l=0 Taylor bound
        g2[:,0] = np.where(lo > 0, np.minimum(g2[:,0], g2_0), g2_0)
        return a2lo, a2hi, slo, shi, g2
    def bound(self, lo, hi, F):
        L = self.L; a2lo, a2hi, slo, shi, g2 = self.tables(lo, hi); I = self.idx; r4 = np.arange(4)[:,None]
        A2lo, A2hi = a2lo[r4, I], a2hi[r4, I]                               # (4, L^4)
        Slo, Shi = slo[r4, I], shi[r4, I]; Gn = np.sqrt(g2[r4, I].sum(0))
        Pa2 = A2hi.prod(0); Pa = np.sqrt(Pa2); mxa = np.sqrt(A2hi.max(0))
        kl, kh = Slo.sum(0), Shi.sum(0)
        K2hi = (hi**2).sum(); Khlo, Khhi = (4*np.sin(lo/2)**2).sum(), (4*np.sin(hi/2)**2).sum()
        x0lo, x0hi = L*L*a2lo[:,0], L*L*a2hi[:,0]
        z = (I == 0).all(0)
        with np.errstate(divide='ignore', invalid='ignore'):
            W = np.where(z, L*L*self.gam, K2hi/kl)
            rlo = np.where(z, x0lo.min(), Khlo/kh); rhi = np.where(z, x0hi.max(), Khhi/kl)
            ylo, yhi = L*L*A2lo, L*L*A2hi
            br = np.maximum(yhi - rlo, rhi - ylo).max(0)
            V = L**-4*np.sum(np.where(z, Pa2*W*br, Pa2*W*br))
            U = L**-3*np.sum(Pa*mxa*W*Gn)
            S = L**-2*Khlo*np.sum(np.where(z, 0, 1/kh)) + x0lo.min()/L**2
        tau = F*(V + np.sqrt(Khhi)*U)
        return (1+tau)**2/S, tau
def run(L, target, n0=8, maxdepth=6):
    gb = Gbox(L); t0 = time.time()
    e = np.linspace(0, np.pi, n0+1)
    boxes = [(np.array([e[i] for i in ii]), np.array([e[i+1] for i in ii]), 0, np.inf) for ii in itertools.product(range(n0), repeat=4)
             if all(ii[r] <= ii[r+1] for r in range(3))]
    worst, nev, Fmax, Gmax, ng, fail = 0.0, 0, 0.0, 0.0, 0, 0
    while boxes:
        lo, hi, dep, Gp = boxes.pop()
        F = Fcs_box(lo, hi); nev += 1
        G = Gp
        if gb.gam*F + G > target: G = min(G, gb.bound(lo, hi, F)[0]); ng += 1
        B = (gb.gam*F + G)*(1+1e-9)
        if B > target and dep < maxdepth:
            m = (lo+hi)/2
            for bits in itertools.product((0,1), repeat=4):
                b = np.array(bits); nlo, nhi = np.where(b, m, lo), np.where(b, hi, m)
                if all(nlo[r] <= nhi[r+1] for r in range(3)): boxes.append((nlo, nhi, dep+1, G))
            continue
        worst, Fmax, Gmax = max(worst, B), max(Fmax, F), max(Gmax, G); fail += B > target
    return dict(L=L, target=target, supB_bound=worst, ok=worst <= target, Fmax=Fmax, Gmax=Gmax, boxes=nev, Gevals=ng, failed_leaves=fail, secs=round(time.time()-t0,1))
if __name__ == "__main__":
    print(run(int(sys.argv[1]), float(sys.argv[2]), n0=int(sys.argv[3]) if len(sys.argv)>3 else 8))
