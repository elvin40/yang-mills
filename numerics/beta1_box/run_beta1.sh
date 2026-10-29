#!/bin/bash
# Box launcher: single-step beta_1(L) at converged grids (SOURCES_T2_F_STEPB_VERIFY.md: Ng >= 2.5L at L = 9, 11).
# Needs t2_fstepb_verify_umk.py umk_beta1.py ym_momentum.py ym_oneloop.py in ~/ym/beta1.
# Skip-if-done: results/t2_fstepb_verify_umk_L{L}_Ng{Ng}_Lp{Lp}.json; resume: same name .partial.npz (K-loop partial sums, every 60 s).
# Outer loop reruns the sequence up to 5 times (survives a killed python); DONE marker when all six JSONs exist.
#   sudo -n systemd-run --unit=beta1 --collect -p User=$USER -p MemoryMax=16G -p Nice=10 bash ~/ym/beta1/run_beta1.sh
# Smoke: bash run_beta1.sh smoke   (L = 5, Ng = 12, Lp = 1 in smoke/, compare with the Mac's L5_Ng12_Lp1.0 JSON)
cd ~/ym/beta1 && source ~/ym/.venv/bin/activate
if [ "$1" = smoke ]; then
  mkdir -p smoke/results && cd smoke && ln -sf ../*.py . && python t2_fstepb_verify_umk.py 5 12 1.0; exit
fi
mkdir -p results
JOBS="9 24 1.0
9 24 0.5
9 24 0.25
11 28 1.0
11 28 0.5
11 28 0.25"
for try in 1 2 3 4 5; do
  left=0
  while read L Ng Lp; do
    [ -e "results/t2_fstepb_verify_umk_L${L}_Ng${Ng}_Lp${Lp}.json" ] && continue
    left=1; echo "$(date -Is) try $try start L=$L Ng=$Ng Lp=$Lp" >> log
    python t2_fstepb_verify_umk.py $L $Ng $Lp >> log 2>&1
    echo "$(date -Is) exit $? L=$L Ng=$Ng Lp=$Lp" >> log
  done <<< "$JOBS"
  [ $left = 0 ] && { touch DONE; echo "$(date -Is) all done" >> log; exit 0; }
done
