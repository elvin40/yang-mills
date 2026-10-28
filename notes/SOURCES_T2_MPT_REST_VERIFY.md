# SOURCES_T2_MPT_REST verification

Independent check of SOURCES_T2_MPT_REST.md (2026-10-28). Sections appended as work proceeds.

## 0. Scope and firewall
Read SOURCES_T2_MPT_REST.md and numerics/t2_mpt_rest_check.py in full. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not opened.

## 1. Lemma R1 hand re-derivation (first pass)
- Ad convention: e^{iθσ3}σ1e^{-iθσ3} = σ1e^{-2iθσ3} = cos2θ σ1 − sin2θ σ2; e^{iθσ3}σ2e^{-iθσ3} = cos2θ σ2 + sin2θ σ1. So (B1,B2) ↦ (cos B1 + sin B2, −sin B1 + cos B2), b ↦ e^{-2iθ}b. CONFIRMED (matches the script's Ad).
- Degree-2 BCH: log(e^{A1}⋯e^{A4}) = ΣA_i + ½Σ_{i<j}[A_i,A_j] + O(3). With A_i = iX_i, [x·σ/2, x'·σ/2] = i(x×x')·σ/2, so ½[iX_i,iX_j] = i(−½ x_i×x_j)·σ/2. CONFIRMED.
- Majorant: g(s) = −ln(2 − e^s); g(½) = −ln(0.351279) = 1.046164; (g(½) − ¾)/(½)³ = 2.3693; |r3| = 2‖deg≥3‖ ≤ 4.7386 s³, s = Σ|B|/2 ⇒ 0.5923(Σ|B|)³. Source of 0.593: majorize log(1+w), w = Πe^{iX_i} − 1, by the positive series Σ(e^s−1)^k/k, subtract the degree-1,2 coefficients (g = s + s² + O(s³)), use monotone ratio on s ≤ ½. Every step valid (word-by-word triangle inequality; isometric Ad so ‖iX_i‖ = |B_i|/2). Factor 2 from y·σ/2 having operator norm |y|/2. CONFIRMED; 0.593 is a rounded-up 0.5923.
- Transported angles: g_2 = U⁰_1 (Θ2 = θ1), g_3 = U⁰_1U⁰_2U⁰_3^{-1} (Θ3 = θ1+θ2−θ3 = φ_p+θ4), g_4 = U⁰_p. Σz = b_μ + e^{-2iθ1}b_ν(x+e_μ) − e^{-2iφ_p}e^{-2iθ4}b_μ(x+e_ν) − e^{-2iφ_p}b_ν(x) = b_μ + T_μb_ν − e^{-2iφ_p}(T_νb_μ + b_ν). With ∇_μb_ν − ∇_νb_μ = T_μb_ν − b_ν − T_νb_μ + b_μ, the difference is (1 − e^{-2iφ_p})(T_νb_μ + b_ν). CONFIRMED (orientation U_p = U1U2U3^{-1}U4^{-1}, sign s = (+,+,−,−)).
- Landau gauge θ_{x,0} = −(α/2)x1: φ_p(0,1) = −(α/2)x1 + (α/2)(x1+1) = α/2, so e^{-2iφ_p} = e^{-iα}, T_0b(x) = e^{iαx1}b(x+e0). Σz = b0 − e^{-iα}T1b0 + T0b1 − e^{-iα}b1 = (1 − e^{-iα}T1, T0 − e^{-iα})·(b0,b1). Matches the stated c; to be checked against GAPRIME2 text next.
- (d) ½Re tr(e^{iy·σ/2}e^{iφσ3}) = cos(|y|/2)cosφ − sin(|y|/2)ŷ3 sinφ; second order gives (cosφ/8)|Σx|² − (sinφ/4)Σ(x_i×x_j)_3. CONFIRMED.

## 2. Against GAPRIME2 Lemma 1.1 / 4.1
- GAPRIME2 Lemma 1.1: background θ(x) = −φx1 on 0-links, α = 2φ, c = (1 − e^{-iα}T1, T0 − e^{-iα}), corner maps z1..z4, A′ = cosφ c†c + D′D′† − 2 sinφ K. REST R1(b) on the (0,1) plane gives exactly this c (φ_p = α/2 in the Landau gauge θ_{x,0} = −(α/2)x1, same as GAPRIME2's −φx1). CONFIRMED.
- GAPRIME2 writes g3 = g4 = U⁰_p; REST writes g3 = U⁰_pU⁰_4. These agree in Landau gauge (U⁰_{x,1} = 1); REST's form is the general one and is the correct one in a general gauge (numerically tested in the random gauge, §5 below).
- Convention note (no effect): GAPRIME2 defines ∇_μ := 1 − T_μ; REST defines ∇_μ := T_μ − 1. The curl flips sign (REST curl = −c0 b of GAPRIME2 (1.a)), so REST's "cb − curl = (1 − e^{-iα})(T1b0 + b1)" equals GAPRIME2's c = −c0 + δ, δ = (1 − e^{-iα})(T1, 1). All quadratic forms (|curl|², ∇*∇, normality) are sign-invariant. CONFIRMED, flag the convention only.
- Remark-bound 8α + 2α²: |cb|² − |db|² = 2Re⟨db, Eb⟩ + |Eb|², ‖d‖ ≤ 2√2 (d = (−∇1, ∇0), each ‖∇‖ ≤ 2), ‖E‖ ≤ √2|1 − e^{-iα}| ≤ √2α. Bound 2·2√2·√2α + 2α² = 8α + 2α²; times |cosφ| ≤ 1. CONFIRMED (GAPRIME2's own ‖δ‖ ≤ √2|α| matches).
- REST's "‖cb − db‖ ≤ 2|1 − e^{-iα}|" (1.1(b)): ‖(T1, 1)‖ as a map ℓ²⊗C² → ℓ² is √2, so the sharp bound is √2|1 − e^{-iα}|; the stated 2α is still true (weaker). CONFIRMED (loose).
- Lemma 4.1 is not re-entered by REST except via the citation list; it is consistent with A′ as used.

## 3. Against S123 §1.1 / Lemma 5.1 and LLL §2 (Lemma 2.1)
- S123 Lemma 5.1 proof marks the curl identification [I: midpoint bookkeeping] and writes the (0,1) term as cos f|∇0b1 − ∇1b0|² + spin term. REST R1(b) shows the exact term is cos f|cb|²; the difference is O(α) and, by the 8α + 2α² bound (§2), lies in 𝒮_f. S123's conclusion (‖𝒮_f‖ ≤ C_S|f|, A(f) = 𝔏^{01}_f exactly on (b2, b3)) is unchanged. CONFIRMED.
- Cor. R2 vs LLL 2.1: LLL 2.1 states, fibrewise over k_⊥, A_φ(k_⊥) = A(α) + κ, A(α) = A′_α ⊕ (𝔏_α ⊗ 1_2), ghost 𝔏_α + κ. REST R2 states A_φ = A′_α ⊕ (𝔏^{4D} ⊗ 1_2) with "A′_α + κ on the (b0, b1) fibre". In the fibre, 𝔏^{4D}(k_⊥) = 𝔏_α + κ, so the two statements are the same. CONFIRMED. Notational flag: in the unfibred display, "A′_α" must be read as A′_α ⊗ 1 + (h2 + h3) (A′_α is a 2D operator); REST's own "+κ" sentence says this, the display alone does not.
- Re-derivation of R2's cancellation: for {μ,ν} ≠ {0,1}, T_μ and T_ν commute (T0's phase depends on x1 only; T1, T2, T3 plain), so [∇_μ, ∇_ν*] = 0, the plaquette cross term −2Re⟨∇_μb_ν, ∇_νb_μ⟩ and the Feynman cross term +2Re⟨∇_νb_μ, ∇_μb_ν⟩ cancel. Diagonal collection: b2 gets ‖∇0b2‖² + ‖∇1b2‖² + ‖∇3b2‖² (planes (0,2), (1,2), (2,3)) + Feynman ‖∇2b2‖² = ⟨b2, 𝔏^{4D}b2⟩; b0 gets ‖∇2b0‖² + ‖∇3b0‖² = κ; the b0–b1 Feynman cross term stays inside ‖D′†b‖². This is S123's own identity Σ‖curl‖² + ‖div‖² = Σ‖∇_μb_ν‖² + Σ⟨b_μ, [∇_μ, ∇_ν*]b_ν⟩ restricted to commuting pairs. CONFIRMED; it is exactly what LLL 2.1 uses (LLL cites GAPRIME2's exact A′, not S123's cos f|db|² form).
- Normalization: 8·S_p^{(2)} with φ_p = 0 gives |Σz|² + (neutral)², the (F1) normalization (4·Hess, Feynman coefficient 1) of S123 §3 and GAPRIME2 §1. CONFIRMED.
