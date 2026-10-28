# Step B checks: (A) log-L fits of first-step beta_1(L) from umk results; (B) 2D Harper heat-trace phi^2 coefficient vs continuum
import json, glob, numpy as np
from scipy.linalg import eigvalsh
c = 44/(12*np.pi**2)
R = {}
for f in glob.glob('results/umk_L*_trans.json'):
    d = json.load(open(f)); L, Ng, p = d['L'], d['Ng'], d['p']
    if L % 2 == 0 or d.get('colors') not in (None, [0, 1, 2]): continue
    k = (L, round(L*p, 3))
    if k not in R or Ng > R[k][0]: R[k] = (Ng, d['beta'])
print('L  Lp  Ng  beta  beta-clogL')
for k in sorted(R): print(k[0], k[1], R[k][0], round(R[k][1], 4), round(R[k][1]-c*np.log(k[0]), 4))
Ls, b0 = [], []
for L in sorted({k[0] for k in R}):
    if (L, 0.5) in R and (L, 1.0) in R:
        Ls.append(L); b0.append((4*R[(L, 0.5)][1]-R[(L, 1.0)][1])/3)
Ls, b0 = np.array(Ls), np.array(b0)
print('Lp->0 extrapolated:', dict(zip(Ls.tolist(), b0.round(4).tolist())))
print('local slopes d beta/d log L:', (np.diff(b0)/np.diff(np.log(Ls))).round(3))
for name, cols in [('a+s logL', [np.ones_like(b0), np.log(Ls)]),
                   ('a+s logL+d/L^2', [np.ones_like(b0), np.log(Ls), Ls**-2.]),
                   ('a+s logL+d logL^2/L^2', [np.ones_like(b0), np.log(Ls), np.log(Ls)**2/Ls**2])]:
    X = np.array(cols).T; s = np.linalg.lstsq(X, b0, rcond=None)[0]
    print(name, 'slope', round(s[1], 3), 'vs c', round(c, 4), 'resid', np.abs(X@s-b0).max().round(4))

# (B) per-site heat trace of the 2D lattice magnetic Laplacian (Harper), Landau gauge, flux phi=2pi q/N
N = 3000
def trace(q, ts):
    phi = 2*np.pi*q/N; out = np.zeros(len(ts))
    for n in range(q):
        H = np.diag(4-2*np.cos(2*np.pi*n/N+phi*np.arange(N))).astype(complex)
        i = np.arange(N); H[i, (i+1) % N] -= 1; H[(i+1) % N, i] -= 1
        E = eigvalsh(H); out += np.exp(-np.outer(ts, E)).sum(1)
    return out/(N*q), phi
ts = np.array([2, 5, 10, 20, 40, 80.])
free1 = np.exp(-np.outer(ts, 2-2*np.cos(2*np.pi*np.arange(N)/N))).mean(1)
T0 = free1**2
(T1, p1), (T2, p2) = trace(1, ts), trace(2, ts)
# T-T0 = a phi^2 + b phi^4 from q=1,2
a = ((T1-T0)*p2**4 - (T2-T0)*p1**4)/(p1**2*p2**2*(p2**2-p1**2))
cont = -ts/(24*np.pi)
print('t, lattice phi^2 coef, continuum -t/(24pi), ratio-1, t*(ratio-1)')
for t, x, y in zip(ts, a, cont): print(t, round(x, 6), round(y, 6), round(x/y-1, 5), round(t*(x/y-1), 4))

# (C) scalar (L-LL)(a) in heat-trace form: 4 pi sinh(tau) T(phi, tau/phi)/phi -> 1 as phi -> 0
print('q, phi, tau, ratio-1')
for q in (1, 2, 4, 8):
    phi = 2*np.pi*q/N; taus = np.array([0.5, 1., 2.])
    T, _ = trace(q, taus/phi)
    for tau, x in zip(taus, T): print(q, round(phi, 5), tau, round(4*np.pi*np.sinh(tau)*x/phi-1, 6))
