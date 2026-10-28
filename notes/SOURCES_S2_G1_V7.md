# SOURCES_S2_G1_V7 — S2 for G_1 (form bound via Δ^{(2)}_π) and the A2 V7 repair with its two [I] items

Date 2026-10-28. Opus draft, unverified. Firewall kept: no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md, no reports/ONLINE_SWEEP.md.
Inputs: SOURCES_S2_FORM §2–§6 + VERIFY; SOURCES_A2_R2 §2–§4 + VERIFY V4, V7, V8; CMP 99 pp. 421–423 (3.133)–(3.138); CMP 116 p. 3, pp. 12–16.
Tags: [V] page image/text checked; [P] proved here; [I] interpretation; [R] relied on, not checked.

## Ledger (running)
- (opened) file created.

## A1. Printed inputs for G_1 [V CMP 99 pp. 421–423 images, pdf pages 33–35, 110 dpi]
- (3.127) p. 421: the new variational form A → ½⟨A, ΔA⟩ − ⟨HC^{(2)}(A), J⟩. C^{(2)}(A) lives on bonds of 𝔅; on Λ_j it equals C_j^{(2)}(L^jηA), "a second order term in the expansion of Q_j(ηA)" (with the factor L^jη as stated on the page).
- (3.128) p. 421, printed: ⟨A, G_1^{−1}A⟩ = ⟨A, Δ_πA⟩ − 2⟨HC_π^{(2)}(A), J⟩ + ‖RD*A‖² + a‖QA‖²
  = ⟨A − DG′RD*A, Δ(A − DG′RD*A)⟩ − 2⟨HC^{(2)}(A − DG′RD*A), J⟩ + ‖RD*A‖² + a‖QA‖².
  So the page itself already writes the second form at Ã := A − DG′RD*A, the same Ã as (3.119).
- (3.134) p. 422: ⟨A, Δ^{(2)}A⟩ = 2⟨HC^{(2)}(A), J⟩. "A meaning of Δ_π^{(2)} is obvious, it defines the second quadratic form in (3.128)."
- (3.135) p. 422: Δ_π^{(2)} = Δ^{(2)} − DRG′D*Δ^{(2)} − Δ^{(2)}DG′RD* + DRG′D*Δ^{(2)}DG′RD*.
- (3.136) p. 422: Δ^{(2)}A = Σ_{j=1}^k Σ_{b∈Λ_j} (L^jη)^{d+1} tr (δ/δA)C_j^{(2)}(A, b)(H*J)(b).
- Text p. 422: from (3.36) and (3.133), |(H*J)(b)| ≤ O(1)Mα_0(L^jη)^{−3} for b ∈ Λ_j. Then "(149) in [5]" gives
  |⟨δA, Δ^{(2)}A⟩| ≤ O(1)C_3Mα_0 Σ_{j=0}^k Σ_{b∈Λ_j} (L^jη)^{d−2}(Q_j″|δA|)(c)|A|_c.
- (3.137) p. 423: |(Δ^{(2)}A)(b)| ≤ O(1)Mα_0(L^jη)^{−2}|A|, b ∈ Δ(y), y ∈ Λ_j, "and the supremum |A| is taken over several j-blocks surrounding Δ(y)". Then: "This bound implies that the operators Δ^{(2)}, Δ_π^{(2)} are small in a proper sense, if α_0 is sufficiently small."
- (3.138) p. 423: G_1 = G_0(I − (Δ′_π + Δ_π^{(2)})G_0)^{−1} = Σ_n G_0((Δ′_π + Δ_π^{(2)})G_0)^n.
- Theorem 3.12 p. 423: Theorems 3.3, 3.10, 3.11 hold for G, G_1 (except the Laplacian entry of (3.42)), for α_0 small.
Note. (3.137) has ℓ_y^{−2} with ℓ_y = L^jη the scale of the block of the OUTPUT bond b. This matters for the Schur step (A3).

## A2. Structure: (3.135) = sandwich, signs, locality, symmetry
A2.1 Sandwich [P, algebra]. Put P := DG′RD*. G′ is symmetric (inverse of Δ_U + Q′*aQ′, (3.24)) and R is an orthogonal projection ((3.20)–(3.21), S2_FORM_VERIFY §1). So P* = DRG′D*. Expand
 (I − P)*Δ^{(2)}(I − P) = Δ^{(2)} − DRG′D*Δ^{(2)} − Δ^{(2)}DG′RD* + DRG′D*Δ^{(2)}DG′RD*.
This is (3.135) term by term. Hence ⟨A, Δ_π^{(2)}A⟩ = ⟨Ã, Δ^{(2)}Ã⟩ with Ã = (I − P)A = A − Dλ, λ = G′RD*A. The same identity is printed directly in the second line of (3.128) [V], via (3.134).
A2.2 Sign [P from (3.128) and (3.138)]. (3.128) with (3.134): G_1^{−1} = Δ_π − Δ_π^{(2)} + DRD* + Q*aQ = G^{−1} − Δ_π^{(2)}. (3.138) gives G_1^{−1} = G_0^{−1} − Δ′_π − Δ_π^{(2)} = G^{−1} − Δ_π^{(2)}. The two agree. (Matches S2_FORM_VERIFY §7.)
A2.3 Locality of the kernel [P from (3.137) alone]. Write (Δ^{(2)}A)(b) = Σ_{b′} η^d K(b, b′)A(b′), K(b, b′) ∈ L(𝔤). Let N(b) := the union of the "several j-blocks surrounding Δ(y)", b ∈ Δ(y), y ∈ Λ_j. If A = 0 on N(b), then the sup in (3.137) is 0, so (Δ^{(2)}A)(b) = 0. Hence K(b, b′) = 0 for b′ ∉ N(b). Locality is a consequence of the printed bound; no use of the definition is needed. The definition agrees: C_j^{(2)}(A, b) is a term of Q_j(ηA), and Q_j averages over bonds near the block of b (CMP 98), so δC_j^{(2)}(·, b)/δA is supported near that block [I, consistent].
A2.4 Row sums [P]. Fix b and a unit vector v ∈ 𝔤. Choose A(b′) := unit vector u_{b′} on N(b) with ⟨v, K(b, b′)u_{b′}⟩ = ‖v^TK(b, b′)‖. (3.137) gives Σ_{b′} η^d‖v^TK(b, b′)‖ ≤ C_{137}Mα_0ℓ(b)^{−2}. Sum over an orthonormal basis v = e_1, …, e_n, n = dim 𝔤, and use ‖K‖_op ≤ Σ_i‖e_i^TK‖:
 Σ_{b′} η^d‖K(b, b′)‖ ≤ n·C_{137}·Mα_0·ℓ(b)^{−2}.   (Row)
Here C_{137} := the O(1) of (3.137), a constant of d, L (and the C_3 of (149) [5]) only, and ℓ(b) := L^jη for b ∈ Δ(y), y ∈ Λ_j.
A2.5 Symmetry [P given (3.134)/(3.136); I-conv: δ/δA is the gradient for the ⟨·,·⟩ of (3.3)]. C_j^{(2)}(A, b) is quadratic in A, and H*J does not depend on A. So f(A) := Σ_j Σ_b (L^jη)^{d+1} tr C_j^{(2)}(A, b)(H*J)(b) is a quadratic function of A, and (3.136) says Δ^{(2)}A = ∇f(A) (up to a fixed factor). The gradient of a quadratic function is A ↦ Hess(f)A, and a Hessian is symmetric. So K(b, b′) = K(b′, b)^T. Also, (3.134) introduces Δ^{(2)} as "the operator determined by" a quadratic form, which is the symmetric operator by convention. Both readings give symmetry. At real U, J the form is real, so K is real.
A2.6 Answer to the brief's question. Yes: Δ^{(2)} is built from H (through H*J) and the averaging Q_j. Its decay is not inherited from G's decay: it is LOCAL (finite range, a few j-blocks) by (3.137), and the smallness Mα_0ℓ^{−2} comes from |H*J| ≤ O(1)Mα_0ℓ^{−3} (from (3.133) + (3.36)). Symmetry comes from the quadratic-form definition, not from G. So the [I] of S2_FORM_VERIFY §8 ("kernel local and symmetric") is CLOSED: locality [P from printed (3.137)], symmetry [P from printed (3.134)/(3.136), one convention reading].

## A3. Schur step with the (3.137) kernel, and the G_1 form bound [P]
Notation as S2_FORM §4: ε := Mα_0; ‖ℓ^{−1}B‖² := Σ_b η^d ℓ(b)^{−2}|B(b)|²; B_0, c_1 = c_1(1/2) from Π3; K, K_∇, K_abs from S2_FORM 4.3 (constants corrected by S2_FORM_VERIFY §6).
A3.1 Form bound for Δ^{(2)}. For every bond field B:
 |⟨B, Δ^{(2)}B⟩| ≤ Σ_{b,b′} η^{2d}‖K(b, b′)‖|B(b)||B(b′)|
  ≤ ½Σ_b η^d|B(b)|² Σ_{b′}η^d‖K(b, b′)‖ + ½Σ_{b′} η^d|B(b′)|² Σ_b η^d‖K(b, b′)‖.
 First sum: (Row) at b. Second sum: by symmetry ‖K(b, b′)‖ = ‖K(b′, b)‖, so it is (Row) at b′, with ℓ(b′)^{−2}. Hence
 |⟨B, Δ^{(2)}B⟩| ≤ c_2 ε ‖ℓ^{−1}B‖²,  c_2 := n·C_{137}, n = dim 𝔤.
 Note: AM–GM puts each row sum on its own point, so no interface factor L² appears (S2_FORM_VERIFY §8 had one; it is not needed).
A3.2 Form bound for Δ_π^{(2)}, all A. By A2.1, ⟨A, Δ_π^{(2)}A⟩ = ⟨Ã, Δ^{(2)}Ã⟩, Ã = A − Dλ. By Π3 (S2_FORM §3, confirmed in VERIFY §4), ‖ℓ^{−1}Dλ‖ ≤ B_0c_1‖D*A‖. So ‖ℓ^{−1}Ã‖² ≤ 2‖ℓ^{−1}A‖² + 2B_0²c_1²‖D*A‖² and
 |⟨A, Δ_π^{(2)}A⟩| ≤ 2c_2 ε(‖ℓ^{−1}A‖² + B_0²c_1²‖D*A‖²).
A3.3 Operator inequality for G_1. With A2.2 and S2_FORM 4.2 (corrected constants C′_Π):
 ⟨A, G_1^{−1}A⟩ ≤ ⟨A, G^{−1}A⟩ + |⟨A, Δ_π^{(2)}A⟩|
  ≤ (1 + C′_Πε + 2c_2B_0²c_1²ε)(‖DA‖² + ‖D*A‖²) + (κ′ + C′_Π + 2c_2)ε‖ℓ^{−1}A‖² + a‖QA‖².
 So G_1^{−1} ≤ (1 + O(ε))(D*D + DD*) + O(ε)ℓ^{−2} + Q*aQ, the same shape as for G.
A3.4 S2 for G_1 at A = 𝓔_UX [P given (KE′), QE_INV 5.1/5.3, as S2_FORM 4.3]. Use ‖D*A‖² ≤ d·K_∇‖X‖²_S (S2_FORM_VERIFY §8) and ‖ℓ^{−1}A‖² ≤ K_abs‖X‖²_S:
 ⟨𝓔_UX, G_1^{−1}𝓔_UX⟩ ≤ K_1‖X‖²_S,  K_1 := K + 2c_2Mα_0(K_abs + d·B_0²c_1²K_∇).
 Here K is the G constant of S2_FORM 4.3 with C_Π → C′_Π. K_1 = K(1 + O(Mα_0)); it depends on d, L, a, dim 𝔤 and the (3.137) constant only. Uniform in j, k, η, volume, {Ω_j}, regular U, by the same reasons as S2_FORM §5: (3.137) is scale covariant (ℓ^{−2} of the output block) and its constant depends on d, L only (p. 423 "absolute constants depending on d and L only").
A3.5 Consequence for (C) of G_1. c_−(G_1) = 1/K_1-type bound = c_−(G)(1 − O(Mα_0)). No qualitative change. (K) for G_1 is Theorem 3.12, not this file.
A3.6 Validity range. (3.137) is printed for regular real U and small J (regularity (3.35), (3.36)). Π3 needs Theorem 3.1 at a = 1 ([I-a1] of S2_FORM, still open, unchanged here).
- (A done) A1–A3 appended. S2 for G_1 closed [P] from printed (3.128), (3.134)–(3.137); the [I] "kernel local and symmetric" is closed.

## B1. V7: expand around the REAL A_Z(U) [P given inputs listed]
Notation (SOURCES_A2_R2 §3): ‖K‖_ρ = max of weighted row/column sums; S(t) = sup_b Σ_{b′}e^{−t|b−b′|}; r = |b_− − b′_−|. Real point (U, 0). Complex point U_c := (**U**, **J**), **U** = U′U, U′ = exp(iL^{−1}ηA′), A′ ∈ 𝔤^c, |A′|, |∇A′| < α_1, |**J**| < α_0 (CMP 116 p. 15 [V]; CMP 109 (1.13)–(1.14) per A2_R2_VERIFY V6). Disc: t ↦ U(t) := (exp(itL^{−1}ηA′)U, t**J**), |t| ≤ t_0, t_0 ≈ c·min{α_0′/(α_0 + α_1), α_1′/α_1} (V6 radius, with the plaquette condition). U(0) = (U, 0), U(1) = U_c.
Write C(s; ·) := C^{(k)}(Z_0, s) and A_Z(·) := Z_0C*Δ_kCZ_0.
B1.1 Inputs.
 (K_A^r) [R: A7 ⇐ A1 + A18, real only]: ‖A_Z(U)‖_ρ ≤ a := c_A S(δ_A − ρ) for 0 ≤ ρ < δ_A, at REAL (U, 0).
 (W^c) [R: CMP 99 (3.107)–(3.108), Thm 3.15/(3.185) walk expansion, on the α′-space; see A2_R2_VERIFY V1, V8]: walk bounds for C(s; U(t)) for |t| ≤ t_0. Consequences: (a) |C(1; U(t))(b, b′)| ≤ B_C e^{−δ_0 r} on the disc (sum of all walks, s ≡ 1); (b) the W_σ bound of A2_R2 §3 (ii)–(iv) at U_c.
 (D) [V + P, A2_R2_VERIFY V4]: C(1; U(t)) = A_Z(U(t))^{−1} on fields on Z_0, all |t| ≤ t_0 (identity theorem).
B1.2 Decomposition [P, exact]. C(σ; U_c) = C(1; U_c) − W_σ(U_c), W_σ := C(1) − C(σ) (s-rule). Add and subtract C(1; U) = A_Z(U)^{−1}:
 C(σ; U_c) = A_Z(U)^{−1} − W′,  W′ := W_σ(U_c) + P,  P := C(1; U_c) − C(1; U).
B1.3 Bound on P. Two routes.
 Route C (Cauchy on C(1)) [P given (W^c)(a)]. f(t) := C(1; U(t))(b, b′) is analytic on |t| < t_0 with |f| ≤ B_C e^{−δ_0 r}. Cauchy: |f(1) − f(0)| ≤ sup|f|/(t_0 − 1). So
  |P(b, b′)| ≤ B_C e^{−δ_0 r}/(t_0 − 1) = O((α_0 + α_1)/α′)·B_C e^{−δ_0 r},
  ‖P‖_ρ ≤ w_α := O(α_0 + α_1)·B_C·S(δ_0 − ρ),  0 ≤ ρ < δ_0.
 Route Res (the brief's route: resolvent identity + real decay) [P, conditional]. With C_1 := C(1; U) and Δ_A := A_Z(U_c) − A_Z(U):
  P = C(1; U_c) − C_1 = −C(1; U_c)Δ_A C_1, and C(1; U_c) = Σ_{n≥0}(−C_1Δ_A)^n C_1 if ‖C_1‖_ρ‖Δ_A‖_ρ ≤ ½.
  So ‖P‖_ρ ≤ 2‖C_1‖_ρ²‖Δ_A‖_ρ. ‖C_1‖_ρ is REAL: Lemma CT on A_Z(U) (decay c_A, δ_A; lower bound γ_0 of C*Δ_kC, CMP 99 p. 428 [V statement], inherited by the compression to Z_0 [P]) gives ‖C_1‖_ρ ≤ c_C S(ε_CT − ρ), ρ < ε_CT.
  But ‖Δ_A‖_ρ = O(α) needs a bound on A at the COMPLEX point. Real decay alone cannot give it: Δ_A is a difference between a real and a complex value. So Route Res needs a complex input on A, e.g. (An) sup bound ‖A_Z(U(t))‖ ≤ γ_1′ on the disc plus a two-constant argument for decay [P-sketch, see B1.6]. Route Res therefore costs MORE than Route C.
 Verdict. Use Route C. Its only complex input is (W^c), and (W^c) is needed anyway for W_σ(U_c) (the s-dependent operator exists only as a walk sum). No input is added by the V7 fix.
B1.4 Lemma N around the real point [P]. Take ρ := (1 − θ)δ_A (δ_A ≤ δ_0 on the A7 route), θ ∈ (0, 1) fixed. Then
 ‖W′‖_ρ ≤ w + w_α, w := O(1)B_0 S(0.57δ_0 − ρ) e^{16κ_1}e^{−0.506δ_0M} (A2_R2 §3 (iv); ρ ≤ ½δ_0 < 0.57δ_0).
 If a(w + w_α) ≤ ½, Lemma N (A2_R2 §3; no Hermiticity used) gives
 C(σ; U_c)^{−1} = A_Z(U) + T′, ‖T′‖_ρ ≤ 2a²(w + w_α).
 The condition holds if M ≥ M_* (a·w ≤ ¼) and α_0 + α_1 ≤ α_* (a·w_α ≤ ¼), with α_* chosen after c_A, δ_A, B_C, θ. This is the "α small after M/c_A" order already in LOC_VERIFY §5.
B1.5 R_2 [P]. At σ = 0, real point: C_0^{−1} = A_Z(U) + T_0, ‖T_0‖_ρ ≤ 2a²w_0, w_0 = w with e^{16κ_1} → 1. The real A_Z(U) is the SAME in both expansions, so it cancels exactly:
 R_2 = C_0^{−1} − Re C(σ; U_c)^{−1} = T_0 − Re T′,
 |R_2(b, b′)| ≤ 2a²(w_0 + w + w_α)e^{−ρr} ≤ (O(1)e^{−δ_0M/3} + O(α_0 + α_1)) e^{−(1−θ)δ_A r}
 for M ≥ max{M_*, 96κ_1/δ_0} (as A2_R2 §4 (a)); O(1) contains a² = c_A²S(θδ_A)² and B_0; O(α) contains a²B_C S(δ_0 − ρ)/α′.
 Changes from A2_R2 §4: (1) no complex decay of A is used; (2) the separate "α part" (b) on A_Z disappears, because A_Z(U) cancels; the α-dependence now sits in w_α, from C(1), not A; (3) rate (1 − θ)δ_A, as in A2_R2 §4.2 (the printed ½δ_0 only if δ_A > ½δ_0). Both consumers ((2.21) and LOC (E)) tolerate this rate (A2_R2_VERIFY V5).
B1.6 Remark: complex decay of A from real decay [P-sketch, not used]. Write A′ = A′_R + iA′_I, **J** = J_R + iJ_I with A′_R, A′_I, J_R, J_I real. g(z) := A_Z(exp(iL^{−1}η(A′_R + zA′_I))U, J_R + zJ_I)(b, b′). Real z gives real configurations, so |g(z)| ≤ c_Ae^{−δ_A r} on a real segment (A7). If (An) gives |g| ≤ γ_1′ on a disc, the two-constant theorem gives |g(i)| ≤ γ_1′^{1−ω}(c_Ae^{−δ_A r})^ω, ω > 0 the harmonic measure of the segment. So complex decay at rate ωδ_A follows from real decay + a complex sup bound. This would close the original A2_R2 route too. Not needed after B1.5.
