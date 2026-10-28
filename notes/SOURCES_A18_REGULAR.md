IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_A18_REGULAR — regular-class identification (TRUST_LEDGER row A18)

Date: 2026-10-28. Ledger tags: [P] printed (page cited), [V] verified by us on the page image, [I] interpretation/reading, [R] relied on (printed sketch or assertion, not checked line by line).
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## 0. Target (row A18, verbatim content)
Backgrounds of CMP 109/116/122 lie in the regular class of CMP 99 (3.35)–(3.36) / CMP 102 (3.35)–(3.38) where A1, A3, A4 are stated; Q(U) = Q_free(1 + O(α_0)); ‖C(U)‖² ≤ L^{d+1}(1 + O(α_0)); CMP 109 C-map = CMP 99 C-map; J-term O(Mα_0); σ-localized operators covered. Ledger status before this file: implicit; several pieces UNSUPPORTED on the read pages; k-uniformity of CMP 102 constants C_2, C_4, B_0 [I].
Consumers (grep A18 in TRUST_LEDGER): A2 (WC_FULL I4: A3-R2 = A18 piece), A4 (reduction input), A5 (N6, N8: k-uniformity of CMP 102 constants), A7 (via A3-R4 and I3), A13 (inside Balaban), B13, B17 (via (M-A)/(H−) background matching), C7 (CMP 109 → CMP 99 C-map transfer), §4 binding sets.

## 1. The CMP 99 regular class, exactly [V: CMP 99 "Propagators…" p. 396, pdf page 8, 300 dpi image; top of p. 397]
Page correction: the brief says pp. 398–399. The definition is on p. 396. Pp. 398–399 hold Thms 3.2–3.3 and the sentence "the constants … do not depend on the sequence {Ω_j} if (2.1), (2.2) are satisfied" (p. 399 [V text]).
1.1 Cube class 𝒦. Each cube □ has a unique index j, 0 ≤ j ≤ k, with □ ⊂ B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}), □ ∩ B^j(Λ_j) ≠ ∅, and □ a union of several big (M-)blocks of T_{L^{−j}}. Its size in T_η is O(1)ML^jη, "O(1) will mean a number ≥ 10". Λ_0 = Ω_0 \ Ω_1, Ω_0 = union of big blocks of T_1 at distance ≤ RM from Ω_1.
1.2 (3.35). For every □ ∈ 𝒦 there is a gauge transformation u on □ with U^u = e^{iηA} and, if □ has index j:
 |A| < O(1)Mα_0(L^jη)^{−1}, |∇^ηA| < O(1)Mα_0(L^jη)^{−2} on □, where O(1)M is the size of □ in T_{L^{−j}}.
1.3 (3.36). |∂^{η*}∂^ηA| < O(1)Mα_0(L^jη)^{−3} on □ (same gauge, same cube).
1.4 Remarks printed on the page. "We will need α_0 so small that O(1)Mα_0 is still a sufficiently small number." The conditions impose nothing on U outside Ω_0. The operators up to (3.34) need (3.35) only; (3.36) is assumed later (it enters the J-term, SOURCES_WG 4.1).
1.5 Complex class (3.37)–(3.38). U′U with U G-valued, U′ = e^{iηA′}, A′ ∈ 𝔤^c, pair (α_0, α_1):
 (3.37) U satisfies (3.35), and |A′| < α_1(L^jη)^{−1}, |∇^η_U A′| < α_1(L^jη)^{−2} on Ω_j, j = 0, …, k;
 (3.38) U satisfies (3.35), (3.36), A′ satisfies (3.37), and |D^{η*}_U D^η_U A′| < α_1(L^jη)^{−3} on Ω_j.
 Top of p. 397 [V]: "We will prove in another paper that if U′U satisfies (3.37), (3.38), then it satisfies also (3.35), (3.36) with α_0 replaced by O(1)(α_0 + α_1), but we will not use this fact here." [P-claim, not proved in CMP 99.]
1.6 Observations [P].
 (a) The constants O(1) in (3.35)–(3.36) are unnamed; the only printed constraint is O(1) ≥ 10 for the cube size. The bound constant is free. So "U is regular with (M, α_0)" means: for some fixed c_reg(d, L), the bounds hold with O(1) = c_reg. Every theorem of CMP 99 then holds for Mα_0 ≤ a_0(d, L) with a_0 depending on c_reg [I: this is how "O(1)" is used throughout CMP 99].
 (b) The bounds are on the potential A in a local gauge, not on the plaquette field. On T_η, ∇^ηA bounds ∂^ηA, so the curvature in the gauge satisfies |∂A| ≤ O(1)Mα_0(L^jη)^{−2} and the plaquette angle ≤ η²·O(1)Mα_0(L^jη)^{−2}. The converse (plaquette bound ⇒ a gauge with (3.35)) needs an axial/tree gauge construction on □; that is the content of the CMP 99 "Regular gauge configurations" paper [to read, §3 below].
 (c) The bounds hold at the scale of the cube's own index j, in the scaled units of (L^jη). In units L^kη = 1 near Λ_k (index k), (3.35) reads |A| < O(1)Mα_0, |∇A| < O(1)Mα_0 (unit lattice, after the scaling A ↦ L^kηA).

## 2. The bridge paper: CMP 99 "Spaces of regular gauge field configurations … gauge fixing" (pp. 75–108) [V images p. 77, p. 99; text pp. 76–99]
2.1 Space 𝔘_k({Ω_j}, α_0) (p. 77 [V]). All U on T_η with, for j = 0, …, k:
 (1.7) |U(∂p) − 1| < α_0 L^{−2j} for p ∈ Ω_j, equivalently (1.8) |U(∂p) − 1| < α_0 η²(L^jη)^{−2} (here η = L^{−k}; the two agree);
 (1.9) |(D^{η*}_U ∂U)(b)| < α_0 L^{−2j}(L^jη)^{−1} for b ∈ Ω_j.
 Gauge invariant. It suffices to impose (1.7), (1.9) on B^j(Λ_j). Domains (1.3)–(1.4): Ω_0 ⊃ … ⊃ Ω_k, Ω_j = B^j(Ω_j^{(j)}), unions of cubes of size M_1L^jη, (L^jη)^{−1}dist(∂Ω_j, Ω_{j+1}) > RM_1; R so large that the propagator theorems of CMP 96/99 hold for RM_1.
 This is a PLAQUETTE-FIELD class (gauge invariant, no gauge chosen). (3.35)–(3.36) of the propagator paper is a POTENTIAL class (a local gauge exists).
2.2 Section F, "Removal of the additional regularity assumption" (pp. 97–99 [V p. 99 image]). Claim: (3.35) of [4] (= CMP 99 propagators) follows from U_0 ∈ 𝔘_k({Ω_j}, α_0). Steps printed:
 (1.128) |Ū_0^j(∂p) − 1| < 2α_0L²(L^jη)² for p ⊂ Ω^{(j)}, from (1.7)–(1.9) + CMP 98 Prop. 2 [R];
 (1.129) axial gauge on □̃^{(k)}; |U′_0(x, x′) − 1| < |x − y|²L²α_0 ≤ (M + 4R_1M_1)dL²α_0; needs α_0 ≤ O(1)M^{−1}, O(1) small;
 (1.130) |Ū″_0^j(x, x′) − 1| < 8d²L²(L^{−2(k−j−1)} + … + 1)α_0 + (M + 4R_1M_1)dL²α_0 < 11d²L²α_0 + 5dL²Mα_0 < 6dL²Mα_0;
 (1.132)–(1.133) U″_0 ∈ 𝔘_k({□_j}, L³α_0) ∩ Ax_k(ℭ_k, 1), |Ū″_0^j − 1| < 6dL²Mα_0 on □_j^{(j)};
 if 7dL²Mα_0 ≤ c_1, Theorem 4 (= the inductive form of Theorem 2) applies to (1, U″_0).
2.3 Proposition 6 (p. 99 [V]). Let U_0, □ (size ML^jη, M a multiple of R_1M_1, □ ⊂ Ω_j, □ ⊄ Ω_{j+1}) be as above, and 7dL²Mα_0 ≤ c_1. There is a gauge transformation u on □̃ with U_0^{u^{−1}} = U_1 = e^{iηA} on □̃ and
 (1.136) L^jη|A|, (L^jη)²|∇^ηA|, (L^jη)³|∂^{η*}∂^ηA|, (L^jη)³|Δ^ηA| < 7dL²B_1Mα_0 on □_j,
 plus (1.137) a holonomy bound and (1.138) R∂^{η*}A = 0 (Landau gauge). B_1, c_1 are the constants of Theorem 2: "absolute constants depending on d and L only" (p. 83 [V text]).
2.4 Reading [P given Prop. 6 [R]]. Prop. 6 delivers BOTH (3.35) and (3.36) of the propagator paper on every cube □ of 𝒦, with the explicit constant
 O(1) in (3.35)–(3.36) := c_reg := 7dL²B_1(d, L),
 under the smallness condition 7dL²Mα_0 ≤ c_1(d, L) (and α_0 ≤ O(1)M^{−1}, implied by it).
 So: 𝔘_k({Ω_j}, α_0) ⊂ Reg_{99}(M, α_0; c_reg) whenever 7dL²Mα_0 ≤ c_1. Status of Prop. 6: printed with a proof that rests on Theorem 2/Theorem 4 of the same paper (inductive construction, pp. 83–97) [R]; we did not check Theorems 2/4 line by line.
 Note on the cube-size mismatch: (3.35) needs cubes of size O(1)ML^jη with O(1) ≥ 10; Prop. 6 is stated for cubes of size ML^jη with M a multiple of R_1M_1. Apply Prop. 6 with M replaced by M_□ := O(1)M (≥ 10M, rounded up to a multiple of R_1M_1). Then the constant becomes 7dL²B_1M_□α_0 = c_reg·(O(1)M)α_0, i.e. still "O(1)Mα_0" [P]. Condition: 7dL²M_□α_0 ≤ c_1.

## 3. The CMP 109 background domains, exactly [V: CMP 109 p. 260 image (1.2), p. 262 image (1.10)–(1.16); text pp. 263, 265–268]
3.1 Real backgrounds, space 𝒰_k(ε_0) (p. 260 (1.2) [V]). All U with
 |U(∂p) − 1| = |(∂U)(p) − 1| < ε_0η², η = L^{−k}, p ∈ T; |J| < ε_0 on T, J = D_U^{η*}η^{−2}π Im ∂U.
 Text after (1.2) [P text]: by CMP 98 Prop. 2 this implies |V(∂p′) − 1| < 2ε_0 for p′ ∈ T^{(k)} (V = M^k(U)).
 Minimal configurations U_k(V) (p. 260 (1.1)): the unique regular critical (minimal) orbit of A(U) under Ū^k = M^k(U) = V on T^{(k)} (CMP 102 Thm 1).
3.2 Local complex space 𝒰^c_j(X, α_0, α_1, γ_0) (p. 262 [V]), X ∈ 𝐃_j, scale ξ (= L^{−j} in units where the j-lattice is unit): union of G^c-orbits [(𝐔, 𝐉)] of pairs with
 (i) 𝐔 = U′U, U G-valued, |∂U − 1| < α_0ξ² on X (1.11); for each cube □ ⊂ X of size O(1)LM there is a G-valued u on □ with U^u = exp iξA, |A|, |∇^ξA| < O(1)LMBα_0 on □ (1.12), "with a sufficiently large constant B (it will be determined later)";
 (ii) U′ = exp iξA′, A′ 𝔤^c-valued, |A′|, |∇^ξ_U A′| < α_1 on X (1.13);
 (iii) |∂𝐔 − 1| < α_0ξ², |𝐉| < γ_0 on X (1.14);
 (iv) with X = Ω_0 and the maximal sequences {Ω_n} of CMP 99-regular (1.3)–(1.6), the minimal configurations of the averaged fields satisfy |∂U_n(M′(𝐔)) − 1| < α_0ξ², |J_n(M′(𝐔))| < α_0(L^nξ)² on X̃^{−2} (1.16), and the same for U.
 Usually γ_0 = α_0. P. 262 bottom [V]: "(i)–(iii) … appeared many times in the previous papers, e.g. see (3.35)–(3.38) [13]" ([13] = CMP 99 propagators). P. 261 [P text]: regularity "means that at least the conditions (3.35)–(3.38) [13], or (1.7)–(1.10) [14] are satisfied".
3.3 Remark p. 263 [P text]: (i)–(iii) with α_0′ < α_0, α_1′ < α_1, plus CMP 102 Prop. 9, give (iv) with 2B_3α_0′ for α_0′ small. "In particular the minimal configurations U_j satisfying |∂U_j − 1| < ε_0ξ² with ε_0 sufficiently small, satisfy the above conditions." [P-claim; the (1.12) gauge bound for U_j is supplied by CMP 102 Thm 1 (9), see §4.]
3.4 The k-th step background and the fluctuation domain (pp. 265–268 [P text]).
 - The new block field W on T^{(k+1)} is "so regular that the minimal configurations U_{k+1}(W) exist and belong to 𝒰_{k+1}(ε_0)" (p. 265).
 - Background of the step: V^{(k)} = V^{(k)}(W) = M^k(U_{k+1}) (2.3), U_{k+1} = U_{k+1}(W) in the axial gauge. The fine background for propagators: U_{k+1}, moved to the Landau gauge by u_k (CMP 99 regular, Thm 2).
 - Fluctuation variable B′ = (1/i)log(V V^{(k)−1}) on T^{(k)}; cut χ_k = Π_b χ(|B′(b)| < ε_1) (2.9); after the linearization B′ = B − hD(B) and the scaling B′ = g_kB the cut reads |B(b)| < ε_1/g_k (row C7, closed).
 - Gaussian part (2.11): ½⟨B′, Δ^{(k)}B′⟩, "see the definition (3.156) [13] with the δ-function gauge fixing term replaced by the exponential one".
 - C-map (p. 268 [P text]): δ(QB′) eliminates B′(b_0(c)), c ∈ T^{(k+1)}; remaining variables B; B′ = CB, "C is the operator determined by the configuration V^{(k)}"; covariance C^{(k)}(U_{k+1}) = (C*Δ^{(k)}C)^{−1}.
 - h (p. 267): (hB)(b_0(c)) = h(c)B(c), h(c) = L^{−1}·(coefficient of B′(b_0(c)) in (QB′)(c))^{−1}; LQh = I on T^{(k+1)}.
3.5 Which inequalities define "the background" of CMP 109 step k [P, reading of 3.1–3.4]: U_{k+1} ∈ 𝒰_{k+1}(ε_0), i.e. on the unit lattice of step k+1 (ξ = L^{−(k+1)}): plaquette bound ε_0ξ² and |J| < ε_0. There are no separate bounds on B for the background: B is the integration variable, cut at ε_1/g_k; the background enters only through U_{k+1} (and V^{(k)} = M^kU_{k+1}).

## 4. CMP 102 Theorem 1, CMP 116 and CMP 122 I background domains
4.1 CMP 102 "Variational problem…" Theorem 1 (p. 279 [V image]). Input (7): |(∂V)(p′) − 1| < ε_1 for p′ ∈ 𝔅 (block plaquettes; boundary convention p. 278). Space (2): 𝔘_k({Ω_j}, ε_0) = CMP 99-regular (1.7)–(1.9). Statement: there are a_0, a_1, B_3, B_4(β_0), M(ε_1), B_3a_1 ≤ a_0, such that for V with (7) and ε_1 ≤ a_1 a minimal orbit exists in 𝔘_k({Ω_j}, B_3ε_1) ∩ 𝔅_k(𝔅_k, V) (8); unique critical orbit in (6) if B_3ε_1 ≤ ε_0 ≤ a_0. For every cube □ of size 2ML^jη, M ≤ M(ε_1), M a multiple of R_1M_1, whose concentric cube □̃ of size (2M + 4R_1M_1)L^jη lies in B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}) but not in B^{j+1}(Λ_{j+1}), there is u on a neighbourhood of □ with U^{u^{−1}} = e^{iηA} and on □:
 (9) |A| < B_3Mε_1(L^jη)^{−1}, |∇^ηA| < B_3Mε_1(L^jη)^{−2}, ‖A‖_{1,β} < B_4(β_0)Mε_1(L^jη)^{−2−β};
 (10) |∂^{η*}∂^ηA|, |Δ^ηA| < B_3Mε_1(L^jη)^{−3}.
 "a_0, a_1, B_3 depend on d and L only"; M(ε_1) = R_1M_1(a_1/ε_1). [V] So B_3 is k-free by the printed statement (part of the A5/N8 "k-uniformity of CMP 102 constants" item; C_2, C_4, B_0 of SOURCES_MA2 are not checked here).
 Citation fact [P text, CMP 102 var. l. 1534]: "configuration U satisfying the regularity conditions (3.35)–(3.38) [5], or (1.7)–(1.9) [6]". So the ledger's "CMP 102 (3.35)–(3.38)" is CMP 99's (3.35)–(3.38) as cited in CMP 102; CMP 102 has no own (3.35)–(3.38).
4.2 CMP 116 (p. 2 [P text]). The typical term is analytic for (𝐔, 𝐉) ∈ U^c_{k+1}(□_0, (1 + 2β)α_0, (1 + 2β)α_1, α_0) and A with (I.3.31). This is the CMP 109 space 3.2 with α_0, α_1 enlarged by (1 + 2β) (β = ¼ in the canon, B5) and γ_0 = α_0. The propagators are "represented by the sum (3.107) [13]" with walk bound "(3.108) [13]" (p. 3), i.e. CMP 99 walk expansions at the CMP 109 background. Nothing new on U is imposed on pp. 3–6; the s-dependence is put on operators only (§7 below).
4.3 CMP 122 I spaces U^{(n)c}_k(X, α_0, α_1) (pp. 190–191 [V images]). Pairs (𝐔, 𝕁) on X, 𝐔 = U′U, U G-valued, U′ = exp iηA′; for each cube □ of the family a gauge u on □ ∩ X with U^u = exp iηA, A ∈ 𝔤. Three regimes:
 (i) m = 1, …, j−1 on (Ω″_m \ Ω″_{m+1}) ∩ X, and m = j on (Ω″_j \ Ω_{k_0+1}) ∩ X: |∂𝐔 − 1|, |∂U_{p,X}(M′(𝐔)) − 1|, |𝕁|, |𝕁_{p,X}(M′(𝐔))|, |∂U − 1|, |A′|, |∇^η_U A′| < (1 − βΣ_{i=h+1}^{j}2^{−|m−i|} − βΣ_{q=m+1}^{k}2^{−(q−m)})L_0^{2max{0, m−k_0}} · [α_{0,m}η²(L^mη)^{−2}, α_{0,m}L^{−2p}(L^mL^{−p})^{−2}, α_{0,m}(L^mη)^{−3}, α_{0,m}L^{m−min{p,m}}(L^mL^{−p})^{−3}, α_{0,m}η²(L^mη)^{−2}, α_{1,m}(L^mη)^{−1}, α_{1,m}(L^mη)^{−2}] (entries in the order of the left list), p = 1, …, k;
 (1.65) L^mη|A|, (L^mη)²|∇^ηA| < L_0^{2max{0, m−k_0}}BCMα_{0,m} for □ of size CML^mη as stated;
 (ii) m = k_0+1, …, j on (Ω_m \ Ω_{m+1}) ∩ X: the same list with the index j in place of m inside the bracket and factor L_0^{2(j−m)} (1.66); (1.67) L^jη|A|, (L^jη)²|∇^ηA| < L_0^{2(j−m)}BCMα_{0,j};
 (iii) m = j+1, …, k: the same list with c·[…], c = 1 (m < k), 3 (m = k), no L_0 factor (1.68); (1.69) L^mη|A|, (L^mη)²|∇^ηA| < BCMα_{0,m}.
 "C ≤ 2 … B is a fixed absolute constant, for example B = B_3 from Theorem 1 [16]" ([16] = CMP 102 var.). For n = 0 the space equals U^c_k(X, α_0, α_1) (p. 191 [P text]). α_{0,m} = C_0g_mℓ_m^{q_0}, α_{1,m} = C_1g_mℓ_m^{q_1} (CMP 119 (2.x); SOURCES_A11_CONST_VERIFY l. 31 [V there]). Note: the J-entry α_{0,m}(L^mη)^{−3} is the gauge-invariant form of (3.36); there is no |∂*∂A| bound on U in this space.
4.4 CMP 122 I background U_0 (pp. 194–195 [V image p. 195; text p. 194]). Prop. 1: for V_k with |∂V_k − 1| < ε on Z ∩ Λ^c, ε small, the minimal orbit V_Λ exists with (1.78) |V_Λ(∂p′) − 1| < B_5M^5ε on Λ; extend V_Λ = V_k on Z ∩ Λ^c; U_0 := U_{k,Z}(V_Λ) (1.79), "a fundamental background field"; (1.80) |U_0(∂p) − 1| < 2ε_kη² + O(1)B_3B_5M^5exp(−δ dist(p, Λ))ε_kη² for p ∈ Ω_k. "From (1.80) we can see easily that U_0 belongs to … the analyticity domains of terms in the effective action" [P-claim, not shown].

## 5. The inclusion: backgrounds ⊂ CMP 99 regular class
Notation. Reg_99(M, a; c_reg) := configurations with (3.35) and (3.36) with O(1)Mα_0 replaced by c_reg·M·a, cubes of 𝒦 (size ≥ 10ML^jη). Reg_99^{35} := (3.35) only. CMP 99 Thms 3.1–3.12 need c_reg M a ≤ a_0^{99}(d, L) and M ≥ M_99 (Thm 3.1 [V p. 397]); the complex class (3.37) needs α_1 ≤ a_1^{99} (Thm 3.4, B5).

5.1 Proposition I-109 (complex CMP 109/116 domains) [P from the definitions]. Let (𝐔, 𝐉) ∈ U^c_j(X, α_0, α_1, γ_0) and take CMP 109's cube constant O(1) ≥ 10/L. Then on X:
 (a) U ∈ Reg_99^{35}(M, α_0^{99}) with c_reg·α_0^{99} := O(1)LBα_0, i.e. α_0^{99} = LBα_0 when c_reg := O(1);
 (b) A′ satisfies (3.37) with the same α_1;
 (c) (3.36) and (3.38) are NOT part of the domain; their only role is replaced by the independent bound |𝐉| < γ_0 (§6.4).
 Proof. (a) (1.12) is (3.35) at the top index (unit units of step j, L^jξ = 1), on cubes of size O(1)LM ≥ 10M. For a CMP 99 cube of lower index n < j (near ∂X in the maximal sequence of (iv)) the CMP 99 bound has the factors (L^nξ)^{−1}, (L^nξ)^{−2} ≥ 1; the CMP 109 bound is uniform, hence stronger; the CMP 99 cube is smaller, so the restricted gauge works. (b) (1.13) |A′|, |∇_UA′| < α_1 on X; (3.37) allows α_1(L^nξ)^{−1}, α_1(L^nξ)^{−2} ≥ α_1. ∎
 For CMP 116: replace α_0, α_1 by (1 + 2β)α_0, (1 + 2β)α_1 ≤ 1.5α_0, 1.5α_1 (β = ¼).
 Condition (A18-1): O(1)·L·B·1.5·Mα_0 ≤ a_0^{99}, 1.5α_1 ≤ a_1^{99}, M ≥ M_99.

5.2 Proposition I-real (real minimal backgrounds of CMP 109 step k) [P given CMP 102 Thm 1 [R] and CMP 98 Prop. 2 [R]]. Let U = U_{k+1}(W) ∈ 𝒰_{k+1}(ε_0) (CMP 109 (1.2)), all Ω_j = T (small-field case). Then:
 (a) |W(∂p′) − 1| < 2ε_0 (CMP 98 Prop. 2, quoted CMP 109 p. 260);
 (b) if 2ε_0 ≤ a_1^{102}, CMP 102 Thm 1 applies with ε_1^{102} := 2ε_0 and gives (9)–(10): on every cube of size 2M′, M′ ≤ M(2ε_0) = R_1M_1a_1^{102}/(2ε_0): |A|, |∇A|, |∂*∂A| < 2B_3M′ε_0 (unit units);
 (c) take 2M′ := O(1)M (≥ 10M, rounded to a multiple of 2R_1M_1). Then U ∈ Reg_99(M, ε_0; c_reg = O(1)B_3), both (3.35) and (3.36);
 (d) U ∈ (i) of U^c_{k+1}(X, α_0, α_1) for every X: (1.11) needs ε_0 ≤ α_0; (1.12) needs O(1)B_3Mε_0 ≤ O(1)LMBα_0, true if B ≥ B_3 and ε_0 ≤ α_0; (iii) |J| < ε_0 ≤ γ_0 = α_0; (iv) needs 2B_3ε_0 ≤ α_0 (CMP 109 p. 263 via CMP 102 Prop. 9 [R]).
 Proof. (a), (b) are the printed statements. Uniqueness of the minimal orbit (B_3·2ε_0 ≤ ε_0^{102} ≤ a_0^{102}) identifies U_{k+1}(W) with Thm 1's minimizer. (c) is the cube-size bookkeeping of 2.4. The M′ ≤ M(2ε_0) clause is O(1)Mε_0 ≤ R_1M_1a_1^{102}. ∎
 Alternative route [P given CMP 99-regular Prop. 6 [R]]: 𝒰_{k+1}(ε_0) is 𝔘_{k+1}({Ω_j = T}, ε_0) up to the J form (|D*π Im ∂U| vs |D*∂U|: they differ by O(ε_0²) [P: ∂U − 1 − iπ Im ∂U = O(|∂U − 1|²)]). Prop. 6 gives Reg_99(M, ε_0; 7dL²B_1) under 7dL²·O(1)Mε_0 ≤ c_1. Route (b) is shorter for minimal configurations; Prop. 6 covers any (not only minimal) configuration of the plaquette class.
 Condition (A18-2): ε_0 ≤ α_0/(2B_3) (this implies ε_0 ≤ α_0 and, with (A18-1), O(1)B_3Mε_0 ≤ a_0^{99} and O(1)Mε_0 ≤ R_1M_1a_1^{102}); 2ε_0 ≤ a_1^{102}; B ≥ B_3.

5.3 Proposition I-122 (CMP 122 I) [P given 4.3–4.4 + CMP 102 Thm 1 for U_{k,Z} [R/I]].
 (a) Complex space U^{(n)c}_k: (1.65), (1.67), (1.69) are (3.35) on cubes of size CML^mη with the per-index constant BCML_0^{2N_0}α_{0,m} (N_0 = k − k_0, the overlap depth; L_0^{2max{0,m−k_0}} ≤ L_0^{2N_0}). So U ∈ Reg_99^{35}(M, α_0^{99}) with α_0^{99} := BCL_0^{2N_0}sup_m α_{0,m}/c_reg on X. The A′ entries give (3.37) with α_1^{99} := 3L_0^{2N_0}sup_m α_{1,m}. The J-entries give the (3.36) role (§6.4).
 Cube size: CMP 122's C ≤ 2, but CMP 99 needs ≥ 10. Fix [P]: a CMP 99 cube of size 10ML^mη is covered by a bounded number (≤ 5^d) of CMP 122 cubes; the gauges of overlapping cubes differ by a gauge transformation that is constant up to O(BCMα_{0,m}) on the overlap; gluing them gives a gauge on the big cube with constant c(d)·BCML_0^{2N_0}α_{0,m} [I: standard patching; Balaban does this without comment]. Alternative: choose C ≥ 10 in the definition (C is free, "usually small").
 (b) Real background U_0 = U_{k,Z}(V_Λ): (1.80) gives the plaquette parameter ε_k′ := (2 + O(1)B_3B_5M^5)ε_k. If U_{k,Z} obeys CMP 102 Thm 1 [I: U_{k,Z} is the minimal configuration of the variational problem restricted to Z; Thm 1 is stated for general {Ω_j}], then (9)–(10) hold with B_3Mε_k′, and U_0 ∈ Reg_99(M, ε_k′; c_reg = O(1)B_3).
 (c) U_0 lies in U^{(n)c}_k (the printed claim of p. 195) if B_3·O(1)·ε_k′ ≤ BCα_{0,m} on each region, i.e. with ε_k = A_0g_kℓ_k^{p_0}, α_{0,k} = C_0g_kℓ_k^{q_0}:
 O(1)B_3B_5M^5A_0ℓ_k^{p_0} ≤ BC·C_0ℓ_k^{q_0}.
 Condition (A18-3): if q_0 = p_0: C_0 ≥ O(1)B_3B_5M^5A_0/(BC) (a lower bound on C_0; C_0 sits in B28 after A_0 and after M, so the slot is legal). If q_0 > p_0: holds for γ small (B30). Also the M(ε_1) clause: B_5M^6ε_k ≤ c·R_1M_1a_1 — an upper bound on γ (B30). And c_reg Mα_0^{99} ≤ a_0^{99}: BCL_0^{2N_0}M sup_mC_0g_mℓ_m^{q_0} ≤ a_0^{99} — an upper bound on γ (B30) after L_0, N_0, C_0.

## 6. The four identifications
6.1 Lemma Q (k-step averaging vs free) [P given CMP 98 (124)–(125), (139)–(146), Prop. 2 [V, SOURCES_F19_WGRATE_VERIFY]; text of CMP 98 pp. 35–40, image p. 37 [V]].
 Setting. Units L^kη = 1. Let c be a unit bond and N(c) its 2-unit neighbourhood (it contains the supports of Q_k at c: the corridor blocks B^k(c_±)). Assume |U(∂p) − 1| < αη² on N(c) (plaquette class; CMP 109 (1.2)/(1.11), CMP 122 (1.65)–(1.69), CMP 99-reg (1.7)).
 Claim. In the axial gauge u from the centre y of N(c), for all X:
 |(Q_k(U^u)X)(c) − (Q_k(1)X)(c)| ≤ c_Q(d, L)·α·(Q̂|X|)(c), Q̂ := 4dQ′_k (positive, local (141)), uniform in k.
 Proof. (1) Gauge. In the complete axial gauge from y, |U^u(b) − 1| is bounded by the sum of |U(∂p) − 1| over the plaquettes of a ruled surface spanned by b and its two axial paths; that surface has ≤ d|x − y|/η plaquettes, so |U^u(b) − 1| ≤ dα|x − y|η ≤ 2d²αη on N(c) [P]. (CMP 99-reg (1.129) prints the same type of bound, |x − y|²L²α_0.)
 (2) Chain rule. Q_k(U, ·) is the composition (127) of the one-step maps Q(Ū^j, ·), j = 0, …, k−1. So its linear part is Q_k(U) = Q(Ū^{k−1})∘…∘Q(Ū^0), and the free one is Q_k(1) = Q^k (Q of CMP 96) [V p. 37 (127)].
 (3) One step. Q(V_0) = Q_{V_0} + Q″(V_0) (124)–(125). Main term: (Q_{V_0}A)_c = Σ_{x∈B(c−)} L^{−(d+1)}(R_{0,c−}A)(Γ_{c,x}), the free contour sum with each fine bond term transported by Ad of V_0 along a path of length ≤ dL in the lattice spacing of that step. Remainder: |Q″(V_0)A| ≤ C_1′L²α^{(j)}Q″|A| (139), α^{(j)} := plaquette parameter of Ū^j on the L^jη-lattice ≤ 2αL^{2j}η² = 2αL^{2(j−k)} (Prop. 2, p. 37 [V]).
 Transport error at step j: the path has length ≤ dL·L^jη = dL^{j+1−k} units; with (1), ‖Ad(Ū^j-path) − 1‖ ≤ 2·dL^{j+1−k}·2d²α. [The averaged fields Ū^j keep the bound up to a factor c(d, L): K″/(2d²) in the axial gauge (THM39_FULL (AL′-ax), corollary (a), range α ≤ a_ax), (K′ + c_P)/c_3 in the (3.35) gauge (THM39_FULL (AL′), corollary (b), range Mα_0 ≤ a_AL; c_P absorbs the remainder term); I-Q1 is [P rel. CMP 98 Prop. 2 [V] + the (15) reading of U(c) [I]].]
 So Q(Ū^j) = Q + E_j with |E_jA| ≤ ε_j·Q″_j|A|, ε_j := c(d, L)α(L^{j−k} + L^{2(j−k)}).
 (4) Telescoping: Q_k(U) − Q^k = Σ_j Q(Ū^{k−1})⋯Q(Ū^{j+1})E_jQ^j. Each left factor is dominated by (1 + O(α))× positive averages (CMP 98 (143)–(146)); (142) turns Q″Q^j into ≤ 2dQ′_{j+1}. Summing, Σ_j ε_j ≤ c(d, L)α·2/(1 − L^{−1}). ∎
 Corollaries. (a) "Q(U) = Q_free(1 + O(α_0))" holds in the axial gauge with α = the plaquette parameter: α = ε_0 (real CMP 109), α_0 (complex 109/116), O(1)L_0^{2N_0}α_{0,m} (CMP 122), O(1)B_3B_5M^5ε_k (CMP 122 U_0). No factor M. (b) In a (3.35) regular gauge (|A_bg| ≤ c_3Mα_0^{99}) the same proof with (1) replaced by (3.35) gives ε_Q ≤ c(d, L)Mα_0^{99}: this is A3-R2 exactly as stated in SOURCES_A3_GAMMA0_FULL §2.1 (R2). So A3-R2 is PROVED relative to CMP 98 [R] and I-Q1.
 Complex U′U. For A′ with (3.37) the extra transport factors are Ad(e^{iηA′}) with |ηA′| ≤ α_1η; the same telescoping gives an extra O(α_1) (CMP 98 (128) handles exactly this, p. 37 [V]).

6.2 Lemma C (norm of the constraint map) [P given I3 (free corridor form) and CMP 98 (124)–(125), (139) one step [R]].
 Let Q̃ := Q(V) be the one-step linear average at the unit-lattice background V (= V^{(k)} of CMP 109 (2.3) = U_1 of CMP 99, by I3), with plaquette parameter α_V ≤ 2α (Prop. 2). Then ‖C(V)‖² ≤ c_C(1)(1 + c(d, L)α_V), c_C(1) = ‖C(1)‖² ≤ L^{d+1} (SOURCES_A7_CDC (c_C), given I3).
 Proof. (Q̃B)(c) = Σ_{b}w_bT_bB(b) + (E B)(c), w_b ≥ 0 the free weights, T_b orthogonal (Ad of V-paths; no gauge needed), |(EB)(c)| ≤ C_1′L²α_V(Q″|B|)(c) (139). The bond b_0(c) has its endpoints in B(c_−) and B(c_+); no b_0(c′), c′ ≠ c, lies in B(c_−) ∪ B(c_+) [P: its endpoints would be in B(c′_±)]. So the equations (Q̃B)(c) = 0 decouple, one per c. Solve for B(b_0): (w_{b_0} − ε′)|B(b_0)| ≤ Σ_{b≠b_0}(w_b + ε′)|B(b)|, ε′ := C_1′L^{2−d}α_V. Cauchy–Schwarz gives |B(b_0)|² ≤ (1 + O(ε′/w_min))·w_{b_0}^{−2}Σ_{b≠b_0}w_b²·Σ_{b∈supp}|B(b)|². The support of E is B(c_−) ∪ B(c_+) (larger than the corridor), so the overlap count rises from 1 to ≤ 2·3^d, but only in the O(ε′) part. Hence ‖CB̃‖² ≤ (c_C(1) + c(d, L)α_V)‖B̃‖². ∎
 With w_min = L^{−(d+1)}: the relative error is O(L³α_V) = O(α) at fixed L. This matches the A18 statement ‖C(U)‖² ≤ L^{d+1}(1 + O(α_0)). Complex V = U′U: add O(α_1).

6.3 C-map identity (CMP 109 C = CMP 99 C) [P on the two texts + I3 + EXPGAUGE].
 CMP 99 p. 428 [P text]: B̃ = B restricted to Λ̃ = Λ \ (∪_{y∈Λ′}A_x(y) ∪ ∪_c B(c) ∩ c); B = CB̃; C is the identity except on the bonds b_0 = B(c) ∩ c, where (CB̃)(b_0) solves (Q_1B)(c) = 0 for B(b_0). Domain: B = 0 on Λ^c and on the trees A_x(y) (δ-function axial gauge fixing).
 CMP 109 p. 267–268 [P text]: after B′ = B − hD(B), δ(QB′) is linear; "using the δ-functions δ(QB′) we eliminate the variables B′(b_0(c)), c ∈ T^{(k+1)}. Denoting the remaining variables by B we have B′ = CB, C is the operator determined by the configuration V^{(k)}". Gauge fixing is the exponential term (2.5); no tree variables are removed.
 Same rule: identity off b_0(c); on b_0(c), solve the linear block constraint at c. Differences: (i) the averaging: Q_1(U_1) (CMP 99) vs the linear part of Q(V^{(k)}, ·) (CMP 109). Equal if U_1 = V^{(k)} = M^k(U_{k+1}) — this is WC_FULL I3 [I]. Both are one-step averages on the unit lattice; with Lemma Q the two agree to O(α) even if the backgrounds differ by an O(α) gauge-regular amount. (ii) the domain: CMP 109's C acts also on the tree bonds A_x(y) as the identity: C_109 = C_99 ⊕ I_trees. This is the C_ax/exponential-gauge transfer already treated in SOURCES_WC_EXPGAUGE (+ VERIFY) and WC_FULL. (iii) Λ: CMP 99 has Dirichlet conditions off Λ; CMP 109 works on the whole torus T^{(k)} (or on Z_0 after the C̃^{(k)}(Z_0) localization of CMP 116 p. 13). The rule at each b_0(c) is local (depends on Q̃ at c only, 6.2), so it is the same map on every c inside Λ.
 Conclusion: the identification reduces to I3 [I] and the EXPGAUGE transfer [verified elsewhere]. The ‖C‖ bound 6.2 holds for both.

6.4 J-term [P given CMP 99 Thm 3.12/(3.133) [R], I2 (locality of D̃^{(2)}) [I], and the CMP 109 p. 261 statement [R]].
 CMP 99: ⟨B, Δ_JB⟩ = 2⟨H_1D̃^{(2)}(B), J⟩ (3.156), J := D_U^{η*}η^{−2}π Im ∂U, |J| ≤ O(1)Mα_0(L^jη)^{−3} under (3.36) (pp. 419, 422 [V in SOURCES_WG 4.1]).
 CMP 109 p. 261 [P text]: the second-order derivative of U "appears only in the functions (1.8)" = J_j = D^{η*}_{U_j}η^{−2}π Im ∂U_j; the action terms are extended to independent variables (𝐔, 𝐉).
 Therefore in every CMP 109/116/122 domain the role of (3.36) is played by a direct bound on 𝐉:
 CMP 109/116: |𝐉| < γ_0 = α_0 (1.14) (unit units, scale (L^jη)^{−3} = 1); real backgrounds: |J| < ε_0 (1.2).
 CMP 122: |𝕁| < c·L_0^{2N_0}α_{0,m}(L^mη)^{−3} (1.65)–(1.69).
 Bound. |⟨B, Δ_JB⟩| ≤ 2‖H_1‖_{loc}·c_{D2}·sup|𝐉|·‖B‖² with H_1 from (3.133) (Theorem 3.12; needs (3.35) only, plus the J bound for its own H*J term) and D̃^{(2)} local quadratic (I2). So c_J = c(d, L)·sup|𝐉| ≤ c(d, L)α_0 ≤ c(d, L)Mα_0 (M ≥ 1). The O(Mα_0) form of WG_FULL (I5), A3-R4, and WC_FULL I9 holds a fortiori. ∎
 Reading flagged [I-J]: CMP 99's proofs use (3.36) only through J. Supported by SOURCES_WG 4.1 (p. 419: J "is small, if U satisfies (3.36)"; p. 422: "From (3.36) and (3.133) |(H*J)(b)| ≤ …"), by Δ^{(2)} being defined through J (3.134), and by CMP 109 p. 261. Not checked page by page through CMP 99 Sect. D.

## 7. σ-localized operators (CMP 116 pp. 3–5) [P on the text]
 CMP 116 introduces s on the cubes Δ ∈ σ_0 and multiplies the walk term of ω in (3.107) [13] by Π_{Δ∩loc(ω)≠∅}s(Δ). This defines H(s), G(s), H_0(s); s = 1 gives the original operators. U, J, Q, C, h are not changed. Each walk term depends on U restricted to its localization domains and obeys (3.108) at regular U (p. 3, (1.7)). Hence:
 (a) The regular class is stable under the s-rule and under the truncation s(σ^c) = 0: the background is the same configuration; the conditions (3.35)–(3.37) are local (cube by cube) and impose nothing outside Ω_0 (CMP 99 p. 396 [V]), so restriction to a component Y_0 keeps them.
 (b) The bound |H(s)X| ≤ B_0e^{16κ_1}|X| for |s| ≤ e^{κ_1} (1.11) needs only the per-walk bound (3.108), which is the CMP 99 walk theorem at regular U (A1w/WG_FULL inputs). No further regularity of U is used.
 So "σ-localized operators covered" adds no A18 content beyond §5: it is inherited from the walk expansions (rows A1w, A2), which are themselves stated at regular U.

## 8. Conditions on the constants and their slots in SOURCES_ORDER_CANON Part B
 Size of L_0^{2N_0} [P text, CMP 122 I p. 191 bottom]: N_0 is fixed by L^{−N_0+1}R_{k−N_0+1} = 1, so L^{N_0−1} ≤ (L + 1)(N_0 + 1)^{β_0}R_k and L_0^{2N_0} ≤ (L(L + 1)(N_0 + 1)^{β_0}R_k)^{2a_0}, a_0 := log L_0/log L < 1. "The powers of L_0 make only unessential logarithmic contributions." So L_0^{2N_0}α_{0,m} = g_m·polylog(g_m) → 0 with γ.
 New or sharpened conditions (no new cycle):
 | id | condition | slot | type |
 |---|---|---|---|
 | (B) | B ≥ B_3 (CMP 109 (1.12) constant; CMP 122 takes B = B_3); cube constant O(1) ≥ 10/L (109), C ≥ 10 or the patching [I] (122) | B5 (d, L only) | fixed |
 | (c_reg) | c_reg := O(1)·L·B for complex domains, O(1)·B_3 for minimal configurations; a_0^{102}, a_1^{102} (CMP 102 Thm 1) | B5 | fixed |
 | (A18-1) | 1.5·O(1)·L·B·Mα_0 ≤ a_0^{99}; 1.5α_1 ≤ a_1^{99}; M ≥ M_99 | B22 (α_0 cap, α_1 cap); M_99 already in B18 | upper on α_0, α_1 |
 | (A18-2) | ε_0 ≤ α_0/(2B_3); 2ε_0 ≤ a_1^{102} | new line after α_0 in B22 (ε_0 = CMP 109 real-background constant; not in the canon yet) | upper on ε_0 |
 | (A18-3) | if q_0 = p_0: C_0 ≥ O(1)B_3B_5M^5A_0/(BC); if q_0 > p_0: γ small | B28 (lower on C_0, after A_0 and M) / B30 | lower / upper on γ |
 | (A18-4) | BC·L_0^{2N_0}M·sup_m C_0g_mℓ_m^{q_0} ≤ a_0^{99}/c(d); 3L_0^{2N_0}sup_m C_1g_mℓ_m^{q_1} ≤ a_1^{99}; B_5M^6·O(1)ε_k ≤ R_1M_1a_1^{102} | B30 (γ) | upper on γ |
 | (A18-Q) | c_Q(d, L)α ≤ ½ (Lemma Q domination), c(d, L)α_V ≤ 1 (Lemma C) | implied by (A18-1) at B22 | upper on α_0 |
 Correction to B22 [P]: the printed cap "Mα_0 ≤ min{a_0, …}" uses a_0 = a_0^{99} without the conversion factor 1.5·O(1)·L·B between CMP 109's α_0 and CMP 99's α_0. Replace a_0 by a_0^{99}/(1.5·O(1)LB). It is a fixed (d, L) factor, so the slot and the acyclicity do not change.

## 9. Ledger and conclusion
| item | status |
|---|---|
| CMP 99 regular class (3.35)–(3.38), exact | [V] p. 396–397 images (not pp. 398–399) |
| 𝔘_k({Ω_j}, α_0) (1.7)–(1.9), Prop. 6 (3.35)+(3.36) from the plaquette class | [V] CMP 99-reg p. 77, p. 99 images; proof via Thm 2/4 [R] |
| CMP 102 Thm 1 (9)–(10) for minimal configurations; constants d, L only | [V] p. 279 image; proof [R] |
| CMP 109 𝒰_k(ε_0) (1.2) and U^c_j (1.10)–(1.16) | [V] pp. 260, 262 images |
| CMP 116 domain = U^c_{k+1} with (1 + 2β)α_0, (1 + 2β)α_1 | [P text] p. 2 |
| CMP 122 I U^{(n)c}_k (1.65)–(1.69); U_0 (1.79)–(1.80) | [V] pp. 190–191, 195 images; p. 194 text |
| Inclusion, complex 109/116 domains ⊂ (3.35) + (3.37) | [P] 5.1, from the definitions |
| Inclusion, real minimal backgrounds ⊂ (3.35) + (3.36) | [P given CMP 102 Thm 1 [R], CMP 98 Prop. 2 [R]] 5.2 |
| Inclusion, CMP 122 spaces and U_0 | [P given 4.3–4.4] + [I] U_{k,Z} obeys CMP 102 Thm 1; [I] cube patching (or C ≥ 10); p. 195 claim reduced to (A18-3) |
| Q(U) = Q_free(1 + O(α)) (A3-R2) | [P given CMP 98 (124)–(146), Prop. 2 [V]] Lemma Q; I-Q1 [P rel. Prop. 2 [V] + (15) reading [I]] via THM39 (AL′)/(AL′-ax), ranges α ≤ a_ax / Mα_0 ≤ a_AL |
| ‖C(U)‖² ≤ c_C(1)(1 + O(α)), c_C(1) ≤ L^{d+1} | [P given I3 + CMP 98 (139) [R]] Lemma C |
| CMP 109 C = CMP 99 C | same rule [P]; reduces to I3 [I] + EXPGAUGE tree extension [verified elsewhere] |
| J-term c_J = O(α_0) ≤ O(Mα_0) (A3-R4, WG (I5), WC I9) | [P given (3.133) [R], I2 [I]] + reading [I-J] (CMP 99 uses (3.36) only through J; CMP 109 p. 261) |
| σ-localized operators | [P] §7: no new content; inherited from A1w/A2 |
| Constants | (A18-1)–(A18-4) placed; B22 conversion-factor correction |

Conclusion. A18 is REDUCED (not proved outright). It reduces to:
 [R] CMP 102 Thm 1 (9)–(10) (or CMP 99-reg Prop. 6); CMP 98 (124)–(125), (139)–(146), Prop. 2; CMP 99 Thm 3.12 (3.133); CMP 109 p. 261 ("second derivative only through (1.8)"); CMP 122 I Prop. 1 (1.78), (1.80);
 [I] I3 (U_1 = V^{(k)}, free corridor form of Q̃); I2 (D̃^{(2)} locality); I-J (CMP 99 Sect. D uses (3.36) only via J); I-Q1 (averaged fields keep the bound up to c(d, L); now [P rel. Prop. 2 [V] + (15) reading [I], THM39 (AL′)/(AL′-ax)); U_{k,Z} obeys CMP 102 Thm 1; CMP 122 cube patching (or C ≥ 10);
 constants (A18-1)–(A18-4), all placed in the canon without a cycle.
 Pieces PROVED relative to these: the inclusions 5.1–5.3; Lemma Q (hence A3-R2); Lemma C; the J-term bound with constant O(α_0); σ-stability.
 Two corrections to existing text: (1) the A18 page reference "CMP 99 pp. 398–399" should be p. 396 (definition) and p. 397 top (the (3.37)–(3.38) ⇒ (3.35)–(3.36) remark, unproved in CMP 99); "CMP 102 (3.35)–(3.38)" is CMP 99's numbering cited in CMP 102. (2) B22's Mα_0 cap needs the factor 1.5·O(1)·L·B (§8).
 Status: author pass only, UNVERIFIED. An independent verifier should check Lemma Q step (3)–(4) against the CMP 98 page images and 5.2(d).

Corrections after verification (SOURCES_A18_REGULAR_VERIFY, 2026-10-28, images): the O(1) in 1.5·O(1)·L·B is CMP 109's unnamed cube constant (factor 1.5·B if the CMP 99 cube constant is O(1)·L); 5.2(d) misses two factors of L (the CMP 109 cube has size O(1)LM); 5.3(a) CMP 122 cube patching UNSUPPORTED (naive bound O(M²α); "C ≥ 10" conflicts with the printed C ≤ 2) — fix: use CMP 99 with M_99 = CM/10, adding M ≥ 5M_1 at canon B18; Lemma Q: U enters via parallel transport in (125) and the (124)/(139) remainder; axial bound row by row only (operator-level use costs O(Mα_0)); the telescoping sum omits 2^{k−j−1} from QQ″_j ≤ 2Q″_{j+1} — correct sum cα·L/(L − 2), uniform in k for L ≥ 3; cite "Q″Q_j ≤ Q″_{j+1}" (after (144)), not (142); Lemma C exact per bond (weighted Cauchy–Schwarz); every explicit (3.36) use in CMP 99 goes through J (pp. 419, 422), the rest are later hypotheses and the p. 428 sketch; on a real background (3.35) + a J bound gives (3.36) up to O((Mα_0)²); [I] B and B_5 as fixed (d, L) numbers.

Change (2026-10-28): Lemma Q step (3) bracket replaced per THM39_FULL F19 fixes — the factor 2 becomes c(d, L) from (AL′)/(AL′-ax); I-Q1 [P rel. CMP 98 Prop. 2 [V]].

Change (2026-10-28, from SOURCES_F22_VERIFY §5): Lemma Q bracket, row (A18-Q), 6.1 header, and the conclusion's I-Q1 line made consistent — Prop. 2 [V]; I-Q1 [P rel. Prop. 2 [V] + (15) reading [I]]; ranges α ≤ a_ax (axial) / Mα_0 ≤ a_AL ((3.35)); c_P absorbed into corollary (b)'s factor.
