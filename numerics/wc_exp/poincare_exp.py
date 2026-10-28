# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# Free (U=1) check of the exponential-gauge Poincare inequality on a periodic unit lattice.
# P = sum_p |curl B|^2, G = sum_{y,x} |(GB)(y,x)|^2 (avg over staircase contours from block centre y),
# constraint Q_1 B = 0 (CMP 96 (2.125) averaging). Reports min eig of P+G on ker Q, the block-only
# constant, and the axial-gauge constant for comparison.
import itertools, sys
import numpy as np
from scipy.linalg import null_space, eigh

def run(d, L, N):
    n = N * L
    sites = list(itertools.product(range(n), repeat=d))
    bid = {}
    for s in sites:
        for mu in range(d):
            bid[(s, mu)] = len(bid)
    nb = len(bid)
    def e(mu):
        v = [0] * d; v[mu] = 1; return v
    def add(s, v, k=1):
        return tuple((s[i] + k * v[i]) % n for i in range(d))
    # curl
    rows = []
    for s in sites:
        for mu, nu in itertools.combinations(range(d), 2):
            r = np.zeros(nb)
            r[bid[(s, mu)]] += 1; r[bid[(add(s, e(mu)), nu)]] += 1
            r[bid[(add(s, e(nu)), mu)]] -= 1; r[bid[(s, nu)]] -= 1
            rows.append(r)
    Cu = np.array(rows)
    h = (L - 1) // 2
    centres = [tuple(L * np.array(c) + h) for c in itertools.product(range(N), repeat=d)]
    # G: staircase contours from centre y to x, all orders of nonzero directions
    rows = []
    for y in centres:
        for off in itertools.product(range(-h, h + 1), repeat=d):
            if not any(off):
                continue
            dirs = [m for m in range(d) if off[m] != 0]
            perms = list(itertools.permutations(dirs))
            r = np.zeros(nb)
            for perm in perms:
                z = y
                for m in perm:
                    sg = 1 if off[m] > 0 else -1
                    for _ in range(abs(off[m])):
                        if sg > 0:
                            r[bid[(z, m)]] += 1.0 / len(perms); z = add(z, e(m))
                        else:
                            z = add(z, e(m), -1); r[bid[(z, m)]] -= 1.0 / len(perms)
            rows.append(r)
    Gm = np.array(rows)
    # Q_1: for coarse bond c=<y, y+L e_mu>, average over x in B(y) of the length-L line from x
    rows = []
    for y in centres:
        for mu in range(d):
            r = np.zeros(nb)
            for off in itertools.product(range(-h, h + 1), repeat=d):
                x = add(y, off)
                for s_ in range(L):
                    r[bid[(add(x, e(mu), s_), mu)]] += 1.0 / L ** (d + 1)
            rows.append(r)
    Qm = np.array(rows)
    K = null_space(Qm)
    F = Cu.T @ Cu
    Gg = Gm.T @ Gm
    lam_exp = eigh(K.T @ (F + Gg) @ K, eigvals_only=True)[0]
    lam_curl = eigh(K.T @ F @ K, eigvals_only=True)[0]
    # axial: kill tree bonds (centre-based tree: e_d first ... analogous to A3 3.0)
    tree = set()
    # axial tree: per block, bonds on paths y -> x moving coordinate 0 first, then 1, ...
    for y in centres:
        for off in itertools.product(range(-h, h + 1), repeat=d):
            z = y
            for m in range(d):
                sg = 1 if off[m] > 0 else -1
                for _ in range(abs(off[m])):
                    if sg > 0:
                        tree.add(bid[(z, m)]); z = add(z, e(m))
                    else:
                        z = add(z, e(m), -1); tree.add(bid[(z, m)])
    keep = [i for i in range(nb) if i not in tree]
    Ka = null_space(Qm[:, keep])
    lam_ax = eigh(Ka.T @ F[np.ix_(keep, keep)] @ Ka, eigvals_only=True)[0]
    # block-only: single block bonds (interior to block), P_y + G_y
    y = centres[0]
    blk = set(add(y, off) for off in itertools.product(range(-h, h + 1), repeat=d))
    bb = [bid[(s, m)] for s in blk for m in range(d) if add(s, e(m)) in blk]
    pl = [i for i, r in enumerate(Cu) if set(np.nonzero(r)[0]) <= set(bb)]
    gy = [i for i, r in enumerate(Gm) if set(np.nonzero(r)[0]) <= set(bb) and np.any(r)]
    Mb = Cu[np.ix_(pl, bb)].T @ Cu[np.ix_(pl, bb)] + Gm[np.ix_(gy, bb)].T @ Gm[np.ix_(gy, bb)]
    lam_blk = eigh(Mb, eigvals_only=True)[0]
    cG = d * (L - 1) * L ** d / 2
    Kb = 8 * d * L ** d * (1 + 32 * d * cG)
    print(f"d={d} L={L} N={N} bonds={nb}: min(P+G | Q=0)={lam_exp:.5f}  min(P | Q=0, no gauge)={lam_curl:.2e}  "
          f"min(P | Q=0, axial)={lam_ax:.5f}  block min(P_y+G_y)={lam_blk:.5f}  1/K_b={1/Kb:.2e}")

if __name__ == "__main__":
    for d, L, N in [(2, 3, 3), (2, 3, 4), (2, 5, 2), (3, 3, 2)]:
        run(d, L, N)
