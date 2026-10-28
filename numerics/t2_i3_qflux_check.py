# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
"""t2_i3_qflux_check.py  (SOURCES_T2_I3 §8)
Nonlinear Balaban averaging CMP 109 (0.4), SU(2), constant abelian flux in the (0,1) plane,
symmetric gauge, midpoint fluctuation convention. Linearize by central finite differences,
compare with the closed form (5.1) of SOURCES_T2_I3, check coarse magnetic covariance and
smoothness in f of the reduced charged entries a = Qtilde_f / W.
Charged component convention: b = coefficient of sigma_+ = B^1 - i B^2 (Ad e^{i a s3} -> e^{2ia}), e = 2.
Usage: python t2_i3_qflux_check.py d L nsub
"""
import sys, itertools, json, time
import numpy as np

d = int(sys.argv[1]); L = int(sys.argv[2]); nsub = int(sys.argv[3]) if len(sys.argv) > 3 else 10**9
h = (L - 1) // 2; e = 2.0
s1 = np.array([[0, 1], [1, 0]], complex); s2 = np.array([[0, -1j], [1j, 0]]); s3 = np.diag([1., -1.]).astype(complex)
SIG = [s1, s2, s3]
def wedge(x, y): return x[0] * y[1] - x[1] * y[0]
def E(mu):
    v = np.zeros(d); v[mu] = 1; return v
def theta(x, nu, phi): return 0.5 * phi * wedge(np.asarray(x, float), E(nu))
def expm_su2(Vvec):  # exp(i V), V = sum v_a sigma_a /2  (v real or complex 3-vector)
    a = 0.5 * np.sqrt(np.dot(Vvec, Vvec) + 0j)
    M = sum(Vvec[k] * SIG[k] for k in range(3)) / 2
    if abs(a) < 1e-14: return np.eye(2) + 1j * M
    return np.cos(a) * np.eye(2) + 1j * np.sin(a) / a * M
def log_su2(U):  # returns v with U = exp(i v.sigma/2), principal branch, U in SU(2)
    c = np.real(np.trace(U)) / 2; c = min(1, max(-1, c)); a = np.arccos(c)
    n = np.array([np.imag(U[0, 1] + U[1, 0]) / 2, np.real(U[0, 1] - U[1, 0]) / 2, np.imag(U[0, 0] - U[1, 1]) / 2])
    s = np.sin(a)
    if s < 1e-14: return 2 * n
    return 2 * a * n / s
def link(x, nu, phi, pert):
    th = theta(x, nu, phi); h0 = expm_su2(np.array([0, 0, th]))  # U0^{1/2} = exp(i th s3/2) = expm_su2(th e3)
    key = (tuple(int(t) for t in x), nu)
    if key in pert: return h0 @ expm_su2(pert[key]) @ h0
    return h0 @ h0
def contours(y, x):
    n = [x[k] - y[k] for k in range(d)]; dirs = [k for k in range(d) if n[k] != 0]
    out = []
    for perm in itertools.permutations(dirs):
        path = []; cur = list(y)
        for k in perm:
            sg = 1 if n[k] > 0 else -1
            for _ in range(abs(n[k])):
                path.append((tuple(cur), k, sg)); cur[k] += sg
        out.append(path)
    return out
def rev(path):
    out = []
    for (s, k, sg) in reversed(path):
        t = list(s); t[k] += sg; out.append((tuple(t), k, -sg))
    return out
def straight(y, mu, n, sg):
    out = []; cur = list(y)
    for _ in range(n):
        out.append((tuple(cur), mu, sg)); cur[mu] += sg
    return out
def build_loops(cm, mu):
    cp = list(cm); cp[mu] += L
    loops = []
    for off in itertools.product(range(-h, h + 1), repeat=d):
        x = [cm[k] + off[k] for k in range(d)]; xp = list(x); xp[mu] += L
        G = contours(cm, x); Gp = contours(cp, xp)
        w = L ** (-d) / (len(G) * len(Gp))
        for g1 in G:
            for g2 in Gp:
                loops.append((w, g1 + straight(x, mu, L, 1) + rev(g2) + straight(cp, mu, L, -1)))
    return loops, straight(cm, mu, L, 1)
def hol(path, phi, pert):
    U = np.eye(2, dtype=complex)
    for (s, k, sg) in path:
        if sg > 0: U = U @ link(s, k, phi, pert)
        else:
            t = list(s); t[k] -= 1; U = U @ np.linalg.inv(link(t, k, phi, pert))
    return U
def average(loops, cpath, phi, pert):
    Z = sum(w * log_su2(hol(lp, phi, pert)) for (w, lp) in loops)
    return expm_su2(Z) @ hol(cpath, phi, pert)
def coarse_V(Ubar, Ubar0):
    Phi = log_su2(Ubar0)  # torus element
    hh = expm_su2(-Phi / 2)
    return log_su2(hh @ Ubar @ hh)
def support(loops, cpath):
    S = set()
    for (_, lp) in loops + [(0, cpath)]:
        for (s, k, sg) in lp:
            t = list(s)
            if sg < 0: t[k] -= 1
            S.add((tuple(t), k))
    return sorted(S)
def bond_of(st):
    s, k, sg = st; t = list(s)
    if sg < 0: t[k] -= 1
    return (tuple(t), k)
def fd_row(cm, mu, phi, bonds, eps=1e-5):
    """Exact same nonlinear map as average(), but recomputes only the loops through the perturbed bond."""
    loops, cpath = build_loops(cm, mu)
    logs0 = [log_su2(hol(lp, phi, {})) for (_, lp) in loops]
    Z0 = sum(w * l0 for (w, _), l0 in zip(loops, logs0))
    idx = {}
    for i, (_, lp) in enumerate(loops):
        for st in lp: idx.setdefault(bond_of(st), set()).add(i)
    def avg(pert):
        (bd,) = pert.keys(); Z = Z0.copy()
        for i in idx.get(bd, ()):
            w, lp = loops[i]; Z = Z + w * (log_su2(hol(lp, phi, pert)) - logs0[i])
        return expm_su2(Z) @ hol(cpath, phi, pert)
    Ub0 = expm_su2(Z0) @ hol(cpath, phi, {})
    res = {}
    for bd in bonds:
        J = np.zeros((3, 3))
        for a in range(3):
            v = np.zeros(3); v[a] = eps
            Vp = coarse_V(avg({bd: v}), Ub0)
            Vm = coarse_V(avg({bd: -v}), Ub0)
            J[:, a] = (Vp - Vm) / (2 * eps)
        res[bd] = J
    return res, loops, cpath
def fd_row_slow(cm, mu, phi, bonds, eps=1e-5):
    loops, cpath = build_loops(cm, mu)
    Ub0 = average(loops, cpath, phi, {})
    res = {}
    for bd in bonds:
        J = np.zeros((3, 3))
        for a in range(3):
            v = np.zeros(3); v[a] = eps
            Vp = coarse_V(average(loops, cpath, phi, {bd: v}), Ub0)
            Vm = coarse_V(average(loops, cpath, phi, {bd: -v}), Ub0)
            J[:, a] = (Vp - Vm) / (2 * eps)
        res[bd] = J
    return res, loops, cpath
def charged(J):  # real 2x2 block on (B1,B2) -> complex number for b = B1 - i B2, plus antilinear residue
    M = J[:2, :2]; p = (M[0, 0] + M[1, 1]) / 2; q = (M[0, 1] - M[1, 0]) / 2  # b -> v: v = (p + i q) b  for b=B1-iB2
    anti = np.hypot((M[0, 0] - M[1, 1]) / 2, (M[0, 1] + M[1, 0]) / 2)
    mix = np.abs(J[2, :2]).max() + np.abs(J[:2, 2]).max()
    return complex(p, q), anti, mix, J[2, 2]
def g(z): return 1.0 if abs(z) < 1e-14 else (np.exp(-z) - 1) / (-z)
def ginv(z): return 1 / g(z)
def closed_form(loops, cpath, phi, mu, cm):
    """(5.1): coefficient of b(bond) in (Qtilde_f b)(c)."""
    def area_angle(lp):  # Theta_l = sum of s*theta along loop
        return sum(sg * theta(s if sg > 0 else tuple(np.array(s) - E(k).astype(int)), k, phi) for (s, k, sg) in lp)
    def betas(lp):
        out = []; ths = []
        for (s, k, sg) in lp:
            t = list(s)
            if sg < 0: t[k] -= 1
            ths.append((tuple(t), k, sg, theta(t, k, phi)))
        for i, (t, k, sg, th) in enumerate(ths):
            beta = sg * th / 2 + sum(sg2 * th2 for (_, _, sg2, th2) in ths[i + 1:])
            out.append(((t, k), sg, beta))
        return out
    Th = [area_angle(lp) for (_, lp) in loops]
    Thbar = sum(w * t for (w, _), t in zip(loops, Th))
    thc = sum(theta(s, k, phi) for (s, k, sg) in cpath); Phi = Thbar + thc
    coef = {}
    for (w, lp), t in zip(loops, Th):
        fac = np.exp(-1j * e * Phi / 2) * g(-1j * e * Thbar) * w * ginv(1j * e * t)
        for (bd, sg, beta) in betas(lp):
            coef[bd] = coef.get(bd, 0) + fac * sg * np.exp(-1j * e * beta)
    for (bd, sg, beta) in betas(cpath):
        coef[bd] = coef.get(bd, 0) + np.exp(1j * e * Phi / 2) * np.exp(-1j * e * beta)
    return coef
def W(xc, xb, phi): return np.exp(1j * (e * phi / 2) * wedge(xc, xb))
def mid(bd):
    s, k = bd; return np.array(s, float) + 0.5 * E(k)

if __name__ == "__main__":
    t0 = time.time(); out = {"d": d, "L": L}
    mu = 0; cm = (0,) * d
    loops, cpath = build_loops(cm, mu); bonds = support(loops, cpath)
    rng = np.random.default_rng(1)
    sub = bonds if len(bonds) <= nsub else [bonds[i] for i in sorted(rng.choice(len(bonds), nsub, replace=False))]
    mc = np.array(cm, float) + 0.5 * L * E(mu)
    print(f"d={d} L={L} loops={len(loops)} support bonds={len(bonds)} checked={len(sub)}")
    fvals = [0.0, 0.01, 0.02, -0.01, -0.02, 0.1]
    red = {}
    for f in fvals:
        phi = f / L ** 2
        J, _, _ = fd_row(cm, mu, phi, sub)
        cf = closed_form(loops, cpath, phi, mu, cm)
        err = 0; anti = 0; mix = 0; neu = []
        red[f] = {}
        for bd in sub:
            z, an, mx, n33 = charged(J[bd]); anti = max(anti, an); mix = max(mix, mx); neu.append(n33)
            err = max(err, abs(z - cf.get(bd, 0)))
            red[f][bd] = z / W(mc, mid(bd), phi)
        if f == 0.0: neu0 = np.array(neu)
        print(f"f={f:+.3f}: max|FD - (5.1)|={err:.2e}  antilinear={anti:.1e}  sector-mix={mix:.1e}  max|neutral - neutral(f=0)|={np.abs(np.array(neu)-neu0).max():.1e}")
        out[f"f={f}"] = dict(err51=err, anti=anti, mix=mix, neutral_dev=float(np.abs(np.array(neu) - neu0).max()))
    for hh in (0.01, 0.02):
        d2 = max(abs(red[hh][b] - 2 * red[0.0][b] + red[-hh][b]) / hh ** 2 for b in sub)
        d1 = max(abs(red[hh][b] - red[-hh][b]) / (2 * hh) for b in sub)
        print(f"h={hh}: max |central 1st diff| = {d1:.4e}, max |2nd diff| = {d2:.4e}")
        out[f"h={hh}"] = dict(d1=d1, d2=d2)
    # coarse magnetic covariance: translate c by a = L e_1 (and L e_0), compare reduced entries
    for av in ([0, L] + [0] * (d - 2), [L, 0] + [0] * (d - 2)):
        a = np.array(av); f = 0.1; phi = f / L ** 2
        cm2 = tuple(int(t) for t in a); loops2, cpath2 = build_loops(cm2, mu)
        sub2 = [(tuple(int(t) for t in np.array(s) + a), k) for (s, k) in sub[:min(len(sub), 30)]]
        J2, _, _ = fd_row(cm2, mu, phi, sub2)
        mc2 = mc + a
        dev = max(abs(charged(J2[b2])[0] / W(mc2, mid(b2), phi) - red[f][b]) for b, b2 in zip(sub, sub2))
        print(f"covariance a={av}: max |a(c+a,b+a) - a(c,b)| = {dev:.2e} (f=0.1)")
        out[f"cov{av}"] = dev
    out["time_s"] = time.time() - t0; print(f"time {out['time_s']:.1f}s")
    json.dump(out, open(f"t2_i3_qflux_check_d{d}_L{L}.json", "w"), indent=1, default=str)
