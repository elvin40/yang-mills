"""Task B: B_L(K) (sharp: truncated F, |P g|; crude: F_CS, |g| = what bb.py encloses) >= rho_1^2, L = 13."""
import sys, itertools, time, numpy as np
sys.path.insert(0, "~/claude_code/yang_mills/numerics"); sys.path.insert(0, "~/claude_code/yang_mills/numerics/h1analytic")
from h1cert_rho1 import prof, rho1
from verify_ab import B_sharp, E0_g, sinc
def Fcs(K):  # (6.1) written from the text
    K = np.abs(K); t = K/(2*np.pi-K); s2 = np.sin(K/2)**2; best = np.inf
    for c in itertools.product((0, 1), repeat=4):
        c = np.array(c); S = sinc(K/2)**2+c*4*s2/(2*np.pi-K)**2; Sm = sinc(K/2)**4+c*16*s2**2/(2*np.pi-K)**4
        r = (1+c)/(1+c*t**2); rm = (1+c*t**2)/(1+c*t**4)
        v = max(np.sum(K**2*np.where(np.arange(4) == mu, rm, r))/np.sum(K**2)/np.prod(np.where(np.arange(4) == mu, Sm, S)) for mu in range(4))
        best = min(best, v)
    return best
def B_crude(K, L):
    K = np.abs(K); gam = sinc(np.pi/(2*L))**-2; F = Fcs(K)
    k, al, _, _ = E0_g(K, L); a2 = al**2; s = 4*np.sin(k/2)**2; kh2 = s.sum(1); Kh2 = (4*np.sin(K/2)**2).sum()
    V = L**-4*np.sum(a2.prod(1)/kh2*np.abs(L*L*a2-Kh2/kh2[:, None]).max(1))
    with np.errstate(divide='ignore', invalid='ignore'): g = np.sqrt(np.nansum(np.where(s > 0, (1-al)**2/s, 0), 1))
    U = L**-3*np.sum(np.sqrt(a2.prod(1)*a2.max(1))/kh2*g)
    tau = F*(K@K)*(V+np.sqrt(Kh2)*U); return gam*F+(1+tau)**2/(Kh2*L**-2*np.sum(1/kh2))
L = 13; pf = prof(L); rng = np.random.default_rng(2027); t0 = time.time()
pts = [rng.uniform(-np.pi, np.pi, 4) for _ in range(200)] + [np.array([a, a, np.pi, np.pi]) for a in np.linspace(2.0, 2.9, 19)] \
    + [np.full(4, np.pi), np.array([2.42, 2.42, 2.42, 2.98]), np.array([1e-3, -2e-3, 1e-3, 5e-4]), np.array([0.05, 0, 0, 0]), np.array([np.pi, 0.01, 0.01, 0.01])]
worst = {}; rows = []
for K in pts:
    bs, bt, bg = B_sharp(K, L); bc = B_crude(K, L)
    for j in (1, 2, 5, "inf"):
        r2 = rho1(L, "inf" if j == "inf" else L**(j-1), K, pf)**2
        rows.append((j, bs/r2, bc/bs, r2, bs, bc, K))
R = np.array([r[1] for r in rows]); C = np.array([r[2] for r in rows]); i = R.argmin(); ic = C.argmin()
print(f"{len(rows)} cases, {time.time()-t0:.0f}s; min B_sharp/rho1^2 = {R[i]:.4f} at j={rows[i][0]} K={np.round(rows[i][6],3)} (rho^2 {rows[i][3]:.4f})")
print(f"min B_crude/B_sharp = {C[ic]:.4f}; max rho1^2 = {max(r[3] for r in rows):.4f}; max B_sharp = {max(r[4] for r in rows):.4f}; max B_crude = {max(r[5] for r in rows):.4f}")
for r in rows[-24*4:]:
    if r[0] == "inf" or r[0] == 1: print(r[0], np.round(r[6], 3), f"rho2 {r[3]:.4f} Bs {r[4]:.4f} Bc {r[5]:.4f}")
