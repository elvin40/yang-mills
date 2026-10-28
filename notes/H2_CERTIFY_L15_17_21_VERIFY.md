# H2 certification at L = 15, 17, 21: independent verification

2026-10-28. Scope: TRUST_LEDGER row B1 "at other L".

## 1. Source of 13.738, 12.826, 11.777 (read numerics/H1_OTHER_L.md, bb_arb.py, H1_ANALYTIC §3–§6)
- Record: numerics/H1_OTHER_L.md (cloud PR #2). Command `bb_arb.py L L−1 16`, the script that H1_ANALYTIC_VERIFY V6 audited at L = 13. Targets 14, 16, 20.
- "Coarse grid" = the n0 = 16 initial grid on the sorted chamber 0 ≤ u_1 ≤ … ≤ u_4 ≤ 1 (K = πu). C(19,4) = 3,876 boxes; the record shows 3,876 boxes, so no box was subdivided.
- Method: each box gets an outward-rounded enclosure of B_L = γ_L F_CS + Ḡ_L (arb 1D factors at exact dyadic endpoints, float combination with one-ulp outward steps and Higham sum bounds). The reported value is the max of box upper bounds. This is a covering certificate, not a sampled maximum.
- "Grid-level" means only "not tight" (box widths 1/16, no refinement). Point majorant ≤ 7.67, 7.48, 7.26.
- Hypotheses on L: Lemmas S, G, T, Gauge are stated for odd L ≥ 3. F_CS keeps n ∈ {0, −1}⁴, inside |n|_∞ ≤ h for every L ≥ 3. γ_L, h = (L−1)/2, the l-sums, and a_{0} use L as a parameter only. 15, 17, 21 are odd. No L = 13 specific step found.

## 2. Spot check, 3 cells per L (/tmp/h2v/spot.py, bb_arb.Fcs_box + Gbox.bound, n0 = 16 cells)
| L | cell index (u = i/16) | F box | G box | B box | B at centre | B box < L−1 |
|---|---|---|---|---|---|---|
| 15 | (13,13,13,13) | 8.930 | 2.645 | 11.608 | 6.973 | yes |
| 15 | (0,0,0,0) | 1.016 | 1.023 | 2.043 | 1.437 | yes |
| 15 | (4,8,10,15) | 7.759 | 1.060 | 8.848 | 5.850 | yes |
| 17 | same three | 8.930 / 1.016 / 7.759 | 2.021 / 1.023 / 0.813 | 10.977 / 2.042 / 8.595 | 6.808 / 1.376 / 5.779 | yes |
| 21 | same three | 8.930 / 1.016 / 7.759 | 1.289 / 1.023 / 0.522 | 10.236 / 2.041 / 8.296 | 6.613 / 1.283 / 5.695 | yes |
Box bound ≥ point value in all 9 cells. F is L-independent and G falls with L, as the record states. The diagonal cell (13,13,13,13) is not the worst cell (record: 13.738 at L = 15); next step locates the worst cell.

## 3. Worst cell located (/tmp/h2v/top.py, all 126 sorted cells with every index ≥ 10, 6 s total)
| L | worst cell (i/16) | B box | G there | G max (subset) | record |
|---|---|---|---|---|---|
| 15 | (13,13,14,15) | 13.73772 | 3.885 | 4.00488 | 13.7377, G_max 4.0049 |
| 17 | (13,13,13,15) | 12.82643 | 2.870 | 3.06052 | 12.8264, G_max 3.0605 |
| 21 | (13,13,13,15) | 11.77698 | 1.830 | 1.95128 | 11.7770, G_max 1.9513 |
F max on the subset = 10.01993 at (12,12,12,15), equal to the record's F_max. All five record numbers per L reproduce to the printed digits. So the record came from this code at n0 = 16. Margins: 13.738 < 14 < 15 (gap 1.26 to L), 12.826 < 16 < 17 (gap 4.17), 11.777 < 20 < 21 (gap 9.22).
Not rerun: the other 3,750 cells (brief: no full sweeps). Their "< L − 1" status rests on the record (failed = 0). Per-cell cost here is ≤ 0.05 s, so a full Mac rerun is about 1–3 min per L if wanted.

## 4. Independent H_j at other L; chain to (H2)
indep_H.py is written for general L, but the 6e−9 production match was run at L = 3, 13 only. New point runs (/tmp/h2v/rho.py, indep_H.solve + rho_parts) at K/π = (0.84375, 0.84375, 0.90625, 0.96875), the centre of the L = 15 worst cell:
| L | M | ρ_1² (indep) | B_L at point | residual |
|---|---|---|---|---|
| 15 | 1 | 4.2094 | 7.6038 | 2e−13 |
| 15 | 15 | 4.3139 | 7.6038 | 2e−13 |
| 17 | 1 | 4.2479 | 7.3751 | 2e−13 |
| 21 | 1 | 4.2962 | 7.1062 | 1e−13 |
| 21 | ∞ | 4.3531 | 7.1062 | 2e−13 |
B_L ≥ ρ_1² at all 5 points (ratio ≥ 1.63). This is evidence [N] for the paper majorant at these L, not a production cross-check (production code not compared here).
Chain: rho2_le (lean/YmLean/BlockNorm.lean:78) holds for any real L > 0 and gives ρ_2 ≤ ρ_1(j,K)·sup ρ_1 ≤ sup ρ_1². B_L is uniform in j ≥ 1 (H1_ANALYTIC §5, "j-dependence"). So ρ_2 ≤ 13.738 < 15, 12.826 < 17, 11.777 < 21.

## 5. Grade of TRUST_LEDGER B1 at L = 15, 17, 21
CERTIFIED, with the same standing as L = 13: rigorous outward-rounded cover of the chamber by the audited bb_arb.py; paper lemmas valid for odd L ≥ 3. Verified here: record numbers reproduce exactly (worst cell, F_max, G_max); 9 spot cells consistent; L-hypotheses hold; comparison value is L via rho2_le.
Residue: (a) 3,750 of 3,876 cells per L were not recomputed (record says 0 failed; full rerun ≈ 1–3 min per L on the Mac). (b) The numerical B_L ≥ ρ_1² sweep (896 cases) and the production cross-checks were done at L = 13; here only 5 points at L = 15, 17, 21. Neither affects the proof logic.

## Full Mac rerun (coordinator, 2026-10-28)
`uv run --no-project --with python-flint --with numpy python bb_arb.py L L−1 16`, all 3,876 cells per L, failed_leaves = 0: L = 15 supB = 13.737723 (33 s); L = 17 supB = 12.826432 (51 s); L = 21 supB = 11.776985 (113 s). Matches H1_OTHER_L.md to the printed digits. Gap closed: B1 at L = 15, 17, 21 CERTIFIED with the same standing as L = 13.
