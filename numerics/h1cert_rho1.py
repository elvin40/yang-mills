# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
"""(H1_L) float scan: rho_1(j, K) = ||H_j(K)|| / L, one-step map, one colour (../H2_CERTIFY_L13.md).
Fine kernel Delta_{j-1} = Prop. A at M = L^{j-1} (j = 1: Wilson, M = 1; j = inf: fixed point); pieces from h2_scan.py.
Usage: python h1cert_rho1.py L j [--check] [--nd 13] [--nr 8]  -> h1cert_L{L}_j{j}.json (per-K cache, skip-if-done).
"""
import sys, os, json, time
import numpy as np
from scipy.optimize import minimize_scalar
HERE = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, HERE)
import h2_scan as h2
from h2_scan import Hc, dgrid, snodes, border, schur


def prof(L):  # read the h2_scan cache if present, else build into h1cert_prof_L{L}.npz (h2_scan cache untouched)
    for p in (os.path.join(HERE, "results", f"h2_prof_L{L}.npz"), os.path.join(HERE, f"h1cert_prof_L{L}.npz")):
        if os.path.exists(p):
            z = np.load(p); return [z[f"F{m}"] for m in range(4)]
    from umk_beta1 import consts, avg_profile
    cons = consts(); c = np.array([0, 1, 0, 0], complex); out = []
    for mu in range(4):
        F, Mc = avg_profile(L, mu, 0.0, c, cons)["0"]; out.append(np.einsum("r...,r->...", F, Mc[:, 2, 2]))
    np.savez(p, **{f"F{m}": out[m] for m in range(4)})
    return out


def Mof(L, j): return "inf" if j == "inf" else L**(j - 1)


def pieces(L, M, K, pf):
    """Per-K float pieces: k (L^4,4), d (L^4,4), Ed, Y (L^4,4,5), Si, R (5,5)."""
    K = np.asarray(K, float); s = L**-2.0
    lv = np.indices((L,) * 4).reshape(4, -1).T
    k = (K[None] + 2 * np.pi * lv) / L
    th = [(K[i] + 2 * np.pi * np.arange(L)) / L for i in range(4)]
    q2 = sum(np.min(np.angle(np.exp(1j * t))**2) for t in th)
    d = dgrid(th, M, snodes(max(q2, 1e-30))).reshape(L**4, 4)
    kh = np.exp(1j * k) - 1; a2 = np.sum(np.abs(kh)**2, -1); nv = kh / np.sqrt(a2)[:, None]
    def Ainv(X):
        nc = nv.conj()[..., None]; ip = lambda Z: (nc * Z).sum(-2, keepdims=True)
        P = lambda Z: Z - nv[..., None] * ip(Z)
        return P(d[..., None] * P(X)) + nv[..., None] * ip(X) / a2[..., None, None]
    Ed, Y = border(k, h2.qsym(pf, K[None] / L, L)[0], Ainv)
    Si, R = schur(Ed, Y, s)
    return k, d, Ed, Y, Si, R


def rho1(L, M, K, pf):
    _, _, _, _, Si, R = pieces(L, M, K, pf)
    Sc = Si[:, :4]  # sum_l H_l^dag H_l = s^2 Sc^dag (sum Y^dag Y) Sc; R already carries s^2
    return float(np.sqrt(np.linalg.eigvalsh(Hc(Sc) @ R @ Sc)[-1]) / L)


def check():  # vs h2_scan outer rho_1 (Delta_out from inner Schur) and the H2_LARGE_L_VERIFY dense values
    pf3 = prof(3); K = (2.403, 2.403, np.pi, np.pi)
    a = rho1(3, "inf", K, pf3); b = h2.H2(3, "inf").rho(K)[1]
    print(f"L=3 j=inf {K}: rho_1 = {a:.6f}, h2_scan outer = {b:.6f}"); assert abs(a - b) < 1e-6
    a = rho1(3, 3, (2.215, 2.215, np.pi, np.pi), pf3); b = h2.H2(3, 2).rho((2.215, 2.215, np.pi, np.pi))[1]
    print(f"L=3 j=2: rho_1 = {a:.6f}, h2_scan outer = {b:.6f}"); assert abs(a - b) < 1e-6
    pf5 = prof(5)
    for j, K, ref in [(1, (1.916, 1.916, np.pi, np.pi), 1.8600), ("inf", (2.187, 2.187, np.pi, np.pi), 1.9630)]:
        a = rho1(5, Mof(5, j), K, pf5); print(f"L=5 j={j} {K}: rho_1 = {a:.5f} (ref {ref})"); assert abs(a - ref) < 2e-4


def scan(L, j, nd=13, nr=8):
    out = os.path.join(HERE, f"h1cert_L{L}_j{j}.json")
    res = json.load(open(out)) if os.path.exists(out) else {}
    if "summary" in res: print("done", res["summary"]); return res["summary"]
    pf, M = prof(L), Mof(L, j); pts = res.setdefault("pts", {}); t0 = time.time()

    def ev(K):
        K = np.sort(np.abs(np.asarray(K, float))); key = str(np.round(K, 6).tolist())
        if key not in pts:
            t = time.time(); pts[key] = rho1(L, M, K, pf)
            json.dump(res, open(out + ".tmp", "w")); os.replace(out + ".tmp", out)
            print(f"L={L} j={j} K={np.round(K, 4)} rho1={pts[key]:.5f} {time.time()-t:.1f}s", flush=True)
        return pts[key]

    for a in np.linspace(np.pi / nd, np.pi, nd): ev([a, a, np.pi, np.pi])          # face diagonal
    rng = np.random.default_rng(2026)
    for _ in range(nr): ev(np.sort(rng.uniform(0, np.pi, 4)))                       # random sorted K
    ev([np.pi] * 4)
    diag = {k: v for k, v in pts.items() if abs(eval(k)[2] - np.pi) < 1e-5 and abs(eval(k)[0] - eval(k)[1]) < 1e-5}
    a0 = eval(max(diag, key=diag.get))[0]
    r = minimize_scalar(lambda a: -ev([a, a, np.pi, np.pi]), bounds=(max(a0 - 0.3, 0.05), min(a0 + 0.3, np.pi)),
                        method="bounded", options=dict(xatol=1e-3))
    for dk in (0.1, 0.25): ev([r.x, r.x, np.pi - dk, np.pi]); ev([r.x - dk, r.x + dk, np.pi, np.pi])
    best = max(pts, key=pts.get)
    summ = dict(L=L, j=str(j), rho1=pts[best], K=eval(best), sqrtL=L**0.5, margin=L**0.5 - pts[best],
                rho1_random_max=max(pts[k] for k in pts if abs(eval(k)[3] - np.pi) > 1e-5) if nr else None,
                npts=len(pts), secs=time.time() - t0)
    res["summary"] = summ; json.dump(res, open(out + ".tmp", "w"), indent=0); os.replace(out + ".tmp", out)
    print("summary", summ, flush=True); return summ


if __name__ == "__main__":
    if "--check" in sys.argv: check(); sys.exit()
    L = int(sys.argv[1]); j = sys.argv[2]; j = j if j == "inf" else int(j)
    opt = lambda f, dflt: int(sys.argv[sys.argv.index(f) + 1]) if f in sys.argv else dflt
    scan(L, j, nd=opt("--nd", 13), nr=opt("--nr", 8))
