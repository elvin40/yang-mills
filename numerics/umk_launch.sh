#!/bin/bash
# Box launcher (WSL, ~/ym/.venv): beta_1(0) by umklapp sums (umk_beta1.py, ../UMK_BETA1.md), odd L = 5..15, Ng = 8, 12.
# Needs umk_beta1.py, ym_momentum.py, ym_oneloop.py in ~/ym. One JSON per (L,Ng,p) in results/umk_*.json (skip-if-done);
# each job checkpoints its K-grid partial sums every 60 s (results/*.partial.npz) and resumes from them after a kill.
# Run as a transient system unit (the user manager kills session processes), with one wsl session kept attached:
#   sudo -n systemd-run --unit=umk --collect -p User=elvin -p MemoryMax=14G bash ~/ym/umk_launch.sh
# p values: 0.2 and 0.1 (as requested) plus fixed coarse momentum Lp = 1 and 0.5 (p = 1/L, 0.5/L). At L >= 7, p = 0.2 means
# Lp >= 1.4, and the p -> 0 fit in fine p is then not meaningful (the plane-wave bias is O((Lp)^2), NUMERICS.md section 6).
# Cost (Mac M-series, measured to L = 7, extrapolated): ~40 us per (K, l) block; symmetry-reduced grid has 320 (Ng=8) and
# 1512 (Ng=12) points. L = 15: ~2 s per K -> ~11 min (Ng=8), ~50 min (Ng=12) per p; profile ~4 min per p. Memory: ~3 GB per job
# for L <= 11, ~8 GB for L = 13, 15 (one 12x12 block set per l, 50625 l at L = 15). Phase 1 runs L <= 11 four at a time,
# phase 2 runs L = 13, 15 one at a time. Total roughly 8-10 h.
cd ~/ym && source .venv/bin/activate && mkdir -p results
plist() { python -c "L=$1; print(*sorted({0.2, 0.1, 1/L, 0.5/L}))"; }
joblist() { for Ng in 8 12; do for L in $@; do for p in $(plist $L); do echo "$L $Ng $p"; done; done; done; }
run() { xargs -P "$1" -L 1 sh -c 'python umk_beta1.py $0 $1 $2 > results/log_umk_L$0_Ng$1_p$2.txt 2>&1'; }
joblist 5 7 9 11 | run 4
joblist 13 15 | run 1
