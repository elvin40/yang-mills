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
1.6 Lemma G (properties of 𝒢) [P, with the smoothness of M from 1.2]. Let V be real and regular on B(y). Put w := max_{x,Γ}|W_Γ − 1|, where W_Γ := V(Γ)U(y, x)^{−1}, Γ ∈ G(y, x).
 (a) Block locality. (𝒢B)(y, ·) depends only on the values of B and V on bonds of B(y). So 𝒢*𝒢 = ⊕_y𝒢_y*𝒢_y, and its kernel vanishes unless both bonds lie in one block.
 (b) Weights. There are linear maps ω_Γ on 𝔤 with (𝒢B)(y, x) = Σ_{Γ∈G(y,x)}ω_Γ B_Γ, and ‖ω_Γ − n^{−1}·1‖ ≤ c_Mw, n := |G(y, x)| ≤ d!, c_M = c_M(G, d).
 (c) w ≤ c_w Mα_0, c_w = c(d, L, N). Hence for Mα_0 small (after d, L, N) the weights are n^{−1}(1 + O(Lα_0M)) and
 G_y(B) ≤ 2c_𝒢S_y(B), c_𝒢 := d(L−1)L^d/2; ‖𝒢*𝒢‖ ≤ 2c_𝒢.
 (d) Gauge directions. For every λ, (𝒢D^Vλ)(y, x) = λ(y) − Ad(U(y, x))λ(x). If λ(y) = 0, then |(𝒢D^Vλ)(y, x)| = |λ(x)| exactly.
 Proof. (a) Every Γ ∈ G(y, x) lies in B(y) (1.1). So B_Γ and t_{Γ,b} use only B and V on bonds of B(y), and so does U(y, x). Block bond sets of distinct blocks are disjoint, which gives the direct sum.
 (b) Put M̄ := U(y, x). By (0.6), M({W_Γ}) = M({V(Γ)})M̄^{−1} = 1. By (1.2), V_s(Γ) = e^{isB_Γ}W_ΓM̄ + O(s²). By (0.6) again, M({V_s(Γ)})M̄^{−1} = M({e^{isB_Γ}W_Γ}) + O(s²); the O(s²) passes through M because M is smooth. So (𝒢B)(y, x) is the derivative at s = 0 of (1/i)log M({e^{isB_Γ}W_Γ}). This is linear in the tuple (B_Γ)_Γ; ω_Γ is its Γ-component. At W_Γ = 1 for all Γ, (0.8) gives ω_Γ = n^{−1}·1. Smoothness of M near (1, …, 1) gives the Lipschitz bound.
 (c) w is gauge invariant: under V ↦ V^u, V(Γ) ↦ u(y)V(Γ)u(x)^{−1}, and by (0.6) M̄ ↦ u(y)M̄u(x)^{−1}, so W_Γ ↦ u(y)W_Γu(y)^{−1}, and |·| is conjugation invariant. In a regular gauge on B(y) (0.3), |V(b) − 1| ≤ c(N)c_4Mα_0, so |V(Γ) − 1| ≤ ℓ_Γc(N)c_4Mα_0 (telescoping with unitary factors), and M̄ is within the same order of 1 by (0.8). So w ≤ c_wMα_0. Now choose Mα_0 so small that κ := 1 + d!·c_Mw ≤ √2. Then ‖ω_Γ‖ ≤ κ/n. By Cauchy–Schwarz in Γ, |(𝒢B)(y, x)|² ≤ (Σ_Γ‖ω_Γ‖)(Σ_Γ‖ω_Γ‖|B_Γ|²) ≤ κ²·max_Γ|B_Γ|². Each t_{Γ,b} is ± orthogonal and Γ uses each bond once, so by Cauchy–Schwarz along Γ, |B_Γ|² ≤ ℓ_ΓΣ_{b∈Γ}|B(b)|² ≤ (d(L−1)/2)S_y(B). Sum over the < L^d points x: G_y ≤ κ²c_𝒢S_y ≤ 2c_𝒢S_y. The norm bound follows from (a).
 (d) Put u_s := e^{isλ}. By 0.5, e^{isD^Vλ(b)}V(b) = V^{u_s}(b) + O(s²), with V^u(b) = u(b_−)V(b)u(b_+)^{−1}. Telescoping along Γ gives V^{u}(Γ) = u(y)V(Γ)u(x)^{−1}. By (0.6), M({u(y)V(Γ)u(x)^{−1}}) = u(y)M̄u(x)^{−1}. So M({V_s(Γ)})M̄^{−1} = u_s(y)·M̄u_s(x)^{−1}M̄^{−1} + O(s²) = e^{is[λ(y) − Ad(M̄)λ(x)] + O(s²)}. By (1.3), (𝒢D^Vλ)(y, x) = λ(y) − Ad(M̄)λ(x). M̄ ∈ G, so Ad(M̄) is orthogonal, and for λ(y) = 0 the norm is |λ(x)|. ∎
 Remarks. (i) Part (d) is exact; no smallness enters (VERIFY V2: this replaces the source's step with τ_G). (ii) For a flat V on B(y) all V(Γ) coincide, W_Γ = 1, and 𝒢 is the plain contour average (VERIFY V2); numerically checked on a non-flat so(3) block to 5·10^{−16} (VERIFY V5).
1.7 Scaling [P]. Before B′ → g_kB′ the gauge term is (1/g_k²)·½G^{(2)} + O(B′³); after it, ½G^{(2)}(B′) with coefficient c_G = 1, of the same order as the other terms of (2.11). G_3 is cubic and higher; it does not enter the covariance.
1.8 Remark (why a direct proof is needed) [P, VERIFY V10(1)]. 𝒢*𝒢 does not vanish on the axial slice {B = 0 on the trees}. Example: U = 1, d = 2, L = 3, B = e on the bond ⟨y + e_1, y + e_1 + e_2⟩. This bond is not a tree bond, and it lies on one of the two contours from y to y + e_1 + e_2. So (𝒢B)(y, y + e_1 + e_2) = ½e ≠ 0. Hence the exponential-gauge covariance is not the axial covariance restricted to a subspace, and no transfer from the axial gauge applies. The proof below bounds A_exp directly.
1.9 Shared operators [R via (p254)]. G_1, (QG_1Q*)^{−1}, H_1, Δ_J, and Q̃ are defined in CMP 99 §§C–E before the axial restriction, and CMP 109 uses them with its new averages (p254). So Δ^full contains no gauge fixing, and its expansions (WG), (A1W) serve the exponential gauge. The only gauge-fixing-dependent objects are the lower bound of A_exp and its inverse.
- (§1 done)

## §2 Lemma E: the block inequality with the gauge term

2.1 Statement [P given (A3-4.2), (R3), Lemma G]. Put τ_p := 16√N c_4Mα_0. Assume Lemma G(c) applies (κ ≤ √2) and
 16d³L^dc_𝒢τ_p² ≤ 1. (H_E)
Then for every real regular V and every field B on the bonds of B(y),
 S_y(B) ≤ K_b(P_y(B) + G_y(B)), K_b := 8dL^d(1 + 16dc_𝒢) ≤ 64d³L^{2d+1}.
(H_E) is a smallness condition on Mα_0 after d, L, N. The source bound K_b ≤ 136d³L^{2d+1} (SOURCES_WC_EXPGAUGE 3.2) also holds; the smaller value comes from the exact step (d).
2.2 Proof, step (a): the split of B on one block into a gauge part and a transverse part. Let T(y) be the axial tree of B(y) with root y: for x ∈ B(y), Γ^ax_{y,x} goes from y to x first along e_d, then e_{d−1}, …, then e_1 (A3 §3.0, with root y). Each x ≠ y has a unique parent (the site before x on Γ^ax_{y,x}). So T(y) is a spanning tree with L^d − 1 bonds. Define λ on B(y) by λ(y) := 0 and, along each tree bond b with ends z (the parent) and z′ (the child):
 if b_− = z, b_+ = z′: λ(z′) := Ad(V(b))^{−1}(B(b) + λ(z));
 if b_− = z′, b_+ = z: λ(z′) := Ad(V(b))λ(z) − B(b).
The recursion runs from the root outward, so λ is well defined and unique. Put B_ax := B + D^Vλ. In the first case (D^Vλ)(b) = λ(z) − Ad(V(b))λ(z′) = −B(b). In the second case (D^Vλ)(b) = λ(z′) − Ad(V(b))λ(z) = −B(b). So B_ax = 0 on T(y). Also λ(y) = 0, so the gauge part D^Vλ lies in the tangent space of the residual group N of 1.3. We call B_ax the transverse part. Put Λ_y := Σ_{x∈B(y)}|λ(x)|².
2.3 Step (b): the axial block inequality. B_ax vanishes on T(y). By (A3-4.2) with root y,
 S_y(B_ax) ≤ dL^dP_y(B_ax). (2.1)
2.4 Step (c): the covariant curl of a gauge direction. Claim: for every plaquette p ⊂ B(y) with base corner p_0,
 (∂^VD^Vλ)(p) = (1 − Ad(V(∂p)))λ(p_0). (2.2)
Proof. By 0.5, e^{isD^Vλ}V = V^{u_s} + O(s²), u_s = e^{isλ}. Telescoping around ∂p from p_0 gives V^{u}(∂p) = u(p_0)V(∂p)u(p_0)^{−1}. So, by the definition 0.4 of the curl, e^{is(∂^VD^Vλ)(p)}V(∂p) = (1 + isλ(p_0))V(∂p)(1 − isλ(p_0)) + O(s²) = (1 + is[λ(p_0) − Ad(V(∂p))λ(p_0)])V(∂p) + O(s²). Compare first-order terms. ∎ (Checked numerically to 8·10^{−16} on a non-flat so(3) block, VERIFY V5. The literal formula (3.4) of CMP 99 is not covariant and is not used, VERIFY V3.)
 Bound. ‖Ad(V(∂p)) − 1‖ is invariant under V ↦ V^u, because V(∂p) ↦ u(p_0)V(∂p)u(p_0)^{−1} and Ad of it is conjugated by the orthogonal Ad(u(p_0)). In a regular gauge on B(y), V(∂p) is a product of four factors e^{±iA_1(b)} with |A_1(b)| ≤ c_4Mα_0 (R3). The elementary fact (E) of A3 §2.1 with the √N of A3_VERIFY item 6 reads ‖Ad(e^{iY}) − 1‖ ≤ e^{2√N|Y|} − 1 ≤ 4√N|Y| for 2√N|Y| ≤ 1, because ‖ad_Y‖ ≤ 2‖Y‖_op ≤ 2√N|Y| when tr 1 = 1. Telescoping over the four orthogonal factors gives ‖Ad(V(∂p)) − 1‖ ≤ 4·4√N c_4Mα_0 = τ_p.
 By linearity of the curl, (∂^VB_ax)(p) = (∂^VB)(p) + (∂^VD^Vλ)(p). So |(∂^VB_ax)(p)| ≤ |(∂^VB)(p)| + τ_p|λ(p_0)|, and |(∂^VB_ax)(p)|² ≤ 2|(∂^VB)(p)|² + 2τ_p²|λ(p_0)|². Each site is the base corner of at most d(d−1)/2 ≤ d² plaquettes of B(y). Summing over p ⊂ B(y):
 P_y(B_ax) ≤ 2P_y(B) + 2d²τ_p²Λ_y. (2.3)
2.5 Step (d): 𝒢 controls λ. By linearity, 𝒢B = 𝒢B_ax − 𝒢D^Vλ. By Lemma G(d) with λ(y) = 0, |(𝒢D^Vλ)(y, x)| = |λ(x)| for x ≠ y. So |λ(x)| ≤ |(𝒢B)(y, x)| + |(𝒢B_ax)(y, x)|, and |λ(x)|² ≤ 2|(𝒢B)(y, x)|² + 2|(𝒢B_ax)(y, x)|². Sum over x ∈ B(y)∖{y} (λ(y) = 0) and use Lemma G(c) for B_ax:
 Λ_y ≤ 2G_y(B) + 2G_y(B_ax) ≤ 2G_y(B) + 4c_𝒢S_y(B_ax). (2.4)
This step is exact by (0.6); no smallness is used (VERIFY V2).
2.6 Step (e): back from B_ax to B. B = B_ax − D^Vλ, so |B(b)|² ≤ 2|B_ax(b)|² + 2|(D^Vλ)(b)|². Since Ad is orthogonal, |(D^Vλ)(b)|² ≤ 2|λ(b_−)|² + 2|λ(b_+)|². Each site of B(y) is an endpoint of at most 2d bonds of B(y). So Σ_{b⊂B(y)}|(D^Vλ)(b)|² ≤ 4dΛ_y, and
 S_y(B) ≤ 2S_y(B_ax) + 8dΛ_y. (2.5)
2.7 Step (f): the Poincaré-type assembly. Insert (2.3) into (2.1), then (2.4):
 S_y(B_ax) ≤ dL^d[2P_y + 2d²τ_p²Λ_y] ≤ 2dL^dP_y + 2d³L^dτ_p²[2G_y + 4c_𝒢S_y(B_ax)]
 = 2dL^dP_y + 4d³L^dτ_p²G_y + 8d³L^dc_𝒢τ_p²S_y(B_ax).
By (H_E), 8d³L^dc_𝒢τ_p² ≤ ½. Move the last term to the left and multiply by 2:
 S_y(B_ax) ≤ 4dL^dP_y + 8d³L^dτ_p²G_y ≤ 4dL^dP_y + G_y/(2c_𝒢), (2.6)
where the last step uses 8d³L^dτ_p² ≤ 1/(2c_𝒢), again (H_E). Insert (2.6) into (2.4):
 Λ_y ≤ 2G_y + 4c_𝒢[4dL^dP_y + G_y/(2c_𝒢)] = 4G_y + 16c_𝒢dL^dP_y. (2.7)
Insert (2.6) and (2.7) into (2.5):
 S_y ≤ 8dL^dP_y + G_y/c_𝒢 + 32dG_y + 128c_𝒢d²L^dP_y = 8dL^d(1 + 16dc_𝒢)P_y + (1/c_𝒢 + 32d)G_y.
2.8 The constant. c_𝒢 = d(L−1)L^d/2 ≥ 2·2·9/2 = 18 ≥ 1 for d ≥ 2, L ≥ 3. So 1/c_𝒢 + 32d ≤ 1 + 32d ≤ 8dL^d·16dc_𝒢 ≤ K_b. Hence S_y ≤ K_b(P_y + G_y). For the bound on K_b: 1 + 16dc_𝒢 = 1 + 8d²(L−1)L^d = 8d²L^{d+1} − (8d²L^d − 1) ≤ 8d²L^{d+1}. So K_b ≤ 64d³L^{2d+1}. ∎
2.9 Remarks [P]. (i) Lemma E is block-local: it involves only bonds and plaquettes of B(y). It needs no Dirichlet condition and no Q̃-constraint. (ii) The tree T(y) and the split B = B_ax − D^Vλ are a device inside the proof. The exponential-gauge field B is not constrained. (iii) The root of T(y) must be the root y of 𝒢 (the block centre), because step (d) needs λ(y) = 0 at the point where every contour of G(y, x) starts. (A3-4.2) holds for this root (0.9). (iv) Without the gauge term the inequality fails: at V = 1, B = Dλ with λ(y) = 0 and λ ≠ 0 has P_y = 0 (the curl of a gradient vanishes) and S_y > 0 (on the connected block, Dλ = 0 forces λ constant, hence λ = 0). These are exact zero modes; the numerics of §7 show min(P | Q̃ = 0) = 0 to 10^{−14}.
- (§2 done)

## §3 Theorem L: the global lower bound

3.1 Lemma P_exp [P given Lemma E, (A3-4.4)]. Assume (H_E) and the inputs of (A3-4.3). For every unit field B with B = 0 off Λ and Q̃B = 0,
 P^U(B) + G(B) ≥ γ_e(1 − η_6)‖B‖², γ_e^{−1} := K_b(1 + 6d/m_L) + 6/m_L, G := Σ_yG_y = ‖𝒢B‖².
Proof. (1) Block bonds. Plaquettes inside distinct blocks are distinct, so Σ_yP_y ≤ P^U. Sum Lemma E over the blocks: S_b = Σ_yS_y ≤ K_bΣ_y(P_y + G_y) ≤ K_b(P^U + G).
(2) Corridor bonds. Q̃B = 0 is the hypothesis of (A3-4.3), so (A3-4.4) applies: S_c ≤ (3/m_L)(2P^U + 2dS_b) + η_6‖B‖². (A3-4.3) uses neither the trees nor any condition inside the blocks (0.9). So it is unchanged in the exponential gauge.
(3) Assembly. ‖B‖² = S_b + S_c ≤ (1 + 6d/m_L)S_b + (6/m_L)P^U + η_6‖B‖² ≤ [K_b(1 + 6d/m_L) + 6/m_L](P^U + G) + η_6‖B‖². The first step inserts (2); the second inserts (1) and uses G ≥ 0. Rearranging gives the claim. ∎ (Assembly recomputed in VERIFY V4.)
3.2 Theorem L [P given (A3-6.1), (R4), Lemma P_exp]. Assume (H1)–(H3), with α_* so small that (H_E) holds, Lemma G(c) applies, and
 η_6 ≤ ¼, ε_7 ≤ ⅛, ε_7a + c_J ≤ γ_e/12. (3.1)
This is possible because η_6, ε_7, c_J are c(d, L, N)(Mα_0 + (Mα_0)²) by their definitions (A3 §4.1, §6.1, §6.4). Then for all B̃ ∈ V_red with B̃ = 0 off Λ,
 ⟨B̃, A_expB̃⟩ ≥ γ_exp‖B̃‖², γ_exp := ½c̄γ_e = ¼γ_e, c̄ := min(½, c_G) = ½.
Proof. Put B := CB̃. By 0.6, Q̃B = 0, and B = 0 off Λ (A3 §6.5 [V CMP 99 p. 428], with Q̃ = Q_1(U_1), item I3). By (1.1),
 ⟨B̃, A_expB̃⟩ = ⟨B, Δ^{(k)}B⟩ = E(B) − ⟨B, Δ_JB⟩ + G(B).
By (A3-6.1), E(B) ≥ (1 + ε_7)^{−1}[½P^U − ε_7a‖B‖²] ≥ (1 + ε_7)^{−1}·½P^U − ε_7a‖B‖². By (R4), −⟨B, Δ_JB⟩ ≥ −c_J‖B‖². Since G ≥ 0 and (1 + ε_7)^{−1} ≤ 1, G ≥ (1 + ε_7)^{−1}c̄G. Also ½P^U ≥ c̄P^U. So
 ⟨B̃, A_expB̃⟩ ≥ (1 + ε_7)^{−1}c̄(P^U + G) − (ε_7a + c_J)‖B‖² ≥ [(1 + ε_7)^{−1}c̄γ_e(1 − η_6) − (ε_7a + c_J)]‖B‖²,
by Lemma P_exp. By (3.1), (1 + ε_7)^{−1} ≥ 8/9 and 1 − η_6 ≥ ¾, so the bracket is ≥ (8/9)(3/4)·½γ_e − γ_e/12 = γ_e/3 − γ_e/12 = ¼γ_e = γ_exp. Finally ‖CB̃‖² ≥ ‖B̃‖², because C is the identity on the kept bonds and only adds the values on the bonds b_0(c) (A3 §6.5). ∎ (Arithmetic recomputed in VERIFY V1, V4.)
3.3 Compression to Z_0 [P]. Let Λ = Z_0 in Theorem L. The form ⟨B̃, A_ZB̃⟩ on V_red(Z_0) equals ⟨B̃, A_expB̃⟩ for B̃ = 0 off Z_0, because 1_{Z_0}B̃ = B̃. So Theorem L gives A_Z ≥ γ_exp on V_red(Z_0). This is Theorem WC(i). Three checks:
 (a) Compression cannot lower a form bound: the infimum of the quadratic form over a subspace is at least its infimum over the larger space.
 (b) The proof never uses gauge invariance of A_exp. The gauge term enters only through Lemma E, which is block-local. Z_0 is a union of M-cubes, and M is a power of L, so Z_0 is a union of whole L-blocks. A block outside Z_0 carries B = 0 there, hence S_y = P_y = G_y = 0, and Lemma E holds trivially. So the concern "Dirichlet data break gauge invariance at ∂Z_0" does not apply.
 (c) Corridors that cross ∂Z_0 are handled by (A3-4.3) exactly as in the axial case: (A3-4.3) holds for every B with Q̃B = 0, and B = 0 on the outer block is one such case.
 Inherited: dist(Z_0, Λ_k^c) > RM (A3 §0.1; item I6).
3.4 Uniformity [P]. γ_exp = ¼γ_e depends on d, L (through K_b, m_L) only. The smallness (3.1), (H_E) depends on d, L, N, a. Nothing depends on k, η, Z_0, M ≥ M_1, or the background beyond (H1)–(H3), as in A3 §6.6.
3.5 Remark (value). For 2 ≤ L ≤ 9, m_L = 1/L, so γ_e^{−1} = K_b(1 + 6dL) + 6L ≤ 64d³L^{2d+1}(1 + 6dL) + 6L. The proof constant is of order 10^{−6}–10^{−7} for d = 2–3, L = 3. §7 shows that the true constant at U = 1 is of order 10^{−1}. The proof constants are crude, not sharp.
- (§3 done)

## §4 The walk (tree) expansion of A_exp

4.0 Inputs. All are free of gauge fixing (1.9).
 (W_G1) Theorem WG-G1 of WG_FULL: G_1 = Σ_τT_τ with (L1) kernel support in the domains, (L2) U-dependence on ∪X̃_i^5, and |T_τ(b, b′)| ≤ B_1ρ_*^{|τ|}m(b, b′)e^{−δ_1d(τ, b, b′)} [P given the printed sketches, R].
 (A1-W) Theorem A1-W of A1_WALK_FULL for P = G_1: (QG_1Q*)^{−1} = Σ_τT′_τ with (L1)–(L2), rate δ_W, step ρ_W ≤ K_W/M_1 [C on (C) for G_1].
 (I5) J is local and |J| = O(Mα_0) (CMP 99 (3.36); WG §2.0).
 (Conc) Concatenation Lemma WG 2.3: an ordered product of blocks Φ_1···Φ_N with bounds b_kρ^{|ω_k|}m e^{−δd(ω_k)} vanishes unless consecutive domain lists meet; it depends on U only on ∪X̃^5 of its domains; and |T(y, y′)| ≤ (Π_kb_k)c_1(θδ)^{N−1}ρ^{Σ|ω_k|}m(y, y′)e^{−(1−θ)δd(ω, y, y′)} for any θ ∈ (0, 1). Its proof splits the exponent with weights (1 − θ), θ and sums the junction points with c_1(θδ) [P].
4.1 The pieces of A_exp = C*[(QG_1Q*)^{−1} − a − Δ_J + 𝒢*𝒢]C.
 (a) C = I − hLQ̃. Its kernel vanishes beyond unit distance 2L. It depends on U only on the two blocks of a corridor and the corridor (Q̃ is block-local, item I3). It is one local factor whose domain is one M_1-cube neighbourhood (L ≪ M_1).
 (b) 𝒢*𝒢 and a·I. By Lemma G(a), 𝒢*𝒢 is block-diagonal with kernel bound ≤ 2c_𝒢 (Lemma G(c)). a·I is diagonal. Each is one local factor (|ω| = 0).
 (c) (QG_1Q*)^{−1}: the (A1-W) tree sum.
 (d) Δ_J. By 0.6, ⟨B, Δ_JB⟩ = 2⟨hC̃^{(2)}(B), H_1*J⟩. C̃^{(2)} is quadratic and local with range ≤ L (the second-order part of the one-step average; item I4). So Δ_J(b, b′) = Σ_{b_0}K_{b_0}(b, b′)(H_1*J)(b_0), where K_{b_0} vanishes unless b, b′ lie within 2L of b_0. The branch H_1*J = (QG_1Q*)^{−1}QG_1J is a product of tree-expanded blocks and the local J. By (Conc), Δ_J = Σ_ωΔ_{J,ω}: each term has its kernel in the root domain near b_0, a dangling branch ω that ends at one J-insertion, U-dependence on all domains of ω, and one factor O(Mα_0) from J. This is the CMP 99 p. 427 tree shape with two of its three chains trivial (VERIFY V8: "three chains … meet in a localization domain determined by C^{(2)}(A) … estimates are the same as in (3.108)" [V text]).
4.2 Proposition W_N (tree expansion of A_exp at real U) [P given 4.0]. Fix θ ∈ (0, 1). At real regular U, A_exp = Σ_ωA_ω, a tree expansion with (L1)–(L2), and
 |A_ω(b, b′)| ≤ B_Aρ_A^{|ω|}e^{−δ_Ad(ω, b, b′)}, δ_A := (1 − θ)min{δ_W, δ_1}, ρ_A := max{ρ_W, ρ_*, c(d, L)M_1^{−1}},
with B_A = B_A(d, L, a, a_0). Moreover Σ_ω|A_ω(b, b′)| ≤ 2B_Ae^{−δ_A|b − b′|} if C′_𝒟c_1ρ_A ≤ ½.
Proof. Expand the bracket of 4.1 into its four pieces and multiply by C* on the left and C on the right. Each term is an ordered product of at most five blocks: C*, one piece (with at most two inner blocks in (d): the vertex and one branch), and C. So each term has at most four junctions. (Conc) applies to each: (L1)–(L2) hold for the concatenated domain list, and the bound is the product of the block constants times c_1(θδ)^{≤4}, with the slowest rate min{δ_W, δ_1} reduced by (1 − θ). The local pieces (a), (b) have |ω| = 0 and add no step factor; each junction with a local piece is paid by one c_1(θδ). So B_A := 4·max(block constants)^5c_1(θδ)^4 suffices. Summation: given a domain, the next domain is chosen from at most C′_𝒟 options, and a tree is coded by its depth-first domain sequence (WG §3.6; A1_WALK_FULL §6.3(a)). So Σ_ω ≤ B_Ae^{−δ_A|b−b′|}Σ_n(C′_𝒟c_1ρ_A)^n ≤ 2B_Ae^{−δ_A|b−b′|}. Here d(ω, b, b′) ≥ |b − b′| because the path through all domains joins b to b′. ∎ (Tree shape of Δ_J checked against CMP 99 (3.134)–(3.138) in VERIFY V8.)
4.3 Upper bound [P]. By Schur's test with the absolute sum of 4.2, ‖A_exp‖ ≤ 2B_AS(δ_A) =: Γ_1, where S(δ) := sup_bΣ_{b′}e^{−δ|b−b′|} is finite and volume-independent.
4.4 Compression [P]. A_Z = 1_{Z_0}A_exp1_{Z_0} = Σ_ω1_{Z_0}A_ω1_{Z_0}. Each term keeps its domains, its U-dependence, and its bound, because multiplication by 1_{Z_0} only restricts the kernel. So Proposition W_N holds for A_Z with the same constants, uniformly in Z_0.
4.5 Corollary [P]. The real decay of A for the exponential gauge, ‖e^{ρf}A_expe^{−ρf}‖ ≤ 2B_AS(δ_A − ρ) for 1-Lipschitz f and ρ < δ_A, follows from 4.2 alone. It needs no input from the axial gauge.
- (§4 done)

## §5 The Z_0-compressed walk expansion in the CMP 116 p. 13 form

5.1 The tilde operation [V + P; SOURCES_WC_RESIDUE §3–§4, Q2–Q4]. CMP 116 p. 13 [V image] reads: "we take a domain X_0 such, that X̃_0^5 = Z̃_0 (let us notice the inconsistency in the notation, the tilde over X_0 means that M_1-cubes are adjoined, and the tilde over Z_0 concerns M-cubes). Other localization domains X are chosen as in Sect. C [13], i.e. they are unions of small, connected families of M_1-cubes, and we assume that dist(X, Z_0) > ⅔M." Here [13] = CMP 99 (CMP 109 reference list). CMP 116 does not define the tilde. CMP 99 fixes it:
 (a) p. 411 [V image]: Balaban replaces "the cube □ by □̃²" in a partition into cubes, so □̃² is a cube.
 (b) p. 413 [V image]: "operators localized in □_0, which is a sum of 5^d cubes from 𝒟". Under the ℓ^∞ reading, □̃² is the (2·2 + 1)^d = 5^d cube block. Under face-adjacent adjoining it is an ℓ^1 ball with 13, 25, 41 cubes for d = 2, 3, 4, never 5^d for d ≥ 2.
 (c) CMP 119 p. 245 [V image]: "adding one layer of … cubes touching □", the same convention in a later paper.
 So the tilde adjoins every cube of the family whose closure meets the closure of the set (the ℓ^∞ layer). Caveat: CMP 116 does not restate this; the transfer is by series usage.
 Independent consistency check [P, RESIDUE 4.5 and Q4]. Under face-adjacent adjoining, the equation X̃_0^5 = Z̃_0 has no solution when Z̃_0 has a convex corner, and Z̃_0^c touches Z_0 at a corner vertex. So p. 13 would contradict itself. Under the ℓ^∞ reading it is solvable (5.3).
