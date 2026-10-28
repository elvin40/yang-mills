"""Checkpointed cell driver for (H1_L) with the G1 certifier h1cert_cell2.cell_bound2 (../H2_CERTIFY_L13_G1.md).
Domain: --domain box = [0, pi]^4 (16 sign flips K_mu -> -K_mu, premise P5a) or sorted = 0 <= K1 <= .. <= K4 <= pi (also the 24
axis permutations, premise P5b). Top cells: half-width h, centres (i + 1/2) 2h per axis (sorted: i1 <= .. <= i4; rounding is
monotone so the sorted cells cover the chamber). A cell certifies if its bound < sqrt(L) - 1e-6. A failed cell is split into 16
children of half-width h/2 (depth <= dmax); a cell whose block-momentum ball touches 0 is recorded as near0 (G3) and not split.
Checkpoint: one JSON per cell, written atomically (tmp in the same directory + os.replace). Top cell t{idx}.json, child k of a
cell X is X_{k}.json. Restart: a cell is done iff its JSON exists on disk and parses; a 'split' JSON makes the driver descend into
its children (each skip-if-done). Shard i of n takes the top cells with idx % n == i (deterministic). DONE_<mode> is written when
a scan finds every top cell resolved (terminal status at every leaf).
Usage: python h1cert_drive2.py L M h N [--shard i n] [--dmax 3] [--domain box|sorted] [--diag k] [--out DIR]
  --diag k: pilot, only the top cells on the face diagonal (a, a, c, c), c = last centre, every other a-bin from the top (k cells).
"""
import sys, os, json, time, itertools
import numpy as np
from flint import arb
HERE = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, HERE)
from h1cert_cell2 import cell_bound2
from h1cert_rho1 import prof


def wjson(f, obj):
    tmp = f + f".tmp{os.getpid()}"
    with open(tmp, "w") as fh: json.dump(obj, fh); fh.flush(); os.fsync(fh.fileno())
    os.replace(tmp, f)


def rjson(f):
    try:
        with open(f) as fh: return json.load(fh)
    except (FileNotFoundError, json.JSONDecodeError): return None


def top_cells(h, domain, diag):
    n = int(np.ceil(np.pi / (2 * h)))
    if diag:
        return [(i, i, n - 1, n - 1) for i in range(n - 1, -1, -2)][:diag]
    it = itertools.combinations_with_replacement(range(n), 4) if domain == "sorted" else itertools.product(range(n), repeat=4)
    return list(it)


def run_cell(out, name, c, h, d, a):
    """Certify cell `name` (centre c, half-width h, depth d); returns True if every leaf below it is terminal."""
    f = os.path.join(out, name + ".json"); rec = rjson(f)
    if rec is None:
        t = time.time()
        try:
            ub = cell_bound2(a.L, a.M, [arb(x) for x in c], h, a.N, a.pf)
            st = "near0" if ub is None else ("ok" if ub < a.thr else "fail")
        except Exception as ex: ub, st = None, f"fail ({type(ex).__name__}: {ex})"
        err = st if st.startswith("fail (") else None
        if st.startswith("fail"): st = "split" if d < a.dmax else "FAILED"
        rec = dict(name=name, c=list(map(float, c)), h=h, depth=d, status=st, ub=ub, err=err, secs=round(time.time() - t, 2))
        wjson(f, rec)
        print(f"{name} c={np.round(c, 4).tolist()} h={h} {st} ub={ub} {rec['secs']}s", flush=True)
    if rec["status"] != "split": return True
    return all(run_cell(out, f"{name}_{k}", np.array(c) + np.array(sg) * h / 2, h / 2, d + 1, a)
               for k, sg in enumerate(itertools.product((-1, 1), repeat=4)))


def resolved(out, name):
    rec = rjson(os.path.join(out, name + ".json"))
    if rec is None: return False
    return rec["status"] != "split" or all(resolved(out, f"{name}_{k}") for k in range(16))


def main():
    av = sys.argv; opt = lambda f, i, dflt: av[av.index(f) + i] if f in av else dflt
    class A: pass
    a = A(); a.L, Ms, h, a.N = int(av[1]), av[2], float(av[3]), int(av[4])
    a.M = Ms if (Ms == "inf" or Ms.startswith("M0:")) else int(Ms)
    si, sn = int(opt("--shard", 1, 0)), int(opt("--shard", 2, 1)); a.dmax = int(opt("--dmax", 1, 3))
    domain, diag = opt("--domain", 1, "box"), int(opt("--diag", 1, 0))
    mode = f"L{a.L}_M{Ms.replace(':', '')}_h{h}_{domain}" + (f"_diag{diag}" if diag else "")
    out = opt("--out", 1, os.path.join(HERE, f"h1cert2_out_{mode}")); os.makedirs(out, exist_ok=True)
    a.pf = prof(a.L); a.thr = float((arb(a.L).sqrt() - arb(1e-6)).lower())
    tops = top_cells(h, domain, diag)
    for idx, ii in enumerate(tops):
        if idx % sn == si: run_cell(out, f"t{idx}", (np.array(ii) + 0.5) * 2 * h, h, 0, a)
    print("shard", si, "of", sn, "finished", flush=True)
    if all(resolved(out, f"t{idx}") for idx in range(len(tops))):
        recs = [rjson(os.path.join(out, f)) for f in os.listdir(out) if f.endswith(".json")]
        st = {}
        for r in recs: st[r["status"].split(" ")[0]] = st.get(r["status"].split(" ")[0], 0) + 1
        ubs = [r["ub"] for r in recs if r["status"] == "ok"]
        wjson(os.path.join(out, f"DONE_{mode}"), dict(top_cells=len(tops), files=len(recs), status_counts=st,
                                                      max_ok_ub=max(ubs) if ubs else None, sqrtL=a.L**0.5))
        print("DONE", st, flush=True)


if __name__ == "__main__":
    main()
