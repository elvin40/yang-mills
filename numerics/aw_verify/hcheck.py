# Check (i) of U3_AW: max_K ||H_j(K)||/L at L = 3, d = 4, f = 0, real (0.4) row from ym_momentum.
import sys, os, pickle, itertools, numpy as np
D = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, os.path.dirname(D))
from ym_momentum import fourier_batch
L = 3; P = pickle.load(open(os.path.join(D, "B0_L3.pkl"), "rb")); B0 = P["B0"]
offs = P["offs"].astype(float); nf = 4 * L**4
LS = np.array(list(itertools.product((-1, 0, 1), repeat=4))); i0 = int(np.where((LS == 0).all(1))[0][0])
pos = np.arange(nf) // 4; mu = np.arange(nf) % 4

def bord0(K): return fourier_batch(B0, [np.asarray(K, float) / L], L)[0]
def Umat(K):  # code cell basis <- umklapp basis (l, mu)
    kl = (np.asarray(K, float)[None] + 2 * np.pi * LS) / L       # (81,4)
    ph = np.exp(1j * offs @ kl.T) / L**2                           # (81 pos, 81 l)
    U = np.zeros((nf, nf), complex)
    for m in range(4): U[np.ix_(mu == m, np.arange(81) * 4 + m)] = ph
    return U, kl
khat = lambda k: np.exp(1j * np.asarray(k)) - 1
def ghost(kl):  # D Pi D^dag, D = blockdiag(khat_l), Pi = 1 - 11^T/81 (lambda = 0 at the anchor)
    Dm = np.zeros((nf, 81), complex)
    for l in range(81): Dm[4 * l:4 * l + 4, l] = khat(kl[l])
    Pi = np.eye(81) - np.ones((81, 81)) / 81
    return Dm @ Pi @ Dm.conj().T

def propA(K, M, lmax=10):  # Delta_M(K) by U3_REPAIRS Prop. A (left convention), M = None for infinity
    K = np.asarray(K, float)
    if M is None: ls = np.array(list(itertools.product(range(-lmax, lmax + 1), repeat=4)))
    else:
        r = np.arange(M) - (M - 1) // 2; ls = np.array(list(itertools.product(r, repeat=4)))
    q = K[None] + 2 * np.pi * ls
    qt = q if M is None else 2 * M * np.sin(q / (2 * M))
    with np.errstate(divide="ignore", invalid="ignore"):
        sg = np.where(np.abs(qt) < 1e-300, 1.0, np.sin(K / 2)[None] / (qt / 2))
    w = np.prod(sg**2, 1) / np.sum(qt**2, 1)
    d = np.sum(w[:, None] * sg**2, 0)
    kh = khat(K); n = kh / np.linalg.norm(kh)
    E = np.linalg.svd(np.eye(4) - np.outer(n, n.conj()))[0][:, :3]
    return E @ np.linalg.inv(E.conj().T @ (d[:, None] * E)) @ E.conj().T

def solve(Kfine_blocks, K):
    """Bordered matrix with fine block = blockdiag(Kfine_blocks) + ghost, row = real (0.4) Q. Returns H (umklapp basis), Delta_j."""
    U, kl = Umat(K); B = bord0(K); Qu = B[nf:, :nf] @ U
    A = ghost(kl)
    for l in range(81): A[4 * l:4 * l + 4, 4 * l:4 * l + 4] += Kfine_blocks[l]
    Bm = np.block([[A, Qu.conj().T], [Qu, np.zeros((4, 4))]])
    X = np.linalg.solve(Bm, np.vstack([np.zeros((nf, 4)), np.eye(4)]))
    return X[:nf], -X[nf:], Bm
