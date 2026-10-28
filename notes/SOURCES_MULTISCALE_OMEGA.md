# SOURCES_MULTISCALE_OMEGA — NEW-3: the Q-list in the multiscale Ω-sequence geometry

Target: NEW-3 of SOURCES_M1_SWEEP.md (CMP 119 pp. 275–276). Owner I-37 / C-new-3.
Ledger tags: [P] proved here; [V] verified on source (page image or project file); [I] inference/reading; [R] refuted.
Firewall: no use of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

(Sections are appended in order below.)

## §1 Page facts, CMP 119 pp. 275–276 [V, 300 dpi images, /tmp/msomega]

P1 (p. 275) [V]. "the fluctuation field A is localized in Λ^{(k)*}_{k+1}, and, what is more important, all the operators and the background field configuration U_{k+1} are determined by the sequence of domains {Ω_j}." So the Gaussian variable lives on ONE region at ONE scale: the unit lattice T_1^{(k)} restricted to Λ_{k+1} (scale L^kη = 1, cf. (3.40) on T_1^{(k)}). The multiscale structure is in the background and in the operators built from it.
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
2.2 The integration domain [V P1, P6, P7]. At step k (CMP 119): the variable is the step-k fluctuation B′ on V_red(Λ_{k+1}), Λ_{k+1} ⊂ Ω_{k+1}, at the unit scale L^kη = 1. In the R-operation (CMP 122 I): the variable is A_j on Z_{j+1} ∩ Ω_{j+1}, at scale j. In both cases the variable space is ONE scale on ONE region. No Gaussian variable ever lives on two layers.
2.3 The covariance, which operator on which space [V P1, P7 + I].
 C^{(k)}(Λ_{k+1}) := A_Λ^{−1}, A_Λ := 1_ΛA_exp^Ω1_Λ on V_red(Λ), Λ = Λ_{k+1};
 A_exp^Ω := C*[(QG_1Q*)^{−1} − a − Δ_J + 𝒢*𝒢]C, where G_1, H_1, Q, (QG_1Q*)^{−1}, J are the CMP 99 operators "determined by the sequence {Ω_j}" (P1, P10). Here Q maps fine fields to the multiscale block lattice 𝔅, so (QG_1Q*)^{−1} is an operator on ℓ²(𝔅, μ); A_exp^Ω uses only its compression to Λ × Λ ⊂ Λ_k-layer × Λ_k-layer. C = I − hLQ̃ and 𝒢 are one-step, block-local, inside Λ (WC 4.1(a)–(b)) [I-strong].
 Localized: C^{(k)}(Z_0) := (1_{Z_0}A_exp^Ω1_{Z_0})^{−1}, Z_0 ⊂ Λ_{k+1}. Resolvent: (x + A_Z)^{−1}.
 For CMP 122 I (1.25): the same with k → j and Λ → Z_{j+1} ∩ Ω_{j+1} [I: (2.21) of CMP 122 III not read].
2.4 Where the multiscale geometry enters [P from 2.2–2.3]. (a) In the kernel pieces of A_exp^Ω: the trees of G_1, H_1, (QG_1Q*)^{−1}, Δ_J have domains that are M_1-cubes of proper scale (side M_1L^{j−k} ≤ M_1 in units L^kη = 1) and may run into the outer layers Ω_j∖Ω_{j+1}, j < k. (b) In the s-cubes σ_0 (side ML^jη on layer j, P5) and the cluster cover {□} (side 2ML^jη, P3). (c) Not in the variable space, not in the parametrix cover of Z_0, not in Lemma E, not in the corridor step.
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

## §4 Extension of Prop. W_N and Theorem WC (ii) to the Ω-geometry

4.0 Two cases. Case A (the one Balaban uses, §2.2): the variable space V_red(Z_0), Z_0 ⊂ Λ_{k+1}, is one layer; only the kernel pieces are multiscale. Case B (general, not used by Balaban): the variable space itself spans several layers. Case A is proved here. Case B is discussed in §6, because it is where the per-layer conditions sit.
Standing condition (Sep) [I]. Every point at unit ℓ^∞ distance ≤ R′M from Z_0 lies in the innermost layer Λ_k = Ω_k (scale L^kη = 1) and in the region where (H1)–(H3) hold in unit form, with R′ ≥ 2. Source: WC 0.8 dist(Z_0, Λ_k^c) > RM (A3 §0.1, ledger I6), and P6: Λ_{k+1} is two cube layers inside Ω_{k+1}. The step-(k+1) analogue of (1.20) was not imaged; this stays [I].

4.1 Prop. W_N^Ω (tree expansion of A_exp^Ω) [P given the multiscale inputs below]. Inputs:
 (W_G1^Ω) WG-G1 for the multiscale G_1: domains = connected families of M_1-cubes of proper scale; (L1)–(L2); bounds B_1ρ_*^{|τ|}m(y, y′)e^{−δ_1d(τ, y, y′)} in the scaled metric d. Status: same as WG_FULL [R to CMP 99 Thms 3.7–3.10], which Balaban states for the sequence {Ω_j} (P10; p. 276 "in their full generality").
 (A1-W^Ω) A1-W for (QG_1Q*)^{−1} on ℓ²(𝔅, μ). A1_WALK_FULL is already written on 𝔅 (A1_WALK_FULL §0, §2.1). Status: [C on (C)], plus O2 [I] (Lipschitz of h_□ across layer boundaries), see 4.4.
 (Conc^Ω) WG Lemma 2.3 is stated with the weights m and μ and junction sums by CMP 96 Lemma 2.1 (A1_WALK_FULL l. 208: "μ(z)m(x, z)m(z, x′) = m(x, x′)"). So it is multiscale as stated [P].
 Proof. WC 4.2 runs verbatim with |·| → d and S(δ) → c_1 of Lemma 2.1. The outer factors C*, C and the vertices 𝒢*𝒢, a, K_{b_0} sit in Λ (one layer, μ = 1, m = 1 there). Junction points inside branches may lie in outer (finer) layers; they are summed with μ-weights by (Conc^Ω), and the weights telescope to m(b, b′) = 1 for b, b′ ∈ Λ. The domain count C′_𝒟 is per domain and counts neighbouring M_1-cubes in the scaled metric; at a layer interface a cube has at most 2^{d}·L^{d−1}·(const) neighbours of the finer layer [P: a face of a layer-j cube meets L^{d−1} cubes of layer j − 1]. So C′_𝒟 → C′_𝒟^Ω ≤ L^{d−1}C′_𝒟 [P-sketch]. Result: |A_ω(b, b′)| ≤ B_Aρ_A^{|ω|}e^{−δ_Ad(ω, b, b′)}, Σ_ω|A_ω| ≤ 2B_Ae^{−δ_Ad(b, b′)} if C′^Ω_𝒟c_1ρ_A ≤ ½. ∎
 Distance on Λ [P given (Sep)]. For b, b′ ∈ Z_0: a path inside the single-scale band {d_∞(·, Z_0) ≤ R′M} has d-length = graph length ≥ |b − b′|_∞; a path that leaves the band has d-length ≥ 2R′M. So d(b, b′) ≥ min{|b − b′|_∞, 2R′M}. The Schur sums over Z_0 are bounded directly by c_1 of Lemma 2.1, which replaces S(δ).
4.2 Compression [P]. WC 4.4 is algebraic: A_Z = Σ_ω1_{Z_0}A_ω1_{Z_0}, same bounds. Unchanged.
4.3 The parametrix in Case A [P]. WC 5.2–5.3 cover Z_0 by cubes of side K_1M_1 at ONE scale, because Z_0 ⊂ Λ_k (Sep). So:
 (a) the h_□ Lipschitz bound c_h/M_1 is elementary (one scale; O2 does not arise at this level);
 (b) □⁺ := {y ∈ 𝔅 : d(y, □) ≤ K_0M_1}, defined in d (A1_WALK_FULL 2.1). Under (Sep) with R′M ≥ K_0M_1 + K_1M_1, □⁺ is a unit-scale set, but the truncation (c) is stated in d and does not need this;
 (c) truncation: a dropped tree has a domain X with X̃^5 ⊄ □⁺; with d-diam X̃^5 ≤ c_XM_1 in local units (P9: the scaled distance is counted in M_1-cubes of each scale), d(X, □) ≥ (K_0 − c_X)M_1 ≥ 2M_1, so d(ω, b, b′) ≥ 4M_1 as in WC 5.2(c). Unchanged;
 (d) separation: dist(supp h_□, □^c) ≥ M_1 inside the single layer. Unchanged;
 (e) commutator: [A_□, h_□] uses |h_□(b) − h_□(b′)| ≤ (c_h/M_1)|b − b′| for b, b′ ∈ □ ∩ Z_0 only (h_□ lives on Z_0). Unchanged;
 (f) local inverses C_□ = A_□^{−1} by Lemma CT on Y = □ ∩ Z_0; the kernel bound of A_□ is the d-bound of 4.1 restricted to Y. Unchanged.
 So E^sep, E^tr, E^com, F_□, and the Neumann series of WC 5.3 hold with the same constants, except C′_𝒟 → C′^Ω_𝒟 and S → c_1. The walk domains are the □⁺ and the multiscale A-tree domains.
4.4 Where the uniform block size was used, and its status in Case A.
 (U1) WC 5.2(a) "One scale is used … m ≡ 1, μ ≡ 1": at the parametrix level this stays true in Case A (Z_0 is one layer). The multiscale cover sits one level down, inside (A1-W^Ω) and (W_G1^Ω). There, O2 (Lipschitz of h_□ across a layer interface) is the one place where a uniform size matters. It is already an open [I] item of A1_WALK_FULL (IN9); NEW-3 makes it load-bearing. Replacement, per adjacent layer pair (j, j+1): build h_□ from tent functions in the local coordinates of each cube; across the interface the local unit changes by the factor L, so the Lipschitz constant in d is ≤ Lc_h/M_1 [P-sketch]. Non-adjacent layers never meet a common cube when each layer has width ≥ RM in its own units (CMP 96 (2.1)–(2.4), "with M and R", P10) and RM > 2K_1M_1 [I: (2.1)–(2.4) not re-read]. Effect: K_F → LK_F, M_W → LM_W; admissible (M_1 is chosen after d, L).
 (U2) S(δ) = sup_bΣ_{b′}e^{−δ|b−b′|}: replaced by c_1 of Lemma 2.1, which is multiscale by design and uniform in {Ω_j} under (2.59) δ_0RM > 16d log c_0 + 1 at the smallest rate used (already in A1_WALK_FULL's canon list, l. 426).
 (U3) WC 5.4 (q = M/M_1 > 10, q > 3(6 + c_X), ⅔M separation): see 4.5.

4.4a Orientation correction [V P3–P5, P10; P]. The layers are Λ_j = Ω_j∖Ω_{j+1} at scale L^jη, j = 0, …, k, with Ω_0 ⊃ Ω_1 ⊃ … . So the innermost layer Λ_k carries the largest scale L^kη = 1, and every outer layer is FINER (P3: cubes of side 2ML^jη = 2ML^{j−k} ≤ 2M in units). Wherever §2–§4 say "coarser layers" for the kernel pieces, read "outer, finer layers". Consequence used below [P]: the scaled metric d counts a bond of layer j as one local unit, while its physical length is L^{j−k} ≤ 1. So d(x, y) ≥ (physical path length) ≥ |x − y|_∞ on all of 𝔅 at step k. Every lower bound of WC stated in d_∞ follows from the same bound in d. This makes (U3) easier than feared.

4.5 (U3) The p. 13 regrouping and the s-rule in the Ω-geometry [P given (Sep), 4.4a].
 Tilde convention [V P4 + I]. P4: for a cube made of π_n-cubes, "the operation ~ is also defined using cubes from π_n". So X̃^5 adds five layers of M_1-cubes of the local scale at each point; c_XM_1 bounds the d-diameter of X̃^5 for domains of every layer (local units, P9).
 (a)–(c) of WC 5.4 concern Z_0, Z̃_0, X_0 only. These lie in Λ_k by (Sep) with R′ ≥ 2 (Z̃_0 adds one layer of M-cubes, M ≤ R′M). So (a)–(c) hold verbatim, with q = M/M_1 > 10.
 (d) Far domains. Let X be far. It contains a point x with d_∞(x, X_0^c) < M_1. If x ∈ Λ_k, then d_∞(x, Z_0) > M − 6M_1 by (c). If x lies in an outer layer, d_∞(x, Z_0) > R′M ≥ 2M by (Sep). By 4.4a, the ℓ^∞ diameter of X is ≤ its d-diameter ≤ c_XM_1. So d_∞(X, Z_0) > M − (6 + c_X)M_1 ≥ ⅔M under q > 3(6 + c_X). The ratio q is the same on every layer, because M and M_1 both carry the local factor L^{j−k}. The per-layer condition is therefore one condition.
 (e) Merging: near domains lie in X_0 ⊂ Λ_k, so runs of near domains are single-layer. The run count uses C′^Ω_𝒟 (4.1): impose C′^Ω_𝒟c_1ρ ≤ ¼, i.e. M_1 larger by the factor L^{d−1} in the C′_𝒟-part of M_W.
 Band [V P4 + I]. The CMP 116 p. 3 band ⅓M_1 is read in local units of each domain (P4: "replace η = L^{−k} by L^{−n}" in all bounds of a layer-n cube). (L1) of A1_WALK_FULL and WG_FULL 0.4 gives the band in d, i.e. in local units. For outer-layer domains the physical band is ⅓M_1L^{j−k}; this is what P4 asks.
 s-rule [P-sketch]. σ_0 = cubes of side ML^jη on layer j (P5), i.e. side M in local units. The A8 (G3) count "Ω meets m ≤ 2·3^d(1 + d(Ω)/ℓ) cubes" holds per layer in local units. A unit of d-length near an interface meets cubes of two adjacent layers, and a layer-j cube face meets ≤ L^{d−1} layer-(j−1) cubes. So m ≤ 2·3^d(1 + L^{d−1})(1 + d(Ω)/ℓ). The complex-s condition becomes (H_κ^{f,Ω}) ℓ ≥ 32·3^d(1 + L^{d−1})κ_1/ε″. Lemma D^f Step 1 ("a tree from b ∈ Z_0 to a domain meeting σ_0 has length ≥ M − c′M_1") holds in d because d ≥ d_∞ (4.4a).
 Resolvent and square root (WC 5.5, A16_REPLACE2 3.3): algebraic in x; unchanged.
 Q6 (closed walks) and Q4 (analyticity of each term) are term-by-term statements; they carry over with the counts above.
4.6 Result, Case A [P relative to 4.1 inputs, (Sep), the P4 tilde/band convention]. Theorem WC (ii) and (iv), and A16_REPLACE2 Q2, Q6, Q7 (with s-rule and p. 13 form), hold for C^{(k)}(Z_0), Z_0 ⊂ Λ_{k+1}, in the Ω-geometry. Changes of constants: S(δ) → c_1 (Lemma 2.1, (2.59)); C′_𝒟 → L^{d−1}C′_𝒟; K_F → LK_F inside A1-W (O2 replacement); (G3) count × (1 + L^{d−1}). All are (d, L) factors fixed before M_1. No new condition between layers enters the WC level; the per-adjacent-layer conditions live inside the inputs (§6.2).

## §5 The lower bound γ_exp and the complex chain in the Ω-geometry

5.1 Theorem L (WC (i)) in Case A [P given (Sep) and the multiscale form of the A3 inputs].
 - Lemma G and Lemma E (WC 1.6, §2) are per block: they involve only bonds, plaquettes, and contours of one L-block B(y), and the background on it. They use no Dirichlet condition and no neighbour. In Case A every block lies in Λ ⊂ Λ_k, at one scale. No fixed size is needed beyond "B(y) is an L-block of its own lattice": by scaling, both lemmas hold for an L-block of any layer with the same K_b, c_𝒢, provided the regularity Mα_0 is measured in local units (H_E) [P: the statements are finite-dimensional and scale-free in local units].
 - Corridors (A3-4.3)/(A3-4.4): in Case A both blocks of every corridor lie in Λ (one scale). Unchanged.
 - (A3-6.1): its inputs R-Δ′, R-Δ2, A3-R1 are stated in A3_GAMMA0_FULL 6.1 as "uniform in k, η, Λ, the domains Ω_j", with the per-layer weighted norm ‖·‖_𝔴 ((L^jη)^{−2} on layer j, CMP 99 (3.35), (3.134)–(3.137)). The minimizer A_* of A3 Lemma 5 runs over the whole multiscale lattice; the identity E(B) = ⟨H_1B, Δ_1H_1B⟩ is variational and holds there. So (A3-6.1) holds for B = 0 off Λ in the Ω-setting, with the same ε_7 [R, as before; no new step].
 - (A3-R4): |J| = O(Mα_0) in local units (CMP 99 (3.36)); on Λ these are unit units. Unchanged.
 So γ_exp = ¼γ_e(d, L) is unchanged in Case A. The regularity used is (H1)–(H3) on the single-scale band of (Sep).
 CMP 122 I (1.25) [I]. There the background obeys the relaxed layer bounds (1.24): constants up to 3L_0^{2N_0}ε_j in local units (P8). So (H_E), (3.1) of WC need α_* ≥ 3L_0^{2N_0}·(Balaban's ε) in that use. N_0, L_0 are fixed before the α's (L_0 < L/2; N_0 from CMP 122 I p. 181). This is a smallness of the same kind Balaban imposes [I: the place of N_0 in SOURCES_ORDER_CANON not checked].
5.2 Local positivity and Lemma CT (WC 5.2(d)–(e)). Per cube □ ⊂ Z_0, one scale. Unchanged.
5.3 The complex chain (WC §6) [P given the per-layer reading of 𝒰(a)].
 - Domains. CMP 99 (3.37) states the complex constraints |A′|, |∇A′| < a_1 "in the scaled units" per layer (WC 6.0). So 𝒰(a) is a per-layer family: a = (a_{0,j}, a_{1,j})_j with the same pair (a_0, a_1) in local units on every layer. The disc U(t) = (e^{itL^{−1}ηA′}U, tJ) is linear in t layer by layer. Hence t(a, b) = c_P·min_j min{b_{0,j}/(a_{0,j} + a_{1,j}), b_{1,j}/a_{1,j}}, and if every level is a fixed multiple of the next one (α^{(n)} = k_nα^{(n+1)} on every layer), the radius is the single-scale value [P].
 - Lemma CP needs a global bound Γ on 𝒰(b). Γ_1″, Γ_3, Γ_4 are Schur bounds on ℓ²(𝔅, μ); with S → c_1 (Lemma 2.1) and C_𝒟 → C_𝒟^Ω they stay (d, L)-constants [P].
 - Lemma AW is A1_WALK_FULL at complex points; it is already on 𝔅 (6.2). Lemma G(complex weights, 6.5) is per block. Lemma CT is per cube. So 6.4–6.8 run unchanged, with the constant changes of 4.6.
 - (3.43): terms with Y ⊄ Λ_{k+1} need analyticity on Ũ^c_{k+1}(Y, (1 + β)α̃_0, (1 + β)α̃_1). This asks the chain to reach (1 + β)α̃ with β ≤ ½. WC 6.9 (B22) chooses Balaban's α after α′ with α ≪ α′; so (1 + β)α̃ ≤ α′ holds [I: the identification α̃ ≤ α of CMP 119's tilde-α not checked].
5.4 Summary. Lemma E and Lemma G need no fixed block size; they are per block. In Case A they are used only on one layer. The lower bound and the chain carry over with the same γ_exp and the constant changes of 4.6.

## §6 Per-layer block sizes: what a genuinely multiscale variable space would need

6.1 Case B (variables on several layers) [P for the listed items; not used by Balaban]. Suppose A_Z acted on a variable space with L-blocks of size L^{j}η on layer j. Then:
 (a) Lemma E, Lemma G: per block, any size (5.1). OK.
 (b) Parametrix: local inverses per cube of any size (Lemma CT is size-free). E^sep, E^tr: per cube, in d, with the local M_1 (4.3(c)–(d)). E^com: needs h_□ Lipschitz c/M_1 in d across a layer interface; replacement Lc_h/M_1 (4.4 (U1)). OK at the cost of the factor L.
 (c) Lower bound: FAILS as written. The corridor step (A3-4.3) is stated for a corridor between two adjacent L-blocks of the same lattice. At a layer interface a block of layer j borders L^{d−1} blocks of layer j − 1 on one face. Neither A3 nor WC has a corridor inequality for this junction, and the symmetric average Q̃ of CMP 109 (0.4) is not defined across it. A new "interface corridor lemma" would be needed, plus a rescaled norm (S-rescaling of CMP 96: N̂ = S^{−1/2}NS^{−1/2}) so that the per-layer γ_exp in local units gives one bound.
 (d) Schur sums: Lemma 2.1 covers mixed scales, under (2.59).
6.2 The per-adjacent-layer conditions (needed in Case A inside the inputs (W_G1^Ω), (A1-W^Ω); needed in Case B at the WC level too):
 (C1) layer width: each Λ_j = Ω_j∖Ω_{j+1} has width ≥ RM in its own units (CMP 96 (2.1)–(2.4), "with M and R", P10 [V text; conditions not re-read]); with RM > 2K_1M_1 no cube of the cover meets three layers [P].
 (C2) Lemma 2.1 condition (2.59): δ_0RM > 16d log c_0 + 1 at the smallest rate used [V CMP 96 p. 234 via A1_KERNEL §5]. It gives (2.60): coupling between layers j, j′ costs e^{−αδ_0RM(|j−j′|−1)_+}, so only adjacent pairs interact at O(1).
 (C3) O2 replacement: |h_□(y) − h_□(y′)| ≤ (Lc_h/M_1)d(y, y′) for y, y′ in adjacent layers [P-sketch: tent functions in local coordinates; the local unit jumps by L across the interface]. M_1 ≥ L·M_W.
 (C4) count: a layer-j cube face meets ≤ L^{d−1} layer-(j−1) cubes; C′_𝒟 → L^{d−1}C′_𝒟, (G3) × (1 + L^{d−1}).
 (C5) q = M/M_1 is the same on all layers (both scale with L^{j−k}), so "M/M_1 > 10" and "q > 3(6 + c_X)" are one condition each, not one per layer.
 The ⅔M separation and the ℓ^∞ band were the feared places. Neither needs a uniform size: 4.4a (d ≥ d_∞ at step k) and P4 (local-unit bands) settle both.
