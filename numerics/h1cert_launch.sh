#!/bin/bash
# Box launcher (WSL, ~/ym/.venv with numpy, scipy, python-flint 0.9): (H1_L) at L = 13, three level runs (../H2_CERTIFY_L13.md sec. 5).
#   M = 1 (j = 1, Wilson fine kernel), M = 13 (j = 2), M0:169 (every j >= 3 and j = inf in one interval run).
# Copy to ~/ym: h1cert_rho1.py h1cert_cell.py h1cert_drive.py h2_scan.py h1cert_prof_L13.npz (profile cache; else umk_beta1.py,
#   ym_momentum.py, ym_oneloop.py and jax are needed to rebuild it, 74 s).
# Checkpoint: one JSON per top cube in h1cert_out_L13_M{M}_h{H}/ (atomic tmp + rename); a rerun skips finished cubes.
# Run as a transient system unit with one wsl session attached (memory note wsl-windows-box-long-jobs):
#   sudo -n systemd-run --unit=h1cert --collect -p User=elvin -p MemoryMax=14G bash ~/ym/h1cert_launch.sh
# NOT LAUNCHED. With the present cell code (naive cell enclosures) the certifiable half-width at L = 13 is h ~ 0.002-0.02
# (sec. 4), i.e. ~1e8 cubes per level: this script is the harness for the Taylor-1 cell code (G1), not a run to start now.
# Smoke test first (minutes): bash h1cert_launch.sh smoke
cd ~/ym && source .venv/bin/activate
H=${H:-0.05}; P=${P:-16}; DMAX=${DMAX:-3}
if [ "$1" = smoke ]; then python h1cert_cell.py 13 inf 0 5 2.479644 2.479644 pi pi; python h1cert_drive.py 13 inf $H 5 --limit 2 --dmax 1; exit; fi
for M in 1 13 M0:169; do
  N=5
  seq 0 $((P - 1)) | xargs -P $P -I{} bash -c "python h1cert_drive.py 13 $M $H $N --shard {} $P --dmax $DMAX > h1cert_log_L13_${M/:/}_{}.txt 2>&1"
done
