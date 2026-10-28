"""MJ_REST verify (f): neutral block at extra sizes; zero-mode count, zero-mode = constant 1-forms, gap, ch-neu leak.
Gap tolerance is absolute (1e-7): the builder Hessian is finite-difference, abs error ~5e-8."""
import numpy as np, json, sys
sys.path.insert(0, 'numerics'); import t2_s123_gap2d as g
res = []
for N, m in [(36, 3), (20, 3), (64, 2)]:
    phi, M, idx = g.build(N, m); ne = [i for i in range(N*6) if i % 3 == 2]; ch = [i for i in range(N*6) if i % 3 != 2]
    ev, leak, zres = [], 0.0, None
    for k0 in 2*np.pi*np.arange(N)/N:
        A, D = M(k0); K = A + D @ D.conj().T
        leak = max(leak, np.abs(K[np.ix_(ch, ne)]).max())
        w, U = np.linalg.eigh(K[np.ix_(ne, ne)]); ev.append(w)
        if k0 == 0:  # zero modes must span the two constant 1-forms (b_0 = const, b_1 = const)
            Z = U[:, np.abs(w) < 1e-6]; c = np.zeros((2*N, 2)); c[0::2, 0] = 1; c[1::2, 1] = 1; c /= np.sqrt(N)
            zres = float(np.linalg.norm(Z - c @ (c.T @ Z)))
    ev = np.sort(np.concatenate(ev)); fp = ev[ev > 1e-6].min(); gp = np.cos(phi)*4*np.sin(np.pi/N)**2
    r = dict(N=N, m=m, phi=float(phi), n_zero=int((np.abs(ev) < 1e-6).sum()), zero_mode_resid=zres,
             first_pos=float(fp), gap_pred=float(gp), gap_rel_err=float(abs(fp - gp)/gp), leak=float(leak))
    res.append(r); print(r, flush=True)
assert all(r['n_zero'] == 2 and abs(r['first_pos'] - r['gap_pred']) < 1e-7 and r['zero_mode_resid'] < 1e-6 and r['leak'] < 1e-10 for r in res)
json.dump(res, open('numerics/t2_mjrest_verify_neutral.json', 'w'), indent=1)
