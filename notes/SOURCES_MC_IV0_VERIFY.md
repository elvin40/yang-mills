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
