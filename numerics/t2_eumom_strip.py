"""EUMOM (SOURCES_T2_EUMOM.md section 6): (a) L_u convergence of the E_0 moments (calls t2_eumom_n7.analyse);
(b) first zero of the analytically continued T(p') on the corner line p' = (pi + i kappa, pi, pi, pi) (T is real there).
Usage: numerics/.venv/bin/python numerics/t2_eumom_strip.py   (~10 s)
"""
import sys, os
import numpy as np
sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
from t2_eumom_n7 import analyse

def Tc(z, N, mu):
    d = len(z); m = 2 * np.pi * (np.arange(N) - (N - 1) // 2)
    q = np.array(z)[:, None] + m[None, :]
    sN = np.sin(q / (2 * N)); s = np.sin(q / 2)**2 / (N * sN)**2; D1 = 4 * N**2 * sN**2
    w = [s[n] * (s[n] if n == mu else 1.0) for n in range(d)]
    W = w[0]; Dl = D1[0]
    for n in range(1, d): W = np.multiply.outer(W, w[n]); Dl = np.add.outer(Dl, D1[n])
    return np.sum(W / Dl)

if __name__ == "__main__":
    for N, Lu in ((3, 14), (3, 18), (5, 10), (7, 8)):
        analyse(4, N, Lu)
    for N in (3, 5, 7, 15, 31, 61):
        for mu in (0, 1):
            ks = np.linspace(0.0, 4, 801)
            v = np.array([Tc([np.pi + 1j * k, np.pi, np.pi, np.pi], N, mu) for k in ks])
            idx = np.where(np.sign(v.real[1:]) != np.sign(v.real[:-1]))[0]
            print(f"N={N} complex axis {'mu' if mu == 0 else 'transverse'}: T(corner)={v[0].real:.4e} max|Im T|/|T|={np.max(np.abs(v.imag) / np.abs(v)):.1e} first zero kappa in [{ks[idx[0]]:.3f}, {ks[idx[0] + 1]:.3f}]", flush=True)
