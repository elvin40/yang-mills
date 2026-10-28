"""t2_v1_avg012: does the one-step one-loop beta_1(0) depend on the averaging, CMP 109 (0.4) vs (0.12)?

ym_momentum.py implements (0.4): average over contour pairs of (1/i) log U(Gamma u [x,x'] u -Gamma' u -c).
Here (0.12): (1/i) log[ M(G(c-,x)) U([x,x']) M(G(c+,x'))^{-1} U(-c) ], M = Federbush group average (0.10),
summed over x in B(c-) with weight L^-4, then times U(c).  Same lattice, Hessian, ghost, BZ code.
Usage: .venv/bin/python t2_v1_avg012.py L Ng p1,p2,... [--u1]
Writes results/t2_v1_avg012_L{L}_Ng{Ng}_p{p}{_u1}.json (new files only).
"""
import sys, os, json, time, itertools
import numpy as np
import jax, jax.numpy as jnp
jax.config.update("jax_enable_x64", True)
import ym_momentum as ym
from ym_oneloop import qmul, qinv, qexp, qlog, IDQ

def paths(start, d):
    dirs = [k for k in range(4) if d[k] != 0]
    out = []
    for perm in itertools.permutations(dirs):
        z = np.array(start); steps = []
        for k in perm:
            s = int(np.sign(d[k]))
            for _ in range(abs(d[k])):
                if s > 0:
                    steps.append((tuple(z), k, +1)); z[k] += 1
                else:
                    z[k] -= 1; steps.append((tuple(z), k, -1))
        out.append(steps)
    return out

def make_avg012(lat, lp, mu, n_iter=40):
    """Same local link list as lp (from loops_for_direction), averaging (0.12)."""
    L, h = lat.L, lat.h
    keys = [(tuple(int(v) for v in s), int(k)) for s, k in zip(lp["rel"], lp["rdir"])]
    kidx = {key: i for i, key in enumerate(keys)}
    m = lp["m"]
    e = np.zeros(4, int); e[mu] = L
    straight = [(tuple(k * e // L), mu, +1) for k in range(L)]
    xs = [np.array(d) for d in itertools.product(range(-h, L - h), repeat=4)]
    fam1 = [paths(np.zeros(4, int), d) for d in xs]
    fam2 = [paths(e, d) for d in xs]
    segs = [[(tuple(d + k * e // L), mu, +1) for k in range(L)] for d in xs]
    P = max(len(f) for f in fam1 + fam2); T = max(max(len(g) for g in f) for f in fam1 + fam2)
    T = max(T, 1)
    def arr(fams):
        pos = np.full((len(xs), P, T), m, int); sgn = np.ones((len(xs), P, T), int); msk = np.zeros((len(xs), P))
        for i, f in enumerate(fams):
            for j, g in enumerate(f):
                msk[i, j] = 1.0
                for t, (s, k, sg) in enumerate(g):
                    pos[i, j, t] = kidx[(s, k)]; sgn[i, j, t] = sg
        return jnp.asarray(pos), jnp.asarray(sgn), jnp.asarray(msk)
    p1, s1, m1 = arr(fam1); p2, s2, m2 = arr(fam2)
    segp = jnp.asarray(np.array([[kidx[(s, k)] for (s, k, _) in sg] for sg in segs]))
    spos = jnp.asarray(np.array([kidx[(s, k)] for (s, k, _) in straight]))
    def hol(U, Uinv, pos, sgn):
        acc = jnp.tile(jnp.asarray(IDQ), pos.shape[:2] + (1,))
        for t in range(pos.shape[2]):
            f = jnp.where(sgn[:, :, t:t + 1] > 0, U[pos[:, :, t]], Uinv[pos[:, :, t]])
            acc = qmul(acc, f)
        return acc
    def fed(H, msk):  # Federbush average per x over masked family: sum_j log(M^-1 H_j) = 0
        M = H[:, 0]
        w = msk / msk.sum(1, keepdims=True)
        for _ in range(n_iter):
            lg = qlog(qmul(jnp.repeat(qinv(M)[:, None], H.shape[1], 1), H))
            M = qmul(M, qexp(jnp.sum(w[:, :, None] * lg, 1)))
        return M
    def coarse_link(Bloc, U0loc):
        U = qmul(qexp(Bloc), U0loc)
        U = jnp.concatenate([U, jnp.asarray(IDQ)[None]], 0)
        Uinv = qinv(U)
        M1 = fed(hol(U, Uinv, p1, s1), m1)
        M2 = fed(hol(U, Uinv, p2, s2), m2)
        sg = jnp.tile(jnp.asarray(IDQ), (len(xs), 1))
        for t in range(segp.shape[1]):
            sg = qmul(sg, U[segp[:, t]])
        Uc = jnp.asarray(IDQ)
        for i in range(spos.shape[0]):
            Uc = qmul(Uc, U[spos[i]])
        loop = qmul(qmul(qmul(M1, sg), qinv(M2)), jnp.tile(qinv(Uc)[None], (len(xs), 1)))
        abar = jnp.sum(qlog(loop), 0) / L**4
        return qmul(qexp(abar), Uc)
    def f(Bloc, U0loc):
        V0 = coarse_link(jnp.zeros_like(Bloc), U0loc)
        return qlog(qmul(coarse_link(Bloc, U0loc), qinv(V0)))
    jac = jax.jit(jax.vmap(lambda U0loc: jax.jacrev(f)(jnp.zeros((m, 3)), U0loc)))
    cl = jax.jit(jax.vmap(lambda U0loc: coarse_link(jnp.zeros((m, 3)), U0loc)))
    return jac, cl

if __name__ == "__main__":
    L = int(sys.argv[1]); Ng = int(sys.argv[2]); ps = [float(a) for a in sys.argv[3].split(",")]
    colors = (2,) if "--u1" in sys.argv else (0, 1, 2)
    os.makedirs("results", exist_ok=True)
    step04 = ym.Step(L, colors)
    step12 = ym.Step(L, colors)
    step12.avg_fns = [make_avg012(step12.lat1, step12.loops[mu], mu) for mu in range(4)]
    # sanity: Jacobians at the trivial background agree (first-order property (0.8))
    U1 = np.tile(np.array(IDQ), (step12.loops[0]["m"], 1))[None]
    j04 = np.asarray(step04.avg_fns[0][0](jnp.asarray(U1))); j12 = np.asarray(step12.avg_fns[0][0](jnp.asarray(U1)))
    print("Jacobian at U=1, max |(0.4)-(0.12)| =", np.abs(j04 - j12).max(), flush=True)
    for p in ps:
        tag = f"t2_v1_avg012_L{L}_Ng{Ng}_p{p}" + ("_u1" if colors == (2,) else "")
        path = os.path.join("results", tag + ".json")
        if os.path.exists(path):
            print(tag, "exists; not overwritten", json.load(open(path))); continue
        out = dict(L=L, Ng=Ng, p=p, colors=list(colors))
        for nm, st in (("avg04", step04), ("avg012", step12)):
            t = time.time()
            w, g, b = ym.w_of_p(st, p, Ng)
            out[nm] = dict(w=w, ghost=g, bord=b, beta=4 * w / (L**4 * (1 - np.cos(p))), secs=time.time() - t)
            print(nm, out[nm], flush=True)
        out["jac_diff_U1"] = float(np.abs(j04 - j12).max())
        json.dump(out, open(path, "w"), indent=1)
        print(tag, "beta(0.4) =", out["avg04"]["beta"], "beta(0.12) =", out["avg012"]["beta"], flush=True)
