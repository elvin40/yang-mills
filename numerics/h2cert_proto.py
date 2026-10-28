# H2_CERTIFY prototype: interval (arb) enclosure of rho_2(inf, K) = ||(+)_l H_inf(k_l) H_inf(K)|| / L^2 at one K, L = 3,
# plus an Oishi-Rump enclosure of ||B_inf(K)^{-1}||. Symbols as exact trig expressions; the (0.4) row is rational (k/648).
# Usage: numerics/.venv/bin/python -I numerics/h2cert_proto.py [lmax] [K1 K2 K3 K4]   (a component "pi" means exact pi)
import sys, os, time, itertools, pickle, numpy as np
from flint import arb, acb, acb_mat, ctx
ctx.prec = 96
D = os.path.dirname(os.path.abspath(__file__))
L, nf, N = 3, 324, 81
P = pickle.load(open(os.path.join(D, "aw_verify", "B0_L3.pkl"), "rb"))
OFFS = P["offs"]
LS = np.array(list(itertools.product((-1, 0, 1), repeat=4)))
PI, I = arb.pi(), acb(0, 1)

ROW = []  # (z, i, c, numerator over 648): exact rational coefficients of the (0.4) row kernel
for z, T in P["B0"].items():
    T = T.tocsr()[nf:, :nf].tocoo()
    for i, c, v in zip(T.row, T.col, T.data):
        k = int(round(v * 648)); assert abs(v * 648 - k) < 1e-9; ROW.append((z, int(i), int(c), k))

def eix(t): return (I * t).exp()
def zero_mat(r, c): return acb_mat(r, c)

def klist(K):  # fine momenta k_l = (K + 2 pi l)/L, as arb 4-vectors
    return [[(K[n] + 2 * PI * int(l[n])) / L for n in range(4)] for l in LS]

def Qu(K, kl):  # 4 x 324 row in the umklapp basis: Brow(K) @ U(K)
    ez = {}
    Br = [[acb(0)] * nf for _ in range(4)]
    for z, i, c, k in ROW:
        if z not in ez: ez[z] = eix(-sum((K[n] * int(z[n]) for n in range(4)), arb(0)))
        Br[i][c] += ez[z] * arb(k) / 648
    e = [[eix(k[n]) for n in range(4)] for k in kl]  # e^{i k_l,n}
    ph = acb_mat([[_prod(e[l], OFFS[p]) / L**2 for l in range(N)] for p in range(N)])
    out = [[None] * nf for _ in range(4)]
    for m in range(4):
        Bm = acb_mat([[Br[i][4 * p + m] for p in range(N)] for i in range(4)]) * ph
        for i in range(4):
            for l in range(N): out[i][4 * l + m] = Bm[i, l]
    return out

def _prod(e, o):
    r = acb(1)
    for n in range(4):
        if o[n] == 1: r *= e[n]
        elif o[n] == -1: r *= e[n].conjugate()
    return r

def tail_enclosure(k, N, s2, q2):
    """Dropped part of d_mu (|l|_inf > N) lies in [Lo_mu, Hi_mu]. Exactly-one-large-component terms use the closed forms
    sum_n 4s^2/q^4 = (1/s^2 - 2/3)/4, sum_n 16s^4/q^6 = (1/s^2 - 1 + 2s^2/15)/4, sum_n sigma^2 = 1 (s = sin(k/2), q = k + 2 pi n),
    minus the box part, and 1/(q^2+R) in [(1 - R/qmin^2)/q^2, 1/q^2]; >= 2 large components: [0, sum_pairs E E / (2 qmin^2)]."""
    qmin2 = (PI * (2 * N + 1))**2
    U2, U4, E, A1, A2, B1, B2 = [], [], [], [], [], [], []
    for n in range(4):
        ss = (k[n] / 2).sin()**2; assert ss > 0  # ponytail: k_n = 0 excluded; near 0 use the series form
        U2.append((1 / ss - arb(2) / 3) / 4 - sum((a / b for a, b in zip(s2[n], q2[n])), arb(0)))
        U4.append((1 / ss - 1 + 2 * ss / 15) / 4 - sum((a * a / b for a, b in zip(s2[n], q2[n])), arb(0)))
        A1.append(sum(s2[n], arb(0))); A2.append(sum((a * a for a in s2[n]), arb(0)))
        B1.append(sum((a * b for a, b in zip(s2[n], q2[n])), arb(0))); B2.append(sum((a * a * b for a, b in zip(s2[n], q2[n])), arb(0)))
        E.append(1 - A1[n])
    T2 = sum((E[a] * E[b] for a in range(4) for b in range(a + 1, 4)), arb(0)) / (2 * qmin2)
    Lo, Hi = [], []
    for mu in range(4):
        lo = hi = arb(0)
        for r0 in range(4):
            oth = [r for r in range(4) if r != r0]
            W = {r: (A2[r] if r == mu else A1[r]) for r in oth}; WR = {r: (B2[r] if r == mu else B1[r]) for r in oth}
            Shi = W[oth[0]] * W[oth[1]] * W[oth[2]]
            SR = sum((WR[r] * W[oth[(i + 1) % 3]] * W[oth[(i + 2) % 3]] for i, r in enumerate(oth)), arb(0))
            Uu = U4[r0] if mu == r0 else U2[r0]
            lo += Uu * (Shi - SR / qmin2); hi += Uu * Shi
        Lo.append(lo); Hi.append(hi + T2)
    return Lo, Hi

def delta_inf(k, lmax, tail):  # Delta_inf(k) by Prop. A + (2.9): Y - Y kh kh^+ Y / (kh^+ Y kh), Y = diag(1/d)
    ns = range(-lmax, lmax + 1)
    s2, q2 = [], []
    for n in range(4):
        sk = (k[n] / 2).sin(); a, b = [], []
        for m in ns:
            q = k[n] + 2 * PI * m
            a.append((k[n] / 2).sinc()**2 if m == 0 else (2 * sk / q)**2); b.append(q * q)
        s2.append(a); q2.append(b)
    d = [arb(0)] * 4
    R = range(len(ns))
    for a in R:
        for b in R:
            pab, qab = s2[0][a] * s2[1][b], q2[0][a] + q2[1][b]
            for c in R:
                pabc, qabc = pab * s2[2][c], qab + q2[2][c]
                for e in R:
                    w = pabc * s2[3][e] / (qabc + q2[3][e])
                    d[0] += w * s2[0][a]; d[1] += w * s2[1][b]; d[2] += w * s2[2][c]; d[3] += w * s2[3][e]
    kh = [eix(x) - 1 for x in k]
    if not tail: return _delta_of_d(d, kh)
    # true d = d_box + Lo + delta, 0 <= delta_mu <= t_mu. dDelta/dd_mu = -(Delta e_mu)(Delta e_mu)^+ (inverse on T'), so
    # Delta(d) in Delta(d_lo) - sum_mu [0, t_mu] (Delta_xi e_mu)(Delta_xi e_mu)^+, Delta_xi = interval eval on the d-box (mean value form)
    Lo, Hi = tail_enclosure(k, lmax, s2, q2)
    dl = [d[n] + Lo[n] for n in range(4)]; t = [arb((Hi[n] - Lo[n]).upper()) * arb(0.5, 0.5) for n in range(4)]
    D0 = _delta_of_d(dl, kh); Dx = _delta_of_d([dl[n] + t[n] for n in range(4)], kh)
    return [[D0[m][n] - sum((t[u] * Dx[m][u] * Dx[n][u].conjugate() for u in range(4)), acb(0)) for n in range(4)] for m in range(4)]

def _delta_of_d(d, kh):  # U3_REPAIRS (2.9): Y - Y kh kh^+ Y / (kh^+ Y kh), Y = diag(1/d)
    yk = [kh[n] / d[n] for n in range(4)]
    den = sum((kh[n].conjugate() * yk[n] for n in range(4)), acb(0))
    return [[(1 / d[m] if m == n else acb(0)) - yk[m] * yk[n].conjugate() / den for n in range(4)] for m in range(4)]

def bordered(K, lmax, tail):  # B(K) as nested lists of acb: [[A, Qu^+], [Qu, 0]], A = ghost + (1/4) Delta blocks
    kl = klist(K)
    kh = [[eix(x) - 1 for x in k] for k in kl]
    v = [kh[l][m] for l in range(N) for m in range(4)]
    B = [[acb(0)] * (nf + 4) for _ in range(nf + 4)]
    for a in range(nf):
        va = v[a] / N
        for b in range(nf): B[a][b] = -va * v[b].conjugate()
    for l in range(N):
        Dl = delta_inf(kl[l], lmax, tail)
        for m in range(4):
            for n in range(4): B[4 * l + m][4 * l + n] += kh[l][m] * kh[l][n].conjugate() + Dl[m][n] / 4
    Q = Qu(K, kl)
    for i in range(4):
        for c in range(nf): B[nf + i][c] = Q[i][c]; B[c][nf + i] = Q[i][c].conjugate()
    return B

def to_np(B): return np.array([[complex(float(x.real.mid()), float(x.imag.mid())) for x in r] for r in B])
def to_acb(X): return acb_mat([[acb(float(z.real), float(z.imag)) for z in r] for r in np.atleast_2d(X)])

def frob_upper(M):  # rigorous upper bound on ||M||_F for an acb_mat
    s = arb(0)
    for i in range(M.nrows()):
        for j in range(M.ncols()): s += M[i, j].abs_upper()**2
    return s.sqrt()

def norm2_upper(M, m=7):  # ||M||_2 <= ||(M^+M)^{2^m}||_F^{1/2^{m+1}}; overestimate <= n^{1/2^{m+2}}
    G = M.conjugate().transpose() * M
    for _ in range(m): G = G * G
    return frob_upper(G).root(2**(m + 1))

def norm1inf_upper(Xnp):  # cheap ||R||_2 <= sqrt(||R||_1 ||R||_inf), float sums inflated by 1e-10 (a priori rounding bound)
    a = np.abs(Xnp); return arb(float(np.sqrt(a.sum(0).max() * a.sum(1).max())) * (1 + 1e-10))

def solve_cert(B, sharp=False):
    """H~ (float), rigorous e >= ||H - H~||_2 for the first nf rows of B^{-1}[0; I], and ||B^{-1}|| <= binv, for every B in the ball.
    Oishi-Rump: ||B^{-1}|| <= ||R|| / (1 - eta), eta >= ||R B - I||; B = Bmid + dB with ||dB|| <= r (block-diagonal radius)."""
    n = len(B)
    Bmid = acb_mat([[x.mid() for x in row] for row in B])
    def crad(x): return (x.real.rad()**2 + x.imag.rad()**2).sqrt()
    rblk = max((sum((crad(B[4 * l + a][4 * l + c])**2 for a in range(4) for c in range(4)), arb(0)).sqrt() for l in range(N)), key=lambda x: float(x.upper()))
    rrest = sum((crad(B[a][c])**2 for a in range(n) for c in range(n) if a >= nf or c >= nf or a // 4 != c // 4), arb(0)).sqrt()
    r = arb((rblk + rrest).upper())
    Bn = to_np(B); R = np.linalg.inv(Bn); E = np.vstack([np.zeros((nf, 4)), np.eye(4)]); Xt = R @ E
    Ra = to_acb(R); Xa = to_acb(Xt)
    nR = norm2_upper(Ra) if sharp else norm1inf_upper(R)
    eta = frob_upper(Ra * Bmid - acb_mat(n, n, [1 if i == j else 0 for i in range(n) for j in range(n)])) + nR * r
    assert eta < 1, eta
    binv = nR / (1 - eta)
    res = frob_upper(Bmid * Xa - to_acb(E)) + r * frob_upper(Xa)
    out = dict(H=Xt[:nf], e=binv * res, binv=binv, eta=eta, r=r)
    if sharp:  # lower bound: ||B^{-1}|| >= ||R v|| / (1 + eta), v = top right singular vector of R
        v = np.linalg.svd(R)[2][0].conj()
        out["binv_lo"] = _vec_norm_lower(Ra * to_acb(v.reshape(-1, 1))) / (1 + eta)
    return out

def _vec_norm_lower(V):
    s = arb(0)
    for i in range(V.nrows()): s += V[i, 0].real**2 + V[i, 0].imag**2
    return arb(s.sqrt().lower())

def gram(Hin_list, Hj):  # G = sum_l Hj_l^+ (Hin_l^+ Hin_l) Hj_l, exact for the float matrices
    G = acb_mat(4, 4)
    for l, Hin in enumerate(Hin_list):
        A = to_acb(Hin); Bl = to_acb(Hj[4 * l:4 * l + 4])
        G += Bl.conjugate().transpose() * (A.conjugate().transpose() * A) * Bl
    return G

def lam_max(G):  # enclosure [lo, hi] of lambda_max of a 4x4 Hermitian interval matrix
    Gm = to_np([[G[i, j] for j in range(4)] for i in range(4)]); w, V = np.linalg.eigh((Gm + Gm.conj().T) / 2)
    v = to_acb(V[:, -1].reshape(-1, 1)); lo = (v.conjugate().transpose() * G * v)[0, 0].real / (v.conjugate().transpose() * v)[0, 0].real
    t = arb(w[-1] * (1 + 1e-9) + 1e-12)
    for _ in range(60):  # Sylvester: t I - G positive definite  =>  lambda_max < t
        S = acb_mat([[(t if i == j else 0) - G[i, j] for j in range(4)] for i in range(4)])
        if all(_minor(S, r).real > 0 for r in range(1, 5)): return arb(lo.lower()), t
        t = t * (1 + 1e-6) + 1e-9
    raise RuntimeError("lambda_max upper bound failed")

def _minor(S, r): return acb_mat([[S[i, j] for j in range(r)] for i in range(r)]).det()

def hn(x): return arb(x.sqrt().upper())

def rho2(K, lmax, tail, log=print):
    t0 = time.time()
    out = solve_cert(bordered(K, lmax, tail), sharp=True)
    Hj, ej = out["H"], out["e"]
    log(f"  outer solve: ||B^-1|| in [{float(out['binv_lo'].lower()):.4f}, {float(out['binv'].upper()):.4f}], eta {float(out['eta'].upper()):.2e}, r {float(out['r'].upper()):.1e}, e_j {float(ej.upper()):.2e}  ({time.time()-t0:.0f}s)")
    Hin, ein, nin, binv_max = [], arb(0), arb(0), arb(0)
    for l, k in enumerate(klist(K)):  # union(...).upper() = rigorous max of upper bounds
        o = solve_cert(bordered(k, lmax, tail))
        Hin.append(o["H"]); ein = arb(ein.union(o["e"]).upper())
        nin = arb(nin.union(hn(lam_max(gram([o["H"]], np.eye(4)))[1])).upper())
        binv_max = arb(binv_max.union(o["binv"]).upper())
    nj = hn(lam_max(gram([Hj], np.eye(4)))[1])
    lo2, hi2 = lam_max(gram(Hin, Hj))
    err = ein * (nj + ej) + nin * ej  # ||X - X~|| <= max e_in (||Hj~|| + e_j) + max ||Hin~|| e_j
    lo = (arb(lo2).sqrt() - err) / L**2; hi = (hi2.sqrt() + err) / L**2
    log(f"  inner: max e_in {float(ein.upper()):.2e}, max ||Hin|| {float(nin.upper()):.4f}, ||Hj|| {float(nj.upper()):.4f}, max ||B_in^-1|| (1-inf bound) {float(binv_max.upper()):.1f}  ({time.time()-t0:.0f}s)")
    return arb(lo.lower()), arb(hi.upper()), out

def float_ref(Kf, lmax):
    sys.path.insert(0, os.path.join(D, "aw_verify")); from hscan import blocks, solve, Umat
    Hj = solve(blocks(Kf, "inf", lmax), Kf)[0]; _, kl = Umat(Kf)
    X = np.concatenate([solve(blocks(k, "inf", lmax), k)[0] @ Hj[4 * l:4 * l + 4] for l, k in enumerate(kl)])
    return np.linalg.norm(X, 2) / L**2

if __name__ == "__main__":
    lmax = int(sys.argv[1]) if len(sys.argv) > 1 else 2
    Ks = sys.argv[2:6] if len(sys.argv) > 5 else ["2.4035", "2.4035", "pi", "pi"]
    K = [PI if s == "pi" else arb(float(s)) for s in Ks]
    Kf = np.array([np.pi if s == "pi" else float(s) for s in Ks])
    t = time.time(); print(f"K = {Ks}, lmax = {lmax}, prec {ctx.prec}", flush=True)
    print(f"float rho_2 (hscan, lmax {lmax}) = {float_ref(Kf, lmax):.6f}  ({time.time()-t:.0f}s)", flush=True)
    for tail in (False, True):
        lo, hi, out = rho2(K, lmax, tail, log=lambda s: print(s, flush=True))
        what = "true rho_2(inf,K) (tail included)" if tail else f"truncated (|l|<={lmax}) rho_2"
        print(f"{what}: [{float(lo):.6f}, {float(hi):.6f}]  width {float(hi - lo):.2e}  ({time.time()-t:.0f}s)", flush=True)
