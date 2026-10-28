# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
"""Self-checks: quaternion conventions vs 2x2 matrices; stationarity; gauge invariance; F -> -F; averaging at U=1."""
import numpy as np, jax.numpy as jnp, scipy.sparse as sp
from ym_oneloop import *

rng = np.random.default_rng(0)
sig = [np.array([[0, 1], [1, 0]], complex), np.array([[0, -1j], [1j, 0]]), np.array([[1, 0], [0, -1]], complex)]
def mat(q): return q[0] * np.eye(2) + 1j * sum(q[1 + a] * sig[a] for a in range(3))
def expm_iB(B):
    from scipy.linalg import expm
    return expm(1j * sum(B[a] * sig[a] / 2 for a in range(3)))
for _ in range(5):
    a, b = rng.normal(size=4), rng.normal(size=4); a /= np.linalg.norm(a); b /= np.linalg.norm(b)
    assert np.allclose(mat(np.asarray(qmul(a, b))), mat(a) @ mat(b))
    B = rng.normal(size=3)
    assert np.allclose(mat(np.asarray(qexp(B))), expm_iB(B))
    assert np.allclose(np.asarray(qlog(qexp(B * 0.3))), B * 0.3)
    assert np.allclose(np.asarray(qlog(qexp(B * 1e-4))), B * 1e-4)
    lam = rng.normal(size=3); R = rot(a)
    lhs = mat(a) @ sum(lam[c] * sig[c] for c in range(3)) @ mat(a).conj().T
    rhs = sum((R @ lam)[c] * sig[c] for c in range(3))
    assert np.allclose(lhs, rhs)
print("quaternion conventions OK")

lat = Lat(6, 3)
U0, F = background(lat, 1)
# all plaquettes in plane (0,1) equal exp(i F sigma3), others identity
pl = plaq_links(lat)
P = np.asarray(qmul(qmul(jnp.asarray(U0[pl[:, 0]]), jnp.asarray(U0[pl[:, 1]])), qmul(qinv(jnp.asarray(U0[pl[:, 2]])), qinv(jnp.asarray(U0[pl[:, 3]])))))
assert np.allclose(P[:lat.nsites], [np.cos(F), 0, 0, np.sin(F)]) and np.allclose(P[lat.nsites:], IDQ)
Delta, grad = hessian_matrix(lat, U0)
assert np.abs(grad).max() < 1e-12, grad
assert abs(Delta - Delta.T).max() < 1e-12
print("background + stationarity OK")

# averaging at U=1: Qt B = linear average; Qt kills gauge directions with lambda(anchors)=0; V = 1
Qt, V = averaging(lat, np.tile(IDQ, (lat.nlinks, 1)))
assert np.allclose(V, IDQ)
D = gauge_gradient(lat, np.tile(IDQ, (lat.nlinks, 1)))
assert abs(Qt @ D).max() < 1e-12
# constant B in direction mu=0, colour 1 -> coarse link in direction 0 shifts by L*B
B = np.zeros((lat.nlinks, 3)); B[0::4, 0] = 0.01
QB = (Qt @ B.ravel()).reshape(lat.ncs * 4, 3)
assert np.allclose(QB[0::4, 0], 0.03) and np.allclose(QB[1::4], 0) and np.allclose(QB[0::4, 1:], 0)
print("averaging at U=1 OK")

# gauge covariance of Qt and Delta at nontrivial background
Qt1, V1 = averaging(lat, U0)
D1 = gauge_gradient(lat, U0)
assert abs(Qt1 @ D1).max() < 1e-10, abs(Qt1 @ D1).max()
assert abs(Delta @ D1).max() < 1e-10, abs(Delta @ D1).max()
print("gauge directions annihilated OK")

r0 = one_step(lat, U0, check_eig=True)
g = rng.normal(size=(lat.nsites, 4)); g /= np.linalg.norm(g, axis=1, keepdims=True)
r1 = one_step(lat, gauge_transform(lat, U0, g), check_eig=False)
print("gauge invariance: dlogZ =", r1["logZ"] - r0["logZ"], " dA =", r1["A_coarse"] - r0["A_coarse"])
U0m, _ = background(lat, -1)
r2 = one_step(lat, U0m, check_eig=False)
print("F -> -F: dlogZ =", r2["logZ"] - r0["logZ"], " dA =", r2["A_coarse"] - r0["A_coarse"])
U0p, _ = background(lat, 1, plane=(2, 3))
r3 = one_step(lat, U0p, check_eig=False)
print("plane (2,3) vs (0,1): dlogZ =", r3["logZ"] - r0["logZ"], " dA =", r3["A_coarse"] - r0["A_coarse"])
