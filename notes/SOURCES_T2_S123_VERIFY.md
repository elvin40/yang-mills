# SOURCES_T2_S123_VERIFY — independent check of SOURCES_T2_S123.md (spectral inputs (S1)–(S3) for (M_j))

Date: 2026-10-28. Status: complete (sections appended one at a time). 25 CONFIRMED, 2 CORRECTED, 0 UNSUPPORTED.
Author: headless Claude session, brief S123 (VERIFY).
Read: SOURCES_T2_S123.md (all, 285 lines); BETA_FP_M.md (all); KAPPA_BOUNDED.md l. 1–41, 105–174; BETA_FP_H.md l. 13–90; U3_LEMMA51.md l. 1–140; THEOREM2_PROOF_v4.md l. 420–488; numerics/NUMERICS.md l. 53–78; numerics/t2_s123_gap2d.py, numerics/t2_s123_phys2d.py (read and rerun). Balaban CMP 99 (propagators) p. 395 (PDF p. 7), page image.
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md; reports/ONLINE_SWEEP.md not opened).
No existing file edited. The two cited scripts were rerun from copies in /tmp (outputs to /tmp only, so no project JSON was overwritten; see §8). One new script: numerics/t2_s123v_gapcheck.py (extra 2D check, prints only; §7).

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

## 5. Check (3): (S2), its weak form, claims 15–23

Claim 15, fibre decomposition. In symmetric gauge W(x, y) = exp(i(ef/2)(x_0y_1 − x_1y_0)) does not involve x_2, x_3. So magnetic translations in directions 2, 3 are ordinary translations, and every magnetically covariant operator commutes with them (U3_LEMMA51 Lemma 3.1, l. 77–79; this already covers Δ_j(f) without a separate appeal to (I3)). Partial Fourier transform gives the direct integral; inequalities between decomposable operators hold fibrewise a.e., and everywhere by norm continuity of the fibres. CONFIRMED.

Claim 16, Lemma 5.1. I re-expanded the identity
 Σ_{μ<ν}‖∇_μb_ν − ∇_νb_μ‖² + ‖Σ_μ∇_μ^*b_μ‖² = Σ_{μ,ν}‖∇_μb_ν‖² + Σ_{μ,ν}⟨b_μ, [∇_μ, ∇_ν^*]b_ν⟩:
the first square gives Σ‖∇_μb_ν‖² − Re Σ⟨b_μ, ∇_ν^*∇_μb_ν⟩ (after relabelling; this double sum is real), the second gives Σ⟨b_μ, ∇_μ∇_ν^*b_ν⟩. Correct. The commutators vanish unless {μ,ν} = {0,1}; the (0,1)-plaquette corrections (1 − cos f, spin term) involve only b_0, b_1, T_0, T_1. Norms: 2|e||f|, 8f², (3/2)ν_W|sin f|: checked. So 𝒦_0(f; k_⊥) = A(f) + |k̂_⊥|² with A = A′ ⊕ (𝔏^{01}_f ⊗ 1_2), A′ on (b_0, b_1). The identification of the plaquette forms of (2.1) with the covariant curl in midpoint transport is [I], as S123 says. The 2D numerics (gauge residual H D_r ≤ 1.9·10^{−7}, F1 check at φ = 0) are consistent with it. CONFIRMED with the stated [I].

Claim 17, Lemma 5.2. Path expansion of exp(sΣ(T_μ + T_μ^*)): coefficients are nonnegative sums of unimodular phases over closed paths, so |e^{−s𝔏_f}(x, x)| ≤ e^{−s𝔏_0}(x, x) = (e^{−2s}I_0(2s))^d ≤ C(1 + s)^{−d/2}. Chebyshev with s = 1/E gives C_dE (d = 2), C_dE² (d = 4), uniform in f. CONFIRMED.

Claim 18, Prop. 5.3 ((S2) at t = 0). N_0(λ) = ∫F_⊥(λ − E)dn_A(E) (Fubini, using claim 16). F_⊥ is Lipschitz on [0, 2]; the critical value 4 (saddle, log density) is avoided because λ′ − E ≤ 3Rμ + μ/2 ≤ 2. n_A(3Rμ) ≤ C_d(3Rμ + C_S|f|) by A ≥ 𝔏^{01}⊗1 − C_S|f|, counting monotonicity (BETA_FP_M Lemma 4.1) and Lemma 5.2. C_2 = ρ_⊥C_d(6RC_1 + C_S). CONFIRMED. The continuum consistency note (|ef|/(2π)·1/(4π) = |ef|/(8π²), BETA_FP_M l. 70) is correct arithmetic.

Claim 19, Prop. 5.4 ((S2c)). Chaining of BETA_FP_M Lemma 4.2 over the n sub-steps of claim 14(b), η_1/n per step. The second inequality: N_t(λ′) − N_t(λ) ≤ N_0(λ′ + η_1) − N_0(λ − η_1) ≤ C_2|f|(λ′ − λ + 2η_1). Fibrewise version: Lemma 4.2 of BETA_FP_M uses only operator inequalities and τ-counting monotonicity, both valid in the 2D twisted algebra with τ_2. CONFIRMED.

Claim 20, Prop. 5.5 and what BETA_FP_M Prop. 4.3 needs. I reread BETA_FP_M Prop. 4.3 (l. 88–92). (S2) enters in two places: part (a), the mass of N_s and the log-weighted integral on |λ| ≤ η_*, for s = 0 and s = 1; part (b), through Lemma 4.2's |N_1 − N_0| ≤ 2C_2|f|η_*, which needs (S2) only for N_0. S123 replaces: (a) s = 0 by Prop. 5.3; s = 1 non-singular part by (S2c) (N_1(η_1) − N_1(−η_1 − 0) ≤ N_0(2η_1) − N_0(−2η_1 − 0) ≤ 4C_2|f|η_1); s = 1 singular part by Z(f); (b) by Props. 5.3 and 5.4. All bounds rechecked; the sum is O(|f|η_1 log(1/|f|)) + Z(f)/2 with η_1 = O(f²). Necessity note: given the proved parts, II = ½Z(f) + O(|f|³ log(1/|f|)), so II = o(f²) iff Z = o(f²); the inputs (S1), (S2c), (S3) bound the mass near 0 only by O(|f|³) and do not control its log moment. So (Z_j) is the exact missing piece for this proof. CONFIRMED. Answer to brief item (3): Prop. 4.3 needs (S2) at t = 0 on W, the coarse comparison (S2c) for t = 1, and (Z_j); full (S2) for t > 0 is not needed.

Claim 21, Prop. 5.6 ((G_A) ⇒ Lipschitz N_1 near 0 ⇒ Z = O(|f|³)). Checked step by step.
- Step 1: if |k̂_⊥|² + 3η_1 < g_f then λ − |k̂_⊥|² ∈ (−g_f, g_f) for all λ ∈ I, so n_0(·; k_⊥) is constant on I; fibrewise (S2c) then makes n_1 constant on [−2η_1, 2η_1], which contains every interval [λ − ρ, λ + ρ] with |λ|, ρ ≤ η_1. Fibres with (c_*/2)|k̂_⊥|² − C_1′|f| > 3η_1 have no spectrum in I (fibrewise (S1+)). Correct. (A = A′ ⊕ 𝔏^{01}⊗1_2 and 𝔏^{01} ≥ |ef| − Cf² > g_f for g_f ≤ c|f|, c < |e|, so (G_A) for A′ gives it for A.)
- Step 2: ∂_r|k̂_⊥|² = 2rΣω_μ² sinc(rω_μ) ≥ r for r ≤ 1. On ran P, ‖(𝒦_1 + μ)ψ‖ ≤ (μ + 3η_1)‖ψ‖, so Lemma 4.2 gives ‖𝔏ψ‖ ≤ C|f|‖ψ‖, ⟨ψ, 𝔏ψ⟩ ≤ C|f|‖ψ‖², Σ‖∇∇ψ‖² ≤ Cf²‖ψ‖². The k_⊥-derivative of the symbol of v_f: ω·∇δ of order 3, ω·∇v^{(1)} of order 1, the rest O(f²) (Prop. 2.1 controls every moment of ρ(f), so its k_⊥-derivative is O(|f|³)). Order-3 Hermitian sandwich ⇒ ≤ C‖∇∇ψ‖‖∇ψ‖ + Moyal ≤ C|f|^{3/2}; order 1 times f ⇒ ≤ C|f|^{3/2}. So P(∂_rA_1)P ≥ (r − C_M|f|^{3/2})P. Correct.
- Step 3: d/dr τ_2h(A_1) = −τ_2(|h′|^{1/2}P(∂_rA_1)P|h′|^{1/2}) ≤ −(r/2)τ_2|h′|(A_1) (uses supp h′ ⊂ I and cyclicity; the derivative formula for C¹ h in a finite von Neumann algebra is cited as standard, same status as in BETA_FP_M l. 86). Integration over [r_1, r_2], τ_2h(A_1(r_1ω)) ≤ n_1(3η_1; r_1ω) ≤ C|f| (fibrewise (S1+) and Lemma 5.2), polar coordinates in the small disc r ≤ r_2 ≲ |f|^{1/2}. Result C|f|ρ. The dyadic sum of note (3) gives Z ≤ C|f|η_1 = O(|f|³), and the Lipschitz bound excludes atoms. Correct.
CONFIRMED, as "[P given (G_A)]".

Claim 22, Lemma 5.7. I rechecked: h_μ − S_μ² = h_μ²/4 (expand (2 − T − T^*)² with TT^* = 1); S_0² + S_1² ≥ ±i[S_0, S_1]; the four commutator formulas for T_0T_1 = qT_1T_0 (in particular [T_0^*, T_1^*] = (q − 1)T_1^*T_0^*); i[S_0, S_1] = (α/4)·½{T_0 + T_0^*, T_1 + T_1^*} + O(α²); ½{2 − h_0, 2 − h_1} ≥ 4 − 4𝔏^{01} (Re⟨h_0ψ, h_1ψ⟩ ≥ −½Σ‖h_μψ‖² ≥ −2⟨ψ, 𝔏^{01}ψ⟩, h ≤ 4). Hence (1 + |α|)𝔏^{01} ≥ |α| − Cα². CONFIRMED. Numerics: inf 𝔏^{01}/|ef| = 0.9358, 0.9676, 0.9837, 0.9918 at N = 24, 48, 96, 192, i.e. 1 − 0.12|ef| to two digits (rerun, §8).

Claim 23, Lemma 5.8. H′D′ = 0 at a critical point (second derivative of S(U^{g_s}) = S(U) along the orbit; the gradient term vanishes because V_f is critical, U3_LEMMA51 l. 7). A′D′ = D′𝔏^{01}; D′ injective since 𝔏^{01} > 0; U = D′(𝔏^{01})^{−1/2} is an isometry onto ran D′; ran D′ reduces the self-adjoint A′; on ker D′^†, A′ = H′. The site Laplacian D′^†D′ and the midpoint 𝔏^{01} are unitarily equivalent (same flux, translated lattice). CONFIRMED. Numerics: gauge part min equals the scalar bottom (0.98372327 vs 0.98372378 in units of |ef| at N = 96, difference at the finite-difference level 10^{−7}); off-diagonal block ≤ 3·10^{−8} (rerun). The continuum bookkeeping {−|ef|, 3|ef|, 5|ef|, …} for the physical spectrum I rederived: spin-aligned ladder {−1, 1, 3, …}|ef| ∪ anti-aligned {3, 5, …}|ef| minus the gauge copy {1, 3, 5, …}|ef| = {−1, 3, 5, …}|ef|.

## 6. Check (5): Corollary (M_j), Lemma 7.2, uniformity in j (claims 25–27)

Claim 25, Corollary 7.1. The proof is the BETA_FP_M split δΓ_j = I + II with μ = 2C_1|f|. (i) II = O(|f|³ log(1/|f|)) follows from Prop. 5.5 + Prop. 5.6 + Lemma 5.8, given (G_A′). (ii) I(f) − I(0) = n_2d_jf² + O(|f|³ log) is BETA_FP_M Prop. 4.4, which BETA_FP_M tags [argued] (l. 95–96, ledger A2). (iii) Dividing by n_2f² and taking f → 0 gives the statement of KAPPA l. 32 exactly. The logic is right, and the tag [R] is right. The full list of what (M_j) is reduced to, read off the file: (G_A′) [open]; BETA_FP_M Prop. 4.4 region 1 [argued]; (I3) [I]; the neutral-sector f² coefficient by differentiation under the integral [I, §1 above]; and the cited verified inputs (I1), (I2), (I4), (F2)–(F4). S123's statement of Cor. 7.1 names (G_A′), Prop. 4.4 and "the inputs of claim 5 and claim 10"; that covers (I3) but omits the neutral-sector [I]. CONFIRMED as a reduction, with the neutral item added to the list.

Uniformity in j. I looked for any uniform-in-j use. f_*(j, L), θ_j, h_i, C_j, C_1, C_1′, C_V, C_E, C_3, K_*, n, C_2, C_M all depend on j and L, and S123 says so (Remark after Prop. 2.1; "Not claimed" in §8). KAPPA_BOUNDED Prop. 1.1 uses (M_j) only as a limit f → 0 at each fixed j (l. 32–38), and Theorem K uses the uniform bound on d_j from (B2), not from (M_j) (l. 113–114). The only j-independent object introduced, (G_A′), is a statement about the coarse 2D Wilson Hessian and does not involve j at all. No uniformity in j was used or claimed. CONFIRMED.

Claim 26, Lemma 7.2 (spectral region 2). F(𝒦_t) = PF(𝒦_t)P with P = 1_{[−2μ,2Rμ]}(𝒦_t); |τ(F(𝒦_t)PVP)| ≤ ‖F‖τ|PVP|; ‖F‖ ≤ 2C_R/μ (BETA_FP_M l. 83); ±PVP ≤ C_3[(2R + 1)²μ² + f²]P by Theorem 4.3(a), so τ|PVP| ≤ Cf²τ(P); τ(P) = N_t(2Rμ) ≤ N_0(2Rμ + η_1) = O(f²) (Props. 5.4, 5.3; N_t(−2μ) = 0 by (S1)). Product O(|f|³). Checked. CONFIRMED. The remaining region-1 statement (Moyal expansion of G_f(𝒦_t) = ℓ′(1 − χ_W)(𝒦_t), whose derivatives grow like |f|^{−k}) is correctly left [argued]. I add one point: region 1 here is a spectral cut (spectrum ≥ Rμ), while the formal d_j of KAPPA (1.1) is a per-momentum integral over all K. Matching the two at order f² is the unwritten step; it is the same gap as BETA_FP_M Prop. 4.4 "magnetic phase-space localization".

Claim 27, consistency. Checked in §8 below. CONFIRMED [I-level statement].

## 7. Check (6): rational flux and continuity in f

S123 uses no rational-flux argument. All proofs work at every real f with |f| ≤ f_*: the operators live in the twisted von Neumann algebra 𝒩_f of operators commuting with the magnetic translations, with its finite trace τ (BETA_FP_M §3, cited standard), for rational and irrational f alike. No fibre decomposition over K, no enlarged magnetic cell, and no limit from rational to irrational f is used. The only fibre decomposition is over k_⊥ (directions 2, 3), which is exact for every f (claim 15). Constants are uniform in f in |f| ≤ f_*. [P, by reading.]
Where rational flux does appear: only in the numerics of §6 (torus N × N, φ = 2πm/N). These are evidence for (G_A′) at those fluxes, not a proof for any f. S123 says this (§6 "Limits of the check"). If (G_A′) is ever proved via rational fluxes, a continuity-in-flux statement for the spectrum (Hausdorff continuity of the spectrum of Harper-type operators in the flux; I recall a ½-Hölder result of Avron–van Mouche–Simon, from memory, not checked) or a direct semiclassical proof at every f is needed. That is part of the open item, not a gap in S123.
Extra numerical check (new, this session; script numerics/t2_s123v_gapcheck.py, imports t2_s123_gap2d read-only, prints only, 34 s). Non-unit numerators and a smaller flux:

| N | m | ef | inf 𝔏^{01}/|ef| | phys min/|ef| (= top of lowest band) | first phys level > 0 /|ef| | min |phys spec|/|ef| |
|---|---|---|---|---|---|---|
| 192 | 1 | 0.0654 | 0.99184 | −1.00807 | 2.9589 | 1.0081 |
| 100 | 3 | 0.3770 | 0.95354 | −1.04329 | 2.7582 | 1.0433 |
| 70 | 3 | 0.5386 | 0.93394 | −1.05939 | 2.6509 | 1.0594 |

The pattern (lowest physical band at −|ef|(1 + 0.12|ef|), next physical level → 3|ef|, scalar bottom at |ef|(1 − 0.12|ef|)) is the same for m = 3 as for m = 1, and continues to ef = 0.065. So (G_A′) holds with margin ≈ |ef| at these six fluxes. [V: numerics, this session.] This is evidence only.

## 8. Check (7): numerics rerun, NUMERICS.md l. 53–78, claim 24

Rerun. I copied numerics/t2_s123_gap2d.py and numerics/t2_s123_phys2d.py to /tmp/s123v (the second script hard-codes its JSON path inside numerics/; I redirected it to /tmp so that no project JSON was overwritten) and ran both with numerics/.venv/bin/python: 5.0 s and 6.0 s. Every number in the two project JSON files is reproduced to all printed digits:
- F1 at φ = 0: error 4.861976954·10^{−8}.
- Gauge residual |A D_r| ≤ 1.02, 1.38, 1.87 ·10^{−7} (N = 24, 48, 96); neutral leak 0.
- inf spec A′/|ef| = −1.05796, −1.03090, −1.01591; gauge-part min /|ef| = 0.93575, 0.96761, 0.98372; first physical level > 0 /|ef| = 2.6609, 2.8333, 2.9174; off-diagonal ≤ 3.0·10^{−8}.
- Scalar bottom /|ef| = 0.93575, 0.96761, 0.98372, 0.99184 (N = 24, 48, 96, 192).
[V: rerun, this session.]
Model check. I read the script. It builds 4·Hess(S_p) by central differences (h = 10^{−4}) in the left trivialization U = e^{iB·σ/2}U_0, Landau gauge θ_0(x) = −φx_1, plaquette e^{iφσ_3}, charge 2 so ef = 2φ, plus D_rD_r^T with D_rλ(ℓ) = λ(x) − Ad_{U_ℓ}λ(x + e_μ). This matches U3_LEMMA51 (2.1) conventions (l. 26–30) with the normalization 8Σq_p, i.e. ν_W = 4, and (F1). The physical/gauge split uses an SVD basis of ran D and ker D^†. The model is the A′ of S123 Lemma 5.8 at rational flux.
Small correction to S123 §6 text. "The lowest physical band has width < 10^{−6}|ef|": the widths are 1.1·10^{−6}, 2.9·10^{−7}, 4.6·10^{−7} (units of |ef|) at N = 24, 48, 96, so the bound fails narrowly at N = 24. The widths are at the level of the finite-difference error (∼10^{−7} absolute), so they do not resolve any band structure. Nothing depends on this. The other readings (inf spec ≈ −|ef|(1 + 0.12|ef|): coefficients 0.111, 0.118, 0.122; positive edge of A′ = scalar bottom; physical spectrum empty in (−1.0159|ef|, 2.917|ef|) at N = 96; g_f ≈ 0.98|ef| for A′) are correct.

Claim 24: CONFIRMED (the ledger statement; the band-width sentence in §6 is corrected above).

NUMERICS.md l. 53–78 (read). Items S123 §7.4 compares with:
- d_1 = c log L − β_1: L = 2: 0.258 − 0.630 = −0.372; L = 3: 0.408 − 0.664 = −0.256 (NUMERICS table and KAPPA l. 36). Matches S123.
- First-step constants β_1 − c log L = +0.37, +0.26, +0.24, +0.15, +0.08, +0.02, −0.04 for L = 2, 3, 4, 5, 7, 9, 11 (NUMERICS §7). S123 quotes "+0.37 … −0.04 for L = 2 … 11". Matches.
- c = 11N²/(12π²) = 44/(12π²) = 0.371511 for N = 2. Matches.
- Abelian sector S_k^{ab} = (1 − L^{−4k})/4: 15/64 = 0.234375, 20/81 = 0.246914, measured 0.23438, 0.24691. S123 ties this to its neutral-sector remark; U3_LEMMA51 l. 48 makes the same link (neutral cos φ tadpole). Consistent.
S123 derives no number that could conflict: all its constants are existential and enter only o(f²) errors; it fixes no sign or size of d_j. The one quantitative output (the 2D gap) is not in NUMERICS.md. No conflict. CONFIRMED.

## 9. Status of THEOREM2_PROOF_v4 §10 item 4

Current text (l. 430): "(M_j) … (S1), (S2), (S3), all on the lattice [open]; Prop. 4.4 [argued]." Table row (l. 470): "open / argued".

What this verification supports.
- (S1) (Theorem 3.3) and (S1+) (Theorem 3.4): proved+verified at fixed j, conditional on (I3).
- (S3) (Theorem 4.3), in the subdivided form KAPPA_BOUNDED §1.3 uses, with n ≥ C_3(K_* + 1)/c: proved+verified at fixed j, conditional on (I3). The window form (S3w) is not needed.
- (S2): not proved in its original form for t > 0, and not needed. Replaced by (S2) at t = 0 (Prop. 5.3) and the coarse comparison (S2c) (Prop. 5.4), both proved+verified conditional on (I3), plus the near-zero input (Z_j). (Z_j) is proved+verified conditional on (G_A′) (Props. 5.5, 5.6, Lemma 5.8).
- BETA_FP_M Prop. 4.3 (the N–O window term II): proved+verified at fixed j, conditional on (I3) and (G_A′).
- BETA_FP_M Prop. 4.4: region 2 proved+verified (Lemma 7.2), conditional on (I3); region 1 still [argued].
Here (I3) means: at each of the j steps, the linearized Balaban averaging Q̃_f, the residual gauge gradient D_f and the gauge weight Π at constant flux are magnetically covariant (CMP 99 (3.32), (3.34), checked on page images) with finite range and reduced kernels analytic (C³ suffices) in f near 0. The covariance part is Balaban's; the analyticity is argued, not written entry by entry (= (P_0) of BETA_FP_M, at each step).

Answer. Item 4 as a whole cannot move to "[proved+verified, conditional on X]" with X a set of hypotheses, because one piece is an unwritten proof step, not a hypothesis: the region-1 Moyal expansion of BETA_FP_M Prop. 4.4. If the supervisor accepts that step as a named input, then
 X = (I3) + (G_A′) + [BETA_FP_M Prop. 4.4, region 1],
and (M_j) is "[reduced+verified, conditional on X]" (plus the minor neutral-sector [I] of §1, and the cited verified inputs (I1), (I2), (I4), (F1)–(F4)). The sub-items (S1), (S3) can move now to "[proved+verified at fixed j, conditional on (I3)]". (S2) should be rewritten as "(S2)|_{t=0} + (S2c) [proved+verified, conditional on (I3)]; near-zero residue (Z_j) ⇐ (G_A′) [open; numerically confirmed at 6 rational fluxes, margin ≈ |ef|]".
Suggested text for item 4 (not written into that file): "(M_j): (S1), (S3) [proved+verified at fixed j, conditional on (I3); SOURCES_T2_S123 Thms 3.3, 4.3, VERIFY]; (S2) replaced by (S2)|_{t=0}, (S2c) [same status] and (Z_j) ⇐ (G_A′) [open, 2D, j-independent; numerically true with gap ≈ |ef|]; Prop. 4.4 region 2 [proved+verified, cond. (I3)], region 1 [argued]; (I3) entrywise analyticity of Balaban's linearized averaging at flux f [argued]."

## Grades

1. Lemma 1.1 (twisted product, Moyal remainders): CONFIRMED.
2. Lemma 1.2 (Nenciu-type inverse, C^m in f): CONFIRMED.
3. Lemma 1.3 (division, Hermitian sandwich): CONFIRMED (its use on C^∞ symbols in Thm 3.4 / Lemma 4.2 needs the Hadamard-lemma version; the same proof gives it).
4. Lemma 1.4 (operator bounds from vanishing order): CORRECTED — in (c), ∇^β must be read as W·∂^β (one twisted convolution), not the product ∇_{β_1}∇_{β_2}; the two differ by O(|f|), and the bound ±W·c ≤ C(𝔏 + |f|)² is unchanged.
5. Prop. 2.1 (fixed-j well-posedness): CONFIRMED given (I1)–(I4); (I3) is [I] as tagged; Balaban (3.34) is on CMP 99 p. 396 (page image), (3.32) on p. 395.
6. Stationary-value identity: CONFIRMED.
7. Lemma 3.1 (Wilson Hessian ≥ −(3/2)ν_W|sin φ|): CONFIRMED.
8. Prop. 3.2 (Δ_j(f) ≥ −C_j|f|): CORRECTED — C_j exists at fixed j, but its explicit L-power depends on the unit convention for fine-field norms in level-i units; the formula (3/2)ν_W L^{−2j}Πh_i² should not be quoted.
9. Theorem 3.3 = (S1): CONFIRMED.
10. (F1) [P, and numerics 4.86·10^{−8} rerun]; (F2)–(F4) [R]: CONFIRMED.
11. Theorem 3.4 = (S1+): CONFIRMED.
12. Lemma 4.1 = (MC): CONFIRMED.
13. Lemma 4.2 = (ER): CONFIRMED.
14. Theorem 4.3 = (S3), subdivided, n ≥ C_3(K_* + 1)/c: CONFIRMED.
15. Fibre decomposition over k_⊥: CONFIRMED.
16. Lemma 5.1 (separability at t = 0): CONFIRMED, with the midpoint-transport identification [I] as tagged.
17. Lemma 5.2 (diamagnetic IDS bound): CONFIRMED.
18. Prop. 5.3 = (S2) at t = 0: CONFIRMED.
19. Prop. 5.4 = (S2c): CONFIRMED.
20. Prop. 5.5 (Prop. 4.3 with (S2)|_{t=0}, (S2c), (Z_j); necessity of (Z_j) for this proof): CONFIRMED.
21. Prop. 5.6 ((G_A) ⇒ Lipschitz N_1 near 0 ⇒ Z = O(|f|³)): CONFIRMED (derivative formula cited as standard).
22. Lemma 5.7 (scalar Landau lower bound): CONFIRMED.
23. Lemma 5.8 ((G_A) ⇔ (G_A′)): CONFIRMED.
24. Numerics §6: CONFIRMED (rerun reproduces all digits; the §6 sentence "band width < 10^{−6}|ef|" fails narrowly at N = 24, 1.1·10^{−6}, and is at finite-difference level anyway).
25. Corollary 7.1 = (M_j) as a reduction: CONFIRMED; the input list should also name the neutral-sector differentiation under the integral [I].
26. Lemma 7.2 (spectral region 2 = O(|f|³)); region 1 stays [argued]: CONFIRMED.
27. Consistency with NUMERICS l. 53–78 and the continuum IDS slope: CONFIRMED.

Item 4 of THEOREM2_PROOF_v4 §10: (S1), (S3) can move to [proved+verified at fixed j, conditional on (I3)]; (S2) is replaced by (S2)|_{t=0} + (S2c) [same status] and (Z_j) ⇐ (G_A′) [open]; (M_j) itself becomes [reduced+verified, conditional on X], X = (I3) + (G_A′) + BETA_FP_M Prop. 4.4 region 1 [argued]. It cannot be [proved+verified] while region 1 is an unwritten step.

SUMMARY: 25 CONFIRMED, 2 CORRECTED, 0 UNSUPPORTED; verdict: the fixed-j proofs of (S1), (S3), (S2)|_{t=0}, (S2c) and the reduction (Z_j) ⇐ (G_A′) are sound given the Peierls input (I3), and (M_j) is reduced (not proved) to (I3), the open 2D gap (G_A′), and the argued region-1 step of BETA_FP_M Prop. 4.4.
STATUS: COMPLETE
