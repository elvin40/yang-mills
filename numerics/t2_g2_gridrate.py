"""SOURCES_T2_G2 §7: grid-convergence rate of the momentum-space one-loop formula.
Read-only use of ym_momentum.py (Step, w_of_p). Prints w, ghost, bord; writes no file.
Usage: .venv/bin/python t2_g2_gridrate.py L Ng p"""
import sys, time
import numpy as np
from ym_momentum import Step, w_of_p
L = int(sys.argv[1]); Ng = int(sys.argv[2]); p = float(sys.argv[3])
t = time.time()
step = Step(L, (0, 1, 2), levels=1)
w, g, b = w_of_p(step, p, Ng, kind="trans", shift=0.5)
beta = 4 * w / (L**4 * (1 - np.cos(p)))
print(f"L={L} Ng={Ng} p={p} w={w:.10f} ghost={g:.10f} bord={b:.10f} beta={beta:.8f} secs={time.time()-t:.1f}", flush=True)
