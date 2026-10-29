IDs follow IDS.md (new scheme). Theorem IV = L-196; IV L2 (UV constants ℓ-free) = L-319; IV L3 (FX-V) = L-320; Theorem 2w = L-001. File-local labels ((U_ℓ), (U-W), Lemma ADM, Lemma S, W1, W, (R-seq 1), (R-seq 2)) are not global ids.
# SOURCES_UW_FINAL_VERIFY — adversarial verification of SOURCES_UW_WRAP, spot check of the three UW sweeps, and proofs of (R-seq 1), (R-seq 2)

Date 2026-10-29 (Opus 5.5). Type: verification. Edits: this file only. No existing file edited. PLAN.md not touched. sync.sh not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not opened and excluded from every search.
Grades: CONFIRMED / CORRECTED / UNSUPPORTED. Tags: [V] read this session on a 150 dpi page image (fresh /tmp folders, deleted after use); [P] proved here; [P-sketch] argument given, one step as an outline; [R] reduction to a named source; [I] reading or inference.
Images read by this session: CMP 109 p. 249; CMP 116 pp. 2, 4, 8, 9, 12, 14; CMP 119 pp. 255, 256; CMP 122 I p. 177; CMP 122 II pp. 372, 380, 383, 384, 385, 386, 387, 390, 392. Part 2 images were read by one Opus subagent (list in §5).

## 0. Verdict

1. Identification "(6.31) [I]" = CMP 116 (1.31): CONFIRMED [V + I]. All five content matches hold on the images. One page number is corrected (p. 372, not pp. 372, 374). A sixth support exists: CMP 122 II p. 372 cites "Sects. 3–6 [I]" and "Sect. 6 [I]" as sections.
2. Lemma S: CONFIRMED [P given ADM (b)]. The factor L^{−½(n−j)} needs a net bound on R, not the literal (R-seq 1). §6 proves the net bound.
3. Lemma W1, and "a wrapping Z has n_0 = k_*": CONFIRMED [P given ADM (d), (R-seq 2)].
4. Lemma W, base and Case 1: CONFIRMED. Case 2 (2a)–(2b): CORRECTED. The reduction to Balaban's printed steps is correct and adds no ℓ. But two printed steps on p. 387 are not proved there. One of them is false as printed (§3.2). A per-level defect from these steps would add up over the remaining levels. For a wrapping component that is k_* − j levels. So "uniform in k_* − j" is only as strong as Balaban's own uniformity in K. Grade of Lemma W: [P relative to the two p. 387 steps, R], not [P].
5. Last-level factor ≤ exp(−2p_0(g_{j(Z)})): CONFIRMED given Lemma W.
6. "The number of levels depends on ε only": CONFIRMED [R SOURCES_L2_L3L14 §2.1].
7. Part 2: 15 hits checked on images. 11 CONFIRMED, 4 CORRECTED, 0 UNSUPPORTED. No condition with |T| or ℓ was found.
8. Part 3: (R-seq 2) PROVED from Balaban's definition (2.5) and the lower side of (c′); Balaban also prints it as (2.9). The net form of (R-seq 1) is PROVED from (2.5) and the upper side of (c′), under one new smallness condition on γ. The literal (R-seq 1) ("R drops in at most half of the steps") is not needed and is not proved.
9. Safe status (§7): (U-W) holds as "[V + P] relative to [R] items". The list of [R] items now includes the two p. 387 steps. L-319/(U_ℓ): [P-sketch → P relative to listed R inputs], unverified at the Balaban p. 387 level. Theorem IV's hypothesis list: no change.

## 1. Part 1, §1 of SOURCES_UW_WRAP: the identification

| item | check on the image | grade |
|---|---|---|
| V1 references | CMP 122 II p. 392: "[I] … Commun. Math. Phys. 109, 249–301 (1987)"; "[II] … 116, 1–22 (1988)"; "[III] … 119, 243–285"; "[IV] … 122, 175–202" [V] | CONFIRMED |
| V2 CMP 109 has no Sect. 6 | CMP 109 p. 249 contents: Sects. 0–5, References 298 [V] | CONFIRMED |
| V3 CMP 116 refers to CMP 109 as "I" | CMP 116 p. 2: "The first paper is referred to as I, so we refer to its sections and formulas by writing I before the corresponding numbers, e.g. Sect. I.3, or the formula (I.1.18)" [V] | CONFIRMED |
| V4 (1.31) | CMP 116 p. 9: "By the definition of the linear size functions they satisfy the following fundamental scaling inequality d_j(X) ≥ (L^jη)^{−1}d_k(X_0). (1.31)" [V]. X_0 is "the smallest localization domain from D_k containing X" (p. 8, last paragraph) [V] | CONFIRMED |
| V5 (1.9), (1.10) | CMP 116 p. 4: (1.9) the fundamental-theorem-of-calculus expansion in s(Δ); (1.10) the sum over connected Y_0 containing □̃⁴ [V] | CONFIRMED |
| (6.9), (6.10), (6.24)–(6.29) [I] | CMP 122 II p. 372: "we apply the expansion (6.9) [I]", "We write this expansion in the form (6.10) [I], where the summation is over domains Y_0 ∈ D_k containing □_0", "can be estimated as in (6.24)–(6.29) [I], in fact the bounds are even simpler" [V]. CMP 116 p. 8 has (1.26)–(1.29), the bounds that end in (1.29) [V] | CONFIRMED; page is 372 (WRAP says 372, 374; the other (6.10) hits are on p. 373 by the text layer, not image-checked) |
| (6.31) [I] | CMP 122 II p. 384: "From the scaling property (6.31) [I] we obtain d′_n(Z^{(n−j)}) ≤ L^{−1/2(n−j)}d′_j(Z) ≤ 2^{−(n−j)}d′_j(Z)" [V] | CONFIRMED |
| (7.1) [I] | CMP 122 II p. 387: "the Mayer expansion of the exponential, the same as in (7.1) [I]" [V]. CMP 116 p. 12 (2.1) is that expansion [V] | CONFIRMED |
| (7.13) [I] | CMP 122 II p. 390: "given by the convergent series (7.13) [I] (with proper notational changes)" [V]. CMP 116 p. 14 (2.13): E^{(k+1)}(X) = Σ (1/n!) Σ ρ^T(Z_1,…,Z_n)H(Z_1)…H(Z_n) [V] | CONFIRMED |
| extra support | CMP 122 II p. 372: "Sects. 3–6 [I]" and "This resummation is almost exactly the same as the one discussed in Sect. 6 [I]" [V]. So "[I]" in CMP 122 II has a Sect. 6 [V]; CMP 109 has none | new support |

Reading [I]: CMP 122 II cites CMP 109 + CMP 116 as one paper "[I]" with Sects. 0–7, so Sect. 6 = CMP 116 Sect. 1 and Sect. 7 = CMP 116 Sect. 2. Balaban does not state this. The five matches and the section citations make it the only reading that fits. Grade stays [I], strong.
Direction check [P]. In (1.31), X ∈ D_j and X_0 ∈ D_k with L^jη ≤ 1 (CMP 116 p. 8 uses the factor (L^jη)^5 as a small factor). So (1.31) reads d_k(X_0) ≤ (L^jη)d_j(X): the coarse size of the cover is at most the scale ratio times the fine size. This is the form used on p. 384, with M-cubes in place of MR-cubes.
Side remark [V]. p. 384 defines K as "the smallest positive integer" with S^K(Z) satisfying (i), (ii). p. 387 uses "K = 0" for the domain X of (1.71). The two uses differ by one; this affects nothing below.

## 2. Part 1: Lemma S, Lemma W1, (b2)

Lemma S [P given ADM (b)]: CONFIRMED. I re-did the proof. Let Γ be a shortest tree in Z that meets every MR_j-cube of Z. Z^{(n−j)} is the union of the MR_n-cubes that meet Z. With nested partitions (ADM (b)), each such cube contains an MR_j-cube of Z, so Γ meets it. Γ ⊂ Z ⊂ Z^{(n−j)}. So d′_n(Z^{(n−j)}) ≤ |Γ|/s_n = (s_j/s_n)d′_j(Z). The argument uses only the tree and the cubes it meets. A tree on the torus is allowed by the definition (CMP 109 p. 251–252, text layer). Wrapping does not matter.
The factor. s_n/s_j = L^{n−j}R_n/R_j. So s_j/s_n ≤ L^{−½(n−j)} is equivalent to R_j/R_n ≤ L^{½(n−j)}. This is a net bound on the total drop of R. It is weaker than WRAP's (R-seq 1) ("R drops in at most half of the steps"), because an R that also rises can drop more often. §6 proves the net bound.
p. 385 wording [V, I]. Balaban writes "for some steps we do not gain the scaling factor L^{−1} (then R_{m+1} = LR_m)". With s_{m+1}/s_m = L·R_{m+1}/R_m, a step with no gain has R_{m+1} = L^{−1}R_m. CMP 122 I p. 177 says the same: "in some steps the number R_k decreases by the factor L^{−1}" [V]. So the parenthesis on p. 385 is a misprint, or it counts the index the other way [I]. WRAP's F11 reading is correct.

Lemma W1 [P given ADM (d), (R-seq 2)]: CONFIRMED. Every step of (a) is on p. 384–385 [V] and is local: a cube of < 63 MR_n-cubes per side, and the count |Y| ≤ 3·2^{d−1}(MR_n)^d d′_n(Y) for d′_n(Y) > 0. The sum Σ_{n>j} R_n^{d+1}2^{−(n−j)} ≤ (LR_j)^{d+1} uses (R-seq 2) and Σ 2^{−m} ≤ 1. It does not depend on n_0 − j. One factor-2 slack: for n = j + 1, Lemma S gives only s_j/s_n ≤ 1, while (1.81) writes 2^{−1}. The factor goes into O(1). WRAP says this.
(b2) "a wrapping Z has n_0 = k_*" [P given ADM (d)]: CONFIRMED. If d′_n(Z^{(n−j)}) = 0, the cubes of Z^{(n−j)} meet at one point, so Z^{(n−j)} lies in a cube of side 2MR_n. By ADM (d) that cube is a contractible cube of T_ℓ. Then Z has no non-contractible loop. Contradiction. WRAP's slab count gives the same.
Remark on F1 (p. 380) [V]. Balaban writes O(1)log g_j^{−2}|Z_j| ≤ O(1)log g_j^{−2}(MR_j)^d d′_j(Z_j). This fails when d′_j(Z_j) = 0 and Z_j ≠ ∅; the correct form has d′_j + 1. The (64)^d terms of (1.81) carry the +1. This is not torus-related.

## 3. Part 1: Lemma W (the induction (1.82)–(1.88))

### 3.1 Base and Case 1: CONFIRMED
Base j = 1 [V p. 385]. The two cube-count inequalities before (1.82) and condition (C1) are printed as WRAP quotes them. Neither uses K or the torus side. W1 holds for a wrapping Z, so the base holds for it.
Case 1 [V p. 385–386]. (1.83) is printed. If K(Z_0) = ∞, then K(Z) = ∞ and the cut index min(j + 1 + K(Z), k_*) equals min(j + K(Z_0), k_*). The subtraction step is exact. The sub-case "Z_0 satisfies (i), (ii), new large field" is printed on p. 386 with "K = R_{j+1} for Z" [V]. Z lies in a 100MR_{j+1}-cube, so Z does not wrap (ADM (d)).

### 3.2 Case 2: CORRECTED
WRAP is right that its reduction adds no ℓ and no new condition. It is wrong to grade the result [P]. Case 2 rests on two steps that Balaban prints on p. 387 without proof [V]:
- (A) Subadditivity: "the intersection of S^{n−j−1}(X), S^{n−j−1}(Y), for n > j + 1, contains at least a cube of the size 20MR_n. This implies that d′_n(S^{n−j−1}(Z)) ≤ d′_n(S^{n−j−1}(X)) + d′_n(S^{n−j−1}(Y))."
- (B) Absorption: "applying n_1 times the operation S to the last domain, where n_1 is a rather small number, e.g., n_1 < 10, we obtain the domain S^{K_1+n_1}(Y) containing S^{K_1+n_1}(X)."

(A) [I]. d′ is the length of a shortest tree that meets every cube (CMP 109 p. 251–252, text layer). Two trees that meet the same cube can meet it at different points. Joining them costs up to the cube diagonal, √d in units of the cube side. Balaban includes such a constant one page earlier: "d′_{j+1}(X) + d′_{j+1}(Y) + 2d ≥ d′_{j+1}(Z)" (p. 386) [V]. On p. 387 he omits it. If the definition counts trees through cube centres, (A) is exact. The page images do not settle this.
(B) [P-sketch counterexample]. Take one coordinate. Let A := S^{K_1}(X) occupy cells [p − w, …] and B := S^{K_1}(Y) occupy cells [p, …], with B long in the other coordinates (for example, a wrapping Y). One application of S covers by cells L times larger and adds 10 layers. In this coordinate the left ends become ⌊(p − w)/L⌋ − 10 and ⌊p/L⌋ − 10. The offset w goes to ⌊p/L⌋ − ⌊(p − w)/L⌋, which reaches 1 after a few steps. From then on the offset stays 1 at the next level if and only if p ≡ 0 (mod L), and the new left end is p/L − 10. Choose p ≡ 10L + 10L² + … + 10L^t (mod L^{t+1}). Then the offset stays 1 for t further steps. (A step where R drops by L^{−1} has ratio 1; the offset then stays as it is.) So S^{m}(X) ⊄ S^{m}(Y) at every level up to the chosen depth. The literal statement (B) is false in general.
What (B) is used for. It is used to stop the X-terms after level j + 1 + K_1 + n_1 and to bound K for Z. Without (B), S^{m}(X) \ S^{m}(Y) is a layer one cell thick next to S^{m}(Y). Whether it raises d′_n is not decided here: a tree that runs along a shared face meets the cells on both sides. If it does raise d′_n, the excess is at most a fixed constant times c_n = O(1)M^dR_n^{d+1} per level.
Accumulation. A per-level defect a·c_n from (A) or (B) adds up over the levels where it occurs. In Balaban's case (no torus) these are up to K_1 + n_1 levels for (A) and K_2 − K_1 levels for (B). Neither number is bounded by a constant. In the wrapping case of WRAP (2a), (2b) the count is up to k_* − j. The one-time slack in (1.87), 2(1 + β_0)^{−1}p_0(g_{j+1}) − O(1)2dM^dR_{j+1}^{d+1}, does not grow with the number of levels. So it cannot pay such a defect in either case.
Consequence for WRAP. (2a) and (2b) are correct relative to (A) and (B) as printed. With (A) and (B) as [R] inputs, Lemma W holds with conditions free of ℓ and of k_* − j. If (A) or (B) needs a per-level additive term, the wrapping case and Balaban's own case need the same repair. A natural repair is the margin form of (1.80) (WRAP §7 (iii), still [P-sketch]), or a direct bound on the whole history that does not go through the induction. A wrapping component has a large margin available: by Lemma S and (b2), d′_j(Z) ≥ c·2^{k_*−j}, so the base term ¼γ_0(14)^{−d}A_1²p_0²(g_1)(d′_1 + 1) grows exponentially in the number of remaining levels, while the defect grows linearly. This is an outline, not a proof.
The defect is not a torus effect. It contains neither ℓ nor |T|. It concerns uniformity in the number of levels, which depends on ε only.

### 3.3 Other Case 2 details
- (1.87) [V p. 386–387]: printed as WRAP quotes it, with the +2d. CONFIRMED.
- (1.88) [V p. 387]: the summand is printed as O(1)M^dR_{j+1}^{d+1}d′_n(…), with R_{j+1} in place of R_n. This is a misprint or a use of (R-seq 2). It affects O(1) only.
- (2c) of WRAP: the case split by K_X = ∞ after the cut at k_* is complete. CONFIRMED.

## 4. Part 1: last level, and the number of levels
- Last-level factor [P given Lemma W]. At j = k_* the cut sum is empty, so κ_{k_*}(Z) ≥ 0, and the factor exp(−κ_{k_*}(Z) − 2p_0(g_{j(Z)})) of p. 384 [V] is ≤ exp(−2p_0(g_{j(Z)})). CONFIRMED. It inherits the grade of Lemma W (§3.2).
- (1.89) [V p. 387]: "T′_k(X)1 ≤ exp(−2(1 + β_0)^{−1}p_0(g_k))". The improved form with −κ_1d_k(X) is asserted with no proof [V]. WRAP grades it [P-sketch]. CONFIRMED.
- Number of levels. SOURCES_L2_L3L14 §2.1: ε = L^{−K}, the last step reaches spacing 1, "K depends on ε only". WRAP's correction of SOURCES_UW_SWEEP_122 §2 ("grows with ℓ") is right. CONFIRMED [R].

## 5. Part 2: spot check of the sweeps (15 hits, page images read by one Opus subagent)

Page offsets checked on the first image of each PDF. Pages read: CMP 109 pp. 263, 264; CMP 116 pp. 5, 6, 7, 13, 15, 16, 17; CMP 119 pp. 251, 255, 260, 263, 269, 273, 274, 280; CMP 122 I pp. 192, 194, 195; CMP 122 II pp. 358, 380, 381, 389.

| # | hit | finding | grade |
|---|---|---|---|
| 1 | 109_116 row 8 (109 p. 263) | "positive, absolute constants α_0, α_1 (i.e., constants independent of X and j)" is printed. A gap in the quantifier, not a T-dependence | CONFIRMED |
| 2 | 109_116 row 10 (109 p. 264, Thm 3) | quote printed; T is not an argument. The claim that rows 11–13, 17–19 list every restriction is an argument, not a page fact | CONFIRMED (exhaustive part [P]) |
| 3 | 109_116 row 17 (116 pp. 5–7) | all four ε-conditions printed; \|X\| is a field norm. κ_1 is "a sufficiently big positive number" (p. 16), not absolute; it is still T-free | CONFIRMED (small correction) |
| 4 | 109_116 row 21 (116 p. 13, (2.7)) | γ_1 > ‖C*Δ_kC‖ suffices; Schur bound is ℓ-free. The lower spectral bound comes from (3.185) of [13], not printed here | CONFIRMED ([R] as stated) |
| 5 | 109_116 row 22 (116 pp. 15–17) | α_5 and "α_5‖C^{(k)}(Z_0,0)‖ < ½" printed on p. 17. The uniform norm bound over large or wrapping Z_0 is not on these pages | CONFIRMED ([R] as stated) |
| 6 | 119 H7 (pp. 251, 255, 269) | p. 269 reads "100LMR_{k+1}", not 100MR_k | CORRECTED (index) |
| 7 | 119 H11 (pp. 273–274) | (3.33)–(3.37) printed. The contour Re z = r needs spec(C*Δ^{(k)}C) > r uniformly, including Λ = T_η (used for (3.39)); not printed in CMP 119. C is defined by "QCA = 0", not Q̃ | CONFIRMED (conditional on R-004 and [13]; notation fix) |
| 8 | 119 H13 (p. 260) | per point the sum is ℓ-free. The total R^{(j)} = Σ_X over all X in T_ξ is a volume output that grows with T. The sweep's "sum over X ∋ one point" is a reading, not the text | CORRECTED (ℓ-free per point; total is an output, W9) |
| 9 | 119 H19 (p. 280) | (3.48) and the sum bound printed on p. 280; the case condition z ∈ X, X ∩ (□̃²)^c ≠ ∅ is on p. 279 | CONFIRMED (page detail) |
| 10 | 119 §1 "263 Thm 2" | "E_1 independent of j, k, Ω, {Ω_j}, {Λ_j}, T" printed; (2.46) κ_0 ≥ 7. A statement; its proof is a sketch | CONFIRMED (statement; proof [R]) |
| 11 | 122 row 4 (I p. 192) | L^{−N_0+1}R_{k−N_0+1} = 1, N_0δ′_j < 4N_0²δ′_k, L_0^{2N_0} < L(L+1)N_0^{−1}R_k printed; functions of k, L, β_0, g_k | CONFIRMED |
| 12 | 122 row 5 (I pp. 192–195) | Prop. 1, (1.78), "B_5 is determined by … the condition (i)" printed; "contained in a cube of the size 100M" is on p. 192 | CONFIRMED (page detail) |
| 13 | 122 row 14 (II p. 358) | (1.8) Poincaré on a parallelepiped in a 100M cube; (1.9); (1.11) printed | CONFIRMED |
| 14 | 122 row 22 (II pp. 380–381) | the P_j factor has 1/(2g_j²); the Q_j factor has exponent (LM_2R_j)^{−2}, not −d, so it is not "the same". By (1.76) the level-j factors do not pay for all of Z_j; part is paid through the induction of pp. 384–387 | CORRECTED (misquote; ℓ-freedom rests on row 25, i.e. on §3 here) |
| 15 | 122 row 26 (II p. 389) | (1.94)–(1.96) and the κ condition printed; the count is cancelled by the polymer's own factor (row omits 1/(6·2^d)) | CONFIRMED |

Summary. 11 CONFIRMED, 4 CORRECTED, 0 UNSUPPORTED. No hit shows a condition with |T| or ℓ, and no undamped sum over all of T fixes a constant. Hits 4, 5, 7 stay conditional on CMP 99 [13] and R-004, as the sweeps say. Hit 14 ties the sweep of CMP 122 to Lemma W, so §3.2 applies to it.
I read CMP 122 II p. 380 myself and confirm the P_j and Q_j factors of hit 14 as stated.

## 6. Part 3: proofs of (R-seq 1), (R-seq 2)

### 6.1 Balaban's definition [V CMP 119 p. 255–256]
(2.5): "R_j is the smallest number of the form L^r such, that R_j ≥ (log g_j^{−2})^r." The letter r is used twice. The fixed exponent r ≥ 2 is set on CMP 119 p. 245 (SOURCES_UW_SWEEP_119 §1). Reading [I]: R_j = L^{a_j}, a_j := min{a ∈ Z : L^a ≥ (log u_j)^r}, u_j := g_j^{−2}. So R_n depends on g_n only.
Balaban prints the consequence (2.9) [V p. 256]: "R_n ≤ LR_m, R_m ≤ L(1 + g_n²β′(n − m))^{β_0}R_n ≤ (L + 1)(n − m)^{β_0}R_n" for n > m. The first is (R-seq 2). He derives (2.9) from (2.6)–(2.7), which assume the coupling flow.
Notation. x_n := r log_L log u_n, so a_n = ⌈x_n⌉. For integers, ⌈x⌉ − ⌈y⌉ ≤ ⌊x − y⌋ + 1.
Inputs from Theorem 2w (L-001, THEOREM2_PROOF_v4 §1.3): (b) g_n ∈ ]0, γ], so u_n ≥ γ^{−2}; (c′) for m ≤ n, u_n + β(n − m) − D′ ≤ u_m ≤ u_n + B′(n − m). Name clash: B′ = 5b/4 + 2R there uses a Lemma D″ constant R, not Balaban's R_n.

### 6.2 (R-seq 2): R_n ≤ LR_j for n ≥ j [P from (2.5), (b), lower side of (c′)]
Lower side with m = j: u_n ≤ u_j − β(n − j) + D′ ≤ u_j + D′. So log u_n ≤ log u_j + D′/u_j ≤ log u_j + D′γ². Hence (log u_n)^r ≤ (1 + D′γ²/log γ^{−2})^r(log u_j)^r ≤ L(log u_j)^r ≤ L·L^{a_j}, under
 (Rγ2) (1 + D′γ²/log γ^{−2})^r ≤ L.
So L^{a_j+1} ≥ (log u_n)^r, and a_n ≤ a_j + 1. ∎ For n − j ≥ D′/β one even gets u_n ≤ u_j and R_n ≤ R_j.
With Balaban's (2.6) line 2 (g_m ≤ (1 + β_0)g_n) in place of (c′), the same proof works with D′γ² replaced by 2log(1 + β_0).

### 6.3 (R-seq 1), net form: R_j/R_n ≤ L^{½(n−j)} for n − j ≥ 2, and R_j/R_n ≤ L for n − j = 1 [P from (2.5), (b), upper side of (c′)]
Put t := n − j. Upper side with m = j: u_j ≤ u_n + B′t. So log u_j ≤ log u_n + log(1 + B′t/u_n) ≤ log u_n + B′γ²t. Then
 x_j − x_n = (r/ln L)·ln(log u_j/log u_n) ≤ (r/ln L)·B′γ²t/log u_n ≤ c·t, c := rB′γ²/(ln L·log γ^{−2}).
Under
 (Rγ1) c ≤ ¼,
a_j − a_n ≤ ⌊ct⌋ + 1. For t = 1: ⌊c⌋ + 1 = 1. For t = 2, 3: ⌊ct⌋ = 0, so a_j − a_n ≤ 1 ≤ t/2. For t ≥ 4: ct + 1 ≤ t/4 + 1 ≤ t/2. ∎
Use. s_j/s_n = R_j/(L^tR_n) ≤ L^{−t/2} ≤ 2^{−t} for t ≥ 2 and L ≥ 4, and ≤ 1 for t = 1. This is exactly the factor on p. 384–385.
The literal (R-seq 1) of WRAP ("R drops in at most half of any run") is not proved. (c′) allows u to rise by up to D′ over a window, so x can cross an integer upward and downward more than once. The net form does not care, and it is the only form that Lemma S and (1.81) use.
Without Theorem 2w: Balaban's (2.6) line 1, g_n ≤ (1 + g_n²β′(n − m))^{1/2}g_m, gives u_m ≤ u_n + β′(n − m), which is the upper side of (c′) with B′ = β′. So the net form also follows from Balaban's assumed flow.

### 6.4 What is missing
Nothing for the two statements as used. Two new conditions, (Rγ1) and (Rγ2), are smallness conditions on γ after r, L, B′, D′ are fixed. They contain no ℓ and no K. They fit the canonical order "R before γ" of THEOREM2_PROOF_v4 §1.2. The grade is [P relative to Theorem 2w (b), (c′)], and Theorem 2w itself is conditional (on (B2)/(H2) and the fixed-level inputs). The reading of the doubled letter r in (2.5) is [I].

## 7. Safe status (proposed, not applied)

- (U-W) (SOURCES_U_ELL §6.1). Holds as [V + P relative to R items]. The R items are: (1) ‖C^{(k)}(Z_0)‖ uniform over large or wrapping Z_0, and the ℓ-free lower spectral bound of C*Δ_kC, both reduced to CMP 99 [13] and R-004 (sweep hits 4, 5, 7); (2) Lemma ADM (b), (d); (3) NEW: Balaban's two unproved steps on CMP 122 II p. 387, (A) exact subadditivity and (B) absorption after n_1 < 10 steps; (B) is false as printed (§3.2). No R item contains ℓ. Item (3) bears on uniformity in the number of levels, not on ℓ, and Balaban's own non-torus proof depends on it equally. (R-seq 1), (R-seq 2) are no longer R items: §6 proves them relative to Theorem 2w.
- SOURCES_UW_WRAP grades to change: Lemma W from [P] to [P relative to p. 387 (A), (B), R]; §7 (ii) inherits that grade; "Every other project file that cites CMP 109 (6.31) should read CMP 116 (1.31)": agreed; (6.9)/(6.10)/(6.24)–(6.29) page: p. 372.
- SOURCES_UW_SWEEP_122 row 25: from [V + P-sketch] to [V + P relative to p. 387 (A), (B)], not to [V + P]. Row 22: corrected quote (§5 hit 14).
- L-319 / (U_ℓ): [P-sketch → P relative to the listed R inputs], unverified at the level of Balaban's p. 387 steps. No constant-fixing condition contains ℓ: this part is now checked on images by three sweeps, WRAP, and this file. Do not upgrade to [P].
- L-320 (FX-V): unchanged apart from its (U_ℓ) input as above.
- Theorem IV (L-196) hypothesis list: no change. Its uniformity input stays (U-W) through L-319/L-320. The p. 387 item is a gap in Balaban's large-field induction (R-013 chain), which Theorem IV already assumes through Target 2. It is not a new hypothesis of Theorem IV. If the project wants it explicit, add "Balaban's large-field induction CMP 122 II (1.80)–(1.88), incl. p. 387 (A), (B)" to the R-013 input list, not to Theorem IV.
- Headline: none.

## 8. Report (≤ 100 words)

The identification "(6.31) [I]" = CMP 116 (1.31) is confirmed on the images. CMP 122 II p. 372 also cites "Sect. 6 [I]". Lemma S, W1, the wrapping n_0 = k_*, and the base and Case 1 of Lemma W are confirmed. Case 2 depends on two unproved p. 387 steps. The absorption step is false as printed. Any per-level defect would add up over k_* − j levels, as it adds up over K levels in Balaban's own proof. No defect involves ℓ. In Part 2, 11 of 15 sweep hits are CONFIRMED, 4 CORRECTED, and 0 UNSUPPORTED. (R-seq 2) and the net (R-seq 1) are proved from (2.5) and (c′). (U_ℓ) is not [P].
