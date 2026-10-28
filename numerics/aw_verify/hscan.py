# Scan ||H_j(K)||/L over sorted |K| in [0, pi]^4 (hypercubic symmetry), then refine the maximum. Checkpointed per j.
import sys, os, json, time, itertools, numpy as np
from scipy.optimize import minimize
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from hcheck import *
def blocks(K, j, lmax):
    U, kl = Umat(K)
    if j == 1:
        return [0.25 * (np.vdot(khat(k), khat(k)).real * np.eye(4) - np.outer(khat(k), khat(k).conj())) for k in kl]
    M = None if j == "inf" else L**(j - 1)
    return [0.25 * propA(k, M, lmax) for k in kl]
def hn(K, j, lmax=6):
    H, _, _ = solve(blocks(K, j, lmax), K); return np.linalg.norm(H, 2) / L
if __name__ == "__main__":
    j = sys.argv[1]; j = j if j == "inf" else int(j); n = int(sys.argv[2])
    out = os.path.join(os.path.dirname(os.path.abspath(__file__)), f"hscan_j{j}_n{n}.json")
    res = json.load(open(out)) if os.path.exists(out) else {}
    g = np.linspace(1e-3, np.pi - 1e-3, n); t = time.time()
    for c in itertools.combinations_with_replacement(range(n), 4):
        key = str(c)
        if key in res: continue
        res[key] = hn(g[list(c)], j)
        if len(res) % 20 == 0: json.dump(res, open(out, "w"))
    json.dump(res, open(out, "w"))
    best = sorted(res.items(), key=lambda kv: -kv[1])[:3]
    print(f"j={j} grid n={n}: {len(res)} pts, {time.time()-t:.0f}s, max {best[0][1]:.5f} at", [list(np.round(g[list(eval(k))], 3)) for k, _ in best], [round(v, 5) for _, v in best], flush=True)
    K0 = g[list(eval(best[0][0]))]
    r = minimize(lambda K: -hn(np.clip(K, 0, np.pi), j), K0, method="Nelder-Mead", options=dict(maxfev=150, xatol=1e-3, fatol=1e-6))
    Kb = np.clip(r.x, 0, np.pi)
    print(f"j={j} refined max {hn(Kb, j, 6 if j != 'inf' else 12):.5f} at {np.round(Kb, 4)}; corner {hn(np.full(4, np.pi - 1e-6), j, 6 if j != 'inf' else 12):.5f}", flush=True)
