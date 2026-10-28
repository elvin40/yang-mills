# SOURCES_T2_GAPRIME2 — the 2D gap (G_A′) for the charged SU(2) Wilson Hessian at constant flux

Date: 2026-10-28. Item GAPRIME, DERIVE (second attempt; the first attempt, SOURCES_T2_GAPRIME.md, stopped after its header and plan).
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not opened.
Read: api_runs/BRIEFS.md "## ITEM GAPRIME"; SOURCES_T2_GAPRIME.md; SOURCES_T2_S123.md l. 120–215 (§5), 270–285; SOURCES_T2_S123_VERIFY.md l. 95–172; BETA_FP_M.md l. 64–101; BETA_FP_H.md l. 13–50; BETA_FP_H_VERIFY.md l. 33–39; U3_LEMMA51.md l. 70–110; numerics/t2_s123_gap2d.py, t2_s123_phys2d.py and their JSON (read only).
No literature result is used. In particular no Helffer–Sjöstrand or Harper-band theorem is used; the Landau gap of the lattice magnetic Laplacian is proved here from scratch (§3).

Statement needed (S123 §5, after Lemma 5.8, quoted):
  "(G_A)  spec A′(f) ∩ (−g_f, g_f) = ∅ with g_f ≥ 4η_1 + 4C_M²|f|³ for small f (C_M from Prop. 5.6); for instance g_f ≥ c|f|."
  "(G_A′)  spec(H′(f)|_{ker D′^†}) ∩ (−g_f, g_f) = ∅,  g_f ≥ c|f| (any g_f ≥ 4η_1 + 4C_M²|f|³ suffices)."
S123 Lemma 5.8 [P+V] gives spec A′ = spec 𝔏^{01} ∪ spec(H′|_{ker D′^†}). So (G_A) for A′ implies (G_A′). I prove (G_A) for A′ directly.

Notation. α := phase of the charge-2 plaquette holonomy, |α| = |ef| = 2|f| (e = 2, coarse 2D lattice, ε = 1). All statements hold for every real α with 0 < |α| ≤ α_0. No rational flux is used in the proofs.

Plan of sections.
1. The operator: explicit formula for A′ = 4·Hess + D′D′^† in Landau gauge on ℓ²(Z²)⊗C² (derived from the Wilson action; checked against the S123 script).
2. Tools: covariant shifts, regularity on low-energy vectors (Lemmas 2.1–2.3).
3. Scalar Landau gap (Prop. 3.1): spec 𝔏 ∩ [(1+θ)|α|, (3−θ)|α|] = ∅. Proof by a lattice ladder operator Π and the inequality X(X − 2|α|) ≥ −C|α|³ on low-energy vectors.
4. Reduction A′ = 𝔏⊗1 − 2α σ_y + R with ‖Rψ‖ ≤ C|α|^{3/2}‖ψ‖ on the spectral subspace of A′ near 0 (Lemma 4.1).
5. Main theorem: (G_A) and (G_A′) for every c < 1 (in units of |α|), explicit α_0(c).
6. Numerics (numerics/t2_gaprime2_check.py): reproduction of gap2d JSON; check of the formula of §1; Harper-type Bloch reduction at flux p/q with q up to ~10³ approximating irrational values; comparison with c|α|.
7. What is not proved; the Nielsen–Olesen mode.
8. Ledger.

Ledger tags: [P] proved here; [V] checked numerically here; [I] imported/cited without proof here; [N] not done/open.

## 1. The operator

Set-up (as in S123 §6 and numerics/t2_s123_gap2d.py). Lattice Z² in the (0,1) plane. Background links U⁰_{x,0} = e^{iθ(x)σ_3} with θ(x) = −φx_1, U⁰_{x,1} = 1, so every plaquette holonomy is e^{iφσ_3}. Fluctuation U_ℓ = e^{iB_ℓ·σ/2}U⁰_ℓ (left trivialization). Charged component b_ℓ := B¹_ℓ + iB²_ℓ. Ad_{e^{iθσ_3}} multiplies b by e^{−2iθ}. Put α := 2φ (charge-2 phase; |α| = |ef|). The operator is A′ := 4·Hess(S_W)|_charged + D′D′^† (normalization (F1) of S123; this is the operator of the S123 script).

Covariant shifts. On ℓ²(Z²): (T_0ψ)(x) = e^{iαx_1}ψ(x + e_0), (T_1ψ)(x) = ψ(x + e_1). They are unitary, and T_0T_1 = qT_1T_0 with q = e^{−iα}. Put ∇_μ := 1 − T_μ, h_μ := ∇_μ^*∇_μ = 2 − T_μ − T_μ^*, 𝔏 := h_0 + h_1 (= 𝔏^{01}_f of S123). Each ∇_μ is normal, so ‖∇_μ^*φ‖ = ‖∇_μφ‖. A charged link field is b = (b_0, b_1) ∈ ℓ²(Z²)⊗C², b_μ(x) := b_{(x,μ)}.

Lemma 1.1 (explicit A′) [P; formula also V]. With c := (1 − e^{−iα}T_1, T_0 − e^{−iα}) : ℓ²⊗C² → ℓ² and the four "corner" maps u_1 = (1, 0), u_2 = (0, T_0), u_3 = (−e^{−iα}T_1, 0), u_4 = (0, −e^{−iα}) (each ℓ²⊗C² → ℓ²):
  A′ = cos φ·c^†c + D′D′^† − 2 sin φ·K,  K := Σ_{i<j} (u_i^†u_j − u_j^†u_i)/(2i),  D′ = (∇_0, ∇_1)^T,  D′^†b = ∇_0^*b_0 + ∇_1^*b_1.
Proof. Plaquette p at x, links ℓ_1 = (x,0), ℓ_2 = (x+e_0,1), ℓ_3 = (x+e_1,0), ℓ_4 = (x,1), U_p = U_1U_2U_3^{−1}U_4^{−1}. Moving every e^{±iB·σ/2} to the left through the background links gives U_p = e^{iX_1}e^{iX_2}e^{iX_3}e^{iX_4}U⁰_p with X_i = s_i(Ad_{g_i}B_i)·σ/2, s = (+, +, −, −), g_1 = 1, g_2 = U⁰_{x,0}, g_3 = g_4 = U⁰_p. The charged parts are z_i := (u_ib)(x): z_1 = b_0(x), z_2 = e^{iαx_1}b_1(x+e_0), z_3 = −e^{−iα}b_0(x+e_1), z_4 = −e^{−iα}b_1(x). BCH: e^{iX_1}⋯e^{iX_4} = e^{iy·σ/2} with y = Σx_i − ½Σ_{i<j}x_i × x_j + O(B³) (from [x·σ/2, y·σ/2] = i(x × y)·σ/2). Then ½Re tr(e^{iy·σ/2}e^{iφσ_3}) = cos(|y|/2)cos φ − sin(|y|/2)ŷ_3 sin φ, so the quadratic part of S_p = 1 − ½Re tr U_p is (cos φ/8)|Σx_i|² − (sin φ/4)Σ_{i<j}(x_i × x_j)_3. On charged components |Σx_i|² → |Σz_i|² = |(cb)(x)|² and (x_i × x_j)_3 = Im(z̄_iz_j). The linear term (sin φ/2)Σ(x_i)_3 cancels in the sum over p (criticality). The operator 4·Hess has quadratic form 8·(quadratic part); summing over p (one p per site) gives cos φ‖cb‖² − 2 sin φ Σ_{i<j}Σ_x Im(z̄_iz_j) = ⟨b, (cos φ c^†c − 2 sin φ K)b⟩. A U(1)-invariant real quadratic form on (B¹, B²) is the same as a complex Hermitian form on b, and the real operator has the complex spectrum with multiplicity 2. The Feynman term: (D′λ)_μ(x) = λ(x) − e^{−2iθ}λ(x + e_μ) on charged components, which is ∇_μλ. ∎
Checks [V, numerics/t2_gaprime2_check.py, this session]. (a) Bloch-reduced in x_0 on the N×N torus, the spectrum of this formula equals the charged spectrum of the finite-difference Hessian of numerics/t2_s123_gap2d.py (each eigenvalue twice) to 4.9·10^{−8}, 3.7·10^{−8}, 3.2·10^{−8} at (N, m) = (8, 0), (24, 1), (30, 7) (the finite-difference error h² of that script). (b) (A′ − D′D′^†)D′ = 0 to 3·10^{−14}, i.e. H′D′ = 0 holds exactly for the formula (S123 Lemma 5.8 input).
Remark. Any other gauge, or the symmetric-gauge midpoint bookkeeping of S123 Lemma 5.1, gives a unitarily equivalent operator (the spectrum is gauge invariant). The formula holds for every real α; Landau gauge on Z² needs no flux quantization.

Two consequences used below.
(1.a) Curl form. Put c_0 := (−∇_1, ∇_0) (the flat curl). Then c = −c_0 + δ, δ := (1 − e^{−iα})(T_1, 1), ‖δ‖ ≤ √2|α|.
(1.b) Curl–divergence identity [P, S123 Lemma 5.1, recomputed]. c_0^†c_0 + D′D′^† = 𝔏 ⊗ 1_2 + [[0, [T_0, T_1^*]], [[T_1, T_0^*], 0]], with [T_0, T_1^*] = (q̄ − 1)T_1^*T_0 and [T_1, T_0^*] = (1 − q̄)T_1T_0^*. (Expand both 2×2 blocks; the diagonal is ∇_0∇_0^* + ∇_1^*∇_1 = h_0 + h_1 by normality.)

## 2. Tools: words in the shifts, and regularity

Write N_1(ψ) := ⟨ψ, 𝔏ψ⟩ = Σ_μ‖∇_μψ‖², N_2(ψ) := Σ_{μ,ν}‖∇_μ∇_νψ‖², N_3(ψ) := Σ_{ρ,μ,ν}‖∇_μ∇_ν∇_ρψ‖² (scalar ψ; for ψ ∈ ℓ²⊗C² sum over components). Commutators: T_0T_1 = qT_1T_0, |q − 1| ≤ |α|, so ‖[T_μ, T_ν]‖ ≤ |α| and ‖[T_μ, T_ν^*]‖ ≤ |α|; also [∇_μ, ∇_ν] = [T_μ, T_ν], [∇_μ, ∇_ν^*] = [T_μ, T_ν^*].

Lemma 2.1 (words) [P]. For a word m = T_{a_1}^{ε_1}⋯T_{a_n}^{ε_n} (ε_k = ±1) and every ψ: ‖(m − 1)ψ‖ ≤ Σ_k ‖∇_{a_k}ψ‖.
Proof. m − 1 = Σ_k m_{<k}(T_{a_k}^{ε_k} − 1) with m_{<k} the (unitary) product of the first k − 1 letters, and ‖(T_a^{±1} − 1)ψ‖ = ‖∇_aψ‖ or ‖∇_a^*ψ‖ = ‖∇_aψ‖ (normality). ∎

Lemma 2.2 (second-order regularity) [P]. For every ψ: N_2(ψ) ≤ 2‖𝔏ψ‖² + 2|α|N_1(ψ) + 2α²‖ψ‖².
Proof. ⟨h_μψ, h_νψ⟩ = ⟨∇_μψ, ∇_μ∇_ν^*∇_νψ⟩ = ‖∇_μ∇_νψ‖² − ⟨[∇_μ, ∇_ν]ψ, ∇_μ∇_νψ⟩ + ⟨∇_μψ, [∇_μ, ∇_ν^*]∇_νψ⟩ (use ∇_μ∇_ν^* = ∇_ν^*∇_μ + [∇_μ, ∇_ν^*] and ∇_ν∇_μ = ∇_μ∇_ν − [∇_μ, ∇_ν]). Both commutators vanish for μ = ν. Sum over μ, ν: N_2 ≤ ‖𝔏ψ‖² + |α|‖ψ‖Σ_{μ≠ν}‖∇_μ∇_νψ‖ + 2|α|‖∇_0ψ‖‖∇_1ψ‖ ≤ ‖𝔏ψ‖² + √2|α|‖ψ‖N_2^{1/2} + |α|N_1 ≤ ‖𝔏ψ‖² + ½N_2 + α²‖ψ‖² + |α|N_1. ∎

Lemma 2.3 (third-order regularity) [P]. For every ψ: N_3(ψ) ≤ 4⟨ψ, 𝔏³ψ⟩ + 34α²N_1(ψ) + 2|α|N_2(ψ) + 16α⁴‖ψ‖².
Proof. N_3(ψ) = Σ_ρ N_2(∇_ρψ) and Σ_ρ N_1(∇_ρψ) = N_2(ψ), so by Lemma 2.2 N_3 ≤ 2Σ_ρ‖𝔏∇_ρψ‖² + 2|α|N_2 + 2α²N_1. Next ‖𝔏∇_ρψ‖ ≤ ‖∇_ρ𝔏ψ‖ + ‖[𝔏, ∇_ρ]ψ‖, and Σ_ρ‖∇_ρ𝔏ψ‖² = ⟨𝔏ψ, 𝔏·𝔏ψ⟩ = ⟨ψ, 𝔏³ψ⟩. For σ ≠ ρ let T_σT_ρ = λT_ρT_σ (λ ∈ {q, q̄}); then T_σ^*T_ρ = λ̄T_ρT_σ^* and
  [𝔏, ∇_ρ] = [T_σ + T_σ^*, T_ρ] = T_ρ[(λ − 1)(T_σ − 1) + (λ̄ − 1)(T_σ^* − 1) + (λ + λ̄ − 2)],
so ‖[𝔏, ∇_ρ]ψ‖ ≤ 2|α|‖∇_σψ‖ + α²‖ψ‖ and Σ_ρ‖[𝔏, ∇_ρ]ψ‖² ≤ 8α²N_1 + 4α⁴‖ψ‖². Collect: Σ_ρ‖𝔏∇_ρψ‖² ≤ 2⟨ψ, 𝔏³ψ⟩ + 16α²N_1 + 8α⁴‖ψ‖². ∎

Corollary 2.4 (low-energy vectors of 𝔏) [P]. If ψ ∈ ran 1_{[0, 3|α|]}(𝔏), ‖ψ‖ = 1, and |α| ≤ 1/16, then N_1 ≤ 3|α|, ‖𝔏ψ‖² ≤ 9α², N_2 ≤ 26α², N_3 ≤ 263|α|³.
Proof. Spectral theorem for the first two and ⟨ψ, 𝔏³ψ⟩ ≤ 27|α|³; then Lemmas 2.2, 2.3: N_2 ≤ 18α² + 6α² + 2α²; N_3 ≤ 108|α|³ + 102|α|³ + 52|α|³ + 16α⁴. ∎
Remark. The third-order bound is the point where a spectral subspace of 𝔏 itself is needed. For a vector that is only known to satisfy ⟨ψ, 𝔏ψ⟩ ≤ K|α| one has N_3 ≤ 4N_2 = O(α) only; this is why §3 (scalar, all powers of 𝔏 available) and §4 (vector, first-order information only) are arranged so that §4 never needs N_2 or N_3.

## 3. The scalar Landau gap of 𝔏

Ladder operator. Put s := sgn α and Π := ∇_0 + is∇_1, X := Π^†Π ≥ 0, Y := ΠΠ^† ≥ 0, V := T_1T_0^*, V′ := e^{iα/2}V (unitary).

Lemma 3.1 (commutator) [P; identity also V]. [Π, Π^†] = 2|sin(α/2)|(V′ + V′^*), and as forms [Π, Π^†] ≥ 2|α| − 3|α|𝔏 − |α|³ for |α| ≤ 1.
Proof. Expanding, [Π, Π^†] = −is[∇_0, ∇_1^*] + is[∇_1, ∇_0^*] = −is[T_0, T_1^*] + is[T_1, T_0^*]. From T_0T_1 = qT_1T_0: [T_0, T_1^*] = (q̄ − 1)T_1^*T_0, [T_1, T_0^*] = (1 − q̄)T_1T_0^*, and T_1^*T_0 = qV^*. So [Π, Π^†] = is(1 − q̄)(V + qV^*); with q̄ = e^{iα}, i(1 − e^{iα}) = 2 sin(α/2)e^{iα/2}, which gives the identity. For the bound, V′ + V′^* = 2 − (1 − V′)^*(1 − V′) and 1 − V′ = (1 − e^{iα/2}) + e^{iα/2}(∇_1 + T_1∇_0^*), so ‖(1 − V′)φ‖² ≤ 3(α²/4·‖φ‖² + ⟨φ, 𝔏φ⟩). Then use 4|sin(α/2)| ≥ 2|α| − |α|³/12 and 2|sin(α/2)| ≤ |α|. ∎
Numerical check of the identity (Harper blocks q = 96, 384, 1597): error ≤ 3.5·10^{−15} [V].

Lemma 3.2 (X versus 𝔏) [P]. J := X − 𝔏 = is(∇_0^*∇_1 − ∇_1^*∇_0), and
  J + |α| = is(h_0∇_1 − h_1∇_0) − is(q − 1)(T_1T_0 − 1) + ε_α,  |ε_α| ≤ α² (|α| ≤ 1).
Hence for every ψ: ‖(J + |α|)ψ‖ ≤ ‖∇_0∇_0∇_1ψ‖ + ‖∇_1∇_1∇_0ψ‖ + |α|(‖∇_0ψ‖ + ‖∇_1ψ‖) + α²‖ψ‖ ≤ (2N_3)^{1/2} + |α|(2N_1)^{1/2} + α²‖ψ‖.
Proof. ∇_μ^* = h_μ − ∇_μ gives J = is(h_0∇_1 − h_1∇_0 − [∇_0, ∇_1]) and [∇_0, ∇_1] = [T_0, T_1] = (q − 1)T_1T_0. The constant is ε_α := |α| − is(q − 1) = |α| − is(e^{−iα} − 1) = (|α| − |sin α|) − is(cos α − 1). Norms: ‖h_0∇_1ψ‖ = ‖∇_0^*(∇_0∇_1ψ)‖ = ‖∇_0∇_0∇_1ψ‖ (normality); Lemma 2.1 for T_1T_0 − 1. ∎
Numerics: on the low eigenvectors of 𝔏 (Harper blocks q = 96, 384, 1597) max ‖(J + |α|)ψ‖/|α|^{3/2} = 2.79, 2.85, 2.86 [V]. So the |α|^{3/2} size is real (it comes from the third-order lattice term h_0∇_1 − h_1∇_0); it is not O(α²).

Proposition 3.3 (scalar Landau gap) [P]. Let 0 < θ < 1 and 0 < |α| ≤ 1/16 with 26|α|^{1/2} + 157|α| < θ. Then
  spec 𝔏 ∩ [(1 + θ)|α|, (3 − θ)|α|] = ∅.
Proof. Let Q := 1_{[(1+θ)|α|, (3−θ)|α|]}(𝔏) and suppose ψ ∈ ran Q, ‖ψ‖ = 1. Then ‖(𝔏 − 2|α|)ψ‖ ≤ (1 − θ)|α|, and Corollary 2.4 applies.
Step 1 (X has a gap on ψ). X² − 2|α|X = Π^†(Y − 2|α|)Π = Π^†XΠ + Π^†([Π, Π^†] − 2|α|)Π. The first term is ≥ 0. With φ := Πψ, Lemma 3.1 gives
  ⟨ψ, X(X − 2|α|)ψ⟩ ≥ −|α|³‖φ‖² − 3|α|⟨φ, 𝔏φ⟩.
Here ‖φ‖² ≤ 2N_1 ≤ 6|α| and ⟨φ, 𝔏φ⟩ = Σ_μ‖∇_μ∇_0ψ + is∇_μ∇_1ψ‖² ≤ 2N_2 ≤ 52α². So ⟨ψ, X(X − 2|α|)ψ⟩ ≥ −157|α|³, and
  ‖(X − |α|)ψ‖² = ⟨ψ, X(X − 2|α|)ψ⟩ + α² ≥ α²(1 − 157|α|).
Step 2 (X − |α| is close to 𝔏 − 2|α| on ψ). X − |α| = (𝔏 − 2|α|) + (J + |α|). By Lemma 3.2 and Corollary 2.4, ‖(J + |α|)ψ‖ ≤ (526)^{1/2}|α|^{3/2} + 6^{1/2}|α|^{3/2} + α² ≤ 26|α|^{3/2}.
Step 3. |α|(1 − 157|α|) ≤ |α|(1 − 157|α|)^{1/2} ≤ ‖(X − |α|)ψ‖ ≤ (1 − θ)|α| + 26|α|^{3/2}, i.e. θ ≤ 26|α|^{1/2} + 157|α|. This contradicts the hypothesis. So Q = 0. ∎
Remarks. (1) No band-width statement and no rational flux is used; the proof works for every real α. It is the lattice form of the continuum argument "spec Π^†Π ⊂ {0} ∪ spec ΠΠ^† and ΠΠ^† = Π^†Π + 2|ef|". The lattice difficulty is that Π has a second zero (the symbol of ∇_0 + is∇_1 vanishes also at K = (−sπ/2, sπ/2) in the convention ∇_μ ↔ 1 − e^{iK_μ}, where the symbol of 𝔏 equals 4); the proof never uses the global identity spec X \ {0} = spec Y \ {0}, only the quadratic inequality of Step 1 on low-energy vectors, where that second zero is invisible. (2) The constants 26, 157 are crude. The numerics of §6 give the first band top at |α|(1 − 0.12|α|) and the second band bottom at |α|(3 − 0.6|α|) approximately, i.e. the true θ is O(|α|), not O(|α|^{1/2}).
(3) Lemma 5.7 of S123 (inf spec 𝔏 ≥ |α| − Cα²) is not needed below.
