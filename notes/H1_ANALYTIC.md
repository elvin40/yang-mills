# H1_ANALYTIC — an analytic bound ρ_1(j, K) ≤ C_* and (H1_L) without a computer

Written 2026-10-27 (Claude, Opus 5.5). Read: H2_LARGE_L.md, H2_LARGE_L_VERIFY.md, H2_CERTIFY_L13.md §1–§2 and §4, H2_CERTIFY_P4.md, U3_REPAIRS.md §1 (Prop. A), numerics/h1cert_rho1.py, numerics/h2_scan.py (qsym, dgrid). Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. No existing file was edited. Scratch scripts in /tmp only.

Status: complete. Result: ρ_1(j, K)² ≤ 10.0 for all j ≥ 1 (incl. ∞) and all K at L = 13; (H1_13) holds with margin 3.0.

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

## 3. The transverse part (proved)

Lemma T. For all j ≥ 1 (M = L^{j−1}, including M = ∞), K ∈ BZ ∖ {0}, odd L ≥ 3:

  ρ_t² := λ_max(Z T2 Z)/L² ≤ γ_L · F(K),   F(K) := 1/(|K|² d̲(K)),   d̲(K) := min_μ Σ_{n∈Z⁴, |n|_∞≤h} Π_ρ σ_{n,ρ}² · σ_{n,μ}² / |q_n|²,   (3.1)

with q_n = K + 2πn, σ_{n,ρ} = sin(K_ρ/2)/(q_{n,ρ}/2) (the M = ∞ Prop. A terms, truncated to |n|_∞ ≤ h = (L−1)/2) and γ_L := sinc(π/(2L))^{−2} (γ_13 = 1.00487).

Proof. (a) T2 = s²Σ_l E_l(P_lD_lP_l)²E_l^† ≤ max_l‖P_lD_lP_l‖·T, and ZTZ = Z (Z = (P_⊥TP_⊥)^+, Z = P_⊥ZP_⊥). So ZT2Z ≤ d_max Z, d_max := max_{l,μ} d^M_μ(k_l).
(b) Upper bound on d^M. In (A.1) every weight c_m := Π_ρ(σ^M_{m,ρ})²(σ^M_{m,μ})² ≤ Π_ρ(σ^M_{m,ρ})², and Σ_mΠ_ρ(σ^M_{m,ρ})² = Π_ρΣ_{m_ρ}(σ^M_{m,ρ})² = 1 (Fejér, for finite M and for M = ∞). So d^M_μ(k) ≤ 1/min_m|q̃^M_m(k)|². Over all l and m the smallest |q̃| is at the representative K_ρ/L in each direction (|K_ρ| ≤ π; 2M sin(x/2M) increases on [0, Mπ]), so d_max ≤ 1/Σ_ρ(2M sin(K_ρ/(2ML)))² ≤ L²γ_L/|K|² (2M sin(x/2M) ≥ 2 sin(x/2) ≥ x·sinc(π/2L) for |x| ≤ π/L).
(c) ‖Z‖ = 1/λ_min(P_⊥diag(d^{ML})P_⊥ on K̂^⊥) ≤ 1/min_μ d^{ML}_μ(K) (compression, (I1)).
(d) Lower bound on d^{ML}, uniform in M. N := ML ≥ L. Each Prop. A term at level N dominates the M = ∞ term with the same n: N|sin(q/2N)| ≤ |q/2| gives σ^N ≥ σ^∞ termwise, and |q̃^N| ≤ |q|. The N-window contains |n|_∞ ≤ h. All terms are ≥ 0, so d^N_μ(K) ≥ the truncated M = ∞ sum. So min_μ d^{ML}_μ ≥ d̲(K).
Combine: ρ_t² ≤ d_max‖Z‖/L² ≤ γ_L/(|K|²d̲(K)). ∎ [P]

Remarks. F is L-independent except through the truncation h (larger h only increases d̲, so F with h = 6 bounds every L ≥ 13). F → 1 as K → 0 (n = 0 term, σ → 1). Nothing in (3.1) depends on j.
Numerical values of F (h = 6 unless noted): K → 0: 1.0000; (π,0,0,0): 3.040; (π,π,0,0): 3.648; corner (π,π,π,π): 4.950 (exact ρ_t-bound input ‖Δ_∞‖ = 195.19 = 1/d); face argmax of ρ_1 (2.48,2.48,π,π): 5.453; coarse 12⁴ sorted grid (h = 3): max 5.83 near (2.30, 2.30, 2.30, 2.86). [N]
Comparison at L = 5, j = ∞, K = (2.4,2.4,π,π): exact ρ_1² = 3.842; d_max‖Z‖/L² = 4.81; γ_5F = 5.47.

## 4. Closed form of the gauge row g (proved; checked)

Lemma G. Let α(κ) := L^{−1}Σ_{t=−h}^{h} e^{iκt} = sin(Lκ/2)/(L sin(κ/2)) (real, |α| ≤ 1), α_ρ := α(k_{l,ρ}) (so |α_ρ| = |a_{l,ρ}|, A(k_l) = Π_ρα_ρ). Then in (2.1)

  g_l^† = γ̄(k_l)^T,   γ̄_ν(k) = Φ_ν · (α_ν − 1)/k̂_ν,   Φ_ν := ¼ Σ_{r=0}^{3} e_r({α_ρ}_{ρ≠ν}) / C(3, r),   (4.1)

e_r = elementary symmetric polynomial. In particular |Φ_ν| ≤ 1 and |g_{l,ν}| ≤ |1 − α_ν|/|k̂_{l,ν}|.
Proof. A monotone axis-ordered path from 0 to d is a concatenation of straight segments; the segment along ν from p to p + d_νe_ν has symbol e^{ik·p}(e^{ik_νd_ν} − 1)/k̂_ν (both signs of d_ν). The coordinates of d are independent and uniform on {−h..h}, so E_d e^{iκd_ρ} = α(κ). If ν is in position r+1 of the axis order, p has the r earlier coordinates of d, which gives the product of their α's and (α_ν − 1)/k̂_ν. The average over the 24 orders gives Φ_ν. ∎
Check: (2.1) with (4.1) reproduces the code's E_q to ≤ 3·10^{−13} (relative) at L = 3, 5, 9, 13, two K each. So the averaging operator of h2_scan/h1cert is fully explicit; no profile file is needed for the bound. [P]

Size. At l = 0 and small k_ν: α_ν − 1 ≈ −(L² − 1)k_ν²/24, so g_0 ≈ ((L²−1)/24)·(−i k_0) ∥ k̂_0, and P_0g_0 is of higher order. Measured |g_0| ≈ 0.135 L at K = (2.4, 2.4, π, π).

## 5. The gauge part (bound proved; size measured)

Write T = T_0 − K̂u^† − uK̂^† + α_TK̂K̂^† with T_0 = diag(d^{ML}(K)) (from (2.1): E_lP_l = E⁰_l − K̂h_l^†, h_l = Ā_lk̂_l/|k̂_l|² + P_lg_l), u = s²Σ_lE⁰_lD_lh_l = diag(ζ)K̂ + u_g, ζ_μ = L^{−4}Σ_lΠ_ρa_{l,ρ}²d^M_μ(k_l)/|k̂_l|², u_g = s²Σ_lE⁰_lD_lP_lg_l. Then n_K^†TP_⊥ = n_K^†diag(v)P_⊥ − |K̂|u_g^†P_⊥ with

  v_μ := d^{ML}_μ − |K̂|²ζ_μ = L^{−4}Σ_l Π_ρa_{l,ρ}² d^M_μ(k_l) [ |K̂_μ|²/|k̂_{l,μ}|² − |K̂|²/|k̂_l|² ]   (5.1)

(L²a_{l,μ}² = |K̂_μ|²/|k̂_{l,μ}|²; at l = 0 and small K the bracket cancels to O(K²)).

Lemma Gauge. With d̲ from (3.1), S_L(K) := L^{−2}Σ_l|k̂_l|^{−2} (= σL²), and the explicit sums (fine d ≤ 1/|k̂|², §3 (b))
  V := L^{−4}Σ_lΠ_ρa_{l,ρ}²|k̂_l|^{−2}·max_μ| |K̂_μ|²/|k̂_{l,μ}|² − |K̂|²/|k̂_l|² |,
  U := L^{−3}Σ_lΠ_ρ|a_{l,ρ}|·max_μ|a_{l,μ}|·|k̂_l|^{−2}·|P_lg_l|,
the gauge term of (1.1) satisfies

  G := λ_max(cc^†)/(σ|K̂|⁴L²) ≤ (1 + τ)²/(|K̂|² S_L),   τ := (V + |K̂|U)/d̲.   (5.2)

Proof. c^†b = K̂^†b − K̂^†TZb, Z = P_⊥ZP_⊥, so |K̂^†TZb| ≤ |K̂|·|n_K^†TP_⊥|·‖Z‖|b|; ‖Z‖ ≤ 1/d̲ (§3 (c), (d)); |n_K^†diag(v)P_⊥| ≤ max_μ|v_μ| ≤ V; |u_g| ≤ s²Σ_l‖E⁰_l‖d_max(k_l)|P_lg_l| ≤ U with ‖E⁰_l‖ = LΠ_ρ|a_{l,ρ}|max_μ|a_{l,μ}|. ∎ [P]

Hence, for every j ≥ 1 and K ≠ 0:   ρ_1(j, K)² ≤ B_L(K) := γ_L F(K) + (1 + τ)²/(|K̂|²S_L).   (5.3) [P]

Measured (L = 13, exact ρ_1² from (1.1) vs B_13, j = ∞ and j = 1, 13 points incl. corner, face argmax, near 0, random): B_13 ≥ ρ_1² at every point. Examples: (2.48,2.48,π,π): ρ_1² = 4.366 (j = ∞), 4.234 (j = 1); B = 5.507 (γF = 5.480, G = 0.028, τ = 2.3). Corner: 4.348 vs 4.997. (2.3,2.3,2.3,2.86): 3.969 vs 5.862. K → 0: 1.000 vs 2.005 (G → 1, γF → 1). G ≤ 0.035 at every sampled K with |K| ≥ 0.5. [N]

## 6. A closed-form majorant of F and the K-sup by interval branch-and-bound

F_CS (proved). Keep in (3.1) only the 16 terms n ∈ {0, −1}⁴ (K ∈ [0, π]⁴ by the sign symmetry of every sum; −1 is the second-nearest representative), and optionally drop the n_ρ = −1 term per direction (choice c ∈ {0,1}⁴). By Cauchy–Schwarz, Σ_εW_ε/|q_ε|² ≥ (Σ_εW_ε)²/Σ_εW_ε|q_ε|², and both sums factorize over ρ because σ_{ε,ρ}²q_{ε,ρ}² = 4 sin²(K_ρ/2) for every ε. Result, with t_ρ := K_ρ/(2π − K_ρ) ∈ [0, 1]:

  F(K) ≤ F_CS(K) := min_{c∈{0,1}⁴} max_μ [ Σ_ρ K_ρ² r_ρ / Σ_ρ K_ρ² ] / Π_ρ S_ρ,   (6.1)
  ρ ≠ μ:  S_ρ = sinc²(K_ρ/2) + c_ρ·4 sin²(K_ρ/2)/(2π − K_ρ)²,   r_ρ = (1 + c_ρ)/(1 + c_ρt_ρ²);
  ρ = μ:  S_μ = sinc⁴(K_μ/2) + c_μ·16 sin⁴(K_μ/2)/(2π − K_μ)⁴,   r_μ = (1 + c_μt_μ²)/(1 + c_μt_μ⁴).

Every factor is a 1D elementary function of one K_ρ. No singularity at K = 0 (c = 0 gives F_CS = 1/(Π_ρ sinc²(K_ρ/2)·sinc²(K_μ/2)) → 1). Point values: sup on a 40⁴ sorted grid 6.875 at (2.42, 2.42, 2.42, 2.98); corner 5.716; (2.48,2.48,π,π) 6.309. It loses ≤ 18% against F.

G on boxes (proved enclosure). In (5.2) every l-term is a product/ratio of 1D functions of K_ρ through k_{l,ρ} = (K_ρ + 2πl_ρ)/L. Enclosures used: sin² on an interval (endpoints + interior extrema); a_{0,ρ} decreasing on [0, π]; α_l = (−1)^{l}|a_l|, so |1 − α| = 1 ∓ |a|; |g_{l,ν}|² ≤ |1 − α_ν|²/|k̂_{l,ν}|², and at l_ν = 0 also ≤ ((L²−1)K_ν/(24L sinc(π/2L)))² (cos x ≥ 1 − x²/2); |P_lg_l| ≤ |g_l| (the projection is dropped; this is the main loss in G); ‖Z‖ ≤ F_CS|K|²; at l = 0, |K|²/|k̂_0|² ≤ L²γ_L and |K̂|²/|k̂_0|² ∈ [min_ρL²a_{0,ρ}², L²] (a ratio of sums), so no 0/0 appears at K = 0. Hence B_L ≤ γ_L F_CS + Ḡ_L is enclosed on any box, including boxes that contain K = 0.

Script (scratch): /tmp/h1a/bb.py. Sorted chamber 0 ≤ K_1 ≤ … ≤ K_4 ≤ π (B_L is invariant under permutations and sign flips of K, so no symmetry of ρ_1 itself is assumed), initial 16⁴ grid, 16-way bisection while the box bound exceeds the target, G inherited from the parent box when that already suffices. Floating point: no directed rounding; the final bound is inflated by 10^{−9} relative. The margins below are > 20%, far above float64 error (≤ 10^{−12} relative on these sums).

## 7. Results

Certified enclosure at L = 13 (bb.py, target 10): sup_{K∈chamber} B_13(K) ≤ 9.9995. 25,169 boxes, 8,075 G evaluations, 0 failed leaves, 95 s on the Mac. Largest box values: γF_CS ≤ 8.31 and Ḡ ≤ 3.45 (not at the same box). [P + interval check]

Point values of the majorants (no boxes; 305 points: 300 random, the corner, the F_CS peak, and points near 0):
| L | sup B (crude: F_CS, |g|) | its γF_CS part | its G part | sharp B (F with h = 6, |P_lg_l|), L = 13 only | measured sup ρ_1² (H2_CERTIFY_L13 §1) |
|---|---|---|---|---|---|
| 13 | 7.98 | 6.91 | 1.05 | 5.86 | 4.366 |
| 15 | 7.67 | 6.90 | 0.77 | — | — |
| 17 | 7.48 | 6.89 | 0.59 | — | — |
| 21 | 7.26 | 6.89 | 0.38 | — | — |
The point maximum is at (2.42, 2.42, 2.42, 2.98) for every L. The gauge part falls like L^{−2} (S_L ≥ (L² − L^{−2})/16 grows while τ ≈ 18–22 stays fixed). The transverse part is L-independent up to γ_L. Near K = 0, B → γ_L + 1 ≈ 2.

Where the loss is. Measured sup ρ_1² = 4.37. Sharp B: 5.86 (ratio 1.34; from ‖PDP‖ ≤ max d and ‖Z‖ ≤ 1/min d, i.e. two norm inequalities that ignore the direction of the extremal b). Crude B: 7.98 (F → F_CS: +18%; |P_lg_l| → |g_l|: G from 0.03 to 1). Box enclosure: 10.0 (first-order width loss of the 1D factors). None of these losses matters for (H1_13): 10.0 < 13.

j-dependence. Nothing in B_L depends on j: §3 (b) bounds the fine symbol d^M by 1/|q̃^M_0| for every M ∈ {1, L, L², …, ∞}, and §3 (d) bounds the coarse symbol d^{ML} from below by the truncated M = ∞ sum for every ML ≥ L. So the bound is uniform in j ≥ 1 including j = ∞. No monotonicity in j and no O5 rate are used.

K → 0. No separate argument is needed. All enclosures are finite on boxes that contain K = 0 (§6), and the point values of B_13 near 0 are ≈ 2.0 (box values are covered by the global ≤ 10.0). At K = 0 itself ρ_1 = 1 (H(0) = L e_{l=0} ⊗ 1).

A tighter certificate (target 9) did not finish in 285 s on the Mac and was stopped. So C_*² = 10 is what is certified.

## 8. Ledger

Proved [P].
- (1.1) exact split of ρ_1² into transverse and gauge parts (H2_CERTIFY_L13 (2.1) with P4's β = σ).
- Lemma S (2.1): E_q(k_l) = E⁰_l − K̂g_l^†, E⁰ the product-symbol (block-average × straight-path) part.
- Lemma G (4.1): closed form of g_l. The averaging operator is fully explicit.
- (I1): P_⊥TP_⊥ = P_⊥diag(d^{ML})P_⊥, so Z = Δ_j (Prop. A at the next level), via the tower identity (2.2).
- Lemma T (3.1): ρ_t² ≤ γ_L F(K), uniform in j (M ∈ {1, L, …, ∞}).
- Lemma Gauge (5.2): G ≤ (1 + τ)²/(|K̂|²S_L).
- (6.1): F ≤ F_CS, a closed form made of 1D factors.
- Box enclosures of γ_LF_CS and Ḡ_L (§6), valid on boxes containing K = 0.

Numerically checked [N].
- (1.1), (I1), Lemma S, Lemma G against the production code (h1cert_rho1, qsym) to 10^{−6} (quadrature) / 3·10^{−13}.
- B_13 ≥ exact ρ_1² at 26 test points (j = ∞ and j = 1).
- Point sups of the majorants at L = 13, 15, 17, 21 (§7 table).

Interval computation [P + check].
- sup over the chamber of B_13 ≤ 10.0 (bb.py; 95 s; float64 without directed rounding, 10^{−9} inflation; margin to 13 is 23%).

Reduced / not done [R].
- No closed-form (pen-and-paper) sup of F_CS over the 4D box. The sup is enclosed by a 95 s interval run on 1D-factorized elementary functions, not by hand. A hand proof would need monotonicity/convexity of F_CS in each coordinate; I did not attempt it.
- Directed rounding is not implemented. The 23% margin makes float error irrelevant in practice, but a strict proof should rerun bb.py with outward rounding (e.g. python-flint arb for the 1D tables).
- L = 15, 17, 21: only point values (≤ 7.67, 7.48, 7.26). The certificate was run only at L = 13. Since every L only needs one certificate, this is enough for (H1_L) at L = 13.
- The scripts are in /tmp/h1a (scratch). They should be copied to numerics/ before a verifier runs them. I did not do this because the task allowed writing only this file.
- Not independently verified.

Final statement. ρ_1(j, K) ≤ C_* = √10 ≈ 3.163 for all j ≥ 1 (including j = ∞) and all K ∈ BZ (K = 0 included: ρ_1(0) = 1) at L = 13. Hence (H1_L) holds at L = 13: sup ρ_1² ≤ 10 < 13. Then (H2) follows at L = 13 with ρ_2 ≤ sup ρ_1² ≤ 10 < 13 (H2_CERTIFY_L13 §1). This is the smallest odd L > 11. The point majorant at L ≥ 15 is ≤ 7.7, but it is not certified there.
