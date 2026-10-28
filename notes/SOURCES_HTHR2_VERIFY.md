# SOURCES_HTHR2 verification (independent)

Date 2026-10-27. Firewall: /tmp/sa_repo and SUSSMAN_ALPOGE_MAP.md not read.

## Step 1. Read SOURCES_HTHR2.md, SOURCES_HTHR.md, SOURCES_HTHR_VERIFY.md in full
Author claims (1)-(6) as in the brief. HTHR_VERIFY graded Lemma S CORRECTED (p_1 not p_0; block bound with R^{-(d+5)} loss; mixed derivative needs M5), left M2', M4, M5 open.

## Step 2. D2 Lemma 7.1(a) read; CMP 122 II p. 383 (PDF p. 29) image, top part
D2 7.1(a): ‖g′‖ ≤ 2‖g‖/h + (h/2)‖g″‖, hence ‖g′‖ ≤ 2(‖g‖‖g″‖)^{1/2} + 2‖g‖/a, for real scalar g on [−a,a]. With a = 2r this is the author's (3.1). Re-derived: case h = a gives 2‖g‖/a + (‖g‖‖g″‖)^{1/2}; case h < a gives 2(‖g‖‖g″‖)^{1/2}. CONFIRMED.
Image p. 383: (1.77) prints "> γ_0 Σ_{p′∈B_0∩Ω″~_{h+1}} |(∂B)(p′)|² − O(1)A_0A_1²B_3^4B_5M^{d+6}R_j^{d+3}p_0(g_j)p_1²(g_j)g_j". (1.78) prints "|B(b)|² ≤ 6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2} Σ|(∂B)(p′)|²". Both match the author's F3.

## Step 3. CMP 122 II p. 383 factor line (image) and p. 382 text
Image: "We take the bond b, for which |B(b)| ≥ g_j^{−1}δ′_j = A_1p_1(g_j), and the inequalities (1.77), (1.78) yield the following large field factor: exp(−½γ_0[6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2}]^{−1}A_1²p_1(g_j)) < exp(−R_j^{−d−5}p_1²(g_j))."
Printed: A_1² p_1(g_j) in the middle (p_1 NOT squared), p_1²(g_j) on the right. Derivation: Q ≥ γ_0Σ|∂B|² − O(1) and |B(b)|² ≤ K_RΣ|∂B|² give exp(−½γ_0K_R^{−1}|B(b)|²) with |B(b)|² ≥ A_1²p_1². So the middle must read A_1²p_1². Misprint claim CONFIRMED. (With p_1 unsquared, the "<" to the right side would be false for large log g^{−2}.)
p. 382 text: the (1.82) cutoff has two cases. Case 1 (bond in the axial-gauge shell) gives a Wilson-action factor; case 2 uses the quadratic form (1.77)–(1.78). Balaban calls the p. 383 factor "the largest factor among all the small factors" of the preparatory steps. So it bounds both cases. Consistent with the author.

## Step 4. CMP 122 II p. 380 image, (1.73)–(1.74)
Printed: |T′_k(X,(U,J))F| = |T′_k(X,(U,0))e^σF| ≤ T′_k(X,(U,0))|e^σF| ≤ (T′_k(X,(U,0))1) sup e^{|σ|}|F| (1.73); |T′_k(X,(U,J))1| ≥ (T′_k(X,(U,0))1)e^{−2sup|σ|} (1.74); "σ is the small term of the first order in A′, J". The middle form T′(U,0)|e^σF| keeps the real positive density, so the real tail factor survives on the complex background, at cost e^{3 sup|σ|}. Author's M4(b) transfer CONFIRMED in mechanism. Caveat: (1.73) is stated for the large-field integral (1.71) of the R-operation; for small-field E-terms the analogue is assumed, not read.

## Step 5. CMP 109 p. 262 image, (1.10)–(1.16)
Printed: U^c_j(X, α_0, α_1, γ_0): (i) U = U′U, U G-valued, |∂U − 1| < α_0ξ² (1.11); (ii) U′ = exp iξA′, A′ in g^c, "|A′|, |∇^ξ_U A′| < α_1 on X" (1.13); (iii) |J| < γ_0. Author's F6 quote of (1.13) CONFIRMED. Note: the complex direction is ξA′ with ξ the scale factor, and the bound is on A′ (unscaled). So the Cauchy radius in A′ is α_1 itself.

