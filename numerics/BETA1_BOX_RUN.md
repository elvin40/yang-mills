# β_1(L) converged-grid run on the Windows box (2026-10-28)

Purpose: the decisive test that SOURCES_T2_F_STEPB_VERIFY.md names: single-step one-loop coefficient β_1(L) at Ng ≥ 2.5L, L = 9 and 11, with the Lp → 0 extrapolation.

## What runs

- Unit `beta1` (transient system unit), started 2026-10-28 14:08:26 PDT. Launch command (inside WSL):
  `sudo -n systemd-run --unit=beta1 --collect -p User=$USER -p MemoryMax=16G -p Nice=10 bash ~/ym/beta1/run_beta1.sh`
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

## GPU venv (2026-10-28)

### Box check

- WSL sees the GPU: `nvidia-smi` shows an RTX 4090 Laptop GPU, 16376 MiB, driver 595.79, CUDA 13.2. No other GPU process ran.
- Disk: 865 GB free on /. RAM: 19 GB total, ~7 GB available (h1cert2, ymbetafp2, and beta1 active, load average ~43).
- CPU venv ~/ym/.venv: Python 3.12.3 (/usr/bin/python3.12), jax 0.12.0.1 (CPU only), numpy 2.5.4, scipy 1.18.1.
- The code already sets `jax_enable_x64` (umk_beta1.py line 12, ym_momentum.py, and ym_oneloop.py). No change was necessary for float64.

### Install

- New venv ~/ym/.venv_gpu: `uv venv --python /usr/bin/python3.12`, then `uv pip install "jax[cuda12]==0.12.0.1" numpy==2.5.4 scipy==1.18.1`. The versions are identical to the CPU venv. The CUDA 12.9 and cuDNN 9.27 pip wheels came with the extra. I did not install a system CUDA toolkit.
- The transient unit `gpuvenv` ran the install (script ~/ym/install_gpu.sh, log ~/ym/install_gpu.log).

### Tests

- Unit `gputest` (~/ym/gpu_test.py): `jax.devices()` = `[CudaDevice(id=0)]`, backend gpu. 4096² matmul: float32 28.9 TFLOP/s, float64 0.67 TFLOP/s. That is the consumer-card FP64 rate, about 1/43 of FP32.
- The default XLA preallocation (75% of 16 GB) fails under WSL with CUDA_ERROR_OUT_OF_MEMORY retries. XLA then falls back to smaller sizes and still runs. The GPU launcher sets `XLA_PYTHON_CLIENT_PREALLOCATE=false` to stop this.
- Smoke test, unit `beta1gpusmoke`, directory ~/ym/beta1/smoke_gpu/, command `t2_fstepb_verify_umk.py 5 12 1.0` in .venv_gpu:
  β = 0.7681671498542626. The Mac gives 0.7681671498542636 and the CPU box run gives 0.7681671498542639. The differences are ~1e-15, so the GPU result is correct.
  Timing: total 319 s, profile 94.5 s, K loop 224.6 s for 1512 K points = 0.149 s per K = **238 µs per (K, l) block**. The CPU figure is 543 µs, so the GPU is **2.3× faster** at the same box load. (The profile build took 94 s here and 59 s on CPU. The profile is numpy plus small jax ops, and the box load is noisy.)
- Only `taus` (the batched 12×12 complex inverses and traces) runs in jax. `csym` (FFT + einsum), `hess_sym`, and `dsym` stay in numpy on the loaded CPU. The ~238 µs that remains is mostly that numpy part. To make the run faster than 2.3×, someone must port `Umk.terms` to jax. That is a code change and I did not do it.
- Batch sizes are similar across L (bs = 20000 // L^4 → 32 × 625, 3 × 6561, and 1 × 14641 matrices per call), so the L = 5 rate should transfer to L = 9 and 11. This is an assumption and I did not measure it.

### Expected runtime on GPU (at 238 µs, present load)

| point | blocks | CPU 543 µs | GPU 238 µs |
|---|---|---|---|
| L = 9, Ng = 24, one Lp | 1.47e8 | 22 h | 9.7 h |
| L = 11, Ng = 28, one Lp | 6.03e8 | 91 h | 40 h |
| all six points | 2.25e9 | ~340 h | ~150 h (6.2 days) |

### Restart command (NOT executed; for the coordinator)

GPU launcher: ~/ym/beta1/run_beta1_gpu.sh. It is a sed copy of run_beta1.sh with one difference: it activates .venv_gpu and exports `XLA_PYTHON_CLIENT_PREALLOCATE=false`. It uses the same results/ directory, the same JSON and .partial.npz names, and the same log. I did not edit run_beta1.sh because the running unit reads it.
Inside WSL:

    sudo -n systemctl stop beta1
    sudo -n systemd-run --unit=beta1 --collect -p User=$USER -p MemoryMax=16G -p Nice=10 bash ~/ym/beta1/run_beta1_gpu.sh

The in-flight point (L = 9, Ng = 24, Lp = 1.0, started 14:08) resumes from its .partial.npz and loses at most 60 s of K loop plus the profile build. Never run the CPU and GPU launchers at the same time: they write the same files. Small risk: if the stop lands during `np.savez`, the .partial.npz can be truncated. In that case, delete that .partial.npz and the point restarts from zero.

## jax port (2026-10-28)

### Code

- numerics/beta1_box/t2_fstepb_verify_umk_gpu.py (copy on the box: ~/ym/beta1/t2_fstepb_verify_umk_gpu.py, md5 e44a0289143067157c70bf84f043bf2e on both). It is t2_fstepb_verify_umk.py plus a jax port of `Umk.terms`: `d0`, `dsym`, `hess_sym`, `csym`, and the body of `terms` are jax.numpy, and one `jax.jit` covers them and both `taus` calls. Float64 everywhere (umk_beta1 sets jax_enable_x64 on import).
- Switch: `--backend numpy|jax`, default numpy. With jax, the script replaces `umk_beta1.Umk.terms` before it calls `umk_beta1.run`. umk_beta1.py is not changed.
- The K loop, the batch size (20000 // L^4), the weighted K sums `W @ g`, and the checkpoint code are the unchanged `umk_beta1.run`. So the JSON and the .partial.npz have the same names and fields as before, and each script resumes the other's checkpoint.
- The arithmetic order inside one block follows the numpy code line by line. The FFT (cuFFT or ducc against pocketfft), exp, and einsum contraction order differ at the ulp level. The reduction over K points is the same numpy code as before.

### Correctness (smoke case L = 5, Ng = 12, Lp = 1.0; reference β = 0.7681671498542636)

| run | β | difference from reference |
|---|---|---|
| Mac, numpy backend (new script) | 0.7681671498542636 | 0 |
| Mac, jax backend, CPU jax 0.12.0.1 | 0.7681671498542644 | 7.8e-16 |
| box, jax backend, GPU (unit portA) | 0.7681671498542632 | 4.4e-16 |

w, ghost, and bord agree to ≤ 5e-15 (Mac jax against Mac numpy). Limit was 1e-12.

Per-K intermediate arrays: on 3 random K points of the grid (indices 962, 772, 1284; seed 0), the script recorded the 20 inputs to the two `taus` calls in the numpy path and compared them with the jax inputs. Largest absolute difference: 1.8e-15 on the Mac (CPU jax) and 3.6e-15 on the GPU. Limit was 1e-13; array scale is O(1–10). The per-K `taus` outputs (sums over the 625 blocks of one K, scale ~8) differ by ≤ 5.7e-14 (Mac) and ≤ 1.7e-13 (GPU). This is the conditioning of the 12×12 inverses on ~1e-15 input differences, not an arithmetic-order effect.

### Timing on the box GPU (unit portA, 2026-10-28 14:34, load average ~45–50, the live beta1 unit active on the same GPU)

Steady-state time per call after compilation, at the batch size of `run` (the profile does not change the cost, so timing.py used random rank-1 profiles with the real shapes):

| L | K per call | blocks per call | jax port | old path (numpy + jax taus), same unit | speed-up |
|---|---|---|---|---|---|
| 5 | 32 | 20000 | 4.23 µs/block | 469 µs/block | 111× |
| 9 | 3 | 19683 | 4.42 µs/block | 603 µs/block | 136× |
| 11 | 1 | 14641 | 4.04 µs/block | 695 µs/block | 172× |

Against the 238 µs/block of the earlier GPU smoke test, the port is ~55× faster. The old-path numbers in this table are higher than 238 µs because the box load was higher. Compilation takes 11–17 s once per point (plus one more for the last, shorter batch).
Real-run check (unit portB, L = 9, below): 5511 K points in ≤ 4.5 min of K loop after the profile build, about 6–7 µs/block with the live beta1 unit sharing GPU and CPU.

### Expected runtime with the port

| point | blocks | at 4.0–4.4 µs | at 7 µs |
|---|---|---|---|
| L = 9, Ng = 24, one Lp | 1.47e8 | 11 min | 17 min |
| L = 11, Ng = 28, one Lp | 6.03e8 | 41 min | 70 min |
| all six points | 2.25e9 | 2.6 h | 4.4 h |

Plus the profile build per point (numpy on the CPU): ~3 min at L = 9 in the live run, longer at L = 11 (not measured). Expected total: about 3–5 h. The K loop is no longer the main cost at L = 9; the profile build is ~25% of each L = 9 point.

### Checkpoint compatibility (unit portB)

Scratch directory ~/ym/beta1_port/resume/ (the live results/ was only read). The script copied the live t2_fstepb_verify_umk_L9_Ng24_Lp1.0.partial.npz (i = 450, written by the running unit at 14:38:34), then ran `timeout 480 python t2_fstepb_verify_umk_gpu.py 9 24 1.0 --backend jax`. The run loaded the checkpoint, built the profile, and wrote checkpoints every 60 s. At the kill (exit 124) the partial had i = 5961 of 22464, written 14:45:51. The file format is unchanged (keys i, g, b).

### Restart command (NOT executed; for the coordinator)

New launcher ~/ym/beta1/run_beta1_gpu2.sh (on the box only). It is a sed copy of run_beta1_gpu.sh; the only functional change is the python line:
`python t2_fstepb_verify_umk_gpu.py $L $Ng $Lp --backend jax >> log 2>&1` (and the same change in the smoke branch). It uses .venv_gpu, `XLA_PYTHON_CLIENT_PREALLOCATE=false`, the same results/ directory, file names, and log. `bash -n` passes.
Inside WSL:

    sudo -n systemctl stop beta1
    sudo -n systemd-run --unit=beta1 --collect -p User=$USER -p MemoryMax=16G -p Nice=10 bash ~/ym/beta1/run_beta1_gpu2.sh

The in-flight point resumes from its .partial.npz. A restart costs the profile build (~3 min at L = 9) plus at most 60 s of K loop. Never run two launchers at the same time: they write the same files. The truncated-.partial.npz risk from the GPU section applies here too.
Note: with the port, 60 s of K loop at L = 9 is ~2000 K points. The checkpoint interval is unchanged.
