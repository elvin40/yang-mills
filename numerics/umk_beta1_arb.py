# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
"""beta_1(0) of one Balaban step by umklapp sums in certified arithmetic: port of umk_beta1.py (formulas ../notes/UMK_BETA1.md)
to python-flint arb (outward-rounded balls). Same quantity as umk_beta1.py: the shifted, symmetry-reduced K grid sum at fixed Ng, p.
- Constants G, G2, J1, J2, E1, E2, H0, H1, T: exact rationals from truncated Taylor polynomials of the quaternion maps (no JAX).
- Averaging profile: x87 long-double sums (the combinatorics is too large for arb) with a rigorous a priori rounding bound
  |fl - exact| <= 2 gamma_{2D} M, M = the same sums with every leaf and operation replaced by its absolute value (run in float,
  all terms >= 0), D = max sequential depth (bin count + flushes + pair sum + term depth). Leaves e^{ip s} come from an arb table.
- Coarse symbols, fine symbols, the per-sector Schur/trace algebra and the K sum: arb balls throughout.
- Colour reduction: A, E, S are colour-scalar (asserted exactly from the rational constants), so the 12x12 / 15x15 algebra runs on
  4x4 / 5x5 colour blocks.
Usage: python umk_beta1_arb.py L Ng P Q [--workers 4] [--check m0,m1,m2,m3]   (p = P/Q exactly; trans wave, SU(2), all colours)
  -> results/umk_arb_L{L}_Ng{Ng}_p{P}_{Q}.json (skip-if-done). Per-worker checkpoints results/*.w{i}.partial.json every 10 min
  hold the finished per-K balls (exact man/exp) and are resumed after a kill.
"""
import sys, os, json, time, itertools
from fractions import Fraction as Fr
import numpy as np
from flint import arb, acb, acb_mat, fmpq, fmpz, ctx

ctx.prec = 64
PLANES = list(itertools.combinations(range(4), 2))

# ---------- exact constants (truncated polynomials, Fraction coefficients) ----------
def padd(*ps):
    out = {}
    for p in ps:
        for m, c in p.items():
            out[m] = out.get(m, 0) + c
    return {m: c for m, c in out.items() if c != 0}

def pmul(p, q, keep):
    out = {}
    for m1, c1 in p.items():
        for m2, c2 in q.items():
            m = tuple(a + b for a, b in zip(m1, m2))
            if keep(m): out[m] = out.get(m, 0) + c1 * c2
    return {m: c for m, c in out.items() if c != 0}

psc = lambda c, p: {m: c * v for m, v in p.items() if c * v != 0}
pconst = lambda c, nv: {(0,) * nv: Fr(c)} if c != 0 else {}
pvar = lambda i, nv: {tuple(int(k == i) for k in range(nv)): Fr(1)}

def qmul(a, b, keep):
    a0, av = a[0], a[1:]; b0, bv = b[0], b[1:]
    m = lambda x, y: pmul(x, y, keep)
    cr = [padd(m(av[1], bv[2]), psc(-1, m(av[2], bv[1]))), padd(m(av[2], bv[0]), psc(-1, m(av[0], bv[2]))),
          padd(m(av[0], bv[1]), psc(-1, m(av[1], bv[0])))]
    return [padd(m(a0, b0), *[psc(-1, m(x, y)) for x, y in zip(av, bv)])] + \
           [padd(m(a0, bv[i]), m(b0, av[i]), psc(-1, cr[i])) for i in range(3)]

qinv = lambda a: [a[0]] + [psc(-1, x) for x in a[1:]]

def pseries(s, coefs, keep, nv):
    out, pw = {}, pconst(1, nv)
    for c in coefs:
        out = padd(out, psc(Fr(c), pw)); pw = pmul(pw, s, keep)
    return out

def qexp(B, keep, nv):  # exp(i B.sigma/2): cos(|B|/2), sin(|B|/2)/|B| as series in s = |B|^2 (exact through s^3)
    s = padd(*[pmul(x, x, keep) for x in B])
    c = pseries(s, [1, Fr(-1, 8), Fr(1, 384), Fr(-1, 46080)], keep, nv)
    v = pseries(s, [Fr(1, 2), Fr(-1, 48), Fr(1, 3840), Fr(-1, 645120)], keep, nv)
    return [c] + [pmul(v, x, keep) for x in B]

def qlog(q, keep, nv):  # (1/i) log: g v with g = 2 atan(|v|/q0)/|v| = (2/q0) sum_n (-1)^n (s/q0^2)^n/(2n+1)
    q0, v = q[0], q[1:]
    s = padd(*[pmul(x, x, keep) for x in v])
    iq = pseries(padd(pconst(1, nv), psc(-1, q0)), [1] * 6, keep, nv)  # 1/q0, 1 - q0 has no constant term
    iq2 = pmul(iq, iq, keep)
    g = psc(2, pmul(iq, pseries(pmul(s, iq2, keep), [1, Fr(-1, 3), Fr(1, 5), Fr(-1, 7)], keep, nv), keep))
    return [pmul(g, x, keep) for x in v]

def coef(p, mono):
    return p.get(tuple(mono), Fr(0))

def consts_exact():
    """Exact versions of umk_beta1.consts(): numpy object arrays of Fraction."""
    # J(f) = d/dY qlog(qexp(Y) qexp(f e3)), E(f) = d/dY qlog(qexp(f e3 + Y) qexp(-f e3)) at Y = 0; vars (y0, y1, y2, f)
    nv = 4; keep = lambda m: sum(m[:3]) <= 1 and m[3] <= 2
    Y = [pvar(i, nv) for i in range(3)]; f = pvar(3, nv)
    e3 = lambda x: [{}, {}, x]
    Jq = qlog(qmul(qexp(Y, keep, nv), qexp(e3(f), keep, nv), keep), keep, nv)
    Eq = qlog(qmul(qexp([Y[0], Y[1], padd(Y[2], f)], keep, nv), qexp(e3(psc(-1, f)), keep, nv), keep), keep, nv)
    jac = lambda Q, n: np.array([[Fr(int(np.prod(range(1, n + 1)))) * coef(Q[i], [int(k == j) for k in range(3)] + [n])
                                  for j in range(3)] for i in range(3)], dtype=object)
    out = dict(J1=jac(Jq, 1), J2=jac(Jq, 2), E1=jac(Eq, 1), E2=jac(Eq, 2))
    # rot(qexp(a e3)): column b = image of e_b under q (.) q^-1; G = R'(0), G2 = R''(0)
    keep1 = lambda m: m[0] <= 2
    q = qexp(e3(pvar(0, 1)), keep1, 1)
    R1, R2 = np.zeros((3, 3), dtype=object), np.zeros((3, 3), dtype=object)
    for b in range(3):
        e = [{}, {}, {}, {}]; e[b + 1] = pconst(1, 1)
        r = qmul(qmul(q, e, keep1), qinv(q), keep1)
        for i in range(3): R1[i, b] = coef(r[i + 1], [1]); R2[i, b] = 2 * coef(r[i + 1], [2])
    out.update(G=R1, G2=R2)
    # plaquette action 1 - Re P, U_j = qexp(b_j) qexp(a_j e3); vars b (12), a (4); bigraded truncation deg_b, deg_a <= 2
    nv = 16; keep = lambda m: sum(m[:12]) <= 2 and sum(m[12:]) <= 2
    U = [qmul(qexp([pvar(3 * j + i, nv) for i in range(3)], keep, nv), qexp(e3(pvar(12 + j, nv)), keep, nv), keep)
         for j in range(4)]
    P = qmul(qmul(U[0], U[1], keep), qmul(qinv(U[2]), qinv(U[3]), keep), keep)
    S = psc(-1, P[0])
    def d2b(amono):  # Hessian in b of the coefficient of a^amono
        Hm = np.zeros((12, 12), dtype=object)
        for i in range(12):
            for k in range(12):
                m = [0] * 12; m[i] += 1; m[k] += 1
                Hm[i, k] = coef(S, m + list(amono)) * (2 if i == k else 1)
        return Hm
    e4 = lambda *js: [sum(int(j == t) for j in js) for t in range(4)]
    out["H0"] = d2b([0] * 4)
    out["H1"] = np.array([d2b(e4(j)) for j in range(4)])
    T = np.zeros((4, 4, 12, 12), dtype=object)
    for j, jp in itertools.product(range(4), repeat=2):
        T[j, jp] = d2b(e4(j, jp)) * (2 if j == jp else 1)
    out["T"] = T
    return out

# ---------- arb helpers ----------
def A(x):
    """Fraction / int / float (exact) -> acb."""
    if isinstance(x, Fr): return acb(arb(fmpq(x.numerator, x.denominator)))
    return acb(x)

def eix(t):  # e^{i t}, t arb
    return acb(0, t).exp()

def amat(X):  # 2d object array of acb -> acb_mat
    X = np.asarray(X, dtype=object); return acb_mat(X.shape[0], X.shape[1], [A(v) if not isinstance(v, acb) else v for v in X.ravel()])

H = lambda M: M.conjugate().transpose()
tr = lambda M: sum((M[i, i] for i in range(M.nrows())), acb(0))

def ball_dump(x):
    """arb -> exact [mid man, mid exp, rad man, rad exp] (strings for the big ints)."""
    mm, me = x.mid().man_exp(); rm, re_ = x.rad().man_exp()
    return [str(mm), str(me), str(rm), str(re_)]

def ball_load(v):
    mm, me, rm, re_ = (int(t) for t in v)
    ex = lambda m, e: arb(fmpq(m * 2**e) if e >= 0 else fmpq(m, 2**-e))  # exact: <= 64-bit mantissa
    return ex(mm, me) + arb(0, ex(rm, re_))

# ---------- trigonometric-polynomial symbols: dict m (4-tuple of ints) -> object array of acb ----------
def tp_add(*ps):
    out = {}
    for p in ps:
        for m, C in p.items(): out[m] = out[m] + C if m in out else C.copy()
    return out

def tp_mul(P, Q):
    out = {}
    for m1, C1 in P.items():
        for m2, C2 in Q.items():
            m = tuple(a + b for a, b in zip(m1, m2)); C = np.dot(C1, C2)
            out[m] = out[m] + C if m in out else C
    return out

def tp_H(P):
    return {tuple(-a for a in m): np.vectorize(lambda z: z.conjugate(), otypes=[object])(C).T for m, C in P.items()}

def tp_scale(c, P): return {m: C * c for m, C in P.items()}

def tp_shift(P, ph):
    """Symbol at k + q: multiply the coefficient of e^{ik.m} by e^{iq.m}; ph[mu] = e^{i q_mu} (acb), integer powers."""
    out = {}
    for m, C in P.items():
        f = acb(1)
        for mu, e in enumerate(m):
            if e: f *= ph[mu]**e
        out[m] = C * f
    return out

def zeros_obj(*shape):
    Z = np.empty(shape, dtype=object); Z.ravel()[:] = [acb(0)] * Z.size; return Z

def hess_tp(q_ph, blocks):
    """umk_beta1.hess_sym as a trig polynomial: sum_planes sum_jj' e^{-i(k+q).o_j} h_jj' e^{ik.o_j'} (rows (d,a), cols (e,b))."""
    out = {}
    for (mu, nu), h in zip(PLANES, blocks):
        dirs = (mu, nu, mu, nu); offs = np.zeros((4, 4), int); offs[1, mu] = 1; offs[2, nu] = 1
        hr = h.reshape(4, 3, 4, 3)
        for j, i in itertools.product(range(4), repeat=2):
            m = tuple(offs[i] - offs[j]); C = zeros_obj(12, 12)
            f = acb(1)
            for ax in range(4):
                if offs[j, ax]: f *= q_ph[ax].conjugate()**int(offs[j, ax])
            C[3 * dirs[j]:3 * dirs[j] + 3, 3 * dirs[i]:3 * dirs[i] + 3] = hr[j, :, i, :] * f
            out = tp_add(out, {m: C})
    return out

def d0_tp():
    P = {(0,) * 4: zeros_obj(12, 3)}
    for mu in range(4):
        P[(0,) * 4][3 * mu:3 * mu + 3] = np.diag([acb(1)] * 3).astype(object) + zeros_obj(3, 3)
        m = tuple(int(k == mu) for k in range(4)); C = zeros_obj(12, 3)
        C[3 * mu:3 * mu + 3] = np.diag([acb(-1)] * 3).astype(object) + zeros_obj(3, 3); P[m] = C
    return P

def dsym_tp(cf, M):
    P = {}
    for mu in range(4):
        if cf[mu] != 0:
            C = zeros_obj(12, 3); C[3 * mu:3 * mu + 3] = M * cf[mu]; P[tuple(int(k == mu) for k in range(4))] = C
    return P

def cblock(X, al, be, nr, nc):
    """Colour block (al, be): rows al::3, cols be::3 of an (3 nr) x (3 nc) object array."""
    return X[al::3, be::3][:nr, :nc]

def compile_block(P, al, be, nr, nc, rowsel=None):
    """Trig polynomial -> list of (m, acb_mat) for colour block (al, be); drops exactly-zero coefficients. rowsel picks rows of the block."""
    out = []
    for m, C in P.items():
        B = cblock(C, al, be, nr, nc)
        if rowsel is not None: B = B[rowsel]
        if any(not (z == 0) for z in B.ravel()): out.append((m, amat(B)))
    return out

def is_zero_tp(P): return all(all(z == 0 for z in C.ravel()) for C in P.values())

# ---------- averaging profile: float sums with a rigorous rounding bound ----------
def path_arrays(d):
    dirs = [k for k in range(4) if d[k] != 0]; m = int(np.abs(d).sum())
    S, R, Gs = [], [], []
    for perm in itertools.permutations(dirs):
        z = np.zeros(4, int)
        for k in perm:
            sg = int(np.sign(d[k]))
            for _ in range(abs(d[k])):
                if sg > 0: S.append(z.copy()); z[k] += 1
                else: z[k] -= 1; S.append(z.copy())
                R.append(k); Gs.append(sg)
    n = max(1, len(R) // max(m, 1))
    return np.array(S, int).reshape(n, m, 4), np.array(R, int).reshape(n, m), np.array(Gs, float).reshape(n, m)

def prof_acc(L, mu, ztab, s0min, cvec, absmode):
    """Loop of umk_beta1.avg_profile. absmode: every leaf by its modulus, every subtraction by an addition (the rounding majorant).
    Returns acc (6, nb), Psi, max bin count + flushes, flushes."""
    h = (L - 1) // 2
    shape = [L] * 4; shape[mu] = 2 * L; nb = 4 * int(np.prod(shape))
    lid = lambda s, r: 4 * np.ravel_multi_index(tuple(np.moveaxis(s + h, -1, 0)), shape) + r
    if absmode:
        alpha = lambda s, r: LD(abs(cvec[r])) * np.ones(s.shape[:-1], LD)
        sgn, sub = np.abs, (lambda x, y: x + y)
    else:
        alpha = lambda s, r: cvec[r] * ztab[s[..., 0] - s0min]
        sgn, sub = (lambda g: g), (lambda x, y: x - y)
    e = np.zeros(4, int); e[mu] = L
    st = np.array([k * e // L for k in range(L)])
    acc = np.zeros((6, nb), LD if absmode else CLD); Psi = LD(0) if absmode else CLD(0)
    cnt = np.zeros(nb, np.int64); nfl = 0
    bi, bv, nbuf = [], [], 0
    def flush():  # per-bin sequential sums in long double (sort + reduceat; bincount is float64 only)
        nonlocal bi, bv, nbuf, cnt, nfl
        if not bi: return
        i = np.concatenate(bi); v = np.concatenate(bv, 1); cnt += np.bincount(i, minlength=nb); nfl += 1
        o = np.argsort(i, kind="stable"); iu, st0 = np.unique(i[o], return_index=True)
        acc[:, iu] += np.add.reduceat(v[:, o], st0, axis=1)
        bi, bv, nbuf = [], [], 0
    ac = sgn(-alpha(st[::-1], mu)); phic = ac.sum(); thc_r = np.cumsum(ac)
    for d in itertools.product(range(-h, L - h), repeat=4):
        d = np.array(d)
        s1, r1, g1 = path_arrays(d)
        s2, r2, g2 = (s1 + e)[:, ::-1], r1[:, ::-1], -g1[:, ::-1]
        seg = d + st
        n = s1.shape[0]; w = LD(1) / L**4 / n**2
        a1 = sgn(g1) * alpha(s1, r1); phi1 = a1.sum(1)
        a2 = sgn(g2) * alpha(s2, r2); phi2 = a2.sum(1)
        asg = alpha(seg, mu); phis = asg.sum()
        Phi = (phi1[:, None] + phis + phi2[None, :] + phic)[:, :, None]
        Psi += w * Phi.sum()
        parts = [
            (lid(s1, r1), sgn(g1)[:, None, :], sub(np.cumsum(a1, 1), (g1 > 0) * a1)[:, None, :], (1,)),
            (lid(seg, mu), np.ones((1, 1, L)), phi1[:, None, None] + sub(np.cumsum(asg), asg)[None, None, :], (0, 1)),
            (lid(s2, r2), sgn(g2)[None], (phi1 + phis)[:, None, None] + sub(np.cumsum(a2, 1), (g2 > 0) * a2)[None], (0,)),
            (lid(st[::-1], mu), sgn(-np.ones((1, 1, L))), (phi1[:, None] + phis + phi2[None, :])[:, :, None] + thc_r[None, None, :], (0, 1)),
        ]
        for links, sg, th, ax in parts:
            if links.size == 0: continue
            th = np.broadcast_to(th, (n, n, th.shape[-1])); ws = w * sg
            if absmode:
                q6 = [np.broadcast_to(ws, th.shape), ws * Phi, ws * th, ws * Phi**2, ws * Phi * th, ws * th**2]
            else:
                q6 = [np.broadcast_to(ws, th.shape), ws * Phi, ws * th, ws * (Phi.real**2 + Phi.imag**2),
                      ws * (Phi * np.conj(th)).real, ws * (th.real**2 + th.imag**2)]
            q6 = np.stack(q6).sum(axis=tuple(a + 1 for a in ax))
            bi.append(links.ravel()); bv.append(q6.reshape(6, -1)); nbuf += links.size
        if nbuf > 2_000_000: flush()
    flush()
    return acc, Psi, int(cnt.max()) + nfl, nfl

LD, CLD = np.longdouble, np.clongdouble
assert np.finfo(LD).nmant == 63, "profile sums need x87 80-bit long double (unit roundoff 2^-64)"

def gamma(n):
    u = arb(fmpq(1, 2**64)); return arb(n) * u / (1 - arb(n) * u)

def profile_cert(L, p, path):
    """Float accumulators of all four coarse directions + rigorous radii; cached in path (npz). Transverse wave c = e_1."""
    if os.path.exists(path):
        z = np.load(path); return {k: z[k] for k in z.files}
    h = (L - 1) // 2; s0min = -h - 1; s0max = 2 * L
    def ld(x):  # arb midpoint -> nearest-ish long double (error <= 2^-64 |x| + 2^-106)
        hi = float(x.mid()); return LD(hi) + LD(float((x - hi).mid()))
    with ctx.workprec(128):
        ztab = np.array([CLD(ld(eix(p * s).real)) + 1j * CLD(ld(eix(p * s).imag)) for s in range(s0min, s0max + 1)])
    cf = np.array([0., 1., 0., 0.])
    out = {}
    for mu in range(4):
        acc, Psi, D1, nfl = prof_acc(L, mu, ztab, s0min, cf, False)
        M, MPsi, D2, _ = prof_acc(L, mu, ztab, s0min, cf, True)
        term = 576 + 10 * L + 60
        D = max(D1, D2) + term; DPsi = L**4 + term
        f = lambda Dn: float((2 * gamma(2 * Dn) / (1 - gamma(2 * Dn))).upper()) * (1 + 2.0**-50)
        up = lambda x: np.asarray(x, np.float64) * (1 + 2.0**-48)  # long double -> double, rounded up
        out[f"acc{mu}"] = acc; out[f"rad{mu}"] = up(M * LD(f(D)))
        out[f"psi{mu}"] = np.array([Psi]); out[f"psirad{mu}"] = up([MPsi * LD(f(DPsi))])
        out[f"D{mu}"] = np.array([D, DPsi])
        print(f"profile mu={mu}: D={D}, max rad/|M| bound {f(D):.2e}, max rad {out[f'rad{mu}'].max():.2e}", flush=True)
    np.savez(path, **out)
    return out

def ld2arb(x):  # exact: long double = double hi + double lo
    hi = np.float64(x); return arb(float(hi)) + arb(float(np.float64(x - LD(hi))))

def ball_c(z, r):
    return acb(ld2arb(z.real) + arb(0, float(r)), ld2arb(z.imag) + arb(0, float(r)))

vball = np.frompyfunc(ball_c, 2, 1)
vconj = np.frompyfunc(lambda z: z.conjugate(), 1, 1)
vre = np.frompyfunc(lambda z: acb(z.real), 1, 1)
vabs2 = np.frompyfunc(lambda z: acb(z.real * z.real + z.imag * z.imag), 1, 1)

def profile_fields(L, mu, p, cvec, cons, pc):
    """Arb version of the final part of umk_beta1.avg_profile: dict key -> list of (F (4, *shape) object array, M 3x3 Fraction)."""
    h = (L - 1) // 2
    shape = [L] * 4; shape[mu] = 2 * L; nb = 4 * int(np.prod(shape))
    lid = lambda s, r: 4 * np.ravel_multi_index(tuple(np.moveaxis(s + h, -1, 0)), shape) + r
    acc, rad = pc[f"acc{mu}"], pc[f"rad{mu}"]
    S0, SF, ST, SFF, SFT, STT = (vball(acc[q], rad[q]) for q in range(6))
    Psi = ball_c(pc[f"psi{mu}"][0], pc[f"psirad{mu}"][0])
    e = np.zeros(4, int); e[mu] = L; st = np.array([k * e // L for k in range(L)])
    ind = zeros_obj(nb); ind[lid(st, mu)] = acb(1)
    thc = zeros_obj(nb); run = acb(0)
    for k in range(L):  # theta before link k of the straight path: sum_{i<k} alpha
        thc[lid(st[k], mu)] = run; run += cvec[mu] * eix(p * int(st[k][0]))
    P = Psi + thc
    I3 = np.eye(3, dtype=int).astype(object) * Fr(1)
    C = cons; half = acb(fmpq(1, 2))
    raw = {"0": [(S0 + ind, I3)],
           "+": [(half * Psi * S0, C["E1"]), (half * SF, C["J1"]), (half * (ST + P * ind), C["G"])],
           "-": [(half * Psi.conjugate() * S0, C["E1"]), (half * vconj(SF), C["J1"]), (half * (vconj(ST) + vconj(P) * ind), C["G"])],
           "2": [(half * acb(Psi.real * Psi.real + Psi.imag * Psi.imag) * S0, C["E2"]), (vre(Psi * vconj(SF)), np.dot(C["E1"], C["J1"])),
                 (vre(Psi * vconj(ST)), np.dot(C["E1"], C["G"])), (half * SFF, C["J2"]), (SFT, np.dot(C["J1"], C["G"])),
                 (half * (STT + vabs2(P) * ind), C["G2"])]}
    return {key: [(np.moveaxis(F.reshape(tuple(shape) + (4,)), -1, 0), M) for F, M in lst] for key, lst in raw.items()}

def colour_fields(fl):
    """Per key: dict (al, be) -> (index of unique combined field, sign); unique fields sum_f M_f[al, be] F_f."""
    fields, blocks = [], {}
    for al, be in itertools.product(range(3), repeat=2):
        v = tuple(M[al, be] for _, M in fl)
        if all(x == 0 for x in v): continue
        for idx, (w, _) in enumerate(fields):
            if w == v: blocks[(al, be)] = (idx, 1); break
            if w == tuple(-x for x in v): blocks[(al, be)] = (idx, -1); break
        else:
            F = sum((F * A(x) for (F, _), x in zip(fl, v) if x != 0), zeros_obj(*fl[0][0].shape))
            fields.append((v, F)); blocks[(al, be)] = (len(fields) - 1, 1)
    return [F for _, F in fields], blocks

# ---------- coarse symbols: q(k_l) = sum_z F(z) prod_a e^{i (K_a + 2 pi l_a / L)(z_a - h)} ----------
def phase_mat(L, theta0, smax):
    """L x smax: e^{i (theta0 + 2 pi l / L)(z - h)}; theta0 = (num/den) pi + p_extra as (fmpq, arb)."""
    h = (L - 1) // 2; q, pe = theta0
    return acb_mat(L, smax, [acb(0, arb.pi() * arb(q + fmpq(2 * l, L)) * (z - h) + pe * (z - h)).exp()
                             for l in range(L) for z in range(smax)])

def contract(X, axis, Phi):
    """Contract array axis (length = Phi.ncols()) with Phi (L x s): result axis length L, same position."""
    Y = np.moveaxis(X, axis, -1); sh = Y.shape
    M = acb_mat(int(np.prod(sh[:-1])), sh[-1], list(Y.ravel()))
    R = M * Phi.transpose()
    Z = np.empty(sh[:-1] + (Phi.nrows(),), dtype=object); Z.ravel()[:] = R.entries()
    return np.moveaxis(Z, -1, axis)

# ---------- per-sector algebra on colour blocks (UMK_BETA1.md section 4) ----------
class Sector:
    def __init__(self, n, r):
        z = lambda a, b: acb_mat(a, b)
        self.s1, self.s2, self.P1, self.Q1, self.PV, self.PR = z(r, r), z(r, r), z(r, r), z(r, r), z(r, r), z(r, r)
        self.t1a, self.t2a, self.X = acb(0), acb(0), {}

    def add(self, a1, a2, e1, e2, A2c, E2c, a, b, c, keys):
        a1i, a2i = a1.inv(), a2.inv()
        y1, y2 = a1i * H(e1), a2i * H(e2)
        self.s1 += e1 * y1; self.s2 += e2 * y2
        self.t1a += tr(a1i * A2c)
        self.P1 += H(y1) * (A2c * y1)
        if E2c is not None: self.Q1 += E2c * y1
        y1H, y2H = H(y1), H(y2)
        for al, be in keys:
            aab, bab, cab = a.get((al, be)), b.get((al, be)), c.get((al, be))
            aba, cba = a.get((be, al)), c.get((be, al))
            V = R = X = None
            if aab is not None:
                self.t2a += tr(a2i * aab * a1i * H(aab))
                ay1 = aab * y1; V = -ay1; X = y2H * ay1
            if bab is not None:
                V = bab if V is None else V + bab
                X = -(y2H * bab) if X is None else X - y2H * bab
            if cab is not None:
                X = -(cab * y1) if X is None else X - cab * y1
            if cba is not None: R = H(cba)
            if aba is not None: R = -(H(aba) * y2) if R is None else R - H(aba) * y2
            if V is not None: self.PV += H(V) * (a2i * V)
            if R is not None: self.PR += H(R) * (a1i * R)
            if X is not None: self.X[(al, be)] = self.X[(al, be)] + X if (al, be) in self.X else X

    def value(self, J):
        s1i, s2i = (J - self.s1).inv(), (J - self.s2).inv()
        t1 = self.t1a + tr(s1i * self.P1) - 2 * acb(tr(s1i * self.Q1).real)
        t2 = self.t2a + tr(s1i * self.PV) + tr(s2i * self.PR) + sum((tr(s2i * X * s1i * H(X)) for X in self.X.values()), acb(0))
        return (t1 - 2 * t2).real

# ---------- driver ----------
class UmkArb:
    def __init__(self, L, Ng, p, pfrac, pc):
        self.L, self.Ng, self.p, self.pfrac = L, Ng, p, pfrac
        cons = self.cons = consts_exact()
        for al, be in itertools.product(range(3), repeat=2):  # colour-scalar structure of A (exact)
            blk = cons["H0"][al::3, be::3]
            assert (all(x == 0 for x in blk.ravel()) if al != be else (blk == cons["H0"][0::3, 0::3]).all())
        c = [Fr(0), Fr(1), Fr(0), Fr(0)]  # transverse wave e_1 e^{ipx_0}
        self.cvec = cvec = [A(x) for x in c]
        ep = eix(p); pv_ph = [ep, acb(1), acb(1), acb(1)]; pm_ph = [ep.conjugate(), acb(1), acb(1), acb(1)]
        cA = lambda M: np.vectorize(A, otypes=[object])(M)
        G, G2 = cA(cons["G"]), cA(cons["G2"])
        # hess_blocks
        b0, bp, b2 = [], [], []
        for mu, nu in PLANES:
            dirs = (mu, nu, mu, nu); offs = np.zeros((4, 4), int); offs[1, mu] = 1; offs[2, nu] = 1
            Aj = [cvec[dirs[j]] * eix(p * int(offs[j, 0])) for j in range(4)]
            b0.append(cA(cons["H0"]))
            bp.append(sum((cA(cons["H1"][j]) * (Aj[j] * acb(fmpq(1, 2))) for j in range(4)), zeros_obj(12, 12)))
            b2.append(sum((cA(cons["T"][j, jp]) * acb((Aj[j] * Aj[jp].conjugate()).real * arb(fmpq(1, 2)))
                           for j in range(4) for jp in range(4)), zeros_obj(12, 12)))
        one = [acb(1)] * 4
        D = d0_tp(); D2 = tp_shift(D, pv_ph)
        half = acb(fmpq(-1, 2))
        Dp = lambda ph: tp_shift(dsym_tp([half * x for x in cvec], G), ph)
        Dm = lambda ph: tp_shift(dsym_tp([half * x.conjugate() for x in cvec], G), ph)
        Dpp = dsym_tp([half * (x.real * x.real + x.imag * x.imag) for x in cvec], G2)
        A1 = tp_add(hess_tp(one, b0), tp_mul(D, tp_H(D)))
        A2 = tp_shift(A1, pv_ph)
        a = tp_add(hess_tp(pv_ph, bp), tp_mul(Dp(one), tp_H(D)), tp_mul(D2, tp_H(Dm(pv_ph))))
        A2nd = tp_add(hess_tp(one, b2), tp_mul(Dpp, tp_H(D)), tp_mul(D, tp_H(Dpp)),
                      tp_scale(acb(2), tp_add(tp_mul(Dp(pm_ph), tp_H(Dp(pm_ph))), tp_mul(Dm(pv_ph), tp_H(Dm(pv_ph))))))
        s = acb(fmpq(1, L * L)); self.s = s
        # aux rows (3 x 12) of the E-type matrices, times s
        aux = {"E1": tp_scale(s, tp_H(D)), "E2": tp_scale(s, tp_H(D2)), "c": tp_scale(s, tp_H(Dm(pv_ph))),
               "bb": tp_scale(s, tp_H(Dp(one))), "E2nd": tp_scale(s, tp_H(Dpp))}
        # ghost (3x3)
        gG1 = tp_mul(tp_H(D), D); gG2 = tp_shift(gG1, pv_ph)
        gga = tp_add(tp_mul(tp_H(Dm(pv_ph)), D), tp_mul(tp_H(D2), Dp(one)))
        gG2nd = tp_add(tp_mul(tp_H(Dpp), D), tp_mul(tp_H(D), Dpp),
                       tp_scale(acb(2), tp_add(tp_mul(tp_H(Dp(one)), Dp(one)), tp_mul(tp_H(Dm(one)), Dm(one)))))
        # compile colour blocks
        C3 = list(itertools.product(range(3), repeat=2))
        self.bA1 = compile_block(A1, 0, 0, 4, 4); self.bA2 = compile_block(A2, 0, 0, 4, 4)
        for X in (A1, gG1):
            for al, be in C3:
                assert len(compile_block(X, al, be, 4, 4) if X is A1 else compile_block(X, al, be, 1, 1)) == 0 or al == be
        self.ba = {k: v for k in C3 if (v := compile_block(a, *k, 4, 4))}
        self.bA2c = [compile_block(A2nd, al, al, 4, 4) for al in range(3)]
        self.baux = {key: {k: v for k in C3 if (v := compile_block(P, *k, 1, 4))} for key, P in aux.items()}
        self.gA1 = compile_block(gG1, 0, 0, 1, 1); self.gA2 = compile_block(gG2, 0, 0, 1, 1)
        self.ga = {k: v for k in C3 if (v := compile_block(gga, *k, 1, 1))}
        self.gA2c = [compile_block(gG2nd, al, al, 1, 1) for al in range(3)]
        # profile -> colour-combined fields, per mu
        self.fl = {}
        for mu in range(4):
            pf = profile_fields(L, mu, p, cvec, cons, pc)
            self.fl[mu] = {key: colour_fields(lst) for key, lst in pf.items()}
        self.blocks = {key: self.fl[0][key][1] for key in "0+-2"}
        for mu in range(4):
            for key in "0+-2": assert self.fl[mu][key][1] == self.blocks[key]
        assert set(self.blocks["0"]) == {(0, 0), (1, 1), (2, 2)} and len(self.fl[0]["0"][0]) == 1
        assert all(al == be for key in ("E1", "E2") for al, be in self.baux[key])
        self.kE = {"+": set(self.blocks["+"]) | set(self.baux["c"]), "-": set(self.blocks["-"]) | set(self.baux["bb"]),
                   "2": {(al, al) for al in range(3) if (al, al) in set(self.blocks["2"]) | set(self.baux["E2nd"])}}
        kb = {(be, al) for al, be in self.kE["-"]}
        self.keys = sorted({x for k in set(self.ba) | kb | self.kE["+"] for x in (k, k[::-1])})
        self.mons = sorted({m for lst in self._all_lists() for m, _ in lst})
        self.cache = {}

    def _all_lists(self):
        yield self.bA1; yield self.bA2; yield from self.ba.values(); yield from self.bA2c
        for d in self.baux.values(): yield from d.values()
        yield self.gA1; yield self.gA2; yield from self.ga.values(); yield from self.gA2c

    def theta(self, m, extra_p):
        """K_a = (m + 1/2) 2 pi / (L Ng) as (rational coefficient of pi, arb extra)."""
        return (fmpq(2 * m + 1, self.L * self.Ng), self.p if extra_p else arb(0))

    def transforms(self, mK):
        """Coarse symbols at all l for K (and K + p e_0 where needed): dict key -> mu -> list of arrays (4 nu, L^4)."""
        L = self.L; m0, m1, m2, m3 = mK
        g = (m1, m2, m3)
        if g not in self.cache:
            self.cache = {}
            part = {}
            for mu in range(4):
                for key in "0+-2":
                    out = []
                    for F in self.fl[mu][key][0]:
                        X = F
                        for ax, mm in ((1, m1), (2, m2), (3, m3)):
                            X = contract(X, ax + 1, phase_mat(L, self.theta(mm, False), X.shape[ax + 1]))
                        out.append(X)
                    part[(mu, key)] = out
            self.cache[g] = part
        part = self.cache[g]
        res = {}
        for key, sh in (("0", False), ("0p", True), ("+", False), ("-", True), ("2", False)):
            k0 = key[0]; res[key] = {}
            for mu in range(4):
                res[key][mu] = []
                for X in part[(mu, k0)]:
                    Y = contract(X, 1, phase_mat(L, self.theta(m0, sh), X.shape[1]))
                    res[key][mu].append(Y.reshape(4, L**4))
        return res

    def kvalue(self, mK):
        L, Ng = self.L, self.Ng
        res = self.transforms(mK)
        theta = [self.theta(m, False) for m in mK]
        Z = [[{e: acb(0, arb.pi() * arb(theta[mu][0] + fmpq(2 * l, L)) * e).exp() for e in (-2, -1, 1, 2)}
              for l in range(L)] for mu in range(4)]
        bord, ghost = Sector(4, 5), Sector(1, 1)
        s = self.s
        J = acb_mat(5, 5); J[4, 4] = acb(1); Jg = acb_mat(1, 1)
        keys = self.keys
        gkeys = sorted(self.ga)
        def ev(lst, ph, nr, nc):
            out = acb_mat(nr, nc)
            for m, Cm in lst: out += ph[m] * Cm
            return out
        def csym_block(key, bl, l, ph, auxkey):
            """15x12 colour block (5x4) of s [csym; aux] at l."""
            if bl in self.blocks[key[0]]:
                idx, sg = self.blocks[key[0]][bl]
                ent = [sg * s * res[key][mu][idx][nu, l] for mu in range(4) for nu in range(4)]
            else:
                ent = [acb(0)] * 16
            ax = ev(self.baux[auxkey].get(bl, []), ph, 1, 4)
            return acb_mat(5, 4, ent + [ax[0, j] for j in range(4)])
        for li, lv in enumerate(np.ndindex(*(4 * [L]))):
            ph = {}
            for m in self.mons:
                f = acb(1)
                for mu, e in enumerate(m):
                    if e: f *= Z[mu][lv[mu]][e]
                ph[m] = f
            a1, a2 = ev(self.bA1, ph, 4, 4), ev(self.bA2, ph, 4, 4)
            A2c = sum((ev(lst, ph, 4, 4) for lst in self.bA2c), acb_mat(4, 4))
            e1 = csym_block("0", (0, 0), li, ph, "E1"); e2 = csym_block("0p", (0, 0), li, ph, "E2")
            E2c = sum((csym_block("2", k, li, ph, "E2nd") for k in self.kE["2"]), acb_mat(5, 4))
            a = {k: ev(v, ph, 4, 4) for k, v in self.ba.items()}
            c = {k: csym_block("+", k, li, ph, "c") for k in self.kE["+"]}
            b = {(be, al): H(csym_block("-", (al, be), li, ph, "bb")) for al, be in self.kE["-"]}
            bord.add(a1, a2, e1, e2, A2c, E2c, a, b, c, keys)
            g1, g2 = ev(self.gA1, ph, 1, 1), ev(self.gA2, ph, 1, 1)
            G2c = sum((ev(lst, ph, 1, 1) for lst in self.gA2c), acb_mat(1, 1))
            eg = acb_mat(1, 1, [s])
            ghost.add(g1, g2, eg, eg, G2c, None, {k: ev(v, ph, 1, 1) for k, v in self.ga.items()}, {}, {}, gkeys)
        return ghost.value(Jg), bord.value(J)

def kgrid_idx(Ng):
    """Index version of umk_beta1.kgrid (sym, Ng even, odd L): (m0..m3), weights."""
    h = Ng // 2
    m = [(a, b, c, d) for b in range(h) for c in range(h) for d in range(c, h) for a in range(Ng)]
    return m, [8 * (1 if x[2] == x[3] else 2) for x in m]

def worker(args):
    L, Ng, P, Q, wid, nw, tag = args
    p = arb(fmpq(P, Q))
    pc = profile_cert(L, p, os.path.join("results", tag + ".prof.npz"))
    ck = os.path.join("results", f"{tag}.w{wid}.partial.json")
    done = json.load(open(ck)) if os.path.exists(ck) else {}
    ms, W = kgrid_idx(Ng)
    groups = sorted({m[1:] for m in ms}); mine = [g for i, g in enumerate(groups) if i % nw == wid]
    todo = [i for i, m in enumerate(ms) if m[1:] in mine and str(i) not in done]
    if not todo: return done
    t = time.time(); u = UmkArb(L, Ng, p, (P, Q), pc); print(f"w{wid}: setup {time.time() - t:.0f}s, {len(todo)} K", flush=True)
    tl = time.time()
    for i in todo:
        t = time.time(); g, b = u.kvalue(ms[i])
        done[str(i)] = dict(m=list(ms[i]), g=ball_dump(g), b=ball_dump(b), gf=float(g.mid()), bf=float(b.mid()), secs=time.time() - t)
        print(f"w{wid}: K{ms[i]} g={g} b={b} {time.time() - t:.0f}s", flush=True)
        if time.time() - tl > 600 or i == todo[-1]:
            json.dump(done, open(ck + ".tmp", "w")); os.replace(ck + ".tmp", ck); tl = time.time()
    return done

def run(L, Ng, P, Q, nw):
    tag = f"umk_arb_L{L}_Ng{Ng}_p{P}_{Q}"
    path = os.path.join("results", tag + ".json")
    if os.path.exists(path):
        print(tag, "cached", json.load(open(path))["beta"]); return
    t0 = time.time()
    profile_cert(L, arb(fmpq(P, Q)), os.path.join("results", tag + ".prof.npz"))
    if nw > 1:
        import multiprocessing as mp
        with mp.get_context("fork").Pool(nw) as pool:
            parts = pool.map(worker, [(L, Ng, P, Q, w, nw, tag) for w in range(nw)])
    else:
        parts = [worker((L, Ng, P, Q, 0, 1, tag))]
    done = {k: v for d in parts for k, v in d.items()}
    ms, W = kgrid_idx(Ng); assert len(done) == len(ms)
    p = arb(fmpq(P, Q))
    gs = sum((W[i] * ball_load(done[str(i)]["g"]) for i in range(len(ms))), arb(0)) / sum(W)
    bs = sum((W[i] * ball_load(done[str(i)]["b"]) for i in range(len(ms))), arb(0)) / sum(W)
    w = gs - bs / 2
    beta = 4 * w / (L**4 * (1 - p.cos()))
    c = arb("0.3715")
    r = dict(L=L, Ng=Ng, p=f"{P}/{Q}", kind="trans", ghost=ball_dump(gs), bord=ball_dump(bs), w=ball_dump(w), beta=ball_dump(beta),
             beta_str=beta.str(radius=True, more=True), const_str=(beta - c * arb(L).log()).str(radius=True, more=True),
             w_str=w.str(radius=True, more=True), secs=time.time() - t0, perK=done)
    json.dump(r, open(path, "w"), indent=1)
    print(tag, "beta", r["beta_str"], "beta - 0.3715 log L", r["const_str"], flush=True)

def symcheck(L, Ng, P, Q, m):
    """Per-K check of the grid reduction at one K: the images under K_1 -> -K_1, K_3 -> -K_3 and the 2<->3 swap must give
    overlapping balls (kgrid assumes they are equal)."""
    tag = f"umk_arb_L{L}_Ng{Ng}_p{P}_{Q}"; p = arb(fmpq(P, Q))
    u = UmkArb(L, Ng, p, (P, Q), profile_cert(L, p, os.path.join("results", tag + ".prof.npz")))
    r = lambda x: Ng - 1 - x
    imgs = [tuple(m), (m[0], r(m[1]), m[2], m[3]), (m[0], m[1], m[2], r(m[3])), (m[0], m[1], m[3], m[2])]
    vals = [u.kvalue(x) for x in imgs]
    out = dict(K=imgs, g=[v[0].str(radius=True) for v in vals], b=[v[1].str(radius=True) for v in vals],
               overlap=[bool(v[0].overlaps(vals[0][0]) and v[1].overlaps(vals[0][1])) for v in vals])
    json.dump(out, open(os.path.join("results", tag + f".symcheck_{'_'.join(map(str, m))}.json"), "w"), indent=1)
    print(out, flush=True)

if __name__ == "__main__":
    L, Ng, P, Q = (int(x) for x in sys.argv[1:5])
    nw = int(sys.argv[sys.argv.index("--workers") + 1]) if "--workers" in sys.argv else 1
    os.makedirs("results", exist_ok=True)
    if "--check" in sys.argv:
        symcheck(L, Ng, P, Q, [int(x) for x in sys.argv[sys.argv.index("--check") + 1].split(",")])
    else:
        run(L, Ng, P, Q, nw)
