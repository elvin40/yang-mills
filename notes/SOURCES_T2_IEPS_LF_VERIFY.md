IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_T2_IEPS_LF verification (independent)

Verifier log, one section per tool call.

## 0. Setup
Started 2026-10-28. Firewall respected.

## 1. Inputs read
- SOURCES_T2_IEPS_LF.md (§1–§9) and SOURCES_T2_IEPS_VERIFY.md §18–§22 read. VERIFY §20 says (2.28) is on CMP 119 p. 259; the brief says pp. 261–263. Checked on images below.

## 2. Locations
- CMP 122 I (1.27): pdftotext puts it at PDF p. 8 bottom (printed 182); the "where δ′_j = …, p_1 < p_0" line opens printed p. 183 (PDF 9). Images rendered: CMP 119 PDF 17–21, CMP 122 I PDF 8–9, CMP 122 II PDF 12, 14, 25, 27 (300 dpi).

## 3. CMP 119 pp. 259, 262 (images) [V]
- p. 259 (2.27)–(2.28): E^{(j)}(X,(U,J),z) analytic on U^c_j(X, α_{0,j}, α_{1,j}); (i)–(iv) "the same as in [I.1]", (iv) = (I.1.18). (2.28) α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}; "q_0, q_1 integers greater than 1, C_0, C_1 sufficiently large positive numbers". So (2.28) is on p. 259, not p. 261–263 (brief's page range is off; author and VERIFY §20 are right).
- The space symbol keeps the CMP 109 form U^c with α_{i,j} in the radius slots. "α_{i,j} replaces α_i in the same space": CONFIRMED as the printed reading (the subscript j on U^c_j is the scale index).
- p. 262, after Theorem 1: "some of the restrictions on constants, e.g. on constants κ, M, ε_j, α_{0,j}, α_{1,j}, come from the paper [I]. We assume that all of them are satisfied here, and we will introduce some new restrictions also." Inheritance CONFIRMED verbatim. Theorem 1: "The constants satisfy numerous restrictions introduced in the proof" — so the printed list is not claimed complete by Balaban.

## 4. CMP 119 p. 261 (image) [V]
- Ũ^c_j(X, α̃_0, α̃_1): (2.34)–(2.37) bounds with (1 − β(1 − 2^{−(j−n)}))α_{0,n}; (2.38) |A|, |∇A| < BCMα_{0,n}, B absolute; (2.39) |A′|, |∇A′| < (…)α_{1,n}; on X∩(Ω_n\Ω_{n+1}), n < j, or X∩Ω_j, n = j. "β small … e.g. β = 1/4". Text says "similarly as in (I.1.11)–(I.1.16)".
- α̃_i is never defined in words; the conditions use α_{i,n}. So α̃_i = (α_{i,n})_n is the natural reading, not a printed definition. Author's §1 [V] should be [V/I]: CONFIRMED in substance.
- Conditions on C_i, q_i on this page: none other than through α_{i,n}. B, β are absolute.

## 5. CMP 122 I pp. 182–183 (images) [V]
- (1.26) V^{(j)}_Z = M^j(U^{(j+1−h)}_{k,Z}). (1.27) χ′_j = χ({|V_j(b)(V^{(j)}_Z(b))^{−1} − 1| < 2δ′_j for b ∈ (Ω^c_{j+1}\Z″_{j+1})^{(j)*}}): a cut on the "approximate fluctuation field" (text, p. 182) at scale j.
- p. 183 top: "δ′_j = g_jA_1p_1(g_j), p_1(g_j) = (log g_j^{−2})^{p_1}, and p_1 < p_0; other conditions on p_1 will be formulated later." p_1 < p_0 is PRINTED. CONFIRMED.
- Caution: CMP 122 also has an unprimed δ_j (p. 380 factors χ′^c_j, χ^{(j−1)c} use δ_j; p. 381 min{½B_3^{−2}A_0², 2A_1², A_1²}p_0² shows δ_j ∝ A_1p_0, matching CMP 119 δ_0 = g_0A_1p_0(g_0)). So there are TWO A_1-thresholds: δ_j (exponent p_0) and δ′_j (exponent p_1). Checked on p. 381 below.

## 6. CMP 122 II p. 381 (image) [V]
- "The function 1 − χ′_m, where χ′_m is given by (1.27) [IV], yields the factor exp(−γ_0g_m^{−2}(2δ′_m)²) ≤ exp(−γ_04(1+β_0)^{−2}A_1²p_1²(g_j)) ≤ exp(−γ_0A_1²p_1²(g_j))." Second function of (1.28) [IV]: same final factor. CONFIRMED: exp(−γ_0A_1²p_1²) is the (1.27) counterpart, and it has no γ.
- CORRECTION (minor): this factor carries NO (d′_j + 1) volume weight. The (d′_j + 1) weight is on the fundamental factor exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z^{(i)}_j)+1) − 2p_0(g_j)). Author §6 writes exp(−γ_0A_1²p_1²(g_j)(d′_j + 1)); wrong attribution.
- Also on p. 381: 1 − χ′ of (1.82) [IV] means some bond has |B′(b)| ≥ δ′_j. This is the direct analogue of CMP 116's |g_kB| < ε_1 (a cut on the bond fluctuation variable B). So ε_1 ↦ δ′_j is supported by two printed cuts, (1.27) and (1.82). CONFIRMED.
- Caveat: the fundamental large-field factor uses δ_j (A_1p_0), not δ′_j. Both have prefactor A_1, both are g·polylog; the ordering argument does not distinguish them.

## 7. CMP 122 II p. 368 (1.47) (image) + N (text) [V / V text]
- (1.47) image: … ≤ O(1)(1/g_k²)(α_{0,k}+α_{1,k})ε_kL^{−N}N^{1+β_0}B_3³B_5M^6 Σ… ≤ O(1)A_0C_1B_3³B_5M^6p_0(g_k)q_1(g_k)R_k²L^{−N}|Γ″_h∩Ω″~2_{h+1}| ≤ O(1)A_0C_1B_3³B_5M^{10}p_0(g_k)q_1(g_k)R_k^7L^{−N}. "small under the usual conditions on N". Author's transcription CONFIRMED.
- Point the author does not state: the g's cancel exactly ((α·ε)/g² = A_0C_1p_0q_1, degree 0 in g). All smallness comes from L^{−N}. So (1.47) is an UPPER on g only if N grows with log g^{−2}.
- Text p. 380 (statement before (1.80)): conditions (i), (ii) "with N = R_j". CMP 119 p. 247 text: R_0 ≥ (log g_0^{−2})^r, r ≥ 2. So L^{−N} = L^{−R_k} ≤ exp(−log L·(log g_k^{−2})^{r}), which beats A_0C_1·polylog for g small at fixed constants. UPPER on g: CONFIRMED (via N = R, not via the ν condition, which I did not locate on p. 364 by grep).
- Order consequence: N must NOT be a fixed integer chosen before C_1; with N = R_j it is g-dependent. Consistent with the author's order.

## 8. CMP 122 II p. 366 (image) [V]
- "1/(g″_k)² − 1/g_k² = O(N) ≤ O(R_k)": confirms N ≤ R_k (g-dependent). Term ≤ O(1)N^{2+4β_0}(100MR_k)^4(O(1)B_3B_5M^5ε_k + O(1)B_3δ′_k)² ≤ O(1)B_3²B_5²M^9R_k^7ε_k², "small for g_k small enough". The step absorbs δ′_k into ε_k; this needs A_1p_1 ≲ A_0p_0, true since A_0 ≫ A_1 and p_1 < p_0. No C_i here. UPPER on g.
- U ∈ U^c_k(Z, α_{0,k}, α_{1,k}): |∂U − 1| < α_{0,k}η², |A′|, |∇A′| < α_{1,k}, |B̃′| < O(1)α_{1,k}. CONFIRMED (same CMP 109 space with α_{i,k}).

## 9. CMP 109 p. 263 (image) [V] — source of C3
- Printed: spaces with α′_0 < α_0, α′_1 < α_1 lie in U^c_j(X, α_0, α_1) "for α′_0 sufficiently small" via (1.17) |∂U_n − 1| < 2B_3α′_0ξ²; "the minimal configurations U_j satisfying |∂U_j − 1| < ε_0ξ² with ε_0 sufficiently small satisfy the above conditions"; "A_k(U) defined on U_k(ε_0), which is contained in all the spaces U^c_j(X, α_0, α_1)".
- So C3 is a printed INCLUSION (U_k(ε_0) ⊂ U^c_j) with a qualitative "ε_0 sufficiently small". The form ε ≤ c(B_3)α_0 is the author's quantitative reading; c is not printed. Grade of C3: CONFIRMED as a LOWER on α_0 relative to ε_0, constant [I].
- LF transfer: by p. 262 inheritance and (2.27)(ii) "extension of this term", the real region |∂U − 1| < ε_jξ² must lie in U^c_j(α_{0,j}, α_{1,j}). With ε_j = g_jA_0(log g_j^{−2})^{p_0} (CMP 119 (2.4)) this is A_0(log g^{−2})^{p_0} ≤ c·C_0(log g^{−2})^{q_0} for all g ≤ γ. If q_0 < p_0 it fails as g → 0. So q_0 ≥ p_0 is forced. CONFIRMED [P].
- Also p. 263: (1.18) E_0 bound "for M ≥ M(κ), γ sufficiently small"; α_0, α_1 "positive, absolute constants". In the LF layer the radii are not absolute; the inheritance sentence is the only bridge.

## 10. CMP 109 p. 277 (image) [V] — source of C4
- Printed: "Assume now that B_3²O(1)Mα_0 < 1/2α_1". Typeset "1/2α_1"; read as ½α_1 (the u_j-orbit argument needs |u_j − 1| below the α_1 scale). If it meant 1/(2α_1) it would be an UPPER (α_0α_1 small), absorbed by g. Either reading: no upper bound on C_i.
- LF form under ½α_1: (C_0/C_1)(log g^{−2})^{q_0−q_1} < 1/(2B_3²O(1)M) for all g ≤ γ. Forces q_1 ≥ q_0 (else fails as g → 0); if q_0 = q_1, LOWER on C_1/C_0. Author's C4 CONFIRMED.
- Same page (3.32): |A|, |∇A|, ‖A‖ < 2(α_2 + B_3O(1)Mα_0): α_2 enters the fixed-layer regularity. Note: CMP 119 (2.38) uses BCMα_{0,n} with no α_2 term. So in the LF space the α_2 slot is replaced by a multiple of α_{0,n}; this supports the author's R1 reading that α_2 ∝ α_{0,j} [P].

## 11. CMP 122 I p. 198 (image) + OCR grep for α_2–α_6, γ_2 [V]
- OCR grep of CMP 119, CMP 122 I, CMP 122 II for α/oc + digit 2–6 and γ2: only hits are CMP 122 I p. 198–199 (1.91), (1.95) "(α + 8α²ε_h)" with α "a small, absolute constant, which will be fixed later" (text), and a coordinate a′_2 (p. 1118 line). Neither is an α_2 radius. OCR drops Greek often (α_0 found only 4–6 times in each text although (2.28)-type uses are frequent), so the grep is weak evidence. On every page imaged this session (CMP 119 pp. 259, 261, 262; CMP 122 I pp. 182, 183, 198; CMP 122 II pp. 366, 368, 381) no α_2, α_3, α_4, γ_2 appears. R1 premise: CONFIRMED on images read, [I] beyond.
- NEW printed condition (p. 198, (1.94)): "N ≤ O(1)(log g_k^{−2})^ν … with a positive integer ν satisfying (1/2)ν ≤ p_0 − p_1 − 1", and N "sufficiently large" so the L^{−N} term constant ≤ ½α; "satisfied by N to the positive power of log g_k^{−2}". The author's §7 writes "½ν ≥ p_0 − p_1 − 1": WRONG DIRECTION. Printed is ≤. It is a LOWER bound on p_0 − p_1 (p_0 ≥ p_1 + 1 + ν/2). No C_i or q_i in it; the order is unaffected (exponents before A_1).
- (1.94) also uses δ′_k/ε_h ≈ (A_1p_1)/(A_0p_0)·N^{1/2}: smallness needs N^{1/2}(log)^{p_1−p_0} small, which the ν bound gives. Consistent with p_1 < p_0.

## 12. CMP 122 II p. 363 (text, PDF 9) — the other ν; monotonicity; order [V text / P]
- Text line 438–440: "L^{−N} ≤ (log g_k^{−2})^{−ν} for sufficiently large ν, or N ≥ (ν/log L) log log g_k^{−2}. For the smallness of the above bound we need ν ≥ 2p_0 + dr_0." The author's "ν ≥ 2p_0 + dr_0" is printed, but on p. 363, not p. 364. This ν (lower bound on N) and the CMP 122 I p. 198 ν (upper bound N ≤ O(1)(log g^{−2})^ν, ½ν ≤ p_0 − p_1 − 1) are DIFFERENT uses of one letter. Author §7 merges them into one list and flips the second. Both are satisfiable at once: N between c·log log g^{−2} and (log g^{−2})^{ν_I}.
- Consequence for (1.47): if N is taken at the log-log size, L^{−N} is only polylog-small, and (1.47) needs ν_II > p_0 + q_1 + 7r_0 (q_1 enters). Not printed. Fix: either choose N = (log g^{−2})^s, 0 < s ≤ ν_I (then L^{−N} beats any polylog and (1.47) is UPPER on g), or place ν_II after q_1 in the order. Both keep the order acyclic, since q_1 has only lower bounds (> 1, ≥ q_0).
- Monotonicity [P, by hand]: F(g) = g(log g^{−2})^q. F′ = (log g^{−2})^q + g·q(log g^{−2})^{q−1}(−2/g) = (log g^{−2})^{q−1}(log g^{−2} − 2q) > 0 iff g < e^{−q}. F → 0 as g → 0. CONFIRMED. So γ′ < min(e^{−q_0}, e^{−q_1}) is also needed; it is an upper bound on γ, harmless.
- Order: printed edges found: C2 (C_i large), C3 (C_0 ≥ A_0-dependent, q_0 ≥ p_0), C4 (C_1/C_0 lower, q_1 ≥ q_0), (1.47) (N vs A_0C_1q_1), p. 379 (γ vs A_1, C_0, q_0, p_1), p. 366 (γ), ½ν_I ≤ p_0 − p_1 − 1, ν_II ≥ 2p_0 + dr_0, p_1 < p_0. All point from earlier to later in … → exponents → A_1 → A_0 → C_0 → C_1 → (N exponent) → γ. No upper bound on C_i, q_i, A_i by a later constant found. No cycle. CONFIRMED.

## 13. Grades
(1) CONFIRMED, with additions: inheritance sentence verbatim (CMP 119 p. 262); (2.28) on p. 259; α̃_i = (α_{i,n})_n is a reading (not a printed definition); (1.47) is degree 0 in g, and its smallness comes from L^{−N} with g-dependent N, not from g.
(2) CONFIRMED. C3 is a printed inclusion (CMP 109 p. 263, "ε_0 sufficiently small"); the constant c(B_3) is not printed. q_0 ≥ p_0 forced; restoration rule correct.
(3) CONFIRMED with corrections: ε_1 ↦ δ′_j supported by (1.27) and by the (1.82) cut |B′(b)| ≥ δ′_j; p_1 < p_0 printed (CMP 122 I p. 183). The p. 381 factor is exp(−γ_0A_1²p_1²(g_j)) with NO (d′_j + 1) weight (author misattributes). ν: two different ν's; "½ν ≥ p_0 − p_1 − 1" should read ≤ (CMP 122 I p. 198). Order acyclic.
(4) CONFIRMED: α_2–α_4, γ_2 absent on all images read; OCR grep finds no hit (weak evidence). R2: q_0 vs p_0 not printed.
(I-ε), large-field layer: CLOSED at [P] on the printed items, with residues R1, R2, R4 [I] (all branch-closed) and the N-choice note of §12.
Firewall kept. STATUS: COMPLETE
