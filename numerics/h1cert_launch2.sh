#!/bin/bash
# Box launcher (WSL, ~/ym/.venv with numpy, scipy, python-flint 0.9): (H1_13) with the G1 certifier (../H2_CERTIFY_L13_G1.md).
# Three level runs: M = 1 (j = 1), M = 13 (j = 2), M0:169 (every j >= 3 and j = inf). Top cells h = 0.08 on [0, pi]^4
# (16 sign flips; DOMAIN=sorted uses the 384-fold chamber, 24x fewer cells, premise P5b), failed cells bisect to depth 3.
# Copy to ~/ym: h1cert_cell.py h1cert_cell2.py h1cert_drive2.py h1cert_rho1.py h2_scan.py h1cert_prof_L13.npz
# Checkpoint: one JSON per cell (atomic tmp + os.replace) in h1cert2_out_<mode>/; restart = rerun this script: finished cells are
# skipped from disk, shard lists are fixed by (mode, shard, 16), bisected cells resume by name. DONE_<mode> marks a finished mode.
# A killed cell loses at most one cell (~10 s per shard). Peak ~0.6 GB per process, 16 processes ~10 GB.
# Run as a transient system unit with one wsl session attached (memory note wsl-windows-box-long-jobs):
#   sudo -n systemd-run --unit=h1cert2 --collect -p User=elvin -p MemoryMax=16G bash ~/ym/h1cert_launch2.sh
# Smoke first (~1 min): bash h1cert_launch2.sh smoke      NOT LAUNCHED (needs Elvin's word).
cd ~/ym && source .venv/bin/activate
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
H=${H:-0.08}; P=${P:-16}; DMAX=${DMAX:-3}; N=${N:-3}; DOMAIN=${DOMAIN:-box}
if [ "$1" = smoke ]; then
  python h1cert_cell2.py 13 inf $H $N 2.479644 2.479644 pi pi
  python h1cert_drive2.py 13 inf $H $N --diag 2 --out smoke_out; exit
fi
for M in 1 13 M0:169; do
  MODE="L13_M${M/:/}_h${H}_${DOMAIN}"
  [ -e "h1cert2_out_${MODE}/DONE_${MODE}" ] && continue
  seq 0 $((P - 1)) | xargs -P $P -I{} bash -c \
    "python h1cert_drive2.py 13 $M $H $N --shard {} $P --dmax $DMAX --domain $DOMAIN >> h1cert2_log_${MODE}_{}.txt 2>&1"
done
