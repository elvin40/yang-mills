import Mathlib.Topology.Algebra.InfiniteSum.Real

/-!
# L-009 (Theorem K), telescoping parts (KAPPA_BOUNDED.md §5.1–§5.2)

`x j` stands for `S_j`, `β∞` for `b = c log L`. L-009 (Theorem K) itself (|d_k| ≤ κ_*) is analysis
of the one-loop symbols and is not formalized; these are the arithmetic steps around it.
-/

open Finset

namespace YmLean

/-- Per-step increments within `D j` of `β∞` give partial sums within `Σ D j` of `n β∞`.
Abstract telescoping form of KAPPA_BOUNDED §5.2 (sum of per-step errors). -/
theorem telescoping_bound (x : ℕ → ℝ) (βinf : ℝ) (D : ℕ → ℝ)
    (h : ∀ j, |x (j + 1) - x j - βinf| ≤ D j) (n : ℕ) :
    |x n - x 0 - n * βinf| ≤ ∑ j ∈ range n, D j := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [sum_range_succ]
    have e : x (n + 1) - x 0 - ((n + 1 : ℕ) : ℝ) * βinf
        = (x n - x 0 - n * βinf) + (x (n + 1) - x n - βinf) := by push_cast; ring
    rw [e]; exact (abs_add_le _ _).trans (add_le_add ih (h n))

/-- Summable, nonnegative `D`: the bound is uniform in `n`, by `Σ' D`. -/
theorem telescoping_bound_tsum (x : ℕ → ℝ) (βinf : ℝ) (D : ℕ → ℝ) (hD : ∀ j, 0 ≤ D j)
    (hs : Summable D) (h : ∀ j, |x (j + 1) - x j - βinf| ≤ D j) (n : ℕ) :
    |x n - x 0 - n * βinf| ≤ ∑' j, D j :=
  (telescoping_bound x βinf D h n).trans (hs.sum_le_tsum _ fun j _ => hD j)

/-- KAPPA_BOUNDED (5.1): `|S_k − k b| ≤ R` for all `k` (L-009 (Theorem K), `R = κ_*`) gives the
two-sided window bound `|S_K − S_k − b(K − k)| ≤ 2R` for `k ≤ K`. -/
theorem window_of_partial (x : ℕ → ℝ) (b R : ℝ) (h : ∀ k, |x k - k * b| ≤ R) (k K : ℕ)
    (hkK : k ≤ K) : |x K - x k - b * ((K - k : ℕ) : ℝ)| ≤ 2 * R := by
  have e : x K - x k - b * ((K - k : ℕ) : ℝ) = (x K - K * b) - (x k - k * b) := by
    push_cast [hkK]; ring
  rw [e]; linarith [abs_sub (x K - K * b) (x k - k * b), h K, h k]

end YmLean

#print axioms YmLean.telescoping_bound
#print axioms YmLean.telescoping_bound_tsum
#print axioms YmLean.window_of_partial
