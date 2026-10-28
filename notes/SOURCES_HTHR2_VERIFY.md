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

## Step 6. CMP 119 p. 259–260 (PDF p. 17) image, (2.25)–(2.28)
Printed (2.28): α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}, "q_0, q_1 integers greater than 1, C_0, C_1 sufficiently large". E^{(j)}(X,(U,J),z) analytic on U^c_j(X, α_{0,j}, α_{1,j}), bound (I.1.18). F6 CONFIRMED.
Also printed (2.25): E_k(U_k) = Σ_j [E^{(j)}(Λ_j, g_{j−1}, U_k) − E^{(j)}(Λ_j, g_{j−1}, 1) − β_j(g_{j−1})A(φ_j, U_k)]. So β_j is the coefficient of the action term subtracted from E^{(j)}; extraction is linear in E^{(j)}. Supports M4(ii).
M4(iii) check: f(z) = E(exp(izξA′)U), |A′|,|∇A′| ≤ 1 ⇒ analytic for |z| < α_1, |f″(0)| ≤ 2 sup|f|/α_1². α_1^{−2} = C_1^{−2} s (log s)^{−2q_1}. In d = 4 the action Σ_p ξ^{d−4}(1 − Re tr) of exp(iξA′) is ≈ ½Σξ^d|∂A′|², scale-free, so no L^{2j} factor enters; a_1 = 1, P_1 = −2q_1 is consistent. Units point (a) remains a reduced point, but I see no mechanism that would make it non-polynomial.

## Step 7. Analysis of Lemma T, §3, §3.3, numerics; grades
Lemma T orientation. Shell = {θ_lo ≤ |B(b)| < θ_hi}. χ = small-field indicator χ(|B(b)| < θ). Then 1_shell ≤ 1 − χ(|B(b)| < θ_lo) = 1{|B(b)| ≥ θ_lo}. Correct orientation: the large-field function at the LOWER threshold. Telescoping over bonds correct. Caveat: Balaban prints the factor for 1 − χ′ functions in the R-operation large-field estimate (1.79), where group integrals are bounded by 1 and the B-form by 0 after extraction (p. 383 text). Using the same factor for shell terms inside small-field E-class polymers (CMP 116 (2.3) signed expansion) is the same mechanism but is not printed. Reduced, not proved. Minor: the scaled threshold also carries (s/w)^{1/2} = 1 + O(r/s); harmless.
Exponent. R < L(log u_ref)^{r_0} ⇒ R^{−(d+5)}(log s)^{2p_1} ≥ ½L^{−(d+5)}(log s)^{q} once (log u_ref/log s)^{(d+5)r_0} ≤ 2. Absorption ½γ_0A_1²/K_R ≥ R^{−(d+5)} ⟺ R³ ≥ 12(d+3)(100M(L+1))^{d+2}N^{β_0(d+2)}/(γ_0A_1²). True for γ small (R ≍ (log)^{r_0}, N ≍ log log). CONFIRMED. κ_2 = 2^{−10} ≈ 9.8·10^{−4} for d = 4, L = 2.
Lemma D: duality σ_max² ≤ K_R/γ_0 correct given Q_lead ≥ γ_0Σ|∂B|² without the −O(1) term (the author's split; not printed as such). Unused.
§3. 7.1(a) applies to real scalar Δ_j(c) on [−2r,2r] (for vector values apply to each unit functional; same constant). W-Gronwall and D_j = (9/2)ε″ + 2ε′W re-derived. CONFIRMED arithmetic.
(H-hist2) status. For β_j(w) = B_j(w;w) the second w-derivative contains ∂_s², ∂_s∂_w B_j through the running thresholds. So (H-hist2) for β_j silently contains a uniform (not small) bound on the mixed threshold-history derivative, i.e. M5's object without the smallness. The author's "no mixed term appears" is a relabeling. The claim "free if (H-hist) is proved by Cauchy in the history" is UNSUPPORTED for β_j: complexifying w moves sharp thresholds and global weights whose positivity Balaban uses (D2 §7.1 warns against this). Correct statement: exponential smallness no longer needs history derivatives (real gain); history regularity is still needed at order 2 as a new hypothesis of (H-hist) type, including threshold dependence of β_j.
§3.3. η_j = 2(2ADΦ_T)^{1/2} + 2AΦ_T/r re-derived. h′ for Ψ = 3/2 + P/(2y) − (qκ_2/2)y^{q−1}; (G1′) correct; (G2′) correct; (3.4) prefactor γ^{−2}/β·Ψ(γ^{−2}) re-derived. CONFIRMED.
Numerics re-run (python -I): N1 ratios 0.555, 0.311, 1.8, 0.402, 8.22, 1.19 match. N2 300 random trig g on [−0.4,0.4]: worst ratio 0.548 ≤ 1 (author 0.487, different sample). G1′ for q = 2: y_0 ≥ 2560. CONFIRMED.
Size. κ_2 small changes only how small γ must be (γ ≲ e^{−1280} for q = 2), not existence. Via the (1.27) route (L10) there is no L^{−(d+5)} loss.

Grades: (1) CONFIRMED (misprint confirmed; Lemma T orientation right; transfer of the printed large-field factor to small-field shell terms reduced). (2) CONFIRMED as reduced (radius and (1.73) mechanism read; units and small-field analogue of (1.73) open). (3) CORRECTED ((H-hist2) for β_j contains the threshold-history mixed derivative; Cauchy route not free). (4) CONFIRMED (conditional on (H-hist2)). (5) CONFIRMED. (6) CONFIRMED.
