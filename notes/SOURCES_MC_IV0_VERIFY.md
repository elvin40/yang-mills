# SOURCES_MC_IV0 verification

Independent check of SOURCES_MC_IV0.md against CMP 116 pp. 8-11, 16 and CMP 109 pp. 267-268.

## 1. CMP 109 pp. 267-268 (PDF pp. 19-20), 300 dpi images [V]
- (2.10) and (2.12) transcriptions in SOURCES_MC_IV0 §3 match the images, term by term. (2.13) text matches: exponent = P^{(k)} ("expansion of the action -(1/g_k^2)A(U_k(V)) and the measure in (2.1)") + the curly bracket.
- The curly bracket in (2.12) is only E_k(U_k(exp i[g_kCB - hD(g_kCB)]V)) - E_k(U_k(V)). No log sigma, no Jacobian. CONFIRMED.
- Tr log(I - h(dD/dB)(g_kCB)) and log sigma(g_kCB - hD(g_kCB)) have prefactor 1. Both are outside the bracket, so in P^{(k)}. CONFIRMED.
- Five terms with 1/g_k^2: <H_1 hD_3(g_kCB), J>, G_3(g_kB), <H_1 g_kCB, Delta_1 H_1 hD(g_kCB)>, <H_1 hD(g_kCB), Delta_1 H_1 hD(g_kCB)>, V(H_1(g_kCB - hD(g_kCB))). Count = 5. CONFIRMED.
- D is fixed by LQB - D(B) + C(B - hD(B)) = LQB (p. 267). This equation has no g. So D, h, and the Jacobian are g-free functions of their argument. Every argument is g_kCB = C B~ (G_3 prints g_kB). So in B~ units: (a), (b), (c) are u-free; each of the five is u*f(CB~). Affine in w. CONFIRMED.
- sigma: p. 267 prints only "dB' sigma(B') delta(Q(B'))" and "the factors sigma_0 are included into N'_k". The page does not say "Haar". Reading sigma as the density of the group measure in the B' chart (U = exp(iB')V) is standard and consistent, but it is [I], not [V]. Grade: plausible, not printed.
- Not shown on these pages: that delta(QB) after scaling B = g_kB' gives only a constant g-power. It is a linear delta, so the factor is constant and goes to N''_k. Agrees with claim (2) last clause [I, standard].
- Minor: MC_IV0 R1 says Tr log starts at second order. D starts at quadratic order, so dD/dB starts at linear order and Tr log has a possible linear term. p. 10 says first-order terms vanish in total; R1 is not used for w-dependence. No effect on (I-V0).
## 2. CMP 116 pp. 8-9, 300 dpi images [V]
- p. 9 Lemma 1 (1.33)-(1.36): transcription in MC_IV0 §2 matches. The bracket = "the second expression in the fluctuation field action in (I.2.13)" = E_k difference only. CONFIRMED.
- (1.36) and (1.29) carry the prefactor E_0 eps_1 to the first power. Linear in E_0. CONFIRMED.
- Domain (1.34): |B| < eps_1 g_k^{-1}, i.e. |B~| < eps_1 in B~ units. w-free. Supports the claim.
- (I-lin) on p. 8: the operations are the s-expansion (1.10) applied to each term of E_k, Cauchy bounds, and sums over box_0, Y_0, j, X. All are linear in the function E_k. The bound uses E_k only through its sup on the analyticity domain. So scaling E_k by c scales (1.36) by c.
- Caveat on (I-lin): p. 8 treats E_k term by term by its Part I structure: last term of (I.3.34), the remaining (I.3.34) terms, (I.3.7)/(I.3.15) built from H_j, (I.3.21). The bound for each uses inequalities from Part I ((I.4.5), (I.4.22), (I.3.17), ...), not one generic activity norm. So "inputs in the ball cE_0" must mean: each structural piece of E_k obeys its Part I bound times c. Linearity then holds piece by piece. This is a definition of the input ball, not a gap. Grade (I-lin): mild, CONFIRMED as mild.
## 3. CMP 116 pp. 10-11, 300 dpi images [V]
- p. 10: P^{(k)} is "the first term in the fluctuation field action in (I.2.13)". "the factor 1/g_k^2 at many terms" (many, not all): consistent with Tr log and log sigma lacking it. CONFIRMED.
- p. 10 (1.38)-(1.40): (1/g_k^2)V(H_1B') is expanded to second order in B'; zeroth and first order vanish; coefficient bound (1.40) is prop. to |B'|, then |B'| -> C_1 eps_1. In B~ = xB units the term is u*f(xB) = w*x^{-2}f(xB); the second-order remainder gives w*<Q B, B> with Q obeying (1.40) at real x. Affine in w, real-domain coefficient. CONFIRMED.
- p. 11: "can be done in the same way for all terms in P^{(k)} ... same decompositions and bounds, possibly with other absolute constants" and "Our last step is to sum up all the expressions with the same localization domain". So separate localization with own constants is printed, and the sum comes last. Claim (2) "localized separately with their own constants" CONFIRMED [V].
- Lemma 2 (1.41)-(1.43): Q bounded by (1.43), V''_k by (1.36). Matches MC_IV0 §3.
- (1.43) is not prop. to E_0; it is C_3 eps_1 .... The w-factor on Q is absorbed only through the tau-radius (2.18), not through (1.43) itself. Check in §4.
- Note: the u-free terms (a) Tr log, (b) log sigma go into Q (or V'') with factor 1. The page does not say which. Either way the factor is 1 <= lambda_V. No effect.
## 4. CMP 116 pp. 16-17, 300 dpi images [V]
- (2.18)-(2.20) are on p. 16; (2.23)-(2.26) on p. 17. MC_IV0's page note is right.
- (2.18): 1/|tau(Y)| = E_0 eps_1 C_1 alpha_4^{-1} M^q e^{C_2 kappa_1} e^{-(1-3delta)kappa d_k(Y)}. Linear in E_0. Side conditions printed: (1/8)(kappa_1-1) >= (1-3delta)kappa, C_3 <= E_0 C_1, q >= 8.
- |tau|*(1.43) = alpha_4 (C_3/(E_0C_1)) M^{4-q} * decay: eps_1 cancels. With E_0 -> lambda_V E_0: |tau'| * lambda_V * (1.43) = |tau| * (1.43) exactly; |tau'| * c * (1.36) <= |tau| * (1.36) since c <= lambda_V. The side condition C_3 <= lambda_V E_0 C_1 is weaker than Balaban's. So (2.19)-(2.20) hold verbatim. CONFIRMED.
- (2.26) Cauchy factor prod_Y 2E_0 eps_1 C_1 alpha_4^{-1} M^q ...: linear in E_0 and in eps_1. With (lambda_V E_0, eps_1/lambda_V) it equals Balaban's. CONFIRMED.
- Not covered by this shift: the cut factor exp(-(1/2)gamma_2 eps_1^2 g_k^{-2}|P|) in (2.26) is quadratic in eps_1. With eps_1' it loses a factor lambda_V^2 in the exponent. That is MC §7.2/§8.5 (gamma' = gamma/lambda_V) and belongs to (I-eps), not (I-V0).
- Constant Jacobians: N''_k = the integral at U_{k+1} = 1 is printed (p. 268). The scaling B = g_kB' gives a B-independent g-power with the same mode count at U and at U = 1, so it cancels in N''_k. The U-dependent, B-independent determinants (C, delta elimination) sit in Z^{(k)}(U_{k+1}) and are g-free. Claim CONFIRMED [I for the mode-count step, standard].

## 5. Grades
(1) CORRECTED (minor). Bracket = E_k difference only, w-free, linear in inputs: CONFIRMED [V]. log sigma and Tr log in P^{(k)} with no 1/g_k^2, w-free in B~ units: CONFIRMED [V]. "sigma is the Haar density": the page prints only dB' sigma(B') and "sigma_0 into N'_k"; the Haar reading is [I], not printed. Tag must change from [V] to [I]. No effect on w-dependence.
(2) CONFIRMED. Five 1/g_k^2 terms, each u*f(CB~), affine in w, |w| <= 1.235; separate localization with own constants printed on p. 11; one shift E_0 -> lambda_V E_0 with eps_1' = eps_1/lambda_V restores (2.19), (2.20), (2.26); constant Jacobians cancel. Side note: MC_IV0 R1 "Tr log starts at second order" is not supported (D quadratic gives a linear term in dD/dB); R1 is not used.
(3) CONFIRMED. Misfiling in MC §8.1 and HHOL 1.1 is real; G carries 1/g_k^2 in (2.10) and (2.12), so G is in Phi_1; (2.18)-(2.20) are on p. 16.
(4) CONFIRMED. Remaining: (I-eps), (I-ord), (M1). (I-lin) is mild: p. 8 bounds E_k piece by piece with Part I inequalities, so the input ball cE_0 must be defined per structural piece of E_k; linearity then holds.
(I-V0) status: CLOSED, modulo (I-lin) (mild, definitional) and (I-hist) (separate item).
