# Ng -> inf and Lp -> 0 estimates of the single-step beta_1(L) from the existing points (box values as quoted, Mac JSONs).
# Usage: python beta1chk_fit.py
import numpy as np
c = 11 * 4 / (12 * np.pi**2)
# raw[L][Lp] = {Ng: beta}; L = 9 Ng 12 and L = 5, 7 from Mac JSONs; L = 9 Ng 24, L = 11 Ng 28, L = 13 Ng 24 box values (task text)
raw = {5: {0.25: {12: 0.7443912927}, 0.5: {8: 0.7531799913, 12: 0.7489785714, 16: 0.7487364279}, 1.0: {8: 0.7702767381, 12: 0.7681671499, 16: 0.7679812472}},
       7: {0.25: {12: 0.7920095430}, 0.5: {8: 0.8026754916, 12: 0.7967364770}, 1.0: {8: 0.8203554655, 12: 0.8162360668}},
       9: {0.25: {12: 0.8209987932, 24: 0.820057}, 0.5: {8: 0.8326542278, 12: 0.8258230884, 24: 0.823117}, 1.0: {8: 0.8505766573, 12: 0.8448449455, 24: 0.842309}},
       11: {0.25: {28: 0.8358}, 0.5: {8: 0.8496145892, 28: 0.8378}, 1.0: {8: 0.8677842884, 28: 0.8564}},
       13: {1.0: {8: 0.8757528, 24: 0.8621}}}  # L = 13 Lp = 0.5 exists only at Ng = 8 (0.8572933): not used

def rate(L):
    """Exponential grid rate r (error ~ e^{-r Ng}); measured r = 0.61 (L = 5, Ng 8/12/16) and 0.29 (L = 9, Ng 8/12/24).
    Interpolated as r = 0.29 (9/L)^1.25; the alternative r = 0.29 * 9/L enters the error bar."""
    return 0.29 * (9 / L)**1.25, 0.29 * 9 / L

def converge(L, d):
    """Ng -> inf value and error from the finest grid and the next coarser one."""
    ngs = sorted(d)
    if len(ngs) == 1: return None
    n0, n1 = ngs[-2], ngs[-1]; diff = d[n0] - d[n1]
    corr = [diff * np.exp(-r * (n1 - n0)) / (1 - np.exp(-r * (n1 - n0))) for r in rate(L)]
    return d[n1] - np.mean(corr), abs(corr[0] - corr[1]) / 2 + 0.5 * np.mean(corr)  # error: model spread + 50% of the correction

if __name__ == "__main__":
    conv = {}
    for L, byLp in raw.items():
        conv[L] = {}
        for Lp, d in byLp.items():
            r = converge(L, d)
            if r is None:  # single grid: L = 5, 7 at Lp = 0.25 (Ng = 12), L = 11 at 0.25 (Ng = 28): correction scaled from Lp = 0.5
                n = max(d); r05 = converge(L, byLp[0.5]); f = 0.35  # L = 9: (Ng12 - Ng24) at Lp 0.25 is 0.35 x that at Lp 0.5
                corr = f * (byLp[0.5][n] - r05[0]) if n in byLp[0.5] else f * (r05[1] * 2 / 3)
                r = (d[n] - corr, abs(corr) + 1e-4 * (L == 11))
            if L in (11, 13): r = (r[0], np.hypot(r[1], 5e-5))  # box values quoted to 4 digits
            conv[L][Lp] = r
            print(f"L={L} Lp={Lp}: finest {d[max(d)]:.5f} (Ng {max(d)}) -> Ng=inf {r[0]:.5f} +- {r[1]:.5f}")
    print()
    b0 = {}
    for L, d in conv.items():
        if 0.25 in d:
            (y1, e1), (y2, e2), (y3, e3) = d[0.25], d[0.5], d[1.0]
            q = y1 - (y2 - y1) / 3  # quadratic in Lp through 0.25, 0.5
            qq = np.linalg.solve(np.vander([0.0625, 0.25, 1.0], 3), [y1, y2, y3])[-1]
            old = (4 * y2 - y3) / 3
            err = abs(qq - q) + (4 * e1 + e2) / 3  # model spread + propagated grid error (dominated by the Lp = 0.25 point)
            b0[L] = (qq, err)
            print(f"L={L}: Lp->0  q {q:.5f}  qq {qq:.5f}  old (4b(.5)-b(1))/3 {old:.5f}  -> {qq:.5f} +- {err:.5f};  b(1)-b(0) = {y3 - qq:.5f}")
    # L = 13: only Lp = 1 at a fine grid; D(L) = b(L,1) - b(L,0) extrapolated from L = 9, 11 (linear in 1/L and in L)
    D = {L: conv[L][1.0][0] - b0[L][0] for L in (9, 11)}
    lin1 = D[11] + (D[11] - D[9]) / (1 / 11 - 1 / 9) * (1 / 13 - 1 / 11); linL = D[11] + (D[11] - D[9]) / 2 * 2
    D13 = (lin1 + linL) / 2; eD = abs(lin1 - linL) / 2 + 0.001
    b0[13] = (conv[13][1.0][0] - D13, np.hypot(eD, conv[13][1.0][1]))
    print(f"L=13: D(13) = {D13:.4f} +- {eD:.4f} (1/L: {lin1:.4f}, L: {linL:.4f}) -> b(13,0) = {b0[13][0]:.4f} +- {b0[13][1]:.4f}")
    print()
    Ls = sorted(b0)
    for La, Lb in zip(Ls, Ls[1:]):
        s = (b0[Lb][0] - b0[La][0]) / np.log(Lb / La); e = np.hypot(b0[La][1], b0[Lb][1]) / np.log(Lb / La)
        print(f"slope {La}->{Lb} (Lp->0, Ng->inf): {s:.3f} +- {e:.3f}   (c = {c:.4f}; ratio {s / c:.2f})")
    for Lp in (0.5, 1.0):
        for La, Lb in zip(Ls, Ls[1:]):
            if Lp in conv[La] and Lp in conv[Lb] and len(raw[Lb][Lp]) > 1 or (Lb == 11 and Lp in conv[Lb]):
                s = (conv[Lb][Lp][0] - conv[La][Lp][0]) / np.log(Lb / La)
                print(f"slope {La}->{Lb} at Lp={Lp} (Ng->inf): {s:.3f}")
    for L in Ls: print(f"L={L}: b(L,0) - c log L = {b0[L][0] - c * np.log(L):+.4f}")
