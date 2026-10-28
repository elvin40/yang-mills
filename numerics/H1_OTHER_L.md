IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# H1_OTHER_L — the (H1_L) majorant certificate at L = 15, 17, 21 (2026-10-28)
Command: `uv run --no-project --with python-flint --with numpy python bb_arb.py L L−1 16` in numerics/h1analytic (python-flint 0.9.0, numpy 2.5.3), the unmodified script certified at L = 13 (H1_ANALYTIC_VERIFY V6).

| L | target | certified sup B_L ≥ sup ρ_1² | F_max | G_max | boxes | failed | secs |
|---|---|---|---|---|---|---|---|
| 13 (H1_ANALYTIC_VERIFY) | 10 | 9.99953 | | | 25,169 | 0 | 58 (Mac) |
| 15 | 14 | 13.7377 | 10.0199 | 4.0049 | 3,876 | 0 | 124.5 |
| 17 | 16 | 12.8264 | 10.0199 | 3.0605 | 3,876 | 0 | 201.1 |
| 21 | 20 | 11.7770 | 10.0199 | 1.9513 | 3,876 | 0 | 428.7 |

Reading. Each run is certified on the initial n0 = 16 chamber grid with no subdivision, so the constants are grid-level upper bounds, not tight: the point majorant is ≤ 7.67, 7.48, 7.26 (H1_ANALYTIC §8), and a lower target would refine further. Worst box u ∈ [0.81, 1.0]⁴ (near the face diagonal) at every L. The transverse part F is L-independent; the gauge part G_L decreases with L.
Consequence. sup ρ_1² < L at L = 15, 17, 21, i.e. (H1_L) holds there; (H2) follows with ρ_2 ≤ sup ρ_1² by rho2_le (Lean), as at L = 13.
Residue (same as L = 13, not rechecked at these L): Lemmas T, S, Gauge are stated for odd L ≥ 3 (H1_ANALYTIC) but the production-code and H_j cross-checks (H1_ANALYTIC_VERIFY, VERIFY2, P5_VERIFY) were run at L = 13; bb_arb.py is an audited port, no proof assistant.
