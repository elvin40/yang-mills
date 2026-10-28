#!/bin/bash
# Box launcher (WSL, ~/ym/.venv): beta_1(0) by umklapp sums (umk_beta1.py, ../UMK_BETA1.md) for odd L = 5..15.
# Needs umk_beta1.py, ym_momentum.py, ym_oneloop.py in ~/ym. One JSON per (L,Ng,p) in results/umk_*.json (skip-if-done);
# each job also checkpoints its K-grid partial sums every 60 s (results/*.partial.npz) and resumes from them.
# Run as a transient system unit (the user manager kills session processes), with one wsl session kept attached:
#   sudo -n systemd-run --unit=umk --collect -p User=elvin -p MemoryMax=14G bash ~/ym/umk_launch.sh
# Cost model (Mac, single thread per job): time per K ~ L^4 * 12 us + FFTs; L=15: ~0.6 s/K -> Ng=8 ~0.7 h, Ng=12 ~3.5 h per p.
# Memory per job <= ~3 GB (L=15). JOBS parallel jobs, cheapest first.
cd ~/ym && source .venv/bin/activate && mkdir -p results
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
JOBS=${JOBS:-4}
for Ng in 8 12; do for L in 5 7 9 11 13 15; do for p in 0.2 0.1; do echo "$L $Ng $p"; done; done; done |
  xargs -P "$JOBS" -L 1 sh -c 'python umk_beta1.py $0 $1 $2 > results/log_umk_L$0_Ng$1_p$2.txt 2>&1'
