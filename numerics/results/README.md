# numerics/results

One JSON file per run. File names give the code (prefix), the block factor L, the grid Ng (and N for betafp), the momentum p, and the sector (trans = transverse SU(2), u1 = abelian sector, gauge = pure-gauge check, two = two composed steps).

## Which fields are valid

The field `w` is valid in every file. It is the raw per-cell second derivative. The field `beta` is valid only in files written after the normalization fix of 2026-10-27 (NUMERICS.md §6). Files written before the fix store `beta` too small by a factor 4. For those files, recompute from `w`:

  β = 4 w / (L^{4·levels} (1 − cos p)),   levels = 1 unless the file has `"levels": 2`.

analyze.py does this for all mom_* files.

| Files | `beta` field |
|---|---|
| umk_* (all) | valid |
| betafp_*, betafp_v2_* (all) | valid; `beta` = β_{j+1}(0) at momentum p, in the conventions of BETA_FP.md |
| mom_L2_Ng8_p0.2_trans_two.json, mom_L4_Ng6_p0.2_trans.json | valid |
| mom_L2_Ng12_*, mom_L2_Ng4_p0.4_trans.json, mom_L3_Ng6_*, mom_L3_Ng8_* | too small by 4 (written before the fix) |
| mom_L2_Ng4_p0.2_trans_two.json, mom_L2_Ng6_p0.2_trans_two.json | too small by 4 (written before the fix) |
| mom_*_gauge_* | pure-gauge checks; both values are zero to rounding |
| d1_* | no `beta` field; D1 source-step quantities (SOURCES_D1.md), all fields valid |

This table was checked by recomputing `beta` from `w` for every mom_* and umk_* file. Valid files match the formula to rounding. Pre-fix files give exactly 1/4 of it. The betafp files use the per-level formula of BETA_FP.md, not this one; their j = 0 runs reproduce β_1(0) = 0.630 at L = 2.

Single-point values at p = 0.2 (L = 4, two composed steps) carry an O((Lp)²) bias from the plane-wave expansion point (SOURCES_D1_VERIFY.md item 8). The p → 0 fits at L = 2, 3 do not.

## Caches

cache_v2_* directories hold intermediate level data of betafp_recursion_v2.py. They are regenerated on demand and are not tracked by git.

## Other files in numerics/

- Test and diagnostic scripts (test_momentum.py, test_oneloop.py, betafp_test.py, betafp_test2.py, betafp_diag.py) are kept as checks; they produce no results cited as values.
- betafp_recursion.py is the first version of the per-level recursion; betafp_recursion_v2.py (chunked) replaces it for new runs. Results of both are valid.
- The L = 5 runs of ym_momentum.py ran out of GPU memory; umk_beta1.py replaces them for large L (UMK_BETA1.md).
