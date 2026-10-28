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

### 3.2 Item 8: CMP 119 (2.42), (2.28), and "other constants" [V, pdf 14, 17, 19–21]
- p. 256, directly after (2.9) [V]: "R_n ≤ LR_m, R_m ≤ L(1 + g_n²β′(n−m))^{β_0}R_n ≤ (L+1)(n−m)^{β_0}R_n. (2.9) Similar inequalities hold for other constants, which will be introduced later." So the sentence IS on p. 256. Earlier files said "not located"; that is CORRECTED to FOUND. The sentence names no constant. Reading it as covering α_{0,j}, α_{1,j} is our inference [I]; (2.28) has the same (log g_j^{−2})^q form as ε_j and R_j, so the inference is natural but not printed.
- (2.28), p. 259 [V]: "The numbers α_{0,j}, α_{1,j} in the symbol of the space are given by α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}, where q_0, q_1 are integers greater than 1, C_0, C_1 are sufficiently large positive numbers." Our use (SOURCES_D2 notes: "α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}") CONFIRMED. Name clash to record: Balaban's C_1 in (2.28) is not the budget constant C_1 of SOURCES_FX_R2 (CMP 122 II (1.80)).
- (2.41)–(2.42), p. 261 [V]: "the sum is over domains X ∈ D_j such, that X ∩ Ω_j ≠ ∅, and X ∩ Z_j^~ ≠ ∅. ... (ii) it has an extension to an analytic function on the space Ũ_j^c(X, α̃_0, α̃_1); (iii) ... gauge transformations ...; (iv) it satisfies the bound |B^{(j)}(X, (U, J), A, {S_i ∩ X})| < B_0 exp(−κd_j(X))."
- p. 259 [V]: "The term B_k includes various expressions localized closely to large field regions. It does not require any renormalization."
Our reading (SOURCES_D2/D3 item (B6)): "localized on X ∈ D_j with X ∩ Ω_j ≠ ∅ and X ∩ Z_j ≠ ∅, analytic on U_j(X, α_0, α_1), bounded by B_0e^{−κd_j(X)}; 'it does not need any renormalization'". Grade: CORRECTED (minor). Correct reading: the second condition is X ∩ Z̃_j ≠ ∅ (Z_j plus one layer), the space is Ũ_j^c(X, α̃_0, α̃_1) (defined by (2.34)–(2.39), p. 261), and the word is "require". The bound B_0 exp(−κd_j(X)) is CONFIRMED. The change enlarges the localization set by one layer and changes the domain of analyticity; any use that needs "B-terms touch Z_j" must read "touch Z̃_j". Not load-bearing for decay rates.
- p. 262 [V], also relevant to §4: "the newly created expressions E^{(k)}, R^{(k)}, B^{(k)} are defined on slightly larger spaces, with the coefficients in their definition bigger by β multiplied by a corresponding number, and they have better decay properties, with the number κ replaced, for example, by (1 + 4β)κ. Such improved bounds are needed for the R-operation." Matches SOURCES_T2_KAPPA2 (text-layer quote now [V]).

### 3.3 Item 9: which "(2.12)" and "(2.23)" SOURCES_VERIFY §6(d) means [V]
- CMP 119 (2.12), p. 256 (pdf 14): "A regular configuration V on B determines the minimal orbit, i.e., the set of minima, of the functional U → A^η(U) on U: U regular and M_B(U) = V. (2.12) ... A minimal configuration ... is denoted by U_B(V), or U_k(V), or simply U_k".
- CMP 119 (2.23), p. 258 (pdf 16): "A_k(1/g_k², U_k) = −A(1/g_k², U_k) + E_k(U_k) + R_k(U_k) + B_k(U_k, A) − E_k." The x-dependent g_k²(x) is defined at (2.24), p. 259.
- CMP 109 (2.12), p. 268 (pdf 20): the expansion of the new action A_{k+1}(U_{k+1}) with the curly bracket {E_k(U_k(exp i[g_kCB − hD̃(g_kCB)]V^{(k)})) − E_k(U_k(V^{(k)}))}. It is not a minimization.
- CMP 109 (0.23), p. 256: a sum formula for the effective action (text layer line 410), not a weighted marginal term.
Resolution. SOURCES_VERIFY §6(d) "(2.12) minimizes the unweighted A^η(U) under M_B(U) = V" is CMP 119 (2.12). Its "(2.23) evaluates the weighted −A(1/g_k²(·), U_k) at that minimizer" is CMP 119 (2.23) with (2.24). Both are CMP 119; neither is CMP 109. The content of §6(d) is CONFIRMED. The citation is CORRECTED: write "CMP 119 (2.12), (2.23)–(2.24)". The CMP 109 p. 267 quote on the vanishing linear term (excerpt 109-21) is a separate, correctly labelled CMP 109 item.

### 3.4 Item 10: the "L odd" page and the unit-lattice page [V]
- CMP 109 p. 251 (pdf 3): "We take L_μ = L^m, where L is an odd, positive integer > 11, and m is a positive integer." and, after (0.1), "with a lattice spacing ε = L^{−K}".
- CMP 109 p. 259 (pdf 11), top: "For the effective action corresponding to the unit lattice, where k = K = log_L 1/ε, the above bound is uniform in the lattice spacing ε."
Our reading (THEOREM2.md §2): "ε = L^{−K}, ... k = K is the unit lattice (p. 256). L odd, > 11." Grade: CORRECTED (page only). Content is right. Correct pages: L odd > 11 and ε = L^{−K} on p. 251; k = K unit lattice on p. 259. Nothing of this is on p. 256. B4V and T2PV (p. 251) are right.

### 3.5 Item 11: CMP 109 Sect. 3 estimates and the (5.44) constant [V, pdf 32, 49, 50]
- (5.43)–(5.44), p. 297: "The analyticity properties mentioned after (5.38) imply the corresponding exponential decay properties of the functions in the above formula. More exactly, we have |Π′_{μν,κλρ}(x−y)| ≤ O(1)E_0 exp(½δ_1|x−y|). (5.44)" The exponent is printed positive.
- p. 298: "The bound (5.44), and the bounds (4.14), (4.15) for derivatives of δB, B imply that all these third order terms in (5.43) are irrelevant." and "In both cases we have used the fact that the first and second order derivatives of the function Π′_{μν}(p) vanish at p = 0".
- (3.54), p. 280: "|∫_0^1 dτ (1−τ)⁴/4! ⟨δ⁵/δB⁵ E^{(j)}(X, U_j(□_0, exp iτB)), ⊗B⟩| ≤ sup_{τ∈[0,1]} |∫_{|σ|=r} dσ (1/σ⁶) E^{(j)}(X, U_j(□_0, exp i(τB + σB)))| ≤ E_0α_3^{−5}|B|⁵ exp(−κd_j(X))." Then: "Let us make a final remark about the constant in the inequality (3.54). It is much bigger than E_0, and further bounds and summations will make it worse. Eventually we have to recover the constant E_0 in the inductive assumption (1.18), and the mechanism for it is provided by the differentiation with respect to t_□, at t_□ = 0. This differentiation yields a factor O(1)α_2^{−1}ε_1, and taking ε_1 sufficiently small we can get the required constant."
Grades.
- (5.44) with constant O(1)E_0 and positive printed exponent; "[sic], a negative exponent is intended": CONFIRMED. The decay intent follows from (5.10) (p. 293, negative exponent) and from "exponential decay" in the lead-in sentence.
- "Rest is irrelevant by (5.44)" and "first and second derivatives of Π′_{μν}(p) vanish at p = 0" (SOURCES_HBETA, R2 files): CONFIRMED, verbatim on p. 298.
- A14 "the constant of (3.54) ('much bigger than E_0', value not given)": CORRECTED. The constant is printed: E_0α_3^{−5} (times |B|⁵ e^{−κd_j(X)}). What Balaban does not print is the constant after "further bounds and summations". The recovery mechanism (factor O(1)α_2^{−1}ε_1, ε_1 small) is CONFIRMED verbatim.
- (3.34)–(3.50): no project file uses a reading of these lines (grep: the only "(3.34)" hits are CMP 99, a different paper). Nothing to grade; NOT CHECKED, not needed.

### 3.6 Item 12: the 1989 bound lists (A_0, A_1, B_3, B_5, γ_0 = 1/2) used by the D′ sweep
The item is a list, not one reading. LEMMA_DPRIME_SWEEP uses these constants only as fixed, scale-free numbers in comparisons of ε_j, δ_j, R_j at different scales. So the reading to check is: (a) each constant is defined without reference to a scale, and (b) γ_0 = 1/2.
- A_0, CMP 119 p. 246 [V]: "ε_0 = g_0p_0(g_0), p_0(g_0) = A_0(log g_0^{−2})^{p_0}, p_0 ≥ 5r and A_0 is a sufficiently large constant." CONFIRMED.
- A_1, CMP 119 p. 265 (pdf 23) [T]: "δ_k = g_kA_1/A_0 p_0(g_k)" (OCR "δk = gkAί/Aopo(gk)"); CMP 122 I p. 186 [V] uses "A_1p_1(g_j)/(A_0p_0(g_j))", so δ′_j carries A_1p_1. A_1 is a fixed constant with A_1/A_0 small. CONFIRMED as a role; the exact OCR form of δ_k on p. 265 is [T] only.
- Scale independence, CMP 122 I p. 186 [V]: "The remaining numerical factors in front of the exponential can be estimated by 9B_3(A_1/A_0)(p_1(γ)/p_0(γ))(1 + β_0), and can be made arbitrarily small by choosing γ, or A_1/A_0 sufficiently small. Notice, that the conditions on M, γ, A_0, and A_1 introduced above do not depend on any scale, i.e., on i, j, k, and so on. This applies also to other conditions introduced before." CONFIRMED. This is the printed sentence the D′ sweep needs for uniformity in the scale. It also supports §2 (no scale or g enters the O(1) constants beyond the explicit factors).
- γ_0, CMP 122 II p. 380 [V]: "γ_0 is an absolute positive constant (in this factor we may take γ_0 = 1/2)." CONFIRMED.
- B_3: constant of CMP 102 Theorem 1 (variational problem), "positive constants a_0, a_1, B_3, B_4(β_0), M(ε_1)" (CMP 102 p. 279, quoted in LEMMA_B4 E5; not re-read here). B_5: SOURCES_MA2_VERIFY records B_5 = 6B_1B_3C_1 (CMP 98). Both are fixed before γ. Status: provenance located through earlier verified files; not re-read in this pass.
Grade for item 12: CONFIRMED for the use made (scale-free constants, γ_0 = 1/2). Not done: a line-by-line read of every bound in CMP 119 Sect. 2 (pp. 254–263). No project row uses any other bound from that list, so this residue is not load-bearing.

## 4. CMP 119 Sect. 3: homogeneity and loss constant of the large-field T step

Read on images: CMP 119 pp. 264–278 (pdf 22, 28–36; pp. 271–278 in full). Sect. 3 is titled "The k + 1-st Renormalization Transformation and the Proof of Theorem 2".

What Sect. 3 prints about decay rates [V]:
- p. 264: "Almost all operations and bounds were studied in the previous papers [16, I], so we concentrate only on new issues."
- p. 270: "Therefore we need the improved statements and bounds for these terms, discussed before the formulation of Theorem 1, but we obtain such improvements quite naturally."
- p. 276: "for terms connected with such a cube □, we obtain all the formulas and bounds of Sects. 3, 4 [I] with η replaced by L^{−n}. In fact we have better bounds, because the fluctuation field is localized in Ω_{k+1}, and the exponential decay of propagators and minimizing functions yields additional small factors." And: "We repeat again the analysis of Sect. 6 [I] ... The remaining considerations and bounds are the same as in [I]."
- p. 277: "The terms of the expansion can be estimated as in (2.42), but with the additional factor O(ε_k) arising from the bound of the fluctuation field."
- p. 278, after (3.47): "The terms of the sum above satisfy the bounds (2.42), with the constant B_0 replaced by O(p_0³(g_k)). Of course the integration with respect to t preserves the form of the representation, and the multiplication by g_k yields small bounds."
- p. 262 (before Theorem 1): new terms have "better decay properties, with the number κ replaced, for example, by (1 + 4β)κ" (quoted in §3.2).

Findings.
- Homogeneity statement: NOT FOUND. Sect. 3 never writes the T-step output rate as a function of the input rate. It states the output bounds in the form (2.42), B_0e^{−κd_j(X)}, with the same symbol κ, and changes only prefactors (B_0 → O(p_0³(g_k)), extra O(ε_k), extra g_k).
- Loss constant (the analogue of CMP 116's 10δ): NOT FOUND. No fraction of κ is spent in print in Sect. 3. The large-field part is reduced to "Sects. 3, 4 [I]", "Sect. 6 [I]", "Sect. 7 [I]" (CMP 109) and Lemmas 5, 6 [I]. The rate bookkeeping lives in those sections and in CMP 116 Sect. 2, which SOURCES_T2_KAPPA2_VERIFY read on images ((2.33)–(2.41), loss 10δ).
- The (1 + 4β)κ improvement is asserted (p. 262) and called natural (p. 270). Its derivation is not printed in CMP 119.

Is KAPPA2's use consistent? Yes, as far as print goes [P from the quotes]. KAPPA2 needs: (i) the large-field T step changes the rate only by a δ-fraction of the input rate, and (ii) all other changes are prefactors absorbed by constants. Sect. 3 supports (ii) directly (only prefactors change, and they carry g_k or ε_k). It is silent on (i) and defers to CMP 109/116, where KAPPA2 read (i) as 10δ. So the CMP 119 Sect. 3 item adds no new constant and no contradiction. The residual is not "an unread page in CMP 119 Sect. 3"; it is "Balaban never prints the large-field T-step loss". KAPPA2_VERIFY's caveat "its loss constant may differ from 10δ" stays true in the sense that no printed number fixes it; but the printed structure (same κ, prefactor-only changes, reduction to CMP 109 Sect. 6–7) agrees with homogeneity. Grade: reading CHECKED; homogeneity NOT FOUND in print; use CONSISTENT, tag [R → CMP 116 (2.33)–(2.41) + CMP 109 Sects. 6–7].

