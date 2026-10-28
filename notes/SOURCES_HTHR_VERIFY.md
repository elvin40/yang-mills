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

