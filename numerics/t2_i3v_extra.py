"""t2_i3v_extra.py (SOURCES_T2_I3_VERIFY §7). Independent extra checks of SOURCES_T2_I3.
Reuses the functions of t2_i3_qflux_check.py (imported; no file of it is written).
(a) FD linearization of CMP 109 (0.4) vs closed form (5.1) for other coarse-bond directions mu and L = 5 (d = 2).
(b) max |A(loop)| / L^2 over the loop family, all mu (bound claimed: 8).
(c) support size per coarse bond vs bound 8L^d + L.
Writes nothing to disk except stdout."""
import sys, importlib, numpy as np, time
def load(d, L):
    sys.argv = ["x", str(d), str(L)]
    if "t2_i3_qflux_check" in sys.modules: del sys.modules["t2_i3_qflux_check"]
    sys.path.insert(0, "."); return importlib.import_module("t2_i3_qflux_check")
t0 = time.time()
for (d, L, mus, nsub) in [(2, 3, [1], 99), (2, 5, [0, 1], 60), (4, 3, [1, 2], 12), (3, 3, [0, 1, 2], 30)]:
    m = load(d, L)
    for mu in mus:
        cm = (0,) * d; loops, cpath = m.build_loops(cm, mu); bonds = m.support(loops, cpath)
        A = [abs(m.closed_form.__code__ and sum(sg * m.theta(s if sg > 0 else tuple(np.array(s) - m.E(k).astype(int)), k, 1.0) for (s, k, sg) in lp)) for (_, lp) in loops]
        rng = np.random.default_rng(2); sub = bonds if len(bonds) <= nsub else [bonds[i] for i in sorted(rng.choice(len(bonds), nsub, replace=False))]
        err = 0
        for f in (0.05, -0.1, 0.3):
            phi = f / L**2; J, _, _ = m.fd_row(cm, mu, phi, sub); cf = m.closed_form(loops, cpath, phi, mu, cm)
            for bd in sub:
                z, an, mx, n33 = m.charged(J[bd]); err = max(err, abs(z - cf.get(bd, 0)))
        print(f"d={d} L={L} mu={mu}: loops={len(loops)} support={len(bonds)} (bound 8L^d+L={8*L**d+L}) "
              f"max|A|/L^2={max(A)/L**2:.3f} (claim <= 8)  max|FD-(5.1)| over {len(sub)} bonds, f in (0.05,-0.1,0.3): {err:.2e}")
print(f"time {time.time()-t0:.1f}s")
