"""Collect results/*.json, print beta(p) per (L, Ng, sector), extrapolate p -> 0 with beta = b0 + c p^2."""
import json, glob, collections, numpy as np
rows = collections.defaultdict(dict)
for f in glob.glob("results/mom_*.json"):
    r = json.load(open(f))
    if r["kind"] != "trans": continue
    key = (r["L"], r["Ng"], ("u1" if r["colors"] == [2] else "su2") + ("_two" if r.get("levels", 1) == 2 else ""))
    rows[key][r["p"]] = 4 * r["w"] / (r["L"]**(4 * r.get("levels", 1)) * (1 - np.cos(r["p"])))  # corrected normalization
for key in sorted(rows):
    ps = sorted(rows[key]); bs = [rows[key][p] for p in ps]
    line = "  ".join(f"p={p}: {b:.5f}" for p, b in zip(ps, bs))
    ext = ""
    if len(ps) >= 2:
        A = np.stack([np.ones(len(ps)), np.array(ps)**2], 1); c = np.linalg.lstsq(A, bs, rcond=None)[0]
        ext = f"  -> p->0: {c[0]:.5f}"
    print(f"L={key[0]} Ng={key[1]} {key[2]}: {line}{ext}")
