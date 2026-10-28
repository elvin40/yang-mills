# VERIFY: Schur.lean, CombesThomas.lean

Statement check of the Lean theorems against the Markdown sources. Build: `lake build` passes, no `sorry`. Axioms of all eight theorems: `[propext, Classical.choice, Quot.sound]`.

## Notation

- `‖A‖` = spectral norm (`Matrix.Norms.L2Operator`), as in OishiRump.lean and CertBridge.lean. `𝕜` = ℝ or ℂ.
- `rq A v = re ⟪v, A v⟫` (CertBridge.lean). "N ≥ c" is `∀ v, c * ‖v‖^2 ≤ rq N v`. N need not be Hermitian (the note uses Re⟨u, N̂_ε u⟩ for the non-self-adjoint N̂_ε).
- `W = diagonal (fun x => (w x : 𝕜))`, `W⁻¹` written as `diagonal (fun x => (w x : 𝕜)⁻¹)`.

## Schur test (Schur.lean)

| Markdown | Lean |
|---|---|
| SOURCES_LOC.md §3.3: kernel K, ‖K‖ ≤ sup row sum (symmetric bound) | `schur_test K ha hb hrow hcol` with a = b: ‖K‖ ≤ √(a·a) = a |
| SOURCES_S2_FORM.md §2 Π3: ‖T‖ ≤ (sup row · sup column)^{1/2} | `schur_test`: `∀ x, Σ_y ‖K x y‖ ≤ a`, `∀ y, Σ_x ‖K x y‖ ≤ b` ⇒ `‖K‖ ≤ √(a * b)` |
| SOURCES_A3_SIGMA.md 2.6: ‖D(s)‖ ≤ ‖K‖ ≤ S_d ε_W | `schur_test` with a = b = S_d ε_W (row and column sums of the majorant ε_W e^{−½δ_0|·|}) |
| SOURCES_A1_KERNEL.md §7 Schur step with weights (μ(y″)/μ(y))^{1/2} | `schur_test_weighted K p`: `p > 0`, `Σ_y ‖K x y‖ p y ≤ a p x`, `Σ_x ‖K x y‖ p x ≤ b p y` ⇒ `‖K‖ ≤ √(a * b)` |

Hypotheses `0 ≤ a`, `0 ≤ b` are assumed. They follow from the row-sum bounds when ι is nonempty. The Schur test of the note is stated on block-valued kernels (T_{yy′} operators, ‖T_{yy′}‖ in place of |K|) in SOURCES_S2_FORM Π3. The Lean statement is scalar. The block version follows by applying `schur_test` to the scalar majorant ‖T_{yy′}‖ and the triangle inequality for the block sum; this step is NOT formalized.

## Lemma CT (CombesThomas.lean)

| SOURCES_A1_KERNEL.md §7 | Lean |
|---|---|
| (ii) N̂ ≥ c_− > 0 | `hc : 0 < c`, `hN : ∀ v, c * ‖v‖^2 ≤ rq N v` |
| ψ = e^{εf}, f(y) = d(y, y′), N̂_ε = ψN̂ψ^{−1} | `w x = Real.exp (ε * d x x₀)` (`combes_thomas_exp`), `W N W⁻¹` |
| ‖E‖ = ‖N̂_ε − N̂‖ ≤ c_−/2 | `hE : ‖W N W⁻¹ − N‖ ≤ c / 2` |
| Re⟨u, N̂_εu⟩ ≥ (c_−/2)‖u‖² ⇒ N̂_ε invertible, ‖N̂_ε^{−1}‖ ≤ 2/c_− | `coercive_inv` (generic) and conclusion 2 of `combes_thomas` |
| N̂_ε^{−1} = ψN̂^{−1}ψ^{−1}; matrix element bounded by the norm | `hinv` inside `combes_thomas`; `norm_entry_le` (\|A x y\| ≤ ‖A‖) |
| conclusion \|g(y,y′)\| ≤ (2/c_−) e^{−εd(y,y′)} (μ-weights m = 1) | `combes_thomas`: `‖N⁻¹ x y‖ ≤ 2/c * (w y / w x)`; `combes_thomas_decay`: `‖N⁻¹ x y‖ ≤ 2/c * exp(−(ε * d x y))` |
| kernel of E is n̂(y,y″)(e^{ε(f(y)−f(y″))} − 1); Schur ⇒ ‖E‖ ≤ c_−/2 | `combes_thomas_schur`: row and column sums of `‖N x y‖ * \|exp(ε(d x x₀ − d y x₀)) − 1\|` ≤ c/2 for all x₀ |

Direction. With `w x = e^{ε d(x, x₀)}`, the weighted bound is `|N⁻¹ x y| ≤ (2/c) e^{ε(d(y,x₀) − d(x,x₀))}` (`combes_thomas_exp`). The decay form takes `x₀ = y` and uses only `d y y = 0`. It needs the hypothesis `hE` for every centre `x₀` (the note fixes y′ = x₀ and varies it). Using the triangle inequality on `d(y,x₀) − d(x,x₀)` gives `≤ d(x,y)`, i.e. GROWTH, so that route is not used.

Weaker than the note (the Lean hypotheses are weaker): N need not be self-adjoint; d is any function with `d x x = 0` (no symmetry, no triangle inequality); c_+ and δ do not appear (they enter only the verification of `hE`).

## Not formalized

1. The identification of N with the block operator: N̂ = S^{−1/2}(QGQ*)S^{−1/2} on ℋ = ℓ²(𝔅, μ), the μ-weights m(y,y′) = (μ(y)μ(y′))^{−1/2} and the conversion ⟨1_y, A1_{y′}⟩ = μ(y)μ(y′)a(y,y′). Lean works on ℓ²(ι) with counting measure; with the unitary ℓ²(𝔅, μ) → ℓ²(𝔅), 1_y ↦ μ(y)^{1/2}e_y, the kernel entries carry the factor m, which is the note's statement. This change of variables is not written in Lean.
2. The step from kernel bound (i) |n̂| ≤ c_+ m e^{−δd} to the row/column-sum hypothesis of `combes_thomas_schur`: |e^x − 1| ≤ |x|e^{|x|}, the triangle inequality |f(y) − f(y″)| ≤ d(y,y″), ε ≤ δ/2, and the sum Σ(δ/2) with ε c_+ Σ(δ/2) ≤ c_−/2.
3. The inputs (K) (kernel decay of QGQ* from CMP 99 Thm 3.3/3.12, walk expansion) and (C) (N̂ ≥ c_−; open per SOURCES_A1_A4_VERIFY.md §3, grade "UNSUPPORTED").
4. Theorem A1′ (§10) arithmetic: the rescaling by s(y) = (L^jη)² and the conversion to Balaban's two-scale form.
5. Block-valued Schur test (see above).
