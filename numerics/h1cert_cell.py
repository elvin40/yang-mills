"""Rigorous upper bound on rho_1(j, K) = ||H_j(K)|| / L for ALL K in a cell K_c + [-h, h]^4 (../H2_CERTIFY_L13.md sec. 2).
One-step umklapp Schur form (h1cert_rho1.py): rho_1^2 = lambda_max(Sc^dag R Sc) / L^2, Sc = (S^-1)[:, :4],
S = J - L^-4 sum_l E_l A_l^-1 E_l^dag, R = L^-4 sum_l E_l A_l^-2 E_l^dag, A_l^-1 = P D P + kh kh^dag / |kh|^4, P = 1 - kh kh^dag / |kh|^2.
Every block is evaluated in arb ball arithmetic over the whole cell:
  kh, sigma^2, q^2 per axis as arb balls of the cell's fine-momentum interval;
  d^M_mu = box sum (float64, outward-rounded inputs, a priori error bound) + tail in [0, sum_rho (1 - B_rho) / qt_min^2];
  q_0 rows E_l: centre value + |grad| * h_k + (1/2) h_k^2 W2 (Taylor with remainder), float centre with an a priori bound.
Modes: M = 'inf' (fixed point), an odd integer M (finite level, Prop. A at M), or 'M0:<M0>' (every M >= M0 and M = inf at once).
Usage: python h1cert_cell.py L M h N K1 K2 K3 K4      (a component 'pi' means exact pi)
"""
import sys, os, time
import numpy as np
from flint import arb, acb, acb_mat, ctx
HERE = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, HERE)
from h1cert_rho1 import prof
ctx.prec = 64
PI = arb.pi(); U = 2.0**-53


def ball(lo, hi): return arb(lo).union(arb(hi))


def axis_data(L, Kc_i, h, M, N):
    """Per axis: list over l of (kh as acb, s2 balls (nb,), q2 balls (nb,)) and the box-mass lower bound B_l = sum_box s2."""
    out = []
    for l in range(L):
        lp = l if l <= (L - 1) // 2 else l - L                       # k' = (K + 2 pi l')/L, |k'| <= pi + h/L
        k = (Kc_i + 2 * PI * lp + arb(0, h)) / L
        kh = acb(0, k).exp() - 1
        if M == "inf" or isinstance(M, str) or M >= 2 * N + 3: ns = range(-N, N + 1)
        else: ns = range(-(M - 1) // 2, (M - 1) // 2 + 1)            # small M: full window, exact, no tail
        s2, q2 = [], []
        for n in ns:
            q = k + 2 * PI * n
            if M == "inf":
                sg = (k / 2).sinc() if n == 0 else (k / 2).sin() / (q / 2); qt2 = q * q
            elif isinstance(M, str):                                   # M >= M0: qt = q phi, phi in [1 - q^2/(24 M0^2), 1]
                M0 = int(M.split(":")[1]); z2 = arb((q * q).upper()) / (24 * M0 * M0)
                assert z2 < arb(0.5)
                phi = ball((1 - z2).lower(), 1)
                sg = ((k / 2).sinc() if n == 0 else (k / 2).sin() / (q / 2)) / phi; qt2 = q * q * phi * phi
            else:
                if n == 0: sg = (k / 2).sinc() / (k / (2 * M)).sinc()
                else: sg = (k / 2).sin() / (M * (q / (2 * M)).sin())
                qt2 = (2 * M * (q / (2 * M)).sin())**2
            s2.append(sg * sg); q2.append(qt2)
        out.append((kh, s2, q2, sum(s2, arb(0)), k))
    return out


def d_enclosure(L, ax, M, N, h):
    """d^M_mu at all L^4 blocks: list (L^4) of 4 arb balls. Box in float64 (as h2cert_proto.dbox_float, vectorized over blocks)."""
    nb = len(ax[0][0][1])
    f = lambda i, w, side: np.array([[np.nextafter(float(getattr(x, side)()), -np.inf if side == "lower" else np.inf)
                                      for x in a[w]] for a in ax[i]])
    S_lo = [f(i, 1, "lower") for i in range(4)]; S_hi = [f(i, 1, "upper") for i in range(4)]
    Q_lo = [f(i, 2, "lower") for i in range(4)]; Q_hi = [f(i, 2, "upper") for i in range(4)]
    S_lo = [np.maximum(s, 0) for s in S_lo]
    g = 2 * (nb**4 + 8) * U
    res = []
    for S, Q, fac in ((S_lo, Q_hi, 1 - g), (S_hi, Q_lo, 1 + g)):
        acc = np.zeros((L, L, L, L, 4))
        for a in range(L):                                             # ponytail: loop over l_0 keeps memory at (L nb)^3
            P3 = S[1][:, None, None, :, None, None] * S[2][None, :, None, None, :, None] * S[3][None, None, :, None, None, :]
            Q3 = Q[1][:, None, None, :, None, None] + Q[2][None, :, None, None, :, None] + Q[3][None, None, :, None, None, :]
            for n0 in range(nb):
                W = S[0][a, n0] * P3 / (Q[0][a, n0] + Q3)               # (L, L, L, nb, nb, nb)
                acc[a, ..., 0] += S[0][a, n0] * W.sum((3, 4, 5))
                acc[a, ..., 1] += (W * S[1][:, None, None, :, None, None]).sum((3, 4, 5))
                acc[a, ..., 2] += (W * S[2][None, :, None, None, :, None]).sum((3, 4, 5))
                acc[a, ..., 3] += (W * S[3][None, None, :, None, None, :]).sum((3, 4, 5))
        res.append(acc * fac)
    lo, hi = res[0].reshape(-1, 4), res[1].reshape(-1, 4)
    if M == "inf":
        tlo, thi = tail_inf(L, ax, N, h)
        lo, hi = lo + tlo, hi + thi
    elif isinstance(M, str) or M >= 2 * N + 3:  # tail in [0, sum_rho (1 - B_rho) / qt_min^2]; sum s2 = 1 over any M-window
        qmin = (PI * (2 * N + 1) - arb(h) / L) * 2 / PI                # |qt| >= (2/pi)|q| on the centred window
        Em = np.array([[float((1 - ax[i][l][3]).upper()) for l in range(L)] for i in range(4)])
        tail = (Em[0][:, None, None, None] + Em[1][None, :, None, None] + Em[2][None, None, :, None] + Em[3][None, None, None, :])
        hi = hi + tail.reshape(-1)[:, None] * (1 + 16 * U) / float((qmin * qmin).lower())
    return np.nextafter(lo, -np.inf), np.nextafter(hi, np.inf)


def tail_inf(L, ax, N, h):
    """M = inf tail (|n|_inf > N) of d_mu at all blocks, as h2cert_proto.tail_enclosure (H2_CERTIFY sec. 2(iv)) with
    q_min = pi(2N+1) - h/L (|k'| <= pi + h/L), per-axis pieces in arb, block combination in float with outward factors.
    One large component rho0: U2 = sum_{|n|>N} 4s^2/q^4, U4 = sum_{|n|>N} 16 s^4/q^6, E = sum_{|n|>N} 4s^2/q^2, all by Hurwitz zeta
    (no cancellation, valid at k = 0; the closed-form-minus-box of the prototype loses everything on intervals).
    1/(q^2 + R) in [(1 - R/q_min^2)/q^2, 1/q^2]. Two or more large: [0, sum_pairs E_a E_b / (2 q_min^2)], E = 1 - sum_box s2."""
    qmin2 = (PI * (2 * N + 1) - arb(h) / L)**2
    P = {key: np.zeros((4, L, 2)) for key in ("U2", "U4", "A1", "A2", "B1", "B2", "E")}
    for i in range(4):
        for l in range(L):
            kh, s2, q2, _, k = ax[i][l]
            ss = (kh.real**2 + kh.imag**2) / 4
            A1 = sum(s2, arb(0)); A2 = sum((a * a for a in s2), arb(0))
            B1 = sum((a * b for a, b in zip(s2, q2)), arb(0)); B2 = sum((a * a * b for a, b in zip(s2, q2)), arb(0))
            kap = k / (2 * PI)                                              # k'/(2 pi), |k'| <= pi + h/L
            Z = lambda p: arb(p).zeta(N + 1 + kap) + arb(p).zeta(N + 1 - kap)  # sum_{|n|>N} (n + kap)^-p, Hurwitz
            U2 = 4 * ss * Z(4) / (2 * PI)**4; U4 = 16 * ss * ss * Z(6) / (2 * PI)**6; Et = 4 * ss * Z(2) / (2 * PI)**2
            for key, v in (("U2", U2), ("U4", U4), ("A1", A1), ("A2", A2), ("B1", B1), ("B2", B2), ("E", Et)):
                P[key][i, l] = [max(float(v.lower()), 0.0), float(v.upper())]
    g = 1 + 64 * U
    def blk(key, i, side):  # (L,L,L,L) broadcast of axis i values
        sh = [1, 1, 1, 1]; sh[i] = L
        return P[key][i, :, side].reshape(sh) * (g if side else 1 / g)
    T2 = sum(blk("E", a, 1) * blk("E", b, 1) for a in range(4) for b in range(a + 1, 4)) / (2 * float(qmin2.lower())) * g
    lo, hi = np.zeros((L,) * 4 + (4,)), np.zeros((L,) * 4 + (4,))
    iq = 1 / float(qmin2.lower()) * g
    for mu in range(4):
        for r0 in range(4):
            oth = [r for r in range(4) if r != r0]
            W = {r: (("A2" if r == mu else "A1")) for r in oth}; WR = {r: ("B2" if r == mu else "B1") for r in oth}
            Uk = "U4" if r0 == mu else "U2"
            Wl = [blk(W[r], r, 0) for r in oth]; Wh = [blk(W[r], r, 1) for r in oth]
            SRh = sum(blk(WR[r], r, 1) * Wh[(i + 1) % 3] * Wh[(i + 2) % 3] for i, r in enumerate(oth)) * g
            lo[..., mu] += blk(Uk, r0, 0) * np.maximum(Wl[0] * Wl[1] * Wl[2] / g - SRh * iq, 0) / g
            hi[..., mu] += blk(Uk, r0, 1) * Wh[0] * Wh[1] * Wh[2] * g
        hi[..., mu] += T2
    return lo.reshape(-1, 4) / g, hi.reshape(-1, 4) * g


def qrows(L, pf, Kc, h):
    """E_l rows 0..3 (q_0 symbol, coarse mu x fine r) at all blocks: centre (L^4,4,4) complex and radius (L^4,4,4) over the cell."""
    hk = h / L; hh = (L - 1) // 2
    kp = [(Kc[i] + 2 * np.pi * np.arange(L)) / L for i in range(4)]
    C = np.zeros((L,) * 4 + (4, 4), complex); G = np.zeros((L,) * 4 + (4, 4)); Rd = np.zeros((4, 4)); err = np.zeros((4, 4))
    dC = np.zeros((4,) + (L,) * 4 + (4, 4), complex); dR = np.zeros((4, 4, 4))
    for mu, F in enumerate(pf):
        y = [np.arange(F.shape[1 + a]) - hh for a in range(4)]
        W = [np.exp(1j * kp[a][:, None] * y[a][None]) for a in range(4)]
        con = lambda T: np.einsum("rabcd,ia,jb,kc,ld->ijklr", T, *W, optimize=True)
        C[..., mu, :] = con(F)
        for nu in range(4):  # |grad_nu Q| at the centre: sum_x F y_nu e^{iky}
            sh = [1] * 5; sh[1 + nu] = -1
            g = con(F * y[nu].reshape(sh)); G[..., mu, :] += np.abs(g); dC[nu][..., mu, :] = 1j * g / L
        ay = sum(np.abs(y[a]).reshape([1] * (1 + a) + [-1] + [1] * (3 - a)) for a in range(4))
        aF = np.abs(F); n1 = aF.sum((1, 2, 3, 4))
        Rd[mu] = 0.5 * (aF * ay**2).sum((1, 2, 3, 4))                  # Taylor remainder (1/2) h_k^2 sum |F| |y|_1^2
        for nu in range(4):  # |d_nu E(K) - d_nu E(K_c)| <= (h_k / L) sum |F| |y_nu| |y|_1, d_nu = d/dK_nu
            sh = [1] * 5; sh[1 + nu] = -1
            dR[nu, mu] = (aF * np.abs(y[nu]).reshape(sh) * ay).sum((1, 2, 3, 4)) / L
        th = (np.pi + h / L) * 2 * L + 2
        err[mu] = (2 * (4 * sum(F.shape[1:]) + 40) * U * 1.1 + 8 * U * th * 4 + 1e-13) * n1  # float centre + P1' (F radius)
        Gerr = (2 * (4 * sum(F.shape[1:]) + 40) * U * 1.1 + 8 * U * th * 4) * (aF * ay).sum((1, 2, 3, 4))
        G[..., mu, :] += Gerr
    rad = (G * hk * (1 + 1e-12) + Rd * hk * hk + err) * (1 + 1e-12)
    drad = (dR * hk + 2 * err[None] * L) * (1 + 1e-12)                  # float error of dC: same a priori bound with weights |y| <= L
    return C.reshape(-1, 4, 4), rad.reshape(-1, 4, 4), err, dC.reshape(4, -1, 4, 4), drad


def lam_max_upper(G):
    """Rigorous upper bound on lambda_max over every Hermitian matrix in the 4x4 acb ball matrix G (Weyl + Sylvester)."""
    n = G.nrows()
    Gm = np.array([[complex(float(G[i, j].real.mid()), float(G[i, j].imag.mid())) for j in range(n)] for i in range(n)])
    Gh = (Gm + Gm.conj().T) / 2
    t = float(np.linalg.eigvalsh(Gh)[-1]); t = t + 1e-12 * abs(t) + 1e-300
    Th = acb_mat([[acb(Gh[i, j].real, Gh[i, j].imag) for j in range(n)] for i in range(n)])
    S = acb_mat([[(arb(t) if i == j else 0) - Th[i, j] for j in range(n)] for i in range(n)])
    assert all(acb_mat([[S[i, j] for j in range(r)] for i in range(r)]).det().real > 0 for r in range(1, n + 1))
    e = arb(0)
    for i in range(n):
        for j in range(n): e += (G[i, j] - Th[i, j]).abs_upper()**2
    return arb(t) + e.sqrt()


def _mat(X): return acb_mat([[acb(complex(z).real, complex(z).imag) for z in r] for r in np.atleast_2d(X)])
def _mid(B): return np.array([[complex(float(B[i, j].real.mid()), float(B[i, j].imag.mid())) for j in range(B.ncols())] for i in range(B.nrows())])
def _radF(B, C):  # sup ||B - C||_F over the ball matrix B (C exact): rigorous upper bound
    e = arb(0)
    for i in range(B.nrows()):
        for j in range(B.ncols()): e += (B[i, j] - C[i, j]).abs_upper()**2
    return arb(e.sqrt().upper())
def _n2(X): return arb(lam_max_upper(_mat(X.conj().T @ X)).sqrt().upper())  # ||X||_2 upper bound, X exact float


def final_bound(T, T2, Kh, Kn2, beta, sig):
    """Upper bound on lambda_max(Z T2 Z + (sig / |beta|^2)(u/c)(u/c)^dag) over the balls (= rho_1^2 L^2, h1cert sec. 2).
    Z, u/c from the bordered matrix B = [[T, tau n], [tau n^dag, 0]], n = Kh/|Kh|: B^-1 = [[Z, w], [w^dag, *]], u/c = w tau/|Kh|.
    Oishi-Rump on B with X = float inv(B_mid): eta = ||I - X B_mid||_F + ||X|| r_B < 1, ||B^-1 - X|| <= eps = ||X|| eta / (1 - eta);
    then the norm-wise perturbation of lambda_max (Weyl) for Z T2 Z and the rank-one term."""
    n = acb_mat([[Kh[i, 0] / Kn2.sqrt()] for i in range(4)])
    Tm = _mid(T); Tm = (Tm + Tm.conj().T) / 2; ev = np.linalg.eigvalsh(Tm); tau = float(np.sqrt(abs(ev[0]) * abs(ev[-1])))
    B = acb_mat(5, 5)
    for i in range(4):
        for j in range(4): B[i, j] = T[i, j]
        B[i, 4] = n[i, 0] * tau; B[4, i] = n[i, 0].conjugate() * tau
    Bm = _mid(B); Bm = (Bm + Bm.conj().T) / 2; X = np.linalg.inv(Bm); Bma, Xa = _mat(Bm), _mat(X)
    nX = _n2(X); I5 = acb_mat(5, 5, [1 if i == j else 0 for i in range(5) for j in range(5)])
    eta = _radF(I5 - Xa * Bma, acb_mat(5, 5)) + nX * _radF(B, Bma)
    assert eta < 1, f"eta {float(eta.mid()):.3f}"
    eps = nX * eta / (1 - eta)
    T2m = _mid(T2); T2h = (T2m + T2m.conj().T) / 2; r2 = _radF(T2, _mat(T2h))
    XZ, xw = X[:4, :4], X[:4, 4:5]
    gam = arb((sig * tau**2 / (beta.abs_lower()**2 * Kn2)).upper())   # (sig/|beta|^2) |u/c|^2 = gam |w|^2
    core = lam_max_upper(_mat(XZ.conj().T) * _mat(T2h) * _mat(XZ) + _mat(xw) * _mat(xw.conj().T) * gam)
    pert = 2 * _n2(T2h @ XZ) * eps + _n2(T2h) * eps**2 + (_n2(XZ) + eps)**2 * r2 + gam * (2 * _n2(xw) * eps + eps**2)
    return core + pert


def cell_bound(L, M, Kc, h, N=3, pf=None, log=None):
    """Certified upper bound on sup_{K in cell} rho_1(j, K) (arb), or None if the cell touches the K = 0 block."""
    t0 = time.time(); pf = pf if pf is not None else prof(L)
    Kf = np.array([float(x.mid()) if isinstance(x, arb) else float(x) for x in Kc])
    Kc = [Kc[i] if isinstance(Kc[i], arb) else arb(Kc[i]) for i in range(4)]
    ax = [axis_data(L, Kc[i], h, M, N) for i in range(4)]
    kc = [[acb(0, (Kc[i] + 2 * PI * l) / L).exp() - 1 for l in range(L)] for i in range(4)]  # centre kh (tight)
    dlo, dhi = d_enclosure(L, ax, M, N, h)
    Ec, Er, Ee, dEc, dEr = qrows(L, pf, Kf, h)
    hb = arb(0, h)
    cb = lambda z, r: acb(arb(z.real, r), arb(z.imag, r))
    t1 = time.time()
    T = acb_mat(4, 4); T2 = acb_mat(4, 4); bsum = acb(0); sig = arb(0)
    I4 = acb_mat(4, 4, [1 if i == j else 0 for i in range(4) for j in range(4)])
    Kh = acb_mat([[acb(0, Kc[i] + arb(0, h)).exp() - 1] for i in range(4)]); Kn2 = sum((Kh[i, 0].real**2 + Kh[i, 0].imag**2 for i in range(4)), arb(0))
    if not (Kn2 > 0): return None                                      # cell touches K = 0
    for idx, (l0, l1, l2, l3) in enumerate(np.ndindex(L, L, L, L)):
        kh = [ax[0][l0][0], ax[1][l1][0], ax[2][l2][0], ax[3][l3][0]]
        a2 = sum((x.real**2 + x.imag**2 for x in kh), arb(0))
        if not (a2 > 0): return None
        khm = acb_mat([[x] for x in kh])
        P = I4 - khm * khm.conjugate().transpose() / a2
        k0 = acb_mat([[kc[0][l0]], [kc[1][l1]], [kc[2][l2]], [kc[3][l3]]]); a20 = sum((k0[i, 0].real**2 + k0[i, 0].imag**2 for i in range(4)), arb(0))
        P0 = I4 - k0 * k0.conjugate().transpose() / a20
        E0 = acb_mat([[cb(Ec[idx, m, r], Ee[m, r]) for r in range(4)] for m in range(4)])
        Eq = acb_mat([[cb(Ec[idx, m, r], Er[idx, m, r]) for r in range(4)] for m in range(4)])
        EP = E0 * P0                                                     # E P on the cell = centre + sum_nu [-h, h] d_nu(E P)(cell)
        for nu in range(4):
            dk = acb_mat(4, 1); dk[nu, 0] = (kh[nu] + 1) * acb(0, 1) / L
            da2 = 2 * (kh[nu].conjugate() * dk[nu, 0]).real
            dP = -(dk * khm.conjugate().transpose() + khm * dk.conjugate().transpose()) / a2 + khm * khm.conjugate().transpose() * (da2 / (a2 * a2))
            dE = acb_mat([[cb(dEc[nu, idx, m, r], dEr[nu, m, r]) for r in range(4)] for m in range(4)])
            EP += (dE * P + Eq * dP) * hb
        D = acb_mat(4, 4, [ball(dlo[idx, i], dhi[idx, i]) if i == j else 0 for i in range(4) for j in range(4)])
        Eq = acb_mat([[acb(arb(Ec[idx, m, r].real, Er[idx, m, r]), arb(Ec[idx, m, r].imag, Er[idx, m, r])) for r in range(4)] for m in range(4)])
        EPD = EP * D
        T += EPD * EP.conjugate().transpose(); T2 += EPD * P * EPD.conjugate().transpose()
        bsum += (Kh.conjugate().transpose() * Eq * khm)[0, 0] / a2    # phi_l |Kh|^2 / a2  (E_q kh = phi Kh, premise P4)
        sig += 1 / a2
    s2 = arb(1) / L**4
    T, T2, beta, sig = T * s2, T2 * s2, bsum * s2 / Kn2, sig * s2
    ub = arb((final_bound(T, T2, Kh, Kn2, beta, sig).sqrt() / L).upper())
    if log: log(f"  d,E {t1-t0:.1f}s, blocks {time.time()-t1:.1f}s; max rel rad T {max(float(T[i,j].rad()) for i in range(4) for j in range(4)) / float(T[0,0].real.mid()):.2e}, |beta| {float(beta.abs_lower()):.4f}")
    return ub


if __name__ == "__main__":
    L, M, h, N = int(sys.argv[1]), sys.argv[2], float(sys.argv[3]), int(sys.argv[4])
    M = M if (M == "inf" or M.startswith("M0:")) else int(M)
    Ks = sys.argv[5:9]
    Kc = [PI if s == "pi" else arb(float(s)) for s in Ks]
    from h1cert_rho1 import rho1
    Kf = np.array([np.pi if s == "pi" else float(s) for s in Ks])
    t = time.time()
    ub = cell_bound(L, M, Kc, h, N, log=print)
    print(f"L={L} M={M} N={N} K_c={Ks} h={h}: float rho_1(K_c) = {rho1(L, M if not isinstance(M, str) or M == 'inf' else 'inf', Kf, prof(L)):.6f}, "
          f"certified sup over cell <= {float(ub.upper()) if ub is not None else None}  (sqrt L = {L**0.5:.4f})  {time.time()-t:.1f}s")
