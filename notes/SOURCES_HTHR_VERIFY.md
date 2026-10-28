IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_HTHR verification (independent)

## Step 1. Read SOURCES_HTHR.md in full
Author claims: Δ_j definition, coarea shell, Lemma S under M1–M4, sum (4.1), Lemma H′, corrections L3/L10. Ledger L4 leaves M1 open.

## Step 2. Context read
D3 (vi)/(viii): Δ_j = threshold mismatch; D3 leaves open whether Balaban's β_j is threshold-free. D3_VERIFY V7: origin of exponent from (0.1) as quadratic; sum needs γ^{-2}/β factor. HBETA Lemma H: multiplicative Gronwall, x ≤ ln(3/2).

## Step 3. CMP 122 I p. 175, (0.1), page image read
Image: "exp[−(1/g_0²)[1 − Re tr U(∂p)]] ≤ exp(−p_0(g_0)) = g_0^{A_0(log g_0^{−2})^{p_0−1}}". Linear in p_0(g_0). Author's (S1)/L10 CONFIRMED.
Side note: with L = log g_0^{−2}, g_0^{A_0 L^{p_0−1}} = exp(−A_0 L^{p_0}/2) = exp(−p_0(g_0)/2). So Balaban's last equality is off by a factor 2 in the exponent. Harmless. The true action bound from |U − 1| ≥ g_0 p_0(g_0) is exp(−c p_0(g_0)²), stronger; Balaban displays only the weaker linear form.

## Step 4. CMP 122 I §1, pp. 181–183 text (decompositions of unity)
Verbatim (text, OCR clean here): "We start with the decomposition of unity 1 = χ_k^{(0)} + (1 − χ_k^{(0)}) ... we introduce this decomposition in each component of Z separately. In components with the function 1 − χ_k^{(0)} we have introduced new large fields ... and we exclude them from the region Z." Same for χ_k^{(1)}, χ_k^{(n+1)}, χ'_j (1.27) and (1.28).
p. 182: "The function χ_k^{(n+1)} does not depend on integration variables, and we have to consider the integral (1.25) multiplied by χ_k^{(n+1)}."
p. 183: "In the remaining region ... we obtain the integral (1.25) multiplied by χ_k^{(n+1)}, and with the function χ'_j inside."
So: (1 − χ) parts go to the large-field sum. The χ parts are NOT expanded away: χ_k^{(n+1)} (background) multiplies the integral, χ'_j (fluctuation, threshold δ'_j = g_jA_1p_1(g_j)) stays inside. Need next: how the fluctuation integral with χ'_j inside is turned into E-class terms.

## Step 5. CMP 116 (= [III]) p. 12, (2.1)–(2.3), page image read
CMP 122 I p. 187 says the integral with χ'_j inside is processed by "all the operations discussed in Sect. 3 [III]"; the cluster step is CMP 116 §2. Verbatim (2.3): "we take the following decomposition of the characteristic functions χ_k: χ_k = χ_{k,Y_0}χ_{k,Y_0^c} = Σ_{P⊂Y_0^{c*}} (−1)^{|P|} χ_{k,Y_0}χ^c_{k,P}, χ^c_{k,P} = Π_{b∈P} χ({|B(b)| ≥ ε_1/g_k})."
So inside the small-field cluster expansion: on Y_0 the sharp cutoff χ_{k,Y_0} STAYS inside the integral; off Y_0 it is expanded as Π(1 − χ^c), and the χ^c terms stay in the small-field polymer F(Z_0, B) (not moved to large-field regions). Both depend on the threshold.
M1 verdict: the alternative "(1 − χ) moved to large-field ⇒ Δ_j ≡ 0" is REFUTED for the fluctuation-field cutoffs. It holds only for the background-field cutoffs χ_k^{(n)} of CMP 122 I (they multiply the integral as 0/1 factors and are moved to Z by 1 = χ + (1 − χ)). The fluctuation cutoffs stay inside. Δ_j ≢ 0 in general; the shell route is needed.
Structural correction to M1: the entry is a signed sum Σ_P(−1)^{|P|}, not one positive restricted integral. The coarea step still applies term by term (each χ^c_P is a sharp cutoff); but "divide by the restricted normalization of a positive density" is not the literal structure.

## Step 6. CMP 122 I p. 183 top, image read; p. 198 text
Image p. 183: "where δ'_j = g_jA_1p_1(g_j), p_1(g_j) = (log g_j^{−2})^{p_1}, and p_1 < p_0; other conditions on p_1 will be formulated later. Introduce the decomposition of unity 1 = χ'_j + (1 − χ'_j), for each component of Z, under the integral (1.25), and exclude from Z the components with the large field functions 1 − χ'_j. In the remaining region ... we obtain the integral (1.25) multiplied by χ_k^{(n+1)}, and with the function χ'_j inside."
Consequences. (a) M1: confirmed that χ'_j (fluctuation cutoff) stays INSIDE the integral; only (1 − χ'_j) goes to Z. Same at (1.55) and CMP 116 (2.3).
(b) NEW CORRECTION. The fluctuation threshold uses p_1(g) = (log g^{−2})^{p_1} with p_1 < p_0, not p_0(g). So the shell density at the fluctuation cutoff is exp(−c A_1²(log g^{−2})^{2p_1}), not exp(−κ(log g^{−2})^{2p_0}). The author's θ(s) with exponent p_0 and C_θ ∈ {A_0, A_1} is wrong for δ'_j; κ(log s)^{2p_0} must be replaced by κ_1(log s)^{2p_1}.
(c) p. 198 text: the only further condition on p_1 found is (1/2)v ≥ p_0 − p_1 − 1 for the integer v in N ≳ (log g^{−2})^{2v}. Not stated that p_1 is an integer or ≥ 1. Summability in §4 needs 2p_1 > 1. If p_1 ≤ 1/2 is allowed, the sum (4.1) diverges (terms ~ m^{−c(log m)^{2p_1−1}} → not summable for 2p_1 ≤ 1... for 2p_1 = 1 terms ~ m^{−c}, needs c > 1). So the trajectory sum needs the extra choice p_1 > 1/2 (free: Balaban only needs p_1 < p_0 and the v condition; take p_0 ≥ 2, p_1 = 1).

## Step 7. M2/M3 sources: CMP 119 p. 246 (PDF p. 4) image; CMP 122 II p. 383 image (1.77)–(1.78)
CMP 119 p. 246 (PDF p. 4): ε_0 = g_0p_0(g_0), p_0(g_0) = A_0(log g_0^{−2})^{p_0}, "p_0 ≥ 5r"; "R_1 is the smallest power of L such that R_1 ≥ (log g_1^{−2})^r" (OCR "(logg1~~2)'\", image cut at the exponent; r = r_0 of CMP 122 II). M3 CONFIRMED: R_j polynomial in log g^{−2}; and R_j is integer-valued (a power of L), so it jumps in g. N: "N ≥ (v/log L) log log g_k^{−2}" (CMP 122 II p. ~367 text), also integer. L3 premise CONFIRMED.
CMP 122 II p. 383 image: "(1.78) |B(b)|² ≤ 6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2} Σ_{p′} |(∂B)(p′)|² ... We take the bond b, for which |B(b)| ≥ g_j^{−1}δ'_j = A_1p_1(g_j), and the inequalities (1.77), (1.78) yield the following large field factor: exp(−½γ_0[6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2}]^{−1}A_1²p_1(g_j)) < exp(−R_j^{−d−5}p_1²(g_j))." Next text: "We assume that 2p_1 − (d+5)r_0 > p_0 and we estimate the factors by exp(−p_0(g_j))."
M2 consequence: Balaban's per-bond bound is NOT exp(−γ_0wθ²) per link. One bond is controlled only through a block quadratic form, with loss R_j^{−(d+5)} ≈ (log g^{−2})^{−(d+5)r_0} in the exponent. So M2 as stated (constant γ_0, single link) is UNSUPPORTED; the available decay is exp(−(log g_j^{−2})^{2p_1 − (d+5)r_0}) ≤ exp(−p_0(g_j)). It is a tail bound on a positive Gaussian-type form, not a density bound; a density version needs the conditional one-bond marginal, plausible (Gaussian marginal of a positive quadratic form) but not in Balaban.
Summability with the corrected exponent: Balaban's own assumption 2p_1 − (d+5)r_0 > p_0 ≥ 1 gives exponent > 1, so the §4 argument holds with 2p_0 → q := 2p_1 − (d+5)r_0 > 1. Step 6(c) worry removed.

## Step 8. Rederivations (§1, §3, §4, §5) and numeric check
§1: Δ_j = ∫_0^1 d/dt B_j(u(c); s^t) dt gives (1.1). Chain rule for Δ_j′: first term = weight derivatives difference, written as ∫ ∂_s∂_w B dt × (ū − u(c)); second term = −Σ∂_{s_i}B_j(u(c);u(c))v_i. (1.2) follows with |ū_i − u_i(c)| ≤ 2rV_i (V = sup over the c-segment). CONFIRMED. Coarea needs the integrand density continuous at the cutoff; true for Balaban's Gaussian-type integrands.
Lemma S arithmetic: θ′ = C s^{−3/2}(log s)^{p−1}(p − ½log s); per-cutoff product = C s^{−1}(log s)^{np}e^{−…}. Algebra CONFIRMED. With the corrected threshold (scaled field, θ̃ = A_1(log s)^{p_1}), θ̃′ = A_1p_1(log s)^{p_1−1}/s, so the g² = s^{−1} factor survives.
Mixed derivative (b): UNSUPPORTED as written. w_l (l < j) enters the step-j integrand through the effective action produced by steps l+1, …, j−1, not as one local Wilson weight of the step-j integral. A Cauchy estimate in w_l therefore needs holomorphy of that history in w_l — the same kind of input as (H-hist)/thin-strip holomorphy. Claim "does not need the strip" not justified. Fix: assume an (H-hist)-type bound for ∂_{w_l} of shell terms with weights a_{j−1−l}; state it as M5.
§3: (3/2)(1+3r)·Φ* ≤ 3(1+3r)Φ via (G2); Φ(u_i) ≤ Φ(u_j) for i < j since u_i ≥ u_j and Φ decreasing. CONFIRMED.
§4: Σ_{m≥1}Φ(γ^{−2}+βm) ≤ β^{−1}∫_{γ^{−2}}^∞Φ; with x = e^y, h′ = 1 + a + P/y − 2p_0κy^{2p_0−1} ≤ −1 gives ∫ ≤ γ^{−2}Φ(γ^{−2}). CONFIRMED. Numeric (python -I, 2·10^6 terms, m ≥ 1): (κ,p_0,a,P,β) = (1,1,1,2,.05): log sum −7.90/−29.50/−61.77 vs bound −5.95/−27.04/−58.97 at γ^{−2} = 10², 10³, 10⁴; (0.3,2,1,4,.02): −120.45/−663.6 vs −115.7/−657.62. Matches the author's numbers.
§5: V_j/P_j ≤ V_{j−1}/P_{j−1} + η_j gives V_j ≤ P_j(1 + Ση) ≤ (6/5)(5/4) = 3/2; Σε_lV_{l−1} ≤ (1+x_thr)(P − 1) ≤ ¼; Ση ≤ ¼. CONFIRMED.

## Step 9. Frozen integer parameters (L3)
Balaban uses g-dependence of R_j and N only through inequalities: lower bounds (exp(−δMR_j) smaller than any power of g, e.g. CMP 122 I (1.57) "smaller than any positive power of g_j"; L^{−N} ≤ (log g_k^{−2})^{−v}, CMP 122 I (1.94), II p. ~367) and upper bounds (R_j^{d+2}, R_j^{−d−5} losses in (1.77)–(1.78), condition 2p_1 − (d+5)r_0 > p_0). Frozen values R(u_j) vs R(u_j(c)): |log u_j − log u_j(c)| ≤ 3rγ², and the two powers of L differ by at most a factor L. All used inequalities hold with constants changed by factors ≤ L^{d+5}(1 + O(γ²r)). So freezing does not change Balaban's bounds beyond constants. CONFIRMED.
Novelty: D3 §1.1 already freezes R_j, cube sizes 100MR_k and partitions at reference g_j for the constant-c theory. What is new in L3 is freezing them also inside the comparison function β_j(u(c)). This is needed: R_j is a power of L, so β_j with running R_j jumps in u. Balaban's "C^∞ in g_{j−1}" (CMP 109 p. 263) is then only true with frozen integers or if β_j does not depend on R_j, N. Not checked. L3 CONFIRMED as an open convention.

## Step 10. M4 and grades
M4: Balaban's analyticity radii α_{0,j}, α_{1,j} = g_jC(log g_j^{−2})^{q} (D3_VERIFY V7) are polynomial in g and log g^{−1}, so a Cauchy extraction costs a polynomial factor. Reduced, plausible, not checked on the extraction pages.

Grades.
1. Δ_j definition, coarea shell (1.1), bound (1.2): CONFIRMED.
2. Lemma S: CORRECTED. (i) Fluctuation cutoffs use δ'_j = g_jA_1p_1(g_j), p_1 < p_0 (CMP 122 I p. 183 image), not p_0(g). (ii) Balaban bounds one bond only through a block quadratic form (CMP 122 II (1.78)), loss R_j^{−(d+5)}; M2 with constant γ_0 per link is unsupported. The usable decay is exp(−(log g^{−2})^{q}), q = 2p_1 − (d+5)r_0 > p_0 (Balaban's assumption), or his linear exp(−p_0(g_j)); κ = γ_0A_1²/2 is not justified. (iii) The mixed derivative needs w_l-holomorphy of the history between steps l and j; the "local Cauchy, no strip needed" claim is unsupported. The g² factor and the arithmetic of 3(1+3r)AΦ(g_j^{−2}) hold.
3. Trajectory sum with γ^{−2}/β: CONFIRMED (derivation and numerics), with 2p_0 replaced by q > 1.
4. Lemma H′ additive Gronwall: CONFIRMED.
5. Corrections: (0.1) linear exp(−p_0(g_0)) CONFIRMED on image (Balaban's final equality is off by a factor 2 in the exponent, harmless). Frozen integers CONFIRMED needed (R_j is a power of L, N integer); freezing changes only constants; D3 §1.1 already froze them in the constant-c theory, new part is the comparison β_j.
6. Open M1–M4: CORRECTED. M1 RESOLVED: Balaban expands 1 = χ + (1 − χ) and books (1 − χ) into Z, but keeps χ INSIDE the fluctuation integral ("with the function χ'_j inside", p. 183); in the cluster step he expands χ_k = Σ_P(−1)^{|P|}χ_{k,Y_0}χ^c_{k,P} (CMP 116 (2.3)) and keeps the χ^c terms in small-field polymers. So Δ_j ≢ 0; the shell route is required; the entry is a signed sum, not one positive restricted integral. M2 unsupported as stated (block bound only). M3 CONFIRMED (R_j smallest power of L ≥ (log g^{−2})^{r_0}, CMP 119 p. 246 (PDF p. 4)). M4 reduced. New M5: history holomorphy for the mixed derivative.
Net: (H-thr) is not proved; it is reduced to M2′ (density form of the block bound), M4, M5. The summability and Gronwall parts stand.
