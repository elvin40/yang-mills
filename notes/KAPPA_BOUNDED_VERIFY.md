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
