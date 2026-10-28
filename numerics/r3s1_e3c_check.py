# r3s1 E3c check: sharpened monopole core bound (SOURCES_R3S1_E3C.md).
# (A) Lemma 1: |w_p^j - (E^-1 U_p E)_jj| <= Q_p^j (quadratic in frame mismatch), any frames.
# (B) explicit family: static compact dipole straddling the top face of C; N_4 * g^2 S(C x S^1) is constant in N_4.
# (C) constrained gradient descent of the Wilson action on C x S^1 with Phi(dC, t) = q fixed and (H1)_rho on dC.
# Box C = [0, n]^3 sites, n = N_4 (side L in units a = L/N_4); time period T, replicated r = N_4/T times
# (T = 1: static configurations; T = N_4: full 4d). Action reported as g^2 S = 2 sum_p Re tr(1 - U_p).
import sys, os, time
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from r3s1_e2_check import herm, expi, haar, mm, dag, sh, opn, omega0, config, analyse
import numpy as np, itertools as it
mm = np.matmul   # faster than the einsum version imported above
rng = np.random.default_rng(20261029)
sig = np.array([[[0, 1], [1, 0]], [[0, -1j], [1j, 0]], [[1, 0], [0, -1]]])
D0 = lambda N: 2*np.sin(np.pi/N)

def offnorm(M):  # sigma^j (column j off-diagonal norm), tau (op norm of off-diagonal part)
    d = np.diagonal(M, axis1=-2, axis2=-1)
    sg = np.sqrt(np.clip(1 - abs(d)**2, 0, None))
    R = M - d[..., None]*np.eye(M.shape[-1])
    return d, sg, opn(R)

def lemma1(Ms):  # Ms = [M1..M4] along the plaquette path; returns |Mp_jj - w|, Q, w, Mp_jj
    ds, sg, ta = zip(*[offnorm(M) for M in Ms])
    Mp = mm(mm(Ms[0], Ms[1]), mm(Ms[2], Ms[3])); mpd = np.diagonal(Mp, axis1=-2, axis2=-1)
    w = ds[0]*ds[1]*ds[2]*ds[3]
    Q = 0
    for k, l in it.combinations(range(4), 2):
        f = sg[k]*sg[l]
        for m in range(k+1, l): f = f*(1 + ta[m][..., None])
        Q = Q + f
    return abs(mpd - w), Q, w, mpd

def lemma1_random():
    print("(A) Lemma 1 on random 4^3 x 4 configurations (spatial plaquettes, every j)")
    for N in (2, 3):
        for name, kw in [('smooth eps=0.05', dict(eps_s=0.05, eps_t=0.05)), ('medium eps=0.4', dict(eps_s=0.4, eps_t=0.1)),
                         ('rough Haar spatial', dict(eps_s=0, eps_t=0.05, haar_spatial=True))]:
            U = config(4, 4, N, **kw); R = analyse(U, 'disc')
            for fr, E in (('eigen', R['E']), ('Haar', haar(U.shape[1:5], N))):
                viol = 0; vth = 0; ratio = 0; rq = []
                for a, b in it.combinations(range(3), 2):
                    M = lambda mu: np.einsum('...ji,...jk,...kl->...il', E.conj(), U[mu], sh(E, mu))
                    Ma, Mb = M(a), M(b)
                    Ms = [Ma, sh(Mb, a), dag(sh(Ma, b)), dag(Mb)]
                    err, Q, w, mpd = lemma1(Ms)
                    Up = mm(mm(U[a], sh(U[b], a)), mm(dag(sh(U[a], b)), dag(U[b]))); ep = opn(Up - np.eye(N))[..., None]
                    viol += int(np.sum(err > Q + 1e-12)); ratio = max(ratio, float(np.max(err/np.maximum(Q, 1e-300))))
                    th = abs(np.angle(w)); r = ep + Q
                    vth += int(np.sum(th > np.pi*r + 1e-12)) + int(np.sum((r < 1) & (th > np.arcsin(np.minimum(r, 1)) + 1e-12)))
                    rq.append(np.median(Q))
                if fr == 'eigen':   # Lemma 2 (Davis-Kahan form): s_b^j <= eta_b / delta_b^j, delta = min_{k!=j} |lam_k(z+mu) - lam_j(z)|
                    dk = 0; dkr = 0
                    for mu in range(3):
                        eta = opn(mm(mm(U[mu], sh(R['Om'], mu)), dag(U[mu])) - R['Om'])[..., None]
                        lam, lamy = R['lam'], sh(R['lam'], mu)
                        dif = abs(lamy[..., None, :] - lam[..., :, None]) + np.eye(N)*1e9      # [j, k]
                        delta = dif.min(-1)
                        sb = np.sqrt(np.clip(1 - abs(R['m'][mu])**2, 0, None))
                        dk += int(np.sum(sb > eta/delta + 1e-12)); dkr = max(dkr, float(np.max(sb/(eta/delta))))
                    print(f"  SU({N}) {name:<20} Lemma 2: viol(s <= eta/delta)={dk}, max ratio={dkr:.3f}")
                print(f"  SU({N}) {name:<20} {fr:<5} frames: viol(|Mp_jj-w|<=Q)={viol}, max ratio={ratio:.3f},"
                      f" viol(|theta|<=arcsin/pi(eps+Q))={vth}, median Q={np.median(rq):.3g}")

# ---------- box C = [0, n]^3 inside a padded periodic array of side P = n + 2; time period T, replication r ----------
class Box:
    def __init__(s, n, T, N, N4):
        s.n, s.T, s.N, s.N4, s.r, s.P = n, T, N, N4, N4//T, n + 2
        X = np.stack(np.meshgrid(*[np.arange(s.P)]*3, indexing='ij'), -1)
        inb = np.all(X <= n, -1)
        s.bd = inb & np.any((X == 0) | (X == n), -1)                       # sites of dC
        s.pm = {}
        for a, b in it.combinations(range(4), 2):
            ok = inb.copy()
            for d in (a, b):
                if d < 3: ok &= X[..., d] <= n - 1
            s.pm[(a, b)] = np.repeat(ok[..., None], T, -1)
        s.bl = [np.repeat((s.bd & np.roll(s.bd, -mu, axis=mu) & (X[..., mu] <= n - 1))[..., None], T, -1) for mu in range(3)]
        s.ns = 6*n*n

    def plaqs(s, U, a, b): return mm(mm(U[a], sh(U[b], a)), mm(dag(sh(U[a], b)), dag(U[b])))

    def action(s, U, parts=False):
        tot = 0.; sp = 0.; lat = 0.
        for (a, b), m in s.pm.items():
            v = 2*np.real(s.N - np.trace(s.plaqs(U, a, b), axis1=-2, axis2=-1))
            tot += np.sum(v*m)
            if parts:
                if b < 3:   # spatial plaquettes lying in dC: all four corners on dC
                    c = s.bd & sh(s.bd, a) & sh(s.bd, b) & sh(sh(s.bd, a), b)
                    sp += np.sum(v*m*c[..., None])
                else:       # (a,4) plaquettes over the links of dC
                    lat += np.sum(v*s.bl[a])
        return (s.r*tot, s.r*sp, s.r*lat) if parts else s.r*tot

    def grad(s, U):
        G = np.zeros_like(U)
        for mu in range(4):
            A = 0
            for nu in range(4):
                if nu == mu: continue
                mf = s.pm[(min(mu, nu), max(mu, nu))]
                A = A + mf[..., None, None]*mm(mm(sh(U[nu], mu), dag(sh(U[mu], nu))), dag(U[nu]))
                mb = sh(mf, nu, -1)
                A = A + mb[..., None, None]*mm(mm(dag(sh(sh(U[nu], mu), nu, -1)), dag(sh(U[mu], nu, -1))), sh(U[nu], nu, -1))
            W = mm(U[mu], A); g = -1j*(W - dag(W))
            G[mu] = s.r*(g - np.trace(g, axis1=-2, axis2=-1)[..., None, None]*np.eye(s.N)/s.N)
        return G

    def frames(s, U):
        T, N = s.T, s.N
        P0 = U[3][..., 0, :, :]
        for t in range(1, T): P0 = mm(P0, U[3][..., t, :, :])
        Om = np.linalg.matrix_power(P0, s.r)
        lam, V = np.linalg.eig(Om)
        w = omega0(N); idx = np.argmin(abs(lam[..., None, :] - w[:, None]), -1)   # idx[..., j]: eigenvalue with label j
        perm = np.all(np.sort(idx, -1) == np.arange(N), -1)
        lamj = np.take_along_axis(lam, idx, -1); E0 = np.take_along_axis(V, idx[..., None, :], -1)
        rho = np.max(abs(lamj - w), -1)
        E = np.empty(U.shape[1:], complex); E[..., 0, :, :] = E0
        for t in range(T - 1): E[..., t+1, :, :] = mm(dag(U[3][..., t, :, :]), E[..., t, :, :])
        return E, lamj, rho, perm

    def flux(s, U, rho_max):
        E, lamj, rho, perm = s.frames(U)
        h1 = bool(np.all(perm[s.bd]) and np.max(rho[s.bd]) < rho_max)
        m = [np.einsum('...ij,...ik,...kj->...j', E.conj(), U[mu], sh(E, mu)) for mu in range(3)]
        th = {(a, b): np.angle(m[a]*sh(m[b], a)*np.conj(sh(m[a], b))*np.conj(m[b])) for a, b in it.combinations(range(3), 2)}
        fl = box_flux(th, 0, s.n)
        q = np.round(fl).astype(int)
        mino = min(float(np.min(abs(m[mu])[s.bl[mu]])) for mu in range(3))
        s.th = th
        return q, float(np.max(abs(fl - q))), h1, float(np.max(rho[s.bd])), mino, E

    def freeze(s, F, th_old, th_new):
        # freeze every link that enters a dC plaquette whose angle jumped by ~2pi (spatial links and the 4 corner columns, all t)
        nfz = 0
        for (a, b), v in th_new.items():
            jump = np.any(abs(v - th_old[(a, b)]) > np.pi, axis=(-1, -2))     # over (t, j)
            c = s.bd & sh(s.bd, a) & sh(s.bd, b) & sh(sh(s.bd, a), b)
            for z in zip(*np.nonzero(jump & c)):
                z = np.array(z); P = s.P; e = np.eye(3, dtype=int)
                for mu, y in ((a, z), (b, z + e[a]), (a, z + e[b]), (b, z)): F[mu][tuple(y % P)] = False
                for y in (z, z + e[a], z + e[b], z + e[a] + e[b]): F[3][tuple(y % P)] = False
                nfz += 1
        return nfz

def box_flux(th, lo, hi):  # boundary flux of [lo,hi)^3 per slice (as in r3s1_e2_check.box_flux)
    sl = slice(lo, hi); tot = 0
    for k, sg in zip(range(3), (1, -1, 1)):
        a, b = [i for i in range(3) if i != k]
        ih = [sl]*3; ih[k] = hi; il = [sl]*3; il[k] = lo
        tot = tot + sg*(th[(a, b)][tuple(ih)].sum(axis=(0, 1)) - th[(a, b)][tuple(il)].sum(axis=(0, 1)))
    return tot/(2*np.pi)

def embed(blk, N, P, T):
    U4 = np.zeros(blk.shape[:3] + (N, N), complex); I = [0, 2] if N == 3 else [0, 1]
    for a in range(2):
        for b in range(2): U4[..., I[a], I[b]] = blk[..., a, b]
    if N == 3: U4[..., 1, 1] = 1
    return np.repeat(U4[:, :, :, None], T, axis=3)

def planted(B, nfield, noise=0.0):
    N, P, T = B.N, B.P, B.T
    alpha = -2*np.pi/3 if N == 3 else np.pi/2
    U = np.zeros((4, P, P, P, T, N, N), complex)
    for mu in range(3): U[mu] = np.eye(N)
    U[3] = embed(expi(alpha/B.N4*np.einsum('...a,aij->...ij', nfield, sig)), N, P, T)
    if noise: U = np.stack([mm(expi(noise*herm(U.shape[1:5], N)), U[mu]) for mu in range(4)])
    return U

def nf_hedgehog(B):
    m = (B.n - 1)//2; c = np.full(3, m + 0.5)
    x = np.stack(np.meshgrid(*[np.arange(B.P)]*3, indexing='ij'), -1) - c
    return x/np.linalg.norm(x, axis=-1, keepdims=True)

def nf_dipole(B):   # n = -e3 except the 8 corners of the unit cube touching the top face z = n; partner charge sits outside C
    m = (B.n - 1)//2; c = np.array([m + 0.5, m + 0.5, B.n - 0.5])
    nf = np.zeros((B.P,)*3 + (3,)); nf[..., 2] = -1
    for x in it.product((m, m + 1), (m, m + 1), (B.n - 1, B.n)):
        v = np.array(x) - c; nf[x] = v/np.linalg.norm(v)
    return nf

def bound_terms(B, U, E, rho_star, q):
    # ingredients of Theorem E3c': gamma, qbar, Lemma-1 chain on dC per slice, and the final bound
    N, N4 = B.N, B.N4; gam = D0(N) - 2*rho_star
    qbar = float(np.mean(np.max(abs(q), -1)))
    chain = []
    for t in range(B.T):
        lhs = 2*np.max(abs(q[t])); se = 0.; sq = 0.
        for a, b in it.combinations(range(3), 2):
            M = lambda mu: np.einsum('...ji,...jk,...kl->...il', E.conj(), U[mu], sh(E, mu))
            Ma, Mb = M(a), M(b)
            err, Q, w, mpd = lemma1([Ma, sh(Mb, a), dag(sh(Ma, b)), dag(Mb)])
            ep = opn(B.plaqs(U, a, b) - np.eye(N))
            c = B.bd & sh(B.bd, a) & sh(B.bd, b) & sh(sh(B.bd, a), b) & (np.indices(B.bd.shape)[a] <= B.n-1) & (np.indices(B.bd.shape)[b] <= B.n-1)
            se += np.sum(ep[..., t][c]); sq = sq + np.sum(Q[..., t, :][c], 0)
        chain.append((lhs, se + float(np.max(sq))))
    s_all, s_sp, s_lat = B.action(U, parts=True)
    bnd = min(4*qbar**2*N4/B.ns, gam**2*qbar/(3*N4))
    return dict(gamma=gam, qbar=qbar, chain_ok=all(l <= r + 1e-9 for l, r in chain),
                chain_min_slack=min(r/l for l, r in chain if l > 0) if qbar > 0 else np.nan,
                S=s_all, S_dC=s_sp + s_lat, bound=bnd)

def pen(B, U, kappa):
    # center-stabilizing penalty kappa * sum_{x in dC} sum_{n=1}^{N//2} |tr Omega(x)^n|^2 (zero on the class of Omega_0) and its gradient
    T, N, r = B.T, B.N, B.r
    Om = []   # Omega_t(x) based at each t, replicated r times
    for t in range(T):
        P0 = np.broadcast_to(np.eye(N), U[3][..., 0, :, :].shape).copy()
        for k in range(T): P0 = mm(P0, U[3][..., (t+k) % T, :, :])
        Om.append(np.linalg.matrix_power(P0, r))
    Om = np.stack(Om, 3); w = B.bd[..., None]
    v = 0.; G = np.zeros_like(U)
    for n in range(1, N//2 + 1):
        On = np.linalg.matrix_power(Om, n); c = np.trace(On, axis1=-2, axis2=-1)
        v += kappa*np.sum(w*abs(c)**2)
        g = 1j*n*r*(np.conj(c)[..., None, None]*On - c[..., None, None]*dag(On))
        G[3] += kappa*w[..., None, None]*(g - np.trace(g, axis1=-2, axis2=-1)[..., None, None]*np.eye(N)/N)
    return v, G

def descend(B, U, q0, rho_max, iters, kappa=10.0, tau=0.02, mom=0.9, tol=1e-10, mmin=1e-2):
    def F(U): return B.action(U) + pen(B, U, kappa)[0]
    f = F(U); P = np.zeros_like(U); acc = rej = nfz = 0
    Fr = np.ones(U.shape[:5], bool); B.flux(U, rho_max); th = B.th; f_old = f
    for k in range(iters):
        G = (B.grad(U) + pen(B, U, kappa)[1])*Fr[..., None, None]; P = mom*P - tau*G
        Un = np.stack([mm(expi(P[mu]), U[mu]) for mu in range(4)])
        fn = F(Un)
        if fn < f:
            q, ie, h1, rho, mino, _ = B.flux(Un, rho_max)
            if h1 and ie < 1e-6 and mino > mmin and np.array_equal(q, q0):
                df = f - fn; U, f, th = Un, fn, B.th; acc += 1; tau = min(tau*1.05, 0.2)
                if df < tol*f: break
                continue
            if h1 and ie < 1e-6:
                n_ = B.freeze(Fr, th, B.th); nfz += n_
                if n_: P[:] = 0; rej += 1; continue
        P[:] = 0; tau *= 0.5; rej += 1
        if tau < 1e-9: break
        if k % 250 == 249:
            if k > 250 and (f_old - f) < 1e-5*f: break
            f_old = f
    return U, B.action(U), acc, rej, nfz

def family_table():
    print("(B) explicit family: static compact dipole (U_i = 1, U_4 = exp(i alpha n.sigma / N_4)), C = cube of side N_4")
    out = {}
    for N in (2, 3):
        for N4 in (2, 4, 8, 16, 32, 64):
            B = Box(N4, 1, N, N4); U = planted(B, nf_dipole(B)); q, ie, h1, rho, mino, E = B.flux(U, 0.99*D0(N)/2)
            s, s_sp, s_lat = B.action(U, parts=True); gam = D0(N) - 2*rho; qb = float(np.max(abs(q)))
            bnd = min(4*qb**2*N4/B.ns, gam**2*qb/(3*N4))
            out[f"{N},{N4}"] = dict(q=q[0].tolist(), int_err=ie, gamma=gam, S=s, N4S=N4*s, S_spatial_dC=s_sp, N4bound=N4*bnd)
            print(f"  SU({N}) N_4={N4:<3} Phi(dC)={q[0].tolist()} int_err={ie:.1e} gamma={gam:.4f} min|m|={mino:.3f}"
                  f" g^2S(CxS1)={s:.4f} N_4*g^2S={N4*s:.3f} spatial-dC part={s_sp:.1e} N_4*bound={N4*bnd:.4f}")
    return out

def run_job(key, N, N4, T, start, store):
    B = Box(N4, T, N, N4); rho_max = 0.99*D0(N)/2
    if start == 'static-min':
        Us = np.load(f"/tmp/e3c/U_{N}_{N4}_1_hh.npy"); U = np.repeat(Us, T, axis=4)
        U = np.stack([mm(expi(0.01*herm(U.shape[1:5], N)), U[mu]) for mu in range(4)])
    elif start == 'hh-long':   # continuation of the N_4 = 16 hedgehog run in chunks of 500 steps, checkpointed
        ck = f"/tmp/e3c/ckpt_{N}_{N4}.npy"
        U = np.load(ck if os.path.exists(ck) else f"/tmp/e3c/U_{N}_{N4}_1_hh.npy")
    else:
        U = planted(B, nf_hedgehog(B) if start == 'hh' else nf_dipole(B))
    q0, ie, h1, rho, mino, E = B.flux(U, rho_max); s0 = B.action(U)
    t0 = time.time()
    if start == 'hh-long':
        acc = rej = nfz = 0; s = s0
        for chunk in range(16):
            U, s_new, a_, r_, n_ = descend(B, U, q0, rho_max, 500, mmin=0.1); acc += a_; rej += r_; nfz += n_
            np.save(ck, U); print(f"    chunk {chunk}: S={s_new:.4f} N_4*S={N4*s_new:.2f}", flush=True)
            if s - s_new < 2e-3*s_new: s = s_new; break
            s = s_new
        U2 = U
    else:
        U2, s, acc, rej, nfz = descend(B, U, q0, rho_max, (2500 if N4 == 16 else 5000) if T == 1 else (800 if N4 == 8 else 2500), mmin=0.1)
    q, ie, h1, rho, mino, E = B.flux(U2, rho_max); bt = bound_terms(B, U2, E, rho, q)
    if T == 1: np.save(f"/tmp/e3c/U_{N}_{N4}_1_{start}.npy", U2)
    r = dict(N=N, N4=N4, T=T, start=start, q=q[0].tolist(), q_all_t_equal=bool(np.all(q == q0)), S0=s0, S=s, N4S=N4*s,
             S_dC_frac=bt['S_dC']/s, gamma=bt['gamma'], rho_star=rho, min_overlap=mino, N4bound=N4*bt['bound'],
             ratio=s/bt['bound'], lemma_chain_ok=bt['chain_ok'], lemma_chain_slack=bt['chain_min_slack'],
             iters_acc=acc, rejects=rej, frozen_plaq=nfz, secs=time.time() - t0)
    store[key] = r; return r

if __name__ == '__main__':
    import json
    lemma1_random()
    fam = family_table()
    path = os.path.join(os.path.dirname(os.path.abspath(__file__)), 'r3s1_e3c_results.json')
    store = json.load(open(path)) if os.path.exists(path) else {}
    store['family'] = fam
    os.makedirs('/tmp/e3c', exist_ok=True)
    jobs = [(N, N4, 1, st) for N in (2, 3) for N4 in (2, 4, 8, 16) for st in ('hh', 'dip') if not (N4 == 16 and st == 'dip')]
    jobs += [(N, N4, N4, 'static-min') for N in (2, 3) for N4 in (2, 4, 8)]
    jobs += [(N, 16, 1, 'hh-long') for N in (2, 3)]
    print("(C) constrained descent: Phi(dC,t) fixed, (H1) labels on dC, min overlap on dC links > 0.1, penalty 10 sum_dC |tr Omega^n|^2")
    for N, N4, T, st in jobs:
        key = f"{N},{N4},{T},{st}"
        if key in store and (T == 1 and os.path.exists(f"/tmp/e3c/U_{N}_{N4}_1_{st}.npy") or T > 1 or st == 'hh-long'):
            r = store[key]
        else:
            r = run_job(key, N, N4, T, st, store); json.dump(store, open(path, 'w'), indent=1)
        print(f"  SU({N}) N_4={N4:<2} T={T:<2} start={st:<10} Phi={r['q']} S0={r['S0']:.2f} S={r['S']:.3f} N_4*S={r['N4S']:.2f}"
              f" dC-frac={r['S_dC_frac']:.3f} gamma={r['gamma']:.3f} N_4*bound={r['N4bound']:.4f} S/bound={r['ratio']:.1f}"
              f" lemma-chain ok={r['lemma_chain_ok']} slack={r['lemma_chain_slack']:.2f} min|m|={r['min_overlap']:.3f}"
              f" acc/rej/frozen={r['iters_acc']}/{r['rejects']}/{r['frozen_plaq']} {r['secs']:.0f}s", flush=True)
