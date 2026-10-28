"""SOURCES_QE_INV section 6: ||Q_U E_U - I|| for smooth (regular) SO(3) = SU(2)-adjoint backgrounds, single layer, periodic.
Q = CMP 98 straight-line main term (Q'' omitted), E_U = free min-energy kernel E_0 dressed with axial transports (mu last).
Checks: Q_1 E_0 = I; pure gauge; gauge covariance; entrywise cone-area bound (2.4)-(2.5); Schur bound (2.6).
Usage: python qe_inv.py   (Mac, < 2 min)
"""
import itertools, sys
import numpy as np

def so3(v):                                    # exp of v . L for so(3) generators (Rodrigues)
    th = np.linalg.norm(v, axis=-1)[..., None, None]
    K = np.zeros(v.shape[:-1] + (3, 3))
    K[..., 0, 1], K[..., 0, 2], K[..., 1, 2] = -v[..., 2], v[..., 1], -v[..., 0]
    K = K - np.swapaxes(K, -1, -2)
    ths = np.where(th < 1e-12, 1.0, th)
    return np.eye(3) + np.sin(ths) / ths * K + (1 - np.cos(ths)) / ths**2 * (K @ K) * (th >= 1e-12) + 0.5 * K @ K * (th < 1e-12)

def rand_so3(shape, rng):
    q = rng.normal(size=shape + (3, 3)); Qm, Rm = np.linalg.qr(q)
    Qm = Qm * np.sign(np.diagonal(Rm, axis1=-2, axis2=-1))[..., None, :]
    return Qm * np.sign(np.linalg.det(Qm))[..., None, None]

def corridor(d, N, mu):                        # straight-line weights q(z) relative to c_-: cnt(z_mu) N^{-(d+1)}
    m = np.arange(2 * N - 1); cnt = np.minimum(m + 1, 2 * N - 1 - m)
    return [(z, cnt[z[mu]] * float(N) ** -(d + 1)) for z in itertools.product(*[range(2 * N - 1) if a == mu else range(N) for a in range(d)])]

def E0_kernel(d, N, Lu, mu):                   # free minimizer of sum |grad A|^2 with QA = delta_0 on the torus (exact zero mode)
    n = N * Lu; w = np.zeros((n,) * d)
    for z, q in corridor(d, N, mu): w[z] = q
    lam = sum(np.meshgrid(*([4 * np.sin(np.pi * np.arange(n) / n)**2] * d), indexing="ij", sparse=True))
    W = np.fft.fftn(w); gh = np.where(lam > 0, W / np.where(lam > 0, lam, 1), 0)
    g = np.real(np.fft.ifftn(gh))                                   # L^+ Q* delta_0
    M = np.real(np.fft.ifftn(np.conj(W) * np.fft.fftn(g)))[tuple([slice(0, n, N)] * d)]
    B = -np.full((Lu,) * d, Lu**-float(d)); B.flat[0] += 1
    Mh = np.fft.fftn(M); Mh.flat[0] = np.inf
    X = np.real(np.fft.ifftn(np.fft.fftn(B) / Mh)); Xf = np.zeros((n,) * d); Xf[tuple([slice(0, n, N)] * d)] = X
    A = np.real(np.fft.ifftn(np.fft.fftn(Xf) * np.fft.fftn(g))) + Lu**-float(d)
    QA = np.real(np.fft.ifftn(np.conj(W) * np.fft.fftn(A)))[tuple([slice(0, n, N)] * d)]
    D = np.zeros((Lu,) * d); D.flat[0] = 1
    assert np.abs(QA - D).max() < 1e-9, np.abs(QA - D).max()
    return A

def transports(R, c0, order, n, d):            # W(z): fibre z -> c0 along the axial path c0 -> z in 'order' (min image)
    Rr = np.roll(R, shift=[-x for x in c0], axis=tuple(range(1, d + 1)))
    W = np.zeros((n,) * d + (3, 3)); W[(0,) * d] = np.eye(3)
    for k, ka in enumerate(order):
        def sl(s):
            idx = [slice(None)] * d
            for kk in order[k + 1:]: idx[kk] = 0
            idx[ka] = s; return tuple(idx)
        for s in range(1, n // 2 + 1): W[sl(s)] = W[sl(s - 1)] @ Rr[ka][sl(s - 1)]
        for s in range(1, n - n // 2): W[sl(n - s)] = W[sl((n - s + 1) % n)] @ np.swapaxes(Rr[ka][sl(n - s)], -1, -2)
    return np.roll(W, shift=list(c0), axis=tuple(range(d)))

def plaq_alpha(R, eta, d):                     # max_p |R(dp) - I|_op / eta^2
    a = 0
    for m, v in itertools.combinations(range(d), 2):
        P = R[m] @ np.roll(R[v], -1, axis=m) @ np.swapaxes(np.roll(R[m], -1, axis=v), -1, -2) @ np.swapaxes(R[v], -1, -2)
        a = max(a, np.linalg.norm(P - np.eye(3), ord=2, axis=(-2, -1)).max())
    return a / eta**2

def lasso_count(o, path, order, n):            # plaquettes of the cone surface from o over the non-axial leg 'path' (list of sites)
    pos = {a: i for i, a in enumerate(order)}; tot = 0
    for w, w2 in zip(path[:-1], path[1:]):
        ka = [a for a in range(len(o)) if w[a] != w2[a]][0]
        for a in order[pos[ka] + 1:]:
            dd = (w[a] - o[a]) % n; tot += min(dd, n - dd)
    return tot

def axial_path(a, b, order, n):                # sites of the min-image axial path a -> b
    p = [tuple(a)]; cur = list(a)
    for ka in order:
        dd = (b[ka] - cur[ka]) % n; s = 1 if dd <= n // 2 else -1; steps = dd if s == 1 else n - dd
        for _ in range(steps): cur[ka] = (cur[ka] + s) % n; p.append(tuple(cur))
    return p

def run(d, N, Lu, mu, R, eta, want_bound=True):
    n = N * Lu; order = [a for a in range(d) if a != mu] + [mu]
    E0 = E0_kernel(d, N, Lu, mu); cor = corridor(d, N, mu)
    blocks = list(itertools.product(range(Lu), repeat=d)); nb = len(blocks)
    Wcor = {}; Wall = {}
    for c in blocks:
        Wall[c] = transports(R, [x * N for x in c], order, n, d)
    K = np.zeros((nb, 3, nb, 3)); Kfree = np.zeros((nb, nb))
    for i2, c2 in enumerate(blocks):
        zs = [tuple((c2[a] * N + z[a]) % n for a in range(d)) for z, _ in cor]; qs = np.array([q for _, q in cor])
        Wt = np.array([Wall[c2][z] for z in zs])
        for i1, c1 in enumerate(blocks):
            e = np.array([E0[tuple((zs[t][a] - c1[a] * N) % n for a in range(d))] for t in range(len(zs))])
            Ws = np.array([Wall[c1][z] for z in zs])
            K[i2, :, i1, :] = np.einsum("t,tij,tkj->ik", qs * e, Wt, Ws); Kfree[i2, i1] = np.sum(qs * e)
    assert np.abs(Kfree - np.eye(nb)).max() < 1e-9
    K = K.reshape(3 * nb, 3 * nb) - np.eye(3 * nb)
    out = {"norm": np.linalg.norm(K, 2), "diag": max(np.abs(K[3 * i:3 * i + 3, 3 * i:3 * i + 3]).max() for i in range(nb))}
    if want_bound:                                                 # entrywise cone bound and Schur bound, per unit alpha
        Bd = np.zeros((nb, nb)); Bc = np.zeros((nb, nb)); c1 = (0,) * d; o = c1   # translation invariance: depends on c2 - c1 only
        for off in blocks:
            if off == c1: continue
            s = 0.0; sc = 0.0
            for z, q in cor:
                zz = tuple((off[a] * N + z[a]) % n for a in range(d)); e = abs(E0[zz])
                leg = axial_path(tuple(x * N for x in off), zz, order, n)
                s += q * e * lasso_count(o, leg, order, n) * eta**2
                dist = sum(min(zz[a] % n, n - zz[a] % n) for a in range(d)) * eta
                sc += q * e * (d + 1) * (dist + 3 * (d + 1))
            for i1, cc in enumerate(blocks):
                i2 = blocks.index(tuple((cc[a] + off[a]) % Lu for a in range(d))); Bd[i2, i1] = s; Bc[i2, i1] = sc
        blk = np.array([[np.linalg.norm(K[3 * i2:3 * i2 + 3, 3 * i1:3 * i1 + 3], 2) for i1 in range(nb)] for i2 in range(nb)])
        out["bd"] = Bd; out["blk"] = blk
        out["schur_cone"] = np.sqrt(Bd.sum(1).max() * Bd.sum(0).max()); out["schur_crude"] = np.sqrt(Bc.sum(1).max() * Bc.sum(0).max())
    return out

def smooth_links(d, N, Lu, amp, rng, nmodes=3):
    n = N * Lu; eta = 1.0 / N; x = np.meshgrid(*([np.arange(n) * eta] * d), indexing="ij")
    R = np.zeros((d,) + (n,) * d + (3, 3))
    ks = [rng.integers(-1, 2, size=d) for _ in range(nmodes)]; ks = [k if any(k) else np.eye(d, dtype=int)[0] for k in ks]
    for m in range(d):
        A = np.zeros((n,) * d + (3,))
        for k in ks:
            ph = rng.uniform(0, 2 * np.pi); cf = rng.normal(size=3)
            arg = 2 * np.pi * sum(k[a] * (x[a] + (eta / 2 if a == m else 0)) for a in range(d)) / Lu + ph
            A += amp * np.cos(arg)[..., None] * cf
        R[m] = so3(eta * A)
    return R, eta

def gauge(R, g, d):
    return np.array([g @ R[m] @ np.swapaxes(np.roll(g, -1, axis=m), -1, -2) for m in range(d)])

if __name__ == "__main__":
    rng = np.random.default_rng(0)
    for d, N, Lu, amps in ((2, 3, 4, (0.05, 0.1, 0.2, 0.4)), (2, 5, 4, (0.1, 0.2)), (4, 2, 4, (0.1, 0.2))):
        mu = 0; n = N * Lu
        g = rand_so3((n,) * d, rng)
        Rp = gauge(np.array([np.broadcast_to(np.eye(3), (n,) * d + (3, 3))] * d), g, d)
        print(f"d={d} N={N} Lu={Lu}: pure gauge ||QE-I|| = {run(d, N, Lu, mu, Rp, 1.0 / N, False)['norm']:.2e}", flush=True)
        for amp in amps:
            R, eta = smooth_links(d, N, Lu, amp, np.random.default_rng(1))
            al = plaq_alpha(R, eta, d)
            o = run(d, N, Lu, mu, R, eta)
            og = run(d, N, Lu, mu, gauge(R, g, d), eta, False)
            ratio = (o["blk"] / np.where(o["bd"] > 0, al * o["bd"], np.inf)).max()
            print(f"  amp={amp}: alpha_Ad={al:.4f}  ||QE-I||={o['norm']:.4e} (gauge-transformed {og['norm']:.4e})  diag={o['diag']:.1e}"
                  f"  ||.||/alpha={o['norm'] / al:.3f}  Schur cone={o['schur_cone']:.3f}  Schur crude={o['schur_crude']:.2f}"
                  f"  max block/entrywise-bound={ratio:.3f}", flush=True)
        # EU_VERIFY-type rough background: independent links exp(eps X)
        Rr = so3(0.04 * rng.normal(size=(d,) + (n,) * d + (3,)))
        print(f"  rough eps=0.04 (EU_VERIFY type): alpha_Ad={plaq_alpha(Rr, 1.0 / N, d):.3f}  ||QE-I||={run(d, N, Lu, mu, Rr, 1.0 / N, False)['norm']:.4e}", flush=True)
