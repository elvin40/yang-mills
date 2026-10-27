"""Exact check: on a periodic 4L lattice the momentum-space second derivative (unshifted grid, Ng=4)
must equal the finite-difference second derivative of the real-space log Z. Also pure gauge -> 0."""
import sys, time, numpy as np, jax.numpy as jnp
from ym_oneloop import Lat, qexp, one_step, IDQ
from ym_momentum import Step, w_of_p, E3
L = int(sys.argv[1]) if len(sys.argv) > 1 else 2
step = Step(L)
lat = step.lat; n = lat.n
p = 2 * np.pi / n
t = time.time()
w, g, b = w_of_p(step, p, lat.nc, kind="trans", shift=0.0)
print(f"momentum: w={w:.10f} ghost={g:.10f} bord={b:.10f}  ({time.time()-t:.1f}s)", flush=True)
wg, _, _ = w_of_p(step, p, lat.nc, kind="gauge", shift=0.0)
print(f"pure gauge: w={wg:.3e}", flush=True)
A = step.plane_wave(p, 1, "cos")
d = 1e-3
lz = {}
for a in (-d, 0.0, d):
    U0 = np.asarray(qexp(a * jnp.asarray(A)[:, None] * E3))
    lz[a] = one_step(lat, U0, verbose=False)["logZ"]
fd = (lz[d] - 2 * lz[0.0] + lz[-d]) / d**2 / lat.ncs
print(f"real-space FD per cell: {fd:.10f}   momentum: {w:.10f}   diff {fd-w:.2e}")
