# WC_FULL — Theorem WC: the exponential-gauge covariance C^{(k)}(Z_0), complete proof

Date 2026-10-28. Author: Opus write-out session. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read.
Sources: SOURCES_WC_EXPGAUGE.md §1–§7 with its appended corrections; SOURCES_WC_EXPGAUGE_VERIFY.md V1–V10; SOURCES_WC_RESIDUE.md §1–§7 with its verification Q1–Q8; SOURCES_A3_GAMMA0_FULL.md (Lemmas 4.2, 4.3, 4.4 and step (6.1)); SOURCES_A1_WALK.md and SOURCES_WG.md (cited below under the names A1_WALK_FULL and WG_FULL, see §9); numerics/wc_exp/poincare_exp.py.
Tags. [V] page-verified in CMP 96/99/109/116/119 (image or text, per the cited verify file). [P] proved in this file. [R] reduced to a named printed statement. [C] conditional on a named unproved input. [I] inferred, open.
Every corrected statement of the verify files is used in its corrected form. Where a source constant changed, the new value is derived here.

## §0 Notation, inputs, and statement

0.1 Lattice and blocks. Units are fixed so that L^kη = 1 near Λ. L is odd, L ≥ 3 (CMP 109 p. 252 [V]). The unit lattice is partitioned into L-blocks B(y). The label y ∈ T^{(k+1)} is the block centre, so B(y) = {y + n : |n_μ| ≤ (L−1)/2 for all μ}. A unit bond is a block bond if both ends lie in one block. Otherwise it is a corridor bond; it then joins two adjacent blocks B(c_−), B(c_+), and c = ⟨c_−, c_+⟩ is a corridor (A3 §3.0 [V CMP 96 pp. 244–245]). For each corridor c, b_0(c) is the corridor bond that CMP 109 p. 267 eliminates. The partition into blocks is the partition used by the averaging Q̃ = Q_1(U_1) (identification [I-strong], §9 item I3).
0.2 Fields. Fields take values in the Lie algebra 𝔤 of G ⊂ U(N) with X·Y = tr X*Y and tr 1 = 1 (A3 §0.2 [V CMP 99 p. 392]). For g ∈ G, Ad(g) is orthogonal. ‖B‖² = Σ_b|B(b)|². For a block, S_y(B) := Σ_{b⊂B(y)}|B(b)|²; S_b := Σ_yS_y; S_c := the sum over corridor bonds. So ‖B‖² = S_b + S_c.
0.3 Background. U obeys (H1)–(H3) of A3 §0.5: the regularity conditions (3.35)–(3.36) of CMP 99 with parameters M, α_0; M ≥ max(M_1(d, L), L); Mα_0 ≤ α_*(d, L). V := U_1 is the induced unit-lattice background. By (R3) of A3 §2.1 [R], on every set of unit ℓ^∞-diameter ≤ 8M there is a gauge with V(b) = e^{iA_1(b)}, |A_1(b)| ≤ c_4Mα_0, c_4 = c(d, L). Such a gauge is called regular for the set. A block has diameter L ≤ 8M by (H2).
0.4 Curl. For a plaquette p with base corner p_0 (the lowest corner) the covariant curl is the linearized holonomy: if V_s(b) := e^{isB(b)}V(b), then V_s(∂p) = e^{is(∂^VB)(p) + O(s²)}V(∂p), V(∂p) the holonomy from p_0. This has the form (C) of A3 §0.3, (∂^VB)(p) = Σ_{b∈∂p}σ_{p,b}Ad(T_{p,b})B(b), T_{p,b} a product of ≤ 3 links. A3 uses exactly this exact covariant curl (VERIFY V3, V4). P^U(B) := Σ_p|(∂^VB)(p)|²; P_y(B) := Σ_{p⊂B(y)}|(∂^VB)(p)|².
0.5 Gauge directions. For λ: sites → 𝔤 put (D^Vλ)(b) := λ(b_−) − Ad(V(b))λ(b_+). This is the linear part of the gauge action V(b) ↦ u(b_−)V(b)u(b_+)^{−1}, u = e^{isλ}: indeed (1 + isλ(b_−))V(b)(1 − isλ(b_+)) = (1 + is[λ(b_−) − Ad(V(b))λ(b_+)])V(b) + O(s²). CMP 99 (3.3) uses the opposite sign (VERIFY V3); the sign is irrelevant below.
0.6 Operators of CMP 99 §E and CMP 109 §2 (A3 §0.4). Q = Q_k(U); G_1 of (3.128); H_1 = G_1Q*(QG_1Q*)^{−1}; a > 0 the constant of the averaging term; Δ_J with ⟨B, Δ_JB⟩ = 2⟨H_1D̃^{(2)}(B), J⟩, D̃^{(2)} = hC̃^{(2)} (CMP 109 p. 267 [V]). Put
 Δ^full := (QG_1Q*)^{−1} − a − Δ_J, an operator on all unit fields, with no constraint and no gauge fixing.
V_red is the space of unit fields B̃ with the bonds b_0(c) removed. C := I − hLQ̃: V_red → unit fields, where LQ̃h = I and (hB)(b_0(c)) = h(c)B(c) (CMP 109 p. 267 [V]). Then Q̃CB̃ = 0, C is the identity on the kept bonds, and C has unit range ≤ 2L.
0.7 The gauge operator 𝒢 and A_exp (defined in §1). A_exp := C*(Δ^full + c_G𝒢*𝒢)C on V_red, c_G = 1. For a set Z_0 of unit bonds, 1_{Z_0} is the coordinate projection, A_Z := 1_{Z_0}A_exp1_{Z_0} on V_red(Z_0), and C^{(k)}(Z_0) := A_Z^{−1}. By CMP 109 p. 267 (2.11) [V] and §1.4 below, A_exp is the operator C*Δ^{(k)}C of CMP 109 p. 268.
0.8 The set Z_0. Z_0 is a union of M-cubes with dist(Z_0, Λ_k^c) > RM (inherited from A3 §0.1, [I] item I6). Z̃_0 := Z_0 with one layer of all M-cubes touching Z_0 adjoined (ℓ^∞ layer, §5.1). For a union X of M_1-cubes, X̃^5 := X with five ℓ^∞ layers of M_1-cubes adjoined.
- (§0.1–0.8 done)

0.9 Inputs (cited, not proved here). Each is stated in the form used.
 (A3-4.2) [P in A3, exact]. Let T be a spanning tree of B(y) made of axial staircase paths from a root r ∈ B(y). If B = 0 on T, then S_y(B) ≤ dL^dP_y(B). The proof (A3 §4.2 via §3.1) uses only step inequalities |B(b_2)| ≤ |(∂^VB)(p)| + |B(b_4)| on plaquettes with two tree bonds, which move coordinates toward r. It holds for every root, in particular r = y (VERIFY V4).
 (A3-4.3) [P in A3 given R2′, R3]. Assume Q_1(U_1)B = 0. For every corridor c, with R(c) := B(c_−) ∪ B(c_+) ∪ 𝒦(c), τ := 12√N c_4Mα_0 (the √N from A3_VERIFY item 6),
 (m_L/3)L^{−d}Σ_{𝒦(c)}|B|² ≤ 2L^{−d}Σ_{𝒫(c)}|∂^VB|² + 16(d−1)τ²L^{−d}Σ_{R(c)}|B|² + ε_{Q1}²(Q̂_1|B|)(c)² + L^{−d}Σ_{B(c_−)∪B(c_+)}|B|²,
 with m_L = min(2(1 − cos(π/L)), 1/L), 𝒫(c) pairwise disjoint plaquette sets, Σ_c(Q̂_1|B|)(c)² ≤ c_{Q1}‖B‖², ε_{Q1} ≤ c(d, L)Mα_0. It uses neither trees nor block data inside the blocks.
 (A3-4.4) [P in A3]. Summing (A3-4.3) over c, with each bond in R(c) for ≤ 2d corridors:
 S_c ≤ (3/m_L)(2P^U + 2dS_b) + (3L^d/m_L)ε_8‖B‖², ε_8 := 32d(d−1)τ²L^{−d} + c_{Q1}ε_{Q1}², η_6 := (3L^d/m_L)ε_8.
 (A3-6.1) [P in A3 given R1, R-Δ′, R-Δ2 (needs the (3.136) form), R2]. For every unit field B with B = 0 off Λ, E(B) := ⟨B, (QG_1Q*)^{−1}B⟩ − a‖B‖² obeys
 (1 + ε_7)E(B) ≥ ½P^U(B) − ε_7a‖B‖², ε_7 = c(d, L)(Mα_0 + (Mα_0)²).
 The proof (A3 §6.2) uses B = 0 off Λ, the minimizer A_* of A3 Lemma 5, Lemma 2, R-Δ′, R-Δ2, R1. It uses neither the trees nor Q_1B = 0 (VERIFY V4).
 (R4) [R/I, A3 §6.1]. |⟨B, Δ_JB⟩| ≤ c_J‖B‖² for all B, c_J = c(d, L)Mα_0.
 (WG) [P in WG_FULL given printed sketches]. Theorem WG-G1: G_1 = Σ_τT_τ, a tree expansion with locality (L1)–(L2) and (3.108)-form bounds, rate δ_1 = (1 − θ)·½ε. Its proof prints only a sketch in CMP 99 (Thm 3.10, p. 422, p. 427 "estimates are the same as in (3.108)") [R]. Concatenation Lemma WG 2.3 [P].
 (A1W) [P in A1_WALK_FULL, conditional on (C)]. Theorem A1-W: (QPQ*)^{−1} has a walk/tree expansion with (L1)–(L2) and per-walk bounds, rate δ_W = ½ε, step K_W/M_1, for P = G or G_1, given a (3.108)-form expansion of P and the global accretive bound (C): Re⟨u, N̂_Pu⟩ ≥ c_−‖u‖². (C) is [C] (A1_WALK_VERIFY (6)).
 (Th3.4) [V CMP 99 p. 400]. "There exists a positive constant a_1 such that the operators G′(U), (Q′(U)G′²(U)Q′*(U))^{−1}, R(U), G(U) extend to configurations U′U for α_1 ≤ a_1 as analytic functions of A. The extended operators satisfy all the inequalities of Theorems 3.1–3.3 correspondingly." The complex walk form of G built on it is [R] (Thm 3.4 + Thm 3.10).
 (p254) [V CMP 109 p. 254; R]. CMP 109 replaces the averages of CMP 98 by the symmetric averages (0.4), (0.12) and states: "all results of the paper [12] are valid for it. The proofs are in most cases unchanged". The shared operators G_1, H_1, (QG_1Q*)^{−1}, Q̃ are therefore the same construction with the new average. Their expansions and R2′ carry over by this sentence [R].
0.10 Theorem WC. Fix d ≥ 2 and odd L ≥ 3. There are M_1, M with M/M_1 > 3(6 + c_X) and M/M_1 > 10, a smallness α_*, a four-level chain of complex domains α′ ⊂ α″ ⊂ α‴ ⊂ a_1-domain, and constants
 γ_exp = ½min(½, c_G)γ_e(d, L) = ¼γ_e(d, L) > 0, ε″ > 0, ρ > 0,
such that for every real regular U and every Z_0 as in 0.8:
 (i) (real lower bound) ⟨B̃, A_ZB̃⟩ ≥ γ_exp‖B̃‖² for all B̃ ∈ V_red(Z_0);
 (ii) (real walk expansion) C^{(k)}(Z_0) = Σ_ωT_ω with (L1)–(L2), |T_ω(b, b′)| ≤ (4/γ_exp)(c_1ρ)^{|ω|}e^{−½ε d(ω, b, b′)}, absolutely convergent, and after regrouping it has the CMP 116 p. 13 form: one domain X_0 with X̃_0^5 = Z̃_0, every other domain X with dist(X, Z_0) > ⅔M, and every factor kernel vanishing within M_1 ≥ ⅓M_1 of the boundary of its domain;
 (iii) (complex points) at every U_c in the α′-space, Re⟨u, A_Z(U_c)u⟩ ≥ ½γ_exp‖u‖², C^{(k)}(Z_0; ·) is analytic there, and (ii) holds with 4/γ_exp → 8/γ_exp, ε → ε″;
 (iv) (resolvent) (i)–(iii) hold for (x + A_Z)^{−1}, x ≥ 0, uniformly in x.
 The constants are uniform in k, η, Z_0, M ≥ M_1, and the background. The proof does not use CMP 99 Theorem 3.15 or any transfer from the axial gauge (§8).
- (§0 done)

## §1 The exponential gauge term of CMP 109

1.1 Contours [V CMP 109 p. 252]. For y ∈ T^{(1)} and x = y + n ∈ B(y), G(y, x) is the family of shortest staircase contours from y to x. There is one contour for each order of the coordinate directions μ with n_μ ≠ 0, and |n_μ| ≤ (L−1)/2. So |G(y, x)| ≤ d!, each contour has length ℓ_Γ = Σ_μ|n_μ| ≤ d(L−1)/2, each contour uses each bond at most once, and every contour lies in B(y) (each coordinate moves monotonically from y_μ to x_μ).
1.2 The average [V CMP 109 pp. 252–253]. U(y, x) := M({U(Γ)}_{Γ∈G(y,x)}) (0.11), M the group average (0.5)–(0.10). Two properties are used. (0.6): M({uU_jv}) = uM({U_j})v for u, v ∈ G (two-sided covariance). (0.8): (1/i)log M({e^{iA_j}}) = (1/n)Σ_jA_j + higher order, n = the number of entries. M is smooth near (1, …, 1) (it is built from log and exp near 1, (0.5)–(0.10)).
1.3 The gauge-fixing factor [V CMP 109 p. 254 (0.14), p. 255 (0.16)–(0.19)]. The factor is
 exp[−(1/2α)|U(y, x) − 1|²] = exp[−(1/α)(1 − Re tr U(y, x))], y ∈ T^{(1)}, x ∈ B(y), x ≠ y.
In the RG step α = g_k², and the exponent carries −(1/g_k²)Σ_{y∈T^{(k+1)}}Σ_{x∈B(y)∖{y}}[1 − Re tr U(y, x)]. After the factor, the measure is "still invariant with respect to the gauge transformations u satisfying u(y) = 1 for y ∈ T^{(1)}" (p. 254). So the residual gauge group is N := {u : u(y) = 1 for all block centres}.
 Normalization [V + P, VERIFY V9 F]. The identity |U − 1|² = 2(1 − Re tr U) for unitary U holds with |X|² = tr X*X and tr 1 = 1: tr(U − 1)*(U − 1) = 2 − 2Re tr U. This is the trace form of 0.2. So the factor is exp[−(1/2α)Σ|U(y, x) − 1|²] in the norm of 0.2.
1.4 The quadratic part [V CMP 109 p. 266 (2.5), p. 267 (2.10)–(2.11)]. In the fluctuation variables, Ṽ′(y, x) = (V′V^{(k)})(y, x)(V^{(k)}(y, x))^{−1} = 1 + B̃′(y, x) + …, with B̃′ linear in B′, and
 G(B′) = Σ_{y∈T^{(k+1)}}Σ_{x∈B(y)∖{y}}½|B̃′(y, x)|² + G_3(B′) =: ½G^{(2)}(B′) + G_3(B′), G_3 localized in blocks of T^{(k)}.
After B′ → g_kB′ the order-0 terms are ⟨H_1hC̃^{(2)}(B′), J⟩ − ½G^{(2)}(B′) − ½⟨H_1B′, Δ_1H_1B′⟩ (2.11), and "The quadratic form in B′ above is equal to −½⟨B′, Δ^{(k)}B′⟩, see the definition (3.156) [13] with the δ-function gauge fixing term replaced by the exponential one." Then B′ = CB̃ and C^{(k)} = (C*Δ^{(k)}C)^{−1} (p. 268).
 Term match [I-strong, consistent; VERIFY V3, V9 F]. Multiply (2.11) by −2: ⟨H_1B, Δ_1H_1B⟩ + G^{(2)}(B) − 2⟨H_1hC̃^{(2)}(B), J⟩. By A3 Lemma 5 [P in A3], ⟨H_1B, Δ_1H_1B⟩ = ⟨B, (QG_1Q*)^{−1}B⟩ − a‖B‖² = E(B). With D̃^{(2)} = hC̃^{(2)} (p. 267), the last term is −⟨B, Δ_JB⟩. Hence
 ⟨B, Δ^{(k)}B⟩ = E(B) − ⟨B, Δ_JB⟩ + G^{(2)}(B) = ⟨B, Δ^fullB⟩ + G^{(2)}(B). (1.1)
1.5 Definition of 𝒢. Fix a real background V and a block B(y), x ∈ B(y)∖{y}. For a field B and a contour Γ ∈ G(y, x) put V_s(b) := e^{isB(b)}V(b). Then
 V_s(Γ) = e^{isB_Γ + O(s²)}V(Γ), B_Γ := Σ_{b∈Γ}t_{Γ,b}B(b), (1.2)
 t_{Γ,b} := Ad(V(Γ_{<b})) if Γ traverses b forward, t_{Γ,b} := −Ad(V(Γ_{<b})V(b)^{−1}) if Γ traverses b backward,
where Γ_{<b} is the part of Γ before b. Proof of (1.2): a forward bond contributes e^{isB(b)}V(b); moving e^{isB(b)} to the left through the prefix V(Γ_{<b}) gives e^{is Ad(V(Γ_{<b}))B(b)}. A backward bond contributes (e^{isB(b)}V(b))^{−1} = V(b)^{−1}e^{−isB(b)} = e^{−is Ad(V(b)^{−1})B(b)}V(b)^{−1}; moving through the prefix gives the second formula. Products of the first-order factors give the sum, up to O(s²). Each t_{Γ,b} is ± an orthogonal map (VERIFY V2, V5: the backward transport is the corrected one).
 Define the linear map 𝒢 by
 M({V_s(Γ)}_Γ)·M({V(Γ)}_Γ)^{−1} = e^{is(𝒢B)(y, x) + O(s²)}, i.e. (𝒢B)(y, x) := (d/ds)|_{s=0}(1/i)log[M({V_s(Γ)})M({V(Γ)})^{−1}]. (1.3)
 Then B̃′(y, x) of 1.4 is i(𝒢B)(y, x), and |B̃′|² = |𝒢B|² (VERIFY V9 F: exact linearization). So G^{(2)}(B) = ‖𝒢B‖² := Σ_yΣ_{x≠y}|(𝒢B)(y, x)|², and c_G = 1. With 1.4: Δ^{(k)} = Δ^full + 𝒢*𝒢, and A_exp = C*Δ^{(k)}C. G_y(B) := Σ_{x∈B(y)∖{y}}|(𝒢B)(y, x)|².
- (§1.1–1.5 done)
