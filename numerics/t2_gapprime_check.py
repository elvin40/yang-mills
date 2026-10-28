"""GAPRIME check (2D, charged sector). Builds A' = cos(phi) C^+C + 2 sin(a/2) Sigma + D D^+ from the
explicit formula of SOURCES_T2_GAPRIME Lemma 1.1 (q = e^{i a}, a = -2 phi, Landau gauge, N x N torus,
Bloch-reduced in x_0), and checks: (1) equality with the finite-difference model of t2_s123_gap2d
(imported read-only); (2) H D = 0; (3) Lemma 4.1 remainder bound on low eigenvectors; (4) scalar gap of
Prop. 3.1; (5) the gap of A' at fluxes not of the form 1/N and at small flux. Prints only, or writes the
JSON path given as argv[1] (must be a new file)."""
import numpy as np, sys, json, time, os
sys.path.insert(0, 'numerics')

def ops(N, phi, k0):
    x1 = np.arange(N)
    T0 = np.diag(np.exp(1j*(k0 + 2*phi*x1)))          # (T_0 psi)(x) = U_0(x) psi(x+e0), U_0 = e^{2 i phi x1}
    T1 = np.roll(np.eye(N), 1, axis=1).astype(complex)  # (T_1 psi)(x1) = psi(x1+1)
    return T0, T1

def build(N, phi, k0):
    T0, T1 = ops(N, phi, k0); I = np.eye(N); H_ = lambda M: M.conj().T
    a = -2*phi; q = np.exp(1j*a)
    assert np.allclose(T0@T1, q*T1@T0)
    C = np.hstack([-(q*T1 - I), T0 - q*I])
    D = np.vstack([-(T0 - I), -(T1 - I)])
    Z = np.block([[-q*T1, T0 - q*I + H_(T1)], [-q*H_(T0)@T1, -q*H_(T0)]])
    Sig = (Z - H_(Z))/(2j)
    Hp = np.cos(phi)*H_(C)@C + 2*np.sin(a/2)*Sig
    L = 4*I - T0 - H_(T0) - T1 - H_(T1)
    return Hp, D, L, a

def spectrum(N, phi, nk=None):
    nk = nk or N; ev = []; hd = 0; evL = []; low = []
    for k0 in 2*np.pi*np.arange(nk)/nk:
        Hp, D, L, a = build(N, phi, k0)
        A = Hp + D@D.conj().T
        hd = max(hd, np.abs(Hp@D).max())
        w, V = np.linalg.eigh(A); ev.append(w); evL.append(np.linalg.eigvalsh(L))
        # Lemma 4.1 remainder on eigenvectors with |w| < 3|a|
        kap = np.sin(a) + 2*np.sin(a/2)
        sy = np.kron(np.array([[0, -1j], [1j, 0]]), np.eye(N))
        LL = np.kron(np.eye(2), L)
        R = A - LL - kap*sy
        for j in np.where(np.abs(w) < 3*abs(a))[0]:
            Psi = V[:, j]; Lexp = np.real(Psi.conj()@LL@Psi)
            low.append((np.linalg.norm(R@Psi), 5*a*a + 8*abs(a)*np.sqrt(max(Lexp, 0)), Lexp/abs(a)))
    return np.sort(np.concatenate(ev)), np.sort(np.concatenate(evL)), hd, low, a

out = {}; t = time.time()
# (1) comparison with the S123 finite-difference model
import t2_s123_gap2d as g
N = 12; phi_, M, idx = g.build(N, 1); ch = [i for i in range(N*6) if i % 3 != 2]
ref = []
for k0 in 2*np.pi*np.arange(N)/N:
    A, D = M(k0); ref.append(np.linalg.eigvalsh((A + D@D.conj().T)[np.ix_(ch, ch)]))
ref = np.sort(np.concatenate(ref))
mine = np.sort(np.repeat(spectrum(N, 2*np.pi/N)[0], 2))  # real colours 1,2 = charge +2 and -2 copies
out['compare_S123_N12'] = float(np.abs(ref - mine).max()); print('max |spec difference| vs S123 model (N=12):', out['compare_S123_N12'])
# (2)-(5)
rows = []
for (N, m) in [(48, 1), (97, 2), (97, 5), (101, 3), (200, 1), (400, 1)]:
    phi = 2*np.pi*m/N
    ev, evL, hd, low, a = spectrum(N, phi)
    A_ = abs(a)
    neg = ev[ev < 0]; pos = ev[ev > 0]
    Lgap = evL[(evL > 1.5*A_) & (evL < 2.5*A_)]
    r = dict(N=N, m=m, phi=phi, abs_alpha=A_, HD=hd,
             A_neg_edge=float(neg.max()/A_), A_pos_edge=float(pos.min()/A_), A_inf=float(ev[0]/A_),
             L_inf=float(evL[0]/A_), L_band1_top=float(evL[evL < 2*A_].max()/A_),
             L_next=float(evL[evL > 2*A_].min()/A_), L_pts_in_1p5_2p5=int(len(Lgap)),
             lemma41_max_ratio=float(max(x[0]/x[1] for x in low)), lemma41_max_res_over_alpha=float(max(x[0] for x in low)/A_),
             lowvec_max_L_over_alpha=float(max(x[2] for x in low)))
    rows.append(r); print(r, flush=True)
out['rows'] = rows; print('time %.1f s' % (time.time() - t))
if len(sys.argv) > 1:
    assert not os.path.exists(sys.argv[1]); json.dump(out, open(sys.argv[1], 'w'), indent=1)
