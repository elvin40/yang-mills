IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_C_CONDITION — the (C) condition (lower bound on the compressed operator)

Date: 2026-10-28. Status: complete (Opus draft, unverified). Pages checked this session by pdftotext only (CMP 99 pp. 398–399, 416–417, 423; CMP 98 pp. 19–20; CMP 95 p. 19); page-image facts are taken from the verified files cited. Ledger: [P] proved here, [V] verified from source/numerics, [I] interpretation, [R] relies on printed claim, [N] numerics only.
Firewall: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

Inputs read: TRUST_LEDGER rows A1, A1w, A2, A7, A16 and §4.2 lines naming (C); SOURCES_A1_KERNEL (all); SOURCES_QE_INV + VERIFY §7–§8; SOURCES_QE_KE_HQ + VERIFY (all); SOURCES_S2_FORM (all); SOURCES_S2_G1_V7 Part A; SOURCES_A3_GAMMA0_FULL §0, §4–§7; SOURCES_EU §3; SOURCES_T2_VOL §1–§2; CMP 99 pp. 398–399, 416–417, 423 (pdftotext); CMP 98 pp. 19–20, CMP 95 p. 19 (pdftotext).

## 1. The (C) condition, stated exactly

1.1 Objects [V CMP 99 pp. 398–399, 416–417; A1_KERNEL §5, §8].
- 𝔅 = ∪_{j=0}^k Λ_j, the multiscale coarse lattice of the sequence Ω_1 ⊃ … ⊃ Ω_k (CMP 96 (2.1)–(2.7)), on the periodic fine lattice T_η (or Ω_0 with Dirichlet data on Ω_0^c).
- ℋ = ℓ²(𝔅, μ), μ(y) = ℓ_y^d, ℓ_y = L^jη for y ∈ Λ_j. S = multiplication by ℓ_y².
- Q = Q(U): fine 1-forms → functions on 𝔅; Q = 1 on Λ_0 rows, Q_j(U) (j-step straight-line average, CMP 98 (124)–(125), (144)/(150)) on Λ_j rows. Q* = ℋ-adjoint.
- G = G(U) = (Δ_π + DRD* + Q*aQ)^{−1} (a = 1), the fluctuation propagator of CMP 99 Thm 3.3; G_1 := (G^{−1} − Δ_π^{(2)})^{−1} (CMP 99 (3.128), (3.135), (3.138)).
- N := QGQ*, N_1 := QG_1Q*, N̂ := S^{−1/2}NS^{−1/2}, N̂_1 := S^{−1/2}N_1S^{−1/2}, self-adjoint on ℋ.

1.2 Statement. (C) for G: there is c_− > 0 with
 ⟨B, N̂B⟩_ℋ ≥ c_−‖B‖²_ℋ for every B on 𝔅,
uniformly in k, η, the sequence {Ω_j} (under (2.1)–(2.2)), the volume, and every real U with (3.35)–(3.36), M ≥ M_1, Mα_0 ≤ a_0. (C) for G_1: the same for N̂_1 with c_{−,1} > 0.
Space. (C) is a statement on the COARSE space 𝔅 (all B, no constraint). The constraint space enters only through the equivalent variational form (1.3): the fine fields are restricted to the affine constraint set {A : Q(U)A = B} (A = B_0 = 0 on Λ_0). No gauge fixing is imposed on A: the gauge-fixing term DRD* is part of G^{−1}, and the minimizer satisfies RD*A_* = 0 automatically (A3_GAMMA0_FULL Lemma 5; its proof applies to G as well as G_1).

1.3 Equivalent forms [P, given G > 0 (resp. G_1 > 0) and Q onto].
 N̂ ≥ c_− ⟺ N ≥ c_−S ⟺ N^{−1} ≤ c_−^{−1}S^{−1} ⟺ min{⟨A, G^{−1}A⟩ : QA = B} ≤ c_−^{−1}‖B‖²_S for every B,
 ‖B‖²_S := ⟨B, S^{−1}B⟩_ℋ = Σ_jΣ_{y∈Λ_j} ℓ_y^{d−2}|B(y)|².
The first step is conjugation by S^{1/2}; the second is operator monotonicity of the inverse; the third is the variational identity ⟨B, N^{−1}B⟩ = min{⟨A, G^{−1}A⟩ : QA = B} (A3_GAMMA0_FULL 5.1; needs G^{−1} > 0). So (C) is an UPPER bound on the constrained energy: every coarse field has a fine extension with energy ≤ K‖B‖²_S. It is NOT a lower bound on G^{−1}.

1.4 Use. (C) is input (ii) of Lemma CT (A1_KERNEL §7) for A1; IN3 of A1-W (A1_WALK_FULL (H2), Lemma LT(e)); C1–C2 of WC_FULL (C2 = (C) for G_1); the γ_1^N norm bound of A7 (Lemma N); through WC/A1-W it enters A16. At the unit scale (ℓ = 1) (C) for G_1 reads (QG_1Q*)^{−1} ≤ K_{ext,1}: this is the upper half of the precision, i.e. the A7 (γ_1) direction.

1.5 Why A1_KERNEL could not prove it [V A1_KERNEL §8–§9, §13]. Two gaps. (a) The bump extension E^ms needed Q(U)E to be (near-)diagonal; this depends on the support of the iterated averages (S1 of A1_KERNEL §13), and for the straight-line Q it is false: Q_j(c′) gives positive weight to every fine μ-bond of B(c′_−) ∪ B(c′_+), so bumps near a shared face are seen by two rows. (b) The G_1 step "c_−(G_1) ≥ c_−(G)(1 − O(Mα_0))" used a form bound |⟨A, Δ_π^{(2)}A⟩| ≤ O(Mα_0)·(form of (C)) "from (3.137) via Schur" [I]; the form of (C) is an extension energy, and the comparison of a form on A with an extension energy of B was never written.
Later files replaced (a) by Theorem QE (dressed free multiscale minimizer + Neumann; SOURCES_QE_INV, QE_KE_HQ, both verified) and the energy step by S2 (SOURCES_S2_FORM). What was left in the ledger: the torus-side hypothesis (side ≥ c·RM coarsest blocks), two unprinted conventions, and the [I] G_1 step (A7_CDC_VERIFY (b2)).

## 2. The current proof of (C) for G, piece by piece

2.1 Chain [P given the tagged inputs; each piece verified in its own file].
 Step 1 (variational identity). ⟨B, N^{−1}B⟩ = min{⟨A, G^{−1}A⟩ : QA = B}. Needs G > 0 [R: CMP 99 Thm 3.11, printed proof p. 416 for G via G = G_0(I − R)^{−1} and positivity of G_□(1) from CMP 96] and Q onto [P: Step 2 builds a right inverse].
 Step 2 (exact feasible extension, Theorem QE). 𝓔_U := free multiscale minimizer H_1 = G_freeQ(1)*(Q(1)G_freeQ(1)*)^{−1} dressed with axial transports. ‖S^{1/2}(Q(U)𝓔_U − I)S^{−1/2}‖ ≤ c_QMα_0 + c_far e^{−δ_HD/2}, D = RM/(4L²); Neumann ⇒ K_Q ≤ 2; A := 𝓔_U(Q(U)𝓔_U)^{−1}B solves Q(U)A = B exactly. Inputs: (KE′) [V by citation, CMP 96 Cor. 2.8 (2.150)–(2.151) with Q = straight line, QE_KE_HQ_VERIFY §1–§4]; (H_Q) [P, QE_KE_HQ §3 + VERIFY §5–§6]; α_F ≤ 2·O(1)Mα_0 from (3.35) [V]; the torus-side hypothesis; the two conventions (§5 below).
 Step 3 (energy, S2). G^{−1} ≤ (1 + C_ΠMα_0)(D*D + DD*) + O(Mα_0)ℓ^{−2} + Q*aQ for all A (route Π: (3.119), (3.10), (3.20)–(3.21), Thm 3.1 (3.46), CMP 96 Lemma 2.1) [P, S2_FORM §3–§4]; with (KE′) gradient bounds: ⟨𝓔_UX, G^{−1}𝓔_UX⟩ ≤ K‖X‖²_S [P, S2_FORM 4.3].
 Step 4. ⟨B, N^{−1}B⟩ ≤ ⟨A, G^{−1}A⟩ ≤ K·K_Q²‖B‖²_S ≤ 4K‖B‖²_S. So c_− = 1/(4K).
Residual [I]: [I-a1] Thm 3.1 is stated for a = 1 (the model's a; no gap if a = 1, as in CMP 99 Thms 3.1–3.3); [I-geom] the cubes Δ(y), y ∈ 𝔅, partition Ω_0 (CMP 96 p. 231).

2.2 (C) for G is NOT A3's γ_0 bound [P]. A3 proves ⟨B̃, C*Δ_kCB̃⟩ ≥ γ_0‖B̃‖², with Δ_k = (QG_1Q*)^{−1} − a − Δ_J on the constrained unit-scale space 𝒟. That is a LOWER bound on the precision (QG_1Q*)^{−1}, i.e. an UPPER bound on N_1 at the unit scale. (C) is the opposite inequality: an UPPER bound on the precision (§1.3). The two together give the two-sided bound γ_0 ≲ (QG_1Q*)^{−1} − a ≲ K_{ext,1} that A7 and LOC use (c_− = (γ_1 + ε_M)^{−1}, ‖C_0‖ ≤ 2/γ_0). So A3 contributes nothing to (C), and (C) contributes nothing to A3.
The true "analogue of A3 for G" is the bound R1(G): ‖ℓ^{−1}A‖² ≤ K_G⟨A, G^{−1}A⟩ for all fine A (G ≤ K_G𝔴^{−1}, a Poincaré-type lower bound on G^{−1}). It is [R]: CMP 99 Thm 3.3 [V p. 399: G satisfies (3.42)–(3.47) incl. the L² block bounds (3.46)] + Thm 3.11 (G > 0) + Schur with CMP 96 Lemma 2.1, as in A3_GAMMA0_FULL R1 for G_1. R1(G) is not (C) either, but it is the tool for the G_1 step (§3).

2.3 What remains for (C) for G after 2.1. Only (i) the torus-side hypothesis and (ii) the two conventions. Both enter only Step 2 (and Step 3 through the same kernel). §4 treats (i), §5 treats (ii).

## 3. (C) for G_1: the G_1 step as a relative form bound (Lemma R) [P given R1(G)]

3.1 The brief's form "G^{−1} ≥ Δ_π^{(2)} + c_{−,1}" is not the right inequality. By §1.3, (C) for G_1 needs (a) G_1 > 0 (for the variational identity) and (b) an UPPER bound on G_1^{−1} on some extension. The clean statement is two-sided and relative to G^{−1}:
 (1 − δ_1)G^{−1} ≤ G_1^{−1} ≤ (1 + δ_1)G^{−1},  δ_1 = O(Mα_0).   (R)
Here G_1^{−1} = G^{−1} − Δ_π^{(2)} [P, S2_G1 A2.2 from printed (3.128), (3.134), (3.138)], and Δ_π^{(2)} is symmetric [P, S2_G1 A2.5].

3.2 Lemma R. Put ε := Mα_0, g(A) := ⟨A, G^{−1}A⟩. Assume R1(G): ‖ℓ^{−1}A‖² ≤ K_Gg(A) for all A [R, §2.2]. If 2B_0²c_1²κ′ε ≤ ½, then for every fine A
 |⟨A, Δ_π^{(2)}A⟩| ≤ δ_1g(A),  δ_1 := 4c_2ε(K_G + B_0²c_1²).
Constants: c_2 = dim𝔤·C_{137} (S2_G1 A3.1); B_0, c_1 = c_1(½) from Π3; κ′ from Π2 (S2_FORM §3–§4, constants as corrected in S2_FORM_VERIFY).
Proof. Let λ := G′RD*A, Ã := A − Dλ, X := ‖ℓ^{−1}Ã‖².
 (a) ⟨A, Δ_π^{(2)}A⟩ = ⟨Ã, Δ^{(2)}Ã⟩ (S2_G1 A2.1, the sandwich (3.135)), and |⟨Ã, Δ^{(2)}Ã⟩| ≤ c_2εX (S2_G1 A3.1).
 (b) Π3 applied to the input f = RD*A of G′: ‖ℓ^{−1}Dλ‖ ≤ B_0c_1‖RD*A‖.
 (c) By (3.119) and (3.10): g(A) = ‖DÃ‖² + ⟨Ã, Δ′Ã⟩ + ‖RD*A‖² + a‖QA‖². With Π2, |⟨Ã, Δ′Ã⟩| ≤ κ′εX. So ‖RD*A‖² ≤ g(A) + κ′εX.
 (d) X ≤ 2‖ℓ^{−1}A‖² + 2‖ℓ^{−1}Dλ‖² ≤ 2K_Gg + 2B_0²c_1²(g + κ′εX). The hypothesis gives 2B_0²c_1²κ′εX ≤ X/2, so X ≤ 4(K_G + B_0²c_1²)g.
 Insert (d) in (a). ∎
3.3 Consequences [P given R1(G), G > 0].
 (i) For δ_1 < 1, (R) holds; so G_1^{−1} ≥ (1 − δ_1)G^{−1} > 0. Positivity of G_1 is PROVED here; Thm 3.12's "Thm 3.11 holds for G_1" is no longer needed.
 (ii) Inverse monotonicity: (1 + δ_1)^{−1}G ≤ G_1 ≤ (1 − δ_1)^{−1}G. Then N_1 = QG_1Q* ≥ (1 + δ_1)^{−1}N ≥ (1 + δ_1)^{−1}c_−S. So
 c_{−,1} = c_−/(1 + δ_1).
 No extension for G_1 is built; S2_G1 A3.4 (the direct extension route, which needs G_1 > 0 as an [R] input) becomes a cross-check.
 (iii) Side result: G_1 ≤ (1 − δ_1)^{−1}G ≤ (1 − δ_1)^{−1}K_G𝔴^{−1}. This is A3_GAMMA0_FULL's input R1 for G_1, with K_1 = K_G/(1 − δ_1). So A3's R1 reduces to R1(G); the G_1 clause of Thm 3.12 is not needed for it.
3.4 Status. The "[I] G_1 step" of A1_KERNEL §9 / A7_CDC_VERIFY (b2) is CLOSED: (C) for G_1 ⇐ (C) for G + Lemma R. The only new input is R1(G) [R: CMP 99 Thm 3.3 (3.46) for G (printed statement p. 399; proof = Sect. C walk expansion, p. 416 "This implies Theorem 3.3") + Thm 3.11 + CMP 96 Lemma 2.1 Schur]. The Schur step from (3.46) to R1(G) is the one A3_GAMMA0_FULL 6.1 sketches for G_1; it is the same step for G. Writing it out: for X on Ω_0 split X = Σ_{y′}1_{Δ(y′)}X; by (3.46) with h = ℓ_y^{−1}·1_{Δ(y)}: ‖ℓ_y^{−1}1_{Δ(y)}G1_{Δ(y′)}ℓ_{y′}^{−1}‖ ≤ B_0(ℓ_y/ℓ_{y′})e^{−δ_0d(y,y′)} ≤ B_0Le^{−(δ_0 − θ)d(y,y′)} (θ = log L/(RM), A1_KERNEL §5 conversion); block Schur with (2.61) gives ‖𝔴^{1/2}G𝔴^{1/2}‖ ≤ B_0Lc_1 =: K_G [P given (3.46) as printed and [I-geom]].

## 4. The torus-side hypothesis: what breaks, and Lemma T

4.1 What the hypothesis is [V QE_INV §3.4, §4.3; QE_INV_VERIFY §7; QE_KE_HQ_VERIFY §7(4)]. Theorem QE dresses the free kernel E(b, y) with Ad U along an axial path y_− → b and controls holonomies by the cone lemma (QE_INV 2.4), which needs a spanning surface made of plaquettes. Regularity (3.35) bounds plaquettes only. On the periodic lattice, a loop that winds around the torus has no spanning surface; its holonomy (a Polyakov-type loop) is not bounded by (3.35). Example [P]: abelian constant links U_ν = exp(iθσ_3/(N_T/η)) in one direction ν: all plaquettes equal 1 (α_F = 0, so U is regular for every M, α_0), but the loop around direction ν has holonomy exp(iθσ_3), arbitrary θ. QE_INV put such loops into its "far" set (d(b, y) > D = RM/(4L²)), which needs torus side > 2D in d-units: the stated hypothesis "side ≥ c·RM coarsest blocks".

4.2 A second, unrecorded failure: the seam in the energy step [P]. The axial path y_− → b on the torus needs a choice of representative of b − y_− (a fundamental domain around y_−). Every single-valued choice has a seam: for adjacent fine bonds b, b′ on opposite sides of the seam, the thin loop Γ_{y→b}·link·Γ_{y→b′}^{−1} of QE_INV 5.3 winds once around the torus. Its holonomy is the Polyakov loop above, so the bracket in QE_INV 5.3 is O(1), not O(α_F). QE_INV [I-c] says "torus-winding paths do not occur here (b, b′ adjacent, same path family)"; this is false at the seam. Size of the defect, at the coarsest scale (ℓ = 1, η = 1/N, N = L^k, torus side N_T unit blocks): the seam carries ≈ (N_TN)^{d−1} fine bonds of weight η^d = N^{−d}, each with |D_U𝓔_UX| ≈ |E|·2/η ≈ 2NC_He^{−δ_HN_T/2}|X(y)|. Energy ≈ 4C_H²N_T^{d−1}e^{−δ_HN_T}·N·|X(y)|². This grows linearly in N = L^k. So K_𝓔 of QE_INV 5.3 is NOT uniform in k on a torus of fixed side, whatever the side is. The hypothesis "side ≥ c·RM" does not repair this (e^{−δ_HN_T} is fixed while N → ∞). The repair is to cut the kernel off before the seam.

4.3 Lemma T (truncated dressed extension) [P given (KE′), (H_Q), (3.35), and the QE_INV/S2 steps].
Setting. χ ∈ C^∞([0, ∞)), 0 ≤ χ ≤ 1, χ = 1 on [0, ½], χ = 0 on [1, ∞), |χ′| ≤ 3. D ≥ 1. 𝓔^D_U(b, y) := χ(d(b, y)/D)E(b, y)Ad U(Γ_{y→b}), with Γ_{y→b} the axial path in the lift of the ball B_y := {physical ℓ^∞-distance ≤ r_D from y_−}, r_D := L(D + 3(d + 1))·ℓ_y·(1 + O(L^{−1})).
Hypotheses. (T1) RM ≥ 4L²D (so d-geodesics of length ≤ D stay in layers j − 1, j, j + 1; QE_INV 4.3(a)). (T2) torus side N_T (in units of the coarsest block present) > 2L(D + 3(d + 1)) + 2.
Claims.
 (a) No winding. On supp 𝓔^D_U(·, y), d(b, y) ≤ D, so b lies in B_y (QE_INV 4.3(a): physical distance ≤ DLℓ_j + O(ℓ_j)). By (T2), B_y with all Q-legs (length ≤ (d + 1)Lℓ_j) embeds in the torus: it is a box of side < N_T. So the path rule is single-valued, every loop λ_b of QE_INV 2.3 and every thin loop of QE_INV 5.3 with a nonzero coefficient lies in an embedded box, and the cone lemma 2.4 applies in the lift. There is no seam inside supp χ.
 (b) Neumann defect. Q(U)𝓔^D_U − I = [Q^{tr}(U)𝓔^D_U − Q(1)(χE)] + Q″𝓔^D_U + [Q(1)(χE) − I]. The first two brackets are QE_INV 2.3–2.6, 4.3(a) with the extra factor χ ≤ 1 (near terms only; the far set is empty): ≤ c_QMα_0 in the S-norm. The last bracket is −Q(1)((1 − χ)E) because Q(1)E = I (QE_KE_HQ_VERIFY §7(1)). Its (y′, y) entry is bounded by Σ_bq(y′, b)|E(b, y)|1{d(b, y) ≥ D/2}; q(y′, ·) lives within d-distance c_q = c(d)L of y′, so the entry is ≤ C_He^{−δ_Hd(y, y′)/2}e^{−δ_H(D/2 − c_q)/2}. With the S-conjugation of QE_INV 4.4 and Schur (2.61): ≤ c_tre^{−δ_HD/4}, c_tr = c_tr(d, L). So ε_Q^S(D) ≤ c_QMα_0 + c_tre^{−δ_HD/4}.
 (c) Energy. D_U(χ𝓔_U) = χ·(D_U𝓔_U) + (difference of χ)·𝓔_U. First term: QE_INV 5.3 restricted to d(b, y) ≤ D, where all thin loops are near and contractible by (a); [I-c] is not needed. Second term: |χ(d(b′, y)/D) − χ(d(b, y)/D)|/η ≤ 3d(b, b′)/(Dη) ≤ 3/(Dℓ(b)) for adjacent b, b′ (d counts one fine step as η/ℓ(b), A1_KERNEL §5 [I: d = path metric]). So this term is ≤ (3/D)ℓ(b)^{−1}|E(b, y)|, the same form as the K_abs term. Hence K_𝓔^D ≤ 2(√K_abs(1 + 3/D) + 2α_Fc_1)². The S2 step (S2_FORM 4.3) uses only pointwise bounds of |𝓔|, ℓ|∇𝓔|; χE obeys them with constants × (1 + 3/D).
 (d) Choice of D. Let D_0 = D_0(d, L) ≥ 1 be the least D with c_tre^{−δ_HD/4} ≤ ¼. Then (T1) reads RM ≥ 4L²D_0 (inside Balaban's "R, M large" order) and (T2) reads N_T > c_T(d, L) := 2L(D_0 + 3(d + 1)) + 2. With c_QMα_0 ≤ ¼: K_Q ≤ 2, and (C) holds with c_− = 1/(4K^D), K^D the S2 constant with E → χE.
 (e) c_T depends on d, L only (through C_H, δ_H of (KE′) and c_q). It does not depend on R, M, α_0, k, or the volume.

4.4 Lemma T versus (Vol) [P given SOURCES_T2_VOL §2]. (Vol) is already a hypothesis of the Theorem 2 setting: the final torus has ℓ > 22M unit cells, and at step k the side is N_k = ℓL^{K−k} ≥ ℓ in unit blocks. So (T2) holds at every step as soon as 22M ≥ c_T(d, L), i.e. M ≥ M_T(d, L) := c_T/22. This is one more "M large" condition, imposed with d, L fixed and before α_0. Hence the torus-side hypothesis is DISCHARGED: it follows from (Vol) and M ≥ M_T. (The old form "side ≥ c·RM" did not follow from (Vol) ℓ > 22M, since R is also large; T2_VOL row 8 left their relative size open.)
4.5 Dirichlet domains. If Ω_0 ≠ T_η (Dirichlet data on Ω_0^c) the same argument works: E = 0 off Ω_0, and (T2) is used only to embed boxes B_y in the torus. Non-contractible Ω_0 (e.g. a slab around the torus) is covered by the same (T2).
4.6 Residual [R], unchanged: (KE′) with constants C_H, δ_H uniform in the torus side (CMP 96 Cor. 2.8 is stated for the operators G(Ω), Ω ⊃ Ω_1, on Balaban's torus; uniformity for tori of side ≥ c_T is part of the citation, as before).

## 5. The two conventions: statement and justification

5.1 Where they enter [V QE_KE_HQ_VERIFY §6–§7]. Only in (H_Q)(iii): the comparison of the averaged background link Ū^i_c (CMP 98 (42), iterated) with the fine straight-line transport U_0(line_c), g_i ≤ 2.4(d − 1)α_0ℓ_i²·L/(L − 1). The pages read (CMP 98 pp. 19–20, 23) print (14)–(15)/(42) but say "We refer the reader to paper [2] for explanations of symbols used above" [V CMP 98 p. 19 text]. So two symbols are taken by convention:
 (Cv1) U(c) in (42) = the ordered product of the L level-(i − 1) links on the straight segment c_− → c_+ (the x = c_− member of the corridor family Γ_{c,x}).
 (Cv2) The axial contours Γ_{y,x}, x ∈ B(y), are translation covariant: Γ_{y+Le_μ, x+Le_μ} = Γ_{y,x} + Le_μ (one fixed coordinate order, the same rule in every block).
5.2 Justification [P]. Neither convention can change the conclusion; each changes only the constant in (H_Q)(iii), hence c_H, c_Q.
 (Cv1) Any other fixed choice of U(c) as the transport along a lattice contour from c_− to c_+ of length ≤ c(d)L inside B(c_−) ∪ B(c_+) differs from the straight segment by the holonomy of a loop of length ≤ (c(d) + 1)L in that box. By the cone lemma (QE_INV 2.4, base c_−), that loop bounds ≤ c(d)L² level-(i − 1) plaquettes, each with |Ū^{i−1}(∂p) − 1| ≤ 2α_0ℓ_{i−1}² (CMP 98 (53)–(54) [V-text]). So the change is ≤ 2c(d)α_0ℓ_i² per level, the same form as the ribbon term; g_i keeps the form c′(d)α_0ℓ_i²L/(L − 1). U(c) must be a contour transport from c_− to c_+ for (11) (gauge covariance, CMP 98 p. 19 [V]) to hold, so no other kind of choice is possible.
 (Cv2) Translation covariance is used once: to say the loop Γ_{c,x}∘c^{−1} is the boundary of the ribbon Γ_{c_−,x} × [0, L]e_μ, with ≤ (d − 1)L² plaquettes. Without it, Γ_{c,x} = Γ_{c_−,x}·[x, x(c)]·Γ_{x(c),c_+} is still a contour of length ≤ (2d + 1)L in B(c_−) ∪ B(c_+), and the cone lemma bounds the loop by ≤ c(d)L² plaquettes. Same form, larger constant.
5.3 A third bookkeeping point, for completeness [V CMP 99 p. 417 text; P]. CMP 99 (3.110) writes the constraint as L^jηQ_j(U)A = B and then abbreviates it to Q(U)A = B. (3.132)'s prefactor (L^jη)^{−2}(L^{j′}η)^{−d} matches the UNNORMALIZED Q (G ~ ℓ², so QGQ* ~ ℓ² in μ-kernel units), which is the convention of A1_KERNEL §8 and of this file. With the normalized Q̃ = ℓQ one has Q̃GQ̃* = S^{1/2}NS^{1/2}, and (C) reads Q̃GQ̃* ≥ c_−S² with the same c_−. A diagonal rescaling; no constant changes.
5.4 Status. (Cv1), (Cv2) are [R-convention] for the reading of CMP 98/CMP 95 symbols, and [P] for "the conclusion does not depend on them". So they no longer condition (C); they only make c_H, c_Q unvalued.

## 6. Free case U = 1, single layer: the exact constant [P formula, N numerics]

6.1 Formula [P]. At U = 1, Δ′ = 0 and ⟨A, G^{−1}A⟩ = ‖dÃ‖² + ‖RD*A‖² + a‖QA‖² = ‖dA‖² + ‖RD*A‖² + a‖QA‖². A gauge move λ ∈ N(Q′) keeps QA (F1 of A3_GAMMA0_FULL §5) and dA, and the minimizer has RD*A = 0. So
 ⟨B, N^{−1}B⟩ = a‖B‖² + min{‖dA‖² : QA = B} =: ⟨B, (a + K_gi)B⟩ (single layer, ℓ = 1, S = 1),
 c_−^{free} = 1/(a + sup spec K_gi).
Since ‖dA‖² ≤ ‖dA‖² + ‖d*A‖² = Σ_μ‖∇A_μ‖², K_gi ≤ K_F = K_0 of SOURCES_EU §3 (Feynman form).
Momentum form: at coarse momentum p, aliases q_l = (p + 2πl)/N, l ∈ {0, …, N − 1}^d, K_gi(p) = lim_{t→0} max eig [Σ_l W_l(|e_l|²I − e_le_l* + te_le_l*)^{−1}W_l*]^{−1}, e_μ = N(e^{iq_μ} − 1), W = diag(w_μ), w_μ(q) = Π_νD_N(q_ν)·D_N(q_μ), D_N(q) = N^{−1}Σ_{m<N}e^{iqm} (straight-line Q). Exact identity used [P, checked to 1e−9]: W_le_l = Π_νD_N(q_{l,ν})·E(p), E_μ(p) = e^{ip_μ} − 1. So the gauge part is rank one along the coarse gradient E(p): a coarse pure gauge B costs 0, as it must.
6.2 Numerics [N, numerics/t2_ccond_free.py, 6 s Mac]. Real-space dense check (d = 2, N = 3, 4×4 torus, t = 10^{−4}): 48.198346 vs momentum 48.198347. The t → 0 limit is taken with a rank-one penalty 10^8 along E(p).
| d | N = 3 | N = 5 | N = 9 | N = 13 | N = 27 | N → ∞ |
| 2 | 48.198 | 61.728 | 68.572 | — | 71.607 | 71.995 (N = 243) |
| 3 | 75.310 | 102.108 | 117.999 | — | 125.798 | 126.853 (EU) |
| 4 | 103.248 | 146.731 | 176.522 | 185.643 | — | 195.188 (EU) |
(sup over p of K_gi; attained at p = (π, …, π) in every case; grid sweeps for N ≤ 27 (d = 2), N ≤ 5 (d = 3), N ≤ 3 (d = 4) found no larger value.)
Findings. (i) K_gi = K_F to 10^{−6} at the maximum, for every (d, N) tested. Reason [P]: at p = (π, …, π) the Feynman symbol T_F is a multiple of I by the cubic symmetry, so the Feynman minimizer of a coarse-divergence-free B (E(p)*B = 0) has d*A = Δ^{−1}Q′*d_c*X = 0 (Q(dλ) = d_c(Q′λ) gives d*Q* = Q′*d_c*); it is then also the |dA|²-minimizer. So the Feynman constant K_0 of SOURCES_EU is EXACT for G at U = 1, not only an upper bound. (ii) c_−^{free} = 1/(1 + K_0): d = 4: 1/196.19 = 5.10·10^{−3}; d = 3: 7.82·10^{−3}; d = 2: 1.37·10^{−2} (a = 1, N → ∞). (iii) L-dependence: in a single layer the constant depends on N = L^k only, increases with N, and its supremum (the uniform constant) is the N → ∞ value, which does not depend on L. L enters the multiscale constant only through interface factors (QE_INV 4.3(c), 4.4: ≤ 2, L^{|d−2|/2}) and through C_H, δ_H of (KE′); not computed here. (iv) Worst B = checkerboard, as in SOURCES_EU.

## 7. Regular U: what the perturbation argument gives, and what it does not

7.1 G → G_1 at the same U: relative, linear in Mα_0 [P, Lemma R]: c_{−,1} = c_−(U)/(1 + δ_1), δ_1 = 4c_2(K_G + B_0²c_1²)Mα_0. This is the brief's "(I5)/(3.36) smallness" made rigorous: Δ_π^{(2)} is O(Mα_0) RELATIVE TO G^{−1} (not relative to the free operator).
7.2 U → 1: there is no global comparison [P]. The form "c_−(U) = c_−^{free}(1 − O(Mα_0))" would need G(U)^{−1} ≈ G(1)^{−1} in a common frame. §4.1's example (flat links with arbitrary Polyakov loop, α_F = 0) is regular for every M, α_0, and is not gauge equivalent to U = 1 on the torus; A1_KERNEL §3 gives the same obstruction for non-flat regular U (close to a pure gauge only on cubes of O(M) blocks). So the perturbation from U = 1 is LOCAL: Theorem QE + Lemma T dress the free kernel with local transports and pay O(Mα_0) per loop (cone lemma) plus e^{−δ_HD/4} for the cut-off. The constant obtained is c_−(U) ≥ 1/(4K^D), uniform but crude: K^D uses absolute-value Schur bounds and is 40–75× the true slope in the QE numerics. The linear form c_−^{free}(1 − O(Mα_0)) is NOT proved; SOURCES_EU §4 has the weaker K ≤ K_0(1 + c(Mα_0)^{2/3} + c′Mα_0) [P-sketch]. No consumer needs the sharp form: Lemma CT, IN3, C2, and A7's γ_1^N use only c_− > 0 uniform.

## 8. Conclusion and ledger

8.1 Verdict. (C) is PROVED relative to the inputs listed in 8.2, for G and for G_1, with no torus-side hypothesis beyond (Vol) and no dependence on the two conventions. Grade: unverified (Opus draft); it needs an independent verifier before any ledger row changes.
 (C) for G: c_− = 1/(4K^D) [P, §2.1 + Lemma T].
 (C) for G_1: c_{−,1} = c_−/(1 + δ_1), δ_1 = 4c_2(K_G + B_0²c_1²)Mα_0 [P, Lemma R].
 Hypotheses on parameters: Mα_0 ≤ a_0(d, L) (c_QMα_0 ≤ ¼, 2B_0²c_1²κ′Mα_0 ≤ ½, δ_1 ≤ ½); RM ≥ 4L²D_0(d, L); M ≥ M_T(d, L) = c_T/22; (Vol) ℓ > 22M. All inside Balaban's order (d, L; then R, M; then α_0).
8.2 Inputs.
 [V] (KE′): CMP 96 Cor. 2.8 (2.150)–(2.151), straight-line Q (QE_KE_HQ_VERIFY §1–§4); constants uniform in the torus side (part of the citation).
 [V] (3.35) regularity; CMP 96 Lemma 2.1 (2.60)–(2.61); CMP 99 (3.10), (3.20)–(3.21), (3.119), (3.128), (3.134)–(3.138).
 [R] CMP 99 Thm 3.1 (3.46) for G′ (used in S2 route Π and Lemma R (b)); Thm 3.3 (3.46) for G (used only for R1(G), §3.4); Thm 3.11 (G > 0) (p. 416 proof printed). Thm 3.12 is no longer needed for G_1 > 0 or for A3's R1 (§3.3).
 [P, verified elsewhere] (H_Q) (QE_KE_HQ + VERIFY); Theorem QE steps 2.3–2.6, 4.3(a), 4.4, 5.1–5.2 (QE_INV + VERIFY); S2 route Π (S2_FORM + VERIFY); S2_G1 A2–A3.
 [P, here] Lemma R (§3.2), consequences §3.3; Lemma T (§4.3) and the (Vol) discharge (§4.4); convention independence (§5.2); free exact constant formula (§6.1).
 [I] [I-a1] Thm 3.1 at the model's a (a = 1 in CMP 99); [I-geom] blocks Δ(y), y ∈ 𝔅, partition Ω_0; d of (2.46) is a path metric with one fine step = η/ℓ(b) (A1_KERNEL §5; used in Lemma T (c)).
 [R-convention] (Cv1), (Cv2) — reading of CMP 98/95 symbols; the conclusion does not depend on them (§5.2).
 [N] §6: K_gi = K_0 at the maximum; c_−^{free} = 5.10·10^{−3} (d = 4), 7.82·10^{−3} (d = 3), 1.37·10^{−2} (d = 2); L-independent in the N → ∞ limit.
8.3 New finding (affects verified files) [P]. QE_INV 5.3 [I-c] is false on the periodic lattice: every single-valued axial path rule has a seam, and the thin loop across the seam winds the torus. The energy defect there is ≈ 4C_H²N_T^{d−1}e^{−δ_HN_T}·L^k, not uniform in k for any fixed torus side; "side ≥ c·RM" does not fix it. S2_FORM 4.3 inherits it through K_∇. Lemma T (cut-off χ(d/D_0)) repairs both. QE_INV_VERIFY and S2_FORM_VERIFY did not see this (they checked Q𝓔 − I on the torus, not the energy at the seam).
8.4 Ledger consequences (not edited here; for the coordinator). Rows A1 (remaining items), A1w (IN3), A2 (C1, C2), A7 (C2 and its [I] G_1 step, A7_CDC_VERIFY (b2)), A16 (A1-W for G_1 "conditional on (C)"), and the round-6 residue list: "(C) [conditional: torus side + two conventions]" → "(C) [P relative to 8.2; SOURCES_C_CONDITION, unverified]". The torus hypothesis is replaced by (Vol) + M ≥ M_T; the two conventions move to "constants only"; the [I] G_1 step is closed by Lemma R, with R1(G) [R] as the new citation.
8.5 Verifier asks. (1) §4.2 seam: is there a path rule on the torus without a winding thin loop (I claim no, for nontrivial Polyakov loops), and the size estimate. (2) Lemma T (a)–(c): the embedding under (T2), the cut-off defect via Q(1)E = I, and the gradient of χ(d/D) in the d-metric. (3) Lemma R (b)–(d): Π3 in the ‖RD*A‖ form and the absorption. (4) §3.4 Schur from (3.46) to R1(G): the power ℓ_y² belongs to the output block (p. 398). (5) Rerun numerics/t2_ccond_free.py; check the §6.2 reason for K_gi = K_F.
Status: COMPLETE for this session.

Corrections after verification (SOURCES_C_CONDITION_VERIFY, 2026-10-28, images): all five claims CONFIRMED; (C) PROVED for G (c_− = 1/(4K^D)) and G_1 (c_{−,1} = c_−/(1 + δ_1)) relative to the §8 input set of the verify file. Seam test (numerics/c_verify_seam.py, d = 2, Polyakov angle 1, N_T = 6): seam energy 0.032 → 1.709 for N = 3 → 243 (predicted 1.70); cut-off D < N_T/2 makes it uniform (2.486); D = 4 > N_T/2 still grows — (T2) is a real condition. §5.2 "no other kind of choice is possible" → restrict to contour choices. K_0(N → ∞) = 72.000 (d = 2), 126.853 (d = 3), 195.188 (d = 4) (numerics/c_verify_kinf.py); K_gi = K_F at p = (π, …, π) proved directly; monotone growth in N numerical only. Omissions: the [I] reading behind the symmetry of Δ^{(2)} (S2_G1 A2.5); θ ≤ δ_0/2 and θ_S ≤ δ_H/8 ("RM large"); Lemma T (b) drops Ad U(τ) (entrywise bound unchanged); the seam prefactor N_T^{d−1} is an upper count. QE_INV_VERIFY and S2_FORM_VERIFY need an erratum: [I-c] false at the seam, Lemma T repairs it. Remaining [R]: Thm 3.3 (3.46) for G (printed sketch), Thm 3.1 at a = 1, Thm 3.11 (G > 0), the (3.137) constant, (KE′) with torus-uniform constants.
