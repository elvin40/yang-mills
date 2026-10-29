# Counterexample to CMP 122 II p. 387 step (B): S^m(X) is not contained in S^m(Y) for m = 1..t+1.
# S(W) = cover of W by next-level cells (ratio rho = L R_{n+1}/R_n in {1, L, L^2}) plus 10 layers.
# Boxes are exact: S(box) is a box, so containment is an interval check. Brute-force check on cell sets for a small case.
import itertools, sys

def S_int(a, b, rho):  # inclusive cell-index interval
    return a // rho - 10, b // rho + 10

def S_box(box, rho):
    return tuple(S_int(a, b, rho) for a, b in box)

def contains(B, A, k=0):  # A subset of B^{~k}
    return all(Ba - k <= Aa and Ab <= Bb + k for (Aa, Ab), (Ba, Bb) in zip(A, B))

def build(L, rhos, d=2, w=40):
    # back-solve Y's left end so that b_m = 0 mod rho_m at every step, ending at b_t = 0
    b = 0
    for rho in reversed(rhos):
        b = rho * (b + 10)
    H = 10 * b + L ** (len(rhos) + 3)
    Y = ((b, b + H),) + tuple((-H, H) for _ in range(d - 1))
    X = ((b - 1, b + w - 2),) + tuple((0, w - 1) for _ in range(d - 1))  # w cells per side, X meets Y
    return X, Y

def run(L, rhos, d=2, w=40):
    X, Y = build(L, rhos, d, w)
    assert contains(((X[0][0], X[0][1] + 10**9),) + X[1:], X) and X[0][1] >= Y[0][0]  # X meets Y
    out = []
    for m, rho in enumerate(rhos + [L, L], 1):
        X, Y = S_box(X, rho), S_box(Y, rho)
        out.append((m, rho, contains(Y, X), contains(Y, X, 1), Y[0][0] - X[0][0]))
    return out

# brute force: S on explicit cell sets agrees with the box formula (small instance)
def S_set(W, rho, d):
    C = {tuple(c // rho for c in x) for x in W}
    return {tuple(c + e for c, e in zip(x, off)) for x in C for off in itertools.product(range(-10, 11), repeat=d)}

def brute(L=3, rhos=(3, 1, 3), d=2):
    X, Y = build(L, list(rhos), d, w=4)
    cells = lambda B: set(itertools.product(*[range(a, b + 1) for a, b in B]))
    # Y is huge; restrict to a window around X, which does not change membership near X
    Yw = tuple((max(a, X[i][0] - 60), min(b, X[i][1] + 60)) for i, (a, b) in enumerate(Y))
    Xs, Ys = cells(X), cells(Yw)
    Xb, Yb = X, Yw
    for rho in rhos:
        Xs, Ys = S_set(Xs, rho, d), S_set(Ys, rho, d)
        Xb, Yb = S_box(Xb, rho), S_box(Yb, rho)
        assert Xs == cells(Xb) and Ys == cells(Yb)
        assert (Xs <= Ys) == contains(Yb, Xb)
    return True

if __name__ == "__main__":
    print("brute-force box formula check:", brute())
    for L, rhos in [(13, [13] * 4), (13, [13, 1, 13, 169, 13, 1, 13]), (4, [4] * 6)]:
        print(f"L={L} rhos={rhos}")
        for m, rho, inc, inc1, off in run(L, rhos):
            print(f"  m={m:2d} rho={rho:3d}  S^m(X) in S^m(Y): {inc!s:5}  in S^m(Y)^~1: {inc1!s:5}  left offset={off}")
