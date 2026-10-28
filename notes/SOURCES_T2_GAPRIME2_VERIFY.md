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
