IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_T2_GAPRIME2 — the 2D gap (G_A′) for the charged SU(2) Wilson Hessian at constant flux

Date: 2026-10-28. Item GAPRIME, DERIVE (second attempt; the first attempt, SOURCES_T2_GAPRIME.md, stopped after its header and plan).
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not opened.
Read: the private agent brief "ITEM GAPRIME"; SOURCES_T2_GAPRIME.md; SOURCES_T2_S123.md l. 120–215 (§5), 270–285; SOURCES_T2_S123_VERIFY.md l. 95–172; BETA_FP_M.md l. 64–101; BETA_FP_H.md l. 13–50; BETA_FP_H_VERIFY.md l. 33–39; U3_LEMMA51.md l. 70–110; numerics/t2_s123_gap2d.py, t2_s123_phys2d.py and their JSON (read only).
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

## 4. Reduction of A′ to 𝔏 ⊗ 1 − 2ασ_y

Put A_c := 𝔏 ⊗ 1_2 − 2α σ_y (σ_y acts on the component index (b_0, b_1)) and R := A′ − A_c. For ψ = (ψ_0, ψ_1) write N_1(ψ) := ⟨ψ, (𝔏 ⊗ 1)ψ⟩ = Σ_{μ,ν}‖∇_μψ_ν‖² and a(ψ) := Σ_{μ,ν}‖∇_μψ_ν‖ ≤ 2N_1(ψ)^{1/2}.

Where −2ασ_y comes from [P]. Replace every shift by 1 and every phase e^{±iα} by 1 in the O(α) parts of A′:
- commutator block of (1.b): [T_0, T_1^*] → q̄ − 1 = e^{iα} − 1 ≈ iα, [T_1, T_0^*] → −iα, i.e. −ασ_y;
- spin term: u_i → (e_0, e_1, −e_0, −e_1), so Σ_{i<j}u_i^†u_j → E_{01} − E_{10} − 1 and K → K̄ := (2E_{01} − 2E_{10})/(2i) = σ_y; −2 sin φ K → −α σ_y.
The two contributions have the same sign and add. This is the lattice form of the continuum spin coupling 2efS (commutator half + Wilson spin half).

Lemma 4.1 (remainder) [P; scaling also V]. For |α| ≤ 0.1 and every ψ:
  ‖Rψ‖ ≤ 9.5|α|a(ψ) + 11α²‖ψ‖ ≤ 19|α|N_1(ψ)^{1/2} + 11α²‖ψ‖.
Proof. By Lemma 1.1, (1.a), (1.b): A′ = 𝔏 ⊗ 1 + C + (cos φ − 1)c^†c − c_0^†δ − δ^†c_0 + δ^†δ − 2 sin φ K, with C the commutator block. So
  R = (C + ασ_y) + (cos φ − 1)c^†c − c_0^†δ − δ^†c_0 + δ^†δ − 2 sin φ(K − K̄) − (2 sin(α/2) − α)σ_y.
(i) C + ασ_y has entries (q̄ − 1)(T_1^*T_0 − 1) + (e^{iα} − 1 − iα) and its adjoint-type partner (1 − q̄)(T_1T_0^* − 1) + (…); Lemma 2.1 gives ‖(C + ασ_y)ψ‖ ≤ |α|a + α²‖ψ‖.
(ii) ‖c‖ ≤ ‖c_0‖ + ‖δ‖ ≤ 2√2 + √2|α| ≤ 3.3, 1 − cos φ ≤ φ²/2 = α²/8: ‖(cos φ − 1)c^†c‖ ≤ 2α².
(iii) ‖δ^†δ‖ ≤ 2α²; ‖δ^†c_0ψ‖ ≤ √2|α|(‖∇_1ψ_0‖ + ‖∇_0ψ_1‖) ≤ √2|α|a.
(iv) δψ = (1 − e^{−iα})χ, χ := T_1ψ_0 + ψ_1, and c_0^† = (−∇_1^*, ∇_0^*)^T. So ‖c_0^†δψ‖ ≤ |α|(‖∇_1χ‖ + ‖∇_0χ‖); T_1^*∇_μT_1 = 1 − λ_μT_μ with |λ_μ − 1| ≤ |α| gives ‖∇_μT_1ψ_0‖ ≤ ‖∇_μψ_0‖ + |α|‖ψ_0‖. Total ≤ |α|a + 2α²‖ψ‖.
(v) K − K̄: the six products u_i^†u_j are (phase)·(word)·E_{νν′} with words T_0, T_1, 1, T_0^*T_1, T_0^*, T_1^* (six letters in all) and phases in {1, −e^{∓iα}}. Each u_i^†u_j − ū_i^†ū_j and its adjoint is bounded on ψ by (letters)·max‖∇ψ_ν‖ + |α|‖ψ‖ (Lemma 2.1). Summing and dividing by 2: ‖(K − K̄)ψ‖ ≤ 6a + 4|α|‖ψ‖; 2|sin φ| ≤ |α|.
(vi) |2 sin(α/2) − α| ≤ |α|³/24.
Sum: (1 + √2 + 1 + 6)|α|a + (1 + 2 + 2 + 2 + 4 + 0.01)α² ≤ 9.5|α|a + 11α². ∎
Numerics [V]: on eigenvectors of A′ with |eigenvalue| < 1.5|α| (Harper blocks q = 96, 384, 1597; both signs of α), ‖Rψ‖/|α|^{3/2} = 2.31, 2.34, 2.34. So R is of exact order |α|^{3/2} on low states, and the sign of −2ασ_y is right (with the opposite sign R would be of order |α|).

Lemma 4.2 (a priori bound on the spectral subspace near 0) [P]. Let 0 ≤ c ≤ 1, |α| ≤ 10^{−3}, P := 1_{(−c|α|, c|α|)}(A′). For ψ ∈ ran P, ‖ψ‖ = 1: N_1(ψ) ≤ 6|α| and ‖A′ψ‖ ≤ c|α|.
Proof. ‖A′ψ‖ ≤ c|α| and ⟨ψ, A′ψ⟩ ≤ c|α| by the spectral theorem. Lower form bound: ‖C‖ ≤ |α|; (cos φ − 1)c^†c ≥ −2α²; δ^†δ ≥ 0; |2Re⟨c_0ψ, δψ⟩| ≤ 2‖c_0ψ‖√2|α| ≤ 4|α|N_1^{1/2} (‖c_0ψ‖² ≤ 2N_1); |⟨ψ, Kψ⟩| ≤ 3 (Σ_{i<j}|z_i||z_j| ≤ (3/2)Σ_i|z_i|², and each link lies in two plaquettes), and 2|sin φ| ≤ |α|. So N_1 − 4|α|N_1^{1/2} ≤ (c + 4)|α| + 2α², which gives N_1^{1/2} ≤ 2|α| + (6α² + 5|α|)^{1/2} and N_1 ≤ 5.4|α| ≤ 6|α| for |α| ≤ 10^{−3}. ∎
Corollary 4.3. For ψ ∈ ran P as in Lemma 4.2: ‖Rψ‖ ≤ 19·6^{1/2}|α|^{3/2} + 11α² ≤ 48|α|^{3/2}.
Remark. Lemma 4.2 needs only first-order information, so §4 never meets the third-order term that forced the spectral subspace of 𝔏 in §3.

## 5. Main theorem

Theorem 5.1 ((G_A) for A′) [P]. Let 0 ≤ c < 1 and α_0(c) := ((1 − c)/100)². For every real α with 0 < |α| ≤ α_0(c):
  spec A′ ∩ (−c|α|, c|α|) = ∅.
Proof. Here |α| ≤ 10^{−4}, so Lemmas 4.2, 4.3 and Prop. 3.3 (with |α| ≤ 1/16) apply. Put θ := 1 − c − 48|α|^{1/2} − ε with ε > 0 so small that θ > 26|α|^{1/2} + 157|α|; this is possible because 74|α|^{1/2} + 157|α| ≤ 75.6|α|^{1/2} ≤ 0.756(1 − c) < 1 − c. Also θ < 1.
(a) A_c has no spectrum in (−(1 − θ)|α|, (1 − θ)|α|). A constant unitary W on C² diagonalizes σ_y, so A_c ≅ (𝔏 − 2|α|) ⊕ (𝔏 + 2|α|). 𝔏 + 2|α| ≥ 2|α|. By Prop. 3.3, spec 𝔏 ∩ [(1 + θ)|α|, (3 − θ)|α|] = ∅, so |𝔏 − 2|α|| ≥ (1 − θ)|α| on its spectrum. Hence ‖A_cψ‖ ≥ (1 − θ)|α|‖ψ‖ for every ψ.
(b) Suppose P = 1_{(−c|α|, c|α|)}(A′) ≠ 0 and take ψ ∈ ran P, ‖ψ‖ = 1. By Lemma 4.2 and Cor. 4.3, ‖A_cψ‖ ≤ ‖A′ψ‖ + ‖Rψ‖ ≤ c|α| + 48|α|^{3/2} = (1 − θ − ε)|α| < (1 − θ)|α|. This contradicts (a). So P = 0. ∎

Corollary 5.2 ((G_A′)) [P]. Under the same hypotheses, spec(H′|_{ker D′^†}) ∩ (−c|α|, c|α|) = ∅.
Proof. H′D′ = 0 (Lemma 1.1 check (b); in general S123 Lemma 5.8: criticality and gauge invariance) gives A′D′ = D′𝔏. So the closure of ran D′ is A′-invariant, hence (A′ is bounded self-adjoint) so is its orthogonal complement ker D′^†, and A′ = H′ there. So spec(H′|_{ker D′^†}) ⊂ spec A′. (This direction does not need S123 Lemma 5.7.) ∎

In S123 units (|α| = |ef| = 2|f|). (G_A′) and (G_A) hold with g_f = 2c|f| for 0 < |f| ≤ f_0 = α_0(c)/2, every c < 1. Example: c = ½ gives g_f = |f| for 0 < |f| ≤ 1.25·10^{−5}. The constants are j-, L- and averaging-independent, as S123 requires. For S123 Prop. 5.6 one needs g_f ≥ 4η_1 + 4C_M²|f|³ with η_1 = O(f²) (j-dependent constants); this holds for |f| ≤ min(f_0, f_1(j)). So (G_A) is available in Prop. 5.6 at every fixed j.
Sharpness. The continuum gap of A′ is (−|ef|, |ef|) (N–O level −|ef|, gauge copy +|ef|), so no c > 1 is possible for small α; Theorem 5.1 gives every c < 1. The physical operator H′|_{ker D′^†} has the larger continuum gap (−|ef|, 3|ef|); Theorem 5.1 does not prove the upper edge 3|ef| (not needed).

## 6. Numerics

Script numerics/t2_gaprime2_check.py (new; imports t2_s123_gap2d read-only), output numerics/t2_gaprime2_check.json, 55 s on the Mac. Interpreter numerics/.venv/bin/python.

Reproduction of the S123 JSON [V]. numerics/t2_s123_gap2d.py was copied to /tmp/gp2/rep and rerun (6 s, output in /tmp only). Every number in numerics/t2_s123_gap2d.json is reproduced; maximum absolute difference 0.

Formula of Lemma 1.1 versus the finite-difference Wilson Hessian [V]: see §1 (agreement 3–9·10^{−8} at (N, m) = (8,0), (24,1), (24,2), (48,1), (30,7); H′D′ = 0 to 3·10^{−14}).

Harper-type Bloch reduction. For flux α = 2πp/q (p, q coprime) the formula commutes with x_0-translations and with x_1-translations by q, so it reduces to 2q × 2q blocks over (k_0, k_1). Grid 3 × 3 for q < 1000, one Bloch point for q ≥ 1000 (the low bands are exponentially thin, width < 10^{−6}|α| at q = 96 per S123 §6). Large q with p > 1 is the finite stand-in for irrational flux; the proofs above do not use it. Physical part (H′ on ker D′^† via SVD) computed for q ≤ 400. Units: |α| = |ef|.

| p/q | α | min|spec A′|/|α| | top of N–O band /|α| | top band 1 of 𝔏 /|α| | bottom band 2 of 𝔏 /|α| | first physical level > 0 /|α| | (1 − min|spec A′|/|α|)/|α| | (3 − band 2)/|α| |
|---|---|---|---|---|---|---|---|---|
| 1/24 | 0.2618 | 0.96761 | −1.03089 | 0.96761 | 2.8394 | 2.8333 | 0.124 | 0.614 |
| 1/96 | 0.06545 | 0.99184 | −1.00807 | 0.99184 | 2.9593 | 2.9589 | 0.125 | 0.622 |
| 1/384 | 0.01636 | 0.99796 | −1.00204 | 0.99796 | 2.9898 | 2.9898 | 0.125 | 0.624 |
| 1/1536 | 0.00409 | 0.99949 | −1.00051 | 0.99949 | 2.9974 | – | 0.125 | 0.625 |
| 13/1218 | 0.06706 | 0.99164 | −1.00826 | 0.99164 | 2.9583 | – | 0.125 | 0.622 |
| 7/2213 | 0.01987 | 0.99752 | −1.00247 | 0.99752 | 2.9876 | – | 0.125 | 0.624 |
| 3/1597 | 0.01180 | 0.99853 | −1.00147 | 0.99853 | 2.9926 | – | 0.125 | 0.624 |
| 21/1597 | 0.08262 | 0.98971 | −1.01015 | 0.98971 | 2.9487 | – | 0.125 | 0.621 |
| 55/1597 | 0.2164 | 0.97318 | −1.02580 | 0.97318 | 2.8668 | – | 0.124 | 0.615 |
| 144/1597 | 0.5666 | 0.93055 | −1.06202 | 0.93061 | 2.6578 | – | 0.123 | 0.604 |
| 5/1351 | 0.02325 | 0.99710 | −1.00289 | 0.99710 | 2.9855 | – | 0.125 | 0.624 |

Reading [V].
- min|spec A′| = inf 𝔏 (the gauge copy) at every flux, = |α|(1 − 0.125|α| + …), and the N–O band sits at −|α|(1 + 0.12|α|). So the true constant in Theorem 5.1 is c = 1 − 0.125|α| + O(α²); the proof's c < 1 with α_0(c) = ((1 − c)/100)² is consistent and far from sharp.
- The scalar gap of Prop. 3.3 holds with θ_true ≈ 0.62|α| (lower side 0.125|α|): band 1 ends at |α|(1 − 0.125|α|), band 2 starts at |α|(3 − 0.62|α|). Prop. 3.3 proves θ ≈ 26|α|^{1/2}; the |α|^{1/2} loss comes from bounding the third-order term of Lemma 3.2 in norm. That term is ≈ 2.8|α|^{3/2} on low states (measured), so a θ of order |α| needs a finer comparison than Step 2 (not done; not needed).
- The coefficients 0.125 and 0.62 are the same for p = 1 and p > 1 at equal α (e.g. 1/96 versus 13/1218, 1/384 versus 7/2213). No dependence on the arithmetic of α/2π is visible, as the proof predicts.
- Physical spectrum (q ≤ 384): empty in (−1.0309|α|, 2.833|α|) at α = 0.26 and in (−1.0020|α|, 2.9898|α|) at α = 0.016; this matches S123 §6 and S123_VERIFY §7 (e.g. 2.9589 at α = 0.0654 there and here).
- Remainder of Lemma 4.1 on low eigenvectors: ‖Rψ‖ ≈ 2.34|α|^{3/2} (§4), against the proven 48|α|^{3/2}.

## 7. Remarks: the Nielsen–Olesen mode, gauge zero modes, and what is not proved

Nielsen–Olesen mode. In 2D at k_⊥ = 0 the N–O mode is not a zero mode. It is the lowest band of A′, at −|α|(1 + 0.12|α|) (numerics), i.e. the lowest Landau level of the spin-aligned block 𝔏 − 2|α| of A_c. It is a physical (non-gauge) negative mode, and Theorem 5.1 separates it from 0 by ≥ c|α|. The zero of the 4D N–O band, at |k̂_⊥|² ≈ |ef|, lies at k_⊥ ≠ 0; S123 Prop. 5.6 Step 2–3 handles it by spectral averaging, given (G_A). [P for the 2D statement; the 4D part is S123's.]
Gauge zero modes. H′ vanishes exactly on ran D′ (H′D′ = 0). In A′ these directions are lifted to the scalar spectrum 𝔏 ≥ |α|(1 − 0.125|α|) (gauge copy, S123 Lemma 5.8), and in (G_A′) they are excluded by the restriction to ker D′^†. Corollary 5.2 needs only the invariance of ker D′^†.

Not proved here.
- [N] The upper physical edge: spec(H′|_{ker D′^†}) ∩ (0, (3 − θ)|α|) = ∅. Not needed by S123.
- [N] Sharp constants. Proven: every c < 1 with α_0(c) = ((1 − c)/100)²; numerically c = 1 − 0.125|α|.
- [I] Identification of S123's A′ (Lemma 5.1: charged block of (2.1) with midpoint transport, tagged [I] there) with the Landau-gauge operator of Lemma 1.1 = the operator of the S123 script. Different transport conventions differ by a gauge transformation (unitary equivalence), so the spectrum and Theorem 5.1 do not depend on them. This is inherited from S123 §5–6 and its VERIFY, not new here.

## 8. Ledger

- Lemma 1.1 (explicit A′ = cos φ c^†c + D′D′^† − 2 sin φ K) [P; V: matches the finite-difference Hessian to ≤ 9.6·10^{−8} at 5 fluxes; H′D′ = 0 to 3·10^{−14}].
- (1.a), (1.b) curl form and curl–divergence identity [P].
- Lemma 2.1 (words), Lemma 2.2 (N_2 ≤ 2‖𝔏ψ‖² + 2|α|N_1 + 2α²), Lemma 2.3 (N_3 bound), Cor. 2.4 [P].
- Lemma 3.1 ([Π, Π^†] = 2|sin(α/2)|(V′ + V′^*) ≥ 2|α| − 3|α|𝔏 − |α|³) [P; identity V to 3.5·10^{−15}].
- Lemma 3.2 (J + |α| = third-order + O(α)·first-order + O(α²)) [P; V: size 2.8|α|^{3/2} on low states].
- Prop. 3.3 (scalar Landau gap: spec 𝔏 ∩ [(1+θ)|α|, (3−θ)|α|] = ∅ for θ > 26|α|^{1/2} + 157|α|, every real α) [P; V: θ_true ≈ 0.62|α| / 0.125|α|].
- Lemma 4.1 (‖Rψ‖ ≤ 19|α|N_1^{1/2} + 11α², A_c = 𝔏⊗1 − 2ασ_y) [P; V: ≈ 2.34|α|^{3/2} on low states, sign of σ_y confirmed].
- Lemma 4.2, Cor. 4.3 (a priori N_1 ≤ 6|α| and ‖Rψ‖ ≤ 48|α|^{3/2} on 1_{(−c|α|,c|α|)}(A′)) [P].
- Theorem 5.1 = (G_A): spec A′ ∩ (−c|α|, c|α|) = ∅ for 0 < |α| ≤ ((1 − c)/100)², every c ∈ [0, 1) [P]. Numerically min|spec A′| = |α|(1 − 0.125|α|) at 11 fluxes, α from 0.004 to 0.57, p = 1 and p > 1 [V].
- Corollary 5.2 = (G_A′): same gap for H′|_{ker D′^†}; in S123 units g_f = 2c|f| for |f| ≤ α_0(c)/2, e.g. g_f = |f| for |f| ≤ 1.25·10^{−5} [P].
- Reproduction of numerics/t2_s123_gap2d.json: exact (max difference 0) [V].
- Identification of S123's A′ with the Lemma 1.1 operator up to gauge [I, inherited from S123 Lemma 5.1/§6].
- Upper physical edge 3|α| and sharp constants [N].
- No literature result (Helffer–Sjöstrand, Harper semiclassics, Avron–van Mouche–Simon) is used [—].

Consequences for the campaign (no other file edited). S123 open item O1 is closed: (G_A′) is [P], j-, L- and averaging-independent, for every real f with 0 < |f| ≤ f_0. Then S123 Prop. 5.6 (Lipschitz N_1 near 0) and (Z_j) become [P given S123's own inputs: (I3), Theorems 3.3–4.3]. (M_j) (S123 Cor. 7.1, BETA_FP_M Prop. 4.3) is then reduced to: (I3) [argued, entrywise analyticity of Balaban's linearized averaging at flux f]; BETA_FP_M Prop. 4.4 region 1 [argued]; the neutral-sector [I] of S123_VERIFY §6. (G_A′) is no longer on that list. TRUST_LEDGER row B4 and KAPPA_BOUNDED should be updated by the supervisor after a VERIFY pass.

Conclusion: (G_A′) PROVED for small |f| with explicit constants: for every c < 1 (units |ef|), f_0 = ((1 − c)/100)²/2; e.g. gap ≥ |f| for 0 < |f| ≤ 1.25·10^{−5}.

STATUS: COMPLETE

Corrections after verification (SOURCES_T2_GAPRIME2_VERIFY, 2026-10-28): statement in f-units: gap 2c|f| for 0 < |f| ≤ ((1 − c)/100)²/2; Q projects onto a closed interval, so reapply with a slightly smaller θ (the hypothesis is open); constants rederived (25.63 ≤ 26; 156|α|³ + 6α⁴ ≤ 157|α|³; N_1 ≤ 5.29|α| giving 46.9 ≤ 48); the midpoint-transport [I] → [P] (gauge/trivialization changes are pointwise unitaries; the Hessian transforms by congruence at a critical point; a second Landau-gauge finite-difference build agrees to ≤ 1e−6); j, L, averaging enter only through Prop. 5.6's size condition g_f ≥ 4η_1 + 4C_M²|f|³ (usable range |f| ≤ min(f_0, f_1(j))). Numerics: the proof covers |ef| ≤ 1e−4 only, while the gap holds with physical ratio ≥ 0.95 on all α ∈ (0, 3.02] (sparse shift-invert at α = 1e−4, 2.5e−5: min|phys|/α = 1.0000125, 1.0000031).
