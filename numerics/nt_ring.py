# NT: exact (Fraction) free-Maxwell ring cumulants of O = sum_{mu<nu} F_{mu nu}^2, one color, G = 1/x^2 (1/(4 pi^2) dropped)
import itertools
from fractions import Fraction as Fr
planes = [(m, n) for m in range(4) for n in range(m + 1, 4)]
dl = lambda a, b: 1 if a == b else 0

def d2G(x, m, r):  # d_m d_r (1/|x|^2)
    s = sum(c * c for c in x)
    return Fr(-2 * dl(m, r), s**2) + Fr(8 * x[m] * x[r], s**3)

def D(x):  # <F_{mn}(x) F_{rs}(0)>
    M = [[0] * 6 for _ in range(6)]
    for A, (m, n) in enumerate(planes):
        for B, (r, s) in enumerate(planes):
            M[A][B] = -(d2G(x, m, r) * dl(n, s) - d2G(x, m, s) * dl(n, r) - d2G(x, n, r) * dl(m, s) + d2G(x, n, s) * dl(m, r))
    return M

mul = lambda P, Q: [[sum(P[i][k] * Q[k][j] for k in range(6)) for j in range(6)] for i in range(6)]

def kappa(pts):  # joint cumulant of O(x_1..x_n), Gaussian F: 2^{n-1} sum_{orderings of 2..n} tr prod D
    n = len(pts)
    Dm = {(i, j): D([a - b for a, b in zip(pts[i], pts[j])]) for i in range(n) for j in range(n) if i != j}
    tot = Fr(0)
    for perm in itertools.permutations(range(1, n)):
        cyc = (0,) + perm
        M = Dm[(cyc[0], cyc[1])]
        for a in range(1, n):
            M = mul(M, Dm[(cyc[a], cyc[(a + 1) % n])])
        tot += sum(M[i][i] for i in range(6))
    return 2**(n - 1) * tot

configs = {
    '2pt |x|=1': [(0, 0, 0, 0), (1, 0, 0, 0)],
    '2pt |x|=2 (expect 2^-8 of above)': [(0, 0, 0, 0), (2, 0, 0, 0)],
    '3pt right isoceles': [(0, 0, 0, 0), (1, 0, 0, 0), (0, 1, 0, 0)],
    '3pt collinear 0,1,2': [(0, 0, 0, 0), (1, 0, 0, 0), (2, 0, 0, 0)],
    '3pt (0,e0,e1+e2)': [(0, 0, 0, 0), (1, 0, 0, 0), (0, 1, 1, 0)],
    '4pt unit square': [(0, 0, 0, 0), (1, 0, 0, 0), (1, 1, 0, 0), (0, 1, 0, 0)],
    '4pt cube corners (tetrahedron)': [(1, 1, 1, 0), (1, -1, -1, 0), (-1, 1, -1, 0), (-1, -1, 1, 0)],
    '4pt collinear 0,1,2,3': [(0, 0, 0, 0), (1, 0, 0, 0), (2, 0, 0, 0), (3, 0, 0, 0)],
    '4pt 4-simplex-ish e0,e1,e2,e3': [(1, 0, 0, 0), (0, 1, 0, 0), (0, 0, 1, 0), (0, 0, 0, 1)],
    '4pt two far pairs (0,e0) (10e1, 10e1+e0)': [(0, 0, 0, 0), (1, 0, 0, 0), (0, 10, 0, 0), (1, 10, 0, 0)],
}
for name, pts in configs.items():
    k = kappa(pts)
    print(f'{name}: kappa = {k} ~ {float(k):.6g}')
