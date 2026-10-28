# IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# r3s1: (1) 3d lattice Coulomb potential v(0) (Watson integral); (2) dual-photon mass for SU(2) on R^3 x S^1
# from the sine-Gordon form; (3) one-loop running turns exp(-4pi^2/(g^2 N)) into (Lambda L)^{11/6}.
import numpy as np, sympy as sp
# (1) v(0) = int d^3k/(2pi)^3 1/(2 sum_i (1-cos k_i)); use the known 1d integral representation
#     v(0) = int_0^inf dt e^{-3t} I0(t)^3  (Watson)
from scipy.integrate import quad
from scipy.special import ive  # exponentially scaled I_nu
v0, err = quad(lambda t: 0.5*ive(0, t)**3, 0, np.inf)  # 1/(2 sum(1-cos)) = (1/2) int e^{-3t} prod e^{t cos k}
print(f"v(0) 3d sc lattice = {v0:.6f} (expected 0.252731)")
# (2) sine-Gordon: S = int d^3x [ g^2/(32 pi^2 L) (d sigma)^2 - 4 zeta cos sigma ],  N=2, theta=0
#     zeta = c L^-3 S0^2 e^{-S0}, S0 = 4 pi^2/g^2  (4 bosonic zero modes -> S0^2) [I for c]
g, L, c = sp.symbols('g L c', positive=True)
S0 = 4*sp.pi**2/g**2
zeta = c*L**-3*S0**2*sp.exp(-S0)
K = g**2/(32*sp.pi**2*L)          # kinetic coefficient: S ⊃ K (d sigma)^2  => mass^2 = V''/(2K)
m2 = sp.simplify(4*zeta/(2*K))
m = sp.simplify(sp.sqrt(m2))
print("m_sigma^2 =", m2)
print("m_sigma   =", sp.simplify(m))      # expect ∝ L^-1 g^-3 exp(-2 pi^2/g^2)
print("ratio to L^-1 g^-3 e^{-2pi^2/g^2}:", sp.simplify(m/(L**-1*g**-3*sp.exp(-2*sp.pi**2/g**2))))
# (3) one-loop: 8pi^2/(g^2 N) = (11/3) ln(mu/Lambda); mu ~ 1/L  => e^{-4pi^2/(g^2N)} = (Lambda L)^{11/6}
x = sp.symbols('x', positive=True)  # x = Lambda L
print("exp(-4pi^2/(g^2 N)) ->", sp.simplify(sp.exp(-sp.Rational(1,2)*sp.Rational(11,3)*sp.log(1/x))))
print("m_sigma ~ (1/L) (Lambda L)^{11/6} (log)^{3/2} = Lambda (Lambda L)^{5/6} (log)^{3/2}")
# (4) GM Villain monopole self-energy at spacing a=L: beta_3 = L/(g^2 a) = 1/g^2  -> 2 pi^2 v(0)/g^2
print(f"Villain lattice monopole at a=L: 2 pi^2 v(0)/g^2 = {2*np.pi**2*v0:.3f}/g^2  vs  true S0 = {4*np.pi**2:.3f}/g^2")
print(f"spacing a/L at which they agree: v(0)/2 = {v0/2:.4f}")
