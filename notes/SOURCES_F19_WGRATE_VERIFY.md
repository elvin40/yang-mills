# SOURCES_F19_WGRATE_VERIFY — independent check of THM39_FULL (AL′) pass and WG_FULL rate pass

Date 2026-10-28. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## A1. (AL′) re-derived from CMP 98 page images (balaban/1985_cmp98_averaging_operations.pdf, pdf pp. 3, 4, 8, 9, 10 = printed pp. 19, 20, 24, 25, 26, 300 dpi)

Read on the images [V]:
- p. 19 (15): Ū_c = exp[i Σ_{x∈B(c−)} L^{−d}(1/i) log U(Γ_{c,x})U(c)^{−1}] U(c). Γ_{c,x} = Γ_{c−,x} ∪ [x, x(c)] ∪ Γ_{x(c),c+}, from c− to c+.
- p. 24 (43): the k-th order recursion has the same form with Ū^k on the level-k contours. Locality: Ū^k_c depends only on U_b, b ⊂ B^k(c−) ∪ B^k(c+). Covariance (Ū^u)_c = u(c−)Ū_cu^{−1}(c+).
- p. 25: |Γ_{c,x}| < (2d + 1)L (level units); the step uses exp[iA(c) + O(·)], consistent with "U(c) = product of the L finer links of c". The reading stays [I]; no line on pp. 19–26 defines U(c) explicitly.
- p. 26 (52)–(54), Prop. 2: if |U(∂p) − 1| < α_0η², η = L^{−k}, and α_0 ≤ c_2 = min{1/(3C_0), ½c′_2}, then (53) holds for all j ≤ k (inductive, so at every level, not only j = k); with the bracket ≤ 2 (needs L^{−2}(1 + C_0α_0)² < ½, true for L ≥ 2 and C_0α_0 ≤ 1/3) it gives |Ū^j(∂p) − 1| < α_0L^{2j}η²(1 + 2C_0α_0L^{2j}η²) < 2α_0L^{2j}η². Local: (52) is needed only on B^k of the four corners.

Step checks:
- (a) fine curvature: CONFIRMED. |X| ≤ 2η²|∇A| for the first-order term; three BCH errors ≤ (1 + 2 + 3)η²|A|²e^{4η|A|} ≤ 6e²η²|A|² with η|A| ≤ ½. η|A| ≤ ½ needs Mα_0 ≤ 1/(2c_3); this is implied by Mα_0 ≤ 1/(4A_Lc_P), since c_P ≥ 6e²c_3². In ℓ-units this is (52) with α̃ = c_PMα_0, η̃ = L^{−j}.
- (b) curvature of averages: CONFIRMED on the image. (53) at level i < 2α̃L^{2i}η̃² = 2α̃(L^iη/ℓ)² = ε_i. Locality: level-i points in Δ(y) have B^i-blocks inside Δ(y) by nesting, so (52) is used only on □(y).
- (c) one step: CONFIRMED as a [P] sketch. Loop Γ_{c,x} ∪ (−c) has length < (2d + 1)L + L = 2(d + 1)L = P (p. 25 bound). Unitary lasso product gives |g_x − 1| ≤ (number of plaquettes)·ε_i. A_L = 4d(d + 1)L² is a valid but uncounted upper bound for the axial-cone area (each loop edge costs ≤ its l¹ distance to c−, ≤ (d + 1)L, so area ≤ 2(d + 1)²L² ≤ A_L). |log g| ≤ (π/2)|g − 1| for unitary g with |g − 1| ≤ ½ holds (θ/(2 sin(θ/2)) ≤ π/2). |e^{iY}Ū^i(c) − 1| ≤ |Y| + L·W_i holds (Y Hermitian, product of L unitaries).
- (d) induction: CONFIRMED. w_{i+1} ≤ w_i + (π/2)A_L·2α̃L^{2i}η²/(ℓ²L^{i+1}η) = w_i + πA_Lα̃L^{i−1}η/ℓ²; Σ_{i<j}L^iη ≤ ℓ/(L − 1); w_0 ≤ |A| since |e^{iηA} − 1| ≤ η|A|. So K′ = c_3 + πA_Lc_P/(L(L − 1)), exactly as printed. K′ = O(d²L⁴) is correct (A_Lc_P = O(d²L⁶)).
Grade A1: CONFIRMED. (AL′) is [P rel. CMP 98 Prop. 2 [V] + the (15)/(43) reading of U(c) [I]]. Note: the file tags Prop. 2 as [R]; on today's image it is [V].

## A2. K_Γ recomputed
Composite transport: Σ_{i=0}^{j−1}(≤ dL bonds)·|R(Ū^i_b) − I|, with |R(g) − I| ≤ 2|g − 1| for the adjoint action (|gXg^{−1} − X| ≤ 2|g − 1||X| for unitary g). So |R(Ū(Γ)) − I| ≤ 2dL·K′Mα_0Σ_{i<j}L^iη/ℓ ≤ 2dK′(L/(L − 1))Mα_0. The printed K_Γ = 2e·d·K′·L/(L − 1) is larger by e; it is valid (conservative). Level 0 is covered (|U_b − 1| ≤ η|A| ≤ K′ηMα_0/ℓ). Grade: CONFIRMED (constant conservative by e).

## A3. a_LB
a_LB = min{1, c_φ/(2K_Γ), 1/(2c_3), a_AL}: c_φ/(2K_Γ) gives K_ΓMα_0 ≤ ½c_φ (4.4); 1/(2c_3) gives η|A| ≤ ½ (4.5, (a) of AL′; redundant with a_AL, harmless); a_AL gives the Prop. 2 range and A_Lε_i ≤ ½. Mα_0 ≤ 1 is used in (a) and 4.5. Consistent. Grade: CONFIRMED.

## A4. §7.3 (AL-c), K_av := 2K′
- The O(·) in e^{O(P·b_1)} = e^{O(dLb_1)} is not named anywhere in THM39_FULL. k_av^c(d, L) is asserted to exist but has no formula. grep of SOURCES_ORDER_CANON for k_av, k_{C′}, b_1^{37}, T37-c: no hit. So the condition b_1 ≤ k_av^c is NOT in the canon.
- K_av := 2K′ is plausible but not derived. Two points are missing: (i) at complex U′U the fine curvature also has an A′ part, |∇_UA′| < b_1ℓ^{−2}, so the curvature source is c_P(Mα_0 + b_1)-type, not c_PMα_0; (ii) the bound e^{2K_avL^{i−j}b_1} is stated in b_1 only, which needs the imaginary part of log of a product to be linear in b_1 with an M α_0-independent constant (true to first order, not shown). Neither changes the form; both change the constant.
Grade: CORRECTED (status stays REDUCED; the file should name the constant, e.g. "c_N(d, L) := the non-unitary conjugation constant, k_av^c := (log 2)/(c_NdL)", and the canon needs b_1^{37} ≤ k_av^c in the complex-domain line B14/B20, after K′).

## A5. Does (AL′) supply A18 Lemma Q input I-Q1? (SOURCES_A18_REGULAR 6.1)
I-Q1 as used in Lemma Q step (3): averaged fields Ū^j keep a link bound of size O(α)·(L^jη) (units L^kη = 1), so the transport along a level-j path of length dL·L^jη costs ‖Ad − 1‖ ≤ c(d, L)αL^{j+1−k}.
- Corollary (b) (A3-R2, (3.35) gauge): (AL′) gives |Ū^i_b − 1| ≤ K′L^iηMα_0/ℓ, exactly this form with α → Mα_0 and the (d, L) constant K′. SUPPLIED.
- Corollary (a) (axial gauge, α = plaquette parameter, "no factor M"): (AL′) as stated assumes (3.35) data |A|, |∇A|; it does not cover the axial gauge. The same recursion works there: skip step (a) (the curvature bound is the hypothesis (52) directly, α̃ = α), and take w_0 ≤ 2d²α from Lemma Q step (1). Result K″ = 2d² + πA_L/(L(L − 1)). This variant is one line but is not written.
- Lemma Q's bracket says "same bound up to a factor 2". (AL′) gives the factor K′/c_3 = 1 + πA_Lc_P/(c_3L(L − 1)) = O(d²L²), not 2. Only c_Q(d, L) changes; uniformity in k holds.
Grade: CORRECTED (scope). The THM39 note "supplies I-Q1 in the (3.35) gauge" is accurate as stated; A18 Lemma Q's corollary (a) still needs the axial variant and the "factor 2" must read "factor c(d, L)".

## A6. Stale (AL) uses
grep "(AL)", "k_av", "K_av", "AL-c" over THM39_FULL, WG_FULL, SOURCES_A18_REGULAR, SOURCES_ORDER_CANON: THM39_FULL hits are the new (AL′)/(AL-c) text, the historical change-log line 310 (labelled history), and line 156 "The earlier form (AL) … is UNSUPPORTED" (intended). No stale use in WG_FULL, A18, or the canon. A18 Lemma Q still calls I-Q1 an [I] item and does not point to THM39 (AL′) — not stale, but unlinked.
Minor tag issue: THM39 4.4, 8.1 T39-PR1, 8.3(b) tag CMP 98 Prop. 2 as [R]; this session read (52)–(54) and the proof on the image, so [V] is available.
Grade: CONFIRMED (no stale use).

## B1. (2.59) on the page image
CMP 96 p. 233 (balaban/1984_cmp96_propagators_renormalization_II.pdf, pdf p. 11, 300 dpi) [V]: "Now we require that RM is sufficiently large, i.e. we assume ¼αδ_0RM > 2d log c_0(½α) + 1. (2.59)". Then c_1(α) = 12c_0^d(½α). WG_FULL (I4) now quotes ¼αδ_0RM: CONFIRMED. Note: WG_FULL names this page as CMP 96 p. 233, not an A1-W page; the brief's "A1-W page image" is the same item. Side remark: (2.59) is stated with κ = αδ_0, α < 1, so Lemma 2.1 at κ = θδ_WG needs α = θδ_WG/δ_0 < 1, true since δ_WG < δ_0.

