"""Cell driver for (H1_L): cover the sorted chamber 0 <= K1 <= K2 <= K3 <= K4 <= pi by cubes of half-width h, certify
sup rho_1 < sqrt(L) - slack per cube with h1cert_cell.cell_bound; a failed cube is split into 16 (depth <= dmax).
Cube centres (i + 1/2) 2h with sorted i cover the chamber (rounding is monotone). One JSON file per top cube in
h1cert_out_L{L}_M{M}/ (skip-if-done); shard i of n takes top cubes with index % n == i.
Usage: python h1cert_drive.py L M h N [--shard i n] [--dmax 3] [--limit 0]
"""
import sys, os, json, time, itertools
import numpy as np
from flint import arb
HERE = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, HERE)
from h1cert_cell import cell_bound
from h1cert_rho1 import prof


def certify(L, M, c, h, N, pf, thr, d, dmax):
    try: ub = cell_bound(L, M, [arb(x) for x in c], h, N, pf)
    except Exception: ub = "fail"  # ball blow-up (eta >= 1, singular, non-finite) = not certified at this size
    if ub is None: return [dict(c=list(c), h=h, status="near K=0 (a block momentum ball contains 0)")]
    if ub != "fail" and ub < thr: return [dict(c=list(c), h=h, status="ok", ub=float(ub.upper()))]
    if d >= dmax: return [dict(c=list(c), h=h, status="FAILED", ub=None if ub == "fail" else float(ub.upper()))]
    out = []
    for s in itertools.product((-0.5, 0.5), repeat=4):
        out += certify(L, M, np.array(c) + np.array(s) * h, h / 2, N, pf, thr, d + 1, dmax)
    return out


def main():
    a = sys.argv; L, Ms, h, N = int(a[1]), a[2], float(a[3]), int(a[4])
    M = Ms if (Ms == "inf" or Ms.startswith("M0:")) else int(Ms)
    opt = lambda f, i, dflt: a[a.index(f) + i] if f in a else dflt
    si, sn = int(opt("--shard", 1, 0)), int(opt("--shard", 2, 1)); dmax = int(opt("--dmax", 1, 3)); lim = int(opt("--limit", 1, 0))
    out = os.path.join(HERE, f"h1cert_out_L{L}_M{Ms.replace(':', '')}_h{h}"); os.makedirs(out, exist_ok=True)
    n = int(np.ceil(np.pi / (2 * h))); pf = prof(L); thr = arb(L).sqrt() - arb(1e-6); done = 0
    for idx, ii in enumerate(itertools.combinations_with_replacement(range(n), 4)):
        if idx % sn != si: continue
        f = os.path.join(out, f"{idx}.json")
        if os.path.exists(f): continue
        t = time.time(); res = certify(L, M, (np.array(ii) + 0.5) * 2 * h, h, N, pf, thr, 0, dmax)
        json.dump(dict(top=list(ii), cells=res, secs=time.time() - t), open(f + ".tmp", "w")); os.replace(f + ".tmp", f)
        done += 1
        if lim and done >= lim: break
    print("shard", si, "done", done, flush=True)


if __name__ == "__main__":
    main()
