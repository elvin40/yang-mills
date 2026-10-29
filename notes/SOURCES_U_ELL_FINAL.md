IDs follow IDS.md (new scheme). Theorem IV = L-196; IV L2 = L-319; IV L3 (FX-V) = L-320; Lemma T = L-284; (Vol) = K-032; Lemma T cut-off convention = K-045; S1 = R-035; Balaban's Theorem 1 = R-013; (C) = H-057. File-local labels of SOURCES_U_ELL and SOURCES_U_ELL_VERIFY ((U_ℓ), Ch1–Ch7, W1–W10, (U-W)′, (D1)–(D6), (KE′-T)) are kept.
# SOURCES_U_ELL_FINAL — closing the residue of (U_ℓ): (U-W)′ against the three sweeps, (D6), and (KE′-T)

Date 2026-10-29. Author: Claude (Opus), unverified. Only this file written. No existing file edited, no PLAN.md line, no sync.sh.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Files read: OPUS_QUEUE.md ll. 1–15; SOURCES_U_ELL (full); SOURCES_U_ELL_VERIFY (full); SOURCES_UW_SWEEP_109_116, SOURCES_UW_SWEEP_119, SOURCES_UW_SWEEP_122 (full); SOURCES_UW_WRAP (headings, §0, §5–§7, §10–§12; it appeared during this session); SOURCES_C_CONDITION §4 and §8.3; SOURCES_LEMMA_T_REPAIR (§4–§5 lines on c̃_T); SOURCES_LEMMA_T_REPAIR_VERIFY (verdict, §1–§2); SOURCES_QE_INV §3.4; IDS.md rows L-196, L-284, L-319, K-032, K-045.
Pages rendered (pdftoppm -r 150, one fresh /tmp folder, read as images, folder deleted at the end), journal pages:
- CMP 96: pp. 224, 226, 228, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243, 244, 245, 246, 247, 248, 249, 250 (PDF page = journal page − 222).
- CMP 109: pp. 252, 253, 254, 257, 258, 262, 265, 275, 290.
- CMP 116: pp. 3, 13.
- CMP 119: pp. 246, 247, 248, 250, 251, 280, 283.
Tags: [P] proved here; [P-sketch] structure complete, one step not written out; [V] read on a page image this session; [R] rests on a cited verified file or a source not re-read; [I] a reading not checked.

## 0. Result

1. Task 1 [V files + P]. The three sweeps cover every page that (U-W)′ lists, and more (all of CMP 109, 116, 119, 122 I, 122 II). Their test is the same as the test of (U-W)′: a danger-class quantity inside a condition that fixes a constant. (D1)–(D4) are covered on every page by explicit rows. (D5) is covered explicitly by the 119 and 122 sweeps and, for CMP 109/116, by the Ch2 lift [P] that the verifier CONFIRMED. So (U-W)′ (D1)–(D5) is discharged, at the grade of the sweeps: [V, one reader each, 120 dpi, not yet verified].
2. Task 2 (D6) [V + R]. On every page that defines localization domains, axial gauges or path variables, the only distinction Balaban makes between domains is "X is inside a cube □̃ (or □̃^{n−j}) or not". It is never "X winds or not". A winding X is in the "not inside a cube" class together with every large non-winding X, and that class is bounded by decay alone. Every axial-gauge contour lies inside one block or one cube. No page uses the holonomy of a non-contractible loop. Whole-domain objects (critical points on Ω_1, the Landau gauge for the fluctuation on T^{(k)}) are controlled by local comparison and by CMP 99/102 constants (Ch3, [R]). The project-side winding loops (QE_INV dressing) are removed by L-284 (Lemma T) with K-045. (D6) holds.
3. Task 3 (KE′-T) [V + P; Cor. 2.8 composition P-sketch]. Balaban's proof of CMP 96 Prop. 2.5–2.7 and Cor. 2.8 is local. The global torus enters only (a) through sums over 𝔅 that Balaban himself bounds by sums over Z^d (p. 233, (2.58)), (b) through the tiling by blocks and M-cubes, and (c) through the requirement that the cube □̃³ (8^d big blocks) embeds in the torus. The local operators live on the fixed-size torus T_□ = □̃³ (p. 238–239) or on L^{−j}Z^d (p. 236, (2.74)). So C_H, δ_H are the same on every torus on which □̃³ embeds at every scale present. This needs side > 8M in units of every scale, which (Vol) ℓ > 22M gives. (KE′-T) moves from [R] to [V + P].
4. L-284 (Lemma T) uses c_T only as a lower bound on the torus side (embedding of the boxes B_y), discharged by M ≥ c̃_T/22 and (Vol). There is no circularity: C_H, δ_H are fixed for all tori with side > 8M, before c_T is defined.
5. Final status. L-319 / (U_ℓ): [P relative to named [R] inputs; unverified]. The named inputs are Balaban's cited theorems (CMP 99, 102 constants "d and L only" for domains of any shape, R-004), Lemma ADM, and the verification of the three sweeps, SOURCES_UW_WRAP and this file. Theorem IV keeps no separate uniformity hypothesis once these verifications pass (§5).

## 1. Task 1: (D1)–(D5) of (U-W)′ against the three sweeps

### 1.1 Page set [V files]
(U-W)′ (SOURCES_U_ELL_VERIFY §8.3) lists the unread pages: CMP 109 Sects. 3–5 (apart from pp. 262–264, 275), CMP 116 (apart from pp. 8, 10, 13, 20–21), CMP 122 I Sect. 1 (apart from pp. 177, 183, 186, 201), CMP 122 II pp. 358–378 (apart from pp. 365–366).
- SOURCES_UW_SWEEP_109_116: every page of CMP 109 (pp. 249–301) and CMP 116 (pp. 1–22), images at 120 dpi.
- SOURCES_UW_SWEEP_119: every page of CMP 119 (pp. 243–285), images at 120 dpi.
- SOURCES_UW_SWEEP_122: every page of CMP 122 I (pp. 175–202) and CMP 122 II (pp. 355–392), images at 120 dpi.
So the page set of (U-W)′ is a subset of the swept set. CMP 119 was not in (U-W)′; its sweep is extra coverage. [P]
Note: the sweeps used 120 dpi, not 150 dpi. The rows quote equation numbers and printed words, so the reading was legible. I do not regrade this.

### 1.2 Test [P]
(U-W)′ asks: no estimate that closes a canon condition Φ_i contains a (D1)–(D5) quantity. Each sweep has the column "fixes a constant?" (109/116: list of κ, M, ε_0, ε_1, α_i, E_0, γ, …; 119: §1 lists every printed constant condition; 122: M, γ, N, p_0, p_1, A_0, A_1, κ, …). A row passes if the quantity is not in a condition, or is in a condition with an ℓ-free majorant. This is the test of (U-W)′.

### 1.3 Criterion map (rows cited)

| (U-W)′ criterion | 109/116 sweep | 119 sweep | 122 sweep | covered? |
|---|---|---|---|---|
| (D1) |T_η|, ℓ, m_T, number of cubes of T | rows 1, 5, 6 (definitions, output totals (0.26), (0.30)); 18 (|Y|, |Z_0| are polymer volumes); 20 | H1 (tiling, a condition on ℓ), H3, H9, H14, H15, H16 (outputs) | rows 10, 11, 12, 16, 17, 20, 21, 22, 24 (volumes of one component or one large-field set, paid per cube); §3 "the only |T_η| is the output (0.1)" | yes |
| (D2) unweighted sum over all of T | rows 2 (integrand), 5 (per-cube step of (0.26)), 14 (decay-weighted), 19 ((1.26), KP bound) | H2 (decompositions of unity), H13, H19, H20 | row 15 (ζ supported in Z); §3 | yes |
| (D3) spectral / Poincaré constant of a domain not inside a fixed cube | rows 21 (γ_1, top of spectrum by Schur; bottom by W1/[13]), 22 (‖C^{(k)}(Z_0)‖, [R] to CMP 99) | H7 (100MR guard), H11 (log det on Λ_{k+1}, [R] R-004 and [13]), H17 (no estimate in CMP 119) | rows 14, 23 (Poincaré on 100M and 100M(L+1)N^{β_0}R_j cubes), 25 (wrapping large-field induction; closed by SOURCES_UW_WRAP Lemmas S, W1, W) | yes, with the [R] items of §1.4 |
| (D4) non-local sup over T not printed "d and L only" | rows 4, 11, 12, 13, 23 | H4, H6, H8, H10, H12 | rows 13 (background 1), 18 (random walk localization) | yes, with Ch3 [R] |
| (D5) torus count not dominated by the Z⁴ count | no explicit row (header lists D1–D4 only) | §2 "No entry of class D5 appears" | scope D1–D5, no hit | yes: for 109/116 by the Ch2 lift [P] (SOURCES_U_ELL_VERIFY §4.1, CONFIRMED) |

### 1.4 What the sweeps leave as [R] (not page residue)
- R1. CMP 99 / CMP 102 constants ("d and L only") for domains of any size, including winding domains: 109/116 rows 4, 11, 12, 22; 119 H4, H6, H10. Graded [V] for "d and L only" in SOURCES_L2_L3L14_VERIFY S9–S12. [R]
- R2. A lower spectral bound of C*Δ_kC on the whole torus (116 row 21, 119 H11). At U = 1 this is printed in CMP 96: (2.153) on p. 249 and (2.157) on p. 250 give ⟨B′, C*Δ_kCB′⟩ ≥ γ′_0‖B′‖², γ′_0 = γ_0L^{−d−1}/(12d²), "on the whole lattice T^{(k)}, or on a subset Λ ⊂ T^{(k)}" [V]. The proof, Lemma 2.4 (p. 245, (2.128)), is stated for Λ ⊂ Z^d. Its proof (p. 244 (2.123), p. 245 (2.124)–(2.127)) is a sum of inequalities over one block B(y) and one pair of blocks B(c_−), B(c_+) [V]. So it holds on any torus whose blocks embed [P]. With a background U_{k+1} the bound is R-004 (local γ_0) [R].
- R3. The wrapping large-field induction (122 row 25): closed by SOURCES_UW_WRAP (Lemma S, W1, W, §7 (ii)) [P there, unverified]. Its identification "(6.31) [I]" = CMP 116 (1.31) is [I] there.
Conclusion of Task 1: (D1)–(D5) are discharged on every page of the five papers. What remains are the [R] items R1–R2 (Balaban's own cited theorems) and the verification of the sweeps and of SOURCES_UW_WRAP. [V files + P]

## 2. Task 2: (D6) — winding domains and holonomy

(D6) (SOURCES_U_ELL_VERIFY §8.3): no step treats a localization domain X that winds around T differently from a non-winding X, and no step uses the holonomy of a non-contractible loop of T (including the axial gauges of condition (iv) of U_j^c(X) on a winding X).

### 2.1 What the sweep tables flag [V files]
- 109/116 sweep: no row names winding or holonomy. Row 7: regularity "on T" is per plaquette or per cube. Row 15: X ⊄ □̃² extended to Z⁴ with error O(1)E_0e^{−(L^jη)^{−1}}.
- 119 sweep: H4 (critical point on Ω_1, not inside a fixed cube), H5 (gauge transformations on all sites: invariance only), H6 (axial-gauge propagators on Ω_1 ∩ Λ_1^c), H19 (p. 280: domains not in □^{~2}, "includes wrapping X").
- 122 sweep §3: "Holonomy around the torus: no page mentions it"; row 13: the whole-lattice minimizer has background 1.
I read as images the pages flagged in 119, and every page of CMP 109, 116, 119 that defines localization domains, path (contour) variables, or axial gauges (list in the header).

### 2.2 Page facts [V, images this session]
- F1. CMP 109 p. 252: blocks B(y); "For a point x ∈ B(y) we take a family G(y, x) of shortest contours … x − y = Σδn_μe_μ (… |n_μ| ≤ L − 1/2)". Every contour of G(y, x) lies in the block B(y).
- F2. CMP 109 p. 253 (0.11): U(y, x) = M({U(Γ)}_{Γ∈G(y,x)}), the averaged contour variable; p. 254 (0.14)–(0.15): gauge fixing by exp[−(1/α)(1 − Re tr U(y, x))] for y ∈ T^{(1)}, x ∈ B(y). The axial gauge is a block axial gauge.
- F3. CMP 109 p. 257: "a localization domain … is a union of a connected, finite family of cubes from π_j"; d_j(X) = length of a shortest tree graph in X meeting all cubes, divided by M. The definition does not distinguish winding X.
- F4. CMP 109 p. 258 (0.27): "If its localization domain X is large, for example it is not contained in any cube □̃ … then (0.25) ensures |E^{(j)}(X, U_k)| ≤ E_0exp(−κ(L^jη)^{−1})exp(−½κd_j(X)) … If the localization domain is contained in a cube □̃, then we introduce the local coordinates". The split is by cube containment.
- F5. CMP 109 p. 262, U_j^c(X, α_0, α_1, γ_0): (i) "for each cube □ ⊂ X of a size O(1)LM there exists a G-valued gauge transformation u defined on □"; (iv) a sequence {Ω_n} "satisfying the conditions (1.3)–(1.6) [14]", and "functions U_n(V) in the axial gauges", with bounds (1.16) on X̃^{−2}, pointwise per plaquette and per bond.
- F6. CMP 109 p. 265: the critical point is chosen in "the axial gauge conditions G(V) = 0"; "we transform at first U′_k(V′) into the axial gauge Ax_k(T^{(k)}, U_{k+1}) … Next we apply the gauge transformation u_k constructed in [14] and changing the axial gauge into the Landau gauge. We obtain U′_k^{u_k^{−1}} = exp iηH_k(B′), where … H_k(B′) is regular and of the same order as B′." U′_k is the fluctuation relative to U_{k+1}. It is bondwise near 1.
- F7. CMP 109 p. 275 (3.26): "the same generalized axial gauge for the configuration M′(U)", |V(b) − 1| < O(1)Mα_0, |v − 1| < O(1)Mα_1; "for a bond b ∈ □̃⁴ ∩ T^{(k+1)} we have V(b) = Ū^{k+1}(Γ_{y_0,b_−} ∪ b ∪ Γ_{b_+,y_0})". The contours run inside the cube □̃⁴ to its centre y_0.
- F8. CMP 109 p. 290: "the crucial step is an extension of the sum over localization domains X … X ⊂ □̃² … The expressions with localization domains, which do not satisfy this condition, are exponentially small in L^jη, either because the domains are large, or because their distances to □ are large"; (4.36).
- F9. CMP 116 p. 3: propagators expanded in generalized random walks over "simple localization domains, unions of connected families containing several cubes … of the size M_1"; each factor "depends on external gauge field configurations restricted to the corresponding domain X̃_j⁵". p. 13: "The above expression depends yet on the external gauge field configurations on the whole lattice T_η … We localize it again"; localization domains are unions of connected families of M_1-cubes; (2.7).
- F10. CMP 119 pp. 246–247: axial gauge fixing (1.5) "In blocks of B(P_1^1)", with U(y, x), y ∈ P_1^1, x ∈ B(y); "it is localizable in subdomains of the lattice". p. 247: "A good approximation on a cube □′ ⊂ B(P_1^1) is given by UU_{1,□′}^{−1}, where U_{1,□′} is taken in the axial gauge".
- F11. CMP 119 p. 248 (1.12): U_1(Ω_1, V) is the critical point on Ω_1 "and the axial gauge conditions U(y, x) = 1 for x ∈ B(y), x ≠ y, y ∈ Ω_1^{(1)}. By Theorem 1 [15] there exists exactly one critical point"; "The field U′ is small, because U′ = UU_1^{−1} = (UU_{1,□′}^{−1})(U_{1,□′}U_1^{−1}), and both fields … are small."
- F12. CMP 119 p. 250: "on □′^{~2} … |U_1U_{1,□′}^{−1} − 1| < O(1)B_3exp(−δLM_2R_1)ε_1". p. 251 (1.21): H_{1,Ax} "depends on its argument restricted to a small neighborhood of ∂Λ_1 … has the exponential decay property"; components of Λ_1^c inside cubes of size 100LMR_1 are replaced by parallelepipeds.
- F13. CMP 119 p. 280 (3.48): domains not in □^{~2}: |E^{(j)}(X, z)| ≤ E_0exp(−κ(L^jL^{−n})^{−1})exp(−½κd_j(X)), "the sum over X is bounded by O(1)exp(−κ(L^jL^{−n})^{−1})". p. 283: "We divide the localization domains X into two classes: X ⊂ □^{~n−j}, or X ∩ (□^{~n−j})^c ≠ ∅"; "introduce the axial gauge for the field M^j(U_k) on □_0, considering □_0 as one block with center at z".

### 2.3 Lemma D6 [V + P; R for CMP 99/102]
Statement. In CMP 109, 116, 119 (and in CMP 122 by its sweep), (a) every case split on localization domains is a split by containment in a cube of fixed size (□̃, □̃², □^{~n−j}), never by winding; (b) every axial-gauge or contour variable is built on contours inside one block or one cube; (c) no estimate uses the holonomy of a loop that winds around T.
Proof.
(a) F4, F8, F13 are the only case splits on X on the pages read; each is "X ⊂ cube" versus "X ⊄ cube" [V]. For ℓ ∈ 𝓛(g), a cube of side ≤ 100MR_k embeds in T_ℓ (Lemma ADM (d), [R]). A winding X is not inside any embedded cube, because an embedded cube is contractible in T_ℓ and a winding X contains a non-contractible loop [P]. So a winding X always falls in the decay class, with every large non-winding X. The decay-class bound depends only on E_0, κ, d_j(X) [V F4, F13]. The domain class D_j (F3) and d_j (F3) are defined the same way for winding X [V]. So no step treats winding X differently.
(b) F1, F2, F10: block axial gauge on contours inside B(y). F7, F13: the generalized axial gauge on a cube □̃⁴ or □_0 "considered as one block". F11: axial gauge conditions U(y, x) = 1 for x ∈ B(y). F5 (iv) builds U_n(V) "in the axial gauges" of [14] on the sequence {Ω_n}; by F1–F2 these are block axial gauges of the scales n [V for the convention; R for [14] = CMP 99 reg.]. So every contour of an axial gauge lies in one block or one cube, and no gauge condition is imposed along a winding path [P].
(c) Holonomy of a winding loop would enter only if a step used a global trivialization (U = exp iηH on all of a winding domain for the background) or a contour that winds. (b) excludes winding contours. Background fields are written as exp iηH only on a cube □̃ (F4, local coordinates) or on □̃⁴ (F7). The global objects are: the fluctuation U′_k relative to U_{k+1} (F6) and the critical point U_1(Ω_1, V) on a possibly winding Ω_1 (F11). Both are controlled bondwise: U′ = (UU_{1,□′}^{−1})(U_{1,□′}U_1^{−1}) with each factor small on a cube (F11, F12). A bondwise-small configuration may have any holonomy around T; no bound on these pages asks for its holonomy, because every bound is per bond, per plaquette, or per cube [V]. The existence and regularity of the critical point and of the Landau gauge u_k on a winding domain are theorems of CMP 102 ([15] Thm 1) and CMP 99 ([14]) [R]. CMP 96 p. 224 states for the linear problem: "we admit the case when some domains Ω_j are equal to T_η" [V], so the propagator framework covers the whole torus explicitly.
Hence (D6) holds on Balaban's side, given R1. ∎
Remark [P]. Abelian constant links U_ν = exp(iθσ_3/N_T) (SOURCES_C_CONDITION 4.1) are regular, have every plaquette equal to 1, and have Polyakov loop exp(iθσ_3). By (c), no Balaban bound sees θ. This is consistent: every cube-local quantity of this configuration is gauge-equivalent to the trivial one.

### 2.4 The project side: QE_INV dressing [R files]
SOURCES_QE_INV §3.4 puts the torus-winding loops λ_b into its far term (numerics: the entrywise bound fails only on wrapped pairs, ratio 1.71). SOURCES_C_CONDITION 4.2 found the seam (thin loops across the seam wind once; energy grows like L^k). L-284 (Lemma T) with K-045 replaces E by χ̃E with support d_*(b, y) ≤ D̃_0 + c_adj. Claim (a′) of Lemma T: under (T2′) N_T > c̃_T every box B_y embeds, so every loop with a nonzero coefficient is contractible; there is no seam in the support (SOURCES_LEMMA_T_REPAIR_VERIFY: PASS WITH CORRECTIONS, G3-a form). So no project step uses a winding holonomy either, given (KE′-T) (§3). [R: L-284 verified with corrections; the G3 contour has one reader]

## 3. Task 3: (KE′-T) — CMP 96 Cor. 2.8 on tori of every large side

(KE′-T) (SOURCES_U_ELL_VERIFY §8.3): C_H and δ_H of CMP 96 Cor. 2.8 ((2.150)–(2.151), p. 249) are the same on every torus of side ≥ c_T(d, L).

### 3.1 Page facts [V, images this session]
- K1. p. 224, (2.1)–(2.4): Ω_1 ⊃ … ⊃ Ω_k, Ω_j ⊂ T_η, Ω_j sums of big blocks, (L^jη)^{−1}dist(Ω_j^c, Ω_{j+1}) > RM; T = ∪_jB^j(Λ_j). "we admit the case when some domains Ω_j are equal to T_η". The setting is Balaban's torus T_η of any side.
- K2. p. 226 (2.18)–(2.22): Δ_a = Δ − ∂P∂* + Q*aQ, G = Δ_a^{−1}. p. 228 (2.35): "A = HB = GQ*(QGQ*)^{−1}B"; "We choose Ω = T_η for simplicity of notation"; the results hold for G(Ω) "with minor and obvious changes".
- K3. p. 232 (2.50)–(2.51): G′ = G′_0(I − R)^{−1} = Σ_ω h G′(□_0)h K … G′(□_n)h, ω = (□_0, …, □_n), □_i ∈ 𝒟, □_i ∩ □_{i+1} ≠ ∅; |(Rλ)(x)| ≤ O(M^{−1})e^{−δ_0d(x,y)}|λ| for supp λ ⊂ B^j(y).
- K4. p. 233 (2.56)–(2.59): the walk sum is bounded by (sup_y Σ_{y′∈𝔅}e^{−αδ_0d(y,y′)})^n, and Σ_{y′∈𝔅}e^{−αδ_0d(y,y′)} ≤ Σ_{j′}Σ_m e^{−½αδ_0mRM} Σ_{z_l, z′_l ∈ Z^d} e^{−½αδ_0|s(y)−z_1|} … = Σ e^{−½αδ_0mRM}(c_0(½α))^{d(2m+1)}, c_0(α) = Σ_{z∈Z}e^{−αδ_0|z|} < 4/(αδ_0). Condition (2.59): ¼αδ_0RM > 2d log c_0(½α) + 1. Balaban bounds the torus sum by a Z^d sum.
- K5. p. 234, Lemma 2.1: c_1(α) = 12c_0^d(½α); (2.61) sup_y Σ_{y′}e^{−αδ_0d(y,y′)} ≤ c_1(α); (2.63). Prop. 2.2 ((2.67)) for G′, "M sufficiently large".
- K6. pp. 235–237: C_□ = ((Q′G′(□̃)²Q′*)↾□)^{−1} with □̃ "of the size 4M" (2.70); lower bound (2.74)–(2.78) uses "G′_j … on the whole lattice L^{−j}Z^d" and its Fourier representation (2.75); (2.76) "γ_0 is a positive, absolute constant"; (2.79) |C^ξ_□(y, y′)| ≤ O(1)e^{−δ_1|y−y′|}; (2.82)–(2.84) R small as O(1)e^{−δ_0M/8}.
- K7. p. 238 (2.85)–(2.88) and Sect. C: Prop. 2.3 for (Q′G′²Q′*)^{−1}. "We take the cube □̃³ and identify it with a torus, denoted by T_□, imposing periodicity conditions." □̃ is 4^d big blocks, □̃² is 6^d, □̃³ is the next cube (8^d big blocks).
- K8. p. 239 (2.89)–(2.93): G_□ = (Δ − ∂P_□∂* + Q*aQ)^{−1} on T_□; G_0 = Σ_□ h_□G_□h_□, Δ_aG_0 = I − R. "otherwise the operator G_□ is simply equal to the operator G_j on the torus T_□. These operators were thoroughly investigated in paper [4]".
- K9. pp. 240–246: the representation (2.129) of G_□ through H′_j (momentum representation (2.101), (2.108), (2.132) on the unit lattice), C′^{(j)}_Λ with (2.110) γ_0, γ_1 "dependent on d and L only", and the form (2.120)–(2.122) bounded below by γ″_0 "dependent on d and L only" via (2.123), (2.127) (block-local, §1.4 R2). Prop. 2.5: "The operator G_□ defined by (2.90) on the torus T_□ (or on the whole lattice ξZ^d) … satisfies all the inequalities (1.110)–(1.114) … with a positive constant δ_2 … This constant depends on d and L only."
- K10. p. 247 (2.133)–(2.141): (2.135) |(RJ)(x)| ≤ O(M^{−1})e^{−½δ_2d(y,y′)}|J|; Prop. 2.6: "There exists a positive constant δ_3 depending on d and L only", (2.136) "with the constant O(1) depending on d and L only"; (2.141) G = G_0(I − R)^{−1} = Σ_ω h G_□ h K … , "convergent in the norms appearing in the inequalities (2.136)–(2.140)".
- K11. p. 248: "this theorem holds for the operators G(Ω) with Dirichlet boundary conditions on Ω^c, Ω ⊃ Ω_1"; (2.142); C_□ = ((QG_□Q*)↾□)^{−1}, C = Σh_□C_□h_□ (2.143); (2.147) "with a positive constant γ_0 depending on d and L only".
- K12. p. 249: (2.148) |C_□(b, b′)| ≤ O(1)(L^jη)^{−d−2}e^{−δ_4(L^jη)^{−1}|b_−−b′_−|}; "We have the same estimates now as before … thus we have (2.85)"; Prop. 2.7 (2.149) |(QGQ*)^{−1}(b, b′)| ≤ O(1)(L^jη)^{−2}(L^{j′}η)^{−d}e^{−½δ_4d(b,b′)}; Cor. 2.8 (2.150)–(2.151): |H(b, c)|, |(∇H)(b, c)|, ‖(ζ∇H)(·, c)‖_α ≤ O(1)[1, (L^jη)^{−1}, (L^jη)^{−1−α}(‖ζ‖^ξ_α + |ζ|)](L^{j′}η)^{−d}e^{−δ_5d(y,c_−)}. No proof of Cor. 2.8 is printed. (2.153): Δ_k ≥ (γ_0/12d²)L^{−d−1} "on the whole lattice T^{(k)}, or on a subset Λ ⊂ T^{(k)}".

### 3.2 Lemma KE (locality of the CMP 96 Sect. 2 constants) [V + P; Cor. 2.8 composition P-sketch]
Statement. Fix d, L. Let M ≥ M_0(d, L) and let RM satisfy (2.59). Let T_η be a torus whose side, in units of L^jη, exceeds 8M for every scale j present, with the blocks and M-cubes tiling it (W10). Then Prop. 2.5–2.7 and Cor. 2.8 hold on T_η with constants O(1), δ_2, …, δ_5 that do not depend on the side of T_η. In particular C_H, δ_H of (KE′) are side-free.
Proof. Every quantity in the proof is one of four kinds.
(1) Operators on a fixed torus or on Z^d. G_□ lives on T_□ = □̃³ (K7, K8); its bounds are Prop. 2.5 (K9), proved by momentum representations on T_□ or ξZ^d and by the block-local inequalities (2.123), (2.127). G′_j lives on L^{−j}Z^d (K6). C_□ lives on □ inside T_□ (K11, K12). The size of T_□ is 8M big blocks, fixed by M; it is the same for every global torus. So these constants are side-free [V + P].
(2) The gluing errors R. Each term K_{□,□′}G_{□′}h_{□′} has kernel bound O(M^{−1})e^{−½δ_2d(y,y′)} (K10 (2.134)–(2.135)), and the analogue for C has O(1)e^{−δ_0M/8} (K6 (2.83)–(2.84), K12). These are bounds on one pair of overlapping cubes [V].
(3) Sums over 𝔅 (the walk sums, the Neumann series, and the convolutions). Balaban bounds them by Lemma 2.1, whose proof majorizes Σ_{y′∈𝔅} by sums over z ∈ Z^d (K4). On the torus this majorization is valid: fix y and an admissible contour from y to y′ on T_η; lift it to Z^d from a lift of y; the lift of y′ is determined by the lifted contour, and the projection T ← Z^d maps it back to y′. So each y′ has at least one Z^d image with the same contour length, and Σ_{y′∈T} ≤ Σ_{z∈Z^d} [P] (the same lift as Ch2). Hence c_1(α) = 12c_0^d(½α) is side-free and (2.59) is a condition on RM only [V + P].
(4) The geometry. The only global requirements are that 𝒟 and the blocks tile the torus (W10) and that each □̃³ is an embedded cube, so that T_□ is a torus of side 8M made from an embedded cube. Both are lower bounds on the side, not constants that depend on it [P].
Given (1)–(4), the Neumann series (2.141) converges for M ≥ M_0(d, L) (O(M^{−1})c_1 < 1) with sum bounds that are geometric series in side-free numbers. So Prop. 2.6 holds with side-free O(1), δ_3 [V statement + P]. The same for (QGQ*)^{−1}: Prop. 2.7 (K12) [V statement + P].
Cor. 2.8. By K2, H = GQ*(QGQ*)^{−1}. Its kernel is Σ_{b′∈𝔅}(GQ*)(b, b′)(QGQ*)^{−1}(b′, c) times scale factors. Bound (GQ*) by (2.136)–(2.137) and (QGQ*)^{−1} by (2.149). The sum over b′ is ≤ c_1(α) by (2.61) with the triangle inequality (2.54), as in (2.88) on p. 238 [V for the same pattern]. All factors are side-free, so C_H, δ_H (= O(1), δ_5 of (2.151)) are side-free. The tracking of the powers of L^jη is not written out here [P-sketch]; it does not involve the side. ∎
Dependence on M [V + P-sketch]. Prop. 2.6 and (2.147) are printed "depending on d and L only". In the Neumann series, M enters only through the smallness factors O(M^{−1}) and e^{−δ_0M/8}; a larger M only makes them smaller. C_□ has "an exponential decay with a decay rate δ_1 depending on δ_0 and the bound γ_0" (p. 237), uniform in the size 8M of T_□. So C_H, δ_H can be taken as (d, L) numbers for all M ≥ M_0(d, L). This is the order the canon uses (N-060 fixes C_H, δ_H before M). The constants O(1), δ_4, δ_5 of Prop. 2.7 and Cor. 2.8 are not labelled "d and L only" on the page; this sentence is [P-sketch] for them.

### 3.3 Verdict on (KE′-T)
Balaban's proof is local. (KE′-T) holds in the corrected form:
(KE′-T*) C_H, δ_H of CMP 96 Cor. 2.8 are (d, L) numbers, valid on every torus whose side in units of each scale present exceeds 8M (and is tiled by blocks and M-cubes), for M ≥ M_0(d, L) and RM satisfying (2.59).
Under (Vol) ℓ > 22M, the side in units of every scale j ≤ K is ≥ ℓ > 22M > 8M (SOURCES_C_CONDITION 4.4). So (KE′-T*) applies on every torus of Theorem IV. The threshold is 8M, not c_T(d, L); the statement of (KE′-T) with "side ≥ c_T" was the wrong threshold, but (Vol) covers both. Grade: [V + P], with the Cor. 2.8 composition and the M-freedom of δ_4, δ_5 [P-sketch].
Not re-read: CMP 95 Prop. 1.2 and [3] = CMP 89, on which Prop. 2.5 rests. They are used only on T_□ (fixed size) and on ξZ^d, so they cannot carry the global side [P]; their correctness is Balaban's [R].

### 3.4 L-284 (Lemma T) and c_T [R files + P]
- c_T(d, L) = 2L(D_0 + 3(d + 1)) + 2, with D_0 the least D ≥ 1 such that c_tre^{−δ_HD/4} ≤ ¼ (SOURCES_C_CONDITION 4.3 (d)); repaired c̃_T ≤ c_T + 6Lc_adj, c_adj ≤ d(L + 5)/2 (SOURCES_LEMMA_T_REPAIR (d′), VERIFY G3-a).
- Use. (T2′) N_T > c̃_T is used only in claim (a′): the box B_y with its Q-legs embeds in the torus, so the cut-off kernel has no winding path and no seam. It is a lower bound on the side. (T1′) RM ≥ 4L²(D̃_0 + c_adj) is a lower bound on RM. Neither makes a constant depend on the side [P].
- Discharge. M ≥ c̃_T/22 and (Vol) ℓ > 22M give (T2′) at every scale (SOURCES_C_CONDITION 4.4; SOURCES_LEMMA_T_REPAIR consumer row 8).
- Order. C_H, δ_H are fixed first for all tori of side > 8M (§3.3), with M ≥ M_0(d, L). Then c_tr, D_0, c̃_T are (d, L) numbers. Then M ≥ max(M_0, c̃_T/22, …). There is no loop: the CMP 96 threshold 8M scales with M, and c̃_T does not depend on M [P].
- IDS row L-284 says "to review"; its (c′) repair is verified with corrections; the G3 contour has one reader. This is unchanged here [R].

## 4. Final status of L-319 / (U_ℓ)

Inputs to (U_ℓ) after this file:
| item | before | after | source |
|---|---|---|---|
| definitional layer (Lemma U1, canon has no ℓ) | [P, CONFIRMED] | unchanged | SOURCES_U_ELL §2, VERIFY §2–§3 |
| Ch1–Ch6 bounds | [P, CONFIRMED] | unchanged | VERIFY §4.1 |
| Ch7 | CORRECTED | unchanged (β_j, Π^{(j)} on Z^d; the two torus objects are Ch3/Ch4) | VERIFY §4.1 |
| completeness of Ch1–Ch7 = (U-W)′ (D1)–(D5) | [I] | [V, sweeps of every page, one reader each, unverified] | §1 |
| (D6) winding / holonomy | [I] | [V + P; R for CMP 99/102] | §2 |
| wrapping large-field induction (122 II (1.80)–(1.88)) | [P-sketch] | [P, SOURCES_UW_WRAP, unverified; "(6.31) [I]" = CMP 116 (1.31) is I] | §1.4 R3 |
| (KE′-T) | [R] | [V + P] as (KE′-T*), threshold 8M; Cor. 2.8 composition and M-freedom of δ_4, δ_5 [P-sketch] | §3 |
| Lemma U4 | [V + I] | unchanged (support, not proof) | VERIFY §6 |

Proposed status (not applied): L-319 / (U_ℓ): [P relative to named [R] inputs; returned, unverified]. Text: "(U_ℓ) proved (SOURCES_U_ELL + VERIFY + UW_SWEEP_109_116, _119, _122 + UW_WRAP + U_ELL_FINAL): canon conditions are ℓ-free; every page of CMP 109, 116, 119, 122 I–II read for (D1)–(D5) with no hit in a constant-fixing condition; (D6): every case split is by cube containment and every axial contour is in one block or cube; (KE′-T*): CMP 96 Sect. 2 is local, C_H, δ_H are (d, L) numbers on every torus of side > 8M per scale, which (Vol) gives. [R] inputs: CMP 99 and CMP 102 constants 'd and L only' for domains of any shape (SOURCES_L2_L3L14_VERIFY S9–S12), R-004, CMP 95 Prop. 1.2, Lemma ADM (with its own [I]), L-284 (c′) (G3 one reader)." Headline discipline: until verifiers report on the three sweeps, SOURCES_UW_WRAP and this file, the headline is "returned".

Remaining weakest points, in order:
1. The three sweeps and SOURCES_UW_WRAP have no verifier yet. The sweeps read at 120 dpi.
2. R1: CMP 102 Theorem 1 and CMP 99 for winding domains. CMP 96 (linear, U = 1) is now checked local (§3). The background-field and nonlinear versions are not re-read. A check of CMP 99 Sect. 3 and CMP 102 Thm 1 for the same three features (local tori or cubes, Z^d majorized sums, no global trivialization) would close R1.
3. The Cor. 2.8 composition and the M-freedom of δ_4, δ_5 [P-sketch].

## 5. Theorem IV (L-196): hypothesis list for (a)–(b) after this file

1. (H-T2) the hypotheses of Target 2 on T_ℓ for every ℓ ∈ 𝓛(g) = {2L^m : 2L^m ≥ ℓ_0(g)} (or every ℓ in one infinite subset): L-001, Balaban's Theorem 1 (R-013, with the cited CMP 95–102 theorems), R-035 (S1, including (C) and L-284), R-043 Steps A, C, D, R-042 via Q-061. Unchanged.
2. (H-L6) the inputs of L-323 beyond (H-T2). Unchanged.
3. The Kotecký–Preiss theorem [R]. Unchanged.
Removed: (U-W)′ [I] and (KE′-T) [R]. (U-W)′ is discharged by the sweeps (§1) and (D6) (§2); (KE′-T) by Lemma KE (§3). (U_ℓ) is a lemma of the proof, [P relative to the [R] inputs of §4], pending verification. The [R] inputs of §4 are Balaban's cited theorems, which (H-T2) already assumes through R-013; Lemma ADM and L-284 are project lemmas inside the proof. So Theorem IV has no separate uniformity hypothesis left, conditional on the verifications of §4 item 1.
(c) and (d): unchanged.

## 6. Grade table

| item | grade |
|---|---|
| §1.1 page coverage of (U-W)′ by the sweeps | [V files + P] |
| §1.3 (D1)–(D4) covered | [V files] (sweeps unverified) |
| §1.3 (D5) for CMP 109/116 | [P] (Ch2 lift) |
| §1.4 R2 at U = 1: CMP 96 (2.153), (2.157), Lemma 2.4 block-local | [V + P] |
| §2.2 F1–F13 | [V] |
| §2.3 Lemma D6 (a), (b) | [V + P] |
| §2.3 Lemma D6 (c) | [V + P; R for CMP 99/102] |
| §2.4 project side (Lemma T) | [R files] |
| §3.1 K1–K12 | [V] |
| §3.2 Lemma KE (1)–(4), Prop. 2.6, 2.7 side-free | [V + P] |
| §3.2 Cor. 2.8 composition; M-freedom of δ_4, δ_5 | [P-sketch] |
| §3.3 (KE′-T*) | [V + P] |
| §3.4 c_T use and order | [P + R files] |
| §4 L-319 / (U_ℓ) | [P relative to named R inputs; unverified] |

Side finding [V]. The threshold of (KE′-T) is the embedding of □̃³ (8M big blocks per scale), not c_T(d, L). SOURCES_C_CONDITION 4.6 and canon N-060 ("uniform in the torus side [R, SOURCES_C_CONDITION 4.6]") should cite §3.3 here with the threshold 8M per scale, implied by (Vol). Not applied.

## 7. Report (≤ 100 words)

The three sweeps cover every page of the (U-W)′ set and test the same thing. (D1)–(D4) are covered by explicit rows; (D5) by rows or the Z⁴ lift. (D6): Balaban splits domains only by whether they lie in a cube, never by winding. Every axial contour lies in one block or cube, and no bound uses a winding holonomy. (KE′-T): CMP 96 Sect. 2 is local: it uses fixed tori □̃³ and Z^d operators, and Balaban bounds torus sums by Z^d sums. So C_H, δ_H are (d, L) numbers once side > 8M, which (Vol) gives. L-319: P relative to the CMP 99/102 [R] inputs; unverified.

STATUS: COMPLETE. 40 page images rendered at 150 dpi into one fresh /tmp folder, read as images, folder deleted. Firewall kept. Only this file written.
