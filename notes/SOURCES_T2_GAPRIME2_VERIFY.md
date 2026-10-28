IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_T2_GAPRIME2 verification (2026-10-28)
Independent check. Firewall respected.

## 0. Reading log
Read in full: SOURCES_T2_GAPRIME2.md (191 l.). S123 §5 l. 125–200 (Lemma 5.1, Props 5.3–5.6, Lemmas 5.7–5.8, (G_A), (G_A′)). S123_VERIFY claims 21–24. Scripts t2_s123_gap2d.py, t2_gaprime2_check.py and its JSON.
Context facts used below:
- S123 (G_A) is about A′ = (b_0, b_1) block of A(f) = 𝒦_0(f; k_⊥ = 0) (Lemma 5.1). 𝒦_0 is the Wilson level (Λ = 1, Q̃ = id) plus D_cD_c^T. So t = 0: no averaging in the operator itself.
- Prop. 5.6 needs g_f ≥ 4η_1 + 4C_M²|f|³; η_1 = C_3[(3R+2)²μ² + f²] = O(f²) with j-, L-dependent C_3.

## 1. Task (a): the operator, Lemma 1.1
Rederived by hand from S_p = 1 − ½Re tr U_p, U = e^{iB·σ/2}U⁰ (same convention as U3_LEMMA51 (2.1)).
- Plaquette: U_p = e^{iB_1}·Ad_{U⁰_1}e^{iB_2}·Ad_{U⁰_p}e^{−iB_3}·Ad_{U⁰_p}e^{−iB_4}·U⁰_p. So g_1 = 1, g_2 = U⁰_{x,0}, g_3 = g_4 = U⁰_p. Matches.
- Charged phase: e^{iθσ3}(b̄σ_+ + bσ_−)e^{−iθσ3} gives b → e^{−2iθ}b. With θ = −φx_1, z_2 = e^{iαx_1}b_1(x+e_0) = (T_0b_1)(x). z_3 = −e^{−iα}(T_1b_0)(x), z_4 = −e^{−iα}b_1(x). Matches.
- T_0T_1 = e^{−iα}T_1T_0 (direct computation). Matches q = e^{−iα}.
- BCH: e^{iX}e^{iY} = exp(i(x + y − ½x×y)·σ/2) + O(3). Second-order part of S_p: (cos φ/8)|Σx_i|² − (sin φ/4)Σ_{i<j}(x_i×x_j)_3. (x_i × x_j)_3 = Im(z̄_iz_j). 8·Q = cos φ|cb|² − 2 sin φ Σ Im(z̄_iz_j) = ⟨b,(cos φ c^†c − 2 sin φ K)b⟩. Matches.
- Linear term (sin φ/2)Σ s_i B_i^3 cancels over plaquettes (each link in two plaquettes, opposite signs, same φ). Criticality holds on Z² for every real φ.
- Gauge term: δB_ℓ = λ(x) − Ad_{U_ℓ}λ(x+e_μ) (from g = e^{iλ·σ/2}). Charged: ∇_μλ. Matches.
- (F1): at φ = 0, A′ = c_0^†c_0 + D′D′^† = 𝔏 ⊗ 1. Matches.
- (1.a), (1.b): δ = c + c_0 = (1 − e^{−iα})(T_1, 1). c_0^†c_0 + D′D′^† off-diagonal = [T_0, T_1^*], [T_1, T_0^*]. Rechecked.
Midpoint issue. S123's A′ is the charged Wilson Hessian (+ Feynman term) at a background with the same plaquette holonomy. Two such abelian backgrounds on Z² differ by an abelian gauge transformation g = e^{iχ(x)σ3}. Under it B_ℓ → Ad_{g(x)}B_ℓ, i.e. b → e^{−2iχ(x)}b, a diagonal unitary; D transforms covariantly. A change of trivialization (left / right / midpoint) is B → Ad_{(partial link)}B, also a pointwise unitary; at a critical point the Hessian transforms by congruence with the chart Jacobian (the second-order chart terms multiply ∇S = 0). So S123's A′ and the script's A′ are unitarily equivalent. The [I] is benign; I upgrade it to [P] (argument above, two lines).
Grade (1): CONFIRMED.

## 2. Task (d), part 1: rerun of t2_gaprime2_check.py
Ran numerics/t2_gaprime2_check.py with output to /tmp/gp2v/check.json (55 s). Compared with numerics/t2_gaprime2_check.json: 141 numeric leaves, same keys, max |difference| = 0. The §6 table and §1 checks (formula vs FD Hessian 3.2–9.6·10^{−8}, H′D′ residual ≤ 3.2·10^{−14}) are reproduced. [V]

## 3. Task (d), part 2: independent numerics (numerics/t2_gaprime2_verify_numerics.py, new)
Part A (11 s). Own finite-difference charged Wilson Hessian, built in the OTHER Landau gauge (U⁰_{x,1} = e^{iφx_0σ3}, U⁰_{x,0} = 1), Bloch-reduced in x_1, period q in x_0. Own complexification (Hess = realification of M; U(1) structure residual 2.2·10^{−8}). Physical part by H′ + 40·DD^† (gauge copy pushed to 40𝔏), no SVD. Three Bloch points.
- F1 at φ = 0: eigenvalues 4 sin²(K/2) pattern, ok.
- |H′D| ≤ 2.3·10^{−7} (FD level) at all fluxes: criticality and gauge annihilation in the second gauge.
- min|spec A′|/α: 0.967607, 0.991840, 0.983237, 0.973148, 0.998430, 0.989022 at p/q = 1/24, 1/96, 5/233, 13/377, 1/500, 7/499; my own Lemma 1.1 code (Landau gauge of the source) agrees to ≤ 10^{−6}. Physical top of N–O band /α = −1.030895 (1/24), −1.008069 (1/96), ...; first positive physical /α = 2.83332, 2.95890 ...: equal to the source's JSON to 6 digits.
So the operator of Lemma 1.1 is gauge-independent in spectrum and equals the Wilson Hessian, by a second code path. [V]
Part B (9 s). Sparse own Lemma 1.1 code, one Bloch point (0.3, 0.7), shift-invert near 0; physical part via H′ + 40DD^†. This reaches the PROVED range (needs q ≫ 500; q ≤ 500 gives α ≥ 0.0126, outside it).
| p/q | α | |H′D′| | physical eigs near 0 /α | A′ eigs near 0 /α |
|---|---|---|---|---|
| 1/6000 | 1.05e−3 | 2e−15 | −1.000131, 2.999345, 4.998 | −1.000131, 0.999869 |
| 3/188497 | 1.000e−4 | 4e−15 | −1.0000125 (×3), 2.9999375 (×3) | −1.0000125, 0.9999875 (×3) |
| 2/502655 | 2.50e−5 | 4e−15 | −1.0000031 (×2), 2.9999844 (×2) | −1.0000031, 0.9999969 |
Proved statement at these α: c ≤ 1 − 100|α|^{1/2}, i.e. c ≤ 0 at α = 10^{−4} (vacuous), c ≤ 0.5 at α = 2.5·10^{−5}. Observed: min|spec A′|/α = 1 − 0.125α, min|spec H′|_{ker}|/α = 1 + 0.125α. No contradiction; the proof is far from sharp. [V]
Part C (45 s). Ratio scan, q = 499 (prime), Bloch points (0|π)², own Lemma 1.1 code. Part D: 12 random Bloch points at p = 132, 240 give the same minima to 4 digits (bands thin).
| α | min|spec A′|/α | min|spec H′|_{ker D′^†}|/α |
|---|---|---|
| 0.0126 | 0.9984 | 1.0016 |
| 0.1007 | 0.9875 | 1.0123 |
| 0.5288 | 0.9351 | 1.0585 |
| 1.0577 | 0.8627 | 1.0996 |
| 1.6621 | 0.7413 | 1.1158 |
| 2.1154 | 0.6061 | 1.0864 |
| 2.7198 | 0.5118 | 1.0396 |
| 3.0220 | 0.4144 | 0.9547 |
Reading [V]. No gap closing is observed anywhere in α ∈ (0, 3.02]. The physical ratio stays ≥ 0.95. The A′ ratio is set by the gauge copy inf 𝔏; it falls below 0.5 only at α ≈ 2.8. So there is no observed onset of failure to compare with. The proved threshold α_0(c) = ((1 − c)/100)² (≤ 10^{−4}) sits at least four orders of magnitude below where the property is observed to hold (to α ≈ π, f ≈ 1.5). For c = 0.5: proved α ≤ 2.5·10^{−5}; observed ratio ≥ 0.5 up to α ≈ 2.75 for A′ and on all of (0, 3.02] for H′|_{ker}.

## 4. Task (b): regularity lemmas and Prop. 3.3 (line-by-line)
- Lemma 2.1: telescoping, normality. CONFIRMED.
- Lemma 2.2: identity ⟨h_μψ,h_νψ⟩ = ‖∇_μ∇_νψ‖² − ⟨[∇_μ,∇_ν]ψ,∇_μ∇_νψ⟩ + ⟨∇_μψ,[∇_μ,∇_ν^*]∇_νψ⟩ rederived. Commutator norms |q − 1| = 2|sin(α/2)| ≤ |α| (exact lattice value, not iα). CONFIRMED.
- Lemma 2.3: [𝔏,∇_ρ] = T_ρ[(λ−1)(T_σ−1) + (λ̄−1)(T_σ^*−1) + (λ+λ̄−2)] rederived (T_σ^*T_ρ = λ̄T_ρT_σ^*); |λ+λ̄−2| = 2(1 − cos α) ≤ α². Constants 4, 34, 2, 16 rederived. CONFIRMED.
- Cor. 2.4: 18+6+2 = 26; 108+102+52 = 262, +16α⁴ ≤ |α|³ at |α| ≤ 1/16. CONFIRMED.
- Lemma 3.1: [Π,Π^†] = is(1−q̄)(V + qV^*) = 2|sin(α/2)|(V′ + V′^*) rederived; i(1 − e^{iα}) = 2 sin(α/2)e^{iα/2}. The O(α²)/O(α³) lattice error is tracked exactly through sin(α/2). Lower bound: constant 2|α| − |α|³/12 − (3/4)|α|³ ≥ 2|α| − |α|³; 𝔏 coefficient 6|sin(α/2)| ≤ 3|α|. CONFIRMED.
- Lemma 3.2: ∇^* = h − ∇ gives J = is(h_0∇_1 − h_1∇_0) − is(q−1)T_1T_0; ε_α = (|α| − |sin α|) − is(cos α − 1), |ε_α| ≤ α². CONFIRMED.
- Prop. 3.3: Step 1 X² − 2|α|X = Π^†XΠ + Π^†([Π,Π^†] − 2|α|)Π; bound −|α|³·6|α| − 3|α|·52α² = −156|α|³ − 6α⁴ ≥ −157|α|³. Step 2: (2·263)^{1/2} + 6^{1/2} + 1/4 = 22.93 + 2.45 + 0.25 = 25.63 ≤ 26. Step 3 algebra correct. Constants 26 and 157 CONFIRMED (not tight; slack < 2%).
- Technical note (minor): Q is a closed-interval projection; Q = 0 excludes spectrum in the open interval only, unless one reapplies with a slightly smaller θ (the hypothesis is open, so this works). One sentence to add.
Grade (2): CONFIRMED.

## 5. Task (c): remainder and contradiction argument
- Decomposition A′ = 𝔏⊗1 + C + (cos φ − 1)c^†c − c_0^†δ − δ^†c_0 + δ^†δ − 2 sin φ K: rederived from c = −c_0 + δ and (1.b).
- Sign of −2ασ_y: C → [[0, iα],[−iα, 0]] = −ασ_y; K̄ = (2E_01 − 2E_10)/(2i) = σ_y, −2 sin φ K̄ → −ασ_y. Same sign, sum −2ασ_y. Rederived.
- Terms (i)–(vi), norm = ℓ²⊗C² norm of Rψ: (i) |α|a + α²; (ii) 1.36α² ≤ 2α²; (iii) 2α² and √2|α|a; (iv) |α|a + α² (source writes 2α²; looser, harmless); (v) the six words T_0, T_1, 1, T_0^*T_1, T_0^*, T_1^* (6 letters) and four phases −e^{−iα}: ‖(K − K̄)ψ‖ ≤ 6a + 4|α|; (vi) |α|³/24. Sum 9.41|α|a + 11α². a ≤ 2N_1^{1/2}. CONFIRMED.
- Lemma 4.2: ⟨ψ,A′ψ⟩ ≥ N_1 − |α| − 2α² − 4|α|N_1^{1/2} − 3|α| (|⟨K⟩| ≤ (3/2)Σ_i‖u_iψ‖² = 3). At |α| = 10^{−3}: N_1 ≤ 5.29|α|. Only ⟨ψ,A′ψ⟩ ≤ c|α| and ‖A′ψ‖ ≤ c|α| are used; both hold for every ψ in ran 1_{(−c|α|,c|α|)}(A′). CONFIRMED.
- Cor. 4.3: 19·6^{1/2} = 46.54, + 11|α|^{1/2} ≤ 0.35: ≤ 48. CONFIRMED.
- Theorem 5.1: 74|α|^{1/2} + 157|α| ≤ 75.6|α|^{1/2} ≤ 0.756(1 − c). (a) is a GLOBAL bound ‖A_cψ‖ ≥ (1 − θ)|α|‖ψ‖ for all ψ (constant unitary diagonalizes σ_y; 𝔏 + 2|α| ≥ 2|α|; Prop. 3.3). (b) uses one vector of ran P. So the argument does NOT need any subspace to be A′-invariant or A_c-invariant; it needs only (a) globally and the a priori bound on that one vector. CONFIRMED.
- Cor. 5.2: A′D′ = D′𝔏 ⇒ closure of ran D′ invariant ⇒ ker D′^† invariant, A′ = H′ there. CONFIRMED.
Grade (3): CONFIRMED.

## 6. Task (e): independence of j, L, averaging; claim (4)
- S123 defines A′ as the (b_0,b_1) block of A(f) = 𝒦_0(f; k_⊥ = 0). 𝒦_0 = Wilson level (Λ = 1, Q̃ = id) + D_cD_c^T. At k_⊥ = 0 the plaquettes of the planes (μ, 2), (μ, 3) contribute ∇_2 = ∇_3 = 0 on the (b_0,b_1) block. So A′ is the pure 2D coarse-lattice operator of Lemma 1.1. No j, L, or averaging enters the operator. CONFIRMED.
- Where averaging and j enter: (i) the size needed in Prop. 5.6, g_f ≥ 4η_1 + 4C_M²|f|³, with η_1 = C_3[...] and C_M depending on j, L and on Δ_j (hence on the averaging). So (G_A) is usable for |f| ≤ min(f_0, f_1(j)). The source says this. (ii) The k_⊥ fibre decomposition of 𝒦_1 in Prop. 5.6 uses (I3) (covariance of the averaging). That is S123's input, not part of (G_A′). Neither affects the statement of (G_A′).
- Prop. 5.6 Step 1 uses (G_A) for the full A(f) = A′ ⊕ (𝔏 on (b_2,b_3)). The (b_2,b_3) part follows from Lemma 5.7, or from Theorem 5.1 itself (spec 𝔏 ⊂ spec A′ as the gauge copy). No gap.
- Claim (4): N–O band at −|ef|(1 + κ|ef|) with κ = 0.118 (α = 0.26) → 0.125 (α = 10^{−4}, Part B); numerical [V], not proved, and the source tags it as numerics. Gauge directions: H′ = 0 on ran D′ exactly; excluded by ker D′^†; in A′ they sit at spec 𝔏 ≥ |α|(1 − 0.125|α|). S123 O1 (l. 277) asks for exactly (G_A′) with some c > 0 for small f; Corollary 5.2 gives every c < 2 in units |f| (c < 1 in units |ef|). O1 is closed. CONFIRMED.

## 7. Grades
(1) Lemma 1.1 operator: CONFIRMED (rederived; second-gauge FD code agrees ≤ 10^{−6}; midpoint/trivialization issue is a pointwise unitary at a critical point, so the [I] can be upgraded to [P]).
(2) Scalar Landau gap, constants 26 and 157: CONFIRMED (lattice commutator tracked exactly via sin(α/2); one-sentence closed-vs-open interval remark).
(3) Remainder 48|α|^{3/2} and Theorem 5.1: CONFIRMED (no invariance needed; (a) is global).
(4) N–O band and gauge modes; O1 closed: CONFIRMED (N–O location numerical only, as tagged).
(G_A′): PROVED for 0 < |f| ≤ ((1 − c)/100)²/2, gap 2c|f|, every c ∈ [0,1); verified. Numerically the gap holds with ratio ≥ 0.95|ef| on all of α ∈ (0, 3.02]; the proved range (|ef| ≤ 10^{−4}) is far from sharp but sufficient for S123, which needs only small f at fixed j.
Files: numerics/t2_gaprime2_verify_numerics.py (new; parts A–D, total ≈ 70 s, prints only). Author JSON reproduced exactly (/tmp/gp2v).
