#!/bin/bash
# Follow-on to unit beta1 (run_beta1_gpu2.sh, L = 9, 11): same code and checkpoints for L = 13, Ng = 24 at Lp = 1, 0.5, 0.25,
# then Ng = 28 at Lp = 1. Batch per call = 1 K x 13^4 blocks for both Ng (GPU ~2x the L = 11 call). Skip-if-done JSON per point,
# .partial.npz resume every 60 s. "wait" polls every 2 min until unit beta1 is not active (never two launchers on results/ at once).
#   sudo -n systemd-run --unit=beta1L13 --collect -p User=$USER -p MemoryMax=8G -p Nice=10 bash ~/ym/beta1/run_beta1_L13.sh wait
cd ~/ym/beta1 && source ~/ym/.venv_gpu/bin/activate; export XLA_PYTHON_CLIENT_PREALLOCATE=false
if [ "$1" = wait ]; then
  echo "$(date -Is) L13 waiting for beta1" >> log
  while systemctl is-active --quiet beta1; do sleep 120; done
fi
JOBS="13 24 1.0
13 24 0.5
13 24 0.25
13 28 1.0"
for try in 1 2 3 4 5; do
  left=0
  while read L Ng Lp; do
    [ -e "results/t2_fstepb_verify_umk_L${L}_Ng${Ng}_Lp${Lp}.json" ] && continue
    left=1; echo "$(date -Is) L13 try $try start L=$L Ng=$Ng Lp=$Lp" >> log
    python t2_fstepb_verify_umk_gpu.py $L $Ng $Lp --backend jax >> log 2>&1
    echo "$(date -Is) exit $? L=$L Ng=$Ng Lp=$Lp" >> log
  done <<< "$JOBS"
  [ $left = 0 ] && { touch DONE_L13; echo "$(date -Is) L13 all done" >> log; exit 0; }
done
