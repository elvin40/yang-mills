# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
"""(H2) scan: rho_2(L; j) = sup_K ||(+)_l H_{j-1}(k_l) H_j(K)|| / L^2, d = 4, one colour, trivial background (../H2_LARGE_L.md).
Per coarse K: L^4 inner bordered solves (level j-1, fine kernel Delta_{j-2}) give Delta_{j-1}(k_l) and the Gram G(k_l) = H_{j-1}^dag H_{j-1};
the outer solve (fine kernel Delta_{j-1}) gives H_j(K); rho_2(K)^2 = lambda_max(sum_l H_{j,l}^dag G(k_l) H_{j,l}) / L^4.
Bordered pieces as in umk_beta1 (real (0.4) row q_0, ghost DD^dag, aux row W^dag). Inner fine kernel Delta_M (M = L^{j-2}, M = 1 Wilson,
'inf' fixed point) by U3_REPAIRS Prop. A: Delta^+ = P diag(d^M) P, A^{-1} = P diag(d) P + n n^dag/|k^|^2 (H, Delta_out do not depend on scales).
d^M_mu = int_0^inf dt g_mu prod_{nu != mu} f_nu (1/|q~|^2 = int e^{-t|q~|^2}), 1D tables, t = e^s trapezoid.
Usage: python h2_scan.py L j [--check] [--nface 7] [--n4 0] [--maxfev 30]  -> results/h2_L{L}_j{j}.json (per-K cache, skip-if-done, resumable).
"""
import os as _os
import sys, os, json, time, itertools
import numpy as np
from scipy.optimize import minimize

HERE = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, HERE)
Hc = lambda X: np.conj(np.swapaxes(X, -1, -2))
J5 = np.diag([0, 0, 0, 0, 1.0])
NMAX, SH = 200, 0.5  # 1D umklapp cut for M = inf (tail < 1e-8), quadrature step in s = log t


def qprof(L):
    """Order-0 averaging profile, one colour: list over coarse direction mu of F (4 fine dirs, *shape). Cached per L."""
    path = os.path.join(HERE, "results", f"h2_prof_L{L}.npz")
    if os.path.exists(path):
        z = np.load(path); return [z[f"F{m}"] for m in range(4)]
    from umk_beta1 import consts, avg_profile
    cons = consts(); c = np.array([0, 1, 0, 0], complex); out = []
    for mu in range(4):
        F, M = avg_profile(L, mu, 0.0, c, cons)["0"]
        out.append(np.einsum("r...,r->...", F, M[:, 2, 2]))
    np.savez(path, **{f"F{m}": out[m] for m in range(4)})
    return out


def qsym(prof, Kf, L):
    """q_0 symbol at fine momenta Kf + 2 pi l / L, all l (ndindex order): (B, L^4, 4 coarse, 4 fine). Copy of umk_beta1.csym, one colour."""
    h = (L - 1) // 2; B = len(Kf)
    lph = np.exp(-2j * np.pi * np.indices((L,) * 4).reshape(4, -1).sum(0) * h / L)
    out = np.empty((B, L**4, 4, 4), complex)
    for mu, F in enumerate(prof):
        shape = F.shape[1:]; g = F[None].astype(complex)
        for ax in range(4):
            sh = [B, 1, 1, 1, 1, 1]; sh[2 + ax] = shape[ax]
            g = g * np.exp(1j * Kf[:, ax, None] * (np.arange(shape[ax]) - h)).reshape(sh)
        if shape[mu] == 2 * L:
            s = list(g.shape); s[2 + mu:3 + mu] = [2, L]; g = g.reshape(s).sum(2 + mu)
        ft = np.fft.ifftn(g, axes=(-4, -3, -2, -1)).reshape(B, 4, L**4) * L**4 * lph
        out[:, :, mu, :] = ft.transpose(0, 2, 1)
    return out


def snodes(q2min):
    return np.arange(-18.0, np.log(40.0 / q2min) + SH, SH)


def fg(th, M, S):
    """1D tables f = sum sg^2 e^{-t q~^2}, g = sum sg^4 e^{-t q~^2} at t = e^S: (len(th), len(S)) each."""
    th = np.asarray(th, float)[:, None]
    n = np.arange(-NMAX, NMAX + 1) if M == "inf" else np.arange(M) - (M - 1) // 2
    q = th + 2 * np.pi * n[None]
    qt = q if M == "inf" else 2 * M * np.sin(q / (2 * M))
    with np.errstate(divide="ignore", invalid="ignore"):
        sg2 = np.where(np.abs(qt) < 1e-300, 1.0, np.sin(th / 2)**2 / (qt / 2)**2)
    E = np.exp(-np.exp(S)[None, None, :] * (qt**2)[..., None])
    return np.einsum("an,ant->at", sg2, E), np.einsum("an,ant->at", sg2**2, E)


def dgrid(ths, M, S):
    """d^M_mu on the tensor grid ths[0] x .. x ths[3]: (n0, n1, n2, n3, 4)."""
    w = SH * np.exp(S); tabs = [fg(t, M, S) for t in ths]; n = [len(t) for t in ths]; out = []
    for mu in range(4):
        a = [tabs[i][1] if i == mu else tabs[i][0] for i in range(4)]
        X = (a[0][:, None] * a[1][None] * w).reshape(-1, len(S)); Y = (a[2][:, None] * a[3][None]).reshape(-1, len(S))
        out.append((X @ Y.T).reshape(n))
    return np.stack(out, -1)


def border(k, Q, Ainv_apply):
    """E^dag columns (q_0 rows, aux W row) and Y = A^{-1} E^dag for blocks at fine momenta k: (N,4,5) each. s = L^{-2} applied by caller."""
    Ed = np.concatenate([Hc(Q), (1 - np.exp(1j * k))[..., None]], -1)
    return Ed, Ainv_apply(Ed)


def schur(Ed, Y, s):
    """Sum over the umklapp axis (-3): S = J - sum E Y, R = sum Y^dag Y (with the L^{-2} factors); returns Si, R."""
    sh = Ed.shape[:-3] + (-1, 5); E2, Y2 = Ed.reshape(sh), Y.reshape(sh)
    S = J5 - s**2 * (Hc(E2) @ Y2)
    R = s**2 * (Hc(Y2) @ Y2)
    return np.linalg.inv(S), R


class H2:
    def __init__(self, L, j):
        self.L, self.j = L, j
        self.M = 1 if j == 2 else ("inf" if j == "inf" else L**(j - 2))
        self.prof = qprof(L)
        self.lv = np.indices((L,) * 4).reshape(4, -1).T

    def inner(self, K):
        """For all outer l: Delta_{j-1}(k_l) (L^4,4,4) and G(k_l) = H_{j-1}(k_l)^dag H_{j-1}(k_l) (L^4,4,4)."""
        L, s = self.L, self.L**-2.0
        th = [(K[i] + 2 * np.pi * np.arange(L * L)) / L**2 for i in range(4)]  # level j-2 momenta, m = l + L l'
        q2 = sum(np.min(np.angle(np.exp(1j * t))**2) for t in th)
        S = snodes(max(q2, 1e-30))
        tab4 = th[3]
        Dl, Gl = np.empty((L**4, 4, 4), complex), np.empty((L**4, 4, 4), complex)
        for l1, l2, l3 in itertools.product(range(L), repeat=3):
            sub = [th[0][l1::L], th[1][l2::L], th[2][l3::L], tab4]          # (l'1, l'2, l'3, m4)
            d = dgrid(sub, self.M, S)                                       # (L, L, L, L^2, 4)
            d = d.reshape(L, L, L, L, L, 4).transpose(4, 0, 1, 2, 3, 5).reshape(L, L**4, 4)  # m4 = L l'4 + l4 -> (l4, l')
            ll = np.array([[l1, l2, l3, l4] for l4 in range(L)])
            kap = (K[None] + 2 * np.pi * ll) / L                            # inner coarse momenta (level j-1)
            k = (kap[:, None, :] + 2 * np.pi * self.lv[None]) / L           # (L, L^4, 4)
            kh = np.exp(1j * k) - 1; a2 = np.sum(np.abs(kh)**2, -1); nv = kh / np.sqrt(a2)[..., None]
            def Ainv(X):
                nc = nv.conj()[..., None]; ip = lambda Z: (nc * Z).sum(-2, keepdims=True)
                P = lambda Z: Z - nv[..., None] * ip(Z)
                return P(d[..., None] * P(X)) + nv[..., None] * ip(X) / a2[..., None, None]
            Ed, Y = border(k, qsym(self.prof, kap / L, L), Ainv)
            Si, R = schur(Ed, Y, s)
            Sc = Si[..., :4]
            idx = np.ravel_multi_index(ll.T, (L,) * 4)
            Dl[idx] = -Si[..., :4, :4]
            Gl[idx] = Hc(Sc) @ R @ Sc
        return Dl, Gl

    def rho(self, K):
        K = np.asarray(K, float); L, s = self.L, self.L**-2.0
        Dl, Gl = self.inner(K)
        k = (K[None] + 2 * np.pi * self.lv) / L
        d0 = 1 - np.exp(1j * k)
        Ai = np.linalg.inv(Dl + d0[:, :, None] * d0.conj()[:, None, :])
        Ed, Y = border(k, qsym(self.prof, K[None] / L, L)[0], lambda X: Ai @ X)
        Si, R = schur(Ed, Y, s)
        Hl = -s * Y @ Si[:, :4]                                            # H_j(K) blocks (L^4, 4, 4)
        r1 = np.sqrt(np.linalg.eigvalsh(np.sum(Hc(Hl) @ Hl, 0))[-1]) / L
        r2 = np.sqrt(np.linalg.eigvalsh(np.sum(Hc(Hl) @ Gl @ Hl, 0))[-1]) / L**2
        return float(r2), float(r1)


def check():
    """L = 3 validation against U3_AW_VERIFY sec. 6 / B2_TWOSTEP sec. 4 (aw_verify, real (0.4) row from ym_momentum)."""
    for j, K, ref in [(2, (2.215, 2.215, np.pi, np.pi), 2.00857), ("inf", (2.403, 2.403, np.pi, np.pi), 2.0634)]:
        t = time.time(); r2, r1 = H2(3, j).rho(K)
        print(f"L=3 j={j} K={K}: rho_2 = {r2:.5f} (ref {ref}), rho_1 = {r1:.5f}, {time.time()-t:.1f}s", flush=True)
        assert abs(r2 - ref) < 2e-3, (r2, ref)


def scan(L, j, nface=7, n4=0, maxfev=30):
    os.makedirs(os.path.join(HERE, "results"), exist_ok=True)
    out = os.path.join(HERE, "results", f"h2_L{L}_j{j}.json")
    res = json.load(open(out)) if os.path.exists(out) else {}
    if "summary" in res:
        print("done", res["summary"]); return res["summary"]
    h = H2(L, j); pts = res.setdefault("pts", {}); t0 = time.time()

    def ev(K):
        K = np.sort(np.abs(np.asarray(K, float)))                          # hypercubic reduction (perm + sign)
        key = str(np.round(K, 6).tolist())
        if key not in pts:
            t = time.time(); pts[key] = h.rho(K); _tmp = out + ".tmp"; json.dump(res, open(_tmp, "w")); _os.replace(_tmp, out)
            print(f"L={L} j={j} K={np.round(K, 4)} rho2={pts[key][0]:.5f} rho1={pts[key][1]:.5f} {time.time()-t:.0f}s", flush=True)
        return pts[key][0]

    g = np.linspace(np.pi / nface, np.pi, nface)
    for a, b in itertools.combinations_with_replacement(g, 2):            # face K3 = K4 = pi
        ev([a, b, np.pi, np.pi])
    if n4:                                                                 # coarse sorted 4D grid off the face
        g4 = np.linspace(np.pi / n4, np.pi, n4)
        for c in itertools.combinations_with_replacement(range(n4), 4): ev(g4[list(c)])
    best = max(pts, key=lambda k: pts[k][0]); Kb = np.array(eval(best))
    fx = lambda x: -ev([x[0], x[1], np.pi, np.pi])
    r = minimize(fx, Kb[:2] if min(Kb[2:]) > np.pi - 1e-5 else [2.3, 2.3], method="Nelder-Mead",
                 options=dict(maxfev=maxfev, xatol=2e-2, fatol=1e-5))
    Kr = np.array([r.x[0], r.x[1], np.pi, np.pi])
    for dk in (0.15, 0.3):                                                 # transverse probes off the face at the refined point
        ev([Kr[0], Kr[1], np.pi - dk, np.pi]); ev([Kr[0], Kr[1], np.pi - dk, np.pi - dk])
    best = max(pts, key=lambda k: pts[k][0])
    summ = dict(L=L, j=str(j), rho2=pts[best][0], rho1_there=pts[best][1], K=eval(best), rho2_over_L=pts[best][0] / L,
                rho1_max_seen=max(v[1] for v in pts.values()), npts=len(pts), secs=time.time() - t0)
    res["summary"] = summ; _tmp = out + ".tmp"; json.dump(res, open(_tmp, "w"), indent=0); _os.replace(_tmp, out)
    print("summary", summ, flush=True)
    return summ


if __name__ == "__main__":
    if "--check" in sys.argv:
        check(); sys.exit()
    L = int(sys.argv[1]); j = sys.argv[2]; j = j if j == "inf" else int(j)
    opt = lambda f, d: int(sys.argv[sys.argv.index(f) + 1]) if f in sys.argv else d
    scan(L, j, nface=opt("--nface", 7), n4=opt("--n4", 0), maxfev=opt("--maxfev", 30))
