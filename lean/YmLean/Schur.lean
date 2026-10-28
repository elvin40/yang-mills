import YmLean.OishiRump

/-!
# Schur test (CMP 96 Lemma 2.1 as used in the notes)

Sources: `../SOURCES_S2_FORM.md` §2 (Step Π3, "Schur over blocks"), `../SOURCES_A3_SIGMA.md` 2.6,
`../SOURCES_LOC.md` §3.3 (Schur test [P]), `../SOURCES_A1_KERNEL.md` §7 (Schur step of Lemma CT).
Norm: the ℓ² operator (spectral) norm `Matrix.Norms.L2Operator`, as in OishiRump.lean.
`schur_test_weighted`: positive weight `p`, `Σ_y |K x y| p y ≤ a p x`, `Σ_x |K x y| p x ≤ b p y`
⇒ `‖K‖₂ ≤ √(ab)`. `schur_test`: `p = 1` (sup row sum ≤ a, sup column sum ≤ b).
Proof: Cauchy–Schwarz `|Σ_y K x y v y|² ≤ (Σ_y |K x y| p y)(Σ_y |K x y| |v y|²/p y)`, then swap sums.
-/

open Matrix Finset
open scoped Matrix.Norms.L2Operator

namespace YmLean

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n]

/-- **Weighted Schur test.** -/
theorem schur_test_weighted (K : Matrix n n 𝕜) (p : n → ℝ) (hp : ∀ i, 0 < p i) {a b : ℝ}
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hrow : ∀ x, ∑ y, ‖K x y‖ * p y ≤ a * p x)
    (hcol : ∀ y, ∑ x, ‖K x y‖ * p x ≤ b * p y) : ‖K‖ ≤ √(a * b) := by
  rw [cstar_norm_def]
  refine ContinuousLinearMap.opNorm_le_bound _ (Real.sqrt_nonneg _) fun v => ?_
  set u := v.ofLp
  set S : n → ℝ := fun x => ∑ y, ‖K x y‖ * (‖u y‖ ^ 2 / p y)
  have key : ∀ x, ‖(K *ᵥ u) x‖ ^ 2 ≤ a * p x * S x := by
    intro x
    have h1 : ‖(K *ᵥ u) x‖ ≤ ∑ y, ‖K x y‖ * ‖u y‖ := by
      simp only [mulVec, dotProduct]
      exact (norm_sum_le _ _).trans (le_of_eq (sum_congr rfl fun y _ => norm_mul _ _))
    have h2 : (∑ y, ‖K x y‖ * ‖u y‖) ^ 2 ≤ (∑ y, ‖K x y‖ * p y) * S x :=
      sum_sq_le_sum_mul_sum_of_sq_le_mul _ (fun y _ => by have := hp y; positivity)
        (fun y _ => by have := hp y; positivity) fun y _ => le_of_eq (by
          have := (hp y).ne'; field_simp)
    calc _ ≤ (∑ y, ‖K x y‖ * ‖u y‖) ^ 2 := pow_le_pow_left₀ (norm_nonneg _) h1 2
      _ ≤ _ := h2
      _ ≤ a * p x * S x := mul_le_mul_of_nonneg_right (hrow x)
            (sum_nonneg fun y _ => by have := hp y; positivity)
  have hsum : ∑ x, ‖(K *ᵥ u) x‖ ^ 2 ≤ a * b * ∑ y, ‖u y‖ ^ 2 := calc
    _ ≤ ∑ x, a * p x * S x := sum_le_sum fun x _ => key x
    _ = a * ∑ y, (∑ x, ‖K x y‖ * p x) * (‖u y‖ ^ 2 / p y) := by
      simp only [S, mul_sum, sum_mul]; rw [sum_comm]
      exact sum_congr rfl fun y _ => sum_congr rfl fun x _ => by ring
    _ ≤ a * ∑ y, b * p y * (‖u y‖ ^ 2 / p y) := mul_le_mul_of_nonneg_left
        (sum_le_sum fun y _ => mul_le_mul_of_nonneg_right (hcol y)
          (by have := hp y; positivity)) ha
    _ = a * b * ∑ y, ‖u y‖ ^ 2 := by
      rw [mul_assoc, mul_sum, mul_sum]
      exact congrArg _ (sum_congr rfl fun y _ => by have := (hp y).ne'; field_simp)
  rw [EuclideanSpace.norm_eq, EuclideanSpace.norm_eq, ← Real.sqrt_mul (by positivity)]
  simpa [u] using Real.sqrt_le_sqrt hsum

/-- **Schur test** (unweighted): sup row sum ≤ a, sup column sum ≤ b ⇒ `‖K‖₂ ≤ √(ab)`. -/
theorem schur_test (K : Matrix n n 𝕜) {a b : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b)
    (hrow : ∀ x, ∑ y, ‖K x y‖ ≤ a) (hcol : ∀ y, ∑ x, ‖K x y‖ ≤ b) : ‖K‖ ≤ √(a * b) :=
  schur_test_weighted K (fun _ => 1) (fun _ => one_pos) ha hb (by simpa using hrow)
    (by simpa using hcol)

end YmLean

#print axioms YmLean.schur_test_weighted
#print axioms YmLean.schur_test
