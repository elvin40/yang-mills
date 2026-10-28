"""E5 (PLAN.md 2026-10-28, H1CERT2_M1_RESULT.md): DMAX = 3 completion of the 200 FAILED cells of h1cert2 mode L13_M1_h0.08_sorted.
Reads the FAILED records (depth 2) from h1cert2_out_L13_M1_h0.08_sorted/ (read only; the DONE marker and JSONs stay as they are).
Each FAILED cell X gets its 16 children X_k (depth 3, half-width h/2) through h1cert_drive2.run_cell with dmax 3, so a failing child
is FAILED, not split. Output dir h1cert2_out_L13_M1_h0.08_sorted_E5/: X_k.json per child (run_cell format, atomic, skip-if-done)
and X.e5.json per FAILED cell (status ok iff all 16 children ok; max child ub). Restart = rerun: done cells and children are skipped.
Shard i of n takes the sorted FAILED names with index % n == i. DONE_E5 (summary) is written when every cell has its .e5.json.
Usage: python h1cert_e5.py [--shard i n]  |  python h1cert_e5.py --test OUTDIR   (one child of the first FAILED cell, into OUTDIR)
"""
import sys, os, json, itertools
import numpy as np
from flint import arb
HERE = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, HERE)
from h1cert_drive2 import run_cell, rjson, wjson
from h1cert_rho1 import prof

SRC = os.path.join(HERE, "h1cert2_out_L13_M1_h0.08_sorted")
OUT = SRC + "_E5"
SG = list(itertools.product((-1, 1), repeat=4))


def main():
    av = sys.argv
    class A: pass
    a = A(); a.L, a.M, a.N, a.dmax = 13, 1, 3, 3
    a.pf = prof(a.L); a.thr = float((arb(a.L).sqrt() - arb(1e-6)).lower())
    recs = sorted((r for r in (rjson(os.path.join(SRC, f)) for f in os.listdir(SRC) if f.endswith(".json")) if r and r["status"] == "FAILED"),
                  key=lambda r: r["name"])
    if "--test" in av:
        out = av[av.index("--test") + 1]; os.makedirs(out, exist_ok=True); r = recs[0]
        run_cell(out, f"{r['name']}_0", np.array(r["c"]) + np.array(SG[0]) * r["h"] / 2, r["h"] / 2, r["depth"] + 1, a); return
    si, sn = (int(av[av.index("--shard") + 1]), int(av[av.index("--shard") + 2])) if "--shard" in av else (0, 1)
    os.makedirs(OUT, exist_ok=True)
    for i, r in enumerate(recs):
        f = os.path.join(OUT, r["name"] + ".e5.json")
        if i % sn != si or rjson(f): continue
        for k, sg in enumerate(SG):
            run_cell(OUT, f"{r['name']}_{k}", np.array(r["c"]) + np.array(sg) * r["h"] / 2, r["h"] / 2, r["depth"] + 1, a)
        ch = [rjson(os.path.join(OUT, f"{r['name']}_{k}.json")) for k in range(16)]
        st = "ok" if all(c["status"] == "ok" for c in ch) else "FAILED"
        wjson(f, dict(name=r["name"], c=r["c"], h=r["h"], depth=r["depth"], ub_d2=r["ub"], status=st,
                      max_child_ub=max((c["ub"] for c in ch if c["ub"] is not None), default=None),
                      child_status=[c["status"] for c in ch]))
        print(r["name"], st, flush=True)
    print("shard", si, "of", sn, "finished", flush=True)
    res = [rjson(os.path.join(OUT, r["name"] + ".e5.json")) for r in recs]
    if all(res):
        cnt = {}
        for x in res: cnt[x["status"]] = cnt.get(x["status"], 0) + 1
        oks = [u for x in res for u, s in zip([rjson(os.path.join(OUT, f"{x['name']}_{k}.json"))["ub"] for k in range(16)], x["child_status"]) if s == "ok"]
        wjson(os.path.join(OUT, "DONE_E5"), dict(cells=len(res), status_counts=cnt, max_ok_child_ub=max(oks) if oks else None,
                                                 failed=[x["name"] for x in res if x["status"] != "ok"], sqrtL=a.L**0.5))
        print("DONE_E5", cnt, flush=True)


if __name__ == "__main__":
    main()
