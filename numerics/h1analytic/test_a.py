# IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
"""Task A: Lemma S+G, (I1)+tower, (1.1) vs production rho1, L = 13, 10 random K, j in {1, 2, inf}."""
import sys, time, numpy as np
sys.path.insert(0, "~/claude_code/yang_mills/numerics"); sys.path.insert(0, "~/claude_code/yang_mills/numerics/h1analytic")
import h2_scan as h2
from h1cert_rho1 import prof, pieces, rho1, Mof
from verify_ab import E0_g, dsum, rho_split
L = int(sys.argv[1]) if len(sys.argv) > 1 else 13; pf = prof(L); rng = np.random.default_rng(77)
Ks = [rng.uniform(-np.pi, np.pi, 4) for _ in range(10)]; t0 = time.time()
lv = np.indices((L,)*4).reshape(4, -1).T
for i, K in enumerate(Ks):
    E = h2.qsym(pf, K[None]/L, L)[0]; k, al, e0, gb = E0_g(K, L); Kh = np.exp(1j*K)-1
    errS = np.abs(E - (np.einsum('lm,mn->lmn', e0, np.eye(4)) - Kh[None, :, None]*gb[:, None, :])).max()/np.abs(E).max()
    out = [f"K{i} lemmaS+G {errS:.1e}"]
    for j in (1, 2, "inf"):
        if j == 1: d = 1/np.repeat(((abs(np.exp(1j*k)-1))**2).sum(1)[:, None], 4, 1); dc = dsum(K, L)
        elif j == 2:
            if i >= 3: continue                                    # cost: L^8 terms; 3 K only
            d = np.array([dsum(kk, L) for kk in k]); dc = dsum(K, L*L)
        else:
            R = 1; d = np.array([dsum(kk, None, R) for kk in k]); dc = dsum(K, None, n=np.arange(-L*R, L*R+L))
        r2, T, PK = rho_split(L, K, E, d)
        errI1 = np.abs(PK@T@PK - PK@np.diag(dc)@PK).max()/np.abs(PK@np.diag(dc)@PK).max()
        _, dprod, *_ = pieces(L, Mof(L, j), K, pf); r2p, _, _ = rho_split(L, K, E, dprod)
        rp = rho1(L, Mof(L, j), K, pf)**2
        out.append(f"j={j}: I1 {errI1:.1e} | (1.1) vs rho1 {abs(r2p-rp)/rp:.1e} | rho1^2 {rp:.4f}")
    print(" ; ".join(out), f"{time.time()-t0:.0f}s", flush=True)
