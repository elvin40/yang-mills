# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# Numerical check of FABLE_O3_ALC A3 Steps 2-4: complex symmetric Gaussian, determinant and total-variation ratios,
# and the perturbation lower bound |int F dmu| >= |int dmu| (1 - e^{sum mu^2/4} s_F).
import numpy as np
rng = np.random.default_rng(0)
n = 6
def rand_sym(scale):
    M = rng.normal(size=(n, n)); return scale * (M + M.T) / 2
worst = 0.0
for trial in range(200):
    A = rand_sym(1.0); A = A @ A.T + 0.5 * np.eye(n)          # positive definite
    B = rand_sym(rng.uniform(0.05, 0.6))                        # imaginary part
    D = A + 1j * B
    Ah = np.linalg.inv(np.linalg.cholesky(A))
    mu = np.linalg.eigvalsh(Ah @ B @ Ah.T)
    # (A3.3): |det D|^{-1/2} = det(A)^{-1/2} prod (1+mu^2)^{-1/4}
    lhs = abs(np.linalg.det(D)) ** -0.5
    rhs = np.linalg.det(A) ** -0.5 * np.prod(1 + mu ** 2) ** -0.25
    assert abs(lhs / rhs - 1) < 1e-9, (lhs, rhs)
    assert lhs >= np.linalg.det(A) ** -0.5 * np.exp(-0.25 * np.sum(mu ** 2)) * (1 - 1e-12)
    # bound sum mu^2 <= n ||A^{-1}B||^2
    assert np.sum(mu ** 2) <= n * np.linalg.norm(np.linalg.inv(A) @ B, 2) ** 2 + 1e-12
    # perturbation: Monte Carlo of int F dmu with |F-1| <= s_F pointwise, F = 1 + s_F e^{i phi(x)}
    sF = 0.15
    X = rng.multivariate_normal(np.zeros(n), np.linalg.inv(A), size=200000)   # density prop. to e^{-x A x/2}
    phase = np.exp(-0.5j * np.einsum('ij,jk,ik->i', X, B, X))                   # complex density / real density
    mass = phase.mean()                                                          # int dmu / int |dmu|
    F = 1 + sF * np.exp(1j * (X[:, 0] * 3.0))
    pert = (phase * F).mean()
    ratio_tv = np.prod(1 + mu ** 2) ** 0.25                                       # int|dmu| / |int dmu|
    assert abs(abs(mass) * ratio_tv - 1) < 0.05, (abs(mass) * ratio_tv)
    bound = abs(mass) * (1 - np.exp(0.25 * np.sum(mu ** 2)) * sF)
    worst = max(worst, bound - abs(pert))
    assert abs(pert) >= bound - 0.02 * abs(mass), (abs(pert), bound)
print("OK: (A3.3) identity, Schur bound on sum mu^2, TV ratio, and perturbation lower bound hold; worst slack", round(worst, 4))
