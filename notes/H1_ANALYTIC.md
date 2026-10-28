# H1_ANALYTIC — an analytic bound ρ_1(j, K) ≤ C_* and (H1_L) without a computer

Written 2026-10-27 (Claude, Opus 5.5). Read: H2_LARGE_L.md, H2_LARGE_L_VERIFY.md, H2_CERTIFY_L13.md §1–§2 and §4, H2_CERTIFY_P4.md, U3_REPAIRS.md §1 (Prop. A), numerics/h1cert_rho1.py, numerics/h2_scan.py (qsym, dgrid). Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. No existing file was edited. Scratch scripts in /tmp only.

Status: in progress. Sections are appended as the work proceeds.

## 0. Plan

ρ_1² L² |b|² = |H b|² splits exactly into a transverse part and a gauge part (H2_CERTIFY_L13 (2.1), with β = σ by P4). I bound the transverse part by "largest fine propagator × coarse energy", and the coarse energy by Prop. A at level ML. The ratio is an explicit elementary function of K. The gauge part is bounded separately.

## 1. Exact split and two identifications (checked numerically, L = 3, 5)

Notation as H2_CERTIFY_L13 §2.1: s = L^{−2}, E_l = E_q(k_l) (4×4), P_l = 1 − n_ln_l^†, n_l = k̂_l/|k̂_l|, D_l = diag(d^M(k_l)), M = L^{j−1}; T = s²Σ_l E_lP_lD_lP_lE_l^†, T2 = s²Σ_l E_lP_lD_lP_lD_lP_lE_l^†, σ = s²Σ_l|k̂_l|^{−2}; P_⊥ = 1 − K̂K̂^†/|K̂|², Z = (P_⊥TP_⊥)^+. By (2.1) and P4 (β = σ):

  ρ_1(j, K)² L² = λ_max( Z T2 Z + c c^†/(σ|K̂|⁴) ),   c^† := K̂^†(1 − T Z).   (1.1)

The first term is the transverse part of Hb, the second the pure-gauge part k̂_l y/|k̂_l|²; they are orthogonal per block.

(I1) P_⊥ T P_⊥ = P_⊥ diag(d^{ML}(K)) P_⊥, with d^{ML} the Prop. A symbol at level ML in coarse units. So Z = Δ_{j}(K) of Prop. A (the next-level kernel). Measured: agreement to 10^{−6} (quadrature of dgrid) at 4 K × 2 levels × L = 3, 5. Proof in §2.
(I2) (1.1) reproduces h1cert_rho1.rho1 to 10^{−6} at the same 16 points (e.g. L = 5, j = ∞, K = (2.4, 2.4, π, π): 1.960196 both).
(I3) T is not block-diagonal in (K̂, K̂^⊥): ‖P_⊥TK̂‖/(‖T‖|K̂|) = 0.02–0.07 at generic K (0 at the corner). So c contains a cross term K̂^†TZ of size ≈ 0.3–0.4 at L = 3, 5.
