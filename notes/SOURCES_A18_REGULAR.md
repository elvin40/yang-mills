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
