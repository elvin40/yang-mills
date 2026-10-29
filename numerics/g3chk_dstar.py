# G3 check: closure-bond metric d_* on random nested-layer configurations (CMP 96 (2.2) geometry, M=1).
# Reports max d_* over (i) touching block pairs, (ii) pairs meeting the G3 premise of (c').
import sys, random, itertools
from collections import deque
import numpy as np
PER = {}

def run(d, L, levels, seed, cells_top=3):
    rng = random.Random(seed)
    R = 2 * d * L + 1                       # minimal R with RM > 2dL at M = 1
    ell = [L**r for r in range(levels)]
    top = levels - 1
    pad = sum(R * ell[j] + 2 * ell[j + 1] for j in range(levels - 1)) + 2 * L
    N = ((cells_top * ell[top] + 2 * pad) // ell[top] + 1) * ell[top]
    lay = np.zeros((N,) * d, dtype=np.int8)
    # top region: random union of level-top cells in a central window
    off = (N // ell[top] // 2 - cells_top // 2) * ell[top]
    picks = [c for c in itertools.product(range(cells_top), repeat=d) if rng.random() < 0.6] or [(0,) * d]
    cur = np.zeros_like(lay, dtype=bool)
    for c in picks:
        sl = tuple(slice(off + ci * ell[top], off + (ci + 1) * ell[top]) for ci in c)
        cur[sl] = True
    lay[cur] = top
    # each lower Omega_j: level-j cells within l1 distance R*ell[j]+slack of Omega_{j+1}, plus random extra cells
    for j in range(top - 1, 0, -1):
        idx = np.argwhere(cur)
        new = cur.copy()
        n = N // ell[j]
        for c in itertools.product(range(n), repeat=d):
            lo = np.array(c) * ell[j]
            # l1 distance from the cell's sites to cur
            box = np.clip(idx, lo, lo + ell[j] - 1)
            dist = np.abs(idx - box).sum(1).min()
            if dist <= R * ell[j] + d * ell[j] or (dist <= R * ell[j] + 3 * ell[j] and rng.random() < 0.5):
                sl = tuple(slice(x, x + ell[j]) for x in lo)
                new[sl] = True
        lay[new & ~cur] = j
        cur = new
    # check (2.2): l1 dist(Omega_j^c, Omega_{j+1}) > R*ell[j]
    for j in range(1, top):
        A = np.argwhere(lay >= j + 1); B = np.argwhere(lay < j)
        mind = min(np.abs(B - a).sum(1).min() for a in A[:: max(1, len(A) // 400)])
        assert mind > R * ell[j], (j, mind)
    def inK(r, a, mu):  # segment [a, a+ell_r e_mu] inside a closed layer-r cell
        for eps in itertools.product((0, 1), repeat=d):
            if eps[mu]: continue
            c = tuple(a[i] - ell[r] * eps[i] for i in range(d))
            if all(0 <= x < N for x in c) and lay[c] == r:
                return True
        return False
    def nbrs(p):
        for r in range(levels):
            if any(x % ell[r] for x in p): continue
            for mu in range(d):
                for s in (1, -1):
                    q = list(p); q[mu] += s * ell[r]
                    if not 0 <= q[mu] <= N - 1: continue
                    q = tuple(q)
                    a = p if s == 1 else q
                    if inK(r, a, mu): yield q
    def block(p):
        r = int(lay[p]); return tuple(x - x % ell[r] for x in p), r
    # interface blocks: blocks whose sites are within 2*ell of another layer
    blocks = {}
    for p in map(tuple, np.argwhere(np.ones_like(lay, dtype=bool))):
        b, r = block(p)
        blocks[b] = r
    def near_iface(b, r):
        lo = [max(0, x - 2 * L * ell[r]) for x in b]; hi = [min(N, x + 3 * L * ell[r]) for x in b]
        sub = lay[tuple(slice(l, h) for l, h in zip(lo, hi))]
        return sub.min() != sub.max()
    srcs = [(b, r) for b, r in blocks.items() if near_iface(b, r)]
    worst_t = (0, None); worst_p = (0, None)
    for b1, r1 in srcs:
        l1 = ell[r1]
        rad = -(-(l1 // (2 * L) + 1) // 1)  # strict: dist < l1/(2L) + 1  -> dist <= ceil(l1/(2L)+1)-1
        rad = int(np.ceil(l1 / (2 * L) + 1)) - 1
        lo = [max(0, x - rad) for x in b1]; hi = [min(N, x + l1 - 1 + rad + 1) for x in b1]
        prem = set(block(tuple(p))[0] for p in itertools.product(*[range(l, h) for l, h in zip(lo, hi)]))
        lo2 = [max(0, x - 1) for x in b1]; hi2 = [min(N, x + l1 + 1) for x in b1]
        touch = set()
        for p in itertools.product(*[range(l, h) for l, h in zip(lo2, hi2)]):
            b2, r2 = block(p)
            if all(b2[i] <= b1[i] + l1 and b1[i] <= b2[i] + ell[r2] for i in range(d)): touch.add(b2)
        targets = (prem | touch) - {b1}
        dist = {b1: 0}; dq = deque([b1]); left = set(targets)
        while dq and left:
            u = dq.popleft()
            left.discard(u)
            if dist[u] >= 30: continue
            for v in nbrs(u):
                if v not in dist:
                    dist[v] = dist[u] + 1; dq.append(v)
        for b2 in targets:
            dv = dist.get(b2, 99)
            if b2 in touch and dv > worst_t[0]: worst_t = (dv, (b1, r1, b2, blocks[b2]))
            if b2 in prem and dv > worst_p[0]: worst_p = (dv, (b1, r1, b2, blocks[b2]))
            if b2 in prem:
                k = tuple(sorted((r1, blocks[b2]))); PER[k] = max(PER.get(k, 0), dv)
    return worst_t, worst_p, len(srcs)

if __name__ == "__main__":
    d, L, levels, nseed = map(int, sys.argv[1:5])
    bound = 2 * d + (d - 1) * (L // 2)
    gw_t = gw_p = (0, None)
    for s in range(nseed):
        wt, wp, ns = run(d, L, levels, s)
        if wt[0] > gw_t[0]: gw_t = wt
        if wp[0] > gw_p[0]: gw_p = wp
    print(f"d={d} L={L} levels={levels} seeds={nseed}: max d_* touching={gw_t[0]} {gw_t[1]}; premise={gw_p[0]} {gw_p[1]}; "
          f"per layer pair={dict(sorted(PER.items()))}; bound 2d+(d-1)floor(L/2)={bound}, d(L+5)/2={d*(L+5)/2}")
