# SOURCES_SWEEP_BC_VERIFY — adversarial check of SOURCES_SWEEP_B.md and SOURCES_SWEEP_C.md (2026-10-28)

Written 2026-10-28 by Claude (Opus 5.5), verifier. Ids follow IDS.md. Labels S-xx are file-local labels of OPEN_ITEMS_SWEEP.md.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md were not read and were not grepped.
No existing file was edited. PLAN.md was not changed. sync.sh was not run.
Page images read (pdftoppm -r 150, fresh /tmp folder, deleted after use): CMP 96 p. 229; CMP 98 pp. 23, 24, 40, 41; CMP 99 (Propagators) pp. 392, 396, 398, 399, 404, 407, 408, 414, 421, 422, 423, 428; CMP 99 (Regular) pp. 77, 78; CMP 102 pp. 277, 278, 279, 281, 300; CMP 109 pp. 253, 262, 266, 267, 268, 275; CMP 116 p. 3. PDF page = journal page − first page + 1 for all seven papers (checked on the text layer).
Grades: CONFIRMED (claim and grade stand), CORRECTED (claim needs a stated change), UNSUPPORTED (no support found).

## Verdicts

SOURCES_SWEEP_B.md: CONFIRMED with two corrections. S-72 CONFIRMED. S-71 CONFIRMED (one page number wrong: (3.137) is on p. 423). S-74 CONFIRMED for the N-380 fix (18L + 2)M; CORRECTED for the N-320 side remark (the factor there is (M + R_1M_1)/M ≤ 2, not (18L + 2)/(18L)). One naming reading found that S-74 does not state: the M_1 of CMP 102 is Balaban's (d, L) big-block size; the canon reads it as the M_1 of N-270 [I]. It changes no order.

SOURCES_SWEEP_C.md: CONFIRMED with one correction. S-48 CORRECTED: part (a), c_h → L·c_h, is CONFIRMED; part (b), "core margin M_1 → M_1/L, missed by THM39 8.0", is not forced and is not a miss. Even if (b) is kept, its constant list has one slip (K_W) and omits the THM39 copies. The main point stands: every changed constant is fixed before M_1, so no conclusion changes. S-50 CONFIRMED. S-64 CONFIRMED. S-117 CONFIRMED.

## 1. SWEEP_C S-48 (priority 1): the X-PU repair in A1_WALK_FULL and WC_FULL

V1.1 Which partition each file uses: CONFIRMED.
- A1_WALK_FULL §2.1 (G) carries the tag "[I: Balaban's 𝒟 and h_□ of CMP 99 p. 408]" (file read). CMP 99 p. 408 [V]: "We take the partition of unity {h_□} defined at the end of Sect. A in [4]. We have Σ h_□² = 1." CMP 96 p. 229 [V]: cubes of size 2ML^jη "with a center y ∈ Λ_j (more exactly it belongs to the boundary of this set also)", the h of (1.118) rescaled, and (2.36) Σh_□² = 1. So L-017 (Theorem A1-W) on the multiscale 𝔅 uses the printed family, and H-180 (X-PU) applies.
- A1_WALK_FULL §7.3 and WC_FULL §5.2 ("One scale is used … m ≡ 1, μ ≡ 1", l. 224) use their own one-scale tent family. A1_WALK_FULL_VERIFY Step 4 gives c_h ≤ 2√d(1 + 2^{d+1}) for it (file read). One scale has no level interface. No factor L.
- WC_FULL uses L-017 only through (A1-W), step ρ_W ≤ K_W/M_1 (WC_FULL l. 192), and ρ_A := max{ρ_W, ρ_*, c(d, L)M_1^{−1}} (l. 204). So WC_FULL inherits the new K_W through ρ_A and the threshold C′_𝒟c_1ρ_A ≤ ¼. Correct.

V1.2 Part (a), c_h → L·c_h on cubes with a face on a level interface: CONFIRMED [P]. The repaired coarse profile of THM37_FULL 3.4 rises over a physical width ⅓Mξ_j inside the coarse region, where the d-weight is ξ_{j+1}^{−1}. Its d-width is ⅓M/L. So its d-Lipschitz constant grows by L. This matches THM37_FULL_VERIFY V3 ("the factor L in (H-PU)(d) is correct").

V1.3 Part (b), core margin M_1 → M_1/L: CORRECTED (not forced). The geometry (G) of A1_WALK_FULL 2.1 is abstract. It asks for a cube □ of side K_1M_1, a core □⁻ with d(□⁻, 𝔅∖□) ≥ M_1, and supp h_□ ⊂ □⁻. It does not ask that □ be Balaban's cube. Two facts show that □ cannot be Balaban's cube in any reading:
- Away from interfaces Balaban's h_□ is supported at margin ⅓Mξ_j inside its cube (CMP 95 (1.118): h = 0 outside ]−⅔, ⅔[; THM37_FULL 3.4). That margin is ⅓M_1, not M_1. So the literal identification already fails (G) by a factor 3.
- A1_WALK_FULL_VERIFY uses K_1 ≥ 6; Balaban's cube has side 2M_1.
So the instantiation must take □ larger than Balaban's cube. Take □⁻ := Balaban's cube Π (it contains supp h_Π) and □ := {y : d(y, Π) ≤ M_1}. Then d(□⁻, 𝔅∖□) ≥ M_1 by definition, for the literal and for the repaired profile alike. The cost is K_1 → K_1 + 2 and the overlap counts C_ov, C_𝒟. These are geometry constants of N-060 [I-geo, same item as IN8]. THM39_FULL 5.4 uses the same reading: its separation row is "(1 − □̃)Q′G′²Q′*h_□C_□h_□", with the enlarged cube □̃ (THM39_FULL l. 219). So THM39_FULL 8.0 does not miss anything. The margin ⅓M_1ξ_j/L of THM310_FULL (H-PU) is right for THM310, because THM310 works with Balaban's cube itself (ζ_□, (G-ret)); it does not transfer to (G).
Grade of (b): UNSUPPORTED as a required change; it is a valid but needless weakening.

V1.4 The constant list of S-48 item 4, if (b) is kept anyway: CORRECTED in two points.
(i) K_W is wrong. With margin M_1/L, ρ contains (4b_G/c_−)^{1/2}e^{−⅛δ_GM_1/L}. For M_1 ≥ L·M_e′, put x = M_1/L ≥ M_e′; then e^{−⅛δ_Gx} ≤ 1/x = L/M_1. So the entry is ≤ L(4b_G/c_−)^{1/2}/M_1. The right constant is K_W = max{c_G, L(4b_G/c_−)^{1/2}, 8c_+Lc_hΣ(¼δ_G)/c_−} ≤ L·K_W(old). SWEEP_C drops the L on the middle entry.
(ii) The same substitution applies to THM39_FULL 5.2(e)–(h), because THM39 runs the same proof with the same (G) (THM39_FULL (H3), l. 194). So K_F^{39}, K_W^{39}, M_e^{39}, M_e′^{39}, M_W^{39} (N-120), and through them K_P′ (N-140), c_0 (N-150), c′ (N-170) and M_W^{39,c} (N-160) would change by factors of order L. SWEEP_C lists only the A1_WALK_FULL copies.
Checked and correct: ρ_1 = (8c_+Σ(¼δ_G)/c_−)(e^{−¼δ_GM_1/L} + e^{−δ_GM_1} + Lc_h/M_1); M_e → L·M_e (same substitution x = M_1/L); K_F → (8c_+Σ(¼δ_G)/c_−)(1 + L(1 + c_h)) ≤ L·K_F; M_N, M_c with the new K_F, K_W; C_ov unchanged (cubes unchanged); the R-insertion keeps e^{−δ_GM_1}, because Lemma LT(c) uses the □⁺ enlargement K_0M_1, which the profile does not touch.

V1.5 Order check against SOURCES_ORDER_CANON (the question asked): CONFIRMED [P].
Every constant that (a) changes, and every constant that (b) would change, sits on a line before N-270 (M_1):
- c_h, C_ov, C_𝒟, K_1: N-060.
- K_W^{39}, K_F^{39}, M_W^{39} (THM39 copies): N-120. K_P (X-PU factor L already written), K_P′, K_310, M_310: N-140. c_0: N-150. M_W^{39,c}: N-160. M_*, c′: N-170 (they inherit c_0; K_V and a_* do not contain K_W and do not change).
- K_F, K_W, C_W, c_W, M_e, M_e′, M_N, M_c, M_W, M_*′: N-200. a_*′ (uses c_W): N-210.
Consumers after M_1 use them only as thresholds or caps in the safe direction: N-270 "M_1 ≥ M_W, ≥ (2C_Wc_1K_W)², C′_𝒟^fc_1ρ ≤ ¼, M_1 ≥ M_310"; N-310 "H-122 (H_M) M ≥ 2c′M_1" (a lower bound on M); N-370 "Mα_0 ≤ min{…, a_*, a_**, …}" (an upper bound on α_0). A larger K or M-threshold raises a lower bound on M_1 or M; a smaller a_*′ (through c_W) lowers a cap on α_0. No line moves and no edge points backward. So no conclusion of L-017, L-019, THM39 or THM310 changes; only M_W (and M_W^{39} under (b)) grows by a factor of order L.

V1.6 Item 5 (a route with no factor L): not checked in full; it is not needed and SWEEP_C marks it [P-sketch] with an [I-geo] step. The remark that L-017 does not use Lemma AG (THM37_FULL 3.5) is right: its local operators are truncated walk sums (A1_WALK_FULL 2.2).

Grade S-48: CORRECTED. Partition use [V]; (a) [P]; (b) not required; K_W slip and THM39 copies as above; order claim [P].

## 2. SWEEP_B S-74 (priority 2): CMP 102's M against CMP 109's M; the fix "(18L + 2)M" at N-380

V2.1 Source statements: CONFIRMED [V].
- CMP 102 p. 279: "□ has a size 2ML^jη, where M is a multiple of R_1M_1, and that the cube □̃ of the size (2M + 4R_1M_1)L^jη … is contained in B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}), but not in B^{j+1}(Λ_{j+1})"; Theorem 1: "(9)–(10) … for an arbitrary cube □ in the class described above, of a size 2ML^jη, M ≤ M(ε_1)"; "More exactly M(ε_1) = R_1M_1(a_1/ε_1)".
- CMP 102 p. 300: "In both cases M ≥ R_1M_1 and we assume that M is a multiple of R_1M_1, i.e. M = M′R_1M_1, M′ is an integer."
- CMP 109 p. 262 (1.12): cubes "of a size O(1)LM".
- CMP 116 p. 3: "The number R_1 is a power of L satisfying the condition R_1M_1M^{−1} ≤ 1", for the partition σ_k into cubes of size R_1M_1.
- CMP 99 (Regular) p. 77: "R is a sufficiently large positive integer (a power of L)".
- Canon (text): N-060 "R_1 (< L [I])"; N-310 entry list contains M ≥ R_1M_1 (HIGHER_M1 B3 l. 142, entry P9 l. 107); N-310 closing sentence on the cube cap; N-320 "the cube cap ε_1^{102} ≤ R_1M_1a_1^{102}/M. After M"; N-380 "18LMε_0^{109} ≤ R_1M_1a_1^{102}".

V2.2 Lower side and rounding: CONFIRMED [P]. With 2M_102 := 18LM rounded up to a multiple of 2R_1M_1: rounding adds less than 2R_1M_1 ≤ 2M (by M ≥ R_1M_1), so 18LM ≤ 2M_102 ≤ (18L + 2)M; and M_102 ≥ 9LM ≥ R_1M_1. A CMP 109 cube of side 18LM lies in the concentric CMP 102 cube; bounds (9)–(10) restrict. No rounding is needed iff R_1M_1 | 9LM, i.e. R_1 | 9L^{m+1−m_1}; this holds when R_1 is a power of L that is at most L^{m+1−m_1}. The CMP 116 R_1 is a power of L, but its identity with the CMP 102 R_1 is [I] (as SWEEP_B says). SOURCES_A18_REGULAR 5.2(c) already rounds ("rounded to a multiple of 2R_1M_1", l. 98), so the rounding is not new; only the canon line dropped it.

V2.3 The fix at N-380: CONFIRMED [P]. The cap is ε_1^{102}·M_102 ≤ R_1M_1a_1^{102} with ε_1^{102} = 2ε_0^{109}. With 2M_102 ≤ (18L + 2)M it becomes (18L + 2)Mε_0^{109} ≤ R_1M_1a_1^{102}. The present canon form 18LMε_0^{109} ≤ R_1M_1a_1^{102} is right only on the no-rounding route. Order: ε_0^{109} is fixed at N-380, after N-310 (M) and N-270 (M_1). Every condition on ε_0^{109} in the canon is an upper bound (N-380: ε_0^{109} ≤ α_0/(2B_3), 2ε_0^{109} ≤ a_1^{102}, the cap); the interval for ε_0^{102} at N-380 stays nonempty because its lower end 2B_3ε_0^{109} only decreases. No edge changes. At L = 13 the change is the factor 236/234 ≈ 1.009.

V2.4 The N-320 side remark: CORRECTED. SWEEP_B says the N-320 cap "needs the same factor" on a rounded route. N-320 has the cap ε_1^{102} ≤ R_1M_1a_1^{102}/M with M_102 = M (SOURCES_T2_HMINUSC_VERIFY l. 13: "cubes of a fixed size M … ε_1 ≤ R_1M_1a_1/M"). Rounding M up to a multiple of R_1M_1 gives M_102 ≤ M + R_1M_1 ≤ 2M. So the factor is (M + R_1M_1)/M ≤ 2, not (18L + 2)/(18L). Safe form: ε_1^{102} ≤ R_1M_1a_1^{102}/(M + R_1M_1), implied by ε_1^{102} ≤ R_1M_1a_1^{102}/(2M). Same slot (after M), no new edge. Not needed if R_1 | L^{m−m_1}.

V2.5 A naming reading that S-74 does not state [I, no order effect]. CMP 102 p. 277 [V]: "Ω_j is a union of big block of the size M_1L^jη … the numbers R_1, M_1 are fixed in such a way that all the results of [3, 5, 6] hold for these numbers." CMP 99 (Regular) p. 77 [V]: "The number M_1 is a size of big blocks and was fixed in [4]. … it depends on d and L only." So the M_1 inside the CMP 102 cap is Balaban's big-block size M_1^{102}(d, L). The canon writes the cap with M_1 of N-270. They agree only under a naming reading; SOURCES_T2_HMINUSC 4.4 already carries this reading as H11 (M_1^{(119)} ≥ R_1M_1^{(102)}). Effect if they differ (M_1^{102} ≤ M_1): every cap gets smaller (R_1M_1^{102} in place of R_1M_1). Each cap is an upper bound on ε after M, so the order is unchanged. The lower side then needs M ≥ R_1M_1^{102}, which follows from M ≥ R_1M_1 when M_1 ≥ M_1^{102}. A safe canon form writes the caps with M_1^{102} (a (d, L) number at N-060) and adds M_1 ≥ M_1^{102} at N-270; this is closed under both readings.

V2.6 Upper side (cap on ε, not on M): CONFIRMED [P]. M(ε_1) = R_1M_1a_1/ε_1 bounds the cube size from above at given ε_1, so it is an upper bound on ε_1 at given M. N-310, N-320 and N-380 book it that way. No edge into M.

Grade S-74: CONFIRMED (compatibility, N-380 fix); CORRECTED (N-320 factor); new [I] note V2.5. Cube-class geometry stays in R-023 item (2) [I-geo], as SWEEP_B says.

## 3. SWEEP_B S-72 (exact Λ_0 constraint) and S-71 (the seven CMP 99 pages)

V3.1 S-72 (a) exact constraint: CONFIRMED [V]. CMP 102 p. 278 (3): "Ū^j = V on Λ_j, j = 0, 1, …, k". CMP 99 (Regular) p. 78 (1.13): same, j = 0, …, k.
V3.2 S-72 (b) no residual gauge freedom on Λ_0: CONFIRMED [V]. CMP 102 p. 278 (4): invariance "with respect to gauge transformations u satisfying u(y) = 1 for y ∈ 𝔅_k"; CMP 99 (Regular) (1.14) same. CMP 102 p. 281: "exactly one gauge transformation u satisfying R̄_0u^j = 1 on Λ_j, j = 0, 1, …, k (thus u = 1 on Λ_0)"; Proposition 2 returns to Ax_k(𝔅_k, U_0) "by gauge transformations u satisfying the conditions R̄_0u^j = 1 on Λ_j". Λ_0 = Ω_0^{(0)}∖Ω_1^{(0)} contains every η-point of Ω_0∖Ω_1, so u = 1 at every point of Λ_0.
V3.3 S-72 geometry: CONFIRMED [V]. CMP 102 p. 277 (1) "(L^jη)^{−1}dist(Ω_j^c, Ω_{j+1}) > RM_1, R ≥ R_1", the bond and plaquette convention "at least one end-point belonging to Ω_j", and Λ_j, 𝔅_k as quoted. CMP 109 p. 262 (iv): the sequence is built by "(1.3)–(1.6) [14] (with j, ξ instead of k, η, R = R_1)", and "M′(U, b) = M^p(U, b) = Ū^p(b) for b ∈ Λ_p (see (1.5) [14])".
V3.4 S-72 (c) Ū^0 = U not printed, forced: CONFIRMED. CMP 98 p. 23 (42) defines the one-step average; p. 24 (43) defines Ū^{k+1} from Ū^k. Neither page prints a k = 0 base case; with Ū^0 := U, (43) at k = 0 is (42). The other four forcing uses are on the images as quoted (CMP 99 (Regular) p. 78 covariance line and (1.15) last link "U(Γ_{x_1,x}) = 1"; CMP 102 (3) at j = 0 and p. 281 "thus u = 1 on Λ_0"). Grade [P] for Ū^0 = U is right; it is a forced convention, not a printed equation.
V3.5 S-72 (d) no fine-scale interface at ∂□_0: CONFIRMED [P given (c)]. Check of the plaquette step: a plaquette that meets ∂□_0 has a corner in □_0 next to the boundary (a point of Λ_0 by V3.3) and a corner outside. Each of its bonds has an end in Λ_0 (so it is a Λ_0 bond, where the glued field is M′(U) = Ū^0 = U) or has both ends outside □_0 (glued field U by CMP 109 p. 275 "extended as equal to U outside □_0" [V]). The representative is the axial-gauge one (CMP 109 p. 262 "in the axial gauges"; CMP 102 Prop. 2), whose gauge freedom is 1 on Λ_0. Scope note checked: CMP 109 p. 275 (3.26)–(3.27) [V] has |u_{k+1} − 1| < B_3O(1)Mα_0 on □_0, so the Landau-gauge representative is NOT equal to U on Λ_0. This does not affect (d): the glued field is defined from U_{k+1}(□_0, M′(U)) before the transformations v, u_{k+1}. SWEEP_B states this limit (item 8) and leaves p. 276 onward unchecked. Correct.
Grade S-72: CONFIRMED. The proposed R-023 item (1) text is accurate.

V3.6 S-71 per page: CONFIRMED [V] for all seven readings.
- p. 392: (3.13) and "(89)–(92) of that paper. We replace U_0 by U in these definitions" [V]. Definition only.
- p. 396: "inspecting the definitions of the averaging operators Q_j(U) … the equalities (3.32) hold again", (3.33)–(3.34) [V]. Covariance needs (0.6) only; CMP 109 p. 253 (0.6) M({uU_jv}) = uM({U_j})v [V].
- p. 404: "from the results of Sect. E [5], especially Proposition 7, concerning the averaging operations" [V]; (3.69)–(3.70) use no average.
- p. 407: P_2(A) "is a sum of three terms obtained by the expansion of averaging operators", semi-local, (3.83) [V]; then "There we have proved these theorems for operators with the external gauge field configuration U = 1" and Corollary 3.5 [V].
- p. 414: kernel representation of Q_j on B^j(c_−) ∪ B^j(c_+), (3.102)–(3.106) [V]. (The page prints Q_j(c, d) in the sum of (3.102); SWEEP_B copies it.)
- p. 421: (3.127) C^{(2)}(A) "a second order term in the expansion of Q_j(ηA)", (3.128)–(3.130) [V].
- p. 422: (3.131)–(3.136); "The operators (QGQ*)^{−1}, or (QG_1Q*)^{−1}, can be analyzed in the same way as the operator (Q′G′²Q′*)^{−1}. We will not repeat these considerations here"; "The inequality (149) in [5] implies …" [V].
Page error (minor): SWEEP_B §2 writes "PASS for (3.136)–(3.137)" under p. 422. The image shows (3.137) at the top of p. 423. SWEEP_C S-50 makes the same correction for A3_GAMMA0_FULL 6.1.
Process note (minor): SWEEP_B's header list of imaged CMP 102 pages omits p. 279, but §3 quotes it [V]. I imaged p. 279; the quotes are exact.
V3.7 S-71 sufficiency claim: CONFIRMED [P relative to CMP 98 [R], row R-003 R4]. The uniform Lipschitz/Cauchy argument holds: |G(y, x)| ≤ n_max(d, L) because each Γ is a monotone path in one block. The two named lines are the right ones. At U = 1 every contour variable is 1, but the linear operator Q̃(1) averages A over all Γ ∈ G(y, x), so Q̃(1) ≠ Q_ax(1), and CMP 96 (proved for the axial contour) does not apply as printed. This is R-022 OPEN (i). The p. 422 line needs a lower bound on the k-step Q̃Q̃* at regular U, which is R-022 OPEN (ii) [I, a reading of "in the same way"]. No line fails because of M.
Grade S-71: CONFIRMED (with the page fix). The proposed R-022 text is accurate.

## 4. SWEEP_C S-50, S-64, S-117

V4.1 S-50 R-Δ2: CONFIRMED [P given (3.137)].
- (3.136) on p. 422 [V]: Δ^{(2)}A = Σ_{j=1}^k Σ_{b∈Λ_j}(L^jη)^{d+1} tr (δ/δA)C_j^{(2)}(A, b)(H*J)(b), and "|(H*J)(b)| ≤ O(1)Mα_0(L^jη)^{−3}". (The image sums from j = 1; the mixed bound below it sums from j = 0. Harmless.)
- CMP 98 p. 40 (148), (149) and p. 41 (150)–(155) [V]: "we may take C_3 = 6C_1″", C_1″ "depends on d and L". The t → 0 step for the quadratic part C_j^{(2)} is correct: C_j starts at second order, so t^{−1}(δC_j/δA)(tA) → (δC_j^{(2)}/δA)(A).
- (3.137) on p. 423 [V]: |(Δ^{(2)}A)(b)| ≤ O(1)Mα_0(L^jη)^{−2}|A|, b ∈ Δ(y), y ∈ Λ_j, sup over "several j-blocks surrounding Δ(y)". The page-number correction to A3_GAMMA0_FULL 6.1 is right.
- Schur step checked. A bound |(TA)(b)| ≤ c sup_{N(b)}|A| for every A forces t(b, ·) = 0 off N(b) and Σ_{b′}η^d‖t(b, b′)‖ ≤ N_g·c (componentwise sign test). Δ^{(2)} is the operator of the real quadratic form (3.134), so it is symmetric. S := W^{−1/2}Δ^{(2)}W^{−1/2} is symmetric with kernel (L^{j(b)}η)(L^{j(b′)}η)t(b, b′); for j(b′) ≤ j(b) + 1 the row sums are ≤ N_g·c_∞·L·Mα_0. Then ⟨X, Δ^{(2)}X⟩ = ⟨W^{1/2}X, SW^{1/2}X⟩ ≤ ‖S‖‖X‖²_𝔴. The index range j(b′) ∈ {j − 1, j, j + 1} is [I-geo], as SWEEP_C says. The remark that the mixed bound with δA = A does not give the ℓ² form is right.
V4.2 S-50 R1 Schur step: CONFIRMED [P given Thms 3.3, 3.12 and CMP 96 Lemma 2.1 [R]]. (3.46) on p. 398 [V] gives ‖hG′λ‖ ≤ B_0(L^jη)²|h|e^{−δ_0d(y,y′)}‖λ‖ for supp h ⊂ Δ(y), y ∈ Λ_j, supp λ ⊂ Δ(y′). Theorem 3.3 on p. 399 [V] transfers it to G; Theorem 3.12 on p. 423 [V] transfers Thm 3.3 to G_1 "with one exception … the inequality in (3.42) involving the covariant Laplace operator". The adjoint gives the min of the two scale factors; the weights give L^{−|j−j′|} ≤ 1; the block Schur test gives K_1 = B_0c_1(½). The equivalence ‖W^{1/2}G_1W^{1/2}‖ ≤ K_1 ⟺ G_1^{−1} ≥ K_1^{−1}W needs G_1 > 0 [R, Thm 3.11, not re-read by either file].
Grade S-50: CONFIRMED.

V4.3 S-64: CONFIRMED [V; transfer I-minor].
- CMP 109 p. 266 (2.9) [V]: χ_k = Π_{b ∈ T^{(k)}∖{b_0(c): c ∈ T^{(k+1)}}} χ({|B′(b)| < ε_1}).
- p. 267 [V]: "(3.156) [13] with the δ-function gauge fixing term replaced by the exponential one"; "The function hB is equal to 0 everywhere, except the set {b_0(c) : c ∈ T^{(k+1)}}".
- p. 268 [V]: "δ(Q̃B′) we eliminate the variables B′(b_0(c)), c ∈ T^{(k+1)}. Denoting the remaining variables by B we have B′ = CB, C is the operator determined by the configuration V^{(k)}"; (2.12) has χ_k evaluated at g_kCB − hD̃(g_kCB).
- CMP 99 p. 428 [V]: "It is an identity operator on almost all bonds, except the bonds b_0 for which a value (CB̃)(b_0) is equal to a solution of the equation (QB)(c) = 0." The CMP 99 variables exclude ∪Ax(y) and the b_0 bonds.
On a cut bond b ∉ {b_0(c)}: hD̃ vanishes and C is the identity, so the argument of χ is g_kB(b). Correct.
Grade S-64: CONFIRMED.

V4.4 S-117: CONFIRMED [V as a file-dependency check]. A grep for "Theorem 6.1", "Thm 6.1", "composed", "KKT", "(R1)" in KAPPA_BOUNDED(.md, _VERIFY), B2_TWOSTEP(.md, _VERIFY), LEMMA_DPRIME(.md, _VERIFY) finds only B2_TWOSTEP l. 18 (tower property of the two-step minimizer) and LEMMA_DPRIME l. 4 (a section label "§7 (R1)" of THEOREM2.md, not U3 (R1)). KAPPA_BOUNDED (E0) uses Prop. B through LEMMA43 Lemma 4.1 and (E1) uses Theorems A3 and W (l. 46–47). B2_TWOSTEP (U1)–(U2) use ‖b_0‖ ≤ b(L) from O6 (l. 48–49). U3_REPAIRS_VERIFY l. 44–46, 65 states that O6 covers the one-step bordered matrix only. ASSEMBLY B-T2.3 (l. 196) reads "one-step PROVED; composed constraint = R1 OPEN". So Route K uses no composed R1.
Grade S-117: CONFIRMED.

## 5. Changes that are safe to apply

Canon (SOURCES_ORDER_CANON.md):
C1. N-380: replace "18LMε_0^{109} ≤ R_1M_1a_1^{102} (factor L per VERIFY V6; O(1) = c_H = 18, THM37_FULL 3.2a, G)" by "(18L + 2)Mε_0^{109} ≤ R_1M_1a_1^{102} (CMP 102 cube 2M_102 := 18LM rounded up to a multiple of 2R_1M_1, CMP 102 p. 300; 18LM suffices if R_1 | 9L^{m+1−m_1}; SOURCES_SWEEP_B §3, SOURCES_SWEEP_BC_VERIFY V2.3)". Same slot; no edge change.
C2. N-320: replace "the cube cap ε_1^{102} ≤ R_1M_1a_1^{102}/M" by "the cube cap ε_1^{102} ≤ R_1M_1a_1^{102}/(M + R_1M_1) (M rounded up to a multiple of R_1M_1; ≥ R_1M_1a_1^{102}/(2M); R_1M_1a_1^{102}/M suffices if R_1 | L^{m−m_1}; SOURCES_SWEEP_BC_VERIFY V2.4)". Same slot; no edge change.
C3. N-060, note after "R_1 (< L [I])": "The M_1 in the CMP 102 cube cap is Balaban's big-block size M_1^{102}(d, L) (CMP 102 p. 277, CMP 99 Regular p. 77 [V]); the caps at N-320, N-380 read R_1M_1 under the naming reading M_1^{102} = M_1 [I] (SOURCES_T2_HMINUSC H11). If they differ, write R_1M_1^{102} in both caps and add M_1 ≥ M_1^{102} at N-270; both are safe-direction changes (SOURCES_SWEEP_BC_VERIFY V2.5)." Optional; text only.
C4. N-200, note: "With the X-PU repair (H-180), c_h → Lc_h on interface cubes: K_F = (8c_+Σ(¼δ_G)/c_−)(2 + Lc_h), K_W = max{c_G, (4b_G/c_−)^{1/2}, 8c_+Lc_hΣ(¼δ_G)/c_−}, and M_N, M_c, M_W with these. The core margin stays M_1 (cube □ := M_1-neighbourhood of Balaban's cube; SOURCES_SWEEP_BC_VERIFY V1.3). All before M_1." The same note applies to the THM39 copies at N-120 (already stated in THM39_FULL 8.0).
No canon line moves. No new edge.

Ledger (TRUST_LEDGER.md):
T1. R-023 item (1): apply the text proposed in SOURCES_SWEEP_B §1 unchanged, and add "verified (SOURCES_SWEEP_BC_VERIFY §3)". Item (1) CLOSED at [P].
T2. R-023 item (6): apply SOURCES_SWEEP_B §3's text with two edits: "same for the N-320 cap on the rounded route" → "N-320 cap ε_1^{102} ≤ R_1M_1a_1^{102}/(M + R_1M_1) on the rounded route"; append "M_1 of CMP 102 = Balaban's big-block size; naming reading [I] (T2_HMINUSC H11), safe in both readings (SOURCES_SWEEP_BC_VERIFY V2.5)". Item (6) CLOSED at [P] relative to that naming reading.
T3. R-022: apply SOURCES_SWEEP_B §2's proposed text, with "(3.137)" cited on p. 423, and add "verified (SOURCES_SWEEP_BC_VERIFY §3)". The proviso leaves the [I] list; OPEN (i), (ii) unchanged; row grade unchanged (REDUCED).
T4. R-004: apply SOURCES_SWEEP_C §S-50's proposed text, replacing "Unverified" by "verified (SOURCES_SWEEP_BC_VERIFY §4)".
T5. R-017: apply SOURCES_SWEEP_C §S-64's proposed text, replacing "Unverified" by "verified (SOURCES_SWEEP_BC_VERIFY §4)".
T6. ASSEMBLY.md B-T2.3: apply SOURCES_SWEEP_C §S-117's proposed status, citing this file as verifier.
T7. R-002, H-180 (X-PU) sub-item: do NOT apply SWEEP_C's text as written. Safe text: "H-180 (X-PU) in A1_WALK_FULL and WC_FULL: RESOLVED in form (SOURCES_SWEEP_C §S-48, verified with corrections in SOURCES_SWEEP_BC_VERIFY §1). L-017 §2.1 (G) uses the printed CMP 96 (2.36) partition; the THM37_FULL 3.4 repair gives c_h → Lc_h on interface cubes, hence K_F, K_W, M_N, M_c, M_W change (N-200; THM39 copies at N-120), each fixed before M_1; conclusions unchanged. The core margin stays M_1 (enlarged cube). WC_FULL §5.2 and A1_WALK_FULL §7.3 use a one-scale tent partition (no change); WC_FULL inherits the new K_W through ρ_W. H-002 (O2) is this item. Remaining: [I-geo] at corners and partial faces (THM37_FULL 3.4) and the enlarged-cube counts (IN8). Not yet applied to A1_WALK_FULL."

Other files (text fixes, safe):
F1. SOURCES_A3_GAMMA0_FULL 6.1: "(3.137), CMP 99 p. 422" → "p. 423".
F2. A1_WALK_FULL §4.2–§5.7: the c_h → Lc_h substitution of C4 (not the margin change).

## Report

SWEEP_B: CONFIRMED with corrections. S-72 holds on the images (exact Λ_0 constraint, u = 1 on Λ_0, Ū^0 = U forced, no interface at ∂□_0). S-71 holds; (3.137) is on p. 423. S-74: the N-380 fix (18L + 2)M is right; the N-320 factor is (M + R_1M_1)/M ≤ 2, not the same factor; the CMP 102 M_1 is Balaban's (d, L) big-block size, a naming [I] with no order effect.
SWEEP_C: CONFIRMED with one correction. S-48: c_h → Lc_h holds; the margin M_1 → M_1/L is not forced (the A1-W cube can be enlarged), so THM39 8.0 misses nothing; if kept, K_W needs a factor L on its middle entry and THM39's constants change too. All changed constants sit before N-270. S-50, S-64, S-117 CONFIRMED.
