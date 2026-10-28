"""SOURCES_T2_G2_VERIFY §8: grid error on the unshifted (periodic-torus) grid vs the shifted grid.
Read-only use of ym_momentum.py. Prints w, ghost, bord; writes no file.
Usage: .venv/bin/python t2_g2verify_unshifted.py L Ng p shift"""
import sys, time
import numpy as np
from ym_momentum import Step, w_of_p
L = int(sys.argv[1]); Ng = int(sys.argv[2]); p = float(sys.argv[3]); sh = float(sys.argv[4])
t = time.time()
step = Step(L, (0, 1, 2), levels=1)
w, g, b = w_of_p(step, p, Ng, kind="trans", shift=sh)
print(f"L={L} Ng={Ng} p={p} shift={sh} w={w:.10f} ghost={g:.10f} bord={b:.10f} secs={time.time()-t:.1f}", flush=True)
