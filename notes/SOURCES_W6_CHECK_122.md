# SOURCES_W6_CHECK_122 — image check of the (W6*) place list on CMP 122 I, CMP 122 II outside pp. 381–392, and CMP 99

Date 2026-10-28. Author: Claude (Opus 5.5). Verification file for the residue (W6*) of SOURCES_L1_E §6.4.
Edits: this file only. No existing file was edited. PLAN.md was not touched. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read.
Method. Each page was rendered with pdftoppm -r 150 into a fresh /tmp folder and read as an image. The folders were deleted after use.
- CMP 122 II pp. 355–380 (PDF 1–26) and CMP 99 p. 392 (propagators paper, PDF 4): read by me.
- CMP 122 I pp. 175–202 (PDF 1–28): read by one Opus subagent, which I briefed with the claims below. It read all 28 pages as images, did not use the text layer as evidence, and deleted its folder. Its readings are reported here as its readings. I did not re-render those pages.
- CMP 95, 96, 98 and 102: the list has no page-level place in these papers. SOURCES_D2 §2.2 and §3.4 use CMP 95/96/99/102 only as black boxes (the unweighted variational problem and the propagators). Nothing to check.

The list. The source-entry places on these pages are the (B7)–(B12) anchors and the items (P1)–(P7), (vi), (viii) of SOURCES_D3, with the D3R and NEW-4 additions. SOURCES_L1_E §4.1 and §5 cite them. "Claim" below is the wording in L1_E or in the file that it cites.

Grades. [V]: the image matches the claim. CORRECTED: the image differs, and the printed content is stated. MISSING: the claimed content is not printed. Danger class: as in L1_E §6.4.

## 1. CMP 122 II pp. 355–380 (read by me)

| page | place | claim in L1_E (or cited file) | image reading | grade |
|---|---|---|---|---|
| 355 | Theorem 1, (0.1) | V5/B12: Theorem 1 holds if the couplings lie in ]0, γ]; χ_k exp[−g_k^{−2}A(U_k) − E_−\|T_η\|] ≤ ρ_k ≤ exp E_+\|T_η\| | As claimed, word for word. | [V] |
| 356 | (1.1) and the text after it | B9: the Wilson terms "are multiplied by g_k^{−2}, so they are potentially dangerous"; the denominator is the dangerous one | Printed: "because the terms are multiplied by g_k^{−2}, so they are potentially dangerous and they may spoil bounds. More precisely, the term from the denominator is dangerous". The denominator of (1.1) is ∫dV′δ_{G_0}(V′)χ exp[−g_k^{−2}A(ζ_0, U_{k,Z}(V′V_Λ))]. The coupling is the constant g_k. | [V] |
| 356–357 | (1.2) | B9: denominator written with V′ = exp(ig_kB′) | (1.2) is exp[−g_k^{−2}A(ζ_0, U_0) + (−½d(g) log g_k^{−2} + log σ_0)\|Λ^{(k)}\G_0\|] · ∫dB′σ(g_kB′)δ_{G_0}(B′)χ(\|B′\| < M_0g_k^{−1}ε_k) · exp[−½⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩ − g_k^{−1}⟨DH_{1,k}B′, ζ_0η^{−2} Im ∂U_0⟩ − g_k^{−2}V(ζ_0, g_kH_{1,k}B′)]. | [V]. It contains a per-site normalization; see §3, item M1. |
| 357 | (1.3)–(1.6) | B9, P5: U_0 minimizes the unweighted A(U); J_0 = 0 on Λ; the linear term becomes a boundary term, bounded in (1.6) | (1.3): U_0 minimizes U ↦ A(U), with no coupling factor. (1.4): ⟨δA, J_0⟩ = 0, so J_0 = 0 on Λ. (1.5): the term moves to (1 − ζ_0). (1.6): bound < 3B_3M_0A_0²p_0²(g_k) exp(−R_k)(100M)⁴. | [V] |
| 357–358 | (1.7)–(1.9) | Q-050: the Hessian lower bound; sourced form γ_0/(4d(100M)^5) | Printed: "This quadratic form is positive definite, and it is simple to estimate the lower bound". (1.7): ≥ γ_0‖∂B′‖² − O(1)(M^6R_kε_k + exp(−R_k))‖B′‖². (1.8): Σ\|B′(b)\|² ≤ d(100M)^{d+1}Σ\|(∂B′)(p)\|². (1.9): ≥ γ_0/(2d(100M)^5)‖B′‖² "for g_k sufficiently small". The 4d in L1_E is the sourced constant, so it is not a misreading. | [V] |
| 358 | (1.10)–(1.11) | Covered only by class: L1_E (D-iii)/(S-b), and Q-050 ("denominators"). The equation is not named in L1_E. B20_W4R read it from the text layer. | Printed: "This integral is in the denominator of (1.1), hence we are interested only in a lower bound, which follows from the boundedness of the quadratic form. The integral is bounded from below by exp(−O(1)\|Λ\|) = exp(−O(M⁴)). In fact, we need such a bound for the integral extended analytically on G^c-valued configurations U." (1.10): (∫…)^{−1} = exp[+g_k^{−2}A(ζ_0, U_0) + I(U_0) − E_k(Λ)], with E_k(Λ) = (−½d(g) log g_k^{−2} + log σ_0)\|Λ^{(k)}\G_0\|. (1.11): \|I(U_0)\| < O(1) log M\|Λ\| < O(1)M^5. | [V] for the B20_W4R text reading. This is a DANGER-CLASS PLACE by type: a lower bound and the logarithm I(U_0) of an integral at complex input, not computed by a polymer expansion. It is safe in either of two cases. (a) The denominator is source-free, as the image shows, B20_W4R states, and L1_E (D-iii) states. (b) The denominator carries ω, as D3 (P4) and NEW-4 state; then NEW-4 l. 95 gives \|I\| < O(1)M^5 with a doubled O(1) [P]. L1_E should name (1.10)–(1.11) in §6.4. It should also say which of (a) and (b) is the live construction, because D3 (P4) and L1_E (D-iii) disagree on this point. |
| 359 | (1.12)–(1.13) | N1: the minimizer is unweighted | Prop. 1 [IV] is proved for V′ ↦ A(U_{k,Z}(V′V_k)), "without the powers of g_k". Its operator P_0H*Δ_1HP_0 is positive by (1.9), with inverse ≤ γ_0^{−1}2d(100M)^5. | [V]. Source-free. |
| 359 | (1.14) | NEW-4: the weighted action is split as A(1/(g″_k(·))², U″_k) = g_k^{−2}A(U″_k) + A(1/(g″_k(·))² − g_k^{−2}, U″_k) | As claimed. Printed: "The crucial term in the action A″_k is the Wilson term −A(1/(g″_k(·))², U″_k)." The position-dependent coupling g″_k(·) is Balaban's own. | [V]. This is the F1 entry point for the R-operation. |
| 360–363 | (1.15)–(1.29) | Covered by class (reference g_k part of (1.14)) | Expansions of g_k^{−2}A(ζ_0, ·) around U^0_{k,Z}. Every bound is an upper bound on a small term "after dividing by g_k²". The coupling is the constant g_k. | [V]. f-free. |
| 361 | (1.20)–(1.21) | NEW-4: (1.21) is source-free by (1.14) | (1.21) = Σ η^d ζ(x(p))\|(DH″_{1,k,Z}B)(p)\|² ≥ 0. Printed: "In the effective action we have the form (1.21) with the minus sign, therefore it can be bounded by 0." It comes from the g_k^{−2} part. | [V]. This is an upper bound from positivity, and it is source-free. |
| 364 | text after (1.32): the "p. 364 entry" | D3R l. 50: "(1/(g″_k(·))²) − 1/g_k² ≤ O(1)(k − j) on Ω′_j \ Ω′_{j+1}" | Printed: "(1/(g″_k(·))²) − 1/g_k² is bounded by O(1)(k − j) on Ω″_j\Ω″_{j+1}, and the exponential decay of H″_{k,Z} suppresses this bound." | CORRECTED (notation only): the region is Ω″_j\Ω″_{j+1}, and the printed bound is "bounded by", which is an absolute bound. The D3R argument is unchanged. |
| 364 | (1.31) | not on list | 0 ≤ A(ζ_1, U_0) < g_k²L^{−4N}N^{4β_0}O(1)A_0²B_3²B_5²M^{14}R_k^4p_0²(g_k), with the unweighted A | f-free; an upper bound. |
| 365 | (B10): the reset after (1.35) | D3 B10 (OCR): "1/g_k(·)² = 1/g_k(·)² Z^c + 1/g_k² Z" | Printed: "We define also the new function 1/(g_k(·))² = 1/(g″_k(·))²Z^c + 1/(g_k²)Z." | CORRECTED (notation): the right-hand side carries g″_k, the old local coupling, on Z^c. The substance of the reset (the constant g_k on Z) is confirmed. |
| 365 | (1.36)–(1.37) | D3 P3, NEW-4: the per-plaquette recombination; the weighted ζ_1 term −A((g″)^{−2}ζ_1, U″) | (1.37): the sum of the Wilson terms = −A(1/(g_k(·))², U_k) − A((1/(g″_k(·))² − g_k^{−2})ζ, U″_{k,Z}) − A((g″_k(·))^{−2}ζ_1, U″_{k,Z}) − ½Σ η⁴ζ\|DH″B\|² + O(1). | [V] |
| 366 | after (1.37) (D3R B13) | S-e: 1/(g″)² − g_k^{−2} = O(N) ≤ O(R_k) on supp ζ, with the bound O(1)B_3²B_5²M^9R_k^7ε_k² | As in D3R B13, word for word. | [V] |
| 366 | the third term of (1.37) | S-a, NEW-4: the G^c extension is "a small perturbation of a positive Wilson action" | Printed: "the obvious positivity properties of the Wilson action are lost. We will show that this extension can be written as a small perturbation of a positive Wilson action, from which we can get all the small factors." | [V]. Upper bounds only; class (S-a). |
| 367 | (1.40)–(1.45) | N1 | The critical point of the unweighted V′ ↦ A(U_{k,Z}(Ṽ′V, V′V_Λ(V))), with ζ_0 = 1 and g_k = 1. (1.41): \|B′_Λ\| ≤ 4d(100M)^5γ_0^{−1}B_3²\|B̃′\|. | [V]. f-free. |
| 368 | (1.47) | not on list | \|⟨DH″_{h+2}, (g″_k(·))^{−2}ζ_1η^{−2} Im ∂U″_{h+2}⟩\| bounded with the sup factor (g_k^{−2} + O(k − j))ε_j | A sup bound on the local coupling; an upper bound. Class (S-e). It is the same type as the p. 364 entry and should be added next to it. |
| 368 | (1.48) | NEW-4: positivity of (1.48) | Printed: "The gauge field in the Wilson action on the right-hand side is G-valued, hence the action is positive, and it provides the necessary bounds for large plaquette variables." The action is A((g″_k(·))^{−2}ζ_1, ·). | [V]. Upper bounds only. At complex source this is (S-a) with weight (1 − θ)w. |
| 369 | (1.49) | covered by class (normalizations, I(U_0) in C_k) | C_k collects the small terms "including the term I(U_0) from the denominator". (1.49) contains (−½d(g) log g_k^{−2} + log σ_0)\|B_0\T_0\| − E_k(Λ). | [V]. I(U_0) is the (1.10) logarithm; see that row. |
| 370–377 | (1.50)–(1.69) | covered by class T9 ((W4)-R) | Re-expansion of the E-, R- and B-terms around U_k by CMP 109 (6.9)–(6.10). Printed: "controlled by the renormalization procedure for E-terms" (p. 372). Analyticity (1.65) is stated in (U, J). (1.68): \|V(Y,(U,J))\| ≤ α exp(−(1 + 2β)κd_{k,Z}(Y)), α small. (1.69): \|V\| ≤ O(1)Σ\|Γ_j^0 ∩ Y\|. | [V]. Upper bounds and convergent sums only; classes (O1), (O4). |
| 377–378 | (1.70); E_k(Z) | covered by class (e-terms, (L4)) | E_k(Z) is "the sum of normalization terms and vacuum energy terms with localizations intersecting the large field domain Z". | [V]. The vacuum-energy terms are the e^f terms of D3 (L4). |
| 378 | reversed Faddeev–Popov | not on list | Printed: "we can remove the gauge fixing δ-functions δ_{G_0∩X_i}(V′_k) by a reversed Faddeev–Popov procedure. This is possible only if we integrate the density with respect to the gauge field variables V_k". This relies on gauge invariance of the density. | (N3). Weight-free. The sourced density is gauge invariant for every f, because f multiplies gauge-invariant plaquette terms. Not danger class. Add it to (N3). |
| 379 | (1.71)–(1.72) | V6 | T′_k(X) and the R-operation as claimed. Printed: "the operation T′_k(X) can be represented as the operation for a regular G-valued configuration U, with the additional small, and possible complex valued, term in the exponential. All the expressions in the definition (1.71), for the configuration U, are real, and the exponential density in the integral is positive." | [V] |
| 380 | (1.73)–(1.75) | V6, B11 | As in V6. After (1.74): "T′_k(X,(U,0))1 is obviously positive, although it may be very small, hence T′_k(X,(U,J))1 ≠ 0". | [V]. (1.74) and (1.75) are danger class; L1_E correctly restricts them to the quotient that K-014 avoids. |
| 380 | normalizations; large-field factors | V6, B11 (P6): normalization budget O(1) log g_j^{−2}\|Z_j\|; factors exp(−γ_0(ε_j²/g_j²)\|·\|) "by the same positivity bound" | Normalization: "O(1) log g_j^{−2}\|Z_j\| ≤ O(1) log g_j^{−2}(MR_j)^d d′_j(Z_j) ≤ O(1)M^dR_j^{d+1}d′_j(Z_j)". Factors: (i) exp(−γ_0(2g_j²)^{−1}(B_3^{−1}ε_j)²(LM_2R_j)^{−d}\|P_j\|), "using Theorem 1 [15] and (71) [16]", with γ_0 = ½ allowed; (ii) exp(−½γ_0g_j^{−2}(2δ_j)²(LM_2R_j)^{−2}\|Q_j\|), "using the positivity bound for the resulting quadratic form"; (iii) exp(−γ_0g_j^{−2}δ_j²(LM_2R_j)^{−d}\|R_j\|), "by the same positivity bound". | [V] in substance. The generic form in (P6) hides three different factors; factor (ii) has the exponent (LM_2R_j)^{−2}. All three are upper bounds, class (S-a). |

## 2. CMP 99 p. 392 (read by me)

| page | place | claim | image reading | grade |
|---|---|---|---|---|
| 392 | (3.10) | NEW-4_VERIFY: the plaquette split is Σ\|D_UA\|² + a curvature-small local Δ′ | ⟨A, ΔA⟩ = ⟨A, D*DA⟩ + ⟨A, Δ′A⟩, with ⟨A, Δ′A⟩ = Σ_p η^d tr((D_U^1A)(p))²η^{−2}(Re U(∂p) − 1) + tr Σ i[A′(b_1), A′(b_2)]η^{−2} Im U(∂p). "Δ′ will be a bounded, small operator". | [V]. Coupling-free. |

## 3. CMP 122 I pp. 175–202 (subagent image readings)

| page | place | claim | image reading | grade |
|---|---|---|---|---|
| 175 | (0.1) | D3 (viii): ε_j²/g_j² = p(g_j)² with p ~ A_0(log g^{−2})^{p_0} | (0.1): exp[−g_0^{−2}(1 − Re tr U(∂p))] ≤ exp(−p_0(g_0)) for \|U(∂p) − 1\| ≥ g_0p_0(g_0), where p_0(g) = A_0(log g^{−2})^{p_0}. The relation ε_j²/g_j² = p² is not printed. | CORRECTED. The printed content is an upper bound only. The D3 (viii) order of magnitude still follows. |
| 176 | text after (0.3) | B7: "the densities are positive … hence the denominators are positive, and the operation R is well defined" | As claimed. The denominator is ∫dV↾_{Z′}ρ(Z″, V). | [V]. Danger class by type. It is the source of the (0.3) division (row M2). |
| 176 | (0.5) | D3 (v): the sum runs over X meeting the renormalized regions | The left side is Σ_{Z′⊂Z″^c} of the quotients of (0.3). The right side is exp Σ_X R(X, V), with the condition "X ∩ Z″^c ≠ ∅". | CORRECTED: the printed condition is X ∩ Z″^c ≠ ∅. The D3 (v) conclusion (field dependence through the regions) does not change. |
| 177 | first paragraph; condition (i) | B7: denominators are localized near Z′ and "determined by small field effective actions only"; components ≤ 100MR_k | As claimed. Condition (i): "contained in a cube of the size 100MR_k". | [V] |
| 178 | (1.3)–(1.9) | L0, N2: reference thresholds; no weight inside | (1.3), (1.4), (1.5), (1.7): thresholds ε_j, δ_j. (1.8) and (1.9) contain the reference g_j, for example χ(sup\|A_j\| < g_j^{−1}δ_j). No local weight appears. | [V], with the note that (1.8) and (1.9) contain the reference coupling g_j. |
| 178, 182, 183 | (1.5)–(1.6) | D3 (vi), P7, F2: the exponential gauge-fixing factor is in "(1.5)–(1.6)"; a per-link factor exp(−γ_0ε_j²/g_j²) comes from the weight ((vi)(d)) | (1.5) is a characteristic function χ(\|V_j(y,x) − 1\| < ε_j) only. (1.6) is (1/z)exp[−g_j^{−2}(1 − Re tr V_j(y,x))], and the one-link normalization 1/z is printed inside (1.6). No formula for z is printed. (1.29) on p. 183 repeats the product. No factor exp(−γ_0ε_j²/g_j²) derived from the gauge-fixing weight appears on any page. On p. 184 the functions (1.5) are shown to equal 1, because O(1)δ′_j < ε_j. | CORRECTED: the weighted factor is (1.6) alone. The derived factor of D3 (vi)(d) is MISSING. (vi)(d) is then an unused claim. Its weight change (1 − 3γ²r) is harmless, but no factor of this kind exists in print to cite. |
| 194 | Prop. 1, (1.77)–(1.78) | B8, N1: V_Λ minimizes the unweighted A(U_{k,Z}(V_k)) | As claimed. There is no coupling factor, and the paper states the analytic G^c extension. | [V] |
| 195–196 | tree gauge | B8, N3: δ_{T_0}(V) by Faddeev–Popov, with no weight | As claimed. The construction starts on p. 195. | [V] |
| 201 | (1.100) | D-iii, FX_O23 §3: the R-ratio denominators contain the bare Wilson action only | Denominator: ∫dV′↾_{Λ_i}δ_{G_i}(V′)χ(Λ_i)exp[−g_k^{−2}A(ζ_i, U_{k,X_i}(V′V_Λ))], with the constant g_k. | [V] |
| — | O(1) log g_j^{−2}\|Z_j\| | (per-site budget) | It is not printed in CMP 122 I. It is printed in CMP 122 II p. 380 (§1). | MISSING in CMP 122 I. Not an error in L1_E, which cites p. 380. |

## 4. Source-entry places that the list missed

| id | page | place | printed content | class / danger |
|---|---|---|---|---|
| M1 | II 356, 358, 369, 377, 379 | E_k(Λ) and the Haar normalizations | (−½d(g) log g_k^{−2} + log σ_0)\|Λ^{(k)}\G_0\| and the same with \|B_0\T_0\|. They come from V′ = exp(ig_kB′) with the reference g_k. | f-free (thresholds and scalings at reference values, D3 (x)). Not danger. |
| M2 | I 176 | (0.3) division and (0.5)–(0.6) | R ρ = Σ ρ(Z″, V)·∫ρ(Z, V)/∫ρ(Z″, V); then "we write a polymer expansion, and then we exponentiate it". | Danger class by type: a division whose non-vanishing is printed only from positivity. This is the abstract form of (1.100) (I p. 201) and (1.1) (II p. 356), whose denominators are source-free with the constant g_k. So it reduces to (D-iii). L1_E should cite (0.3) under (D-iii). |
| M3 | I 178, 183 | 1/z inside (1.6) and (1.29) | This is the one-link normalization of the gauge-fixing factor. | On the list as (F2) and K-011 under another equation number ("(1.5)–(1.6)"). Covered by the (F2) non-vanishing argument [P]. Only the equation label changes. |
| M4 | I 187–189 | Balaban's own local coupling (g_k^{(n)}(·))^{−2} in the preliminary integrations | p. 187: "the term with the difference (g_k^{(n)}(·))^{−2} − g_j^{−2} is put into the interaction". (1.60) on p. 189: A(1/(g_k^{(n)}(·))² − g_j^{−2}, ·) vertices. (1.62): C^{(n+1)}_k = log(∫ of (1.60)) + A(1/(g_k^{(n+1)}(·))² − 1/(g_k^{(n)}(·))², U^{(n+1)}_k). | NOT on the L1_E list by page. F1 enters here: the sourced weight replaces (g_k^{(n)}(·))^{−2}. The vertices are (S-d)/(S-e) type, and the sup of the coefficient picks up δ_r. The logarithm in (1.62) is computed by the Sect. 3 [III] cluster expansion as localized terms ((1.63), (1.70) bound \|C_k^{(n)}(X)\| ≤ C_0 exp(−(1 + 3β)κd_m(X))), so Lemma J3 applies. Not danger, given T3. These are the CMP 122 I Sect. 1 preparatory integrations behind B20_W4R's "W4-G" [R]. L1_E §5.2 row T8 should cite them by name. |
| M5 | I 188 | E_0^{(j)}(Ω^c_{j+1}\Z″_{j+1}) and z^{(j)} in (1.60) | Normalization constants. E_0^{(j)} "is equal to the constant in the first exponential in (3.15) [III]" (CMP 119 (3.15)). | This is the Gaussian normalization at C_f: (F4)/(D-i) [P given R-016]. On the list by class, not by page. |
| M6 | II 368 | (1.47) | Sup factor (g_k^{−2} + O(k − j))ε_j. | (S-e), an upper bound. Add it next to the p. 364 entry. |
| M7 | II 378 | reversed Faddeev–Popov | Removal of δ_{G_0∩X_i} uses the gauge invariance of the density. | (N3). Not danger. |
| M8 | II 358 | (1.10)–(1.11) | See §1. | Danger class by type. Safe in both constructions of the denominator. It should be named in L1_E §6.4. |

No other sentence on these pages uses "positive" or "real" for a density, a denominator or an integral, apart from I p. 176, II pp. 357, 359, 366, 368, 379–380. (For CMP 122 I, this is the subagent's statement.)

## 5. Result

On CMP 122 I, CMP 122 II pp. 355–380 and CMP 99 p. 392, no estimate in the danger class is left without a route. The danger-class entries by type are I (0.3)/(0.5), I (1.6) 1/z, I (1.62) log, I (1.100), II (1.10)–(1.11) and II (1.74)–(1.75). Each one has a route:
- (D-iii) for the source-free denominators, (F2) for 1/z, Lemma J3 for (1.62), and K-014 for (1.74)–(1.75).
- (1.10)–(1.11) is safe in both constructions: it is source-free, or NEW-4 l. 95 applies [P].

Corrections, all to wording or citations:
- II p. 364: the region is Ω″_j\Ω″_{j+1}.
- II p. 365: the reset formula carries g″_k on Z^c.
- I (0.5): the condition is X ∩ Z″^c ≠ ∅.
- I (0.1): ε²/g² = p² is not printed.
- I (1.5)–(1.6): the weighted factor and 1/z are (1.6) alone. The derived factor exp(−γ_0ε_j²/g_j²) of D3 (vi)(d) is not printed.

There is one inconsistency between files, and it is open. D3 (P4) and NEW-4 put ω into the R-denominator. L1_E (D-iii), B20_W4R and the printed (1.1)/(1.100) have a source-free denominator. L1_E must state which construction is live. The (W6*) result does not depend on the choice.

(W6*) on these pages: the place list is complete up to M1–M8. None of M1–M8 is in the danger class without a route. Grade: [V] for CMP 122 II pp. 355–380 and CMP 99 p. 392. For CMP 122 I the readings are image readings by one subagent. One independent check of I pp. 176, 178 and 187–189 would raise them to the same standing.
