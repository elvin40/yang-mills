"""Verifier for SOURCES_T2_LLL: independent continuum h(mu) (mpmath + closed-form g), lattice H at q=1256 (and 2512 nk=1),
error-law fits, and the N-O no-log check G_alpha(1) vs g/(4 pi)."""
import numpy as np, sys, time
sys.path.insert(0, 'numerics')
import t2_lll_window as W
from scipy.integrate import quad
t0 = time.time()
def h_ind(mu):
    m = mu/2; f = lambda t: (np.expm1(-m*t))/t**2*(1/np.sinh(t) - 1/t) if t > 1e-6 else (-m/t)*(-t/6)
    pts = sorted({0.0, 0.1/m, 1/m, 10/m, 1.0, 40.0}); pts = [p for p in pts if p <= 40] + [np.inf]
    I = sum(quad(f, a, b, limit=500, epsabs=1e-15, epsrel=1e-13)[0] for a, b in zip(pts[:-1], pts[1:]))/(8*np.pi**2)
    g = (m - 1)*np.log(abs(m - 1)) - (m + 1)*np.log(m + 1)
    return -4*(I + g/(8*np.pi**2)), I, g
for mu in (3, 5, 1e2, 1e4, 1e6):
    h, I, g = h_ind(mu); print('cont mu=%g h=%.7f h-11/(12pi^2)ln mu=%.7f I_heat=%.7f g=%.7f' % (mu, h, h - 11/(12*np.pi**2)*np.log(mu), I, g))
# slope of h in ln mu between 1e4 and 1e6
print('dh/dln mu (1e4->1e6) =', (h_ind(1e6)[0] - h_ind(1e4)[0])/np.log(100), ' 11/(12pi^2) =', 11/(12*np.pi**2))
# N-O no-log check: G_alpha(a=1) = int_0^{8/alpha} rho(alpha e) Dt(e,1) de vs g/(4 pi), mu'=1.5
mpr = 1.5; u = lambda x: np.log(abs(x)) - np.log(abs(x + mpr)); Dt = lambda e: u(e - 1) - u(e + 1)
gc = (mpr - 1)*np.log(mpr - 1) - (mpr + 1)*np.log(mpr + 1)
for al in (0.04, 0.01, 0.0025, 0.000625):
    E = 8/al; pts = [1.0, 2.0, 10.0, 4/al]
    G = sum(quad(lambda e: W.rho(al*e)*Dt(e), a, b, limit=500, epsabs=1e-13)[0] for a, b in zip([0] + pts, pts + [E]))
    d = G - gc/(4*np.pi); print('alpha=%.6f G-g/4pi=%.3e  /(alpha ln(1/alpha))=%.4f' % (al, d, d/(al*np.log(1/al))))
print('t=%.0fs' % (time.time() - t0), flush=True)
# lattice H at smaller phi
for q, nk in [(628, 1), (628, 3), (1256, 2), (2512, 1)]:
    a, eA, eL = W.spectra(q, nk); phi = a/2
    for mu in (3, 5):
        m2 = mu*phi; Us, serr = W.Uspline(a, m2); neg = eA[eA < 0]; pos = eA[eA > 0]
        tU = (Us(pos).sum() + sum(W.U(l, m2) for l in neg))/(q*eA.shape[0])
        H = -(tU - W.free4(m2))/phi**2
        print('q=%d nk=%d phi=%.6f mu=%d H=%.6f H-h=%.6f (H-h)/phi=%.4f t=%.0fs' % (q, nk, phi, mu, H, H - h_ind(mu)[0], (H - h_ind(mu)[0])/phi, time.time() - t0), flush=True)
