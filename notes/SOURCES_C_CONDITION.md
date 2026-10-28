# SOURCES_C_CONDITION — the (C) condition (lower bound on the compressed operator)

Date: 2026-10-28. Status: in progress. Ledger: [P] proved here, [V] verified from source/numerics, [I] interpretation, [R] relies on printed claim, [N] numerics only.
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
