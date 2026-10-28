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
