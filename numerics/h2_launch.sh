#!/bin/bash
# Box launcher (WSL, ~/ym/.venv): (H2) scan rho_2(L; j) = sup_K ||(+)_l H_{j-1}(k_l) H_j(K)|| / L^2 (h2_scan.py, ../H2_LARGE_L.md).
# Needs h2_scan.py, umk_beta1.py, ym_momentum.py, ym_oneloop.py in ~/ym. One JSON per (L, j): results/h2_L{L}_j{j}.json.
# Checkpoint: every evaluated K is written to the JSON at once; a rerun skips cached K (Nelder-Mead replays from the cache) and
# skips a finished (L, j) (key "summary"). The order-0 averaging profile is cached in results/h2_prof_L{L}.npz.
# Run as a transient system unit, with one wsl session kept attached (memory note: wsl-windows-box-long-jobs):
#   sudo -n systemd-run --unit=h2 --collect -p User=elvin -p MemoryMax=14G bash ~/ym/h2_launch.sh
# Cost per K (Mac M-series, measured L <= 9, scaled as L^8): L=5 0.5 s, 7 6 s, 9 43 s, 11 ~3.5 min, 13 ~14 min, 15 ~45 min.
# Memory < 2 GB per job. Phase 1: L = 5, 7, 9 (j = 2, 3, inf; full face grid + coarse 4D grid at L <= 7), four jobs at a time.
# Phase 2: L = 11, 13 (j = 2, inf; 10-point face grid, 12 Nelder-Mead evaluations, 4 off-face probes ~ 26 K each).
# Phase 3: L = 15 (j = inf only, same reduced scan): ~26 x 45 min ~ 20 h. Phase 1 ~ 3 h, phase 2 ~ 12 h (two jobs in parallel).
cd ~/ym && source .venv/bin/activate && mkdir -p results
job() { python h2_scan.py "$@" > "results/log_h2_L$1_j$2.txt" 2>&1; }
export -f job
printf '%s\n' "5 2 --n4 5" "5 3 --n4 5" "5 inf --n4 5" "7 2 --n4 4" "7 3 --n4 4" "7 inf --n4 4" "9 2" "9 3" "9 inf" \
  | xargs -P 4 -I{} bash -c 'job {}'
printf '%s\n' "11 2 --nface 4 --maxfev 12" "11 inf --nface 4 --maxfev 12" "13 2 --nface 4 --maxfev 12" "13 inf --nface 4 --maxfev 12" \
  | xargs -P 2 -I{} bash -c 'job {}'
job 15 inf --nface 4 --maxfev 12
