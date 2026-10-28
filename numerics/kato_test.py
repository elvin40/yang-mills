"""Kill test for IDEAS_FABLE.md I1 (Kato lower bound). Min-energy extension form
E(U) = [min <A,K A> : Q(U)A = B], K = M_1(U) + D D^T (ghost gauge, lambda = 0 on anchors),
read off the bordered KKT inverse: E = -(lower-right block of [[K,Qt^T],[Qt,0]]^-1).
M_1 = 'hess' (Wilson Hessian, hessian_matrix) or 'curl' ((1/8) sum_p |J_p A|^2, the ||D_U A||^2 leading term)."""
import sys, copy, json, time
import numpy as np, jax, jax.numpy as jnp, scipy.sparse as sp, scipy.sparse.linalg as spla
from ym_oneloop import *

def curl_matrix(lat, U0):
    pl = plaq_links(lat)
    def th(b, U0s):
        P = lambda b: qmul(qmul(qmul(qexp(b[0]), U0s[0]), qmul(qexp(b[1]), U0s[1])),
                           qmul(qinv(qmul(qexp(b[2]), U0s[2])), qinv(qmul(qexp(b[3]), U0s[3]))))
        return qlog(qmul(P(b), qinv(P(jnp.zeros((4, 3))))))
    J = np.asarray(jax.jit(jax.vmap(lambda U0s: jax.jacrev(th)(jnp.zeros((4, 3)), U0s).reshape(3, 12)))(jnp.asarray(U0[pl])))
    dof = (3 * pl[:, :, None] + np.arange(3)).reshape(len(pl), 12)
    rows = np.repeat(np.arange(3 * len(pl)), 12); cols = np.repeat(dof, 3, axis=0).ravel()
    Jm = sp.csr_matrix((J.ravel(), (rows, cols)), shape=(3 * len(pl), 3 * lat.nlinks))
    return (Jm.T @ Jm / 4).tocsr()  # matches Hessian of 1 - cos(|theta|/2) at U=1

def full_gauge(lat, U0):  # D on all sites (anchors included)
    l2 = copy.copy(lat); l2.is_anchor = np.zeros(lat.nsites, bool); l2.nc_index = np.arange(lat.nsites); l2.ncs = 0
    return gauge_gradient(l2, U0)

def analyze(lat, U0):
    Qt, V = averaging(lat, U0)
    D = gauge_gradient(lat, U0)
    G = np.asarray((Qt @ full_gauge(lat, U0)).todense())  # coarse gauge modes
    s = np.linalg.svd(G, compute_uv=False); rk = int(np.sum(s > 1e-8 * s[0]))
    Ug = np.linalg.svd(G)[0][:, :rk]
    Pc = np.linalg.svd(np.eye(G.shape[0]) - Ug @ Ug.T)[0][:, :G.shape[0] - rk]  # basis of gauge complement
    Delta, grad = hessian_matrix(lat, U0)
    r = Qt.shape[0]; out = dict(grad=float(np.abs(grad).max()), gauge_rank=rk)
    for name, M in (("hess", Delta), ("curl", curl_matrix(lat, U0))):
        K = (M + D @ D.T).tocsr()
        Bord = sp.bmat([[K, Qt.T], [Qt, None]], format="csc")
        lu = spla.splu(Bord)
        rhs = np.zeros((Bord.shape[0], r)); rhs[-r:] = np.eye(r)
        S = lu.solve(rhs)[-r:]
        E = -(S + S.T) / 2
        resid = np.abs(Bord @ lu.solve(rhs) - rhs).max()
        w_all = np.linalg.eigvalsh(E); w_c = np.linalg.eigvalsh(Pc.T @ E @ Pc)
        out[name] = dict(all=w_all[:3].tolist(), comp=w_c[:16].tolist(), resid=float(resid),
                         Kmin_hint=None)
    return out

def haar(rng, k):
    g = rng.normal(size=(k, 4)); return g / np.linalg.norm(g, axis=1, keepdims=True)

if __name__ == "__main__":
    lat = Lat(6, 3); rng = np.random.default_rng(1)
    one = np.tile(IDQ, (lat.nlinks, 1))
    cases = [("free", "U=1", one)]
    for q in (1, 2):
        U, F = background(lat, q); cases.append(("regular", f"flux q={q} F={F:.3f}", U))
        for i in range(5): cases.append(("regular", f"flux q={q} F={F:.3f} gauge{i}", gauge_transform(lat, U, haar(rng, lat.nsites))))
    for eps in (0.05, 0.1, 0.2, 0.3):
        for i in range(4):
            U = np.asarray(qexp(jnp.asarray(eps * rng.normal(size=(lat.nlinks, 3)))))
            cases.append(("regular", f"small random eps={eps} #{i}", U))
            if i == 0 and eps in (0.1, 0.3): cases.append(("regular", f"small random eps={eps} #0 gauge", gauge_transform(lat, U, haar(rng, lat.nsites))))
    for i in range(30): cases.append(("arbitrary", f"Haar #{i}", haar(rng, lat.nlinks)))
    if len(sys.argv) > 1: cases = cases[:int(sys.argv[1])]
    res = []
    for cls, lab, U in cases:
        t = time.time(); o = analyze(lat, U); o.update(cls=cls, label=lab); res.append(o)
        print(f"{cls:9s} {lab:32s} rk={o['gauge_rank']} |grad|={o['grad']:.1e} "
              f"hess all={o['hess']['all'][0]:+.4e} comp={o['hess']['comp'][0]:+.4e},{o['hess']['comp'][12]:+.4e} | "
              f"curl all={o['curl']['all'][0]:+.4e} comp={o['curl']['comp'][0]:+.4e},{o['curl']['comp'][12]:+.4e} "
              f"res={max(o['hess']['resid'], o['curl']['resid']):.0e} {time.time()-t:.0f}s", flush=True)
        json.dump(res, open("/tmp/kt/kato_res.json", "w"))
