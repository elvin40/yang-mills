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
