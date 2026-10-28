# d = 2 real-space test of (W) at K = 0 and of evenness: canonical kernel a_f(z) of the level-j form in the
# midpoint symmetric gauge about a coarse site; sigma_j(f; 0) = sum_z a_f(z). Checkpoint per (j, q).
import sys, os, numpy as np
D = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, os.path.dirname(D))
import u3_lemma51_check as U
from ym_oneloop import qmul, qinv, rot
L = 3; nc = int(sys.argv[2]) if len(sys.argv) > 2 else 8; R = nc // 2 - 1
quat = lambda b: np.array([np.cos(b), 0, 0, np.sin(b)])
def level(j, q):
    out = os.path.join(D, f"s0d2_j{j}_q{q}_nc{nc}.npz")
    if os.path.exists(out): return dict(np.load(out))
    if j == 0:
        V, _ = U.background(nc, q); S = U.hessian(nc, V)[0].toarray()
    else:
        S, V, _ = U.schur(L**j, nc, q, [(L, (L - 1) // 2)] * j, "all")
    ang, nonab = U.coarse_angles(V, nc); F = float(ang.mean())
    m0 = np.array([nc // 2, nc // 2])
    def vsym(x, mu):  # symmetric-gauge link half-angle about m0
        r = x - m0; return -F * r[1] / 2 if mu == 0 else F * r[0] / 2
    g = {tuple(m0): np.array([1., 0, 0, 0])}
    for s0 in range(-R - 1, R + 2):  # path: along e0 from m0, then along e1
        x = m0.copy()
        for t in range(abs(s0)):
            sg = np.sign(s0); y = x + sg * np.array([1, 0])
            if sg > 0: g[tuple(y)] = qmul(qmul(qinv(quat(vsym(x, 0))), g[tuple(x)]), V[U.links(nc, x, 0)])
            else: g[tuple(y)] = qmul(qmul(quat(vsym(y, 0)), g[tuple(x)]), qinv(V[U.links(nc, y, 0)]))
            x = y
        for s1 in (1, -1):
            x = m0 + np.array([s0, 0])
            for t in range(R + 1):
                y = x + s1 * np.array([0, 1])
                if s1 > 0: g[tuple(y)] = qmul(qmul(qinv(quat(vsym(x, 1))), g[tuple(x)]), V[U.links(nc, x, 1)])
                else: g[tuple(y)] = qmul(qmul(quat(vsym(y, 1)), g[tuple(x)]), qinv(V[U.links(nc, y, 1)]))
                x = y
    res = 0.0  # gauge-fixing residual: g V g^-1 = V_sym on all links in the box
    for x in g:
        for mu in range(2):
            y = tuple(np.array(x) + np.eye(2, dtype=int)[mu])
            if y in g:
                w = qmul(qmul(g[x], V[U.links(nc, np.array(x), mu)]), qinv(g[y])); res = max(res, np.abs(w - quat(vsym(np.array(x), mu))).max())
    def Rb(x, mu): return rot(qmul(qinv(quat(vsym(np.array(x), mu) / 2)), g[tuple(x)]))  # B_mid = R B
    rows = [(tuple(m0), 0), (tuple(m0), 1), (tuple(m0 + [1, 0]), 0), (tuple(m0 + [1, 0]), 1)]
    cols = [(x, nu) for x in g for nu in range(2) if max(abs(np.array(x) - m0)) <= R]
    blk = np.zeros((len(rows), len(cols), 3, 3))
    for i, (x, mu) in enumerate(rows):
        bi = U.links(nc, np.array(x), mu)
        for k, (y, nu) in enumerate(cols):
            bk = U.links(nc, np.array(y), nu)
            blk[i, k] = Rb(x, mu) @ S[3 * bi:3 * bi + 3, 3 * bk:3 * bk + 3] @ Rb(y, nu).T
    mid = lambda x, mu: np.array(x, float) - m0 + 0.5 * np.eye(2)[mu]
    r = dict(F=F, nonab=nonab, gres=res, blk=blk, rmid=np.array([mid(*a) for a in rows]), cmid=np.array([mid(*c) for c in cols]),
             rdir=np.array([a[1] for a in rows]), cdir=np.array([c[1] for c in cols]))
    np.savez(out, **r); return r
if __name__ == "__main__":
    import time
    for j in [int(a) for a in sys.argv[1].split(",")]:
        for q in (0, 1, -1, 2, -2):
            t = time.time(); r = level(j, q); print(j, q, f"F={float(r['F']):.4f} gres={float(r['gres']):.1e} nonab={float(r['nonab']):.1e} {time.time()-t:.0f}s", flush=True)
