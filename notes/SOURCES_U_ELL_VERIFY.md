IDs follow IDS.md (new scheme). Theorem IV = L-196; IV L2 = L-319; IV L3 (FX-V) = L-320 / H-106; Lemma T = L-284; (Vol) = K-032; S1 = R-035; Balaban's Theorem 1 = R-013. File-local labels of SOURCES_U_ELL ((U_ℓ), U1–U4, Ch1–Ch7, W1–W10, (U-W), P1–P20) are kept. New file-local label here: (KE′-T).
# SOURCES_U_ELL_VERIFY — adversarial check of SOURCES_U_ELL (structural proof of (U_ℓ))

Date 2026-10-29. Author: Claude (Opus), verifier. Only this file written. No existing file edited, no PLAN.md line, no sync.sh.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep (greps ran on top-level *.md files and lean/ only).
Pages rendered (pdftoppm -r 150, one fresh /tmp folder, read as images, folder deleted): CMP 109 pp. 251, 258, 262, 263, 264, 275; CMP 116 pp. 8, 10, 13, 20, 21; CMP 119 pp. 244, 245, 259, 262, 263, 264, 278, 281; CMP 122 I pp. 177, 183, 186; CMP 122 II pp. 355, 356, 357, 383. That is the 24 pages of the file plus CMP 109 p. 262 and CMP 116 p. 20 (26 pages). The PDF offsets of SOURCES_U_ELL §1 are correct on every page.
Files read: SOURCES_U_ELL (full); SOURCES_ORDER_CANON Part B (N-060 to N-490) and the "Check" line; lean/YmLean/CanonOrder.lean (Line type, header); SOURCES_C_CONDITION §4.1–4.6, §8.3; SOURCES_QE_INV §3.4; SOURCES_LEMMA_T_REPAIR_VERIFY (verdict); SOURCES_L2_L3L14 §2.2; SOURCES_L2_L3L14_VERIFY (rows cited); SOURCES_A11_CONST (κ_0 rows); spot lines of SOURCES_FX_D, D3, D3R, D3R_VERIFY, L1_E, T2_IEPS_VERIFY, A18_REGULAR; IDS.md rows.
Grades: CONFIRMED / CORRECTED / UNSUPPORTED.

## Verdict: PASS WITH CORRECTIONS

The structure of the proof is sound. Lemma U1 is correct. The definitional layer is correct: no canon condition has the form c_i ≥ F(ℓ) or c_i ≤ F(ℓ). Ch1–Ch6 are correct on the pages. No constant fails.
Five corrections change the text. One of them widens the residue.
1. Holonomy (W4) is incomplete. The project chain has one documented place where torus-winding holonomy enters: the axial-path dressing of QE_INV on the periodic lattice (SOURCES_C_CONDITION §4.1–4.2, §8.3; SOURCES_QE_INV §3.4 numerics: ratio 1.709 on torus-wrapped pairs only). L-284 (Lemma T) repairs it with a cut-off and a lower bound on the torus side. SOURCES_U_ELL does not mention this. The repair is ℓ-free only if the CMP 96 Cor. 2.8 constants C_H, δ_H are uniform over tori of side ≥ c_T. That is an [R] citation (SOURCES_C_CONDITION §4.6), not a page fact. It is a (U_ℓ)-type input outside the page set of (U-W).
2. The claim "c_T, D_0, C_H only bound the torus side from below" is wrong for two of three. c_T is a lower bound on the side (via M ≥ c_T/22). D_0 enters (T1) RM ≥ 4L²D_0, a lower bound on RM. C_H bounds nothing; its torus uniformity is the [R] input of item 1.
3. The E_0 worked closure misidentifies C_3. The C_3 of CMP 116 (2.39)–(2.41) is defined on p. 20 as C_3 = 2(L + 2)⁴O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1. It is not the absolute C_3 of p. 10 (1.39). Canon N-400 already has the right definition. The condition O(1)C_3ε_1 ≤ ½E_0 is homogeneous in E_0. So it is an ε_1 condition, and Balaban calls it "unessential". ℓ-freedom survives.
4. Ch7 misreads two pages. "Whole lattice" on CMP 119 p. 278 and CMP 122 II p. 357 is the torus T_η without a large-field region (the framework of CMP 109). It is not Z^d. Only CMP 109 p. 264 and CMP 119 p. 281 (L^{−j}Z^d) are Z^d objects. The two torus objects need Ch3 bounds, which exist. The conclusion survives.
5. Lemma U4 overstates. CMP 109 p. 264 justifies the limit T ↗ Z^d "by the localized representation (1.7)". That justification presupposes bounds uniform along the torus sequence. But uniform bounds alone do not give existence of the limit (the local terms must also stabilize), and the limit could exist without uniform constants. U4 is a reading of Balaban's intent [I], not [V + P]. It supports (U_ℓ); it does not force it.
Safe status: L-319 / (U_ℓ) [P-sketch, verified with corrections; residue (U-W)′ [I] + (KE′-T) [R]] (§8).

## 1. Page facts P1–P20 (images read here)

| item | grade | note |
|---|---|---|
| P1 CMP 109 p. 251 | CONFIRMED | "We take L_μ = L^m, where L is an odd, positive integer > 11, and m is a positive integer"; T_ε (0.1), ε = L^{−K}. |
| P2 CMP 109 pp. 262–263 | CONFIRMED | p. 262 (i): "for each cube □ ⊂ X of a size O(1)LM there exists a G-valued gauge transformation u defined on □"; (i)–(iv) are conditions on X. p. 263: "absolute constants α_0, α_1 (i.e., constants independent of X and j)"; (1.18) "for M ≥ M(κ), γ sufficiently small"; "|∂U_j − 1| < ε_0ξ² with ε_0 sufficiently small". Note: "independent of X and j" does not name T. |
| P3 CMP 109 p. 264 | CONFIRMED | Limit "as T^{(j+1)} ↗ Z^d. This limit exists by the localized representation (1.7)"; (1.22); Theorem 3 text as quoted. |
| P4 CMP 109 p. 258 | CONFIRMED | (0.27), (0.30) and "the only dependence on k is through the volume |T_η| = |T_1^{(k)}|". Note: p. 258 is the Sect. 0 sketch, not the proof. |
| P5 CMP 109 p. 275 | CONFIRMED | U^c_{k+1}(□_0, (1 + 2β)α_0, (1 + 2β)α_1, α_0) with (i)–(iii) "on the whole lattice T_η"; (3.26)–(3.27) on □̃⁴, □_0. |
| P6 CMP 116 p. 8 | CONFIRMED | (1.26), (1.28) M^{−4}|Y| ≤ 3·2³d_k(Y), (1.29) "with absolute constants O(1), q". |
| P7 CMP 116 p. 10 | CONFIRMED | U'^c_{k+1}(T_η, α_0′, α_1′); Σ_□ζ_□; (1.39) "where C_3 is an absolute constant". |
| P8 CMP 116 p. 13 | CONFIRMED | "depends yet on the external gauge field configurations on the whole lattice T_η … We localize it again"; M_1-cube domains; (2.7). |
| P9 CMP 116 p. 21 | CORRECTED | Quotes are exact. The file omits that the C_3 of (2.39)–(2.41) is the p. 20 constant C_3 = 2(L + 2)⁴O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1 (Lemma 3, (2.38)), not P7's absolute C_3. p. 21 adds: "In fact this assumption is unessential, because the constant C_3ε_1 is small anyway". |
| P10 CMP 119 pp. 244–245 | CONFIRMED | "we finish the inductive procedure when we reach the unit lattice"; p_0(g_0) = A_0(log g_0^{−2})^{p_0}; R_0, M = L^m, "The above partitions have to be compatible". |
| P11 CMP 119 p. 259 | CONFIRMED | (2.24), (2.26)–(2.28), properties (i)–(iv); q_0, q_1 > 1, C_0, C_1 large. |
| P12 CMP 119 p. 262 | CONFIRMED | Theorem 1 and the remark on constants from [I]. |
| P13 CMP 119 p. 263 | CONFIRMED | E_1 "independent of j, k, Ω, {Ω_j}, {Λ_j}, T"; "absolute constant R_1"; (2.46) "for κ_0 ≥ 7". |
| P14 CMP 119 p. 264 | CONFIRMED | (3.1) δ(V̄_kV_{k+1}^{−1}); Corollary 3 "independent of η and T, but depending on g_k". |
| P15 CMP 119 pp. 278, 281 | CORRECTED (use, not quote) | Quotes exact. p. 278 "the expressions defined on the whole lattice, i.e. in the framework of [I]" means the torus with no large-field region; independence is of Λ_{k+1}, not of T. Only p. 281 ("defined on the whole lattice L^{−j}Z^d. This function is translation invariant") is a Z^d object. See Ch7. |
| P16 CMP 122 I p. 177 | CONFIRMED | Denominators "localized in neighborhoods of the domains Z′"; (i) "contained in a cube of the size 100MR_k"; (1.1). |
| P17 CMP 122 I pp. 183, 186 | CONFIRMED | p. 183 top: "δ′_j = g_jA_1p_1(g_j), p_1(g_j) = (log g_j^{−2})^{p_1}, and p_1 < p_0" (the sentence starts on p. 182). p. 186: "δ(M/M_1) ≥ 2"; "do not depend on any scale, i.e., on i, j, k". |
| P18 CMP 122 II pp. 355–356 | CONFIRMED | Theorem 1; "E_−, E_+ independent of k, T_η, U_k"; (1.1) with "identifying Λ with one of its components"; |Λ^{(k)}\G_0| inside one component. |
| P19 CMP 122 II p. 357 | CORRECTED (use, not quote) | Quotes exact. "the k-th minimizer defined on the whole lattice" is a torus object, not Z^d. |
| P20 CMP 122 II p. 383 | CONFIRMED | (1.77), (1.78), 2p_1 − (d + 5)r_0 > p_0, exp O(1)|Z_j ∩ Ω_j|, exp O(1)(MR_j)^{−d}|Z_j|, (1.79), "all admissible domains". Also: "the above inequality holds for all large field regions, not only for the regions satisfying the conditions (i), (ii)". |

## 2. Lemma U1 (uniform choice) — CONFIRMED

The lemma is a correct logical statement. If the condition list is ℓ-free, the solution set A is one set, and any c ∈ A serves every ℓ. Nonemptiness: the canon "Check" line (SOURCES_ORDER_CANON l. 160) states that the only two-sided constant in the current order is p_1 (A_1 is two-sided only in the superseded K-031 order). That matches U1's proof. Lean: CanonOrder.lean has 51 `Line` constructors and no torus node; its header says it certifies "only that this transcription is acyclic … nor that the transcription is complete". The file reports this limit correctly.
Remark (majorants): CONFIRMED. It is the correct way to use U1 when a proof quantity depends on ℓ but only an ℓ-free majorant enters a condition.
The content of (U_ℓ) is therefore entirely in the hypothesis "no F_i depends on ℓ", which is U2 + (U-W).

## 3. Definitional layer

### 3.1 Canon spot-check (17 lines read in full for ℓ, torus side, |T|, |Λ|, volume, number of blocks)
| canon line | content checked | torus quantity? | grade of the file's row |
|---|---|---|---|
| N-060 | (d, L) numbers; E_0 "absolute; may go first"; C_H, δ_H "uniform in the torus side [R, SOURCES_C_CONDITION 4.6]"; c_tr; c_T = 2L(D_0 + 3(d + 1)) + 2; D_0; F; R_0M_0 | no ℓ in any condition. C_H carries an [R] torus-uniformity tag (see 3.2) | CORRECTED (3.2) |
| N-070 | κ lower bounds; s_0(d), S(s) := sup_□Σ_{Y∋□}e^{−sd(Y)} | none. The lattice of S is not stated; read it as Z⁴, which dominates every torus by the Ch2 lift | CONFIRMED |
| N-080 | κ_0 ≥ 7 (CMP 119 exponent, H-265) | none | CONFIRMED |
| N-090 | κ_1 from κ, δ, L | none | CONFIRMED |
| N-310 | M ≥ M_req; M ≥ c_T/22 (Part F l. 300); (T1) RM ≥ 4L²D_0 | none; c_T/22 makes (Vol) imply side > c_T | CONFIRMED |
| N-320 | M_0; a_*^{102}; cube cap with R_1M_1^{(102)}/M | none | CONFIRMED |
| N-330 | C_1^{FX} = max(1, C_c), C_c per component, "may depend on M and L" | none | CONFIRMED |
| N-370 | α-chain, Mα_0 caps, (LM)⁴α_i ≤ ¼ | none | CONFIRMED |
| N-380 | ε_0^{109} ≤ α_0/(2B_3) etc. | none | CONFIRMED |
| N-400 | ε_1 upper bounds; C_3^{116} := 2(L + 2)⁴O(1)2E_0C_1α_4^{−1}α_6^{−1}M^qe^{C_2κ_1} [V p. 20] | none | CONFIRMED (and it refutes the file's E_0 closure, §4.2) |
| N-410 | r, ν_I → p_0 → p_1 → ν_II → q_0 → q_1 | none | CONFIRMED |
| N-420 | A_1: γ_0A_1² ≥ 8 + 4 log F, F [I: IEPS_VERIFY §21] | none | CONFIRMED. Side note: N-060 also defines a geometric F := 1 + 2d(L + 2)^{d−1}/(3^d − 1). N-420's F is the CMP 122 II p. 381 ratio factor. Possible canon homonym; not a (U_ℓ) issue |
| N-430 | A_0 ≥ 2, ≥ 80B_3A_1, "(100MR)^d", κ′ | none; (100MR)^d is a cube volume | CONFIRMED |
| N-440 | C_0 | none | CONFIRMED |
| N-450 | C_1, indexed form | none | CONFIRMED |
| N-470 | γ; ℓ_m^{q_i} with ℓ_m = log g_m^{−2} (A18_REGULAR l. 81) | ℓ_m is not the torus side | CONFIRMED |
| N-490 | r_0^{rad}, ρ_1 ≤ r/(4C_hM), H-060, H-062 | none | CONFIRMED |

### 3.2 The grep (SOURCES_U_ELL §2.3)
- Hit count: CONFIRMED. With the file's eight search strings I find 5 hits on 4 lines (N-060 twice, N-310, N-470, Part F l. 300). "|T", "T_η", "volume", "|Λ", "number of blocks", "T_ε" have 0 hits. A wider search on "side" (24 lines) finds no further torus-side condition; the other "side" hits are "σ_0 side", "right side", "side condition".
- "Hits (1)–(3), (5) are constants of (d, L) that bound the torus side from below": CORRECTED.
 (a) c_T: a lower bound on the side. CONFIRMED. (Vol) ℓ > 22M and M ≥ c_T/22 give side > c_T (SOURCES_C_CONDITION 4.4).
 (b) D_0: enters c_T and (T1) RM ≥ 4L²D_0. (T1) is a lower bound on RM (d-geodesics of length ≤ D stay in three layers, C_CONDITION 4.3), not on the side.
 (c) C_H, δ_H: they bound nothing. They are CMP 96 Cor. 2.8 constants, proved on Balaban's torus. Their uniformity over tori of side ≥ c_T is "part of the citation" (C_CONDITION 4.6, [R]). This is a statement of (U_ℓ) type. SOURCES_U_ELL lists it as a grep hit and then classifies it wrongly. Name it (KE′-T): the constants C_H, δ_H of CMP 96 Cor. 2.8 (2.150)–(2.151) hold uniformly on every torus of side ≥ c_T(d, L).
- "No condition has the form c_i ≥ F(ℓ) or c_i ≤ F(ℓ)": CONFIRMED.

### 3.3 Table §2.2 of SOURCES_U_ELL
All rows CONFIRMED on the canon text and the pages, with two notes. (1) κ_0 rows: both meanings are correctly separated (§7). (2) E_0 row "absolute (random-walk expansion constants, Ch3)": CONFIRMED on CMP 116 p. 21 ("with an absolute constant instead of E_0. We define ½E_0 as equal to this constant"). The ε_1 row's "χ_k cut |B′(b)| < ε_1 per bond (CMP 109 (2.9))" was not rendered here; it is not load-bearing.

## 4. Estimate layer

### 4.1 Lemma U2, the seven channels
| channel | ℓ-free bound claimed | page / source checked | grade |
|---|---|---|---|
| Ch1 local analytic bounds | radii, d_j(X), |X| | CMP 109 p. 262 (i)–(iv) on X; p. 263 (1.18); CMP 116 p. 10 (1.39) "C_3 is an absolute constant" | CONFIRMED |
| Ch2 entropy and walk counts | Z⁴ count via injective lift | CMP 116 p. 8 (1.26). Lift: a spanning-tree lift from a base cube projects back onto X, so X ↦ lift is injective, and tree length does not grow. Walks lift step by step | CONFIRMED [P] |
| Ch3 CMP 95–102 constants | "d and L only" | Not re-rendered here; rows S9–S12 of SOURCES_L2_L3L14_VERIFY and R-004, R-008 [R]. CMP 116 p. 13 (2.7): global operators expanded in generalized random walks | CONFIRMED with a gap: one Ch3 constant pair, C_H, δ_H, is held torus-uniform only by citation (KE′-T). The file must name it |
| Ch4 cluster / Mayer | KP criterion = Ch1 × Ch2 | CMP 116 pp. 20–21: Lemma 3 (2.38) activity bound, then "the considerations and bounds of the paper [26], for κ sufficiently large, and ε_1 sufficiently small" | CONFIRMED |
| Ch5 large-field factors | per-cube constants | CMP 122 II p. 383: exp O(1)|Z_j ∩ Ω_j|, exp O(1)(MR_j)^{−d}|Z_j|, paid in (1.79) by per-component factors exp(−½γ_0A_1²p_0²(d′_j + 1) − 2p_0) and exp O(1)M^dR_j^{d+1}d′_j(Z_j) | CONFIRMED |
| Ch6 Poincaré on bounded domains | cube size 100M(L + 1)N^{β_0}R_j | CMP 122 II p. 383 (1.78); CMP 122 I p. 177 (i); CMP 122 II p. 357 (1.6) "Λ is contained in a cube of the size 100M" | CONFIRMED |
| Ch7 infinite-volume objects | "the same for every ℓ" | CMP 109 p. 264 (Z^d) and CMP 119 p. 281 (L^{−j}Z^d): CONFIRMED. CMP 119 p. 278 and CMP 122 II p. 357: "whole lattice" = the torus T_η (framework of CMP 109), not Z^d | CORRECTED: two of the four cited objects are torus objects. Their bounds are Ch3 (minimizer decay) and Ch4 (CMP 109 expansion), so no new channel is needed. The sentence "these objects are the same for every ℓ" holds only for β_j and Π^{(j)} |
Completeness of the channel list [P-sketch]: UNSUPPORTED as a theorem, correctly labelled as a residue. The file's own evidence (C_CONDITION §4.1–4.2) shows one estimate in the project chain that used the torus outside Ch1–Ch7 as first written: the QE_INV dressing summed torus-winding axial loops whose holonomy is not controlled by (3.35). It is now in Ch3 + Ch6 form only through Lemma T. So "every page read … is free of the danger class" (§6.1) is true of Balaban's pages read, not of every project file the chain uses.

### 4.2 Lemma U3 and the worked closures (CMP 116 p. 21, with p. 20)
- Lemma U3 (closure given U2): CONFIRMED as logic.
- E_0: CORRECTED. ½E_0 := the absolute constant of the localized log Z^{(k)}(U_{k+1}) terms: CONFIRMED on p. 21. "then O(1)C_3ε_1 ≤ ½E_0 with C_3 the absolute constant of P7 (1.39)": wrong constant. p. 20 defines C_3 = 2(L + 2)⁴O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1. The condition reads O(1)·4(L + 2)⁴C_1α_4^{−1}α_6^{−1}M^qe^{C_2κ_1}ε_1 ≤ ½ after division by E_0, an upper bound on ε_1 in (L, C_1, α_4, α_6, M, κ_1). It is ℓ-free. Balaban writes "this assumption is unessential". Canon N-400 already records the p. 20 constant.
- κ and κ_0: CONFIRMED. "for κ sufficiently large" in (1.26) (p. 8) and for the [26] criterion of (2.39) (p. 21). Canon N-070 entry δLκ/2 ≥ 24 + s_0 is the same closure.
- M(κ): CONFIRMED. "δ_0M ≥ κ" (p. 21) and "δ(M/M_1) ≥ 2" (CMP 122 I p. 186).
- ε_1: CONFIRMED with a wording correction. p. 21 bounds the Z-sum in (2.40) by C_3ε_1e^{5κ}O(1)(LM)^{−4}|X| ≤ C_3ε_1e^{5κ}O(1)exp((LM)^{−4}|X|), and the factor exp((LM)^{−4}|X|) is absorbed by exp(−½δLκd_{k+1}(X)). The absorbed factor comes from the count of Z ⊂ X, a per-polymer volume. It is not the factor exp 2(LM)^{−4}|Z| as the file says. Also, ε_1 must beat e^{5κ}C_3, so the condition is ε_1 ≤ f(κ, κ_1, M, L, α's, C_1); all ℓ-free.
- Also on p. 21: "(1 − 10δ)½L = 1, or δ = (1/10)(1 − 2L^{−1})". Canon N-060 replaces this δ (H-216). Not a (U_ℓ) issue.

## 5. The ten places W1–W10

| place | grade | reason |
|---|---|---|
| W1 zero modes | CORRECTED (wording) | The file says the block constraint removes "the constant mode and every mode with zero block averages". The modes with zero block averages are the integration variables; they are not removed. Correct form: δ(V̄_kV_{k+1}^{−1}) (CMP 119 p. 264 (3.1)) fixes every block average, so the constant mode is in the background, and the form on the zero-average subspace has the block-scale lower bound γ_0 (R-004). Gauge zero modes: axial/Landau gauge per cube. Haar mass 1 for the global gauge group. Conclusion ℓ-free: CONFIRMED. |
| W2 global functions | CONFIRMED | CMP 116 p. 10 (Σζ_□, (1.37)–(1.39)), p. 13 (re-localization, M_1-cube domains), CMP 109 p. 275 ((3.26)–(3.27) on □̃⁴, □_0). |
| W3 global divisors | CONFIRMED | log Z^{(k)} localized with absolute ½E_0 (CMP 116 p. 21); R-denominators localized near Z′ (CMP 122 I p. 177) and per component (CMP 122 II p. 356). Lemma J3 [R file] not re-checked. |
| W4 holonomy | CORRECTED (incomplete) | (a) Balaban side: CONFIRMED as [P-sketch]. Regularity is cube-local (CMP 109 p. 262 (i)). The annulus argument is valid in this form: a ring-shaped X ∈ D_j in Z^d has a non-contractible loop inside X, and U_j^c(X) puts no condition on its holonomy, so Balaban's Ch1 bounds already hold for every holonomy. (b) Project side: missing. SOURCES_C_CONDITION §4.1–4.2 and §8.3 show that the QE_INV axial-path dressing on the torus has a seam whose thin loop winds the torus; its holonomy is a Polyakov loop not bounded by (3.35); QE_INV §3.4 numerics break the bound only on torus-wrapped pairs (ratio 1.709). L-284 (Lemma T; IDS: "to review"; repair SOURCES_LEMMA_T_REPAIR_VERIFY: PASS WITH CORRECTIONS, form G3-a) repairs it with the cut-off χ(d/D_0) and needs side > c_T. The repair is ℓ-free given (KE′-T). (c) The file's citation "CMP 122 I p. 196 via SOURCES_D3 (B8)" was not checked here. |
| W5 wrapping polymers | CONFIRMED with a note | CMP 109 p. 258 (0.27): domains not in any cube □̃ are bounded by decay alone. For ℓ ∈ 𝓛(g) a wrapping X is in no cube. Note: p. 258 is the Sect. 0 sketch. The sentence "no step treats wrapping X differently" rests on unread proof pages; it belongs inside (U-W) (added as (D6) in §8). Condition (iv) of U_j^c(X) builds axial gauges on domains Ω_n ⊂ X; for a wrapping X this was not examined. |
| W6 wrapping large-field components | CONFIRMED | CMP 122 I p. 177 (i) excludes components not inside a 100MR_k cube from renormalization; CMP 122 II p. 383 states (1.79) "holds for all large field regions". Lemma ADM (d) is tagged [I] in SOURCES_L2_L3L14 §2.2; the corrected ℓ_0(g) = max(22M, 200MR_K(g) + 2c_*, ℓ_{A1}) (L2_L3L14_VERIFY l. 127). |
| W7 last step | CONFIRMED | CMP 119 p. 244 "we finish the inductive procedure when we reach the unit lattice"; K-032 gives > 22 M-cubes per side. |
| W8 coupling flow | CONFIRMED | β_{j+1} on Z^d (CMP 109 p. 264); (2.24) (CMP 119 p. 259); Π^{(j)} on L^{−j}Z^d (p. 281). |
| W9 volume totals | CONFIRMED | (0.30) (CMP 109 p. 258), (2.45)–(2.48), (2.50) (CMP 119 pp. 263–264); E_1, R_1 T-free on the page; no canon condition uses a total. |
| W10 divisibility | CONFIRMED | CMP 119 p. 245 "have to be compatible"; ℓ = 2L^{m_T}. |

## 6. Lemma U4 (CMP 109 p. 264) — CORRECTED

What the page says [V]: "Now we take a limit of these functions as T^{(j+1)} ↗ Z^d. This limit exists by the localized representation (1.7)." Π is a second derivative of E^{(j+1)} at B = 0 ((1.20)); β_{j+1} = Σ_xΠ(x)x_μx_ν on Z^d ((1.22)).
What is right: Balaban's stated reason is a domination argument. A dominating bound Σ_X C(α_0, α_1)E_0e^{−κd(X)}|x|² that does not grow along the sequence uses one (E_0, κ) and one domain size for all tori of the sequence. So Balaban's justification presupposes torus-uniform E_0, κ, α_0, α_1. This supports (U_ℓ) as the author's intent, as does CMP 119 Theorem 2 ("E_1 independent of … T (but dependent on the other constants …)", p. 263).
What is overstated: (1) "only if". Uniform bounds give compactness, not existence; existence also needs the local terms Π_T(x) to stabilize as T grows. Conversely, the limit can exist with non-uniform constants if the actual functions are uniformly bounded. (2) The quantity needed is a uniform bound on the actual E_T^{(j+1)}(X), not uniform constants in a condition list. So U4 is a reading [I], not [V + P]. The conclusion "a torus dependence of a base constant would be a gap in Balaban's printed construction of β_j" stays as a reading.
Grade change: Lemma U4 [V + P] → [V page + I reading].

## 7. S1 constants (§5) and side findings (§6.3)

S1 constants:
| constant | check | grade |
|---|---|---|
| r | canon N-490 text (H-060, H-062) matches | CONFIRMED |
| ρ_1 | N-490 "ρ_1 ≤ r/(4C_hM)"; D3R_VERIFY l. 28, 43 | CONFIRMED |
| c_τ | SOURCES_D3 l. 139: τ(Y) := c_τr/(E_0|Y|); Y one denominator domain inside a 100MR_m cube | CONFIRMED |
| θ (θ_W) | SOURCES_L1_E l. 116 "θ_W ≤ 6.5γ²r"; l. 189 per-site normalization (1 − θ_W)^{−n_s/2} over one region | CONFIRMED |
| c | SOURCES_FX_D l. 15, 32: Φ(g) = C(M)g²p_0(g)²R(g)⁴, "independent of m, K, ε, and |Λ_i|" | CONFIRMED |
| C_B | SOURCES_D3R l. 19: Σ_j sup_{|c|≤2r}|B_j′(c)| ≤ ½; B_j(0) = β_j | CONFIRMED |
| L1-E clause | SOURCES_L1_E l. 22, l. 140 and Theorem L1-E (l. 200): constants "independent of k, K, ε and ℓ" | CONFIRMED |
§5 grade [P-sketch, same residue]: CONFIRMED, with the residue widened as in §8 (the S1 chain contains (C), which contains Lemma T).

Side findings:
- κ_0 homonym: CONFIRMED. CMP 109 Theorem 3 κ_0 is a threshold on κ (p. 264). CMP 119 κ_0 is the exponent of g_j^{κ_0} (p. 263 (2.44), (2.46) "κ_0 ≥ 7"; A11_CONST rows 6, 16). Canon N-080 is the CMP 119 exponent (H-265). SOURCES_L2_L3L14_VERIFY S4 and §2.5 "κ_0 (hence κ)" quote Theorem 3, so they mean the CMP 109 threshold.
- p_1 printed: CONFIRMED. CMP 122 I p. 183 (top line; sentence begins on p. 182) and CMP 122 II p. 383. SOURCES_L2_L3L14_VERIFY l. 98 "formula not located on a page" is superseded.
- (H-U) label clash: CONFIRMED. IDS l. 383 gives (H-U) to H-116 (ASSEMBLY); SOURCES_L2_L3L14_VERIFY l. 130 uses "(H-U)" for the narrowed (U_ℓ).
- New side finding: canon has two constants named F (N-060 geometric F; N-420 ratio factor F [I: IEPS_VERIFY §21]). Check whether they are one object. Not a (U_ℓ) issue.

## 8. Safe status, residue, Theorem IV hypotheses

### 8.1 Grade table for SOURCES_U_ELL
| item | file grade | verifier grade |
|---|---|---|
| §0 statement of (U_ℓ) as used by L-320 | [V files] | CONFIRMED |
| §1 P1–P20 | [V] | CONFIRMED (quotes); CORRECTED: P9 (C_3), uses of P15 p. 278 and P19 |
| §2.1 Lemma U1 | [P] | CONFIRMED |
| §2.2 table | [P given canon + V] | CONFIRMED |
| §2.3 grep and Lean | [P] | CONFIRMED (counts, Lean); CORRECTED (classification of C_H, D_0) |
| §3.1 Ch1–Ch6 | [P] | CONFIRMED |
| §3.1 Ch7 | [V] | CORRECTED |
| §3.1 completeness | [P-sketch] | UNSUPPORTED as proved; acceptable as a labelled residue, widened below |
| §3.2 Lemma U3 | [P given U2] | CONFIRMED |
| worked closures | [V + P] | κ, M(κ): CONFIRMED; ε_1: CONFIRMED (wording corrected); E_0: CORRECTED |
| §4 W1–W10 | [V + P] | W2, W3, W5–W10 CONFIRMED; W1 CORRECTED (wording); W4 CORRECTED (incomplete) |
| §4.1 Lemma U4 | [V + P] | CORRECTED → [V + I] |
| §5 S1 constants | [P-sketch] | CONFIRMED |
| §6.1 (U-W) | [I] | CORRECTED (widened, 8.3) |
| §6.3 κ_0, p_1, (H-U) | [V] | CONFIRMED |
| §7 proposed statuses | — | CORRECTED as in 8.2–8.4 |

### 8.2 Safe status of L-319 / (U_ℓ)
L-319 / (U_ℓ): [P-sketch, verified with corrections (SOURCES_U_ELL_VERIFY); residue (U-W)′ [I] and (KE′-T) [R]]. Text: "(U_ℓ) proved structurally (SOURCES_U_ELL + VERIFY): every constant of 𝔅 ∪ 𝔖 is fixed by ℓ-free canon conditions; every closing estimate read so far uses the torus only through Ch1–Ch7 with ℓ-free majorants; W1–W10 handled, W4 through Balaban's cube-local regularity and, for the project's QE dressing, through L-284 (Lemma T) with side > c_T. Residue: (U-W)′ (unread-page sweep, joint with (W6*)) and (KE′-T) (CMP 96 Cor. 2.8 constants uniform over tori of side ≥ c_T, [R], SOURCES_C_CONDITION 4.6). Lemma U4 is a supporting reading, not a proof." It replaces [V-partial]. Headline discipline: (U_ℓ) is not unconditional.

### 8.3 The residue, exact statements
(U-W)′ [I]. On the pages not read as images by any session — CMP 109 Sects. 3–5 apart from pp. 262–264, 275 and the pages cited by verified files; CMP 116 apart from pp. 8, 10, 13, 20–21; CMP 122 I Sect. 1 apart from pp. 177, 183, 186, 201; CMP 122 II pp. 358–378 apart from pp. 365–366 and the Q-050 entries — no estimate that closes a condition Φ_i of the canon contains a quantity of the torus danger class:
 (D1) |T_η|, ℓ, m_T, L^{m_T}, or the number of cubes of T at any scale;
 (D2) a sum over all cubes, sites or polymers of T without a decay weight that makes it a sup over one site;
 (D3) a spectral, Poincaré or Sobolev constant of a domain not contained in a cube of fixed size (100MR_k or smaller);
 (D4) a sup over T of a non-local quantity, unless it is a Ch3 constant printed as "d and L only";
 (D5) a count of torus objects not dominated by the Z⁴ count;
 (D6) [added] a step that treats a localization domain X ∈ D_j which winds around T differently from a non-winding X, or that uses the holonomy of a non-contractible loop of T (including the axial-gauge constructions of condition (iv) of U_j^c(X) on a winding X).
(KE′-T) [R]. The constant C_H and the rate δ_H of CMP 96 Cor. 2.8 (2.150)–(2.151), p. 249, hold with the same values on every torus of side ≥ c_T(d, L) (SOURCES_C_CONDITION 4.6; canon N-060). This is outside the page set of (U-W)′ (it is CMP 96). Weakest repair: render CMP 96 Sect. 2 up to Cor. 2.8 and check that every constant is a random-walk or Combes–Thomas constant with a sup over one site; it can join the (U-W)′ / (W6*) sweep.

### 8.4 Theorem IV (L-196) hypothesis list for (a)–(b), after this verification
1. (H-T2) the hypotheses of Target 2 (ASSEMBLY §1.3: L-001, Balaban's Theorem 1, R-035 (S1), R-043 Steps A, C, D, with R-042 via Q-061) on T_ℓ for every ℓ ∈ 𝓛(g) = {2L^m : 2L^m ≥ ℓ_0(g)}, or for every ℓ in one infinite subset. S1 includes condition (C) and so L-284 (Lemma T).
2. (U-W)′ [I] (8.3), which with (3) replaces the narrowed (U_ℓ) list [I]. (U_ℓ) itself is a lemma of the proof [P-sketch].
3. (KE′-T) [R] (8.3).
4. (H-L6) the inputs of L-323 beyond (H-T2), unchanged.
5. The Kotecký–Preiss theorem [R].
(c) inputs unchanged. (d) unchanged.
Net change against SOURCES_U_ELL §7: one more named input, (KE′-T), which was hidden inside the canon tag "[R, SOURCES_C_CONDITION 4.6]"; (U-W) gains item (D6). If the joint image sweep passes (U-W)′ and (KE′-T), Theorem IV has no uniformity input left.

### 8.5 Not applied (proposals for the coordinator)
- SOURCES_U_ELL W4: add the C_CONDITION §4.1–4.2 / Lemma T paragraph. §2.3: reclassify C_H, D_0. §3.2: replace "C_3 the absolute constant of P7" by the CMP 116 p. 20 constant. Ch7: restrict "the same for every ℓ" to β_j, Π^{(j)}. §4.1: U4 grade [V + I].
- SOURCES_ORDER_CANON N-060: name (KE′-T) at the C_H entry; note the F homonym (N-060 vs N-420); κ_0 homonym note at N-080 (as SOURCES_U_ELL proposes).
- TRUST_LEDGER §4.3 "Distance to unconditional": "(U-W)′ + (KE′-T), joint sweep with (W6*)".

STATUS: COMPLETE. 26 page images rendered at 150 dpi into one fresh /tmp folder, read as images, folder deleted. Firewall kept. Only this file written.
