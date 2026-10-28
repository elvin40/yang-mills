# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
"""SOURCES_T2_MPT_STEPC numerics.
(A) Lemma V1'/C: D_a(t) = tau e^{-tA'_a} - tau e^{-tA'_0} on an open box (any real a, no Bloch),
    Richardson c_A(t) = (16D(a)-D(2a))/(12a^2), d(t) = (D(2a)-4D(a))/(12a^4); expect c_A/t -> 11/(12 pi), |d| <~ t(1+t)^2.
(B) Step C: finite-difference Hessian of the gauge-fixing functional 1/2 sum_x |D^T B(x)|^2 (real SU(2) adjoint),
    charged block -> midpoint gauge -> reduced kernel vs predicted e^{+-i a/8} entries; symbol expansion check.
"""
import numpy as np, scipy.sparse as sp, sys
from scipy.sparse.linalg import expm_multiply

def box_ops(R, a):
    n = 2*R+1; N = n*n
    idx = lambda x0, x1: (x0+R)*n + (x1+R)
    r0, c0, v0, r1, c1 = [], [], [], [], []
    for x0 in range(-R, R+1):
        for x1 in range(-R, R+1):
            if x0+1 <= R: r0.append(idx(x0, x1)); c0.append(idx(x0+1, x1)); v0.append(np.exp(1j*a*x1))
            if x1+1 <= R: r1.append(idx(x0, x1)); c1.append(idx(x0, x1+1))
    T0 = sp.csr_matrix((v0, (r0, c0)), shape=(N, N))
    T1 = sp.csr_matrix((np.ones(len(r1)), (r1, c1)), shape=(N, N))
    return T0, T1, idx(0, 0), N

def Aprime(R, a):  # GAPRIME2 Lemma 1.1, same algebra as t2_gaprime2_check.ops
    T0, T1, c, N = box_ops(R, a); phi = a/2; I = sp.identity(N, format='csr'); Z = sp.csr_matrix((N, N)); e = np.exp(-1j*a)
    d0, d1 = I-T0, I-T1
    cc = sp.hstack([I-e*T1, T0-e*I]); dv = sp.hstack([d0.conj().T, d1.conj().T])
    u = [sp.hstack([I, Z]), sp.hstack([Z, T0]), sp.hstack([-e*T1, Z]), sp.hstack([Z, -e*I])]
    K = sp.csr_matrix((2*N, 2*N), dtype=complex)
    for i in range(4):
        for j in range(i+1, 4):
            M = u[i].conj().T@u[j]; K = K + (M-M.conj().T)/(2j)
    return (np.cos(phi)*cc.conj().T@cc + dv.conj().T@dv - 2*np.sin(phi)*K).tocsr(), c, N

def heat_trace(R, a, ts):
    A, c, N = Aprime(R, a); out = np.zeros(len(ts))
    for comp in (0, 1):
        v = np.zeros(2*N, complex); v[comp*N+c] = 1
        for k, t in enumerate(ts):
            out[k] += (expm_multiply(-t*A, v))[comp*N+c].real
    return out

def partA():
    ts = np.array([0.5, 1, 2, 5, 10, 20, 40, 80]); R = 70; a = 0.005
    H0, H1, H2 = (heat_trace(R, x, ts) for x in (0.0, a, 2*a))
    D1, D2 = H1-H0, H2-H0
    cA = (16*D1-D2)/(12*a*a); d = (D2-4*D1)/(12*a**4)
    print("A: free check t*tau e^{-tA'_0}*2pi (->1):", np.round(ts*H0*2*np.pi, 5))
    print(f"A: target c_inf = 11/(12 pi) = {11/(12*np.pi):.6f}")
    print(" t | c_A(t)/t | t(c_A/t - c_inf) | d(t) | d/(t(1+t)^2)")
    for t, c, dd in zip(ts, cA, d):
        print(f" {t:5.1f} | {c/t:.6f} | {t*(c/t-11/(12*np.pi)):+.4f} | {dd:+.4e} | {dd/(t*(1+t)**2):+.4e}")

def partB(a, P=3, pad=3):
    # real fluctuation B_l in R^3 on links (x,mu), x in box [-P-pad, P+pad]^2; F = 1/2 sum_x |div B(x)|^2,
    # div B(x) = sum_mu [B_mu(x) - Ad(U_{x-e_mu,mu})^{-1} ... ] built as D^T with (D lam)_mu(x) = lam(x) - Ad(U_{x,mu}) lam(x+e_mu)
    phi = a/2; S = P+pad; sites = [(x0, x1) for x0 in range(-S, S+1) for x1 in range(-S, S+1)]
    sid = {s: i for i, s in enumerate(sites)}; links = [(s, mu) for s in sites for mu in (0, 1)]
    lid = {l: i for i, l in enumerate(links)}
    def Ad(x, mu):  # adjoint of e^{i theta sigma3}, theta = -phi x1 on mu=0: b=B1+iB2 -> e^{-2 i theta} b
        th = -phi*x[1] if mu == 0 else 0.0; w = -2*th
        return np.array([[np.cos(w), -np.sin(w), 0], [np.sin(w), np.cos(w), 0], [0, 0, 1]])
    D = np.zeros((3*len(links), 3*len(sites)))
    for (x, mu), l in lid.items():
        D[3*l:3*l+3, 3*sid[x]:3*sid[x]+3] += np.eye(3)
        y = (x[0]+(mu == 0), x[1]+(mu == 1))
        if y in sid: D[3*l:3*l+3, 3*sid[y]:3*sid[y]+3] -= Ad(x, mu)
    F = lambda B: 0.5*np.sum((D.T@B)**2)
    # finite-difference Hessian on the patch links (|x| <= P), charged comps only, central differences
    patch = [(x, mu) for (x, mu) in links if max(abs(x[0]), abs(x[1])) <= P]
    vars_ = [3*lid[l]+k for l in patch for k in (0, 1)]; h = 1e-3; nv = len(vars_); Hs = np.zeros((nv, nv))
    B0 = np.zeros(3*len(links))
    for i in range(nv):
        for j in range(i, nv):
            def f(si, sj):
                B = B0.copy(); B[vars_[i]] += si*h; B[vars_[j]] += sj*h; return F(B)
            Hs[i, j] = Hs[j, i] = (f(1, 1)-f(1, -1)-f(-1, 1)+f(-1, -1))/(4*h*h)
    # complexify: real 2x2 block [[p,q],[r,s]] = U(1)-equivariant iff p=s, r=-q; complex entry p + i r
    G, anti = {}, 0.0
    for I_, l in enumerate(patch):
        for J_, m in enumerate(patch):
            blk = Hs[2*I_:2*I_+2, 2*J_:2*J_+2]
            anti = max(anti, abs(blk[0, 0]-blk[1, 1]), abs(blk[1, 0]+blk[0, 1]))
            G[(l, m)] = blk[0, 0]+1j*blk[1, 0]
    Gam = lambda X, Y: (Y[0]-X[0])*(X[1]+Y[1])/2   # straight-line Landau integral of x1 dx0
    pred = {}
    for mu in (0, 1):
        pred[(mu, mu)] = {(0, 0): 2, (1, 0) if mu == 0 else (0, 1): -1, (-1, 0) if mu == 0 else (0, -1): -1}
    q = np.exp(1j*a/8)
    pred[(0, 1)] = {(-.5, .5): q, (.5, -.5): q, (.5, .5): -1/q, (-.5, -.5): -1/q}
    pred[(1, 0)] = {k: np.conj(v) for k, v in pred[(0, 1)].items()}
    err, used = 0.0, 0
    for ((x, mu), (y, nu)), g in G.items():
        X = (x[0]+.5*(mu == 0), x[1]+.5*(mu == 1)); Y = (y[0]+.5*(nu == 0), y[1]+.5*(nu == 1))
        if max(abs(x[0]), abs(x[1])) > P-2: continue   # interior rows only
        # midpoint gauge: b~_mu(X) = e^{i a Gam(X->x)} b_mu(x); reduced kernel = e^{-i a Gam(X->Y)} G~(X,Y)
        red = np.exp(1j*a*Gam(X, x))*g*np.exp(-1j*a*Gam(Y, y))*np.exp(-1j*a*Gam(X, Y))
        dvec = (round(Y[0]-X[0], 1), round(Y[1]-X[1], 1)); p = pred[(mu, nu)].get(dvec, 0)
        err = max(err, abs(red-p)); used += 1
    return err, anti, used

def symbol_check(a):
    K = np.random.default_rng(0).uniform(-np.pi, np.pi, (2000, 2)); K0, K1 = K.T
    ex = np.exp(1j*a/8)*2*np.cos((K1-K0)/2)-np.exp(-1j*a/8)*2*np.cos((K0+K1)/2)
    s0 = 4*np.sin(K0/2)*np.sin(K1/2); s1 = 0.5j*np.cos(K0/2)*np.cos(K1/2); s2 = -s0/128
    exm = np.exp(1j*a/8)*2*np.cos((-K1+K0)/2)-np.exp(-1j*a/8)*2*np.cos((K0+K1)/2)
    return np.max(np.abs(ex-(s0+a*s1+a*a*s2)))/a**3, np.max(np.abs(ex-exm))

if __name__ == "__main__":
    for a in (0.3, 1.0, 2.0):
        err, anti, used = partB(a)
        r3, ev = symbol_check(a)
        print(f"B: alpha={a}: max|reduced kernel - predicted| = {err:.2e} over {used} entries; U(1) antilinear residue {anti:.1e}; "
              f"|sigma - (a0+a a1+a^2 a2)|/a^3 = {r3:.4f} (bound 2/(6*8^3)*4={4*2/(6*512):.4f}); |sigma(K)-sigma(-K)| = {ev:.1e}")
    sys.stdout.flush()
    partA()
