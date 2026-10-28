# SOURCES_WC_EXPGAUGE — (W^c) for C^{(k)}(Z_0) with exponential gauge fixing, without the CMP 99 Thm 3.15 transfer

Date 2026-10-28. Author: Opus session. Firewall kept (no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP).
Tags: [V] page-verified, [P] proved here, [R] reduced to a named printed statement, [I] inferred/open.
Inputs read: SOURCES_S2_G1_V7 Part B, SOURCES_S2_G1_V7_VERIFY V3–V6, SOURCES_A2_R2_VERIFY V9, SOURCES_A3_GAMMA0_FULL §0, §5, §6.
Sections are appended one per step; ledger at the end.

## Ledger (running)
- (start) file created. Running ledger = the "(§n done)" line at the end of each section; final ledger at the end.

## 1. The exponential gauge term, read from the pages [V CMP 109 pp. 252–255, 266–267, images 150 dpi + text]
1.1 Contours [V p. 252 text]. For a block B(y), y ∈ T^{(1)}, and x ∈ B(y), G(y, x) is the family of shortest staircase contours from y to x: one contour for each order of the coordinate directions with n_μ ≠ 0 (|n_μ| ≤ (L−1)/2). All contours lie inside B(y). U(y, x) := M({U(Γ)}_{Γ∈G(y,x)}) (0.11), M the group average (0.5)–(0.10), with (1/i)log M({e^{iA_j}}) = (1/n)ΣA_j + higher order (0.8).
1.2 The gauge-fixing factor [V p. 254 (0.14), p. 255 (0.16), (0.17), (0.19)]. exp[−(1/2α)|U(y, x) − 1|²] = exp[−(1/α)(1 − Re tr U(y, x))], for y ∈ T^{(1)}, x ∈ B(y), x ≠ y. In the RG step α = g_k² (0.19): the exponent carries −(1/g_k²)Σ_{y∈T^{(k+1)}}Σ_{x∈B(y),x≠y}[1 − Re tr U(y, x)]. The residual invariance it removes is the gauge group with u(y) = 1 for y ∈ T^{(1)} (p. 254: "still invariant with respect to the gauge transformations u satisfying u(y) = 1 for y ∈ T^{(1)}").
1.3 Quadratic part [V p. 266 (2.5)]. In the fluctuation variables, Ṽ′(y, x) = 1 + B̃′(y, x) + …, B̃′(y, x) linear in B′, and G(B′) = Σ_{y∈T^{(k+1)}}Σ_{x∈B(y),x≠y} ½|B̃′(y, x)|² + G_3(B′) =: ½G^{(2)}(B′) + G_3(B′). "G_3 … localized in blocks of the lattice T^{(k)}".
1.4 The covariance form [V p. 267 (2.10)–(2.11) and the sentence after]. After B′ → g_kB′ the order-0 terms are ⟨H_1hC̃^{(2)}(B′), J⟩ − ½G^{(2)}(B′) − ½⟨H_1B′, Δ_1H_1B′⟩, and "The quadratic form in B′ above is equal to −½⟨B′, Δ^{(k)}B′⟩, see the definition (3.156) [13] with the δ-function gauge fixing term replaced by the exponential one." The constraint is δ(Q̃B) (p. 267); then B′ = CB with b_0(c) eliminated, C^{(k)} = (C*Δ^{(k)}C)^{−1} (p. 268).
1.5 Identification of 𝒢 and c [P from 1.1–1.4, with one convention tag]. Linearize (V′V)(Γ)V(Γ)^{−1} for V′ = e^{iB}: the linear part is iΣ_{b∈Γ}Ad(V(Γ_{<b}))B(b) (σ_b = ±1 for orientation; Γ_{<b} = the part of Γ before b). With (0.8), the linear part of the averaged variable is i(𝒢B)(y, x),
 (𝒢B)(y, x) := |G(y, x)|^{−1}Σ_{Γ∈G(y,x)}Σ_{b∈Γ}σ_bAd(V(Γ_{<b}))B(b), y ∈ T^{(k+1)}, x ∈ B(y)∖{y}.
 So G^{(2)}(B) = c_G‖𝒢B‖², c_G > 0 a fixed normalization constant (c_G = 1 if |·| in (0.14) and |·| on 𝔤 use the same trace form) [I-conv; only c_G > 0 is used]. The gauge operator is Γ := c_G𝒢*𝒢, coefficient O(1) after the scaling B′ = g_kB.
 Properties [P]: (a) 𝒢 is block-local: (𝒢B)(y, ·) depends only on B on bonds inside B(y). (b) Bound: Cauchy–Schwarz along a contour (length ℓ_Γ ≤ d(L−1)/2, each bond at most once) and Σ over x give ‖𝒢B‖²_{B(y)} ≤ c_𝒢Σ_{b⊂B(y)}|B(b)|², c_𝒢 := d(L−1)L^d/2. (c) Gauge directions: for (D^Vλ)(b) = λ(b_+)-transported − λ(b_−) (the linearized gauge action), each contour telescopes, so (𝒢D^Vλ)(y, x) = avg_Γ Ad(V(Γ))λ(x) − λ(y). For λ ∈ N := {λ(y) = 0, y ∈ T^{(k+1)}} this is avg_Γ Ad(V(Γ))λ(x).
1.6 The other operator [V+I]. By 1.4 and CMP 99 (3.156), ⟨B, Δ^{(k)}B⟩ = E(B) − ⟨B, Δ_JB⟩ + c_G‖𝒢B‖², with E(B) := ⟨B, (QG_1Q*)^{−1}B⟩ − a‖B‖² = ⟨H_1B, Δ_1H_1B⟩ (A3_GAMMA0_FULL Lemma 5: H_1B = A_*, RD*A_* = 0, so ⟨A_*, G_1^{−1}A_*⟩ = Φ(A_*) + a‖B‖²; Φ = ⟨·, Δ_1·⟩ is the notation of (2.7)) and ⟨B, Δ_JB⟩ = 2⟨H_1hC̃^{(2)}(B), J⟩ (the CMP 99 Δ_J with D̃^{(2)} = C̃^{(2)}, p. 267). The identity "(2.11) form = (3.156) form + exponential term" is Balaban's sentence [V]; the term-by-term match is [I, strong].
- (§1 done) 𝒢 = block-local averaged covariant line integral from the block centre; c = c_G/g_k² before scaling, c_G after; residual gauge group = N.

## 2. Structural relation between A_exp and A_ax [P]
2.1 Both operators. Let V_red := fields B̃ on the reduced bond set (b_0(c) removed). C = I − hLQ̃ on V_red (p. 267: LQ̃h = I, (hB)(b_0(c)) = h(c)B(c); then Q̃CB̃ = 0). C has finite range ≤ 2L (unit units) [P].
 Δ_k^{full} := (QG_1Q*)^{−1} − a − Δ_J, an operator on ALL unit-lattice fields (no constraint). It is CMP 99's Δ_k before the subspace restriction (3.156). It contains no gauge fixing at all.
 A_exp := C*(Δ_k^{full} + c_G𝒢*𝒢)C on V_red (CMP 109/116). A_ax := ι_ax*C*Δ_k^{full}Cι_ax, ι_ax the zero extension from Λ̃ (reduced variables off the trees T(y)) to V_red (CMP 99 (3.156)–(3.158)). Here Cι_ax = CMP 99's C because b_0(c) is a corridor bond and the trees are block bonds (disjoint sets).
2.2 The plan's hoped-for relation fails [P]. Γ = c_G𝒢*𝒢 is NOT zero on the axial slice. 𝒢 averages over ALL staircase contours of G(y, x), and the axial path is only one of them. Example (U = 1, d = 2, L = 3): B = e on the bond ⟨y + e_1, y + e_1 + e_2⟩ (not a tree bond: the e_2-bond above y + e_1); then (𝒢B)(y, y + e_1 + e_2) = ½e ≠ 0 (one of the two contours uses it). So ι_ax*A_expι_ax = A_ax + ι_ax*C*ΓCι_ax ≠ A_ax.
 Exact Schur form (recorded, not used). Write V_red = ran ι_ax ⊕ W (any complement, e.g. W = tree variables). With A_exp = [[A_11, A_12], [A_21, A_22]] in this splitting, C_exp = A_exp^{−1} has upper-left block (A_11 − A_12A_22^{−1}A_21)^{−1}, A_11 = A_ax + ι_ax*C*ΓCι_ax. So C_exp restricted to the slice is NOT C_ax; it differs by a Γ-correction and a Schur correction, both O(1) (not small). This confirms S2_G1_V7_VERIFY V6: the covariances do not coincide on a gauge-fixed subspace.
2.3 What IS shared [P]. The only gauge-fixing-dependent objects are (a) the lower bound of the final operator and (b) its inverse. Every operator inside Δ_k^{full} — G_1, (QG_1Q*)^{−1}, H_1 = G_1Q*(QG_1Q*)^{−1}, Δ_J — is defined in CMP 99 §§C–E BEFORE the δ_{Ax} restriction. Their walk/tree expansions (CMP 99 Thm 3.10 + p. 422 + p. 427 [R]; A1_WALK §6.3(a) [P mod (W_G)]) are therefore the SAME objects for both gauge fixings. No transfer is needed for them. CMP 116 p. 13 [V text] says the same: "This construction was discussed in [13] for all operators determining Δ_k".
 Consequence: the route is (i) a lower bound for A_exp proved directly (§3), (ii) a walk expansion of A_exp assembled from the shared expansions (§4), (iii) A1_WALK §4–§5 (truncation + accretive Lemma CT + parametrix) applied to A_exp compressed to Z_0 (§5). Theorem 3.15 is not used.
- (§2 done) Γ ≠ 0 on the axial slice; the direct route is forced; the shared operators carry no gauge fixing.

## 3. Lower bound γ_exp for A_exp at real regular U [P given the A3 inputs]
3.0 Inputs: A3_GAMMA0_FULL (H1)–(H3), R1, R-Δ′, R-Δ2, R4, R2, R2′, R3, (Cov), and its Lemmas 2, 4.2, 4.3, 5 and step (i) (§6.2). Notation of A3 §3.0: S_b, S_c, P^U := ‖∂_1^{U_1}B‖². Blocks B(y), y ∈ T^{(k+1)}. G := ‖𝒢B‖², G_y its part on B(y). τ := 12c_4Mα_0 as in A3 §4.1.
3.1 Step (i) does not use the gauge condition [P, check of A3 §6.2]. A3 (6.1), (1 + ε_7)E(B) ≥ ½P^U − ε_7a‖B‖², uses only: B = 0 off Λ (to localize plaquettes), B = Q_k(U)A_* with A_* the minimizer (any B is in the range), Lemma 2, Lemma 5 (any B), R-Δ′, R-Δ2, R1. Neither the trees nor Q_1B = 0 enter. Also |⟨B, Δ_JB⟩| ≤ c_J‖B‖² (R4) holds for all B. So both hold on the exponential-gauge variable space.
3.2 Lemma E (block inequality with the exponential term; replaces A3 Lemma 4.2) [P]. Assume τ_G := 2dLc_4Mα_0 ≤ ½ and 16d³L^dc_𝒢τ_p² ≤ ½, τ_p := 16c_4Mα_0. Then for every field B on the bonds of B(y),
 S_y := Σ_{b⊂B(y)}|B(b)|² ≤ K_b(P_y + G_y), K_b := 8dL^d(1 + 32dc_𝒢) ≤ 136d³L^{2d+1}.
Proof. Work in a regular gauge on B(y) (A3 §0.5; diameter L ≤ 8M); all quantities are gauge covariant with orthogonal Ad, so norms are unchanged [P, (Cov)].
 (a) Axial split. Define λ on B(y) by λ(y) = 0 and, along each tree bond b = ⟨z, z′⟩ of T(y) (z nearer y), λ(z′) := Ad(V(b))^{−1}(B(b) + λ(z)). Put B_ax := B + D^Vλ, (D^Vλ)(b) := λ(b_−) − Ad(V(b))λ(b_+). Then B_ax = 0 on T(y) by construction. λ ∈ N.
 (b) A3 Lemma 4.2 (exact, covariant) for B_ax: S_y(B_ax) ≤ dL^dP_y(B_ax).
 (c) Curl of a gauge direction: (∂^VD^Vλ)(p) = (1 − Ad(V(∂p)))λ(p_0) up to an orthogonal transport, p_0 a corner of p. By R3 and the elementary fact (E) of A3 §2.1, ‖Ad(V(∂p)) − 1‖ ≤ 4·4c_4Mα_0 = τ_p. Each site is the base corner of ≤ d² plaquettes. So P_y(B_ax) ≤ 2P_y + 2d²τ_p²Λ_y, Λ_y := Σ_{x∈B(y)}|λ(x)|².
 (d) 𝒢 controls λ: by §1.5(c), 𝒢B = 𝒢B_ax − 𝒢D^Vλ = 𝒢B_ax + avg_ΓAd(V(Γ))λ(x) (λ(y) = 0). In the regular gauge ‖Ad(V(Γ)) − 1‖ ≤ ℓ_Γ·4c_4Mα_0 ≤ τ_G, so |avg_ΓAd(V(Γ))λ(x)| ≥ (1 − τ_G)|λ(x)| ≥ ½|λ(x)|. With §1.5(b): Λ_y ≤ 8G_y + 8c_𝒢S_y(B_ax).
 (e) ‖D^Vλ‖²_{B(y)} ≤ 4dΛ_y (two endpoints, ≤ 2d bonds per site). So S_y ≤ 2S_y(B_ax) + 8dΛ_y.
 (f) Combine (b)–(d): S_y(B_ax) ≤ 2dL^dP_y + 2d³L^dτ_p²(8G_y + 8c_𝒢S_y(B_ax)). The hypothesis 16d³L^dc_𝒢τ_p² ≤ ½ gives S_y(B_ax) ≤ 4dL^dP_y + G_y/c_𝒢. Then Λ_y ≤ 16G_y + 32c_𝒢dL^dP_y, and by (e) S_y ≤ (8dL^d + 256d²c_𝒢L^d)P_y + (2/c_𝒢 + 128d)G_y ≤ K_b(P_y + G_y). Last bound: 2/c_𝒢 + 128d ≤ 8dL^d(1 + 32dc_𝒢) since c_𝒢 ≥ 1. With c_𝒢 = d(L−1)L^d/2: 1 + 32dc_𝒢 ≤ 17d²L^{d+1}, so K_b ≤ 136d³L^{2d+1}. ∎
 Note: Lemma E is block-local. It needs no Dirichlet condition and no Q_1-constraint. The trees appear only inside the proof, as a device; the exponential-gauge field B is unconstrained.
3.3 Lemma P_exp (global Poincaré with the gauge term) [P]. For every unit-lattice field B with B = 0 off Λ and Q_1(U_1)B = 0,
 P^U + G ≥ γ_e(1 − η_6)‖B‖², γ_e^{−1} := K_b(1 + 6d/m_L) + 6/m_L,
η_6 as in A3 (4.1). Proof: A3 §4.4 verbatim with 4.2 replaced by Lemma E. A3 Lemma 4.3 (corridor inequality) uses only Q_1B = 0 and is unchanged. Summing it over c: S_c ≤ (3/m_L)(2P^U + 2dS_b) + (3L^d/m_L)ε_8‖B‖². With S_b = Σ_yS_y ≤ K_b(P^U + G): ‖B‖² = S_b + S_c ≤ [K_b + (3/m_L)(2 + 2dK_b)](P^U + G) + η_6‖B‖² ≤ γ_e^{−1}(P^U + G) + η_6‖B‖². ∎
3.4 Theorem L (γ_exp) [P]. Assume (H1)–(H3) with α_* now also small enough for Lemma E and for (3.1) below. For all B̃ in the reduced variables on Λ (B̃ = 0 off Λ),
 ⟨B̃, A_exp B̃⟩ ≥ γ_exp‖B̃‖², γ_exp := ½c̄γ_e, c̄ := min(½, c_G).
Proof. B := CB̃ satisfies Q_1(U_1)B = 0 [V p. 267–268; Q̃ = CMP 99's Q_1(U_1), I-strong]. By 1.6, 3.1 and R4:
 ⟨B̃, A_expB̃⟩ = E(B) − ⟨B, Δ_JB⟩ + c_GG ≥ (1 + ε_7)^{−1}[½P^U + c_GG] − (ε_7a + c_J)‖B‖² ≥ (1 + ε_7)^{−1}c̄γ_e(1 − η_6)‖B‖² − (ε_7a + c_J)‖B‖².
 Choose α_* so that η_6 ≤ ¼, ε_7 ≤ ⅛, ε_7a + c_J ≤ c̄γ_e/6. Then the bracket is ≥ (8/9)(3/4)c̄γ_e − c̄γ_e/6 = ½c̄γ_e. Finally ‖CB̃‖² ≥ ‖B̃‖² (A3 §6.5: C is the identity on the kept variables). ∎
3.5 Dirichlet compression and ∂Z_0 [P]. Theorem L is a form bound on the subspace {B̃ = 0 off Λ}. For Λ = Z_0 it is the lower bound of the compression Z_0A_expZ_0, which is CMP 116's precision (S2_G1_V7 B3.2). Compression cannot lower a form bound. The concern "Dirichlet breaks gauge invariance at ∂Z_0" does not apply: the proof never uses gauge invariance of A_exp; it uses the gauge term only through Lemma E, which is block-local, and Z_0 is a union of M-cubes, hence of whole blocks. Blocks outside Z_0 carry B = 0 and G_y = 0. Corridors crossing ∂Z_0 are handled by A3 Lemma 4.3 exactly as in the axial case. Inherited [I]: dist(Z_0, Λ_k^c) > RM (A3 §0.1).
3.6 Uniformity [P]. γ_exp depends on d, L, c_G only. It is uniform in k, η, Z_0, M ≥ M_1, and regular U, as in A3 §6.6.
3.7 Numerical check at U = 1 (numerics/wc_exp/poincare_exp.py, periodic lattice, scalar fields) [V numerics]:
 d=2 L=3 N=3: min(P+G | Q=0) = 0.1330; N=4: 0.1308 (stable in volume). d=2 L=5 N=2: 0.1145. d=3 L=3 N=2: 0.0843.
 Without G: min(P | Q=0) = 0 (to 1e−14) in all cases — the gauge zero modes. Axial comparison: 0.306, 0.268, 0.066, 0.084. Block-only min(P_y + G_y): 0.219 (d=2,L=3), 0.149 (d=2,L=5), 0.126 (d=3,L=3). All far above the proved 1/K_b ~ 1e−6–1e−7 (the proof constants are crude, not sharp).
- (§3 done) γ_exp > 0 PROVED, uniform; Lemma E is the only new estimate; numerics confirm positivity and volume stability.

## 4. Walk (tree) expansion of A_exp itself: input (W_N) [P given the shared expansions]
4.0 Shared inputs (gauge-fixing free, §2.3). (W_G1) tree expansion of G_1 with (3.108)-form bounds [R: CMP 99 Thm 3.10, p. 422, p. 427 "tree-like structure … estimates are the same as in (3.108)"; SOURCES_WG Thm WG-G for the G-level]. (A1-W) tree expansion of (QG_1Q*)^{−1} [P mod (W_G1): A1_WALK §6.3(a), §7.1], rate δ_W, step ρ_W ≤ K_W/M_1. (I5) J local, |J| = O(Mα_0) (SOURCES_WG 2.0). Concatenation lemma SOURCES_WG 2.3 [P].
4.1 The four pieces of A_exp = C*[(QG_1Q*)^{−1} − a − Δ_J + c_G𝒢*𝒢]C.
 (a) C = I − hLQ̃ (§2.1): kernel supported within unit distance 2L, U-dependence on the two blocks and the corridor. One local block (one M_1-cube domain; L ≪ M_1).
 (b) c_G𝒢*𝒢 and a·I: block-local (§1.5(a)), one local block each. |kernel| ≤ c_Gc_𝒢.
 (c) (QG_1Q*)^{−1}: the (A1-W) tree sum.
 (d) Δ_J: ⟨B, Δ_JB⟩ = 2⟨hC̃^{(2)}(B), H_1*J⟩, C̃^{(2)} quadratic and local (range ≤ L, the second-order part of the one-step average), h local. So Δ_J(b, b′) = Σ_{b_0}K_{b_0}(b, b′)·(H_1*J)(b_0), K_{b_0} supported within 2L of b_0 [I-strong: locality of C̃^{(2)}, as R4 in A3]. H_1*J = (QG_1Q*)^{−1}QG_1J is a product of tree-expanded blocks and the local J (concatenation). So Δ_J = Σ_ω Δ_{J,ω}: each term has kernel in the first domain (near b_0) and a dangling branch ω ending at a J-insertion; U-dependence on all domains of ω; one factor O(Mα_0) from J. This is a tree term (local vertex + branch), the same shape as Balaban's G_1 trees.
4.2 Result (W_N) [P given 4.0]. At real regular U, A_exp = Σ_ω A_ω, a tree expansion with (L1)–(L2) (tree form: kernel supported in the root domain(s), U on the union of X̃^5 of all domains), and for θ ∈ (0, 1) fixed,
 |A_ω(b, b′)| ≤ B_A ρ_A^{|ω|} e^{−δ_A d(ω, b, b′)}, δ_A := (1 − θ)min{δ_W, δ_{G1}}, ρ_A := max{ρ_W, ρ_*, c(d, L)M_1^{−1}},
 B_A = B_A(d, L, a, a_0) (concatenation 2.3(c): products of ≤ 5 blocks per term of the bracket and of C*, C; at most 4 junctions, each paid by c_1(θδ)). Summed: Σ_ω|A_ω(b, b′)| ≤ 2B_Ae^{−δ_A|b−b′|} for C′_𝒟c_1ρ_A ≤ ½ (counting as SOURCES_WG 2.6–2.7; trees: count branches as in A1_WALK §6.3(a)).
 Corollary [P]: (K_A^r) — the real decay of A, previously [R: A7 ⇐ A1 + A18] — now holds for the exponential-gauge A_exp from (W_N) alone: ‖A_exp‖_ρ ≤ 2B_AS(δ_A − ρ).
4.3 Upper bound [P]. ‖A_exp‖ ≤ 2B_AS(δ_A) =: Γ_1 (Schur). Also directly: ‖C‖²(‖(QG_1Q*)^{−1}‖ + a + c_J + c_Gc_𝒢).
4.4 Z_0-compression [P]. A_Z := 1_{Z_0}A_exp1_{Z_0} (reduced variables in Z_0). Then A_Z = Σ_ω1_{Z_0}A_ω1_{Z_0}: the same domains, the same U-locality, the same bounds (restriction of kernels only). So (W_N) holds for A_Z with identical constants, uniformly in Z_0.
- (§4 done) A_exp and A_Z have tree expansions built only from gauge-fixing-free objects plus local pieces (C, 𝒢*𝒢, a).

## 5. Walk expansion of C^{(k)}(Z_0) = A_Z^{−1} at real U [P given §3, §4]
5.1 Set-up. Run A1_WALK §4–§5 with: lattice 𝔅 → reduced bonds in Z_0 (one scale, m ≡ 1, μ ≡ 1, no S-rescaling); N̂ → A_Z; (W_G) → (W_N) of 4.4 (rate δ_A, B_A in place of δ_G, c_+); (C) → Theorem L (c_− → γ_exp). Cover: cubes □ of side K_1M_1 meeting Z_0; h_□ := φ_□/(Σφ_{□′}²)^{1/2} restricted to Z_0, φ_□ tent functions; on one scale this gives Σh_□² = 1 on Z_0 and |h_□(b) − h_□(b′)| ≤ (c_h/M_1)|b − b′| [P; the multiscale Lipschitz issue A1_WALK O2 does not arise].
5.2 Local operators [P]. For □ meeting ∂Z_0 use 1_{□∩Z_0}A_Z^{(□)}1_{□∩Z_0} (truncated tree sum, A1_WALK 4.2). Local positivity Re ≥ ½γ_exp by restriction of Theorem L minus the truncation error 2B_AΣe^{−2δ_AM_1} (A1_WALK 4.2(iv)); restriction to □ ∩ Z_0 is one more compression, so straddling cubes need nothing new. Lemma CT (accretive) gives C_□ with ‖C_□‖_ε ≤ 4/γ_exp, ε := min{½δ_A, γ_exp/(8B_AΣ(½δ_A))}. So A1_WALK open point O3 (the Z_0-compressed variant) is closed here: no extra piece is needed.
5.3 Parametrix and series [P]. A1_WALK 5.1–5.5 + 6.2 verbatim (1_□ → 1_{□∩Z_0}, I → I_{Z_0}): A_ZP = I_{Z_0} + Σ_□F_□, ‖F_□‖_ε ≤ K_F/M_1, and
 C^{(k)}(Z_0) = Σ_ωT_ω, |T_ω(b, b′)| ≤ (4/γ_exp)(c_1ρ)^{|ω|}e^{−½ε d(ω, b, b′)}, ρ := max{K_F/M_1, ρ_A c_1},
 absolutely convergent for M_1 ≥ M_W; Σ_ω|T_ω(b, b′)| ≤ (8/γ_exp)e^{−½ε|b−b′|}. Domains: □⁺ for cubes meeting Z_0, and the (W_N) domains (which may leave Z_0). U-dependence of T_ω on ∪X̃_i^5.
5.4 Regrouping into the CMP 116 p. 13 form [P given I-geom]. P. 13 [V text]: one domain X_0 with X̃_0^5 = Z̃_0 (Z̃_0 = Z_0 with adjacent M-cubes adjoined; X̃^5 = X with 5 layers of M_1-cubes adjoined); all other domains X with dist(X, Z_0) > ⅔M. Construction: call a domain "near" if X ⊂ X_0. Merge every maximal run of consecutive near domains of ω into one factor localized in X_0, and sum over all walks that give the same merged sequence. The merged factor depends on U only on X̃_0^5 = Z̃_0, and the sum converges absolutely (bounded by the absolute walk sum). A domain X ⊄ X_0 has a point at distance > M − 5M_1 from Z_0 and diameter ≤ c_XM_1, so dist(X, Z_0) > M − (5 + c_X)M_1 ≥ ⅔M if M ≥ 3(5 + c_X)M_1, i.e. R_1 ≥ 3(5 + c_X) in R_1M_1 ≤ M (CMP 116 p. 3) [P; I-geom: the ℓ^∞/graph-metric reading of "adjoined cubes"]. After merging, each far domain still carries its step factor c_1ρ and its path length, so the per-walk bound keeps the (3.108) form with the far domains counted; the merged X_0 factor carries the O(1) constant 8/γ_exp. This is exactly the structure the s-rule (CMP 116 p. 3, p. 13) and A2_R2 §3 consume.
5.5 Resolvent bonus [P-sketch]. CMP 116 p. 13 also needs (x + C*Δ_kC)^{−1}, x ≥ 0, to expand (C^{(k)})^{1/2}. x·I is diagonal: it does not enter the Combes–Thomas error and it raises the lower bound to γ_exp + x. So 5.2–5.4 hold for (x + A_Z)^{−1} uniformly in x ≥ 0, with 4/γ_exp → 4/(γ_exp + x).
- (§5 done) real-U walk expansion of C^{(k)}(Z_0) in the exponential gauge, in Balaban's X_0 form, from Theorem L + (W_N) + A1_WALK machinery; Thm 3.15 not used.

## 6. The complex α′-space [P given complex (W_N) sup bounds]
6.0 Domains. α-space ⊂ α′-space ⊂ α″-space: U_c = (U′U, J), U′ = exp(iL^{−1}ηA′), |A′|, |∇A′| < α_1^{(·)}, |J| < α_0^{(·)} (CMP 116 p. 15 [V, per S2_G1_V7_VERIFY V3]; CMP 109 (1.13)–(1.14)). α″ := the analyticity domain on which the shared operators of §4.0 have their tree expansions with sup bounds [R: CMP 99 Sect. B "theorems hold for complex U′U", Thm 3.4 domain (3.37); A1_WALK §6.4 for A1-W]. On α″, (W_N) holds with constants B_A″, ρ_A″, δ_A″ (concatenation is algebraic and works for complex kernels; Ad(e^{iA′}V) is no longer orthogonal, ‖Ad‖ ≤ e^{2|A′|}, absorbed in B_A″) [P given R].
6.1 Perturbation of the form [P]. A_exp(U_c) is the analytic continuation; it is complex symmetric, not Hermitian. For complex u, ⟨u, A_exp(U)u⟩ ≥ γ_exp‖u‖² (A_exp(U) real symmetric). So
 Re⟨u, A_exp(U_c)u⟩ ≥ (γ_exp − ‖A_exp(U_c) − A_exp(U)‖)‖u‖².
 Bound on the difference, two routes:
 (a) explicit pieces: for 𝒢, by (E) ‖Ad(e^{iA′_b}) − 1‖ ≤ e^{2|A′_b|} − 1 ≤ 4α′_1 (α′_1 ≤ ¼), so along a contour ‖Ad(V_c(Γ_{<b})) − Ad(V(Γ_{<b}))‖ ≤ (1 + 4α′_1)^{dL/2} − 1 ≤ 4dLα′_1, and ‖𝒢(U_c) − 𝒢(U)‖ ≤ 4dLα′_1c_𝒢^{1/2}; C = I − hLQ̃ likewise O(α′_1) (Q̃ explicit). 
 (b) the shared pieces (QG_1Q*)^{−1}, Δ_J: Cauchy on f(t) := A(U(t)), U(t) := (exp(itL^{−1}ηA′)U, tJ), analytic and bounded by Γ_1″ := 2B_A″S(δ_A″) for |t| < t″ := min(α_0″/α_0′, α_1″/α_1′). Then ‖f(1) − f(0)‖ ≤ Γ_1″/(t″ − 1) (S2_G1_V7 B1.3 Route C argument, here on A, not on C).
 So ‖A_exp(U_c) − A_exp(U)‖ ≤ K_A(α′/α″) with K_A = O(Γ_1″) for α′/α″ ≤ ½, α′/α″ := max(α_0′/α_0″, α_1′/α_1″).
6.2 Accretive lower bound [P]. If K_A(α′/α″) ≤ ½γ_exp (a smallness of α′ relative to the fixed α″, after L), then on the whole α′-space
 Re⟨u, A_Z(U_c)u⟩ ≥ ½γ_exp‖u‖² (compression keeps it).
6.3 (W^c) [P]. §5 uses only: (W_N) bounds (now B_A″ etc., valid on α′ ⊂ α″), the accretive lower bound (½γ_exp), and the accretive Lemma CT (A1_WALK 4.3: no symmetry needed). So §5 runs verbatim at every point of the α′-space with γ_exp → ½γ_exp:
 C^{(k)}(Z_0; U_c) = Σ_ωT_ω(U_c), |T_ω(b, b′)| ≤ (8/γ_exp)(c_1ρ″)^{|ω|}e^{−½ε″d(ω, b, b′)}, ε″ := min{½δ_A″, γ_exp/(16B_A″Σ(½δ_A″))},
 with the CMP 116 X_0 structure (5.4) and the s-rule locality. Each T_ω(U_c) is analytic in U_c (finite products of analytic factors; local inverses C_□(U_c) analytic by accretivity). The sum converges uniformly, so C^{(k)}(Z_0; ·) is analytic on the α′-space and equals A_Z(U_c)^{−1} there (this is (D) of S2_G1_V7 B1.1, now proved directly instead of by the identity theorem).
6.4 Relation to the two-constant argument [P]. S2_G1_V7 B1.6 / VERIFY V4 needed real decay + a complex sup to get complex decay at rate ωδ. Here no two-constant step is used: accretivity at complex points (6.2) gives the Combes–Thomas decay directly at each complex point, at the full rate ½ε″. The two-constant route is a valid alternative for kernel decay only; it does not give walk-level (s-rule) structure, so it is weaker for (W^c).
6.5 Consequences for S2_G1_V7 B1.1 [P]. (W^c)(a): |C(1; U(t))(b, b′)| ≤ (16/γ_exp)e^{−½ε″|b−b′|} on the disc |t| ≤ t_0 (α′-space), so B_C = 16/γ_exp, δ_0 → ½ε″. (W^c)(b): the W_σ bound of A2_R2 §3 (ii)–(iv) from the walk form 6.3 with the X_0 merging 5.4, at rate ½ε″ in place of δ_0 (consumers tolerate a fixed rate, A1_WALK §7.4).
- (§6 done) complex α′-space covered by accretivity; required order L → γ_exp, α″ (Balaban, fixed) → K_A → α′ → α.

## 7. Conclusion
Theorem W^c-exp [P given the inputs in 7.2]. Fix d, L (odd, as in CMP 109 p. 252). There are M_1, M (with R_1 ≥ 3(5 + c_X)), α_*, α′ ≪ α″, and constants γ_exp = ½min(½, c_G)γ_e(d, L) > 0, ε″ > 0, B < ∞, such that for every regular background and every Z_0 (union of M-cubes, dist(Z_0, Λ_k^c) > RM), at every point of the complex α′-space:
 (i) Re C*Δ^{(k)}C ≥ ½γ_exp on fields supported in Z_0 (≥ γ_exp at real points);
 (ii) C^{(k)}(Z_0) = (Z_0C*Δ^{(k)}CZ_0)^{−1} has a walk (tree) expansion in Balaban's CMP 116 p. 13 form — one domain X_0 with X̃_0^5 = Z̃_0, all other domains at distance > ⅔M from Z_0 — with (L1)–(L2) and |T_ω(b, b′)| ≤ B(c_1ρ)^{|ω|}e^{−½ε″d(ω, b, b′)}, absolutely convergent;
 (iii) the same for (x + Z_0C*Δ^{(k)}CZ_0)^{−1}, x ≥ 0, uniformly in x.
 Here Δ^{(k)} is the exponential-gauge operator of CMP 109 (2.11). The proof does not use CMP 99 Theorem 3.15, (3.185)–(3.187), or any transfer from the axial gauge.
7.1 What carried the proof.
 - The gauge-fixing term is block-local (§1.5): 𝒢 = averaged covariant line integral from the block centre over staircase contours inside B(y). So locality is not an obstruction.
 - The only gauge-fixing-dependent estimate is the lower bound. It reduces to the block inequality Lemma E (§3.2), which uses the axial tree only as a proof device inside one block; the corridor part (A3 Lemma 4.3) and step (i) (A3 (6.1)) do not see the gauge fixing.
 - The Dirichlet restriction is harmless: compression keeps the lower bound; Lemma E is block-local and Z_0 is a union of blocks; no gauge invariance of A_exp is used anywhere.
 - All other operators in Δ^{(k)} are defined before any gauge fixing and have the same expansions in both papers (§2.3).
 - The plan's "A_exp restricted to the axial slice equals A_ax" is FALSE (§2.2): Γ ≠ 0 on the slice. The direct route makes this irrelevant.
7.2 Inputs (inherited, not proved here).
 [R] (W_G1) tree expansion of G_1 at real and complex U (CMP 99 Thm 3.10, p. 422, p. 427, Sect. B, Thm 3.4).
 [P mod R, conditional] A1-W for (QG_1Q*)^{−1} (A1_WALK, VERIFIED construction), with its global bound (C) [conditional per A1_WALK_VERIFY (6)] and [I] items O2 (moot here: one scale), Q-locality, κ_1.
 [P with R/I inputs] A3: step (i) inputs R1, R-Δ′, R-Δ2 (needs the (3.136) form, A3_VERIFY), R2 [I], R4; Lemma 4.3 inputs R2′, R3. A3 Lemma 4.2 (exact) used inside Lemma E.
 [I-strong] Term-by-term match of (2.11) with (3.156) + exponential term; Q̃ (CMP 109) = Q_1(U_1) (CMP 99); locality of C̃^{(2)}; c_G > 0 normalization.
 [I-geom] Z̃_0, X̃^5 metric reading; R_1 ≥ 3(5 + c_X).
 [I] dist(Z_0, Λ_k^c) > RM (inherited from A3 and S2_G1_V7 B3.3(e)).
 [I-order] α′ ≤ α″·γ_exp/(2K_A) must be compatible with Balaban's constants: α″ is CMP 99's fixed analyticity domain, α′ is then chosen after L; CMP 116 p. 15 only asks α′ ≫ α, so α is chosen after α′. No conflict found; not checked against every later use of α′ in CMP 116.
 [I, inherited WG-1] free M^{−½|ω|} at J-junctions needs α_0 ≤ c′M^{−3}, or use the exponential.
7.3 Rate. ½ε″ with ε″ = min{½δ_A″, γ_exp/(16B_A″Σ)}: a fixed (d, L, a, a_0)-rate, not Balaban's ½δ_0. Consumers tolerate it (A1_WALK §7.4; S2_G1_V7 B1.5 uses (1 − θ)δ_A).

## Final ledger
[V] CMP 109 p. 252 (G(y, x) staircase contours inside B(y)); p. 254 (0.14) exp[−(1/2α)|U(y, x) − 1|²] = exp[−(1/α)(1 − Re tr U(y, x))], residual gauge u(y) = 1 on T^{(1)}; p. 255 (0.16)–(0.19) α = g_k², sum over y ∈ T^{(k+1)}, x ∈ B(y)∖{y}; p. 266 (2.5) G = ½G^{(2)} + G_3, G^{(2)} = Σ|B̃′(y, x)|²; p. 267 (2.10)–(2.11) and "replaced by the exponential one"; p. 268 C^{(k)} = (C*Δ^{(k)}C)^{−1}. CMP 116 p. 12–13 text (X̃_0^5 = Z̃_0, dist > ⅔M, (x + C*Δ_kC)^{−1}).
[P] §1.5: 𝒢 explicit, block-local, ‖𝒢‖² ≤ c_𝒢 = d(L−1)L^d/2, 𝒢D^Vλ = avg Ad(V(Γ))λ(x) − λ(y).
[P] §2: Γ ≠ 0 on the axial slice (explicit example); exact Schur form; the shared operators carry no gauge fixing.
[P] §3: Lemma E (block inequality with gauge term, K_b ≤ 136d³L^{2d+1}); Lemma P_exp; Theorem L: A_exp ≥ γ_exp = ½min(½, c_G)γ_e, γ_e^{−1} = K_b(1 + 6d/m_L) + 6/m_L; Dirichlet compression harmless.
[V numerics] §3.7: U = 1 minimal eigenvalues 0.13 (d=2,L=3; volume-stable), 0.11 (d=2,L=5), 0.084 (d=3,L=3); 0 without the gauge term.
[P given inputs] §4: (W_N) for A_exp and A_Z; corollary (K_A^r) for the exponential gauge.
[P given §3–§4] §5: walk expansion of C^{(k)}(Z_0), X_0 regrouping, resolvent bonus; closes A1_WALK O3.
[P given complex (W_N)] §6: accretive lower bound and (W^c) on the α′-space; closes A1_WALK O4 at the A_Z level; (D) proved directly; two-constant step not needed.
Status: (W^c) in the exponential gauge PROVED [P] relative to the inputs of 7.2. Theorem 3.15's transfer is removed from the chain. The [R] content of (W^c) is now only the gauge-fixing-free G_1-level expansions (real + complex) plus A1-W's (C). No STALL. Needs an independent verifier before it carries weight; priority checks: Lemma E steps (c)–(d) (curl and 𝒢 of a gauge direction with the CMP 99 transport conventions), §4.1(d) Δ_J tree shape, §5.4 geometry.
- (§7 done) file complete.
