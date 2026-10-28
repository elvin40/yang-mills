# SOURCES_BOOKKEEPING_VERIFY — independent page check of ledger rows A9, A12, A20, A22, §6; S1 #48 (WC_FULL rate)

Firewall: did not read /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

## 0. Setup
Created file. Next: read SOURCES_BOOKKEEPING.md and ledger rows.

## 1. Inputs read
- SOURCES_BOOKKEEPING.md read in full (§1–§6).
- TRUST_LEDGER §6 lines for A9, A12, A20, A22 (§6 bullets 15–18) and the S1 fix-pass note (A9/A12/A20/A22 downgraded to "page readings, no verifier"; T1⇒Thm 1 4→6, T2 17→20; reverses if a verifier confirms).
- Ledger statements to check:
  - A12: "β_0 can be chosen arbitrarily small" is on CMP 119 p. 255, not CMP 122 II p. 389; β_0 is fixed before γ.
  - A20: R_{K+1} ≥ L proved from CMP 119 (2.5) for γ < e^{−1/2}; C_c g-free is a reading (g only via log g_j^{−2} ≤ R_j and explicit p_0, p_1).
  - A22: Π (4.37)/(5.1) confirmed; CMP 119 (2.42) corrected to Z̃_j and Ũ_j^c; (2.12)/(2.23) are CMP 119; "L odd" CMP 109 p. 251, unit lattice p. 259; Sect. 3 residue is A23.
  - A9: C′_1 unprinted, not derivable from printed lines; value not used.
Page offsets (pdf = printed − offset): CMP 109 248; CMP 119 242; CMP 122 I 174; CMP 122 II 354; CMP 98 16 (to confirm on images).

## 2. A9 — CMP 98 pp. 36, 39, 40 (pdf 20, 23, 24), 300 dpi images
- p. 39 (139): "|Q_{V_0}A| ≤ Q|A|, |Q″(V_0)A| ≤ C′_1L²α_0Q″|A|"; next line "The constant C′_1 depends on d and L." (143): "|Q_j(U_0)A| ≤ Q_j|A| + 2C′_1α_0(L^jη)²Q″_j|A|, j ≤ k". Verbatim match.
- p. 40: "2L^{−2} + L^{−2} + 4dC′_1α_0L^{−4} ≤ ¾ + 4dC′_1L^{−4}α_0 ≤ 1 if 16dC′_1L^{−4}α_0 ≤ 1"; (146) "(1 + 2C′_1α_0)Q″_k|A|"; (147) "|Q_k(U_0; c, b)| ≤ 1 + 2C′_1α_0". Match.
- p. 36: "|Y_x| = O(L²α_0)" is printed directly (first paragraph), plus the "operators ... can be estimated by O(L²α_0)" sentence after (124). Match.
- No numerical value of C′_1 on pp. 36–40; the only relation is the smallness condition on α_0. "Not derivable from printed lines" holds: the O(1) in (124)'s remainder is unvalued.
Grade A9: CONFIRMED.

## 3. A12 — CMP 119 p. 255 (pdf 13), CMP 122 II p. 389 (pdf 35), images
- CMP 119 p. 255, after (2.6): "where n > m, and β_0 > 0 can be chosen arbitrarily small, if g is sufficiently small." Verbatim match. Page offset 242 confirmed.
- Same page (2.5): "R_j is the smallest number of the form L^r such, that R_j ≥ (log g_j^{−2})^r." Match (used in A20).
- CMP 122 II p. 389: "We assume that g_k is so small that −2(1 + β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k) (for example, take β_0 = 1/7, then this means that −(1/4)p_0(g_k) + 1 + 2κ(100R_k)^d ≤ 0, and before we had stronger restrictions on p_0(g_k))." Verbatim match; the "arbitrarily small" sentence is not on this page.
- Arithmetic re-done: 2/(1 + 1/7) = 7/4; −7/4 + 3/2 = −1/4. Requirement 2/(1 + β_0) > 3/2 ⇔ β_0 < 1/3. Correct.
- Order: both sentences fix β_0 then demand g small. Correct.
Grade A12: CONFIRMED (the page correction itself is right).

## 4. A20 — CMP 119 p. 245 (pdf 3), p. 255 (pdf 13); CMP 122 II pp. 380, 383 (pdf 26, 29), images
- CMP 119 p. 245: "R_0 is the smallest power of L such that R_0 ≥ (log g_0^{−2})^r, r ≥ 2". Match. p. 255 (2.5) match (see §3).
- A20a check of the proof: g_j ≤ γ < e^{−1/2} ⇒ g_j² < e^{−1} ⇒ log g_j^{−2} > 1 ⇒ (log g_j^{−2})^r > 1 (r ≥ 2) ⇒ R_j = L^n > 1 ⇒ n ≥ 1 ⇒ R_j ≥ L. Valid. Uses only R_j ≥ (·)^r and R_j a power of L.
- CMP 122 II p. 380: "except that for the last we have the corresponding constant O(log g_j^{−2}) instead of O(1). ... every large field domain Z_j contributes the constant O(1) log g_j^{−2}|Z_j| ≤ O(1) log g_j^{−2}(MR_j)^d d′_j(Z_j) ≤ O(1)M^dR_j^{d+1}d′_j(Z_j)". Verbatim match. γ_0 "absolute positive constant (in this factor we may take γ_0 = 1/2)": match.
- CMP 122 II p. 383: (1.77) error term "O(1)A_0A_1²B_3⁴B_5M^{d+6}R_j^{d+3}p_0(g_j)p_1²(g_j)g_j" with "We assume that g_j is sufficiently small, so that the constant ... is small, or O(1)"; "All the integrals with respect to the group valued variables ... are estimated by 1"; "exp O(1)|Z_j ∩ Ω_j|"; "exp O(1)(MR_j)^{−d}|Z_j|"; (1.79) "T′_k(X)1 ≤ sup exp{Σ_j O(1)M^dR_j^{d+1}d′_j(Z_j)}·ΠΠ exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)}) + 1) − 2p_0(g_j))Π′exp(−p_0(g_j))". Match.
- One addition the source file omits: p. 383 also says "we have to include only the constant with the logarithms in the last line into the integration measure" for the A_j integrals. This is the same log g_j^{−2} normalization constant, already moved into R_j on p. 380. No new g-dependence.
- C_c g-free is a reading of unvalued O(1)s, as the file says; no printed sentence contradicts it.
Grade A20: CONFIRMED (a: proved; b: reading supported by the printed lines, with the stated caveat).
