# Row l1 norms (sup->sup operator norms) for Balaban-type block propagator G' = (-Lap + Q'^T a Q' l^(d-2))^-1 at U = 1,
# Q' = block average over side-l blocks. Compares D G' D^T and D R G' D^T (term-4 kernel, two derivatives)
# with D R G' (term-1 kernel, one derivative, scaled by 1/l). Periodic lattice of side N = n_b*l. Usage: python offshell_cz.py d n_b l1 l2 ...
import numpy as np, scipy.sparse as sp, scipy.sparse.linalg as sla, sys, itertools

def build(d, N, l, a=1.0):
    n = N**d
    idx = np.arange(n).reshape((N,)*d)
    I = sp.identity(n, format='csr')
    Ds = [(sp.csr_matrix((np.ones(n), (idx.ravel(), np.roll(idx, -1, axis=m).ravel())), shape=(n, n)) - I).tocsr() for m in range(d)]
    lap = sum(D.T @ D for D in Ds)
    blk = np.zeros((N,)*d, dtype=int)
    nb = N // l
    for m in range(d):
        sh = [1]*d; sh[m] = N
        blk = blk * nb + (np.arange(N) // l).reshape(sh)
    Qp = sp.csr_matrix((np.full(n, float(l)**-d), (blk.ravel(), np.arange(n))), shape=(nb**d, n))
    A = (lap + a * float(l)**(d-2) * (Qp.T @ Qp)).tocsc()
    return Ds, Qp, sla.splu(A), idx

def rows(d, nb, l):
    N = nb*l
    Ds, Qp, lu, idx = build(d, N, l)
    GQt = lu.solve(Qp.T.toarray())                      # G' Q'^T
    M = GQt.T @ GQt                                      # Q' G'^2 Q'^T
    Minv = np.linalg.inv(M)
    R = lambda v: v - GQt @ (Minv @ (GQt.T @ v))        # R = I - G'Q'^T(Q'G'^2Q'^T)^-1 Q'G'
    out = {}
    c = l // 2
    for name, pos in [('center', (c,)*d), ('corner', (0,)*d)]:
        x = idx[pos]
        e = np.zeros(N**d); e[x] = 1.0
        v = Ds[0].T @ e                                  # D_1^T e_x
        g = lu.solve(v); gR = lu.solve(R(v))             # rows of D_1 G' D^T and D_1 R G' D^T  (G', R symmetric)
        dgd = sum(np.abs(D @ g).sum() for D in Ds)
        drgd = sum(np.abs(D @ gR).sum() for D in Ds)
        drg = np.abs(gR).sum() / l           # row l1 of D_1 R G' (one derivative), / l
        out[name] = (dgd, drgd, drg)
    return out

if __name__ == '__main__':
    d, nb = int(sys.argv[1]), int(sys.argv[2])
    for l in map(int, sys.argv[3:]):
        r = rows(d, nb, l)
        print(d, l, ' '.join(f"{k}: DG'D*={v[0]:.4f} DRG'D*={v[1]:.4f} DRG'/l={v[2]:.4f}" for k, v in r.items()), flush=True)
