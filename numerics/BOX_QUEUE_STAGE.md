# BOX_QUEUE_STAGE.md (2026-10-28, box clock PDT; armed 16:38)

Two waiter units are armed on the box. Neither stopped or changed a running unit. At 16:38 these units were active: h1cert2, beta1, ymbetafp2, h1e5 (waiting), beta1L13 (waiting). umk and h2q were inactive before this work and are still inactive.

## 1. E5: DMAX = 3 rerun of the 200 FAILED M1 cells (unit h1e5)

Files (Mac copy = box copy, md5 checked):
- numerics/h1cert_e5.py -> ~/ym/h1cert_e5.py (md5 c317456c3f5ae29fa8f02139927bb770)
- numerics/h1cert_e5_launch.sh -> ~/ym/h1cert_e5_launch.sh (md5 4cb2c9d795026a751c745e1c8aaf0c32)

What it does:
- It reads the 200 records with status FAILED from h1cert2_out_L13_M1_h0.08_sorted/. It only reads that directory. The DONE marker and the old JSONs stay unchanged. This is different from the PLAN line 436 text ("move DONE aside, rewrite JSONs"): the original M1 record stays intact.
- For each FAILED cell X (depth 2, h = 0.02), it calls h1cert_drive2.run_cell on the 16 children X_k (depth 3, h = 0.01) with dmax 3. The parameters are those of the M1 run: L = 13, M = 1, N = 3, threshold sqrt(13) − 1e-6. A child that fails is FAILED, not split.
- Output directory: ~/ym/h1cert2_out_L13_M1_h0.08_sorted_E5/. It has one X_k.json per child (atomic write, skip-if-done) and one X.e5.json per FAILED cell (status ok iff all 16 children are ok, plus max child ub). It writes DONE_E5 (counts, max ok child ub, list of cells that still fail) when all 200 .e5.json files exist.
- 16 shards (xargs -P 16), shard i takes the sorted FAILED names with index % 16 == i. Up to 3 passes.
- Logs: ~/ym/h1cert2_log_E5_{0..15}.txt; the wait and retry lines are in ~/ym/h1cert2_E5_wait.txt.

Command (inside WSL), executed:

    sudo -n systemd-run --unit=h1e5 --collect -p User=elvin -p MemoryMax=7G bash ~/ym/h1cert_e5_launch.sh wait

Trigger: the launcher's `wait` branch polls `systemctl is-active --quiet h1cert2` every 300 s. It starts the 16 shards when h1cert2 is not active. I did not use After=/BindsTo=: h1cert2 is a transient unit with --collect, and ordering dependencies on a transient unit do not wait for the unit's exit.

Memory test (unit e5test, Nice 19, one child t1540_0_0_0, output in a scratch directory that I deleted): peak RSS 284 MB, 37 s CPU, 45 s wall at load average 34. Result: ok, ub 1.608 (the parent had 9.63 at depth 2). 16 shards are about 4.5 GB. MemoryMax 7G gives about 50% margin. Box budget after h1cert2 exits: ymbetafp2 ≤ 8G cap (3.9 GB now), beta1/beta1L13 about 2–4 GB, E5 about 4.5 GB, so about 10–16 GB of 19 GB.

IMPORTANT, start time: h1cert_loop2.sh runs three modes, M1, M13, and M0:169. It exits only when all three DONE markers exist. So "after h1cert2 exits" means after M0:169, not after M13.
- M13 progress at 16:35: 3,998 of 8,855 top cells after 8.0 h (started 08:35). That is about 500 top cells per hour, so M13 ends about 02:30 Oct 29 (later if many cells split).
- M0:169 cost is not measured. M1 took 8.9 h and M13 takes about 18 h. If M0:169 takes 18–30 h, h1cert2 exits between about 20:00 Oct 29 and 08:00 Oct 30.
- E5 run: 3,200 children × about 40 s / 16 shards ≈ 2.2 h at the present load, less on a box without h1cert2. Expected end: 2–3 h after h1cert2 exits.
- If the coordinator wants E5 to start after M13 (the PLAN line 436 intent), replace the wait loop condition with `[ ! -e h1cert2_out_L13_M13_h0.08_sorted/DONE_L13_M13_h0.08_sorted ]`. E5 then runs at the same time as M0:169: 32 CPU-bound processes on 32 logical cores, and both jobs run slower. Memory is sufficient (about 4.5 + 4.5 GB). I did not make this change.

Cancel: `sudo -n systemctl stop h1e5` (safe in the wait phase and in the run phase).

If it dies at minute N:
- Wait phase: there is nothing to lose. The waiter must be armed again with the same command, because transient units do not survive a VM death.
- Run phase: all finished child JSONs and .e5.json files remain. A kill loses at most the 16 in-flight children (about 45 s each). Restart with the same command, without `wait` if h1cert2 is already gone.

## 2. β_1 at L = 13 (unit beta1L13)

The beta1 unit runs run_beta1_gpu2.sh with a JOBS list fixed in the script (L = 9 Ng 24, L = 11 Ng 28). A list in a running bash script cannot be appended safely. I did not edit the script and did not restart the unit. Instead, a follow-on unit waits for beta1 to exit.

File: numerics/beta1_box/run_beta1_L13.sh -> ~/ym/beta1/run_beta1_L13.sh (md5 fd8b81fd33ac0ac87b6e777ca314e76d). It is a copy of run_beta1_gpu2.sh with a new JOBS list and a `wait` branch (polls `systemctl is-active --quiet beta1` every 120 s). It uses the same code (t2_fstepb_verify_umk_gpu.py --backend jax, .venv_gpu, XLA_PYTHON_CLIENT_PREALLOCATE=false), the same results/ directory, and the same log. When all four points exist, it writes DONE_L13.

Points, in order: L = 13, Ng = 24, Lp = 1.0, 0.5, 0.25; then L = 13, Ng = 28, Lp = 1.0.

Command (inside WSL), executed:

    sudo -n systemd-run --unit=beta1L13 --collect -p User=elvin -p MemoryMax=8G -p Nice=10 bash ~/ym/beta1/run_beta1_L13.sh wait

GPU memory: 1,846 MiB of 16,376 MiB is in use at L = 11 (one K per call, 11^4 = 14,641 blocks). At L = 13 the batch is max(1, 20000 // 13^4) = 1 K, so 28,561 blocks per call, about 2× the L = 11 call, about 3.6 GB. The batch shape does not depend on Ng, so Ng = 28 needs the same GPU memory as Ng = 24. I did not run a live GPU test because it would share the GPU with the running beta1 unit. Host RSS of the L = 11 process: 1.9 GB. MemoryMax 8G allows about 2× growth at L = 13. The profile does not depend on Ng.

Wall time, from the box timings:
- Measured: L = 9 Ng 24, 785 s per point (profile 180 s, K loop 4.1 µs per block). L = 11 Ng 28, 3,070 s (profile 312 s, 4.6 µs per block).
- L = 13: profile about 490 s (L^2.7 scaling from L = 9 and 11). Blocks: Ng 24 = 22,464 × 28,561 = 6.4e8; Ng 28 = 41,160 × 28,561 = 1.18e9.
- At 5 µs per block: Ng 24 about 62 min per point, Ng 28 Lp 1.0 about 107 min. Total about 5.0 h. At 7 µs per block: about 6.6 h.
- Start: beta1 began L = 11 Lp 0.5 at 16:18:49. Lp 0.5 and 0.25 take about 51 min each, so beta1 ends about 18:00 and beta1L13 starts about 18:00–18:05.
- Expected end: about 23:00 Oct 28 to 00:45 Oct 29.

Cancel: `sudo -n systemctl stop beta1L13`. In the wait phase this is safe. In the run phase, the in-flight point keeps its .partial.npz (see below).

If it dies at minute N:
- Wait phase: nothing to lose. Arm again with the same command after a VM death.
- Run phase: every finished point keeps its JSON. The in-flight point resumes from its .partial.npz (written every 60 s). A restart costs the profile build (about 8 min at L = 13) plus at most 60 s of K loop. Small risk: a kill during np.savez can truncate the .partial.npz. Then delete that file, and the point starts again from zero (≤ 2 h lost).
- Never run beta1 and beta1L13 at the same time. They write the same log and results/ directory (different file names, but the GPU is shared). The wait branch prevents this.

## 3. Common risk

Both waiters are transient units. A VM death (no attached wsl session for about 1 min) kills them and the units they wait for. The memory note wsl-windows-box-long-jobs applies: one wsl session must stay attached. After a VM death, the coordinator must restart h1cert2 and beta1 and arm both waiters again.

## Option B applied (coordinator, 2026-10-28 16:43)
h1e5 re-armed: starts when h1cert2_out_L13_M13_h0.08_sorted/DONE_L13_M13_h0.08_sorted exists and units beta1 and beta1L13 are inactive; P=8 shards (--setenv), MemoryMax 4G (expected ~2.3 GB). Old launcher kept as h1cert_e5_launch.sh.bak. Expected start ~02:30 Oct 29, end ~5 h later at 8 shards under M0:169 load. Cancel: sudo -n systemctl stop h1e5.
