"""GAPRIME2 check. Explicit complex charged operator A' = cos(phi) c^+c + div^+div - 2 sin(phi) K
(Landau gauge, T0 psi(x) = e^{i a x1} psi(x+e0), T1 psi(x) = psi(x+e1), a = 2 phi = charge-2 flux),
compared with the finite-difference Wilson Hessian of t2_s123_gap2d (read-only import), then
Bloch-reduced (Harper form, flux a = 2 pi p/q) at small and near-irrational fluxes.  Prints and writes JSON."""
import numpy as np, json, sys
sys.path.insert(0, 'numerics'); import t2_s123_gap2d as g

def shifts(n, a, k0, k1):
    # x1 = 0..n-1, period n (a*n in 2 pi Z), Bloch phases k0 (x0) and k1 (x1 wrap)
    T0 = np.diag(np.exp(1j*(k0 + a*np.arange(n))))
    T1 = np.zeros((n, n), complex)
    for x in range(n): T1[x, (x+1) % n] = np.exp(1j*k1) if x == n-1 else 1
    return T0, T1

def ops(n, a, k0, k1):
    phi = a/2; I = np.eye(n); T0, T1 = shifts(n, a, k0, k1); e = np.exp(-1j*a)
    d0, d1 = I - T0, I - T1
    L = d0.conj().T@d0 + d1.conj().T@d1
    c = np.hstack([I - e*T1, T0 - e*I])                  # c_act: C^2 -> C
    dv = np.hstack([d0.conj().T, d1.conj().T])             # D'^+
    Z = np.zeros((n, n))
    u = [np.hstack([I, Z]), np.hstack([Z, T0]), np.hstack([-e*T1, Z]), np.hstack([Z, -e*I])]
    K = np.zeros((2*n, 2*n), complex)
    for i in range(4):
        for j in range(i+1, 4):
            M = u[i].conj().T@u[j]; K += (M - M.conj().T)/(2j)
    A = np.cos(phi)*c.conj().T@c + dv.conj().T@dv - 2*np.sin(phi)*K
    D = np.vstack([d0, d1])                                # D': C -> C^2
    return A, D, L

def compare_script(N, m):
    # script charged spectrum (real colours 1,2) = complex spectrum with multiplicity 2
    phi, M, idx = g.build(N, m); ch = [i for i in range(N*6) if i % 3 != 2]
    ev_s, ev_m, gres = [], [], 0
    for k0 in 2*np.pi*np.arange(N)/N:
        A, D = M(k0); ev_s.append(np.linalg.eigvalsh((A + D@D.conj().T)[np.ix_(ch, ch)]))
        Am, Dm, L = ops(N, 2*phi, k0, 0.0); ev_m.append(np.linalg.eigvalsh(Am))
        gres = max(gres, np.abs((Am - Dm@Dm.conj().T)@Dm).max())
    s = np.sort(np.concatenate(ev_s)); mm = np.sort(np.concatenate(ev_m))
    return dict(N=N, m=m, err=float(np.abs(s[::2] - mm).max()), err2=float(np.abs(s[1::2] - mm).max()),
                HD_residual=float(gres))

def harper(p, q, nk=3):
    a = 2*np.pi*p/q; evA, evL, phys = [], [], []
    for k0 in 2*np.pi*(np.arange(nk)+0.5)/nk/q:
        for k1 in 2*np.pi*(np.arange(nk)+0.5)/nk:
            A, D, L = ops(q, a, k0*q, k1)          # k0*q: x0-Bloch phase over one cell (any value allowed)
            evA.append(np.linalg.eigvalsh(A)); evL.append(np.linalg.eigvalsh(L))
            if q <= 400:
                u, s, vh = np.linalg.svd(D); Qp = u[:, (s > 1e-9).sum():]
                phys.append(np.linalg.eigvalsh(Qp.conj().T@(A - D@D.conj().T)@Qp))
    A_ = np.concatenate(evA)/a; L_ = np.concatenate(evL)/a
    r = dict(p=p, q=q, alpha=a, minabsA=float(np.abs(A_).min()), infA=float(A_.min()),
             topNO=float(A_[A_ < 0].max()), firstposA=float(A_[A_ > 0].min()),
             L_inf=float(L_.min()), L_band1_top=float(L_[L_ < 2].max()), L_band2_bot=float(L_[L_ > 2].min()))
    if phys:
        P_ = np.concatenate(phys)/a; r.update(phys_firstpos=float(P_[P_ > 0].min()), phys_topneg=float(P_[P_ < 0].max()))
    return r

if __name__ == "__main__":
    out = {'formula_vs_script': [compare_script(N, m) for N, m in [(8, 0), (24, 1), (24, 2), (48, 1), (30, 7)]]}
    for r in out['formula_vs_script']: print(r, flush=True)
    res = []
    # coprime p/q with large q (non-unit numerators); the proofs cover all real a
    for p, q in [(1, 24), (1, 96), (1, 384), (13, 1218), (3, 1597), (1, 1536), (144, 1597)]:
        r = harper(p, q, nk=3 if q < 1000 else 1); res.append(r); print(r, flush=True)
    out['harper'] = res
    json.dump(out, open(sys.argv[1] if len(sys.argv) > 1 else 'numerics/t2_gaprime2_check.json', 'w'), indent=1)
