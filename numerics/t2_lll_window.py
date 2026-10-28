# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
"""(L-LL) check. Lattice H_phi(mu) = -phi^-2 * [tau U(A') - tau U(A'_0)], U(l) = int rho_perp(k) u_m(l+k) dk,
u_m(x) = log|x| - log|x+m^2|, m^2 = mu*|phi| = mu*alpha/2, alpha = 2 pi/q (charge-2 holonomy), phi = alpha/2.
A' from t2_gaprime2_check.ops (Landau gauge, Bloch blocks 2q x 2q). Compared with the continuum limit
h(mu) = -4 [I_heat(mu/2) + g(1, mu/2)/(8 pi^2)] of SOURCES_T2_LLL.md section 5. Prints and writes JSON."""
import numpy as np, json, sys, time
from scipy.special import ellipk, ive
from scipy.integrate import quad
from scipy.interpolate import CubicSpline
sys.path.insert(0, 'numerics'); from t2_gaprime2_check import ops

rho = lambda k: ellipk(min(1 - (k - 4)**2/16, 1 - 1e-15))/(2*np.pi**2)          # transverse density of kappa = |k_perp hat|^2
Q = dict(limit=400, epsabs=1e-14, epsrel=1e-12)

def U(l, m2):
    f = lambda k: rho(k)*(np.log(abs(l + k)) - np.log(abs(l + k + m2)))
    pts = sorted({4.0} | {p for p in (-l, -l - m2, abs(l), 10*abs(l), m2) if 0 < p < 8})
    return quad(f, 0, 8, points=pts, **Q)[0]

def Uspline(a, m2):
    x = np.concatenate([np.geomspace(0.2*a, 0.5, 500), np.linspace(0.5, 17, 300)[1:]])
    y = np.array([U(v, m2) for v in x]); s = CubicSpline(np.log(x), y)
    xm = np.sqrt(x[:-1]*x[1:])[::40]; err = max(abs(s(np.log(v)) - U(v, m2)) for v in xm)
    return (lambda l: s(np.log(l))), err

def free4(m2):   # tau_4D u_m(-Delta (x) 1_2) via proper time, = tau U(A'_0) (2 components)
    f = lambda t: (np.exp(-t*m2) - 1)/t*ive(0, 2*t)**4
    return 2*sum(quad(f, a, b, **Q)[0] for a, b in [(0, 1), (1, 1/m2), (1/m2, 50/m2), (50/m2, np.inf)])

def free2(m2):   # scalar 2D x transverse: tau U(L_0) one component
    f = lambda t: (np.exp(-t*m2) - 1)/t*ive(0, 2*t)**4
    return sum(quad(f, a, b, **Q)[0] for a, b in [(0, 1), (1, 1/m2), (1/m2, 50/m2), (50/m2, np.inf)])

def spectra(q, nk):
    a = 2*np.pi/q; eA, eL = [], []
    for k0 in a*(np.arange(nk) + 0.5)/nk:
        for k1 in 2*np.pi*(np.arange(nk) + 0.5)/nk:
            A, D, L = ops(q, a, k0, k1); eA.append(np.linalg.eigvalsh(A)); eL.append(np.linalg.eigvalsh(L))
    return a, np.array(eA), np.array(eL)

def continuum(mu):
    mp = mu/2
    Ih = quad(lambda t: (np.exp(-mp*t) - 1)/t/(4*np.pi*t)/(2*np.pi)*(1/np.sinh(t) - 1/t), 0, np.inf, **Q)[0]
    u = lambda x: np.log(abs(x)) - np.log(abs(x + mp))
    gi = lambda e: u(e - 1) - u(e + 1)
    g = quad(gi, 0, 1, **Q)[0] + quad(gi, 1, 4 + mp, **Q)[0] + quad(gi, 4 + mp, np.inf, **Q)[0]
    hsc = quad(lambda t: (np.exp(-mp*t) - 1)/t**2*(1/np.sinh(t) - 1/t), 0, np.inf, **Q)[0]/(16*np.pi**2)
    return dict(mu=mu, I_heat=Ih, g=g, NO_c=g/(8*np.pi**2), h=-4*(Ih + g/(8*np.pi**2)), h_sc=hsc)

if __name__ == "__main__":
    t0 = time.time(); out = {}
    # Mehler / Lemma S2 (e): int dtheta/2pi (2 pi sinh 2t)^-1/2 exp(-th^2 tanh t) = 1/(4 pi sinh t)
    out['mehler'] = [float(quad(lambda th: np.exp(-th**2*np.tanh(t)), -np.inf, np.inf)[0]/(2*np.pi)
                     /np.sqrt(2*np.pi*np.sinh(2*t))*4*np.pi*np.sinh(t) - 1) for t in (0.3, 1.0, 3.0)]
    print('mehler rel err', out['mehler'], flush=True)
    a0 = 2*np.pi/79; e1 = np.sort(np.concatenate([np.linalg.eigvalsh(ops(79, a0, k0, k1)[0]) for k0 in (0.01, 0.03) for k1 in (0.4, 1.3)]))
    e2 = np.sort(np.concatenate([np.linalg.eigvalsh(ops(79, -a0, -k0, -k1)[0]) for k0 in (0.01, 0.03) for k1 in (0.4, 1.3)]))
    out['evenness_maxdiff'] = float(abs(e1 - e2).max()); print('A(-a) = conj A(a) spectra diff', out['evenness_maxdiff'], flush=True)
    out['continuum'] = [continuum(mu) for mu in (3, 5, 10, 100, 1000, 10000)]
    for c in out['continuum']:
        print('cont mu=%g h=%.6f h-11/(12pi^2) ln mu=%.6f I_heat=%.6f NO_c=%.6f h_sc=%.6f' % (c['mu'], c['h'], c['h'] - 11/(12*np.pi**2)*np.log(c['mu']), c['I_heat'], c['NO_c'], c['h_sc']), flush=True)
    rows = []
    for q, nks in [(79, (2, 4, 6)), (157, (2, 4)), (314, (3,)), (628, (3,))]:
        for nk in nks:
            a, eA, eL = spectra(q, nk); phi = a/2
            for mu in (3, 5):
                m2 = mu*phi; Us, serr = Uspline(a, m2)
                neg = eA[eA < 0]; pos = eA[eA > 0]
                tU = (Us(pos).sum() + sum(U(l, m2) for l in neg))/(q*eA.shape[0])
                tUabs = (Us(pos).sum() + Us(-neg).sum())/(q*eA.shape[0])
                f4 = free4(m2); H = -(tU - f4)/phi**2
                heat = (tUabs - f4)/a**2; NO = (tU - tUabs)/a**2
                Hsc = (Us(eL.ravel()).sum()/(q*eL.shape[0]) - free2(m2))/a**2
                r = dict(q=q, nk=nk, alpha=a, phi=phi, mu=mu, H=H, heat_over_a2=heat, NO_over_a2=NO, Hsc=Hsc,
                         n_neg_per_site=len(neg)/(q*eA.shape[0]), spline_err=serr, minabs=float(abs(eA).min()/a))
                rows.append(r)
                print('q=%d nk=%d phi=%.5f mu=%d H=%.6f heat/a2=%.6f NO/a2=%.6f Hsc=%.6f tauP-/(a/2pi)=%.5f splerr=%.1e t=%.0fs'
                      % (q, nk, phi, mu, H, heat, NO, Hsc, r['n_neg_per_site']/(a/(2*np.pi)), serr, time.time() - t0), flush=True)
    out['lattice'] = rows
    json.dump(out, open(sys.argv[1] if len(sys.argv) > 1 else '/tmp/t2_lll_window.json', 'w'), indent=1)
