# r3s1: one-loop lattice GPY potential for the holonomy on an N4-site circle (spacing a = L/N4),
# plus the double-trace deformation a_1|tr Omega|^2/L^3 of R3S1_GAP §1.1. SU(2), SU(3).
# Exact lattice formula (background Feynman gauge, 4 - 2 ghost = 2 copies of the covariant lattice Laplacian):
#   sum_k log(2cosh E - 2cos((2pi k+x)/N4)) = log(2cosh(N4 E) - 2cos x),  4 sinh^2(E/2) = sum_i 4 sin^2(p_i/2)
# so  L^3 V_GPY(theta) = N4^3 sum_{i,j} int_BZ d^3p/(2pi)^3 log(1 - 2 q cos theta_ij + q^2),  q = exp(-N4 E_p)
#                     = -sum_n c_n |tr Omega^n|^2 + const,  c_n = 2 N4^3 w_n / n,  w_n = int q^n.
# Continuum: c_n = 2/(pi^2 n^4).  Kinetic term (1/(g^2 L)) sum_j (d theta_j)^2  =>  m^2 L^2 = (g^2/2) * eig Hess_theta v.
import numpy as np, sys
from numpy.polynomial.legendre import leggauss

def nodes1d(N4, K, order):
    # composite Gauss-Legendre on [0, pi], panels [pi 2^-(k+1), pi 2^-k] graded toward p = 0 (cusp of |p|);
    # ratio-2 panels resolve exp(-N4 |p|) at every scale; K counted below the scale 1/N4
    Kt = K + int(np.ceil(np.log2(N4)))
    br = np.concatenate([[0.0], np.pi*0.5**np.arange(Kt, -1, -1)])
    x, w = leggauss(order); X, W = [], []
    for a, b in zip(br[:-1], br[1:]):
        X.append(0.5*(b-a)*x + 0.5*(a+b)); W.append(0.5*(b-a)*w)
    return np.concatenate(X), np.concatenate(W)/np.pi      # weight normalized: int_0^pi dp/pi

def qgrid(N4, K=10, order=8):
    p, w = nodes1d(N4, K, order)
    s = 4*np.sin(p/2)**2
    om2 = s[:, None, None] + s[None, :, None] + s[None, None, :]
    E = 2*np.arcsinh(0.5*np.sqrt(om2))
    W = w[:, None, None]*w[None, :, None]*w[None, None, :]
    return np.exp(-N4*E).ravel(), W.ravel()

def cn_lat(N4, nmax, **kw):
    q, W = qgrid(N4, **kw); c = np.empty(nmax); qn = np.ones_like(q)
    for n in range(1, nmax+1):
        qn *= q; c[n-1] = 2*N4**3*np.dot(W, qn)/n
    return c

def cn_cont(nmax):
    n = np.arange(1, nmax+1); return 2/(np.pi**2*n**4)

def hess_center_lat(N4, **kw):
    # SU(2): d^2/dphi^2 of L^3 V_GPY at phi = pi; direct, no series:  -4 N4^3 int q/(1+q)^2  (continuum -1/3)
    q, W = qgrid(N4, **kw); return -4*N4**3*np.dot(W, q/(1+q)**2)

def hess_center_lat_su3(N4, **kw):
    # SU(3): isotropic Hessian eigenvalue of L^3 V_GPY at theta = (-2pi/3, 0, 2pi/3) in orthonormal Cartan coords
    # f''(x) = 2q cos x/D - (2q sin x)^2/D^2, all theta_ij = +-2pi/3 mod 2pi; sum_ij (e_i-e_j)^2 = 6
    q, W = qgrid(N4, **kw); x = 2*np.pi/3; D = 1 - 2*q*np.cos(x) + q**2
    fpp = 2*q*np.cos(x)/D - (2*q*np.sin(x))**2/D**2
    return N4**3*6*np.dot(W, fpp)

def v_su2(phi, a1, c):          # L^3 V_tot, SU(2), phi = theta_1 - theta_2; |tr Omega^n|^2 = 2 + 2cos(n phi)
    n = np.arange(1, len(c)+1)[:, None]; d = np.zeros(len(c)); d[0] = a1
    return ((d - c)[:, None]*(2 + 2*np.cos(n*phi[None, :]))).sum(0)

def v_su3(t1, t2, a1, c):       # theta = (t1, t2, -t1-t2); |tr Omega^n|^2 = sum_ij cos(n theta_ij)
    t3 = -t1 - t2; d = np.zeros(len(c)); d[0] = a1; out = 0
    for n in range(1, len(c)+1):
        tr = np.exp(1j*n*t1) + np.exp(1j*n*t2) + np.exp(1j*n*t3)
        out = out + (d[n-1] - c[n-1])*np.abs(tr)**2
    return out

def min_su2(a1, c, M=4001):
    phi = np.linspace(0, 2*np.pi, M); v = v_su2(phi, a1, c); i = v.argmin()
    return phi[i], abs(2*np.cos(phi[i]/2))

def min_su3(a1, c, M=241):
    t = np.linspace(-np.pi, np.pi, M); T1, T2 = np.meshgrid(t, t)
    v = v_su3(T1, T2, a1, c); i = np.unravel_index(v.argmin(), v.shape)
    tr = np.exp(1j*T1[i]) + np.exp(1j*T2[i]) + np.exp(-1j*(T1[i]+T2[i]))
    return abs(tr)

def glob_threshold(minfun, c, lo, hi, tol=1e-4):
    # smallest a1 with center-symmetric global minimum (|tr Omega| = 0 at the minimum)
    while hi - lo > tol:
        mid = 0.5*(lo+hi)
        if minfun(mid, c) < 1e-2: hi = mid
        else: lo = mid
    return hi

if __name__ == "__main__":
    NMAX = 200
    print("== convergence of the lattice quadrature (K panels, GL order) ==")
    for N4 in (4, 16, 64):
        for K, o in ((6, 6), (10, 8), (14, 10)):
            print(f"N4={N4:3d} K={K} order={o}:  SU(2) v''_GPY(pi) = {hess_center_lat(N4, K=K, order=o):.8f}"
                  f"   c_1^lat = {cn_lat(N4, 1, K=K, order=o)[0]:.8f}")
    print(f"continuum: v''_GPY(pi) = {-1/3:.8f}, c_1 = {2/np.pi**2:.8f}, SU(3) Hess = {-2/3:.8f}")
    print(f"continuum exact thresholds: SU(2) local 1/6={1/6:.5f} global pi^2/48={np.pi**2/48:.5f};"
          f" SU(3) local 2/9={2/9:.5f} global 5pi^2/162={5*np.pi**2/162:.5f}")
    print("SU(3) minimizer just below the global threshold (continuum, a1 = 0.28):")
    c = cn_cont(200); t = np.linspace(-np.pi, np.pi, 241); T1, T2 = np.meshgrid(t, t)
    v = v_su3(T1, T2, 0.28, c); i = np.unravel_index(v.argmin(), v.shape)
    print(f"  theta = ({T1[i]:.4f}, {T2[i]:.4f}, {-T1[i]-T2[i]:.4f}),  |tr Omega| = {min_su3(0.28, c):.4f}")
    print("== series truncation: SU(2) v''(pi) from c_n, n<=nmax, vs direct (N4 = 8) ==")
    c8 = cn_lat(8, 2000); n = np.arange(1, 2001)
    for nm in (50, 200, 2000):
        print(f"nmax={nm}: {-2*np.sum(((-1)**(n[:nm]+1))*n[:nm]**2*c8[:nm]):.6f}  direct {hess_center_lat(8):.6f}")
    print("== c_n^lat / c_n^cont ==")
    for N4 in (2, 3, 4, 6, 8, 12, 16, 24, 32, 64):
        r = cn_lat(N4, 4)/cn_cont(4); print(f"N4={N4:3d}: " + "  ".join(f"{x:.5f}" for x in r))
    print("== thresholds and curvature at the center-symmetric point ==")
    print("N4 | SU2 lam_GPY a_loc a_glob | SU3 lam_GPY a_loc a_glob  (lam = Hess eig of L^3 V_GPY, orthonormal Cartan coords)")
    rows = []
    for N4 in (2, 3, 4, 6, 8, 12, 16, 24, 32, 64, None):
        c = cn_cont(NMAX) if N4 is None else cn_lat(N4, NMAX)
        l2 = 2*(-1/3 if N4 is None else hess_center_lat(N4))     # lam = 2 v''(phi)
        l3 = -2/3 if N4 is None else hess_center_lat_su3(N4)
        a2l, a3l = -l2/4, -l3/3                                  # deformation lam: SU(2) 4 a1, SU(3) 3 a1
        a2g = glob_threshold(lambda a, cc: min_su2(a, cc)[1], c, 0.0, 1.0)
        a3g = glob_threshold(min_su3, c, 0.0, 1.0)
        rows.append((N4, l2, l3))
        print(f"{'inf' if N4 is None else N4:>4} | {l2:.5f} {a2l:.5f} {a2g:.4f} | {l3:.5f} {a3l:.5f} {a3g:.4f}")
    print("== undeformed minimum (a1 = 0) ==")
    for N4 in (4, 16, None):
        c = cn_cont(NMAX) if N4 is None else cn_lat(N4, NMAX)
        ph, t2 = min_su2(0.0, c); print(f"N4={N4}: SU(2) phi_min={ph:.4f} |trO|={t2:.4f};  SU(3) |trO|={min_su3(0.0, c):.4f}")
    print("== m_phi L / g = sqrt(lam/2) at the center point ==")
    print("a1   | " + " ".join(f"N4={'inf' if r[0] is None else r[0]:>3}" for r in rows))
    for G, idx, k in (("SU2", 1, 4), ("SU3", 2, 3)):
        for a1 in (0.25, 0.3, 0.5, 1.0):
            vals = [k*a1 + r[idx] for r in rows]
            print(f"{G} a1={a1:4.2f} | " + " ".join(f"{np.sqrt(v/2) if v > 0 else float('nan'):7.4f}" for v in vals))
