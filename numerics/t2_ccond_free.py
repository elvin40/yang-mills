"""Free (U = 1) single-layer constant of (C): K(p) = max eig of B -> min{energy(A) : QA = B} at coarse momentum p.
Feynman form (|grad A|^2, upper bound, = K_0 of SOURCES_EU) and gauge-invariant form (|dA|^2, exact for G at U = 1,
since the minimizer of <A, G^{-1}A> has RD*A = 0). c_-^free = 1/(a + K_gi), a = 1. Straight-line Q, N fine bonds per block.
Usage: python t2_ccond_free.py   (< 1 min)
"""
import itertools
import numpy as np

def Dn(q, N):                                   # (1/N) sum_{m<N} e^{iqm}
    z = np.exp(1j * q); num = z**N - 1; den = N * (z - 1)
    return np.where(np.abs(den) < 1e-14, 1.0 + 0j, num / np.where(np.abs(den) < 1e-14, 1, den))

def K_at(p, N, d):
    ls = np.array(list(itertools.product(range(N), repeat=d)))
    q = (p[None, :] + 2 * np.pi * ls) / N                     # aliases
    e = N * (np.exp(1j * q) - 1)                               # fine gradient symbol, block units
    e2 = np.sum(np.abs(e)**2, axis=1); ok = e2 > 1e-14
    q, e, e2 = q[ok], e[ok], e2[ok]
    D = Dn(q, N); PD = np.prod(D, axis=1)
    w = PD[:, None] * D                                        # w_mu(q) = prod_nu D(q_nu) * D(q_mu)
    TF = np.sum(np.abs(w)**2 / e2[:, None], axis=0)            # Feynman: diagonal
    eh = e / np.sqrt(e2)[:, None]
    Wt = w[:, :, None] * (np.eye(d)[None] - eh[:, :, None] * eh.conj()[:, None, :])   # W P_perp
    Tp = np.zeros((d, d), complex)
    for l in range(len(e2)):                                   # T_perp = sum W P_perp W* / |e|^2
        Wl = np.diag(w[l]); P = np.eye(d) - np.outer(eh[l], eh[l].conj())
        Tp += Wl @ P @ Wl.conj().T / e2[l]
    E = np.exp(1j * p) - 1                                     # coarse gradient (gauge direction of B)
    s_ = 1e8 / max(np.linalg.norm(E)**2, 1e-30)                 # t -> 0: gauge direction of B costs 0
    Ti = np.linalg.inv(Tp + s_ * np.outer(E, E.conj()) if np.linalg.norm(E) > 1e-12 else Tp)
    Ti = (Ti + Ti.conj().T) / 2
    Kgi = np.max(np.linalg.eigvalsh(Ti))
    par = np.max(np.abs(w * e - PD[:, None] * E[None]))         # W_l e_l = prod D * E(p): gauge part is rank one
    assert par < 1e-9 * max(1, np.abs(PD).max())
    return 1 / TF.min(), Kgi, par

def sweep(d, N, ng):
    g = np.linspace(-np.pi, np.pi, ng, endpoint=False) + np.pi / ng
    best = (0, 0, None, None)
    for pt in itertools.product(g, repeat=d):
        p = np.array(pt); kf, kg, _ = K_at(p, N, d)
        best = (max(best[0], kf), max(best[1], kg), p if kf >= best[0] else best[2], p if kg >= best[1] else best[3])
    pc = np.full(d, np.pi); kf, kg, _ = K_at(pc, N, d)
    return best, kf, kg

def realspace_check(N=3, Lu=4, t=1e-4):
    # d = 2 dense: sup_B min{|dA|^2 + t|d*A|^2 : QA = B} vs momentum formula (same t-regularization)
    d = 2; n = N * Lu; sites = list(itertools.product(range(n), repeat=2)); idx = {s: i for i, s in enumerate(sites)}
    nb = 2 * n * n; bond = lambda s, mu: mu * n * n + idx[s]
    curl = np.zeros((n * n, nb)); grad = np.zeros((nb, n * n))
    for s in sites:
        sx = ((s[0] + 1) % n, s[1]); sy = (s[0], (s[1] + 1) % n)
        r = idx[s]                                             # plaquette at s: A0(s)+A1(s+x)-A0(s+y)-A1(s)
        curl[r, bond(s, 0)] += N; curl[r, bond(sx, 1)] += N; curl[r, bond(sy, 0)] -= N; curl[r, bond(s, 1)] -= N
        for mu, t2 in ((0, sx), (1, sy)):
            grad[bond(s, mu), idx[t2]] += N; grad[bond(s, mu), idx[s]] -= N
    eta_d = N**-2
    Kt = eta_d * (curl.T @ curl + t * grad @ grad.T)
    blocks = list(itertools.product(range(Lu), repeat=2)); Q = np.zeros((2 * Lu * Lu, nb))
    for ci, c in enumerate(blocks):
        for mu in range(2):
            for off in itertools.product(range(N), repeat=2):
                for s in range(N):
                    x = [c[0] * N + off[0], c[1] * N + off[1]]; x[mu] = (x[mu] + s) % n
                    Q[mu * Lu * Lu + ci, bond(tuple(x), mu)] += N**-3
    # Q* in the coarse l2 (weight 1) vs fine eta^d: min A*Kt A s.t. QA = B -> B*(Q Kt^+ Q^T)^{-1} B; Kt has constant zero modes
    M = Q @ np.linalg.pinv(Kt, rcond=1e-12) @ Q.T
    # remove p = 0 sector (2 constant coarse fields)
    P = np.eye(len(M)); cst = np.zeros((len(M), 2))
    cst[:Lu * Lu, 0] = 1; cst[Lu * Lu:, 1] = 1; cst /= np.linalg.norm(cst, axis=0)
    P -= cst @ cst.T
    w = np.linalg.eigvalsh(P @ M @ P); w = w[w > 1e-9]
    ps = [np.array(m) * 2 * np.pi / Lu for m in itertools.product(range(Lu), repeat=2) if any(m)]
    def Kt_mom(p):                                             # momentum, same finite t
        ls = np.array(list(itertools.product(range(N), repeat=2))); q = (p + 2 * np.pi * ls) / N
        e = N * (np.exp(1j * q) - 1); e2 = np.sum(np.abs(e)**2, 1); D = Dn(q, N); w_ = np.prod(D, 1)[:, None] * D
        T = np.zeros((2, 2), complex)
        for l in range(len(e2)):
            Kq = e2[l] * np.eye(2) - np.outer(e[l], e[l].conj()) + t * np.outer(e[l], e[l].conj())
            T += np.diag(w_[l]) @ np.linalg.inv(Kq) @ np.diag(w_[l]).conj().T
        return np.max(np.linalg.eigvalsh(np.linalg.inv(T)))
    return 1 / w.min(), max(Kt_mom(p) for p in ps)

if __name__ == "__main__":
    kr, km = realspace_check()
    print(f"real-space check d=2 N=3 Lu=4 t=1e-4: real {kr:.6f}  momentum {km:.6f}", flush=True)
    assert abs(kr - km) < 1e-4 * km
    for d, Ns, ng in ((2, (2, 3, 5, 9, 27), 24), (3, (2, 3, 5), 10), (4, (2, 3), 6)):  # N = L^k is odd in Balaban (L odd); N = 2 shown as a check only
        for N in Ns:
            (kf, kg, pf, pg), kfc, kgc = sweep(d, N, ng)
            print(f"d={d} N={N:3d}  grid max: K_F={kf:9.4f} K_gi={kg:9.4f} | at (pi..pi): K_F={kfc:9.4f} K_gi={kgc:9.4f}"
                  f" | ratio gi/F={kgc / kfc:.4f} | c_-free=1/(1+K_gi)={1 / (1 + max(kg, kgc)):.5f}", flush=True)
    for d, Ns in ((2, (81, 243)), (3, (9, 27)), (4, (5, 9, 13))):
        for N in Ns:
            kfc, kgc, _ = K_at(np.full(d, np.pi), N, d)
            print(f"d={d} N={N:3d}  (pi..pi) only: K_F={kfc:9.4f} K_gi={kgc:9.4f} c_-free={1 / (1 + kgc):.5f}", flush=True)
