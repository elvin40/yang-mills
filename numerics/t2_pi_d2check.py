# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
"""SOURCES_T2_PI §8: direct d = 2 test of probe independence (Theorem PI).

Functional: Gamma(U) = log det(D_k^T D_k) - 1/2 log|det Bord(U)|, Bord = [[Hess + D_k D_k^T, Q^T], [Q, 0]],
one CMP 109 (0.4) averaging step with block L (centered, odd L), SU(2), fine torus n = L*nc, d = 2.
Probes (both normalized by the Wilson action A = sum_p (1 - 1/2 tr U_p) of the same fine configuration):
  constant field: flux q quanta on the torus, phi = 2 pi q / n^2  ->  beta_cf(q) = [G(q)-G(0)]/[A(q)-A(0)]
  plane wave:     theta(x, mu=1) = a cos(p x_0) (pw10) or theta(x, mu=0) = a cos(p x_1) (pw01), p = 2 pi m / n
                  beta_pw = second a-difference of G / second a-difference of A.
Theorem PI predicts lim_{p->0} beta_pw = lim_{f->0} beta_cf (up to exponentially small torus effects).
Reuses (imports, does not modify) numerics/u3_lemma51_check.py and ym_oneloop.py.
Usage: python t2_pi_d2check.py [L] [nc]
"""
import sys, os, json, time
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
import numpy as np
import scipy.sparse as sp
import scipy.sparse.linalg as spla
import u3_lemma51_check as u3
from ym_oneloop import qmul, qinv

def logdet(A):
    lu = spla.splu(sp.csc_matrix(A), permc_spec="MMD_AT_PLUS_A")
    return float(np.sum(np.log(np.abs(lu.U.diagonal()))))

def wilson(n, U0):
    pl = u3.plaqs(n)
    P = np.asarray(qmul(qmul(U0[pl[:, 0]], U0[pl[:, 1]]), qmul(qinv(U0[pl[:, 2]]), qinv(U0[pl[:, 3]]))))
    return float(np.sum(1.0 - P[:, 0]))

def gamma(n, L, U0, family="all"):
    h = (L - 1) // 2; nc = n // L
    H, gmax = u3.hessian(n, U0)
    Q, V = u3.averaging(n, L, h, U0, family)
    apos = h + L * np.array(list(np.ndindex(nc, nc)))
    anchor = np.zeros(n * n, bool); anchor[apos[:, 0] * n + apos[:, 1]] = True
    D = u3.gauge_grad(n, U0, anchor)
    K = (H + D @ D.T).tocsr()
    Bord = sp.bmat([[K, Q.T], [Q, None]], format="csc")
    return logdet((D.T @ D).tocsc()) - 0.5 * logdet(Bord), gmax

def abelian(n, theta):  # theta: (2 n^2,) link angles -> quaternions exp(i theta sigma_3)
    return np.stack([np.cos(theta), 0 * theta, 0 * theta, np.sin(theta)], 1)

def plane(n, a, m, pol):
    x = np.array(list(np.ndindex(n, n))); p = 2 * np.pi * m / n
    th = np.zeros(2 * n * n)
    if pol == "pw10": th[u3.links(n, x, 1)] = a * np.cos(p * x[:, 0])
    else:             th[u3.links(n, x, 0)] = a * np.cos(p * x[:, 1])
    return abelian(n, th)

def main(L=3, nc=8):
    n = L * nc; out = dict(L=L, nc=nc, n=n, cf={}, pw={})
    t = time.time()
    U0 = abelian(n, np.zeros(2 * n * n)); G0, _ = gamma(n, L, U0); A0 = wilson(n, U0)
    for q in (1, 2, 3):
        U, phi = u3.background(n, q); G, gm = gamma(n, L, U); A = wilson(n, U)
        out["cf"][q] = dict(phi=phi, f=phi * L**2, beta=(G - G0) / (A - A0), grad=gm)
        print(f"cf q={q} f={phi*L**2:.4f} beta={(G-G0)/(A-A0):.6f} grad={gm:.1e}", flush=True)
    for pol in ("pw10", "pw01"):
        for m in (1, 2, 3):
            res = {}
            for a in (0.02, 0.04):
                Gp, _ = gamma(n, L, plane(n, a, m, pol)); Gm, _ = gamma(n, L, plane(n, -a, m, pol))
                Ap, Am = wilson(n, plane(n, a, m, pol)), wilson(n, plane(n, -a, m, pol))
                res[a] = (Gp + Gm - 2 * G0) / (Ap + Am - 2 * A0)
            b = (4 * res[0.02] - res[0.04]) / 3  # Richardson in a^2
            out["pw"][f"{pol}_m{m}"] = dict(p=2 * np.pi * m / n, Lp=2 * np.pi * m * L / n, beta_a02=res[0.02], beta_a04=res[0.04], beta=b)
            print(f"{pol} m={m} p={2*np.pi*m/n:.4f} Lp={2*np.pi*m*L/n:.3f} beta={b:.6f} (a=.02: {res[0.02]:.6f}, a=.04: {res[0.04]:.6f})", flush=True)
    # extrapolations: cf in f^2 (q=1,2), pw in p^2 (m=1,2)
    f2 = np.array([out["cf"][q]["f"]**2 for q in (1, 2)]); bc = np.array([out["cf"][q]["beta"] for q in (1, 2)])
    out["cf_extrap"] = float(bc[0] - f2[0] * (bc[1] - bc[0]) / (f2[1] - f2[0]))
    for pol in ("pw10", "pw01"):
        p2 = np.array([out["pw"][f"{pol}_m{m}"]["p"]**2 for m in (1, 2)]); bp = np.array([out["pw"][f"{pol}_m{m}"]["beta"] for m in (1, 2)])
        out[f"{pol}_extrap"] = float(bp[0] - p2[0] * (bp[1] - bp[0]) / (p2[1] - p2[0]))
    out["time_s"] = time.time() - t
    print(f"extrap: cf {out['cf_extrap']:.6f}  pw10 {out['pw10_extrap']:.6f}  pw01 {out['pw01_extrap']:.6f}  ({out['time_s']:.0f}s)")
    os.makedirs(os.path.join(os.path.dirname(os.path.abspath(__file__)), "results"), exist_ok=True)
    path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "results", f"t2_pi_d2_L{L}_nc{nc}.json")
    assert not os.path.exists(path), path
    json.dump(out, open(path, "w"), indent=1, default=float)

if __name__ == "__main__":
    main(int(sys.argv[1]) if len(sys.argv) > 1 else 3, int(sys.argv[2]) if len(sys.argv) > 2 else 8)
