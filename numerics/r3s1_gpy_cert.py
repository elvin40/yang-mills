# r3s1: certified global minimum of the one-loop lattice GPY potential + a1|tr Omega|^2 for SU(2), SU(3)
# on the N4-site circle (SOURCES_R3S1_GPY_MIN.md). Pair form: L^3 V = const + 2 sum_{i<j} h_N(theta_i - theta_j),
#   h_N(x) = a1 cos x - sum_n c_n^lat cos(n x),  c_n^lat = (2/(pi^2 n^4)) R(n N4),  R(m) = pi^2 m^3 w(m).
# Continuum h(x) = a cos x - (2/pi^2) B(x), B = sum cos(nx)/n^4 (quartic on [0, 2pi]).
# Lattice = continuum at a_eff = a1 - dc_1, plus remainder sum_{n>=2} dc_n (bounded in C^0 and C^2).
# Rigor: R(m) bounds from analytic inequalities + 1D chord/Riemann sums; potential covers by second-order
# Taylor boxes with global |h''| <= a + 1/3. Floating error: every bound carries an explicit slack (SLACK)
# far above the a-priori float64 error (< 1e-13 for these O(100)-operation formulas). No interval library.
import numpy as np, math, sys, time
from math import pi
SLACK = 1e-10

# ---------- R(m) bounds ----------
def e1(r):          # min of E over the sphere |p| = r <= pi (concavity argument): 2 asinh(sin(r/2))
    return 2*np.arcsinh(np.sin(r/2))

def e_out(r):       # min of E over {|p| = r} inside the cube, pi <= r <= sqrt(3) pi (vertex of concave program)
    s = r*r
    w2 = np.where(s <= 2*pi*pi, 4 + 4*np.sin(np.sqrt(np.maximum(s - pi*pi, 0))/2)**2,
                  8 + 4*np.sin(np.sqrt(np.maximum(s - 2*pi*pi, 0))/2)**2)
    return 2*np.arcsinh(np.sqrt(w2)/2)

def _Ek(z, h, k, J=30):     # int_0^h s^k e^{-c s} ds, z = c h, by its convergent series
    j = np.arange(J)[:, None]
    fact = np.array([math.factorial(int(t)) for t in range(J)], float)[:, None]
    return h**(k+1)*np.sum((-z[None, :])**j/(fact*(k + j + 1)), axis=0)

def R_bounds(m, K=4000, Ko=4000):
    r = np.linspace(0, pi, K+1); e = e1(r); h = pi/K
    beta = np.diff(e)/h; alpha = e[:-1] - beta*r[:-1]      # chord <= e1 (e1 concave on [0, pi])
    r0 = r[:-1]; c = m*beta; z = c*h
    J = r0**2*_Ek(z, h, 0) + 2*r0*_Ek(z, h, 1) + _Ek(z, h, 2)
    inner = np.sum(np.exp(-m*(alpha + beta*r0))*J)          # >= int_0^pi r^2 e^{-m e1}
    ro = np.linspace(pi, math.sqrt(3)*pi, Ko+1); ho = ro[1] - ro[0]
    outer = np.sum(4*pi*ro[1:]**2*np.exp(-m*e_out(ro[:-1])))*ho   # e_out increasing: left-endpoint upper sum
    Rhi = m**3/(8*pi)*(4*pi*inner + outer)*(1 + SLACK)
    tail = math.exp(-pi*m)*(1 + pi*m + (pi*m)**2/2)
    Rlo = (1 - tail)*(1 - SLACK)
    return Rlo, Rhi

M_EXACT = 256
KTAIL = 5*(12/11)**6 + 1e-3      # R(m) - 1 <= KTAIL/m^2 for m > M_EXACT (analytic, see .md)
def tail_extra(m):               # exponentially small pieces of the analytic bound
    return m**3/(8*pi)*(4*pi*(pi**3 - 1)/3*math.exp(-m*float(e1(1.0))) + ((2*pi)**3 - 4*pi**4/3)*math.exp(-m*2*math.asinh(1)))

_cache = {}
def eps(m):         # |R(m) - 1| <= eps(m), and R(m) - 1 <= epsp(m)
    if m not in _cache:
        if m <= M_EXACT:
            lo, hi = R_bounds(m); _cache[m] = (max(hi - 1, 1 - lo), hi - 1)
        else:
            b = KTAIL/m**2 + tail_extra(m); _cache[m] = (b, b)
    return _cache[m]

def dc_bounds(N4, nmax=400):
    # returns dc1_plus, rho0 = sum_{n>=2}|dc_n|, rho2 = sum_{n>=2} n^2 |dc_n|  (tail n > nmax analytic)
    dc1p = 2/pi**2*eps(N4)[1]
    rho0 = rho2 = 0.0
    for n in range(2, nmax+1):
        e = eps(n*N4)[0]; rho0 += 2/(pi**2*n**4)*e; rho2 += 2/(pi**2*n**2)*e
    b = 2*KTAIL/(pi**2*N4**2)*1.01
    rho0 += b/(5*nmax**5); rho2 += b/(3*nmax**3)
    return dc1p, rho0*(1 + SLACK), rho2*(1 + SLACK)

# ---------- continuum pair function ----------
def B(x):  x = np.mod(x, 2*pi); return pi**4/90 - pi**2*x**2/12 + pi*x**3/12 - x**4/48
def B1(x): x = np.mod(x, 2*pi); return -pi**2*x/6 + pi*x**2/4 - x**3/12
def B2(x): x = np.mod(x, 2*pi); return -pi**2/6 + pi*x/2 - x**2/4
def h(x, a):   return a*np.cos(x) - 2/pi**2*B(x)
def h1(x, a):  return -a*np.sin(x) - 2/pi**2*B1(x)
def h2(x, a):  return -a*np.cos(x) - 2/pi**2*B2(x)

def min_h2(cp, s, a, n=20000):
    # certified lower bound of h''(x; a) on [cp - s, cp + s]; |h'''| <= a + 1/pi (B''' bounded, B'' Lipschitz)
    x = np.linspace(cp - s, cp + s, n+1); m = 0.5*(x[1:] + x[:-1]); w = 0.5*(x[1] - x[0])
    return np.min(h2(m, a)) - (a + 1/pi)*w - SLACK

# ---------- gap covers (branch and bound) ----------
# A box is dropped once lb >= thr (thr = target, or best value seen - tol). The certified minimum is the
# smallest lb of a dropped box: a valid lower bound of G on the part of the domain each box covers.
def bnb(evalf, boxes, thr_fn, wmin=1e-7):
    cert = np.inf; best = np.inf; nb = 0
    c, w = boxes
    while len(c):
        nb += len(c)
        G, lb, inside = evalf(c, w)
        if (~inside).any(): best = min(best, G[~inside].min())
        thr = thr_fn(best)
        if best < thr: return best, best, nb, False      # a domain point already violates the target
        ok = lb >= thr
        if ok.any(): cert = min(cert, lb[ok].min())
        c, w = c[~ok], w[~ok]
        if len(c) and w.min() < wmin: return min(cert, lb[~ok].min()), best, nb, False
        c, w = split(c, w)
    return cert, best, nb, True

def split(c, w):
    d = c.shape[1]; w2 = w/2; out = []
    for s in np.array(np.meshgrid(*[[-1, 1]]*d)).reshape(d, -1).T:
        out.append(c + s*w2)
    return np.concatenate(out), np.tile(w2, (2**d, 1))

# remainder of the lattice potential on a box: |sum_{n>=2} dc_n (D_n - D_n(c))| <= min(N^2 rho0, N rho2 dmax^2)
# (D_n in [0, N^2]; D_n - D_n(c) vanishes to second order at c with |Hess D_n| <= 2 N n^2)
def su2_eval(a, r, rho0, rho2):
    H = a + 1/3; G0 = 2*h(pi, a)
    def f(c, w):
        x = c[:, 0]; wx = w[:, 0]
        G = 2*h(x, a) - G0
        dmax2 = (np.maximum(np.abs(x - wx - pi), np.abs(x + wx - pi)))**2/2
        rem = np.minimum(4*rho0, 2*rho2*dmax2)
        lb = G - 2*np.abs(h1(x, a))*wx - H*wx**2 - rem - SLACK
        return G - rem, lb, np.zeros(len(x), bool)
    return f

def su3_eval(a, r, rho0, rho2):
    # alcove coords x = th1 - th2, y = th2 - th3; G = 2[h(x)+h(y)+h(x+y)] - 6h(2pi/3); d^2 = (2/3)(dx^2+dxdy+dy^2)
    H = a + 1/3; G0 = 6*h(2*pi/3, a); c0 = 2*pi/3
    def d2(x, y): dx, dy = x - c0, y - c0; return (2/3)*(dx*dx + dx*dy + dy*dy)
    def f(c, w):
        x, y = c[:, 0], c[:, 1]; wx, wy = w[:, 0], w[:, 1]
        G = 2*(h(x, a) + h(y, a) + h(x + y, a)) - G0
        gx = 2*(h1(x, a) + h1(x + y, a)); gy = 2*(h1(y, a) + h1(x + y, a))
        dmax2 = np.max([d2(x + sx*wx, y + sy*wy) for sx in (-1, 1) for sy in (-1, 1)], axis=0)
        rem = np.minimum(9*rho0, 3*rho2*dmax2)
        lb = G - np.abs(gx)*wx - np.abs(gy)*wy - 3*H*(wx**2 + wy**2) - rem - SLACK
        G = G - rem
        inball = np.ones(len(x), bool)
        for sx in (-1, 1):
            for sy in (-1, 1): inball &= d2(x + sx*wx, y + sy*wy) < r*r     # all corners in the (convex) ball
        outside = (x - wx) + (y - wy) > 2*pi                                  # box beyond the alcove edge
        lb = np.where(inball | outside, np.inf, lb)
        midin = d2(x, y) < r*r
        return G, lb, midin | (x + y > 2*pi)
    return f

def su2_boxes(r, w0=0.02):
    xe = pi - math.sqrt(2)*r; n = int(math.ceil(xe/w0)); e = np.linspace(0, xe, n+1)
    return (0.5*(e[1:] + e[:-1]))[:, None], np.full((n, 1), 0.5*(e[1] - e[0]))

def su3_boxes(w0=0.05):
    n = int(math.ceil(2*pi/w0)); e = np.linspace(0, 2*pi, n+1); m = 0.5*(e[1:] + e[:-1])
    X, Y = np.meshgrid(m, m); X, Y = X.ravel(), Y.ravel(); hw = 0.5*(e[1] - e[0])
    keep = (X - hw) + (Y - hw) <= 2*pi
    c = np.stack([X[keep], Y[keep]], 1); return c, np.full(c.shape, hw)

GROUP = {2: dict(ev=su2_eval, boxes=su2_boxes, cp=pi, Nc=2),
         3: dict(ev=su3_eval, boxes=lambda r: su3_boxes(), cp=2*pi/3, Nc=3)}

def certify(Nc, a_eff, r, rho0, rho2, target=None, tol=1e-5):
    g = GROUP[Nc]
    s = math.sqrt(2)*r
    hmin = min_h2(g['cp'], s, a_eff)
    mu_r = 2*Nc*(hmin - rho2); mu_c = 2*Nc*(h2(g['cp'], a_eff) - rho2 - SLACK)
    thr = (lambda b: target) if target is not None else (lambda b: b - tol)
    cert, best, nb, ok = bnb(g['ev'](a_eff, r, rho0, rho2), g['boxes'](r), thr)
    return dict(mu_c=mu_c, mu_r=mu_r, gap=cert, gap_num=best, nb=nb, ok=ok)

def pick_r(Nc, a_eff, rho2):
    # largest r (grid 0.005) with mu_r >= mu_c/2; SU(3) also needs sqrt2 r <= pi/6, SU(2) sqrt2 r <= pi/2
    g = GROUP[Nc]; rmax = (pi/6 if Nc == 3 else pi/2)/math.sqrt(2)
    mu_c = 2*Nc*(h2(g['cp'], a_eff) - rho2); best = None
    for r in np.arange(0.005, rmax + 1e-12, 0.005):
        if 2*Nc*(min_h2(g['cp'], math.sqrt(2)*r, a_eff, n=2000) - rho2) >= mu_c/2: best = r
        else: break
    return best

def passes(Nc, a_eff, rho0, rho2):
    r = pick_r(Nc, a_eff, rho2)
    if r is None: return False
    out = certify(Nc, a_eff, r, rho0, rho2, target=1e-9)
    return out['ok'] and out['mu_r'] > 0

def threshold(Nc, rho0, rho2, lo, hi, tol=2e-5):
    while hi - lo > tol:
        mid = 0.5*(lo + hi)
        if passes(Nc, mid, rho0, rho2): hi = mid
        else: lo = mid
    return hi

# ---------- no critical point in the annulus r <= d <= R (radial derivative > 0) ----------
# f(delta) = grad G(c + delta) . delta (chart coordinates; chart rays are metric rays). On a box:
# f >= f(m) - (|grad G(m)| + 2 Hc |w| + Hc |delta|max) |w|, Hc = chart Hessian bound. Lattice and a-uncertainty:
# |grad(rem) . delta| <= 2 N rho2 d^2 and |grad D_1 . delta| <= 2 N d^2, so subtract 2 N (rho2 + da) d^2.
def annulus_ok(Nc, a, r, R, rho2, da, w0=0.02, wmin=1e-6):
    H = a + 1/3
    if Nc == 2:
        Hc = 2*H; c0 = np.array([pi]); met = lambda dx: dx[:, 0]**2/2
        def grad(c): return (2*h1(c[:, 0], a))[:, None]
        e = np.arange(pi - math.sqrt(2)*R - w0, pi + w0/2, w0); cc = (e[:-1] + w0/2)[:, None]; ww = np.full_like(cc, w0/2)
        wm = lambda w: w[:, 0]**2/2
    else:
        Hc = 6*H; c0 = np.array([2*pi/3, 2*pi/3]); met = lambda d: (2/3)*(d[:, 0]**2 + d[:, 0]*d[:, 1] + d[:, 1]**2)
        def grad(c):
            x, y = c[:, 0], c[:, 1]; return np.stack([2*(h1(x, a) + h1(x + y, a)), 2*(h1(y, a) + h1(x + y, a))], 1)
        L = 1.5*R + w0; e = np.arange(-L, L + 1e-12, w0); X, Y = np.meshgrid(e[:-1] + w0/2, e[:-1] + w0/2)
        cc = c0 + np.stack([X.ravel(), Y.ravel()], 1); ww = np.full_like(cc, w0/2)
        wm = lambda w: (2/3)*(w[:, 0]**2 + w[:, 0]*w[:, 1] + w[:, 1]**2)
    while len(cc):
        dm = np.sqrt(met(cc - c0)); wr = np.sqrt(wm(ww))
        live = (dm + wr >= r) & (dm - wr <= R)
        cc, ww = cc[live], ww[live]; dm, wr = dm[live], wr[live]
        if not len(cc): return True
        g = grad(cc); dl = cc - c0
        f = np.sum(g*dl, 1); wn = np.sqrt(np.sum(ww**2, 1)); dn = np.sqrt(np.sum(dl**2, 1)) + wn
        lb = f - (np.sqrt(np.sum(g**2, 1)) + 2*Hc*wn + Hc*dn)*wn - 2*Nc*(rho2 + da)*(dm + wr)**2 - SLACK
        inside_ann = (dm >= r) & (dm <= R)
        if np.any(inside_ann & (f - 2*Nc*(rho2 + da)*dm**2 <= 0)): return False
        bad = lb <= 0
        cc, ww = cc[bad], ww[bad]
        if len(cc) and ww.min() < wmin: return False
        if len(cc): cc, ww = split(cc, ww)
    return True

def local_gap(Nc, a, r, rho0, rho2, da, Rstep=0.02):
    # largest R (grid) with no critical point in r <= d <= R; certified min of G over d >= R
    R = r
    while R + Rstep < 2.5 and annulus_ok(Nc, a, r, R + Rstep, rho2, da): R += Rstep
    cert, best, nb, ok = bnb(GROUP[Nc]['ev'](a, R, rho0, rho2), GROUP[Nc]['boxes'](R), lambda b: b - 1e-5)
    return R, cert, best

def bounds_for(N4s):   # sup of (dc1+, rho0, rho2) over a set of N4
    v = np.array([dc_bounds(n) for n in N4s]); return v.max(0)

if __name__ == "__main__" and "--genN" not in sys.argv:
    t0 = time.time()
    print("== R(m) = pi^2 m^3 w(m): certified bounds  (R-1)*m^2 shown ==")
    for m in (2, 3, 4, 6, 8, 12, 16, 32, 64, 128, 256):
        lo, hi = R_bounds(m); print(f"m={m:4d}  R in [{lo:.10f}, {hi:.8f}]   (Rhi-1) m^2 = {(hi-1)*m*m:.4f}")
    print(f"m > {M_EXACT}: R - 1 <= {KTAIL:.4f}/m^2 + {tail_extra(M_EXACT+1):.1e}")
    rows = [(n, [n]) for n in (2, 3, 4, 6, 8, 12, 16, 24, 32, 64, 128)]
    rows += [(f">={n0}", list(range(n0, 401))) for n0 in (4, 8, 16)] + [("inf", None)]
    print("== certified thresholds a1*(N4) (center point = unique global min for all a1 >= a1*) ==")
    print("N4     | dc1+      rho0      rho2     | SU2: a_c     a1*      | SU3: a_c     a1*")
    TH = {}
    for lab, ns in rows:
        d1, r0, r2 = (0.0, 0.0, 0.0) if ns is None else bounds_for(ns)
        a2 = threshold(2, r0, r2, 0.19, 0.6); a3 = threshold(3, r0, r2, 0.29, 0.7)
        TH[lab] = (d1, r0, r2, a2 + d1, a3 + d1)
        print(f"{str(lab):6s} | {d1:.6f}  {r0:.2e}  {r2:.2e} | {a2:.5f}  {a2+d1:.5f}  | {a3:.5f}  {a3+d1:.5f}")
    print(f"continuum exact: pi^2/48 = {pi**2/48:.5f}, 5pi^2/162 = {5*pi**2/162:.5f}")
    print("== certified curvature and gap, uniform over N4 >= N0 (a1 fixed; a_eff = a1 - dc1+) ==")
    print("grp N0  a1    | r      mu_c     mu_r     mL/g>=  | DV_out(cert)  DV_out(num)  boxes | R     DV_loc(cert) DV_loc(num)")
    for N0 in (8, 16, "inf"):
        d1, r0, r2 = (0.0, 0.0, 0.0) if N0 == "inf" else bounds_for(range(N0, 401))
        for Nc, alist in ((2, (0.22, 0.25, 0.30, 0.50, 1.00)), (3, (0.33, 0.35, 0.40, 0.50, 1.00))):
            for a1 in alist:
                ae = a1 - d1; r = pick_r(Nc, ae, r2)
                if r is None or not passes(Nc, ae, r0, r2):
                    print(f"SU{Nc} {N0!s:4s} {a1:.2f}  | not certified"); continue
                o = certify(Nc, ae, r, r0, r2, tol=1e-5)
                da = 0.0 if N0 == "inf" else d1 + max(2/pi**2*(1 - R_bounds(n)[0]) for n in range(N0, N0 + 1))
                R, gl, gn = local_gap(Nc, ae, r, r0, r2, da)
                print(f"SU{Nc} {N0!s:4s} {a1:.2f}  | {r:.3f}  {o['mu_c']:.5f}  {o['mu_r']:.5f}  {math.sqrt(o['mu_c']/2):.4f}  "
                      f"| {o['gap']:.6f}     {o['gap_num']:.6f}   {o['nb']:6d} | {R:.2f}  {gl:.6f}     {gn:.6f}")
    print(f"time {time.time()-t0:.1f} s")

# ---------- general N (continuum only, plain numerics [N]) ----------
def genN(N, an, starts=400, seed=0):
    # an: dict n -> a_n (n <= N//2). Returns (V(c) - min V found, |tr Omega^n| at the min, center Hessian eigs)
    from scipy.optimize import minimize
    rng = np.random.default_rng(seed); iu = np.triu_indices(N, 1)
    def hh(x):  return sum(a*np.cos(n*x) for n, a in an.items()) - 2/pi**2*B(x)
    def hd(x):  return sum(-n*a*np.sin(n*x) for n, a in an.items()) - 2/pi**2*B1(x)
    def hdd(x): return sum(-n*n*a*np.cos(n*x) for n, a in an.items()) - 2/pi**2*B2(x)
    def full(t): return np.append(t, -t.sum())
    def V(t):
        th = full(t); X = th[:, None] - th[None, :]; return 2*hh(X[iu]).sum()
    def dV(t):
        th = full(t); X = th[:, None] - th[None, :]; G = 2*hd(X); np.fill_diagonal(G, 0)
        g = G.sum(1); return g[:-1] - g[-1]
    c = 2*pi*np.arange(N)/N; c = c - c.mean(); Vc = V(c[:-1])
    best, bt = np.inf, None
    for k in range(starts):
        r = minimize(V, rng.uniform(-pi, pi, N-1), jac=dV, method='BFGS', options=dict(gtol=1e-10))
        if r.fun < best: best, bt = r.fun, full(r.x)
    trs = [abs(np.exp(1j*n*bt).sum()) for n in range(1, N//2 + 1)]
    X = c[:, None] - c[None, :]; Hm = -2*hdd(X); np.fill_diagonal(Hm, 0); Hm[np.diag_indices(N)] = -Hm.sum(1)
    Q = np.linalg.qr(np.vstack([np.ones(N), np.eye(N)[:-1]]).T)[0][:, 1:]   # orthonormal basis of sum = 0
    ev = np.linalg.eigvalsh(Q.T @ Hm @ Q)
    return Vc - best, trs, ev

if __name__ == "__main__" and "--genN" in sys.argv:
    for N in (4, 5):
        print(f"== SU({N}) continuum, deformation n <= {N//2} ==")
        for lab, fam in (("a1 only", lambda s: {1: s}), ("a1=a2", lambda s: {1: s, 2: s}),
                         ("a_n = s*2/(pi^2 n^4)", lambda s: {n: s*2/(pi**2*n**4) for n in (1, 2)})):
            for s in ((0.2, 0.3, 0.5, 1.0, 2.0) if lab != "a_n = s*2/(pi^2 n^4)" else (1.0, 1.5, 2.0, 3.0, 5.0)):
                dv, trs, ev = genN(N, fam(s), starts=150)
                print(f"{lab:22s} s={s:4.2f}: V(c)-min={dv:+.5f}  |tr O^n| at min={np.round(trs,3)}  center Hess eigs={np.round(ev,4)}")
            if lab == "a1 only": continue
            lo, hi = 0.0, 5.0           # global threshold in s: center is the best of the multistart minima
            while hi - lo > 1e-3:
                mid = 0.5*(lo + hi); dv, _, ev = genN(N, fam(mid), starts=150)
                if dv < 1e-9 and ev.min() > 0: hi = mid
                else: lo = mid
            print(f"{lab:22s} global threshold s* = {hi:.3f}")
