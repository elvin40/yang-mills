"""t2_v1_avgjac: compare the linearized averaging Q~(U0) of CMP 109 (0.4) and (0.12) at given backgrounds (L=2, one coarse bond).
Backgrounds: abelian (sigma_3) random phases of size s; non-abelian random of size s. Prints max |J04 - J12| and |J04|."""
import sys, numpy as np, jax, jax.numpy as jnp
jax.config.update("jax_enable_x64", True)
import ym_momentum as ym
from ym_oneloop import qexp
from t2_v1_avg012 import make_avg012
L = int(sys.argv[1]) if len(sys.argv) > 1 else 2
st = ym.Step(L, (0, 1, 2))
rng = np.random.default_rng(0)
for mu in (0, 1):
    lp = st.loops[mu]; m = lp["m"]
    j04 = st.avg_fns[mu][0]; j12 = make_avg012(st.lat1, lp, mu)[0]
    for kind in ("abelian", "nonabelian"):
        for s in (0.05, 0.1, 0.2):
            B = rng.normal(size=(m, 3)) * s
            if kind == "abelian": B[:, :2] = 0.0
            U0 = np.asarray(qexp(jnp.asarray(B)))[None]
            a = np.asarray(j04(jnp.asarray(U0))); b = np.asarray(j12(jnp.asarray(U0)))
            print(f"mu={mu} {kind:10s} s={s}: max|J04-J12| = {np.abs(a-b).max():.3e}   max|J04| = {np.abs(a).max():.3e}", flush=True)
