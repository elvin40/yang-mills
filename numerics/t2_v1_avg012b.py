"""t2_v1_avg012b: one averaging scheme per run (to stay under 5 min at L=3), plus a Federbush-iteration check.
Usage: .venv/bin/python t2_v1_avg012b.py L Ng p scheme   (scheme in {04, 012})
       .venv/bin/python t2_v1_avg012b.py L fedcheck
Writes results/t2_v1_avg012b_L{L}_Ng{Ng}_p{p}_s{scheme}.json (new files only)."""
import sys, os, json, time, numpy as np, jax, jax.numpy as jnp
jax.config.update("jax_enable_x64", True)
import ym_momentum as ym
from ym_oneloop import qexp
from t2_v1_avg012 import make_avg012
L = int(sys.argv[1])
if sys.argv[2] == "fedcheck":
    st = ym.Step(L, (0, 1, 2)); rng = np.random.default_rng(1)
    for mu in (0, 1):
        lp = st.loops[mu]; m = lp["m"]
        ja = make_avg012(st.lat1, lp, mu, n_iter=5)[0]; jb = make_avg012(st.lat1, lp, mu, n_iter=12)[0]
        B = rng.normal(size=(m, 3)) * 0.2; U0 = np.asarray(qexp(jnp.asarray(B)))[None]
        print(f"mu={mu}: max|J(n=5)-J(n=12)| = {np.abs(np.asarray(ja(jnp.asarray(U0))) - np.asarray(jb(jnp.asarray(U0)))).max():.3e}", flush=True)
    sys.exit()
Ng = int(sys.argv[2]); p = float(sys.argv[3]); scheme = sys.argv[4]
path = os.path.join("results", f"t2_v1_avg012b_L{L}_Ng{Ng}_p{p}_s{scheme}.json")
if os.path.exists(path): print("exists", json.load(open(path))); sys.exit()
st = ym.Step(L, (0, 1, 2))
if scheme == "012": st.avg_fns = [make_avg012(st.lat1, st.loops[mu], mu) for mu in range(4)]
t = time.time(); w, g, b = ym.w_of_p(st, p, Ng)
r = dict(L=L, Ng=Ng, p=p, scheme=scheme, w=w, ghost=g, bord=b, beta=4 * w / (L**4 * (1 - np.cos(p))), secs=time.time() - t)
json.dump(r, open(path, "w"), indent=1); print(r)
