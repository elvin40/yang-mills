#!/bin/bash
# Box launcher (WSL, ~/ym/.venv + python-flint): certified point enclosures of rho_2(inf, K) at L = 3 with h2cert_proto.py
# (../H2_CERTIFY.md section 3). Needs h2cert_proto.py, aw_verify/{hcheck,hscan}.py, aw_verify/B0_L3.pkl, ym_momentum.py in ~/ym.
# Install once: uv pip install --python .venv/bin/python python-flint numpy scipy
# One output file per (point, lmax) in results/h2cert_*.txt; a point is skipped if its file ends with an enclosure line,
# so a killed run resumes at the next point (one point = one job, ~6-15 min at lmax 30-40 on the Mac; no inner checkpoint).
# Run as a transient system unit (the user manager kills session processes), with one wsl session kept attached:
#   sudo -n systemd-run --unit=h2cert --collect -p User=elvin -p MemoryMax=12G bash ~/ym/h2cert_launch.sh
# This is NOT the full certification: the per-cell driver (H2_CERTIFY section 2 (i-a)/(i-b)) is not written yet.
# Memory: lmax 40 box sum is chunked to 81^3 doubles (~4 MB per array); peak < 1 GB per job.
cd ~/ym && source .venv/bin/activate && mkdir -p results
export OMP_NUM_THREADS=1
pts() {  # tag lmax K1 K2 K3 K4: j = inf argmax, one-step argmax on the face, corner, two off-face points
  echo "argmax 40 2.4035 2.4035 pi pi"
  echo "face192 40 1.92 1.92 pi pi"
  echo "corner 40 pi pi pi pi"
  echo "off1 40 2.066 2.145 2.576 2.607"
  echo "off2 40 1.481 1.838 2.429 2.801"
}
run1() {
  out=results/h2cert_$1_l$2.txt
  grep -q "tail included" "$out" 2>/dev/null && { echo "skip $out"; return; }
  python -I h2cert_proto.py "$2" "$3" "$4" "$5" "$6" > "$out" 2>&1
}
export -f run1
pts | xargs -P 5 -L 1 bash -c 'run1 "$@"' _
