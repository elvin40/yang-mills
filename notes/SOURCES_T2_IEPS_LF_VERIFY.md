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
