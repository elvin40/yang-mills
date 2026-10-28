# H1CERT2_M1_RESULT — the h1cert2 cross-check, mode M = 1 (j = 1), sorted chamber, h = 0.08, DMAX = 2 (2026-10-28)
Source: box ~/ym/h1cert2_out_L13_M1_h0.08_sorted/ (14,423 cell JSONs, read only; nothing launched or stopped).
DONE marker: top_cells 8,855; ok 13,872; split 348; FAILED 200; near0 3; max_ok_ub 3.59685; √13 = 3.60555.

## 1. What the statuses mean (h1cert_drive2.py, h1cert_cell2.py)
- `ub` = cell_bound2 = certified upper bound on sup ρ_1(j, K) over the cell (the code takes λ_max(G)^{1/2}/L). It bounds ρ_1, not ρ_1².
- ok: ub < √13 − 10⁻⁶. split: the cell did not certify (ub too large, or an exception) and depth < DMAX, so the driver made 16 children of half-width h/2.
- FAILED: the same non-certification at depth = DMAX. Terminal; the driver does not descend further.
- near0: cell_bound2 returned None (Near0: a lower bound on 1/|k̂|² or on |K̂_4|² failed, i.e. the cell touches the K = 0 region). Terminal by design (G3).
- An exception (here always `ValueError: eta …`, the Oishi–Rump inverse test of the whitened A failing, eta ≥ 1) is a non-certification. It sets ub = None and status split/FAILED, with the text in `err`.
- DMAX = 2 limits the bisection to depth 2: half-widths 0.08 → 0.04 → 0.02. A depth-2 cell that does not certify is FAILED.

## 2. The 200 FAILED cells
- All 200 have depth 2, h = 0.02, err = null, and a finite ub. None is an exception, NaN, or eigen-solver failure. ub range 3.621–9.936 (median 5.40).
- All 200 descend from two top cells only: t210 (centre (0.08, 0.24, 0.24, 0.24), 91 FAILED) and t1540 (centre (0.24, 0.24, 0.24, 0.24), 109 FAILED), through 16 depth-1 parents.
- Location: centre |K| 0.312–0.550, max coordinate 0.18–0.30. The region is |K|_∞ ≤ 0.32, next to the three near0 top cells t0 (0.08⁴), t1 (0.08, 0.08, 0.08, 0.24), t20 (0.08, 0.08, 0.24, 0.24).
- Ancestors: t210 and t1540 failed at depth 0 with Oishi–Rump eta = 35.4 and 21.9. Every depth-1 child failed (eta 1.06–2.50, or a finite ub > √13). At depth 2 eta < 1 in every cell, but the bound stays above √13.
- Five full records (verbatim):
  - {"name": "t1540_0_0", "c": [0.18, 0.18, 0.18, 0.18], "h": 0.02, "depth": 2, "status": "FAILED", "ub": 9.63039918827149, "err": null, "secs": 31.87}
  - {"name": "t1540_0_1", "c": [0.18, 0.18, 0.18, 0.22], "h": 0.02, "depth": 2, "status": "FAILED", "ub": 4.9941112563980266, "err": null, "secs": 28.73}
  - {"name": "t1540_0_10", "c": [0.22, 0.18, 0.22, 0.18], "h": 0.02, "depth": 2, "status": "FAILED", "ub": 7.568621030853267, "err": null, "secs": 30.45}
  - {"name": "t1540_0_11", "c": [0.22, 0.18, 0.22, 0.22], "h": 0.02, "depth": 2, "status": "FAILED", "ub": 4.224348084345392, "err": null, "secs": 32.13}
  - {"name": "t1540_0_12", "c": [0.22, 0.22, 0.18, 0.18], "h": 0.02, "depth": 2, "status": "FAILED", "ub": 7.568621030903946, "err": null, "secs": 32.48}
- Largest ub: t210_8_8 (0.14, 0.18, 0.18, 0.18) 9.936; t210_8_0 (0.10, 0.18, 0.18, 0.18) 9.844; t1540_0_0 (0.18⁴) 9.630. Smallest: t210_14_9 (0.14, 0.26, 0.26, 0.22) 3.621. The ub falls as |K| grows.
- Per-cell table of all 200 (name, centre, ub, secs): /tmp/h1c2_an.txt on the box, lines starting with "F ".

## 3. Cause
Class (a), in the form that applies to this certifier: the per-cell enclosure is too loose at h = 0.02 for |K| ≈ 0.3–0.55. Not (b): no NaN or solver failure. Only partly (c): the cells border the near0 corner, but they are not gauge zero modes. The overestimate scales with h/|K|: the Taylor remainders and the Oishi–Rump perturbation of A grow as the cell width approaches |K|.
Note: G1 is not a Hessian lower bound. It is an upper bound on λ_max(Z T2 Z + w w†/σ) = ρ_1² L².
Scale check: the true value is small here. H1_ANALYTIC gives B_13 ≈ 2 near K = 0 (ρ_1² ≤ ≈ 2, ρ_1 ≤ ≈ 1.42), and ρ_1(0) = 1. So the FAILED ub 3.6–9.9 is an overestimate by a factor up to ≈ 7, not a violation.

## 4. Comparison with the analytic certificate
The analytic majorant certificate (H1_ANALYTIC §7, bb.py / bb_arb.py, sup B_13 ≤ 9.9995) is tightest at large K. Its worst boxes lie near the face diagonal, u = K/π ∈ [0.81, 1.0]⁴ (H1_OTHER_L.md), where γF_CS reaches 8.31. Near 0 the same certificate gives B ≈ 2, a margin of ≈ 11 against 13. The FAILED cells (|K|_∞ ≤ 0.32) therefore lie where the analytic certificate has its largest margin, not where it is tightest. The two methods have their difficulty at opposite ends of the chamber.
The tightest G1 ok cells are also at moderate K, not near the analytic worst box: t1920 (0.24, 0.56, 0.72, 1.04) ub 3.59685 at depth 0, t90 (0.08, 0.08, 0.88, 0.88) 3.5939.

## 5. What the cross-check established and what it did not
- Established (independent of the analytic majorant, under premises P1', P2, P5b): ρ_1(j = 1, K) ≤ 3.59685 < √13 on every ok leaf, i.e. on the sorted chamber minus the top cells t210, t1540 (their FAILED leaves) and the three near0 top cells. Equivalently ρ_1² ≤ 12.937 there. The margin is 0.0087 in ρ_1 (0.24%); the bound is loose at depth 0, so the small margin reflects the enclosure, not the true ρ_1.
- Not established: the 200 FAILED leaves (all of t210 and t1540 not covered by ok leaves) and the 3 near0 cells, all in |K|_∞ ≤ 0.32. The analytic certificate covers this region with a large margin, so the gap affects only the cross-check, not (H1_13).
- Not this mode: M = 13 and M0:169 (other modes of the same launcher).

## 6. Completion run (NOT launched)
- Action: DMAX = 3 on the 200 FAILED cells. The driver treats FAILED as terminal, so their JSONs must be removed (or rewritten as split) and the mode rerun with --dmax 3; h1cert_launch2.sh also skips a mode with a DONE marker, so that marker must be moved aside. Rerunning the driver over the whole mode only re-reads the 14k existing JSONs.
- Work: 200 re-evaluations + 3,200 children (h = 0.01) = 3,400 cells. Measured per-cell time on the box with 16 parallel shards: mean 28.2 s at depth 2 (29.7 s for the FAILED cells, max 46.8 s). 3,400 × 29 s ≈ 27 core-h ≈ 1.7 h wall at 16 processes.
- Expected outcome: measured ub shrink per halving (parent ub / max child ub over the 294 split cells with a finite ub): min 2.57, median 3.7 (depth 0 → 1) and min 2.89, median 4.7 (depth 1 → 2). The worst FAILED cell needs a factor 9.936/3.606 = 2.76. So depth 3 should certify most or all of them; the three cells with ub > 9.5 (t210_8_8, t210_8_0, t1540_0_0) are marginal and may need depth 4 (+16 × 30 s per cell that fails again, ≈ 8 core-min each).
- Alternative: leave the region to the analytic certificate (already the certificate of record there) and state the cross-check as covering |K|_∞ > 0.32 only.
