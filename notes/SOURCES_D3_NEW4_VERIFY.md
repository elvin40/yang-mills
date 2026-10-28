# SOURCES_D3_NEW4_VERIFY — independent check of SOURCES_D3_NEW4 §0–6

Date 2026-10-28. Firewall kept: no reads of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.
Method: 300 dpi page images of CMP 122 II (balaban/1989_cmp122_large_field_renormalization_II.pdf, PDF page = journal page − 354); canon files SOURCES_D3, SOURCES_D3R, SOURCES_FX_D, SOURCES_ORDER_CANON.

## A. Pages 357–358 (images read)

- p. 357: (1.2) exponent quoted correctly. U_0 is "a minimum of the functional U → A(U)" with constraint (1.3): no weight, no ζ_0. (1.4)–(1.5) as quoted. Last paragraph as quoted: gauge U_0 = exp iξA_0 on Z, |A_0|, |∇^ηA_0| < O(1)M^6R_kε_k; compensating adjoint gauge transformation on B′; "expand … up to the first order in A_0. This was discussed in Sect. B [13]"; leading term = form at background 1. One detail NEW4 §2 omits: Balaban then ALSO replaces the minimizer by the k-th whole-lattice minimizer and ζ_0 by 1, at cost O(exp(−R_k)), and compares with ⟨B′, Δ_kB′⟩ of [10] (1.65)–(1.67). The ζ_0 → 1 replacement cannot be done for ζ_0ω in the same way, but NEW4's Step 2 does not need it: it compares Q_{ζ_0ω} with Q_{ζ_0} BEFORE Balaban's chain starts, then applies Balaban's (1.7) to Q_{ζ_0} verbatim. Correct order.
- p. 358: (1.7), (1.8) with constant d(100M)^{d+1} (= d(100M)^5 at d = 4), (1.9) γ_0/(2d(100M)^5) "for g_k sufficiently small", G^c sentence ("all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k}) … may result only in stronger restrictions on g_k, or γ"), (1.10) with A(ζ_0, ·), (1.11) |I(U_0)| < O(1)M^5: all quoted correctly.
Grade (page facts pp. 357–358): CONFIRMED.

## B. Page 356 (image read)

(1.1): numerator and denominator Wilson terms are −g_k^{−2}A(ζ_0, U_{k,Z}(V′_kV_Λ)) (unsourced, as printed for constant coupling). Text: the numerator part combines into the new Wilson term, the rest "has to be cancelled, or approximately cancelled, with the term from the denominator". V′ = exp ig_kB′ is the block-lattice variable; U_{k,Z}(V′V_Λ) is expanded around U_0 by (2.8) [I], which produces H_{1,k}B′. NEW4 §1 writes "V = exp(ig_kB′) and U = U_0V"; that is shorthand: the expansion variable at link level is H_{1,k}B′ (plus higher order, inside V(·)), not B′. NEW4 (1.1) itself uses HB′, so nothing downstream changes.
Grade: CONFIRMED (notation imprecision only).

## C. Page 359 (image read)

- Variational problem V′↾Λ → A(U_{k,Z}(V′V_k)): no weight, no ζ_0, V′ = exp iB′ ("without the powers of g_k, and with ζ_0 = 1"). (1.12) critical-point equation with Δ_1 (no argument, i.e. ζ_0 = 1). (1.13) inverse of P_0H*Δ_1HP_0 bounded by γ_0^{−1}2d(100M)^5 "by the inequality (1.9)". Solution bound 2γ_0^{−1}2d(100M)^5B_3²4ε_k. This is Proposition 1 [IV]; the source has no entry point (the functional is a pure Wilson action of a geometric configuration).
- (1.14) A(1/(g″_k(·))², U″_k) = g_k^{−2}A(U″_k) + A(1/(g″_k(·))² − g_k^{−2}, U″_k); second term "We leave it in this form … use it to get the bounds for large fields". (1.15) splits the FIRST term only.
Grade (items 2 for (1.12)/(1.13), 3 for (1.14)): CONFIRMED. Remark: (1.13) cites (1.9), but the operator there has ζ_0 = 1, so it is the ζ_0 = 1 version of (1.9) (same proof). Either way unweighted; NEW4's note "the sourced (1.9) is never needed here" is correct.

## D. Pages 360–361 (images read)

- p. 360: chain from (1.14): the FIRST term g_k^{−2}A(U″_k) is split by (1.15); A(ζ_0, U″_k) is localized by (1.16) and expanded in (1.17); its main term is split by (1.18) A(ζ_0, U″_{k,Z}) = A(ζ_0(1 − ζ_1), ·) + A(ζ_1, ·), ζ := ζ_0(1 − ζ_1); V′ = exp ig_kB with |B| < g_k^{−1}δ′_k; (1.19) new background U^0_{k,Z}.
- p. 361: (1.20) expands A(ζ, U″_{k,Z}) (ζ from (1.18)) as quoted in NEW4 §2. The quadratic form is "according to the formulas (79) [15], (3.10) [13] … a sum of several terms, which are small except the one term determined by the operator D*ζD"; small-form bound O(1)B_3^5B_5M^{5+d}A_1²p_1²(g_k)R_k^{d+2}ε_k; nonnegative form (1.21) Σ_{p∈T_η} η^dζ(x(p))|(DH″_{1,k,Z}B)(p)|²; "In the effective action we have the form (1.21) with the minus sign, therefore it can be bounded by 0."
Grade item 3 ((1.21) source-free by (1.14)): CONFIRMED. The whole chain (1.15)–(1.21) starts from the first term g_k^{−2}A(U″_k) of (1.14); the variable coupling sits only in the second term. Page correction (1.21) on p. 361: CONFIRMED.
Side fact for item 4: p. 361 states that Balaban's quadratic form = D*ζD-term + small terms whose size is controlled by the regularity constant of the background, citing [15] (79) and [13] (3.10). This is the same structure as NEW4 (4.1) (leading c_N|∂X|² term weighted by the plaquette cutoff, plus background-small remainder), and it is written with ζ evaluated at x(p), i.e. plaquette by plaquette.

## E. Pages 365–367 (images read; 365–366 were not in the brief, read because (1.37) assembles the Wilson terms)

- p. 365 (1.37): all Wilson terms of (1.1) combine to
  −A(1/(g_k(·))², U_k) − A((1/(g″_k(·))² − g_k^{−2})ζ, U″_{k,Z}) − A((1/(g″_k(·))²)ζ_1, U″_{k,Z}) − ½Σ_p η^4ζ(x(p))|(DH″B)(p)|² + O(1).
  So the remainder of (1.14) does NOT stay as one block: on supp ζ it is the second term; on supp ζ_1 Balaban RECOMBINES it with g_k^{−2}A(ζ_1, ·) of (1.18) into the WEIGHTED term A((g″)^{−2}ζ_1, U″_{k,Z}). This third term is the one "which gives the small factors connected with large plaquette variables in the domain Ω^c_h" (p. 366).
- p. 366: second term small since 1/(g″)² − g_k^{−2} = O(N) ≤ O(R_k) on supp ζ, bound O(1)B_3²B_5²M^9R_k^7ε_k². With the source this difference gains the D3R δ_r-piece (|·| ≤ δ_r, O(r)), still ≤ O(R_k): bound unchanged up to O(1). Third term: G^c extension loses "the obvious positivity properties of the Wilson action"; Balaban writes it "as a small perturbation of a positive Wilson action". (1.39): V′_Λ is a critical point of V′↾Λ → A(U_{k,Z}(Ṽ′V, V′V_Λ(V))) — unweighted.
- p. 367: (1.40) "only with ζ_0 = 1 and g_k = 1"; inverse "as in (1.13)"; (1.41) |B′_Λ(B̃′)| ≤ 4d(100M)^5γ_0^{−1}B_3²|B̃′|; text then turns to A((1/(g″_k(·))²)ζ_1, U″_{k,Z}) — weighted.
Grade item 2 (unweighted variational problems U_0, (1.12)/(1.13), (1.39)/(1.40)): CONFIRMED on images. Page correction (1.40) on p. 367: CONFIRMED.
Grade NEW4 (F2) "the forms (1.20)–(1.21) and (1.77) come from the constant-coupling part only": CORRECTED for (1.77) pending §F — (1.37) shows the large-field factors come from the weighted term A((g″)^{−2}ζ_1, U″), into which the (1.14) remainder is recombined on supp ζ_1.

## F. Pages 368, 382–383 (images read; 368 not in brief)

- p. 368: the weighted term A((1/(g″)²)ζ_1, U″) is expanded as (1.17); all terms small except the main one; linear term (1.47) bounded using the weight bound (1/g_k² + O(k − j)). (1.48): the main term is A((1/(g″)²)ζ_1, U″_{h+2}(exp ig_kB, V″)) + O(1); "The gauge field … is G-valued, hence the action is positive, and it provides the necessary bounds for large plaquette variables." With the source, (1.47)'s weight bound gains + δ_r = O(r): harmless. Positivity of (1.48) needs the sourced weight > 0, i.e. ω ≥ 1 − θ > 0 (real f): holds for θ < 1.
- p. 382, first case (|B′(b)| ≥ δ′_j on Ω″~²_{h+1}∖Ω″_{h+1}): "the Wilson action yields the factor exp(−¼g_j^{−2}(24R_j^4)^{−2}δ′_j²) = exp(−A_1²48^{−2}R_j^{−8}p_1²) ≤ exp(−R_j^{−8}p_1²)". This factor comes from the WEIGHTED Wilson term (1.48) (weight ≈ g_j^{−2} on that domain). Sourced: weight ≥ (1 − θ)g_j^{−2}, factor exp(−(1 − θ)A_1²48^{−2}R_j^{−8}p_1²) ≤ exp(−R_j^{−8}p_1²) if (1 − θ)A_1² ≥ 48², i.e. A_1 ≥ 48√2 for θ ≤ ½. This is the γ_0 → (1 − θ)γ_0-type loss of D3R §1.4 (see §G for whether D3R covers it by name).
- p. 382, second case (|B′| < δ′_j there, |B′(b)| ≥ δ′_j on Ω″_{h+1} ∩ B_0): "we use the quadratic form in the expansion (1.20). We make all the previous transformations of the Wilson action localized by the function ζ" (ζ_1 moved to ∂Ω″~_{h+1}). So (1.77)'s form IS the (1.20)/(1.21) form, i.e. it comes through (1.14)'s constant-coupling first term at step j. "(1.21) is treated in a similar way as the form in (1.7)": change gauge, "expand the quadratic form up to the first order with respect to the corresponding field A_0"; first-order term ≤ ‖B‖²O(1)B_3^4B_5M^6R_jε_j; "the leading term … is the quadratic form (1.21) with the minimizer calculated at the external gauge field equal to 1. Using the local version of the bound (1.7)".
- p. 383: (1.77) ⟨DH″_{1,j,Z}B, ζDH″_{1,j,Z}B⟩ > γ_0Σ|(∂B)(p′)|² − O(1)A_0A_1²B_3^4B_5M^{d+6}R_j^{d+3}p_0p_1²g_j; (1.78) as quoted; factor exp(−½γ_0[6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2}]^{−1}A_1²p_1(g_j)) < exp(−R_j^{−d−5}p_1²(g_j)). NB the printed exponent has p_1(g_j), not p_1²; NEW4 §2 copies it as printed. Page correction (1.77) on p. 383: CONFIRMED.
Grade item 3 for (1.77): CONFIRMED — the form is source-free by (1.14) at step j, as NEW4 says. The source in the second case sits in the (1.14) remainder on supp ζ, whose coefficient Balaban bounds by O(N) ≤ O(R_k) (p. 366); the sourced coefficient is O(N) + δ_r, same order. NEW4 [R](b) (p. 382 not re-imaged) is now discharged: p. 382 says exactly "the quadratic form in the expansion (1.20)".
Correction to my §E remark: (F2) holds for (1.21) and (1.77). What NEW4 §3 states imprecisely is "the large-field factors that the source does touch come from the second term of (3.1) and its analogues": on images, the first-case factor (p. 382) and the positivity (1.48) come from the recombined weighted term A((g″)^{−2}ζ_1, U″) of (1.37), not from (1.14)'s remainder alone. The needed sourced statement (weight ≥ (1 − θ)g_j^{−2} > 0, factor with A_1² → (1 − θ)A_1²) is the same multiplicative loss as NEW4's alternative route; it must be booked somewhere (D3R §1.4 or D3 (P6)) — checked in §G.

## G. Item 1 (definition of ω) and item 4 (Hessian split), with [13] read

[13] located: CMP 109 reference list, no. 13 = Balaban, "Propagators for lattice gauge theories in a background field", CMP 99 = balaban/1985_cmp99_propagators_background_field.pdf. Its Sect. B starts on p. 399 (analyticity; first-order operators V′_1(A), (3.50)–(3.54)). The decisive formula is (3.10) on p. 392 (PDF 4, image read), which II p. 361 cites for the same purpose:
  ⟨A, ΔA⟩ = ⟨A, D*DA⟩ + ⟨A, Δ′A⟩,
  ⟨A, Δ′A⟩ = Σ_{p⊂T_η} η^d tr((D^1_UA)(p))² η^{−2}(Re U(∂p) − 1) + tr Σ_{b_1,b_2⊂∂(p), b_1<b_2} i[A′(b_1), A′(b_2)] η^{−2} Im U(∂p).
"with our assumptions on the configuration U the operator Δ′ will be a bounded, small operator … a small perturbation of D*D."

Item 1 — ω. D3 (L0)/(1.c): Wilson term −A(w_k, U_k); (P4): R-denominator weight w_k = u_k(f) on Z; D3R (B10′) + Lemma P3(b): |w″_k − 1/(g″_k)²| ≤ (3/2)r + r/2 + 2C_hMρ_1λ_k ≤ δ_r and 1/(g″_k)² ≥ γ^{−2}; on Z, Lemma H: |u_k(f) − g_k^{−2}| ≤ (3/2)r. Hence ω := g²(p)w(p) satisfies |ω − 1| ≤ γ²δ_r = θ two-sided, both for the numerator weight and (more strongly, (3/2)γ²r) for the denominator weight. θ ≤ 5γ²r needs ρ_1 ≤ r/(4C_hM) (D3R_VERIFY item 1), which NEW4 writes as "for ρ_1λ_k small". On the pages: (1.1), (1.10), (1.37) show the weight enters only as the coefficient of A(·, U), and the variational problems (1.3), (1.12), (1.39) carry none. Linearity of A(χ, U) = Σ_pχ(p)P_p(U) in χ gives NEW4 (1.1).
Grade item 1: CONFIRMED (θ ≤ 5γ²r carries D3R_VERIFY's ρ_1 condition; NEW4 states it loosely).

Item 4 — re-derivation.
(4.1): (3.10) of [13] gives the plaquette split EXACTLY, with no first-order expansion: h_p(X) = η^d|(D_{U_0}X)(p)|² + c_p(X), where the first term is ≥ 0 and c_p is the p-summand of Δ′, |c_p(X)| ≤ C η^{−2}(|Re U_0(∂p) − 1| + |Im U_0(∂p)|)·η^dΣ_{b∈∂p}|X(b)|². In the gauge of p. 357, η^{−2}|U_0(∂p) − 1| ≤ O(|∇^ηA_0| + |A_0|²) ≤ O(a). So NEW4 (4.1) is correct, and the positive part can be taken as |D_{U_0}X|² (covariant) instead of c_N|∂X|² (background 1) — a stronger form that avoids the reading "commutators drop out of Re tr". NEW4's background-1 statement is also correct: Δ′ = 0 and D_U = ∂ at U = 1. [R](a) of NEW4 is discharged.
Step 2: ω − (1 − θ) ∈ [0, 2θ] (real f), h_p ≥ −|c_p| per plaquette, ζ_0 ≥ 0: Q_{ζ_0ω} − (1 − θ)Q_{ζ_0} = Σζ_0(ω − 1 + θ)h_p ≥ −2θΣ|c_p| ≥ −2θ·C·a·2(d − 1)‖X‖² (each bond lies in 2(d − 1) plaquettes). With ‖X‖ ≤ O(1)B_3‖B′‖: Q_{ζ_0ω}(HB′) ≥ (1 − θ)Q_{ζ_0}(HB′) − θ·O(B_3²M^6R_kε_k)‖B′‖². CONFIRMED (recomputed).
Order of operations: Balaban's chain on p. 357 (expand in A_0, replace minimizer, ζ_0 → 1 at cost O(e^{−R_k}), compare with [10] (1.67)) is applied to Q_{ζ_0} unchanged; ζ_0ω never has to be replaced by 1. Correct.
Sourced (1.7): (1 − θ)[γ_0‖∂B′‖² − O(M^6R_kε_k + e^{−R_k})‖B′‖²] − θO(B_3²M^6R_kε_k)‖B′‖² ≥ (1 − θ)γ_0‖∂B′‖² − O(1)((1 + θB_3²)M^6R_kε_k + e^{−R_k})‖B′‖². CONFIRMED.
Inputs taken as readings, not on images: ‖H_{1,k}‖ ≤ O(1)B_3 (Schur test on the B_3 kernel bound) and 0 ≤ ζ_0 ≤ 1 (ζ_0 is a smooth cutoff; p. 360 describes ζ_1 the same way, "changes from 0 to 1"). Both plausible; ζ_0 ≥ 0 is load-bearing for Step 2.
G^c extension: for complex X = X_R + iX_I with |X_I| = O(α_{0,k} + α_{1,k})|B′| locally, Re|D X|²-type terms lose ≤ O(α)|X|²_p, which joins c_p; this is Balaban's "ε_k → O(α_{0,k} + α_{1,k})". [reading, as NEW4 says] 
Grade item 4: CONFIRMED; (4.1) is a correct reading of p. 357 and is in fact exact by [13] (3.10).

## H. Items 5–7

Item 5 — constant. (1.8) on the image: d(100M)^{d+1} = d(100M)^5 at d = 4, so ‖∂B′‖² ≥ ‖B′‖²/(d(100M)^5). Sourced (1.7) gives ≥ (1 − θ)γ_0/(d(100M)^5)‖B′‖² − err ≥ γ_0/(2d(100M)^5)‖B′‖² − err for θ ≤ ½, and ≥ γ_0/(4d(100M)^5)‖B′‖² when err := O(1)((1 + B_3²)M^6R_kε_k + e^{−R_k}) ≤ γ_0/(4d(100M)^5). Recomputed: CONFIRMED. The condition is on g_k only (through ε_k, R_k), of Balaban's "g_k sufficiently small" type. G^c extension: CONFIRMED as a reading (§G).
Minor correction to NEW4 §5: "(1.10)–(1.11) need only an UPPER bound of the form". Balaban says this for the lower bound on the integral; the two-sided |I(U_0)| < O(1) log M|Λ| also uses the lower bound of the form (log of the Gaussian determinant). The sourced (1.9) supplies it with γ_0/(4d(100M)^5) in place of γ_0/(2d(100M)^5): a change of O(1)|Λ| in |I(U_0)|, inside O(1)M^5. Conclusion unchanged.
Minor correction to NEW4 §3 alternative route: with θ ≤ ½ the (1.77) exponent loses the factor (1 − θ) ≥ ½, so the condition is R_j^3 ≥ 4·6(d + 3)(100M(L + 1)N^{β_0})^{d+2}/(γ_0A_1²); NEW4's 2·6(d + 3)(…)^{d+2}/γ_0 is right only if A_1² ≥ 2. Either way it is Balaban's own "g_j small" condition with a larger O(1). The route is not needed (main route closes (1.77)).
Grade item 5: CONFIRMED.

Item 6 — canon. SOURCES_ORDER_CANON B32: "r_0^{rad} = τ_0 = min(1/8, r_0^{D2}, r_0^{D3}, r_0^{FX}, γ^{−2}/10, 1/(6γ²c_1c_H)); ρ_1 ≤ r/(4C_hM); 5γ²r ≤ ½". So 5γ²r ≤ ½ (equivalently r ≤ γ^{−2}/10) is in the canon, and so is the ρ_1 condition that D3R_VERIFY needs for θ = γ²δ_r ≤ 5γ²r. Together they give θ ≤ ½. NEW4's remark "r_0 ≤ 1/10 for a γ-free statement" is harmless (γ ≤ 1) and not needed: γ^{−2}/10 is already in the min.
New conditions from NEW-4: only enlarged O(1)'s inside "g_k small" (factor 1 + B_3² in (1.7); factor 2 in (1.11); factor 2 in the p. 382 first-case factor, see below). These are r-independent and are absorbed by γ small, as Balaban's own "may result only in stronger restrictions on g_k, or γ" (p. 358).
Grade item 6: CONFIRMED.

Item 7 — closure list. NEW4's list is NOT complete. Additions and corrections:
 (a) ρ_1 ≤ r/(4C_hM) (canon B32; D3R_VERIFY item 1): needed for θ ≤ 5γ²r. NEW4 says "ρ_1λ_k small" only.
 (b) D3 (P6) + D3R §1.4 for the WEIGHTED third term −A((g″)^{−2}ζ_1, U″) of (1.37): (1.48) positivity (needs ω > 0, true for θ < 1) and the p. 382 first-case factor exp(−¼g_j^{−2}(24R_j^4)^{−2}δ′_j²), which becomes exp(−(1 − θ)A_1²48^{−2}R_j^{−8}p_1²) ≤ exp(−½R_j^{−8}p_1²) (θ ≤ ½, A_1 ≥ 48 as Balaban); it is later used only through exp(−p_0(g_j)) with 2p_1 − (d + 5)r_0 > p_0, so the ½ is absorbed by g_j small. D3R §1.4 covers this term by name ("the third term of (1.37)") but books only γ_0 → (1 − θ)γ_0; the A_1-factor loss should be named. NEW4 §3 points to "the second term of (3.1) and its analogues: D3R §1.4 / D3 (P6)": the target is right, the description is not (it is the recombined third term, p. 365).
 (c) Complex f: NEW4 says "FX §6.3 (O2 open there)". Stale: SOURCES_FX_D §2 records O2 = (FX-D) CLOSED and verified by SOURCES_FX_O23 §4 (+ VERIFY §6), conditional on N3 = B18 (HBETA strip, choice B) or on the unchecked moved d_Sζ_iP_p term (choice A). Replace by "FX_O23 §4 (O2 closed; N3/B18 or choice-A bookkeeping)".
 (d) (4.1): replace "my plaquette-local reading of p. 357" by "[13] = CMP 99 (3.10), image p. 392": exact split ⟨A, ΔA⟩ = Σ|D_UA|² + Δ′, Δ′ plaquette-local and curvature-small. [R](a) discharged.
 (e) p. 382 now read on the image: [R](b) discharged.
 (f) Remaining readings: ‖H_{1,k}‖ ≤ O(1)B_3; 0 ≤ ζ_0 ≤ 1; G^c extension of Step 2; (P5) linear vertex [reduced] in D3 (NEW4 [R](c), unchanged).
Grade item 7: CORRECTED.

## I. Grades summary

1 (ω only, |ω − 1| ≤ θ ≤ 5γ²r): CONFIRMED (needs ρ_1 ≤ r/(4C_hM)).
2 (variational problems unweighted, on images: (1.3), (1.12)/(1.13), (1.39)/(1.40)): CONFIRMED.
3 ((1.14) keeps (1.21), (1.77) source-free, on images pp. 359–361, 382–383): CONFIRMED; NEW4's description of where the source touches large-field factors CORRECTED ((1.37) third term, weighted).
4 (Hessian split + (4.2)): CONFIRMED by recomputation; (4.1) is a correct reading of p. 357 and is exact by [13] (3.10).
5 (γ_0/(4d(100M)^5), θ ≤ ½, G^c): CONFIRMED; two minor constant notes (§H).
6 (no new canon condition): CONFIRMED (B32 has 5γ²r ≤ ½ and the ρ_1 condition).
7 (closure list): CORRECTED (add (a)–(d)).
Page corrections ((1.21) p. 361, (1.40) p. 367, (1.77) p. 383): CONFIRMED.

Line for SOURCES_D3 under the weight route ((i)(P4)–(P6)):
 - NEW-4 (SOURCES_D3_NEW4 + _VERIFY): the source enters R only as the plaquette factor ω, |ω − 1| ≤ θ ≤ 5γ²r; U_0, (1.12), (1.40) unweighted; (1.21), (1.77) source-free by (1.14); denominator (1.9) → γ_0/(4d(100M)^5) by the split CMP 99 (3.10); (1.37)'s weighted ζ_1-term via D3R §1.4; no condition beyond canon B32 (5γ²r ≤ ½, ρ_1 ≤ r/(4C_hM)).

NEW-4 final status: CLOSED relative to D3 (B8)/(P4)/(P5)/(P6), D3R Lemma P3 + §1.3–1.4, canon B32, FX_O23 §4 (O2 closed; N3/B18), with (P5)'s Gaussian booking still [reduced] in D3 and three readings (‖H‖ ≤ O(1)B_3, 0 ≤ ζ_0 ≤ 1, G^c extension).
