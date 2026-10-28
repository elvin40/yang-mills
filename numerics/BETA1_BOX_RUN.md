# β_1(L) converged-grid run on the Windows box (2026-10-28)

Purpose: the decisive test that SOURCES_T2_F_STEPB_VERIFY.md names: single-step one-loop coefficient β_1(L) at Ng ≥ 2.5L, L = 9 and 11, with the Lp → 0 extrapolation.

## What runs

- Unit `beta1` (transient system unit), started 2026-10-28 14:08:26 PDT. Launch command (inside WSL):
  `sudo -n systemd-run --unit=beta1 --collect -p User=elvin -p MemoryMax=16G -p Nice=10 bash ~/ym/beta1/run_beta1.sh`
- Launcher: numerics/beta1_box/run_beta1.sh (copy at ~/ym/beta1/run_beta1.sh). Sequence, one job at a time:
  L = 9, Ng = 24, Lp = 1.0, 0.5, 0.25; then L = 11, Ng = 28, Lp = 1.0, 0.5, 0.25 (p = Lp/L).
- Code on the box, ~/ym/beta1/: t2_fstepb_verify_umk.py, umk_beta1.py, ym_momentum.py, ym_oneloop.py. md5 identical to numerics/ on the Mac.
- The units h1cert2 and ymbetafp2 were not touched. Both were active after the launch.
- The Mac partial checkpoint L9_Ng12_Lp0.5 was not copied: Ng = 12 is not in this sequence, so the run cannot use it.

## Checkpoints and restart

- One result per point: ~/ym/beta1/results/t2_fstepb_verify_umk_L{L}_Ng{Ng}_Lp{Lp}.json (skip-if-done).
- In-flight point: same name with .partial.npz (index of the next K batch and the weighted partial sums of ghost and border traces), written every 60 s by umk_beta1.run. A kill loses at most 60 s of the K loop plus the profile build.
- The launcher passes over the sequence up to 5 times, so a killed python process restarts from its .partial.npz. When all six JSONs exist it writes ~/ym/beta1/DONE.
- Restart after a VM death: run the same systemd-run command again. Finished points are skipped, the in-flight point resumes.
- Log: ~/ym/beta1/log (start/exit line per point, plus the result dict printed by the script).

## Smoke test (passed)

Unit beta1smoke, L = 5, Ng = 12, Lp = 1.0, in ~/ym/beta1/smoke/. Result β = 0.7681671498542639. The Mac JSON gives 0.7681671498542636 (agreement 3e-16). w, ghost, and bord also agree to ~1e-15.

Timing on the box (load average 36–44 on 32 cores, h1cert2 + ymbetafp2 active, nice 10): total 572 s, profile 59 s, K loop 513 s for 1512 K points = 0.339 s per K = 543 µs per (K, l) block (625 blocks per K). The Mac did the same point in 44 s (39 µs per block). So the box under the present load is ~14× slower than the Mac.

## Expected runtime

Cost per point ≈ nK(Ng) × L^4 × t_block. Symmetry-reduced grid: nK = Ng · (Ng/2) · (Ng/2)(Ng/2 + 1)/2, so nK ∝ Ng^4 approximately. This gives nK = 22464 (Ng = 24) and 41160 (Ng = 28).

| point | blocks | at 543 µs (box, present load) | at 39 µs (Mac rate, box idle: assumption) |
|---|---|---|---|
| L = 9, Ng = 24, one Lp | 1.47e8 | 22 h | 1.6 h |
| L = 11, Ng = 28, one Lp | 6.03e8 | 91 h | 6.5 h |
| all six points | 2.25e9 | ~340 h (14 days) | ~24 h |

The real time lies between the two columns. h1cert2 has an expected 4–9 h left from its launch, and after it finishes the per-block time should fall toward the right column. The idle-box rate is not measured; it is an assumption based on the Mac rate. Profile builds (minutes at L = 9, 11) are not in the table.
Possible speed-ups (not done): run the three Lp values of one L in parallel after h1cert2 ends (memory ~1–3 GB per job), or install a CUDA jaxlib (the box has the 4090, jax is CPU-only now).

## How to read results

On the box: `cat ~/ym/beta1/results/*.json`, `tail ~/ym/beta1/log`. Progress of the in-flight point:
`python -c "import numpy as np; print(int(np.load('<file>.partial.npz')['i']))"` against nK above.
Fields: beta = 4w/(L^4(1 − cos p)) is β_1(L) at that Lp; beta_ghost, beta_bord are the parts; secs, prof_secs are timings.
Extrapolate Lp → 0 per L in (Lp)^2 (the plane-wave bias is O((Lp)^2), NUMERICS.md section 6), with the three points Lp = 1, 0.5, 0.25.

## Comparison target

c = 11N²/(12π²) = 0.3715 per unit log L (N = 2). Verifier values: β_1 = 0.74233 at L = 5, 0.79024 at L = 7. The slope test is β_1(9) − β_1(7) against 0.3715 · log(9/7) = 0.0934, and β_1(11) − β_1(9) against 0.3715 · log(11/9) = 0.0745.
