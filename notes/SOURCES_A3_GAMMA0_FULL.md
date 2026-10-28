IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_A3_GAMMA0_FULL — Theorem A3 (γ_0 > 0 for C*Δ_k(U)C) with a complete proof

Status: complete 2026-10-28 (Opus), not independently verified. Sections appended one per tool call.
Inputs read: SOURCES_A3_GAMMA0.md §1–§7, SOURCES_A3_GAMMA0_VERIFY.md (all), page images CMP 99 pp. 392, 397–400, 418–428; CMP 96 pp. 243–246; CMP 95 pp. 28–30.
Firewall: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags: [V] read on a page image; [P] proved here; [R] cited published result, not re-proved; [I] open input.

Headline. Theorem A3 holds with γ_0 = γ_L/4, γ_L = m_L/(12d²L^d), m_L = min(2(1 − cos(π/L)), 1/L). For 2 ≤ L ≤ 9, m_L = 1/L and γ_0 = (48d²)^{−1}L^{−d−1}. Two changes against the earlier files: (a) the κ_π gap is REMOVED, not bounded: the minimizer already satisfies RD*A_* = 0 (Lemma 5), so no oblique projection appears; (b) Balaban's slab bound inside (2.127) is false for L ≥ 10 (and (2.127) itself for L ≥ 30), so Lemma 2.4's printed constant is proved here only for L ≤ 9; for L ≥ 10 the proved constant is smaller by the factor 2L(1 − cos(π/L)) ≥ 4/L (§3.4).

## §0 Setting, notation, and statement

0.1 Lattices and scales. T_η is the fine lattice with spacing η. Units are chosen so that L^kη = 1 near Λ. Then the unit lattice T_1 is the lattice of k-blocks. Λ ⊂ Λ_k is a union of M-blocks with dist(Λ, Λ_k^c) > RM [V CMP 99 p. 427]. Unit bonds are b, c; unit plaquettes are p. A coarse (L-)block is B(y) = y + {0, …, L−1}^d, y ∈ Λ′ := LZ^d ∩ (block corners in Λ). Fine bonds and plaquettes are b̂, q.

0.2 Fields and norms. Fields take values in the Lie algebra g with the inner product X·Y = tr XY (tr 1 = 1) [V p. 392]. |·| is the norm. For g ∈ G, Ad(g) is orthogonal: |Ad(g)v| = |v|. Unit fields: ‖B‖² = Σ_b |B(b)|². Fine fields: ⟨X, Y⟩ = Σ_b̂ η^d X(b̂)·Y(b̂) [V (3.11)]. Weighted norm: ‖X‖²_𝔴 = Σ_j Σ_{b̂ ∈ Λ_j-region} (L^jη)^{−2}η^d|X(b̂)|². Near Λ the index is j = k and the weight is 1. For a set W of fine bonds, ‖X‖²_W = Σ_{b̂∈W} η^d|X(b̂)|².

0.3 Curls. For a background V on a lattice, the covariant curl of a 1-form Y on a plaquette p is
 (∂^V Y)(p) = Σ_{b∈∂p} σ_{p,b} Ad(T_{p,b}) Y(b), σ_{p,b} = ±1, (C)
where T_{p,b} is a product of at most 3 link variables of V along ∂p, and T_{p,b} = 1 when V = 1. Balaban's D (3.8)–(3.9) has this form, with a factor η^{−1} on the fine lattice: ‖D_UX‖² = Σ_q η^{d−2}|(∂^U X)(q)|² [V p. 392]. On the unit lattice ∂_1^{U_1} is (C) with V = U_1, and ∂_1 := ∂_1^{1}.

0.4 Operators of CMP 99 §E [V pp. 420–428]. Q = Q_k(U) is the multiscale averaging of (3.110); near Λ it is the k-step average onto T_1. Δ = Δ(U) on 1-forms, with ⟨A, ΔA⟩ = ‖D_UA‖² + ⟨A, Δ′A⟩ (3.10). Δ^{(2)} is defined by ⟨A, Δ^{(2)}A⟩ = 2⟨HC^{(2)}(A), J⟩ (3.134). R = I − P is the orthogonal projection of CMP 95 (1.69)–(1.70) and CMP 99 (3.118). G′ is the operator of Theorem 3.1. G_1 is defined by (3.128):
 ⟨A, G_1^{−1}A⟩ = ⟨A′, ΔA′⟩ − ⟨A′, Δ^{(2)}A′⟩ + ‖RD*A‖² + a‖QA‖², A′ := A − DG′RD*A. (3.128)
Δ_k is defined on the domain 𝒟 := {B : B = 0 on Λ^c, B = 0 on ∪_{y∈Λ′}A_x(y), Q_1B = 0} by
 ⟨B, Δ_kB⟩ = ⟨B, (QG_1Q*)^{−1}B⟩ − a⟨B, B⟩ − ⟨B, Δ_J B⟩, ⟨B, Δ_JB⟩ := 2⟨H_1D̃^{(2)}(B), J⟩. (3.156)
C is the linear map B̃ ↦ B of p. 428: B̃ lives on Λ̃ = Λ \ (∪A_x(y) ∪ ∪_c B(c)∩c), and CB̃ ∈ 𝒟.

0.5 Hypotheses (H).
 (H1) U satisfies the regularity conditions (3.35) and (3.36) [V p. 396] with parameters M, α_0.
 (H2) M ≥ max(M_1(d, L), L), with M_1 from CMP 99 Theorem 3.1.
 (H3) Mα_0 ≤ α_*(d, L), a small constant fixed in §6.
 Geometric consequence of (H1)–(H2) [P]. The cubes of (3.35) have side O(1)M with O(1) ≥ 10 and are unions of M-blocks [V p. 396]. So every set of unit ℓ^∞-diameter ≤ 8M inside the index-k region lies in one such cube. All sets used below have unit ℓ^∞-diameter ≤ 4L ≤ 8M by (H2) (L ≥ 2). In each such cube there is a gauge u with U^u = e^{iηA_bg} and |A_bg| ≤ c_3Mα_0 in unit units, c_3 = O(1) (3.35) at j = k. We call it a regular gauge for the set.

0.6 Theorem A3. Assume (H1)–(H3) and the inputs R1–R5 of §7. Then for every B̃,
 ⟨B̃, C*Δ_kC B̃⟩ ≥ γ_0‖B̃‖², γ_0 = γ_L/4 = m_L/(48d²L^d),
with m_L := min(λ_1(L), 1/L), λ_1(L) := 2(1 − cos(π/L)) ≥ 4/L². For 2 ≤ L ≤ 9, γ_0 = (48d²)^{−1}L^{−d−1}. The constant does not depend on k, η, Λ, M, α_0, or U.

## §1 Lemma 1 (step (i), free case): ‖∂_1Q_k(1)X‖² ≤ ‖D_1X‖²

1.1 The free averaging. One step at U = 1 is (CMP 96 (2.125) [V], same form in CMP 95 (1.8), CMP 98 (14)):
 (Q^{(1)}Y)(c) = L^{−d} Σ_{x∈B(c_−)} L^{−1} Σ_{s=0}^{L−1} Y(x + se_μ, x + (s+1)e_μ), c = ⟨c_−, c_− + Le_μ⟩,
in the units of the finer lattice, followed by rescaling. In the units of the coarser lattice this is
 (Q^{(1)}Y)(c) = ⨍_{x∈B(c_−)} ∫_{[x, x+e_μ]} Y, where ∫_{[x,x+e_μ]}Y := Σ_{steps} (step length)·Y(step).
Claim [P]. Q_k(1) = (Q^{(1)})^k satisfies (Q_k(1)X)(c) = ⨍_{x∈B_k(c_−)} ∫_{[x, x+e_μ]} X, with B_k(y) the k-block of y (L^{kd} fine points, side 1).
Proof by induction on k. The case k = 1 is the formula above. Assume it for k − 1, on the lattice of spacing Lη. Then (Q_kX)(c) = ⨍_{y′∈B(c_−)} Σ_{s=0}^{L−1} L^{−1}·(Q_{k−1}X)(y′ + sL^{k−1}η e_μ) in unit units. By the hypothesis each term is ⨍_{x∈B_{k−1}(y′+s…)} ∫ over a segment of length L^{−1}. The (k−1)-blocks along the line are translates of B_{k−1}(y′) by sL^{k−1}η e_μ. So the sum over s of the averages equals the average over x ∈ B_{k−1}(y′) of the integral over [x, x + e_μ]. Averaging over y′ ∈ B(c_−) gives the average over x ∈ B_k(c_−). ∎
Only one property is used below: the block of a translated bond is the translated block.

1.2 Stokes identity [P]. Fix a unit plaquette p with corner y in the (μ, ν) plane. Its bonds are c_1 = ⟨y, y+e_μ⟩, c_2 = ⟨y+e_μ, y+e_μ+e_ν⟩, c_3 = ⟨y+e_ν, y+e_μ+e_ν⟩, c_4 = ⟨y, y+e_ν⟩. Here (∂_1Y)(p) = Y(c_1) + Y(c_2) − Y(c_3) − Y(c_4). The blocks are B_k(y), B_k(y)+e_μ, B_k(y)+e_ν, B_k(y). Substitute x ↦ x + e_μ, x + e_ν in the second and third averages. Then
 (∂_1Q_k(1)X)(p) = ⨍_{x∈B_k(y)} ∮_{∂S_x} X, S_x := x + [0,1]e_μ + [0,1]e_ν.
S_x is a union of L^{2k} = η^{−2} fine (μ, ν)-plaquettes q. For one fine plaquette, ∮_{∂q}X = η·(∂^1X)(q) (the four-term sum times the step length η). Interior fine bonds of S_x occur twice with opposite signs. So
 ∮_{∂S_x}X = Σ_{q⊂S_x} η (∂^1X)(q). (1.1)
This is exact (discrete Stokes).

1.3 Cauchy–Schwarz [P]. From (1.1), |(∂_1Q_k(1)X)(p)| ≤ ⨍_x Σ_{q⊂S_x} η|(∂^1X)(q)|. The weights η over q ⊂ S_x and the average over x have total mass ⨍_x Σ_q η² = 1. By Cauchy–Schwarz for this measure,
 |(∂_1Q_k(1)X)(p)|² ≤ ⨍_{x∈B_k(y)} Σ_{q⊂S_x} |(∂^1X)(q)|². (1.2)

1.4 Counting [P]. Sum (1.2) over all unit (μ, ν)-plaquettes p (fixed μ < ν). The weight ⨍_x is L^{−kd} = η^d per pair (x, q). A fine (μ, ν)-plaquette q lies in S_x if and only if x_ρ = q_ρ for ρ ≠ μ, ν, and x_μ, x_ν each take one of L^k = η^{−1} values. Each such x lies in exactly one block B_k(y). So q receives total weight η^d·η^{−2} = η^{d−2}. Hence
 Σ_{p∥(μν)} |(∂_1Q_k(1)X)(p)|² ≤ Σ_{q∥(μν)} η^{d−2}|(∂^1X)(q)|² = ‖(D_1X)_{μν}‖².
Sum over μ < ν. ∎

Lemma 1. For every fine X, ‖∂_1Q_k(1)X‖² ≤ ‖D_1X‖². The constant is c_* = 1, for all k, d, L. If the sum runs over a set 𝒫 of unit plaquettes, the right side may be restricted to the fine plaquettes inside ∪_{p∈𝒫, x} S_x.
Corollary 1. At U = 1, min{‖D_1X‖² : Q_k(1)X = B} ≥ ‖∂_1B‖². This is the lower half of CMP 95 (1.67) with γ_0′ = 1 [P]. The constant 1 is sharp in infinite volume (VERIFY V4 numerics: c_* → 1 as the volume grows).
Normalization note for 1.1. A fine field is a 1-form. Line integrals ∫_{[x,x+e_μ]} are invariant under the rescalings between lattices. So the induction compares line integrals only, and no power of L appears.

## §2 Lemma 2 (step (i), covariant)

2.1 Inputs used here.
 (Cov) [V CMP 99 p. 396, (3.32)–(3.34)]. Q_k(U) is gauge covariant: for a fine gauge u, Q_k(U^u)X^u = (Q_k(U)X)^{u_1}, with u_1 = u restricted to the unit lattice points; U_1(U^u) = U_1(U)^{u_1}. The curls (C) are covariant: |(∂^{V^u}Y^u)(p)| = |(∂^VY)(p)|.
 (R2) [I, the A18 piece]. Let c be a unit bond near Λ and u a regular gauge for the 1-neighbourhood of c. Then |(Q_k(U^u)X)(c) − (Q_k(1)X)(c)| ≤ ε_Q (Q̂|X|)(c), where Q̂ is a positive linear map, supported within unit distance 1 of c, with Σ_c (Q̂|X|)(c)² ≤ c_Q‖X‖²_W, and ε_Q ≤ c(d, L)Mα_0 uniformly in k.
 (R3) [R]. In the unit gauge u_1 induced by a regular fine gauge u, U_1^{u_1}(b) = e^{iA_1(b)} with |A_1(b)| ≤ c_4Mα_0 on the unit bonds of the cube, c_4 = c(d, L).
 Elementary fact (E) [P]. For |Y| ≤ ½: ‖Ad(e^{iY}) − 1‖ = ‖e^{i ad_Y} − 1‖ ≤ e^{‖ad_Y‖} − 1 ≤ e^{2|Y|} − 1 ≤ 4|Y|. For a product T of at most three such factors, ‖Ad(T) − 1‖ ≤ Σ‖Ad(factor) − 1‖ (telescoping, each Ad orthogonal).

2.2 Statement. Let 𝒫 be a set of unit plaquettes near Λ and W the fine bonds within unit distance 3 of ∪𝒫. For every fine X and every δ ∈ (0, 1],
 Σ_{p∈𝒫} |(∂_1^{U_1}Q_k(U)X)(p)|² ≤ (1 + δ)‖D_UX‖²_W + 2(1 + δ^{−1}) ε_2² ‖X‖²_W, (2.1)
 ε_2² := 1152(d−1)c_3²(Mα_0)² + 8(d−1)c_Q ε_e², ε_e := 12c_4Mα_0(1 + ε_Q) + ε_Q.
Here ‖D_UX‖²_W := Σ_{q⊂W} η^{d−2}|(∂^UX)(q)|².

2.3 Proof. Fix p ∈ 𝒫. Choose a regular gauge u = u_p for the unit 3-neighbourhood of p (§0.5; ℓ^∞-diameter ≤ 7 ≤ 4L). Put X^u, U^u. By (Cov),
 |(∂_1^{U_1}Q_k(U)X)(p)| = |(∂_1^{U_1^{u_1}}Q_k(U^u)X^u)(p)|.
Write Y := Q_k(U^u)X^u. Insert the free objects:
 ∂_1^{U_1^{u_1}}Y = ∂_1Q_k(1)X^u + (∂_1^{U_1^{u_1}} − ∂_1)Y + ∂_1(Q_k(U^u) − Q_k(1))X^u.
Step 1 (the transport error on unit bonds). By (C), ((∂_1^{V} − ∂_1)Y)(p) = Σ_b σ(Ad(T_{p,b}) − 1)Y(b). By (R3) and (E), ‖Ad(T_{p,b}) − 1‖ ≤ 3·4c_4Mα_0. By (R2) and |X^u| = |X|, |Y(c)| ≤ (Q_k(1)|X|)(c) + ε_Q(Q̂|X|)(c). Note |(Q_k(1)X)(c)| ≤ (Q_k(1)|X|)(c) ≤ (Q̂|X|)(c) after enlarging Q̂ by Q_k(1) (allowed: Q_k(1) is positive, local, and Σ_c(Q_k(1)|X|)(c)² ≤ ‖X‖² by 2.4 below). So
 e_1(p) := |((∂_1^{V} − ∂_1)Y)(p)| + |(∂_1(Q_k(U^u) − Q_k(1))X^u)(p)| ≤ ε_e Σ_{c⊂p}(Q̂|X|)(c).
Step 2 (Stokes for X^u). By (1.1)–(1.2) applied to X^u: |(∂_1Q_k(1)X^u)(p)| ≤ ⨍_xΣ_{q⊂S_x} η|(∂^1X^u)(q)|.
Step 3 (the transport error on fine bonds). By (C) on the fine lattice, |(∂^1X^u)(q)| ≤ |(∂^{U^u}X^u)(q)| + Σ_{b̂∈∂q}‖Ad(T_{q,b̂}) − 1‖|X(b̂)|. In the gauge u the fine links are e^{iηA_bg} with |ηA_bg| ≤ ηc_3Mα_0 ≤ ½. By (E), ‖Ad(T_{q,b̂}) − 1‖ ≤ 12ηc_3Mα_0. By (Cov), |(∂^{U^u}X^u)(q)| = |(∂^UX)(q)|. So |(∂^1X^u)(q)| ≤ g_q + h_q with
 g_q := |(∂^UX)(q)|, h_q := 12ηc_3Mα_0 Σ_{b̂∈∂q}|X(b̂)|.
The bounds g_q, h_q do not depend on the choice of u_p.
Step 4 (combine one plaquette). Use the measure of 1.3 and Minkowski's inequality in its L²:
 |(∂_1^{U_1}Q_k(U)X)(p)| ≤ a_p + b_p + e_1(p), a_p := (⨍_xΣ_{q⊂S_x}g_q²)^{1/2}, b_p := (⨍_xΣ_{q⊂S_x}h_q²)^{1/2}.
Step 5 (square and sum). (a + r)² ≤ (1 + δ)a² + (1 + δ^{−1})r² and (b + e)² ≤ 2b² + 2e² give
 Σ_p|…|² ≤ (1 + δ)Σ_p a_p² + 2(1 + δ^{−1})(Σ_p b_p² + Σ_p e_1(p)²).
 (i) Σ_p a_p² ≤ Σ_{q⊂W} η^{d−2}g_q² = ‖D_UX‖²_W, by the counting of 1.4 (each fine q gets weight ≤ η^{d−2}).
 (ii) Σ_p b_p² ≤ Σ_q η^{d−2}h_q² ≤ Σ_q η^{d−2}·144η²c_3²(Mα_0)²·4Σ_{b̂∈∂q}|X(b̂)|². Each fine bond lies in 2(d−1) fine plaquettes. So Σ_p b_p² ≤ 1152(d−1)c_3²(Mα_0)²‖X‖²_W. The factor η² of the transport cancels the η^{−2} of the curl; this is why the error is relative to ‖X‖², with no η.
 (iii) Σ_p e_1(p)² ≤ ε_e²·4Σ_pΣ_{c⊂p}(Q̂|X|)(c)² ≤ 8(d−1)ε_e²Σ_c(Q̂|X|)(c)² ≤ 8(d−1)c_Qε_e²‖X‖²_W, since each unit bond lies in 2(d−1) unit plaquettes.
Insert (i)–(iii). This is (2.1). ∎

2.4 The contraction used in Step 1 [P]. Σ_{c∥μ}(Q_k(1)|X|)(c)² ≤ ‖X_μ‖². Proof: by Cauchy–Schwarz, (⨍_x Σ_s η|X(x+sηe_μ)|)² ≤ ⨍_xΣ_s η|X(x + sηe_μ)|² (mass ⨍Σ_s η = 1). A fine μ-bond is reached by exactly L^k pairs (x, s), each x in one block. Its total weight is L^{−kd}·η·L^k = η^d. ∎

2.5 Where the holonomy error enters. Only in Steps 1 and 3, through ‖Ad(T) − 1‖. Both errors are linear in the field and enter squared, so both are relative (∝ ‖X‖²_W). At U = 1, ε_2 = 0 and δ → 0 gives Lemma 1.

## §3 Lemma 3 (step (ii), free): CMP 96 Lemma 2.4, proof reconstructed

3.0 Setting [V CMP 96 pp. 244–245]. Λ = B(Λ′) is a union of L-blocks on the unit lattice. Every unit bond with both ends in Λ is either a block bond (both ends in one block B(y)) or a corridor bond (ends in adjacent blocks B(c_−), B(c_+), c = ⟨c_−, c_+⟩, c_+ = c_− + Le_μ). The corridor 𝒦(c) is the set of the L^{d−1} bonds ⟨x, x+e_μ⟩ with x in the face F(c) := {x ∈ B(c_−) : x_μ = c_{−,μ} + L − 1}. B is supported on block bonds of blocks in Λ′ and on corridors with at least one block in Λ′; Σ_c runs over these corridors. B vanishes on all other bonds.
The tree (axial condition (2.121)). T(y) := {⟨x, x+e_1⟩ ⊂ B(y)} ∪ {⟨x, x+e_j⟩ ⊂ B(y) : j ≥ 2, x_i = y_i for all i < j}. T(y) = ∪_{x∈B(y)} Γ_{y,x}, where Γ_{y,x} goes from y to x along e_d, then e_{d−1}, …, then e_1. This is the reading of p. 244: the telescoping there ends at (y_1, x_2, …) for e_2-bonds and at (y_1, …, y_{j−1}, x_j, …) for e_j-bonds [V]. Condition: B = 0 on T(y) for all y ∈ Λ′.
Notation: S_b := Σ_{block bonds}|B|², S_c := Σ_{corridor bonds}|B|², P := Σ_p|(∂_1B)(p)|², Qt := Σ_c|(Q_1B)(c)|².

3.1 Block inequality (2.123) [V statement, P proof]. For each y ∈ Λ′,
 Σ_{b⊂B(y)}|B(b)|² ≤ (d−1)(L−1)²L^{d−2} Σ_{p⊂B(y)}|(∂_1B)(p)|² ≤ dL^d Σ_{p⊂B(y)}|(∂_1B)(p)|².
Proof. Take b = ⟨x, x+e_j⟩ ⊂ B(y), j ≥ 2 (e_1-bonds are on T(y)). Walk from x: decrease x_1 to y_1 in unit steps, then x_2 to y_2, …, then x_{j−1} to y_{j−1}. One step from z to z − e_i (i < j) uses the plaquette p with corners w = z − e_i, w + e_i, w + e_j, w + e_i + e_j. Its bonds are b_1 = ⟨w, w+e_i⟩, b_2 = ⟨z, z+e_j⟩, b_3 = ⟨w+e_j, w+e_j+e_i⟩, b_4 = ⟨w, w+e_j⟩. At this step z_1, …, z_{i−1} already equal y_1, …, y_{i−1}. So b_1, b_3 (direction i) are on T(y) and vanish. Then (∂_1B)(p) = ±(B(b_2) − B(b_4)). At the end of the walk the bond ⟨z, z+e_j⟩ has z_i = y_i for i < j, so it is on T(y) and vanishes. Summing the steps,
 |B(b)| ≤ Σ_{steps}|(∂_1B)(p_s)|, n(x) := #steps = Σ_{i<j}(x_i − y_i) ≤ (j−1)(L−1).
Cauchy–Schwarz: |B(b)|² ≤ n(x)Σ_{steps}|(∂_1B)(p_s)|². All p_s lie in B(y) (all corners are in the box spanned by y and x).
Counting. A plaquette p in the plane (i, j), i < j, with lower corner w, is used only by bonds of direction j (direction j is the larger index). It is used by x only if x_ρ = w_ρ for ρ > i, w_ρ = y_ρ for ρ < i, and x_i ≥ w_i + 1. So at most L^{i−1}(L−1) ≤ (L−1)L^{j−2} points x use p. Hence
 Σ_x |B(x, x+e_j)|² ≤ (j−1)(L−1)·(L−1)L^{j−2} Σ_{p∥(i,j), i<j, p⊂B(y)}|(∂_1B)(p)|².
The plaquette sets for different j are disjoint. The largest factor is at j = d. ∎ (This reproduces Balaban's "(d−1)(L−1)²L^{d−2}" on p. 244.)

3.2 Face inequality [P]. Let f : F(c) → g, N = L^{d−1} points, ∇f on the edges of the (d−1)-dimensional grid F(c). Then
 Σ_{edges}|∇f|² + L^{−d}|Σ_F f|² ≥ m_L Σ_F |f|², m_L = min(λ_1(L), 1/L). (3.1)
Proof. The graph Laplacian of the path {0, …, L−1} has eigenvalues 2(1 − cos(πk/L)), k = 0, …, L−1, with eigenvectors cos(πk(t + ½)/L). The grid Laplacian is the Kronecker sum, so its eigenvalues are sums of these. The eigenvalue 0 has the constant eigenvector only; the next one is λ_1(L) = 2(1 − cos(π/L)). Apply this to each component of f in an orthonormal basis of g. Write f = f̄ + h, f̄ the mean, Σh = 0. Then Σ|∇f|² = Σ|∇h|² ≥ λ_1Σ|h|². Also L^{−d}|Σf|² = L^{−d}N²|f̄|² = L^{−1}·N|f̄|². And Σ|f|² = Σ|h|² + N|f̄|². So the left side ≥ λ_1Σ|h|² + L^{−1}N|f̄|² ≥ m_LΣ|f|². ∎
Bound: 1 − cos θ = 2sin²(θ/2) ≥ 2(θ/π)² on [0, π], so λ_1(L) ≥ 4/L². Numerically λ_1(L) ≥ 1/L exactly for 2 ≤ L ≤ 9 (L = 9: 0.1206 > 0.1111; L = 10: 0.0979 < 0.1). So m_L = 1/L for L ≤ 9.

3.3 Corridor inequality ((2.124)–(2.127), corrected constant) [P]. For each corridor c, with 𝒫(c) the (μ, ν)-plaquettes (ν ≠ μ) whose two μ-bonds lie in 𝒦(c),
 L^{−d}Σ_{p∈𝒫(c)}|(∂_1B)(p)|² + |(Q_1B)(c)|² ≥ (m_L/3)L^{−d}Σ_{b∈𝒦(c)}|B(b)|² − L^{−d}Σ_{b⊂B(c_−)}|B(b)|² − L^{−d}Σ_{b⊂B(c_+)}|B(b)|². (3.2)
Proof. Write f(x) := B(x, x+e_μ) for x ∈ F(c).
 Elementary inequality: for vectors a, b, c, |a|² = |(a+b+c) − b − c|² ≤ 3(|a+b+c|² + |b|² + |c|²). So |a+b+c|² ≥ ⅓|a|² − |b|² − |c|². (3.3)
 (a) Plaquette part, (2.124). The plaquette p ∈ 𝒫(c) with corner x ∈ F(c) in the (μ, ν) plane has
 (∂_1B)(p) = −(f(x+e_ν) − f(x)) + B(x+e_μ, x+e_μ+e_ν) − B(x, x+e_ν).
 The map p ↦ face edge ⟨x, x+e_ν⟩ is a bijection 𝒫(c) → edges of F(c). The bond ⟨x, x+e_ν⟩ lies in B(c_−); the bond ⟨x+e_μ, x+e_μ+e_ν⟩ lies in B(c_+). Both maps are injective. By (3.3),
 Σ_{𝒫(c)}|(∂_1B)(p)|² ≥ ⅓Σ_{edges}|∇f|² − Σ_{F_−}|B|² − Σ_{F_+}|B|²,
 with F_∓ the ν-bonds (ν ≠ μ) inside the faces, F_− ⊂ B(c_−), F_+ ⊂ B(c_+).
 (b) Average part, (2.125). By 3.0 and CMP 96 (2.125) [V], (Q_1B)(c) = L^{−(d+1)}Σ_{x∈B(c_−)}Σ_{s=0}^{L−1}B(x + se_μ, x + (s+1)e_μ). A μ-bond ⟨z, z+e_μ⟩ with t := z_μ − c_{−,μ} is hit by #{s : 0 ≤ s ≤ L−1, 0 ≤ t − s ≤ L−1} pairs. This is t + 1 for t ≤ L−1 and 2L−1−t for t ≥ L−1. For t = L−1 (corridor bonds) the count is L, weight L^{−d}. For t ≤ L−2 the bond is inside B(c_−); for t ≥ L it is inside B(c_+); the weight is ≤ L^{−d}(L−1)/L. So
 (Q_1B)(c) = L^{−d}Σ_F f + β_− + β_+, β_∓ = Σ w_b B(b) over the L^{d−1}(L−1) μ-bonds inside B(c_∓), 0 ≤ w_b ≤ L^{−d}.
 By Cauchy–Schwarz, |β_∓|² ≤ (Σw_b²)Σ|B|² ≤ L^{d−1}(L−1)L^{−2d}Σ|B|² ≤ L^{−d}Σ_{μ-bonds ⊂ B(c_∓)}|B|². By (3.3),
 |(Q_1B)(c)|² ≥ ⅓L^{−2d}|Σ_F f|² − L^{−d}Σ_{μ-bonds⊂B(c_−)}|B|² − L^{−d}Σ_{μ-bonds⊂B(c_+)}|B|².
 (c) Combine L^{−d}·(a) + (b). The ν-bonds of F_∓ and the μ-bonds of B(c_∓) are disjoint subsets of B(c_∓). So the subtracted terms are ≤ L^{−d}Σ_{b⊂B(c_∓)}|B|². The main term is ⅓L^{−d}[Σ|∇f|² + L^{−d}|Σf|²] ≥ ⅓L^{−d}m_LΣ_F|f|² by (3.1). ∎
Remark (printed constant). Balaban asserts that the bracket is ≥ L^{−1}Σ|f|² (p. 245, "bounded from below by L^{−d−1}Σ|B_μ(x)|²" after the factor L^{−d}). Test f = the mean-zero mode cos(π(x_ν − c_ν + ½)/L): the bracket equals λ_1(L)Σ|f|². For L ≥ 10, λ_1(L) < 1/L, so this intermediate claim is false for L ≥ 10. The printed (2.127) itself fails for the configuration B = f on 𝒦(c), B = 0 on all block bonds, once λ_1(L) < 1/(3L), i.e. for L ≥ 30 (left side L^{−d}λ_1Σ|f|², right side ⅓L^{−d−1}Σ|f|², Q_1B(c) = 0). For L ≤ 9 the claim is true and (3.2) is exactly (2.127).

3.4 Assembly: Lemma 3 [P]. For B as in 3.0 with the axial condition,
 L^{d−2}Σ_c|(Q_1B)(c)|² + Σ_p|(∂_1B)(p)|² ≥ γ_L‖B‖², γ_L := m_L/(12d²L^d). (3.4)
For L ≤ 9, γ_L = (12d²)^{−1}L^{−d−1}, which is (2.128) as printed. For L ≥ 10, γ_L ≥ (3d²)^{−1}L^{−d−2}.
Proof. The sets 𝒫(c) are disjoint for different c, contain corridor bonds, and so are disjoint from the block plaquettes. Hence Σ_cΣ_{𝒫(c)} + Σ_yΣ_{p⊂B(y)} ≤ P. Each block is c_− or c_+ of at most 2d corridors. Sum (3.2) over c:
 (m_L/3)L^{−d}S_c ≤ L^{−d}P + Qt + 2dL^{−d}S_b.
By 3.1, S_b ≤ dL^dP, so 2dL^{−d}S_b ≤ 2d²P. Hence
 S_c ≤ (3L^d/m_L)[(L^{−d} + 2d²)P + Qt] = (3/m_L)(1 + 2d²L^d)P + (3L²/m_L)·L^{d−2}Qt.
Since 2d²L^d ≥ L², the coefficient of L^{d−2}Qt is below that of P. So with Z := P + L^{d−2}Qt,
 ‖B‖² = S_b + S_c ≤ [(3/m_L)(1 + 2d²L^d) + dL^d]Z.
Finally (3/m_L)(1 + 2d²L^d) + dL^d ≤ 12d²L^d/m_L. Indeed, multiplied by m_L/3 this reads 1 + 2d²L^d + dL^dm_L/3 ≤ 4d²L^d, which holds because m_L ≤ ½ and d²L^d ≥ 16. ∎

## §4 Lemma 4 (step (ii), covariant)

4.0 Inputs. (Cov) as in §2.1, now for Q_1(U_1) and ∂_1^{U_1} on the unit lattice. (R3) as in §2.1. (R5) [R]: the trees A_x(y) of CMP 99 (3.156) are the sets T(y) of 3.0 (CMP 99 pp. 427–428 refer to [4] (2.154)–(2.155); the text is garbled). (R2′) [R, CMP 98 (139), one step]: for a corridor c and a regular unit gauge on the unit L-neighbourhood of R(c), |(Q_1(U_1)B)(c) − (Q_1(1)B)(c)| ≤ ε_{Q1}(Q̂_1|B|)(c), with Q̂_1 positive, supported within unit distance L of the corridor region R(c) := B(c_−) ∪ B(c_+) ∪ 𝒦(c), Σ_c(Q̂_1|B|)(c)² ≤ c_{Q1}‖B‖², and ε_{Q1} ≤ c(d, L)Mα_0.
Gauge facts [P]. Under a unit gauge u_1, B^{u_1}(b) = Ad(u_1(b_−))B(b) (or the analogous rule). So |B^{u_1}(b)| = |B(b)|, and B(b) = 0 iff B^{u_1}(b) = 0. Hence the axial condition and the norms are gauge invariant. Q_1(U_1)B = 0 is gauge invariant by (Cov). The axial condition is a zero set on the fluctuation B. It is not a gauge condition on the background. So the background is never put in axial gauge; each local estimate uses its own regular gauge.

4.1 Statement. Let B ∈ 𝒟 (B = 0 off Λ, B = 0 on every T(y), Q_1(U_1)B = 0). Put τ := 12c_4Mα_0. Then
 ‖∂_1^{U_1}B‖² ≥ γ_L(1 − η_6)‖B‖², η_6 := (3L^d/m_L)[32d(d−1)τ²L^{−d} + c_{Q1}ε_{Q1}²]. (4.1)

4.2 Block inequality, covariant and exact [P]. For each y, Σ_{b⊂B(y)}|B|² ≤ dL^dΣ_{p⊂B(y)}|(∂_1^{U_1}B)(p)|².
Proof. Repeat 3.1. In the step plaquette, b_1, b_3 ∈ T(y), so B(b_1) = B(b_3) = 0. By (C),
 (∂_1^{U_1}B)(p) = σ_2Ad(T_2)B(b_2) + σ_4Ad(T_4)B(b_4).
Since Ad is orthogonal, |B(b_2)| = |Ad(T_2)B(b_2)| ≤ |(∂_1^{U_1}B)(p)| + |B(b_4)|. This is the step inequality of 3.1 with ∂_1 replaced by ∂_1^{U_1}. The rest of 3.1 (Cauchy–Schwarz, counting) uses only these step inequalities. No error term and no gauge choice is needed. ∎

4.3 Corridor inequality, covariant [P given R2′, R3]. Fix a corridor c. R(c) is a box of ℓ^∞-diameter 2L. Its unit L-neighbourhood has ℓ^∞-diameter ≤ 4L ≤ 8M by (H2). Choose a regular gauge on it (§0.5) and let u = u_c be the induced unit gauge (R3). Apply (3.2) to B^u. Its norms equal those of B. Now bound the free quantities of B^u by covariant quantities of B.
 (a) Plaquettes. For p ∈ 𝒫(c), by (C) and (Cov), (∂_1B^u)(p) = (∂_1^{U_1^u}B^u)(p) − Σ_bσ(Ad(T_{p,b}) − 1)B^u(b). By (R3) and (E), ‖Ad(T_{p,b}) − 1‖ ≤ τ. So
 |(∂_1B^u)(p)|² ≤ 2|(∂_1^{U_1}B)(p)|² + 2τ²·4Σ_{b∈∂p}|B(b)|².
 A corridor bond lies in at most 2(d−1) plaquettes of 𝒫(c); a face bond lies in exactly one. So
 L^{−d}Σ_{𝒫(c)}|(∂_1B^u)(p)|² ≤ 2L^{−d}Σ_{𝒫(c)}|(∂_1^{U_1}B)(p)|² + 16(d−1)τ²L^{−d}Σ_{b∈R(c)}|B(b)|².
 (b) Average. Since Q_1(U_1^u)B^u = 0 (by (Cov) and B ∈ 𝒟), (R2′) gives |(Q_1(1)B^u)(c)| ≤ ε_{Q1}(Q̂_1|B|)(c).
 (c) Insert (a), (b) into (3.2) for B^u:
 (m_L/3)L^{−d}Σ_{𝒦(c)}|B|² ≤ 2L^{−d}Σ_{𝒫(c)}|∂_1^{U_1}B|² + 16(d−1)τ²L^{−d}Σ_{R(c)}|B|² + ε_{Q1}²(Q̂_1|B|)(c)² + L^{−d}Σ_{B(c_−)∪B(c_+)}|B|². ∎

4.4 Patching and proof of (4.1) [P]. Sum 4.3(c) over c. Each bond lies in R(c) for at most 2d corridors (a block bond: the ≤ 2d corridors of its block; a corridor bond: its own one). So Σ_cΣ_{R(c)}|B|² ≤ 2d‖B‖². The sets 𝒫(c) are disjoint. With P^U := ‖∂_1^{U_1}B‖² and S_b, S_c as in 3.0,
 (m_L/3)L^{−d}S_c ≤ 2L^{−d}P^U + 2dL^{−d}S_b + ε_8‖B‖², ε_8 := 32d(d−1)τ²L^{−d} + c_{Q1}ε_{Q1}².
By 4.2, S_b ≤ dL^dP^U. So
 S_c ≤ (3L^d/m_L)[(2L^{−d} + 2d²)P^U + ε_8‖B‖²].
Then ‖B‖² = S_b + S_c ≤ [6/m_L + 6d²L^d/m_L + dL^d]P^U + η_6‖B‖².
The bracket is ≤ 12d²L^d/m_L = γ_L^{−1}: multiplied by m_L/6 it reads 1 + d²L^d + dL^dm_L/6 ≤ 2d²L^d, true since m_L ≤ ½ and d²L^d ≥ 16. Hence (1 − η_6)‖B‖² ≤ γ_L^{−1}P^U. ∎
Remark. The factor 2 in 4.3(a) costs nothing in γ_L: the free assembly in 3.4 had slack in exactly this place. The only loss is (1 − η_6), with η_6 = O((Mα_0)²)·c(d, L). At U = 1, η_6 = 0 and (4.1) with Q_1B = 0 is (3.4).

## §5 Lemma 5 (the gauge-fixing part drops out; κ_π is not needed)

5.0 Printed facts used [V, CMP 99 pp. 418–421].
 (F1) (3.115): Q_jDλ = D^jQ′_jλ. Hence QDλ = 0 for λ ∈ N(Q′) (p. 420: "QA is gauge invariant with respect to gauge transformations satisfying this condition").
 (F2) p. 419, after (3.118): RD*(A − Dλ) = RD*A − RΔλ = RD*A − Δλ for λ ∈ N(Q′), "by the definition of R and the fact that λ ∈ N(Q′)".
 (F3) (3.118)–(3.119) and the sentence after (3.119): G′RD*A ∈ N(Q′), and A − DG′RD*A "is obtained by gauge transforming an arbitrary configuration A to the subspace {A : RD*A = 0}". So RD*(A − DG′RD*A) = 0. G′ is linear.
 (F4) (3.128) and (3.134): ⟨A, G_1^{−1}A⟩ = Φ(A′) + ‖RD*A‖² + a‖QA‖², with A′ := A − DG′RD*A and Φ(X) := ⟨X, ΔX⟩ − ⟨X, Δ^{(2)}X⟩.
 (R1, part) G_1 > 0 and QG_1Q* is invertible on the B-space [R: CMP 99 Thms 3.11, 3.12; (3.132) for G_1].

5.1 Variational identity [P]. Put A_* := H_1B = G_1Q*(QG_1Q*)^{−1}B (3.129). Then QA_* = B and
 ⟨B, (QG_1Q*)^{−1}B⟩ = ⟨A_*, G_1^{−1}A_*⟩ = min{⟨A, G_1^{−1}A⟩ : QA = B},
and A_* is the unique minimizer.
Proof. QA_* = QG_1Q*(QG_1Q*)^{−1}B = B. Let QA = B and Z := A − A_*, so QZ = 0. Since G_1^{−1}A_* = Q*w with w = (QG_1Q*)^{−1}B, the cross term is 2Re⟨Z, Q*w⟩ = 2Re⟨QZ, w⟩ = 0. So ⟨A, G_1^{−1}A⟩ = ⟨A_*, G_1^{−1}A_*⟩ + ⟨Z, G_1^{−1}Z⟩. The last term is > 0 for Z ≠ 0 because G_1 > 0. Finally ⟨A_*, G_1^{−1}A_*⟩ = ⟨w, QG_1Q*w⟩ = ⟨B, w⟩. ∎

5.2 Lemma 5 [P]. RD*A_* = 0. Hence A_*′ = A_* and
 ⟨B, (QG_1Q*)^{−1}B⟩ − a‖B‖² = Φ(A_*) = ‖D_UA_*‖² + ⟨A_*, Δ′A_*⟩ − ⟨A_*, Δ^{(2)}A_*⟩. (5.1)
Proof. Let A be any extension (QA = B) and A′ = A − Dλ_A, λ_A := G′RD*A.
 (i) A′ is an extension: λ_A ∈ N(Q′) by (F3), so QDλ_A = 0 by (F1), so QA′ = QA = B.
 (ii) RD*A′ = 0 by (F3). Hence λ_{A′} = G′RD*A′ = 0 and (A′)′ = A′.
 (iii) By (F4) applied to A′, and (ii): ⟨A′, G_1^{−1}A′⟩ = Φ(A′) + 0 + a‖B‖². By (F4) applied to A: ⟨A, G_1^{−1}A⟩ = Φ(A′) + ‖RD*A‖² + a‖B‖². So
 ⟨A′, G_1^{−1}A′⟩ = ⟨A, G_1^{−1}A⟩ − ‖RD*A‖².
 Take A = A_*. If RD*A_* ≠ 0, then A_*′ is an extension with a strictly smaller value. This contradicts 5.1. So RD*A_* = 0, λ_{A_*} = 0 and A_*′ = A_*. Then (F4) and QA_* = B give ⟨A_*, G_1^{−1}A_*⟩ = Φ(A_*) + a‖B‖². With 5.1 and (3.10) this is (5.1). ∎

5.3 Consequences.
 (a) The oblique projection I − DG′RD* never acts on A_*. The bound ‖A_*′‖² ≤ κ_π‖A_*‖² of SOURCES_A3_GAMMA0 §5.1 is replaced by the identity A_*′ = A_*. The gap "κ_π uniform in k" (VERIFY V5) is closed by removal. No bound on ‖DG′RD*‖ is used anywhere below.
 (b) Lemma 5 is the G_1-analogue of Balaban's (3.124) RD*GQ* = 0 (p. 420, proved there by a Gaussian-integral symmetry). Here the proof is variational and uses only (F1)–(F4).
 (c) The minimizer bound [P from R1]. By 5.1 and (R1): ‖A_*‖²_𝔴 ≤ K_1⟨A_*, G_1^{−1}A_*⟩ = K_1(E + a‖B‖²), E := ⟨B, (QG_1Q*)^{−1}B⟩ − a‖B‖². (5.2)
 (d) On κ_π, for the record [P-sketch; it assumes Δ is injective on N(Q′), which Theorem 3.1 implies but which is not used elsewhere]. One has (DG′RD*)² = DG′RD*: by (F2)–(F3), Δλ_A = RD*A, and G′ applied to Δλ for λ ∈ N(Q′) returns λ (the unique solution in N(Q′)). So I − DG′RD* is a projection onto {RD*A = 0} along D·N(Q′). In a Hilbert space a projection P ≠ 0, I has ‖P‖ = ‖I − P‖ = 1/sin θ, θ the angle between range and kernel. A uniform bound needs a uniform lower bound on that angle. It is not proved here, and it is not needed.

## §6 Assembly of Theorem A3

6.1 The remaining published inputs, stated precisely. All constants depend on d, L only; they are uniform in k, η, Λ, the domains Ω_j, M ≥ M_1, and U obeying (H1).
 (R1) [CMP 99 Thms 3.11, 3.12; local L² bounds (3.46) for G_1; [4] Lemma 2.1]. G_1 > 0, and for all fine X, ‖X‖²_𝔴 ≤ K_1⟨X, G_1^{−1}X⟩. Equivalently ‖𝔴^{1/2}G_1𝔴^{1/2}‖ ≤ K_1. Derivation [P-sketch]: Theorem 3.12 gives (3.46) for G_1, i.e. block bounds ‖hG_1λ‖ ≤ B_0(L^jη)²|h|e^{−δ_0d(y,y′)}‖λ‖ for supp h ⊂ Δ(y), y ∈ Λ_j, supp λ ⊂ Δ(y′). Self-adjointness of G_1 lets one use the smaller of the two scales. The weights 𝔴^{1/2} then give block factors L^{−|j−j′|} ≤ 1, and the Schur test with the summability of e^{−δ_0d(y,y′)} ([4] Lemma 2.1, the step "(3.47) follows from (3.42) and Lemma 2.1", p. 398) gives the bound. Theorem 3.12 excludes only the covariant-Laplace inequality, which is not used.
 (R-Δ′) [CMP 99 (3.10), (3.35); p. 392: "Δ′ will be a bounded, small operator"]. |⟨X, Δ′X⟩| ≤ ε_1‖X‖²_𝔴, ε_1 = c(d, L)Mα_0. Reason: by (3.35), in a regular gauge U(∂p) = exp(iη²F), |F| ≤ c·Mα_0(L^jη)^{−2}. The second term of (3.10) is then ≤ Σ_p η^d|X(b_1)||X(b_2)|·c·Mα_0(L^jη)^{−2}, bounded by c(d)Mα_0‖X‖²_𝔴. In the first term, η^{−2}|Re U(∂p) − 1| ≤ η²|F|² ≤ c(Mα_0)²(L^jη)^{−2}·(η/L^jη)², and |(D^1_UX)(p)|² ≤ 4Σ_{b⊂p}|X(b)|² if D^1 is the unscaled four-term sum (our reading of the superscript 1; not checked against the definition of D^1).
 (R-Δ2) [CMP 99 (3.134)–(3.137), p. 422: |(Δ^{(2)}A)(b)| ≤ O(1)Mα_0(L^jη)^{−2}|A|, sup over a few j-blocks]. |⟨X, Δ^{(2)}X⟩| ≤ ε_1‖X‖²_𝔴. Reason: Δ^{(2)} is local on the j-block scale by (3.136); a local operator with this sup bound is bounded on the 𝔴-weighted ℓ² by Schur's test.
 (R4) [CMP 99 (3.156); SOURCES_CDC §5.3; R/I]. |⟨B, Δ_JB⟩| ≤ c_J‖B‖², c_J = c(d, L)Mα_0. Reason: D̃^{(2)} is quadratic and local, H_1 obeys (3.133) (Theorem 3.12), and |J| = O(Mα_0) by (3.36). The form is homogeneous of degree 2 in B.
 (R2), (R2′), (R3), (R5) as in §2.1 and §4.0.

6.2 Step (i) with the minimizer [P]. Let B ∈ 𝒟. Let A_* be the minimizer of 5.1 and E as in (5.2). Let 𝒫_Λ be the unit plaquettes with a bond in Λ, and W as in §2.2 for 𝒫_Λ. Then W lies within unit distance 4 of Λ, inside the index-k region (RM ≥ 4), so ‖·‖_W ≤ ‖·‖_𝔴 there with weight 1.
 (a) Unit plaquettes outside 𝒫_Λ have all four bonds off Λ, so (∂_1^{U_1}B)(p) = 0 there. On the bonds of plaquettes in 𝒫_Λ (all in Λ_k) B = Q_k(U)A_*. So ‖∂_1^{U_1}B‖² = Σ_{p∈𝒫_Λ}|(∂_1^{U_1}Q_k(U)A_*)(p)|².
 (b) Lemma 2 with δ = 1: ‖∂_1^{U_1}B‖² ≤ 2‖D_UA_*‖² + 4ε_2²‖A_*‖²_W.
 (c) Lemma 5, (R-Δ′), (R-Δ2): E = Φ(A_*) ≥ ‖D_UA_*‖² − 2ε_1‖A_*‖²_𝔴.
 (d) Combine (b), (c), and (5.2):
 E ≥ ½‖∂_1^{U_1}B‖² − (2ε_2² + 2ε_1)‖A_*‖²_𝔴 ≥ ½‖∂_1^{U_1}B‖² − ε_7(E + a‖B‖²), ε_7 := 2K_1(ε_1 + ε_2²).
 So (1 + ε_7)E ≥ ½‖∂_1^{U_1}B‖² − ε_7a‖B‖². (6.1)

6.3 Step (ii) [P]. B ∈ 𝒟, so Lemma 4 applies: ‖∂_1^{U_1}B‖² ≥ γ_L(1 − η_6)‖B‖². (6.2)

6.4 The bound on Δ_k [P]. By (3.156), (6.1), (6.2), (R4):
 ⟨B, Δ_kB⟩ = E − ⟨B, Δ_JB⟩ ≥ (1 + ε_7)^{−1}[½γ_L(1 − η_6) − ε_7a]‖B‖² − c_J‖B‖².
Fix α_* in (H3) so small (after d, L; a = 1 in CMP 99) that η_6 ≤ ¼, ε_7 ≤ ⅛, and ε_7a + c_J ≤ γ_L/12. This is possible because η_6, ε_7, c_J are each c(d, L)·(Mα_0 + (Mα_0)²) by their definitions (§2.2, §4.1) and by 6.1. Then (1 + ε_7)^{−1} ≥ 8/9 and
 ⟨B, Δ_kB⟩ ≥ (8/9)(3γ_L/8 − ε_7a)‖B‖² − c_J‖B‖² ≥ [γ_L/3 − (ε_7a + c_J)]‖B‖² ≥ (γ_L/4)‖B‖². (6.3)
Arithmetic: (8/9)(3/8) = 1/3; 1/3 − 1/12 = 1/4.

6.5 The C-step [P; V p. 428]. C is the identity on the bonds of Λ̃. It only fills the excluded bonds b_0 ∈ B(c) ∩ c with the solution of (Q_1B)(c) = 0, and sets B = 0 on the trees and off Λ. So CB̃ ∈ 𝒟 and ‖CB̃‖² = ‖B̃‖² + Σ_{b_0}|(CB̃)(b_0)|² ≥ ‖B̃‖². By (6.3) with B = CB̃:
 ⟨B̃, C*Δ_kC B̃⟩ = ⟨CB̃, Δ_kCB̃⟩ ≥ (γ_L/4)‖CB̃‖² ≥ γ_0‖B̃‖², γ_0 = γ_L/4 = m_L/(48d²L^d). ∎
Consequences [P]. ‖C̃^{(k)}(Λ)‖ = ‖(C*Δ_kC)^{−1}‖ ≤ γ_0^{−1}, and ‖C^{(k)}(Λ)‖ ≤ ‖C‖²γ_0^{−1}, with ‖C‖² ≤ 1 + L^{d+1} (SOURCES_CDC §3.3).

6.6 Uniformity [P]. γ_0 contains only d and L. k and η enter nowhere: Lemma 1 is exact for every k, and every error is relative with k-uniform constants (6.1). Λ enters nowhere: all inequalities are local and summed with overlap ≤ 2d or 2(d−1). M enters only through (H2) and (H3). U enters only through (H1) and the inputs. δ = 1 is a choice: any γ_0 < γ_L can be reached with δ small and α_* smaller.

## §7 Ledger

7.1 Proved here [P], complete.
 - Lemma 1: ‖∂_1Q_k(1)X‖² ≤ ‖D_1X‖², c_* = 1, all k (exact Stokes (1.1) + Cauchy–Schwarz + counting).
 - Lemma 2: covariant version (2.1) with relative error 2(1 + δ^{−1})ε_2²‖X‖²_W, given (R2), (R3).
 - Lemma 3: CMP 96 Lemma 2.4 with γ_L = m_L/(12d²L^d). Equal to the printed (12d²)^{−1}L^{−d−1} for 2 ≤ L ≤ 9.
 - Lemma 4: covariant Lemma 2.4 with factor (1 − η_6), given (R2′), (R3), (R5). The block part is exact.
 - Lemma 5: RD*A_* = 0 for the G_1-minimizer; the gauge-fixing part drops out exactly. κ_π is not needed.
 - Assembly: γ_0 = γ_L/4 = m_L/(48d²L^d); = (48d²)^{−1}L^{−d−1} for L ≤ 9; ≥ (48d²)^{−1}L^{−d−1}·min(1, 4/L) for all L ≥ 2. No M, k, η, Λ, U dependence.

7.2 Published inputs used (all [V] on page images unless marked).
 - CMP 96: (2.121) axial condition, (2.123) block statement, (2.125) form of Q_1, (2.128) statement (pp. 244–245).
 - CMP 95: (1.65)–(1.67) only for comparison (Corollary 1 reproves the lower half of (1.67) with γ_0′ = 1).
 - CMP 99: (3.8)–(3.10) curl form and Δ′ (p. 392); (3.35)–(3.36) regularity (p. 396); (3.32)–(3.34) covariance (p. 396); (3.115), (3.118)–(3.119) and the text after them (pp. 418–419); (3.128), (3.129), (3.134) (pp. 421–422); (3.155)–(3.158) and the description of C (pp. 427–428).
 - CMP 99 Theorems 3.11, 3.12 (+ (3.46) for G_1, [4] Lemma 2.1): R1 [R].
 - CMP 99 (3.10) + (3.35): R-Δ′ [R, D^1 normalization read, not checked].
 - CMP 99 (3.134)–(3.137): R-Δ2 [R; the Schur step from the sup bound to ℓ² is standard but not written out].
 - CMP 98 (139), one step: R2′ [R].
 Not used: CMP 99 Theorem 3.1 bounds on G′, Theorems 3.2, 3.3 (except through Theorem 3.12), (3.49), any bound on DG′RD*, and A1 ((QG_1Q*)^{−1} kernel).

7.3 Remaining items.
 [I] R2 (k-step averaging comparison, the A18 piece "Q(U) = Q_free(1 + O(α_0))", uniform in k): |(Q_k(U^u)X − Q_k(1)X)(c)| ≤ ε_Q(Q̂|X|)(c) in a regular gauge, ε_Q = c(d, L)Mα_0. CMP 98 (139) gives one step only. This is the single open input of Lemma 2.
 [R] R1 (‖X‖²_𝔴 ≤ K_1⟨X, G_1^{−1}X⟩): from Theorem 3.12 by a Schur argument sketched in 6.1, not written out.
 [R] R3 (the averaged background U_1 is regular on unit bonds, |A_1| ≤ c_4Mα_0 in the induced gauge).
 [R/I] R4 (c_J = c(d, L)Mα_0 for the J-term of (3.156)).
 [R] R5 (A_x(y) = T(y); CMP 99 p. 428 points to [4] (2.154)–(2.155)).
 [R] R-Δ′, R-Δ2 (relative bounds by ε_1‖X‖²_𝔴).
 [I] not covered: the σ-/s-localized operators C*Δ_k(s)C (A18; SOURCES_CDC_VERIFY §5).

7.4 Changes against SOURCES_A3_GAMMA0 and its VERIFY.
 (1) κ_π gap: CLOSED by removal (Lemma 5). The minimizer is already in the gauge RD*A = 0. R1 no longer needs a bound on DG′RD*.
 (2) R1 shrinks to Theorems 3.11–3.12 (positivity and a weighted norm bound of G_1).
 (3) c_* = 1 (VERIFY V4) confirmed with a full proof (§1).
 (4) NEW correction: the printed slab bound in CMP 96 (2.126)–(2.127) ("bounded from below by L^{d−1}Σ|B_μ|²" after factoring) is false for L ≥ 10; (2.127) itself fails for L ≥ 30. Lemma 2.4 is proved here with m_L in place of 1/L. For L ≤ 9 nothing changes. For L ≥ 10 the constants γ_L, γ_0 of KAPPA_D/SOURCES_Q and of the trust ledger must carry the factor L·m_L = 2L(1 − cos(π/L)) ∈ [4/L, 1]. Whether Lemma 2.4's printed constant still holds for L ≥ 10 by another proof is not decided here (the global mode of the counterexample satisfies it, with Σ_p|∂_1B|² = λ_1‖B‖² ≫ L^{−d−1}‖B‖²).
 (5) Region size: the largest set that needs one regular gauge has unit ℓ^∞-diameter ≤ 4L. So M ≥ L/2 suffices in addition to M ≥ M_1.

7.5 Verification status. Not independently verified. A verifier should check first: Lemma 5 step (iii) (that (3.128) depends on A only through A′ and ‖RD*A‖²), the counting in 3.1 and 3.3(b), and the remark in 3.3 (numbers λ_1(10) = 0.0979 < 0.1; λ_1(30) = 0.01095 < 1/90 = 0.01111).
