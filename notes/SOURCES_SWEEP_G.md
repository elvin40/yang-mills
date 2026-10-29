# SOURCES_SWEEP_G — class (a) items S-91, S-93, S-102, S-67 of OPEN_ITEMS_SWEEP

Date 2026-10-28. Author: Claude (Opus 5.5). Unverified. No other file was edited. PLAN.md was not changed. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Ids follow IDS.md. Labels S-xx are those of OPEN_ITEMS_SWEEP.md.
Grades: [V] checked against a page image or a quoted source line in this session; [P] proved here; [P-sketch] proved at Balaban's level of detail; [I] taken from a source or a reading, not re-proved here.
Page images rendered this session (pdftoppm, 110 dpi, folder /tmp/swg_img, deleted at the end): CMP 116 pp. 14, 18, 19, 20, 21; CMP 119 pp. 272, 277; CMP 122 II pp. 381, 389, 390.

Order of the sections: S-91 first, because S-102 and S-67 use its lemma.

## 1. S-91 (R-037 I8): the Kotecký–Preiss derivative lemma

### 1.1 What the canon contains
SOURCES_ORDER_CANON.md has no displayed Kotecký–Preiss (KP) inequality. A grep for "Kotec", "polydisc", "Cammarota", "cluster", "Ursell", "Mayer" and "polymer" in that file finds no KP line. [V]
The smallness that a KP step needs is in the canon only in implicit form:
- N-070: κ large, δLκ/48 ≥ K_abs, κ ≥ 1536 at d = 4, β = ¼.
- N-400: ε_1 small, after κ, κ_1, L, M, the α's and C_3; the list says "upper bounds via κ_1, B_0, C_i^{116}, α_2, α_4, Latin a_1, M^q, E_0, L".
- CMP 116 p. 21 [V image]: "To the above sum we can repeat all the considerations and bounds of the paper [26], for κ sufficiently large, and ε_1 sufficiently small"; then "O(1)C_3ε_1 ≤ ½E_0". Ref. [26] of CMP 109 is Cammarota, CMP 85, 517–528 (1982) [V text layer].
So the lemma below states the KP condition explicitly, as one new upper bound on ε_1 in the N-400 slot (and one in the γ slot for the large field). Its constant uses only quantities that the canon fixes before ε_1.

### 1.2 Setting and geometric inputs
Polymers Y are domains in D (D_{k+1} for CMP 116; D_k with d_{k,∪Y_i} for CMP 122 II). |Y|_□ is the number of cubes of Y. d(Y) is the tree length. N(X) is the set of cubes that lie in X or share a wall with a cube of X. The incompatibility relation ≁ is symmetric and reflexive, and Y ≁ X implies that Y contains a cube of N(X).
- CMP 116 (2.11): ζ(Z, Z′) = 0 if Z ∩ Z′ contains a cube or a wall [V image p. 14]. It obeys the rule above.
- CMP 122 II (1.90): hard-core gas, incompatible means overlapping [I, from SOURCES_B20_W4R_VERIFY V10]. It obeys the rule above.
Three geometric inputs:
- (T1) volume: |Y|_□ ≤ 24 d(Y) + 1. Source: CMP 116 (2.30), printed as "(3·2³)^{−1}M^{−4}|Y| ≤ d_k(Y) ≤ M^{−4}|Y| − 1" [V image p. 18]. The "+1" is my safe addition.
- (T2) tree bound: if Y_1, …, Y_n have a connected union, then d(∪Y_i) ≤ Σ_i (d(Y_i) + 5). Source: CMP 116 (2.27), "Σ_{Y∈D}(d_k(Y) + 5) ≥ d_k(Y_0) + 5" for ∪Y = Y_0 connected [V image p. 18]. For d_{k,∪Y_i} of CMP 122 II this is [I].
- (T3) entropy: S(s) := sup_□ Σ_{Y∋□} e^{−s d(Y)} < ∞ for s ≥ s_0(d). Source: CMP 116 (1.28) "with κ replaced by δκ" and (2.29) [I: (1.28) not re-read; (2.29) printed in product form, image p. 18].

### 1.3 The KP theorem used [I]
Kotecký–Preiss, CMP 103, 491–498 (1986). Let a, b ≥ 0 be functions on polymers. Assume, for every polymer X,
 (KP) Σ_{Y≁X} |z(Y)| e^{a(Y) + b(Y)} ≤ a(X).
Then log Ξ = Σ_C Φ^T(C) z^C converges absolutely, and for every X,
 Σ_{C≁X} |Φ^T(C) z^C| e^{b(C)} ≤ a(X),  b(C) := Σ_{Y∈C} b(Y) (with multiplicity).
The text was not fetched in this session; the statement is the standard one. A test set X that is not a polymer can be added to the family with activity 0. Then the conclusion holds for X if (KP) holds for X. [I]

### 1.4 Lemma KP-D (value and derivative bound) [P given 1.2–1.3]
Hypotheses. A finite volume. Activities H(Y) = H(Y; g) are C¹ in a real parameter g on an interval I (or holomorphic on a complex disc). For all g in I and all Y:
 |H(Y)| ≤ η e^{−r d(Y)},  |∂_gH(Y)| ≤ η ρ̄ e^{−r d(Y)}.
Fix a target rate r′ < r. Define
 K_KP(r, r′) := 2·3^d · e^{1 + 5r′} · S(r − r′ − 24).
Assume r − r′ − 24 ≥ s_0 and
 (KP-D) K_KP(r, r′)·η ≤ 1.
Define E(X) := Σ_{n≥1} (1/n!) Σ_{(Y_1,…,Y_n): ∪Y_i = X} ρ^T(Y_1, …, Y_n) H(Y_1)⋯H(Y_n), the form of CMP 116 (2.13).
Conclusion. For every X and every g in I:
 |E(X)| ≤ K_KP η e^{−r′d(X)},  |∂_gE(X)| ≤ K_KP η ρ̄ e^{−r′d(X)}.
The derivative constant is ρ̄ times the value constant. No other factor enters.

Proof.
Step 1 (weights). Put a(Y) := |Y|_□ and b(Y) := r′(d(Y) + 5). A cluster C is connected in the ≁ graph. So ∪C is connected, and (T2) gives r′d(∪C) ≤ b(C).
Step 2 (two-variable majorant). Fix a cube □. For t, s ≥ 0 put
 F(t, s) := Σ_{C≁□} |Φ^T(C)| Π_{Y∈C} (t|H(Y)| + s|∂_gH(Y)|) e^{b(C)}.
F is a power series in (t, s) with nonnegative coefficients. Every monomial has total degree ≥ 1.
Step 3 (KP at a scaled point). Let T := 1/(K_KPη) ≥ 1 and R := 1/ρ̄. Take activities z(Y) := T(|H(Y)| + R|∂_gH(Y)|) ≤ 2Tη e^{−r d(Y)}. For any test set X (a polymer, or a single cube):
 Σ_{Y≁X} z(Y) e^{a(Y)+b(Y)} ≤ Σ_{□′∈N(X)} Σ_{Y∋□′} 2Tη e^{−r d(Y)} e^{24d(Y)+1} e^{r′d(Y)+5r′}
  ≤ 3^d|X|_□ · 2Tη e^{1+5r′} S(r − r′ − 24) = |X|_□·T·K_KPη = a(X).
I used (T1), |N(X)| ≤ 3^d|X|_□, and (T3). So (KP) holds. With X = {□}, a(X) = 1, the KP conclusion gives F(T, TR) ≤ 1.
Step 4 (value). Each monomial of F(·, 0) has degree n ≥ 1 in t. So F(1, 0) ≤ T^{−1}F(T, 0) ≤ T^{−1}F(T, TR) ≤ K_KPη.
Step 5 (derivative). ∂_sF(1, 0) collects the monomials of degree 1 in s and n − 1 ≥ 0 in t. So ∂_sF(1, 0) ≤ ∂_sF(T, 0). F(T, ·) has nonnegative coefficients, so ∂_sF(T, 0) ≤ F(T, TR)/(TR) ≤ 1/(TR) = K_KPηρ̄.
Step 6 (from clusters to E(X)). The ordered sum with 1/n! in (2.13) equals the KP cluster sum over multisets. Every cluster with ∪C = X ∋ □ is incompatible with {□}. By Step 1, e^{r′d(X)} ≤ e^{b(C)}. So
 Σ_{X∋□} |E(X)| e^{r′d(X)} ≤ F(1, 0) ≤ K_KPη.
For the derivative: the series of termwise derivatives is dominated by ∂_sF(1, 0) < ∞, uniformly in g ∈ I, because the bounds on H and ∂_gH are uniform. A series of C¹ functions that converges, with a uniformly convergent derivative series, is C¹ and can be differentiated term by term. Each term derivative is Σ_i ∂_gH(Y_i)Π_{j≠i}H(Y_j). So
 Σ_{X∋□} |∂_gE(X)| e^{r′d(X)} ≤ ∂_sF(1, 0) ≤ K_KPηρ̄.
Fix any □ ∈ X. Each sum over X ∋ □ bounds its single term X. ∎
In the holomorphic case the same proof works with complex activities: KP is a statement about |z|.

### 1.5 Instance N3 / GGAIN §4.4(ii) (small field, CMP 116) [P given 1.4 and GGAIN §4.4(i)]
- ρ := ½Lκ. Activities H(Z) of CMP 116 (2.9). Value bound (2.38): |H(Z)| ≤ C_3ε_1e^{−(1−8δ)ρd_{k+1}(Z)} [V image p. 20]. Derivative bound GGAIN §4.4(i): |∂_gH(Z)| ≤ C_3ε_1ρ̄e^{−(1−9δ)ρd_{k+1}(Z)}, ρ̄ = ρ̄_V + ρ̄_χ [I: GGAIN, verified as a reduction].
- Take r = (1 − 9δ)ρ, r′ = (1 − 10δ)ρ, η = C_3ε_1. Then r − r′ − 24 = δρ − 24 = δLκ/2 − 24.
- New canon condition, slot N-400: (KP-116) 2·3^d e^{1+5(1−10δ)ρ} S(δLκ/2 − 24) · C_3ε_1 ≤ 1, with δLκ/2 ≥ 24 + s_0 in the N-070 slot (κ ≥ 1536, L = 13, δ = 0.025 gives δLκ/2 = 249.6).
- Result: |∂_gE^{(k+1)}(X)| ≤ S_0 e^{−(1−10δ)½Lκd_{k+1}(X)} with S_0 = K_KP·C_3ε_1·(ρ̄_V + ρ̄_χ). This is GGAIN's statement with "O(1)" = K_KP(r, r′). S_0 stays free of ε_1, because ρ̄ ∝ ε_1^{−1}. The decay loss is one δ-unit, as GGAIN says. The "doubled polydisc" of GGAIN §4.4(ii) is replaced by the scaled point (T, TR) of Step 3; no factor 2 on the radius is lost.
- The constant c_2 of SOURCES_G3_N2 4.3 ("the KP constant of GGAIN §4.4(ii)") is K_KP(r, r′) above.
- Side remark [V image p. 21]: CMP 116 (2.39) prints the per-factor prefactor exp 5κ. The tree bound (T2) at rate (1 − 9δ)½Lκ gives exp(5(1 − 9δ)½Lκ). Both are fixed before ε_1, so ε_1 small absorbs either. The lemma uses the second form.

### 1.6 Instance GGAIN_LF I8 (large field, CMP 122 II (1.97)–(1.99)) [P given 1.4; (T1)–(T3) for d_{k,∪Y_i} are I]
- Activities F(X′) of (1.90)–(1.91). On the own-slot disc D = {|g − x| < ρ_0x}, ρ_0 = 0.1, (1.97) holds in the form |F(X′)| ≤ c_1e^{−(1+β)κd(X′)} [I: §2 below and SOURCES_GGAIN_LF 3.1].
- Take r = (1 + β)κ, r′ = (1 + ½β)κ, η = c_1, complex g on D (holomorphic case). r − r′ − 24 = ½βκ − 24 = 168 at κ = 1536, β = ¼.
- Condition (KP-122): 2·3^d e^{1+5(1+½β)κ} S(½βκ − 24)·c_1 ≤ 1. It follows from printed conditions for κ large:
 (a) c_1 = α^{1/3}: the printed condition after (1.93), α^{1/3} ≤ exp(−(1+β)κ2^d) [I: SOURCES_MB L21, image read there], gives c_1 ≤ e^{−20κ} at d = 4, β = ¼. The need is c_1 ≤ (2·81·e·S)^{−1}e^{−5.625κ}. True for κ ≥ 1536.
 (b) c_1 = e^{−p_0(x)}: p. 389 at Balaban's example β_0 = 1/7 gives p_0 ≥ 8κ(100R_k)^d + 4 ≥ 8κ [V image p. 389]. The need is p_0 ≥ 5.625κ + log(162eS). True for κ ≥ 1536.
- Value: |R′^{(k)}(X)| ≤ K′_KP c_1e^{−(1+½β)κd(X)} on all of D. This is (1.99) with O(1) = K′_KP := K_KP((1+β)κ, (1+½β)κ).
- Derivative (the I8 step of GGAIN_LF 3.2): Cauchy on the disc of radius ρ_0x/2 around real g with |g − x| ≤ ρ_0x/2 gives |∂_gR′^{(k)}(X)| ≤ (2/(ρ_0x))K′_KPc_1e^{−(1+½β)κd(X)}. The 1/x is absorbed by the p_0 exponent as in GGAIN_LF 3.3. Equivalently, apply 1.4 with ρ̄ = 2/(ρ_0x).
- K′_KP is not an absolute O(1); it contains e^{5(1+½β)κ}. Where Balaban drops the O(1), for example in (1.100) "c_1 equal to exp(−p_0(g_k))", the factor K′_KP is absorbed by the slack 8κ(100R_k)^d + 4 − 5.625κ in p_0. [P-sketch: I did not trace every downstream use of (1.99).]

### 1.7 Grade and proposed ledger text
Grade: Lemma KP-D [P] relative to the KP theorem [I, standard, external] and (T1)–(T3) ((T1), (T2) [V] for d_k; (T3) [I]). Instance 1.5 [P] given GGAIN §4.4(i). Instance 1.6 [P] given (T1)–(T3) for d_{k,∪Y_i} [I] and (M-B) (§2).
Proposed R-037 text change: replace "I8 (KP derivative, standard; SOURCES_GGAIN_LF_VERIFY)" by "I8 (KP derivative): PROVED relative to the KP theorem [I, external] and the tree geometry (CMP 116 (2.27), (2.30) [V]; (1.28) entropy and the d_{k,∪Y_i} versions [I]), constant K_KP = 2·3^d e^{1+5r′}S(r − r′ − 24), derivative constant = ρ̄ × value constant (SOURCES_SWEEP_G §1, unverified)". Add to canon N-400 the line (KP-116) and to the γ slot the remark that (KP-122) follows from (1.93) and the p. 389 condition for κ ≥ 1536.

## 2. S-93 (R-037): the H-145 (M-B) large-field bookkeeping with K-002's margin

### 2.1 Statement
Setting (HHOL_LF 4.1, GGAIN_LF §3): finite volume; the thresholds ε_j, δ_j, δ′_j, R_j, N, the cube partitions and the R-ratio density weight are frozen at Balaban's real trajectory x*. The coupling of the own slot moves on D = {|g − x| < ρ_0x}, ρ_0 = 0.1, x = x*_k. With sources, the weight is w = u + d_B + d_S (additive, D3W8 §1.1).
Margin (K-002, endorsed in SOURCES_MB_VERIFY V2, V6): g* := 0.82645 − θ_W − τ_C, θ_W + τ_C ≤ 0.2, so g* ≥ 0.62645. Coupling only (the GGAIN_LF own-slot derivative): θ_W = τ_C = 0, g* = 0.82645.
Claim (M-B). Under the conditions (MB1)–(MB5) of 2.3, every bound of CMP 122 II (1.73)–(1.99) holds on D, with thresholds at x*, with the changes listed in 2.2. In particular, on D:
 |T′_k(X)1| ≤ e^{−2(1+β_0)^{−1}p_0(x*_k)},  |F(X′)| ≤ c_1e^{−(1+β)κd(X′)},  |R′^{(k)}(X)| ≤ K′_KP c_1e^{−(1+½β)κd(X)},
with c_1 = e^{−p_0(x*_k)} or (α^c)^{1/3}, and K′_KP from §1.6.

### 2.2 Line-by-line table (L-numbers of SOURCES_MB §2)
Rule used in every row [P, SOURCES_MB §3 with the additive correction of MB_VERIFY V2]: each large-field factor is a lower bound on a positive Wilson action or on its positive quadratic form, times a prefactor. At complex u the modulus of the integrand is at most the integrand with prefactor Re w ≥ (0.82645 − θ_W − τ_C)x*^{−2} = g*x*^{−2}. The thresholds sit only in indicators, which are g-free after freezing. So every γ_0 in these factors becomes g*γ_0.
| line | printed (source) | change under g* ≥ 0.62645 | grade |
|---|---|---|---|
| L1 (1.73) p. 380 | positivity bound | not used at complex u; modulus domination comes first (B20_W4R_VERIFY (b)) | [P] |
| L2–L4 p. 380 | P/Q/R factors with γ_0 | γ_0 → g*γ_0 ≥ 0.626γ_0; ε_j, δ_j, R_j unchanged | [P] |
| L5 p. 381 | exp(−γ_0 min{½B_3^{−2}A_0², 2A_1², A_1²}p_0²(d′+1)) ≤ exp(−½γ_0A_1²p_0²(d′+1) − 2p_0) [V image] | option B: keep the right side exactly; needs (g* − ½)γ_0A_1²p_0² ≥ 2p_0, i.e. p_0 ≥ 2/((g* − ½)γ_0A_1²) ≤ 15.82/(γ_0A_1²); covered by (MB2) | [P] |
| L6 p. 381 | exp(−¼g_m^{−2}B_3^{−2}½ε_m²) ≤ exp(−⅛B_3^{−2}(1+β_0)^{−2}A_0²p_0²) ≤ exp(−A_1²p_0²) [V image] | ¼ → ¼g*. Either raise A_0 by (g*)^{−1/2} ≤ 1.264 (A_0 comes after A_1 in the canon order), or use the factor only as ≤ e^{−p_0} per cube: g*A_1²p_0² ≥ p_0 holds since A_1²p_0 ≥ 17/γ_0 ≥ 17 > 1/g* | [P] |
| L7 p. 381 | exp(−γ_0g_m^{−2}(2δ′_m)²) ≤ exp(−γ_04(1+β_0)^{−2}A_1²p_1²) ≤ exp(−γ_0A_1²p_1²) [V image] | slack 4(1+β_0)^{−2}; with g*: 4g*(1+β_0)^{−2} ≥ 1 iff β_0 ≤ 2√g* − 1 = 0.583; at β_0 = 1/7 it is 1.918; right side unchanged | [P] |
| L8 p. 381 | exp(−¼g_j^{−2}(O(1)B_3M²)^{−1}ε_j²) ≤ exp(−A_1²p_0²) [V image] | as L6 | [P] |
| L9 p. 383 | ½γ_0 factor, "2p_1 − (d+5)r_0 > p_0", "estimate the factors by exp(−p_0(g_j))" [I: MB_VERIFY V3 image] | any fixed g* > 0 is absorbed by the log-power gap for γ small; per-cube e^{−p_0(x*_j)} survives | [P] |
| L10 p. 383 | costs exp O(1)\|Z_j ∩ Ω_j\|, exp O(1)(MR_j)^{−d}\|Z_j\| | C_c → C_c′ := C_c + C_m + C_G + C_E + C_N (2.4) | [P given (M-A), (M-C)] |
| L11 (1.79) | sup exp{ΣC_cM^dR_j^{d+1}d′_j}·Π exp(−½γ_0A_1²p_0²(d′+1) − 2p_0)·Π′e^{−p_0} | C_c → C_c′; second product unchanged (option B); Π′ unchanged | [P] |
| L12 (1.80)–(1.81) | budget C_1 | C_1′ := max(1, C_c′) (FX_R2 route (b)) | [P] |
| L13 (1.82) | ¼γ_0(14)^{−d}A_1²p_0²(g_1) ≥ C_1·2(64)^dM^dL^{d+1}R_1^{d+2} | left side unchanged (option B); right side × F := C_1′/C_1; absorbed by "p_0 large, g_1 small" | [P] |
| L14 (1.83) | closes iff C_1 ≥ C_c | closes iff C_1′ ≥ C_c′: true by the choice in L12 | [P] |
| L15 p. 386 | p_0(g_j) ≳ C_1(100M)^dR_{j+1}^{d+2} | × F, absorbed | [P] |
| L16 (1.85) | new-region term ½γ_0A_1²p_0² + 2p_0 | unchanged (option B); C_c → C_c′ | [P] |
| L17–L18 (1.86)–(1.88) | uses g_m ≤ (1+β_0)g_n (CMP 119 (2.6)) | used on the real x* only; C_c, C_1 → C_c′, C_1′; × F absorbed | [P] |
| L19 (1.89) | T′_k(X)1 ≤ exp(−2(1+β_0)^{−1}p_0(g_k)) | same form for \|T′_k(X)1\| on D, p_0 at x*_k | [P] |
| L20–L21 (1.92)–(1.94) | \|σ\| ≤ 1; α^{1/3} ≤ exp(−(1+β)κ2^d) | α → α^c (complex-u small-field bound); fixed factor absorbed by γ small | [P given (M-C) and the F2′–α link [I]] |
| L22 p. 389 | −2(1+β_0)^{−1}p_0 + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0 [V image] | κ → κ′ := κ + O(1)M^d(N²−1) if the MA2 per-component entropy is booked here (GGAIN_LF 3.1); else unchanged and the entropy sits in C_N of L10. Booking it in both places is safe | [P] |
| L23–L24 (1.95)–(1.99) | (1.97) \|F(X′)\| ≤ c_1e^{−(1+β)κd}; (1.98) "convergent series (7.13) [I]"; (1.99) [V image p. 390] | unchanged in form; the exponentiation is Lemma KP-D (§1.6) | [P given §1] |

### 2.3 Conditions (new or changed relative to Balaban)
- (MB1) θ_W + τ_C ≤ 0.2 (K-002). Both are O(γ²r): θ_W ≤ 6.5γ²r, τ_C ≤ 3c_1c_Hγ²r (FX_O23 §5). So (MB1) is an upper bound on γ: (6.5 + 3c_1c_H)γ²r ≤ 0.2. Strict limit for option B with c = 17: θ_W + τ_C < 0.82645 − (½ + 2/17) = 0.2088. [P, numbers checked with python]
- (MB2) p_0(g) ≥ 17/(γ_0A_1²) for all g ≤ γ (K-002). At θ_W + τ_C = 0.2 the need is 2/0.12645 = 15.82 ≤ 17. Coupling only: 2/0.32645 = 6.13. p_0(g) → ∞ as g → 0, so (MB2) is an upper bound on γ. [P]
- (MB3) C_1′ := max(1, C_c′). [P]
- (MB4) (1.82), (1.88) and the p. 386 small-domain condition, each with the factor F = C_1′/C_1 on the right side. Each is "p_0 ≥ F × (polylog of lower power)", absorbed by p_0 large and γ small (FX_R2 §4). [P]
- (MB5) p. 389 with κ′: p_0(x*_k) ≥ 8κ′(100R_k)^d + 4 at β_0 = 1/7. Absorbed for A_0 large because p_0(g) ≥ A_0 log g^{−2} and R(g)^d ≤ L^d(log g^{−2})^{rd} (GGAIN_LF 3.1). [P given the R(g) growth, which Balaban also uses]
- (MB6) β_0 ≤ 0.583 if L7 is kept with its printed right side. The canon already caps β_0 ≤ ½ (Group 0, line B6 of SOURCES_ORDER_CANON), so (MB6) holds with no new condition. [P]
- (KP-122) of §1.6, implied by (1.93) and (MB5) for κ ≥ 1536. [P given §1]
None of these needs a new constant slot. (MB1), (MB2), (MB4), (MB5) are upper bounds on γ (canon N-470). (MB3) is a choice of C_1 (N-order: C_1 is last before γ). (MB6) is implied by the canon cap β_0 ≤ ½.

### 2.4 Per-site costs inside C_c′ (L10)
All are O(1) per scale-j site, against Balaban's budget O(1) log g_j^{−2}|Z_j| ≤ O(1)M^dR_j^{d+1}d′_j(Z_j) (p. 380 [I: MB_VERIFY V5 image]).
- C_G: complex Gaussian modulus (|u|/Re u)^{1/2} = (1 − 2ρ_0²)^{−1/2} = 1.01015 per mode; C_G = −½ log 0.98 = 0.0101 per mode (MB_VERIFY V5). [P, number checked]
- Normalization shift: ½|log|w|| ≤ −log 0.9 = 0.1054 per mode (MB_VERIFY V5). With sources add e^{O(γ²r)} per mode (O3 Step 4). [P]
- C_N: the Gaussian normalization u^{±n/2} on D, |u|/Re u ≤ 1/cos(2 arcsin 0.1) = 1.020, a factor ≤ e^{0.01n} per unit cube (GGAIN_LF_VERIFY V2 asked for this item to be named). It overlaps with C_G; counting both is safe. [P]
- C_m: freeze mismatch, e^{1.07(N²−1)(1+η_x)} per scale-k unit cube inside each R-ratio component (MA2 §5; input (M-A)). [I: (M-A), reduced and verified in the ledger]
- C_E: complex-u small-field E-terms and V(X̃) (input (M-C)). [I: (M-C) reduced and verified in the ledger, row R-041 / H-146]
The budget grows like log g^{−2}; the extra cost is a fixed O(1). So (MB3) closes it. [P]

### 2.5 What is not done here
- The F2′–α link (L20–L21) stays [I]: CMP 122 II (1.68) says α "can be chosen arbitrarily small for γ small enough" [V text layer l. 1121–1122]. That α bounds the resummed V(Y) terms. That their complex-u version α^c is a fixed multiple of α rests on HHOL_LF §5.3 (F2′ with 40ε′ on the polydisc) and is not checked on CMP 122 II pages (SOURCES_MB_VERIFY item 4).
- L9–L18 displays not re-imaged here; I used the image transcriptions of SOURCES_MB_VERIFY V2–V5. Re-imaged here: p. 381 (L5–L8), p. 389 (L22, (1.94)–(1.97)), p. 390 ((1.98)–(1.100)). All match.

### 2.6 Grade and proposed ledger text
Grade: (M-B) on D with K-002's margin: [P] relative to (M-A) and (M-C) (both reduced and verified in the ledger), the F2′–α link [I], the image transcriptions of SOURCES_MB_VERIFY for pp. 380, 383, 387, and §1 for the exponentiation. The coupling-only case used by GGAIN_LF has g* = 0.82645 and needs only c = 6.13, so (MB2) with 17 covers both uses.
Proposed R-037 text change: replace "H-145 (M-B) bookkeeping" in the open-input list by "H-145 (M-B): written out with K-002's additive margin g* = 0.82645 − θ_W − τ_C ≥ 0.62645, option B, p_0 ≥ 17/(γ_0A_1²), C_1′ = max(1, C_c′), κ → κ′ at p. 389, β_0 ≤ 0.583 (implied by the canon cap β_0 ≤ ½); [P] relative to H-143 (M-A), H-146 (M-C) and the F2′–α link [I] (SOURCES_SWEEP_G §2, unverified)". The large-field open-input list of R-037 then reads: coarea Jacobian on non-round level sets, CMP 102 (189), F2′–α link [I].

## 3. S-102 (R-044): the source of "Ursell (7.13)"

### 3.1 Statement
"(7.13) [I]" on CMP 122 II p. 390 is CMP 116 (2.13), the connected-graph (Ursell) series of the CMP 116 polymer gas. Balaban numbers the two sections of CMP 116 as Sects. 6 and 7 of Part I (CMP 109). The convergence bound that goes with (2.13) is CMP 116 (2.38)–(2.41), proved by Cammarota's tree-graph bound (ref. [26] of CMP 109). That bound is printed for the CMP 116 gas only. For the CMP 122 II gas under (1.97), Lemma KP-D (§1.4, §1.6) gives the bound (1.99) with an explicit constant.

### 3.2 Evidence
(a) The reference. CMP 122 II p. 390 [V image]: R′^{(k)}(X) "is given by the convergent series (7.13) [I] (with proper notational changes), and it satisfies the inequality (1.99)". CMP 122 II reference list: "[I] Balaban, T.: Renormalization group approach to lattice gauge field theories. I. Commun. Math. Phys. 109, 249–301 (1987)" [V text layer l. 1900–1902].
(b) CMP 109 has no Sect. 7. Its table of contents lists Sects. 0–5 (0. Introduction; 1. Inductive description; 2. Fluctuation field integral; 3. Expansion of terms; 4. Ward–Takahashi identities; 5. Vacuum polarization tensor and β-functions) [V text layer l. 29–35]. A grep for "(7.1" in the CMP 109 text finds no equation (7.x). [V]
(c) CMP 116 is "II. Cluster Expansions" and has two sections: 1. Localizations and bounds; 2. A final localization by a cluster expansion [V text layer l. 56, 532]. Its abstract says it continues Part I and represents the fluctuation integral "by the exponentiated cluster expansion" [V text layer].
(d) Content match, CMP 119 against CMP 116, same object under both numbers:
 - CMP 119 p. 272 [V image]: the last logarithm in (3.28) "is formally given by the same formula as the term E^{(k+1)} in [I] [see (2.12), (2.13)]". This is CMP 116's own numbering.
 - CMP 119 p. 277 [V image]: "the exponentiated cluster expansion of Sect. 7 [I]"; "Ẽ^{(k+1)}(Λ_{k+1}) … is given by (I.7.12), with terms given by (I.7.13)"; "we apply the Mayer expansion (I.7.1)"; "the constructions of Sect. 7 [I], described between (7.2) and (7.10)"; "the conditions described in Sect. 7 [I] in connection with the formula (7.11)".
 - CMP 116 p. 14 [V image]: (2.11) is the polymer expansion with ζ(Z, Z′) = 0 if Z ∩ Z′ contains a cube or a wall; (2.12) is E^{(k+1)} = Σ_n (1/n!) Σ ρ^T(Z_1, …, Z_n)H(Z_1)⋯H(Z_n) "according to the well-known formula, see [36, 60, 26, 25, 67, 50]"; (2.13) is E^{(k+1)}(X) = the same sum restricted to ∪Z_i = X, X ∈ D_{k+1}. CMP 116 p. 12 [text layer]: "The first step is the Mayer expansion of the action density", followed by (2.1).
 - So (I.7.1) ↔ CMP 116 (2.1) (Mayer expansion), (7.11) ↔ (2.11) (compatibility ζ), (I.7.12) ↔ (2.12), (I.7.13) ↔ (2.13). The offset is 5 in the section number: CMP 116 Sects. 1, 2 = Part I Sects. 6, 7.
 - Other citations agree with the same offset: CMP 122 II "(6.10) [I], where the summation is over domains Y_0 ∈ D_k containing □_0" ↔ CMP 116 (1.10), the decomposition into Y_0-terms [text layer, both]; CMP 122 II "(6.31) [I]" (a scaling property of d) ↔ CMP 116 (1.31), introduced as "the following fundamental scaling inequality" [text layer l. 405–408]. SOURCES_A23_TSTEP l. 107 used the same identification ("CMP 109 'Sects. 6–7' = CMP 116 Sects. 1–2").
(e) The bound. CMP 116 pp. 20–21 [V images]: Lemma 3, (2.38) |H(Z)| ≤ C_3ε_1exp(−(1 − 8δ)½Lκd_{k+1}(Z)); "The above lemma implies that sufficient conditions for convergence of the series (2.12), (2.13) are satisfied, see [26, 67, 25, 50]"; (2.39) extracts exp(−δ½Lκd_{k+1}(Z_i)) per factor and uses (2.27); "To the above sum we can repeat all the considerations and bounds of the paper [26], for κ sufficiently large, and ε_1 sufficiently small"; (2.40); (2.41) |E^{(k+1)}(X)| ≤ O(1)C_3ε_1exp(−(1 − 10δ)½Lκd_{k+1}(X)). Ref. [26] = Cammarota, CMP 85 (1982) 517–528 [V text layer of CMP 109 refs].

### 3.3 Does it give the bound that SOURCES_B20_W4R uses under (1.97)?
What B20_W4R (S5) uses: (i) absolute and uniform convergence of the Ursell series of the (1.90) hard-core gas on 𝔄_c, given the majorant (1.97)_c |F(X′)| ≤ c_1′e^{−(1+β)κd_{k,∪Y_i}(X′)}; (ii) the output bound (1.99) |R′^{(k)}(X)| ≤ O(1)c_1′e^{−(1+½β)κd(X)}; (iii) Ξ = exp U ≠ 0, so the log has no branch choice.
- Literal reading: no. CMP 116 (2.38)–(2.41) is proved for a different gas (compatibility ζ of (2.11), metric d_{k+1}, rate loss 2δ of ½Lκ). Balaban's "(with proper notational changes)" asks the reader to redo it for (1.90) with metric d_{k,∪Y_i} and loss ½βκ. That redo is not printed. [V: absence on pp. 389–390]
- With §1: yes, under (KP-122). Lemma KP-D with r = (1+β)κ, r′ = (1+½β)κ, η = c_1′ gives (ii) with O(1) = K′_KP = 2·3^d e^{1+5(1+½β)κ}S(½βκ − 24). The KP theorem also gives (i): the cluster series converges absolutely and uniformly on 𝔄_c, since its hypothesis uses only |F|. It gives (iii): log Ξ equals the cluster series wherever (KP) holds, and the KP polydisc is connected and contains F = 0. (KP-122) follows from the printed (1.93) condition and from the p. 389 condition for κ ≥ 1536 (§1.6 (a), (b)). [P given §1 and (T1)–(T3) for d_{k,∪Y_i} [I]]
- One correction to B20_W4R (S5): "(1.99) with O(1)" is (1.99) with K′_KP, which contains e^{5(1+½β)κ}. It is not an absolute constant. It is absorbed where Balaban uses (1.100) (§1.6 last item). B20_W4R_VERIFY V10's remark "(7.13) [I] is a standard KP/Ursell bound (not re-read here)" is now replaced by: (7.13) is CMP 116 (2.13); its printed bound is (2.38)–(2.41) via Cammarota; the bound for (1.97) is Lemma KP-D.

### 3.4 Grade and proposed ledger text
Grade: identification (7.13) [I] = CMP 116 (2.13): [V] on the content match (images of CMP 116 p. 14, CMP 119 pp. 272, 277, CMP 122 II p. 390). Balaban states no numbering rule; the rule "CMP 116 Sects. 1, 2 = Part I Sects. 6, 7" is inferred from four matching citations checked on images and two on the text layer [P]. Ursell bound under (1.97): [P] relative to §1 (KP theorem [I, external]; (T1)–(T3) for d_{k,∪Y_i} [I]).
Proposed R-044 text change: replace "Ursell (7.13) [I]" (twice) by "Ursell (7.13) = CMP 116 (2.13) [V, images; Balaban counts CMP 116 Sects. 1–2 as Part I Sects. 6–7]; the bound under (1.97) is PROVED by Lemma KP-D with constant K′_KP = 2·3^d e^{1+5(1+½β)κ}S(½βκ − 24), under (KP-122), which follows from (1.93) and p. 389 for κ ≥ 1536; residue: KP theorem [I, external], tree geometry of d_{k,∪Y_i} [I] (SOURCES_SWEEP_G §3, unverified)". The R-044 residue becomes: W4-G [R] only, plus those two [I].

## 4. S-67 (R-020 R1): the rate count for CMP 119 (3.44)–(3.47)

### 4.1 Statement
Notation: ρ := ½Lκ, d := d_{k+1}, η := C_3ε_1. Inputs:
- (N4-a) R3: |H′(Z_0)| ≤ η e^{−(1−8δ)ρd(Z_0)}. Balaban: H′(Z_0) "satisfies the same bound as the other factors" (CMP 119 pp. 277–278 [V image p. 277 for the start of the sentence]), i.e. CMP 116 (2.38). [I: Balaban's assertion, ledger R3]
- (N4-b) |Ẽ(Y)| ≤ η_1e^{−(1−10δ)ρd(Y)}, η_1 = O(1)η, for each Y that meets Z_0 along a wall. Reason: the clusters touching Z_0 form a sub-sum of the absolute sum bounded in CMP 116 (2.39)–(2.41) at fixed Y [V images pp. 20–21]; or use Lemma KP-D. [P]
- (2.27) tree bound, (2.30) volume bound [V image p. 18]; (T3) entropy [I].
- Structure of (3.44)–(3.47) as read on images by SOURCES_A23_TSTEP_VERIFY §6: E_0(Λ, X, b) = Σ_{Z_0∋b} H′(Z_0) Σ_n ((−1)^n/n!) Σ_{(Y_1,…,Y_n): Z_0∪∪Y_i = X} Π_iẼ(Y_i), each Y_i meets Z_0 along a wall, X ∈ D_{k+1}. [I: p. 278 not re-imaged here; X ∈ D_{k+1} without a closure step is a reading]
Claim. Under (R1-a) below:
 |E_0(Λ, X, b)| ≤ 2^d η e^{λ}S(2δρ)·e^{−(1−11δ)ρd(X)},  λ := 3^dη_1e^{5ρ}S(δρ).
So the unprinted cost of (3.44)–(3.47) is 1δ, and the large-field T-step loss is 11δ (10δ printed + 1δ). The t-integration and the factor g_k change only the prefactor (O(p_0³), p. 278).
Condition (R1-a): 24λ ≤ δρ, i.e. 24·3^dη_1e^{5ρ}S(δρ) ≤ δρ. It is an upper bound on ε_1 (N-400 slot), of the same type as Balaban's "2(L+2)^4O(1)ε_2exp 5κ ≤ 1" before (2.37) [V image p. 20].

### 4.2 Proof [P given 4.1 inputs]
1. Fix X ∋ b. Multiply by e^{(1−11δ)ρd(X)}. Every term has a connected union Z_0 ∪ ∪Y_i = X, because each Y_i meets Z_0 along a wall. (2.27) gives d(X) ≤ d(Z_0) + Σ_i(d(Y_i) + 5). So the weight splits: e^{(1−11δ)ρd(X)} ≤ e^{(1−11δ)ρd(Z_0)}Π_i e^{(1−11δ)ρ(d(Y_i)+5)}.
2. Each H′ factor keeps e^{−3δρd(Z_0)}. Each Ẽ factor keeps e^{−δρd(Y_i)} and carries the prefactor e^{5(1−11δ)ρ} ≤ e^{5ρ}.
3. Drop the constraint "union = X". This only adds nonnegative terms. The (Y_1, …, Y_n) sum then factorizes:
 Σ_n (1/n!)(Σ_{Y meets N(Z_0)} η_1e^{5ρ}e^{−δρd(Y)})^n ≤ exp(η_1e^{5ρ}·3^d|Z_0|_□·S(δρ)) = e^{λ|Z_0|_□}.
 Here N(Z_0) has at most 3^d|Z_0|_□ cubes, and (T3) bounds the sum over Y through one cube.
4. (2.30) gives |Z_0|_□ ≤ 24d(Z_0) + 1. Under (R1-a), e^{λ|Z_0|_□} ≤ e^{λ}e^{δρd(Z_0)}. This uses 1δ of the 3δ that Z_0 keeps.
5. Sum over Z_0 ∋ b: at most 2^d cubes contain b, so Σ_{Z_0∋b} η e^{−2δρd(Z_0)} ≤ 2^dηS(2δρ). This uses 1δ more; 1δ of Z_0's slack is unused.
6. Collect: e^{(1−11δ)ρd(X)}|E_0(Λ, X, b)| ≤ 2^dηe^{λ}S(2δρ). ∎
Where the 1δ goes: only the Y-sum (step 3) takes a δ from the Ẽ factors, which sit at 10δ. The volume factor (step 4) and the Z_0 sum (step 5) are paid from H′'s own slack (8δ against 11δ).

### 4.3 The three counts compared
- Ledger, from SOURCES_A23_TSTEP §3: 3δ (Y-sum 1δ + volume 1δ + resummation at fixed X 1δ). Valid upper bound. [P-sketch there]
- Verifier, SOURCES_A23_TSTEP_VERIFY §7: 2δ (Y-sum 1δ + volume factor exp(c(LM)^{−4}|X|) charged to the X-rate 1δ; Z_0 sum by 2^{#cubes(X)} or by H′'s slack). Valid upper bound. [P-sketch there]
- This section: 1δ. The verifier's volume charge is on |X|; here the volume factor e^{λ|Z_0|_□} depends on |Z_0| only, so H′'s slack pays it.
Decision. None of the three is wrong. Each is an upper bound; the smallest one proved here is 1δ (c_LF = 11). The ledger's 3δ is right as a safe bound and has two δ of spare:
- If R3 holds only at the (2.41) level (H′ at 10δ, not 8δ), steps 4–5 cost 2δ beyond 10δ for Z_0, and the count is 12δ. This is the verifier's number.
- If X needs a D_{k+1}-closure that costs one δ (as (2.36) did, 5δ → 6δ), the count is 13δ. This is the ledger's number.
So 13δ covers both weakenings. Keep 13δ.
Consequences for (K1′) θ(1 − cδ)L/2 ≥ 1 + 4β at L = 13, θ = ½, β = ¼ [P, numbers checked with python]: δ ≤ (1/c)(1 − 4/6.5) = 0.03497 (c = 11), 0.03205 (c = 12), 0.02959 (c = 13). The canon δ = 0.025 is admissible for every c ≤ 13 (left sides 2.356, 2.275, 2.194 ≥ 2). No canon or Lean change is needed. δ = 0.03 would be admissible under c = 11 or 12 (2.1775, 2.08) but not under c = 13 (1.9825); there is no reason to change δ.

### 4.4 Grade and proposed ledger text
Grade: R1 count [P] relative to R3 [I, Balaban's assertion], (2.27), (2.30) [V], (T3) entropy [I], and the structural reading of (3.44)–(3.47) incl. X ∈ D_{k+1} [I, images read by A23_TSTEP_VERIFY]. It is no longer a sketch.
Proposed R-020 text change: replace "Open: R1 count sketch, R3 the H′(Z_0) assertion" by "R1: count written out [P] (SOURCES_SWEEP_G §4, unverified): unprinted cost 1δ under R3 as printed (H′ at 8δ), 2δ if H′ obeys only the (2.41) level, 3δ with a one-δ D_{k+1}-closure; the ledger's 13δ and δ = 0.025 stay (safe in all three cases); new ε_1 condition (R1-a) 24·3^dη_1e^{5ρ}S(δρ) ≤ δρ in N-400. Open: R3 the H′(Z_0) assertion". Replace "(verifier counts 2δ; 13δ is a safe upper bound)" by "(counts: 1δ tight under R3, 2δ verifier, 3δ ledger; all valid; 13δ kept)".

## 5. Summary of proposed status changes (not applied)
| item | row | old status | proposed status |
|---|---|---|---|
| S-91 | R-037 I8 | KP derivative step [I], standard, not written | Lemma KP-D [P] rel. KP theorem [I, external] + tree geometry; K_KP = 2·3^d e^{1+5r′}S(r − r′ − 24); derivative constant = ρ̄ × value constant; new ε_1 line (KP-116) in N-400 |
| S-93 | R-037 | H-145 (M-B) bookkeeping, open input | [P] rel. (M-A), (M-C), F2′–α link [I]; K-002 margin g* ≥ 0.62645, option B, p_0 ≥ 17/(γ_0A_1²), C_1′ = max(1, C_c′), κ′ at p. 389, β_0 ≤ ½ suffices |
| S-102 | R-044 | Ursell (7.13) [I] | (7.13) = CMP 116 (2.13) [V]; bound under (1.97) [P] by Lemma KP-D under (KP-122), implied by (1.93) and p. 389 for κ ≥ 1536 |
| S-67 | R-020 R1 | R1 count sketch, 2δ vs 3δ | count [P]: 1δ tight under R3; 2δ and 3δ also valid; keep 13δ, δ = 0.025 |
Nothing in this file changes a canon value, a Lean statement, or a binding set. Two new upper bounds on ε_1 are proposed for N-400: (KP-116) and (R1-a). All of §1–§4 needs an independent verifier.
