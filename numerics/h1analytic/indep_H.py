# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
"""Independent construction of the one-step minimizer map H_j(K) (../../H1_ANALYTIC_VERIFY2.md).
Shares no matrix-building code with h2_scan / h1cert_rho1 / umk_beta1; those are imported only in compare() for reference numbers.
Fine Bloch field A_nu(z) = sum_l x_l e^{i k_l z}, k_l = (K + 2 pi l)/L; coarse B_mu(y) = b_mu e^{iKy}; rho_1 = L sqrt(lmax(X^dag X)).
Usage: python indep_H.py [L ...]   (default: 3 13)
"""
import sys, time, itertools, numpy as np, scipy.sparse as sp, scipy.sparse.linalg as sla

_PROF = {}


def profile(L):
    """Linearized Balaban (0.4) averaging in position space: F[mu] (4 fine dirs, 2L, 2L, 2L, 2L), index = z + h."""
    if L in _PROF: return _PROF[L]
    h = (L - 1) // 2; N = 2 * L; dv = np.array(list(itertools.product(range(-h, h + 1), repeat=4)))  # (L^4, 4)
    out = []
    for mu in range(4):
        idx, val = [], []
        def add(base, ax, w):
            idx.append(np.ravel_multi_index(tuple((base + h).T), (N,) * 4) * 4 + ax); val.append(w)
        Le = np.zeros(4, int); Le[mu] = L
        w0 = 1.0 / (L**4 * 24)
        for order in itertools.permutations(range(4)):
            P = np.zeros_like(dv)
            for a in order:
                m = dv[:, a]
                for t in range(h):
                    pos = m > t; neg = m < -t
                    e = np.zeros(4, int); e[a] = 1
                    b = P[pos] + t * e; add(b, a, np.full(len(b), w0)); add(b + Le, a, np.full(len(b), -w0))
                    b = P[neg] - (t + 1) * e; add(b, a, np.full(len(b), -w0)); add(b + Le, a, np.full(len(b), w0))
                P = P.copy(); P[:, a] = m
        for t in range(L):  # straight d -> d + L e_mu
            e = np.zeros(4, int); e[mu] = t; add(dv + e, mu, np.full(len(dv), 1.0 / L**4))
        F = np.bincount(np.concatenate(idx), np.concatenate(val), N**4 * 4).reshape((N,) * 4 + (4,))
        out.append(np.moveaxis(F, -1, 0))
    _PROF[L] = out
    return out


def Esym(L, K):
    """E[l, mu, nu] = sum_z F^mu_nu(z) e^{i k_l z}, l in C order over {0..L-1}^4."""
    h = (L - 1) // 2; z = np.arange(2 * L) - h
    V = [np.exp(1j * np.outer((K[a] + 2 * np.pi * np.arange(L)) / L, z)) for a in range(4)]  # (L, 2L)
    E = np.empty((L,) * 4 + (4, 4), complex)
    for mu, F in enumerate(profile(L)):
        E[..., mu, :] = np.einsum("nabcd,ia,jb,kc,ld->ijkln", F, *V, optimize=True)
    return E.reshape(L**4, 4, 4)


def dprop(kax, M, Nmax=1000, ds=0.25):
    """Prop. A d^M_mu on the tensor grid kax[0] x .. x kax[3] (each (L,)), M int or 'inf': (L,L,L,L,4)."""
    n = np.arange(-Nmax, Nmax + 1) if M == "inf" else np.arange(M)
    tabs, q2min = [], 0.0
    for k in kax:
        q = k[:, None] + 2 * np.pi * n[None]
        qt = q if M == "inf" else 2 * M * np.sin(q / (2 * M))
        with np.errstate(divide="ignore", invalid="ignore"):
            s2 = np.where(qt == 0, 1.0, np.sin(k[:, None] / 2)**2 / (qt / 2)**2)
        tabs.append((qt**2, s2)); q2min += np.min(qt**2)
    S = np.arange(-30.0, np.log(60.0 / max(q2min, 1e-30)) + ds, ds); t = np.exp(S); w = ds * t
    f = [np.einsum("an,ant->at", s2, np.exp(-t[None, None] * q2[..., None])) for q2, s2 in tabs]
    g = [np.einsum("an,ant->at", s2**2, np.exp(-t[None, None] * q2[..., None])) for q2, s2 in tabs]
    d = [np.einsum("at,bt,ct,dt,t->abcd", *[g[a] if a == mu else f[a] for a in range(4)], w) for mu in range(4)]
    return np.stack(d, -1)


def kernel(k, d):
    """Fine kernel blocks (N,4,4): Wilson if d is None, else Prop. A [P diag(d) P]^+."""
    kh = np.exp(1j * k) - 1; a2 = (abs(kh)**2).sum(-1)
    if d is None: return a2[:, None, None] * np.eye(4) - kh[:, :, None] * kh.conj()[:, None, :]
    n = kh / np.sqrt(a2)[:, None]; nn = n[:, :, None] * n.conj()[:, None, :]; P = np.eye(4) - nn
    return np.linalg.inv(P @ (d[:, :, None] * P) + nn) - nn


def solve(L, K, Delta=None, M=1):
    """Columns x(b = e_mu) of the minimizer map at K: X (L^4, 4 fine, 4 coarse). Delta: optional callable k -> blocks."""
    K = np.asarray(K, float); N = L**4
    lv = np.indices((L,) * 4).reshape(4, -1).T; k = (K + 2 * np.pi * lv) / L
    if Delta is not None: D = Delta(k)
    else: D = kernel(k, None if M == 1 else dprop([(K[a] + 2 * np.pi * np.arange(L)) / L for a in range(4)], M).reshape(N, 4))
    E = Esym(L, K); kh = np.exp(1j * k) - 1
    r, c, v = [], [], []
    base = 5 * np.arange(N); G = 5 * N
    for a in range(4):
        for b in range(4): r.append(base + a); c.append(base + b); v.append(D[:, a, b])
        r.append(base + a); c.append(base + 4); v.append(kh[:, a])
        r.append(base + 4); c.append(base + a); v.append(kh[:, a].conj())
        for m in range(4):
            r.append(base + a); c.append(np.full(N, G + m)); v.append(E[:, m, a].conj())
            r.append(np.full(N, G + m)); c.append(base + a); v.append(E[:, m, a])
    for rr, cc in ((base + 4, np.full(N, G + 4)), (np.full(N, G + 4), base + 4)):
        r.append(rr); c.append(cc); v.append(-np.ones(N))
    A = sp.csc_matrix((np.concatenate(v), (np.concatenate(r), np.concatenate(c))), shape=(G + 5, G + 5))
    rhs = np.zeros((G + 5, 4), complex); rhs[G:G + 4] = np.eye(4)
    sol = sla.splu(A).solve(rhs)
    res = np.abs(A @ sol - rhs).max()
    return sol[:G].reshape(N, 5, 4)[:, :4, :], k, D, res


def rho_parts(L, X, k):
    """rho_1, transverse rho_t^2, gauge G (lambda_max of each part, normalized as H1_ANALYTIC)."""
    kh = np.exp(1j * k) - 1; n = kh / np.linalg.norm(kh, axis=1)[:, None]
    Xg = n[:, :, None] * np.einsum("la,lab->lb", n.conj(), X)[:, None, :]; Xt = X - Xg
    lm = lambda Y: np.linalg.eigvalsh(np.einsum("lab,lac->bc", Y.conj(), Y))[-1]
    return L * np.sqrt(lm(X)), L**2 * lm(Xt), L**2 * lm(Xg)


def Delta_recursive(L):
    """Level-1 kernel from my own j = 1 solves: Delta_out(kappa) ~ X^dag (+)Delta_0 X (scale irrelevant for H)."""
    def f(kap):
        out = np.empty((len(kap), 4, 4), complex)
        for i, q in enumerate(kap):
            X, kk, D0, _ = solve(L, q, M=1); out[i] = np.einsum("lab,lbc,lcd->ad", X.conj().transpose(0, 2, 1), D0, X)
        return out
    return f


# ---------------- reference comparison (production / H1_ANALYTIC code used only here) ----------------
def compare(L, Ks, js):
    sys.path.insert(0, "~/claude_code/yang_mills/numerics")
    import h2_scan as h2
    from h1cert_rho1 import prof, rho1, pieces, Mof
    pf = prof(L); rows = []
    for j in js:
        Mp = Mof(L, j); Mi = 1 if j == 1 else Mp
        for K in Ks:
            t = time.time(); X, k, _, res = solve(L, K, M=Mi); r1, rt, gg = rho_parts(L, X, k)
            ref = rho1(L, Mp, K, pf)
            # H1_ANALYTIC (1.1) terms from the production pieces (as numerics/h1analytic/chk.py)
            s = L**-2.0; kk, d, *_ = pieces(L, Mp, np.asarray(K, float), pf)
            Eq = h2.qsym(pf, np.asarray(K, float)[None] / L, L)[0]
            khf = np.exp(1j * kk) - 1; nf = khf / np.linalg.norm(khf, axis=1)[:, None]
            Pf = np.eye(4) - nf[:, :, None] * nf.conj()[:, None, :]; PDP = Pf @ (d[:, :, None] * Pf)
            T = s**2 * np.einsum("lab,lbc,ldc->ad", Eq, PDP, Eq.conj())
            T2 = s**2 * np.einsum("lab,lbc,lcd,led->ae", Eq, PDP, PDP, Eq.conj())
            Kh = np.exp(1j * np.asarray(K)) - 1; nK = Kh / np.linalg.norm(Kh); PK = np.eye(4) - np.outer(nK, nK.conj())
            Z = np.linalg.pinv(PK @ T @ PK, rcond=1e-12, hermitian=True); sig = s**2 * (1 / (abs(khf)**2).sum(1)).sum()
            cr = Kh.conj() @ (np.eye(4) - T @ Z)
            rtA = np.linalg.eigvalsh(Z @ T2 @ Z)[-1] / L**2
            gA = np.linalg.norm(cr)**2 / (sig * np.linalg.norm(Kh)**4 * L**2)
            rows.append((j, tuple(np.round(K, 4)), r1, ref, abs(r1 - ref) / ref, rt, rtA, gg, gA, res, time.time() - t))
            print(f"L={L} j={j} K={np.round(K,4)} indep={r1:.12f} prod={ref:.12f} rel={abs(r1-ref)/ref:.1e} "
                  f"rho_t^2 {rt:.10f}/{rtA:.10f} G {gg:.3e}/{gA:.3e} res={res:.0e} {time.time()-t:.1f}s", flush=True)
    return rows


if __name__ == "__main__":
    Ls = [int(a) for a in sys.argv[1:]] or [3, 13]
    for L in Ls:
        rng = np.random.default_rng(7); Ks = [rng.uniform(-np.pi, np.pi, 4) for _ in range(10)]
        if L == 13: Ks += [np.array([a, a, np.pi, np.pi]) for a in (2.354493, 2.478694, 2.479644)]  # face argmax j = 1, 2, inf
        compare(L, Ks, [1, 2, "inf"])


def extra():
    """Lemma S/G conventions vs my E and production qsym; recursive Delta at L = 3; F-bound of Lemma T at L = 13 face points."""
    sys.path.insert(0, "~/claude_code/yang_mills/numerics")
    import h2_scan as h2
    from h1cert_rho1 import prof, rho1
    from math import comb
    rng = np.random.default_rng(11)
    for L in (3, 5, 13):
        pf = prof(L); h = (L - 1) // 2
        for K in (rng.uniform(-np.pi, np.pi, 4), np.array([2.48, 2.48, np.pi, np.pi])):
            E = Esym(L, K); Ep = h2.qsym(pf, K[None] / L, L)[0]
            lv = np.indices((L,) * 4).reshape(4, -1).T; k = (K + 2 * np.pi * lv) / L; kh = np.exp(1j * k) - 1
            SL = lambda x: np.exp(1j * np.outer(x.ravel(), np.arange(L))).sum(1).reshape(x.shape)  # sum_{t=0}^{L-1} e^{ixt}
            al = np.exp(1j * k[..., None] * (np.arange(2 * h + 1) - h)).sum(-1) / L                  # alpha(k_rho)
            A = al.prod(1); Kh = np.exp(1j * K) - 1
            Phi = np.empty_like(al)
            for nu in range(4):
                o = np.delete(al, nu, 1)
                er = [np.ones(len(o)), o.sum(1), o[:, 0] * o[:, 1] + o[:, 0] * o[:, 2] + o[:, 1] * o[:, 2], o.prod(1)]
                Phi[:, nu] = sum(er[r] / comb(3, r) for r in range(4)) / 4
            g = Phi * (al - 1) / kh
            ES = np.einsum("lm,mn->lmn", SL(k) * A[:, None], np.eye(4)) - Kh[None, :, None] * g[:, None, :]
            rel = lambda a, b: np.abs(a - b).max() / np.abs(b).max()
            print(f"L={L} K={np.round(K,3)}: |E_mine - qsym|/|qsym| = {rel(E, Ep):.1e}, |E_mine - LemmaS+G| = {rel(E, ES):.1e}")
    # recursive level-1 kernel at L = 3 (my j = 1 solves) vs Prop. A at M = 3
    L = 3; pf = prof(L); Dr = Delta_recursive(L)
    for K in (np.array([2.215, 2.215, np.pi, np.pi]), rng.uniform(-np.pi, np.pi, 4)):
        lv = np.indices((L,) * 4).reshape(4, -1).T; k = (K + 2 * np.pi * lv) / L
        D1 = Dr(k); DA = kernel(k, dprop([(K[a] + 2 * np.pi * np.arange(L)) / L for a in range(4)], 3).reshape(-1, 4))
        c = np.einsum("lab,lab->l", D1.conj(), DA).real / np.einsum("lab,lab->l", DA.conj(), DA).real
        X, kk, _, _ = solve(L, K, Delta=lambda q: D1); r_rec = rho_parts(L, X, kk)[0]
        X, kk, _, _ = solve(L, K, M=3); r_A = rho_parts(L, X, kk)[0]
        print(f"L=3 K={np.round(K,3)}: Delta_rec/Delta_PropA scale {c.min():.10f}..{c.max():.10f} (L^-2={1/9:.10f}), "
              f"shape dev {np.abs(D1 - c[:, None, None] * DA).max() / np.abs(D1).max():.1e}; rho_1 j=2 rec {r_rec:.12f} PropA {r_A:.12f} prod {rho1(3, 3, K, pf):.12f}")
    # Lemma T: rho_t^2 <= gamma_L F(K), F with |n| <= 6 (my direct sum)
    L = 13; gam = np.sinc(1 / (2 * L))**-2
    for a in (2.354493, 2.479644, np.pi):
        K = np.array([a, a, np.pi, np.pi]); n = np.stack(np.meshgrid(*[np.arange(-6, 7)] * 4, indexing="ij"), -1).reshape(-1, 4)
        q = K + 2 * np.pi * n; s2 = np.sin(K / 2)**2 / (q / 2)**2
        dlow = (s2.prod(1)[:, None] * s2 / (q**2).sum(1)[:, None]).sum(0).min(); F = 1 / ((K**2).sum() * dlow)
        for j, M in ((1, 1), ("inf", "inf")):
            X, kk, _, _ = solve(L, K, M=M); r1, rt, gg = rho_parts(L, X, kk)
            print(f"L=13 j={j} K=({a:.4f},{a:.4f},pi,pi): rho_t^2 = {rt:.6f} <= gamma F = {gam*F:.6f}; G = {gg:.3e}; rho_1^2 = {r1**2:.6f}")
