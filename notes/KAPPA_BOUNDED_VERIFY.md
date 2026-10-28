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
