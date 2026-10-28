IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_D2C verification (independent)

Date 2026-10-27. Verifier reads SOURCES_D2C.md and Balaban CMP 109 (PDF pages for key equations).

## 1. (I): gauge fixing and small-field cutoff (PDF pp. 254-256, 266-267 read as images/text)
- (0.15) is exact for every alpha by Haar invariance. (0.16) cutoff eps_0 is coupling independent. [V]
- But (0.17), (0.19): the gauge-fixing weight is 1/g_k^2 of Balaban's running coupling. [V]
- (2.5), (2.9), (2.10): after the change U -> B', the gauge-fixing term (1/g_k^2) Sum 1/2|B'(y,x)|^2 sits in the exponent, and chi_k = Prod_b chi(|B'(b)| < eps_1) restricts ALL components of B', gauge directions included. chi_k is not gauge invariant.
- So the Faddeev-Popov independence of alpha does NOT survive chi_k. Two gauge-fixing weights give restricted integrals that differ by the Gaussian tail of gauge components beyond eps_1: O(exp(-c eps_1^2/g_k^2)).
- Verdict on (2): CORRECTED. (I) is exact only if the sourced construction uses the adapted weight 1/u_k(c) for constant c (then it is literally Balaban at 1/g_0^2 - c). With the reference weight 1/g_k^2 it holds up to an exponentially small (large-field-size) error. The file's step (3)+(4) argument is wrong as stated: coupling-independence of the cutoff set is not enough, because the weight inside the set depends on alpha.

## 2. Sect. 1 domain U_j^c(X, a0, a1) (PDF pp. 262-263 read as images)
- Union of G^c gauge orbits of pairs (U, J). Conditions: (i) U = U'U, U real, |dU - 1| < a0 xi^2 on X, and on each cube of size O(1)LM a local real gauge with U^u = exp(i xi A), |A|, |grad A| < O(1)LMB a0. (ii) U' = exp(i xi A'), |A'|, |grad A'| < a1 on ALL of X (one gauge). (iii) |dU - 1| < a0 xi^2, |J| < gamma_0. (iv) block-averaged fields (1.15)-(1.16). (1.18): |E^(j)(X)| <= E0 exp(-kappa d_j(X)) on this space. (1.19): G^c gauge invariance. [V]
- p. 263 remark [V]: pairs obeying (i)-(iii) with smaller a0', a1' satisfy (iv) (Prop. 9 [15]), so lie in U_j^c.
- Consequence for (D): put the real part U = 1 and U' = exp(i t theta^ax). Then (i) is trivial, (ii) needs |t theta|, |t grad theta| < a1 on X (one gauge, which the axial gauge supplies), (iii) needs the curvature of exp(i t theta) < a0: about |t F| + |t|^2|theta|^2, both small for |t| <= t0 if alpha_2 <= min(a1', sqrt a0'). J = J(U(t)) is analytic in t and needs the Delta-theta bound. So (D) holds with alpha_2 an absolute multiple of min(a0', a1'). Domain gauge invariance is by definition. The per-domain axial gauge is compatible. The only cost: theta^ax grows with diam X, which the file already handles by tau_X <= alpha_2/2 or the exp(-kappa d) trade.
- Note: E^(j) is a function of the pair (U, J); Lemma A must carry J(U(t)) along. This changes nothing in the argument, but the file does not say it.

## 3. (4.14), (4.17)-(4.18) from PDF images pp. 284-285
- (4.13)-(4.14) [V]: constant lambda in g^c gives [lambda, dE(1)/dB] = 0, G semisimple, so dE(1)/dB = 0. This is global colour invariance. The source enters only through gauge-invariant terms, so the same holds for E(.; f) and for D_X. Claim "zero first derivative by colour invariance" CONFIRMED. Carries over to the pair (U, J) because J transforms by R(u).
- (4.17) [V]: |(d_nu B_mu)(x)| < O(1)(alpha_2 + B_3 O(1) M a0)(L^j eta)^2 < a_1 (L^j eta)^2. It bounds the derivative of B, not the curvature. Since |B| ~ L^j eta, F = dB + O(B^2) is also O((L^j eta)^2). Lemma A's hypothesis holds with a_1 -> C a_1.
- (4.18) [V]: |d_lambda d_nu B_mu| < a_1 (L^j eta)^{2+beta}, with 0 <= beta <= beta_0 < 1 (PDF), not 0 < beta < 1 as the file says. grad F <= C a_1 (L^j eta)^{2+beta} follows. The file needs beta > 0 fixed; beta = 0 would make R_X marginal. Minor correction.
- "hold for the field dB also" [V]: complex variations are covered.

## 4. Power count, Lemma A details, cubic term, recursion
- Freezing-error power: Gamma = E0 (M lambda_j rho_1/r)(1+d) e^{-kappa d}; Lemma A(a) factor (tau_X/alpha_2)^2 = C M^2 (1+d)^2 a_1^2 (L^j eta)^4; lambda_j = L^{j-K} = (L^j eta) lambda_k exactly. Product: E0 C M^3 (rho_1/r)(L^j eta)^5 lambda_k (1+d)^3 e^{-kappa d}. (L^j eta)^5 CONFIRMED. Per-X criterion matches Balaban's own count (marginal = (L^j eta)^4 per X after WT, cf. (4.17), (4.22)).
- Lemma A gaps (constants only): (a) a domain of M-cubes can be multiply connected (a ring of cubes). Then non-tree axial links carry holonomies of loops not bounded by plaquettes inside X. For Balaban's global smooth fields they are bounded by a spanning surface: tau_X -> C M^2 (1+d)^2 a_1 (L^j eta)^2. Exponents unchanged; M-powers grow. (b) Staircase paths can leave a non-convex X; use a tree inside X (length <= C M(1+d)).
- Freezing rule: the barycentre b_X can lie outside a non-convex X, so S_X need not lie in X, and P_x for x in S_X then reads links outside X. Fix: S_X := points of X nearest to b_X (still covariant). Cost: |f(x) - c_X| <= rho_1 M lambda_j (1+d) instead of rho_1 lambda_j in (3.5). Exponent 1 kept via e^{-kappa d}.
- Isotropy by index parity: correct (each index must occur an even number of times under sign flips; epsilon excluded).
- Cubic term (4.34) third expression: Section 4.1 asserts, without computation, that the first moment m(x) equals the gauge completion of grad K_f. Not shown. What is true: (3.4) is an identity of gauge-invariant functions, so in any gauge the cubic term is contained in the expansion of Sum (K_f - K^{(f(x))}):P_x + Sum(D_X + R_X), all bounded gauge-invariantly. So the cubic term is the x-variation of A(B_j o f) only modulo these irrelevant terms, not exactly. Claim UNSUPPORTED as an exact cancellation, but not load-bearing.
- Recursion: sign matches (0.20). OK. alpha_f = min(alpha, beta, 1) needs beta > 0 (Balaban p. 288: "with a positive beta").
- h-booking rejection (Sect. 5.3): uses |kappa_X'| <= sup|kappa|/r per step (Cauchy), which is O(1) per step. The one-loop per-X coefficient is c-independent, so the true c-derivative is two-loop size ~ g_j^4, summable. The rejection argument is too crude; the choice h = 0 is still valid. Not load-bearing.

## 5. Grades
(1) CORRECTED (minor: S_X must lie in X). (2) CORRECTED (exact only with adapted gauge-fixing weight; else O(exp(-c eps_1^2/g_k^2))). (3) CONFIRMED with minor corrections (beta>0, J variable, multiply-connected X; (D) holds by Sect. 1 and the p. 263 remark). (4) UNSUPPORTED as exact cancellation; not needed. (5) CONFIRMED (h-rejection reasoning overstated). (6) CORRECTED (ledger must add gauge-fixing weight condition; (4.17)-(4.18) and (D) now [V]; item (4) is not "proved").
