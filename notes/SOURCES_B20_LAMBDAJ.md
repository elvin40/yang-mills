# SOURCES_B20_LAMBDAJ — field-dependent domains Λ_j in the W factorization (B20 sub-item)

Date: 2026-10-28. Target: the open sub-item of TRUST_LEDGER row B20, "field-dependent domains Λ_j in the W factorization".
Ledger tags: [P] proved here, [V] read on a page image or verbatim source, [I] interpretation/reading, [R] reduced to named inputs.
Firewall kept: no reads of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

## 0. Status
In progress. Sections are appended one per step.

## 1. Where the field-dependent Λ_j enter the project's W factorization

Inputs read: TRUST_LEDGER B20, B11, B13; SOURCES_D2 §5.1 + D2_VERIFY V7; SOURCES_D3 (1.b), (L1)–(L5), item (vii) + D3_VERIFY item 5; SOURCES_D3W8 §1–§2 + VERIFY S7; SOURCES_A23_TSTEP (a).

Three places use Λ_j.
 (E1) W split (D2 §5.1, D3 (vii)). Balaban subtracts E^{(j)}(Λ_j, 1) = Σ_{X ⊂ Λ_j^{(j)}} E^{(j)}(X, 1) (CMP 119 (2.25)). The index set {X ⊂ Λ_j^{(j)}} depends on Λ_j. D3 (vii) already splits Σ_{X⊂Λ_j} w = Σ_{all X} w − Σ_{X⊄Λ_j} w: the first sum goes into W_k[f]; the second goes into e_k^f, a large-field activity. D3_VERIFY item 5 CONFIRMED this split (CMP 119 pp. 262, 279).
 (E2) (W4) (D3W8 §2.2). The input collection I = {I^{(j)}(X)} is indexed by slots (j, X), X ⊂ Λ_j. The output map G(I) is "restricted to X ⊂ Λ_{k+1}". So the slot set of the inputs and the slot set of the outputs depend on Λ_1, …, Λ_{k+1}. (W4) asserts holomorphy of G on the ball ‖I‖ < 2E_0 in this slot space.
 (E3) (P8) (D3W8 §1). The t-measure integrates A restricted to Λ_{k+1} (CMP 119 (1.26), (3.27)), with covariance C^{(k)}(Λ_{k+1}). The sourced covariance C_f^{(k)} = (C_0^{−1} − g_k²𝒲_S)^{−1} uses C_0 = C^{(k)}(Λ_{k+1}).

What each place needs. In every case the needed property is a statement for ONE fixed sequence of regions:
 (N1) the factorization identity holds term by term in the sum over region sequences, with W_k[f] independent of the term;
 (N2) for a fixed region sequence, the slot space of (W4) is a fixed finite set, and the ball radius 2E_0 does not depend on which sequence is fixed;
 (N3) for a fixed Λ_{k+1}, the covariance change and the domination of §1.4 hold with constants independent of Λ_{k+1}.
The issue would be real only if Λ_j were a function of the integration variable INSIDE one term (then holomorphy in I and in f would act on a domain that moves with the field). Section 2 shows this never happens: Λ_j are summation indices, and the field dependence lives in the characteristic functions χ, which multiply the term and are not differentiated.

## 2. Balaban's construction: Λ_j is a summation index, not a moving domain

2.1 Page facts (CMP 119, page images at 300 dpi, /tmp/b20img).
 (F1) p. 252 [V, text]: "After the change of variables we obtain an expansion of the form (1.15), but with the additional sum over Λ_1, the characteristic function χ_0(Ω_1) replaced by Σ χ^{(0)}(Λ_1) χ^{(0)}(Ω_1 ∩ Λ_1^c) χ^{(0)c}(R_1) χ_1(S_1) (1.25) … For each term in this expansion consider the conditional integral with respect to the variables A restricted to Λ_1. This integral is equal to the corresponding conditional integral in the case analyzed in [I], i.e. where there are no large field regions, but with a different background field."
 (F2) p. 253 [V, image]: (1.26) is that integral, with the Gaussian measure dμ_{C^{(0)}(Λ_1)}, normalization Z^{(0)}(Λ_1), and output E^{(1)}(Λ_1, g_0, Λ_1^c A). Then (1.28): ρ_1(V) = Σ_{{Ω_1, Λ_1}} χ_1(Ω_1) T_1({Ω_1, Λ_1}) exp A_1(1/g_1², U_1). The renormalization "in the region Λ_1" subtracts values at U_1 = 1 and β_1(g_0)A(φ_1, U_1), φ_1 ∈ C_0^∞(Λ_1).
 (F3) p. 278 [V, image]: "The important remark is that the terms E_0^{(k+1)}(Λ_{k+1}, X, z) of this representation, for X ⊂ Λ_{k+1}, do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice, i.e. in the framework of [I]."
 (F4) p. 279 [V, text; image-checked in A15_BDRY_VERIFY]: R″ terms with localization in Λ_{k+1} "have the same important property … they do not depend on Λ_{k+1}"; the rest of (3.47) goes to the boundary term B^{(k+1)}; the expectation in (3.28) and the first one in (3.26) go wholly to B^{(k+1)}.
 (F5) SOURCES_D3 (1.b) (inductive form, CMP 119 (2.17)–(2.22) [V]): ρ_k = Σ_{{Ω_j},{Λ_j},{S_j}} T_k(χ_k exp A_k). The sum over region sequences is outside every integral of the term.

2.2 Lemma Λ (structure) [P, from F1–F5]. Fix k. (a) For each region sequence σ = ({Ω_j}, {Λ_j}, {S_j})_{j≤k+1}, the term T_{k+1}^σ is a product of characteristic functions χ^σ (the only field-dependent objects that select σ) and an integral whose integrand, domain of integration (A restricted to Λ_{k+1}), covariance C^{(k)}(Λ_{k+1}), and localization index sets {X ∈ D_j : X ⊂ Λ_j} are all fixed by σ. (b) On a finite torus there are finitely many σ (each Ω_j, Λ_j, S_j is a union of cubes of a fixed size from a finite set). (c) χ^σ never enters the activities: E, R, B are defined on the support of χ^σ by integrals at fixed σ. Proof. (a) is (F1)–(F2) at j = 1 and (F5) with p. 278–279 at step k+1: the integral is "the conditional integral with respect to the variables A restricted to Λ_{k+1}" with fixed covariance; the output is booked as E (X ⊂ Λ), R″ (X ⊂ Λ), or B (the rest). (b) is the finite torus. (c): the activities are defined as logarithms of the conditional integrals of (1.26)/(3.37), in which χ^{(0)}(Λ_1) is the small-field cutoff of the integration variable (part of the integrand, inside the cluster expansion), and the large-field χ's localized in Ω ∩ Λ^c multiply the term from outside (p. 253 "the product of all the characteristic functions in (1.25) localized in Ω_1 ∩ Λ_1^c by χ(Ω_1 ∩ Λ_1^c, S_1)"). ∎
Consequence. "Field-dependent Λ_j" means: the field selects which σ-term is non-zero, through χ^σ. Inside one σ-term, Λ_j is a constant set. No derivative in the input activities I, in t, or in f ever acts on χ^σ: holomorphy statements are made at fixed σ, and the χ's multiply afterwards. [P]

2.3 Value independence (the s-rule tool). By (F3)–(F4) and Claim L_G of SOURCES_A15_BDRY (verified, round 6; inputs (L2_Λ), (Enl), (Dom), (Conv_Λ) [I], Λ_j nesting [I] and the LOC inputs): for X ⊂ Λ_{k+1}, G(I)(X) = 𝒢_X(I|_X, U|_X, J|_X), the same map in every volume and for every Λ_{k+1} ⊃ X. So σ changes only WHICH slots exist, never the VALUE of an activity on an existing slot. This is the key tool for (N1)–(N3). [P rel. A15_BDRY inputs]
