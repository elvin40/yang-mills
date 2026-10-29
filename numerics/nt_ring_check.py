# NT: checks for nt_ring.py: (a) cumulant formula vs brute-force Isserlis on a small random Gaussian; (b) more configs, rational random
import itertools, random, numpy as np
from fractions import Fraction as Fr
import importlib.util, sys, os
spec = importlib.util.spec_from_file_location('r', os.path.join(os.path.dirname(__file__), 'nt_ring.py'))

# (a) Q_i = z^T M_i z, z ~ N(0, C), dim 3; compare 2^{n-1} sum_cyc tr(M C ...) with moments->cumulants via Isserlis
rng = np.random.default_rng(1)
d = 3
Araw = rng.normal(size=(d, d)); C = Araw @ Araw.T
Ms = [(lambda B: B + B.T)(rng.normal(size=(d, d))) for _ in range(4)]
def pairings(idx):
    if not idx: yield []; return
    a = idx[0]
    for k in range(1, len(idx)):
        rest = idx[1:k] + idx[k + 1:]
        for p in pairings(rest): yield [(a, idx[k])] + p
def moment(S):  # E prod_{i in S} Q_i
    tot = 0.0
    for ids in itertools.product(range(d), repeat=2 * len(S)):
        w = 1.0
        for t, i in enumerate(S): w *= Ms[i][ids[2 * t], ids[2 * t + 1]]
        if w == 0: continue
        tot += w * sum(np.prod([C[ids[a], ids[b]] for a, b in p]) for p in pairings(list(range(2 * len(S)))))
    return tot
def partitions(s):
    if not s: yield []; return
    f, rest = s[0], s[1:]
    for p in partitions(rest):
        for k in range(len(p)): yield p[:k] + [[f] + p[k]] + p[k + 1:]
        yield [[f]] + p
from math import factorial
def cumulant(S):
    return sum((-1)**(len(p) - 1) * factorial(len(p) - 1) * np.prod([moment(b) for b in p]) for p in partitions(list(S)))
def formula(S):
    n = len(S); tot = 0
    for perm in itertools.permutations(S[1:]):
        cyc = (S[0],) + perm; M = np.eye(d)
        for i in cyc: M = M @ Ms[i] @ C
        tot += np.trace(M)
    return 2**(n - 1) * tot
for S in [(0, 1), (0, 1, 2), (0, 1, 2, 3)]:
    print('n=%d brute %.6f formula %.6f' % (len(S), cumulant(S), formula(S)))

# (b) random integer configurations: 3pt (expect 0 if the helicity argument holds) and 4pt sign/size
sys.path.insert(0, os.path.dirname(__file__))
import contextlib, io
with contextlib.redirect_stdout(io.StringIO()):
    import nt_ring as R
random.seed(0)
def rp(): return tuple(random.randint(-4, 4) for _ in range(4))
z3 = 0; vals4 = []
for t in range(40):
    p = [rp() for _ in range(3)]
    if len(set(p)) < 3: continue
    z3 += (R.kappa(p) != 0)
for t in range(40):
    p = [rp() for _ in range(4)]
    if len(set(p)) < 4: continue
    vals4.append(R.kappa(p))
print('3pt nonzero count among random configs:', z3)
print('4pt: n=%d, positive %d, zero %d, negative %d' % (len(vals4), sum(v > 0 for v in vals4), sum(v == 0 for v in vals4), sum(v < 0 for v in vals4)))

# (c) chirality: with F^pm = (F +- *F)/2, <F^+ F^+>(x) = <F^- F^->(x) = 0 at x != 0 (Euclidean), so O = (F^+)^2 + (F^-)^2 rings of odd length vanish
import numpy as np
eps = np.zeros((4,) * 4)
for p in itertools.permutations(range(4)):
    eps[p] = np.linalg.det(np.eye(4)[list(p)])
def full(x):  # <F_{mn}(x) F_{rs}(0)> as 4x4x4x4
    Dp = R.D(x); T = np.zeros((4,) * 4)
    for A, (m, n) in enumerate(R.planes):
        for B, (r, s) in enumerate(R.planes):
            v = float(Dp[A][B])
            for (a, b, sa) in [(m, n, 1), (n, m, -1)]:
                for (c, e, sb) in [(r, s, 1), (s, r, -1)]:
                    T[a, b, c, e] = sa * sb * v
    return T
for x in [(1, 0, 0, 0), (1, 2, -1, 3)]:
    T = full(x)
    dual = lambda T, slot: 0.5 * (np.einsum('abcd,mnab->mncd', T, eps) if slot == 0 else np.einsum('abcd,mncd->abmn', T, eps))
    Pp = lambda T, slot, s: 0.5 * (T + s * dual(T, slot))
    for s1, s2, lab in [(1, 1, '++'), (-1, -1, '--'), (1, -1, '+-')]:
        print(x, lab, 'max |<F F>| =', np.abs(Pp(Pp(T, 0, s1), 1, s2)).max())

# (d) margin near the unit square: vertices moved by up to theta in sup norm (rational grid), min kappa / kappa(square)
sq = [(0, 0, 0, 0), (1, 0, 0, 0), (1, 1, 0, 0), (0, 1, 0, 0)]
k0 = R.kappa(sq)
for theta in [Fr(1, 50), Fr(1, 20), Fr(1, 10)]:
    mn = None
    for t in range(150):
        p = [tuple(c + theta * Fr(random.randint(-10, 10), 10) for c in v) for v in sq]
        r = R.kappa(p) / k0
        mn = r if mn is None or r < mn else mn
    print('theta=%s: min kappa/kappa(square) over 150 samples = %.4f' % (theta, float(mn)))
