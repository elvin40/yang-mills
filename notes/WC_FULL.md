# WC_FULL — Theorem WC: the exponential-gauge covariance C^{(k)}(Z_0), complete proof

Date 2026-10-28. Author: Opus write-out session. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read.
Sources: SOURCES_WC_EXPGAUGE.md §1–§7 with its appended corrections; SOURCES_WC_EXPGAUGE_VERIFY.md V1–V10 (cited as EXPGAUGE-VERIFY V1–V10; the page facts of §9 are PF1–PF10); SOURCES_WC_RESIDUE.md §1–§7 with its verification Q1–Q8; SOURCES_A3_GAMMA0_FULL.md (Lemmas 4.2, 4.3, 4.4 and step (6.1)); A1_WALK_FULL.md and WG_FULL.md (write-outs of SOURCES_A1_WALK.md and SOURCES_WG.md); numerics/wc_exp/poincare_exp.py.
Tags. [V] page-verified in CMP 96/99/109/116/119 (image or text, per the cited verify file). [P] proved in this file. [R] reduced to a named printed statement. [C] conditional on a named unproved input. [I] inferred, open.
Every corrected statement of the verify files is used in its corrected form. Where a source constant changed, the new value is derived here.

## §0 Notation, inputs, and statement

0.1 Lattice and blocks. Units are fixed so that L^kη = 1 near Λ. L is odd, L ≥ 3 (CMP 109 p. 252 [V]). The unit lattice is partitioned into L-blocks B(y). The label y ∈ T^{(k+1)} is the block centre, so B(y) = {y + n : |n_μ| ≤ (L−1)/2 for all μ}.
 A unit bond is a block bond if both ends lie in one block.
 Otherwise it is a corridor bond; it then joins two adjacent blocks B(c_−), B(c_+), and c = ⟨c_−, c_+⟩ is a corridor (A3 §3.0 [V CMP 96 pp. 244–245]). For each corridor c, b_0(c) is the corridor bond that CMP 109 p. 267 eliminates.
 The partition into blocks is the partition used by the averaging Q̃ = Q_1(U_1) (identification [I-strong], §9 item I3).
0.2 Fields. Fields take values in the Lie algebra 𝔤 of G ⊂ U(N) with X·Y = tr X*Y and tr 1 = 1 (A3 §0.2 [V CMP 99 p. 392]). For g ∈ G, Ad(g) is orthogonal. ‖B‖² = Σ_b|B(b)|². For a block, S_y(B) := Σ_{b⊂B(y)}|B(b)|²; S_b := Σ_yS_y; S_c := the sum over corridor bonds. So ‖B‖² = S_b + S_c.
0.3 Background. U obeys (H1)–(H3) of A3 §0.5: the regularity conditions (3.35)–(3.36) of CMP 99 with parameters M, α_0; M ≥ max(M_99(d, L), L); Mα_0 ≤ a_L. V := U_1 is the induced unit-lattice background.
 By A3-R3 (input R3 of A3 §2.1) [R], on every set of unit ℓ^∞-diameter ≤ 8M there is a gauge with V(b) = e^{iA_1(b)}, |A_1(b)| ≤ c_4Mα_0, c_4 = c(d, L). Such a gauge is called regular for the set.
 A block has diameter L ≤ 8M by (H2).
0.4 Curl. For a plaquette p with base corner p_0 (the lowest corner) the covariant curl is the linearized holonomy: if V_s(b) := e^{isB(b)}V(b), then V_s(∂p) = e^{is(∂^VB)(p) + O(s²)}V(∂p), V(∂p) the holonomy from p_0.
 This has the form (C) of A3 §0.3, (∂^VB)(p) = Σ_{b∈∂p}σ_{p,b}Ad(T_{p,b})B(b), T_{p,b} a product of ≤ 3 links. A3 uses exactly this exact covariant curl (EXPGAUGE-VERIFY V3, V4). P^U(B) := Σ_p|(∂^VB)(p)|²; P_y(B) := Σ_{p⊂B(y)}|(∂^VB)(p)|².
0.5 Gauge directions. For λ: sites → 𝔤 put (D^Vλ)(b) := λ(b_−) − Ad(V(b))λ(b_+). This is the linear part of the gauge action V(b) ↦ u(b_−)V(b)u(b_+)^{−1}, u = e^{isλ}: indeed (1 + isλ(b_−))V(b)(1 − isλ(b_+)) = (1 + is[λ(b_−) − Ad(V(b))λ(b_+)])V(b) + O(s²).
 CMP 99 (3.3) uses the opposite sign (EXPGAUGE-VERIFY V3); the sign is irrelevant below.
0.6 Operators of CMP 99 §E and CMP 109 §2 (A3 §0.4). Q = Q_k(U); G_1 of (3.128); H_1 = G_1Q*(QG_1Q*)^{−1}; a > 0 the constant of the averaging term; Δ_J with ⟨B, Δ_JB⟩ = 2⟨H_1D̃^{(2)}(B), J⟩, D̃^{(2)} = hC̃^{(2)} (CMP 109 p. 267 [V]). Put
 Δ^full := (QG_1Q*)^{−1} − a − Δ_J, an operator on all unit fields, with no constraint and no gauge fixing.
V_red is the space of unit fields B̃ with the bonds b_0(c) removed. C := I − hLQ̃: V_red → unit fields, where LQ̃h = I and (hB)(b_0(c)) = h(c)B(c) (CMP 109 p. 267 [V]). Then Q̃CB̃ = 0, C is the identity on the kept bonds, and C has unit range ≤ 2L.
0.7 The gauge operator 𝒢 and A_exp (defined in §1). A_exp := C*(Δ^full + c_G𝒢*𝒢)C on V_red, c_G = 1. For a set Z_0 of unit bonds, 1_{Z_0} is the coordinate projection, A_Z := 1_{Z_0}A_exp1_{Z_0} on V_red(Z_0), and C^{(k)}(Z_0) := A_Z^{−1}.
 By CMP 109 p. 267 (2.11) [V] and §1.4 below, A_exp is the operator C*Δ^{(k)}C of CMP 109 p. 268.
0.8 The set Z_0. Z_0 is a union of M-cubes with dist(Z_0, Λ_k^c) > RM (inherited from A3 §0.1, [I] item I6). Z̃_0 := Z_0 with one layer of all M-cubes touching Z_0 adjoined (ℓ^∞ layer, §5.1). For a union X of M_1-cubes, X̃^5 := X with five ℓ^∞ layers of M_1-cubes adjoined.
- (§0.1–0.8 done)

0.9 Inputs (cited, not proved here). Each is stated in the form used.
 (A3-4.2) [P in A3, exact]. Let T be a spanning tree of B(y) made of axial staircase paths from a root r ∈ B(y). If B = 0 on T, then S_y(B) ≤ dL^dP_y(B). The proof (A3 §4.2 via §3.1) uses only step inequalities |B(b_2)| ≤ |(∂^VB)(p)| + |B(b_4)| on plaquettes with two tree bonds, which move coordinates toward r.
 It holds for every root, in particular r = y (EXPGAUGE-VERIFY V4).
 (A3-4.3) [P in A3 given A3-R2′, A3-R3]. Assume Q_1(U_1)B = 0. For every corridor c, with R(c) := B(c_−) ∪ B(c_+) ∪ 𝒦(c), τ := 12√N c_4Mα_0 (the √N from A3_VERIFY item 6),
 (m_L/3)L^{−d}Σ_{𝒦(c)}|B|² ≤ 2L^{−d}Σ_{𝒫(c)}|∂^VB|² + 16(d−1)τ²L^{−d}Σ_{R(c)}|B|² + ε_{Q1}²(Q̂_1|B|)(c)² + L^{−d}Σ_{B(c_−)∪B(c_+)}|B|²,
 with m_L = min(2(1 − cos(π/L)), 1/L), 𝒫(c) pairwise disjoint plaquette sets, Σ_c(Q̂_1|B|)(c)² ≤ c_{Q1}‖B‖², ε_{Q1} ≤ c(d, L)Mα_0. It uses neither trees nor block data inside the blocks.
 (A3-4.4) [P in A3]. Summing (A3-4.3) over c, with each bond in R(c) for ≤ 2d corridors:
 S_c ≤ (3/m_L)(2P^U + 2dS_b) + (3L^d/m_L)ε_8‖B‖², ε_8 := 32d(d−1)τ²L^{−d} + c_{Q1}ε_{Q1}², η_6 := (3L^d/m_L)ε_8.
 (A3-6.1) [P in A3 given A3-R1, R-Δ′, R-Δ2 (needs the (3.136) form), A3-R2]. For every unit field B with B = 0 off Λ, E(B) := ⟨B, (QG_1Q*)^{−1}B⟩ − a‖B‖² obeys
 (1 + ε_7)E(B) ≥ ½P^U(B) − ε_7a‖B‖², ε_7 = c(d, L)(Mα_0 + (Mα_0)²).
 The proof (A3 §6.2) uses B = 0 off Λ, the minimizer A_* of A3 Lemma 5, Lemma 2, R-Δ′, R-Δ2, A3-R1. It uses neither the trees nor Q_1B = 0 (EXPGAUGE-VERIFY V4).
 (A3-R4) [R/I, A3 §6.1]. |⟨B, Δ_JB⟩| ≤ c_J‖B‖² for all B, c_J = c(d, L)Mα_0.
 (WG) [P in WG_FULL given printed sketches]. Theorem WG-G1: G_1 = Σ_τT_τ, a tree expansion with locality (L1)–(L2) and (3.108)-form bounds, rate δ_1 = (1 − θ)·½ε. Its proof prints only a sketch in CMP 99 (Thm 3.10, p. 422, p. 427 "estimates are the same as in (3.108)") [R].
 Concatenation Lemma WG 2.3 [P].
 (A1W) [P in A1_WALK_FULL, conditional on (C)]. Theorem A1-W: (QPQ*)^{−1} has a walk/tree expansion with (L1)–(L2) and per-walk bounds, rate δ_W = ½ε, step K_W/M_1, for P = G or G_1, given a (3.108)-form expansion of P and the global accretive bound (C): Re⟨u, N̂_Pu⟩ ≥ c_−‖u‖².
 (C) is [C] (A1_WALK_VERIFY (6)).
 (Th3.4) [V CMP 99 p. 400]. "There exists a positive constant a_1 such that the operators G′(U), (Q′(U)G′²(U)Q′*(U))^{−1}, R(U), G(U) extend to configurations U′U for α_1 ≤ a_1 as analytic functions of A.
 The extended operators satisfy all the inequalities of Theorems 3.1–3.3 correspondingly." The complex walk form of G built on it is [R] (Thm 3.4 + Thm 3.10).
 (p254) [V CMP 109 p. 254; R]. CMP 109 replaces the averages of CMP 98 by the symmetric averages (0.4), (0.12) and states: "all results of the paper [12] are valid for it. The proofs are in most cases unchanged".
 The shared operators G_1, H_1, (QG_1Q*)^{−1}, Q̃ are therefore the same construction with the new average. Their expansions and A3-R2′ carry over by this sentence [R].
0.10 Theorem WC. Fix d ≥ 2 and odd L ≥ 3. There are M_1, M with M/M_1 > 3(6 + c_X) and M/M_1 > 10, a smallness α_*, a four-level chain of complex domains α′ ⊂ α″ ⊂ α‴ ⊂ a_1-domain, and constants
 γ_exp = ½min(½, c_G)γ_e(d, L) = ¼γ_e(d, L) > 0, ε″ > 0, ρ > 0,
such that for every real regular U and every Z_0 as in 0.8:
 (i) (real lower bound) ⟨B̃, A_ZB̃⟩ ≥ γ_exp‖B̃‖² for all B̃ ∈ V_red(Z_0);
 (ii) (real walk expansion) C^{(k)}(Z_0) = Σ_ωT_ω with (L1)–(L2), |T_ω(b, b′)| ≤ (4/γ_exp)(c_1ρ)^{|ω|}e^{−½ε d(ω, b, b′)}, absolutely convergent, and after regrouping it has the CMP 116 p. 13 form: one domain X_0 with X̃_0^5 = Z̃_0, every other domain X with dist(X, Z_0) > ⅔M, and every factor kernel vanishing within ⅓M_1 of the boundary of its domain (for X_0 by 5.4(d), with margin M_1; for every other factor by (L1) with the band, see 5.4(d) and WG_FULL 0.4);
 (iii) (complex points) at every U_c in the α′-space, Re⟨u, A_Z(U_c)u⟩ ≥ ½γ_exp‖u‖², C^{(k)}(Z_0; ·) is analytic there, and (ii) holds with 4/γ_exp → 8/γ_exp, ε → ε″;
 (iv) (resolvent) (i)–(iii) hold for (x + A_Z)^{−1}, x ≥ 0, uniformly in x, and the per-walk prefactor improves to 4/(γ_exp + x) (real) and 8/(γ_exp + x) (complex). Reason: the leading factor C_□(x) of each walk obeys ‖C_□(x)‖_ε ≤ 2/(c + x), c = ½γ_exp (real) or ¼γ_exp (complex), because x ≥ 0 raises the real part by x and does not change the Combes–Thomas error (5.5). So the x^{−1/2} integral for (C^{(k)})^{1/2} converges.
 The constants are uniform in k, η, Z_0, M ≥ M_99, and the background. The proof does not use CMP 99 Theorem 3.15 or any transfer from the axial gauge (§8).
## §1 The exponential gauge term of CMP 109

1.1 Contours [V CMP 109 p. 252]. For y ∈ T^{(1)} and x = y + n ∈ B(y), G(y, x) is the family of shortest staircase contours from y to x. There is one contour for each order of the coordinate directions μ with n_μ ≠ 0, and |n_μ| ≤ (L−1)/2.
 So |G(y, x)| ≤ d!, each contour has length ℓ_Γ = Σ_μ|n_μ| ≤ d(L−1)/2, each contour uses each bond at most once, and every contour lies in B(y) (each coordinate moves monotonically from y_μ to x_μ).
1.2 The average [V CMP 109 pp. 252–253]. U(y, x) := M({U(Γ)}_{Γ∈G(y,x)}) (0.11), M the group average (0.5)–(0.10). Two properties are used. (0.6): M({uU_jv}) = uM({U_j})v for u, v ∈ G (two-sided covariance).
 (0.8): (1/i)log M({e^{iA_j}}) = (1/n)Σ_jA_j + higher order, n = the number of entries. M is smooth near (1, …, 1) (it is built from log and exp near 1, (0.5)–(0.10)).
 M is axiomatic on p. 253; CMP 109 fixes Federbush's mean (0.10), Σ_jlog(M^{−1}U_j) = 0, and states that the results hold for every M with (0.5)–(0.9) (CMP 109 p. 253, checked in WC_FULL_VERIFY §2). Explicit constants below are for (0.10). Inside the convexity radius, (0.10) is the first-order condition of the Karcher (Riemannian centre of mass) mean for the bi-invariant metric, and its solution is unique there.
1.3 The gauge-fixing factor [V CMP 109 p. 254 (0.14), p. 255 (0.16)–(0.19)]. The factor is
 exp[−(1/2α)|U(y, x) − 1|²] = exp[−(1/α)(1 − Re tr U(y, x))], y ∈ T^{(1)}, x ∈ B(y), x ≠ y.
In the RG step α = g_k², and the exponent carries −(1/g_k²)Σ_{y∈T^{(k+1)}}Σ_{x∈B(y)∖{y}}[1 − Re tr U(y, x)]. After the factor, the measure is "still invariant with respect to the gauge transformations u satisfying u(y) = 1 for y ∈ T^{(1)}" (p. 254).
 So the residual gauge group is N := {u : u(y) = 1 for all block centres}.
 Normalization [V + P, EXPGAUGE-VERIFY V9 F]. The identity |U − 1|² = 2(1 − Re tr U) for unitary U holds with |X|² = tr X*X and tr 1 = 1: tr(U − 1)*(U − 1) = 2 − 2Re tr U. This is the trace form of 0.2. So the factor is exp[−(1/2α)Σ|U(y, x) − 1|²] in the norm of 0.2.
1.4 The quadratic part [V CMP 109 p. 266 (2.5), p. 267 (2.10)–(2.11)]. In the fluctuation variables, Ṽ′(y, x) = (V′V^{(k)})(y, x)(V^{(k)}(y, x))^{−1} = 1 + B̃′(y, x) + …, with B̃′ linear in B′, and
 G(B′) = Σ_{y∈T^{(k+1)}}Σ_{x∈B(y)∖{y}}½|B̃′(y, x)|² + G_3(B′) =: ½G^{(2)}(B′) + G_3(B′), G_3 localized in blocks of T^{(k)}.
After B′ → g_kB′ the order-0 terms are ⟨H_1hC̃^{(2)}(B′), J⟩ − ½G^{(2)}(B′) − ½⟨H_1B′, Δ_1H_1B′⟩ (2.11), and "The quadratic form in B′ above is equal to −½⟨B′, Δ^{(k)}B′⟩, see the definition (3.156) [13] with the δ-function gauge fixing term replaced by the exponential one." Then B′ = CB̃ and C^{(k)} = (C*Δ^{(k)}C)^{−1} (p. 268).
 Term match [I-strong, consistent; EXPGAUGE-VERIFY V3, V9 F]. Multiply (2.11) by −2: ⟨H_1B, Δ_1H_1B⟩ + G^{(2)}(B) − 2⟨H_1hC̃^{(2)}(B), J⟩. By A3 Lemma 5 [P in A3], ⟨H_1B, Δ_1H_1B⟩ = ⟨B, (QG_1Q*)^{−1}B⟩ − a‖B‖² = E(B). With D̃^{(2)} = hC̃^{(2)} (p. 267), the last term is −⟨B, Δ_JB⟩. Hence
 ⟨B, Δ^{(k)}B⟩ = E(B) − ⟨B, Δ_JB⟩ + G^{(2)}(B) = ⟨B, Δ^fullB⟩ + G^{(2)}(B). (1.1)
1.5 Definition of 𝒢. Fix a real background V and a block B(y), x ∈ B(y)∖{y}. For a field B and a contour Γ ∈ G(y, x) put V_s(b) := e^{isB(b)}V(b). Then
 V_s(Γ) = e^{isB_Γ + O(s²)}V(Γ), B_Γ := Σ_{b∈Γ}t_{Γ,b}B(b), (1.2)
 t_{Γ,b} := Ad(V(Γ_{<b})) if Γ traverses b forward, t_{Γ,b} := −Ad(V(Γ_{<b})V(b)^{−1}) if Γ traverses b backward,
where Γ_{<b} is the part of Γ before b. Proof of (1.2): a forward bond contributes e^{isB(b)}V(b); moving e^{isB(b)} to the left through the prefix V(Γ_{<b}) gives e^{is Ad(V(Γ_{<b}))B(b)}.
 A backward bond contributes (e^{isB(b)}V(b))^{−1} = V(b)^{−1}e^{−isB(b)} = e^{−is Ad(V(b)^{−1})B(b)}V(b)^{−1}; moving through the prefix gives the second formula.
 Products of the first-order factors give the sum, up to O(s²). Each t_{Γ,b} is ± an orthogonal map (EXPGAUGE-VERIFY V2, V5: the backward transport is the corrected one).
 Define the linear map 𝒢 by
 M({V_s(Γ)}_Γ)·M({V(Γ)}_Γ)^{−1} = e^{is(𝒢B)(y, x) + O(s²)}, i.e. (𝒢B)(y, x) := (d/ds)|_{s=0}(1/i)log[M({V_s(Γ)})M({V(Γ)})^{−1}]. (1.3)
 Then B̃′(y, x) of 1.4 is i(𝒢B)(y, x), and |B̃′|² = |𝒢B|² (EXPGAUGE-VERIFY V9 F: exact linearization). So G^{(2)}(B) = ‖𝒢B‖² := Σ_yΣ_{x≠y}|(𝒢B)(y, x)|², and c_G = 1. With 1.4: Δ^{(k)} = Δ^full + 𝒢*𝒢, and A_exp = C*Δ^{(k)}C. G_y(B) := Σ_{x∈B(y)∖{y}}|(𝒢B)(y, x)|².
- (§1.1–1.5 done)
1.6 Lemma G (properties of 𝒢) [P for Federbush's mean (0.10); for a general M, (b)–(c) hold with a non-explicit c_M, see I8]. Let V be real and regular on B(y). Put w := max_{x,Γ}|W_Γ − 1|, where W_Γ := V(Γ)U(y, x)^{−1}, Γ ∈ G(y, x).
 (a) Block locality. (𝒢B)(y, ·) depends only on the values of B and V on bonds of B(y). So 𝒢*𝒢 = ⊕_y𝒢_y*𝒢_y, and its kernel vanishes unless both bonds lie in one block.
 (b) Weights. There are linear maps ω_Γ on 𝔤 with (𝒢B)(y, x) = Σ_{Γ∈G(y,x)}ω_Γ B_Γ, n := |G(y, x)| ≤ d!. For Federbush's mean, write W_Γ = e^{iA_Γ} (principal log); then exactly
  ω_Γ = (Σ_{Γ′}ψ_{Γ′})^{−1}ψ_Γ, ψ_Γ := φ(ad_{iA_Γ}), φ(x) := x/(e^x − 1),
 and, for w ≤ 1/(4√N), ‖ω_Γ − n^{−1}·1‖ ≤ c_Mw with c_M := 8√N/n ≤ 4√N (n ≥ 2; for n = 1, ω_Γ = 1).
 (c) w ≤ c_w Mα_0, c_w = c(d, L, N). Put κ := 1 + 7.6√N w; then ‖ω_Γ‖ ≤ κ/n, and κ ≤ √2 if w ≤ 0.054/√N, i.e. if c_wMα_0 ≤ 0.054/√N. Under this condition
 G_y(B) ≤ 2c_𝒢S_y(B), c_𝒢 := d(L−1)L^d/2; ‖𝒢*𝒢‖ ≤ 2c_𝒢.
 (d) Gauge directions. For every λ, (𝒢D^Vλ)(y, x) = λ(y) − Ad(U(y, x))λ(x). If λ(y) = 0, then |(𝒢D^Vλ)(y, x)| = |λ(x)| exactly.
 Proof. (a) Every Γ ∈ G(y, x) lies in B(y) (1.1). So B_Γ and t_{Γ,b} use only B and V on bonds of B(y), and so does U(y, x). Block bond sets of distinct blocks are disjoint, which gives the direct sum.
 (b) Put M̄ := U(y, x). By (0.6), M({W_Γ}) = M({V(Γ)})M̄^{−1} = 1. By (1.2), V_s(Γ) = e^{isB_Γ}W_ΓM̄ + O(s²). By (0.6) again, M({V_s(Γ)})M̄^{−1} = M({e^{isB_Γ}W_Γ}) + O(s²); the O(s²) passes through M because M is smooth. So (𝒢B)(y, x) is the derivative at s = 0 of (1/i)log M({e^{isB_Γ}W_Γ}).
 This is linear in the tuple (B_Γ)_Γ; ω_Γ is its Γ-component. At W_Γ = 1 for all Γ, (0.8) gives ω_Γ = n^{−1}·1.
 Explicit form for (0.10). Since M({W_Γ}) = 1, (0.10) gives Σ_ΓA_Γ = 0. Let M_s := M({e^{isX_Γ}W_Γ}) = e^{isY} + O(s²). The left BCH derivative gives log(e^{isZ}e^{iA}) = iA + isφ(ad_{iA})Z + O(s²). With Z = X_Γ − Y, (0.10) at first order in s reads Σ_Γψ_Γ(X_Γ − Y) = 0. So Y = (Σ_{Γ′}ψ_{Γ′})^{−1}Σ_Γψ_ΓX_Γ, which is the formula for ω_Γ.
 Bound. ad_{iA} is skew on 𝔤 with norm ≤ 2‖A‖_op ≤ 2√N|A|. On an eigenvalue iθ with |θ| ≤ 1, |φ(iθ) − 1| ≤ |θ|/2 + θ²/11 ≤ 0.6|θ|. The principal log obeys |A_Γ| ≤ (π/2)|W_Γ − 1|. So, for w ≤ 1/(4√N) (which gives 2√N|A_Γ| ≤ 1), ā := max_Γ‖ψ_Γ − 1‖ ≤ 0.6π√N w ≤ 1.9√N w ≤ ½.
 Write Σ_{Γ′}ψ_{Γ′} = n(1 + E), ‖E‖ ≤ ā. Then ω_Γ − n^{−1} = n^{−1}(1 + E)^{−1}(ψ_Γ − 1 − E), so ‖ω_Γ − n^{−1}‖ ≤ n^{−1}·2ā/(1 − ā) ≤ 4ā/n ≤ (8√N/n)w. (Numerical check, U(3), n = 2, 6, w ≤ 0.3: max ratio 0.54, WC_FULL_VERIFY §2.)
 (c) w is gauge invariant: under V ↦ V^u, V(Γ) ↦ u(y)V(Γ)u(x)^{−1}, and by (0.6) M̄ ↦ u(y)M̄u(x)^{−1}, so W_Γ ↦ u(y)W_Γu(y)^{−1}, and |·| is conjugation invariant. In a regular gauge on B(y) (0.3), |V(b) − 1| ≤ c(N)c_4Mα_0, so |V(Γ) − 1| ≤ ℓ_Γc(N)c_4Mα_0 =: r (telescoping with unitary factors).
 M̄ is near 1 by the Karcher-mean property of (0.10): for points in a closed geodesic ball of radius below the convexity radius, the Riemannian centre of mass lies in that ball (Karcher, CPAM 30 (1977), Thm 1.2; bi-invariant metric of G). The ball about 1 of geodesic radius (π/2)r contains every V(Γ), because geodesic distance to 1 is |log U| ≤ (π/2)|U − 1|. For Mα_0 small (after d, L, N) this radius is below the convexity radius. So |M̄ − 1| ≤ (π/2)r.
 Then w ≤ |V(Γ) − 1| + |M̄ − 1| ≤ (1 + π/2)r, i.e. w ≤ c_wMα_0 with c_w := (1 + π/2)(d(L−1)/2)c(N)c_4. By (b), ‖ω_Γ‖ ≤ (1 + 4ā)/n ≤ (1 + 7.6√N w)/n = κ/n, and κ ≤ √2 for w ≤ 0.054/√N. By Cauchy–Schwarz in Γ, |(𝒢B)(y, x)|² ≤ (Σ_Γ‖ω_Γ‖)(Σ_Γ‖ω_Γ‖|B_Γ|²) ≤ κ²·max_Γ|B_Γ|². Each t_{Γ,b} is ± orthogonal and Γ uses each bond once, so by Cauchy–Schwarz along Γ, |B_Γ|² ≤ ℓ_ΓΣ_{b∈Γ}|B(b)|² ≤ (d(L−1)/2)S_y(B).
 Sum over the < L^d points x: G_y ≤ κ²c_𝒢S_y ≤ 2c_𝒢S_y. The norm bound follows from (a).
 (d) Put u_s := e^{isλ}. By 0.5, e^{isD^Vλ(b)}V(b) = V^{u_s}(b) + O(s²), with V^u(b) = u(b_−)V(b)u(b_+)^{−1}. Telescoping along Γ gives V^{u}(Γ) = u(y)V(Γ)u(x)^{−1}. By (0.6), M({u(y)V(Γ)u(x)^{−1}}) = u(y)M̄u(x)^{−1}.
 So M({V_s(Γ)})M̄^{−1} = u_s(y)·M̄u_s(x)^{−1}M̄^{−1} + O(s²) = e^{is[λ(y) − Ad(M̄)λ(x)] + O(s²)}. By (1.3), (𝒢D^Vλ)(y, x) = λ(y) − Ad(M̄)λ(x). M̄ ∈ G, so Ad(M̄) is orthogonal, and for λ(y) = 0 the norm is |λ(x)|. ∎
 Remarks. (i) Part (d) is exact; no smallness enters (EXPGAUGE-VERIFY V2: this replaces the source's step with τ_G). (ii) For a flat V on B(y) all V(Γ) coincide, W_Γ = 1, and 𝒢 is the plain contour average (EXPGAUGE-VERIFY V2); numerically checked on a non-flat so(3) block to 5·10^{−16} (EXPGAUGE-VERIFY V5).
1.7 Scaling [P]. Before B′ → g_kB′ the gauge term is (1/g_k²)·½G^{(2)} + O(B′³); after it, ½G^{(2)}(B′) with coefficient c_G = 1, of the same order as the other terms of (2.11). G_3 is cubic and higher; it does not enter the covariance.
1.8 Remark (why a direct proof is needed) [P, EXPGAUGE-VERIFY V10(1)]. 𝒢*𝒢 does not vanish on the axial slice {B = 0 on the trees}. Example: U = 1, d = 2, L = 3, B = e on the bond ⟨y + e_1, y + e_1 + e_2⟩. This bond is not a tree bond, and it lies on one of the two contours from y to y + e_1 + e_2.
 So (𝒢B)(y, y + e_1 + e_2) = ½e ≠ 0. Hence the exponential-gauge covariance is not the axial covariance restricted to a subspace, and no transfer from the axial gauge applies. The proof below bounds A_exp directly.
1.9 Shared operators [R via (p254)]. G_1, (QG_1Q*)^{−1}, H_1, Δ_J, and Q̃ are defined in CMP 99 §§C–E before the axial restriction, and CMP 109 uses them with its new averages (p254).
 So Δ^full contains no gauge fixing, and its expansions (WG), (A1W) serve the exponential gauge. The only gauge-fixing-dependent objects are the lower bound of A_exp and its inverse.
## §2 Lemma E: the block inequality with the gauge term

2.1 Statement [P given (A3-4.2), A3-R3, Lemma G]. Put τ_p := 16√N c_4Mα_0. Assume Lemma G(c) applies (κ ≤ √2) and
 16d³L^dc_𝒢τ_p² ≤ 1. (H_E)
Also 2√N c_4Mα_0 ≤ 1, the condition of (E) used in step (c). (H_E) implies it: τ_p = 8·(2√N c_4Mα_0) and 16d³L^dc_𝒢 ≥ 1, so (2√N c_4Mα_0)² ≤ 1/64.
Then for every real regular V and every field B on the bonds of B(y),
 S_y(B) ≤ K_b(P_y(B) + G_y(B)), K_b := 8dL^d(1 + 16dc_𝒢) ≤ 64d³L^{2d+1}.
(H_E) is a smallness condition on Mα_0 after d, L, N. The source bound K_b ≤ 136d³L^{2d+1} (SOURCES_WC_EXPGAUGE 3.2) also holds; the smaller value comes from the exact step (d).
2.2 Proof, step (a): the split of B on one block into a gauge part and a transverse part. Let T(y) be the axial tree of B(y) with root y: for x ∈ B(y), Γ^ax_{y,x} goes from y to x first along e_d, then e_{d−1}, …, then e_1 (A3 §3.0, with root y).
 Each x ≠ y has a unique parent (the site before x on Γ^ax_{y,x}).
 So T(y) is a spanning tree with L^d − 1 bonds. Define λ on B(y) by λ(y) := 0 and, along each tree bond b with ends z (the parent) and z′ (the child):
 if b_− = z, b_+ = z′: λ(z′) := Ad(V(b))^{−1}(B(b) + λ(z));
 if b_− = z′, b_+ = z: λ(z′) := Ad(V(b))λ(z) − B(b).
The recursion runs from the root outward, so λ is well defined and unique. Put B_ax := B + D^Vλ. In the first case (D^Vλ)(b) = λ(z) − Ad(V(b))λ(z′) = −B(b). In the second case (D^Vλ)(b) = λ(z′) − Ad(V(b))λ(z) = −B(b).
 So B_ax = 0 on T(y). Also λ(y) = 0, so the gauge part D^Vλ lies in the tangent space of the residual group N of 1.3. We call B_ax the transverse part. Put Λ_y := Σ_{x∈B(y)}|λ(x)|².
2.3 Step (b): the axial block inequality. B_ax vanishes on T(y). By (A3-4.2) with root y,
 S_y(B_ax) ≤ dL^dP_y(B_ax). (2.1)
2.4 Step (c): the covariant curl of a gauge direction. Claim: for every plaquette p ⊂ B(y) with base corner p_0,
 (∂^VD^Vλ)(p) = (1 − Ad(V(∂p)))λ(p_0). (2.2)
Proof. By 0.5, e^{isD^Vλ}V = V^{u_s} + O(s²), u_s = e^{isλ}. Telescoping around ∂p from p_0 gives V^{u}(∂p) = u(p_0)V(∂p)u(p_0)^{−1}. So, by the definition 0.4 of the curl, e^{is(∂^VD^Vλ)(p)}V(∂p) = (1 + isλ(p_0))V(∂p)(1 − isλ(p_0)) + O(s²) = (1 + is[λ(p_0) − Ad(V(∂p))λ(p_0)])V(∂p) + O(s²).
 Compare first-order terms. ∎ (Checked numerically to 8·10^{−16} on a non-flat so(3) block, EXPGAUGE-VERIFY V5. The literal formula (3.4) of CMP 99 is not covariant and is not used, EXPGAUGE-VERIFY V3.)
 Bound. ‖Ad(V(∂p)) − 1‖ is invariant under V ↦ V^u, because V(∂p) ↦ u(p_0)V(∂p)u(p_0)^{−1} and Ad of it is conjugated by the orthogonal Ad(u(p_0)). In a regular gauge on B(y), V(∂p) is a product of four factors e^{±iA_1(b)} with |A_1(b)| ≤ c_4Mα_0 (A3-R3).
 The elementary fact (E) of A3 §2.1 with the √N of A3_VERIFY item 6 reads ‖Ad(e^{iY}) − 1‖ ≤ e^{2√N|Y|} − 1 ≤ 4√N|Y| for 2√N|Y| ≤ 1, because ‖ad_Y‖ ≤ 2‖Y‖_op ≤ 2√N|Y| when tr 1 = 1. Telescoping over the four orthogonal factors gives ‖Ad(V(∂p)) − 1‖ ≤ 4·4√N c_4Mα_0 = τ_p.
 By linearity of the curl, (∂^VB_ax)(p) = (∂^VB)(p) + (∂^VD^Vλ)(p). So |(∂^VB_ax)(p)| ≤ |(∂^VB)(p)| + τ_p|λ(p_0)|, and |(∂^VB_ax)(p)|² ≤ 2|(∂^VB)(p)|² + 2τ_p²|λ(p_0)|². Each site is the base corner of at most d(d−1)/2 ≤ d² plaquettes of B(y). Summing over p ⊂ B(y):
 P_y(B_ax) ≤ 2P_y(B) + 2d²τ_p²Λ_y. (2.3)
2.5 Step (d): 𝒢 controls λ. By linearity, 𝒢B = 𝒢B_ax − 𝒢D^Vλ. By Lemma G(d) with λ(y) = 0, |(𝒢D^Vλ)(y, x)| = |λ(x)| for x ≠ y. So |λ(x)| ≤ |(𝒢B)(y, x)| + |(𝒢B_ax)(y, x)|, and |λ(x)|² ≤ 2|(𝒢B)(y, x)|² + 2|(𝒢B_ax)(y, x)|². Sum over x ∈ B(y)∖{y} (λ(y) = 0) and use Lemma G(c) for B_ax:
 Λ_y ≤ 2G_y(B) + 2G_y(B_ax) ≤ 2G_y(B) + 4c_𝒢S_y(B_ax). (2.4)
This step is exact by (0.6); no smallness is used (EXPGAUGE-VERIFY V2).
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
2.9 Remarks [P]. (i) Lemma E is block-local: it involves only bonds and plaquettes of B(y). It needs no Dirichlet condition and no Q̃-constraint. (ii) The tree T(y) and the split B = B_ax − D^Vλ are a device inside the proof. The exponential-gauge field B is not constrained.
 (iii) The root of T(y) must be the root y of 𝒢 (the block centre), because step (d) needs λ(y) = 0 at the point where every contour of G(y, x) starts. (A3-4.2) holds for this root (0.9).
 (iv) Without the gauge term the inequality fails: at V = 1, B = Dλ with λ(y) = 0 and λ ≠ 0 has P_y = 0 (the curl of a gradient vanishes) and S_y > 0 (on the connected block, Dλ = 0 forces λ constant, hence λ = 0).
 These are exact zero modes; the numerics of §7 show min(P | Q̃ = 0) = 0 to 10^{−14}.
## §3 Theorem L: the global lower bound

3.1 Lemma P_exp [P given Lemma E, (A3-4.4)]. Assume (H_E) and the inputs of (A3-4.3). For every unit field B with B = 0 off Λ and Q̃B = 0,
 P^U(B) + G(B) ≥ γ_e(1 − η_6)‖B‖², γ_e^{−1} := K_b(1 + 6d/m_L) + 6/m_L, G := Σ_yG_y = ‖𝒢B‖².
Proof. (1) Block bonds. Plaquettes inside distinct blocks are distinct, so Σ_yP_y ≤ P^U. Sum Lemma E over the blocks: S_b = Σ_yS_y ≤ K_bΣ_y(P_y + G_y) ≤ K_b(P^U + G).
(2) Corridor bonds. Q̃B = 0 is the hypothesis of (A3-4.3), so (A3-4.4) applies: S_c ≤ (3/m_L)(2P^U + 2dS_b) + η_6‖B‖². (A3-4.3) uses neither the trees nor any condition inside the blocks (0.9). So it is unchanged in the exponential gauge.
(3) Assembly. ‖B‖² = S_b + S_c ≤ (1 + 6d/m_L)S_b + (6/m_L)P^U + η_6‖B‖² ≤ [K_b(1 + 6d/m_L) + 6/m_L](P^U + G) + η_6‖B‖². The first step inserts (2); the second inserts (1) and uses G ≥ 0. Rearranging gives the claim. ∎ (Assembly recomputed in EXPGAUGE-VERIFY V4.)
3.2 Theorem L [P given (A3-6.1), (A3-R4), Lemma P_exp]. Assume (H1)–(H3), with α_* so small that (H_E) holds, Lemma G(c) applies, and
 η_6 ≤ ¼, ε_7 ≤ ⅛, ε_7a + c_J ≤ γ_e/12. (3.1)
This is possible because η_6, ε_7, c_J are c(d, L, N)(Mα_0 + (Mα_0)²) by their definitions (A3 §4.1, §6.1, §6.4). Then for all B̃ ∈ V_red with B̃ = 0 off Λ,
 ⟨B̃, A_expB̃⟩ ≥ γ_exp‖B̃‖², γ_exp := ½c̄γ_e = ¼γ_e, c̄ := min(½, c_G) = ½.
Proof. Put B := CB̃. By 0.6, Q̃B = 0, and B = 0 off Λ (A3 §6.5 [V CMP 99 p. 428], with Q̃ = Q_1(U_1), item I3). By (1.1),
 ⟨B̃, A_expB̃⟩ = ⟨B, Δ^{(k)}B⟩ = E(B) − ⟨B, Δ_JB⟩ + G(B).
By (A3-6.1), E(B) ≥ (1 + ε_7)^{−1}[½P^U − ε_7a‖B‖²] ≥ (1 + ε_7)^{−1}·½P^U − ε_7a‖B‖². By (A3-R4), −⟨B, Δ_JB⟩ ≥ −c_J‖B‖². Since G ≥ 0 and (1 + ε_7)^{−1} ≤ 1, G ≥ (1 + ε_7)^{−1}c̄G. Also ½P^U ≥ c̄P^U. So
 ⟨B̃, A_expB̃⟩ ≥ (1 + ε_7)^{−1}c̄(P^U + G) − (ε_7a + c_J)‖B‖² ≥ [(1 + ε_7)^{−1}c̄γ_e(1 − η_6) − (ε_7a + c_J)]‖B‖²,
by Lemma P_exp. By (3.1), (1 + ε_7)^{−1} ≥ 8/9 and 1 − η_6 ≥ ¾, so the bracket is ≥ (8/9)(3/4)·½γ_e − γ_e/12 = γ_e/3 − γ_e/12 = ¼γ_e = γ_exp. Finally ‖CB̃‖² ≥ ‖B̃‖², because C is the identity on the kept bonds and only adds the values on the bonds b_0(c) (A3 §6.5). ∎ (Arithmetic recomputed in EXPGAUGE-VERIFY V1, V4.)
3.3 Compression to Z_0 [P]. Let Λ = Z_0 in Theorem L. The form ⟨B̃, A_ZB̃⟩ on V_red(Z_0) equals ⟨B̃, A_expB̃⟩ for B̃ = 0 off Z_0, because 1_{Z_0}B̃ = B̃. So Theorem L gives A_Z ≥ γ_exp on V_red(Z_0). This is Theorem WC(i). Three checks:
 (a) Compression cannot lower a form bound: the infimum of the quadratic form over a subspace is at least its infimum over the larger space.
 (b) The proof never uses gauge invariance of A_exp. The gauge term enters only through Lemma E, which is block-local. Z_0 is a union of M-cubes, and M is a power of L, so Z_0 is a union of whole L-blocks.
 A block outside Z_0 carries B = 0 there, hence S_y = P_y = G_y = 0, and Lemma E holds trivially. So the concern "Dirichlet data break gauge invariance at ∂Z_0" does not apply.
 (c) Corridors that cross ∂Z_0 are handled by (A3-4.3) exactly as in the axial case: (A3-4.3) holds for every B with Q̃B = 0, and B = 0 on the outer block is one such case.
 Inherited: dist(Z_0, Λ_k^c) > RM (A3 §0.1; item I6).
3.4 Uniformity [P]. γ_exp = ¼γ_e depends on d, L (through K_b, m_L) only. The smallness (3.1), (H_E) depends on d, L, N, a. Nothing depends on k, η, Z_0, M ≥ M_99, or the background beyond (H1)–(H3), as in A3 §6.6.
3.5 Remark (value). For 2 ≤ L ≤ 9, m_L = 1/L, so γ_e^{−1} = K_b(1 + 6dL) + 6L ≤ 64d³L^{2d+1}(1 + 6dL) + 6L. The block constant 1/K_b is of order 10^{−5}–10^{−7} for d = 2–3, L = 3 (§7.3), and γ_exp is smaller. §7 shows that the true constant at U = 1 is of order 10^{−1}.
 The proof constants are crude, not sharp.
## §4 The walk (tree) expansion of A_exp

4.0 Inputs. All are free of gauge fixing (1.9).
 (W_G1) Theorem WG-G1 of WG_FULL: G_1 = Σ_τT_τ with (L1) kernel support in the domains, (L2) U-dependence on ∪X̃_i^5, and |T_τ(b, b′)| ≤ B_1ρ_*^{|τ|}m(b, b′)e^{−δ_1d(τ, b, b′)} [P given the printed sketches, R].
 (A1-W) Theorem A1-W of A1_WALK_FULL for P = G_1: (QG_1Q*)^{−1} = Σ_τT′_τ with (L1)–(L2), rate δ_W, step ρ_W ≤ K_W/M_1 [C on (C) for G_1].
 (I9) J is local and |J| = O(Mα_0) (CMP 99 (3.36); WG §2.0; ledger I9).
 (Conc) Concatenation Lemma WG 2.3: an ordered product of blocks Φ_1···Φ_N with bounds b_kρ^{|ω_k|}m e^{−δd(ω_k)} vanishes unless consecutive domain lists meet; it depends on U only on ∪X̃^5 of its domains; and |T(y, y′)| ≤ (Π_kb_k)c_1(θδ)^{N−1}ρ^{Σ|ω_k|}m(y, y′)e^{−(1−θ)δd(ω, y, y′)} for any θ ∈ (0, 1).
 Its proof splits the exponent with weights (1 − θ), θ and sums the junction points with c_1(θδ) [P].
4.1 The pieces of A_exp = C*[(QG_1Q*)^{−1} − a − Δ_J + 𝒢*𝒢]C.
 (a) C = I − hLQ̃. Its kernel vanishes beyond unit distance 2L. It depends on U only on the two blocks of a corridor and the corridor (Q̃ is block-local, item I3). It is one local factor whose domain is one M_1-cube neighbourhood (L ≪ M_1).
 (b) 𝒢*𝒢 and a·I. By Lemma G(a), 𝒢*𝒢 is block-diagonal with kernel bound ≤ 2c_𝒢 (Lemma G(c)). a·I is diagonal. Each is one local factor (|ω| = 0).
 (c) (QG_1Q*)^{−1}: the (A1-W) tree sum.
 (d) Δ_J. By 0.6, ⟨B, Δ_JB⟩ = 2⟨hC̃^{(2)}(B), H_1*J⟩. C̃^{(2)} is quadratic and local with range ≤ L (the second-order part of the one-step average; item I2). So Δ_J(b, b′) = Σ_{b_0}K_{b_0}(b, b′)(H_1*J)(b_0), where K_{b_0} vanishes unless b, b′ lie within 2L of b_0.
 The branch H_1*J = (QG_1Q*)^{−1}QG_1J is a product of tree-expanded blocks and the local J. By (Conc), Δ_J = Σ_ωΔ_{J,ω}: each term has its kernel in the root domain near b_0, a dangling branch ω that ends at one J-insertion, U-dependence on all domains of ω, and one factor O(Mα_0) from J.
 This is the CMP 99 p. 427 tree shape with two of its three chains trivial (EXPGAUGE-VERIFY V8: "three chains … meet in a localization domain determined by C^{(2)}(A) … estimates are the same as in (3.108)" [V text]).
4.2 Proposition W_N (tree expansion of A_exp at real U) [P given 4.0]. Fix θ ∈ (0, 1). At real regular U, A_exp = Σ_ωA_ω, a tree expansion with (L1)–(L2), and
 |A_ω(b, b′)| ≤ B_Aρ_A^{|ω|}e^{−δ_Ad(ω, b, b′)}, δ_A := (1 − θ)min{δ_W, δ_1}, ρ_A := max{ρ_W, ρ_*, c(d, L)M_1^{−1}},
with B_A = B_A(d, L, a, a_0). Moreover Σ_ω|A_ω(b, b′)| ≤ 2B_Ae^{−δ_A|b − b′|} if C′_𝒟c_1ρ_A ≤ ½.
Proof. Expand the bracket of 4.1 into its four pieces and multiply by C* on the left and C on the right. The main line of each term is C*·(piece)·C, so it has two junctions with the outer factors. In pieces (a), (b) the middle block is local (|ω| = 0).
 In piece (c) it is one (A1-W) tree. In piece (d) it is the local vertex K_{b_0}; the vertex carries one dangling branch H_1*J, which is itself a product of tree-expanded blocks ending at J.
 The branch is bounded by the branch bound of WG §3.4: its sum over the end point gives one factor c_1(θδ)·O(Mα_0), and its path enters the tree length.
 (Conc), in its tree form (WG §3.5), applies to every term: (L1)–(L2) hold for the concatenated domain list, and the bound is the product of the block constants times one c_1(θδ) per junction, with the slowest rate min{δ_W, δ_1} reduced by (1 − θ). Local blocks add no step factor.
 B_A is the sum over the four pieces of these products; it depends on d, L, a, a_0 only. Summation: given a domain, the next domain is chosen from at most C′_𝒟 options (C′_𝒟 is the tree branching constant of WG_FULL §4.4 and its tree form, a fixed multiple of the domain count C_𝒟 of A1_WALK_FULL (B2); WG_FULL gives C′_𝒟 = 97C_𝒟 for G-walks, so C_𝒟 ≤ C′_𝒟), and a tree is coded by its depth-first domain sequence (WG §3.6; A1_WALK_FULL §6.3(a)).
 So Σ_ω ≤ B_Ae^{−δ_A|b−b′|}Σ_n(C′_𝒟c_1ρ_A)^n ≤ 2B_Ae^{−δ_A|b−b′|}. Here d(ω, b, b′) ≥ |b − b′| because the path through all domains joins b to b′. ∎ (Tree shape of Δ_J checked against CMP 99 (3.134)–(3.138) in EXPGAUGE-VERIFY V8.)
4.3 Upper bound [P]. By Schur's test with the absolute sum of 4.2, ‖A_exp‖ ≤ 2B_AS(δ_A) =: Γ_1, where S(δ) := sup_bΣ_{b′}e^{−δ|b−b′|} is finite and volume-independent.
4.4 Compression [P]. A_Z = 1_{Z_0}A_exp1_{Z_0} = Σ_ω1_{Z_0}A_ω1_{Z_0}. Each term keeps its domains, its U-dependence, and its bound, because multiplication by 1_{Z_0} only restricts the kernel. So Proposition W_N holds for A_Z with the same constants, uniformly in Z_0.
4.5 Corollary [P]. The real decay of A for the exponential gauge, ‖e^{ρf}A_expe^{−ρf}‖ ≤ 2B_AS(δ_A − ρ) for 1-Lipschitz f and ρ < δ_A, follows from 4.2 alone. It needs no input from the axial gauge.
## §5 The Z_0-compressed walk expansion in the CMP 116 p. 13 form

5.1 The tilde operation [V + P; SOURCES_WC_RESIDUE §3–§4, Q2–Q4]. CMP 116 p. 13 [V image] reads: "we take a domain X_0 such, that X̃_0^5 = Z̃_0 (let us notice the inconsistency in the notation, the tilde over X_0 means that M_1-cubes are adjoined, and the tilde over Z_0 concerns M-cubes).
 Other localization domains X are chosen as in Sect. C [13], i.e. they are unions of small, connected families of M_1-cubes, and we assume that dist(X, Z_0) > ⅔M." Here [13] = CMP 99 (CMP 109 reference list). CMP 116 does not define the tilde. CMP 99 fixes it:
 (a) p. 411 [V image]: Balaban replaces "the cube □ by □̃²" in a partition into cubes, so □̃² is a cube.
 (b) p. 413 [V image]: "operators localized in □_0, which is a sum of 5^d cubes from 𝒟". Under the ℓ^∞ reading, □̃² is the (2·2 + 1)^d = 5^d cube block. Under face-adjacent adjoining it is an ℓ^1 ball with 13, 25, 41 cubes for d = 2, 3, 4, never 5^d for d ≥ 2.
 (c) CMP 119 p. 245 [V image]: "adding one layer of … cubes touching □", the same convention in a later paper.
 So the tilde adjoins every cube of the family whose closure meets the closure of the set (the ℓ^∞ layer). Caveat: CMP 116 does not restate this; the transfer is by series usage.
 Independent consistency check [P, RESIDUE 4.5 and Q4]. Under face-adjacent adjoining, the equation X̃_0^5 = Z̃_0 has no solution when Z̃_0 has a convex corner, and Z̃_0^c touches Z_0 at a corner vertex. So p. 13 would contradict itself. Under the ℓ^∞ reading it is solvable (5.3).
5.2 Cover, local operators, local inverses [P given 3.3, 4.4; A1_WALK_FULL §4]. One scale is used: the reduced bonds of Z_0, unit metric, no multiscale rescaling (m ≡ 1, μ ≡ 1).
 (a) Cover. Cubes □ of side K_1M_1 meeting Z_0, cores □° with dist(□°, □^c) ≥ M_1, tent functions φ_□ on □°, and h_□ := φ_□/(Σ_{□′}φ_{□′}²)^{1/2} restricted to Z_0. Then Σ_□h_□² = 1 on Z_0, 0 ≤ h_□ ≤ 1, supp h_□ ⊂ □°, and |h_□(b) − h_□(b′)| ≤ (c_h/M_1)|b − b′|.
 On one scale this Lipschitz bound is elementary (the multiscale issue O2 of A1_WALK_FULL does not arise). □⁺ := {b : d(b, □) ≤ K_0M_1}, K_0 := 2c_X + 2, c_XM_1 ≥ the diameter of every X̃^5 in Proposition W_N.
 (b) Local operator. A^{(□)} := Σ{A_ω : X̃_i^5 ⊂ □⁺ for all domains of ω} (truncated tree sum of 4.2). A_□ := 1_{□∩Z_0}A^{(□)}1_{□∩Z_0}. It depends on U only on □⁺.
 (c) Truncation error. For b, b′ ∈ □ a dropped term has a domain at distance ≥ (K_0 − c_X)M_1 ≥ 2M_1 from □, so its path goes out and back and d(ω, b, b′) ≥ 4M_1. Splitting the exponential in halves, |1_□(A_Z − A_Z^{(□)})1_□(b, b′)| ≤ 2B_Ae^{−2δ_AM_1}e^{−½δ_A|b−b′|} (A1_WALK_FULL 4.2(iii)).
 (d) Local positivity. For u supported in □ ∩ Z_0, Re⟨u, A_□u⟩ = ⟨u, A_Zu⟩ − Re⟨u, 1_□(A_Z − A^{(□)})1_□u⟩ ≥ (γ_exp − 2B_AS(½δ_A)e^{−2δ_AM_1})‖u‖² ≥ ½γ_exp‖u‖² for M_1 ≥ (2δ_A)^{−1}log(4B_AS(½δ_A)/γ_exp).
 The first term uses 3.3 (A_Z ≥ γ_exp); the second uses Schur on (c). Cubes that straddle ∂Z_0 need nothing new: restriction to □ ∩ Z_0 is one more compression (EXPGAUGE-VERIFY V6: A1_WALK open point O3 is closed on the real side).
 (e) Lemma CT (accretive Combes–Thomas) [P, A1_WALK_FULL 4.3; Lean `combes_thomas`, `combes_thomas_schur` in lean/YmLean/CombesThomas.lean]. Let N be a finite matrix with Re⟨v, Nv⟩ ≥ c‖v‖² and ‖e^{εf}Ne^{−εf} − N‖ ≤ c/2 for every 1-Lipschitz f.
 Then N is invertible, ‖e^{εf}N^{−1}e^{−εf}‖ ≤ 2/c, and |N^{−1}(x, y)| ≤ (2/c)e^{−εd(x, y)}.
 Proof: Re⟨v, e^{εf}Ne^{−εf}v⟩ ≥ (c − c/2)‖v‖², so ‖e^{εf}Ne^{−εf}v‖ ≥ (c/2)‖v‖; take f = d(·, y). No symmetry is used. Apply it with N = A_□, c = ½γ_exp, kernel bound 2B_Ae^{−δ_Ad}: since |e^x − 1| ≤ |x|e^{|x|}, the kernel of e^{εf}Ne^{−εf} − N is ≤ 2B_Aεd e^{−(δ_A−ε)d} ≤ 2B_Aε(1 + d)e^{−½δ_Ad} for ε ≤ ½δ_A. Its Schur sum is ≤ 2B_AεΣ(½δ_A), with Σ(δ′) := sup_bΣ_{b′}(1 + |b − b′|)e^{−δ′|b−b′|} ≤ (1 + 2/(eδ′))S(½δ′) (A1_WALK_FULL §0), so Σ(½δ_A) ≤ (1 + 4/(eδ_A))S(¼δ_A). This is ≤ γ_exp/4 if
 ε := min{½δ_A, γ_exp/(8B_AΣ(½δ_A))}.
 So C_□ := A_□^{−1} on □ ∩ Z_0 obeys ‖C_□‖_ε ≤ 4/γ_exp, and depends on U only on □⁺.
5.3 Parametrix and walk series [P; A1_WALK_FULL 5.1–5.5 and 6.2, with 1_□ → 1_{□∩Z_0}, I → I_{Z_0}]. Put P := Σ_□h_□C_□h_□. Since A_□C_□ = 1_{□∩Z_0} and h_□1_{□∩Z_0} = h_□,
 A_Zh_□C_□h_□ = (1 − 1_□)A_Zh_□C_□h_□ + 1_□(A_Z − A^{(□)})1_□h_□C_□h_□ + h_□² + [A_□, h_□]C_□h_□.
Summing with Σh_□² = I_{Z_0}: A_ZP = I_{Z_0} + Σ_□F_□, F_□ := (E^sep_□ + E^tr_□ + E^com_□)C_□h_□. No boundary term at ∂Z_0 appears, because A_Z = 1_{Z_0}A_exp1_{Z_0} already (EXPGAUGE-VERIFY V6).
 The bounds of A1_WALK_FULL 5.2 give ‖F_□‖_ε ≤ K_F/M_1: E^com from the Lipschitz bound of h_□, E^sep from dist(supp h_□, □^c) ≥ M_1, E^tr from (c).
 The separation and truncation terms contain A_Z; expand it by 4.4 and keep each tree as one block with its whole-term bound (A1_WALK_FULL 6.2). Then
 C^{(k)}(Z_0) = PΣ_{n≥0}(−ΣF_□)^n = Σ_ωT_ω, |T_ω(b, b′)| ≤ (4/γ_exp)(c_1ρ)^{|ω|}e^{−½εd(ω, b, b′)}, ρ := max{K_F/M_1, c_1ρ_A},
 absolutely convergent when C_𝒟c_1ρ ≤ ¼. We impose the stronger C′_𝒟c_1ρ ≤ ¼ (it implies the former, since C_𝒟 ≤ C′_𝒟, 4.2), i.e. M_1 ≥ M_W with M_W enlarged by the factor C′_𝒟/C_𝒟, and Mα_0 small for the ρ_* part of ρ_A; Σ_ω|T_ω(b, b′)| ≤ (8/γ_exp)e^{−½ε|b−b′|}. The ½ε comes from splitting e^{−εd} into a path part and a part that pays the junction sums (A1_WALK_FULL 5.5).
 Domains are the □⁺ of cubes meeting Z_0 and the domains of the A-trees (which may leave Z_0).
 T_ω depends on U only on ∪X̃_i^5. The series is the inverse: multiply term by term by A_Z and use A_ZP = I + ΣF_□. This is Theorem WC(ii) before regrouping.
5.4 Regrouping into the CMP 116 p. 13 form [P given 5.1]. Write d_∞ for the ℓ^∞ distance and q := M/M_1 (M, M_1 powers of L). Euclidean distance ≥ d_∞, so lower bounds in d_∞ give the p. 13 bounds.
 (a) Z̃_0 ⊇ N_M(Z_0) := {x : d_∞(x, Z_0) ≤ M}. Proof: let z ∈ Z_0 be nearest to x. The grid M-cube containing x has index within 1 of the cube containing z in each coordinate, so its closure meets Z_0; by 5.1 it lies in Z̃_0. Hence every M-cube outside Z̃_0 is at d_∞ ≥ M from Z_0.
 (b) Existence of X_0 (q > 10). Let X_0 be the union of the M_1-cubes whose 11^d block (the cube and its five ℓ^∞ layers) lies in Z̃_0. By definition X̃_0^5 ⊂ Z̃_0. Conversely, in each M-cube of Z̃_0 index the M_1-cubes by 0, …, q − 1 per coordinate.
 The cubes with all indices in [5, q − 6] lie in X_0, because their 11^d blocks stay in that M-cube. If q ≥ 11 this range is non-empty, and every index in [0, q − 1] is within 5 of it.
 So every M_1-cube of Z̃_0 lies in X̃_0^5, and X̃_0^5 = Z̃_0. (Checked numerically on an L-shaped Z_0 with convex and concave corners, numerics/wc_residue_geom.py, RESIDUE Q4.)
 (c) d_∞(x, Z_0) ≥ M − 5M_1 for x ∉ X_0. Proof: x lies in an M_1-cube whose 11^d block meets an M_1-cube Δ′ outside Z̃_0. Then d_∞(x, Δ′) ≤ 5M_1, and Δ′ lies in an M-cube outside Z̃_0, which is at d_∞ ≥ M from Z_0 by (a).
 (d) Near/far split with the p. 3 margin. Call a domain X near if X ⊂ X_0 and d_∞(X, X_0^c) ≥ M_1; otherwise far. A far X contains a point x with d_∞(x, X_0^c) < M_1 (either x ∉ X_0, or the distance is attained below M_1). By (c), d_∞(x, Z_0) > M − 6M_1.
 X has ℓ^∞ diameter ≤ c_XM_1, so d_∞(X, Z_0) > M − (6 + c_X)M_1 ≥ ⅔M, provided q ≥ 3(6 + c_X). We impose the strict q > 3(6 + c_X) as in RESIDUE Q4, which leaves a margin. CMP 116 p. 3 [V image] asks that each factor kernel vanish "in a sufficiently thick neighborhood of ∂X_j, e.g. … width ⅓M_1".
 A near domain is at d_∞ ≥ M_1 from X_0^c, and its kernel lies in it by (L1); so the merged factor (e) has kernel vanishing within M_1 ≥ ⅓M_1 of ∂X_0 (EXPGAUGE-VERIFY V7 correction). For every factor other than X_0, the ⅓M_1 band is part of (L1): the (L1) used in this file is that of A1_WALK_FULL §1 (kernel supported in X° × X°, X° := {x ∈ X : d(x, X^c) > ⅓M_1}), which includes the CMP 116 p. 3 band. The A1-W factors satisfy it (A1_WALK_FULL 2.1, 3.4), and the G_1-tree factors of WG_FULL satisfy it on their enlarged domains X⁺ (WG_FULL 0.4 "Band by enlargement", 0.7; one M_1-layer, so c_X here is taken ≥ the WG value c_X + 2).
 (e) Merging. In each walk ω of 5.3, merge every maximal run of consecutive near domains into one factor with domain X_0, and sum over all walks that give the same merged sequence ω̄. Every near X obeys X̃^5 ⊂ X̃_0^5 = Z̃_0 (dilation is monotone), so the merged factor depends on U only on Z̃_0.
 Bound: every near domain lies in X_0, so a path through all domains of ω visits every domain of ω̄; hence d(ω, b, b′) ≥ d(ω̄, b, b′). Replace e^{−½εd(ω)} by e^{−½εd(ω̄)}. A run of n near domains between two fixed far domains is chosen in at most (C′_𝒟)^n ways and carries (c_1ρ)^n, so the sum over runs is ≤ Σ_n(C′_𝒟c_1ρ)^n ≤ 2, because C′_𝒟c_1ρ ≤ ¼ ≤ ½ (5.3). The merged sequence ω̄ may contain X_0 more than once (one entry per run); the p. 13 form allows this.
 A walk with m far domains has at most m + 1 runs. So
 |T̄_ω̄(b, b′)| ≤ (8/γ_exp)(2c_1ρ)^me^{−½εd(ω̄, b, b′)}, m = number of far domains,
 i.e. each far domain keeps a step factor 2c_1ρ (EXPGAUGE-VERIFY V7: the merged factor costs O(1) per run, not per walk). This is the structure that the s-rule of CMP 116 pp. 3, 13 and SOURCES_A2_R2 §3 consume: one domain X_0 with X̃_0^5 = Z̃_0, all other domains at distance > ⅔M from Z_0, (L1)–(L2), and the (3.108) form.
 (f) Conditions. q > 10 and q > 3(6 + c_X). M is chosen after M_1, so both are admissible. Neither is the σ_k condition R_1M_1 ≤ M of p. 3, which concerns the s-cube size. No corner loss occurs: at a convex corner of Z_0 the diagonal M-cube touches Z_0 and lies in Z̃_0 by 5.1 (RESIDUE 4.4).
5.5 Resolvent bonus [P]. CMP 116 p. 13 also needs (x + C*Δ^{(k)}C)^{−1}, x ≥ 0, to expand (C^{(k)})^{1/2}. Replace A_Z by A_Z + x·I_{Z_0}. Then (i) the lower bound becomes γ_exp + x; (ii) x·I commutes with e^{εf}, so it adds nothing to the Combes–Thomas error of 5.2(e), and ‖C_□‖_ε ≤ 4/(γ_exp + x) ≤ 4/γ_exp; (iii) in 5.3, (1 − 1_□)x h_□ = 0, x cancels in A_Z − A^{(□)}, and [x, h_□] = 0, so the factors E^sep_□, E^tr_□, E^com_□ are unchanged. F_□ = (E^sep + E^tr + E^com)C_□(x)h_□ does change through C_□(x), but the bound on F_□ is uniform in x ≥ 0: ‖F_□‖_ε ≤ K_F/M_1, because ‖C_□(x)‖_ε ≤ 4/γ_exp.
 (iv) Per-walk prefactor. Every walk term of 5.3 has the form h_□C_□(x)h_□·(product of F-factors), with the leading factor from P. By (ii), the leading factor gives 4/(γ_exp + x); the F-factors keep their x-uniform bounds. So |T_ω(x; b, b′)| ≤ (4/(γ_exp + x))(c_1ρ)^{|ω|}e^{−½εd(ω, b, b′)}. The walk set and the domains do not depend on x.
 Hence 5.2–5.4 hold for (x + A_Z)^{−1} uniformly in x ≥ 0, with the prefactor 4/(γ_exp + x). Since π^{−1}∫_0^∞x^{−1/2}(γ_exp + x)^{−1}dx = γ_exp^{−1/2}, the representation (C^{(k)})^{1/2} = π^{−1}∫_0^∞x^{−1/2}(x + A_Z)^{−1}dx of CMP 116 p. 13 converges walk by walk (Tonelli), with per-walk prefactor 4γ_exp^{−1/2}. This is Theorem WC(iv) at real U. (Balaban does this step through CMP 99 (3.185) with axial machinery; the direct route is valid and simpler, EXPGAUGE-VERIFY V7.)
## §6 Complex points: Lemma CP, Lemma AW, and the four-level chain

6.0 Domains and discs [V CMP 99 pp. 396–397 (3.37)–(3.38); CMP 116 p. 15; CMP 109 (1.13)–(1.14)]. For a pair a = (a_0, a_1) let 𝒰(a) be the set of (U′U, J) with U G-valued and regular, U′ = e^{iL^{−1}ηA′}, A′ ∈ 𝔤^c with |A′|, |∇A′| (and |D*DA′| where (3.38) is used) < a_1 in the scaled units of (3.37), the plaquette of U′U bounded as in CMP 109 (1.13)–(1.14), and J 𝔤^c-valued with |J| < a_0.
 The real point of U_c = (U′U, J) is U_c^0 := (U, 0). The disc through U_c is U(t) := (e^{itL^{−1}ηA′}U, tJ), t ∈ ℂ, with U(0) = U_c^0 and U(1) = U_c.
 Radius [P; RESIDUE 7.0, Q7]. If U_c ∈ 𝒰(a) and b ≥ a componentwise, then U(t) ∈ 𝒰(b) for |t| < t(a, b) := c_P·min{b_0/(a_0 + a_1), b_1/a_1}, c_P = c_P(d) > 0. Reason: the A′- and J-constraints are linear in t.
 Along the disc the plaquette of U(t) is O(ξ²(α_0 + |t|a_1 + |t|²a_1²)), the α_0 term from the real background; for |t| ≥ 1, α_0 + |t|a_1 ≤ |t|(a_0 + a_1), and the |t|²a_1² term is absorbed for small a_1.
 This is a sufficient condition. At the level of Theorem 3.4 only A′ is constrained, so there the radius is b_1/a_1.
 Conventions. At complex points "*" denotes the analytic continuation of the real adjoint (the bilinear transpose). So A_exp(U_c) is complex symmetric, not Hermitian. ⟨·,·⟩ is sesquilinear. Operator norms are ℓ² norms, bounded by Schur's test from kernel bounds, uniformly in volume.
 J-dependence [P from CMP 99 (3.136)–(3.137)]. G and (QGQ*)^{−1} do not depend on J. G_1 depends on J only through Δ^{(2)}, which is linear in H*J, of size O(1)M|J|. So complex J enters every bound only through |J|, and t ↦ tJ is analytic.
6.1 Lemma CP (Cauchy perturbation to accretivity) [P; RESIDUE 6.1 with the hypothesis corrected in Q6]. Let F be an operator family, analytic on 𝒰(b), with ‖F‖ ≤ Γ there. Assume Re⟨u, F(U_c^0)u⟩ ≥ c‖u‖² for all complex u and all real points.
 Let t := t(a, b) ≥ 1 + 2Γ/c. Then for every U_c ∈ 𝒰(a) and every complex u, Re⟨u, F(U_c)u⟩ ≥ ½c‖u‖².
 Proof. f(s) := F(U(s)) is analytic on |s| < t with ‖f‖ ≤ Γ, since U(s) ∈ 𝒰(b) there (6.0). Cauchy's estimate on the disc of radius t − |s| about s gives ‖f′(s)‖ ≤ Γ/(t − |s|). Integrate on [0, 1]: ‖f(1) − f(0)‖ ≤ ∫_0^1Γ/(t − s)ds = Γlog(t/(t − 1)) ≤ Γ/(t − 1) ≤ ½c, using log(1 + x) ≤ x with x = 1/(t − 1).
 Hence Re⟨u, f(1)u⟩ ≥ Re⟨u, f(0)u⟩ − ‖f(1) − f(0)‖‖u‖² ≥ ½c‖u‖². ∎
 Remark. For a real matrix F_0, Re⟨u, F_0u⟩ ≥ c‖u‖² for complex u = a + ib follows from the real-vector bound, because Re⟨u, F_0u⟩ = ⟨a, F_0a⟩ + ⟨b, F_0b⟩. So the hypothesis holds for real symmetric F_0 ≥ c and for the real truncated (not symmetric) local operators of A1_WALK_FULL 4.2(iv).
6.2 Lemma AW (accretive A1-W at complex points) [P given inputs; RESIDUE 6.2 with Q6 constants]. Let P be G or G_1. Assume on 𝒰(b): (i) a walk/tree expansion of P with (3.108)-form bounds, constants (c_+^b, δ^b), each term analytic in U_c; (ii) at real U, the global bound (C): N̂_P := S^{−1/2}QPQ*S^{−1/2} ≥ c_−.
 Put Γ_b := 2c_+^bS(δ^b); it bounds N̂_P and every truncated N̂_{P,□} on 𝒰(b) by Schur, since truncated sums are bounded by 2c_+ (A1_WALK_FULL 4.2(ii)). If t(a, b) ≥ 1 + 4Γ_b/c_−, then on 𝒰(a):
 N̂_P^{−1}(U_c) = Σ_ωT_ω(U_c), |T_ω| ≤ (8/c_−)(c_1ρ^c)^{|ω|}e^{−½ε^ad(ω)}, ε^a := min{½δ^b, c_−/(16c_+^bΣ(½δ^b))} ≥ ½ε^{real}(c_+^b, δ^b),
 the series converges uniformly, and N̂_P^{−1} is analytic on 𝒰(a).
 Proof. Real truncated local operators obey Re ≥ ½c_− (A1_WALK_FULL 4.2(iv)). Lemma CP with c = ½c_− and Γ = Γ_b gives Re⟨u, N̂_{P,□}(U_c)u⟩ ≥ ¼c_−‖u‖² on 𝒰(a). Lemma CT (5.2(e)) with c = ¼c_− and kernel bound 2c_+^be^{−δ^bd} needs the Schur sum 2c_+^bεΣ(½δ^b) ≤ c_−/8 (Σ as in 5.2(e), which carries the factor from |e^x − 1| ≤ |x|e^{|x|}), which gives ε^a and ‖C_□‖ ≤ 2/(¼c_−) = 8/c_−.
 A1_WALK_FULL §4–§5 and 6.2–6.3 then run unchanged, because concatenation is algebraic and Lemma CT is accretive. The step factor ρ^c carries ‖C_□‖ ≤ 8/c_−, twice the real value; so K_F, K_W, and the threshold M_W double, and M_1 must obey M_1 ≥ M_W^c ≈ 2M_W (admissible: M_1 is chosen after d, L, c_±, and after the level constants of 6.4–6.7).
 Rate: min{½δ, x/2} ≥ ½min{½δ, x}, so the loss is at most a factor ½, in the Combes–Thomas branch only. Each T_ω(U_c) is a finite product of analytic factors; each C_□(U_c) is analytic because an analytic invertible matrix has an analytic inverse (Cramer's rule).
 The series converges uniformly, so its sum is analytic (Weierstrass), and multiplying by N̂_P(U_c) term by term gives I (A1_WALK_FULL §5). ∎
6.3 Why four levels [V; RESIDUE 5.2–5.4, Q1, Q5]. Theorem 3.4 of CMP 99 continues only G′, (Q′G′²Q′*)^{−1}, R, G. Theorem 3.12 (p. 423) and the p. 427 tree expansion of G_1 are stated for G-valued U only; a scan of CMP 99 pp. 400–434 finds no complex statement for G_1, H, H_1, or (QGQ*)^{−1} (RESIDUE Q5).
 A complex G_1 needs H = GQ*(QGQ*)^{−1} at complex points, hence a complex (QGQ*)^{−1} first. So the chain starts at G and has four levels:
 a_1 (G; printed) ⊃ α‴ ((QGQ*)^{−1}, H, G_1) ⊃ α″ ((QG_1Q*)^{−1}, A_exp) ⊃ α′ (A_Z, C^{(k)}(Z_0)).
6.4 Level a_1 → α‴ [P given (Th3.4), the complex walk form of G [R], (C) for G]. On 𝒰(b⁗), b⁗ := (no J-constraint, a_1), Theorem 3.4 gives G analytic with the inequalities of Theorems 3.1–3.3.
 The walk form of G at complex points is [R]: Theorem 3.4's "quantitative statements … small perturbations" with Theorem 3.10 (each walk term is a finite product of operators that Theorem 3.4 continues).
 Its constants are c_+⁗ = c_+(1 + O(a_1)), because ‖Ad(e^{iA′})‖ ≤ e^{2|A′|}, and δ⁗ = δ_G. Put Γ_4 := 2c_+⁗Σ(δ_G) and choose α_1‴ ≤ k_3a_1, k_3 := c_Pc_−/(c_− + 4Γ_4). Then t(α‴, b⁗) ≥ 1 + 4Γ_4/c_−, and Lemma AW with P = G gives the walk expansion of (QGQ*)^{−1} on 𝒰(α‴), rate ε_3 ≥ ½ε (ε = the real A1-W rate).
 Then H = GQ*(QGQ*)^{−1}, H*J, Δ_π^{(2)}, and the tree expansion G_1 = Σ_nG(Δ_π^{(2)}G)^n of WG_FULL §3.1–3.7 run unchanged on 𝒰(α‴): every step concatenates analytic kernels, and the Neumann condition (3.137) uses |J| < α_0‴ with the J-row
 α_0‴ ≤ min(a_{**}/M, c″M^{−1}M_1^{−12}) (G_1 row, A1_WALK_FULL F3; WG §3.6 Neumann condition; WG open point WG-1 for the free M^{−½|ω|} factor).
 Result: (W_G1) on 𝒰(α‴), constants B_1‴ = O(1)B_1, rate δ_1‴ = (1 − θ)·½ε_3 ≥ ½δ_1.
6.5 Level α‴ → α″ [P given 6.4, (C) for G_1]. Put Γ_3 := 2C_𝒟^{(1)}B_1‴Σ(δ_1‴) (tree set-form count, A1_WALK_FULL 6.9a Fix A). The real lower bound for G_1 is c_{−,1} := c_−(G_1) ≥ c_−(1 − O(Mα_0)) [C, A1_KERNEL §9 order line]. Choose α″ ≤ k_2α‴ componentwise, k_2 := c_Pc_{−,1}/(c_{−,1} + 4Γ_3), and α_1″ ≤ min(a_𝒢, a_t) (the 𝒢-weight caps below).
 Lemma AW with P = G_1 gives the complex tree expansion of (QG_1Q*)^{−1} on 𝒰(α″), rate ε_2 ≥ ½ε_1^{real}(B_1‴, δ_1‴).
 The a-term of (QG_1Q*)^{−1} is diagonal. Proposition W_N (4.2) then holds on 𝒰(α″) with constants B_A″, ρ_A″, δ_A″ ≤ min(½ε_2, δ_1‴): concatenation is algebraic and works for complex kernels; the explicit pieces C and 𝒢*𝒢 are analytic in U_c (M is analytic near 1, Q̃ is explicit), with ‖Ad(e^{iA′})‖ ≤ e^{2|A′|} absorbed in B_A″.
 Bound for the complex 𝒢 weights. At real U the weights are n^{−1}(1 + O(c_wMα_0)) (Lemma G(b)–(c)). On 𝒰(α″) the mean (0.10) continues analytically by the implicit function theorem, and the formula ω_Γ = (Σψ)^{−1}ψ_Γ of Lemma G(b) continues with it (complex A_Γ, φ analytic on |z| < 2π). The power series of φ − 1 has absolute coefficient sum ≤ 0.6|z| for |z| ≤ 1, and ‖ad_{iA}‖ ≤ 2√N|A| also for complex A. So ā ≤ 1.2√N max_Γ|A_Γ| and ‖ω_Γ‖ ≤ (1 + 4ā)/n.
 At real points max|A_Γ| ≤ (π/2)w ≤ 0.085/√N; the complex shift adds O(d(L−1)α_1″). For α_1″ ≤ a_𝒢(d, L, N), max|A_Γ| ≤ 0.2/√N, so ā ≤ ¼ and ‖ω_Γ‖ ≤ 2/n. With transport factors ‖t_{Γ,b}‖² ≤ 2 for α_1″ ≤ a_t(d, L, N), the proof of Lemma G(c) gives ‖𝒢(U_c)*𝒢(U_c)‖ ≤ 4·2c_𝒢 = 8c_𝒢 on 𝒰(α″); this is the 𝒢 part of B_A″.
6.6 Level α″ → α′: A_Z accretive [P given 6.5, Theorem L]. A_exp(U_c) is analytic on 𝒰(α″) with ‖A_exp‖ ≤ Γ_1″ := 2C_𝒟B_A″Σ(δ_A″) (Schur on W_N, with the count C_𝒟). At real points A_exp ≥ γ_exp (Theorem L), hence Re⟨u, A_exp(U_c^0)u⟩ ≥ γ_exp‖u‖² for complex u (6.1 Remark).
 Choose α′ ≤ k_1α″, k_1 := c_Pγ_exp/(γ_exp + 2Γ_1″). Then t(α′, α″) ≥ 1 + 2Γ_1″/γ_exp, and Lemma CP gives
 Re⟨u, A_exp(U_c)u⟩ ≥ ½γ_exp‖u‖² on 𝒰(α′).
 Compression to Z_0 keeps this bound (3.3(a), now for the real part of the form). This proves the first claim of Theorem WC(iii). The explicit pieces 𝒢 and C need no separate estimate: they are inside Γ_1″.
6.7 The walk expansion at complex points [P]. Run §5 at each U_c ∈ 𝒰(α′) with B_A → B_A″, δ_A → δ_A″. Local positivity: Re⟨u, A_□(U_c)u⟩ ≥ ½γ_exp − 2B_A″S(½δ_A″)e^{−2δ_A″M_1} ≥ ¼γ_exp for M_1 large (restriction of 6.6 minus the truncation error 5.2(c)).
 Lemma CT with c = ¼γ_exp gives ‖C_□‖_{ε″} ≤ 8/γ_exp with ε″ := min{½δ_A″, γ_exp/(16c_A″Σ(½δ_A″))}, c_A″ := C_𝒟B_A″, Σ(½δ_A″) ≤ (1 + 4/(eδ_A″))S(¼δ_A″) (5.2(e)). Then 5.3–5.4 give
 C^{(k)}(Z_0; U_c) = Σ_ωT_ω(U_c), |T_ω(b, b′)| ≤ (8/γ_exp)(c_1ρ″)^{|ω|}e^{−½ε″d(ω, b, b′)}, Σ_ω|T_ω| ≤ (16/γ_exp)e^{−½ε″|b−b′|},
 with the X_0 structure of 5.4 (the geometry does not depend on U_c). Each T_ω(U_c) is analytic (6.2 proof). The series converges uniformly on 𝒰(α′), so C^{(k)}(Z_0; ·) is analytic there and equals A_Z(U_c)^{−1}.
 The resolvent (x + A_Z(U_c))^{−1}, x ≥ 0, follows as in 5.5, since x ≥ 0 raises the real part by x: ‖C_□(x)‖_{ε″} ≤ 2/(¼γ_exp + x) ≤ 8/(γ_exp + x), and the per-walk prefactor is 8/(γ_exp + x). This is Theorem WC(iii)–(iv).
 Remark [P]. No two-constant (Hadamard) step is used. Accretivity at each complex point gives the Combes–Thomas decay directly, at the full rate ½ε″, and it keeps the walk-level (s-rule) structure. The two-constant route gives kernel decay only (SOURCES_WC_EXPGAUGE 6.4).
6.8 The chain, with constants [P; RESIDUE 7.2, Q7]. With c_P from 6.0:
 α′ ≤ k_1α″, k_1 = c_Pγ_exp/(γ_exp + 2Γ_1″), Γ_1″ = 2C_𝒟B_A″Σ(δ_A″);
 α″ ≤ k_2α‴, k_2 = c_Pc_{−,1}/(c_{−,1} + 4Γ_3), Γ_3 = 2C_𝒟^{(1)}B_1‴Σ(δ_1‴);
 𝒢-weight caps: α_1″ ≤ a_𝒢(d, L, N), α_1″ ≤ a_t(d, L, N) (6.5);
 α_1‴ ≤ k_3a_1, k_3 = c_Pc_−/(c_− + 4Γ_4), Γ_4 = 2c_+⁗Σ(δ_G), a_1 from CMP 99 Theorem 3.4;
 J-row: α_0‴ ≤ min(a_{**}/M, c″M^{−1}M_1^{−12}) (G_1 row), and the mixed row of 6.0 gives α_0^{(n)} + α_1^{(n)} ≤ k_nα_0^{(n+1)}.
 So α′ ≤ k_1k_2k_3a_1 in the α_1-row. The mixed α_0-row passes the J-row smallness (which depends on M and M_1) to the α_1-components of α″ and α′ (RESIDUE Q7 note). This is harmless, because M_1 and M are fixed before every α^{(n)}.
 Rates. G: δ_G → (QGQ*)^{−1}: ε_3 ≥ ½ε → G_1: δ_1‴ ≥ ½δ_1 → (QG_1Q*)^{−1}: ε_2 ≥ ½ε_1^{real} → A_exp: δ_A″ → C^{(k)}(Z_0): ½ε″. At most a factor ½ is lost per accretive level, in the Combes–Thomas branch only.
 The final rate is a fixed positive constant of (d, L, N, a, a_0, a_1) and the fixed caps a_**, c″, θ_c. It is not Balaban's ½δ_0. Consumers tolerate a fixed rate (A1_WALK_FULL §7.4; S2_G1_V7 B1.5).
6.9 Order of constants [P; RESIDUE 7.3, Q7; SOURCES_ORDER_CANON B3–B22]. d, L, N → (d, L, N) constants and caps: δ_0, B_0, a_0, a_1 of Theorem 3.4, a_**, a_L, a_{−,1}, c″, a_𝒢, a_t, θ_c, M_99, and γ_exp (Theorem L; needs d, L, N only) (B5) → c_±, ε (A1-W at real U, (C)) (B11–B12) → B_A, δ_A, ε_WC (B13) → all level constants: c_+⁗, Γ_4, k_3, ε_3, B_1‴, δ_1‴, c_{−,1}, Γ_3, k_2, ε_2, B_A″, δ_A″, Γ_1″, k_1, ε″, B_C = 16/γ_exp (B14) → M_1, with M_1 ≥ M_W^c (6.2) (B15) → M_2 = L²M_1 (B16) → M, with M/M_1 > 10 and M/M_1 > 3(6 + c_X) (5.4) (B18) → α‴ → α″ → α′ (B20) → α_* (S2_G1_V7 B1.4: α_0 + α_1 ≤ α_*, which needs α ≪ α′) → α (CMP 116 p. 15: α′ "much bigger than" α), with the real regularity α_0 inside the α-chain (B22) → g (TRUST_LEDGER C5, M4).
 Each arrow goes from fixed constants to a later smallness. The level constants are M-free and α-free (SOURCES_ORDER_CANON A.4); the domain sizes are fixed after M (A.6). No α^{(n)} is bounded below by a later constant. So the order is acyclic.
 Ledger check [checked, RESIDUE 7.4, Q7]. TRUST_LEDGER.md has no condition on α′, α″, α‴ other than the object built here (row A1w). The conditions C5 ("α's after M"), WG-1 (α_0 ≤ c″M^{−1}M_1^{−12} for G_1, imposed on the J-row above), A13 (O(α_0 + α_1) in R_2, the small α), and M4 (α_{1,j} ∝ g_j(log)^{q_1}, the small α) are compatible.
 The new lower bounds on M/M_1 fit under C5's "M ≥ M(κ)". No conflict found.
6.10 Proof of Theorem WC (assembly) [P].
 (i) is 3.3 (Theorem L with Λ = Z_0, then compression).
 (ii) is 5.3 (real walk series of A_Z^{−1}, per walk 4/γ_exp, rate ½ε) followed by 5.4 (regrouping into the p. 13 form, with M/M_1 > 10 and M/M_1 > 3(6 + c_X)).
 (iii) is 6.6 (accretivity ½γ_exp on 𝒰(α′)) followed by 6.7 (complex walk series, per walk 8/γ_exp, rate ½ε″, analyticity, equality with A_Z(U_c)^{−1}).
 (iv) is 5.5 at real points and the last sentence of 6.7 at complex points.
 Uniformity: γ_exp by 3.4; B_A, δ_A, ε, ε″ by 4.2, 6.5 (constants of the inputs, which are uniform in regular U, k, η, volume); Z_0 enters only through compression (3.3, 4.4) and the geometry of 5.4, which uses only M/M_1. ∎

## §7 Remark: the U = 1 numerics

7.1 Script and set-up [V numerics; numerics/wc_exp/poincare_exp.py, reproduced in EXPGAUGE-VERIFY V5]. Periodic unit lattice of N_b blocks per side (N_b written N in the script), scalar fields (one Lie algebra component; at U = 1 the components decouple).
 P = Σ_p|curl B|²; G = Σ_{y,x}|(𝒢B)(y, x)|² with 𝒢 the plain average over the staircase contours from the block centre (exact at U = 1, Lemma G(b)); Q = the CMP 96 (2.125) averaging.
 The script reports the least eigenvalue of P + G on ker Q, the same without G, the block-only constant min(P_y + G_y)/S_y, and the axial-gauge constant.
7.2 Values (EXPGAUGE-VERIFY V5 rerun, < 1 s on the Mac).
 | d | L | N_b | min(P+G | Q=0) | min(P | Q=0) | axial | block min(P_y+G_y) |
 | 2 | 3 | 3 | 0.13302 | < 1e−14 | 0.306 | 0.219 |
 | 2 | 3 | 4 | 0.13084 | < 1e−14 | 0.268 | 0.219 |
 | 2 | 5 | 2 | 0.11451 | < 1e−14 | 0.066 | 0.149 |
 | 3 | 3 | 2 | 0.08432 | < 1e−14 | 0.084 | 0.126 |
 The column min(P | Q=0) lies between −8.6e−15 and −4.6e−15 in all four runs (EXPGAUGE-VERIFY V5).
7.3 Reading. (a) With the gauge term the constant is positive and stable in volume (0.133 → 0.131 from N_b = 3 to 4). (b) Without it the least eigenvalue is 0 to 10^{−14}: these are the gauge zero modes of 2.9(iv).
 (c) The proved block constant 1/K_b is 1.2·10^{−5} (d = 2, L = 3: c_𝒢 = 18, K_b = 83088) and 4·10^{−7} (d = 3, L = 3: c_𝒢 = 81, K_b ≈ 2.5·10^6), and γ_exp is smaller still.
 Script note: poincare_exp.py prints a stale 1/K_b (6.02e−6 for d = 2, L = 3), 2× too small; it uses an old K_b. The value above, 1/83088 = 1.20·10^{−5}, is correct. The script is not an input.
 The true constants are larger by four to six orders; the proof is crude, not sharp. (d) A one-block non-flat test (so(3), d = 2, L = 3, V(b) = exp(εX_b)) gives block constants 0.2192, 0.2183, 0.1993, 0.0031 at ε = 0, 0.05, 0.2, 0.5 (EXPGAUGE-VERIFY V5).
 Positivity persists for small backgrounds and degrades for large ones, as the smallness hypothesis (H_E) predicts.
7.4 Scope. These are checks, not inputs. Nothing in §1–§6 uses them. They cover U = 1 and one non-flat block; they do not test the Q-constrained non-flat problem.
## §8 What is NOT used

8.1 CMP 99 Theorem 3.15 and its transfer. Theorem 3.15 gives the walk expansion of the axial-gauge covariance C^{(k)} = (C*Δ_kC)^{−1} through (3.185)–(3.187): C^{(k)}(Λ) = (I + Dμ)QG_2Q*(I + μ*D*), G_2 = Ğ_2 − Ğ_2Q*(QĞ_2Q*)^{−1}QĞ_2.
 CMP 109 p. 268 and CMP 116 p. 13 apply the results of [13] to the exponential gauge.
 A "transfer" would read the exponential-gauge statements off Theorem 3.15. This proof does not do that. It uses none of: Theorem 3.15; (3.185)–(3.187); Ğ_2 or (QĞ_2Q*)^{−1}; the identity of C^{(k)} with an axial covariance on any subspace.
 The reason is 1.8: 𝒢*𝒢 ≠ 0 on the axial slice, so the exponential-gauge covariance differs from the axial one by an O(1) Γ-correction and an O(1) Schur correction (SOURCES_WC_EXPGAUGE 2.2).
 A transfer would need an argument that does not exist in print.
8.2 Other items not used. (a) Gauge invariance of A_exp or of A_Z (3.3(b)). (b) CMP 99 Cor. 3.6 (local gauge to U ≈ 1 on a cube) and CMP 89 for local inverses: local positivity comes from restriction of a global bound (5.2(d)).
 (c) A two-constant (Hadamard) interpolation at complex points (6.7 Remark).
 (d) The literal non-covariant curl formula CMP 99 (3.4) (2.4). (e) CMP 122 (1.73) as evidence for the tilde convention (withdrawn, RESIDUE 3.4). (f) The A3 lower bound γ_0 of the axial operator: A3 enters only through Lemmas 4.2, 4.3, 4.4 and step (6.1), each of which is gauge-fixing-free or used inside one block.
 (g) The numerics of §7.
8.3 Where the axial gauge still appears. Only as a proof device: the axial tree T(y) inside one block in Lemma E step (a), and A3's Lemma 4.2 for that tree. Neither restricts the exponential-gauge field.
## §9 Ledger

Source names. A1_WALK_FULL.md and WG_FULL.md are in ~/claude_code/yang_mills/; the body cites their section numbers.

[V] page facts.
 PF1 CMP 109 p. 252: G(y, x) = shortest staircase contours inside B(y), one per order of directions; L odd.
 PF2 CMP 109 p. 253: (0.6) two-sided covariance of M; (0.8) linear part = plain average at entries near 1.
 PF3 CMP 109 p. 254 (0.14), p. 255 (0.16)–(0.19): the factor exp[−(1/2α)|U(y, x) − 1|²], α = g_k², residual gauge u(y) = 1; normalization gives c_G = 1.
 PF4 CMP 109 p. 254: "all results of the paper [12] are valid for it. The proofs are in most cases unchanged" (cited as (p254); content [R], see R4).
 PF5 CMP 109 p. 266 (2.5), p. 267 (2.10)–(2.11) with "replaced by the exponential one", p. 268 C^{(k)} = (C*Δ^{(k)}C)^{−1}; D̃^{(2)} = hC̃^{(2)}.
 PF6 CMP 116 p. 13: X̃_0^5 = Z̃_0, dist(X, Z_0) > ⅔M, [13] = CMP 99; p. 3: kernel margin ⅓M_1; p. 15: α′ "much bigger than" α, real point (U, 0) plus perturbation.
 PF7 CMP 99 p. 411 "the cube □̃²"; p. 413 "□_0, which is a sum of 5^d cubes"; CMP 119 p. 245 "one layer … touching □".
 PF8 CMP 99 p. 400 Theorem 3.4 (G′, (Q′G′²Q′*)^{−1}, R, G; α_1 ≤ a_1); p. 423 Theorem 3.12 and p. 427 real U only.
 PF9 CMP 99 (3.134)–(3.138), p. 427: tree shape of Δ^{(2)} and G_1, "estimates are the same as in (3.108)".
 PF10 Numerics: §7 table reproduced (EXPGAUGE-VERIFY V5); non-flat one-block identities to 10^{−15}; geometry script (RESIDUE Q4).

[P] proved here.
 P1 (1.2), (1.3): linearization of the contour holonomy with corrected backward transport; 𝒢 defined by the exact linearization of M.
 P2 Lemma G: block locality; for Federbush's mean, exact weights ω_Γ = (Σψ)^{−1}ψ_Γ with ‖ω_Γ − n^{−1}‖ ≤ c_Mw, c_M ≤ 4√N, and κ ≤ √2 for w ≤ 0.054/√N; G_y ≤ 2c_𝒢S_y; (𝒢D^Vλ)(y, x) = λ(y) − Ad(U(y, x))λ(x), exact.
 P3 1.8: 𝒢*𝒢 ≠ 0 on the axial slice (explicit example).
 P4 Lemma E: S_y ≤ K_b(P_y + G_y), K_b = 8dL^d(1 + 16dc_𝒢) ≤ 64d³L^{2d+1}, under (H_E) 16d³L^dc_𝒢τ_p² ≤ 1, τ_p = 16√N c_4Mα_0 (which implies 2√N c_4Mα_0 ≤ 1, the condition of (E)). Steps (c) (2.2) and (d) are exact identities.
 P5 Lemma P_exp: P^U + G ≥ γ_e(1 − η_6)‖B‖², γ_e^{−1} = K_b(1 + 6d/m_L) + 6/m_L.
 P6 Theorem L: A_exp ≥ γ_exp = ½min(½, c_G)γ_e = ¼γ_e on {B̃ = 0 off Λ}; compression to Z_0 harmless; uniform.
 P7 Proposition W_N: tree expansion of A_exp and A_Z (real; and on α″ given 6.5).
 P8 §5.2–5.3: real walk expansion of C^{(k)}(Z_0), per walk 4/γ_exp, rate ½ε; closes A1_WALK open point O3.
 P9 §5.4: X_0 exists for M/M_1 > 10; near/far split with margin M_1; separation > ⅔M for M/M_1 > 3(6 + c_X); merged factor costs ≤ 2 per run; no corner loss.
 P10 §5.5: resolvent (x + A_Z)^{−1}; bounds uniform in x ≥ 0, per-walk prefactor 4/(γ_exp + x), so the x^{−1/2} integral for (C^{(k)})^{1/2} converges.
 P11 Lemma CP (accretive hypothesis form). P12 Lemma AW (constant 8/c_−, rate loss ≤ ½, M_W doubles).
 P13 §6.4–6.7: four-level chain; A_Z accretive (½γ_exp) on α′; complex walk expansion and analyticity; the complex Combes–Thomas decay is proved directly by accretivity, with no two-constant step (6.7 Remark).
 P14 §6.8–6.9: chain constants k_1, k_2, k_3; order acyclic; no TRUST_LEDGER conflict.

[R] reduced to printed statements.
 R1 (W_G1) Theorem WG-G1 rests on the printed sketches of CMP 99 Thms 3.7, 3.9, 3.10, p. 422, p. 427, and Lemma 2.1 of [4].
 R2 The complex walk form of G: Theorem 3.4 + Theorem 3.10 (no printed complex walk statement).
 R3 A3 inputs: A3-R1 (Thms 3.11–3.12, Schur step sketched), R-Δ′, R-Δ2 (needs the (3.136) form), A3-R2′ (CMP 98 (139)), A3-R3 (regular U_1), A3-R4 (c_J = c(d, L)Mα_0). The prefix "A3-" separates these from the ledger rows R1–R4.
 R4 (p254): the shared operators with CMP 109's symmetric averages carry the results of CMP 98/99.

[C] conditional.
 C1 (C) for G: A1-W's global accretive bound (A1_WALK_VERIFY (6); A1_KERNEL §8).
 C2 c_{−,1} = c_−(G_1) ≥ c_−(1 − O(Mα_0)) (A1_KERNEL §9).

[I] inferred, open.
 I1 (2.11) = (3.156) + G^{(2)} term by term: consistent, no conflict found (EXPGAUGE-VERIFY V3, V9 F); rests on D̃^{(2)} = hC̃^{(2)}.
 I2 Locality of C̃^{(2)} (range ≤ L) and Q-locality of the A1-W/WG constructions.
 I3 Q̃ (CMP 109) = Q_1(U_1) (CMP 99), the blocks of (0.14) are the blocks of Q̃, and V^{(k)} of CMP 109 (2.5) is the background U_1 of A3.
 I4 A3-R2 (the A18 piece), inherited through (A3-6.1).
 I5 WG-1: the free M^{−½|ω|} factor at J-junctions needs α_0 ≤ c″M^{−1}M_1^{−12} for G_1 (imposed on the J-row), or the exponential is used instead.
 I6 dist(Z_0, Λ_k^c) > RM (A3 §0.1; S2_G1_V7 B3.3(e)).
 I7 The tilde convention of CMP 99 is transferred to CMP 116 p. 13 by series usage; CMP 116 does not restate it. Not open in content (PF7 + P9 consistency), recorded for completeness.
 I8 Smoothness and analyticity of M near (1, …, 1) are read from (0.5)–(0.10). For Federbush's mean (0.10), which CMP 109 fixes, the constant is computed in Lemma G(b) (c_M ≤ 4√N); for a general admissible M only its existence is known. The Karcher-mean property used in Lemma G(c) is a standard fact (Karcher 1977), applied to (0.10).
 I9 J is local and |J| = O(Mα_0) (CMP 99 (3.36); WG §2.0), used in 4.0 and 4.1(d).

Status. Theorem WC is proved [P] relative to R1–R4, C1–C2, and I1–I9. CMP 99 Theorem 3.15 is not used (§8). The constants differ from SOURCES_WC_EXPGAUGE only where the verify files corrected them: c_G = 1; ‖𝒢‖² ≤ 2c_𝒢; step (d) exact (τ_G removed), which lowers K_b to ≤ 64d³L^{2d+1}; τ_p with √N; near-domain margin M_1 and strict M/M_1 > 3(6 + c_X); Γ_b = 2c_+^bS(δ^b); four levels, not three.
Checks for an independent verifier, in priority order: (1) Lemma G(b)–(c), the weight bound for non-flat V; (2) Lemma E step (f) arithmetic with the new constants; (3) the merged-run bound of 5.4(e); (4) the resolvent claim 5.5(iii) (now: the bound on F_□ is uniform in x ≥ 0, prefactor 4/(γ_exp + x)); (5) 6.0 radius at the Theorem 3.4 level.
## Fixes after verification (WC_FULL_VERIFY, 2026-10-28)

1. Lemma G(b)–(c) (F3). 1.2 now states that CMP 109 fixes Federbush's mean (0.10) and that (0.10) is the Karcher-mean condition. (b) gives the exact weights ω_Γ = (Σψ)^{−1}ψ_Γ, ψ_Γ = φ(ad_{iA_Γ}), φ(x) = x/(e^x − 1), with proof, and c_M = 8√N/n ≤ 4√N for w ≤ 1/(4√N). (c) gives κ = 1 + 7.6√N w ≤ √2 for w ≤ 0.054/√N. "M̄ within the same order of 1 by (0.8)" is replaced by the Karcher centre-of-mass property (Karcher 1977), with c_w explicit. Header tag, P2, and I8 updated.
2. Lemma E (F4, F5). 2.1 lists 2√N c_4Mα_0 ≤ 1 for (E) and shows that (H_E) implies it; P4 updated. 4.2 defines C′_𝒟 as the tree branching constant (a fixed multiple of C_𝒟, C_𝒟 ≤ C′_𝒟). 5.3 imposes C′_𝒟c_1ρ ≤ ¼, which implies 5.3's C_𝒟c_1ρ ≤ ¼ and 5.4(e)'s C′_𝒟c_1ρ ≤ ½. 5.4(e) states that ω̄ may repeat X_0.
3. Resolvent (F2). 5.5(iii): "F_□ is unchanged" replaced by "the E-factors are unchanged; the bound on F_□ is uniform in x ≥ 0". New 5.5(iv): per-walk prefactor 4/(γ_exp + x), from the leading C_□(x) of P; the x^{−1/2} integral for (C^{(k)})^{1/2} converges walk by walk, prefactor 4γ_exp^{−1/2}. Theorem WC(iv), 6.7, P10, and the §9 check list updated (complex prefactor 8/(γ_exp + x)).
4. Combes–Thomas Schur sums (F1). 5.2(e), 6.2 (ε^a), and 6.7 (ε″) now use Σ(½δ) ≤ (1 + 4/(eδ))S(¼δ), from |e^x − 1| ≤ |x|e^{|x|} (Σ as in A1_WALK_FULL §0). Only ε, ε^a, ε″ change; the bound ε^a ≥ ½ε^{real} still holds because A1_WALK_FULL's ε^{real} uses the same Σ.
5. Complex 𝒢 weights (F6). 6.5 now bounds them: ‖ω_Γ‖ ≤ 2/n on 𝒰(α″) for α″ small, by analytic continuation of the formula of Lemma G(b); hence ‖𝒢*𝒢‖ ≤ 8c_𝒢 there, the 𝒢 part of B_A″.
6. Band (F7). Theorem WC(ii) and 5.4(d) state that the ⅓M_1 band for factors other than X_0 is part of (L1) of A1_WALK_FULL §1, which the A1-W factors and WG_FULL's G_1-tree factors satisfy.
7. Ledger (F8). Body "VERIFY V1–V10" renamed "EXPGAUGE-VERIFY V1–V10"; §9 page facts renamed PF1–PF10. A3 inputs renamed A3-R1, A3-R2, A3-R2′, A3-R3, A3-R4 (R1/R2 also collided with ledger rows). 4.1(d) "item I4" → I2. Body tag (I5) → (I9), with new ledger row I9 (J local, |J| = O(Mα_0)). P13's undefined "(D)" replaced by its content (complex Combes–Thomas decay by accretivity). Status line now cites I1–I9.
8. §7.3 (F9). Script note added: poincare_exp.py prints a stale 1/K_b, 2× too small; 1.20·10^{−5} is correct.
9. Recheck. Every "hence/so/it follows" was reread after the edits; each still has its justification. Open item, not changed here: the §9 source-name note says A1_WALK_FULL.md and WG_FULL.md now exist (written 2026-10-28); both files now exist in the folder.
10. Regrade fixes (WC_FULL_VERIFY regrade, 2026-10-28). F7: 5.4(d) and Theorem WC(ii) now cite WG_FULL 0.4 as corrected (band by one-layer enlargement X → X⁺; c_X taken ≥ WG c_X + 2). Ledger: line-49 "R2′" → A3-R2′; I4 "R2 of A3" → A3-R2. Stale §9 source-name note replaced (both FULL files exist); the header source line updated to match. Item 9's open item is closed.
11. Order-canon fixes (SOURCES_ORDER_CANON Task C, 2026-10-28): C-W1/W2 6.9 order replaced by canon B3–B22 (level constants before M_1; M_1 → M_2 → M; real α_0 inside the α-chain) plus the M-free sentence; C-W3/N2 J-row c′M^{−11} → c″M^{−1}M_1^{−12} at 6.4, 6.8, 6.9 ledger check, I5; C-W4/N1 caps α_1″ ≤ a_𝒢, a_t in 6.5 and the 6.8 chain list; C-W5/N3 rate list adds a_1 and caps; C-W6 chain constants k_1, k_2, k_3 (also P14), Γ_4, Γ_3 = 2C_𝒟^{(1)}B_1‴Σ, Γ_1″ = 2C_𝒟B_A″Σ, ε″ with c_A″ = C_𝒟B_A″; C-W7 M_99(d, L) in 0.3, 0.10, 3.4 and a_L in 0.3; C-W8 6.2 M_1 after the level constants.
