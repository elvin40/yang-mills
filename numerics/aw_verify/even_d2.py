# Odd part of a(z), |z|_inf <= 2, midpoint vs left trivialization, per q and its f^1, f^2 Taylor coefficients.
import sys, os, numpy as np
D = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, os.path.dirname(D))
from ym_oneloop import rot
quat = lambda b: np.array([np.cos(b), 0, 0, np.sin(b)]); wedge = lambda a, b: a[0] * b[1] - a[1] * b[0]
nc = int(sys.argv[1]); js = [int(a) for a in sys.argv[2].split(",")]
def beta(m, mu, F):  # symmetric-gauge half-angle of the link with midpoint m
    x = m - 0.5 * np.eye(2)[mu]; return -F * x[1] / 2 if mu == 0 else F * x[0] / 2
for j in js:
    for triv in ("mid", "left"):
        odd = []
        for q in (-2, -1, 0, 1, 2):
            r = dict(np.load(os.path.join(D, f"s0d2_j{j}_q{q}_nc{nc}.npz"))); F = float(r["F"])
            for row in (0, 1):
                m, mu = r["rmid"][row], int(r["rdir"][row]); A = {}
                for k, mp in enumerate(r["cmid"]):
                    nu = int(r["cdir"][k]); b = r["blk"][row, k]
                    if triv == "left":
                        Rr, Rc = rot(quat(-beta(m, mu, F) / 2)), rot(quat(-beta(mp, nu, F) / 2)); b = Rr.T @ b @ Rc
                    A[(nu, tuple(np.round(m - mp, 3)))] = rot(quat(-F * wedge(m, mp) / 2)) @ b
                o = np.array([A[k] - A[(k[0], tuple(-np.array(k[1])))] for k in sorted(A) if max(abs(np.array(k[1]))) <= 2])
                odd.append(o) if row == 0 else odd.__setitem__(-1, np.concatenate([odd[-1], o]))
        Fs = np.array([2 * np.pi * q / nc**2 for q in (-2, -1, 0, 1, 2)]); O = np.array(odd).reshape(5, -1)
        co = np.linalg.solve(np.vander(Fs, 5, increasing=True), O)
        print(f"nc={nc} j={j} {triv}: max|odd| per q {np.round(np.abs(O).max(1), 7).tolist()}; |f^1 coef| {np.abs(co[1]).max():.2e}, |f^2 coef| {np.abs(co[2]).max():.2e}")
