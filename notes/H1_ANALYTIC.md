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

## 2. Structure of the averaging symbol (new lemma, from the path form of P4)

Lemma S. With A(k) := Π_ρ L^{−1}Σ_{t=−h}^{h} e^{ik_ρ t} (h = (L−1)/2) and S_L(k_μ) := Σ_{t=0}^{L−1} e^{ik_μ t},

  E_q(k_l) = E⁰_l − K̂ g_l^†,   E⁰_l := diag_μ( S_L(k_{l,μ}) A(k_l) ),   g_l^† := L^{−4}Σ_{d∈block} avg_i γ_{Γ1_i(0→d)}(k_l),   (2.1)

where γ_Γ(k)_ν = Σ_{links (z,ν) of Γ} ±e^{ik·z} is the symbol of the signed path indicator.
Proof. H2_CERTIFY_P4 Step 1: F^μ = straight_μ + L^{−4}Σ_d avg_{i,j}[Γ1_i(0→d) + seg_μ(d → d+Le_μ) − τ_{Le_μ}Γ1_j(0→d) − straight_μ]. The two straight terms cancel up to the d-average of seg_μ(d), whose symbol is e^{ik·d}S_L(k_μ); averaging over d gives S_L(k_μ)A(k) (centred block). The shift τ_{Le_μ} multiplies the symbol by e^{iLk_μ}; at k = k_l this is e^{iK_μ}, so Γ1 − τΓ1 gives (1 − e^{iK_μ})γ̄ = −K̂_μ γ̄. ∎ (Index conventions read from avg_profile, as in P4 R1.)
Check: ‖P_⊥(E_q − E⁰)‖/‖E_q‖ ≤ 2·10^{−13} at L = 3, 5, 7, 9, 13 (two K each).

Consequences.
- |S_L(k_{l,μ})| = |sin(K_μ/2)/sin(k_{l,μ}/2)| = L|a_{l,μ}| and |A(k_l)| = Π_ρ|a_{l,ρ}|, a_{l,ρ} := sin(K_ρ/2)/(L sin(k_{l,ρ}/2)): the task's averaging symbol. Per direction Σ_{l_ρ=0}^{L−1} a_{l,ρ}² = 1 (Fejér identity), hence Σ_l Π_ρ a_{l,ρ}² = 1.
- P_⊥E_l = P_⊥E⁰_l, and E⁰_lk̂_l = A(k_l)K̂ (S_L(k_μ)k̂_μ = K̂_μ), so P_⊥E⁰_lP_l = P_⊥E⁰_l. Hence P_⊥TP_⊥ = P_⊥ diag(s²Σ_l|E⁰_{l,μμ}|²d^M_μ(k_l)) P_⊥ = P_⊥ diag(L^{−2}Σ_l w_{l,μ}d^M_μ(k_l)) P_⊥, w_{l,μ} := Π_ρa_{l,ρ}²·a_{l,μ}².
- Tower identity (exact, from the Prop. A sum with n = l + L m): σ^{ML}_{n,ρ}(K) = a_{l,ρ}·σ^M_{m,ρ}(k_l), q̃^{ML}_n = L q̃^M_m(k_l), so d^{ML}_μ(K) = L^{−2}Σ_l w_{l,μ} d^M_μ(k_l).   (2.2)
- (2.2) with the previous line proves (I1): P_⊥TP_⊥ = P_⊥diag(d^{ML}(K))P_⊥, so Z = Δ_j(K) (Prop. A at level ML). [P]
