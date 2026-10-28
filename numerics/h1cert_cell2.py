"""G1 cell certificate: rigorous upper bound on sup rho_1(j, K) over a cell K_c + [-h, h]^4 (../H2_CERTIFY_L13_G1.md).
rho_1^2 L^2 = lambda_max(Z T2 Z + w w^dag / sigma)  ((2.1) of H2_CERTIFY_L13 with beta = sigma, Lemma P4 of H2_CERTIFY_P4).
K^-adapted frame W = [Q, Kh], Q^dag = [I3 | -c], c_mu = Kh_mu / Kh_4, so Q^dag Kh = 0 exactly for every K. P4 (E k^ = Kh) gives
Q^dag E P = Q^dag E =: V per block, hence
  A = Q^dag T Q = s^2 sum V D V^dag,  C = Q^dag T2 Q = s^2 sum V D P D V^dag,  b = Q^dag T Kh = s^2 sum V D P E^dag Kh,
  sigma = s^2 sum 1/|k^|^2,  Z = Q A^-1 Q^dag,  w = (Kh - Q A^-1 b)/|Kh|^2,  G = Q A^-1 C A^-1 Q^dag + w w^dag / sigma.
The large Kh-direction eigenvalue of T never enters. Every quantity is a Taylor-1 model (TM) c + sum_nu delta_nu g_nu + R,
|delta_nu| <= h, |R| <= r entrywise. Primitives: e^{ik}-1 (exact remainder h_k^2/2), E_q (second derivative a priori from the
trigonometric structure: (1/2) h_k^2 sum |F| |y|_1^2), d^M (box sums for value and gradient at K_c; second-derivative bound
by interval evaluation of the per-axis factors over the cell, see d_tm; tails as intervals). A^-1 by Oishi-Rump with X = A(K_c)^-1
(eta = ||X A(K) - I|| < 1 over the whole cell). lambda_max by convexity in delta: max over the 16 vertices + ||r_G||_F.
Float sums carry a priori rounding terms (premise P2); F carries P1'.
Usage: python h1cert_cell2.py L M h N K1 K2 K3 K4   (M = inf, odd M < 2N+3 (full window), or M0:<M_0>; 'pi' = exact pi)
"""
import sys, os, time, itertools
import numpy as np
from flint import arb, arb_series, ctx
HERE = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, HERE)
from h1cert_cell import axis_data, tail_inf, lam_max_upper, _mat, _n2, _radF, PI, U
from h1cert_rho1 import prof
from flint import acb_mat
ctx.cap = 4
EPS, EPSS = 1e-12, 1e-10      # per small product / per block sum: a priori rounding (n u with n <= 4, resp. <= 3e4 terms)
HH = 0.0                      # cell half-width of the current cell (one cell at a time per process)


class Near0(Exception): pass


class TM:
    """Taylor-1 model: c + sum_nu delta_nu g[nu] + R, |delta_nu| <= HH, |R| <= r entrywise. Axis 0 of c is a batch axis."""
    def __init__(s, c, g, r): s.c, s.g, s.r = c, g, r
    def lin(s): return HH * np.abs(s.g).sum(0)
    def mj(s): return np.abs(s.c) + s.lin() + s.r
    def __add__(s, o): o = tm(o); return TM(s.c + o.c, s.g + o.g, s.r + o.r + EPS * (s.mj() + o.mj()))
    def __neg__(s): return TM(-s.c, -s.g, s.r)
    def __sub__(s, o): return s + (-tm(o))
    def _prod(s, o, op):
        o = tm(o); la, lb = s.lin(), o.lin()
        r = op(np.abs(s.c) + la + s.r, o.r) + op(la, lb) + op(s.r, np.abs(o.c) + lb) + EPS * op(s.mj(), o.mj())
        return TM(op(s.c, o.c), op(s.g, o.c) + op(s.c, o.g), r)
    def __mul__(s, o):
        if np.isscalar(o): return TM(s.c * o, s.g * o, s.r * abs(o) + EPS * abs(o) * s.mj())
        return s._prod(o, np.multiply)
    def __matmul__(s, o): return s._prod(o, np.matmul)
    def H(s): return TM(np.swapaxes(s.c, -1, -2).conj(), np.swapaxes(s.g, -1, -2).conj(), np.swapaxes(s.r, -1, -2))
    def conj(s): return TM(s.c.conj(), s.g.conj(), s.r)
    def rs(s, *sh): return TM(s.c.reshape(sh), s.g.reshape((4,) + sh), s.r.reshape(sh))
    def __getitem__(s, i): i = i if isinstance(i, tuple) else (i,); return TM(s.c[i], s.g[(slice(None),) + i], s.r[i])
    def sum(s, ax=0, eps=EPSS):
        return TM(s.c.sum(ax, keepdims=True), s.g.sum(ax + 1, keepdims=True), s.r.sum(ax, keepdims=True) + eps * s.mj().sum(ax, keepdims=True))
    def recip(s):  # real positive scalar entries: 1/a - 1/c + l/c^2 = e^2/(c^2 a) - R/c^2, e = l + R
        c, e = s.c.real, s.lin() + s.r; lo = c - e
        if not (lo > 0).all(): raise Near0
        return TM(1 / c + 0j, -s.g.real / c**2 + 0j, (e**2 / (c**2 * lo) + s.r / c**2) * (1 + EPS) + EPS / c)


def tm(x): return x if isinstance(x, TM) else TM(np.asarray(x, complex), np.zeros((4,) + np.shape(x), complex), np.zeros(np.shape(x)))


def phase(th, scale):
    """e^{i th} - 1 with th (B, 4) = (K + const)/scale: gradient wrt K_nu only in component nu, remainder (1/2)(h/scale)^2."""
    c = np.exp(1j * th); g = np.zeros((4,) + th.shape, complex)
    for nu in range(4): g[nu, :, nu] = 1j * c[:, nu] / scale
    return TM(c - 1, g, np.full(th.shape, 0.5 * (HH / scale)**2 + 4 * U))


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
    out = {k: np.zeros((L, len(ns))) for k in ("f", "f1", "f2", "p", "p1", "fu", "f1u", "f2u", "plo", "phi")}
    for l in range(L):
        lp = l if l <= (L - 1) // 2 else l - L
        k0 = (Ki + 2 * PI * lp) / L
        for j, n in enumerate(ns):
            f, p = fser(arb_series([k0, 1]), n, M)
            out["f"][l, j], out["f1"][l, j], out["f2"][l, j] = float(co(f, 0).mid()), float(co(f, 1).mid()), 2 * float(co(f, 2).mid())
            out["p"][l, j], out["p1"][l, j] = float(co(p, 0).mid()), float(co(p, 1).mid())
            kb = k0 + arb(0, h) / L
            f, p = fser(arb_series([kb, 1]), n, M)
            out["fu"][l, j], out["f1u"][l, j], out["f2u"][l, j] = up(co(f, 0)), up(co(f, 1)), up(2 * co(f, 2))
            out["plo"][l, j] = max(np.nextafter(float(co(p, 0).lower()), -np.inf), 0.0)
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
    return TM(c + 0j, grad + 0j, r)


# ---------------------------------------------------------------- E_q as a Taylor model
def e_tm(L, pf, Kc, h):
    """TM of the q_0 rows E_l (L^4, 4 coarse, 4 fine): centre and K-gradient by contraction. Remainder from the exact per-block
    Hessian at K_c: (1/2) h^2 sum_{nu,la} |H_l[nu,la]| + (1/6) h^3 sum|F| (|y|_1/L)^3 (third derivative a priori from the
    trigonometric structure), + float/P1' error err (as h1cert_cell.qrows), with factor (1 + 8hL + 32 h^2 L^2) for gradient/Hessian."""
    hk = h / L; hh = (L - 1) // 2
    kp = [(Kc[i] + 2 * np.pi * np.arange(L)) / L for i in range(4)]
    C = np.zeros((L,) * 4 + (4, 4), complex); dC = np.zeros((4,) + (L,) * 4 + (4, 4), complex)
    Hs = np.zeros((L,) * 4 + (4, 4)); m3 = np.zeros((4, 4)); err = np.zeros((4, 4))
    for mu, F in enumerate(pf):
        y = [np.arange(F.shape[1 + a]) - hh for a in range(4)]
        W = [np.exp(1j * kp[a][:, None] * y[a][None]) for a in range(4)]
        con = lambda T: np.einsum("rabcd,ia,jb,kc,ld->ijklr", T, *W, optimize=True)
        yr = lambda nu: y[nu].reshape([1] * (1 + nu) + [-1] + [1] * (3 - nu))
        C[..., mu, :] = con(F)
        for nu in range(4):
            dC[nu][..., mu, :] = 1j * con(F * yr(nu)) / L
            for la in range(4):
                if la >= nu: Hs[..., mu, :] += (2 - (la == nu)) * np.abs(con(F * yr(nu) * yr(la))) / L**2
        ay = sum(np.abs(yr(a)) for a in range(4))
        aF = np.abs(F); n1 = aF.sum((1, 2, 3, 4))
        m3[mu] = (aF * (ay / L)**3).sum((1, 2, 3, 4))
        th = (np.pi + h / L) * 2 * L + 2
        err[mu] = (2 * (4 * sum(F.shape[1:]) + 40) * U * 1.1 + 8 * U * th * 4 + 1e-13) * n1
    r = (0.5 * h**2 * Hs + (m3 * h**3 / 6 + err * (1 + 8 * h * L + 32 * h * h * L * L))[None, None, None, None]) * (1 + 1e-12)
    return TM(C.reshape(-1, 4, 4), dC.reshape(4, -1, 4, 4), r.reshape(-1, 4, 4))


# ---------------------------------------------------------------- Oishi-Rump inverse and final bound
def verts(T):
    return [T.c[0] + sum(s * HH * T.g[nu, 0] for nu, s in enumerate(sg)) for sg in itertools.product((-1, 1), repeat=4)]


def inv_or(A):
    """TM of A(K)^-1 over the cell. X = A(K_c)^-1 (float); F = X A(K) - I, ||F|| <= eta = ||X A_c - I||_F + max_vertices ||X A_lin||
    + ||X|| ||R_A||_F; A^-1 = X - X A_lin X + rem, ||rem|| <= ||X A_c - I|| ||X|| + ||X||^2 ||R_A|| + eta^2/(1 - eta) ||X||."""
    A0 = A.c[0]; X = np.linalg.inv(A0); n = len(A0)
    I = acb_mat(n, n, [1 if i == j else 0 for i in range(n) for j in range(n)])
    e0 = _radF(_mat(X) * _mat(A0) - I, acb_mat(n, n)); nX = _n2(X)
    lin = max(float(_n2(X @ (Av - A0)).upper()) + EPS * np.linalg.norm(np.abs(X) @ np.abs(Av - A0)) for Av in verts(A))
    nR = np.linalg.norm(A.r[0]) * (1 + 1e-12)
    eta = e0 + arb(lin) + nX * arb(nR)
    if not eta < 1: raise ValueError(f"eta {float(eta.mid()):.3f}")
    e2 = float((e0 * nX + nX * nX * arb(nR) + eta**2 / (1 - eta) * nX).upper())
    g = np.stack([-X @ A.g[nu, 0] @ X for nu in range(4)])
    r = np.full((n, n), e2) + EPS * HH * sum(np.abs(X) @ np.abs(A.g[nu, 0]) @ np.abs(X) for nu in range(4))
    return TM(X[None], g[:, None], r[None]), float(eta.upper())


def cell_bound2(L, M, Kc, h, N=5, pf=None, log=None):
    """Certified upper bound on sup_{K in cell} rho_1(j, K) (float), or None if the cell is too close to K = 0 (a 1/|k^|^2 or
    1/|Kh_4|^2 lower bound fails). Raises ValueError if Oishi-Rump fails (eta >= 1)."""
    global HH; HH = h
    t0 = time.time(); pf = pf if pf is not None else prof(L); s2 = 1.0 / L**4
    Kc = [x if isinstance(x, arb) else arb(x) for x in Kc]; Kf = np.array([float(x.mid()) for x in Kc])
    try:
        d = d_tm(L, M, Kc, h, N); t1 = time.time()
        E = e_tm(L, pf, Kf, h); t2 = time.time()
        Nb = L**4; lv = np.indices((L,) * 4).reshape(4, -1).T
        Kh = phase(Kf[None], 1.0)                                         # (1, 4)
        kh = phase((Kf[None] + 2 * np.pi * lv) / L, L)                  # (Nb, 4); fine momenta (K + 2 pi l)/L
        inva = (kh * kh.conj()).sum(1, EPS).recip()                      # (Nb, 1) = 1/|k^_l|^2
        cv = (Kh[:, :3] * (Kh[:, 3:4].conj() * (Kh[:, 3:4] * Kh[:, 3:4].conj()).recip())).rs(1, 3, 1)
        e4 = np.zeros((1, 1, 4)); e4[0, 0, 3] = 1
        QH = tm(np.eye(3, 4)[None]) - cv * e4                            # (1, 3, 4), Q^dag Kh = 0
        khc = kh.rs(Nb, 4, 1)
        P = tm(np.eye(4)[None]) - (khc @ khc.H()) * inva.rs(Nb, 1, 1)
        Et = E @ P                                                       # E P; Q^dag E P = Q^dag E (P4)
        V0 = QH.c @ Et.c; A0 = s2 * np.einsum("bin,bn,bjn->ij", V0, d.c, V0.conj())
        lam0, U0 = np.linalg.eigh((A0 + A0.conj().T) / 2)
        QH = tm((U0 / np.sqrt(lam0)).conj().T[None]) @ QH                 # whitened frame Q S, S = U Lambda^-1/2: A(K_c) ~ I
        V = QH @ Et                                                      # (Nb, 3, 4)
        VD = V * d.rs(Nb, 1, 4)
        A = (VD @ V.H()).sum() * s2
        C = (VD @ P @ VD.H()).sum() * s2
        Khc = Kh.rs(1, 4, 1)
        b = (VD @ (Et.H() @ Khc)).sum() * s2                             # Q^dag T Kh = s^2 sum V D (E P)^dag Kh
        sig = inva.sum() * s2
        t3 = time.time()
        Y, eta = inv_or(A)
        Q = QH.H()
        w = (Khc - Q @ (Y @ b)) * (Kh * Kh.conj()).sum(1, EPS).recip().rs(1, 1, 1)
        G = Q @ (Y @ C @ Y) @ QH + (w @ w.H()) * sig.recip().rs(1, 1, 1)
    except Near0:
        return None
    lam = max(lam_max_upper(_mat((Gv + Gv.conj().T) / 2)) for Gv in verts(G))
    lam = lam + arb(np.linalg.norm(G.r[0]) * (1 + 1e-12) + EPS * 4 * np.linalg.norm(G.mj()[0]))
    ub = float((lam.sqrt() / L).upper())
    if log:
        relA = np.linalg.norm(A.r[0]) / np.linalg.norm(A.c[0])
        log(f"  d {t1-t0:.1f}s, E {t2-t1:.1f}s, blocks {t3-t2:.1f}s; eta {eta:.3f}, |R_A|/|A| {relA:.2e}, "
            f"centre rho_1 {np.sqrt(max(np.linalg.eigvalsh((G.c[0] + G.c[0].conj().T) / 2))) / L:.6f}, "
            f"|r_G|/lam {np.linalg.norm(G.r[0]) / float(lam.mid()):.2e}")
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
