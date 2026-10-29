# Stage-1 toy for SOURCES_NT_STAGE1.md: 2D lattice scalar, local-coupling source (u - f) in the weight.
# Part A: Gaussian block-spin RG, J-chain telescoping, closure-scale split of the four-source ring.
# Part B: single-scale quartic toy, first-order non-Gaussian four-source coefficient vs the ring.
import numpy as np, itertools, time
t0 = time.time()
import sys
N = int(sys.argv[1]) if len(sys.argv) > 1 else 32   # N x N torus, L = 2
n = int(np.log2(N))
V = N*N
m2 = float(sys.argv[2]) if len(sys.argv) > 2 else 0.01
idx = lambda x, y: (x % N)*N + (y % N)
grads = []                        # forward differences, one row per bond
for x in range(N):
    for y in range(N):
        for e in [(1, 0), (0, 1)]:
            r = np.zeros(V); r[idx(x, y)] -= 1; r[idx(x+e[0], y+e[1])] += 1
            grads.append((idx(x, y), idx(x+e[0], y+e[1]), r))
D = np.array([g[2] for g in grads])
A = D.T @ D + m2*np.eye(V)

def Mf(f):                        # local-density form of the gradient term: sum_b f_b (grad_b)^2
    fb = np.array([(f[a] + f[b])/2 for a, b, _ in grads])
    return D.T @ (fb[:, None]*D)

def bump(cx, cy):                 # normalized 2x2 bump
    f = np.zeros(V)
    for dx in range(2):
        for dy in range(2):
            f[idx(cx+dx, cy+dy)] = 0.25
    return f

d = 8
fs = [bump(4, 4), bump(4+d, 4), bump(4+d, 4+d), bump(4, 4+d)]
Ms = [Mf(f) for f in fs]

def Q(j):                         # average over 2^j x 2^j blocks
    b = 2**j; Nc = N//b
    q = np.zeros((Nc*Nc, V))
    for x in range(N):
        for y in range(N):
            q[(x//b)*Nc + y//b, idx(x, y)] = 1.0/(b*b)
    return q

C = np.linalg.inv(A)
Cle = []                          # C_{<=j}: covariance given level-(j+1) block averages
for j in range(n):
    q = Q(j+1); CQ = C @ q.T
    Cle.append(C - CQ @ np.linalg.solve(q @ CQ, CQ.T))
Cle.append(C)
Gam = [Cle[0]] + [Cle[j] - Cle[j-1] for j in range(1, n+1)]
print("A: min eig of Gamma_j:", ["%.1e" % np.linalg.eigvalsh((G+G.T)/2).min() for G in Gam])
orth = max(np.abs(Gam[i] @ A @ Gam[k] - (i == k)*Gam[i]).max() for i in range(n+1) for k in range(n+1))
print("A: max |Gamma_i A Gamma_k - delta_ik Gamma_i| = %.1e" % orth)

u_top, b = 4.0, 1.0
g2 = [1.0/(u_top + b*(n - j)) for j in range(n+1)]   # g_j^2 increases toward coarse scales
Cg_le = [sum(g2[i]*Gam[i] for i in range(j+1)) for j in range(n+1)]
Cg = Cg_le[-1]

def ring(Cx):
    P = [Cx @ M for M in Ms]
    return sum(np.trace(P[0] @ P[a] @ P[b_] @ P[c]) for a, b_, c in [(1, 2, 3), (1, 3, 2), (2, 1, 3)])

def logdet1m(X):
    s, l = np.linalg.slogdet(np.eye(V) - X); return np.log(s) + l

rng = np.random.default_rng(1)
t = 0.3*(rng.normal(size=4) + 1j*rng.normal(size=4))
Mt = sum(ti*M for ti, M in zip(t, Ms))
full = -0.5*logdet1m(Cg @ Mt)
steps, err_step = [], 0.0
for j in range(n+1):
    Clt = Cg_le[j-1] if j > 0 else np.zeros((V, V))
    Mj = Mt @ np.linalg.inv(np.eye(V) - Clt @ Mt)          # J-chain vertex after scales < j
    sj = -0.5*logdet1m(g2[j]*Gam[j] @ Mj)
    diff = -0.5*logdet1m(Cg_le[j] @ Mt) + (0.5*logdet1m(Clt @ Mt) if j > 0 else 0)
    err_step = max(err_step, abs(sj - diff)); steps.append(sj)
print("A: telescoping |sum_j step_j - full| = %.1e, per-step identity err = %.1e" % (abs(sum(steps) - full), err_step))

R = ring(Cg)
Rj = [ring(Cg_le[0])] + [ring(Cg_le[j]) - ring(Cg_le[j-1]) for j in range(1, n+1)]
print("A: ring (t1t2t3t4 coeff) = %.6e ; sum of closure-scale parts = %.6e" % (R, sum(Rj)))
print("A: closure-scale fractions j=0..%d (lambda_j = 2^j, d = %d):" % (n, d), ["%.4f" % (r/R) for r in Rj])
# single-scale rings (all four propagators at one scale) vs cross-scale share
same = sum(g2[j]**4*ring(Gam[j]) for j in range(n+1))
print("A: share of single-scale rings = %.4f ; cross-scale share = %.4f" % (same/R, 1 - same/R))
fsum = sum(fs)
Ch = np.linalg.cholesky((Cg+Cg.T)/2)
sr = np.abs(np.linalg.eigvals(Ch.T @ Mf(fsum) @ Ch)).max()
print("A: spectral radius of Cg^1/2 M_f Cg^1/2 = %.4f <= g_max^2 |f|_inf = %.4f" % (sr, max(g2)*fsum.max()))

# Part B: weight (1 - g^2 f_t)(1/2 aAa + g^2 lam a^4/4), first order in lam.
def partB(g):
    G2 = g*g
    Sc = {(): C}
    for k in range(1, 5):
        for S in itertools.permutations(range(4), k):
            Sc[S] = G2*Sc[S[:-1]] @ Ms[S[-1]] @ C                # ordered chains
    Dg = {}
    for k in range(5):
        for S in itertools.combinations(range(4), k):
            Dg[S] = sum(np.diag(Sc[p]) for p in itertools.permutations(S)) if k else np.diag(C)
    def coef(T):                  # multilinear coefficient of D_t(x)^2 for index set T
        T = tuple(T); out = 0
        for k in range(len(T)+1):
            for S in itertools.combinations(T, k):
                Sp = tuple(i for i in T if i not in S); out = out + Dg[S]*Dg[Sp]
        return out
    c = coef(range(4)) - G2*sum(fs[i]*coef([k for k in range(4) if k != i]) for i in range(4))
    rem = -(3/4)*G2*c.sum()       # times lam
    cw = coefW(range(4), Dg) - G2*sum(fs[i]*coefW([k for k in range(4) if k != i], Dg) for i in range(4))
    remW = -(3/4)*G2*cw.sum()     # Wick-ordered vertex :a^4: w.r.t. C (tadpole moved into the marginal/mass slot)
    return rem, remW, G2**4*ring(C)
def coefW(T, Dg):                 # multilinear coefficient of (D_t(x) - C(x,x))^2
    T = tuple(T); out = 0
    for k in range(1, len(T)):
        for S in itertools.combinations(T, k):
            Sp = tuple(i for i in T if i not in S); out = out + Dg[S]*Dg[Sp]
    return out
for g in ([0.3, 0.2, 0.1] if (len(sys.argv) < 4 or sys.argv[3] != 'A') else []):
    rem, remW, rg = partB(g)
    print("B: g = %.1f  ring = %.4e  first-order/(lam g^2 ring): plain a^4 = %.3f, Wick-ordered = %.3f" % (g, rg, rem/(rg*g*g), remW/(rg*g*g)))
print("time %.1f s" % (time.time() - t0))
