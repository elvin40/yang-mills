# (iii): level-i averaged link (CMP 98 (42) iterated) vs fine straight-line transport, SU(2), d=2
import numpy as np, sys
from scipy.linalg import expm, logm
L, k, d = 3, 3, 2; n = L**k
sig = [np.array([[0,1],[1,0]]), np.array([[0,-1j],[1j,0]]), np.array([[1,0],[0,-1]])]
def Ad(g): return np.array([[0.5*np.trace(sa @ g @ sb @ g.conj().T).real for sb in sig] for sa in sig])
def opn(M): return np.linalg.norm(M, 2)
def build(eps, seed=0):
    r = np.random.default_rng(seed); X = np.indices((n, n)); U = np.empty((d, n, n, 2, 2), complex)
    modes = [(r.integers(-2, 3, 2), r.uniform(0, 2*np.pi), r.standard_normal(3)) for _ in range(6)]
    for mu in range(d):
        for x in np.ndindex(n, n):
            a = sum(c * np.cos(2*np.pi*(q @ np.array(x))/n + ph + mu) for q, ph, c in modes)
            U[mu][x] = expm(0.5j * eps * sum(ai*s for ai, s in zip(a, sig)))
    return U
def prod(U, y, mu, steps, m):  # straight product of `steps` links from y along mu
    g = np.eye(2); p = list(y)
    for _ in range(steps): g = g @ U[mu][p[0] % m, p[1] % m]; p[mu] += 1
    return g
def axial(U, y, x, m):
    g = np.eye(2); p = list(y)
    for mu in range(d):
        while p[mu] != x[mu]: g = g @ U[mu][p[0] % m, p[1] % m]; p[mu] += 1
    return g
def plaq(U, m):
    return max(opn(U[0][x] @ U[1][(x[0]+1) % m, x[1]] @ U[0][x[0], (x[1]+1) % m].conj().T @ U[1][x].conj().T - np.eye(2)) for x in np.ndindex(m, m))
def avg(U, m):
    M = m // L; V = np.empty((d, M, M, 2, 2), complex)
    for mu in range(d):
        e = np.eye(d, dtype=int)[mu]
        for Y in np.ndindex(M, M):
            y = np.array(Y) * L; Uc = prod(U, y, mu, L, m); Z = np.zeros((2, 2), complex)
            for r in np.ndindex(L, L):
                x = y + np.array(r)
                h = axial(U, y, x, m) @ prod(U, x, mu, L, m) @ axial(U, y + L*e, x + L*e, m).conj().T @ Uc.conj().T
                Z += logm(h) / L**d
            V[mu][Y] = expm(Z) @ Uc
    return V
for eps in map(float, sys.argv[1:]):
    U0 = build(eps); a0 = plaq(U0, n); U = U0; m = n
    for i in range(1, k + 1):
        U = avg(U, m); m //= L; li2 = L**(2*i)
        e = max(opn(Ad(U[mu][Y]) - Ad(prod(U0, np.array(Y)*L**i, mu, L**i, n))) for mu in range(d) for Y in np.ndindex(m, m))
        print(f"eps={eps} a0={a0:.2e} i={i} e_i/(a0 l_i^2)={e/(a0*li2):.3f} plaq_i/(a0 l_i^2)={plaq(U, m)/(a0*li2):.3f}")
