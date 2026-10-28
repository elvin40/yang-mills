# Villain monopole self-energy pitfall (R3S1_GAP §4.2(c)).
# G(0) of the 3d lattice Laplacian (unit spacing): G(0) = int_BZ d^3k/(2pi)^3 1/(2 sum_i (1 - cos k_i)) = W_s/6.
# Three checks: Bessel integral, Watson's Gamma-function closed form, finite-torus sum with zero mode removed.
import numpy as np
from scipy.integrate import quad
from scipy.special import ive, gamma

G_bessel = quad(lambda t: 0.5*ive(0, t)**3, 0, np.inf, limit=500)[0]
Ws = np.sqrt(6)/(32*np.pi**3)*gamma(1/24)*gamma(5/24)*gamma(7/24)*gamma(11/24)   # Watson 1939, sc lattice
print(f"G(0) Bessel  = {G_bessel:.9f}")
print(f"G(0) Watson  = W_s/6 = {Ws/6:.9f}   (W_s = {Ws:.9f})")
for M in (32, 64, 128, 256):
    k = 2*np.pi*np.arange(M)/M; s = 2*(1 - np.cos(k))
    lam = s[:, None, None] + s[None, :, None] + s[None, None, :]; lam[0, 0, 0] = np.inf
    GM = (1/lam).sum()/M**3
    print(f"torus M={M:4d}: G_M(0) = {GM:.7f}   G(0) - G_M = {Ws/6 - GM:.3e}, diff*M = {(Ws/6-GM)*M:.4f}")
G0 = Ws/6

# Villain normalization for SU(N) at 3d spacing b (R3S1 Theorem R has b = L).
# Cartan angles theta in R^N (sum 0), U = diag(e^{i theta_j}); Wilson (2/g^2) Re tr(1 - U_p) ~ (1/g^2)|theta_p|^2 per 4d plaquette.
# 4d spacing a = L/N4, reduced over N4 slices, then 3d spacing b: (beta/2)|theta_p|^2 with beta = 2 L/(g^2 b)  (beta*b fixed).
# Allowed Villain integers: coroot lattice (theta periodic under 2 pi * coroots); minimal charge = root, |alpha|^2 = 2.
# Coulomb-gas self-energy of charge alpha: 2 pi^2 beta |alpha|^2 G_b(0) * b = 2 pi^2 beta |alpha|^2 G(0)  (lattice units).
def S_villain(b_over_L):  # in units of 1/g^2, any N
    beta = 2/b_over_L
    return 2*np.pi**2*beta*2*G0

def S_phys(N): return 8*np.pi**2/N   # monopole-instanton action S_0, units of 1/g^2

print("\nR3S1 value (beta = 1/g^2, |alpha|^2 = 1):  2 pi^2 G(0) = %.4f /g^2" % (2*np.pi**2*G0))
print("correct Villain at spacing L (beta = 2/g^2 in |theta|^2 normalization = 4/g^2 in theta_1 for SU(2)):")
print("N  S_V(b=L)  S_0      S_0/S_V   gap exponent S_V/2 vs S_0/2   R3S1-claimed ratio")
for N in (2, 3, 4, 5):
    sv, s0 = S_villain(1.0), S_phys(N)
    print(f"{N}  {sv:7.4f}  {s0:7.4f}  {s0/sv:7.4f}   {sv/2:7.4f} vs {s0/2:7.4f}       {s0/(2*np.pi**2*G0):.3f}")
print(f"spacing b/L where S_V = S_0 (SU(2)): {S_villain(1.0)/S_phys(2):.4f}  (= 2 G(0); R3S1 states G(0)/2 = {G0/2:.4f})")
print("\nVillain at the 4d unit spacing b = a = L/N4 (no blocking), SU(2): S_V/S_0 = 2 G(0) N4")
for N4 in (1, 2, 4, 8, 16, 32):
    print(f"N4={N4:3d}: S_V = {S_villain(1/N4):9.3f}/g^2   S_V/S_0 = {S_villain(1/N4)/S_phys(2):.3f}")

# GM consistency: dual sine-Gordon at spacing L, unit-charge Villain with beta: m^2 L^2 = 8 pi^2 beta z_tot, z_tot = fugacity per cell, both signs counted once
# R3S1 dual-photon result: m_sigma^2 L^2 = 64 pi^2 zeta L^3/g^2 with 4 species (BPS, KK, and antis): z_tot per sign = 2 zeta L^3
for beta_name, beta in (("R3S1 beta=1/g^2", 1.0), ("theta_1 beta=4/g^2", 4.0)):
    print(f"{beta_name}: 8 pi^2 beta (2 zeta L^3) = {8*np.pi**2*beta*2/np.pi**2:.1f} pi^2 zeta L^3/g^2   (R3S1 dual photon: 64 pi^2)")
