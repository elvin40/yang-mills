# SOURCES_L1_A check [N]: min eigenvalue of Q_k Q_k^* for Q_k = Q_str^k (dressed k-step average at U=1), d=2, L=3, scaled norms.
import itertools, numpy as np, scipy.sparse as sp
d, L, n = 2, 3, 3
def qstr(N):
    # level map: field on N^2 lattice (2 N^2 bonds) -> field on (N/L)^2 lattice; field normalization
    m = N // L; rows, cols, vals = [], [], []
    bid = lambda mu, p: mu * N * N + (p[0] % N) * N + (p[1] % N)
    for mu in range(d):
        for Y in itertools.product(range(m), repeat=d):
            row = mu * m * m + Y[0] * m + Y[1]
            for o in itertools.product(range(-(L//2), L//2 + 1), repeat=d):
                x = [L * Y[i] + L // 2 + o[i] for i in range(d)]
                for j in range(L):
                    p = list(x); p[mu] += j
                    rows.append(row); cols.append(bid(mu, p)); vals.append(1.0 / L**(d + 1))
    return sp.csr_matrix((vals, (rows, cols)), shape=(d * m * m, d * N * N))
for k in range(1, 4):
    N = n * L**k; Q = sp.identity(d * N * N, format='csr'); Nj = N
    for j in range(k):
        Q = qstr(Nj) @ Q; Nj //= L
    eta = L**(-k)
    M = (Q @ Q.T).toarray() / eta**d  # W_c = 1 (unit lattice), W_f = eta^d
    print('k =', k, ' min eig Q_k Q_k^* =', np.linalg.eigvalsh(M).min(), ' max =', np.linalg.eigvalsh(M).max())
