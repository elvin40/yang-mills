# H2 certification at L = 15, 17, 21: independent verification

2026-10-28. Scope: TRUST_LEDGER row B1 "at other L".

## 1. Source of 13.738, 12.826, 11.777 (read numerics/H1_OTHER_L.md, bb_arb.py, H1_ANALYTIC §3–§6)
- Record: numerics/H1_OTHER_L.md (cloud PR #2). Command `bb_arb.py L L−1 16`, the script that H1_ANALYTIC_VERIFY V6 audited at L = 13. Targets 14, 16, 20.
- "Coarse grid" = the n0 = 16 initial grid on the sorted chamber 0 ≤ u_1 ≤ … ≤ u_4 ≤ 1 (K = πu). C(19,4) = 3,876 boxes; the record shows 3,876 boxes, so no box was subdivided.
- Method: each box gets an outward-rounded enclosure of B_L = γ_L F_CS + Ḡ_L (arb 1D factors at exact dyadic endpoints, float combination with one-ulp outward steps and Higham sum bounds). The reported value is the max of box upper bounds. This is a covering certificate, not a sampled maximum.
- "Grid-level" means only "not tight" (box widths 1/16, no refinement). Point majorant ≤ 7.67, 7.48, 7.26.
- Hypotheses on L: Lemmas S, G, T, Gauge are stated for odd L ≥ 3. F_CS keeps n ∈ {0, −1}⁴, inside |n|_∞ ≤ h for every L ≥ 3. γ_L, h = (L−1)/2, the l-sums, and a_{0} use L as a parameter only. 15, 17, 21 are odd. No L = 13 specific step found.
