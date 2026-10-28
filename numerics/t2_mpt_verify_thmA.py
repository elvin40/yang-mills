"""Verifier for SOURCES_T2_MPT_STEPC: (1) Theorem A after the t-integral: R(a) = W(a; m2) - a^2 w2(m2), W by (1.1);
expect R m^4/a^4 bounded up to the edge m2 = 6a. (2) Lemma S1' k=0: scalar a^4 coefficient of T_a(t) = E[A^4;X=0]/24,
expect ~ t^3 and continuum 7 t^3/(1440 pi)."""
import numpy as np, sys
from scipy.sparse.linalg import expm_multiply
from scipy.special import ive
sys.path.insert(0, __file__.rsplit('/', 1)[0])
from t2_mpt_heat4 import Aprime, box_ops

R, dt, T = 80, 0.1, 150.0
ts = np.arange(0, T+dt/2, dt)

def diag_traj(A, c, N, comps):
    out = np.zeros(len(ts))
    for comp in comps:
        v = np.zeros(A.shape[0], complex); v[comp*N+c] = 1; out[0] += 1
        for k in range(1, len(ts)):
            v = expm_multiply(-dt*A, v); out[k] += v[comp*N+c].real
    return out

def W(D, m2):  # (1.1): int dt/t e^{-t m2} p_t(0)^2 D(t), trapezoid, f(0) by linear extrapolation
    p2 = ive(0, 2*ts)**2; f = np.zeros(len(ts)); f[1:] = np.exp(-ts[1:]*m2)*p2[1:]*D[1:]/ts[1:]; f[0] = 2*f[1]-f[2]
    return np.trapezoid(f, ts)

if __name__ == "__main__":
    al = [0.0, 0.0025, 0.005, 0.01, 0.02, 0.04]; H = {}
    for a in al:
        A, c, N = Aprime(R, a); H[a] = diag_traj(A, c, N, (0, 1)); print(f"traj a={a} done", flush=True)
    D = {a: H[a]-H[0.0] for a in al}; s = 0.0025
    cA = (16*D[s]-D[2*s])/(12*s*s); d4 = (D[2*s]-4*D[s])/(12*s**4)
    for m2 in (0.24, 0.12):
        w2 = W(cA, m2); w4 = W(d4, m2)
        print(f"m2={m2}: w2~={w2:.6e}, w4~={w4:.6e}, w4*m^4={w4*m2**2:.5f}")
        for a in (0.01, 0.02, 0.04):
            if 6*a > m2+1e-12: continue
            Ra = W(D[a], m2)-a*a*w2
            print(f"  a={a} x=m2/a={m2/a:.0f}: R={Ra:+.4e}  R m^4/a^4={Ra*m2**2/a**4:+.5f}  (alpha^4 term w4 m^4={w4*m2**2:.5f})")
    # scalar S1' check
    T0, T1, c, N = box_ops(R, 0.0)
    for a in (s, 2*s):
        T0a, T1a, _, _ = box_ops(R, a)
        import scipy.sparse as sp
        I = sp.identity(N, format='csr')
        H[('s', a)] = None
    def Lap(a):
        T0a, T1a, c, N = box_ops(R, a); import scipy.sparse as sp; I = sp.identity(N, format='csr')
        return (4*I-T0a-T0a.conj().T-T1a-T1a.conj().T).tocsr(), c, N
    S = {}
    for a in (0.0, s, 2*s):
        L, c, N = Lap(a); S[a] = diag_traj(L, c, N, (0,))
    e4 = ((S[2*s]-S[0.0])-4*(S[s]-S[0.0]))/(12*s**4)
    print(" t | E[A^4;X=0] = 24 e4 | /(t(1+t)^2) | /(7 t^3/(60 pi))")
    for t in (1, 2, 5, 10, 20, 40, 60):
        k = int(round(t/dt)); EA4 = 24*e4[k]
        print(f" {t:4d} | {EA4:.5e} | {EA4/(t*(1+t)**2):.5f} | {EA4/(7*t**3/(60*np.pi)):.5f}")
