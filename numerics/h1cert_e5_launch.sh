#!/bin/bash
# E5 box launcher: DMAX = 3 rerun of the 200 FAILED M1 cells of h1cert2 (h1cert_e5.py; 3,200 depth-3 children, ~29 s each).
# Copy to ~/ym next to h1cert_drive2.py h1cert_cell2.py h1cert_rho1.py h2_scan.py h1cert_prof_L13.npz.
# Checkpoint: one JSON per child and one .e5.json per FAILED cell in h1cert2_out_L13_M1_h0.08_sorted_E5/; rerun = resume.
# "wait" first polls every 5 min until unit h1cert2 is not active, then runs. Up to 3 passes; DONE_E5 marks completion.
#   sudo -n systemd-run --unit=h1e5 --collect -p User=$USER -p MemoryMax=7G bash ~/ym/h1cert_e5_launch.sh wait
# Memory test (one child, ~1 min; measured 2026-10-28: 284 MB peak RSS, 45 s wall at load 34): nice -n 19 /usr/bin/time -v python h1cert_e5.py --test e5_test
cd ~/ym && source .venv/bin/activate
export OMP_NUM_THREADS=1 OPENBLAS_NUM_THREADS=1 MKL_NUM_THREADS=1
P=${P:-16}
if [ "$1" = wait ]; then
  echo "$(date -Is) waiting for h1cert2" >> h1cert2_E5_wait.txt
  while systemctl is-active --quiet h1cert2; do sleep 300; done
  echo "$(date -Is) h1cert2 not active; E5 starts" >> h1cert2_E5_wait.txt
fi
for try in 1 2 3; do
  seq 0 $((P - 1)) | xargs -P $P -I{} bash -c "python h1cert_e5.py --shard {} $P >> h1cert2_log_E5_{}.txt 2>&1"
  [ -e h1cert2_out_L13_M1_h0.08_sorted_E5/DONE_E5 ] && exit 0
  echo "$(date -Is) retry $try" >> h1cert2_E5_wait.txt; sleep 60
done
exit 1
