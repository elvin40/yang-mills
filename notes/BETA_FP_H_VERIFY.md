# BETA_FP_H verification

Independent check of BETA_FP_H.md (2026-10-27).

## 1. Read (BETA_FP_H full; LEMMA43 §2, §4–5; LEMMA43_VERIFY §3–7; U3_LEMMA51 (1.2), §3; R23 §3c; U3_AW §0–§3; SOURCES_D1_VERIFY V4)
- Note: BETA_FP_H's read list does not include U3_AW.md. U3_AW §3.3 (Theorem W) claims σ_j^{(1)}(0) = τ_c := (3ie/2)(E_10 − E_01) for every j ≥ 0, from the exact Ward identity Δ_j(f)D_f = 0 (Theorem W0). BETA_FP_H still lists (W) as open.
- Name collision: U3_AW §0/§4 uses "(H′)" for the inequality sup‖H_j(K)‖ < L√(L − 1). BETA_FP_H uses "(H′)" for the Lemma 5.1 statement plus (W). Rename one.

## 2. Item (1): Prop. 2.1 exact at V_f; Λ only through σ_j
- Prop. 2.1 needs (G1) = {ΔD = 0, Q̃D = D_cι_a^T}. Q̃D = D_cι_a^T is exact at any background (LEMMA43_VERIFY §4, lattice 1e−15). ΔD = 0 holds exactly at U_0^φ because U_0^φ is critical (U3 Lemma 5.0; U3_AW Theorem W0 (i) gives the same derivation). With J = 0 the stationary value Δ_j(f) is the exact Hessian of A_Λ at V_f. Prop. 2.1 applies with Q̃ = composed C_f (only covariance is used). So (1.1) holds exactly.
- Λ-dependence: Fine depends on Λ only through φ = f/Λ²; D_c(f) and the coarse ghost are Λ-independent; the coarse gluon depends on Λ only through Δ_j(f). Correct.
- Caveats (not errors): (a) per-cell densities only (constant zero modes; flux quantization on a torus, as LEMMA43_VERIFY §3 noted); (b) both brackets are log|det| (N–O band), the identity is algebraic so this is fine.
- (H′) vs U3_LEMMA51 (1.2): same sup norm, |α| ≤ 2, m = 1, 2, constant C r_j. (H′) adds (W) and analyticity of σ_∞ near the real BZ (only bounded derivatives of order ≤ 2 are used). Correct as stated.
- IR weights derived: Prop. 2.1 proof checked. m = 0 from Lemma 4.1 (verified in LEMMA43_VERIFY §5). m = 1: Taylor at 0 with δσ^{(1)}(0) = 0 (W), ∇δσ^{(1)}(0) = 0 (evenness, proved in U3_AW §2, Prop. E), second derivatives ≤ r_j. m = 2: α = 0. Correct.
Grade (1): CONFIRMED.
## 3. Item (2): power count from (2.2)
- Weights: f has weight 2, K weight 1. b_0 = 𝔨_0^{−1} ~ |K|^{−2} (Feynman form, Lemma 4.1 two-sided bound). b_1 = −b_0𝔨_1b_0 + (ie/2)b_0{𝔨_0, b_0}: 𝔨_1(0) = τ_c ≠ 0, so b_1 ~ |K|^{−4} (not smaller). b_2: b_0𝔨_1b_1 ~ |K|^{−6}; b_0{𝔨_0, b_1} ~ |K|^{−2}·|K|·|K|^{−5} = |K|^{−6}; b_0P_2(𝔨_0, b_0) ~ |K|^{−2}·1·|K|^{−4} = |K|^{−6}; b_0{𝔨_1, b_0} ~ |K|^{−5}; b_0𝔨_2b_0 ~ |K|^{−4}. So |b_m| ≤ C|K|^{−2−2m}. Confirmed term by term.
- Where |K|^{−6} comes from: the f² coefficient of tr[𝒦_t^{−1} ⋆ δ] pairs b_2 (three propagators and two spin vertices, or one P_2 bracket) with δσ^{(0)}. So F⁰ ~ |K|^{−6}|δσ^{(0)}|, F¹ ~ |K|^{−4}|δσ^{(1)}|, F² ~ |K|^{−2}|δσ^{(2)}|. Correct.
- d = 4 integrability (a < 4) gives weights |K|^{2+s}, |K|^s, |K|^{−2+s}. Correct. With (2.4) every integrand is ε|K|^{−2}, so |d_j| ≤ Cε_j. Correct.
- Simplification: for the per-cell trace of a product of two covariant operators, (a ⋆ b)(0) = Σ_w a(w)b(−w)e^{i(ef/2)w∧(−w)} and w∧w = 0. So the outer Moyal terms {b_m, δσ^{(n)}}, P_2 vanish identically in the trace, not only as total derivatives. The boundary-term count in §2.1 is correct but not needed.
- Derivative budget (σ^{(0)} ≤ 2, σ^{(1)} ≤ 1, σ^{(2)} = 0) matches U3_AW §0 (derivative budget). Correct.
- Caveat: (2.2) is the formal f² coefficient; equality with the true f² coefficient of δΓ_j is (M) (see §5 below).
Grade (2): CONFIRMED.
## 4. (F): source check
- Source found: G. Savvidy, "From Heisenberg-Euler Lagrangian to the discovery of chromomagnetic gluon condensation", arXiv:1910.00654 (review by the original author), eq. (1.4): L_g = −F − (11N/(96π²)) g²F [ln(2g²F/μ⁴) − 1], F = (H² − E²)/2. Its reference list gives the original as Savvidy, Phys. Lett. 71B (1977) 133, doi:10.1016/0370-2693(77)90759-6. The author's citation is correct.
- Pure magnetic field: L = −H²/2 − (11N/(96π²)) g²H² [ln(gH/μ²) − ½]. SU(2): 11/(48π²). In 1/g² units: 1/g²(H) = 1/g² + (11N/(48π²)) ln(gH/μ²) = 1/g² + (2b_0/(16π²))·½ ln((gH)²/μ⁴), b_0 = 11N/3.
- Convert to Wilson β = 2N/g² and fine flux φ ∝ gHa²: coefficient of ln(1/φ) relative to the tree term = 2N·11N/(48π²) = 11N²/(24π²) = c_2. c = 2c_2 = 11N²/(12π²) = 0.371511 (SU(2)). Matches BETA_FP_H and LEMMA43_VERIFY §5.
- Split: 11/3 = 4 (paramagnetic spin) − 1/3 (orbital) = 2·(2 − 1/6); in background Feynman gauge: 4 gluon components −4/6, spin +4, ghost +2/6, i.e. gluon 10/3 + ghost 1/3. Matches §3.3(c).
- Lattice = continuum log coefficient: standard (the log comes from |φ|^{1/2} ≪ |q| ≪ 1, where the lattice operator is the continuum one). Not proved in the file, but this is the usual background-field lattice result.
- "Real part": the N–O imaginary part is ∝ φ² with no log, so it does not change c_2. Correct.
Grade (F): CONFIRMED (now checked against the source).

## 5. Item (3): Theorem 3.1, (PI), (M), dimension count, remainder
- Logic of the proof: given (PI) the left side of (1.1) is analytic in f; the Fine Λ-difference gives c log(Λ/Λ′) exactly by scaling Λ⁴F_W(f/Λ²); the coarse Λ-difference gives d_j − d_{j′} by (M). So 𝒞(Λ) − c log Λ + d_j is j-independent. Correct. The B constant and Γ_c(∞)/f² (non-existent) are not needed. Correct.
- (PI): the transversality + hypercubic step is correct (P_μ·δ_{μν}P_μ² = P_ν³ forces its coefficient to 0; one O(P²) structure). For the σ_3 abelian background, cubic and quartic A-terms give f³, f⁴ at constant field, so the f² coefficient is the second-order kernel. Standard; per-cell limit for the linear potential not written. SOURCES_D1_VERIFY item 8 is about the plane-wave expansion point (U_0 vs U_1), not about probe equivalence. It supports §4 step 1, not (PI). The file uses it only in §4, so no misuse. (PI): argued, plausible.
- (M), ERROR in one step. The file says ‖𝒦_t^{−1}‖ ≤ C/|f| for |K| < |f|^{1/2} because "the Landau levels (2n+1 ± 2)|ef| never hit 0". In d = 4 the charged eigenvalues are (2n+1)|ef| ± 2|ef| + k_⊥², k_⊥ = (K_2, K_3). The n = 0 spin-down mode has eigenvalue k_⊥² − |ef|, which is 0 on the sphere k_⊥² = |ef|, inside the region. So the resolvent bound is false; Tr[𝒦_t^{−1}·δ] is not absolutely convergent there (log singularity in k_⊥²). Repair: bound the log|det| difference directly (log|λ| is integrable across a simple zero); the region then plausibly contributes O(ε_j f² ·|f|·log) = o(f²). So the conclusion of (M) is plausible, but the stated argument is wrong at this step.
- Dimension count: dim 5 absent by evenness (proved, U3_AW §2); Maxwell coefficient exactly 1 (Lemma M of U3_AW); Λ-dependence first at dim 6 → δσ^{(m)} ~ ε|K|^{4−2m}. Correct; and Prop. 2.1 gives the rigorous version, as the file says.
- Remainder: O(ε_j) = O(max(r_j, Λ^{−2})). With R23_VERIFY rates, O(Λ^{−2}(log Λ)²); O(Λ^{−2}) needs (N). Correct as stated. Sharper: U3_AW §3.4(b) slaves σ^{(2)}(0) to the K² part of σ^{(1)}, giving r_j = jL^{−2j} for m = 2 too (conditional on C² control of e^{(1)}), so the remainder becomes O(Λ^{−2} log Λ) without (N). r_j itself still rests on (A) (open quantitatively; U3_AW §4.7).
Grade (3): CORRECTED (theorem logic and remainder correct; the resolvent step of (M) is false and must be replaced by a log|det| bound; remainder improvable to Λ^{−2} log Λ via U3_AW §3.4(b)).
## 6. Items (4), (5), (6)
- (4) vs U3_AW §3. Hand check of Theorem W: differentiate (W-1) at K = 0; with d(0) = 0, ∂d(0) = i e_ν, ∂σ^{(0)}(0) = 0 and the Maxwell Hessian 2δ_{νρ}δ_{αβ} − δ_{να}δ_{ρβ} − δ_{ρα}δ_{νβ}, I get σ^{(1)}(0)e_ν = (3ie/2)(δ_{ν0}e_1 − δ_{ν1}e_0), i.e. τ_c. Algebra agrees. U3_AW_VERIFY.md is in progress (15 lines) and has no grade for Theorem W yet.
- Consistency: τ_c has the form allowed by Prop. 3.2(a): (0,1) block b·J with b imaginary, (2,3) block 0. So (a) is consistent, and U3_AW fixes s_j = 1 for every j ≥ 0. Prop. 3.2(b)–(c) (finiteness ⇒ s_j ∈ {1, s_*}) is then moot. Note (c) also depends on (M), whose resolvent step is false (§5). With U3_AW, (W) holds with j_0 = 0, and (H′) reduces to U3_LEMMA51 (1.2) alone. BETA_FP_H ledger entries R2 "(W) [open]", R3, and O2 are outdated.
- Side remark on (b): with g(s) ∝ 4s² − 1/3 (spin s², orbital and ghost s-independent) and g = 11/3, the second root is s_* = −1. Not needed.
Grade (4): (a) CONFIRMED; (b)–(c) superseded by U3_AW Theorem W (consistent, not contradicted).
- (5) Numerics. §4 step 1 matches SOURCES_D1_VERIFY item 8 including its L² correction (the file uses Lp). Step 2 rests on (PI). Step 3 (split pieces not plane-wave-safe) is correct reasoning. Bias O((Lp)²) ≈ 1e−2 at L = 4, p = 0.2 agrees with item 8.
Grade (5): CONFIRMED (argued level, as labeled).
- (6) Even L. Without evenness, Taylor + (W) give |δσ^{(1)}| ≤ r_j|K|; F¹ integrand r_j|K|^{−3}, integrable in d = 4. f⁰ data depend only on |χ_M|², so still even. Remainder O(Λ^{−1}) given (H′) at rate M^{−1}. Correct power count. The Theorem W proof uses only d(0) = 0, ∂σ^{(0)}(0) = 0 (positivity at a zero) and the Hessian of σ^{(0)} at 0, so (W) plausibly extends to even L, but Lemma M uses O5 (odd L). Arithmetic: c log 2 = 0.25751, c log 3 = 0.40815 correct. Stating Lemma 4.3 for odd L ≥ 3 is right: Balaban's range, and all proved inputs are odd-L.
Grade (6): CONFIRMED.

## 7. Grades
(1) CONFIRMED. (2) CONFIRMED. (3) CORRECTED: (M) resolvent bound false (N–O zero at k_⊥² = |ef|); remainder improvable to O(Λ^{−2} log Λ). (4) (a) CONFIRMED, (b)–(c) superseded by U3_AW Theorem W (s_j = 1 for all j). (5) CONFIRMED (argued). (6) CONFIRMED. (F) CONFIRMED against arXiv:1910.00654 eq. (1.4).
