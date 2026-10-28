# BETA1_SLOPE_STAGE.md (staged for NUMERICS §7; 2026-10-28 ~16:15 box clock)

Status: PARTIAL. Only the three L = 9 GPU points exist. No L = 11 or L = 13 GPU point exists. The slope test below compares L = 9 (Ng = 24) with the L = 13 cloud anchor (Ng = 8). The grids differ, so the result is indicative only.

## 1. Box data (~/ym/beta1/results)

| L | Ng | Lp | beta | ghost | bord | wall (s) | prof (s) |
|---|---|---|---|---|---|---|---|
| 9 | 24 | 0.25 | 0.820057 | 0.110113 | 0.709944 | 787.7 | 183.6 |
| 9 | 24 | 0.5 | 0.823117 | 0.107517 | 0.715600 | 785.2 | 176.8 |
| 9 | 24 | 1.0 | 0.842309 | 0.099605 | 0.742704 | 772.3 | 179.5 |
| 11 | 28 | 1.0 | not finished (only a .partial.npz, 748 B, last write 16:11) | | | | |
| 11 | 28 | 0.5, 0.25 | not started | | | | |
| 13 | any | any | not queued on the GPU unit | | | | |

Anchor (NUMERICS §7, cloud N2, Ng = 8, arb-certified for rounding only): L = 13: 0.857293 (Lp = 0.5), 0.8757528 (Lp = 1.0).

## 2. Fit

c = 11N²/(12π²) = 0.371511 at N = 2 (c log 2 = 0.2575). Residual r = β_1 − c log L:

| L | Lp | β_1 | c log L | r |
|---|---|---|---|---|
| 9 | 0.25 | 0.8201 | 0.8163 | +0.0038 |
| 9 | 0.5 | 0.8231 | 0.8163 | +0.0068 |
| 9 | 1.0 | 0.8423 | 0.8163 | +0.0260 |
| 13 | 0.5 | 0.8573 | 0.9529 | -0.0956 |
| 13 | 1.0 | 0.8758 | 0.9529 | -0.0772 |

Two-point slope in log L (9 -> 13, Δlog L = 0.3677; c Δlog L = 0.1366):

| Lp | Δβ_1 | slope | slope / c | Δr |
|---|---|---|---|---|
| 0.5 | 0.0342 | 0.093 | 0.25 | -0.1024 |
| 1.0 | 0.0335 | 0.091 | 0.24 | -0.1032 |

Lp -> 0 and a multi-L fit at fixed Lp need at least three L; not possible yet. Within L = 9, Lp 0.25 -> 0.5 changes β_1 by 0.003; quadratic extrapolation to Lp = 0 gives about 0.8191.

Grid caveat: the earlier Ng = 8 values at L = 9 were 0.833 (Lp = 0.5) and 0.851 (Lp = 1.0). Ng = 24 lowers them by 0.010 and 0.009. With matched Ng = 8, the 9 -> 13 slope at Lp = 0.5 is 0.024/0.3677 = 0.066. So the Ng = 8 grid error at L = 13 is probably larger than at L = 9, which pushes the true slope up. The slope of 0.09 is a mix of two effects and not a clean number.

Result: even with the grid-converged L = 9 point, the slope from 9 to 13 is about 0.25 c, well below c. The residual r still falls by 0.10. The deficit is not removed by the Ng = 24 point at L = 9. Whether the Ng = 8 value at L = 13 hides a grid deficit needs the L = 11 and L = 13 points at Ng >= 2.5 L.

## 3. Box status

- Units active: h1cert2 (mode M13 still running; M1 done), beta1, ymbetafp2. umk inactive. Load average 32 on 32 cores.
- beta1: the GPU run is on L = 11 Lp = 1.0 (Ng = 28), partial checkpoint at 16:11.
- h1cert2 has NOT finished.
- E5: PLAN.md line 436 defines it only as the DMAX = 3 completion run on the 200 FAILED M1 cells (move DONE marker aside, rewrite their JSONs). It says "queue E5 (after mode M13 finishes)". No E5 launcher script exists in numerics/ or on the box, and OPUS_QUEUE.md has no E5 entry. Nothing launched.
