# r3s1 Lemma E2 check: Polyakov-loop abelian projection on a periodic L^3 x T lattice, SU(2) and SU(3).
# Frame = labeled eigenframe of Omega_t(x) (Polyakov loop based at (x,t)); overlaps m_j(b) = diag(E^+ U E');
# theta_p^j = arg prod of overlaps around p; q_c = (d theta)_c / 2pi. See SOURCES_R3S1_E2.md.
import numpy as np, itertools as it
from scipy.linalg import schur
rng = np.random.default_rng(20261028)

def herm(shape, N):
    A = rng.normal(size=shape+(N, N)) + 1j*rng.normal(size=shape+(N, N))
    H = (A + np.swapaxes(A.conj(), -1, -2))/2
    return H - np.trace(H, axis1=-2, axis2=-1)[..., None, None]*np.eye(N)/N

def expi(H):  # exp(iH), H Hermitian, batched
    w, V = np.linalg.eigh(H)
    return np.einsum('...ij,...j,...kj->...ik', V, np.exp(1j*w), V.conj())

def haar(shape, N):
    Z = rng.normal(size=shape+(N, N)) + 1j*rng.normal(size=shape+(N, N))
    Q, R = np.linalg.qr(Z)
    d = np.diagonal(R, axis1=-2, axis2=-1)
    Q = Q*(d/abs(d))[..., None, :]
    return Q/np.linalg.det(Q)[..., None, None]**(1/N)

def mm(A, B): return np.einsum('...ij,...jk->...ik', A, B)
def dag(A): return np.swapaxes(A.conj(), -1, -2)
def sh(a, mu, k=1): return np.roll(a, -k, axis=mu)   # a[z + k mu]
def opn(A): return np.linalg.svd(A, compute_uv=False)[..., 0]

def omega0(N): return np.exp(2j*np.pi*(np.arange(1, N+1) - (N+1)/2)/N)

def polyakov(U):  # Omega_t(x) = U4(x,t) U4(x,t+1) ... U4(x,t+T-1), for every t
    T = U.shape[4]; Om = np.empty_like(U[3])
    for t in range(T):
        P = np.broadcast_to(np.eye(U.shape[-1]), U[3][..., 0, :, :].shape).copy()
        for k in range(T): P = mm(P, U[3][:, :, :, (t+k) % T])
        Om[:, :, :, t] = P
    return Om

def label(lam, rule, N):  # returns permutation idx so that lam[idx[j]] has label j, and ok flag
    if rule == 'disc':
        w = omega0(N); idx = np.argmin(abs(lam[None, :] - w[:, None]), axis=1)
        return idx, len(set(idx)) == N
    a = np.angle(lam)/(2*np.pi); order = list(np.argsort(-a)); a = list(a[order]); m = int(round(sum(a)))
    for _ in range(abs(m)):   # alcove: a_1 >= ... >= a_N >= a_1 - 1, sum 0
        if m > 0: a.append(a.pop(0)-1); order.append(order.pop(0))
        else: a.insert(0, a.pop()+1); order.insert(0, order.pop())
    return np.array(order), True

def frames(Om, rule):
    N = Om.shape[-1]; sh_ = Om.shape[:-2]; E = np.empty_like(Om); lam = np.empty(sh_+(N,), complex)
    ok = np.ones(sh_, bool); gap = np.empty(sh_)
    for z in np.ndindex(*sh_):
        Tm, Z = schur(Om[z], output='complex'); l = np.diag(Tm)
        idx, ok[z] = label(l, rule, N)
        E[z] = Z[:, idx]; lam[z] = l[idx]
        E[z][:, 0] *= np.conj(np.linalg.det(E[z]))           # E in SU(N)
        gap[z] = min(abs(l[i]-l[j]) for i in range(N) for j in range(i))
    return E, lam, ok, gap

def overlaps(U, E):  # m[mu][z, j] = <e_j(z), U_mu(z) e_j(z+mu)>
    return [np.einsum('...ij,...ik,...kj->...j', E.conj(), U[mu], sh(E, mu)) for mu in range(4)]

def plaq(m, mu, nu):
    return np.angle(m[mu]*sh(m[nu], mu)*np.conj(sh(m[mu], nu))*np.conj(m[nu]))

def analyse(U, rule='disc'):
    Om = polyakov(U); E, lam, ok, gap = frames(Om, rule); m = overlaps(U, E)
    th = {(a, b): plaq(m, a, b) for a, b in it.combinations(range(4), 2)}
    dth = {}
    for a, b, c in it.combinations(range(4), 3):
        dth[(a, b, c)] = (sh(th[(b, c)], a) - th[(b, c)] - sh(th[(a, c)], b) + th[(a, c)]
                          + sh(th[(a, b)], c) - th[(a, b)])
    return dict(U=U, Om=Om, E=E, lam=lam, ok=ok, gap=gap, m=m, th=th, dth=dth)

def checks(R, N):
    U, Om, E, m, th, dth, gap = R['U'], R['Om'], R['E'], R['m'], R['th'], R['dth'], R['gap']
    out = {}
    out['int_err'] = max(np.max(abs(v/(2*np.pi) - np.round(v/(2*np.pi)))) for v in dth.values())
    q = {k: np.round(v/(2*np.pi)).astype(int) for k, v in dth.items()}
    qs = q[(0, 1, 2)]                                         # spatial cubes, every slice t
    out['tot_charge_per_slice'] = int(np.max(abs(qs.sum(axis=(0, 1, 2)))))
    cubes = list(it.combinations(range(4), 3))
    dq = sum((-1)**k*(sh(q[cubes[3-k]], k) - q[cubes[3-k]]) for k in range(4))  # cubes[3-k] omits k
    out['dq_4cube'] = int(np.max(abs(dq)))
    out['time_overlap_err'] = float(np.max(abs(abs(m[3]) - 1)))
    out['label_fail_sites'] = int((~R['ok']).sum()); out['min_gap'] = float(gap.min())
    out['charged_frac'] = float(np.mean(np.any(qs != 0, axis=-1)))
    out['max_|q^j|'] = int(np.max(abs(qs)))
    chi = [np.angle(np.prod(m[mu], axis=-1)) for mu in range(4)]
    dchi = {(a, b): chi[a] + sh(chi[b], a) - sh(chi[a], b) - chi[b] for a, b in th}
    out['sumtheta_minus_dchi_int_err'] = max(np.max(abs((th[p].sum(-1)-dchi[p])/(2*np.pi)
                                              - np.round((th[p].sum(-1)-dchi[p])/(2*np.pi)))) for p in th)
    h3p = {p: abs(th[p]).sum(-1) + abs(dchi[p]) < 2*np.pi - 1e-9 for p in th}  # margin: equality = 2pi|k| occurs
    h3c = (h3p[(1, 2)] & sh(h3p[(1, 2)], 0) & h3p[(0, 2)] & sh(h3p[(0, 2)], 1)
           & h3p[(0, 1)] & sh(h3p[(0, 1)], 2))
    sq = qs.sum(-1) != 0
    out['cubes_sum_q_nonzero'] = int(sq.sum()); out['  ...of_which_H3_holds'] = int((sq & h3c).sum())
    s = [np.sqrt(np.clip(1 - abs(m[mu])**2, 0, None)) for mu in range(4)]
    viol = 0; tight = 0
    for a, b in th:
        Up = mm(mm(U[a], sh(U[b], a)), mm(dag(sh(U[a], b)), dag(U[b])))
        eps = opn(Up - np.eye(N))[..., None]
        r = eps + s[a] + sh(s[b], a) + sh(s[a], b)
        mask = r < 1
        viol += int(np.sum(abs(th[(a, b)])[mask] > np.arcsin(r[mask]) + 1e-12))
        tight = max(tight, float(np.max(np.where(mask, abs(th[(a, b)])/np.maximum(np.arcsin(np.minimum(r, 1)), 1e-300), 0))))
    out['theta_bound_viol'] = viol; out['theta_bound_max_ratio'] = tight
    rv = lv = cv = 0; T = U.shape[4]
    for mu in range(3):
        eta = opn(mm(mm(U[mu], sh(Om, mu)), dag(U[mu])) - Om)
        g = gap[..., None]; e = eta[..., None]; mask = (e < g/2) & (abs(R['lam'] - sh(R['lam'], mu)) <= e + 1e-12)
        rv += int(np.sum((s[mu] > 2*e/(g-2*e) + 1e-12) & mask))
        P = mm(mm(U[mu], sh(U[3], mu)), mm(dag(sh(U[mu], 3)), dag(U[3])))
        lad = opn(P - np.eye(N)); ladsum = sum(np.roll(lad, -k, axis=3) for k in range(T))
        lv += int(np.sum(eta > ladsum + 1e-12))
        M = np.einsum('...ji,...jk,...kl->...il', E.conj(), U[mu], sh(E, mu))
        D = np.diagonal(M, axis1=-2, axis2=-1); Y = (M - D[..., None]*np.eye(N))/D[..., :, None]
        y = opn(Y); bnd = N*y**2/(2*(1-np.where(y < 1, y, 0)))
        ok = (y < 1) & (bnd < np.pi)
        cv += int(np.sum((abs(chi[mu]) > bnd + 1e-12) & ok))
    out['riesz_bound_viol'] = rv; out['ladder_bound_viol'] = lv; out['chi_bound_viol'] = cv
    return out, q

def gauge(U, N):
    h = haar(U.shape[1:5], N)
    return np.stack([mm(mm(h, U[mu]), dag(sh(h, mu))) for mu in range(4)])

def config(L, T, N, eps_s, eps_t, s=1.0, haar_spatial=False):
    D = np.diag(np.exp(2j*np.pi*s*(np.arange(1, N+1) - (N+1)/2)/(N*T)))
    U = np.empty((4, L, L, L, T, N, N), complex)
    for mu in range(3):
        U[mu] = haar((L, L, L, T), N) if haar_spatial else expi(eps_s*herm((L, L, L, T), N))
    U[3] = mm(np.broadcast_to(D, (L, L, L, T, N, N)), expi(eps_t*herm((L, L, L, T), N)))
    return U

def pr(name, d): print(f"  {name}: " + ", ".join(f"{k}={v:.3g}" if isinstance(v, float) else f"{k}={v}" for k, v in d.items()))

def hedgehog(L, T, N, eps, c=4.5):
    x = np.stack(np.meshgrid(*[np.arange(L)]*3, indexing='ij'), -1) - c
    n = x/np.linalg.norm(x, axis=-1, keepdims=True)
    sig = np.array([[[0, 1], [1, 0]], [[0, -1j], [1j, 0]], [[1, 0], [0, -1]]])
    ns = np.einsum('...a,aij->...ij', n, sig)
    alpha = -2*np.pi/3 if N == 3 else np.pi/2          # block eigenphases of Omega_0: exp(i alpha n.sigma)
    U = np.zeros((4, L, L, L, T, N, N), complex)
    blk = expi(alpha/T*ns); I = [0, 2] if N == 3 else [0, 1]
    U4 = np.zeros((L, L, L, N, N), complex)
    for a in range(2):
        for b in range(2): U4[..., I[a], I[b]] = blk[..., a, b]
    if N == 3: U4[..., 1, 1] = 1
    U[3] = np.repeat(U4[:, :, :, None], T, axis=3)
    for mu in range(3): U[mu] = np.eye(N)
    return np.stack([mm(U[mu], expi(eps*herm(U.shape[1:5], N))) for mu in range(4)])

def box_flux(th, lo, hi):  # boundary-only flux of the cell [lo,hi)^3 in each slice t
    sl = slice(lo, hi); tot = 0
    for k, sg in zip(range(3), (1, -1, 1)):
        a, b = [i for i in range(3) if i != k]
        idx_hi = [sl]*3; idx_hi[k] = hi; idx_lo = [sl]*3; idx_lo[k] = lo
        tot = tot + sg*(th[(a, b)][tuple(idx_hi)].sum(axis=(0, 1)) - th[(a, b)][tuple(idx_lo)].sum(axis=(0, 1)))
    return tot/(2*np.pi)    # shape (T, N)

if __name__ == '__main__':
    for N in (2, 3):
        print(f"=== SU({N}) ===")
        L, T = 4, 4
        for name, kw in [('smooth  eps=0.05', dict(eps_s=0.05, eps_t=0.05)),
                         ('medium  eps=0.4 ', dict(eps_s=0.4, eps_t=0.1)),
                         ('rough   Haar spatial', dict(eps_s=0, eps_t=0.05, haar_spatial=True))]:
            U = config(L, T, N, **kw); R = analyse(U, 'disc'); out, q = checks(R, N); pr(name, out)
            Rg = analyse(gauge(U, N), 'disc'); _, qg = checks(Rg, N)
            dth = max(np.max(abs(np.angle(np.exp(1j*(R['th'][p]-Rg['th'][p]))))) for p in R['th'])
            same = all(np.array_equal(q[k], qg[k]) for k in q)
            Uz = U.copy(); Uz[3][:, :, :, 0] *= np.exp(2j*np.pi/N); _, qz = checks(analyse(Uz, 'disc'), N)
            shift = [k for k in range(N) if all(np.array_equal(qz[c], np.roll(q[c], k, axis=-1)) for c in q)]
            print(f"    gauge: max|dtheta|={dth:.2e}, q identical={same}; center z: q^j -> cyclic shift by {shift}")
        U = hedgehog(10, 2, N, 0.02); R = analyse(U, 'disc'); out, q = checks(R, N)
        fl = box_flux(R['th'], 1, 8); inner = q[(0, 1, 2)][1:8, 1:8, 1:8].sum(axis=(0, 1, 2))
        print(f"  hedgehog (10^3 x 2, eps=0.02): boundary flux q(C,t) = {np.round(fl, 12).tolist()},"
              f" int_err={np.max(abs(fl-np.round(fl))):.1e}; sum of unit-cube q inside = {inner.tolist()};"
              f" charged unit cubes inside = {int(np.any(q[(0,1,2)][1:8,1:8,1:8] != 0, -1).sum())//2} per slice;"
              f" total torus charge per slice = {out['tot_charge_per_slice']}; dq_4cube={out['dq_4cube']}")
        print("  degeneracy sweep (holonomy angles scaled by s; s=1 center-symmetric, s=0 identity), eps in (0.02, 0.08), alcove labels")
        for ep, s in it.product((0.02, 0.08), (1.0, 0.5, 0.25, 0.1, 0.05, 0.02, 0.0)):
            U = config(L, T, N, ep, ep, s=s); R = analyse(U, 'alcove'); out, _ = checks(R, N)
            mo = min(float(np.min(abs(R['m'][mu]))) for mu in range(3))
            h1 = int(np.sum(np.any((abs(R['lam'][..., :, None] - omega0(N)) < np.sin(np.pi/N)).sum(-2) != 1, -1)))
            h2 = sum(int(np.sum(opn(mm(mm(U[mu], sh(R['Om'], mu)), dag(U[mu])) - R['Om']) >= R['gap']/4)) for mu in range(3))
            print(f"   eps={ep} s={s:<5} min_gap={out['min_gap']:.3f} min|overlap|={mo:.3f} charged_frac={out['charged_frac']:.3f}"
                  f" sum_q!=0 cubes={out['cubes_sum_q_nonzero']} int_err={out['int_err']:.1e}"
                  f" tot={out['tot_charge_per_slice']} dq4={out['dq_4cube']} H1_fail_sites={h1}/{L**3*T} H2_fail_links={h2}/{3*L**3*T} sum_q!=0&H3={out['  ...of_which_H3_holds']}"
                  f" viol(theta,riesz,ladder,chi)=({out['theta_bound_viol']},{out['riesz_bound_viol']},"
                  f"{out['ladder_bound_viol']},{out['chi_bound_viol']})")
