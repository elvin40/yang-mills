#!/bin/sh
# Box launcher (WSL, ~/ym/.venv): per-level increments beta_{j+1}(0) by the level-data recursion (betafp_recursion.py).
# Results land one JSON per (L,N,Ng,j,p) in results/ (skip-if-done), so the run resumes after any interruption.
# Arguments: L jmax N Ng p_list [--j list] [--u1] [--gauge]; N = tabulation torus of the level data, Ng = final grid (need L*Ng >= N).
# Mac timings (16 cores, L=2): one-step kernel build ~80 s/level (JAX); Schur tabulation ~45 s/level at N=8, ~4 min at N=12,
# ~12 min at N=16, ~60 min at N=24; final grid ~1 min (Ng=8), ~5 min (Ng=12), ~16 min (Ng=16). Chunked over m_0: memory ~1-4 GB.
# Findings on the Mac (2026-10-27): (i) the second-order data D2 have range ~ x^2 * (Hessian kernel) (second-moment structure),
# so N=8 aliases them (level-1 boundary weight 13%, level-2 40%) and the j>=3 numbers at N=8 are wrong; N>=16 is needed for j>=2
# and N=24 for j>=4; (ii) at j>=1 the final-grid error at Ng=8 is not small at p<=0.2 (beta_2 = 0.425/0.341/0.329 at p=0.1/0.2/0.4,
# 0.337 at Ng=12, p=0.2), so Ng=12 and 16 are needed before any p->0 extrapolation.
# Each line is independent; run in sequence or in parallel (set OMP_NUM_THREADS to split cores). Rough cost per (j,p): N=16: 14 j + 6 min (Ng=12);
# N=24: 62 j + 6 min. Line 1 ~5 h, line 2 ~6 h, line 3 ~20 h, line 4 ~1 h, line 5 (L=3, blocks 984) ~10-20 h.
cd "$(dirname "$0")" && \
python betafp_recursion.py 2 4 16 12 0.2,0.4 > log_betafp_L2_N16_Ng12.txt 2>&1 && \
python betafp_recursion.py 2 4 16 16 0.2,0.4 > log_betafp_L2_N16_Ng16.txt 2>&1 && \
python betafp_recursion.py 2 6 24 12 0.2,0.4 > log_betafp_L2_N24_Ng12.txt 2>&1 && \
python betafp_recursion.py 2 3 16 8 0.2 --gauge > log_betafp_L2_gauge.txt 2>&1 && \
python betafp_recursion.py 3 2 16 8 0.2,0.4 > log_betafp_L3_N16_Ng8.txt 2>&1
