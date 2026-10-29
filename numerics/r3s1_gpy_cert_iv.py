# r3s1: interval-arithmetic (mpmath.iv, outward rounding) re-certification of the thresholds a1* of
# r3s1_gpy_cert.py for N4 >= 8 and N4 >= 16 (SOURCES_R3S1_GPY_MIN_IV.md). The float code only proposes:
# the bisection value a_c and the box cover. Every inequality that the proof uses is re-checked here in IV:
#   R+(m) (same 4000-panel chord sum, series with rigorous remainder), the analytic tail bound A(m) (same formula),
#   rho0, rho2, (F1) on 20000 panels, (F2) on every accepted box (half-widths inflated by 1e-12 so the
#   float boxes overlap and cover the domain), and the ball / alcove skip tests.
# Difference to the float run: for n >= 2 (m >= 2 N0) the remainder uses the analytic A(m) for every m,
# not the per-m sums; A(m) is looser (8.43/m^2 against about 5/m^2), so rho0, rho2 grow slightly.
# Needs mpmath (run with the scratch venv python). Run: python r3s1_gpy_cert_iv.py
import sys, os, time, math
import numpy as np
from mpmath import iv
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import r3s1_gpy_cert as F
iv.prec = 64
PI = iv.pi; TWO_PI = 2*iv.pi
def I(x): return iv.mpf(x)
def lo(x): return float(x.a)
def hi(x): return float(x.b)
def ivmax(a, b): return iv.mpf([max(lo(a), lo(b)), max(hi(a), hi(b))])

# ---------- R(m) bounds in IV ----------
def asinh(y): return iv.log(y + iv.sqrt(1 + y*y))      # iv has no asinh; y >= 0 here
def e1(r): return 2*asinh(iv.sin(r/2))

def e_out(r):
    s = r*r
    if hi(s) <= lo(2*PI*PI):
        w2 = 4 + 4*iv.sin(iv.sqrt(ivmax(s - PI*PI, I(0)))/2)**2
    elif lo(s) >= hi(2*PI*PI):
        w2 = 4*2 + 4*iv.sin(iv.sqrt(ivmax(s - 2*PI*PI, I(0)))/2)**2
    else:                             # straddles r^2 = 2 pi^2, where both branches equal 8: lower end of branch 1
        w2 = iv.mpf([lo(4 + 4*iv.sin(iv.sqrt(ivmax(I(lo(s)) - PI*PI, I(0)))/2)**2), 8])
    return 2*asinh(iv.sqrt(w2)/2)

def Ek(z, h, k, J=10):
    # int_0^h s^k e^{-c s} ds = h^{k+1} sum_j (-z)^j/(j!(k+j+1)), z = c h >= 0; alternating, terms decreasing
    # for z < 1: remainder |.| <= h^{k+1} z^J/J!
    s = I(0); t = I(1)
    for j in range(J):
        s += t/(k + j + 1); t = t*(-z)/(j + 1)
    rem = h**(k+1)*abs(t)
    return h**(k+1)*s + iv.mpf([-hi(rem), hi(rem)])

def R_hi_iv(m, K=4000, Ko=4000):
    m = I(m); h = PI/K
    r = [PI*k/K for k in range(K+1)]; e = [e1(x) for x in r]
    inner = I(0)
    for k in range(K):
        # chord through the two endpoint values; use the lower ends: a lower function of a concave e1
        # (chord of the lower values lies below the true chord, which lies below e1)
        ea, eb = I(lo(e[k])), I(lo(e[k+1]))
        beta = (eb - ea)/h; z = m*beta*h
        assert hi(z) < 1
        J0 = r[k]**2*Ek(z, h, 0) + 2*r[k]*Ek(z, h, 1) + Ek(z, h, 2)
        inner += iv.exp(-m*ea)*J0          # e^{-m(alpha + beta r)} = e^{-m ea} e^{-m beta (r - r_k)}
    ro0, ro1 = PI, iv.sqrt(3)*PI; ho = (ro1 - ro0)/Ko
    outer = I(0)
    for k in range(Ko):
        a_, b_ = ro0 + k*ho, ro0 + (k+1)*ho
        outer += 4*PI*b_**2*iv.exp(-m*e_out(a_))
    outer *= ho
    return m**3/(8*PI)*(4*PI*inner + outer)

KT = 5*(I(12)/11)**6
E1_1 = e1(I(1)); VOUT = TWO_PI**3 - 4*PI**4/3
def A_iv(m):        # analytic bound: R(m) - 1 <= A(m), valid for every m >= 1 (SOURCES_R3S1_GPY_MIN §1.3)
    m = I(m)
    return KT/m**2 + m**3/(8*PI)*(4*PI*(PI**3 - 1)/3*iv.exp(-m*E1_1) + VOUT*iv.exp(-m*2*asinh(1)))
def Rdef_iv(m):     # 1 - R_lo(m)
    m = I(m); x = PI*m; return iv.exp(-x)*(1 + x + x*x/2)

def rho_iv(N0, nmax=400):
    # sup over N >= N0 of rho0, rho2 (both decreasing in N: A(m) decreases for m >= 4)
    r0 = I(0); r2 = I(0)
    for n in range(2, nmax+1):
        e = ivmax(A_iv(n*N0), Rdef_iv(n*N0)); r0 += 2/(PI**2*n**4)*e; r2 += 2/(PI**2*n**2)*e
    tailA = A_iv((nmax+1)*N0)*(I(nmax+1)/(nmax))**2       # A(nN0) <= A((nmax+1)N0)*((nmax+1)/n)^2 for n > nmax
    r0 += 2/PI**2*tailA*(nmax+1)**2/(5*I(nmax)**5); r2 += 2/PI**2*tailA*(nmax+1)**2/(3*I(nmax)**3)
    return r0, r2

def dc1_iv(N0):
    # sup_{N >= N0} (2/pi^2)(R(N) - 1): IV chord sums for N0 <= N <= m2, A(N) beyond (A decreasing)
    best = R_hi_iv(N0) - 1; vals = {N0: hi(best)}; N = N0
    while hi(A_iv(N + 1)) > lo(best):
        N += 1; v = R_hi_iv(N) - 1; Av = A_iv(N)
        v = v if hi(v) < hi(Av) else Av
        vals[N] = hi(v); best = best if hi(best) >= hi(v) else v
    return 2/PI**2*best, vals

# ---------- continuum pair function in IV, with the seam x = 0 mod 2pi ----------
def _poly(X, k):
    if k == 0: return PI**4/90 - PI**2*X**2/12 + PI*X**3/12 - X**4/48
    if k == 1: return -PI**2*X/6 + PI*X**2/4 - X**3/12
    return -PI**2/6 + PI*X/2 - X**2/4
def Bk(X, k):
    # B^{(k)}(x mod 2pi), X in [0, 4pi]. On a straddle the hull of both branches, widened by 1e-30
    # (B, B', B'' agree with their polynomial continuations to O(delta^2), delta <= 1 ulp, at the seam)
    for j in (0, 1):
        sh = j*TWO_PI
        if lo(X) >= hi(sh) and hi(X) <= lo(sh + TWO_PI): return _poly(X - sh, k)
    for j in (1, 2):
        sh = j*TWO_PI
        if lo(X) < hi(sh) and hi(X) > lo(sh):
            a_ = _poly(iv.mpf([lo(X - (sh - TWO_PI)), hi(TWO_PI)]), k)
            b_ = _poly(iv.mpf([0, max(hi(X - sh), 0.0)]), k)
            return iv.mpf([min(lo(a_), lo(b_)) - 1e-30, max(hi(a_), hi(b_)) + 1e-30])
    if lo(X) >= 0 and hi(X) <= hi(TWO_PI): return _poly(X, k)       # 0 seam at the lower end
    raise ValueError(X)
def h(X, a):  return a*iv.cos(X) - 2/PI**2*Bk(X, 0)
def h1(X, a): return -a*iv.sin(X) - 2/PI**2*Bk(X, 1)
def h2(X, a): return -a*iv.cos(X) - 2/PI**2*Bk(X, 2)

def F1_iv(Nc, a, r, rho2, n=20000):
    cp = PI if Nc == 2 else 2*PI/3; s = iv.sqrt(2)*r
    lim = PI/2 if Nc == 2 else PI/6
    assert hi(s) <= lo(lim), "monotonicity radius"
    w = s/n; mn = None
    for k in range(n):
        m = cp - s + (2*k + 1)*w
        v = h2(m, a) - (a + 1/PI)*w
        mn = v if mn is None or lo(v) < lo(mn) else mn
    mu_r = 2*Nc*(mn - rho2); mu_c = 2*Nc*(h2(cp, a) - rho2)
    return mu_r, mu_c

# ---------- float branch and bound that records the accepted boxes ----------
def bnb_record(evalf, boxes, target, wmin=1e-7):
    c, w = boxes; acc_c, acc_w = [], []
    while len(c):
        G, lb, inside = evalf(c, w)
        if (~inside).any() and G[~inside].min() < target: return None
        ok = lb >= target
        acc_c.append(c[ok]); acc_w.append(w[ok])
        c, w = c[~ok], w[~ok]
        if len(c) and w.min() < wmin: return None
        if len(c): c, w = F.split(c, w)
    return np.concatenate(acc_c), np.concatenate(acc_w)

INFL = 1 + 1e-12
def box_ok_iv(Nc, a, r, rho0, rho2, c, w, target):
    # True if the box is certified in IV: either skipped legitimately or lb >= target
    H = a + I(1)/3; w = [I(float(x))*INFL for x in w]; c = [I(float(x)) for x in c]
    if Nc == 2:
        x, wx = c[0], w[0]
        G = 2*h(x, a) - 2*h(PI, a)
        dmax2 = ivmax(abs(x - wx - PI), abs(x + wx - PI))**2/2
        rem = iv.mpf([0, min(hi(4*rho0), hi(2*rho2*dmax2))])
        lb = G - 2*abs(h1(x, a))*wx - H*wx**2 - rem
        return lo(lb) >= target
    x, y = c; wx, wy = w; c0 = 2*PI/3
    def d2(u, v): du, dv = u - c0, v - c0; return (I(2)/3)*(du*du + du*dv + dv*dv)
    corners = [d2(x + sx*wx, y + sy*wy) for sx in (-1, 1) for sy in (-1, 1)]
    if all(hi(q) < lo(r*r) for q in corners): return True                 # box inside the (convex) ball
    if lo((x - wx) + (y - wy)) > hi(TWO_PI): return True                   # box beyond the alcove edge
    G = 2*(h(x, a) + h(y, a) + h(x + y, a)) - 6*h(2*PI/3, a)
    gx = 2*(h1(x, a) + h1(x + y, a)); gy = 2*(h1(y, a) + h1(x + y, a))
    dmax2 = max(hi(q) for q in corners)
    rem = iv.mpf([0, min(hi(9*rho0), hi(3*rho2)*dmax2*(1 + 1e-15))])
    lb = G - abs(gx)*wx - abs(gy)*wy - 3*H*(wx**2 + wy**2) - rem
    return lo(lb) >= target

def certify_threshold(Nc, N0, rho0, rho2, dc1):
    r0f, r2f = hi(rho0), hi(rho2)
    a_c = F.threshold(Nc, r0f, r2f, 0.19 if Nc == 2 else 0.29, 0.7)
    for bump in (0, 2e-5, 5e-5, 1e-4, 2e-4):
        a = a_c + bump; r = F.pick_r(Nc, a, r2f)
        rec = bnb_record(F.GROUP[Nc]['ev'](a, r, r0f, r2f), F.GROUP[Nc]['boxes'](r), 1e-9)
        if rec is None: continue
        aI, rI = I(a), I(r)
        mu_r, mu_c = F1_iv(Nc, aI, rI, rho2)
        if lo(mu_r) <= 0: continue
        cs, ws = rec; t = time.time()
        bad = sum(not box_ok_iv(Nc, aI, rI, rho0, rho2, cs[i], ws[i], 0.0) for i in range(len(cs)))
        if bad == 0:
            return dict(a_c=a, bump=bump, r=r, nbox=len(cs), mu_r=lo(mu_r), mu_c=lo(mu_c),
                        a_star=hi(I(a) + dc1), t_box=time.time() - t)
    return None

if __name__ == "__main__":
    t0 = time.time()
    for N0 in [int(x) for x in (sys.argv[1:] or ["16", "8"])]:
        t1 = time.time()
        dc1, vals = dc1_iv(N0); rho0, rho2 = rho_iv(N0)
        print(f"== N4 >= {N0}: dc1+ = {hi(dc1):.6f} (R+ - 1 per N: " + ", ".join(f"{k}:{v:.6f}" for k, v in vals.items())
              + f")  rho0 <= {hi(rho0):.3e}  rho2 <= {hi(rho2):.3e}   [{time.time()-t1:.0f} s]", flush=True)
        for Nc in (2, 3):
            o = certify_threshold(Nc, N0, rho0, rho2, dc1)
            print(f"   SU({Nc}): " + ("FAILED" if o is None else
                  f"a_c = {o['a_c']:.5f} (bump {o['bump']}), r = {o['r']:.3f}, boxes = {o['nbox']} all certified in IV "
                  f"({o['t_box']:.0f} s), mu_c >= {o['mu_c']:.5f}, mu_r >= {o['mu_r']:.5f},  a1* <= {o['a_star']:.5f}"), flush=True)
    print(f"total {time.time()-t0:.0f} s")
