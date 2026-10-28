IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_T2_MPT_REST — the two residual items of (F) on the Theorem 2w (Route K) path

Date 2026-10-28. Target: TRUST_LEDGER row B3 ((F)), the two items listed in SOURCES_T2_MPT_STEPC_VERIFY §6(f) and §7.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not opened.
Read: SOURCES_T2_MPT_STEPC.md (§0, §5.3 Theorem B, §6.1, §8); SOURCES_T2_MPT_STEPC_VERIFY.md (all; §3, §6(f), §7); SOURCES_T2_F_STEPB.md (all; §2.0, §2.6); SOURCES_T2_S123.md §1, §3 (Lemma 3.1), §5.1 (Lemma 5.1); SOURCES_T2_LLL.md §1–§2 (Lemma 2.1); SOURCES_T2_GAPRIME2.md Lemma 1.1 and VERIFY §1 (midpoint item).
Ledger tags: [P] proved here; [V] read verbatim in a project file; [I] imported/cited, not checked here; [R] reduction; [N] numerics.

Items.
- Item 1 (§1): S123 Lemma 5.1 identification. The quadratic part of each plaquette action, for all six orientations, in terms of the covariant curl; the exact BCH remainder of the plaquette variable with a constant; the resulting exact separability that LLL Lemma 2.1 uses.
- Item 2 (§2): STEPB §2.0 neutral sector. N(φ) = −½ τ log(1 − (1 − cos φ)M), 0 ≤ M ≤ 1, analytic and even, b_n and the O(φ²) constant.
- §3 numerics, §4 conclusion and ledger.

## 1. Item 1: S123 Lemma 5.1 identification (all six plaquette orientations)

1.0 Conventions [V: GAPRIME2 Lemma 1.1 proof; S123 §1.1]. SU(2), Pauli σ_k. Background links U⁰_ℓ = e^{iθ_ℓσ_3} (abelian). Fluctuation in the left (start-site) trivialization: U_ℓ = e^{iB_ℓ·σ/2}U⁰_ℓ, B_ℓ ∈ R³. Adjoint action: Ad_{e^{iθσ_3}} rotates (B¹, B²) and fixes B³; with b := B¹ + iB² it acts as b ↦ e^{−2iθ}b (direct computation: e^{iθσ_3}σ_1e^{−iθσ_3} = cos 2θ σ_1 − sin 2θ σ_2). So the charge is e = 2, as in S123 §1.1 and LLL 1.1.
Transport: (T_μb)(x) := e^{−2iθ_{x,μ}}b(x + e_μ), ∇_μ := T_μ − 1. In the Landau gauge of GAPRIME2 (θ_{x,0} = −(α/2)x_1, other θ = 0) this is (T_0b)(x) = e^{iαx_1}b(x + e_0), T_μ = plain shift for μ ≥ 1, as in GAPRIME2 §1 and LLL §3.
Plaquette p in the plane (μ, ν), μ < ν, base x: links ℓ_1 = (x, μ), ℓ_2 = (x + e_μ, ν), ℓ_3 = (x + e_ν, μ), ℓ_4 = (x, ν); U_p := U_1U_2U_3^{−1}U_4^{−1}; plaquette angle φ_p := θ_1 + θ_2 − θ_3 − θ_4 (U⁰_p = e^{iφ_pσ_3}); S_p := 1 − ½Re tr U_p. For the background of S123/LLL (flux only in the (0,1) plane): φ_p = ±φ on (0,1) plaquettes (charged holonomy e^{∓iα}, α = 2|φ|), and φ_p = 0 on the five planes (0,2), (0,3), (1,2), (1,3), (2,3), in every gauge (φ_p is gauge invariant).

1.1 Lemma R1 (plaquette variable, exact second order, cubic remainder with constant) [P].
(a) U_p = e^{iy·σ/2}U⁰_p with
  y = Σ_{i=1}^4 x_i − ½Σ_{i<j} x_i × x_j + r_3,   x_i := s_i Ad_{g_i}B_i,   s = (+, +, −, −),
  g_1 = 1, g_2 = U⁰_1, g_3 = U⁰_1U⁰_2U⁰_3^{−1} = U⁰_pU⁰_4, g_4 = U⁰_p,
  |r_3| ≤ 0.593 (Σ_i|B_i|)³   whenever Σ_i|B_i| ≤ 1.
(b) Charged part. With z_i := (x_i)¹ + i(x_i)², exactly (no remainder; x_i is linear in B):
  Σ_i z_i = (∇_μb_ν − ∇_νb_μ)(x) + (1 − e^{−2iφ_p})(T_νb_μ + b_ν)(x).
Hence on the five planes with φ_p = 0, Σz_i is exactly the covariant curl ∇_μb_ν − ∇_νb_μ at x. On (0,1) plaquettes, Σz_i = (cb)(x) with c = (1 − e^{−iα}T_1, T_0 − e^{−iα}), the operator of GAPRIME2 Lemma 1.1 (e^{−2iφ_p} = e^{−iα}), and cb − (∇_0b_1 − ∇_1b_0) = (1 − e^{−iα})(T_1b_0 + b_1) has operator norm ≤ 2|1 − e^{−iα}| ≤ 2α.
(c) Neutral part: Σ_i(x_i)³ = Σ_i s_iB_i³ = (flat curl of B³)(x) (Ad fixes the 3-axis).
(d) Quadratic part of S_p (exact second Taylor coefficient in B; the Hessian at the critical background is this form, no remainder enters):
  S_p^{(2)} = (cos φ_p/8)|Σx_i|² − (sin φ_p/4)Σ_{i<j}(x_i × x_j)_3,
with |Σx_i|² = |Σz_i|² + (Σ(x_i)³)². The first-order term (sin φ_p/2)Σ_i(x_i)³ vanishes for φ_p = 0 and telescopes to zero over the (0,1) plaquettes (criticality, GAPRIME2 Lemma 1.1 proof).
Proof. (a) Move each e^{±iB·σ/2} to the left through the background links: U⁰e^{iB·σ/2} = e^{i(Ad_{U⁰}B)·σ/2}U⁰. For ℓ_3: U⁰_1U⁰_2U⁰_3^{−1}e^{−iB_3·σ/2} = e^{−i(Ad_{g_3}B_3)·σ/2}g_3; for ℓ_4: g_3U⁰_4^{−1} = U⁰_p (abelian). So U_p = e^{iX_1}e^{iX_2}e^{iX_3}e^{iX_4}U⁰_p with X_i := x_i·σ/2. In the 2×2 matrix algebra with operator norm, ‖iX_i‖ = |x_i|/2 = |B_i|/2. Put s := Σ_i|B_i|/2 ≤ ½ < ln 2. Then ‖e^{iX_1}⋯e^{iX_4} − 1‖ ≤ e^s − 1 < 1, so the log series converges and log(e^{iX_1}⋯e^{iX_4}) = iy·σ/2 (principal log, |y|/2 ≤ −ln(2 − e^{1/2}) = 1.046 < π). Its homogeneous parts of degree 1 and 2 are Σ iX_i and ½Σ_{i<j}[iX_i, iX_j] (BCH). With [x·σ/2, x′·σ/2] = i(x × x′)·σ/2, ½[iX_i, iX_j] = i(−½x_i × x_j)·σ/2. Degree ≥ 3: replacing every word coefficient by its absolute value and every iX_i by the scalar |B_i|/2 majorizes the series log(1 + w), w = e^{iX_1}⋯e^{iX_4} − 1, by g(s) := Σ_k(e^s − 1)^k/k = −ln(2 − e^s) = s + s² + s³ + …, all Taylor coefficients ≥ 0. So ‖degree ≥ 3 part‖ ≤ g(s) − s − s² ≤ [g(½) − ¾]/(½)³·s³ = 2.370 s³ for s ≤ ½ (ratio (g(s) − s − s²)/s³ is nondecreasing, positive coefficients). Then |r_3| = 2‖degree ≥ 3 part‖ ≤ 4.739 s³ = 0.5924(Σ|B_i|)³.
(b) Charged components of x_i = s_i e^{−2iΘ_i}b_{ℓ_i} with Θ_i the σ_3-angle of g_i: Θ_1 = 0, Θ_2 = θ_1, Θ_3 = φ_p + θ_4, Θ_4 = φ_p. Hence Σz_i = b_μ(x) + e^{−2iθ_{x,μ}}b_ν(x + e_μ) − e^{−2iφ_p}e^{−2iθ_{x,ν}}b_μ(x + e_ν) − e^{−2iφ_p}b_ν(x) = b_μ + T_μb_ν − e^{−2iφ_p}(T_νb_μ + b_ν). Add and subtract T_νb_μ + b_ν. Norm: ‖T_ν‖ = 1.
(c) Ad_{g}B has third component B³.
(d) ½Re tr(e^{iy·σ/2}e^{iφ_pσ_3}) = cos(|y|/2)cos φ_p − sin(|y|/2)ŷ_3 sin φ_p. Insert y = Σx_i − ½Σx_i × x_j + O(B³): to second order, cos(|y|/2) = 1 − |Σx_i|²/8 and sin(|y|/2)ŷ_3 = y_3/2 = ½Σ(x_i)_3 − ¼Σ_{i<j}(x_i × x_j)_3. The commutator term enters only through y_3, multiplied by sin φ_p. ∎

1.2 Six orientations, explicitly (Landau gauge, φ_p as in 1.0) [P, from Lemma R1].
| plane | φ_p | charged plaquette variable Σz | quadratic form (×8) |
| (0,1) | ±φ | (cb)(x) = (∇_0b_1 − ∇_1b_0) + (1 − e^{−iα})(T_1b_0 + b_1) | cos φ|cb|² + cos φ(neutral curl)² − 2 sin φ Σ_{i<j}(x_i × x_j)_3 |
| (0,2) | 0 | ∇_0b_2 − ∇_2b_0 (T_0 carries e^{iαx_1}, T_2 plain) | |∇_0b_2 − ∇_2b_0|² + (neutral)² |
| (0,3) | 0 | ∇_0b_3 − ∇_3b_0 | same form |
| (1,2) | 0 | ∇_1b_2 − ∇_2b_1 (both plain shifts) | same form |
| (1,3) | 0 | ∇_1b_3 − ∇_3b_1 | same form |
| (2,3) | 0 | ∇_2b_3 − ∇_3b_2 | same form |
The (0,2) row reproduces the verifier's hand check (z = (b_0, T_0b_2, −T_2b_0, −b_2)). In the (0,1) row, the charged part of Σ_{i<j}(x_i × x_j)_3 is Σ_{i<j}Im(z̄_iz_j) (GAPRIME2 Lemma 1.1), i.e. the K term; neutral × charged cross terms are absent in every row: by Lemma R1(d), |Σx_i|² = |Σz_i|² + (Σ(x_i)³)² and (x_i × x_j)_3 contains only components 1, 2.
In the mixed planes T_μ and T_ν commute (the Landau phase of T_0 depends on x_1 only, and the plane contains no e_1 direction together with e_0), so [∇_μ, ∇_ν^*] = 0 for {μ, ν} ≠ {0, 1}.

1.3 Corollary R2 (exact separability: what S123 Lemma 5.1 and LLL Lemma 2.1 use) [P]. In the Landau gauge, start-site trivialization, normalization (F1) (4·Hess, Feynman term with coefficient 1), the charged fine Feynman operator is
  A_φ = A′_α ⊕ (𝔏^{4D} ⊗ 1_2)  on (b_0, b_1) ⊕ (b_2, b_3),   A′_α + κ on the (b_0, b_1) fibre,
with A′_α = cos φ c^†c − 2 sin φ K + D′D′^† (GAPRIME2 Lemma 1.1), 𝔏^{4D} = Σ_{μ=0}^3∇_μ^*∇_μ, κ = |k̂_⊥|² in the k_⊥ fibre.
Proof. Sum the quadratic forms of 1.2 over plaquettes and add the Feynman term ‖Σ_μ∇_μ^*b_μ‖². For a mixed pair {μ, ν} ≠ {0, 1}: ‖∇_μb_ν − ∇_νb_μ‖² = ‖∇_μb_ν‖² + ‖∇_νb_μ‖² − 2Re⟨∇_μb_ν, ∇_νb_μ⟩, and the two Feynman cross terms give ⟨∇_μ^*b_μ, ∇_ν^*b_ν⟩ + c.c. = 2Re⟨b_μ, ∇_μ∇_ν^*b_ν⟩ = 2Re⟨b_μ, ∇_ν^*∇_μb_ν⟩ = 2Re⟨∇_νb_μ, ∇_μb_ν⟩ ([∇_μ, ∇_ν^*] = 0, 1.2); they cancel. The Feynman diagonal terms are ‖∇_μ^*b_μ‖² = ‖∇_μb_μ‖² (∇_μ normal). So b_ν (ν = 2, 3) collects Σ_{μ=0}^3‖∇_μb_ν‖² = ⟨b_ν, 𝔏^{4D}b_ν⟩ and couples to nothing; b_0, b_1 collect ‖∇_2b_·‖² + ‖∇_3b_·‖² (= κ in the fibre), the (0,1) plaquette form cos φ‖cb‖² − 2 sin φ⟨b, Kb⟩, and the Feynman part ‖∇_0^*b_0 + ∇_1^*b_1‖² = ‖D′^†b‖². That is A′_α + κ. ∎
Remark. S123 Lemma 5.1 writes the (0,1) term as cos f|∇_0b_1 − ∇_1b_0|² + (O(f) terms in 𝒮_f). By 1.1(b) the exact form is cos φ|cb|²; the difference cos φ(|cb|² − |∇_0b_1 − ∇_1b_0|²) is a polynomial in T_0^{±1}, T_1^{±1} on (b_0, b_1) with norm ≤ 8α + 2α² (write cb = db + Eb, db := ∇_0b_1 − ∇_1b_0, E := (1 − e^{−iα})(T_1, 1), ‖E‖ ≤ √2α, ‖d‖ ≤ 2√2; |cb|² − |db|² = 2Re⟨db, Eb⟩ + |Eb|²), so it belongs to 𝒮_f, and S123's bound ‖𝒮_f‖ ≤ C_S|f| is unchanged. LLL Lemma 2.1 uses the exact form (GAPRIME2's A′), so nothing there changes.

1.4 Convention transfer (midpoint fields, symmetric gauge, straight Wilson lines) [P; GAPRIME2_VERIFY §1 argument, made explicit for the trace]. S123 uses midpoint fields and symmetric gauge W(x, y) = exp(i(ef/2)x∧y). The map from S123's variables to those of 1.0 is b^{L}_μ(x) = u_μ(x)b^{mid}_μ(x + e_μ/2), |u_μ(x)| = 1: a gauge change (b ↦ e^{−2iχ(x)}b) composed with a change of trivialization (B ↦ Ad_{half link}B). Both are pointwise (diagonal) unitaries U; at a critical point the Hessian transforms by congruence, A^{mid} = U^*A^{L}U (second-order chart terms multiply ∇S = 0). Consequences used downstream: (i) same spectrum, same IDS; (ii) same per-site trace: (U^*XU)(x, x) = U(x)^*X(x, x)U(x) with U(x) a diagonal unitary on C⁴, so τ(f(A^{mid})) = τ(f(A^{L})) for every bounded Borel f, in particular τ log|A + κ + m²| and τe^{−tA} in LLL and STEPC. Additional fact for the five φ_p = 0 planes: every triangle in such a plane has zero projected area on the (0,1) plane, so the lattice transport along half-links and links equals the straight-line transport W; the covariant curl built with W at midpoints equals Σz_i up to the single unimodular factor W(c_p, x) (c_p = plaquette centre). This is S123's phrase "a unimodular factor times the covariant lattice curl built with the transport of W". The straight-Wilson-line division of STEPC_VERIFY §3 concerns the reduced symbol ã (Step C), not this item.

1.5 Status of item 1. S123 Lemma 5.1's identification step: [I] → [P] (Lemma R1, Corollary R2, 1.4). Its only inputs are the BCH formula to second order (exact algebra), the matrix log majorant for the remainder constant, and GAPRIME2 Lemma 1.1 [P, verified] for the (0,1) block. Numerics §3.1.

## 2. Item 2: STEPB §2.0 neutral sector

2.1 The neutral operator [P, from Lemma R1(c), (d)]. Neutral fluctuation β_ℓ := B_ℓ³ (real). With the charged part zero, all X_i are multiples of σ_3 and commute, so y = (0, 0, Σ_is_iβ_i) exactly (no BCH remainder), U_p = e^{i(φ_p + y_3/2)σ_3}, S_p = 1 − cos(φ_p + y_3/2). Its quadratic part is (cos φ_p/8)(d_pβ)², d_pβ := Σ_is_iβ_i = flat lattice curl (Ad fixes the 3-axis, so no transport phase). Neutral × charged cross terms vanish (charge conservation, 1.2). In normalization (F1) (8·S_p^{(2)} summed, plus the Feynman term), the neutral Feynman operator is
  Δ^{neu}(φ) = Σ_{μ<ν}cos φ_{μν} d_{μν}^*d_{μν} + δδ^* = Δ_0 − (1 − cos φ) d_{01}^*d_{01},
with d_{μν} the flat curl component, δ^* the flat divergence (the background covariant derivative is flat on the σ_3 component), and Δ_0 := d^*d + δδ^* = flat Laplacian ⊗ 1_4, symbol l(K)·1_4, l = Σ_μh_μ, h_μ := 4 sin²(K_μ/2) ((F1), S123 §3). The neutral ghost is the flat Laplacian, independent of φ, so it cancels in F_W(φ) − F_W(0). This is STEPB §2.0's statement "free Hessian with each (0,1) plaquette weighted by cos φ".

2.2 Definition of M and 0 ≤ M ≤ 1 [P]. Put
  M := Δ_0^{−1/2} d_{01}^*d_{01} Δ_0^{−1/2}   (symbol M(K) = d_{01}(K)^*d_{01}(K)/l(K), K ≠ 0).
STEPB §2.0's Δ_0^{−1}d_{01}^Td_{01} is similar to M (same nonzero spectrum, same determinant). Symbol: d_{01}(K) = (−K̃_1, K̃_0, 0, 0) : C⁴ → C, |K̃_μ|² = h_μ, so M(K) has rank ≤ 1 and its only nonzero eigenvalue is
  m(K) = (h_0 + h_1)/(h_0 + h_1 + h_2 + h_3) ∈ [0, 1].
Operator proof without symbols: 0 ≤ d_{01}^*d_{01} ≤ Σ_{μ<ν}d_{μν}^*d_{μν} = d^*d ≤ d^*d + δδ^* = Δ_0, and conjugation by Δ_0^{−1/2} preserves order. So 0 ≤ M ≤ 1, ‖M‖ = 1 (attained as K_2, K_3 → 0).
Exact traces: τ(M) = ∫_{BZ}m dK/(2π)⁴ = ½ exactly (the four ratios h_μ/l have the same law under the permutation-symmetric BZ measure and sum to 1, so each has mean ¼). τ(M²) = 0.29342 [N, §3.2]; rigorously τ(M²) ≤ τ(M) = ½ (M² ≤ M).

2.3 Lemma R3 (neutral part) [P]. Per fine cell, with u := 1 − cos φ,
  N(φ) = −½[τ log Δ^{neu}(φ) − τ log Δ_0] = −½ τ log(1 − uM) = −½∫_{BZ} log(1 − u m(K)) dK/(2π)⁴ = ½Σ_{k≥1}u^k τ(M^k)/k.
(a) Analyticity and evenness. For complex z, |1 − cos z| ≤ cosh|z| − 1, so for |z| < r_0 := arccosh 2 = 1.3170 one has |u(z)|·‖M‖ < 1 and the series converges uniformly in K; N is analytic on the disc |z| < r_0 and even (u is even). For real φ with |φ| < π/2: 1 − uM ≥ 1 − u = cos φ > 0, and 1 − u(z)m stays off 0 for complex z near φ and all m ∈ [0, 1] (it is affine in m with end values 1 and cos z, Re cos z > 0), so N is real analytic on (−π/2, π/2). Correction to the brief: the domain is |φ| < π/2, not |φ| < π. For π/2 < |φ| < π, 1 − u m(K) vanishes on the hypersurface m(K) = 1/u ∈ (½, 1), which m attains; τ log|1 − uM| is still finite but N is not analytic there. Only small φ is used.
(b) Value. b_n := lim_{φ→0}N(φ)/φ² = τ(M)/4 = 1/8. (Leading term ½uτ(M), u = φ²/2 + O(φ⁴).)
(c) Remainder with constants. For real |φ| < π/2:
  −φ²/96 ≤ N(φ)/φ² − 1/8 ≤ τ(M²)φ²/(16 cos φ) ≤ φ²/(32 cos φ).
So |N(φ)/φ² − b_n| ≤ 0.058φ² for |φ| ≤ 1. The exact φ² coefficient is −1/96 + τ(M²)/16 = 0.007922 [N: τ(M²) from §3.2; §3.2 measures 0.00791 at φ = 0.05].
Proof of (c). N/φ² − 1/8 = (τ(M)/2)(u/φ² − ½) + (2φ²)^{−1}Σ_{k≥2}u^kτ(M^k)/k. First term: φ²/2 − φ⁴/24 ≤ u ≤ φ²/2, so it lies in [−φ²/96, 0]. Second term: τ(M^k) ≥ 0 and M^k ≤ M² for k ≥ 2 (0 ≤ M ≤ 1), so 0 ≤ Σ_{k≥2}u^kτ(M^k)/k ≤ τ(M²)u²/(2(1 − u)); with u ≤ φ²/2 and 1 − u = cos φ the term is ≤ τ(M²)φ²/(16 cos φ). ∎
(d) Where ‖M‖ ≤ 1 is used: (i) positivity 1 − uM ≥ cos φ > 0 for real |φ| < π/2, so log det is defined and the neutral sector has no zero or negative mode (contrast the charged Nielsen–Olesen band); (ii) convergence of the log series on |z| < arccosh 2 (needs |u|‖M‖ < 1), which gives analyticity and evenness; (iii) M^k ≤ M² and τ(M²) ≤ τ(M) in the constant of (c). M ≥ 0 gives the signs in (c).

2.4 Use in Theorem B [P]. STEPC Theorem B needs [N(λφ)/(λφ)² − N(φ)/φ²] → 0 for fixed λ. By (c) this difference is bounded by 0.058(1 + λ²)φ² for |φ|, |λφ| ≤ 1. The value b_n = 1/8 is not needed.

2.5 Status of item 2. STEPB §2.0: [P sketch] → [P] (Lemma R3), with the domain corrected to |φ| < π/2.

## 3. Numerics [N] (numerics/t2_mpt_rest_check.py, Mac, 0.2 s, numerics/.venv)

3.1 Item 1, one random configuration per scale. Base site x = (3, −2, 5, 1); background = Landau gauge θ_{y,0} = −(α/2)y_1, α = 0.03, composed with a random abelian gauge transformation χ(y) ∈ (−π, π) at every site (so every link angle is nonzero and random); B_ℓ = ε·N(0, 1)³ on the four links of each plaquette; all six orientations; ε = 0.3, 0.1, 0.03 (18 plaquettes). y is extracted from U_pU⁰_p^{−1} by the SU(2) log.
- |Σz − curl − (1 − e^{−2iφ_p})(T_νb_μ + b_ν)| ≤ 1.1·10^{−16} in all 18 cases (Lemma R1(b), exact).
- φ_p = 0 planes: |Σz − (∇_μb_ν − ∇_νb_μ)| ≤ 1.0·10^{−15}; (0,1) plane: |Σz − curl| = 2.3·10^{−2}, 6.5·10^{−3}, 2.0·10^{−3} (the O(α|b|) term, nonzero as stated).
- |r_3|/(Σ|B_i|)³ ∈ [0.002, 0.013], below the proved constant 0.593 (the majorant is crude by a factor ≈ 45).
- Second t-derivative of S_p(tB) at t = 0 (central difference, h = 10^{−3}) vs Lemma R1(d): relative error ≤ 1.7·10^{−7} (finite-difference level), all six orientations including the sin φ_p cross term in (0,1).
3.2 Item 2. 40⁴ BZ grid (K = 0 set to the mean, measure zero): τ(M) = 0.4999998 (exact ½), τ(M²) = 0.29342, max m = 1.0. N(φ)/φ² = 0.126301, 0.125319, 0.125079, 0.125020 at φ = 0.4, 0.2, 0.1, 0.05; (N/φ² − 1/8)/φ² = 0.00813, 0.00797, 0.00793, 0.00791 → −1/96 + τ(M²)/16 = 0.007922. Inside the bounds of Lemma R3(c).

## 4. Conclusion and ledger

With items 1 and 2 written out, (F) (TRUST_LEDGER row B3) is PROVED relative to:
- textbook: (IP) invariance principle for the 1D walk bridge (Liggett 1968 + Poissonization); Laplace continuity theorem (Feller XIII.1); counting monotonicity and cyclicity of τ in the magnetic von Neumann algebra; Bessel asymptotics of p_t; BCH to second order and the matrix-log majorant (this file, elementary);
- project [P, verified]: STEPC Lemma 1.1, S1′, V1′, Theorem A, Lemma C, Lemma F, Theorem B (SOURCES_T2_MPT_STEPC_VERIFY); GAPRIME2 Lemmas 1.1, 4.1 (midpoint [I] → [P] in GAPRIME2_VERIFY §1); S123 Lemma 5.2; LLL Lemmas 2.1, S1, V0, V1, V2, Theorem 5.1; STEPB Step A; BETA_FP_H (3.1) ⇔ (3.1′) (STEPB λ ↔ 1/λ slip notational);
- this file [P, unverified]: Lemma R1 and Corollary R2 (S123 Lemma 5.1 identification, all six orientations; supersedes the [I]), 1.4 (convention transfer preserves τ), Lemma R3 (STEPB §2.0 neutral sector, b_n = 1/8, |N/φ² − b_n| ≤ 0.058φ² for |φ| ≤ 1).
No hypothesis and no [I] project item remains on the (F) path. The remaining gate is a verifier pass on this file.

Proposed B3 status (for the ledger owner; this file edits no ledger): "B3: (F) PROVED rel. textbook (IP), Laplace continuity, counting monotonicity/τ-cyclicity, Bessel asymptotics; and verified project lemmas GAPRIME2 1.1/4.1, S123 5.2, LLL 2.1/S1/V0/V1/V2/Thm 5.1, STEPB Step A, BETA_FP_H (3.1)⇔(3.1′), SOURCES_T2_MPT_STEPC Thms A, B [verified]. S123 Lemma 5.1 identification and STEPB §2.0 neutral sector now [P] (SOURCES_T2_MPT_REST, unverified). (MPT), STEPB Lemma 2 and Step C not used. Open: verifier pass on SOURCES_T2_MPT_REST. Outside (F): the [N] single-step slope tension (STEPB §3.3)."

Ledger of this file.
- [V] STEPC_VERIFY §3, §6(f), §7; STEPB §2.0, §2.6; S123 §1.1, Lemma 5.1; LLL §1–§2.2 (Lemma 2.1); GAPRIME2 Lemma 1.1 and VERIFY §1; STEPC §5.3, §8.
- [P] Lemma R1 (a) BCH form with |r_3| ≤ 0.593(Σ|B_i|)³ for Σ|B_i| ≤ 1, (b) charged curl identity exact, (c) neutral curl, (d) exact quadratic part; 1.2 six-orientation table; Corollary R2 (exact separability A_φ = A′_α ⊕ 𝔏^{4D}⊗1_2); remark: S123's 𝒮_f bound unchanged (‖cos φ(|cb|² − |db|²)‖ ≤ 8α + 2α²); 1.4 diagonal-unitary convention change preserves spectrum and τ; Lemma R3 (a)–(d); 2.4.
- [P] neutral/charged block structure: read off Lemma R1(d) directly (|Σx_i|² = |Σz_i|² + (Σ(x_i)³)², and (x_i × x_j)_3 involves only components 1, 2), so the U3_LEMMA51 Lemma 2.1 citation is not needed here.
- [V] normalization (F1) as fixed in S123 §3.
- [R] none.
- [N] §3.1 (18 plaquettes, exact identity to 10^{−16}, remainder ratio ≤ 0.013, quadratic form to 10^{−7}); §3.2 (τ(M) = ½, τ(M²) = 0.29342, φ² coefficient 0.00791).
- Corrections to inputs: the brief's analyticity domain |φ| < π is |φ| < π/2 on the real axis (disc |z| < arccosh 2 in C); b_n = τ(M)/4 = 1/8 (with the −½ of the real-field determinant), not −τ(M)/2. S123 Lemma 5.1 writes the (0,1) term as cos f|∇_0b_1 − ∇_1b_0|²; the exact term is cos f|cb|², the difference is O(f) and already inside 𝒮_f.
- Not done: verifier.

STATUS: COMPLETE

Corrections after verification (SOURCES_T2_MPT_REST_VERIFY, 2026-10-28): nothing refuted; Lemma R1 CONFIRMED (0.593 = majorant of log(1 + w) by g(s) = −ln(2 − e^s), s = Σ|B|/2 ≤ ½; recomputed 0.59235); convention flag: REST uses ∇ = T − 1, GAPRIME2/STEPC use 1 − T (flips only the curl sign); Hessian, Cor. R2 (fibrewise), τ-invariance (chart change linear, criticality unneeded), ≤ 8α + 2α² all CONFIRMED. Item 2 CONFIRMED (0.058 = 1/(32 cos 1) = 0.05784; φ² coefficient 0.0079222); CORRECTED off-path: the singularity at |φ| = π/2 is real (density of m at 1 positive) but "N is not analytic for π/2 < |φ| < π" is unproved and false in general. Numerics reproduced; independent numerics/t2_mpt_rest_verify.py (Mac 2.4 s; scipy logm, generic φ_p ∈ (−π, π)): identities ≤ 4e−8, quadratic form ≤ 1.3e−6 rel., max r3 at Σ|B| = 1 is 0.019 vs 0.592, τ(M) = 0.5000000000, τ(M²) = 0.29342215. Closure list complete except unnamed textbook facts: Feynman–Kac/Mehler, Poisson exponential formula, Doob's L⁴ maximal inequality, finite/faithful/normal τ, LLL S2/S3/Theorem S (under LLL Thm 5.1). B3 text: "(F) PROVED rel. [list + textbook names]; S123 5.1 identification and STEPB §2.0 [P] in SOURCES_T2_MPT_REST, verified (SOURCES_T2_MPT_REST_VERIFY); (MPT), STEPB Lemma 2, Step C not used; STEPB §3.3 slope tension outside (F)."
