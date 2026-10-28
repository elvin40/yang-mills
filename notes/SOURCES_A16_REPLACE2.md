# SOURCES_A16_REPLACE2 — repair of the A16 replacement (C_f with nonlocal source kernel 𝒲_S)

Date 2026-10-28. Self-contained revision of SOURCES_A16_REPLACE.md (not edited). Ledger tags: [P] proved here, [V] verified elsewhere (file named) or page-read, [I] reading/interpretation, [R] reduction to a printed statement or sketch.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Read for this file: SOURCES_A16_REPLACE.md (+ corrections), SOURCES_A16_REPLACE_VERIFY.md V1–V6, WC_FULL §0, §4–§6 (+ fixes), SOURCES_A7_CDC §4, SOURCES_A8_POS §2, §4–§6 (+ corrections), SOURCES_G3_GGAMMA §1–§3, SOURCES_D2 (2.a)–(a3) (l. 100–117), SOURCES_D3W8 §1.1, CMP 116 pp. 12–17 (text layer; pp. 12, 15–16 page images).
Plan: §1 target. §2 tree form of 𝒲_S. §3 Neumann chain (Q2, Q6, Q7, Q8 + Q1, Q3–Q5, Q9–Q11 carried). §4 (U-a) whole volume. §5 (U-b) σ-differences. §6 (U-c) tree form of Δ^f. §7 inputs, canon, verdict.

## §1 Target, restated

Objects. A_exp := C*Δ^{(k)}C on V_red(Λ) (WC_FULL 0.7; Λ = the integration region, §4). 𝒲_S := C*𝒱_SC (D3W8 §1.1), with
 𝒱_S = H_1*(D_S)H_1 + 𝒱_S^{(2)}, D_S := Σ_p d_S(p)H_p(U_{k+1}), H_1 = G_1Q*(QG_1Q*)^{−1} (WC 0.6; D2 (2.a) l. 105, l. 117),
 𝒱_S^{(2)} := the D^{(2)} correction: the pairing of the source current J_S(b) = Σ_{p∋b}d_S(p)P_p^{(1)}(b) with the second-order part of the field map B′ ↦ U_k (D2 (2.a)). |d_S| ≤ 2r (D3W8 §1.1).
Whole volume: A_Λ^f := A_exp − g²𝒲_S, C_f := (A_Λ^f)^{−1}. Localized: A_Z^f := A_Z − g²𝒲_Z, 𝒲_Z := 1_{Z_0}𝒲_S1_{Z_0}, C_f(Z_0) := (A_Z^f)^{−1}. Sourced Δ: Δ_k^f := Δ_k − g²𝒱_S, so C*Δ_k^fC = A_Λ^f.
Properties to prove (labels of SOURCES_A16_REPLACE §2c and VERIFY V4):
 Q1 real positivity; Q2 walk/tree expansion with (L1)–(L2), rate, s-rule, p. 13 form; Q3 ∂_LC_f∂_R; Q4 analyticity in (U, J, f); Q5 norm bound and α_5‖C_f(Z_0,0)‖ < ½; Q6 determinant ratio as closed trees; Q7 (C_f)^{1/2} with walk form; Q8 the perturbative argument of CMP 116 pp. 15–17 (Lemmas D, P); Q9 conditioning on Z_0^c; Q10 t-independence; Q11 large-field domination;
 (U-a) whole-volume C_f and (C_f)^{1/2};
 (U-b) σ-difference bounds for (C_f)^{1/2}(σ) and Δ_k^f(σ): the R_1, R_2, R_3 of CMP 116 (2.16);
 (U-c) a tree form of Δ_k^f(σ) (and of Δ_k − Δ_k^f = g²𝒱_S);
 (U-d) symmetry of C_f(Z_0, 0) at the real pair — inherited A8 residue, handled by A8 §6's route.
Page facts used [V, CMP 116 pp. 12, 13, 15, 16 page images at 150 dpi, this session]:
 - p. 12 (2.5): conditioning on Z_0^c with the coupling −⟨Z_0^cB′, C*Δ_kCZ_0B⟩ and dμ_{C^{(k)}}(B′); then "the linear change of variables B′ = (C^{(k)})^{1/2}X" with Π_{b∈T_1^{(k)*}}dX(b) — the whole unit lattice minus the b_0(c).
 - p. 13 (2.7): (C^{(k)})^{1/2} = π^{−1}∫_0^∞dx x^{−1/2}(xI + C*Δ_kC)^{−1} = [split at γ_1]. "This construction was discussed in [13] for all operators determining Δ_k, and for C^{(k)}(Z_0), but not for (C^{(k)})^{1/2}." The s are "introduced into the operators as before".
 - p. 15 (2.14): Γ_k(Z_0, σ(Z)) = C*Δ_k(σ(Z))CZ_0^c(C^{(k)})^{1/2}(σ(Z)). (2.15): modulus bound with Re C^{(k)}(Z_0,σ)^{−1} and Re Γ_k. Last lines: "we replace the operators by the corresponding operators with σ(Z) = 0, U = U, J = 0, and we estimate the error."
 - p. 16 (2.16): |R_1(b, b′)| ≤ (O(1)e^{−(1/3)δ_0M} + O(α_0 + α_1))exp(−½δ_0|b − b′|). R_2: the new Gaussian measure costs a determinant quotient (2.17) and exp ½⟨B, R_2B⟩, R_2 "satisfying (2.16)". R_3: "the difference between the new bilinear form and the form in (2.15) is a bilinear form −⟨B, R_3X⟩ with R_3 satisfying (2.16)". (2.21): R_1, R_2, R_3 bounded by ½(O(1)e^{−δ_0M/3} + O(α_0 + α_1))(‖ZX‖² + ‖Z_0B‖²).
Reading of "Δ^f" [I]: the Δ in Γ_k is Δ_k(σ), the precision of the fluctuation in fine-field form. In the sourced theory the precision is Δ_k^f (because B′ has covariance C_f). So (U-b), (U-c) concern Δ_k^f(σ) = Δ_k(σ) − g²𝒱_S(σ). The difference Δ_k − Δ_k^f = g²𝒱_S gets its tree form in §2 and §6.

## §2 The tree form of 𝒲_S (the repair of VERIFY V2)

2.0 Inputs (each cited in the form used).
 (WG1) Theorem WG-G1 (WG_FULL 5.10): G_1 = Σ_τT_τ, (L1)–(L2) per factor, |T_τ(x, x′)| ≤ B_1ρ_{**}^{|τ|}m e^{−δ_1d(τ, x, x′)}, δ_1 = (1 − θ)½ε, tree distance; derivative norms on the first and last main-line blocks (WG 5.10). [P given printed sketches, R]
 (AW1) Theorem A1-W with P = G_1 (A1_WALK_FULL 0.5; WC 4.0): (QG_1Q*)^{−1} = Σ_ωW_ω, |W_ω| ≤ (4/c_{−,1})(c_1ρ_W)^{|ω|}m e^{−δ_Wd(ω)}. [C on (C) for G_1]
 (Conc) WG Lemma C, flat-product form, and its tree form (WG 5.7): blocks with whole-term bounds; one c_1(θδ) per junction; one factor (1 − θ) on the rate for the whole product; the per-block tree paths and the junction edges form a connected graph through all domains, so the sum of block lengths is ≥ the tree distance of the product.
 (Δ2) The Δ^{(2)} factorization (WG 5.2, 5.5): a local vertex K_b (range c_b, |K̂_b| ≤ c_κ) contracted with the branch value w(b) = (H*J)(b); the branch bound (5.5.1).
 (Loc) Local pieces: C, C* (range ≤ 2L, kernel ≤ c_C; WC 4.1(a)); Q, Q* (block-local, merged by WG (I7), constant c_Q); 𝒢*𝒢 not used here.
 (S_H) [I, C0-type] Scale normalization of the source vertex. On Λ ⊂ Λ_k the k-scale weights are trivial (S = I, μ = 1; A7 Lemma N(b)). The fine plaquette Hessian sum D_S, taken between two H_1 factors in the derivative norms of (WG1), is one local block per unit block, with block-kernel bound |D̂_S| ≤ c_H sup|d_S| ≤ 2c_Hr, c_H = c(d, L, N). The current has |Ĵ_S| ≤ c_J^S r, c_J^S = c(d, L, N) (|P_p^{(1)}| ≤ O(1)). Both are the per-bond class bound "O(g_k)(1 + |B′|²) after H_1" asserted in D2 (a3), written per block. The scale powers at the ends are moved by the CMP 96 p. 398 rule as in WG 5.5 (C0): cost L^{O(1)} and a θ_S loss inside the θ-part of the rate. This is the same convention as WG's C0 [I]; it adds no new kind of input.
 (D2-form) [I, reading of D2's "(local D^{(2)} correction)"]. 𝒱_S^{(2)} = Σ_{b_0}w_S(b_0)Π_L*K_{b_0}Π_R with w_S := H_1*J_S and Π_L, Π_R ∈ {I, H_1}. Π = I is the WC 4.1(d) shape of Δ_J (vertex on unit fields); Π = H_1 is the shape where C̃^{(2)} acts on the fine field H_1B′. The bound below covers all four choices, so the reading does not change any constant beyond a factor 4.

2.1 The H_1 tree. H_1 = G_1Q*(QG_1Q*)^{−1} = Σ_{τ,ω}T_τQ*W_ω. Each term is a flat product of three blocks: a (WG1) tree, the local Q*, an (AW1) walk. By (Conc) with rate δ_H := min{δ_1, δ_W} and the fixed θ:
 |(T_τQ*W_ω)(x, b)| ≤ B_1c_Q(4/c_{−,1})c_1(θδ_H)²·ρ_A^{|τ|+|ω|}·m e^{−(1−θ)δ_H d(τ∘ω, x, b)},
 with ρ_A := max{ρ_{**}, c_1ρ_W} ≤ the ρ_A of WC 4.2. (1 − θ)δ_H = δ_A, the rate of Proposition W_N (WC 4.2). Two junction steps carry no ρ. (L2): U-dependence on all domains of τ (main line and branches) and of ω. The adjoint H_1* has the transposed kernel and the reversed domain list; it has the same bound. (Real points; complex points in 2.4.)
2.2 Proposition W_S (tree expansion of 𝒲_S) [P given 2.0]. At real regular U and real d_S with |d_S| ≤ 2r,
 𝒲_S = Σ_νW_ν over tree labels ν of two types:
 (i) ν = (ω′, τ′, □, τ, ω): W_ν = C*W_{ω′}^TQT_{τ′}^T·D_{S,□}·T_τQ*W_ωC, D_{S,□} the part of D_S with plaquette base point in the unit block □ (D_S = Σ_□D_{S,□});
 (ii) ν = (Π-choice, H_1-labels, b_0-block X, branch β): W_ν = C*Π_L*K_{X,β}Π_RC with K_{X,β} := Σ_{b_0: X(b_0)=X}w_{S,β}(b_0)K_{b_0}, β = (β_1, β_2) a branch of w_S = (QG_1Q*)^{−1}QG_1J_S (AW1 walk, then WG1 tree).
 Each W_ν has (L1)–(L2) for every factor; U-dependence on the union of X̃^5 over all domains of ν (main line and branches); f-dependence only through d_S on the domains of the source blocks. The bound per term is
 |W_ν(b, b′)| ≤ r·B_𝒲·ρ_A^{|ν| − k_ν}·e^{−δ_𝒲 d(ν, b, b′)}, δ_𝒲 := (1 − θ)δ_A,
 with k_ν ≤ k_𝒲 := 12 steps that carry no ρ_A (8 main-line junctions of the 9-block product C*·W^T·Q·T^T·D_S·T·Q*·W·C; in type (ii) also the X → branch step and the β_1 → β_2 junction; 12 is a safe cap), and
 B_𝒲 := max{B_𝒲^{(i)}, B_𝒲^{(ii)}},
 B_𝒲^{(i)} := 2c_HL^{O(1)}c_C²c_Q²(B_1)²(4/c_{−,1})²c_1(θδ_A)^8,
 B_𝒲^{(ii)} := 4c_κe^{2δ_Ac_b}L^{O(1)}c_C²c_Q²(B_1)²(4/c_{−,1})²c_1(θδ_A)^8·c_LB_1(4/c_{−,1})Σ(½θδ_H)²c_J^S.
Proof. Type (i). Expand both H_1 factors by 2.1 and D_S by unit blocks. The flat product has 9 blocks. Apply (Conc) with common rate δ_A (every block has rate ≥ δ_A: the tree and walk terms by 2.1 before its (1 − θ) — apply (Conc) to the elementary blocks T_τ, Q*, W_ω, … directly, rate δ_H ≥ δ_A — and the local blocks have any rate after the factor e^{δ·range}). The product of block weights is B_𝒲^{(i)}·r·ρ_A^{Σ internal steps}; the 8 junction steps carry c_1 and no ρ. The rate is (1 − θ)δ_H = δ_A; we state the weaker δ_𝒲 = (1 − θ)δ_A to leave room for the end-scale moves of (S_H) (θ_S ≤ ¼θδ_H, WG 5.5). Type (ii). The main line C*Π_L*K_{X,β}Π_RC is a flat product of ≤ 9 blocks; K_{X,β} is a one-domain block with weight c_κe^{δc_b}sup|w_{S,β}| (WG 5.6). The branch bound is WG (5.5.1) with G → G_1 (WG1 in place of WG-G; same proof, since 5.5 uses only (B1) of the two branch factors and the C0 scale rule) and J → J_S: |w_{S,β}(b_0)| ≤ c_L(4/c_{−,1})B_1Σ(½θδ_H)²c_J^S r·ρ_A^{|β|}e^{−(1−θ)δ_Hd_o(β, b_0)}. The tree distance step is WG 5.7 verbatim: P_main ∪ edges (z, b_0) ∪ P_β is connected and meets every domain, so the lengths add up to ≥ d(ν, b, b′) − c_b; the e^{δc_b} goes into B_𝒲^{(ii)}. The factor 4 counts the Π-choices. ∎
2.3 Counting and the absolute sum [P]. Code a label ν by its depth-first tagged domain sequence (WG 5.8): main line from b, each branch when its vertex is reached, then "resume". The tag set is finite: the tags of WG 5.8 (G_1 trees, branches), of A1-W factors, plus the new tags "D_S-block", "K_{b_0}-block with Π-choice", "start/resume branch". So the next domain has ≤ C′_𝒟 choices, where C′_𝒟 is WC's tree branching constant enlarged by this fixed finite tag set (a fixed multiple; fixed by d, L before M_1). The first domain has ≤ C_𝒟 choices. Then, with d(ν, b, b′) ≥ |b − b′| and C′_𝒟ρ_A ≤ ½ (implied by WC 5.3's C′_𝒟c_1ρ ≤ ¼, since ρ ≥ c_1ρ_A and c_1 ≥ 1, once C′_𝒟 is the enlarged constant):
 Σ_ν|W_ν(b, b′)| ≤ r·B_𝒲·C_𝒟(C′_𝒟)^{k_𝒲}·Σ_s(C′_𝒟ρ_A)^s·e^{−δ_𝒲|b−b′|} ≤ b_W^T e^{−δ_𝒲|b−b′|},
 b_W^T := r·K_W^T,  K_W^T := 2C_𝒟(C′_𝒟)^{12}B_𝒲.
 K_W^T depends on d, L, N, a, a_0, θ and the WG/A1-W constants (B_1, c_{−,1}, c_1, Σ, c_H, c_J^S, c_κ, c_b, c_C, c_Q). It is free of M, M_1 (beyond M_1 ≥ the WC threshold), r, g, the volume, k, Z_0, and the regular background.
 Schur: ‖𝒲_S‖ ≤ b_W^TS(δ_𝒲), and the same for every compression 1_Y𝒲_S1_{Y′} and every s-truncation with |π_ν(s)| ≤ 1 (G3_GGAMMA 2.1: 0/1 or [0, 1] weights cannot raise a Schur sum).
 This replaces the false "finite range R_W" of SOURCES_A16_REPLACE 3.0. 𝒲_S has full range with exponential decay at rate δ_𝒲, exactly like A_exp's (QG_1Q*)^{−1} and Δ_J pieces.
2.4 Complex points [P given WC §6]. Run 2.1–2.3 on the WC four-level chain.
 - G_1 trees on 𝒰(α‴) with B_1‴, δ_1‴ (WC 6.4).
 - (QG_1Q*)^{−1} on 𝒰(α″) by Lemma AW with P = G_1 (WC 6.5): prefactor 8/c_{−,1}, rate ½ε_2 =: δ_W″.
 - H_1 = G_1Q*(QG_1Q*)^{−1} on 𝒰(α″): concatenation is algebraic, so 2.1 holds with δ_H″ := min{δ_1‴, δ_W″}, δ_A″ = (1 − θ)δ_H″ (the δ_A″ of WC 6.5). This is the complex statement for H_1 that CMP 99 does not print (WC 6.3).
 - D_S, J_S: H_p(U_{k+1}) and P_p^{(1)} are local polynomials in the link variables, analytic on 𝒰(α″) with |H_p|, |P_p^{(1)}| ≤ (1 + O(α″))× real values (‖Ad(e^{iA′})‖ ≤ e^{2|A′|}, as in WC 6.5). d_S is linear in f; on S_r, |d_S| ≤ 2r for complex f as for real f (D3W8 §1.1, |f| ≤ 3r; [I: the S_r radius convention of D2 Lemma 3.1 (v)]).
 - Vertex K_{b_0} and C, Q: explicit, analytic (WC 6.5).
 Result: Proposition W_S holds on 𝒰(α″) × S_r with B_𝒲″ (4/c_{−,1} → 8/c_{−,1}, B_1 → B_1‴, constants ×(1 + O(α″))), rate δ_𝒲″ := (1 − θ)δ_A″, and K_W^{T″} := 2C_𝒟(C′_𝒟)^{12}B_𝒲″. Every W_ν is analytic in (U_c, J, f) there (finite product of analytic factors; analytic inverse by Cramer's rule inside Lemma AW). Write b_W^{T″} := rK_W^{T″}.
2.5 The smallness conditions, in tree constants [P].
 τ_2 := sup over 𝒰(α″) × S_r of ‖g²𝒲_Z‖ ≤ g²b_W^{T″}S(δ_𝒲″) (Schur, 2.3).
 (A16-a^T) g²rK_W^{T″}S(δ_𝒲″) ≤ γ_exp/4. Then τ_2 ≤ γ_exp/4 and the operator Neumann ratio ‖g²𝒲_ZA_Z^{−1}‖ ≤ 2τ_2/γ_exp ≤ ½ (WC(iii): ‖A_Z^{−1}‖ ≤ 2/γ_exp). This is the "g²b_W^T ≤ ½γ_exp-type" condition; with S(δ_𝒲″) ≥ 1 it implies g²b_W^{T″} ≤ ¼γ_exp.
 (A16-b^T) q_W^T := 4·(8/γ_exp)·c_1(θ·½ε″)²·g²rB_𝒲″·(C′_𝒟)^{k_𝒲+2} ≤ ¼.
 Meaning of (A16-b^T): one 𝒲-insertion between two WC walk terms costs one WC prefactor 8/γ_exp, two junctions c_1(θ½ε″)², the 𝒲 weight g²rB_𝒲″, the count of its ≤ k_𝒲 + 2 unweighted steps (C′_𝒟)^{k_𝒲+2}, and ≤ 4 for the two geometric sums of weighted steps (each ≤ Σ(C′_𝒟c_1ρ″)^s ≤ 4/3, squared < 2, rounded up). 
 Both conditions are linear in g²r. g² ≤ γ²/4-type and r ≤ r_0 (D3W8 §1.1: |g_k²d_S| ≤ 2γ²r). γ_exp, ε″, B_𝒲″, C′_𝒟, c_1, S(δ_𝒲″) are fixed before M_1 (canon B3–B14 + this file's enlargement of C′_𝒟 at B13–B14). So both hold by shrinking r_0 at B32. They do not depend on M, so they do not interact with the M threshold of 3.4.

## §3 The Neumann chain for C_f(Z_0) on the WC §6 complex chain

Standing assumptions: U_c ∈ 𝒰(α′), f with d_S ∈ S_r, (A16-a^T), (A16-b^T). Real points are included (with the better real constants). Rates: WC(iii) walks ½ε″; 𝒲 trees δ_𝒲″ = (1 − θ)δ_A″ ≥ ½ε″, because ε″ ≤ ½δ_A″ (WC 6.7) and θ ≤ ½. Common rate for (Conc): ½ε″.

3.1 Q2 — tree expansion with rate [P given §2, WC(iii)].
 Operator level. By (A16-a^T), C_f(Z_0) = Σ_{n≥0}A_Z^{−1}(g²𝒲_ZA_Z^{−1})^n in operator norm, and C_f(Z_0) = (A_Z^f)^{−1}.
 Composite labels. Expand every A_Z^{−1} by WC(iii) (walk terms T_ω, whole-term bound (8/γ_exp)(c_1ρ″)^{|ω|}e^{−½ε″d}) and every 𝒲_Z by W_S (2.4; compression by 1_{Z_0} only cuts kernels, WC 4.4). A composite label is Ω = (ω_0, ν_1, ω_1, …, ν_n, ω_n); T_Ω := T_{ω_0}g²W_{ν_1}T_{ω_1}···g²W_{ν_n}T_{ω_n}, with 1_{Z_0} at every junction.
 (L1)–(L2). Each factor keeps its own (L1)–(L2). By (Conc)(a)–(b), T_Ω vanishes unless consecutive domain lists meet, and T_Ω depends on (U, J, f) only through the union of X̃^5 over all domains of Ω (main lines and branches).
 Bound. (Conc) with 2n + 1 blocks (whole-term bounds), 2n junctions, rate ½ε″:
 |T_Ω(b, b′)| ≤ (8/γ_exp)^{n+1}(c_1(θ½ε″)²g²rB_𝒲″)^n(c_1ρ″)^{Σ|ω_i|}ρ_A″^{Σ(|ν_i|−k_{ν_i})}e^{−(1−θ)½ε″d(Ω, b, b′)},
 d(Ω, b, b′) the tree distance (WG 5.7 argument: block trees plus junction points form one connected graph).
 Absolute sum. Count as in 2.3: the first domain ≤ C_𝒟 choices, every weighted step ≤ C′_𝒟 choices with factor ≤ ¼, the ≤ k_𝒲 + 2 unweighted steps per insertion ≤ (C′_𝒟)^{k_𝒲+2}. So
 Σ_Ω|T_Ω(b, b′)| ≤ (8C_𝒟/γ_exp)·(4/3)·Σ_n(q_W^T)^n·e^{−(1−θ)½ε″|b−b′|} ≤ (16C_𝒟/γ_exp)e^{−(1−θ)½ε″|b−b′|}
 by (A16-b^T) (q_W^T ≤ ¼, Σ_n ≤ 4/3, (4/3)² < 2). With θ = ½ the rate is ε″/4: D2's "rate halved". Absolute convergence of the walk-level series gives, by term-by-term multiplication with A_Z^f, that its sum is (A_Z^f)^{−1} (WC 5.3 argument; it agrees with the operator Neumann series).
 Per-step form. In the CMP 116 (1.7) form every domain step carries ≤ max{c_1ρ″, ρ_A″, (q_W^T)^{1/(k_𝒲+2)}} — the last entry spreads the insertion weight over its unweighted steps, as WG 4.3 does with ε_V^{1/10}. Since q_W^T is O(g²r), this is ≤ cM_1^{−1} once r_0 is small after M_1 (same position as WG-1's α_0 row; admissible at B32).
 s-rule. π_Ω(s) := Π s(Δ) over σ_0-cubes Δ met by any domain of Ω (main line and branches). This is the only choice compatible with (L2): at s(Δ) = 0 every surviving term must be independent of U in Δ (CMP 116 p. 3, "as before" on p. 13). Complex s, |s| ≤ e^{κ_1}: by A8 (G3), Ω meets m ≤ 2·3^d(1 + d(Ω)/ℓ) cubes, ℓ = LM, so |π_Ω(s)| ≤ e^{2·3^dκ_1}e^{(ε″/16)d(Ω)} under (H_κ^f) ℓ ≥ 32·3^dκ_1/ε″. With θ = ½ the per-term rate ε″/4 drops to (3/16)ε″. The geometric count is unchanged. (A8 4.2 (G3) is about the union of domains; it holds for trees.)
 CMP 116 p. 13 form. Apply WC 5.4 to Ω. 5.4 uses only: every domain X has diam X̃^5 ≤ c_XM_1; the walk/tree order; the run count Σ_n(C′_𝒟c_1ρ)^n ≤ 2. 𝒲-tree domains are WG-G1 and A1-W domains (and unit-block domains of D_S, K_{b_0}, inside M_1-cubes), so diam X̃^5 ≤ c_XM_1 holds with WC's c_X. Runs of near domains (in depth-first order) merge into X_0 with X̃_0^5 = Z̃_0; every other domain has dist(X, Z_0) > ⅔M (5.4(d)); the merged factor depends on (U, J, f) only in Z̃_0. Each far domain keeps a step factor ≤ 2max{c_1ρ″, ρ_A″}. 𝒲-tree domains that leave Z̃_0 are far domains of this kind, like WC's A-tree domains (WC 5.3, last lines). So Q2 holds with the X_0 structure.
 Q2 status: [P given §2 and WC(iii)].
3.2 Q6 — determinant ratio as closed trees [P]. log det(A_Z^fA_Z^{−1}) = −Σ_{n≥1}n^{−1}tr(g²𝒲_ZA_Z^{−1})^n, convergent by (A16-a^T). Expand as in 3.1: tr(·)^n = Σ_b Σ_{closed Ω with n insertions} T_Ω(b, b). Root each closed Ω at its first point b. The closed sum per root is ≤ (4/3)C_𝒟Σ_{n≥1}(q_W^T)^n ≤ 2C_𝒟q_W^T, so
 |log det(A_Z^fA_Z^{−1})| ≤ 2C_𝒟q_W^T·n_Z, n_Z ≤ dim𝔤·d·|Z_0|.
 (The leading 8/γ_exp of each WC term is inside q_W^T, which counts one WC prefactor per insertion; a closed product has exactly n WC factors and n insertions.) Localization: each closed Ω is a polymer on its domain set; its U = 1 value goes to W_{k+1} and the rest to E^{(k+1)} (D2 §3.4 route). With σ: the same with π_Ω(σ), and Lemma P^f(d) (3.4) gives the Z_0-ratio of (2.17). [P]
3.3 Q7 — the square root via the x-integral [P given WC(iv), §2; G3_GGAMMA §3 mechanism].
 Formula. For Re K ≥ c > 0 (spectrum in the open right half plane), K^{−1/2} = π^{−1}∫_0^∞dx x^{−1/2}(x + K)^{−1}, principal branch (VERIFY V3). Apply it to K = A_Z^f: Re⟨u, A_Z^fu⟩ ≥ (½γ_exp − τ_2)‖u‖² ≥ ¼γ_exp‖u‖² (complex), ≥ ¾γ_exp‖u‖² (real).
 Resolvent Neumann. (x + A_Z^f)^{−1} = Σ_n(x + A_Z)^{−1}(g²𝒲_Z(x + A_Z)^{−1})^n; ratio ‖g²𝒲_Z(x + A_Z)^{−1}‖ ≤ τ_2/(x + ½γ_exp) ≤ ½ for all x ≥ 0.
 Walk level. WC(iv) (complex): each (x + A_Z)^{−1} walk term has prefactor 8/(γ_exp + x), the same walks, domains, and rate ½ε″, uniformly in x ≥ 0. Run 3.1 at fixed x. A composite term with n insertions has
 |T_Ω(x; b, b′)| ≤ (8/(γ_exp + x))^{n+1}(c_1²g²rB_𝒲″)^n(steps)e^{−(1−θ)½ε″d(Ω)}, and the label set does not depend on x.
 x-integral, walk by walk (Tonelli). π^{−1}∫_0^∞x^{−1/2}(γ_exp + x)^{−(n+1)}dx ≤ γ_exp^{−n}·π^{−1}∫_0^∞x^{−1/2}(γ_exp + x)^{−1}dx = γ_exp^{−n−1/2}. So
 (C_f(Z_0))^{1/2} = Σ_ΩT_Ω^{½}, T_Ω^{½} := π^{−1}∫_0^∞x^{−1/2}T_Ω(x)dx, |T_Ω^{½}(b, b′)| ≤ 8γ_exp^{−1/2}·(q-weight of Ω)·e^{−(1−θ)½ε″d(Ω, b, b′)},
 where the q-weight is the same per-insertion weight as in 3.1 (8^{n}γ_exp^{−n} reappears from the integral). Absolute sum: Σ_Ω|T_Ω^{½}(b, b′)| ≤ 16C_𝒟γ_exp^{−1/2}e^{−(1−θ)½ε″|b−b′|}. Each T_Ω^{½} has the (L1)–(L2) of Ω (the x-integral does not change kernels' supports or U-dependence), so the s-rule and the p. 13 regrouping of 3.1 apply to it. Analyticity: uniform convergence on 𝒰(α′) × S_r (3.5, Q4).
 Remark. We use ∫_0^∞ directly, not Balaban's split at γ_1 ((2.7) second line, CMP 99 G_3(x) route). At s ≡ 1 both give the same operator. For s ≠ 1 the s-version is defined by the s-rule on the walks of whichever expansion is used; Balaban's p. 13 statement that localization domains "can be chosen to a large extent arbitrarily" covers the choice [I, same reading as WC 5.5 and G3_GGAMMA 3.1]. The bound needs no split because the per-walk prefactor (γ_exp + x)^{−n−1} is integrable against x^{−1/2} on [0, ∞).
3.4 Q8 — the perturbative argument (Lemma D^f, Lemma P^f) [P given A8 Lemmas D, P (corrected forms) and 3.1].
 Lemma D^f. D_σ^f := C_f(Z_0, σ) − C_f(Z_0) = Σ_{Ω meets σ_0}(π_Ω(σ) − 1)T_Ω. A8's four inputs for composite Ω:
 (G1) σ_0-cubes have dist ≥ M from Z_0 — geometry of σ_0, unchanged.
 (G2) every domain of Ω has diameter ≤ c′M_1 — WG/A1-W/WC domains, all ≤ c_XM_1 (VERIFY V3 last item).
 (G3) cube count by tree length — unchanged (union of domains).
 (G4) W^f := sup_bΣ_{b′}Σ_Ω w(Ω)e^{−(ε″/16)d(Ω, b, b′)} < ∞, w(Ω) the bound of 3.1 without the leading 8/γ_exp and without e^{−rate·d}. By 3.1's count (first domain C_𝒟, geometric sums ≤ 4/3, Σ_n(q_W^T)^n ≤ 4/3) and the b′-sum, W^f ≤ 2C_𝒟S(ε″/16), r-free under (A16-b^T).
 Step 1 (A8 corrected): a tree through b ∈ Z_0 and a domain that meets σ_0 has length D ≥ M − c′M_1 ≥ M/2 under (H_M) M ≥ 2c′M_1. Step 2: |π_Ω − 1| ≤ 2e^{2·3^dκ_1}e^{(ε″/16)D} under (H_κ^f). Step 3: rate (1 − θ)½ε″ = ε″/4 (θ = ½). Step 4: e^{−(ε″/4 − ε″/16)D} = e^{−(3/16)ε″D} ≤ e^{−(ε″/8)(M/2)}e^{−(ε″/16)D}. So
 ‖D_σ^f‖ ≤ η_M^f := (16/γ_exp)e^{2·3^dκ_1}W^fe^{−ε″M/16},
 and the kernel form |D_σ^f(b, b′)| ≤ (16/γ_exp)e^{2·3^dκ_1}e^{−ε″M/16}Σ_Ωw(Ω)e^{−(ε″/16)d(Ω, b, b′)} (the (2.16) shape). Only one end in Z_0 is used in Step 1. [P]
 Lemma P^f. Reference: A^f := A_Z^f(U, 0; Re f) (real U, J = 0, real source). It is real symmetric (I-a; 𝒲_S is the symmetric representative of a real quadratic form at real points) with ¾γ_exp ≤ A^f ≤ Γ_1″ + γ_exp/4. Complex point: A_c^f := A_Z^f(U_c; f), Re ≥ ¼γ_exp. Distance: δ_c^f := ‖A_c^f − A^f‖ ≤ δ_c + 2τ_2 (Lemma CP for the A_Z part; the 𝒲 part is ≤ τ_2 at each end; VERIFY V3 confirmed this arithmetic). Hypothesis (H_η)^f: η_M^f ≤ min{1/(2Γ_1^f), γ_exp/(16(Γ_1^f)²)}, Γ_1^f := Γ_1″ + γ_exp, i.e. A8's (H_η) with γ_exp → γ_exp/2. It holds for
 M ≥ M_η^f := (16/ε″)[2·3^dκ_1 + log(256W^f(Γ_1^f)²/γ_exp²)],
 r-free (W^f, Γ_1^f use only τ_2 ≤ γ_exp/4 and (A16-b^T) as hypotheses). Then A8 Lemma P (a)–(e) hold with A → A^f, A_c → A_c^f, η_M → η_M^f, ε_σ → ε_σ^f ≤ ε_σ + 2τ_2: H_σ^f := H(K_σ^f) ≥ ⅛γ_exp, the modulus bound (2.15), and the determinant ratio ≤ exp(O(ε_σ^f)n_Z). The 2τ_2 enters Balaban's α_5 as one more O(γ²r) summand, like his γ_2. [P]
 (U-d) at σ ≡ 0 and real pair: A8 §6 runs verbatim with A → A^f (A^f real symmetric, N_0 the antisymmetric part of K_0^f − A^f, ‖N_0‖ ≤ 2(Γ_1^f)²η_M^{f,0}). Symmetry of C_f(Z_0, 0) is not needed; cost exp(O((η_M^f)²)|Z_0|) and an O((η_M^f)²)‖ZX‖² form. [P relative to A8 §6]
3.5 The other properties, with the corrected 𝒲 (one line each).
 Q1 [P]. Real U, J = 0, real f: A_Z^f real symmetric (Lemma S + I-a), ⟨u, A_Z^fu⟩ ≥ (γ_exp − τ_2)‖u‖² ≥ ¾γ_exp‖u‖². Only ‖𝒲_Z‖ ≤ τ_2 is used; τ_2 now comes from the Schur bound 2.3, not from a finite range. Unchanged otherwise.
 Q5 [P]. ‖C_f(Z_0)‖ ≤ 4/γ_exp (complex), 4/(3γ_exp) (real). α_5‖C_f(Z_0, 0)‖ < ½ in A8 6.4(c)'s form (via H_0^f) for α_5 < (3/8)γ_exp·(1 − O(η_M^f)).
 Q3 [P]. The local operators ∂ of CMP 109 (1.8) act on the first and last factors of each composite term; these are WC walk terms (the Neumann chain starts and ends with A_Z^{−1}), so the treatment of SOURCES_A16_REPLACE 3.3 stands: widening of the end domains by c(d), constant c(d)²e^{2δc(d)}. Derivatives that hit 𝒲 inside are not needed. Status unchanged: [P], H_1 part routed to A1w/A2.
 Q4 [P]. Every T_Ω is analytic on 𝒰(α′) × S_r (2.4 and WC(iii)); the series converges uniformly (3.1). So C_f(Z_0), (C_f(Z_0))^{1/2}, and their s-versions are analytic, with the bounds of 3.1–3.3. Background derivatives by Cauchy.
 Q9 [P]. CMP 116 (2.5) is completing the square for ⟨B, A_Λ^fB⟩ split into Z_0 and Z_0^c. It needs A_Λ^f real symmetric positive at the real pair (§4) and its Z_0-block equal to A_Z^f — true by definition (𝒲_Z = 1_{Z_0}𝒲_S1_{Z_0}). Complex points by analytic continuation where the real parts are ≥ c > 0.
 Q10 [V-project]. D3W8 §1.1: d_S is not multiplied by s or t; for (3.30), τ → t²τ. Unchanged.
 Q11 [V-project]. D3W8 §1.4 with the S9 fix: (1 + τ)^{−1}C_0 ≤ C_f ≤ (1 − τ)^{−1}C_0 needs only |⟨u, g²𝒲_Su⟩| ≤ τ⟨u, A_Λu⟩, which follows from ‖g²𝒲_S‖ ≤ τ_2 and A_Λ ≥ γ_exp with τ := τ_2/γ_exp ≤ ¼. Unchanged in form; τ_2 from 2.3.

## §4 (U-a) The whole-volume C_f and (C_f)^{1/2}

4.1 What "whole volume" means in CMP 116 (2.4)–(2.6) — decision and convention.
 Page facts. CMP 116 (2.6) integrates X over Π_{b∈T_1^{(k)*}}, T_1^{(k)*} = the unit bonds minus the b_0(c) [V p. 12 image]. CMP 116 p. 13: the operators depend "on the external gauge field configurations on the whole lattice T_η" [V p. 13 image]. CMP 109 works on a torus T and a sequence of tori T^{(k)} (CMP 109 text layer l. 122–141: "a torus T obtained by the usual identification", "a sequence of tori"). CMP 116 continues CMP 109 (small-field case).
 Decision [I, from these page facts]. In CMP 116 the step-k Gaussian lives on all unit bonds of the torus: Λ = Λ_k = T_1^{(k)}. Then Λ_k^c = ∅ and WC 0.8's condition dist(Z_0, Λ_k^c) > RM is vacuous. There is no "operator on Λ_k^c": no fluctuation variable lives there, so the question "free or not" does not arise in CMP 116.
 Convention for the large-field setting (CMP 122, Ω-sequence) [I, convention]. The step-k fluctuation integral runs over V_red(Λ) for a union Λ ⊂ Λ_k of M-blocks with dist(Λ, Λ_k^c) > RM (CMP 99 p. 427 C^{(k)}(Λ) [V via A7 0.1]). B′ = 0 off Λ (Dirichlet), as a compression. The whole-volume operator is A_Λ := 1_ΛA_exp1_Λ, A_Λ^f := A_Λ − g²1_Λ𝒲_S1_Λ. Outside Λ there is no Gaussian variable. The operator on Λ^c is neither free nor Balaban's: it does not exist. The configuration outside Λ enters only through the background U in the multiscale operators G_1, H_1, (QG_1Q*)^{−1} (whose trees may run outside Λ; they are kernel pieces, not variables). This is the CMP 99 p. 427/428 convention that A7 §1 already uses (B = 0 off Λ, "no boundary term enters Δ_k").
 So in both settings the whole-volume object is A_Λ^f on V_red(Λ), with Λ a union of M-blocks and dist(Λ, Λ_k^c) > RM (vacuous on the torus). The torus is a union of M-blocks when its side is a multiple of LM [I: Balaban's tori have side L^N, M a power of L].
4.2 Theorem WC on Λ [P, A7 §4.4 Remark as corrected]. A7's verify: "§4.4 is a special case of WC(iv) (Λ = union of M-blocks with dist > RM), not an extension." Precisely: put Z_0 := Λ in WC. Then (i)–(iv) hold for A_Λ with the same constants, without the p. 13 regrouping 5.4 (which is not needed for the whole volume). Torus case: WC's inputs are uniform in the volume and in the Ω-sequence; the torus with all Ω_j = T is the case with no coarser region [I: WC 0.10 "uniform in … volume"; the A3 input A3-6.1's "B = 0 off Λ" is vacuous].
4.3 Whole-volume C_f [P given 4.2 and §2–§3]. Run §3 with Z_0 := Λ:
 - Q1: A_Λ^f real symmetric, ≥ ¾γ_exp at real points; Re ≥ ¼γ_exp on 𝒰(α′) × S_r.
 - Q2: C_f := (A_Λ^f)^{−1} = Σ_ΩT_Ω, the bound of 3.1, absolute sum ≤ (16C_𝒟/γ_exp)e^{−(1−θ)½ε″|b−b′|}; s-rule as in 3.1. No X_0 regrouping (CMP 116 uses the regrouped form only for C^{(k)}(Z_0), p. 13).
 - Q7: (C_f)^{1/2} = (A_Λ^f)^{−1/2} = Σ_ΩT_Ω^{½}, |T_Ω^{½}| ≤ 8γ_exp^{−1/2}(q-weight)e^{−(1−θ)½ε″d(Ω)}, absolute sum ≤ 16C_𝒟γ_exp^{−1/2}e^{−(1−θ)½ε″|b−b′|}.
 - s-version: R^f(s) := Σ_Ωπ_Ω(s)T_Ω^{½}. For s ∈ [0, 1]^{σ_0}: ‖R^f(s)‖ ≤ K_½^f := 16C_𝒟γ_exp^{−1/2}S((1 − θ)½ε″) (G3_GGAMMA 2.1: weights in [0, 1] do not raise a Schur sum). Complex |s| ≤ e^{κ_1}: ‖R^f(s)‖ ≤ e^{2·3^dκ_1}·16C_𝒟γ_exp^{−1/2}S((3/16)ε″) under (H_κ^f). Both are M-free.
 - Coupling factor: E_0^f(s) := 1_{Z_0}A_Λ^f(s)1_{Z_0^c}, ‖E_0^f(s)‖ ≤ Γ_1 + g²b_W^TS(δ_𝒲) ≤ Γ_1 + γ_exp/4 (real s), with A_Λ^f(s) the tree form of §6. So G_Γ^f := ‖Γ_k^f(Z_0, 0)‖ ≤ (Γ_1 + γ_exp/4)K_½^f, M-free: the sourced version of G3_GGAMMA 4.1, so the (Hα) threshold of G3_N2 keeps its form.
 Q9 (whole-volume conditioning) then holds as stated in 3.5.

## §5 (U-b) σ-difference bounds: R_1, R_2, R_3 of CMP 116 (2.16), sourced

5.0 Tools.
 (Wt) Weighted norm ‖Y‖_ρ := sup_φ‖e^{ρφ}Ye^{−ρφ}‖ over 1-Lipschitz φ. Taking φ = |· − b′| gives |Y(b, b′)| ≤ ‖Y‖_ρe^{−ρ|b−b′|}. A kernel bound Σ|terms| ≤ c·e^{−δ|b−b′|} gives ‖Y‖_ρ ≤ cS(δ − ρ) for ρ < δ (WC 4.5). ‖Y^T‖_ρ = ‖Y‖_ρ (φ → −φ), ‖Ȳ‖_ρ = ‖Y‖_ρ, so ‖H(Y)‖_ρ ≤ ‖Y‖_ρ. Fix ρ_f := ε″/32.
 (Anc) Anchored σ-difference [P, Lemma D^f Steps 1–4]. Let Y(σ) = Σ_λπ_λ(σ)Y_λ be any absolutely convergent tree sum whose terms have rate ≥ (1 − θ)½ε″, kernel bound c_Y·w(λ)e^{−(ε″/4)d(λ)}, and domains of diameter ≤ c′M_1. Then for b ∈ Z_0 (one end anchored),
 |(Y(σ) − Y(0))(b, b′)| ≤ 2c_Ye^{2·3^dκ_1}e^{−ε″M/16}Σ_λw(λ)e^{−(ε″/16)d(λ, b, b′)}, ‖1_{Z_0}(Y(σ) − Y(0))‖_{ρ_f} ≤ 2c_Ye^{2·3^dκ_1}W_Y e^{−ε″M/16},
 W_Y the count of λ at rate ε″/16 − ρ_f = ε″/32. Proof: π_λ(0) = 1 if λ meets no σ_0-cube and 0 otherwise, so the difference is the sum over λ meeting σ_0 of (π_λ(σ) − π_λ(0))Y_λ — the deleted/reweighted terms. |π_λ(σ) − π_λ(0)| ≤ 2e^{2·3^dκ_1}e^{(ε″/16)d} (A8 (G3), (H_κ^f)). A tree through b ∈ Z_0 and a domain meeting σ_0 has d ≥ M/2 (A8 corrected Step 1). Split as in 3.4. ∎
 The same holds for a product Y_1·1_{Z_0^c}·Y_2(σ) with Y_1's rows in Z_0 and only Y_2 σ-dependent: expand the product into concatenated labels λ_1∘λ_2 by (Conc); the concatenated tree runs from b ∈ Z_0 to the σ_0-domain, so Step 1 applies to it. The unanchored difference Y_2(σ) − Y_2(0) alone is NOT small (walks inside Z_0^c meet σ_0-cubes freely); it never appears alone in (2.15).
 (Cau) U_c → U, J → 0 [P, kernel form of Lemma CP]. Every tree term A_ω, W_ν is analytic on 𝒰(α″) with its tree bound. Along the disc U(t) of WC 6.0 from (U, 0) to U_c ∈ 𝒰(α) (Balaban's small α ≪ α′, CMP 116 p. 15), t(α, α″) ≥ c_Pmin{α_0″/(α_0 + α_1), α_1″/α_1} ≥ 2, and Cauchy gives |Y_λ(U_c) − Y_λ(U)| ≤ sup|Y_λ|/(t − 1) ≤ c_α(α_0 + α_1)·(tree bound of λ), c_α := 2/(c_Pmin{α_0″, α_1″}). Termwise, so it passes through every sum and product below. The source: 𝒲 is real-linear in d_S, so g²(𝒲(f) − 𝒲(Re f)) = g²𝒲(i Im f) has the tree bound with r (2.3): an O(g²r) term with rate δ_𝒲.
5.1 R_2^f — the measure change [P]. A8 corrected reading: R_2 = H_0 − H_σ, H_σ := H(K_σ), K_σ := C(Z_0, σ; U_c)^{−1}, H_0 := H(K_0^{re}), K_0^{re} := C(Z_0, 0; U, 0)^{−1}. Sourced: K_σ^f := C_f(Z_0, σ; U_c, f)^{−1}, K_0^{f,re} := C_f(Z_0, 0; U, 0, Re f)^{−1}. Write A_c^f := A_Z^f(U_c; f), A^f := A_Z^f(U; Re f), D_σ^f := C_f(Z_0, σ) − (A_c^f)^{−1}. Then
 K_σ^f − A_c^f = −A_c^fD_σ^fA_c^f(1 + D_σ^fA_c^f)^{−1},
 and the same at the real reference. Constants: ‖A_c^f‖_{ρ_f} ≤ Γ_1^f(ρ_f) := 2C_𝒟B_A″S(δ_A″ − ρ_f) + g²b_W^{T″}S(δ_𝒲″ − ρ_f) (W_N + W_S); ‖D_σ^f‖_{ρ_f} ≤ η_M^f(ρ_f) := (32/γ_exp)e^{2·3^dκ_1}·2C_𝒟S(ε″/32)·e^{−ε″M/16} ((Anc) with both ends in Z_0). If Γ_1^f(ρ_f)η_M^f(ρ_f) ≤ ½ (a strengthening of (H_η)^f, same form, r-free, at B18), then
 ‖K_σ^f − A_c^f‖_{ρ_f} ≤ 2Γ_1^f(ρ_f)²η_M^f(ρ_f).
 Hence R_2^f = H(K_0^{f,re}) − H(K_σ^f) = H(K_0^{f,re} − A^f) − H(K_σ^f − A_c^f) − H(A_c^f − A^f) obeys
 ‖R_2^f‖_{ρ_f} ≤ 4Γ_1^f(ρ_f)²η_M^f(ρ_f) + [c_α(α_0 + α_1)(2C_𝒟B_A″ + g²b_W^{T″}) + g²b_W^{T″}]S(δ_𝒲″ − ρ_f).
5.2 R_3^f — the coupling Γ [P]. Γ^f(σ; U_c, f) := 1_{Z_0}A_Λ^f(σ; U_c, f)1_{Z_0^c}R^f(σ; U_c, f) (CMP 116 p. 15 with Δ_k → Δ_k^f, §4.3, §6). R_3^f := Re Γ^f(σ; U_c, f) − Γ^f(0; U, Re f). Telescope:
 Γ^f(σ; c) − Γ^f(0; re) = [E^f(σ; c) − E^f(0; c)]R^f(σ; c) + E^f(0; c)[R^f(σ; c) − R^f(0; c)] + [Γ^f(0; c) − Γ^f(0; re)],
 E^f := 1_{Z_0}A_Λ^f1_{Z_0^c}. First bracket: (Anc) for the tree sum A_Λ^f(σ) of §6 (rows in Z_0), times ‖R^f(σ)‖_{ρ_f} ≤ e^{2·3^dκ_1}16C_𝒟γ_exp^{−1/2}S((3/16)ε″ − ρ_f) (§4.3). Second: (Anc) in product form (E^f(0) anchors the row at Z_0; R^f's σ-difference is the deleted/reweighted sum). Third: (Cau). |Re Y(b, b′)| ≤ |Y(b, b′)| and Γ^f(0; re) is real. So
 ‖R_3^f‖_{ρ_f} ≤ C_3[e^{2·3^dκ_1}·e^{2·3^dκ_1}e^{−ε″M/16} + c_α(α_0 + α_1) + g²rK_W^{T″}],
 C_3 = C_3(γ_exp, B_A″, K_W^{T″}, C_𝒟, S(·)), M-free and r-free (the e^{2·3^dκ_1} squared comes from the reweighting in both factors of the first bracket).
5.3 R_1^f — the first quadratic form [P]. R_1^f is the difference of Γ^{fT}C_f(Z_0, σ)Γ^f between (σ; U_c, f) and (0; U, Re f), real part. Telescope over the three factors: each difference is (5.2) for Γ^f, Lemma D^f + (Cau) for C_f(Z_0, ·), and the other two factors are bounded in ‖·‖_{ρ_f} (G_Γ^f-type bound §4.3 at ρ_f; ‖C_f(Z_0)‖_{ρ_f} ≤ (16C_𝒟/γ_exp)S(ε″/4 − ρ_f)). Same form as R_3^f with a larger M-free constant C_1.
5.4 Result. For i = 1, 2, 3,
 |R_i^f(b, b′)| ≤ (O(1)e^{4·3^dκ_1}e^{−ε″M/16} + O(α_0 + α_1) + O(g²r))e^{−(ε″/32)|b−b′|},   (2.16)^f
 O(1) M-free and r-free. Compared with Balaban's (2.16): rate ε″/32 for ½δ_0 (consumers tolerate a fixed rate; WC 6.8), e^{−ε″M/16} for e^{−δ_0M/3}, and one new summand O(g²r) of the same role as O(α_0 + α_1). Balaban's side condition e^{−δ_0M/3}e^{16κ_1} < 1 becomes e^{4·3^dκ_1}e^{−ε″M/16}·O(1) ≤ small, implied by M ≥ M_η^f with κ_1-term 4·3^dκ_1 (B18, admissible: κ_1 before M). (2.21) follows by Schur: ½(…)S(ε″/32)(‖ZX‖² + ‖Z_0B‖²).
 The O(g²r) summand and the 2τ_2 of Lemma P^f enter the α_5/γ_2 budget of (2.22)–(2.25). Both are O(γ²r), so they are small once r_0 is small at B32.

## §6 (U-c) The tree form of Δ_k^f(σ) and of Δ_k − Δ_k^f

6.1 Definitions. Δ_k (unit-field operator, WC 0.6–0.7: Δ_k = Δ^full + c_G𝒢*𝒢, C*Δ_kC = A_exp). Δ_k^f := Δ_k − g²𝒱_S. Then C*Δ_k^fC = A_Λ^f (on V_red(Λ), §4.1) and Δ_k − Δ_k^f = g²𝒱_S.
6.2 Proposition W_N^f [P given WC 4.2, 6.5 and §2].
 (a) 𝒱_S = Σ_νV_ν: Proposition W_S (2.2) with the outer C*, C removed. Same tree labels without the two outer local blocks; per-term bound r·B_𝒱ρ_A^{|ν|−k_ν}e^{−δ_𝒲d(ν)}, B_𝒱 := B_𝒲/(c_C²c_1(θδ_A)²) (two fewer blocks, two fewer junctions); absolute sum ≤ rK_V^Te^{−δ_𝒲|x−x′|}, K_V^T := 2C_𝒟(C′_𝒟)^{10}B_𝒱. Real points and 𝒰(α″) × S_r (2.4). So Δ_k − Δ_k^f = g²𝒱_S has a tree form with weight O(g²r).
 (b) A_Λ^f = Σ_ωA_ω − g²Σ_νW_ν, a single tree expansion over the disjoint union of the W_N labels (WC 4.2) and the W_S labels (2.2). (L1)–(L2) per factor. Per-term bounds: B_A″ρ_A″^{|ω|}e^{−δ_A″d(ω)} and g²rB_𝒲″ρ_A″^{|ν|−k_ν}e^{−δ_𝒲″d(ν)}. Absolute sum:
 Σ|terms(b, b′)| ≤ (2C_𝒟B_A″ + g²b_W^{T″})e^{−δ_𝒲″|b−b′|} ≤ (2C_𝒟B_A″ + γ_exp/4)e^{−δ_𝒲″|b−b′|} under (A16-a^T).
 (c) s-version. Δ_k^f(σ) := Σ_ωπ_ω(σ)A_ω − g²Σ_νπ_ν(σ)W_ν (in C-coordinates), π over σ_0-cubes met by any domain (branches included). Real s ∈ [0, 1]: same bound (weights in [0, 1]). Complex |s| ≤ e^{κ_1}: bound × e^{2·3^dκ_1} with rate δ_𝒲″ − ε″/16 under (H_κ^f) — or A7 4.2's per-term form with B_A → e^{2^dκ_1}B_A, δ → ½δ; either suffices. ‖C*Δ_k^f(s)C‖ ≤ Γ_1 + γ_exp/4 for s ∈ [0, 1] (Schur).
 (d) At s ≡ 1, (c) is A_Λ^f. Compression to Z_0 gives A_Z^f with the same constants (WC 4.4). Compression 1_{Z_0}·1_{Z_0^c} gives E^f(s), the coupling factor of Γ_k^f (§4.3, §5.2).
6.3 What CMP 116 p. 13 asks and what is supplied. "This construction was discussed in [13] for all operators determining Δ_k, and for C^{(k)}(Z_0), but not for (C^{(k)})^{1/2}." Sourced counterparts: operators determining Δ_k^f — W_N (A1-W, WG-G1, Δ_J branch) plus W_S (H_1 trees, D_S, K_{b_0} with the J_S branch) (6.2); C_f(Z_0) — 3.1 with the X_0 regrouping; (C_f)^{1/2} — 3.3 and 4.3. All three carry the s-rule per cube met by any domain.

## §7 Inputs, canon conditions, verdict

7.1 Final input set.
 Proved inputs, used as stated:
 - WC_FULL Theorem WC (i)–(iv), Proposition W_N (4.2), compression 4.4, Lemma CP (6.1), Lemma AW (6.2), the four-level chain 6.4–6.8 [P relative to WC's residue R1–R4, C1–C2, I1–I9]; WC on Λ (A7 §4.4 Remark, as corrected: special case Z_0 := Λ).
 - WG_FULL Lemma C and its tree form 5.7 [P]; Theorem WG-G1 [P given CMP 99 printed sketches, R]; Δ^{(2)} factorization 5.2 [V + I: C^{(2)}-locality]; branch bound 5.5 [P given C0 [I]].
 - A1_WALK_FULL Theorem A1-W for P = G_1 [C on (C) for G_1 = WC's C2]; Lemma 1.1.
 - SOURCES_A8_POS Lemma S [P mod I-a], Lemma D with the verify correction (D ≥ M/2), Lemma P (a)–(e), §6 (U-d route) [P, residue I-a–I-e].
 - SOURCES_G3_GGAMMA 2.1 (weights in [0, 1] do not raise Schur sums) [P given the s-rule page fact].
 - SOURCES_D2 (2.a) (definition of 𝒱_S, J_S, D_S) and SOURCES_D3W8 §1.1, §1.4 (Q10, Q11; |d_S| ≤ 2r).
 New readings/conventions introduced here [I]:
 - (S_H) scale normalization of D_S and J_S in the k-scale block norm (C0-type, same kind as WG 5.5's C0; consistency check = D2 (a3)'s per-bond class bound).
 - (D2-form) the D^{(2)} correction is Σw_S(b_0)Π_L*K_{b_0}Π_R, Π ∈ {I, H_1}. Harmless: the bound covers all four choices.
 - 4.1 volume decision: in CMP 116 the whole volume is the torus T_1^{(k)} (Λ_k^c = ∅); in the Ω-sequence setting the convention B′ = 0 off Λ, no operator on Λ^c.
 - 3.3 Remark: the s-version of (C_f)^{1/2} is defined on the walks of the ∫_0^∞ representation (Balaban's "domains can be chosen to a large extent arbitrarily", p. 13).
 - 2.4: the source radius on S_r gives |d_S| ≤ 2r for complex f (D2 Lemma 3.1 (v) convention).
 - "Δ^f" in the brief = Δ_k^f (§1).
7.2 New canon conditions (for SOURCES_ORDER_CANON; this file edits no canon).
 - B13–B14 (level constants): enlarge C′_𝒟 by the finite W_S tag set (2.3); then B_𝒲, B_𝒲″, K_W^T, K_W^{T″}, δ_𝒲″ = (1 − θ)δ_A″, k_𝒲 = 12. All after B_A″, δ_A″, ε″; before M_1.
 - B15 (M_1): WC's C′_𝒟c_1ρ ≤ ¼ with the enlarged C′_𝒟 (implies C′_𝒟ρ_A″ ≤ ½ used in 2.3).
 - B18 (M): (H_M) M ≥ 2c′M_1; (H_κ^f) LM ≥ 32·3^dκ_1/ε″; (H_η)^f M ≥ M_η^f = (16/ε″)[2·3^dκ_1 + log(256W^f(Γ_1^f)²/γ_exp²)]; the 5.1 strengthening Γ_1^f(ε″/32)η_M^f(ε″/32) ≤ ½; the 5.4 side condition O(1)e^{4·3^dκ_1}e^{−ε″M/16} ≤ (Balaban's small constant). All are r-free and α-free (they use τ_2 ≤ γ_exp/4 and (A16-b^T) as hypotheses, worst-case constants). Admissible: κ_1, ε″, W^f, Γ_1^f fixed before M.
 - B20–B22 (α): (Cau) needs t(α, α″) ≥ 2, i.e. Balaban's "α′ much bigger than α" (CMP 116 p. 15), already in the canon (B22).
 - B32 (r_0): (A16-a^T) g²rK_W^{T″}S(δ_𝒲″) ≤ γ_exp/4; (A16-b^T) q_W^T ≤ ¼; the O(γ²r) entries of the α_5/γ_2 budget (Lemma P^f's 2τ_2 and (2.16)^f's O(g²r)); optional per-step form (q_W^T)^{1/(k_𝒲+2)} ≤ cM_1^{−1} if a consumer needs CMP 116 (1.7) literally. All linear in g²r with constants fixed before B32.
 These replace SOURCES_A16_REPLACE's (A16-a), (A16-b), and (H_η)^f.
7.3 Status table.
| Item | Status | Where |
|---|---|---|
| 𝒲_S tree form, b_W^T | [P given 7.1] | §2 |
| Q1, Q5 | [P] | 3.5 |
| Q2 (rate ε″/4, s-rule, p. 13 form) | [P] | 3.1 |
| Q3 | [P] (unchanged; H_1 part → A1w/A2) | 3.5 |
| Q4 | [P] | 3.5 |
| Q6 | [P] | 3.2 |
| Q7 | [P] (+ [I] choice of expansion for s ≠ 1) | 3.3, 4.3 |
| Q8 (Lemmas D^f, P^f; U-d route) | [P rel. A8] | 3.4 |
| Q9 | [P] | 3.5, 4.3 |
| Q10, Q11 | [V-project] | 3.5 |
| (U-a) whole volume | [P] + [I] volume decision | §4 |
| (U-b) R_1, R_2, R_3 | [P] | §5 |
| (U-c) Δ_k^f(σ), g²𝒱_S | [P] | §6 |
| (U-d) symmetry of C_f(Z_0, 0) | not needed; A8 §6 route | 3.4 |
| (M1) completeness of the Q-list | [I], open | — |
7.4 Verdict.
 A16 (replacement of the analogy "C_f has all of Balaban's covariance properties"): PROVED relative to the input list 7.1 (WC_FULL Theorem WC + W_N + §6 chain; WG_FULL Lemma C, WG-G1, 5.2, 5.5; A1-W for G_1 [C on (C)]; A8 Lemmas S, D, P, §6; G3_GGAMMA 2.1; D2 (2.a); D3W8 §1.1, §1.4), with the [I] items (S_H), 4.1 volume decision, 3.3 s-version choice, and the S_r convention, and with the canon conditions 7.2. The VERIFY V2 gap (nonlocal 𝒲_S) is repaired: 𝒲_S is a tree sum of exactly the W_N type, with weight O(g²r) per tree. (U-a)–(U-c) are supplied; (U-d) is routed around as in A8.
 Still open: (M1), the completeness reading — no sweep of CMP 109 Sect. 3, CMP 119 pp. 270–279, or CMP 122 I for further uses of the covariance. pp. 12–17 of CMP 116 show no use beyond Q1–Q9 + (U-a)–(U-d) (VERIFY V4, and this file's page reads).
 Not verified. Status before verification: "A16 [P, unverified]: SOURCES_A16_REPLACE2; residue (M1) [I], (S_H) [I], volume decision [I]".
7.5 Recommended verify checks, in order.
 (1) 2.2 type (ii): the branch bound 5.5.1 with G_1 in place of G (WG 5.5 uses only (B1) of the branch factors and C0) and J_S of size O(r) everywhere (not local-small like J).
 (2) 3.1: the composite count — at most k_𝒲 + 2 unweighted steps per insertion, all paid inside q_W^T; rate bookkeeping ½ε″ → ε″/4 → (3/16)ε″ with the s-weights.
 (3) §5 (Anc): one anchored end suffices for Step 1, and the product form E^f(0)[R^f(σ) − R^f(0)] (the unanchored difference is not small).
 (4) 4.1: the torus reading of CMP 109/116 and the Λ convention against CMP 122 I.
 (5) (S_H): the scale power of the plaquette Hessian between two H_1 factors at k-scale units.
