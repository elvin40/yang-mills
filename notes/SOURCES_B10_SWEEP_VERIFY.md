IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_B10_SWEEP_VERIFY — independent check of B10 sweep (iv) and CMP 122 I–II Sect. 1 constants (2026-10-28)

Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## 0. Read B10 (iv)
Read: B10 (iv) in full; HBETA §1–§2 (Lemma H); HBETA_N3 §1–§8; HBETA_N3_VERIFY grades; N3A §0–§4; N3A_VERIFY l. 24, 42; B7_CLAMP §4 (D″-nest, (e1), (e2), §4.4) + VERIFY l. 13, 54, 58; KUNIF (4.1), (4.4); v4 §2.2.
Note: THEOREM2_PROOF_v4.md has no N3 section and no Lemma H (grep "N3", "Lemma H", "HBETA": zero hits). The context for N3 is HBETA_N3 §4 and HBETA §2 only.
(5.1) holds at every endpoint n ≤ K (v4 §2.2 "for all K"; B7_CLAMP_VERIFY l. 13). So T_0(m, n) ∈ b(n−m) ± 2R and D′ = 2R is right for every window. Checked because a two-endpoint difference would give 4R.

## 1. Gap 1: Lemma H″ (real base)
Set. J := component of 0 in {c ∈ [−2r, 2r] : u_0(c), …, u_K(c) are defined and u_k(c) > γ^{−2} for all k ≤ K}.
Why all k is needed. Old Lemma H Step 3 used only u_K > γ^{−2}, then u_k ≥ u_K from (E). Without (E), (c′) gives only u_k ≥ u_K − D′. Worse, (c′) holds only on admissible histories (Dom), and Dom requires u_i ≥ γ^{−2} for every i. So a set that controls only u_K cannot give the domain. The per-k condition is what Dom is. NEEDED: yes.
Why it is sufficient. (1) Admissibility: if u_0, …, u_k ≥ γ^{−2}, then each prefix is in Dom (B7 §4.4 induction: (i-tr) on each prior prefix + (5.1) give (c′); (S) is a constant condition). So (c′) holds on every c ∈ J. (2) Step 2″: (c′) with n = K and u_K(c) ≥ γ^{−2}: u_i ≥ γ^{−2} + max(0, β(K−i) − D′). Indices m = K−i ∈ {1, …, K}. Count with βm ≤ D′: ≤ D′/β, each term ≤ γ³. The rest: s_n = s_0 + βn, s_0 ∈ (0, β]; first term ≤ γ³, the others ≤ (1/β)∫_0^∞(γ^{−2}+s)^{−3/2}ds = 2γ/β. So S_3 ≤ (D′/β + 1)γ³ + 2γ/β. RECOMPUTED, matches. Σε_j ≤ ½C_1A·S_3 = x″. (3) Step 1 Gronwall unchanged, so |v_k| ≤ 3/2 for EVERY k on J. (4) 0 ∈ J: (c′) on the D″-nest trajectory gives u_k(0) ≥ g^{−2} − D′ > γ^{−2} + 3r by (a_R). The author leaves this implicit. (5) On J (an interval, so [0, c] ⊂ J): u_k(c) ≥ u_k(0) − (3/2)·2r ≥ g^{−2} − D′ − 3r > γ^{−2}. Open: strict bounds + (C-tr) continuity, step by step in k. Closed: at a limit point the prefix values are ≥ g^{−2} − D′ − 3r > γ^{−2}, so the prefix is in Dom and continuity holds there too. Connected: J = [−2r, 2r].
Condition 3r + D′ < g^{−2} − γ^{−2}: CONFIRMED as stated.
Notation clash (minor): "C_1" is both the (i-tr) bracket constant (= C_β, KUNIF (4.1)) and the (H-hist) derivative constant. Name them apart.
Grade Gap 1: CONFIRMED (two wording items: state 0 ∈ J; state the closedness step at limit points).

## 2. Gap 2: N3″ Step 2 (complex), slack, "+η", history form
Absorption. Step 0 (one-argument): |∂β_j/∂u| ≤ ½C_1′g_r³ on the vertical segment from Re u to u. So |β_j(u) − β_j(Re u)| ≤ ½C_1′γ³|Im u| < ½C_1′γ³Y ≤ β/2 by (c) γ³C_1′Y ≤ β. Uses Re u ≥ γ^{−2} only (bootstrap set). CONFIRMED.
Window. u_i − u_K = Σ_{j=i+1}^{K} β_j(u_{j−1}) (sign: u_j = u_{j−1} − B_j). Re of each term ≥ β_j(Re u_{j−1}) − β/2. Bracket at the real point: β_j(x) ≥ β_j(0) − C_βx^{−1/2} ≥ β_j(0) − b/4. Sum: ≥ T_0(i, K) − (b/4)(K−i) − (β/2)(K−i) ≥ b(K−i) − 2R − (b/4)(K−i) − (β/2)(K−i) = (3b/4 − β/2)(K−i) − D′ = (β/2)(K−i) − D′ (β = 3b/4). RECOMPUTED, matches. With Re u_i, Re u_K ≥ γ^{−2}: Re u_i ≥ γ^{−2} + max(0, (β/2)(K−i) − D′). CONFIRMED.
S_3 with step β/2: ≤ (D′/(β/2) + 1)γ³ + 2γ/(β/2) = (2D′/β + 1)γ³ + 4γ/β. RECOMPUTED, matches. (b″) = ½C_1′A·S_3 bound; leading term 2C_1′Aγ/β = old (b). K-free; γ-small since R, b fixed before γ.
Non-circular: per-step absorption uses only the pointwise bound (c). The N3A §2d η route needs S_3 to bound the window error, and S_3 needs the window bound; it closes only inside a bootstrap. The β/2 split avoids that. CONFIRMED.
Step 3″. T as written. 0 ∈ T by Lemma H″ at real Re c. On T: |u_k(c_t) − u_k(Re c)| ≤ (3/2)t|Im c| ≤ (3/2)τ for every k (Steps 0–2 give |v_k| ≤ 3/2 for all k). So |Im u_k| ≤ (3/2)τ < 2τ = Y and Re u_k ≥ [g^{−2} − D′ − 3r] − (3/2)τ > γ^{−2} by (a″). Strict, inside a compact part of D, so T open and closed. CONFIRMED.
"+η" not needed. η entered N3A only through §2d's route: lower-bound Re u_K, then pass to Re u_k by a complex window sum. The per-k route integrates v_k from the real base, whose per-k floor g^{−2} − D′ − 3r already contains the window. grep: η of §2d is used only in N3A §2d and N3A_VERIFY l. 24 (a margin remark "> 9/16 + η"); TRUST_LEDGER B10 quotes it in the gap text only. No downstream consumer. Dropping it loses nothing. CONFIRMED.
Slack. g ≤ (4γ^{−2} + D′)^{−1/2} ⇒ g^{−2} − γ^{−2} − D′ ≥ 3γ^{−2}. r = τ = r_0 ≤ γ^{−2}/10 (N3A §2c) ⇒ 3r + 1.5τ = 4.5r_0 ≤ 0.45γ^{−2}. Ratio 3/0.45 = 6.67. CONFIRMED as a lower bound. Since also r_0 ≤ 1/8, the slack is ≥ max(6.67, 5.33γ^{−2}); larger when 1/8 binds. Real (a_R): 3r ≤ 0.3γ^{−2}, slack ≥ 10. The g choice is ≤ g_1 = (γ^{−2}+2R)^{−1/2} and ≤ γ/2 (D′ = 2R): CONFIRMED.
History form. Step 0 and the bracket in Step 2″ evaluate β_j at the real history (Re u_0, …, Re u_{j−1}). Re of a complex trajectory does not obey the real recursion (Re β_j(u) ≠ β_j(Re u)), so it is not a Balaban trajectory and is outside Route 2's Dom. Also (H-hol) is already stated on all real histories in ]0, γ]^j, which is off-trajectory. So the history form needs Route 1 (slot cube), as B7_CLAMP_VERIFY l. 58 prescribes for the HHIST/B13 chain. In one-argument form β_j(x) is a function of one real x ≤ γ; KUNIF (4.1) is an own-slot bound, so the bracket holds at any x. CONFIRMED. Caveat kept: Route 1 is itself CORRECTED in B7_CLAMP_VERIFY (γ_hol undefined), and N3 still needs (H-hist_C) per HBETA_N3_VERIFY (4).
Grade Gap 2: CONFIRMED.
Residual for B10 (iv): none in the two gaps. N3 in D″ form now rests on the same inputs as N3 ((I), (H-hist), (H-hol), (H-hist_C), (B-hol)) plus (i-tr), (C-tr), (5.1), with (E) removed.

## 3. Part B setup
Section 1 spans each paper: equation numbers are (1.x) on every page. CMP 122 I Sect. 1 = pdf 3–27 = pp. 177–201 (pdf 28 = References). CMP 122 II Sect. 1 = pdf 2–38 = pp. 356–392 (pdf 1 = p. 355 title page, also read). Offsets: I p = pdf + 174; II p = pdf + 354 (B10 (i)). Images: /tmp/b10v, 300 dpi, 63 pages. Reading split over three readers (I; II pdf 1–19; II pdf 20–38), each told to list independently, without the existing list.
Comparison target: A11_CONST covers CMP 119 only (§8 table). For CMP 122 the existing list is B10 (i) rows 9–18 (I pp. 187, 188, 192, 198, 199, 200; II pp. 362, 381, 382–383, 386).
Existing CMP 122 entries (LEMMA_DPRIME_SWEEP §5–§7, B10 (i)): rows 9–18 above; II p. 359 Thm 1 hypothesis g_k ∈ ]0, γ] "follows from (0.31)"; II p. 389 β_0 = 1/7. Open [I] item from A11_CONST_VERIFY l. 80: the form p_1(g) = (log g^{−2})^{p_1}, p_1 < p_0, sourced to CMP 122 I (1.27) but not read on a page image. Part B checks it.

## 4. CMP 122 II pp. 355–373 (reader 2; key items re-checked by me in §6)
Reader: no definition of ε_k, R_k, p_0, p_1, q_1, A_0, A_1, B_3, B_5, M_0, M_1, δ, δ_0, β_0, α_{i,k} on these pages; all are used, defined in [III]/[IV].
Already listed: p. 362 (1.23) ε_h ≤ (1+β_0)²N^{β_0}ε_k ≤ (1+β_0)²R_k^{β_0}ε_k (row 15).
NOT in the B10 (i) / LEMMA_DPRIME_SWEEP list:
- N1 p. 361 (after (1.20)): assumption N ≤ R_k (N = number of scales in the transition, h = k − N + 1). Row 15's second step uses it; not listed as its own item.
- N2 p. 362 (after (1.25)) and p. 362 before (1.26)–(1.27): factors exp(−δMR_{h+1}), exp(−¼δ_0MR_{h+1}) summed into a bound ≤ g_k²(…)p_0²(g_k)e^{−R_k}, and A_1p_1(g_k). Cross-scale R_{h+1} vs R_k.
- N3 p. 363: R_{h+1} vs R_k with factor N^{(d−1)β_0}; N chosen by L^{−N} ≤ (log g_k^{−2})^{−ν}, i.e. N ≥ (ν/log L) log log g_k^{−2}, with ν ≥ 2p_0 + dr_0. A scale-indexed number N = N(g_k) and a threshold. Compatibility with N1 (N ≤ R_k) needs R_k ≥ (ν/log L) log log g_k^{−2}: true for R_k = (log g_k^{−2})^r, γ small.
- N4 p. 364 (after (1.32)): 1/g″_k² − 1/g_k² = O(1)(k − j) on Ω″_j \ Ω″_{j+1}. A direct coupling comparison across k − j scales: this is (P-up)-type u_j − u_k ≤ B′(k−j). Under D″ it holds with B′ (upper side, no constant) only if g″_k is built from the true couplings; check.
- N5 p. 366 top: 1/g″_k(·)² − 1/g_k² = O(N) ≤ O(R_k). Same as N4 with k − j ≤ N, plus N1.
- N6 p. 368 (1.47): Σ_j … (1/g_k² + O(k−j))ε_j ≤ … ε_k N^{1+β_0}(1+h−j)^{1+β_0}: implicit ε_j vs ε_k bound with polynomial (k−j)^{β_0}-type factor (lower side, like row 15).
- N7 p. 358: α_{0,k}, α_{1,k} replace ε_k; "may result only in stronger restrictions on g_k, or γ". Threshold, not quantified.
- Thresholds "g_k small enough" (pp. 357, 358, 361, 362, 363, 366): each absorbs polynomials in M, R_k, p_0, p_1, q_1 against e^{−R_k} or g_k. Single-scale; covered by (S)-type γ smallness.
Discrepancy: reader places Thm 1 on p. 355; LEMMA_DPRIME_SWEEP l. 37 says p. 359 (OCR line). Reader also wrote "Theorem 2 of [I] would remove it, but that proof is unpublished"; the second clause is reader commentary, not Balaban text. Checked in §6.

## 5. CMP 122 I pp. 177–201 and II pp. 374–392 (readers 1, 3): omissions vs the list
Listed already: I p. 187 (1.52), p. 188 (1.57), p. 192 (A), p. 198 (1.94), p. 199 L1–L4, p. 200 (M); II p. 381 (C, D), pp. 382–383, p. 386, p. 389 β_0 = 1/7.
NOT listed, CMP 122 I:
- I1 p. 177: R_{k+1} vs R_k ("in some steps R_k decreases by L^{−1}"); cube sizes 20MR_k, 40MR_k, 42(L/(L−1))MR_k, condition (i) 100MR_k.
- I2 p. 179: N_0 := least integer with L^{−N_0+1}MR_{k−N_0+1} = M (one or two solutions); k_0 = k − N_0. A scale-indexed number defined from the R-sequence. Existence/uniqueness needs R monotone-type behaviour across scales.
- I3 pp. 181–182 (1.22)–(1.24): χ thresholds mix ε_i over scales i ≤ j with factors L_0^{2max(0, i−k_0−1)}.
- I4 p. 185 (1.38), (1.42): ε_{j+1} ≤ (1+β_0)ε_j used (one step before row 9's p. 187).
- I5 p. 186 (1.46): δ′_j ≤ (1+β_0)(1+(j−i)^{1/2})(A_1/A_0)(p_1/p_0)ε_i, i ≤ j: square-root cross-scale form, upper side.
- I6 p. 183 after (1.27): δ′_j = g_jA_1p_1(g_j), p_1(g) = (log g^{−2})^{p_1}, p_1 < p_0 (closes A11_CONST_VERIFY's [I] item if confirmed on the image; §6).
- I7 p. 188 after (1.58): e^{−R_j} smaller than any positive power of g_j (needs r > 1; A11 S7).
- I8 p. 192 middle: L^{N_0−1} = R_{k−N_0+1} ≤ (L+1)(N_0+1)^{β_0}R_k and L_0^{2N_0} < L(L+1)N_0^{−1}R_k; N_0 = O(log g_k^{−2}) assumed. Row 11 lists only the δ′ part of p. 192.
- I9 p. 198 after (1.94): N ≤ O(1)(log g_k^{−2})^ν ≤ O(1)(1+β_0)(log g_h^{−2})^ν, ν/2 ≤ p_0 − p_1 − 1; N a power of log g_k^{−2}. Row 12 lists the log comparison; the N rule with ν is not listed.
- I10 p. 200 after (1.98): Σ L^{−(k−i)}R_i over i > k_0, giving exp(−4δ(m−k_0)M); uses L^{−(k−i)}R_i ≥ const for i > k_0 (from the N_0 definition).
NOT listed, CMP 122 II (pp. 374–392):
- II1 p. 380: log g_j^{−2}|Z_j| ≤ R_j(…): uses log g_j^{−2} ≤ R_j (single scale).
- II2 p. 382: N ≤ R_j used to turn N^{β_0} into R_j^{β_0}; p. 384 sets N = R_j. Also R_j large against M, L (pp. 382, 383, 385) — single-scale thresholds.
- II3 p. 383: condition 2p_1 − (d+5)r_0 > p_0 (fixed exponents; r_0 = exponent of R_j). Not in any list.
- II4 pp. 384–385 (1.80)–(1.81): cover S(Z) by LMR_{j+1}-cubes; K ≤ n_0 − j + R_j; d′_n(Z^{(n−j)}) ≤ L^{−(n−j)/2}d′_j(Z) "because sometimes R_{m+1} = LR_m"; sum Σ_{n=j+1}^{j+K} M^dR_n^{d+1}… ≤ …R_j^{d+2}: needs R_n ≤ c·R_j for j < n ≤ j + K (upper-side comparison, K ~ R_j scales).
- II5 p. 387 (1.88): "p_0 large and γ small"; p. 388–389 α, κ thresholds (fixed constants).
- II6 p. 376: d_j vs d_k distance comparison via (L^jη)^{−1}; geometric, not coupling-indexed.

## 6. My own page-image checks (I pp. 183, 198; II pp. 355, 363, 364, 384)
- I p. 183 top: "δ′_j = g_jA_1p_1(g_j), p_1(g_j) = (log g_j^{−2})^{p_1}, and p_1 < p_0; other conditions on p_1 will be formulated later." CONFIRMED. This closes A11_CONST_VERIFY's remaining [I] item (form of p_1). Note it is p. 183, after (1.27), not "(1.27)" itself.
- I p. 198 after (1.94): "N ≤ O(1)(log g_k^{−2})^ν ≤ O(1)(1+β_0)(log g_h^{−2})^ν with a positive integer ν satisfying (1/2)ν ≤ p_0 − p_1 − 1", and N "sufficiently large" so the second term ≤ α/2; "both … satisfied by N to the positive power of log g_k^{−2}". CONFIRMED. The log comparison is row 12; the ν-rule and the constraint ν ≤ 2(p_0 − p_1 − 1) are new.
- II p. 355: Theorem 1 and the remark "Theorem 2 of [I] … has not been published yet" are on p. 355 (Balaban's own words, not reader commentary; my §4 doubt withdrawn). LEMMA_DPRIME_SWEEP l. 37 "p. 359" is a wrong page (OCR line count). CORRECTION.
- II p. 363: "(100MR_{h+1})^{d−1} … ≤ g_k²L^{−(d−1)N}N^{(d−1)β_0}…R_k^{d−1}…"; "L^{−N} ≤ (log g_k^{−2})^{−ν} for sufficiently large ν, or N ≥ (ν/log L) log log g_k^{−2}"; "we need ν ≥ 2p_0 + dr_0". CONFIRMED. The step uses R_{h+1} ≤ cN^{β_0}R_k (upper side, row-17 type). Note: II's ν (lower bound 2p_0 + dr_0) is a different ν from I p. 198 (upper bound 2(p_0 − p_1 − 1)); both constrain N against log g_k^{−2}: II needs N ≥ (ν_II/log L) log log g_k^{−2}, I needs N ≤ O(1)(log g_k^{−2})^{ν_I}. Compatible for γ small. Not in any list.
- II p. 364: "(1/(g″_k(·))²) − 1/g_k² is bounded by O(1)(k − j) on Ω″_j \ Ω″_{j+1}". CONFIRMED. Upper side u_j − u_k ≤ B′(k − j) = (P-up), no constant. Covered by (c′).
- II p. 384: S(Z) by LMR_{j+1}-cubes; K defined with N = R_j; (1.80) κ_j(Z) ≥ Σ_{n=j+1}^{j+K} O(1)M^dR_n^{d+1}d′_n(S^{n−j}Z); d′_n(Z^{(n−j)}) ≤ L^{−(n−j)/2}d′_j(Z) from (6.31) [I]. CONFIRMED. Bounding Σ R_n^{d+1} by R_j^{d+2} needs R_n ≤ c R_j for n > j: lower side (u_n ≤ u_j + D′), row-14/18 type.

## 7. Part B result
Omissions (cross-scale uses not in B10 (i) rows 9–18 or LEMMA_DPRIME_SWEEP §7), each classified:
- upper side (P-up), D-free: II p. 363 R_{h+1} ≤ cN^{β_0}R_k; II p. 364 and p. 366 u_j − u_k ≤ O(1)(k−j), O(N); I p. 186 (1.46) δ′_j vs ε_i with (1+(j−i)^{1/2}); I p. 185 (1.38), (1.42) ε_{j+1} ≤ (1+β_0)ε_j; I p. 192 R_{k−N_0+1} ≤ (L+1)(N_0+1)^{β_0}R_k.
- lower side (needs D′ slack, like rows 14, 18): II pp. 384–385 R_n ≤ cR_j for j < n ≤ j + K; II p. 368 (1.47) ε_j vs ε_k with (1+h−j)^{1+β_0}N^{1+β_0} [reader reading, not re-checked]; I p. 200 Σ L^{−(k−i)}R_i.
- scale-indexed definitions/thresholds not listed: N_0 (I p. 179); N-rules I p. 198 (ν_I ≤ 2(p_0 − p_1 − 1)) and II p. 363 (ν_II ≥ 2p_0 + dr_0), N ≤ R_k (II p. 361), N = R_j (II p. 384); condition 2p_1 − (d+5)r_0 > p_0 (II p. 383); log g_j^{−2} ≤ R_j (II p. 380); e^{−R_j} ≤ g_j^N (I p. 188, = A11 S7).
None of these is a new TYPE: each is a (P-up) window, a (P-low) window with factor (1+β_0)^a·poly(n−m), or a single-scale γ-small threshold. So no class (d) item. But the list in B10 (i) is not complete: about 10 cross-scale uses and 5 threshold/exponent conditions were missing. The exponent conditions (ν_I, ν_II, 2p_1 − (d+5)r_0 > p_0, r ≥ 2) must sit in the constant order before γ: p_0, p_1, r_0 → ν's → γ. No cycle seen.
Not checked by me on images: I pp. 177–182, 185–188, 192, 199–200; II pp. 361–362, 366, 368, 376–383, 385–391 (reader readings only; three independent readers, Opus).
Grade Part B: list INCOMPLETE but no new type; B10 residual "CMP 122 completeness" can close as [P, page images, single reader per page] after adding the items above.

Cleanup: /tmp/b10v and /tmp/b10v_crop deleted after this section.
