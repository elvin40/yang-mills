IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# THM39_FULL verification (independent)
Started 2026-10-28. Firewall respected: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP.

## V1. CMP 98 (78)-(80), p. 30 image (pdf p. 14, 300 dpi) [task (e)]
- (78): (R̄_0v)(y) = v(y) exp[i Σ_{x∈B(y)} L^{-d} (1/i) log v^{-1}(y)R(V_0(Γ_{y,x}))v(x)], y ∈ Ω′^{(1)}. Uses v only on B(y). Uniform weights L^{-d}. Contours Γ_{y,x} are the axial contours inside B(y) (CMP 98 (64), p. 29).
- Linearize at v = e^{iλ}: exponent = Σ L^{-d}[Ad(V_0(Γ_{y,x}))λ(x) − λ(y)] + λ(y) + O(λ²). So the linear part is L^{-d}Σ_{x∈B(y)} R(V_0(Γ_{y,x}))λ(x). Block-diagonal, uniform weights.
- (79)-(80): R̄_0u^{j+1}(x_{j+1}) = (R(Ū_0^j)R̄_0u^j)(x_{j+1}). Iteration of block-local averages. So Q′_j is block-diagonal: row y sees only B^j(y). [I-Q] block-diagonality CONFIRMED.
- CORRECTION to the form of (I-Q): the composite transport is U_0(Γ^{(j)}_{y,x}) = Ū_0^{j−1}(Γ_{x_j,x_{j−1}})···Ū_0(Γ_{x_2,x_1})U_0(Γ_{x_1,x}) (p. 29 last line). It is a product of AVERAGED links Ū^i on level-i axial contours, not a fine-lattice holonomy. Consequences for LB §4.4: (a) covariance still holds, since averaged links transform as Ū^i_b → u(b_−)Ū^i_bu(b_+)^{-1} (CMP 98 (70)); (b) the bound |R(Ū(Γ^{(j)})) − I| ≤ K_ΓMα_0 needs |Ū^i − 1| ≲ ηℓ_i|A|-type bounds for averages of a near-identity field e^{iηA}. This is an extra input (averages of a small field stay small, level by level). It is standard (CMP 98) but not stated in THM39_FULL. Tag it [R/I], new item. Locality: averaged links of bonds inside B^{i+1}(x_{i+1}) depend on U only inside that block, so Q′(y) depends on U only on Δ(y) (plus possibly its boundary corridor; harmless for LB since □(y) contains the η-layer).

## V2. CMP 99 pp. 396, 411-413 images (pdf pp. 8, 23-25, 300 dpi) [task (a)]
- (M1) CONFIRMED: (3.96) prints (Q′G′Q′*)^{-1} = C_0(I − R)^{-1}; square missing.
- (M2) CONFIRMED: p. 411 prints e^{-(1/4)δ_0M} ≥ 3!(1/4 δ_0M)^{-3}; must be ≤.
- (M3) CONFIRMED: p. 412 prints □̃Q′h′G′h′²G′h′Q′h_□C_□h_□; last Q′ must be Q′* (the next display has Q′*).
- (M4) CONFIRMED: "restructed" p. 413. Also "expanson" p. 412 (typo).
- NEW misprint (M5), missed by the author: p. 412 says "with Ω_0 contained in a cube for which the condition (3.25) is satisfied". (3.25) is the definition of R. It must be (3.35).
- (G1) CORRECTED: p. 396 prints a standing hypothesis: "We will need α_0 so small that O(1)Mα_0 is still a sufficiently small number." So "Mα_0 small" is in force for all of Sect. 3. It is not a gap in Thm 3.9; making it explicit is fine.
- (G2), (G3), (G4) CONFIRMED on the images (p. 412 domain-change citation to [2] and Cor. 3.5; p. 413 "difficult to make the last statement more precise").
- (3.35) p. 396: cube class, O(1) ≥ 10, bounds at the cube's index j. The reading c_3 = 12L² (index j or j−1) is a choice of the O(1); acceptable as [I].

## V3. Lemma LB redone [task (b)]
Trial function. For y ∈ Λ_j, ℓ = L^jη: φ_y = ψ((x − x_y)/ℓ) (L^j ≥ 8) or 1_{Δ(y)} (L^j < 8); u_y = the (3.35) gauge on a class cube □(y) ⊃ Δ(y) + η-layer; λ_y(x) = R(u_y(x))^{-1}φ_y(x)s(y)²R(u_y(y))ω(y) on Δ(y); λ = Σ_yλ_y.
Cauchy–Schwarz. G′ symmetric, Δ′_aG′ = 1 on 𝒦(Ω_0): ⟨λ, Q′*ω⟩ = ⟨Δ′_aλ, G′Q′*ω⟩ ≤ ‖Δ′_aλ‖·‖G′Q′*ω‖, and ‖G′Q′*ω‖² = ⟨ω, Nω⟩. Checked. The denominator is a squared NORM ‖Δ′_aλ‖², because N contains G′². Only pointwise bounds on Δ′_aλ are needed.
Numerator. Block-diagonality (V1) gives (Q′λ)(y) = (Q′λ_y)(y). Covariance turns the transports into those of U^{u_y} = e^{iηA}. ⟨Q′λ(y), ω(y)⟩ = s²⟨M_yω̃, ω̃⟩ ≥ s²(c_y − ‖M_y − c_y‖)|ω|² ≥ ½c_φs²|ω|². Checked.
Denominator. Pointwise |Δ_Uλ_y| ≤ (K_φ + K_AMα_0)ℓ^{-2}|v_y| from (3.51): the η^{-1}|A| terms cancel between ±μ only through the printed form (3.51); the remaining terms are |A||Dφ|, |D*A|, |A|² — all O(Mα_0)ℓ^{-2}. My count gives K_A = 2d(2K_φc_3 + c_3 + 2ec_3²), smaller than the author's; harmless. Overlap count (2d + 1), #N(Δ(y)) ≤ 3^d(ℓ/η)^d, η^d(ℓ/η)^d = μ(y), |v_y| = s²|ω(y)|: sum = K⟨ω, S²ω⟩. Averaging part: a_j ≤ a, sup-norm of Q′* on its block. Checked. Bump case split (L^j < 8; (L^j/2 − 1)^d ≥ (L^j/4)^d points with ψ = 1) checked.
Constants. c_φ = 4^{-d}; K_φ(d); c_3 = 12L²; K_Γ(d, L); K_N(d, L, a). γ_N = c_φ²/(4K_N) depends on (d, L, a) only. No M, M_1, j, η, volume dependence. CONFIRMED.
No (C)-type hypothesis sneaks in: inputs are (3.35) on one class cube per block, (3.51), G′ symmetric, block-diagonal Q′. CONFIRMED.
Correction needed (from V1). The transport inside Q′_j is a product of averaged links Ū^i on level-i contours (CMP 98 (77)–(80)), not a fine holonomy of length ≤ c_ΓL^jη. Step 4.4's bound |R(·) − I| ≤ K_ΓMα_0 then needs: averaged links of the small field e^{iηA} satisfy |Ū^i − 1| ≲ ℓ_i sup|A| on the block (a CMP 98-type small-field estimate), and the corridors of those averaged links stay in □(y). Add as a tagged input [R/I]. The constant changes; the structure does not. Same note for 7.3 (complex point).
Why the same argument does NOT give (C) for QGQ* (1-forms). The variational step works the same way (⟨ω, QGQ*ω⟩ ≥ |⟨Qλ, ω⟩|²/⟨λ, G^{-1}λ⟩; the energy form is controlled by S2 route Π, since R is an orthogonal projection). The failure is the numerator. The 1-form average Q_j(c) is a straight-line corridor average over B(c_−) ∪ B(c_+). A μ-bond at axial position t in a block gets weight ≈ (t + 1)/L from row c and ≈ (L − 1 − t)/L from row c − Le_μ. So bump trial fields give a bidiagonal matrix with comparable entries a, b. Its symbol a + be^{ip} has modulus |a − b| ≈ 0 at p = π (checkerboard B), so ⟨Qλ, B⟩ has no diagonal dominance. Only the last bond layer of a block is seen by one row, and a bump there has gradient ~ η^{-1}, not ℓ^{-1}. For gauge functions Q′_j is exactly block-diagonal (V1), so the cross term is zero. That is the precise difference. Author's 4.7(b) states it correctly in short form.
Note: LB and (C) point in the same direction (lower bounds on QG′²Q′* resp. QGQ*). (C) is now [P] by SOURCES_C_CONDITION (verified), but via Theorem QE + Lemma T, not via a bump.

## V4. Merged-cube step §3 [task (c)]
Supports: G′_{ω1}G′_{ω2} ≠ 0 needs □_n ∩ □′_0 ≠ ∅. Step count: ω1 has n steps (ρ′^n), ω2 has m (ρ′^m), merged walk has n + m + 1 entries and n + m steps. No lost step: the first factor of ω2 is h G′ h without ρ′, so the junction slot carries no factor and needs none. CONFIRMED.
(F1): d(x_{n−1}, z) ≤ d(x_{n−1}, x_n) + d(x_n, z); also d(z, x′_1) ≤ d(z, x′_0) + d(x′_0, x′_1) on the ω2 side (author mentions only one side; trivial). CONFIRMED.
Rate/constant: ½δ′d(ω) + ½δ′d(z, y′); Σ_z with L²e^{2θ_Ld}, 2θ_L ≤ ¼δ′ → c_1(¼δ′); 1/μ(y′) ≤ mL^{d/2}e^{(d/2)θ_Ld}. b_G = B′²L^{2+d/2}c_1(¼δ′), δ_G = ½δ′ − (d/2)θ_L ≥ ½δ′ − δ′/16 = (7/16)δ′. CONFIRMED.
Counting: junction allowed at every step overcounts (each walk has exactly one J); upper bound, fine.

## V5. (3.95) ↔ A1-W map, rates, A1-W reuse, complex form [tasks (d), author items (e), (5)]
Map: separation (1 − □̃)…hCh ↔ E^sep; domain change □̃Q′(G′² − G′_□²)Q′*hCh ↔ E^tr (truncated walk sum instead of a local domain sequence; same role); commutator ↔ E^com. Balaban: Q′G′²Q′*C_0 = I − R, inverse C_0(I − R)^{-1}; A1-W: N̂P = I + F, inverse P(I + F)^{-1}. Same right-parametrix structure. The algebra N̂hCh = h² + (E^sep + E^tr + E^com)Ch re-derived (h supported in □, N̂_□C_□ = 1_□, Σh² = 1). CONFIRMED.
Rates: δ′ = ½δ_0 → δ_G ≥ (7/32)δ_0 → ε ≤ ½δ_G → output rate ½ε before rescaling, ½ε − |2 − d/2|θ_L in the (3.99) split. Weaker than printed ½δ_0; stated openly. CONFIRMED.
Small fix: ε is defined from δ_G, which depends on RM through θ_L, and RM is raised again after ε (5.6). No real loop, because δ_G, Σ(·), c_1(·) improve monotonically in RM. Cleaner: define ε with the RM-free floor δ_G^min := (7/16)δ′ and the constants at the minimal RM. Recommend this one-line change.
A1-W reuse (author's (e)): A1_WALK_FULL uses S^{-1/2} only in 6.8 (undoing the rescaling), which THM39 5.3 redoes. §2–§5 of A1-W use N̂ only through (H1)–(H4). CONFIRMED.
No WG-1: WG-1 comes from V-junctions (Δ_π^{(2)} insertions) in G. N̂ for C′ contains only G′ and Q′. CONFIRMED.
Complex form §7: CP/AW pattern matches A1_WALK_FULL 8.2–8.4 level 3 (k = c_−/(c_− + 4Γ)). LB is used only at the real point. Correct given (T37-c). The same averaged-link correction (V1) applies to the bound |Q′(U′U)| ≤ e^{2c_Γb_1}: the complexified averaged links need the small-field estimate on 𝒰(b_1). CONFIRMED rel. (T37-c) and that input.
M_1 version §6: LB uses class cubes at scale M only; γ_N is M_1-free. CONFIRMED.

## V6. WG_FULL (I3) and circularity [task (f)]
Dependency chain: (T37) G′ → THM39 C′ (needs only T37 + γ_N) → WG-G for G (uses I1–I3, common rate δ) → A1-W for (QGQ*)^{-1}. ε does not depend on G, G_1, WG, or A1-W for G. No loop. CONFIRMED.
CORRECTION to claim (6): WG_FULL (I3) quotes C′ in Balaban's (3.99) normalization. In that normalization the C′ rate is ½ε − |2 − d/2|θ_L, not ½ε (equal only for d = 4). So the common rate must be ≤ ½ε − |2 − d/2|θ_L (≥ ¼ε under RM ≥ 4(d + 4)log L/ε), or WG_FULL must take C′ in the rescaled form. In d = 4 the claim holds as stated.

## V7. Grades
(1) Misprints/gaps: CORRECTED. M1–M4 confirmed on images. Missed M5: p. 412 "(3.25)" must be "(3.35)". G1 is not a gap: p. 396 states the standing hypothesis "α_0 so small that O(1)Mα_0 is still a sufficiently small number".
(2) Merged-cube walk expansion: CONFIRMED (no lost step; b_G, δ_G ≥ (7/16)δ′ correct).
(3) Lemma LB: CONFIRMED in structure and constants; unconditional; γ_N = γ_N(d, L, a). CORRECTED in one input: Q′_j transports are products of averaged links (CMP 98 (77)–(80)), so 4.4 needs a small-field bound on averaged links of e^{iηA}; add as tagged input.
(4) Error-term map and rate ½ε: CONFIRMED; recommend RM-free definition of ε.
(5) M_1 version and complex form: CONFIRMED rel. (T37-c) and the V1 input.
(6) WG_FULL (I3) rate: CORRECTED (rate ≤ ½ε − |2 − d/2|θ_L in Balaban's normalization); no circularity CONFIRMED.
Block-diagonality [I] (author open item (b)): SETTLED on CMP 98 p. 30 image — Q′_j is block-diagonal, uniform weights L^{-d} per step; T39-I1 moves from [I] to [V] for diagonality, with the transport form corrected.
Overall: NEEDS FIXES (minor, local: transport form in (I-Q)/4.4/7.3, M5, G1 wording, rate in (6), ε definition). After these: PAPER-GRADE relative to tagged inputs (T37, T37-c, A1-W, (3.51), I-B, averaged-link small-field bound).

## (AL) check (2026-10-28)
Firewall respected. Read: THM39_FULL 2.2 (I-Q), 4.3–4.6, 7.3, 8, change log; CMP 98 pp. 19–20 ((10)–(15)), 26–27 (Prop. 1, (52)–(54), Prop. 2, (55)–(60)), 29–30 ((64)–(84)) as 300 dpi images; SOURCES_A18_REGULAR 6.1 Lemma Q + VERIFY V3.

(1) What (AL) asserts and where it is used. (AL): on a cube □ with ℓ·sup|A| ≤ k_av (ℓ = L^jη), every averaged link Ū^i_b, i < j, with corridor in □ obeys |Ū^i_b − 1| ≤ K_avL^iη·sup|A|. It is a bound on the deviation from 1 in the (3.35) gauge u_y, not a comparison with a straight transport. Used once, in 4.4: it bounds |R(Ū(Γ^{(j)}_{y,x})) − I|, hence ‖M_y − c_yI‖ ≤ K_ΓMα_0 in the numerator of the trial-function estimate. 4.5 does not use it (only ‖M_y‖ ≤ 1). (AL-c) feeds only the |Q′(U′U)| bound of 7.3.
Source of Ū^i [V p. 29, (69); pp. 19, (15)]: Ū^i_0 is the i-fold iterate of the plain average Ū_c = exp[i Σ_{x∈B(c−)} L^{−d}(1/i)log U(Γ_{c,x})U(c)^{−1}]·U(c), Γ_{c,x} = Γ_{c−,x} ∪ [x, x(c)] ∪ Γ_{x(c),c+}. Covariance (11), (70) [V].

(2) Proof. (AL) AS WRITTEN (sup|A| only) IS UNSUPPORTED. The naive induction (triangle inequality on (15)) gives |Ū^{i+1} − 1| ≤ (2d + 3)L·sup|Ū^i − 1|, so K_i = (2d + 3)^i: not uniform in i, and j is unbounded. Uniformity needs the curvature, i.e. the |∇^ηA| half of (3.35). Corrected statement and proof:
(AL′) Let U = e^{iηA} on □(y) with (3.35) at scale ℓ (|A| ≤ c_3Mα_0ℓ^{−1}, |∇^ηA| ≤ c_3Mα_0ℓ^{−2}), and Mα_0 ≤ a_AL. Then for 0 ≤ i ≤ j and every level-i bond b ⊂ Δ(y): W_i := sup_b|Ū^i_b − 1| ≤ K′L^iη·Mα_0ℓ^{−1}, K′ := c_3 + πA_Lc_P/(L(L − 1)), A_L := 4d(d + 1)L², c_P := 2c_3 + 6e²c_3².
 Step a (fine curvature) [P]. With A_1 − A_3, A_2 − A_4 = O(η|∇^ηA|) and |e^Xe^Y − e^{X+Y}| ≤ |X||Y|e^{|X|+|Y|}: |U(∂p) − 1| ≤ 2η²|∇^ηA| + 6e²η²|A|² ≤ c_PMα_0(η/ℓ)² (Mα_0 ≤ 1). This is CMP 98 (52) in ℓ-units with α̃ := c_PMα_0, η̃ = L^{−j}.
 Step b (curvature of averages) [R: CMP 98 Prop. 2 / (53), p. 26, V on image]. If α̃ ≤ c_2(d, L) = min{1/(3C_0), ½c′_2}: |Ū^i(∂p) − 1| < 2α̃(L^iη/ℓ)² =: ε_i for i ≤ j. Local: needs (52) only on B^i-blocks of the corners (p. 26 last paragraph), all inside Δ(y) by nesting.
 Step c (one step) [P]. Write Ū^{i+1}_c = e^{iY_c}Ū^i(c), Y_c = Σ_x L^{−d}(1/i)log g_x, g_x := Ū^i(Γ_{c,x})Ū^i(c)^{−1}. g_x is the holonomy of a closed level-i loop of length ≤ P = 2(d + 1)L. A cone of axial ladders from c− spans it with ≤ A_L level-i plaquettes. Lattice Stokes for unitary links (lasso product of conjugated plaquette holonomies; conjugation by unitaries keeps the norm; |Πg_k − 1| ≤ Σ|g_k − 1|): |g_x − 1| ≤ A_Lε_i. If A_Lε_i ≤ ½, then |log g_x| ≤ (π/2)|g_x − 1|. Weights sum to 1, so |Y_c| ≤ (π/2)A_Lε_i. Ū^i(c) is a product of L level-i links. Hence W_{i+1} ≤ LW_i + (π/2)A_Lε_i.
 Step d (induction) [P]. w_i := W_i/(L^iη). Then w_{i+1} ≤ w_i + πA_Lα̃L^{i−1}η/ℓ². With W_0 ≤ η|A| and Σ_{i<j}L^iη ≤ ℓ/(L − 1): w_i ≤ (c_3 + πA_Lc_P/(L(L − 1)))Mα_0/ℓ. ∎ The curvature source is summable because ε_i scales as (L^iη)², one power of L^iη more than the link. This is the mechanism of Prop. 2 applied to links.
 Conditions: a_AL := min{1, c_2/c_P, 1/(4A_Lc_P)} (Prop. 2 range; A_Lε_i ≤ ½ since ε_i ≤ 2c_PMα_0).
 Inputs: CMP 98 Prop. 2 [R, printed proof read]; reading "U(c) = product of the L finer links of c" in (15) [I]; Stokes cone constant A_L [P, crude].
 CMP 98 (124)–(146) / A18 Lemma Q do NOT give (AL): (146) is a gauge-invariant domination bound, and Lemma Q step (3) assumes the same link bound as its input I-Q1 (axial gauge). (AL′) in fact supplies I-Q1 in the (3.35) gauge, with α → Mα_0.

(3) Consequences. 4.4 uses only ℓ·sup|A| ≤ c_3Mα_0. Replace K_av·ℓ·sup|A| by K′Mα_0. Then |R(Ū(Γ^{(j)})) − I| ≤ Σ_{i<j} dL·2K′L^iηMα_0/ℓ ≤ 2dK′(L/(L − 1))Mα_0 (|R(g) − I| ≤ 2|g − 1|; the 2e of 4.4 is conservative). So K_Γ := 2e·dK′L/(L − 1) (= old formula with K_avc_3 → K′). Powers of L: CORRECT (geometric sum L·Σ_{i<j}L^i ≤ L^{j+1}/(L − 1)). K′ = O(d²L⁴) through c_3² = 144L⁴; depends on (d, L) only, no j, M, η. a_LB must add a_AL: a_LB := min{1, c_φ/(2K_Γ), 1/(2c_3), a_AL}; the old term k_av/c_3 is replaced. γ_N unchanged in form.
 7.3: c̄_Γ = dK_avL/(L − 1) carries the right power (Σ_{i<j}L·L^{i−j} ≤ L/(L − 1)). (AL-c) needs the same proof for complex U′U: conjugators are not unitary, so Stokes and the product bound pick up factors e^{O(P·b_1)} = e^{O(dLb_1)}, harmless for b_1 ≤ k_av^c; and a complex form of Prop. 1/2 (Prop. 1 is stated for configurations with (44); whether (44) admits G^c-valued V was not checked on pp. 22–25).

Grades. (AL) as written: UNSUPPORTED (naive bound grows as (2d + 3)^i; sup|A| alone is not enough). (AL′) [the needed form, (3.35) both halves]: PROVED rel. CMP 98 Prop. 2 [R], (15) contour reading [I]. (AL-c): REDUCED to a complex Prop. 2 (CMP 98 pp. 22–25 unread) plus the same recursion. 4.4 / 4.6 / 7.3: correct powers of L; fix = (AL) → (AL′), K_Γ with K′, a_LB with a_AL.
