IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_S2_FORM — S2: form bound for the dressed extension field

Target (S2): ⟨𝓔_U X, G^{−1} 𝓔_U X⟩ ≤ K ‖X‖²_S, uniform in j, volume, and regular U.
Inputs allowed: CMP 99 (3.131), QE_INV (KE′), A1′ input (K).
Firewall kept: no read of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.
Status tags: [V] = checked against page image; [P] = proved here; [C] = conjectured / not checked.

## Ledger (running)
- (opened) file created; sections appended below.

## 1. What (3.131) states [V CMP 99 p. 422 image, pdf page 34; context pp. 419–421 pdftotext, pdf pages 31–33]
Operator. Δ′_π is the perturbation in G^{−1} = Δ_π + DRD* + Q*aQ = G_0^{−1} + Δ′_π, G_0^{−1} = Δ + DRD* + Q*aQ (p. 420 under (3.122); p. 421 (3.130) G = Σ_n (−1)^n G_0(Δ′_πG_0)^n). Δ′_π is defined by (3.120): ⟨A, Δ_πA⟩ = ⟨A, ΔA⟩ + ⟨A, Δ′_πA⟩. So (3.131) is a bound on the BILINEAR FORM of Δ′_π, not on G and not on G^{−1}.
Printed (3.131):
 |⟨A_1, Δ′_πA_2⟩| ≤ O(1)Mα_0(‖D*A_1‖_{L¹} + (L^jη)^{−1}‖A_1‖_{L¹}) e^{−½δ_0 d(y,y′)} (|D*A_2| + (L^{j′}η)^{−1}|A_2|),
 for supp A_1 ⊂ Δ(y), y ∈ Λ_j, supp A_2 ⊂ Δ(y′), y′ ∈ Λ_{j′}.
Norms. A_1 side: L¹ norms of D*A_1 and A_1 (η^d-weighted sums [I: the L¹ convention is not restated on the page]). A_2 side: |·| without a norm symbol = sup over the support [I: reading of the notation, same as (3.42)]. Only D* (covariant divergence) appears; no curl term.
Support restriction. Each argument lives in ONE block Δ(·). This is the restriction that causes the η^{−1} problem (QE_INV_VERIFY §7).
Scaling check [P]. A field of size a on one block of side ℓ: RHS ~ Mα_0·ℓ^d·a·ℓ^{−1}·ℓ^{−1}·a = Mα_0ℓ^{d−2}a². The free energy of a block-scale field is ℓ^d(a/ℓ)² = ℓ^{d−2}a². Same order. So (3.131) is scale covariant.
Text before (3.131): "It is easy to find estimates for the operator Δ′_π using Theorem 3.1 and the inequality (3.49); we have to be careful only with the third term in the definition (3.120)". So (3.131) is derived, not a primitive; its sources are Theorem 3.1 and (3.49).
Also printed, (3.119) [V p. 419 pdftotext]: ⟨A, Δ_πA⟩ = ⟨A − DG′RD*A, Δ(A − DG′RD*A)⟩. This exact identity is the basis of §3 below.

## 2. The planned block-decomposition route, and why it stalls as printed
Plan (from the brief): A = 𝓔_UX = Σ_c A_c, bound each ⟨A_c, Δ′_πA_{c′}⟩ by (3.131), sum with the (KE′) decay.
Unit check [P]. Lattice of spacing η, ⟨A, B⟩ = Σ_b η^d tr A(b)B(b), derivatives = η^{−1}× nearest-neighbour differences (CMP 99 (3.3)–(3.8)). Let ℓ = L^jη.
(a) Sharp cut A_c = 1_{Δ(c)}A. At a face site, D*(1_ΔA) contains one un-paired term η^{−1}A. So sup|D*A_c| ≥ η^{−1}|A| on the face, against the scale ℓ^{−1}|A| of the other term: ratio ℓ/η = L^j, unbounded in j ≤ k. On the L¹ side the same jump costs (ℓ/η)^{d−1} face sites × η^d × η^{−1}|A| = ℓ^{d−1}|A|, the same order as ℓ^{−1}‖A‖_{L¹} ~ ℓ^{d−1}|A|. So only the sup side fails. CONFIRMED (QE_INV_VERIFY §7).
(b) Smooth cut χ_c with |∇χ_c| ≤ c/ℓ. Then |D*(χ_cA)| ≤ |D*A| + (c/ℓ)|A|: no η^{−1}. The brief's unit analysis is right: in lattice units the cutoff term is ℓ^{−2}·Σ_bη^d|A|², the same order as the block-scale energy Σ_bη^d|∇A|² ~ ℓ^{−2}Σ_bη^d|A|². The cut-off costs a constant factor only.
(c) But (b) is not admissible in (3.131). The blocks Δ(c) of one layer tile the layer. If Σ_cχ_c = 1 and supp χ_c ⊂ Δ(c), then χ_c = 1_{Δ(c)} on each block: the partition is sharp. A smooth partition needs supports in a union of at least 2^d blocks (e.g. the doubled cube Δ̃(c) of CMP 99 p. 397). (3.131) is printed for one block only.
Verdict on the planned route: it closes iff (3.131) holds for supports in Δ̃(y) (a bounded union of blocks). This is plausible (Balaban's random-walk localizations use Δ̃), but it is NOT printed. Planned route = STALL at step "apply (3.131) to χ_cA" [I].
§3 gives a different route that does not use (3.131) at all.

## 3. Route Π: bound Δ_π through the exact identity (3.119), no block cut-offs
Printed inputs, all [V] on the page or text:
- (3.119) [V p. 419]: ⟨A, Δ_πA⟩ = ⟨Ã, ΔÃ⟩, Ã := A − Dλ, λ := G′RD*A.
- (3.20)–(3.21) [V p. 394 text]: R is an ORTHOGONAL projection in L²(Ω_0, 𝔤) onto Δ_U N(Q′). So 0 ≤ R ≤ I. (This upgrades the [I] "R ≤ I" of A1_KERNEL §8.) Also G′ = (Δ_U + Q′*aQ′)^{−1} with Dirichlet conditions on Ω_0^c (3.23)–(3.25). Check [P]: f := RD*A = Δ_Uλ_0 with Q′λ_0 = 0, so (Δ_U + Q′*aQ′)λ_0 = f and λ = G′f = λ_0. So the λ of (3.119) is the gauge parameter that moves A into RD* = 0.
- (3.10) [V p. 392 text]: ⟨A, ΔA⟩ = ‖DA‖² + ⟨A, Δ′A⟩, D = covariant curl (3.4), Δ′ = plaquette sum of tr i[A(b_1), A(b_2)]η^{−2}Im U(∂p). Balaban: "Δ′ will be a bounded, small operator".
- Theorem 3.1, (3.46) [V p. 398 image, pdf page 10]: for supp h ⊂ Δ(y), y ∈ Λ_j, supp λ′ ⊂ Δ(y′): ‖hG′λ′‖ ≤ B_0(L^jη)²|h|e^{−δ_0d(y,y′)}‖λ′‖ and ‖h∇_UG′λ′‖ ≤ B_0(L^jη)|h|e^{−δ_0d(y,y′)}‖λ′‖. L² on the input side, sup |h| on the cut-off, the power of ℓ belongs to the OUTPUT block. No derivative falls on the input, so SHARP cut-offs of the input cost nothing.
- CMP 96 Lemma 2.1, (2.61) [V p. 234 image, pdf page 12]: sup_{y∈𝔅} Σ_{y′∈𝔅} e^{−αδ_0d(y,y′)} ≤ c_1(α), 0 < α < 1, under (2.59) αδ_0RM > 2d log c_0(α/2) + 1 (Balaban's standing RM condition). d is symmetric, so the column sum has the same bound.
- (3.35) [V p. 396 via QE_INV_VERIFY §5]: |U(∂p) − 1| ≤ 2·O(1)Mα_0(η/ℓ_p)²(1 + O(Mα_0)), ℓ_p = L^jη of the finest layer whose regularity cubes contain p. Across an interface this is at most L² times the bound with the scale of the block that contains the base point of p.

Step Π1 (curl of a gradient) [P; transport convention of (3.3)–(3.4) is garbled in pdftotext, I-conv]. For a plaquette p with corners x → y → z ← w ← x, the two transported legs of (DDλ)(p) telescope. The only remainder is the mismatch of the two transports to z:
 (DDλ)(p) = η^{−2}(Ad U(x→y→z) − Ad U(x→w→z))λ(z), so |(DDλ)(p)| ≤ η^{−2}|Ad U(∂p) − 1||λ(z)| ≤ c_U Mα_0 ℓ(z)^{−2}|λ(z)|,
 c_U := 4·O(1)·L²(1 + O(Mα_0)). Summing with η^d weights (each site is a corner of at most d(d−1) plaquettes): ‖DDλ‖ ≤ c_d c_U Mα_0 ‖ℓ^{−2}λ‖, c_d := √(d(d−1)).
Step Π2 (Δ′ is small and local) [P from (3.10) and (3.35)]. Each plaquette contributes at most c′_d η^d η^{−2}|Im U(∂p)| Σ_{b⊂∂p}|A(b)|². So |⟨A, Δ′A⟩| ≤ c′_d c_U Mα_0 ‖ℓ^{−1}A‖² for every bond field A. Here ‖ℓ^{−1}A‖² := Σ_b η^d ℓ(b)^{−2}|A(b)|².
Step Π3 (the gauge parameter) [P from (3.46) and (2.61)]. Split f = RD*A sharply: f = Σ_{y′} 1_{Δ(y′)}f. The cubes Δ(y), y ∈ 𝔅, partition Ω_0 [I-geom, CMP 96 p. 231]. Take h = ℓ_y^{−2}1_{Δ(y)}, then h = ℓ_y^{−1}1_{Δ(y)} for the gradient. (3.46) gives block-to-block L² norms ≤ B_0e^{−δ_0d(y,y′)}. Schur over blocks with (2.61) at α = 1/2 (e^{−δ_0d} ≤ e^{−½δ_0d}):
 ‖ℓ^{−2}λ‖ ≤ B_0c_1‖RD*A‖ ≤ B_0c_1‖D*A‖,  ‖ℓ^{−1}Dλ‖ ≤ B_0c_1‖D*A‖,  c_1 := c_1(1/2).
 (Schur: ‖Σ_{y′}T_{yy′}f_{y′}‖ summed in ℓ² over y is ≤ (sup row · sup column)^{1/2} max‖T_{yy′}‖e^{δ_0 d}·(Σ‖f_{y′}‖²)^{1/2}, and Σ_{y′}‖f_{y′}‖² = ‖f‖² because the blocks are disjoint.)
Note: Π3 is where the η^{−1} problem of §2 disappears. The sharp cut acts on the INPUT of G′, and (3.46) has no derivative on the input.

## 4. Assembly
Notation: ‖DA‖ = curl norm (3.4), ‖D*A‖ = divergence norm (3.8), ‖ℓ^{−1}A‖ as in Π2, ε := Mα_0, κ := c_dc_UB_0c_1 (so ‖DDλ‖ ≤ κε‖D*A‖), κ′ := c′_dc_U.
4.1 Form version of (3.131) for ALL A, no support restriction [P given §3 inputs]. Δ′_π = Δ_π − Δ by (3.120). With Ã = A − Dλ:
 ⟨A, Δ′_πA⟩ = (‖DÃ‖² − ‖DA‖²) + (⟨Ã, Δ′Ã⟩ − ⟨A, Δ′A⟩).
 First bracket: DÃ = DA − DDλ, so |·| ≤ 2‖DA‖‖DDλ‖ + ‖DDλ‖² ≤ κε(‖DA‖² + ‖D*A‖²) + κ²ε²‖D*A‖².
 Second bracket: = −2⟨Dλ, Δ′A⟩ + ⟨Dλ, Δ′Dλ⟩, and |⟨B_1, Δ′B_2⟩| ≤ κ′ε‖ℓ^{−1}B_1‖‖ℓ^{−1}B_2‖ (Π2 polarized). So |·| ≤ κ′ε(2B_0c_1‖D*A‖‖ℓ^{−1}A‖ + B_0²c_1²‖D*A‖²) ≤ κ′ε(1 + 2B_0²c_1²)(‖D*A‖² + ‖ℓ^{−1}A‖²).
 Result: |⟨A, Δ′_πA⟩| ≤ C_Π·Mα_0·(‖DA‖² + ‖D*A‖² + ‖ℓ^{−1}A‖²), C_Π := κ + κ² a_0 + κ′(1 + 2B_0²c_1²), for Mα_0 ≤ a_0.
 This is exactly the statement S2 of SOURCES_A1_KERNEL §13 (the form bound), and it holds for every bond field A on Ω_0, not only for fields in one block.
4.2 Upper bound of the energy, operator form [P]. G^{−1} = Δ + Δ′_π + DRD* + Q*aQ (p. 420 under (3.122); (3.130)). With ⟨A, DRD*A⟩ = ‖RD*A‖² ≤ ‖D*A‖² (R orthogonal projection, §3) and Π2:
 ⟨A, G^{−1}A⟩ ≤ (1 + C_ΠMα_0)(‖DA‖² + ‖D*A‖²) + (κ′ + C_Π)Mα_0‖ℓ^{−1}A‖² + a‖QA‖².
 This is the inequality G^{−1} ≤ (1 + O(Mα_0))(D*D + DD*) + O(Mα_0)ℓ^{−2} + Q*aQ that A1_KERNEL §8 and QE_INV 5.4 assumed, now with the ℓ^{−2} term written out.
4.3 S2 target for A = 𝓔_UX [P given (KE′) as used in QE_INV 5.3]. QE_INV 5.3 gives ‖∇_UA‖² ≤ K_∇‖X‖²_S (all fine covariant differences; K_∇ ≤ (√K_abs + 2α_Fc_1)²). Curl and divergence are sums of at most 2 and d differences: ‖DA‖² + ‖D*A‖² ≤ (4 + d)K_∇‖X‖²_S [crude]. The zero-order term uses the same kernel bound C_Hℓ(b)^{−1}e^{−δ_Hd} as K_abs (|E| ≤ O(1)e^{−δ_5 d} from (2.151) divided by ℓ(b)): ‖ℓ^{−1}A‖² ≤ K_abs‖X‖²_S. And a‖QA‖² = a‖B‖²_μ with B = Q(U)A, ‖B‖_μ ≤ ‖B‖_S (ℓ ≤ 1) and ‖B‖_S ≤ ‖Q(U)𝓔_U‖‖X‖_S ≤ (1 + ε_Q^S)‖X‖_S ≤ (3/2)‖X‖_S under QE_INV 5.1.
 So ⟨𝓔_UX, G^{−1}𝓔_UX⟩ ≤ K‖X‖²_S, K := (1 + C_ΠMα_0)(4 + d)K_∇ + (κ′ + C_Π)Mα_0K_abs + (9/4)a.
4.4 Comparison with the planned route. The brief's triple sum Σ_{c,c′}e^{−δ|c−c_X|}e^{−δ|c′−c_X|}e^{−δ_1|c−c′|} is not needed. Route Π uses (3.131)'s SOURCES (Theorem 3.1 and the structure (3.119)), not (3.131) itself. It needs no decomposition of A, so the one-block support restriction never enters.

## 5. Uniformity in j, volume, and U
- Scales [P]. Every bound in §3–§4 is scale covariant: (3.46) carries exactly ℓ_y², ℓ_y of the output block; Π1–Π2 carry ℓ^{−2}, ℓ^{−1} from (3.35) in block units; the S-norm carries ℓ^{d−2}. No factor L^j or η^{−1} appears. The only scale mismatch is at layer interfaces, where (3.35) uses the finer scale: factor L², absorbed in c_U.
- Volume and {Ω_j} [V]. B_0, δ_0 depend on d, L only and not on {Ω_j} (CMP 99 p. 399). c_1(1/2) depends on d only, under (2.59). Schur needs only sup row and column sums, which (2.61) bounds uniformly in the volume.
- U [P]. U enters through (3.35) (any regular U with Mα_0 ≤ a_0, M ≥ M_1) and through Theorem 3.1 (same hypotheses). R, G′, Δ′ are gauge covariant, and all norms are of gauge-covariant quantities (Theorem 3.1: "All these inequalities are invariant with respect to gauge transformations of U").
- So C_Π = C_Π(d, L) and K = K(d, L, a) once Mα_0 ≤ a_0 and RM satisfies (2.59) at α = 1/2 and the QE_INV conditions. Uniform in j, k, η, volume, {Ω_j}, and regular U.
- Relation to A1's input (K). Route Π does not use Theorem 3.3 for G or (3.131). It uses Theorem 3.1 for G′, which Balaban proves before G (CMP 99 Sect. C, ends p. ~412 "completed the proof of Theorem 3.1"). So there is no circularity with the order of A1_KERNEL §9.
- G_1 clause [P-sketch]. A1 §9 needs the same form bound for Δ^{(2)}_π (3.135). That is a different operator (built from Δ^{(2)}, (3.136)–(3.137)); route Π does not cover it. A1 §9 states its own [I] for it ("from (3.137) via Schur"). (3.137) is a pointwise kernel bound |Δ^{(2)}A| ≤ O(1)Mα_0ℓ^{−2}|A| per A1 §9; if it is a local kernel, the same Π3-type Schur applies with sharp cut-offs on the input and no derivatives. Not checked here.

## 6. Ledger and status
[V] (3.131) as printed: bilinear Δ′_π bound, L¹ × sup, one block per argument (p. 422 image).
[V] (3.119)–(3.120) structure; R orthogonal projection (3.20)–(3.21); G′ = (Δ_U + Q′*aQ′)^{−1}, Dirichlet on Ω_0 (3.23)–(3.25); Δ = D*D + Δ′ (3.10) (pdftotext, formulas partly garbled).
[V] Theorem 3.1 (3.46) L² block bounds (p. 398 image). Proof printed in CMP 99, jointly with Theorem 3.3 for G_0 (text p. 398 "We will do it together with ... G(U)"; "completed the proof of Theorem 3.1" in Sect. C). Proof not re-checked here.
[V] CMP 96 Lemma 2.1 (2.61) (p. 234 image).
[P] §2: unit analysis. Sharp cut → η^{−1} on the sup side only (L¹ side is fine). Smooth block cut-off → O(1/ℓ), constant factor, as the brief said. But a smooth partition cannot have one-block supports, so the brief's route needs (3.131) on Δ̃(y): NOT printed → that route stalls.
[P] Π1 curl of gradient = η^{−2}(Ad U(∂p) − 1)λ(z) (exact telescoping). [I-conv] sign/transport conventions of (3.3)–(3.4) taken from the garbled text; the modulus bound does not depend on them.
[P] Π2 |⟨A, Δ′A⟩| ≤ κ′Mα_0‖ℓ^{−1}A‖² from (3.10) + (3.35).
[P] Π3 ‖ℓ^{−2}λ‖, ‖ℓ^{−1}Dλ‖ ≤ B_0c_1‖D*A‖ from (3.46) + (2.61). Sharp input cut-offs are harmless here.
[P] 4.1 |⟨A, Δ′_πA⟩| ≤ C_ΠMα_0(‖DA‖² + ‖D*A‖² + ‖ℓ^{−1}A‖²) for ALL A. This is S2 in the form of A1_KERNEL §13.
[P] 4.2 G^{−1} ≤ (1 + C_ΠMα_0)(D*D + DD*) + (κ′ + C_Π)Mα_0ℓ^{−2} + Q*aQ (operator inequality).
[P given (KE′), QE_INV 5.1 and 5.3] 4.3 ⟨𝓔_UX, G^{−1}𝓔_UX⟩ ≤ K‖X‖²_S, K = K(d, L, a), uniform (§5).
[I-a] Normalization of Q*aQ for the gauge field (a vs. scale-dependent a_j with ℓ^{d−2} weights, cf. (3.24) for Q′). Either way a‖QA‖² ≤ a_max‖B‖²_S with a_max = sup_j a_j < ∞ (the a_j recursion of (3.24) converges). Replace (9/4)a by (9/4)a_max in K if needed.
[I-a1] Theorem 3.1 is stated for a = 1. Route Π uses G′ with the a of the model; Balaban takes a = 1 in these theorems. If another a is used, Theorem 3.1 must hold for it (same proof).
[I-geom] The cubes Δ(y), y ∈ 𝔅, partition Ω_0 (inherited, A1_KERNEL §5).
[open, not S2] The G_1 analogue for Δ^{(2)}_π (§5 last item).

Status. S2 is CLOSED [P given (KE′) + QE_INV 5.1/5.3 + printed CMP 99 Theorem 3.1, (3.10), (3.119), (3.20)–(3.21), (3.35), and CMP 96 Lemma 2.1]. It does NOT need (3.131): route Π replaces it. The planned route via (3.131) STALLS at "(3.131) for supports in Δ̃(y)" and is not needed. Downstream: QE_INV 5.4 and A1_KERNEL §8 used "G^{−1} ≤ (1 + O(Mα_0))(D*D + DD*) + Q*aQ" without the ℓ^{−2} term; 4.2 shows an extra O(Mα_0)ℓ^{−2} term, harmless for the upper bound because (KE′) controls ‖ℓ^{−1}𝓔_UX‖ (4.3). Needs an independent verifier before it carries weight.
No STALL section needed for the S2 target itself.
