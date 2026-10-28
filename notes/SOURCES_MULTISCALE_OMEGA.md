# SOURCES_MULTISCALE_OMEGA — NEW-3: the Q-list in the multiscale Ω-sequence geometry

Target: NEW-3 of SOURCES_M1_SWEEP.md (CMP 119 pp. 275–276). Owner I-37 / C-new-3.
Ledger tags: [P] proved here; [V] verified on source (page image or project file); [I] inference/reading; [R] refuted.
Firewall: no use of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

(Sections are appended in order below.)

## §1 Page facts, CMP 119 pp. 275–276 [V, 300 dpi images, /tmp/msomega]

P1 (p. 275) [V]. "the fluctuation field A is localized in Λ^{(k)*}_{k+1}, and, what is more important, all the operators and the background field configuration U_{k+1} are determined by the sequence of domains {Ω_j}." So the Gaussian variable lives on ONE region at ONE scale (the finest, η = L^{−k}). The multiscale structure is in the background and in the operators built from it.
P2 (p. 275) [V]. "on the domain Ω_j∖Ω_{j+1} the configuration U_{k+1} coincides with a U_j-type configuration, it has the same regularity properties and bounds. Therefore we have to change properly the scales on this domain."
P3 (p. 275) [V]. Cover for the cluster expansion: the [I]-cubes covering Ω_k, and for each layer Ω_j∖Ω_{j+1} cubes "which are unions of 2^d neighboring cubes from π_j, i.e. cubes of the size 2ML^jη (measured in η-scale)". A partition of unity {ζ_□} is built on the union, "a cover of Ω_1". "Such covers and partitions were constructed and used in [11, 13], in connection with the generalized random walk expansions." [11] = CMP 96, [13] = CMP 99.
P4 (p. 276) [V]. If a cube □ is a union of 2^d cubes of π_n, j ≤ n ≤ k, the tilde operation uses π_n-cubes; "In all bounds connected with such a cube we have to replace η = L^{−k} by L^{−n}"; "for terms connected with such a cube □, we obtain all the formulas and bounds of Sects. 3, 4 [I] with η replaced by L^{−n}. In fact we have better bounds, because the fluctuation field is localized in Ω_{k+1}, and the exponential decay of propagators and minimizing functions yields additional small factors."
P5 (p. 276) [V]. Sect. 6 [I] localization: "the random walk expansions we use now are constructed for the sequence {Ω_j}, so we apply Theorems 3.7–3.10 [13] in their full generality. The expansions (6.9) [I] are constructed for families σ_0 = {Δ} of cubes in proper scales, i.e. if Δ ⊂ Ω_j∖Ω_{j+1}, then the size of Δ is equal to ML^jη. Then we resum them in localization domains Y_0 ∈ D_k". Terms with Y ⊂ Λ_{k+1} satisfy "exactly all the conditions" of Lemmas 5, 6 [I]; the rest go to B^{(k+1)} with the analyticity space (3.43).
Reading of P1–P5 [I, strong]. Two different multiscale objects appear. (a) The s-cubes σ_0 and the cluster cover {□} are multiscale: size ML^jη on layer j. (b) The walk expansions "for the sequence {Ω_j}" are those of CMP 99 Thms 3.7–3.10 for the background operators G_k, G_1, H_1, (QG_1Q*)^{−1} with the multiscale U_{k+1}. The fluctuation covariance C^{(k)}(Λ_{k+1}) itself is an operator on V_red(Λ_{k+1}) at scale η only; its walk expansion is single-scale in its variables, but its kernel PIECES (A_exp-trees built from (a)-(b) operators) live on the multiscale lattice.

## §2 The multiscale setting, stated exactly

2.0 Further page facts [V, images /tmp/msomega].
P6 (CMP 119 p. 251 (1.20)) [V]. Λ_1 = Ω_1^{~−2} ∩ (R_1′^~)^c, S_1 = (Ω_1∖Ω_1^{~−1}) ∪ R_1. "This domain Λ_1 is the final small field domain, and we will perform the conditional integration … with respect to the fluctuation field A restricted to Λ_1." So Λ_1 lies two cube layers inside Ω_1 (cubes of the Ω-construction), and the integration variable is A on Λ_1 only.
P7 (CMP 122 I p. 182 (1.25)) [V]. The R-operation integral at stage n + 1 is ∫dA_j|_{Z_{j+1}∩Ω_{j+1}} χ(Z_{j+1} ∩ Ω_{j+1}) exp[−½⟨A_j, C*Δ^{(j)}_{Λ_{j+1}}CA_j⟩] · ∫dV_j|_{Ω^c_{j+1}∖Z″_{j+1}} δ(V̄_jV_{j+1}^{−1}) ζ(Ω^c_{j+1}) χ_k^{(n)} exp A_k^{(n)}. The Gaussian variable is the step-j fluctuation A_j, restricted to one region Z_{j+1} ∩ Ω_{j+1}. The V_j-integral over (Ω^c_{j+1}∖Z″_{j+1}) ∩ T^{(j)} is a block-variable integral with δ-constraints and gauge fixing; it is not Gaussian in C^{(k)}.
P8 (CMP 122 I pp. 181–182 (1.22)–(1.24)) [V]. The background U^{(n)}_{k,Z} obeys layer-wise regularity |U(∂p) − 1| < (const)ε_j(L^{k−j}η)² on Ω_{j−1}∖Ω_{j+1}, i.e. scale-j regularity in scale-j units. For layers j > k_0 = k − N_0 the constants carry factors L_0^{2(j−k_0−·)} ≤ L_0^{2N_0}, and c = 3 for j = k.
P9 (CMP 122 I p. 186 below (1.46)) [V text layer]. "the scaled distance in the above estimates is defined in terms of M_1-cubes on corresponding scales."
P10 (CMP 99 text, ll. 218–220, 354, 409–415, 1848, 1958) [V text layer]. CMP 99 defines Λ_j = Ω_j∖Ω_{j+1} (lattices of scale L^jη), and all its operators "are defined by the sequence {Ω_j}, j = 0, 1, …, k". Regularity is per layer: bounds for b ∈ Ω_j∖Ω_{j+1}, j = 0, …, k. The sequences obey (2.1)–(2.4) of CMP 96 "with M and R". So CMP 99 (and CMP 96 Lemma 2.1) are multiscale by construction.

2.1 The multiscale lattice [V CMP 96 via A1_KERNEL §5; P10]. 𝔅 = ∪_{j}Λ_j, Λ_j = Ω_j∖Ω_{j+1} at scale L^jη. Measure μ(y) = (L^jη)^d, weight m(y, y′) = (μ(y)μ(y′))^{−1/2}. Metric d = scaled path length (each bond counts in its own layer's units, P9). Lemma 2.1 (CMP 96): under (2.59) δ_0RM > 16d log c_0 + 1, c_1(α) = sup_yΣ_{y′}e^{−αδ_0d(y, y′)} < ∞, uniform in k, η, {Ω_j}; and (2.60) e^{−αδ_0d(y,y′)} ≤ e^{−αδ_0RM(|j−j′|−1)_+}.
2.2 The integration domain [V P1, P6, P7]. At step k (CMP 119): the variable is the step-k fluctuation B′ on V_red(Λ_{k+1}), Λ_{k+1} ⊂ Ω_{k+1}, at the finest scale (units L^kη = 1). In the R-operation (CMP 122 I): the variable is A_j on Z_{j+1} ∩ Ω_{j+1}, at scale j. In both cases the variable space is ONE scale on ONE region. No Gaussian variable ever lives on two layers.
2.3 The covariance, which operator on which space [V P1, P7 + I].
 C^{(k)}(Λ_{k+1}) := A_Λ^{−1}, A_Λ := 1_ΛA_exp^Ω1_Λ on V_red(Λ), Λ = Λ_{k+1};
 A_exp^Ω := C*[(QG_1Q*)^{−1} − a − Δ_J + 𝒢*𝒢]C, where G_1, H_1, Q, (QG_1Q*)^{−1}, J are the CMP 99 operators "determined by the sequence {Ω_j}" (P1, P10). Here Q maps fine fields to the multiscale block lattice 𝔅, so (QG_1Q*)^{−1} is an operator on ℓ²(𝔅, μ); A_exp^Ω uses only its compression to Λ × Λ ⊂ Λ_k-layer × Λ_k-layer. C = I − hLQ̃ and 𝒢 are one-step, block-local, inside Λ (WC 4.1(a)–(b)) [I-strong].
 Localized: C^{(k)}(Z_0) := (1_{Z_0}A_exp^Ω1_{Z_0})^{−1}, Z_0 ⊂ Λ_{k+1}. Resolvent: (x + A_Z)^{−1}.
 For CMP 122 I (1.25): the same with k → j and Λ → Z_{j+1} ∩ Ω_{j+1} [I: (2.21) of CMP 122 III not read].
2.4 Where the multiscale geometry enters [P from 2.2–2.3]. (a) In the kernel pieces of A_exp^Ω: the trees of G_1, H_1, (QG_1Q*)^{−1}, Δ_J have domains that are M_1-cubes of proper scale (side M_1L^{k−j} in units) and may run into coarser layers. (b) In the s-cubes σ_0 (side ML^jη on layer j, P5) and the cluster cover {□} (side 2ML^jη, P3). (c) Not in the variable space, not in the parametrix cover of Z_0, not in Lemma E, not in the corridor step.
2.5 Upgrade of the (U-a) volume decision [V]. A16_REPLACE2 4.1 left "B′ = 0 off Λ, no operator on Λ^c" as [I] for the Ω-setting. P1 ("A is localized in Λ^{(k)*}_{k+1}"), P6 (integration "with respect to the fluctuation field A restricted to Λ_1"), and P7 (dA_j restricted to Z_{j+1} ∩ Ω_{j+1}) confirm it on images. The remaining [I] is only the distance condition, item (Sep) of §4.

## §3 What the walk expansions must deliver on pp. 275–276

From M1_SWEEP 2.7–2.8 [V-project] and P3–P5:
 - Q2: walk/tree expansion of C^{(k)}(Λ_{k+1}) and of C^{(k)}(Z_0) with (L1)–(L2), a fixed rate, the s-rule with multiscale σ_0-cubes (side ML^jη on layer j), and the CMP 116 p. 13 form; then resummation into Y_0 ∈ D_k (P5).
 - Q6: log det as closed walks (cluster expansion "of Sect. 3.7 [I]" repeated, p. 275).
 - Q7 and WC(iv): (C^{(k)})^{1/2} via the resolvent (x + A)^{−1}, x ≥ 0, uniform in x.
 - Q4: analyticity, now on the per-layer complex spaces; for terms with Y ⊄ Λ_{k+1}, on Ũ^c_{k+1}(Y, (1+β)α̃_0, (1+β)α̃_1) × {A : supp A ⊂ Y ∩ Λ^{(k)*}_{k+1}, |A| < C_1p_1(g_k)} (3.43).
 - Q2 sub-clause (Λ-independence): terms with Y ⊂ Λ_{k+1} satisfy "exactly all the conditions" of Lemmas 5, 6 [I] (P5). Supplied by A15_BDRY Theorem BDRY / Lemma W_Λ rel. its inputs; nothing multiscale is added there because those terms have all domains in Λ_{k+1} (single layer).
 - Q1, Q5 are used through the above (the per-walk prefactor and the norm bound).
Not used on pp. 275–276: Q3, Q8–Q11 (those enter elsewhere in CMP 119 Sect. 3; they consume Q1, Q2, Q5 and inherit whatever §4–§5 give).
The constant demands are those of [I] = CMP 109 "with η replaced by L^{−n}" for cubes of layer n (P4): every bound holds in the local units of its cube. So the target is: Theorem WC and Prop. W_N with all distances in the scaled metric d of 2.1 and all cube sizes in local units.
