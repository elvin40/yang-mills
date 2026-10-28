"""t2_i3v_bgcheck.py (SOURCES_T2_I3_VERIFY §5). Check that the averaged background Ubar_0 = A(U_0^phi) of
CMP 109 (0.4) is exactly the coarse symmetric-gauge field: Phi_c = (f/2) (c_-' ^ e_mu), c_-' = c_-/L, f = phi L^2.
Uses functions of t2_i3_qflux_check.py (imported). Stdout only."""
import sys, importlib, numpy as np, itertools
for d, L in [(2, 3), (2, 5), (3, 3)]:
    sys.argv = ["x", str(d), str(L)]; sys.modules.pop("t2_i3_qflux_check", None); sys.path.insert(0, ".")
    m = importlib.import_module("t2_i3_qflux_check")
    f = 0.37; phi = f / L**2; dev = 0
    for cc in itertools.product(range(-1, 2), repeat=d):
        for mu in range(d):
            cm = tuple(L * t for t in cc); loops, cpath = m.build_loops(cm, mu)
            Ub0 = m.average(loops, cpath, phi, {}); Phi = m.log_su2(Ub0)[2] / 2   # Ub0 = exp(i Phi s3)
            target = 0.5 * f * m.wedge(np.array(cc, float), m.E(mu))
            dev = max(dev, abs(Phi - target), np.abs(m.log_su2(Ub0)[:2]).max())
    print(f"d={d} L={L} f={f}: max |Phi_c - (f/2)(c'^e_mu)| and off-torus part over 3^d coarse sites x d dirs = {dev:.2e}")
