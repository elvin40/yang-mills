"""Brute-force check of h1cert_cell2 bounds: float rho_1 at random points, 16 vertices, and centre of a cell must be <= ub.
Usage: python sample_check.py L M ub h K1 K2 K3 K4 [nsamp] [seed]"""
import sys, os, itertools
import numpy as np
from multiprocessing import Pool
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), ".."))
from h1cert_rho1 import rho1, prof
L, M, ub, h = int(sys.argv[1]), sys.argv[2], float(sys.argv[3]), float(sys.argv[4])
M = M if M == "inf" else int(M)
c = np.array([float(x) for x in sys.argv[5:9]]); ns = int(sys.argv[9]) if len(sys.argv) > 9 else 2000
rng = np.random.default_rng(int(sys.argv[10]) if len(sys.argv) > 10 else 0)
pts = [c] + [c + h * np.array(s) for s in itertools.product((-1, 1), repeat=4)] + list(c + rng.uniform(-h, h, (ns, 4)))
pf = prof(L)
def f(K): return rho1(L, M, K, pf)
if __name__ == "__main__":
    with Pool(12) as p: v = np.array(p.map(f, pts, chunksize=20))
    print(f"c={c.tolist()} h={h} ub={ub:.6f}: centre {v[0]:.6f}, vertex max {v[1:17].max():.6f}, sample max {v[17:].max():.6f}, "
          f"n={len(v)}, all<=ub {bool((v <= ub).all())}, slack {ub - v.max():.4f}")
    assert (v <= ub).all()
