# SOURCES_T2_S123_VERIFY — independent check of SOURCES_T2_S123.md (spectral inputs (S1)–(S3) for (M_j))

Date: 2026-10-28. Status: in progress (sections appended one at a time).
Author: headless Claude session, brief S123 (VERIFY).
Read: SOURCES_T2_S123.md (all, 285 lines); BETA_FP_M.md (all); KAPPA_BOUNDED.md l. 1–41, 105–174; BETA_FP_H.md l. 13–90; U3_LEMMA51.md l. 1–140; THEOREM2_PROOF_v4.md l. 420–488; numerics/NUMERICS.md l. 53–78; numerics/t2_s123_gap2d.py, numerics/t2_s123_phys2d.py (read and rerun). Balaban CMP 99 (propagators) p. 395 (PDF p. 7), page image.
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md; reports/ONLINE_SWEEP.md not opened).
No existing file edited. No new script written (the two cited scripts were rerun as they are; outputs went to /tmp only, see §8).

Tags: [P] proved here; [R] reduced to a named input; [I] inference or reading not checked line by line; [V] checked against a Balaban page image or text layer (stated which), or against a rerun script (stated).
Grades: CONFIRMED, CORRECTED (correction stated), UNSUPPORTED (missing piece stated).

## Plan
1. Check (1): the operator 𝒦_t against KAPPA_BOUNDED.
2. Toolkit, claims 1–4 (Lemmas 1.1–1.4).
3. Check (2): well-posedness and (S1), claims 5–11 (constants, Gårding/commutator step, use of Theorem A3).
4. Check (4): (S3), claims 12–14, subdivision and the smallness condition on n.
5. Check (3): (S2), weak form, claims 15–23, and what BETA_FP_M Prop. 4.3 needs.
6. Check (5): Corollary (M_j), Lemma 7.2, no uniformity in j; claims 25–27.
7. Check (6): rational flux / continuity in f.
8. Check (7): numerics rerun and NUMERICS.md l. 53–78; claim 24. Balaban quote.
9. Status of THEOREM2_PROOF_v4 §10 item 4.
10. Grades.

## 1. Check (1): the operator 𝒦_t

KAPPA_BOUNDED l. 21 defines 𝒦_t(f) := Δ_0(f) + t(Δ_j(f) − Δ_0(f)) + D_cD_c^T, with Δ_0 the Wilson level (Λ = 1, Q̃ = identity, l. 19). SOURCES_T2_S123 §1.1 uses the same operator, word for word: level-0 reference, linear t-interpolation, the coarse gauge term D_cD_c^T added at every t. So V = 𝒦_1 − 𝒦_0 = Δ_j(f) − Δ_0(f), and D_cD_c^T cancels in V (S123 (F5)). [V: read both files, this session.]
The object of (M_j) (KAPPA l. 32) is δΓ_j(f) = Γ_c(Λ_j; f) − Γ_c(1; f). By BETA_FP_H (1.1) (l. 22), Γ_c(Λ; f) = log det(D_c^TD_c) − ½ log det(Δ_j(f) + D_cD_c^T). The ghost term does not depend on Λ (BETA_FP_H l. 24). So δΓ_j = −½[τ log|𝒦_1| − τ log|𝒦_0|] per cell, as S123 Cor. 7.1 states. [P, by substitution.]
BETA_FP_M uses Δ_∞ in place of Δ_0 (BETA_FP_M l. 66). S123 reruns BETA_FP_M §4 with Δ_0; this changes only the reference operator. Every step of BETA_FP_M Lemmas 4.1–4.2 and Prop. 4.3 uses only operator inequalities between 𝒦_0 and 𝒦_1, so the substitution is legitimate. [P.]
Sector reduction. U3_LEMMA51 Lemma 2.1 (l. 32–34) gives the neutral/charged split for Δ_j(f), by equivariance under e^{iασ_3}. The same equivariance holds for Δ_0(f) (Wilson Hessian at V_f) and for D_c(f) (covariant gradient at V_f). So 𝒦_t is block diagonal. [P.]
Neutral block. U3_LEMMA51 Prop. 2.2 (l. 40–46) gives f-independence of the neutral constraint and Δ^{neu}(φ) = Δ_0 − (1 − cos φ)Δ_{01}. So the neutral 𝒦_t^{neu}(f) is a convolution. S123 §7.2 states 𝒦^{neu}_t(f) ≥ cos(f)·𝔨_t^{neu} ≥ cos(f)c_*l. Check: Δ_{01} ≤ Δ_0 as forms, so the coarse Δ_0^{neu}(f) ≥ cos f·Δ_0. The map K ↦ S[K; C] is monotone, so Δ_j^{neu}(f) = S[Δ_0 − (1 − cos φ)Δ_{01}; C_0] ≥ S[cos φ·Δ_0; C_0] = cos φ·Δ_j ≥ cos f·Δ_j (φ = f/M², |f| ≤ π/2). D_cD_c^T ≥ cos f·D_cD_c^T. Sum: 𝒦^{neu}_t(f) ≥ cos f·𝔨_t^{neu}. [P.] The rest of the remark (per-momentum log integral with an integrable log|K|² singularity; f² coefficient by differentiation under the integral) is [I]: it needs a dominated-convergence bound near K = 0 that S123 does not write. It is not load-bearing for the charged-sector analysis.

Verdict on (1): the operator is the KAPPA_BOUNDED one. CONFIRMED.

## 2. Toolkit: claims 1–4

Claim 1, Lemma 1.1. (a) W(x,z)W(z,y) = W(x,y)e^{i(ef/2)(x−z)∧(z−y)}: x∧z + z∧y − x∧y = (x − z)∧(z − y), checked by expanding (bilinear, antisymmetric). Same identity as U3_LEMMA51 Lemma 3.2 proof (l. 93). (b) Schur test with the submultiplicative weight e^{θr}(1 + r)^k, r = |x − y| ≤ |x − z| + |z − y|. (c) |e^{iα} − 1 − iα| ≤ α²/2 with α = (ef/2)w∧u, |w∧u| ≤ |w||u|: the remainder constant is (e²/8)|w|²|u|², hence ‖r_2‖_{θ,k} ≤ (e²/8)‖a‖_{θ,k+2}‖b‖_{θ,k+2}. (d) |∂_f^m e^{iα}| ≤ (|e||w||u|/2)^m. (e) w_μa(w) ↔ i∂_{K_μ}â; so m_1(a,b) has symbol (const)·(∂_0â∂_1b̂ − ∂_1â∂_0b̂), exact for convolution kernels; the vanishing-order count is Leibniz. All checked. CONFIRMED.

Claim 2, Lemma 1.2. E := 𝔟_f ⋆ 𝔟_0^{−1} − 1 = (𝔟_f ⋆ 𝔟_0^{−1} − 𝔟_f𝔟_0^{−1}) + (𝔟_f − 𝔟_0)𝔟_0^{−1}; first part ≤ (|e||f|/2)‖𝔟_f‖_{θ,1}‖𝔟_0^{−1}‖_{θ,1} by |e^{iα} − 1| ≤ |α|. ‖(1 + E)^{⋆−1}‖ ≤ 2. Right inverse R = W·(𝔟_0^{−1} ⋆ (1 + E)^{⋆−1}). Self-adjoint with right inverse ⇒ surjective ⇒ ker = (ran)^⊥ = 0 ⇒ invertible, inverse R. ‖g_f‖_{θ,0} ≤ 2‖𝔟_0^{−1}‖_{θ,0} ≤ 2G. The smoothness step: each f-derivative of a ⋆_f product costs one moment of each factor (Lemma 1.1(d)); the moments are paid by θ → θ′. Correct as written. One point the proof leaves implicit: 𝔅_f is self-adjoint because A_f is Hermitian; true for the bordered matrix [[A_f, Q̃_f^†],[Q̃_f, 0]]. CONFIRMED.

Claim 3, Lemma 1.3. One-variable division: g(K_1) − g(0) vanishes on 2πZ (periodicity), and these are the only zeros of e^{iK_1} − 1 in the strip, all simple; so the quotient is analytic and periodic on the same strip. Telescoping and the order count: a power series of order ≥ p divisible by K_ν has quotient of order ≥ p − 1, and K̂_ν = K_ν·(unit). Hermitian form: K̂_μ = −e^{iK_μ}conj(K̂_μ) moves q factors to the left at the cost of a shift (a unit, absorbed in h); symmetrization h_{βγ} ↦ ½(h_{βγ} + h_{γβ}^†) leaves a unchanged because a = a^†. Checked. Remark: Theorem 3.4 and Lemma 4.2 apply Lemma 1.3/1.4(a) also to C^∞ (not analytic) symbols s_1, s_2 built with a smooth partition of unity. Lemma 1.3 as stated needs analyticity. The C^∞ version holds by the same proof with Hadamard's lemma (g(K_1) − g(0) = K̂_1q(K_1), q C^∞, because the zeros of K̂_1 are simple); the quotients then have rapidly decaying kernels, which is all Lemmas 1.1, 1.4 use. S123 asserts this in one sentence (Thm 3.4 Step 2); it is correct. CONFIRMED (with this remark).

Claim 4, Lemma 1.4.
(a) Correct: c = Σ∂_μ^†m_{μν}∂_ν; Σ∇_μ^*(W·m_{μν})∇_ν = W·c + fW·e; Cauchy–Schwarz gives ±W·c ≤ M𝔏_f + C|f|.
(b) [∇_μ, ∇_ν] = [T_μ, T_ν] = (q − 1)T_νT_μ for {μ,ν} = {0,1}, norm |q − 1| ≤ |ef|. I re-expanded ‖𝔏ψ‖² = Σ_{μν}⟨∇_μψ, ∇_μ∇_ν^*∇_νψ⟩ with ∇_μ∇_ν^* = ∇_ν^*∇_μ + [∇_μ, ∇_ν^*] and ∇_ν∇_μ = ∇_μ∇_ν + [∇_ν, ∇_μ]; this gives exactly the three sums written. The bounds follow. 𝔏_f = W·l exactly: the twisted product of the shifts by e_μ and −e_μ has phase e^{i(ef/2)e_μ∧(−e_μ)} = 1. 𝔏_f² = W·l² + f²W·r: {l, l} = 0 for scalar l. Correct.
(c) Gap in the bookkeeping, conclusion unchanged. The proof expands Σ(∇^β)^*(W·h_{βγ})∇^γ as W·(∂^{β†} ⋆ h ⋆ ∂^γ) with ∇^β = W·∂^β. But ∇^β was introduced in (b) as the product ∇_{β_1}∇_{β_2}, and W·∂_{β_1} ⋆ W·∂_{β_2} = W·(∂_{β_1}∂_{β_2} + f m_1(∂_{β_1}, ∂_{β_2}) + O(f²)), where the symbol of m_1(∂_0, ∂_1) ∝ {K̂_0, K̂_1} = −e^{i(K_0+K_1)} does not vanish at K = 0. Correction: use ∇^β := W·∂^β (a single twisted convolution) in (c). Then ‖∇^βψ − ∇_{β_1}∇_{β_2}ψ‖ ≤ C|f|‖ψ‖, so Σ‖∇^βψ‖² ≤ 2Σ‖∇_{β_1}∇_{β_2}ψ‖² + Cf²‖ψ‖² ≤ C⟨ψ,(𝔏 + |f|)²ψ⟩ by (b). With this reading the expansion in (c) is exact as written and the bound ±W·c ≤ C_c(𝔏 + |f|)² holds. Equivalently, keep the product form; the extra term f·m^†h∂^γ (plus adjoint) vanishes to order ≥ 2 and is absorbed by (a). CORRECTED (notation; result unchanged).

## 3. Check (2): well-posedness and (S1), claims 5–11

Claim 5, Prop. 2.1. The induction is sound given its inputs. At each step the reduced kernel 𝔟_f of the bordered operator 𝔅_{f_i} is a Z⁴-periodic kernel on a set with finitely many points per level-i cell (the L⁴ fine cells are inside), so Lemma 1.2 applies. Its hypotheses: (i) from (I2) (f = 0 invertibility, strip bound ⇒ exponential decay of 𝔟_0^{−1} by contour shift; this Paley–Wiener step is correct); (ii) ‖𝔟_f − 𝔟_0‖_{θ,1} ≤ C|f| from the C¹ dependence of the input block (induction hypothesis) and of Q̃_f, D_f (I3). Rates and f-ranges shrink at each of the j steps; this is allowed at fixed j and is stated. Status of the inputs:
- (I1): cited from BETA_FP_H Fact 1.1(d) (read, l. 16) [R].
- (I2): cited from U3_REPAIRS O6 and U3_AW Lemma A1; I did not reopen those files [R, not rechecked here].
- (I3): the gauge covariance of the averaging is Balaban's. I checked the quotes on the page images. CMP 99 p. 395 (PDF p. 7), (3.32): "(Q′_j(U^u)R(u)λ)(y) = R(u(y))(Q′_j(U)λ)(y)" [V: page image]. CMP 99 p. 396 (PDF p. 8), (3.34): "Δ_a(U^u) = R(u)Δ_a(U)R(u^{−1}), G(U^u) = R(u)G(U)R(u^{−1})" [V: page image]. Small correction: (3.34) is on p. 396, not p. 395 (S123 §2 (I3) puts both on p. 395; its ledger claim 5 says "p. 395–396", which is right). These give covariance only. The entrywise analyticity of the reduced kernel of Q̃_f in f, at each step, is not written in S123 and is honestly tagged [I] (= (P_0) of BETA_FP_M A1, which BETA_FP_M itself calls argued). I agree with the tag.
- (I4): cited from U3_AW Prop. A2 [R].
Grade: CONFIRMED as "[P given (I1)–(I4)]", with (I3) [I] and the page-number correction.

Claim 6, stationary-value identity. I rederived it with the sign convention Δ_i = −[𝔅^{−1}]_{22} (U3_LEMMA51 Prop. 2.3, l. 54): solving 𝔅[x; ν] = [0; V] gives x = HV, ν = −Δ_iV, Ax = Q̃^†Δ_iV; then ⟨V, Δ_iV⟩ = ⟨Q̃x, Δ_iV⟩ = ⟨x, Ax⟩. No positivity is used. The split ⟨x, Ax⟩ = ⟨x, Δ_{i−1}x⟩ + ⟨x, DΠD^*x⟩ with the second term ≥ 0 needs Π ≥ 0, true for the gauge-fixing weight. CONFIRMED.

Claim 7, Lemma 3.1. I checked against U3_LEMMA51 (2.1) (l. 28) and the note "The Hessian is 2q_p" (l. 30). Σ_{i<j}a_ia_j = ½[(Σa_i)² − Σa_i²] ≤ (3/2)Σa_i² for four numbers; |(X_i × X_j)_3| ≤ |X_i||X_j|; each 0- or 1-link lies in exactly two (0,1)-plaquettes. So 2Σq_p ≥ −(3/2)|sin φ||B|² for |φ| ≤ π/2. In the normalization of the S123 scripts (4·Hess of S_p = 1 − ½Re tr U_p, = 8Σq_p) this reads ≥ −6|sin φ|, so ν_W = 4 there. CONFIRMED.

Claim 8, Prop. 3.2. The induction is correct in structure: ⟨V, Δ_iV⟩ ≥ ⟨x*, Δ_{i−1}x*⟩ ≥ −C_{i−1}|f_{i−1}|‖x*‖² ≥ −C_{i−1}L^{−2}h_i²|f_i||V|². One convention issue: the lower bound for Δ_{i−1} is proved in level-(i−1) units, but ‖x*‖ ≤ h_i|V| is measured in the level-i inner product on fine fields. If these two ℓ² norms differ by a power of L (volume and field rescaling), the explicit formula C_j = (3/2)ν_W L^{−2j}Πh_i² changes by a fixed power of L per step. Correction: C_j exists and is finite at fixed j; its explicit L-dependence is convention-dependent and should not be quoted. Nothing downstream uses the explicit value. CORRECTED (explicit constant only).

Claim 9, Theorem 3.3 = (S1). 𝒦_t = (1 − t)Δ_0(f) + tΔ_j(f) + D_cD_c^T; Lemma 3.1 on the coarse lattice, Prop. 3.2, D_cD_c^T ≥ 0, |sin f| ≤ |f|. CONFIRMED. The constant C_1 = max((3/2)ν_W, C_j) is existential and j-dependent, as stated. The comparison with the continuum (−|ef| = −2|f| against the Wilson-level bound −6|f|) is consistent; the 2D numerics give inf spec A′ = −1.016|ef| at N = 96, inside −3|ef| (rerun, §8).

Claim 10, facts (F1)–(F4). (F1): the f = 0 Wilson Hessian in midpoint coordinates is |K̃|²1 − K̃K̃^†, D_cD_c^† has symbol K̃K̃^†, sum |K̃|²1 = |K̂|²1 [P]; numerically confirmed in 2D, error 4.86·10^{−8} (rerun, §8) [V: rerun]. (F2), (F3), (F4) are citations of U3_AW Lemma M, O5/A0, Theorem W, Prop. E and BETA_FP_H (2.3a) (read, l. 51) ⇐ LEMMA43 Lemma 4.1 + U3_REPAIRS Prop. B. I did not reopen U3_AW or U3_REPAIRS; the citations match the descriptions in KAPPA_BOUNDED l. 152–153 and BETA_FP_H l. 51, 85–87. (F3) with the level-0 reference: 𝔨_{t,0} is a convex combination of the j = 0 and level-j symbols plus |K̂|²P_L, so the (2.3a) lower bound transfers (BETA_FP_H l. 73 makes the same convexity remark). CONFIRMED as [P] for (F1) and [R] for (F2)–(F4).

Claim 11, Theorem 3.4 = (S1+). Step 1: δ = 𝐤^†𝒟𝐤 with ‖𝒟‖ ≤ C_D l (regrouping of the order-4 Hermitian sandwich from Lemma 1.3); g = 𝔨_t − cl = 𝐤^†((1 − c)1 + t𝒟)𝐤; on {l < ρ_0} the middle matrix is ≥ (1 − c)/2; on {l > ρ_0/2}, g ≥ cρ_0/2. The square roots are smooth there; g = s_1^†s_1 + s_2^†s_2. Step 2: (W·s)^*(W·s) = W·(s^† ⋆ s) = W·(s^†s + f m_1 + f²r_2), so W·g ≥ −C|f|. Step 3: 𝒦_t(f) = c𝔏_f + W·g + W·(k_t(f) − k_t(0)), using 𝔏_f = W·l exactly (§2 above). I checked each step. The use of C^∞ symbols is covered by the remark under claim 3. CONFIRMED.

Theorem A3. The brief asks to check that Theorem A3 is used only in C⁰. S123 does not use Theorem A3 at all. The vanishing of δσ_j^{(1)} to order 2 at K = 0 (F4) comes from Theorem W (value) and Prop. E (evenness), and the needed smoothness at fixed j comes from Prop. 2.1 (admissible kernels). This is legitimate at fixed j and uses no uniform-in-j bound. [P, by reading.]

## 4. Check (4): (S3), claims 12–14, subdivision and the condition on n

Claim 12, Lemma 4.1 (MC). V = W·v_f, v_f = δ + f v^{(1)} + f²v^{(2)} + ρ(f) (Prop. 2.1). Each Taylor coefficient is a Hermitian convolution kernel (V is self-adjoint for every real f and (W·a)^* = W·a^†). δ vanishes to order 4 (F2) ⇒ ±W·δ ≤ C(𝔏 + |f|)² (Lemma 1.4(c), with the claim-4 correction). v^{(1)} vanishes to order 2 (F4) ⇒ ±W·v^{(1)} ≤ C(𝔏 + |f|) (Lemma 1.4(a)), and |f|(𝔏 + |f|) ≤ (𝔏 + |f|)² (commuting operators). ±f²W·v^{(2)} ≤ Cf², ±W·ρ ≤ C|f|³. CONFIRMED. This is the step BETA_FP_M §4.1 (l. 71) listed as needing a magnetic calculus; Lemma 1.4 supplies it at fixed j.

Claim 13, Lemma 4.2 (ER). I checked each step.
(i) (X + Y)² − ½X² + Y² = ½(X + 2Y)² (expand both sides), so (𝒦_t + μ)² ≥ ½(W·k)² − ‖B′‖², with ‖B′‖ ≤ μ + C|f| = O(|f|).
(ii) 𝔨_t vanishes to order 2 at 0 (l even, δ of order 4), so m_1(k, k) has symbol vanishing to order ≥ 2; its Hermitian part is bounded by C(𝔏 + |f|).
(iii) 𝔨_t ≥ c_*l ≥ 0 and l scalar ⇒ 𝔨_t² − c_*²l² = (𝔨_t − c_*l)(𝔨_t + c_*l) is a product of commuting positive matrices, so ≥ 0. l² = 𝐦^†𝐦 with 𝐦 = (K̂_μK̂_ν1)_{μν}. 𝔨_t² = 𝐦^†𝒢_4𝐦 + cl² with 𝒢_4 = (1 − c)1 + 2tlℋ + t²ℋ𝐦𝐦^†ℋ: checked term by term (δ² = 𝐦^†ℋ𝐦𝐦^†ℋ𝐦). ‖𝒢_4 − (1 − c)‖ ≤ Cl. c = c_*²/2 < 1. The sum-of-squares and Peierls steps are as in Theorem 3.4; the Moyal terms m_1(s_i^†, s_i) vanish to order ≥ 2 (s_1 of order 2; s_2 vanishes near 0).
(iv) c W·l² = c𝔏² − cf²W·r (Lemma 1.4(b)).
Combination: (W·k)² ≥ c𝔏² − C|f|(𝔏 + |f|) − Cf² ≥ (c/2)𝔏² − C′f², and (𝒦_t + μ)² ≥ (c/4)𝔏² − C″f². CONFIRMED.

Claim 14, Theorem 4.3 (S3).
(a) (𝔏 + |f|)² ≤ 2𝔏² + 2f² ≤ (2C_E + 2)[(𝒦_t + μ)² + f²]; insert in Lemma 4.1. Valid for every t ∈ [0, 1], relative to 𝒦_t. CONFIRMED.
(b) Subdivision t_i = i/n. The step operator is 𝒦_{t_{i+1}} − 𝒦_{t_i} = V/n, and (a) at t = t_i gives ±V/n ≤ (1/n)C_3[(𝒦_{t_i} + μ)² + f²]. So each pair (𝒦_{t_i}, 𝒦_{t_{i+1}}) satisfies (S1) (Theorem 3.3 at both ends, same μ) and (S3) with ε = 1/n relative to the left end. This is exactly the form KAPPA_BOUNDED l. 40 assumes ("Assume (S2), (S3) for each 𝒦_{t_i}").
The smallness condition. I rederived the upper-side condition of BETA_FP_M l. 100: N_{t_{i+1}}(λ) ≤ N_{t_i}(λ + η) needs g_−(x) = x − εC_3[(x + μ)² + f²] > λ for every x ∈ spec 𝒦_{t_i} above the window, i.e. for x ∈ [3Rμ, ‖𝒦_{t_i}‖]. For x ≥ 3Rμ (R ≥ 1), x − 2Rμ − η ≥ x/3 − η and (x + μ)² ≤ 4x², so ε ≤ 1/(24C_3(K_* + 1)) suffices for small f. So ε_0 = c/(C_3(K_* + 1)) with an absolute c (about 1/24) is right, and K_* = sup_{t,|f|≤f_*}‖k_t(f)‖_{(0)} ≥ ‖𝒦_t(f)‖ is finite by Prop. 2.1. Hence n ≥ C_3(K_* + 1)/c works. n depends on j and L (through C_3, K_*), which is allowed. Notation: S123 reuses the letter c for c_*/2 (Thm 3.4), c_*²/2 (Lemma 4.2) and this absolute constant; the three are different. CONFIRMED.
Chaining: each step moves the counting function by η_1/n with η_1 = C_3[(3R + 2)²μ² + f²] independent of n; n steps give η_1 (used in Prop. 5.4). The lower half needs no smallness (g_+ is increasing on [−μ/2, ∞) for small f), as S123 Remark (2) says. The window form (S3w) of BETA_FP_M l. 100 is not needed, because ε = 1/n is small at every j. CONFIRMED.
