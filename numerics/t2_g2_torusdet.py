"""SOURCES_T2_G2 §5: size of the zero-mode-removed massless density error at the trivial background.
Scalar lattice Laplacian on the d=4 torus of side M: r(M) := log det' Delta_M - M^4 I_4 - log(M^2).
Expected (Duplantier-David; Chinta-Jorgenson-Karlsson): r(M) -> const. Prints r(M)."""
import numpy as np
from scipy import integrate, special
d = 4
# I_d = int log(sum 4 sin^2(k/2)) dk/(2pi)^d = int_0^inf (e^{-t} - (e^{-2t} I_0(2t))^d) dt/t
f = lambda t: (np.exp(-t) - special.ive(0, 2*t)**d) / t
I4 = integrate.quad(f, 0, 1, limit=200)[0] + integrate.quad(f, 1, np.inf, limit=400)[0]
print(f"I_4 = {I4:.12f}")
for M in [6, 8, 10, 12, 16, 20, 24, 32, 40]:
    s = 4*np.sin(np.pi*np.arange(M)/M)**2
    lam = s[:, None, None, None] + s[None, :, None, None] + s[None, None, :, None] + s[None, None, None, :]
    lam = lam.ravel()[1:]
    r = np.sum(np.log(lam)) - M**4*I4 - np.log(M**2)
    print(f"M={M:3d}  log det' = {np.sum(np.log(lam)):.6f}  r(M) = {r:.8f}")
