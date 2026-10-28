# d=2 seam test: SU(2) flat links U_1 = exp(i theta sigma3 / n) (Polyakov angle theta), plaquettes = 1.
# Dressed field F(b) = chi*E(b) Ad(axial path y->b) X, axial rule in the fundamental domain centred at y.
# Model kernel E = exp(-delta*dist) (block units). Energy = eta^d sum |D_nu F|^2, D_nu covariant difference.
import numpy as np, sys
def rot(a):  # Ad of exp(i a sigma3/2)-type rotation about axis 3 on su(2)=R^3
    c, s = np.cos(a), np.sin(a); return np.array([[c, -s, 0], [s, c, 0], [0, 0, 1]])
def energy(NT, N, theta, delta, D=None):
    n = NT * N; eta = 1.0 / N
    x = np.arange(n); dx = (x + n // 2) % n - n // 2              # representative in (-n/2, n/2]
    r1 = np.abs(dx) * eta; dist = r1[:, None] + r1[None, :]         # l1 torus distance, block units
    E = np.exp(-delta * dist)
    if D is not None: E *= np.clip(2 - 2 * dist / D, 0, 1)        # chi(d/D): 1 on [0,1/2], linear to 0 at 1
    ang = 2 * theta * dx / n                                       # Ad angle of axial transport (only dir-1 links rotate)
    X = np.array([1.0, 0, 0])
    F = E[:, :, None] * (np.stack([rot(a) @ X for a in ang])[:, None, :])
    # D_1: Ad(U_link)^{-1} F(b+e1) - F(b); link angle 2theta/n
    F1 = np.einsum('ij,abj->abi', rot(-2 * theta / n), np.roll(F, -1, axis=0)) - F
    F2 = np.roll(F, -1, axis=1) - F                                # dir-2 links trivial
    tot = eta**2 * (np.sum(F1**2) + np.sum(F2**2)) / eta**2
    seam = eta**2 * np.sum(F1[n // 2 - 1 + (n % 2)]**2) / eta**2  # the bond row crossing the seam
    return tot, seam
for th in (0.0, 1.0):
    for N in (3, 9, 27, 81, 243):
        t, s = energy(6, N, th, 1.0); tc, sc = energy(6, N, th, 1.0, D=2.5)
        print(f"theta={th} N={N:4d}  E_tot={t:12.6e} seam={s:10.3e} | chi(D=2.5): E_tot={tc:10.6e} seam={sc:9.2e}")
