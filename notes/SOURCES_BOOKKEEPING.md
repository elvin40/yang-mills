# SOURCES_BOOKKEEPING — closing TRUST_LEDGER rows A9, A12, A20, A22

Date 2026-10-28. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md not read.
Tags: [V] read on the page image; [T] read on the text layer (pdftotext) only; [P] our proof from the quoted lines; [I] inference.
Item list for A22 is reports/BALABAN_EXCERPTS.md "Needs verification" items 5, 8, 9, 10, 11, 12 (= BALABAN_EXCERPTS_CHECK item 11), plus the KAPPA2_VERIFY addition (CMP 119 Sect. 3 T step).

## 1. R_{K+1} ≥ 1 (row A20, first half)

Quotes.
- CMP 119 p. 245 (pdf p. 3) [V]: "MR_0, where R_0 is the smallest power of L such that R_0 ≥ (log g_0^{−2})^r, r ≥ 2, and M = L^m is sufficiently large."
- CMP 119 p. 246 (pdf p. 4) [V]: "R_1 is the smallest power of L such, that R_1 ≥ (log g_1^{−2})^r."
- CMP 119 p. 255, (2.5) (pdf p. 13) [V]: "R_j is the smallest number of the form L^r such, that R_j ≥ (log g_j^{−2})^r." The letter r appears twice. On p. 245 the exponent r of the logarithm is a fixed number with r ≥ 2. The exponent of L is not named there ("smallest power of L"). So (2.5) reuses r loosely; the power of L is a free integer n.
- CMP 122 I p. 192 (pdf p. 18), after (1.70) [V]: "This number is defined by the equality L^{−N_0+1}R_{k−N_0+1} = 1, from which we get L^{N_0−1} = R_{k−N_0+1} ≤ (L+1)(N_0+1)^{β_0}R_k."

Correction to the task framing. The question "does the definition allow r = 0" mixes the two exponents. The log exponent r is fixed, r ≥ 2 (p. 245). The L exponent n is not restricted in print. Neither fact is needed.

Proof [P]. Let g_j ≤ γ with γ² < e^{−1} (γ < 0.607). Then log g_j^{−2} > 1, so (log g_j^{−2})^r > 1 for r ≥ 2. By (2.5), R_j ≥ (log g_j^{−2})^r > 1. R_j = L^n with n an integer and L ≥ 2. L^n > 1 forces n ≥ 1. So R_j ≥ L > 1 for every j with g_j ≤ γ. This uses only that R_j dominates a quantity > 1; it does not use "smallest".
- R_{K+1}: if it is defined by (2.5) with g_{K+1} ≤ γ, the proof above applies. If it is defined by R_{m+1} = LR_m (CMP 122 II p. 385, see §2), then R_{K+1} = LR_K ≥ L² > 1. Both readings give R_{K+1} ≥ L.
- The l. 909 equality is consistent: R_{k−N_0+1} = L^{N_0−1} ≥ L requires N_0 ≥ 2, which matches R ≥ L. It is not needed for the proof.

Grade: R_{K+1} ≥ 1 is PROVED from the printed definition [V + P], with the stronger R_{K+1} ≥ L. The only condition is γ < e^{−1/2}, which every "γ sufficiently small" choice meets.

## 2. C_c independent of g (row A20, second half)

Pages read on images: CMP 122 II pp. 380, 382, 383, 384, 385, 386, 387 (pdf 26, 28–33) [V].

Where the cost O(1) comes from. (1.79) (p. 383) is the summary of four sources, all printed on pp. 380–383:
1. p. 380 [V]: "At first we bound all the expressions in the exponential, except the Wilson action and the quadratic forms. The expression V(X~) is bounded in (1.69). Similar bounds hold for vacuum energy counterterms and normalization constants, except that for the last we have the corresponding constant O(log g_j^{−2}) instead of O(1). In effect we get a bound, to which every large field domain Z_j contributes the constant O(1) log g_j^{−2}|Z_j| ≤ O(1) log g_j^{−2}(MR_j)^d d′_j(Z_j) ≤ O(1)M^dR_j^{d+1}d′_j(Z_j), where d′_j is the linear size defined in terms of MR_j-cubes instead of M-cubes."
2. p. 383 [V]: "All the integrals with respect to the group valued variables in the definition (1.71) are estimated by 1."
3. p. 383 [V]: "The integrals with respect to the fields A_j in (2.21) [III], or (1.25) [IV], are estimated using the positivity properties of the quadratic forms, and we get the factors exp O(1)|Z_j ∩ Ω_j|, where the volume is for the corresponding scale."
4. p. 383 [V]: "Finally, the summations over the admissible sequences can be replaced by the factors exp O(1)(MR_j)^{−d}|Z_j|."
5. The B-integral, p. 383 [V]: (1.77) has the error term "−O(1)A_0A_1²B_3⁴B_5M^{d+6}R_j^{d+3}p_0(g_j)p_1²(g_j)g_j", and Balaban writes "We assume that g_j is sufficiently small, so that the constant on the right-hand side above is small, or O(1)." So g enters here only as a smallness condition. The resulting lower bound has the g-free constant γ_0.

Where g enters. Only in item 1, through log g_j^{−2}. Balaban removes it with the second "≤" of item 1. That step is log g_j^{−2} ≤ R_j, which follows from (2.5) of CMP 119: R_j ≥ (log g_j^{−2})^r with r ≥ 2 and log g_j^{−2} > 1 (§1). So the g-dependence of the normalization constants is moved into the factor R_j^{d+1}, which is written out in (1.79). The remaining O(1) is g-free.

Same constant in (1.82), (1.83), (1.85), (1.86), (1.87) [V]: each line writes "O(1)M^dR_{j+1}^{d+1}d′_{j+1}" (or "O(1)2dM^dR_{j+1}^{d+1}" in (1.87)), with the same shape as (1.79). All other g-dependence in these lines is explicit: p_0(g_j), p_1(g_j), A_1²p_0²(g_1), 2(1+β_0)^{−1}p_0(g_{j+1}). These are the factors already separated in SOURCES_FX_R2 §4.

What C_c can depend on [P from the quotes; Balaban does not list it]: d (lattice combinatorics, the (MR_j)^d / d′_j conversion), the per-site constants of (1.69) and of the Gaussian bounds (Balaban's inductive constants, fixed before γ), and possibly L (through "the corresponding scale"). M is written out as M^d. κ does not enter: the κ-factors are bounded by 1 in these estimates. g does not enter: it is either explicit (p_0, p_1) or absorbed into R_j by log g_j^{−2} ≤ R_j.

Caveat. "O(1)" is Balaban's notation; he does not print a value or a dependence list. The claim "C_c is g-free" is a reading of how each O(1) is produced, not a printed sentence. Grade: SUPPORTED [V quotes + P]. One real point to record: the cost line is g-dependent through R_j^{d+1}; R_j grows like (log g_j^{−2})^r. SOURCES_FX_R2 treats R_{K+1} as explicit, so this is consistent with its use.

## 3. A22 readings (BALABAN_EXCERPTS "Needs verification" items 5, 8–12)

Page map for CMP 109: printed page = pdf page + 248.

### 3.1 Item 5: CMP 109 (4.37)/(5.1), pp. 291–292 [V, pdf 43–45]
- (4.37), p. 291: "Π_{μ,ν}(x, y) = Σ_{X∈D_j^0} E^{(2)}_{μ,ν}(X, x, y), and the irrelevant terms resummed over X ∈ D_j, X ⊂ □̃². The function Π is called the vacuum polarization tensor."
- (5.1), p. 292, Sect. 5 opening: "The vacuum polarization tensor is defined by the formula (4.37) of the previous section. From this it follows that it can be defined also as Π(b, b′) = lim_{T_1^{(j)}↗Z⁴} δ²/δB(b)δB(b′) E^{(j)}(U_j(exp iB))|_{B=0}."
- p. 292 after (4.45): "We define the β-function β_j(g_{j−1}) equal to this coefficient."
- p. 293, (5.10): "|Π_{μν}(x−y)| ≤ O(1)E_0 exp(−δ_1|x−y|), with a positive constant δ_1 determined by δ_0, κ, and M (e.g., δ_1 = 1/2 min{δ_0, κM^{−1}})."
Our reading: "Π^{(j)}(b,b′) = lim_{T→Z⁴} δ²/δB(b)δB(b′) E^{(j)}(U_j(exp iB))|_{B=0}, pp. 291–292". Grade: CONFIRMED. Notation notes: the print writes Π without the superscript (j); the limit is over the lattice T_1^{(j)}; (4.37) is on p. 291 and (5.1) on p. 292. (5.1) is a consequence of (4.37) in Balaban's words ("it follows that"), not an independent definition.

