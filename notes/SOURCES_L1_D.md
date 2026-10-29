# SOURCES_L1_D — four class-(b) items of OPEN_ITEMS_SWEEP: S-54, S-56, S-68, S-52

Date 2026-10-28. Derivation file (Opus). No existing file was edited. PLAN.md was not touched. sync.sh was not run.
FIREWALL kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every search.
Ids follow IDS.md. Older files quoted here use old ids; the mapping is IDS.md (A7 = R-008, A10 = R-010, A23 = R-020, A5 = R-006, B7 = R-031).

## 0. Scope, sources, tags

Targets (OPEN_ITEMS_SWEEP class (b)):
- S-54 (R-008): the complex-s clause (|s(Δ)| ≤ e^{κ_1}) and the complex-U clause of ‖C*Δ_kC‖ ≤ γ_1 and its decay. Status before: P-sketch.
- S-56 (R-010 residue R2): the R-terms and C-terms of the CMP 116 step, written out.
- S-68 (R-020 residue R3): Balaban's assertion that H′(Z_0) obeys CMP 116 (2.38).
- S-52 (R-006 residue N6): the off-trajectory sup induction for E_0-uniformity, through N7 and H-040.

Files read: TRUST_LEDGER rows R-006, R-008, R-010, R-020, R-031, K-046 and the dated addenda; OPEN_ITEMS_SWEEP rows S-52, S-54, S-56, S-68, S-85; SOURCES_A7_CDC + VERIFY; SOURCES_A10_LOWER + VERIFY; SOURCES_A23_TSTEP + VERIFY (grep); SOURCES_SWEEP_G §4 and SOURCES_SWEEP_AFG_VERIFY §4; SOURCES_T2_H0 §6–§7 + VERIFY (N6, N7 lines); SOURCES_CTR_RESIDUE §1–§3 + VERIFY; SOURCES_CTR_VERIFY (E_0 lines); SOURCES_T2_B7_CLAMP §2–§3 (slot definition); SOURCES_SRULE_CONVENTION §1–§2 + VERIFY (grep); SOURCES_A8_POS (G1)–(G4) + VERIFY (grep); WC_FULL §0, §4–§6 (grep); A1_WALK_FULL (B3), (H4) (grep); SOURCES_ORDER_CANON N-090, N-270, N-310 (grep); SOURCES_G3_N2_VERIFY V5.

Page images read for this file (pdftoppm -r 150, fresh folder /tmp/l1d_img, deleted at the end):
- CMP 116 pp. 3, 5, 7, 8, 9, 13, 14, 15, 16, 17, 18, 19, 20 (p. 4 rendered, not needed; p. 21 rendered, text checked against SOURCES_CTR_RESIDUE §2.2 only).
- CMP 109 pp. 259, 260, 263, 264, 271, 273, 274, 290, 291, 298 (p. 272 rendered and read through the text layer only).
- CMP 102 p. 308 ((185)–(190), Proposition 9 context).
- CMP 119 pp. 274, 277, 278.

Tags. [V] read on a page image in this session (or quoted from a file that read the image; the file is named). [P] proved here. [P-sketch] proved here at the level of detail of the cited printed argument. [R] reduced to a named printed statement. [I] a reading or an input that is not proved.

Common notation. σ_0 = the family of s-cubes; ℓ := side of a σ_0-cube; loc(λ) := ∪_iX̃_i^5 for a label λ with domains X_0, …, X_n; m(λ) := number of σ_0-cubes met by loc(λ); π_λ(s) := Π over those cubes of s(Δ) (K-046: one factor per distinct cube). d(λ, b, b′) := length of a shortest tree that meets b, b′ and every domain of λ (A8 (G2), WC 4.2).

## 1. S-54 (R-008): the complex-s and complex-U clause

### 1.1 Page facts [V]
- CMP 116 p. 3 (image): "for a random walk ω localized in X̃_0^5 ∪ X̃_1^5 ∪ ··· ∪ X̃_n^5 we take the {Δ_1, …, Δ_m} of all cubes from σ_0 which intersect this localization domain, and we multiply the term in (1.6) corresponding to ω by s(Δ_1)···s(Δ_m)". The X_j are "unions of connected families containing several cubes from π_k(1), i.e. of the size M_1 instead of M". In Sect. 1, σ_0 = cubes of size M disjoint from the interior of □̃^4.
- CMP 116 p. 5 (image): |s(Δ)| ≤ e^{κ_1}, "κ_1 is a sufficiently big positive number"; (1.11) B_0|X| sup_ω M_1^{−½|ω|}exp(−δ_0d(ω))e^{mκ_1}; "d(ω) is a length of a shortest tree graph intersecting all localization domains of ω, m is the number of the parameters s connected with the walk ω. If m is big enough, for example m > 2^4, then δ_0d(ω) ≥ δ_1mM, for a positive constant δ_1 depending on δ_0 only, and we can bound the expression under the supremum in (1.11) by 1, for δ_1M ≥ κ_1. If m ≤ 2^4, then … bounded by e^{16κ_1} only."
- CMP 116 p. 13 (image): in Sect. 2 the s-cubes are "cubes from π_{k+1}, i.e. cubes of the size LM", disjoint from the interior of Z̃_0 (or Z′_0). "The parameters s(Δ) … are introduced into the operators as before." (2.7) is the split of (C*Δ_kC)^{−1/2} at γ_1. p. 14 (image), (2.8): the s-versions enter as C^{(k)}(Z_0, s(Z)), (C^{(k)})^{1/2}(s(Z)), Δ_k(s(Z)), three separate objects.
- K-046 (TRUST_LEDGER, verified round 10): s-versions are defined on the project expansions with one factor per DISTINCT σ_0-cube met by loc(λ). For A_exp(s) = C*Δ_k(s)C the labels are the W_N trees of WC 4.2, with C, C* counted as local factors (SOURCES_SRULE_CONVENTION 1.2(a)). Products of s-versions are not reweighted (1.2(g)). (C^{(k)})^{1/2}(s) is the WC 5.5 resolvent-walk object (1.2(d)), not the (2.7) power series.

### 1.2 Inputs
- (W) WC_FULL Prop. W_N (4.2): at real regular U, A_exp = Σ_ωA_ω, |A_ω(b, b′)| ≤ B_Aρ_A^{|ω|}e^{−δ_Ad(ω, b, b′)}, and Σ_ω ≤ 2B_Ae^{−δ_A|b−b′|} when C′_𝒟c_1ρ_A ≤ ½. The count C′_𝒟 is combinatorial (consecutive domains meet), so it does not use the decay factor. [P in WC_FULL, relative to its inputs W_G1 [R], A1-W [C], I2, I9]
- (W″) WC_FULL 6.5–6.6: the same tree set and domains at complex U ∈ 𝒰(α″), factors analytic in U, constants B_A″, ρ_A″, δ_A″, and the count C_𝒟 in the Schur bound. [P in WC_FULL given its complex inputs]
- (B3) A1_WALK_FULL: every domain X of an A1-W or WG-G1 tree has diam X̃^5 ≤ c_XM_1. A local factor of W_N (C, C*, a·I, 𝒢*𝒢, the J vertex) has one M_1-cube neighbourhood as domain (WC 4.1(a)), so diam X̃^5 ≤ 13M_1. Put r := max(c_X, 13)M_1. [V via the files]
- Canon N-310 entry P12: M/M_1 > 3(6 + c_X); N-090: κ_1 is fixed before M_1 and M. [V canon text]

### 1.3 Lemma C (cube count) [P]
Let ℓ be the side of the σ_0-cubes, and r ≤ ℓ/4. Let λ be a label whose domains have diam X̃_i^5 ≤ r, and put D := d(λ, b, b′). Then
 (i) m(λ) ≤ 3^d(1 + 2D/ℓ);
 (ii) if m(λ) > 2^d, then D ≥ m(λ)ℓ/(4·3^d).
Proof. (i) Let T be a shortest tree for (λ, b, b′). T meets every X_i, so loc(λ) lies in the sup-norm r-neighbourhood N_r(T). A depth-first traversal of T is a closed walk of length 2D. Cut it into at most 1 + 2D/ℓ arcs of length ≤ ℓ (one arc if D < ℓ/2). Each arc has sup-diameter ≤ ℓ, so its r-neighbourhood has sup-diameter ≤ ℓ + 2r ≤ 2ℓ. In each coordinate an interval of length ≤ 2ℓ meets at most 3 of the half-open grid intervals of length ℓ. So each neighbourhood meets at most 3^d cubes, and m(λ) ≤ 3^d(1 + 2D/ℓ).
(ii) If in every coordinate the projection of loc(λ) met at most 2 grid intervals, then loc(λ) would meet at most 2^d cubes. So some coordinate meets 3 intervals, and loc(λ) has extent > ℓ in it. Then T has length D > ℓ − 2r ≥ ℓ/2, so 1 < 2D/ℓ, and (i) gives m(λ) < 3^d·4D/ℓ. ∎
Remark. (ii) is Balaban's p. 5 sentence with threshold 2^d (= 2^4 at d = 4) and δ_1 = δ_0/(4·3^d) when ℓ = M. So the "2^4 is d = 4's 2^d" item of A7 §4.2 and A7_VERIFY l. 40, tagged [I] there, is now [P]. The hypothesis r ≤ ℓ/4 for ℓ = LM (CMP 116 Sect. 2, the case R-008 needs): L ≥ 3 and P12 give LM/4 ≥ (9/4)(6 + c_X)M_1 ≥ max(c_X, 13.5)M_1 ≥ r [P arithmetic]. For ℓ = M (Sect. 1) the same hypothesis needs M/4 ≥ max(c_X, 13)M_1; P12 gives M/4 > (3/4)(6 + c_X)M_1 ≥ c_XM_1, and M/4 ≥ 13M_1 holds when c_X ≥ 12 or else by the extra entry M ≥ 52M_1 [P arithmetic; the value of c_X was not looked up]. Sect. 1 is not part of R-008.

### 1.4 Proposition S-54 [P relative to (W), (W″), (B3), K-046]
Assume (H_s): ℓ ≥ 8·3^dκ_1/δ_*, where ℓ = LM and δ_* := min{δ_A, δ_A″}. For |s(Δ)| ≤ e^{κ_1} on every Δ ∈ σ_0, and U real regular or U ∈ 𝒰(α″):
 (a) |π_ω(s)A_ω(b, b′; U)| ≤ e^{2^dκ_1}B·ρ^{|ω|}e^{−½δd(ω, b, b′)}, with (B, ρ, δ) = (B_A, ρ_A, δ_A) at real U and (B_A″, ρ_A″, δ_A″) on 𝒰(α″);
 (b) Σ_ω|π_ω(s)A_ω(b, b′)| ≤ 2e^{2^dκ_1}B e^{−½δ|b−b′|}, under the unchanged count condition C′_𝒟c_1ρ ≤ ½;
 (c) ‖C*Δ_k(s)C‖ ≤ Γ_1^{s} := 2C_𝒟e^{2^dκ_1}B_A″S(½δ_A″) on 𝒰(α″) (C_𝒟 := 1 at real U, with B_A, δ_A), and the weighted form ‖e^{ρf}A_exp(s)e^{−ρf}‖ ≤ 2C_𝒟e^{2^dκ_1}B S(½δ − ρ) for 1-Lipschitz f and 0 ≤ ρ < ½δ;
 (d) (s, U) ↦ C*Δ_k(s)C is jointly analytic on {|s| < e^{κ_1}} × 𝒰(α″), and equals the operator of (W) at s ≡ 1.
Proof. (a) By K-046, |π_ω(s)| ≤ e^{κ_1m(ω)}. If m(ω) ≤ 2^d, this is ≤ e^{2^dκ_1}, and we keep the full decay. If m(ω) > 2^d, Lemma C(ii) gives κ_1m(ω) ≤ κ_1·4·3^dD/ℓ ≤ ½δ_*D ≤ ½δD by (H_s). In both cases |π_ω(s)|e^{−δD} ≤ e^{2^dκ_1}e^{−½δD}. Multiply the bound of (W) or (W″).
(b) d(ω, b, b′) ≥ |b − b′|, so e^{−½δd} ≤ e^{−½δ|b−b′|}. The sum over ω is the WC 4.2 sum with the same factors ρ^{|ω|}; its count does not use the decay. So the geometric series is the same, ≤ 2.
(c) Schur's test on (b), with the count C_𝒟 of WC 6.6 at complex U. The weighted form: e^{ρ(f(b)−f(b′))} ≤ e^{ρ|b−b′|}.
(d) Each π_ω is a polynomial in s. Each A_ω is analytic on 𝒰(α″) (W″). By (b) the series converges uniformly on compact subsets of the product domain. A uniform limit of analytic functions is analytic. At s ≡ 1 every weight is 1. ∎
The conditions. (H_s) is a lower bound on M, after κ_1 (N-090) and after the walk constants δ_A, δ_A″ (fixed before M_1). So it fits the canon order with no cycle. Its complex part LM ≥ 8·3^dκ_1/δ_A″ is implied by H-125 (H_κ) LM ≥ 16·3^dκ_1/ε″, because ε″ ≤ ½δ_A″ (N-310 text). Its real part LM ≥ 8·3^dκ_1/δ_A is implied as well if δ_A ≥ δ_A″; I did not check this order of the two rates, so I propose (H_s) as a new N-310 entry (it adds no edge). Lemma C needs r ≤ LM/4, which holds (1.3 Remark).

### 1.5 What the complex-s clause does not need
(i) No M_1 condition. The A7_VERIFY item "per-piece s-multiplicity needs M_1 large after κ_1" comes from a per-piece weight on concatenated terms. Under K-046 a W_N tree carries one factor per distinct cube, so a cube met by several domains of one tree gets s(Δ) once (SRULE 1.3(i)), and Lemma C counts distinct cubes. A product of p separate s-versions (SRULE 1.2(g); e.g. Γ_k(Z_0, σ) = C*Δ_k(σ)C·Z_0^c·(C^{(k)})^{1/2}(σ), p = 2) gets the product of the p bounds, a fixed factor e^{p2^dκ_1}. No consumer takes products with a number of factors that grows with the walk length. So the canon N-270 entry "the R-008 complex-s clause" (M_1 large after κ_1) is not needed. It is harmless to keep.
(ii) No (2.7) power series at complex s. By K-046 (d), (C^{(k)})^{1/2}(s) is the resolvent-walk object of WC 5.5. If a reader wants the (2.7) series Σ_nγ_1^{−n−½}(C*Δ_k(s)C)^n at complex s anyway, (c) gives absolute convergence for γ_1 > 2e^{2^dκ_1}B_AS(½θ′δ_A), by the proof of A7 §3.3 with K → 2e^{2^dκ_1}B_A, δ → ½δ_A. Then γ_1 depends on κ_1. This is harmless: γ_1 is only the split point of (2.7) and enters no other condition. The sum of this series is not claimed to equal the K-046 object off s ∈ {0, 1}^{σ_0}.
(iii) No Hadamard or two-constant step. Analyticity in s comes term by term (d).

### 1.6 Grade and residue
S-54: CLOSED. The complex-s and complex-U clause of R-008 is [P] relative to (W), (W″), (B3), K-046 and the new M entry (H_s) (implied by H-125 in its complex part). The two [I] items of A7 §4.2 are removed: the 2^d threshold is Lemma C(ii) [P]; "κ_1 before M" is canon N-090 [V canon]. R-008's residue is then that of its real part (C2, A3-R4, I1, I3 for the norm; W_G1, A1-W, I2, I9 for the decay) and WC_FULL's complex inputs (Th3.4, complex walk form of G, (C) for G and G_1), unchanged.

## 2. S-56 (R-010 residue R2): the R-terms and the C-terms written out

### 2.1 Page facts [V]
- CMP 109 p. 271 (image): split (3.5) X ∩ (□̃²)^c ≠ ∅ or X ⊂ □̃²; (3.7) the far term; (3.8) δH_j := ⟨(δH_j/δB)(B(t)), ⟨(δQ_j/δA)(ηtH_k(B′)), L^jηζ_□H_k(B′)⟩⟩; "The derivative (δ/δB)H_j is an exponentially decaying function, with the decay rate δ_0 on the ξ-scale, see Proposition 9, (190) [15]"; (3.9) |δH_j| ≤ B_3exp(−½δ_0dist^{(ξ)}(X, □) − ½δ_0M(L^jη)^{−1})·2L^jη|ζ_□H_k(B′)| on X, "and the same for derivatives and the second order operators applied to it".
- CMP 109 p. 273 (image): (3.15) the t_□-derivative as (1/2πi)∮_{|t_□|=r}dt_□t_□^{−2}E^{(j)}(X, …), with r·max{|δH_j|_X, |P_1δH_j|_X, |∇^ξ_UδH_j|_X, |Δ^ξ_UδH_j|_X} = ⅓α_2; "We assume also that ε_1 is so small that H_j(B(t)) satisfies (3.14) with ⅓α_2"; (3.17) |(3.15)| ≤ (1/r)E_0exp(−κd_j(X)) ≤ E_0exp(−κd_j(X))6α_2^{−1}L^jηB_0B_3exp(−½δ_0dist^{(ξ)}(X, □) − ½δ_0M(L^jη)^{−1})|ζ_□H_k(B′)|.
- CMP 109 p. 274 (image): (3.21) splits E^{(j)}(X, U_j(□_0, exp iQ(ξH_j(B_□))M′(U_{k+1}))) into the ζ̃_□B_□ term plus ∫_0^1dt̃ (d/dt̃_□)E^{(j)}(X, exp iξ[H_j(□_0, W(t̃)) + t̃_□⟨(δH_j/δB)(□_0, W(t̃)), (1 − ζ̃_□)Q(ξH_j(B_□))⟩]U_{k+1})|_{t̃_□=0}, with W(t̃) := (t̃(1 − ζ̃_□) + ζ̃_□)Q(ξH_j(B_□)), ζ̃_□ = 1 on □̃³, 0 outside □̃⁴. "From the exponential decay of the derivative (δ/δB)H_j, and from the condition dist^{(ξ)}(X, supp(1 − ζ̃_□)) ≥ M(L^jη)^{−1}, we obtain a bound of the type (3.9) for the expression ⟨…⟩ … small factor O((L^jη)^N), and we treat this term in exactly the same way as the terms (3.7) before, i.e. constructing the analytic extensions and proving the bounds (3.17)." (3.22): ζ̃_□B_□ = [ζ̃_□Q_j(η(t + t_□ζ_□)H_k(B′)) − Q_j(η(tζ̃_□ + t_□ζ_□)H_k(B′))] + B̃_□; "We remove the expression in the square brackets […] repeating the procedure in (3.21). The expression is localized in □̃⁴∖□̃³, and the term corresponding to the second term in (3.21) has a very similar form and the same properties".
- CMP 116 p. 9 (image): "The expression in (I.3.21), given by the last integral, is expanded and analyzed in almost the same way as the last term in (I.3.34), so we do not repeat these considerations."
- CMP 116 p. 7 (image): (1.21) |H_k(s(Y_0), B′)| ≤ 4B_0C_1e^{16κ_1}g_k|B|, uniform in |s| ≤ e^{κ_1}; on the circle (1.22), 1/|t_□| = 8B_0C_1e^{16κ_1}α_2^{−1}g_k|B|, (tζ̃_□ + t_□ζ_□)H_k obeys (I.3.31) with ½α_2; (1.23) the Cauchy representation in t_□ and σ(Δ); (1.25) exp(−⅛(κ_1 − 1)d_k(Y) + ⅛κ_1d_k(□_0) − ½(κ_1 − 1)M^{−4}|Y_0∖□̃⁴|). p. 8 (image): (1.26) Σ_{X∈D_j, X⊃□′}exp(−κd_j(X)) ≤ O(1); the □′-count (6L)^4 for p = 5; (1.27) Y_0-sum ≤ e; (1.28) □_0-sum ≤ exp((1/16)(κ_1 − 2)d_k(Y)); (1.29).
- CMP 102 p. 308 (image): (190) bounds δ𝓗_μ(B, x)/δB_ν(y′), its covariant derivatives, D*D and Δ applied to it, by O(1)[(L^jη)^{−1}, (L^jη)^{−2}, …](L^{j′}η)^{−d}exp(−⅛δ_0d(y, y′)). The rate ⅛δ_0 of CMP 102 is the "δ_0" of CMP 109 p. 271 after renaming; nothing below depends on the name.
- CMP 109 p. 291 (image): (4.38) "β_j(g_{j−1})(A(U_j(exp iB′V^{(k)})) − A(U_k(V^{(k)})))"; "We localize it by the partition of unity connected with the partition π_j, and we apply to it the whole procedure of these two sections. As a result we obtain all the well controlled terms, and the terms in (4.34) with the function E^{(2)} replaced by the corresponding function calculated for the expression (4.38)"; (4.39) that function is β_j(g_{j−1})⟨δ²/δH²Σ_{x,μ<ν}ζ_□′(x)[1 − Re tr(∂exp iξH)(p_μν(x))]|_{H=0}, H_j(□_0), H_j(□_0)⟩ = β_j⟨∂^ξH_j(□_0), ζ_□′∂^ξH_j(□_0)⟩, □′ ∈ π_j; (4.40)–(4.44).
- CMP 109 p. 298 (image): "Defining the function β_j as equal to the coefficient β in (5.43), we see that the first expression there is cancelled by the first expression in (4.42). The second term on the right-hand side of (4.34) is equal to (4.44), and is cancelled by this expression. The third term is equal to 0."
- CMP 109 p. 260 (image): (1.3) carries the counterterms as −β_{j+1}(g_j)A(U_k) for j = 0, …, k − 1, all at the level-k configuration U_k.

### 2.2 The R-term: the inner bound [P-sketch, relative to (R-dec) and (R-dom)]
Notation. Fix j ≤ k, a cube □, and X ∈ D_j with X ⊂ □̃². Write f_□ := (1 − ζ̃_□)Q(ξH_j(B_□)), supported outside □̃³, and δH_j^R(t̃) := ⟨(δH_j/δB)(□_0, W(t̃)), f_□⟩. For fixed t̃ the integrand of the R-term is F_t̃′(0), where F_t̃(z) := E^{(j)}(X, exp iξ[H_j(□_0, W(t̃)) + zδH_j^R(t̃)]U_{k+1}). So the R-term is ∫_0^1F_t̃′(0)dt̃.
Inputs.
 (R-dec) Kernel decay: |(δH_j/δB)(□_0, W)(x, y)| and the same kernels with P_1, ∇^ξ_U, Δ^ξ_U applied are ≤ B_3e^{−δ_0d^{(ξ)}(x, y)}, for W in the field class of B(t) (complex included). [R: CMP 109 p. 271 sentence + CMP 102 (190) [V]; at complex arguments this is R-019]
 (R-dom) H_j(□_0, W(t̃)) obeys (3.14) with ⅓α_2 for t̃ ∈ [0, 1], and also on the t_□-circle (1.22) and for |s| ≤ e^{κ_1}. [R: the p. 273 assumption "ε_1 so small that H_j(B(t)) satisfies (3.14) with ⅓α_2", applied to W(t̃); W(t̃) is a pointwise convex combination of Q(ξH_j(B_□)) and ζ̃_□Q(ξH_j(B_□)), so it obeys the same field bounds [P]]
 (geo) dist^{(ξ)}(X, supp f_□) ≥ M(L^jη)^{−1} [V, p. 274].
Step 1 (the response is small). For x ∈ X, split e^{−δ_0d} = e^{−½δ_0d}e^{−½δ_0d} and use d ≥ M(L^jη)^{−1} from (geo):
 |δH_j^R(x)| ≤ B_3e^{−½δ_0M(L^jη)^{−1}}Σ_ye^{−½δ_0d^{(ξ)}(x,y)}|f_□(y)| ≤ B_3S_0e^{−½δ_0M(L^jη)^{−1}}b_R,
with S_0 := sup_xΣ_ye^{−½δ_0d^{(ξ)}(x,y)} (a d-dimensional lattice sum) and b_R := sup|f_□|. The same holds for P_1δH_j^R, ∇^ξ_UδH_j^R, Δ^ξ_UδH_j^R. [P given (R-dec), (geo)]
Step 2 (Cauchy, as (3.15)). Choose r_R by r_R·max{|δH_j^R|_X, |P_1δH_j^R|_X, |∇δH_j^R|_X, |ΔδH_j^R|_X} = ⅓α_2. For |z| ≤ r_R the field H_j(□_0, W(t̃)) + zδH_j^R obeys (3.14) with ⅔α_2 < α_2 (by (R-dom)), so F_t̃ is analytic there and |F_t̃| ≤ E_0e^{−κd_j(X)} by (1.18) through (3.13)–(3.14) (CMP 109 p. 272 "the function (3.13) satisfies the inequality (1.18)"). Cauchy: |F_t̃′(0)| ≤ E_0e^{−κd_j(X)}/r_R. [P given (R-dom)]
Step 3 (integrate t̃). With Step 1:
 |R_j(X, □)| ≤ K_RE_0e^{−½δ_0M(L^jη)^{−1}}e^{−κd_j(X)},  K_R := 3α_2^{−1}B_3S_0b_R.   (R-in)
b_R is bounded by the field class of B(t) under (R-dom); every factor is fixed before ε_1. (R-in) is the (3.17) form with dist(X, □) → 0 and the factor 6α_2^{−1}L^jηB_0B_3|ζ_□H_k| → K_R. It is linear in E_0. ∎
The second removal (3.22). Put Δ_□ := ζ̃_□B_□ − B̃_□, supported in □̃⁴∖□̃³ [V, p. 274], and R′_j(X, □) := E^{(j)}(X, U_j(□_0, exp iζ̃_□B_□M′(·))) − E^{(j)}(X, U_j(□_0, exp iB̃_□M′(·))) = ∫_0^1du (d/du)E^{(j)}(X, U_j(□_0, exp i(B̃_□ + uΔ_□)M′(·))). The u-derivative is the response of U_j(□_0, ·) on X to a field supported at ξ-distance ≥ M(L^jη)^{−1} from X. Its linearization is the same H_j-type kernel. So Steps 1–3 apply with f_□ → Δ_□ and b_R → b_R′ := sup|Δ_□|. [P-sketch, relative to (R-dec) for the U_j(□_0, ·) response; Balaban: "very similar form and the same properties", R]

### 2.3 The R-term: the CMP 116 step and the sums [P given 2.2]
The R-terms depend on t_□ through B_□ and on s(Y_0) through H_k(s(Y_0), B′). By (1.21)–(1.22) and (R-dom), (R-in) holds uniformly on the t_□-circle and on |s| ≤ e^{κ_1}. Apply (1.23) (CMP 116 p. 9: R is treated like the last term of (I.3.34)). The Cauchy step in t_□ gives the factor 1/|t_□| (no factor 2: the sup of the R-term on the circle is bounded directly, it is not a difference B(t) − B(0) as in A10 §4.1). The σ(Δ)-circles give exp(−(κ_1 − 1)M^{−4}|Y_0∖□̃⁴|) as in (1.24). So
 |(1.23)_R| ≤ 8B_0C_1e^{16κ_1}α_2^{−1}g_k|B|·K_RE_0e^{−½δ_0M(L^jη)^{−1}}·exp(−(κ_1 − 1)M^{−4}|Y_0∖□̃⁴|)e^{−κd_j(X)}.   (R-T)
The same with K_R → K_R′ := 3α_2^{−1}B_3S_0b_R′ for R′.
Sums, in the order of CMP 116 p. 8:
- X-sum at fixed □, j: X ⊂ □̃², so (1.26) and the □′-count give ≤ O(1)(6L)^4(L^jη)^{−4}.
- j-sum: put y := (L^jη)^{−1} = L^{k−j} ≥ 1. Then y^4e^{−½δ_0My} ≤ (16/(eδ_0M))^4e^{−¼δ_0My}, because sup_{y>0}y^4e^{−¼δ_0My} = (16/(eδ_0M))^4. And Σ_{m≥0}e^{−¼δ_0ML^m} ≤ 2e^{−¼δ_0M} when ¼δ_0M(L − 1) ≥ log 2. [P]
- Y_0-sum ≤ e by (1.27); □_0-sum ≤ exp((1/16)(κ_1 − 2)d_k(Y)) by (1.25), (1.28). These use only the decoupling factor, so they are the same as for the N-types.
Result:
 |Σ_{□_0,Y_0,j,X}(1.23)_R| ≤ E_0ε_1·8B_0C_1e^{16κ_1}α_2^{−1}(K_R + K_R′)(6L)^4O(1)·2(16/(eδ_0M))^4e^{−¼δ_0M}·e·exp(−(1/16)κ_1d_k(Y)).
This is the (1.29) form, with a constant that is smaller than the N5 constant by the factor e^{−¼δ_0M}. Per label j (before the j-sum) the R-part carries (16/(eδ_0M))^4e^{−¼δ_0ML^{k−j}}, which is smaller than any L^{−N(k−j)}. It is linear in E_0 and carries g_k|B| once (pointwise form for GGAIN §5.2). ∎

### 2.4 The C-term (counterterm) [P-sketch, relative to A10 §4–§6 and the inputs (C-a)–(C-c)]
Inputs.
 (C-a) Reading of (4.38) [I]. The page prints A(U_j(exp iB′V^{(k)})) − A(U_k(V^{(k)})). By (1.3) (p. 260 [V]) the counterterm in E_k is −β_{j+1}(g_j)A(U_k), at the level-k configuration for every j. So the difference in the curly bracket is β_j(A(U_k(exp iB′V^{(k)})) − A(U_k(V^{(k)}))); the "U_j" in the first argument is a misprint. After the localization by {ζ_□′}_{□′∈π_j}, Balaban writes the counterterm in the scale-j variables, (4.39) [V]. So the object that the "whole procedure" acts on is the family
 E_C^{(j)}(□′, U) := β_j(g_{j−1})Σ_{x,μ<ν}ζ_□′(x)[1 − Re tr U(∂p_μν(x))],  □′ ∈ π_j,
a polymer family on one-cube domains of scale j. [I: the scale of the x-sum is read from (4.39)]
 (C-b) Bound on β_j [R]. From (1.22), β_j = Σ_xΠ_{j,μν}(x)x_μx_ν. With the decay |Π_{j,μν}(x)| ≤ O(1)E_0e^{−δ_1|x|} (the form printed for Π′ in (5.44) and for the resummation difference in (4.36)), |β_j| ≤ C_ΠE_0, C_Π := O(1)Σ_x|x|²e^{−δ_1|x|} < ∞. C_Π is a power of M because δ_1 = O(M^{−1}); it is fixed before ε_1. [P given the Π decay; the Π decay is R]
 (C-c) N_□′ := the number of plaquettes p with ζ_□′ ≠ 0 on p is an absolute number. [I: depends on the scale reading of (C-a)]
Lemma C1 (the counterterm is an admissible input) [P given (C-a)–(C-c)]. The family E_C^{(j)} has the three properties that A10 §5 ("Linearity") lists as the only uses of E^{(j)} in the N-, F- and R-analyses:
 (i) gauge invariance (1.19): the plaquette trace is invariant under U ↦ U^u;
 (ii) analyticity on U^c_j(□′, α_0, α_1) and on the (4.4) domain at U = 1: each term is a polynomial in the matrix entries of U, hence entire;
 (iii) a sup bound of the form (1.18): on these domains |U(∂p) − 1| is bounded by a constant c(α_0, α_1), so |1 − Re tr U(∂p)| ≤ c_W and |E_C^{(j)}(□′)| ≤ N_□′c_W|β_j| ≤ E_C := N_□′c_WC_ΠE_0. A one-cube domain has d_j(□′) = 0, so this is (1.18) with E_0 → E_C. ∎
Proposition C2 [P-sketch, given Lemma C1 and A10 §4–§6, 2.2–2.3 above]. Run the procedure of CMP 109 Sects. 3–4 and CMP 116 Sect. 1 on E_C^{(j)} in place of E^{(j)}. Then:
 - order 0 is killed by the t_□-derivative, as N0;
 - order 1 is zero: at U = 1, the first variation of 1 − Re tr e^{iF} at F = 0 is −Re tr(iF) = 0 for F in the Lie algebra g, since tr F = 0 for g = su(2) [P]; this is the C-version of (4.14);
 - the marginal parts are (4.42) and (4.44) (p. 291 [V]); they cancel exactly against the first and second expressions of (4.34), by the definition of β_j as the coefficient in (5.43) (p. 298 [V]); the third expression of (4.34) is 0 by Euclidean symmetry (p. 298 [V]); nothing is bounded here;
 - every other term ("all the well controlled terms", p. 291) is one of the A10 types — (4.22)-type, (4+β)-type, tails (4.5), resummation errors (4.35)–(4.36), far terms F, R-terms of 2.2–2.3 — and obeys the same bound as that type with E_0 → E_C, because each type bound uses E^{(j)} only through (i)–(iii) (A10 §5).
Hence, per type T, |(1.23)_{C,T}| ≤ (A10-T) with K_TE_0 → K_TN_□′c_WC_ΠE_0, and the summed form is (1.29) with the type constant K_T^C := N_□′c_WC_ΠK_T. Per label j the decay is that of the type: L^{−β_H(k−j)} at worst (the (4+β_H)-type), and faster for the others. Linearity: β_j = Λ_βE^{(j)} is linear in E^{(j)} (A10 §5), so the C-term moves linearly with the input, and the cancellation of the marginal parts holds for every input change with δβ_j = Λ_β W^{(j)}. ∎

### 2.5 Grade and residue
S-56: WRITTEN OUT. R-010 residue R2 is replaced by:
- R-terms (both (3.21) and (3.22)): [P-sketch] relative to (R-dec) [R: CMP 109 p. 271 + CMP 102 (190); at complex arguments R-019] and (R-dom) [R: CMP 109 p. 273 assumption on ε_1]. Bound (R-T); summed constant smaller than N5's by e^{−¼δ_0M}; per-label decay faster than any power of L^{−(k−j)}.
- C-terms: [P-sketch] relative to (C-a) [I: misprint reading of (4.38) and scale reading of (4.39)], (C-b) [R: decay of Π in the (5.44)/(4.36) form], (C-c) [I], and A10 §4–§6. Type constants K_T^C = N_□′c_WC_ΠK_T; marginal parts cancel exactly [V p. 298].
Consumer effect: none of L-281 (Theorem SM) Fact A, (Eps), F2′, GGAIN §5.2 hop θ_0, L-187 (Lemma HH) changes. Their K_V gains the finite constants K_R, K_R′, K_T^C; α_* = β_H is unchanged (the C-term's worst type is the (4+β_H)-type, the R-terms decay faster).

## 3. S-68 (R-020 residue R3): H′(Z_0) obeys (2.38)

### 3.1 Page facts [V]
- CMP 119 p. 274 (image): (3.37) defines E_0^{(k+1)}(Λ_{k+1}, U_{k+1}, b) as χ(b)[…] + ∫_0^1dt∫dμ_{C^{(k)}(Λ_{k+1})}Π_{b′≠b}χ^{(k)}(tA(b′))(∂/∂t)χ^{(k)}(tA(b))·(∫dμχ_t^{(k)})^{−1} + g_k∫_0^1dt⟨tr V′_k(tg_k, A, b)(CA)(b)⟩_t. "The last expectation value in (3.37)" is the one in the g_k-term.
- CMP 119 p. 277 (image): "The expressions in the expectation values in (3.26), (3.28), (3.37) are expanded and localized in the same way as the corresponding expressions in the actions discussed above." "The integral in the nominator of the expectation value is expanded in the following way. We take the expansion of the integrated function, and we obtain the sum of integrals of the localized terms. In each integral we apply the Mayer expansion (I.7.1). To each term of the obtained sum we apply next the constructions of Sect. 7 [I], described between (7.2) and (7.10) there." (3.44) [the nominator] = Σ_{{Z_0,…,Z_n}}H′(Z_0)·…·H(Z_n); "the domain Z_0 contains the bond b"; "for n > 0 the factors H(Z_i) are the same as in the expansion of the denominator. The factor H′(Z_0) is different; it is given by an integral with the integrand including, as one of the factors, a localized term from the expansion of the integrated function in the expectation value in (3.37). Although different, it satisfies the same bound as the other factors."
- CMP 119 p. 278 (image): (3.45)–(3.47); "The terms of the sum above satisfy the bounds (2.42), with the constant B_0 replaced by O(p_0³(g_k)). … the multiplication by g_k yields small bounds."
- CMP 116 pp. 15–20 (images): (2.14) the term of H(Z) for fixed D, P, Z_0: s-, σ-, t-, τ-integrals, ∫dμ_0(X)|_Z exp(−½⟨Γ_kX, C^{(k)}Γ_kX⟩)·∫dμ_{C^{(k)}(Z_0,σ)}(B)exp(−⟨B, Γ_kX⟩)·(−1)^{|P|}χ_{k,Y_0}(B)χ^c_{k,P}(B)exp[Σ_{Y∈D}τ(Y)V_k(Y, B)]; (2.15) the modulus bound, with the factor Π_{Y∈D}2/|τ(Y)| and the positive measure dμ_{(Re C^{−1})^{−1}}; (2.16)–(2.25) the quadratic forms and Gaussian integrals; (2.18) 1/|τ(Y)| = E_0ε_1C_1α_4^{−1}M^qexp C_2κ_1 exp(−(1 − 3δ)κd_k(Y)); (2.26); (2.27) Σ_{Y∈D}(d_k(Y) + 5) ≥ d_k(Y_0) + 5; (2.28) "Assuming 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1 exp 5κ ≤ 1"; (2.29) Σ_DΠα_6exp(−δκd_k(Y)) ≤ 1 "for κ sufficiently large and α_6 sufficiently small"; (2.30)–(2.34); (2.33) with ε_2 := 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1, "if Y_0 is empty, then we have the exponential factor"; (2.35)–(2.37) with "(L + 2)^4O(1)ε_2 ≤ ½" and "2(L + 2)^4O(1)ε_2 exp 5κ ≤ 1"; p. 20 "We leave one factor 2(L + 2)^4O(1)ε_2 … C_3 = 2(L + 2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1"; Lemma 3, (2.38) |H(Z)| ≤ C_3ε_1exp(−(1 − 8δ)½Lκd_{k+1}(Z)).

### 3.2 What H′ is, and the one input
(H′-def) [I: reading of p. 277]. H′(Z) is built by the CMP 116 construction (2.1)–(2.14) (= Sect. 7 of [I], (7.1)–(7.10), SOURCES_SWEEP_G §3.2(d)) with one extra factor O(X_b, B) in the integrand, where O(X_b, ·), X_b ∈ D_k, X_b ∋ b, is one localized term of the integrated function 𝒪_b := tr V′_k(tg_k, A, b)(CA)(b). In (2.14) this adds O(X_b, B) inside the B-integral, and X_b is one more member of the family that covers Y_0, so χ_{k,Y_0} restricts the field on X_b. The page does not print this (2.14)′. Everything else (Z_0, P, D, the s-, σ-, t-, τ-structure) is as for H.
(O1) [R]. On the support of χ_{k,X_b} and on the complex domain of (2.14) (the space U^c_{k+1}(X, (1 + β)α_0, (1 + β)α_1, α_0), |σ| ≤ e^{κ_1}, the τ-circles):
 |O(X_b, B)| ≤ C_Oexp(−(1 − 3δ)κd_k(X_b)),
with C_O fixed before ε_1. Source: the p. 277 sentence "expanded and localized in the same way as the corresponding expressions in the actions"; for the actions the corresponding bound is CMP 116 Lemma 1, (1.36), at rate (1 − 2δ)κ ≥ (1 − 3δ)κ [V p. 9]. Balaban's "B_0 replaced by O(p_0³(g_k))" (p. 278) indicates C_O = O(p_0³(g_k))·(constants), not O(ε_1). [R; not derived here, since V′_k is not defined on the pages read]

### 3.3 Proposition H′ (rate form of R3) [P relative to CMP 116 (2.14)–(2.38) as printed, (H′-def), (O1)]
Take α_6 four times smaller than in CMP 116 (this multiplies ε_2 and C_3 by 4 and makes the ε_1 conditions (2.28), (2.37) four times stronger; all are fixed before ε_1). Then
 |H′(Z)| ≤ C_3′exp(−(1 − 8δ)½Lκd_{k+1}(Z)),  C_3′ := 2(L + 2)^4O(1)C_Oα_6^{−1},
with the same O(1) as in C_3. Equivalently C_3′ = C_3ε_1·C_O/(2E_0ε_1C_1α_4^{−1}M^q e^{C_2κ_1}).
Proof. Follow CMP 116 (2.14)–(2.38) and mark the factor O.
(i) (2.15). The modulus bound moves |·| inside the integrals, as printed. On the support of χ_{k,Y_0} ⊃ support of χ_{k,X_b}, |O(X_b, B)| ≤ C_Oe^{−(1−3δ)κd_k(X_b)} by (O1). Pull this constant out. The rest of the integrand is the printed one.
(ii) (2.16)–(2.25). Unchanged: these steps act on the quadratic forms, the determinants and the Gaussian integrals, and O is no longer inside.
(iii) (2.26). The bracket Π_{Y∈D}2E_0ε_1C_1α_4^{−1}M^qe^{C_2κ_1}e^{−(1−3δ)κd_k(Y)} gains the factor C_Oe^{−(1−3δ)κd_k(X_b)}. Write D′ := D ⊔ {X_b} (a family in which X_b may repeat a member of D).
(iv) (2.27)–(2.28). From every factor of D′ extract α_6e^{−δκd_k(Y)}; for X_b write C_O = α_6·ε_O, ε_O := C_Oα_6^{−1}. D′ covers the connected set Y_0, so (2.27) gives Σ_{Y∈D′}d_k(Y) ≥ d_k(Y_0) + 5 − 5|D′|. Hence
 Π_{Y∈D′}ε_Ye^{−(1−4δ)κd_k(Y)} ≤ e^{−(1−4δ)κd_k(Y_0)}·ε_O·Π_{Y∈D}(ε_2e^{5(1−4δ)κ}) ≤ ε_Oe^{−(1−4δ)κd_k(Y_0)},
using ε_2e^{5κ} ≤ 1 for the members of D ((2.28) as printed). The marked factor is the one factor that is kept; its e^{5(1−4δ)κ} is cancelled exactly by the e^{−5(1−4δ)κ} of (2.27).
(v) (2.29). The sum is over D and over X_b ∋ b with D ⊔ {X_b} covering Y_0. Bound it by the sum over families D″ with every domain of multiplicity ≤ 2, weighted by the number |D″| of ways to choose the marked member: Σ_{D″}|D″|Π_{D″}α_6e^{−δκd} ≤ Σ_{D″}Π_{D″}2α_6e^{−δκd}. A domain of multiplicity ≤ 2 carries the activity a + a² ≤ 2a with a = 2α_6e^{−δκd} ≤ 1. So the sum is the (2.29) sum with α_6 replaced by 4α_6, and it is ≤ 1 by (2.29) with the smaller α_6 chosen above.
(vi) (2.30)–(2.35). The P-sum (2.31) and the Z_0∖Y_0 sum (2.34) do not involve D′; unchanged. In (2.33) the component Z_i of Z_0 that contains X_b has a nonempty Y_0-part, so it carries ε_Oe^{−(1−4δ)κd_k(Z_i)} (the "max" with the large-field exponential is not needed for it). The other components are as printed. So (2.35) holds with ε_2 → ε_O for the marked component.
(vii) (2.36)–(2.37). For the Z′_i that contains the marked component: one marked component plus n ≥ 0 unmarked ones gives ≤ (L + 2)^4O(1)ε_O·Σ_{n≥0}((L + 2)^4O(1)ε_2)^n ≤ 2(L + 2)^4O(1)ε_O, under the printed (L + 2)^4O(1)ε_2 ≤ ½. So (2.37) holds with this one factor in place of 2(L + 2)^4O(1)ε_2.
(viii) (2.38). The last sums (the Z′_0 sum by the adapted (2.32), the Z∖Z′_0 sum by (2.34), the volume factor by (2.30) and e^{−δ½Lκd_{k+1}(Z)}) do not touch the marked factor. Balaban "leave[s] one factor 2(L + 2)^4O(1)ε_2"; here we leave the marked factor 2(L + 2)^4O(1)ε_O and bound the unmarked ones by 1 with 2(L + 2)^4O(1)ε_2e^{5κ} ≤ 1, as printed. This gives the claim. ∎

### 3.4 The literal statement, the obstruction, and the repair
Literal R3: |H′(Z_0)| ≤ C_3ε_1e^{−(1−8δ)½Lκd_{k+1}(Z_0)}, the (2.38) constant included.
Obstruction [P]. By 3.3 the literal form holds if and only if (up to the O(1)) C_O ≤ 2E_0ε_1C_1α_4^{−1}M^qe^{C_2κ_1}. The marked factor is not a Mayer factor e^{τV} − 1 of size ε_1; it is a term of 𝒪_b, whose size Balaban himself records as O(p_0³(g_k)) (p. 278). So the literal constant does not follow from the printed chain, and there is no reason to expect it. The weakest repair is the rate form of 3.3: same rate (1 − 8δ)½Lκ, constant C_3′.
The repair is enough for every consumer [P]:
- R-020 R1 (SOURCES_SWEEP_G §4.2): H′ enters only through η in step 5 (the Z_0 sum) and through the slack of its rate (8δ against 11δ) in steps 4–5. The condition (R1-a) uses η_1, the constant of Ẽ, not η. So with η → C_3′ the count is unchanged: the unprinted cost of (3.44)–(3.47) is 1δ, and |E_0(Λ, X, b)| ≤ 2^dC_3′e^{λ}S(2δρ)e^{−(1−11δ)ρd(X)}.
- The prefactor C_3′ is multiplied by g_k in (3.37) and integrated over t ∈ [0, 1]. So the g_k-term of E_0^{(k+1)} carries g_kC_3′ = O(g_kp_0³(g_k))·(constants). This is Balaban's "the multiplication by g_k yields small bounds" (p. 278 [V]); it tends to 0 as g_k → 0 because p_0(g) grows like a power of log g^{−2} [V via SOURCES_SWEEP_G §2, GGAIN_LF 3.1].
- R-046 and H-216 (K1′) use only the rate count (13δ kept, δ = 0.025). No change.

### 3.5 Grade
S-68: REDUCED to a printed statement. R3 in rate form is [P] relative to the CMP 116 Lemma 3 chain (2.14)–(2.38) as printed [V], the reading (H′-def) [I] of CMP 119 p. 277, and (O1) [R: CMP 119 p. 277 "expanded and localized in the same way" → CMP 116 (1.36)]. R3 in its literal form (constant C_3ε_1) is not supported and is not needed.

## 4. S-52 (R-006 residue N6): the off-trajectory sup induction

### 4.1 Page facts [V]
- CMP 109 p. 259 (image): Theorem 1 assumes only that the effective couplings lie in ]0, γ]; "we do not assume any special asymptotic behavior of the coupling constants".
- CMP 109 p. 260 (image): (1.3) A_k(U_k) = −(1/g_k²)A(U_k) + Σ_{j=0}^{k−1}{−β_{j+1}(g_j)A(U_k) + [log Z^{(j)}(U_k) − log Z^{(j)}(1)] + [E^{(j+1)}(g_j, U_k) − E^{(j+1)}(g_j, 1)]}; (1.4) Z^{(j)} has no coupling.
- CMP 109 p. 263 (image): E^{(j)}(X, g_{j−1}, U, J) analytic on U^c_j(X, α_0, α_1), "with some positive, absolute constants α_0, α_1"; (1.18) with "a constant E_0"; (1.19) gauge invariance; Euclidean invariance. p. 264 (image): (1.20)–(1.22) define Π_{j+1} and β_{j+1}(g_j) from E^{(j+1)}; Theorem 3: "if κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ for k = 0, 1, …, K, then the sequence of actions A_k, defined inductively by the small field renormalization transformations (0.17)–(0.20), satisfy all the inductive assumptions described between (1.1)–(1.22)". The list (1.1)–(1.22) contains no relation between different couplings; the relation (0.20) enters only through "defined inductively".
- CMP 109 p. 298 (image): β_j is defined "as equal to the coefficient β in (5.43)"; it is related to Π by (5.42); "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants."
- From SOURCES_CTR_RESIDUE §1.3–§1.5, §2.2–§2.4 and its VERIFY (images of CMP 109 pp. 260–301 and CMP 116 pp. 1–22): the step k → k+1 has input "the inductive assumptions for A_k" and the condition g_k ≤ γ, and output "the inductive assumptions for A_{k+1}" (CMP 116 p. 22); in (2.12)–(2.13) every coupling is g_k or sits inside E_k := A_k + (1/g_k²)A; older couplings enter only through E_k (H-040, image-supported); E_0 := 2c_Z with c_Z the coupling-free constant of the log Z^{(k)} terms (CMP 116 p. 21), and every closing condition is a condition on ε_1, M, κ, γ with no step index and no coupling except g_k ≤ γ.

### 4.2 The slot chain (N7 as a definition) [P that each item is a definition; well-definedness is Theorem 4.3]
Fix k and a slot vector h = (h_0, …, h_k) ∈ ]0, γ]^{k+1}. Define, by recursion on l = 0, …, k:
 (D0) A_0(h) := −(1/h_0²)A (the Wilson action; no E-terms; CMP 109 p. 256 base).
 (D1) E_l(h) := A_l(h) + (1/h_l²)A = Σ_{j<l}{−β_{j+1}(h)A(U_l) + [log Z^{(j)}(U_l) − log Z^{(j)}(1)] + [E^{(j+1)}(h, U_l) − E^{(j+1)}(h, 1)]}. It does not contain h_l.
 (D2) E^{(l+1)}(h, ·) := the right side of CMP 109 (2.13) with g_k → h_l and E_k → E_l(h). It depends on h_0, …, h_l only.
 (D3) β_{l+1}(h) := (1.20)–(1.22) applied to E^{(l+1)}(h, ·) (with the T ↗ Z^d limit of p. 264; this is N9 = R-015, definition only).
 (D4) A_{l+1}(h) := the (1.3) formula at level l + 1 with marginal coefficient 1/h_{l+1}² and the terms of (D1)–(D3), the counterterm of step j being −β_{j+1}(h)A, read from the same chain.
Agreement [P]. If h obeys (2.15), 1/h_{l+1}² = 1/h_l² − β_{l+1}(h) for every l, then (D4) is CMP 109 (2.12) rewritten by (2.15). So the slot chain is Balaban's chain on his trajectories.
Off the trajectory [P]. A_{l+1}(h) equals the (2.12) output plus (1/h_l² − β_{l+1}(h) − 1/h_{l+1}²)A(U_{l+1}). It differs from the RG image only by a multiple of the Wilson action. So the slot chain is a formal object off the trajectory. Its β_{k+1}(h) is a function of the slots, which is all that H0-red and G3 use.

### 4.3 Theorem N6-off [P-sketch, relative to the step S of R-013 and H-040]
Let S denote Balaban's small-field step as a black box (SOURCES_CTR_RESIDUE §1.3): input (a) an action of the (1.3) form whose terms obey the inductive assumptions (1.2), (1.7), (1.11)–(1.22) with the fixed constants and E_0, (b) its marginal coefficient 1/g² with 0 < g ≤ γ; output E^{(next)}(g, ·) by (2.13), obeying the inductive assumptions with the same E_0, under step-free and coupling-free conditions on κ, M, ε_1, the α's and γ.
Claim. For every k and every h ∈ ]0, γ]^{k+1}, the slot chain (D0)–(D4) is defined up to level k + 1. Every E^{(j)}(h, ·), j ≤ k + 1, obeys the inductive assumptions, in particular
 |E^{(j)}(X, h, U, J)| ≤ E_0e^{−κd_j(X)} on U^c_j(X, α_0, α_1),
with the one number E_0 = 2c_Z, and |β_j(h)| ≤ C_ΠE_0 (2.4 (C-b)).
Proof. Induction on l.
Base. A_0(h) is the Wilson action. It has no E-terms, and the inductive assumptions hold (CMP 109 p. 256, as for Balaban's base).
Step. Assume that the terms of A_l(h) obey the inductive assumptions. The marginal coefficient of A_l(h) is 1/h_l² with h_l ∈ ]0, γ]. So (A_l(h), h_l) is an admissible input of S. By H-040, S reads the older slots h_0, …, h_{l−1} only through E_l(h), and it uses no relation between h_l and the older slots; CMP 109 p. 259 states the same in words. So S applies, and its output E^{(l+1)}(h, ·) of (D2) obeys the inductive assumptions with the same E_0: ½E_0 from (2.41) under O(1)C_3ε_1 ≤ ½E_0, and ½E_0 from the log Z^{(l)} terms, which contain no coupling (CMP 116 p. 21; SOURCES_CTR_RESIDUE §2.2–§2.3). The counterterm cancellation inside S ((4.42), (4.44) against (4.34)) needs the coefficient of −β_jA in E_l(h) to be the (5.43) coefficient of the same E^{(j)}(h). By (D3)–(D4) and p. 298 [V] ("defining the function β_j as equal to the coefficient β in (5.43)"; related to Π by (5.42)) this holds for every slot vector; it is a coefficient identity, not a trajectory property. The terms of A_{l+1}(h) are: the old terms, whose assumptions are on the spaces U^c_j(X, α_0, α_1) and do not change with the level; the new term E^{(l+1)}(h, ·); β_{l+1}(h), by (D3); and log Z^{(l)}, coupling-free. The marginal coefficient 1/h_{l+1}² is a free parameter of (1.3); the list (1.1)–(1.22) puts no condition on it except 0 < h_{l+1} ≤ γ (pp. 260–264 [V]). So A_{l+1}(h) obeys the inductive assumptions. The constants and E_0 are the same at every l and every h, because no closing condition contains l or a slot except through h_l ≤ γ. ∎
Grade. The proof uses S as a black box. This is the same black box, with the same input and output, as the on-trajectory proof of SOURCES_CTR_RESIDUE §2.5, which the ledger accepts as closed relative to R-013 (2026-10-29 addendum). Off the trajectory the only new facts are: (D0)–(D4) are definitions; S does not see the older slots except through E_l (H-040 [V]); the marginal coefficient is free; and the counterterm identity holds slot by slot [V p. 298].

### 4.4 Where the argument could fail, and what was checked
(F1) A hidden relation between couplings inside S (for example a ratio bound g_l ≤ (1 + β_0)g_{l−1}, as in CMP 119 (2.6)). Checked: H-040 on images of CMP 109 pp. 265–298 and CMP 116 pp. 1–22 (SOURCES_CTR_RESIDUE_VERIFY §0.1); pp. 259–264 read here; the only coupling hypothesis is 0 < g_k ≤ γ. CMP 119 (2.6) belongs to the large-field construction, which is outside S and outside N6. [V]
(F2) The output of the physical RG step off the trajectory has marginal coefficient 1/h_l² − β_{l+1}(h), which may be < γ^{−2} or ≤ 0. The slot chain does not use that coefficient: (D4) sets it to 1/h_{l+1}². So no step is ever run with an inadmissible coefficient. [P]
(F3) β_{l+1}(h) needs the T ↗ Z^d limit. This is N9 (R-015, definition only) with L-024 + H-141 (Loc); (Loc) rests on the conventions K-033–K-037, which contain no coupling. N9 is a separate residue of H0-red and is not part of N6. [R, unchanged]
(F4) The own slot of 7′ is allowed to be 0; a past slot is not. Steps with h_l = 0 do not occur in the chain; the endpoint g → 0 of the last step is N5, not N6. [P]
No failure was found.

### 4.5 Grade and consequences
S-52: CLOSED relative to R-013. N6 (off-trajectory sup induction) is [P-sketch] relative to the small-field step S of R-013 (with its inputs R-001, R-002, R-003, R-004, R-005, R-008, R-009, R-010, R-014, R-017, R-018, per SOURCES_T2_H0_VERIFY 4.3), H-040 [V] and the definition (D0)–(D4). The E_0 value part was already closed (SOURCES_CTR_RESIDUE §2). N7 is now the definition (D0)–(D4), with the counterterms booked as −β_j(h)A from the same chain (the H0_VERIFY l. 96/l. 214 item) and agreement on trajectories [P]; for N6, G3 and H0-red Step 1, N7 has no open content. B7's other content (continuity of β on the cube, Route 1) is not used by N6.
Consumers: H0-red Step 1 ("[P given N6, N7]") becomes [P-sketch relative to R-013, N9]. G3's past-uniformity of S_χ (SOURCES_G3_N2_VERIFY V5: "conditional on N6, N7, N9") becomes conditional on R-013 and N9 only.

## 5. Proposed ledger statuses (not applied; this file needs an independent verifier, SOURCES_L1_D_VERIFY)

| item | row | old status | proposed status |
|---|---|---|---|
| S-54 | R-008 | complex s and complex U clause: P-sketch (needs M_1 large after κ_1) | CLOSED: [P] relative to W_N (WC 4.2), WC 6.5–6.6, A1_WALK_FULL (B3), K-046. Per tree |π_ωA_ω| ≤ e^{2^dκ_1}Bρ^{|ω|}e^{−½δd}; ‖C*Δ_k(s)C‖ ≤ 2C_𝒟e^{2^dκ_1}B_A″S(½δ_A″) on 𝒰(α″); joint analyticity in (s, U). Condition (H_s) LM ≥ 8·3^dκ_1/min{δ_A, δ_A″}. No M_1 condition. Balaban's 2^4 threshold proved (Lemma C). |
| S-56 | R-010 R2 | R- and C-terms by mechanism, not written out | WRITTEN OUT: R-terms ((3.21) and (3.22)) [P-sketch] rel. (R-dec) [R: CMP 109 p. 271 + CMP 102 (190); R-019 at complex arguments] and (R-dom) [R: CMP 109 p. 273]; summed constant smaller than N5's by e^{−¼δ_0M}. C-terms [P-sketch] rel. (C-a) [I: (4.38) misprint U_j → U_k; scale of (4.39)], (C-b) [R: Π decay], (C-c) [I]; constants K_T^C = N_□′c_WC_ΠK_T; marginal parts cancel exactly [V p. 298]. α_* = β_H unchanged. |
| S-68 | R-020 R3 | open: Balaban's assertion that H′(Z_0) obeys (2.38) | REDUCED: rate form |H′(Z)| ≤ C_3′e^{−(1−8δ)½Lκd_{k+1}(Z)}, C_3′ = 2(L+2)^4O(1)C_Oα_6^{−1}, [P] rel. CMP 116 (2.14)–(2.38) [V], (H′-def) [I: CMP 119 p. 277], (O1) [R: CMP 119 p. 277 → CMP 116 (1.36)]. The literal constant C_3ε_1 is not supported (obstruction: the marked factor is O(p_0³), CMP 119 p. 278) and is not needed: R1 count unchanged (1δ; 13δ and δ = 0.025 kept). Needs α_6 → α_6/4 (fixed before ε_1). |
| S-52 | R-006 N6 | PARTLY CLOSED: E_0 value closed; off-trajectory sup induction reduced to N7 and H-040 | CLOSED relative to R-013: off-trajectory sup induction [P-sketch] rel. the small-field step S of R-013 (same black box as on trajectories), H-040 [V], and the slot definition (D0)–(D4). N7 becomes a definition (counterterms −β_j(h)A from the same chain; agreement on trajectories). N9 unchanged. |

Proposed row texts.
- R-008, replace the complex clause by: "Complex s (|s| ≤ e^{κ_1}) and complex U on 𝒰(α″): PROVED relative to W_N, WC 6.5–6.6, (B3), K-046 (SOURCES_L1_D §1): per tree e^{2^dκ_1}, rate ½δ; norm 2C_𝒟e^{2^dκ_1}B_A″S(½δ_A″); (H_s) LM ≥ 8·3^dκ_1/min{δ_A, δ_A″}; no M_1 condition; the 2^d threshold of CMP 116 p. 5 is Lemma C [P]."
- R-010, replace "R2 R- and C-terms by mechanism, not written out" by: "R2 written out (SOURCES_L1_D §2): R-terms [P-sketch] rel. (R-dec), (R-dom) (both R; R-019 at complex arguments); C-terms [P-sketch] rel. (C-a) [I], (C-b) [R], (C-c) [I]; constants K_R, K_R′, K_T^C fixed before ε_1."
- R-020, replace "Open: R3 the H′(Z_0) assertion" by: "R3 REDUCED (SOURCES_L1_D §3): rate form [P] rel. CMP 116 (2.14)–(2.38), (H′-def) [I], (O1) [R]; literal constant not supported and not needed; R1 count unchanged with η → C_3′."
- R-006, replace "N6 Balaban's sup induction (…; past-uniformity of E_0 reduced, not proved)" and "N7 = R-031" by: "N6: off-trajectory sup induction PROVED relative to R-013's small-field step and H-040 [V] (SOURCES_L1_D §4); E_0 = 2c_Z coupling-free (SOURCES_CTR_RESIDUE). N7: the slot chain (D0)–(D4) of SOURCES_L1_D §4.2, a definition."
- R-031: no change of status; add "slot chain (D0)–(D4) and its sup induction: SOURCES_L1_D §4".

Proposed canon notes (not applied).
- N-310: add (H_s) LM ≥ 8·3^dκ_1/min{δ_A, δ_A″} (a lower bound on M after κ_1 and the walk constants; no new edge; its complex part is implied by H-125).
- N-270: the entry "the R-008 complex-s clause" (M_1 large after κ_1) is not needed (SOURCES_L1_D §1.5(i)); keeping it is harmless.
- N-370 (α-chain, α_6): α_6 is taken four times smaller than CMP 116's for the marked sum of §3.3 (v); this multiplies ε_2, C_3 by 4 and tightens the ε_1 conditions (2.28), (2.37) by the same factor (N-400). No new edge.

Grades used in this file, summary: [P] Lemma C, Proposition S-54, Step 1 of 2.2, the sums of 2.3, Lemma C1, Proposition H′, the obstruction of 3.4, the definitions and agreement of 4.2; [P-sketch] the R- and C-term write-outs (2.2–2.4), Theorem N6-off (4.3); [R] (R-dec), (R-dom), (C-b), (O1), N9; [I] (C-a), (C-c), (H′-def).
