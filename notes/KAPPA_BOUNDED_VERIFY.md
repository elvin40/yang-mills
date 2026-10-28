IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# KAPPA_BOUNDED verification (independent)

Started 2026-10-27. One section per tool call.

## 1. Read KAPPA_BOUNDED.md in full (6 sections)
Claims logged. First flags to test: (a) §1.3 uses (PI)+(F) at Λ=1 (needs Fine(1;f) definition); (b) §2.2 linearity of ∂𝔨_1 in b_2; (c) §2.3 B^(a) term b_0𝔨_1b_1 weight |K|^-6 times |K|^4 = |K|^-2 — check; (d) §5.3 inclusion "2κ_* ≤ 2κ_*(K−k)" and lower side −D′; (e) §4 K=0 argument needs A3 at complex/real K only.

## 2. Read BETA_FP_H (2.2)-(2.4) and BETA_FP_H_VERIFY
- (2.2) has the same form as KAPPA (1.1). Outer Moyal terms vanish in the per-cell trace (VERIFY §3). Good: KAPPA needs no derivative bound on δσ for those terms.
- BETA_FP_H counts b_2 ⊃ b_0{𝔨_1,b_0} ~ |K|^-5 (not -6). With δσ^(0) ~ |K|^4 this is |K|^-1, so fine.
- (M) resolvent step was CORRECTED in VERIFY §5 (N–O zero). KAPPA's t-subdivision remark inherits that status; it does not repair the resolvent defect.

## 3. U1 numbers and L = 3 JSON
- U1 (5.2) sign: U1_VERIFY flagged that the definition and the numbers use opposite signs of κ_k. KAPPA uses the numbers' convention (κ_k = κ_W^F − C_k). With κ_0 = κ_W^F (S_0 = 0, d_0 = 0) this is consistent.
- JSON 'beta' = S_1/4 (L=2, Ng=12, p=0.1: 4·0.157471 = 0.62988 = U1 value).
- L = 3, Ng = 8: S_1(p) = 4·beta = 0.66671 (p=0.1), 0.66916 (0.2), 0.68930 (0.4). Ng = 6, p = 0.2: 0.68392 (Ng not converged at 2% level between 6 and 8).

## 4. d_1 arithmetic (item vii, first part)
p → 0 fits of S_1(p) = 4·beta. L = 3, Ng = 8: 3-point (p², p⁴) fit S_1(0) = 0.6661, 2-point (0.2, 0.4) fit 0.6625. c log 3 = 0.40815. d_1 = −0.258 (3-pt), −0.254 (2-pt). Predicted −0.256: CONFIRMED within grid error. Grid error: Ng 6 → 8 moves S_1(0.2) by 0.015, so d_1(L=3) = −0.256 ± ~0.01.
L = 2, Ng = 12: S_1(0) = 0.6296 (both fits), d_1 = −0.3721, κ_1 = 1.4868 − 0.3721 = 1.1147. CONFIRMED.
Caveat: this is the definition of d_j via S_j, not an independent evaluation of (1.1) from symbols. The identity (1.2) is not tested by it.

## 5. Hand check of Lemma 2.1 (item ii)
- From b_2 = −b_0[𝔨_1b_1 + 𝔨_2b_0 − (ie/2)({𝔨_0,b_1} + {𝔨_1,b_0}) − (e²/8)P_2]: ∂𝔨_1 enters via {𝔨_1,b_0} and via ∂b_1 ∋ −b_0(∂𝔨_1)b_0 in {𝔨_0,b_1}. b_1 has no ∂𝔨_1. 𝔨_1b_1 is quadratic in 𝔨_1 but has no derivative. Linear with f⁰ coefficients: CONFIRMED.
- I recomputed the coefficient of ∂_0𝔨_1 under the trace with cyclicity: (ie/2)[b_0δσb_0∂_1𝔨_0b_0 − b_0∂_1𝔨_0b_0δσb_0]. This equals Y_0 of (2.1). Y_1 = −(Y_0, ∂_1→∂_0): CONFIRMED (with {a,b} = ∂_0a∂_1b − ∂_1a∂_0b).
- Sizes |Y| ≲ |K|^-1, |∂Y| ≲ |K|^-2 need |∂δσ^(0)| ≲ |K|^3 and |∂²𝔨_0| ≲ 1 uniformly; both are in (E0).
- Boundary: inner sphere O(r^-1·r^3) → 0; outer faces cancel because all symbols are conjugated by the same constant matrix under K_μ → K_μ + 2π and ∂ commutes with a constant conjugation. b_0 is singular only at K = 0 (𝔨_0 ≥ c_*|K̂|²). CONFIRMED.
- Minor: "Y_1" is used both for the IBP coefficient Y_ν (ν = 1) and the C⁰ bound on 𝔨_1. Rename one.

## 6. Lemma D′ use (item v)
- (a″): |T − T_0| ≤ C_1γ(K−k) ≤ (b/4)(K−k); with (5.1), T ∈ [(3b/4)(K−k) − 2κ_*, (5b/4)(K−k) + 2κ_*] ⊂ [−2κ_*, (5b/4 + 2κ_*)(K−k)] for K − k ≥ 1. Arithmetic checked.
- LEMMA_DPRIME Steps 2–5 use only continuity from (i) and the bracket (2.1) T̃ ∈ [−D, B′(K−k)] for every clamped trajectory. (a″) supplies it, because clamped couplings lie in ]0, γ]. J enters only Step 1 and Step 6 (to get the lower tail bound). (5.1) replaces both. "No J needed": CONFIRMED. (ii) is implied by (5.1); (iii) is not needed.
- (c′) and the Theorem 2w display: (5/4)c log L·(n−m) + 2κ_*(n−m) = B′(n−m); lower side (3b/4)(n−m) − 2κ_*. CONFIRMED.
- Inherited: (i) is the single-coupling form; history version (L5) not written.

## 7. U3_AW inputs, (B2) at K = 0, A4 (item vi, partial)
- (E0) δσ^(0) ~ |K|^4 with |∂| ~ |K|^3 uniformly: U3_AW §3.4(a) with i = 0 gives it (bound C L^0 on B_{ρ_1}, Schwarz). OK.
- K = 0 argument: |Q_j(εK)| = ε²|Q_j(K)| ≤ C_A ε²|K|² + O_j(ε⁴) ⇒ |Q_j| ≤ C_A|K|². Polarization gives |∂_e∂_f σ^(1)(0)| ≤ 2C_A (author's 4C_A is looser, still correct). (W-2) slaving formula matches U3_AW §3.4(b). CONFIRMED.
- Prop. 4.1 algebra: ±L^{-2}𝒜_j s = ±L^{-4}H†(⊕s)H ≤ L^{-4}N(Δ_j + H†H) ≤ (h²/L⁴)N(Δ_j + 1), using h² ≥ 1. |σ| ≤ N(‖Δ_j‖+1), ‖Δ_j‖ ≤ 16/c_0. CONFIRMED.
- A4 non-applicability: correct that ±s ≤ NΔ forces sd = 0 and s(0) = 0. But the stated reason is incomplete. A3 itself handles a nonzero K = 0 value (τ_c) by subtraction and an explicit longitudinal part from (W-1). The σ^(2) analogue fails for a different reason: (W-2) gives the longitudinal part σ^(2)d = (ie/2){σ^(1), d} + …, which contains ∂σ^(1), and the source Q_j contains L^{-3}∂σ^(1). So the real obstruction is the missing uniform C¹ bound on σ^(1), in two places, not σ^(2)(0) ≠ 0. Also the A3-type transverse bound would need |P_⊥ s_j P_⊥| ≲ |K|² near 0, i.e. uniform C² of the source. Grade: CORRECTED (reasoning), conclusion unchanged.

## 8. (B2) sufficient conditions vs existing numerics; σ^(2) scan feasibility
- U3_AW_VERIFY §5 already ran O1 at L = 3: max_K‖H_j‖/L = 1.652, 1.736, 1.757, 1.760 (j = 1, 2, 3, ∞). So (HS) = (H′) is REFUTED at L = 3 (threshold 1.414). KAPPA §4 and §6 list (HS) as "open" with O1 as the pending test: outdated.
- The same numbers give h/L ≈ 1.76 < L = 3, so h²/L⁴ ≈ 0.34 < 1. The first hypothesis of Prop. 4.1 holds numerically at L = 3 (j ≤ 3 and j = ∞, grid + refinement; sup over all j inferred from the observed convergence). (H″) at n = 2 passes on a coarse grid (2.06 < 2.83).
- So at L = 3 the live route to (B2) is Prop. 4.1 (needs the uniform C¹ bound on σ^(1)) or (H″). KAPPA should state this.
- σ_1^(2)(K) scan: ym_momentum.Step.build makes plane-wave a-expansion kernels (K0, K1, K2 in the wave amplitude a), not the constant-field f-expansion symbols 𝔨_m. U3_AW_VERIFY §7: no d = 4 per-momentum f-code exists. A σ^(2) scan needs new code (constant-field Moyal symbols of C_f and the ghost term, then (3.3) of U3_LEMMA51). Not feasible in 10 minutes. Not run.

## 9. Remaining checks and grades
- (i) Λ = 1: Q̃ = id makes Δ_0(f) the Wilson Hessian and the coarse gauge fixing the fine one, so Γ_c(1; f) = Fine(1; f) exactly; 𝒞(1) = 0, ρ(1) = κ_W^F, d_0 = 0. Fine difference = c log Λ_j by exact scaling Λ⁴F_W(f/Λ²); κ_W^F cancels in it, so κ_j = κ_W^F + d_j is U1 (5.2) rewritten (numbers' sign convention). Numbers reproduced (§4).
- (iii) Degree count: 𝔨_0 = |K|²1 + O(K⁴) (Lemma M + evenness + Feynman gauge fixing), 𝔨_1 = τ_c + γ^(1)(0) + O(K²) (Theorem W + evenness), 𝔨_2 enters only at degree ≥ −2. Subleading parts shift degree by +2. So H_{−4} is level-independent and cancels in (1.1); δσ^(1)(0) = 0 makes b_1δσ^(1) ~ |K|^{-2}.
- (iv) Term-by-term count rederived: every term ≤ C|K|^{-2} after the IBP; d = 4 margin two powers. Uniform in t by convexity of the two-sided bound.
- (M_j) t-subdivision: step ε = C/n from (E0)–(E2); (S1) by convexity; additivity of the t-integral. Plausible; same status as BETA_FP_M Cor. 4.5. It also removes the j < j_1 gap (S3w) of BETA_FP_M. Status [argued]/(S1)–(S3) open is correctly stated.
- Grades: (i) CONFIRMED. (ii) CONFIRMED. (iii) CONFIRMED. (iv) CONFIRMED. (v) CONFIRMED. (vi) CORRECTED: K = 0 bound and Prop. 4.1 algebra correct; A4 obstruction reason incomplete (real obstruction = ∂σ^(1) in (W-2) longitudinal part and in Q_j); (HS) is already REFUTED at L = 3 (U3_AW_VERIFY: ‖H‖/L ≈ 1.76 > 1.41), but h²/L⁴ ≈ 0.34 < 1 holds there, so Prop. 4.1 needs only the C¹ bound on σ^(1). (vii) CONFIRMED for d_1(L=3) = −0.256 ± 0.01 (fits give −0.254 … −0.258); σ_1^(2) K-sup scan NOT RUN: no constant-field f-code exists (ym_momentum is plane-wave), new code needed.
- Overall: Theorem K and Theorem 2w are correct reductions. They remain conditional on (B2), (PI), (F), (M_j), V1, (G2), and (i)/L5.
