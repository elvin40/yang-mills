# SOURCES_G3 verification

Independent check of SOURCES_G3.md items 1-5. Firewall kept.

## 1. Fixed-B versus fixed-B̃: is the surface term real? [P, num]

Page check, CMP 116 p. 12 (image): (2.3) reads χ^c_{k,P} = Π_{b∈P} χ({|B(b)| ≥ ε_1/g_k}), P ⊂ Y_0^{c*}, under dμ_{C^{(k)}}(B) with g-free covariance. Author's 1.6 CONFIRMED.

Decision. p. 264 asks for smoothness of β_{k+1} as a FUNCTION of g. A derivative of a function does not depend on the integration variables. With B̃ = g_kB the cut is |B̃(b)| ≥ ε_1 (g-free, as HHOL_VERIFY §5 says), and the normalized Gaussian dμ_C(B) becomes the normalized Gaussian of covariance g²C. The Jacobian cancels the normalization. So I(g) is the same function in both variables, and the two derivatives agree.

What differs is the split. Fixed B: ∂_g = bulk (action only) + surface (cut). Fixed B̃: ∂_g = bulk (action) + bulk score term ∂_g log p_{g²C}(B̃) = (⟨B, C^{−1}B⟩ − N)/g, no surface. The surface term in B-variables equals, after integration by parts along the dilation field, the score term restricted to the cut domain. Neither is free: the B̃ route carries an explicit 1/g (the GGAIN §3.2 / SM §4.2 obstruction), which must cancel by centering.

Numerical check [num, python -I, scratch only]: n = 8, ε = 0.3, I(g) = E[1{g|Z| < ε} F(g, g|Z|)], F = cos(1.7x) + gx². Central finite difference, (B-bulk + surface), and (B̃-bulk with score) agree to 10 digits at g = 0.05, 0.08, 0.12 (e.g. −1.09140237625 all three at g = 0.05). The surface term alone is −0.00935, −7.92, −10.28: NOT negligible at moderate t = ε/g.

Conclusion. G3 is not an artifact. It is needed by any proof that differentiates at fixed B, which is GGAIN's route (b) (its Lemmas G1, G2 are B-variable bounds with no 1/g). HHOL_VERIFY's "g-free in B̃" is correct but concerns the holomorphy route (a) on a complex u-disc, where no derivative is taken at fixed B. A B̃-route real derivative would replace G3 by a centred-score estimate; it does not remove the work. Author's 1.7 CONFIRMED in substance; its wording "the surface term is real" should read "real in the fixed-B computation, which is the one GGAIN uses".
## 2. Item 1: the cut and Balaban's alternative (CMP 109 p. 266 image) [V, I]

(2.9) and the "Another possibility … g_k/γ_k ε_1 … γ_k = C log(L^kε)^{−1} … analytic functions of the effective coupling constants … both possibilities in the inductive description" sentence: CONFIRMED verbatim on the image.

γ_k reading. Two literal parses exist. (A) γ_k = C log(1/(L^kε)) ≈ C/(β_0g_k²) under the asymptotic-freedom tie: B-radius ≈ β_0g_k²ε_1/C → 0, large-field gain fails (author's 1.5). (B) γ_k = C/log(1/(L^kε)) ≈ Cβ_0g_k²: B′-radius ≈ ε_1/(Cβ_0g_k) → ∞, the small-field (analyticity) condition fails. The author treats only (A). Both parses fail, for different reasons; a g-free majorant of g_k (e.g. square root of parse (B)) is needed. The conclusion "printed γ_k is not usable as written" stands; the reason is parse-dependent. [I, both]

Exactness. 1.2 says the alternative cut in B "is FREE of g_k". On CMP 109's B′ variable this holds only to first order (B′ is a nonlinear function of g_kB). It is exact only if the alternative cut is placed on B, as in CMP 116 (2.3). Minor correction.

"Route 1 is a redefinition": CORRECTED in wording. It is Balaban's own named option, not ours, but CMP 116 implements the ε_1/g_k cut, and the option's γ_k is not consistent as printed. So adopting it changes the construction that CMP 116 carries out, and needs the compatibility checks the author lists (slot domain, CMP 119/122). Also: a g-free radius in B removes the surface term in the fixed-B route but makes the cut g-dependent in B̃, so it breaks HHOL's single-valuedness argument (HHOL_VERIFY §5 caveat). The two routes want opposite cuts.

Item 1 grade: CORRECTED (surface term real in the fixed-B computation; γ_k failure reason parse-dependent; first-order-only g-freeness on B′).
## 3. Items 2 and 3: surface bound, (2.30), and (Q) (CMP 116 pp. 16–18 images) [V, P]

Side fact [V]: CMP 109 p. 267 writes (2.1) as ∫dB′σ(B′)δ(Q(B′)) with explicit 1/g_k factors, i.e. Balaban's own CMP 109 integral is in the g-scaled variable B′ (cut g-free). CMP 116 then works in B. This supports §1: the variable choice is Balaban's, the function is the same.

Surface formula 2.1: CONFIRMED. Polar coordinates per bond, Fubini over the other bonds; P, Y_0, Z_0 are g-free. My n = 8 run (§1) reproduces −c_n g^{−1}(ε/g)^n e^{−ε²/(2g²)} times F on the sphere (−0.010659 × 0.87724 = −0.009350 at g = 0.05). Residual [check]: the round-sphere form holds for the bonds of P and Y_0^c, whose cut (2.3) is on B. For bonds inside Y_0 the cut χ_{k,Y_0} is inherited from χ_k; if it is on B′ (CMP 109 (2.9)), the surface is a level set of |B′(g_kB)|, a smooth deformed sphere. The bound survives with a Jacobian factor 1 + O(ε_1), but the author's "round sphere" is shown only for P-bonds.

One-bond bound 2.2: algebra CONFIRMED. (ε_1/g²)r^{n−1} = ε_1^{−1}t^{n+1}; sup_t t^{n+1}e^{−t²/(8Λ)} = (4Λ(n+1))^{(n+1)/2}e^{−(n+1)/2} at t² = 4Λ(n+1); remainder e^{−ε_1²/(8Λg²)}; U increasing in g. No 1/g survives.

(Q) against the pages: CORRECTED. Balaban's chain is pointwise: |V_k| sums by (2.20) as quadratic forms in B, R_1–R_3 by (2.21), the cut by (2.22) (which puts ½γ_2‖PB‖² into α_5), then (2.23) is a Gaussian integral over (X, B) jointly, done in (2.24)–(2.25). So the majorant is exp(−½Q(X, B)) with Q a positive form (α_5‖C^{(k)}(Z_0,0)‖ < ½). Two fixes. (i) The B(b)-marginal must be taken from the JOINT (X, B) form. Conditional on X, the B-Gaussian dμ_{C(Z_0,0)} carries the linear tilt −⟨B, Γ_k(Z_0,0)X⟩ and has an X-dependent mean, so a zero-centred bound e^{−|x|²/(2Λ)} fails pointwise in X. Jointly, the unperturbed form is the original dμ_{C^{(k)}} by (2.5), so Γ_bb ≈ C^{(k)}(b,b) block, not "C^{(k)}(Z_0,0) up to factors". (ii) The separate cost e^{a|B(b)|²} is not needed: all B(b)-dependence of the majorant is already in Q (α_4, α_5, γ_2 terms). Take a = 0 and Λ, c_− the extreme eigenvalues of the perturbed bb-block of Q^{−1}. λ_min ≥ c_− then follows from ‖C^{(k)−1}‖ < ∞ plus α_5 small [I; CMP 99/102 not read, as the author says]. With these fixes (Q) is a correct line-level reading.

(2.30) and e^{δκd}: CORRECTED (bookkeeping). (2.30) is on p. 18 as quoted; it gives |Y| ≤ 24M^4d_k(Y) for localization domains. But the decay available in (2.28) is in d_k(Y_0), not d_k(Z_0), and Z_0 may be disconnected. Fix: count bonds as ≤ c_d|Y_0| + |P|. The c_d|Y_0| part goes to the (2.28) decay via (2.30) per component, at cost e^{δκd_k(Y_i)}. The |P| part goes to the (2.31) factor e^{−(1/10)γ_2(ε_1²/g²)|P|} (|P| ≤ e^{|P|}). Alternatively (2.32) gives d_k(Z_0) ≤ Σd_k(Y_i) + 4M^{−4}|Z_0\Y_0| and |Z_0\Y_0| ≤ 2M^4|P| (p. 18), which also closes. The author's one-line "taken from (2.28)" skips this step; result unchanged.

S_χ = c_2A_nD_nε_1^{−1}e^{−ε_1²/(8Λγ²)}: CONFIRMED given the above (sup at g = γ; O(γ^p) for all p; uniform in k, X, volume because it is per polymer).

Item 2 grade: CONFIRMED (bound, numerics, S_χ), with the bond-sum route corrected. Item 3 grade: CORRECTED ((Q) must use the joint (X, B) form; a = 0; c_− still unproved).
## 4. Items 4 and 5: Route 3 page claims and the open list [V, P]

3.2(a) (2.3), p. 12: Π_b(1 − χ^c_b) = Σ_P(−1)^{|P|}Π_{b∈P}χ^c_b uses only χ + χ^c = 1. CONFIRMED.
3.2(b) (2.22), p. 16: for χ̂, χ̂^c_b ≤ 1{g|B(b)| ≥ ε_1/2} ≤ exp(−½γ_2ε_1²/(4g²) + ½γ_2|B(b)|²); χ̂_{Y_0} ≤ 1. CONFIRMED with ε_1 → ε_1/2.
3.2(c) (2.31), p. 18: only the |P| factor and (1/20)γ_2ε_1²/γ² ≥ 4κ are used; ε_1 → ε_1/2 means γ → γ/2. CONFIRMED.
3.2(e) CMP 109 p. 267 (text): "restrictions on B′(b_0(c)), with the constant ε_1 replaced by O(ε_1)". Support bound only. CONFIRMED.
No χ² = χ on these pages: CONFIRMED for pp. 12, 16–18 of CMP 116 and pp. 266–267 of CMP 109. (2.14)–(2.15) on p. 15 were not re-read by me; the author's list (a)–(e) also does not cite p. 15.
3.3 smooth-cut cost: CORRECTED by a factor 2 in the exponent. Shell inner radius r = ε_1/(2g) with the (Q) rate 1/(2Λ) − a gives e^{−ε_1²/(8Λg²)} only for a = 0; with a = 1/(4Λ) it is e^{−ε_1²/(16Λg²)}. With §3 fix (ii) (a = 0) the author's number holds. The claim "only Λ needed, no c_−" is right: the shell mass is bounded by an exponential Chebyshev step, which uses only the upper eigenvalue.

Item 4 grade: CONFIRMED on the checked pages, with the 3.3 exponent caveat. CMP 119/122 unchecked, as stated.

Item 5 (open list and brief corrections): CONFIRMED. Large-field analogue, higher derivatives, and numerical c_−, Λ are open. Per-bond factor ε_1^{−1}t^{n+1}e^{−ct²} is right; the brief's ε_1^{n−2}g^{−n} is wrong (power of ε_1 and of g). Add to the open list: the Y_0-bond cut variable (B or B′, §3) and the c_− lower bound from CMP 99/102. Correction (iii) to the brief is right in effect but its reason should be §1 here: HHOL's g-free cut lives in B̃, where the derivative carries the score term instead.

## 5. Grades
(1) CORRECTED. (2) CONFIRMED (bond-sum step re-routed). (3) CORRECTED. (4) CONFIRMED (3.3 exponent caveat). (5) CONFIRMED (two items added).
