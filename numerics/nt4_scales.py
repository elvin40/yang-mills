# NT4: scale content of the free ring kappa_4 at the unit square (d = 1), heat-kernel decomposition
# G_w(x) = 4 pi^2 * int w(t) (4 pi t)^-2 exp(-|x|^2/4t) dt  (w = 1 gives 1/|x|^2, kappa_4 = 27648)
import itertools, math
import numpy as np
from scipy.integrate import quad

planes = [(m, n) for m in range(4) for n in range(m + 1, 4)]
dl = lambda a, b: 1.0 if a == b else 0.0
SQ = [np.array(p, float) for p in [(0, 0, 0, 0), (1, 0, 0, 0), (1, 1, 0, 0), (0, 1, 0, 0)]]

def ab(s, w):  # Hessian of G_w at |x|^2 = s is a*delta + b*x x^T
    f = lambda y, k: (lambda t: w(t) * 4 * math.pi**2 * (4 * math.pi * t) ** -2 * math.exp(-s / (4 * t)) * (-1 / (2 * t) if k == 0 else 1 / (4 * t * t)) * t)(math.exp(y))
    return [quad(f, -30, 30, args=(k,), limit=400, epsabs=0, epsrel=1e-11)[0] for k in (0, 1)]

def D(x, cache, w):
    s = float(x @ x)
    if s not in cache: cache[s] = ab(s, w)
    a, b = cache[s]
    H = a * np.eye(4) + b * np.outer(x, x)
    M = np.zeros((6, 6))
    for A, (m, n) in enumerate(planes):
        for B, (r, q) in enumerate(planes):
            M[A, B] = -(H[m, r] * dl(n, q) - H[m, q] * dl(n, r) - H[n, r] * dl(m, q) + H[n, q] * dl(m, r))
    return M

def kappa4(w):
    cache = {}
    Dm = {(i, j): D(SQ[i] - SQ[j], cache, w) for i in range(4) for j in range(4) if i != j}
    tot = 0.0
    for perm in itertools.permutations(range(1, 4)):
        c = (0,) + perm
        M = np.eye(6)
        for a in range(4): M = M @ Dm[(c[a], c[(a + 1) % 4])]
        tot += np.trace(M)
    return 8 * tot

k0 = kappa4(lambda t: 1.0)
print(f'(a) w = 1: kappa_4(square) = {k0:.6f}  (exact 27648)')
print('(b) fine scales removed, w = 1{sqrt t >= lam}: relative change')
for lam in [0.4, 0.2, 0.1, 0.05]:
    print(f'    lam = {lam}: {kappa4(lambda t, l=lam: 1.0 if t >= l * l else 0.0) / k0 - 1:.3e}')
print('(c) coarse scales removed, w = 1{sqrt t <= Lam}: relative change, and times Lam^4')
for Lam in [2, 4, 8, 16, 32]:
    r = kappa4(lambda t, l=Lam: 1.0 if t <= l * l else 0.0) / k0 - 1
    print(f'    Lam = {Lam}: {r:.3e}   x Lam^4 = {r * Lam**4:.4f}')
b2 = 22 / (24 * math.pi**2)  # 2 b_0 for SU(2): d(1/g^2)/d ln(mu) = 2 b_0
print(f'(d) running weight w = g^2(lambda)/g_k^2, 1/g^2(lambda) = u_k - {b2:.5f} ln(lambda), frozen below u_k/2; relative change, and times u_k')
for uk in [10, 20, 40, 80, 160]:
    def w(t, uk=uk):
        u = max(uk - b2 * 0.5 * math.log(t), uk / 2)
        return uk / u
    r = kappa4(w) / k0 - 1
    print(f'    u_k = {uk}: {r:.4e}   x u_k = {r * uk:.4f}')
