# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# Checks (A1)-(A3) of SOURCES_QE_KE_HQ: straight-line Q vs corridor Q, j-step gradient structure, d psi repair.
import numpy as np
d, L = 2, 3
rng = np.random.default_rng(0)

def axial_sum(A, y, x):
    # A(Gamma_{y,x}): axial path y -> x, coordinate 0 first, then 1 (periodic)
    n = A.shape[1]; s = 0.0; p = list(y)
    for mu in range(d):
        while p[mu] != x[mu]:
            s += A[mu][tuple(np.mod(p, n))]; p[mu] += 1
    return s

def QS(A):  # straight lines, weight L^-(d+1)
    n = A.shape[1]; m = n // L; B = np.zeros((d, m, m))
    for mu in range(d):
        line = sum(np.roll(A[mu], -t, axis=mu) for t in range(L))
        B[mu] = line.reshape(m, L, m, L).sum((1, 3)) * L**-(d + 1)
    return B

def lam(A):  # lambda(Y) = L^-d sum_{x in B(Y)} A(Gamma_{LY,x})
    m = A.shape[1] // L; out = np.zeros((m, m))
    for Y in np.ndindex(m, m):
        y = np.array(Y) * L
        out[Y] = sum(axial_sum(A, y, y + np.array(r)) for r in np.ndindex(L, L)) * L**-d
    return out

def QC(A):  # corridor (CMP 95 (1.8)) with axial Gamma
    l = lam(A); B = QS(A).copy()
    for mu in range(d):
        B[mu] += (l - np.roll(l, -1, axis=mu)) / L
    return B

def grad(phi):
    return np.stack([np.roll(phi, -1, axis=mu) - phi for mu in range(d)])

def blockavg(phi, N):
    m = phi.shape[0] // N
    return phi.reshape(m, N, m, N).mean((1, 3))

n = L**2 * 3
A = rng.standard_normal((d, n, n))
# (A1) check QC by direct corridor sum on a few bonds
m = n // L; B = QC(A)
for (mu, Y) in [(0, (1, 2)), (1, (4, 0))]:
    y = np.array(Y) * L; e = np.eye(d, dtype=int)[mu]; s = 0.0
    for r in np.ndindex(L, L):
        x = y + np.array(r)
        s += axial_sum(A, y, x) + sum(A[mu][tuple(np.mod(x + t * e, n))] for t in range(L)) - axial_sum(A, y + L * e, x + L * e)
    print('A1 direct corridor vs QC:', abs(s * L**-(d + 1) - B[mu][Y]))
# (A2) two-step: straight composition = N=L^2 straight; gradient structure
S2 = QS(QS(A)); C2 = QC(QC(A))
N2 = np.zeros_like(S2)
for mu in range(d):
    line = sum(np.roll(A[mu], -t, axis=mu) for t in range(L * L))
    N2[mu] = line.reshape(n // L**2, L**2, n // L**2, L**2).sum((1, 3)) * L**(-2 * (d + 1))
print('A2 straight telescoping |QS QS - Q_{N=L^2}|:', np.abs(S2 - N2).max())
Lt = lam(QC(A)) + blockavg(lam(A), L) / L   # Lambda~_2 = Lambda^(2) Q_C + L^-1 P Lambda^(1)
print('A2 |QS2 - QC2 - L^-1 grad Lambda~_2|:', np.abs(S2 - C2 - grad(Lt) / L).max())
Lt2 = lam(QS(A)) + lam(A)[::L, ::L] / L     # other order: Lambda^(2) Q_S + L^-1 S Lambda^(1)
print('A2 other order:', np.abs(S2 - C2 - grad(Lt2) / L).max())
# (A3) repair: psi with block averages (scale L^2) = -L * Lt; smooth bump
N = L * L; r = (np.arange(N) + 0.5) / N
bump1 = np.sin(np.pi * r)**2; bump1 /= bump1.mean(); bump = np.outer(bump1, bump1)
psi = np.kron(-L * Lt, bump)
print('A3 block avg check:', np.abs(blockavg(psi, N) + L * Lt).max())
print('A3 |QS2(A + d psi) - QC2(A)|:', np.abs(QS(QS(A + grad(psi))) - C2).max())
# (A2) j = 3 by the recursion Lt_{j+1} = L^-1 P Lt_j + Lambda^(j+1) QC_j
A = rng.standard_normal((d, L**3 * 2, L**3 * 2))
QCj, Ltj, QSj = A, np.zeros((A.shape[1] // L,) * 2), A
for j in range(3):
    Ltj = (blockavg(Ltj, L) / L if j else 0) + lam(QCj)
    QCj, QSj = QC(QCj), QS(QSj)
print('A2 j=3 |QS3 - QC3 - L^-1 grad Lt_3|:', np.abs(QSj - QCj - grad(Ltj) / L).max())
