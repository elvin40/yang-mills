# (H''): two-step composed minimizer norm ||(+)_l H_2(k_l) H_3(K)|| / L^2 on a coarse sorted grid; need < sqrt(L^2-1) = 2.83.
import sys, os, json, itertools, numpy as np
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from hscan import *
def h2(K):
    H3, _, _ = solve(blocks(K, 3, 6), K); _, kl = Umat(K)
    X = np.concatenate([solve(blocks(k, 2, 6), k)[0] @ H3[4 * l:4 * l + 4] for l, k in enumerate(kl)])
    return np.linalg.norm(X, 2) / L**2, np.linalg.norm(H3, 2) / L
out = os.path.join(os.path.dirname(os.path.abspath(__file__)), "h2step.json")
res = json.load(open(out)) if os.path.exists(out) else {}
g = np.linspace(1e-3, np.pi - 1e-3, 5)
pts = [g[list(c)] for c in itertools.combinations_with_replacement(range(5), 4)] + [np.array([1.9126, 1.9126, np.pi, np.pi])]
for K in pts:
    key = str(np.round(K, 4).tolist())
    if key not in res: res[key] = h2(K); json.dump(res, open(out, "w"))
b = max(res.items(), key=lambda kv: kv[1][0])
print("max 2-step ratio", round(b[1][0], 4), "at", b[0], "| 1-step there", round(b[1][1], 4), "| at H' argmax", np.round(res[str(np.round(pts[-1], 4).tolist())], 4).tolist())
