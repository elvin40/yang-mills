# Per-K check of the jax port (beta1_box/t2_fstepb_verify_umk_gpu.terms_jax) against umk_beta1.Umk.terms at the box grids.
# Usage: python beta1chk_port.py L Ng Lp [nK]
import sys, time, numpy as np
sys.path.insert(0, "beta1_box")
import umk_beta1, t2_fstepb_verify_umk_gpu as gp
L, Ng, Lp = int(sys.argv[1]), int(sys.argv[2]), float(sys.argv[3]); nK = int(sys.argv[4]) if len(sys.argv) > 4 else 3
u = umk_beta1.Umk(L, Lp / L)
K, W = umk_beta1.kgrid(L, Ng); idx = np.random.default_rng(0).choice(len(K), nK, replace=False)
t = time.time(); gn, bn = u.terms(K[idx]); tn = time.time() - t
gp.terms_jax(u, K[idx[:1]])  # compile
t = time.time(); gj, bj = gp.terms_jax(u, K[idx]); tj = time.time() - t
print("K idx", idx); print("ghost numpy", gn, "jax", gj); print("bord  numpy", bn, "jax", bj)
print(f"max rel diff ghost {np.max(np.abs(gn - gj) / np.abs(gn)):.2e} bord {np.max(np.abs(bn - bj) / np.abs(bn)):.2e}")
print(f"time per (K,l) block: numpy {tn / nK / L**4 * 1e6:.1f} us, jax {tj / nK / L**4 * 1e6:.1f} us")
