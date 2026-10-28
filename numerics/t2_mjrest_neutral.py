"""MJ_REST: neutral (colour-3) block of K = 4 Hess + D D^+ on the 2D N x N torus at flux phi = 2 pi m / N
per plaquette (builder: t2_s123_gap2d.build, read-only import). Prediction per momentum (k0, k1):
{ l, cos(phi) l }, l = 4 sin^2(k0/2) + 4 sin^2(k1/2): longitudinal part weight 1 (Feynman term), transverse
(curl) part weight cos(phi) (U3_LEMMA51 Prop. 2.2(b)). Zero modes: 2 (constant 1-forms) at every phi."""
import numpy as np, json, sys
sys.path.insert(0, 'numerics'); import t2_s123_gap2d as g
res = []
for N, m in [(12, 0), (12, 1), (24, 1), (24, 2), (48, 1)]:
    phi, M, idx = g.build(N, m); ne = [i for i in range(N*6) if i % 3 == 2]
    ev, pred = [], []
    for k0 in 2*np.pi*np.arange(N)/N:
        A, D = M(k0); K = (A + D @ D.conj().T)[np.ix_(ne, ne)]
        ev.append(np.linalg.eigvalsh(K))
        l = 4*np.sin(k0/2)**2 + 4*np.sin(np.pi*np.arange(N)/N)**2
        pred.append(np.concatenate([l, np.cos(phi)*l]))
    ev = np.sort(np.concatenate(ev)); pred = np.sort(np.concatenate(pred))
    gap_pred = np.cos(phi)*4*np.sin(np.pi/N)**2
    r = dict(N=N, m=m, phi=phi, max_err=np.abs(ev - pred).max(), n_zero=int((np.abs(ev) < 1e-6).sum()),
             min_ev=ev[0], first_pos=ev[ev > 1e-6].min(), gap_pred=gap_pred,
             gap_rel_err=abs(ev[ev > 1e-6].min() - gap_pred)/gap_pred)
    r = {k: (float(v) if not isinstance(v, int) else v) for k, v in r.items()}; res.append(r); print(r, flush=True)
assert all(r['max_err'] < 1e-6 and r['n_zero'] == 2 for r in res)
json.dump(res, open('numerics/t2_mjrest_neutral.json', 'w'), indent=1)
