IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_D3 verification

Independent check of SOURCES_D3.md, 2026-10-27.

## V1. CMP 122 II p. 365 (PDF page 11, image read) — work item W1

- (B10) CONFIRMED on the image: "We define also the new function 1/(g_k(·))² = 1/(g″_k(·))² Z^c + 1/(g_k²) Z." The reset to the constant 1/g_k² on Z is the author's.
- (1.37) image: the reset produces the term −A((1/(g″_k(·))² − 1/g_k²) ζ, U″_{k,Z}).
- p. 366 image: Balaban does NOT cancel this term in a numerator/denominator algebra. He bounds it as a small term by a sup bound: 1/(g″_k(·))² − 1/g_k² = O(N) ≤ O(R_k) on supp ζ, total ≤ O(1)N^{2+4p_0}(100MR_k)^4(...)² ≤ O(1)B_3²B_5²M^9R_k^7 ε_k², small for g_k small.
- p. 364 (text) has a second entry of the same kind: (1/(g″_k(·))²) − 1/g_k bounded by O(1)(k − j) on Ω′_j \ Ω′_{j+1}, suppressed by the decay of H.
- Consequence for (P3): the mechanism in D3 ("absorbed into the numerator/denominator cancellation, plaquette by plaquette") is misdescribed. The correct statement is simpler: the sourced difference u_k(f(x)) − w″_k(x) = −Σ B_j(f(x))(1−φ_j) is bounded pointwise by O(N)(1 + O(r)), so Balaban's sup bound on p. 366 holds with a constant factor. An x-dependent coefficient costs nothing in a sup bound. Conclusion of (P3) holds; reasoning corrected.
- Also: |Δ − Δ_Bal| ≤ r Σ_j sup|B_j′| is an additive O(r·x) error, not "Δ_Bal(1 + O(r))" multiplicatively; harmless here because only the sup bound O(N) is used.

## V2. CMP 119 (2.23)–(2.31), text read (lines 820–915 of the .txt)

- (2.23): A_k = −A(1/g_k²(·), U_k) + E_k + R_k + B_k − E_k. Text after it: E_k "fully renormalized, i.e. vacuum energy and coupling constant renormalization counterterms are included into it"; R_k: "we perform the vacuum energy renormalization only"; B_k: "does not require any renormalization". CONFIRMED.
- (2.30): R_k = Σ_j [R^{(j)}(Λ_j, U_k) − R^{(j)}(Λ_j, 1)], localized on X ⊂ Λ_j^{~−1}. CONFIRMED.
- (2.31): |R^{(j)}(X,(U,J))| ≤ g_j^{κ_0} exp(−κ d_j(X)) (OCR garbled, but the next sentences fix it: "κ_0 can be chosen arbitrarily large"; marginal terms bounded by O(1)(L^jη)^4 g_j^{κ_0} e^{−κd_j(X)}; "It explains why coupling constant renormalization counterterms are not needed in (2.30)"). CONFIRMED.
- (2.24) text: 1/g_j²(x) = 1/g_{j−1}²(x) + β_j(g_{j−1}) φ_j(x) (OCR sign "+"; SOURCES_VERIFY §6(a) fixed the sign on the image; not re-checked here). β_j depends on g_{j−1} only, not on f or regions.
- So the claim "R- and B-terms take no coupling counterterm" is Balaban's text. The claim "B_j(c) is built from E-class terms only" follows from it.

## V3. R/B routing rule (W3), CMP 119 Sect. 3 text pp. 270–279

- p. 271–272, (3.26)–(3.28): parameter s multiplies the R-terms, t multiplies B_k. "The first is ... the expectation value of the boundary terms, and it contributes to B^{(k+1)} only. The second is ... the expectation value of the R-terms, and it contributes to R^{(k+1)} and B^{(k+1)}. The third ... involving the regular terms of the effective action only ... contributes to E^{(k+1)} and B^{(k+1)}." So for current R- and B-inputs the rule holds: outputs go to R/B.
- p. 279: the coupling counterterm β_{k+1}(g_k)A(φ_{k+1}, U_{k+1}) is subtracted from E^{(k+1)} only; R″^{(k+1)} gets vacuum subtraction only. Consistent with D3.
- COUNTEREXAMPLE to the rule as stated, p. 270–271: "the expression determined by the sum R_k = Σ_{j<k_1} R^{(j)} is Euclidean covariant ... It has the same covariance property as the expression determined by E_k, and we include it into E_k. The sum of the two expressions, R_k and E_k is denoted also by E_k. The sum of the remaining terms R_k = Σ_{j≥k_1} R^{(j)} is treated separately." Old-scale R-terms (j < k_1, L^{k−k_1} ~ MR_j) are re-booked as E-class before the step. They then enter the "regular terms only" integral and the E^{(k+1)} output.
- Consequence for D3 (ii)/(iii): "E-class terms are never produced from R inputs" is false for Balaban's bookkeeping. β_{k+1}(g_k) stays a function of g_k (it is defined by the small-field theory, CMP 109), so B_j(c) still need not see R. But D3 (iii) ("freezing is needed only for the E-class, and R does not create E-class terms") fails: merged old R-terms are E-class inputs of the next step and of the D2C §3 extraction. Two repairs: (a) do not merge in the sourced construction and keep the (2.31) R-bounds for all j (deviation from Balaban, cost unchecked); (b) prove freezing for R-terms after all (D3 W3 fallback, +1 session). D2 §8.4 withdrawal is premature.

## V4. CMP 122 II (1.73)–(1.75), PDF page 26 image read

- Image: (1.73) |T′_k(X,(U,J))F| = |T′_k(X,(U,0))e^σF| ≤ (T′_k(X,(U,0))1) sup e^{|σ|}|F|; (1.74) |T′_k(X,(U,J))1| ≥ T′_k(X,(U,0))e^{−2|σ|} ≥ (T′_k 1)e^{−2 sup|σ|}; (1.75) |(T′_k(X,(U,J))1)^{−1}T′_k(X,(U,J))F| ≤ e^{3 sup|σ|} sup|F|. Justification quoted by D3 ("All the expressions ... for the configuration U, are real, and the exponential density in the integral is positive") is on p. 379–380. CONFIRMED.
- D3's (B11) merges (1.73) and (1.75) into one line with e^{3 sup|σ|}; this is true (weaker than (1.73)) but not verbatim. Minor.
- (1.74) step |∫e^σ dμ| ≥ ∫e^{−2|σ|}dμ needs |σ| small (Re e^σ ≥ e^{−2|σ|} for |σ| ≤ ~1); Balaban leaves this implicit. D3's Lemma D3.1 is the explicit version.
- p. 380: normalization constants O(log g_j^{−2}) per site, large-field domain contributes O(1) log g_j^{−2}|Z_j|; χ^c_j(P_j) gives exp(−γ_0(1/2g_j²)(B_3^{−1}ε_j)²(LM_2R_j)^{−d}|P_j|), "γ_0 = 1/2" allowed. D3 quote CONFIRMED in substance (the R_j^{−d} volume factor and B_3 are dropped in D3's paraphrase; harmless for the ratio argument).

## V5. A coupling-entry place missing from (P1)–(P7): CMP 119 p. 271 (PDF page 29, image read)

- Image: "Introduce now auxiliary parameters s, t, the parameter t multiplying the expressions B_k, A((1/g_k²(·)) − (1/g_k²), ...), V^{(k)}, s multiplying R″_k." The t-integral (first line of (3.26)) contains B_k and A(1/g_k²(·) − 1/g_k², U_k(...)) − A(..., U_{k+1}); it "contributes to B^{(k+1)} only".
- So Balaban books the deviation of the local coupling from the constant g_k as a BOUNDARY term. This works because 1/g_k²(x) = 1/g_k² on the last domain, so the deviation is supported near large-field regions.
- Sourced version: w_k(x) − g_k^{−2} = −f_k(x) is nonzero on the whole torus. It cannot go into B. It must be split: [w_k − u_k(f)] (supported off the last domain, goes to the t/B-part as in Balaban) plus [u_k(f(x)) − g_k^{−2}] (the source vertex, handled in the regular part by the D2 machinery). D3 does not state this split. Call it (P8). It is bookkeeping, not an obstruction, but the "full list" claim of (i) is false.
- Second minor entry: p. 364 text, "(1/(g″_k(·))²) − 1/g_k is bounded by O(1)(k − j) on Ω′_j \ Ω′_{j+1}", suppressed by the decay of H. Same type as (P3); sourced bound O(k − j)(1 + O(r)).

## V6. Lemma D3.1 and item (iv)

- Lemma D3.1: Re e^σ = e^{Re σ}cos(Im σ) ≥ e^{−s}cos s for |σ| ≤ s < π/2; e^{−1/2}cos(1/2) = 0.6065 × 0.8776 = 0.532 > ½. Proof correct. CONFIRMED.
- Application: on small-field supports P_p ≤ O(ε_k²), so |σ_W| ≤ O(τ ε_k²|Y|); Cauchy on E-terms gives |σ_E| ≤ O(E_0 τ|Y|/r). Then τ(Y) = c r/(E_0|Y|) gives |σ| ≤ ½. Correct, conditional on the open thin-strip holomorphy of u_k (SOURCES_HBETA §3(c)), which D3 flags. Numerator: the numerator is a large-field integral, so P_p is O(1) there, not O(ε_k²); |e^{σ_W}| ≤ e^{O(τ)·#plaquettes}, which needs τ ≤ c/#plaquettes(Z). Same order as τ(Y); D3 does not state it, harmless.
- Propagation of the radius through later operations: reduced to the D2 §6.3 assumption, labelled as such. Fine.
- (G1) Gevrey order 2: the step "only scales with Mλ_m ≳ δR_m^{−1} matter; there R_m ≤ R(g,δ)" treats n as fixed. The cutoff scale depends on n. With g_m^{−2} ~ log(1/λ_m), sup_λ (log g_m^{−2})^{Pn} e^{−κδ/(2Mλ)} ~ exp(Pn·log log log n) for large n. So the bound is C^n (n!)² e^{O(n log log log n)} ≤ C_ε^n (n!)^{2+ε}, not C^n(n!)². Still uniform in the lattice cutoff; the order is 2+ε for every ε > 0 (or 2 with a sub-factorial correction). CORRECTED. Whether 2+ε suffices for the intended OS regularity (N5) is not checked here.

## V7. (H-thr) exponent, summability, and "thresholds cannot depend on f"

- Origin of the exponent: CMP 122 I (0.1) text: |U(∂p) − 1| ≥ g_0 p_0(g_0), p_0(g) = A_0(log g^{−2})^{p_0}, p_0 a positive integer; the Wilson factor is exp(−c p_0(g)²) = exp(−cA_0²(log g^{−2})^{2p_0}); Balaban: "the bound does not give any positive power of ε" in d = 4. So the shell mass between two thresholds ε(1 ± O(γ²r)) at scale j is ≲ O(γ²r)·exp(−c(log g_j^{−2})^{2p_0}). The exponent is the natural one. CONFIRMED as origin; (H-thr) itself stays open, as D3 says. The SOURCES_HBETA §4(d) guess exp(−κ/g²) is too optimistic; D3's correction is right.
- Summability: with 1/g_j² ≥ γ^{−2} + βm, m = K − j, terms exp(−c(log(γ^{−2} + βm))^{2p_0}) ≤ m^{−c(log m)^{2p_0−1}} eventually; summable for any 2p_0 > 1, uniformly in K. CONFIRMED.
- Small error: "Σ ≤ C exp(−c(log γ^{−2})^{2p_0})" omits a volume factor. The first ~γ^{−2}/β terms are each ≈ exp(−c(log γ^{−2})^{2p_0}), so Σ ~ (γ^{−2}/β) exp(−c(log γ^{−2})^{2p_0}) ≤ C exp(−(c/2)(log γ^{−2})^{2p_0}). Still → 0 as γ → 0, so x_thr → 0 holds. CORRECTED (constant only).
- Δ_j as defined: Balaban's thresholds (2.28) α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1} [text] are functions of g_j, so "Balaban at 1/g_0² − c" has thresholds at g_j(c), and Δ_j is the mismatch. Setup consistent.
- "Thresholds cannot depend on f": too strong. True statement: an f-dependent threshold in a sharp characteristic function is not holomorphic in complex f, so it breaks the Cauchy/Lemma D3.1 route that D3 uses. Real differentiability in f survives (moving-boundary derivatives are surface integrals with exp(−c p²) mass). So it is a design constraint of the complex-f method, not an impossibility. CORRECTED.

## V8. Positivity, item (ix)/(7)

- Real f: w_0 = 1/g_0² − f > 0; u_m(c) ≥ g_m^{−2} − (3/2)|c| (Lemma H) gives w > 0; Wilson factor exp(−w P_p) with P_p ≥ 0 positive; conjugation-symmetry argument for reality is standard. So Balaban's (1.73)–(1.75) argument applies verbatim for real f. CONFIRMED.
- Error: "w_k ≥ g_k^{−2}(1 − 3γ²r)" is false off the last domain. There w_k(x) ≈ u_m(f(x)) with m < k, and Balaban's own local coupling 1/g_k²(x) = 1/g_m² < 1/g_k² (asymptotic freedom; CMP 122 II p. 366: 1/(g″_k(·))² − 1/g_k² = O(N)). The correct bound is relative to Balaban's local coupling: w_k(x) ≥ (1 − (3/2)γ²r)/g_k²(x). (P6) and (vi)(d) need the bound only where step j creates a large-field factor (inside Ω_{j−1}, where the local coupling is ≈ g_j); there the D3 bound holds. Not checked plaquette by plaquette. Binding condition 3γ²r ≤ ½ for γ_0 → γ_0/2: arithmetic correct (even (3/2)γ²r ≤ ½ suffices with |c| ≤ r). CORRECTED (statement), conclusion stands.

## V9. Grades

1. Sourced hypothesis (reference thresholds, (1.a), adapted weight): CONFIRMED. (1.a) matches (2.24) and the p. 365 reset.
2. R change = reset on Z; P1–P7; O(rg_k²); γ_0 → γ_0/2: CORRECTED. Reset confirmed on the PDF. Balaban controls the reset term by a sup bound O(N) ≤ O(R_k) (p. 366), not by cancellation; the sourced coefficient fits the same bound. The list misses (P8), the t-parameter term A(1/g_k²(·) − 1/g_k², U) booked as boundary (CMP 119 p. 271), which in the sourced case must be split. O(rg_k²) and γ_0/2 arithmetic correct.
3. B_j from E-class only; R, B no coupling counterterm: CORRECTED. No-counterterm text confirmed ((2.23), (2.30)–(2.31), p. 279). The routing rule fails: CMP 119 p. 271 merges old R-terms (j ≤ k_1) into E_k. B_j(c) still need not see R (β is the small-field function), so D2 §8.3 withdrawal holds; D2 §8.4 (freezing through R) withdrawal is premature.
4. Lemma D3.1 and radius c·r/(E_0|Y|): CONFIRMED for the lemma, radius conditional on the open strip holomorphy. Gevrey claim CORRECTED: n-dependent scale cutoff gives (n!)^{2+ε}, not (n!)².
5. R vacuum subtractions and w on X ⊄ Λ_j into a region-dependent constant; W = all-small-field sum: CONFIRMED (matches CMP 119 p. 262 and p. 279).
6. Adapted weight: CONFIRMED (conditional on strip holomorphy); "thresholds cannot depend on f" CORRECTED to "not compatible with the complex-f method". (I)/(H-thr): exponent origin CONFIRMED from CMP 122 I (0.1); summable; sum bound needs a γ^{−2} factor (CORRECTED, harmless); HBETA §4(d) correction right.
7. Real f positivity, (1.73)–(1.75) verbatim: CONFIRMED on the PDF. w_k ≥ g_k^{−2}(1 − 3γ²r) is false off the last domain; the bound must be relative to Balaban's local coupling (CORRECTED statement).
8. Ledger and plan: CORRECTED. W1 is done here. W3 is answered negatively for old R-terms. The ledger must move "freezing withdrawn" from proved to open, add (P8), and fix the (P3) mechanism.
