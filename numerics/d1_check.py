"""D1 check: one Balaban step with a local-coupling source (SOURCES.md section 2.4), one loop, infinite volume.

Units 1/g0^2 = 1.  Source f_p = f0 * cos(q x_c) at plaquette centres x_c (0-coordinate; q along e_0).
Sourced bordered matrix  Bord_f = [[sum_p (1 - f_p) H_p(a) + D D^T, Qt^T], [Qt, 0]];  ghosts, D and Qt carry no f.
log Z = log det G - 1/2 log|det Bord_f|.  Background A_1 = a cos(p x_0) (transverse), or a pure-gauge wave.
Per coarse cell, on the shifted k grid of ym_momentum.second_derivative:
  tad  = d/df0 log Z (q = 0)                       exact: (9 L^4 - 9)/2
  C(q) = d^2/df0^2 log Z at a = 0                  exact at q = 0: (9 L^4 - 9)/2;  limit q -> 0+: (9 L^4 - 9)/4
  m(q) = d/df0 d^2/da^2 log Z at a = f0 = 0,  q in {0, 2p}  (other q vanish by momentum conservation mod 2 pi / L)
  c1 - 1 = 4 m(0) / (L^4 (1 - cos p))             exact: 0 (Hessian scaling; gauge fixing and ghosts do not scale)
  gamma(2p) = m(2p) / (L^4 t(p)),  t(p) = -(1 - cos p)/8 = tree-level d/df0 d^2/da^2 of sum_p f_p P_p per site.
Derivative of log|det M|:  d_f d_a^2 = tr(M^-1 M_faa) - tr(M^-1 M_f M^-1 M_aa) - 2 tr(M^-1 M_a M^-1 M_fa) + 2 tr(M^-1 M_f M^-1 M_a M^-1 M_a).
Transfer-t kernels follow ym_momentum: T_t(Z) = e^{-i t anchor(X)} K_t(X, Y);  negative transfer: conj(K_t(-k)).
Run:  .venv/bin/python d1_check.py L Ng p [--fd] [--gauge]      (--fd: periodic 3L lattice finite-difference check, L = 2)
"""
import sys, os, time, itertools, json
import numpy as np, jax.numpy as jnp, scipy.sparse as sp
from ym_oneloop import Lat, qexp, plaq_links, gauge_gradient, averaging, logdet_splu, _hess
from ym_momentum import Step, _hess_t2, fourier_batch, E3


def plaq_center0(pl, coords):
    return coords[pl[:, 0] // 4, 0].astype(float) + 0.5 * (pl[:, 0] % 4 == 0)


def assemble(step, blocks):
    pl = step.pl_sel
    dof = (3 * pl[:, :, None] + np.arange(3)).reshape(len(pl), 12)
    rows = np.repeat(dof, 12, axis=1).ravel(); cols = np.tile(dof, (1, 12)).ravel()
    N = 3 * step.lat.nlinks
    return sp.coo_matrix((blocks.ravel(), (rows, cols)), shape=(N, N)).tocsr()


def bord(step, K, Q):
    """Bordered kernel dict Z -> block from link-link K and bond-link Q (Q = None: Hessian-only kernel)."""
    nK = step.nK
    kk = step.extract(K, "link", "link")
    kq = step.extract(Q.T.tocsr(), "link", "bond") if Q is not None else {}
    qk = step.extract(Q, "bond", "link") if Q is not None else {}
    out = {}
    for z in set(kk) | set(kq) | set(qk):
        out[z] = sp.bmat([[kk.get(z, sp.csr_matrix((nK, nK))), kq.get(z, sp.csr_matrix((nK, 12)))],
                          [qk.get(z, sp.csr_matrix((12, nK))), None]], format="csr")
    mb = np.concatenate([step.color_mask("link"), step.color_mask("bond")])
    return {z: out[z][mb][:, mb] for z in out}


def build_all(step, p, kind="trans", qs=()):
    lat = step.lat
    pre = "gauge_" if kind == "gauge" else ""
    Ac, As = step.plane_wave(p, 1, pre + "cos"), step.plane_wave(p, 1, pre + "sin")
    anchor = lat.h + lat.L * step.X[0]
    ph = lambda t: np.exp(-1j * t * anchor)
    xc = plaq_center0(step.pl_sel, step.coords)
    c2, s2 = np.cos(2 * p * xc)[:, None, None], np.sin(2 * p * xc)[:, None, None]
    Hc, Hs, Hcs = ([np.asarray(h) for h in _hess_t2(jnp.asarray(A[step.pl_sel]))] for A in (Ac, As, Ac + As))
    Dc, Ds, Dcs = (step.gauge_grad(A) for A in (Ac, As, Ac + As))
    Qc, Qs, Qcs = (step.averaging(A) for A in (Ac, As, Ac + As))
    K1 = lambda H1, D: assemble(step, H1) + D[1] @ D[0].T + D[0] @ D[1].T
    K2 = lambda H2, D: assemble(step, H2) + D[2] @ D[0].T + 2 * D[1] @ D[1].T + D[0] @ D[2].T
    K2c, K2s, K2cs = K2(Hc[2], Dc), K2(Hs[2], Ds), K2(Hcs[2], Dcs)
    ker = {}
    ker["M0"] = bord(step, assemble(step, Hc[0]) + Dc[0] @ Dc[0].T, Qc[0])
    ker["Tp"] = bord(step, 0.5 * ph(p) * (K1(Hc[1], Dc) + 1j * K1(Hs[1], Ds)), 0.5 * ph(p) * (Qc[1] + 1j * Qs[1]))
    ker["Maa_0"] = bord(step, 0.5 * (K2c + K2s), 0.5 * (Qc[2] + Qs[2]))
    ker["Maa_2p"] = bord(step, 0.25 * ph(2 * p) * ((K2c - K2s) + 1j * (K2cs - K2c - K2s)),
                         0.25 * ph(2 * p) * ((Qc[2] - Qs[2]) + 1j * (Qcs[2] - Qc[2] - Qs[2])))
    # source q = 0 (f = f0): M_f = -H0, M_fa(+p) = -H_+, M_faa(0) = -H''_0
    ker["F_0"] = bord(step, -assemble(step, Hc[0]), None)
    ker["FA_0"] = bord(step, -0.5 * ph(p) * assemble(step, Hc[1] + 1j * Hs[1]), None)
    ker["FAA_0"] = bord(step, -0.5 * assemble(step, Hc[2] + Hs[2]), None)
    # source q = 2p (f = f0 cos(2p x_c)): components closing with the a-transfers
    ker["F_2p"] = bord(step, -0.5 * ph(2 * p) * assemble(step, (c2 + 1j * s2) * Hc[0]), None)
    ker["FA_2p"] = bord(step, -0.25 * ph(p) * assemble(step, c2 * Hc[1] + s2 * Hs[1] + 1j * (s2 * Hc[1] - c2 * Hs[1])), None)
    ker["FAA_2p"] = bord(step, -0.25 * assemble(step, c2 * (Hc[2] - Hs[2]) + s2 * (Hcs[2] - Hc[2] - Hs[2])), None)
    for q in qs:  # field-independent two-point function at arbitrary q
        cq, sq = np.cos(q * xc)[:, None, None], np.sin(q * xc)[:, None, None]
        ker[f"F_q{q}"] = bord(step, -0.5 * ph(q) * assemble(step, (cq + 1j * sq) * Hc[0]), None)
    return ker


def kgrid(L, Ng, shift):
    ks = (np.arange(Ng) + shift) * 2 * np.pi / (L * Ng)
    return np.array(list(itertools.product(ks, repeat=4)))


def contact(ker, Fkey, q, L, Ng, shift=0.5, batch=16):
    """C(q) = d^2/df0^2 log Z at a = 0 per cell = (n_q/2) Re <tr(M(k+q)^-1 F_+(k) M(k)^-1 F_-(k+q))>."""
    qv = np.array([q, 0., 0., 0.]); K = kgrid(L, Ng, shift); tot = 0.0
    for i in range(0, len(K), batch):
        k = K[i:i + batch]
        M = np.linalg.inv(fourier_batch(ker["M0"], k, L)); Mq = np.linalg.inv(fourier_batch(ker["M0"], k + qv, L))
        F = fourier_batch(ker[Fkey], k, L); Fm = np.conj(fourier_batch(ker[Fkey], -(k + qv), L))
        tot += float(np.einsum("bij,bji->b", Mq @ F, M @ Fm).sum().real)
    return (1.0 if q == 0 else 2.0) / 2 * tot / Ng**4


def mixed(ker, p, q, L, Ng, shift=0.5, batch=16):
    """m(q) = d/df0 d^2/da^2 log Z per cell for q in {0, 2p}; also the tadpole for q = 0."""
    tag = "0" if q == 0 else "2p"
    pv, qv = np.array([p, 0., 0., 0.]), np.array([q, 0., 0., 0.])
    K = kgrid(L, Ng, shift); t = np.zeros(5)
    tr = lambda A, B: np.einsum("bij,bji->b", A, B).sum().real
    inv = np.linalg.inv
    for i in range(0, len(K), batch):
        k = K[i:i + batch]
        M, Mp, Mq = (inv(fourier_batch(ker["M0"], kk, L)) for kk in (k, k + pv, k + qv))
        F, FAA = fourier_batch(ker["F_" + tag], k, L), fourier_batch(ker["FAA_" + tag], k, L)
        Tp, Tm_p = fourier_batch(ker["Tp"], k, L), np.conj(fourier_batch(ker["Tp"], -(k + pv), L))
        FA_m = np.conj(fourier_batch(ker["FA_" + tag], -(k + pv), L))
        Maa_m = np.conj(fourier_batch(ker["Maa_" + tag], -(k + qv), L))
        X = Tp if q == 0 else np.conj(fourier_batch(ker["Tp"], -(k + qv), L))  # second a-kernel: k+q -> k+p
        t[0] += tr(M, FAA)
        t[1] += tr(Mq @ F, M @ Maa_m)
        t[2] += tr(Mp @ Tp, M @ FA_m)
        t[3] += tr(Mq @ F @ M @ Tm_p, Mp @ X)
        t[4] += tr(M, F)
    t /= Ng**4
    nq = 1.0 if q == 0 else 2.0
    dlogdet = t[0] - nq * t[1] - 4 * t[2] + 4 * t[3]
    return dict(m=-0.5 * dlogdet, T=t[:4].tolist(), tad=-0.5 * t[4])


# ---------- real-space finite-difference check on the periodic 3L lattice ----------
def logdet_sourced(lat, pl, U0, w):
    H = np.asarray(_hess(jnp.asarray(U0[pl]))) * w[:, None, None]
    dof = (3 * pl[:, :, None] + np.arange(3)).reshape(len(pl), 12)
    rows = np.repeat(dof, 12, axis=1).ravel(); cols = np.tile(dof, (1, 12)).ravel()
    Delta = sp.coo_matrix((H.ravel(), (rows, cols)), shape=(3 * lat.nlinks,) * 2).tocsr()
    D = gauge_gradient(lat, U0); Qt, _ = averaging(lat, U0)
    Bord = sp.bmat([[Delta + D @ D.T, Qt.T], [Qt, None]], format="csc")
    return -0.5 * logdet_splu(Bord)


def fd_check(L=2, kind="trans"):
    step = Step(L); lat = step.lat; p = 2 * np.pi / lat.n
    pl = plaq_links(lat); xc = plaq_center0(pl, lat.coords)
    A = step.plane_wave(p, 1, ("gauge_" if kind == "gauge" else "") + "cos")
    t0 = time.time(); ker = build_all(step, p, kind); print(f"kernels built in {time.time()-t0:.0f}s", flush=True)
    d, e = 1e-3, 1e-2
    for q, fp in ((0.0, np.ones(len(pl))), (2 * p, np.cos(2 * p * xc))):
        mom = mixed(ker, p, q, L, lat.nc, shift=0.0)
        Cq = contact(ker, "F_0" if q == 0 else "F_2p", q, L, lat.nc, shift=0.0)
        Z = {}
        for a in (-d, 0.0, d):
            U0 = np.asarray(qexp(a * jnp.asarray(A)[:, None] * E3))
            for f0 in (-e, 0.0, e):
                Z[a, f0] = logdet_sourced(lat, pl, U0, 1 - f0 * fp)
        d2 = lambda f0: (Z[d, f0] - 2 * Z[0.0, f0] + Z[-d, f0]) / d**2
        m_fd = (d2(e) - d2(-e)) / (2 * e) / lat.ncs
        C_fd = (Z[0.0, e] - 2 * Z[0.0, 0.0] + Z[0.0, -e]) / e**2 / lat.ncs
        tad_fd = (Z[0.0, e] - Z[0.0, -e]) / (2 * e) / lat.ncs
        print(f"q={q:.4f}: mixed  momentum {mom['m']:.8f}  FD {m_fd:.8f}  diff {mom['m']-m_fd:.1e}")
        print(f"          contact momentum {Cq:.8f}  FD {C_fd:.8f}  diff {Cq-C_fd:.1e}")
        if q == 0:
            print(f"          tadpole momentum {mom['tad']:.8f}  FD {tad_fd:.8f}  exact {(9*L**4-9)/2}")


if __name__ == "__main__":
    if "--fd" in sys.argv:
        fd_check(int(sys.argv[1]) if len(sys.argv) > 1 and sys.argv[1].isdigit() else 2, "gauge" if "--gauge" in sys.argv else "trans")
        sys.exit()
    L, Ng, p = int(sys.argv[1]), int(sys.argv[2]), float(sys.argv[3])
    kind = "gauge" if "--gauge" in sys.argv else "trans"
    m0only = "--m0only" in sys.argv  # grid-convergence runs of c1-1 alone
    qs = (0.1, 0.2, 0.4, 0.8, 1.6) if kind == "trans" and not m0only else ()
    os.makedirs("results", exist_ok=True)
    path = f"results/d1_L{L}_Ng{Ng}_p{p}_{kind}{'_m0' if m0only else ''}.json"
    t0 = time.time(); step = Step(L); ker = build_all(step, p, kind, qs); tb = time.time() - t0
    print(f"L={L} Ng={Ng} p={p} {kind}: kernels built in {tb:.0f}s", flush=True)
    out = dict(L=L, Ng=Ng, p=p, kind=kind, build_secs=tb)
    if m0only:
        r = mixed(ker, p, 0.0, L, Ng)
        print(f"  m(0) = {r['m']:.8f}  c1-1 = {4 * r['m'] / (L**4 * (1 - np.cos(p))):.3e}  tadpole {r['tad']:.6f}  ({time.time()-t0:.0f}s)", flush=True)
        json.dump(dict(out, m_q0=r, c1_minus_1=4 * r["m"] / (L**4 * (1 - np.cos(p))), secs=time.time() - t0), open(path, "w"), indent=1)
        sys.exit()
    for q in (0.0, 2 * p):
        r = mixed(ker, p, q, L, Ng); out[f"m_q{'0' if q == 0 else '2p'}"] = r
        print(f"  m(q={q:.3f}) = {r['m']:.8f}   terms {np.round(r['T'], 6).tolist()}", flush=True)
    out["tad"] = out["m_q0"]["tad"]; out["tad_exact"] = (9 * L**4 - 9) / 2
    out["c1_minus_1"] = 4 * out["m_q0"]["m"] / (L**4 * (1 - np.cos(p)))
    out["gamma_2p"] = out["m_q2p"]["m"] / (L**4 * (-(1 - np.cos(p)) / 8))
    print(f"  tadpole {out['tad']:.8f} (exact {out['tad_exact']})   c1-1 = {out['c1_minus_1']:.3e}   gamma(2p) = {out['gamma_2p']:.6f}", flush=True)
    if kind == "trans":
        out["C"] = {"0": contact(ker, "F_0", 0.0, L, Ng)}
        for q in qs:
            out["C"][str(q)] = contact(ker, f"F_q{q}", q, L, Ng)
        print("  C(q) per cell:", {k: round(v, 6) for k, v in out["C"].items()}, f"(exact C(0) = {(9*L**4-9)/2}, limit {(9*L**4-9)/4})", flush=True)
    out["secs"] = time.time() - t0
    json.dump(out, open(path, "w"), indent=1)
    print(f"  done in {out['secs']:.0f}s -> {path}")
