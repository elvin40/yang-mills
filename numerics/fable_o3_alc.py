# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# Checks for FABLE_O3_ALC B1 tools and the Schwarz mechanism of B4 on random matrices.
import numpy as np
from scipy.linalg import expm, logm
rng = np.random.default_rng(1)
N = 2
def herm(s):
    M = rng.normal(size=(N, N)) + 1j * rng.normal(size=(N, N)); return s * (M + M.conj().T) / 2
def kappa(g): return max(np.log(np.linalg.norm(g, 2)), np.log(np.linalg.norm(np.linalg.inv(g), 2)))
for _ in range(300):
    Z = herm(0.3) + 1j * herm(0.1); Za = (Z - Z.conj().T) / 2j
    g = expm(1j * Z)
    assert kappa(g) <= np.linalg.norm(Za, 2) + 1e-10                    # (T2)
    v = expm(herm(0.5) + 1j * herm(0.5)); X = np.eye(N) + 0.4 * (herm(1) + 1j * herm(1)) / 4
    assert np.linalg.norm(logm(v @ X @ np.linalg.inv(v)) - v @ logm(X) @ np.linalg.inv(v)) < 1e-8   # (T3)
    h = expm(1j * (herm(0.3) + 1j * herm(0.2))); Y = herm(1.0)
    assert np.linalg.norm(h @ Y @ np.linalg.inv(h), 2) <= np.exp(2 * kappa(h)) * np.linalg.norm(Y, 2) + 1e-10  # (T1)
# Schwarz mechanism: Y(t) = (1/i) log prod_k exp(i(X_k + t B_k)), X_k Hermitian, B_k complex; kappa(exp(iY(1))) <= sup_{|t|=R}|Y(t)-Y(0)|/R
worst = 0
for _ in range(100):
    m = 6; Xs = [herm(0.05) for _ in range(m)]; Bs = [herm(0.01) + 1j * herm(0.01) for _ in range(m)]
    def Y(t):
        P = np.eye(N, dtype=complex)
        for X, B in zip(Xs, Bs): P = P @ expm(1j * (X + t * B))
        return logm(P) / 1j
    R = 8.0
    sup = max(np.linalg.norm(Y(R * np.exp(1j * th)) - Y(0), 2) for th in np.linspace(0, 2 * np.pi, 48))
    k1 = kappa(expm(1j * Y(1)))
    assert k1 <= sup / R + 1e-9, (k1, sup / R)
    worst = max(worst, k1 / (sup / R))
print("OK: (T1)-(T3) hold on 300 samples; Schwarz bound kappa <= sup/R holds, worst ratio", round(worst, 3))
