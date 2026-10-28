# LEMMA_DPRIME_SWEEP.md: cross-scale coupling comparisons in Balaban's series

Date 2026-10-27. Scope: all 12 files balaban/*.txt (CMP 95, 96, 98, 99 ×2, 102 ×2, 109, 116, 119, 122 I, 122 II). Inputs: LEMMA_DPRIME.md §1, §5; LEMMA_DPRIME_VERIFY.md Steps 4–6.
Notation: u_i = g_i^{−2}. Lemma D′ gives (b) g_i ∈ ]0, γ] for all i ≤ K; (c) u_i ≥ u_k − D for i ≤ k (lower side, from D′ form) and u_i ≤ u_k + β′(k − i) (no constant).
Classes: (i) only g_k ≤ γ; (ii) two scales, fixed multiplicative slack; (iii) monotonicity or literal (0.31); (iv) other.
Method: grep per file, then page images (pdftotext -f/-l, layout) for every hit that is not plainly single-scale.

## §1 Master hit: CMP 119 p. 255 (2.6)–(2.7), p. 256 (2.8)–(2.9) [page images, pdf 13–14]

Verbatim (image of p. 255): "The coupling constants g_j satisfy the inequalities
 g_n ≤ (1 + g_n²β′(n − m))^{1/2} g_m ≤ (1 + g_n²β′)^{1/2}(n − m)^{1/2} g_m ≤ (1 + β_0)(n − m)^{1/2} g_m ,
 g_m ≤ (1 + β_0) g_n , (2.6)
where n > m, and β_0 > 0 can be chosen arbitrarily small, if g is sufficiently small. The inequalities follow from the renormalization group equations (0.20) [I], and from the properties of the β-functions. They imply the following inequalities:
 (log g_n^{−2})^p ≤ (1 + β_0)(log g_m^{−2})^p ,
 (log g_m^{−2})^p ≤ (1 + g_n²β′(n − m))^{β_0}(log g_n^{−2})^p ≤ (1 + β_0)(n − m)^{β_0}(log g_n^{−2})^p , (2.7)
where p is a positive integer."
p. 256: "ε_n ≤ (1 + β_0)(n − m)^{1/2} ε_m , ε_m ≤ (1 + β_0)(1 + g_n²β′(n − m))^{β_0} ε_n ≤ (1 + β_0)²(n − m)^{β_0} ε_n , (2.8)  R_n ≤ L R_m , R_m ≤ L(1 + g_n²β′(n − m))^{β_0} R_n ≤ (L + 1)(n − m)^{β_0} R_n . (2.9) Similar inequalities hold for other constants, which will be introduced later."
Definitions (2.4)–(2.5): ε_j = g_j A_0 (log g_j^{−2})^{p_0} = g_j p_0(g_j); R_j = least L^r with R_j ≥ (log g_j^{−2})^r.

This answers the "inductive hypotheses" question directly: CMP 119 §2 lists properties of (g_j) beyond g_j ∈ ]0, γ]. It is the source of every cross-scale factor (1+β_0), (n−m)^{β_0}, (n−m)^{1/2} found in CMP 122 (Steps 4–5 of VERIFY). Balaban derives (2.6) from (0.20) [CMP 109] and "properties of the β-functions", i.e. from literal (0.31) / monotone growth. Scale convention: m < n means m is finer (closer to bare), so (0.31) gives g_m < g_n.

Check under Lemma D′ (u_m ≥ u_n − D, u_m ≤ u_n + β′(n − m), u ≥ γ^{−2}):
- (2.6) line 1, g_n ≤ (1 + g_n²β′(n−m))^{1/2} g_m: equivalent to u_m ≤ u_n + β′(n − m). This is exactly (c) upper side. Class (iii)→ covered with zero constant. If (c) had an additive constant here, line 1 would fail for n − m small; this is why "no constant" is load-bearing. The step to (1+β_0)(n−m)^{1/2} needs γ²β′ ≤ (1+β_0)² − 1: smallness of γ only.
- (2.6) line 2, g_m ≤ (1 + β_0) g_n: class (ii), slack 1 + β_0. Under D′: g_m/g_n = (u_n/u_m)^{1/2} ≤ (u_n/(u_n − D))^{1/2}. This is ≤ 1 + β_0 iff u_n ≥ D/(1 − (1+β_0)^{−2}). Sufficient: γ^{−2} ≥ c_1 D, c_1 = 1/(1 − (1+β_0)^{−2}) (≈ 1/(2β_0) for small β_0; 4.27 at β_0 = 1/7).
- (2.7) line 1, log u_n ≤ (1+β_0)^{1/p} log u_m: under D′, log u_n ≤ log u_m + log(1 + D/u_m) ≤ log u_m + Dγ². Suffices: Dγ² ≤ ((1+β_0)^{1/p} − 1) log γ^{−2}. Weaker than c_1 for the p used (p = p_0, p_1, r, ν; finitely many, fixed before γ).
- (2.7) line 2: uses only u_m ≤ u_n(1 + g_n²β′(n−m)) (upper side) plus log γ^{−2} ≥ p/β_0 roughly. No D.
- (2.8), (2.9): products of (2.6), (2.7). Covered by the same conditions. R_n ≤ L R_m needs (log u_n)^r ≤ L^? (log u_m)^r with rounding to powers of L; slack L, covered by (2.7) line 1.
Caveat: β_0 is "arbitrarily small, if g is sufficiently small". Under D′ the order must be: fix β_0 (and p's), then γ. The induced floor on β_0 is about Dγ²/2, so any fixed β_0 > 0 works once γ is small. Balaban fixes β_0 = 1/7 in CMP 122 II p. 389.

## §2 Inductive hypotheses that name the sequence (g_j) [page images]

1. CMP 109 p. 259, Theorem 1: "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective actions for small fields are given by the formulas (0.22)–(0.24), with terms satisfying (0.29)." Class (i).
2. CMP 109 p. 259, Theorem 2 (d = 4, SU(2)): exists g_0 with g_k ∈ ]0, γ], g_K = g, and "1/g² + β log(L^kε)^{−1} ≤ 1/g_k² ≤ 1/g² + β′ log(L^kε)^{−1}. (0.31)" CMP 109 numbers stop at (0.32) (image p. 260); there is no (0.33).
3. CMP 109 p. 264 (OCR, line 804), Theorem 3: "There exist positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1 such, that if κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ for k = 0, 1, …, K, then the sequence of actions A_k … satisfy all the inductive assumptions described between (1.1)–(1.22)." Class (i). Small-field part (CMP 109, 116) needs only (b).
4. CMP 119 p. 262 (image), Theorem 1: "There exist constants … such that if the sequence of coupling constants {g_k}, determined by the recursive renormalization group (Callan-Symanzik) equations (0.18), (0.20) [I], satisfies the inequalities (I.0.33), then the sequence of densities {ρ_k} … satisfies all the inductive assumptions." [I] = CMP 109. "(I.0.33)" does not exist in CMP 109. CMP 119 p. 248 (OCR line 160) uses it as "its upper bound coming from the inequality (0.33) [I], i.e., we take ε_0 = g_0A_0(log γ_0^{−2})^{p_0}, γ_0^{−2} = γ^{−2} + β log ε^{−1}", which is the upper side of (0.31). So (I.0.33) = (0.31) of CMP 109 (misnumbered reference). Class (iii): the large-field theorem assumes literal (0.31), not only ]0, γ].
5. CMP 119 p. 255 (2.6)–(2.9): see §1. These are the working consequences of (0.31) that the large-field induction uses.
6. CMP 122 II p. 359 (OCR line 31–37), Theorem 1: quoted hypothesis is "contained in an interval ]0, γ]"; the following remark (line 36–37) says this "assumption follows from the basic inequality (0.31) [II]". To be checked in §5.

Consequence: Lemma D′ must deliver, for CMP 119 Theorem 1, the inequalities (2.6)–(2.7), not (0.31) itself. §1 shows (b) + (c) + γ^{−2} ≥ c_1 D give them. Literal (0.31) is used directly in one more place: the alternative ε_0 choice (CMP 119 p. 248), which Balaban does not adopt ("we assume here that ε_0 is given by the first formula").

## §3 CMP 95, 96, 98, 99 ×2, 102 ×2, 109, 116: sweep result

- CMP 95, 96, 98, 99 (both), 102 (variational problem): no coupling sequence appears. Grep for g_k / g_j / coupling / β-function / (0.31) / monoton gives no hit about couplings (CMP 96 l. 673 and CMP 99 l. 760 are unrelated symbols; CMP 98 "uniformly in A′" is about fields). Nothing to classify.
- CMP 102 (UV stability, d = 3): couplings are explicit, g_k² = g²L^kε ("g_k = g(L^kε)^{1/2}", OCR l. 96, 530). Uses such as "|U(∂p) − 1| < 2L²B_3 g_{k−1}p(g_{k−1})η²" (l. 601) and R(g_j) (l. 560) are for an exactly monotone explicit sequence. Not a d = 4 input; Lemma D′ is not involved.
- CMP 109 (small fields): couplings enter as g_j in E^{(j)}(X, g_{j−1}, U, J) (1.9), (1.18) "|E^{(j)}(X, g_{j−1}, U, J)| ≤ E_0 exp(−κ d_j(X))", and β_{j+1}(g_j) (1.22) "a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives". Theorem 3 hypothesis "0 < g_k ≤ γ for k = 0, 1, …, K" (§2 item 3). β in l. 1386 ("0 ≤ β ≤ β_0 < 1") and l. 1456 ("(1 + 2β)α_0, (1 + β)α_1") are analyticity-domain constants, not couplings. All class (i).
- CMP 109 p. 298 (l. 2497): "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants." This is the history dependence noted in LEMMA_DPRIME L5; not a comparison.
- CMP 116 (cluster expansion, small fields): couplings appear single-scale, e.g. (1.34) "{B : |B| < ε_1 g_k^{−1} on Y}". No two-index comparison found. Class (i).
Conclusion §3: no cross-scale comparison in the small-field papers. All cross-scale uses are in the large-field papers CMP 119 and CMP 122 I–II.

## §4 CMP 119: other hits [page images pdf 21, 24, 25, 28, 41, 42]

F. p. 263 (2.46) [image]: "|R_k(U_k)| ≤ R_1 Σ_{n=1}^{k} |Γ_n| Σ_{j=1}^{n} g_j^{κ_0} < R_1 Σ_{n=1}^{k} |Γ_n| g_n^{κ_0−6} < Σ_{n=1}^{k} |Γ_n| , (2.46) for κ_0 ≥ 7 and g sufficiently small." Class (iii). The inner sum runs over up to n terms, and n is not bounded in terms of g_n. A bound g_j ≤ (1+β_0)g_n alone gives n(1+β_0)^{κ_0}g_n^{κ_0}, which is not ≤ g_n^{κ_0−6} uniformly in n. The step needs the lower side of (0.31) with linear growth.
 Under D′: (c) gives u_j ≥ t + β(K−j) − D′ and u_n ≤ t + β′(K−n). Equivalently, the Step 6 count of LEMMA_DPRIME on the window {j+1, …, n} gives the pairwise form u_j ≥ u_n + β(n−j) − D′ (call it (c′); not stated in §1 of LEMMA_DPRIME, but Step 6 proves it verbatim with K → n). With u_n ≥ γ^{−2} ≥ 2D′: u_j ≥ (u_n + β(n−j))/4 in both cases β(n−j) ≤ u_n or > u_n. So Σ_{j≤n} g_j^{κ_0} ≤ 4^{κ_0/2}(g_n^{κ_0} + 2u_n^{1−κ_0/2}/(β(κ_0−2))) = C(κ_0, β) g_n^{κ_0−2} ≤ g_n^{κ_0−6} once C γ^4 ≤ 1. Covered; condition γ^{−2} ≥ 2D′ (D′, not D) plus γ ≤ C(κ_0, β)^{−1/4}.
G. p. 266 (3.7), (3.8) [image]: "|H_{k,□}| … ≤ B_3(4δ_k + exp(−δ2M_2R_k)30d²L²B_3(1 + β_0)ε_k)"; "|U_{k,□}(∂p) − 1| < (1 + (2/10)ε_kη)ε_{k+1}(L^{−1}η)² + … < 2(1 + β_0)L^{−2}ε_kη² + (4/10)ε_kη² < ε_kη²". p. 267 (3.12) "|U_{k+1}(∂p) − 1| < 2B_3L²(1 + β_0)ε_k(L^{−1}η)²", (3.13) "|V^{(k)} − V^{(k)}_□| < (4dL)²(1 + β_0)B_3ε_k". Class (ii): ε_{k+1} ≤ (1 + β_0)ε_k, i.e. (2.8) line 1 at n − m = 1 (later scale bounded by earlier). Under D′: g_{k+1}/g_k ≤ (1 + γ²β′)^{1/2} by (c) upper side, and (log u_{k+1}/log u_k)^{p_0} ≤ (1 + Dγ²/log γ^{−2})^{p_0} by u_k ≥ u_{k+1} − D. Product ≤ 1 + β_0 for γ small given β′, D, p_0, β_0. Covered. Slack actually consumed: 2(1+β_0)L^{−2} + 4/10 < 1, so any β_0 ≤ 1 works for L ≥ 2.
H. p. 270 [image]: "For k − j large enough, more precisely for j ≤ k_1, where k_1 is the largest integer satisfying L^{−(k−k_1)}MR_j ≤ L, the cubes of the partition are …". Class (iv): it treats the condition as monotone in j, i.e. uses R_j ≤ L^{k_1−j}R_{k_1} for j ≤ k_1. This follows from (2.9) "R_m ≤ L(1 + g_n²β′(n−m))^{β_0}R_n" for γ small (the factor grows slower than L^{n−m−1}). (2.9) line 2 uses only the upper side of (c). Covered with no D condition.
I. p. 284 (3.68) [image]: "|V′ − 1| < 11d²ε_n(L^jL^{−n})² + dM(n − j + 2)ε_n(L^jL^{−n})² < 3dM(1 + log_L L^{−n})ε_n(L^jL^{−n})²". In the "sketch [of] another proof of Theorem 2", which is not load-bearing. The factor (n − j + 2)ε_n bounds fields from scales m ∈ [j, n] by ε_n, i.e. uses ε_m ≤ ε_n. Class (iv), slack 1. Under (2.8) (which literal (0.31) also only gives with slack) it becomes (1+β_0)²(n−j+2)^{1+β_0}ε_n, harmless against (L^jL^{−n})². Not D′-specific; same issue under literal (0.31).
Other CMP 119 hits single-scale: (2.4)–(2.5) definitions, δ_k = g_kA_1/A_0 p_0(g_k) (l. 1183), (2.44) "R_1 g_j^{κ_0}", (3.19) "(1+β_0)exp(−R_k)δ_k".

F′. CMP 119 p. 260 (2.31) [image]: "|R^{(j)}(X, (U, J))| ≤ g_j^{κ_0} exp(−κd_j(X)) … we obtain a sum of marginal terms, i.e., terms with bounds O(1)(L^jη)^4 g_j^{κ_0} exp(−κd_j(X)). … The sum over j is controlled by g_j^{κ_0}." Same as F: Σ_j g_j^{κ_0} must be bounded uniformly in the number of steps. Class (iii), needs linear growth of u_j. Covered as in F: Σ_{j≤k} g_j^{κ_0} ≤ C(κ_0, β) g_k^{κ_0−2} once γ^{−2} ≥ 2D′.

## §5 CMP 122 I [page images pdf 13, 14, 16–18, 24–26; p = pdf + 174]

Known from VERIFY Step 4–5: A (p. 192) and E (p. 198 (1.94)). New hits:
J. p. 187 (1.52): "|U^{(n)}_{k,Z}(∂p) − 1| < (1 − β(1/2))L_0^{2max{0,j−l}}ε_{j+1}(L^{k−j−1}η)²(1 + αβ) + αβε_j(L^{k−j}η)² < ((1 + β_0)(1 + αβ)L_0²/L² + 2αβ/(2 − β))·(1 − β(1/2))L_0^{2max{0,j−l−1}}ε_j(L^{k−j}η)²", "under the usual restrictions on β_0, β, L_0 (i.e., β_0 ≤ 1/2, β ≤ 1/2, L_0 < (1/2)L)". Class (ii): ε_{j+1} ≤ (1+β_0)ε_j, as G. Slack β_0 ≤ 1/2 is ample. Covered.
K. p. 188 (1.57): "|H^{(n+1)}_{k,Z}| ≤ (L^{j+1}η)^{−1}B_3 exp(−δ10M(R_{j+1} + ⋯ + R_{k−1}) − δMR_k)44d²B_3ε_k < 44d²B_3²(1 + β_0)exp(−R_j)ε_j." Class (ii): ε_k ≤ (1+β_0)(k−j)^{1/2}ε_j ((2.8) line 1, upper side) and R_j ≲ R_{j+1} + … ((2.9), upper side); the (k−j)^{1/2} is absorbed by exp(−δ10M ΣR). Covered by (c) upper side and γ small.
L. p. 199 [image], four comparisons:
 L1 "22d² max{1, L^{−2N}N^{1/2}O(1)B_3B_5M^5(1 + β_0)}ε_h + 2δ′_k ≤ 22d²ε_h + 2(1 + β_0)N^{1/2}(A_1p_1(g_h)/(A_0p_0(g_h)))ε_h < 23d²ε_h." Reverse direction (δ′_k, k > h, bounded by scale h), as E. Upper side of (c). Covered.
 L2 "B_3 exp(−δ(M/M_1)(j − h))exp(−(1/2)δMR_h)23d²ε_h ≤ 23d²B_3(1 + β_0)²(1 + (j − h)^{β_0})exp(−(j − h))exp(−R_h)ε_j < αε_j." ε_h ≤ (1+β_0)²(j−h)^{β_0}ε_j for h < j: (2.8) line 2, earlier bounded by later. Class (ii), slack (1+β_0)², plus exp(−(j−h)) to spare. Needs the lower side: γ^{−2} ≥ c_1 D (§1). Covered.
 L3 "B_3δ′_k ≤ B_3(1 + β_0)(1 + (k − j)^{1/2})(A_1p_1(g_j)/(A_0p_0(g_j)))ε_j < αε_j." Reverse direction, upper side. Covered.
 L4 "ε_kη² ≤ (1 + β_0)(k − j)^{1/2}L^{−2(k−j)}ε_j(L^{k−j}η)² ≤ L^{−(k−j)}ε_j(L^{k−j}η)²." (2.8) line 1, upper side. Covered.
M. p. 200 [image]: "From the definition of the number N_0 (recall that it is defined by the equation L^{−N_0+1}R_{k−N_0+1} = 1) we get O(1)B_3B_5M^5L_0^{−2(N_0−1)} ≤ O(1)B_3B_5M^5L_0²R_k^{−α_0}". Class (iv): compares R_{k−N_0+1} (earlier) with R_k, needs R_k ≤ L·R_{k−N_0+1} type, i.e. (2.9) line 1 = (2.7) line 1, which uses the lower side (u_m ≥ u_n − D). Covered by Dγ² ≤ ((1+β_0)^{1/r} − 1) log γ^{−2}.
Single-scale (class (i)): (1.24) "|U(∂p) − 1| < c(1 − β_±)ε_j(L^{k−j}η)²" (each region with its own ε_j), (1.27) δ′_j, (1.65)–(1.69) (constants α_{0,m}, α_{1,m} per scale; their definition is not in the OCR I searched; the "descending sequence" remark on p. 191 uses β ≤ 1/4, L_0² ≤ L/3, not coupling ratios).

## §6 CMP 122 II [page images pdf 8, 27–29, 32; p = pdf + 354]

Known from VERIFY: B (p. 386 (1.86)–(1.87)), C and D (p. 381). Images re-read for p. 386: "2p_0(g_{j(X)}) + 2p_0(g_{j(Y)}) − 2p_0(g_{j(Z)}) ≥ 2(1 + β_0)^{−1}p_0(g_{j+1})" confirmed. (1.85) on the same page is a definition (sums of p_0(g_{j(·)}) at their own scales), class (i).
New hits:
N. p. 362 (1.23): "H_{B_1} can be bounded by 11d²ε_h ≤ 11d²(1 + β_0)²N^{β_0}ε_k ≤ 11d²(1 + β_0)²R_k^{β_0}ε_k", h = k − N. Class (ii): ε_h ≤ (1+β_0)²(k−h)^{β_0}ε_k, earlier bounded by later ((2.8) line 2). Needs the lower side, γ^{−2} ≥ c_1 D. Covered. N ≤ R_k is a choice of N, not a coupling comparison.
O. p. 382: "|V_1(b) − 1| < 6(100MR_{j−N+1})²ε ≤ 6(100M(L + 1)N^{β_0}R_j)²ε"; p. 383 (1.78) "(100M(L + 1)N^{β_0}R_j)^{d+2}". Class (ii): R_{j−N+1} ≤ (L+1)N^{β_0}R_j = (2.9) line 2. Uses only the upper side of (c). Covered, no D condition.
Single-scale: p. 382 "exp(−R_j^{−8}p_1²(g_j))", p. 383 "2p_1 − (d + 5)r_0 > p_0 … exp(−p_0(g_j))", (1.79), (1.89) "T_k(X)1 ≤ exp(−2(1 + β_0)^{−1}p_0(g_k))", p. 389 "−2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(1/4)p_0(g_k)" (β_0 = 1/7 there).
Statement issue: Theorem 1 (p. 355–356, OCR l. 31–37) assumes only "]0, γ]", but its conclusion is "satisfy all the conditions and bounds, described in Sect. 2 [III]", and Sect. 2 [III] contains (2.6)–(2.9). It then says the assumption "follows from the basic inequality (0.31) [II]"; [II] = CMP 116, which has no (0.31); (0.31) is in [I] = CMP 109. So the published proof of Theorem 1 uses (2.6)–(2.9), not only ]0, γ].

## §7 Conclusion

Complete list (OCR grep + page image for each; not a line-by-line read):
| # | Place | Comparison | Class | Side of (c) needed | Condition |
|---|---|---|---|---|---|
| 0 | CMP 119 p. 262 Thm 1 | assumes "(I.0.33)" = (0.31) of CMP 109 | (iii) | replaced by (2.6)–(2.9) | — |
| 1 | CMP 119 p. 255 (2.6) l.1 | g_n ≤ (1+g_n²β′(n−m))^{1/2}g_m | (iii) | upper, no constant | γ small (D-free) |
| 2 | CMP 119 p. 255 (2.6) l.2 | g_m ≤ (1+β_0)g_n, m<n | (ii) 1+β_0 | lower | γ^{−2} ≥ c_1D |
| 3 | CMP 119 p. 255 (2.7) | (log g^{−2})^p ratios | (ii) 1+β_0 | both | Dγ² ≤ ((1+β_0)^{1/p}−1)log γ^{−2} |
| 4 | CMP 119 p. 256 (2.8)–(2.9) | ε, R ratios | (ii) | both | from 1–3 |
| 5 | CMP 119 p. 260 (2.31), p. 263 (2.46) | Σ_j g_j^{κ_0} ≤ g_n^{κ_0−6} | (iii) linear growth | lower with growth (c′) | γ^{−2} ≥ 2D′ |
| 6 | CMP 119 pp. 266–267 (3.7), (3.8), (3.12), (3.13) | ε_{k+1} ≤ (1+β_0)ε_k | (ii) | both | 1+3 |
| 7 | CMP 119 p. 270 | k_1 condition monotone in j via R | (iv) | upper | D-free |
| 8 | CMP 119 p. 284 (3.68) | (n−j+2)ε_n, sketch only | (iv) slack 1 | both | not load-bearing; same under (0.31) |
| 9 | CMP 122 I p. 187 (1.52) | ε_{j+1} ≤ (1+β_0)ε_j | (ii) | both | 1+3 |
| 10 | CMP 122 I p. 188 (1.57) | ε_k, R_k vs scale j | (ii) | upper | D-free |
| 11 | CMP 122 I p. 192 (A) | δ′_j ≤ (1+β_0)²(k−j)^{β_0}δ′_k | (ii) | lower | γ^{−2} ≥ 2.42D (VERIFY) |
| 12 | CMP 122 I p. 198 (1.94) (E) | δ′_k ≤ (1+β_0)N^{1/2}(…)ε_h; log g_k^{−2} ≤ (1+β_0)log g_h^{−2} | (ii) reverse | upper; log part lower | 3 |
| 13 | CMP 122 I p. 199 L1–L4 | δ′_k, ε_k vs ε_j, ε_h ≤ (1+β_0)²(j−h)^{β_0}ε_j | (ii) | L1, L3, L4 upper; L2 lower | c_1D |
| 14 | CMP 122 I p. 200 (M) | R_{k−N_0+1} vs R_k | (iv) | lower | 3 |
| 15 | CMP 122 II p. 362 (1.23) | ε_h ≤ (1+β_0)²N^{β_0}ε_k | (ii) | lower | c_1D |
| 16 | CMP 122 II p. 381 (C, D) | p_0(g_m), p_1(g_m) ≥ (1+β_0)^{−1}·(scale j) | (ii) | lower | 3 |
| 17 | CMP 122 II pp. 382–383 (O) | R_{j−N+1} ≤ (L+1)N^{β_0}R_j | (ii) | upper | D-free |
| 18 | CMP 122 II p. 386 (B) | p_0(g_{j(X)}) ≥ (1+β_0)^{−1}p_0(g_{j+1}) | (ii) | lower | 3 |
No cross-scale comparison in CMP 95, 96, 98, 99 ×2, 102 ×2, 109, 116 (§3).

Inductive hypotheses on (g_j): CMP 109 Thm 3 and CMP 116 use only 0 < g_k ≤ γ. CMP 119 Thm 1 assumes (0.31) (cited as "(I.0.33)") and works with (2.6)–(2.9). CMP 122 II Thm 1 states only ]0, γ] but its proof uses (2.6)–(2.9) (§6).

Single smallness condition. Fix β_0 (Balaban: 1/7, ≤ 1/2), p_0, p_1, r, ν, κ_0, β′ first. Then require
 γ^{−2} ≥ c·D′, c = max(2, 1/(1 − (1+β_0)^{−2})) (= 64/15 ≈ 4.27 at β_0 = 1/7), and γ ≤ γ_*(β_0, β, β′, p_0, p_1, r, ν, κ_0),
where γ_* collects the D-free conditions that literal (0.31) also needs (γ²β′ ≤ (1+β_0)²−1, log γ^{−2} ≥ max p/β_0, C(κ_0, β)γ^4 ≤ 1). Item 3 follows: c·D′γ² ≤ 1 gives Dγ² ≤ 1 − (1+β_0)^{−2} ≤ 2β_0, which is ≤ ((1+β_0)^{1/p}−1)log γ^{−2} once log γ^{−2} ≥ 4p (β_0 ≤ 1/2). D′ ≥ D, so D′ covers items 2 and 5. Recompute g_1 = (γ^{−2} + D)^{−1/2} with the new γ.

Where the fix needs care (no place where it fails):
- Items 1, 7, 10, 12, 17 need the upper side of (c) with no additive constant. Pairwise form u_m ≤ u_n + β′(n−m) holds by (1.2) of LEMMA_DPRIME.
- Item 5 needs linear growth between two arbitrary scales. LEMMA_DPRIME §1 states (c) relative to K only. Step 6 gives the pairwise form (c′) u_m ≥ u_n + β(n−m) − D′ verbatim (window m+1..n). (c) in K-form also suffices: u_j ≥ (β/β′)u_n + β(n−j) − D′ + (1 − β/β′)t.
- Literal (0.31) alone (K-form) does not imply (2.6) line 2: for β < β′ it allows u_m < u_n by an amount growing with K − m. Balaban derives (2.6) "from the renormalization group equations (0.20) [I], and from the properties of the β-functions", i.e. from the increments. Lemma D′'s increment bounds (P1)–(P3) give the pairwise forms; that is the correct input, not (0.31).
- β_0 must be fixed before γ. Balaban's phrase "β_0 > 0 can be chosen arbitrarily small, if g is sufficiently small" is not available under D′: the floor is β_0 ≳ Dγ²/2. I found no step that needs β_0 → 0.
- Not covered by this sweep: "Similar inequalities hold for other constants, which will be introduced later" (CMP 119 p. 256), e.g. α_{0,j}, α_{1,j}; I did not locate their definitions. History-dependent β (LEMMA_DPRIME L5) still open; the pairwise bounds need (P1)–(P3) in history form.
