# SOURCES_L1_A check: dressed one-step average at U=1 equals Q_str for axial and symmetric families (d=2, abelian).
# Also: Q_k Q_k^* lower bound for the dressed k-step average Q_str^k (field normalization, scaled norms).
import itertools, numpy as np
rng = np.random.default_rng(0)
d, L = 2, 3

def paths(y, x, fam):
    # monotone lattice paths y -> x as lists of (point, mu, sign); axial = mu 0 first, then mu 1
    steps = []
    for mu in range(d):
        s = int(np.sign(x[mu] - y[mu])); steps += [(mu, s)] * abs(x[mu] - y[mu])
    orders = [steps] if fam == 'ax' else sorted(set(itertools.permutations(steps)))
    out = []
    for o in orders:
        p, cur = [], list(y)
        for mu, s in o:
            p.append((tuple(cur), mu, s)); cur[mu] += s
        out.append(p)
    return out

def lineint(A, path, N):
    t = 0.0
    for (pt, mu, s) in path:
        if s > 0: t += A[mu][pt[0] % N, pt[1] % N]
        else:
            q = list(pt); q[mu] -= 1; t -= A[mu][q[0] % N, q[1] % N]
    return t

def one_step(A, N, fam):
    # returns (Q_str A, Q_G A, r_G(A)) on the coarse lattice; block B(y) = y + {-1,0,1}^2, centres y = L*Y + 1
    n = N // L
    off = list(itertools.product(range(-(L//2), L//2 + 1), repeat=d))
    r = np.zeros((n, n)); Qs = np.zeros((d, n, n)); QG = np.zeros((d, n, n))
    for Y in itertools.product(range(n), repeat=d):
        y = tuple(L * Yi + L // 2 for Yi in Y)
        r[Y] = np.mean([np.mean([lineint(A, p, N) for p in paths(y, tuple(y[i] + o[i] for i in range(d)), fam)]) for o in off])
    for mu in range(d):
        for Y in itertools.product(range(n), repeat=d):
            y = tuple(L * Yi + L // 2 for Yi in Y); yp = list(y); yp[mu] += L; yp = tuple(yp)
            qs = qg = 0.0
            for o in off:
                x = tuple(y[i] + o[i] for i in range(d)); xp = list(x); xp[mu] += L; xp = tuple(xp)
                seg = [(tuple(x[i] + (j if i == mu else 0) for i in range(d)), mu, 1) for j in range(L)]
                s = lineint(A, seg, N)
                qs += s
                qg += np.mean([lineint(A, p, N) for p in paths(y, x, fam)]) + s - np.mean([lineint(A, p, N) for p in paths(yp, xp, fam)])
            Qs[mu][Y] = qs / L**d; QG[mu][Y] = qg / L**d
    return Qs, QG, r

N = 3 * L
A = [rng.standard_normal((N, N)) for _ in range(d)]
for fam in ['ax', 'sym']:
    Qs, QG, r = one_step(A, N, fam)
    Dr = np.array([np.roll(r, -1, axis=mu) - r for mu in range(d)])
    print(fam, 'max|Q_G - (Q_str - D r)| =', np.abs(QG - (Qs - Dr)).max(), ' max|dressed - Q_str| =', np.abs((QG + Dr) - Qs).max())
    lam = rng.standard_normal((N, N))
    Dl = [np.roll(lam, -1, axis=mu) - lam for mu in range(d)]
    Qs2, QG2, r2 = one_step(Dl, N, fam)
    n = N // L; cen = lam[L//2::L, L//2::L][:n, :n]
    bav = sum(np.roll(np.roll(lam, -a, 0), -b, 1) for a in (-1, 0, 1) for b in (-1, 0, 1))[L//2::L, L//2::L][:n, :n] / L**d
    Dc = np.array([np.roll(cen, -1, axis=mu) - cen for mu in range(d)]); Db = np.array([np.roll(bav, -1, axis=mu) - bav for mu in range(d)])
    Dr2 = np.array([np.roll(r2, -1, axis=mu) - r2 for mu in range(d)])
    print(fam, 'Q_G(D lam) = D(lam at centres):', np.abs(QG2 - Dc).max(), '  dressed(D lam) = D(block avg):', np.abs(QG2 + Dr2 - Db).max())
