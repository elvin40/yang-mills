# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
"""Compare bb.py and bb_arb.py box values on random boxes (sanity of the port)."""
import sys, numpy as np
from fractions import Fraction as Fr
import bb, bb_arb
rng = np.random.default_rng(0); gb, ga = bb.Gbox(13), bb_arb.Gbox(13); mx = []
for _ in range(30):
    n = 64; a = np.sort(rng.integers(0, n, 4)); w = rng.integers(1, 4)
    lo = [Fr(int(x), n) for x in a]; hi = [Fr(int(min(x + w, n)), n) for x in a]
    flo, fhi = np.array([float(x)*np.pi for x in lo]), np.array([float(x)*np.pi for x in hi])
    F1, F2 = bb.Fcs_box(flo, fhi), bb_arb.Fcs_box(lo, hi); G1, G2 = gb.bound(flo, fhi, F1)[0], ga.bound(lo, hi, F2)[0]
    mx.append((F2/F1 - 1, G2/G1 - 1))
mx = np.array(mx); print("rel diff F: min %.2e max %.2e ; G: min %.2e max %.2e" % (mx[:,0].min(), mx[:,0].max(), mx[:,1].min(), mx[:,1].max()))
