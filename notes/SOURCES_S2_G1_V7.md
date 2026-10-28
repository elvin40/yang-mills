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
