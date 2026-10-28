# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
"""bb.py with outward rounding (H1_ANALYTIC_VERIFY V6). Same enclosures as bb.py; box coordinates K = pi*u, u exact dyadic
(Fraction); every 1D function value in arb (python-flint) at the exact endpoints, converted outward to float64; the 4D
combination in numpy with one-ulp outward rounding after each correctly rounded op and Higham bounds for np.sum.
Usage: uv run --no-project --with python-flint --with numpy python bb_arb.py L target [n0]"""
import sys, itertools, time, numpy as np
from fractions import Fraction as Fr
from functools import lru_cache
from flint import arb, fmpq
INF = np.inf
up = lambda x: np.nextafter(x, INF); dn = lambda x: np.nextafter(x, -INF); dn0 = lambda x: np.maximum(dn(x), 0.0)
def fu(a):  # float >= every point of arb a
    x = float(a.upper())
    while not (arb(x) >= a): x = float(np.nextafter(x, INF))
    return x
def fd(a):  # float <= every point of arb a
    x = float(a.lower())
    while not (arb(x) <= a): x = float(np.nextafter(x, -INF))
    return x
def sum_up(x, axis=0):
    n = x.shape[axis]; return up(np.sum(x, axis)*(1 + 2*n*2.0**-52))
def sum_dn(x, axis=0):
    n = x.shape[axis]; return np.maximum(dn(np.sum(x, axis)*(1 - 2*n*2.0**-52)), 0.0)
def prod_up(x):
    p = x[0]
    for i in range(1, x.shape[0]): p = up(p*x[i])
    return p
PI = arb.pi()
A = lambda q: arb(fmpq(q.numerator, q.denominator))
@lru_cache(None)
def s2K(u): return arb.sin(PI*A(u)/2)**2                                   # sin^2(K/2), increasing in u
@lru_cache(None)
def sincK(u): return arb(1) if u == 0 else arb.sin(PI*A(u)/2)/(PI*A(u)/2)  # decreasing
@lru_cache(None)
def ttail(u): return 4*s2K(u)/(PI*(2 - A(u)))**2                           # 4 sin^2(K/2)/(2pi-K)^2, increasing
@lru_cache(None)
def sk(u, l, L): return arb.sin(PI*A((u + 2*l)/Fr(L))/2)**2                   # sin^2(k_l/2), x = (u+2l)/L in [0,2)
@lru_cache(None)
def a0sq(u, L): return arb(1) if u == 0 else (arb.sin(PI*A(u)/2)/(L*arb.sin(PI*A(u)/(2*L))))**2  # decreasing
def tables_F(lo, hi):  # per rho, c in {0,1}: S_lo, Sm_lo, r_up, rm_up (floats); x = K^2 lo/hi
    S = np.empty((2, 4)); Sm = np.empty((2, 4)); r = np.empty((2, 4)); rm = np.empty((2, 4)); xl = np.empty(4); xh = np.empty(4)
    for p in range(4):
        tl, th = A(lo[p]/(2 - lo[p])), A(hi[p]/(2 - hi[p])); sc = sincK(hi[p]); tt = ttail(lo[p])
        xl[p], xh[p] = fd((PI*A(lo[p]))**2), fu((PI*A(hi[p]))**2)
        for c in (0, 1):
            S[c, p] = fd(sc**2 + c*tt); Sm[c, p] = fd(sc**4 + c*tt**2)
            r[c, p] = fu((1 + c)/(1 + c*tl**2)); rm[c, p] = fu((1 + c*th**2)/(1 + c*tl**4))
    return np.maximum(S, 0), np.maximum(Sm, 0), r, rm, np.maximum(xl, 0), xh
CH = np.array(list(itertools.product((0, 1), repeat=4))); VX = np.array(list(itertools.product((0, 1), repeat=4)), bool)
def Fcs_box(lo, hi):
    S, Sm, r, rm, xl, xh = tables_F(lo, hi); R4 = np.arange(4)
    best = INF
    X = np.where(VX, xh[None], xl[None])                                         # (16 v, 4)
    den_x = sum_dn(X, 1)                                                          # Sum x lower
    for ch in CH:
        Sr, Smr, rr, rmr = S[ch, R4], Sm[ch, R4], r[ch, R4], rm[ch, R4]
        val = 0.0
        for mu in range(4):
            rv = np.where(R4 == mu, rmr, rr); num = sum_up(up(X*rv[None]), 1)
            q = np.max(np.where(den_x > 0, up(num/np.where(den_x > 0, den_x, 1)), 0))
            den = Sr.copy(); den[mu] = Smr[mu]; d = den[0]
            for i in (1, 2, 3): d = dn0(d*den[i])
            val = max(val, up(q/d))
        best = min(best, val)
    return best
class Gbox:
    def __init__(self, L):
        self.L = L; self.idx = np.indices((L,)*4).reshape(4, -1); self.z = (self.idx == 0).all(0)
        sn = arb.sin(PI/(2*L))/(PI/(2*L)); self.gam_a = 1/sn**2; self.gam = fu(self.gam_a); self.sn = sn
        self.L2gam = fu(L*L*self.gam_a)
    def tables(self, lo, hi):
        L = self.L; sh = (4, L)
        slo, shi, a2lo, a2hi, g2 = (np.empty(sh) for _ in range(5))
        for p in range(4):
            nlo, nhi = s2K(lo[p]), s2K(hi[p])
            for l in range(L):
                x1, x2 = (lo[p] + 2*l)/Fr(L), (hi[p] + 2*l)/Fr(L)
                v1, v2 = sk(lo[p], l, L), sk(hi[p], l, L)
                if x2 <= 1: skl, skh = v1, v2
                elif x1 >= 1: skl, skh = v2, v1
                else: skl, skh = v1.union(v2), arb(1)
                slo[p, l], shi[p, l] = max(fd(4*skl), 0.0), fu(4*skh)
                if l == 0:
                    al_lo, al_hi = a0sq(hi[p], L), a0sq(lo[p], L)
                else:
                    al_lo, al_hi = nlo/(L*L*skh), nhi/(L*L*skl)
                a2lo[p, l] = max(fd(al_lo), 0.0); ah = min(fu(al_hi), 1.0) if (l == 0 or skl > 0) else 1.0; a2hi[p, l] = ah
                om = (1 - arb(a2lo[p, l]).sqrt()) if l % 2 == 0 else (1 + arb(ah).sqrt())
                g0 = ((L*L - 1)*PI*A(hi[p])/(24*L*self.sn))**2
                if l == 0:
                    g2[p, l] = min(fu(om**2/(4*skl)), fu(g0)) if lo[p] > 0 else fu(g0)
                else:
                    g2[p, l] = fu(om**2/(4*skl))
        K2hi = fu(sum((PI*A(hi[p]))**2 for p in range(4)))
        Khlo = fd(sum(4*s2K(lo[p]) for p in range(4))); Khhi = fu(sum(4*s2K(hi[p]) for p in range(4)))
        return slo, shi, a2lo, a2hi, g2, K2hi, max(Khlo, 0.0), Khhi
    def bound(self, lo, hi, F):
        L = self.L; slo, shi, a2lo, a2hi, g2, K2hi, Khlo, Khhi = self.tables(lo, hi); I = self.idx; z = self.z; r4 = np.arange(4)[:, None]
        A2lo, A2hi = a2lo[r4, I], a2hi[r4, I]; Slo, Shi = slo[r4, I], shi[r4, I]
        Gn = up(np.sqrt(sum_up(g2[r4, I], 0)))
        Pa2 = prod_up(A2hi); Pa = up(np.sqrt(Pa2)); mxa = up(np.sqrt(A2hi.max(0)))
        kl, kh = sum_dn(Slo, 0), sum_up(Shi, 0)
        x0lo, x0hi = dn0(L*L*a2lo[:, 0]), up(L*L*a2hi[:, 0])
        with np.errstate(divide='ignore', invalid='ignore'):
            W = np.where(z, self.L2gam, up(K2hi/np.where(z, 1, kl)))
            rlo = np.where(z, x0lo.min(), dn0(Khlo/kh)); rhi = np.where(z, x0hi.max(), up(Khhi/np.where(z, 1, kl)))
            ylo, yhi = dn0(L*L*A2lo), up(L*L*A2hi)
            br = np.maximum(up(yhi - rlo[None]), up(rhi[None] - ylo)).max(0)
            V = up(sum_up(up(up(Pa2*W)*br))/L**4)
            U = up(sum_up(up(up(up(Pa*mxa)*W)*Gn))/L**3)
            S = dn0(dn0(dn0(Khlo*sum_dn(np.where(z, 0.0, dn0(1/kh))))/L**2) + dn0(x0lo.min()/L**2))
        tau = up(F*up(V + up(up(np.sqrt(Khhi))*U)))
        return up(up((1 + tau)**2)/S), tau
def run(L, target, n0=16, maxdepth=6):
    gb = Gbox(L); t0 = time.time(); e = [Fr(i, n0) for i in range(n0 + 1)]
    boxes = [([e[i] for i in ii], [e[i + 1] for i in ii], 0, INF) for ii in itertools.product(range(n0), repeat=4) if all(ii[r] <= ii[r + 1] for r in range(3))]
    worst, nev, Fmax, Gmax, ng, fail, wbox = 0.0, 0, 0.0, 0.0, 0, 0, None
    while boxes:
        lo, hi, dep, Gp = boxes.pop()
        F = Fcs_box(lo, hi); nev += 1; G = Gp; gF = up(gb.gam*F)
        if up(gF + G) > target: G = min(G, gb.bound(lo, hi, F)[0]); ng += 1
        B = up(gF + G)
        if B > target and dep < maxdepth:
            m = [(a + b)/2 for a, b in zip(lo, hi)]
            for bits in itertools.product((0, 1), repeat=4):
                nlo = [m[r] if bits[r] else lo[r] for r in range(4)]; nhi = [hi[r] if bits[r] else m[r] for r in range(4)]
                if all(nlo[r] <= nhi[r + 1] for r in range(3)): boxes.append((nlo, nhi, dep + 1, G))
            continue
        if B > worst: worst, wbox = B, ([float(x) for x in lo], [float(x) for x in hi])
        Fmax, Gmax = max(Fmax, F), max(Gmax, G); fail += B > target
    return dict(L=L, target=target, supB_bound=worst, ok=fail == 0, Fmax=Fmax, Gmax=Gmax, boxes=nev, Gevals=ng, failed_leaves=fail,
                worst_box_u=wbox, secs=round(time.time() - t0, 1))
if __name__ == "__main__":
    print(run(int(sys.argv[1]), float(sys.argv[2]), n0=int(sys.argv[3]) if len(sys.argv) > 3 else 16), flush=True)
