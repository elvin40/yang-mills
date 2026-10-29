# Lowest eigenvalue of Delta_U + a Q*Q (adjoint SU(2), i.e. SO(3) on links) on a d-torus,
# U = random gauge transform of (twisted constant background) * small noise; Q = block average
# with parallel transport along axial contours inside each block. Reports (n*eta)^2 * lambda_min.
import sys, itertools, numpy as np, scipy.sparse as sp, scipy.sparse.linalg as sla
from scipy.spatial.transform import Rotation as Rot

def so3(v):  # rotation exp(v.T) as 3x3
    return Rot.from_rotvec(v).as_matrix()

def build(N, n, d, U, a):
    sites = list(itertools.product(range(N), repeat=d)); idx = {s: i for i, s in enumerate(sites)}
    V = len(sites); dim = 3 * V
    rows, cols, vals = [], [], []
    def add(i, j, M):
        for r in range(3):
            for c in range(3):
                if M[r, c] != 0: rows.append(3*i+r); cols.append(3*j+c); vals.append(M[r, c])
    I3 = np.eye(3)
    for s in sites:  # D*D = sum_b |R(U_b) l(x+e) - l(x)|^2
        i = idx[s]
        for mu in range(d):
            t = list(s); t[mu] = (t[mu]+1) % N; j = idx[tuple(t)]; R = U[mu][s]
            add(i, i, I3); add(j, j, I3); add(i, j, -R); add(j, i, -R.T)
    Lap = sp.csr_matrix((vals, (rows, cols)), shape=(dim, dim))
    # Q: block corner y, axial contour y -> x (direction 0 first, then 1, ...)
    blocks = list(itertools.product(range(0, N, n), repeat=d)); Qr, Qc, Qv = [], [], []
    for bi, y in enumerate(blocks):
        for off in itertools.product(range(n), repeat=d):
            T = np.eye(3); cur = list(y)
            for mu in range(d):
                for _ in range(off[mu]):
                    T = T @ U[mu][tuple(cur)]; cur[mu] = (cur[mu]+1) % N
            j = idx[tuple(cur)]
            for r in range(3):
                for c in range(3):
                    Qr.append(3*bi+r); Qc.append(3*j+c); Qv.append(T[r, c] / n**d)
    Q = sp.csr_matrix((Qv, (Qr, Qc)), shape=(3*len(blocks), dim))
    return Lap, (a / n**2) * n**d * (Q.T @ Q)

def background(N, d, hol, noise, rng):
    sites = list(itertools.product(range(N), repeat=d))
    U = [{} for _ in range(d)]
    g = {s: so3(rng.normal(size=3) * 3) for s in sites}  # random gauge transform: holonomy unchanged
    for mu in range(d):
        C = so3(hol[mu] / N)  # constant link; holonomy C^N = so3(hol[mu]); flux O(|hol|^2/N^2)
        for s in sites:
            t = list(s); t[mu] = (t[mu]+1) % N
            Ub = C @ so3(noise * rng.normal(size=3))
            U[mu][s] = g[s] @ Ub @ g[tuple(t)].T
    return U

def lmin(M):
    if M.shape[0] <= 4000:
        return np.linalg.eigvalsh(M.toarray())[0]
    return sla.eigsh(M, k=1, sigma=-1e-3, which='LM')[0][0]

def maxplaq(U, N, d):
    m = 0
    for s in itertools.product(range(N), repeat=d):
        for mu in range(d):
            for nu in range(mu+1, d):
                t = list(s); t[mu] = (t[mu]+1) % N; t2 = list(s); t2[nu] = (t2[nu]+1) % N
                P = U[mu][s] @ U[nu][tuple(t)] @ U[mu][tuple(t2)].T @ U[nu][s].T
                m = max(m, np.linalg.norm(P - np.eye(3), 2))
    return m

if __name__ == '__main__':
    rng = np.random.default_rng(0); a = 1.0
    for (d, N, n, noise) in [(2, 24, 3, 0.0), (2, 24, 4, 0.02), (2, 48, 4, 0.0), (4, 6, 3, 0.0), (4, 6, 2, 0.02)]:
        out = []
        for trial in range(int(sys.argv[1]) if len(sys.argv) > 1 else 12):
            hol = rng.normal(size=(d, 3)); hol *= rng.uniform(0, np.pi) / np.linalg.norm(hol, axis=1, keepdims=True)
            if trial == 0: hol[:] = 0
            if trial == 1: hol[:] = 0; hol[:, 2] = np.pi  # abelian, maximal twist in every direction
            if trial == 2: hol[:] = 0; hol[:, 2] = 2*np.pi/N  # smallest nonzero commuting twist
            U = background(N, d, hol, noise, rng); Lap, QQ = build(N, n, d, U, a)
            out.append((n**2 * lmin(Lap), n**2 * lmin(Lap + QQ), maxplaq(U, N, d)))
        o = np.array(out)
        print(f"d={d} N={N} n={n} noise={noise}: n^2*lmin(Delta_U) in [{o[:,0].min():.4f},{o[:,0].max():.4f}]; "
              f"n^2*lmin(Delta_U+aQ*Q) in [{o[:,1].min():.4f},{o[:,1].max():.4f}]; max|U(dp)-1|={o[:,2].max():.3f}; "
              f"trivial-hol row: {o[0,0]:.2e}, {o[0,1]:.4f}; pi-twist row: {o[1,0]:.4f}, {o[1,1]:.4f}", flush=True)
