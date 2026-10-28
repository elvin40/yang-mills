# SOURCES_HBETA_N3 verification

Independent check of SOURCES_HBETA_N3.md. Firewall respected.

## 1. Item (1): normalization [read D3, D3R, FX_O23_VERIFY]
- SOURCES_D3.md l. 33–34: w_0(x) := 1/g_0² − f(x); w_j = w_{j−1} − B_j(f(x))φ_j (1.a). The source is an additive shift of u = g^{−2}. D3R l. 39: "The bound is additive, not multiplicative (V1)." CONFIRMED.
- τ is a shift of u in absolute units. Relative size at scale k is |δw_k|g_k². CONFIRMED.
- FX_O23_VERIFY item 2 says both conventions give the same relative bound. That is loose: τ_add = g_0^{−2}τ_mult, so a fixed τ_mult is a huge τ_add. The author's "additive is the stronger statement" is correct for fixed τ. Minor.
- Pointwise reduction: on the last domain w_k(x) = u_k(f(x)) (+ h_k, booked in d_S, f-independent? see below). δw_k(x) depends only on f(x), ζ(x). CONFIRMED given D2C h ≡ 0 booking. Caveat: D3R l. 75 books h_k with d_S; h_k is a D2 small-field datum and may depend on f non-locally. If h_k depends on f, δw_k picks up δh_k, bounded by 2C_hMρ_1λ_k-type terms (D3R l. 37). The author's "h ≡ 0" (D2C §5.3) removes it; not re-checked.
- Boundary layers: dw_k/dc = v_m − Σ_{j>m} B_j′φ_j, |dw_k/dc + 1| ≤ Σ|B_j′|. CONFIRMED (0 ≤ φ_j ≤ 1).
- Convexity: Q is a rectangle, real f ∈ [−r, r], |ζ| ≤ τ ≤ r ⇒ f + ζ has |Re| ≤ 2r, |Im| ≤ τ. Segment in Q. CONFIRMED.
Grade (1): CONFIRMED (h_k caveat inherited from D2C).

## 2. CMP 109 quotes [V, text layer of balaban/1987_cmp109_rg_approach_I.txt]
- l. 735–738 (p. 264): E^{(j)}(X, g_{j−1}, U, J) "is defined and analytic on the space U^c_j(X, α_0, α_1) … It is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic)". CONFIRMED.
- l. 799: β-function "is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives." CONFIRMED.
- l. 2496–2498 (p. 298): "We write β_j as explicitly dependent on g_{j−1} although it depends also on all preceding coupling constants." CONFIRMED. No bound on that dependence and no complex-coupling estimate appear in these passages.

## 3. Item (2): Lemma N3 rederived
- Power of dβ/du. g = u^{−1/2}, dg/du = −½g³. C¹ in g: dβ/du = −½g³β′(g) = O(g³). If β = b_0 + b_2g² + … (evenness, C²): dβ/du = b_2·d(g²)/du = −b_2g⁴ = O(g⁴). The brief's "O(g²)·(−g⁴) = O(g⁶)" multiplies the SIZE of β − b_0 by d(g²)/du; that is wrong. Settled: O(g³) (C¹), O(g⁴) (even). Along the trajectory u_{K−m} ≥ γ^{−2} + βm: Σg³ ≤ 2γ/β, Σg⁴ ≤ γ²/β converge; Σg² ~ β^{−1}log K diverges.
- Shift recursion. δw_{k+1} = δw_k − [β_k(u + δu) − β_k(u)]; the author integrates v = du/dc along [f, f+ζ] instead. Same content. CONFIRMED.
- Step 0 checked line by line: |(1+s)^{−1/2} − 1| ≤ √2|s| for |s| ≤ ½ (|d/ds| ≤ ½·2^{3/2}); |z − g_r| ≤ √2g_r³|y|; (d) ⇒ z ∈ D(g_r, ρg_r/2); Cauchy |β″| ≤ 8M/(ρ²g_r²); |β′(z)| ≤ C_1 + 8√2Mg_r|y|/ρ² ≤ C_1′ (8√2 ≈ 11.3 ≤ 12); |dz/du| ≤ ½g_r³; Re β ≥ β/2 by (c). All CONFIRMED. The complex correction to ∂_uβ is O(g_r⁴|y|): the "O(g⁴) strip correction" label is right.
- Steps 1–2: Gronwall algebra is field-independent; S_3 with slope β/2 gives 4γ/β; x_C = 2C_1′Aγ/β. CONFIRMED.
- Step 3: |Im u_k(c_t)| ≤ (3/2)τ < Y = 2τ; Re u_K ≥ g^{−2} − 3r − (3/2)τ. Strict, open-closed. CONFIRMED. Identity-theorem transfer of (I): both sides holomorphic on the connected set swept by the vertical segments, equal on the real segment. CONFIRMED given (B-hol).
- CORRECTION 1. "(a)–(d) hold for τ ≤ r ≤ 1 and γ small" is overstated. (a) 3r + (3/2)τ < g^{−2} − γ^{−2} is a condition on r against the gap between final coupling g = g_K and γ. Shrinking γ toward g makes it worse. It is Lemma H's r-condition plus (3/2)τ, not a γ-small condition. (b)–(d) are γ-small conditions (Y ≤ 2). No L-dependent condition beyond the L-dependence hidden in β, C_1, M: CONFIRMED.
- 3/2 is a choice (any 1 + η by x_C ≤ ln(1+η)): CONFIRMED.
Grade (2): CORRECTED (proof correct; condition (a) mis-described).

## 4. (H-hol) with ρ ≤ 1/3 vs Balaban's domains [derived; num check inline]
- Re g^{−2} on |g − x| < ρx. Re g^{−2} > 0 ⇔ |arg g| < π/4 ⇔ ρ < 1/√2. Numerical min of Re(1+s)^{−2} on |s| = ρ: 0.5625 at ρ = 1/3 (= (1+ρ)^{−2}); 0.444 at ρ = ½; 0 at ρ = 1/√2. Author's bound (1−2ρ−ρ²)/(1+ρ)^4 = 0.070 is valid but 8× loose. Tighter elementary bound: (1−ρ)²/(1+ρ)^4 = 0.141. CORRECTION (minor): "fails for ρ ≥ √2 − 1" applies to the author's bound only; the true threshold is ρ < 1/√2.
- Fluctuation domain. Thresholds are fixed by reference couplings (D3 (L0)), so B is real with |B| ≲ ε_1/x. For g = x(1+s), |s| < ρ: |gB| ≤ (1+ρ)ε_1, |Im(gB)| ≤ ρε_1. So U·exp(igB) leaves the real small-field set by an imaginary part ≤ ρε_1 and stretches the real part by (1+ρ). Staying in U^c_j(α_0, α_1) needs about (1+ρ)ε_1 inside the real allowance and ρε_1 ≤ (α_1-type complex allowance). Balaban fixes ε_1, α_0, α_1 under "numerous restrictions" (CMP 109 p. 264); the order of choice is not stated in the read text. So ρ ≤ 1/3 costs a factor 4/3 in ε_1, plausibly absorbable, NOT checked. The quadratic Gaussian part is g-independent after B ↦ gB, so the measure stays positive; vertices scale by |g|^n ≤ (1+ρ)^n x^n.
- Verdict: (H-hol) is consistent with what the construction could deliver, as the author says. It is an input. "(or analytic)" on [0, γ] is not a usable statement (author's point CONFIRMED).

## 5. Items (3), (4), (5)
Item (3) Σg² analysis.
- Pure relative-disc Cauchy: |∂_gβ| ≤ M/(ρg) ⇒ |∂_uβ| ≤ Mg²/(2ρ) = O(1/u). Gronwall bound Π(1 + C/u_j) ≈ (u_0/u_k)^{C/β}, u_0 ≈ g^{−2} + βK. At k = K the relative size τg²(1 + βKg²)^{C/β} → ∞. CONFIRMED. Note: this shows the BOUND diverges, not the true v_K. As a statement that the Cauchy-only route fails, it holds.
- W4 is holomorphy in input activities (radius 2E_0, SOURCES_W4 §1, §4), not in the coupling. Cauchy in c through activities gives O(1/r) per step, not summable (HBETA §4(d), HBETA_VERIFY item 4). CONFIRMED.
Grade (3): CONFIRMED.

Item (4) history form.
- Pure Cauchy |∂_l∂_iβ_j| ≤ 4M/(ρ²x_ix_l): CONFIRMED. With decay only in i the extra term is ~ g_{j−1}²Σ_{l<j}g_l², summing to (2β²)^{−1}log²(u_0/u_K) ~ (log K)². With no decay in i either it is (Σ_{i<j}g_i²)² per step, which sums to O(K). So "≥ (log K)²" is a correct lower bound on the failure rate.
- (H2-hist) algebra: ε″_j ≤ (√2/2)YM_2(Σg_i²a)², Cauchy–Schwarz ≤ AΣg_i⁴a, Σ_j ≤ A²S_4, S_4 ≤ 2γ²/β. CONFIRMED.
- CORRECTION. (H2-hist) is sufficient, not necessary. Steps 1–2 only need (H-hist_C): |∂β_j/∂g_i| ≤ C_1a_{j−1−i} on the complex polydisc P_{ρ/2}(x). The author lists (H-hist_C) as an input in §4 and then derives it from (H2-hist) in §5. Assuming (H-hist_C) directly is the minimal new input; (H2-hist) is one route to it. Column-sum weakening (HBETA_VERIFY item 5) carries over: sup_i Σ_{j>i} sup_{P_{ρ/2}}|∂β_j/∂g_i| < ∞.
- SOURCES_HHIST (H-hist): Lemma HH gives a_m = λ^m, λ = L^{−α} + θ, i.e. decay in the history index, REAL couplings only, reduced to (B2) + (SM). (SM) itself uses Cauchy in an insertion parameter t; extending HHIST's argument to complex g on P_ρ would give (H-hist_C) directly if (B2) holds on the polydisc. Not done by either file.
Grade (4): CORRECTED (needed object is (H-hist_C); (H2-hist) not necessary).

Item (5) obstruction + toy.
- CMP 109 gives neither complex-coupling estimates nor history-dependence bounds (§2 above). CONFIRMED.
- Toy reproduced (python -I, forward shooting by bisection on u_0 to u_K = 16, central difference in c, h = 1e−6): max|v_K + 1| = 0.112, 0.190, 0.223 for K = 50, 500, 5000. Author: 0.111, 0.188, 0.222. CONFIRMED. Caveat: with γ = g = 0.25, x_C = 2C_1′γ/β ≈ 0.5 > ln 1.5, so the toy sits inside the real Lemma H bound (e^{0.25} − 1 = 0.28), not inside Lemma N3's stated conditions. Algebra check only.
Grade (5): CONFIRMED.

## 6. Can N3 be avoided? [FX_O23 §4 l. 34–51, FX §6.3]
- Choice A (f-independent (1.100) denominator, via (1.102)) removes N3 from the ratio. FX_O23 l. 51: N3 is then "only for the moved term". The moved term bound uses |d_S(f + ζ)| ≤ 2r + τ-type sup bounds, which is N3 in another form (|d_S(f+ζ) − d_S(f)| = |δw|). So choice A moves N3; it does not remove it.
- O3 Step 1 (θ′ = (3/2)τγ² modulus domination inside T′) needs |δw_k| on complex ζ for every choice. Any K-uniform constant C would do; 3/2 is not load-bearing. A non-uniform bound does not do (§5 item 3).
- Real-f only route. (FX2) is a holomorphy radius in the source (FX §6.3); OS regularity uses it for Gevrey bounds via Cauchy. A real-f replacement needs bounds on d^n u_K/dc^n uniform in K with m-growth of Balaban's C_m = sup|β_j^{(m)}|. Balaban gives C_m < ∞ with no growth rate. Gevrey bounds C_m ≤ C^m m! on [0, γ] with relative radius are equivalent to holomorphy on relative discs, i.e. (H-hol). So the real route needs the same input in another form. N3 is not avoidable this way.

## 7. Summary
(1) CONFIRMED. (2) CORRECTED: proof right; condition (a) is an r-vs-(g_K, γ) gap condition, not "γ small"; dβ/du = O(g³) (C¹) or O(g⁴) (even), not O(g⁶). (3) CONFIRMED. (4) CORRECTED: minimal input is (H-hist_C) on the complex polydisc; (H2-hist) is sufficient, not necessary; HHIST has real decay λ^m only. (5) CONFIRMED; toy reproduced to 3 digits. Minor: Re g^{−2} > 0 threshold is ρ < 1/√2, author's bound 8× loose. N3 is not avoidable by choice A or a real-f route.
