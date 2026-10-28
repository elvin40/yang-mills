"""G1 cell certificate: rigorous upper bound on sup rho_1(j, K) over a cell K_c + [-h, h]^4 (../H2_CERTIFY_L13_G1.md).
rho_1^2 L^2 = lambda_max(Z T2 Z + w w^dag / sigma)  ((2.1) of H2_CERTIFY_L13 with beta = sigma, Lemma P4 of H2_CERTIFY_P4).
K^-adapted frame W = [Q, Kh], Q^dag = [I3 | -c], c_mu = Kh_mu / Kh_4, so Q^dag Kh = 0 exactly for every K. P4 (E k^ = Kh) gives
Q^dag E P = Q^dag E =: V per block, hence
  A = Q^dag T Q = s^2 sum V D V^dag,  C = Q^dag T2 Q = s^2 sum V D P D V^dag,  b = Q^dag T Kh = s^2 sum V D P E^dag Kh,
  sigma = s^2 sum 1/|k^|^2,  Z = Q A^-1 Q^dag,  w = (Kh - Q A^-1 b)/|Kh|^2,  G = Q A^-1 C A^-1 Q^dag + w w^dag / sigma.
The large Kh-direction eigenvalue of T never enters. Every quantity is a Taylor-2 model (TM) c + sum delta_nu g_nu + sum delta_nu delta_la H_nl + R,
|delta_nu| <= h, |R| <= r entrywise (block sums keep the first and second order exactly). Primitives: e^{ik}-1 (exact remainder h_k^2/2), E_q (second derivative a priori from the
trigonometric structure), d^M (box sums for value and gradient at K_c; second-derivative bound
by interval evaluation of the per-axis factors over the cell, see d_tm; tails as intervals). A^-1 by Oishi-Rump with X = A(K_c)^-1
(eta = ||X A(K) - I|| < 1 over the whole cell). lambda_max: max over the 16 vertices of c + linear part (convex in delta) + ||quadratic part|| + ||r_G||_F.
Float sums carry a priori rounding terms (premise P2); F carries P1'.
Usage: python h1cert_cell2.py L M h N K1 K2 K3 K4   (M = inf, odd M < 2N+3 (full window), or M0:<M_0>; 'pi' = exact pi)
"""
import sys, os, time, itertools, math
import numpy as np
from flint import arb, arb_series, ctx
HERE = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, HERE)
from h1cert_cell import axis_data, tail_inf, lam_max_upper, _mat, _n2, _radF, PI, U
from h1cert_rho1 import prof
from flint import acb_mat
ctx.cap = 6
EPS, EPSS = 1e-12, 1e-10      # per small product / per block sum: a priori rounding (n u with n <= 4, resp. <= 3e4 terms)
HH = 0.0                      # cell half-width of the current cell (one cell at a time per process)


class Near0(Exception): pass


class TM:
    """Taylor-2 model: c + sum_nu delta_nu g[nu] + sum_{nu,la} delta_nu delta_la H[nu,la] + R, |delta_nu| <= HH, |R| <= r entrywise
    (H symmetric in nu, la). Axis 0 of c is a batch axis. Products keep orders <= 2 exactly; the rest goes to r."""
    def __init__(s, c, g, H, r): s.c, s.g, s.H, s.r = c, g, H, r
    def lin(s): return HH * np.abs(s.g).sum(0)
    def quad(s): return HH**2 * np.abs(s.H).sum((0, 1))
    def mj(s): return np.abs(s.c) + s.lin() + s.quad() + s.r
    def __add__(s, o): o = tm(o); return TM(s.c + o.c, s.g + o.g, s.H + o.H, s.r + o.r + EPS * (s.mj() + o.mj()))
    def __neg__(s): return TM(-s.c, -s.g, -s.H, s.r)
    def __sub__(s, o): return s + (-tm(o))
    def _prod(s, o, op):
        o = tm(o); la, lb, qa, qb = s.lin(), o.lin(), s.quad(), o.quad()
        r = (op(la, qb) + op(qa, lb) + op(qa, qb) + op(s.r, np.abs(o.c) + lb + qb + o.r) + op(np.abs(s.c) + la + qa, o.r)
             + EPS * op(s.mj(), o.mj()))
        H = op(s.H, o.c) + op(s.c, o.H) + 0.5 * (op(s.g[:, None], o.g[None]) + op(s.g[None], o.g[:, None]))
        return TM(op(s.c, o.c), op(s.g, o.c) + op(s.c, o.g), H, r)
    def __mul__(s, o):
        if np.isscalar(o): return TM(s.c * o, s.g * o, s.H * o, s.r * abs(o) + EPS * abs(o) * s.mj())
        return s._prod(o, np.multiply)
    def __matmul__(s, o): return s._prod(o, np.matmul)
    def H_(s): return TM(*(np.swapaxes(x, -1, -2).conj() for x in (s.c, s.g, s.H)), np.swapaxes(s.r, -1, -2))
    def conj(s): return TM(s.c.conj(), s.g.conj(), s.H.conj(), s.r)
    def rs(s, *sh): return TM(s.c.reshape(sh), s.g.reshape((4,) + sh), s.H.reshape((4, 4) + sh), s.r.reshape(sh))
    def __getitem__(s, i):
        i = i if isinstance(i, tuple) else (i,); a = (slice(None),)
        return TM(s.c[i], s.g[a + i], s.H[a + a + i], s.r[i])
    def sum(s, ax=0, eps=EPSS):
        k = dict(keepdims=True)
        return TM(s.c.sum(ax, **k), s.g.sum(ax + 1, **k), s.H.sum(ax + 2, **k), s.r.sum(ax, **k) + eps * s.mj().sum(ax, **k))
    def recip(s):
        """Real positive scalar entries. 1/(c+e) = 1/c - e/c^2 + e^2/c^3 - e^3/(c^3 (c+e)), e = l + q + R: keep 1/c - l/c^2 - q/c^2
        + l^2/c^3; remainder R/c^2 + (Q+R)(2 La + Q + R)/c^3 + (La+Q+R)^3/(c^3 lo), lo = c - (La+Q+R) > 0."""
        c, La, Q, R = s.c.real, s.lin(), s.quad(), s.r; e = La + Q + R; lo = c - e
        if not (lo > 0).all(): raise Near0
        g = s.g.real; H = -s.H.real / c**2 + g[:, None] * g[None] / c**3
        r = (R / c**2 + (Q + R) * (2 * La + Q + R) / c**3 + e**3 / (c**3 * lo)) * (1 + EPS) + EPS / c
        return TM(1 / c + 0j, -g / c**2 + 0j, H + 0j, r)


def tm(x):
    if isinstance(x, TM): return x
    x = np.asarray(x, complex); return TM(x, np.zeros((4,) + x.shape, complex), np.zeros((4, 4) + x.shape, complex), np.zeros(x.shape))


def phase(th, scale):
    """e^{i th} - 1 with th (B, 4) = (K + const)/scale: derivatives wrt K_nu only in component nu, remainder (1/6)(h/scale)^3."""
    c = np.exp(1j * th); g = np.zeros((4,) + th.shape, complex); H = np.zeros((4, 4) + th.shape, complex)
    for nu in range(4): g[nu, :, nu] = 1j * c[:, nu] / scale; H[nu, nu, :, nu] = -0.5 * c[:, nu] / scale**2
    return TM(c - 1, g, H, np.full(th.shape, (HH / scale)**3 / 6 + 4 * U))


# ---------------------------------------------------------------- d^M as a Taylor model
def fser(x, n, M):
    """Series (in t) of f = sigma~^2 and p = q~^2 at k = x(t), one axis, umklapp label n."""
    sinc2 = lambda a: (2 / a) * arb_series.si(a * x / 2).derivative()   # sinc(a x/2) = (2/a) d/dt Si(a x(t)/2), x' = 1 (entire; valid at 0)
    q = x + 2 * PI * n
    if M in ("inf", "M0"):
        sg = sinc2(arb(1)) if n == 0 else (x / 2).sin() / (q / 2); p = q * q
    else:
        sg = sinc2(arb(1)) / sinc2(arb(1) / M) if n == 0 else (x / 2).sin() / (M * (q / (2 * M)).sin())
        p = (2 * M * (q / (2 * M)).sin())**2
    return sg * sg, p


def co(s, j):
    c = s.coeffs(); return c[j] if j < len(c) else arb(0)


def jets(L, Ki, h, M, N, M0=None):
    """Per axis, arrays (L, nb): centre f, f', f'', p, p' (derivatives wrt k), cell sup |f|, |f'|, |f''|, cell inf p, cell phi_min."""
    ns = list(range(-N, N + 1)) if M in ("inf", "M0") else list(range(-(M - 1) // 2, (M - 1) // 2 + 1))
    up = lambda a: np.nextafter(float(a.abs_upper()), np.inf)
    out = {k: np.zeros((L, len(ns))) for k in ("f", "f1", "f2", "p", "p1", "p2", "fu", "f1u", "f2u", "f3u", "plo", "phi")}
    hk = h / L; fac = [1, 1, 2, 6, 24]
    for l in range(L):
        lp = l if l <= (L - 1) // 2 else l - L
        k0 = (Ki + 2 * PI * lp) / L
        kb = k0 + arb(0, h) / L
        for j, n in enumerate(ns):
            f, p = fser(arb_series([k0, 1]), n, M)
            D = [co(f, i) * fac[i] for i in range(5)]                    # f^(i)(k_c), i <= 4
            out["f"][l, j], out["f1"][l, j], out["f2"][l, j] = (float(D[i].mid()) for i in range(3))
            out["p"][l, j], out["p1"][l, j] = float(co(p, 0).mid()), float(co(p, 1).mid())
            f4 = co(fser(arb_series([kb, 1]), n, M)[0], 4) * 24           # crude ball enclosure of f^(4) (multiplies h_k^2 or more)
            # centred form over the cell: sup|f^(j)| <= sum_{i=j}^{3} |f^(i)(k_c)| h_k^(i-j)/(i-j)! + sup|f^(4)| h_k^(4-j)/(4-j)!
            sj = lambda jj: sum((D[i].abs_upper() * arb(hk)**(i - jj) / fac[i - jj] for i in range(jj, 4)), arb(0)) + f4.abs_upper() * arb(hk)**(4 - jj) / fac[4 - jj]
            out["fu"][l, j], out["f1u"][l, j], out["f2u"][l, j], out["f3u"][l, j] = up(sj(0)), up(sj(1)), up(sj(2)), up(sj(3))
            out["p2"][l, j] = 2 * float(co(p, 2).mid())
            plo = co(p, 0) - co(p, 1).abs_upper() * hk - arb(hk)**2               # |p''| <= 2
            out["plo"][l, j] = max(np.nextafter(float(plo.lower()), -np.inf), 0.0)
            if M0:
                z = (kb + 2 * PI * n)**2 / (24 * M0 * M0); assert z < arb(0.5)
                out["phi"][l, j] = np.nextafter(float((1 - z).lower()), -np.inf)  # phi = sinc(q/2M) >= 1 - q^2/(24 M^2)
    return out


def kern(pairs, p, m):
    """out[l0..l3, mu] = sum_n prod_rho a_rho[l_rho, n_rho] * b_mu[l_mu, n_mu] / (sum_rho p_rho[l_rho, n_rho])^m for each (a, b)."""
    L, nb = p[0].shape
    e = lambda x, i: x.reshape([L if j == i else 1 for j in range(3)] + [nb if j == i else 1 for j in range(3)])
    Q3 = e(p[1], 0) + e(p[2], 1) + e(p[3], 2)
    P3 = [e(a[1], 0) * e(a[2], 1) * e(a[3], 2) for a, b in pairs]
    outs = [np.zeros((L,) * 4 + (4,)) for _ in pairs]
    for l0 in range(L):
        for n0 in range(nb):
            R = (p[0][l0, n0] + Q3)**(-m)
            for i, (a, b) in enumerate(pairs):
                W = (a[0][l0, n0] * P3[i]) * R
                w1, w2, w3 = W.sum((4, 5)), W.sum((3, 5)), W.sum((3, 4))      # (L, L, L, nb), axis n_1 / n_2 / n_3
                o = outs[i][l0]
                o[..., 0] += b[0][l0, n0] * w1.sum(-1)
                o[..., 1] += np.einsum("abcn,an->abc", w1, b[1])
                o[..., 2] += np.einsum("abcn,bn->abc", w2, b[2])
                o[..., 3] += np.einsum("abcn,cn->abc", w3, b[3])
    return [x.reshape(-1, 4) for x in outs]


def d_tm(L, M, Kc, h, N):
    """TM of d^M_mu(k_l) at all L^4 blocks, shape (L^4, 4).
    Box |n|_inf <= N (or the full window for finite M): value and K-gradient at K_c from per-axis jets; remainder (1/2) h_k^2 Hs,
    Hs >= sum_{nu,la} sup_cell |d_k_nu d_k_la (S/Q)| with S = prod F_rho, Q = sum p_rho:
      |d2(S/Q)| sums <= sum|S_nl|/Q + 2 sum|S_n| sum|Q_l|/Q^2 + S sum|Q_nn|/Q^2 + 2 S (sum|Q_n|)^2/Q^3,
      |p'| <= 2 sqrt p, |p''| <= 2, sum sqrt p_rho <= 2 sqrt Q, sum_{nl}|S_nl| <= 2 prod(F+|F'|+|F''|), sum|S_n| <= prod(F+|F'|)
      => Hs = 2 KA + 8 KB + 40 KC with KA = sum prod(F+|F'|+|F''|)/Q, KB = sum prod(F+|F'|)/Q^1.5, KC = sum S/Q^2 (cell sup / inf arrays;
      mu factor F_mu = f_mu^2 majorized by b = 2(f+|f'|+|f''|), resp. 2(f+|f'|)).
    Tail (|n|_inf > N): interval over the cell (tail_inf for M = inf; [0, sum(1 - B)/qt_min^2] for M0). M0: d^M in [d^inf, d^inf + diff],
    diff = sum prod(F phi^-4)... - sum prod F (phi^-2 extra on the mu factor), all over the cell."""
    Mj = "M0" if isinstance(M, str) and M.startswith("M0") else M
    M0 = int(M.split(":")[1]) if Mj == "M0" else None
    if Mj not in ("inf", "M0"): assert M < 2 * N + 3, "finite M: use N with M < 2N+3 (full window, no tail)"
    J = [jets(L, Kc[i], h, Mj, N, M0) for i in range(4)]
    g = lambda key: [J[i][key] for i in range(4)]
    rep = lambda lst, nu, x: [x if i == nu else lst[i] for i in range(4)]
    f, f1, p, p1 = g("f"), g("f1"), g("p"), g("p1")
    o1 = kern([(f, f)] + [(rep(f, nu, f1[nu]), rep(f, nu, 2 * f[nu])) for nu in range(4)], p, 1)
    o2 = kern([(rep(f, nu, f[nu] * p1[nu]), f) for nu in range(4)], p, 2)
    c = o1[0]; grad = np.stack([(o1[1 + nu] - o2[nu]) / L for nu in range(4)])
    fu, f1u, f2u, plo = g("fu"), g("f1u"), g("f2u"), g("plo")
    aA = [fu[i] + f1u[i] + f2u[i] for i in range(4)]; aB = [fu[i] + f1u[i] for i in range(4)]
    pairs1 = [(aA, [2 * x for x in aA])]
    if M0:
        phi = g("phi"); pairs1 += [([fu[i] * phi[i]**-4 for i in range(4)], [fu[i] * phi[i]**-2 for i in range(4)]), (fu, fu)]
    q1 = kern(pairs1, plo, 1); KA = q1[0]
    KB = kern([(aB, [2 * x for x in aB])], plo, 1.5)[0]; KC = kern([(fu, fu)], plo, 2)[0]
    hk = h / L
    r = (0.5 * hk**2 * (2 * KA + 8 * KB + 40 * KC)) * (1 + 1e-12) + EPSS * (KA + 8 * KB)
    H = np.zeros((4, 4) + c.shape, complex)
    idx = np.argsort((r / c).max(1))[-NEXACT:]                          # blocks with the largest relative box remainder
    for ch in np.array_split(idx, max(1, len(idx) // 10)):
        bc, bg, bH, br = d_exact(L, J, ch)
        c[ch], grad[:, ch], H[:, :, ch], r[ch] = bc.real, bg.real, bH, br
    ax = None
    if Mj == "inf":
        ax = [axis_data(L, Kc[i], h, "inf", N) for i in range(4)]
        tlo, thi = tail_inf(L, ax, N, h); c = c + (tlo + thi) / 2; r = r + (thi - tlo) / 2 * (1 + 1e-12)
    elif Mj == "M0":
        diff = q1[1] - q1[2] + EPSS * (q1[1] + q1[2])
        ax = [axis_data(L, Kc[i], h, M, N) for i in range(4)]
        qmin = (PI * (2 * N + 1) - arb(h) / L) * 2 / PI
        Em = np.array([[float((1 - ax[i][l][3]).upper()) for l in range(L)] for i in range(4)])
        tail = (Em[0][:, None, None, None] + Em[1][None, :, None, None] + Em[2][None, None, :, None] + Em[3][None, None, None, :])
        thi = tail.reshape(-1)[:, None] * (1 + 16 * U) / float((qmin * qmin).lower()) + diff
        c = c + thi / 2; r = r + thi / 2 * (1 + 1e-12)
    return TM(c + 0j, grad + 0j, H, r)


NEXACT = 200


def d_exact(L, J, blocks):
    """Box part of d_mu at the given blocks as a TM-2, term by term: per axis f = c + g d + H d^2 + R with g = f'/L, H = f''/(2L^2),
    |R| <= sup|f^(3)| h_k^3/6 (centred form of jets), p likewise with |p^(3)| <= 2/M (0 for M = inf; bound 2 used); then
    w_mu = prod_rho F_rho f_mu / sum p_rho in TM-2 arithmetic (third order and up in r) and a sum over the box."""
    hk = HH / L; nb = J[0]["f"].shape[1]; lb = np.array(np.unravel_index(blocks, (L,) * 4)).T   # (B, 4)
    def ax(rho, key, dkey, d2key, rad):
        sh = [len(blocks)] + [1] * 4; sh[1 + rho] = nb
        c = J[rho][key][lb[:, rho]]; g = np.zeros((4,) + c.shape); H = np.zeros((4, 4) + c.shape)
        g[rho] = J[rho][dkey][lb[:, rho]] / L; H[rho, rho] = J[rho][d2key][lb[:, rho]] / (2 * L * L)
        return TM(c + 0j, g + 0j, H + 0j, np.broadcast_to(rad, c.shape) + 4 * U * np.abs(c)).rs(*sh)
    F = [ax(rho, "f", "f1", "f2", J[rho]["f3u"][lb[:, rho]] * hk**3 / 6) for rho in range(4)]
    Qs = ax(0, "p", "p1", "p2", 2 * hk**3 / 6)
    for rho in range(1, 4): Qs = Qs + ax(rho, "p", "p1", "p2", 2 * hk**3 / 6)
    iQ = Qs.recip(); S = F[0] * F[1] * F[2] * F[3] * iQ
    out = []
    for mu in range(4):
        w = S * F[mu]
        for a in (4, 3, 2, 1): w = w.sum(a)
        out.append(w.rs(len(blocks)))
    st = lambda key, ax: np.stack([getattr(o, key) for o in out], ax)
    return st("c", -1), st("g", -1), st("H", -1), st("r", -1)


# ---------------------------------------------------------------- V' = Q'^dag E and m' = |k^|^2 P E^dag Kh as truncated Taylor series
ORD, MMAX = 4, 40
AL = [a for m in range(ORD + 1) for a in itertools.product(range(m + 1), repeat=4) if sum(a) == m]
FACT = [float(math.factorial(j)) for j in range(MMAX + 1)]


class TP:
    """Taylor polynomial in delta = K - K_c: exact coefficients co[alpha] for |alpha| <= ORD (dict, sparse) and a majorant sequence
    mj[m] >= sum_{|alpha| = m} |c_alpha| for every m <= MMAX (all functions here are entire; the series converges on the cell)."""
    def __init__(s, co, mj): s.co, s.mj = co, mj
    def __mul__(s, o):
        co = {}
        for a, x in s.co.items():
            for b, y in o.co.items():
                c = tuple(i + j for i, j in zip(a, b))
                if sum(c) <= ORD: co[c] = co[c] + x * y if c in co else x * y
        return TP(co, np.stack([sum(s.mj[i] * o.mj[m - i] for i in range(m + 1)) for m in range(MMAX + 1)]))
    def __add__(s, o):
        co = dict(s.co)
        for b, y in o.co.items(): co[b] = co[b] + y if b in co else y
        return TP(co, s.mj + o.mj)
    def __neg__(s): return TP({a: -x for a, x in s.co.items()}, s.mj)
    def __sub__(s, o): return s + (-o)
    def conj(s): return TP({a: np.conj(x) for a, x in s.co.items()}, s.mj)
    def tm(s, shape):
        """Taylor-2 model: value, gradient, Hessian/2; remainder sum_{3<=|a|<=ORD} h^|a| |c_a| + sum_{m>ORD} h^m mj[m] (+ 2 h^MMAX mj[MMAX] for
        m > MMAX: successive majorant ratios are < 0.1 there) + 1e-11 sum_m h^m mj[m] (float rounding of the coefficients, P1')."""
        z = np.zeros(shape, complex); h = HH
        c = s.co.get((0, 0, 0, 0), z) + z
        g = np.stack([s.co.get(tuple(int(i == nu) for i in range(4)), z) + z for nu in range(4)])
        H = np.zeros((4, 4) + shape, complex)
        for nu in range(4):
            for la in range(4):
                a = tuple(int(i == nu) + int(i == la) for i in range(4))
                if a in s.co: H[nu, la] = H[nu, la] + s.co[a] * (1.0 if nu == la else 0.5)
        r = np.zeros(shape)
        for a, x in s.co.items():
            if sum(a) >= 3: r = r + h**sum(a) * np.abs(x)
        hm = h**np.arange(MMAX + 1).reshape((-1,) + (1,) * (s.mj.ndim - 1))
        r = r + (hm[ORD + 1:] * s.mj[ORD + 1:]).sum(0) + 2 * hm[-1] * s.mj[-1] + 1e-11 * (hm * s.mj).sum(0)
        return TM(c, g, H, np.broadcast_to(r, shape) * (1 + 1e-12))


def seq(c0, c1):  # majorant sequence [c0, c1/1!, c1/2!, ...]
    return np.array([c0] + [c1 / FACT[j] for j in range(1, MMAX + 1)])[:, None]


def tp_phase(th, ax, scale, shape=()):
    """e^{i th} - 1 as a TP, th = (K_ax + const)/scale (array), depends on axis ax only."""
    e = np.exp(1j * th)
    co = {(0, 0, 0, 0): e - 1}
    for j in range(1, ORD + 1): co[tuple(j if i == ax else 0 for i in range(4))] = (1j / scale)**j * e / FACT[j]
    return TP(co, seq(2.0, 1.0) / np.array([1.0] + [scale**j for j in range(1, MMAX + 1)])[:, None])


def tp_sq(th, scale):
    """sum_rho (2 - 2 cos th_rho) = |e^{i th} - 1|^2 as a TP, th (..., 4)."""
    co = {(0, 0, 0, 0): (2 - 2 * np.cos(th)).sum(-1, keepdims=True)}
    for rho in range(4):
        for j in range(1, ORD + 1):
            co[tuple(j if i == rho else 0 for i in range(4))] = -2 * ((1j / scale)**j * np.exp(1j * th[..., rho:rho + 1])).real / FACT[j]
    return TP(co, np.array([16.0] + [8.0 / (FACT[j] * scale**j) for j in range(1, MMAX + 1)])[:, None])


def vm_tm(L, pf, Kc, h):
    """TMs of V' = Q'^dag E (rows K^_4 E_mu - K^_mu E_4, mu < 4; (Nb, 3, 4)) and m' = |k^|^2 E^dag Kh - |Kh|^2 k^ (= |k^|^2 P E^dag Kh
    by P4; (Nb, 4, 1)). E row coefficients: c_alpha = sum_y F(y) prod (i y_nu/L)^alpha_nu/alpha_nu! e^{ik.y}; majorant
    sum|F| (|y|_1/L)^m/m! per (mu, r) entry (multinomial)."""
    hh = (L - 1) // 2; Nb = L**4
    kp = [(Kc[i] + 2 * np.pi * np.arange(L)) / L for i in range(4)]
    def erow(mu):
        F = pf[mu]; y = [np.arange(F.shape[1 + a]) - hh for a in range(4)]
        W = [[(1j * y[a] / L)**j / FACT[j] * np.exp(1j * kp[a][:, None] * y[a][None]) for j in range(ORD + 1)] for a in range(4)]
        co = {al: np.einsum("rabcd,ia,jb,kc,ld->ijklr", F, *[W[a][al[a]] for a in range(4)], optimize=True).reshape(Nb, 4) for al in AL}
        ay = sum(np.abs(y[a]).reshape([1] * (1 + a) + [-1] + [1] * (3 - a)) for a in range(4)) / L
        assert h * ay.max() < MMAX / 10
        aF = np.abs(F)
        return TP(co, np.stack([(aF * ay**m).sum((1, 2, 3, 4)) / FACT[m] for m in range(MMAX + 1)]))
    Kh = [tp_phase(Kc[i], i, 1.0) for i in range(4)]
    E3 = erow(3); V = []; mpp = Kh[3] * E3.conj()
    for mu in range(3):
        Emu = erow(mu)
        V.append((Kh[3] * Emu - Kh[mu] * E3).tm((Nb, 4)))
        mpp = mpp + Kh[mu] * Emu.conj(); del Emu
    lv = np.indices((L,) * 4).reshape(4, -1).T; th = (Kc[None] + 2 * np.pi * lv) / L
    kh = TP({}, np.zeros((MMAX + 1, 1)))
    for rho in range(4):
        t = tp_phase(th[:, rho], rho, L); er = np.zeros(4); er[rho] = 1
        kh = kh + TP({a: x[:, None] * er for a, x in t.co.items()}, t.mj)
    mp = (tp_sq(th, L) * mpp - tp_sq(Kc, 1.0) * kh).tm((Nb, 4))
    Vt = TM(np.stack([v.c for v in V], 1), np.stack([v.g for v in V], 2), np.stack([v.H for v in V], 3), np.stack([v.r for v in V], 1))
    return Vt, mp.rs(Nb, 4, 1)


# ---------------------------------------------------------------- Oishi-Rump inverse and final bound
def verts(T):  # c + linear part at the 16 vertices (sup of a convex function of delta)
    return [T.c[0] + sum(s * HH * T.g[nu, 0] for nu, s in enumerate(sg)) for sg in itertools.product((-1, 1), repeat=4)]


def inv_or(A, nR=None):
    """TM-2 of A(K)^-1 over the cell. X = A(K_c)^-1 (float). F = X A(K) - I = X A_l + G', G' = (X A_c - I) + X (A_q + R_A);
    a = max_vertices ||X A_l|| (convex), g' = ||X A_c - I||_F + h^2 sum ||X H_nl|| + ||X|| ||R_A||, eta = a + g' < 1.
    A^-1 = (I + F)^-1 X = X - X A_l X - X A_q X + X A_l X A_l X + rem,
    ||rem|| <= ||X A_c - I|| ||X|| + ||X||^2 ||R_A|| + (2a + g') g' ||X|| + eta^3/(1 - eta) ||X||."""
    A0 = A.c[0]; X = np.linalg.inv(A0); n = len(A0)
    I = acb_mat(n, n, [1 if i == j else 0 for i in range(n) for j in range(n)])
    e0 = _radF(_mat(X) * _mat(A0) - I, acb_mat(n, n)); nX = _n2(X)
    fn = lambda M: float(_n2(M).upper()) + EPS * np.linalg.norm(np.abs(X) @ np.abs(M))
    a = max(fn(X @ (Av - A0)) for Av in verts(A))
    qn = HH**2 * sum(fn(X @ A.H[nu, la, 0]) for nu in range(4) for la in range(4))
    nR = np.linalg.norm(A.r[0]) * (1 + 1e-12) if nR is None else nR
    gp = e0 + arb(qn) + nX * arb(nR); eta = arb(a) + gp
    if not eta < 1: raise ValueError(f"eta {float(eta.mid()):.3f}")
    e2 = float((e0 * nX + nX * nX * arb(nR) + (2 * arb(a) + gp) * gp * nX + eta**3 / (1 - eta) * nX).upper())
    G1 = [X @ A.g[nu, 0] @ X for nu in range(4)]
    g = np.stack([-x for x in G1])
    H = np.stack([np.stack([-X @ A.H[nu, la, 0] @ X + 0.5 * (G1[nu] @ A.g[la, 0] @ X + G1[la] @ A.g[nu, 0] @ X) for la in range(4)]) for nu in range(4)])
    aX = np.abs(X)
    r = np.full((n, n), e2) + EPS * (HH * sum(aX @ np.abs(A.g[nu, 0]) @ aX for nu in range(4))
                                     + HH**2 * sum(aX @ np.abs(A.H[nu, la, 0]) @ aX + aX @ np.abs(A.g[nu, 0]) @ aX @ np.abs(A.g[la, 0]) @ aX
                                                   for nu in range(4) for la in range(4)))
    return TM(X[None], g[:, None], H[:, :, None], r[None]), float(eta.upper())


def cell_bound2(L, M, Kc, h, N=5, pf=None, log=None):
    """Certified upper bound on sup_{K in cell} rho_1(j, K) (float), or None if the cell is too close to K = 0 (a 1/|k^|^2 or
    1/|Kh_4|^2 lower bound fails). Raises ValueError if Oishi-Rump fails (eta >= 1)."""
    global HH; HH = h
    t0 = time.time(); pf = pf if pf is not None else prof(L); s2 = 1.0 / L**4
    Kc = [x if isinstance(x, arb) else arb(x) for x in Kc]; Kf = np.array([float(x.mid()) for x in Kc])
    try:
        d = d_tm(L, M, Kc, h, N); t1 = time.time()
        Vp, mp = vm_tm(L, pf, Kf, h); t2 = time.time()
        Nb = L**4; lv = np.indices((L,) * 4).reshape(4, -1).T
        Kh = phase(Kf[None], 1.0)                                         # (1, 4)
        kh = phase((Kf[None] + 2 * np.pi * lv) / L, L)                  # (Nb, 4); fine momenta (K + 2 pi l)/L
        inva = (kh * kh.conj()).sum(1, EPS).recip()                      # (Nb, 1) = 1/|k^_l|^2
        e4 = np.zeros((1, 1, 4)); e4[0, 0, 3] = 1
        QH = Kh[:, 3:4].rs(1, 1, 1) * np.eye(3, 4)[None] - Kh[:, :3].rs(1, 3, 1) * e4   # Q'^dag, rows K^_4 e_mu - K^_mu e_4
        khc = kh.rs(Nb, 4, 1)
        P = tm(np.eye(4)[None]) - (khc @ khc.H_()) * inva.rs(Nb, 1, 1)
        Khc = Kh.rs(1, 4, 1)
        VD = Vp * d.rs(Nb, 1, 4)                                         # V' D, V' = Q'^dag E = Q'^dag E P (P4)
        A = (VD @ Vp.H_()).sum() * s2
        C = (VD @ P @ VD.H_()).sum() * s2
        b = (VD @ (mp * inva.rs(Nb, 1, 1))).sum() * s2                   # Q'^dag T Kh = s^2 sum V' D P E^dag Kh
        sig = inva.sum() * s2
        lam0, U0 = np.linalg.eigh((A.c[0] + A.c[0].conj().T) / 2)
        S0 = U0 / np.sqrt(lam0); SH = tm(S0.conj().T[None]); S = tm(S0[None])  # whitened frame Q' S, S = U Lambda^-1/2: A(K_c) ~ I
        nRA = float(np.linalg.norm(A.r[0]) * np.linalg.norm(S0, 2)**2 * (1 + 1e-10))    # ||S^dag R_A S|| <= ||S||^2 ||R_A||_F
        A, C, b, QH = SH @ A @ S, SH @ C @ S, SH @ b, SH @ QH
        t3 = time.time()
        Y, eta = inv_or(A, nRA)
        Q = QH.H_()
        w = (Khc - Q @ (Y @ b)) * (Kh * Kh.conj()).sum(1, EPS).recip().rs(1, 1, 1)
        G = Q @ (Y @ C @ Y) @ QH + (w @ w.H_()) * sig.recip().rs(1, 1, 1)
    except Near0:
        return None
    lam = max(lam_max_upper(_mat((Gv + Gv.conj().T) / 2)) for Gv in verts(G))
    qG = HH**2 * sum(np.linalg.norm(G.H[nu, la, 0]) for nu in range(4) for la in range(4))   # ||quadratic part|| (Frobenius)
    lam = lam + arb((np.linalg.norm(G.r[0]) + qG) * (1 + 1e-12) + EPS * 4 * np.linalg.norm(G.mj()[0]))
    ub = float((lam.sqrt() / L).upper())
    if log:
        relA = nRA / np.linalg.norm(A.c[0])
        log(f"  d {t1-t0:.1f}s, E {t2-t1:.1f}s, blocks {t3-t2:.1f}s; eta {eta:.3f}, |R_A|/|A| {relA:.2e}, "
            f"centre rho_1 {np.sqrt(max(np.linalg.eigvalsh((G.c[0] + G.c[0].conj().T) / 2))) / L:.6f}, "
            f"|r_G|/lam {np.linalg.norm(G.r[0]) / float(lam.mid()):.2e}, |quad_G|/lam {qG / float(lam.mid()):.2e}")
    return ub


if __name__ == "__main__":
    L, M, h, N = int(sys.argv[1]), sys.argv[2], float(sys.argv[3]), int(sys.argv[4])
    M = M if (M == "inf" or M.startswith("M0:")) else int(M)
    Ks = sys.argv[5:9]
    Kc = [PI if s == "pi" else arb(float(s)) for s in Ks]
    from h1cert_rho1 import rho1
    Kf = np.array([np.pi if s == "pi" else float(s) for s in Ks])
    t = time.time()
    try: ub = cell_bound2(L, M, Kc, h, N, log=print)
    except ValueError as ex: ub = f"fail ({ex})"
    Mf = "inf" if isinstance(M, str) else M
    print(f"L={L} M={M} N={N} K_c={Ks} h={h}: float rho_1(K_c) = {rho1(L, Mf, Kf, prof(L)):.6f}, "
          f"certified sup over cell <= {ub}  (sqrt L = {L**0.5:.4f})  {time.time()-t:.1f}s")
