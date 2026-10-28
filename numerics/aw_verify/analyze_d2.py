import sys, os, numpy as np
D = os.path.dirname(os.path.abspath(__file__)); sys.path.insert(0, os.path.dirname(D))
from ym_oneloop import rot
nc = int(sys.argv[2]) if len(sys.argv) > 2 else 8; js = [int(a) for a in sys.argv[1].split(",")]
quat = lambda b: np.array([np.cos(b), 0, 0, np.sin(b)])
wedge = lambda a, b: a[0] * b[1] - a[1] * b[0]
def kernel(r, s, row):
    F = float(r["F"]); m = r["rmid"][row]; out = {}
    for k, mp in enumerate(r["cmid"]):
        phi = s * F * wedge(m, mp)
        a = rot(quat(-phi / 2)) @ r["blk"][row, k]
        out[(int(r["cdir"][k]), tuple(np.round(m - mp, 3)))] = a
    return out
def cb(a): return np.array([(a[0, 0] + a[1, 1]) / 2, (a[1, 0] - a[0, 1]) / 2, a[2, 2]])  # charged 1-part, J-part, neutral
for j in js:
    R = {q: dict(np.load(os.path.join(D, f"s0d2_j{j}_q{q}_nc{nc}.npz"))) for q in (-2, -1, 0, 1, 2)}
    Fs = np.array([float(R[q]["F"]) for q in (-2, -1, 0, 1, 2)])
    # sign of the Moyal phase: translation invariance between rows m0 and m0+e0
    tr = {}
    for s in (1, -1):
        e = 0
        for q in (1, 2):
            for mu in (0, 1):
                A, B = kernel(R[q], s, mu), kernel(R[q], s, 2 + mu)
                common = [key for key in A if key in B and max(abs(np.array(key[1]))) <= 1.5]
                e = max(e, max(np.abs(A[k] - B[k]).max() for k in common))
        tr[s] = e
    s = min(tr, key=tr.get)
    sig = np.zeros((5, 2, 2, 3)); ev = 0; amax = 0; mx = 0
    for iq, q in enumerate((-2, -1, 0, 1, 2)):
        for mu in (0, 1):
            A = kernel(R[q], s, mu)
            for (nu, z), a in A.items():
                sig[iq, mu, nu] += cb(a); amax = max(amax, np.abs(a).max())
                mz = (nu, tuple(np.round(-np.array(z), 3)))
                if mz in A: ev = max(ev, np.abs(a - A[mz]).max())
                if iq == 2 and mu == 1 and nu == 1: mx += -z[0]**2 * a[0, 0]
    V = np.vander(Fs, 5, increasing=True); co = np.linalg.solve(V, sig.reshape(5, -1)).reshape(5, 2, 2, 3)
    print(f"j={j}: phase sign s={s} transl.err {tr[s]:.1e} (other {tr[-s]:.1e}); evenness max|a(z)-a(-z)| {ev:.1e} of max|a| {amax:.2f}; Maxwell 2c = {mx:.6f}")
    print("  sigma(0) f^0 [mu,nu](1-part, J-part, neutral):", np.round(co[0].reshape(4, 3), 6).tolist())
    print("  sigma(0) f^1:", np.round(co[1].reshape(4, 3), 6).tolist())
    print("  sigma(0) f^2:", np.round(co[2].reshape(4, 3), 5).tolist())
