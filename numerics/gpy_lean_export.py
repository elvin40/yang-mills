# Certificate generator for lean/YmLean/GpyMin.lean (checkers chk2, chk3).
# Exact rational arithmetic (fractions), the same formulas as the Lean checker, so a tree accepted
# here is accepted by `decide +kernel` in lean/YmLean/GpyMinCert.lean. Writes lean/YmLean/GpyMinCodes.lean.
# Constants: a0 = a1* - dc1+ with a1*, dc1+, rho0+, rho2+ from SOURCES_R3S1_GPY_MIN_IV.md (r3s1_gpy_cert_iv.py,
# hi ends rounded up). Run: python3 numerics/gpy_lean_export.py   (about 10 s)
import os, sys
from fractions import Fraction as Q
sys.setrecursionlimit(100000)

PL = Q(314159265, 10**8); PH = Q(314159266, 10**8)

def cosLo(q): x = q*q; return 1 - x/2 + x**2/24 - x**3/720 + x**4/40320 - x**5/3628800
def cosHi(q): x = q*q; return 1 - x/2 + x**2/24 - x**3/720 + x**4/40320
def sinLo(q): x = q*q; return q - q*x/6 + q*x**2/120 - q*x**3/5040 + q*x**4/362880 - q*x**5/39916800
def sinHi(q): x = q*q; return q - q*x/6 + q*x**2/120 - q*x**3/5040 + q*x**4/362880
FULL = (Q(-1), Q(1))
def neg(I): return (-I[1], -I[0])
def cpiB(u):
    if 0 <= u <= Q(1, 4): return (cosLo(PH*u), cosHi(PL*u))
    if Q(1, 4) < u <= Q(1, 2): v = Q(1, 2) - u; return (sinLo(PL*v), sinHi(PH*v))
    return FULL
def cpiC(u):
    if 0 <= u <= Q(1, 2): return cpiB(u)
    if Q(1, 2) < u <= 1: return neg(cpiB(1 - u))
    return FULL
def cpiD(u): return cpiC(u) if u <= 1 else cpiC(2 - u)
def cpiE(u): return cpiD(u) if u <= 2 else cpiD(u - 2)
def cpi(u): return cpiE(abs(u))

def b(u): return Q(1, 90) - u**2/12 + u**3/12 - u**4/48
def b1(u): return -u/6 + u**2/4 - u**3/12
def b2(u): return -Q(1, 6) + u/2 - u**2/4
def b3(u): return Q(1, 2) - u/2
P1 = (PL, PH); P2 = (PL**2, PH**2)
def add(I, J): return (I[0] + J[0], I[1] + J[1])
def smul(c, I): return (c*I[0], c*I[1]) if c >= 0 else (c*I[1], c*I[0])
def mul(I, J):
    p = [I[0]*J[0], I[0]*J[1], I[1]*J[0], I[1]*J[1]]; return (min(p), max(p))
def absHi(I): return max(abs(I[0]), abs(I[1]))
def Ierr(a, m, w): return 2*a*((PH*w)**2/2 + (PH*w)**3/6) + 4*PH**2*(abs(b2(m))*w**2/2 + abs(b3(m))*w**3/6)
def gIv(a, m): return add(smul(-2*a, mul(P1, cpi(Q(1, 2) - m))), smul(-4*b1(m), P2))

def lb3(a, sm, tm, w):
    C = add(add(cpi(sm), cpi(tm)), cpi(sm + tm))
    G = add(add(smul(2*a, C), (3*a, 3*a)), smul(-4*(b(sm) + b(tm) + b(sm + tm) - 3*b(Q(2, 3))), P2))
    return (G[0] - absHi(add(gIv(a, sm), gIv(a, sm + tm)))*w - absHi(add(gIv(a, tm), gIv(a, sm + tm)))*w
            - (Ierr(a, sm, w) + Ierr(a, tm, w) + Ierr(a, sm + tm, 2*w)))
def dhi3(sm, tm, w): return PH**2*((abs(sm - Q(2, 3)) + w)**2 + (abs(tm - Q(2, 3)) + w)**2)
def lb2(a, m, w):
    G = add(add(smul(2*a, cpi(m)), (2*a, 2*a)), smul(-4*(b(m) - b(Q(1))), P2))
    return G[0] - absHi(gIv(a, m))*w - Ierr(a, m, w)
def dhi2(m, w): return PH**2/2*(abs(m - 1) + w)**2

# tree digits (preorder, base 4, least significant first): 0 box bound, 1 outside alcove, 2 local region, 3 split
def gen3(a, M0, M2, tau, maxdepth=20):
    dig = []; c0 = Q(2, 3)
    def rec(sm, tm, w, dep):
        if 2 < (sm - w) + (tm - w): dig.append(1); return
        if (sm + w - c0 <= tau and -tau <= sm - w - c0 and tm + w - c0 <= tau and -tau <= tm - w - c0
                and sm + tm + 2*w - 2*c0 <= tau and -tau <= sm + tm - 2*w - 2*c0):
            dig.append(2); return
        L = lb3(a, sm, tm, w)
        if M0 <= L or M2*dhi3(sm, tm, w) <= L: dig.append(0); return
        if dep >= maxdepth: raise RuntimeError(f"SU(3) box fails at ({float(sm)}, {float(tm)}), w = {float(w)}")
        dig.append(3); h = w/2
        for dx, dy in ((-1, -1), (1, -1), (-1, 1), (1, 1)): rec(sm + dx*h, tm + dy*h, h, dep + 1)
    rec(Q(1), Q(1), Q(1), 0); return dig
def gen2(a, M0, M2, tau, maxdepth=30):
    dig = []
    def rec(m, w, dep):
        if m + w - 1 <= tau and -tau <= m - w - 1: dig.append(2); return
        L = lb2(a, m, w)
        if M0 <= L or M2*dhi2(m, w) <= L: dig.append(0); return
        if dep >= maxdepth: raise RuntimeError(f"SU(2) box fails at {float(m)}, w = {float(w)}")
        dig.append(3); h = w/2
        rec(m - h, h, dep + 1); rec(m + h, h, dep + 1)
    rec(Q(1), Q(1), 0); return dig
def code(dig): return sum(d*4**i for i, d in enumerate(dig))

# name: (N, a1*, dc1+, M0, M2, tau); rho0+, rho2+ enter only through M0 > N^2 rho0+, M2 > N rho2+ (GpyMinCert.lean)
CASES = {
    "su2_16": (2, Q(20984, 10**5), Q(41028, 10**7), Q(472, 10**6), Q(2, 1000), Q(318, 1000)),
    "su2_8": (2, Q(22529, 10**5), Q(191049, 10**7), Q(2255, 10**6), Q(6, 1000), Q(318, 1000)),
    "su3_16": (3, Q(30997, 10**5), Q(41028, 10**7), Q(115, 10**5), Q(25, 10**4), Q(79, 1000)),
    "su3_8": (3, Q(32896, 10**5), Q(191049, 10**7), Q(5135, 10**6), Q(9, 1000), Q(79, 1000)),
}
if __name__ == "__main__":
    out = ["/-! Certificate trees for `GpyMinCert.lean`, written by numerics/gpy_lean_export.py. Do not edit. -/",
           "", "namespace YmLean.Gpy", ""]
    for name, (N, a1, dc1, M0, M2, tau) in CASES.items():
        a0 = a1 - dc1
        dig = (gen2 if N == 2 else gen3)(a0, M0, M2, tau)
        print(f"{name}: a0 = {a0} = {float(a0):.7f}, nodes = {len(dig)}, box bounds = {dig.count(0)}, "
              f"outside = {dig.count(1)}, local = {dig.count(2)}, splits = {dig.count(3)}")
        out += [f"/-- {name}: {len(dig)} nodes, {dig.count(0)} box bounds. -/", f"def code_{name} : Nat :=", f"  {code(dig)}", ""]
    out += ["end YmLean.Gpy", ""]
    path = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "lean", "YmLean", "GpyMinCodes.lean")
    open(path, "w").write("\n".join(out))
    print("wrote", os.path.normpath(path))
