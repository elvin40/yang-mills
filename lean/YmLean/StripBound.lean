import YmLean.Gronwall

/-!
# Strip bound |δw_k| ≤ (3/2)τ, recursion form (SOURCES_HBETA_N3.md §4 Steps 0–3; SOURCES_HBETA_N3_VERIFY.md item 2)

`strip_bound_linear`: `x_{k+1} ≤ (1+ε_k) x_k` ⇒ `x_n ≤ x_0 exp(Σ_{k<n} ε_k)`
(`discrete_gronwall_exp` with zero source).
`strip_bound_quadratic`: `x_{k+1} ≤ (1+ε_k) x_k + δ_k x_k²` with a bootstrap `x_k ≤ (3/2)τ`,
effective rate `ε′_k = ε_k + (3/2)τ δ_k`.
-/

open Finset

namespace YmLean

/-- Linear strip recursion: `ε ≥ 0`, `x_0 ≥ 0`, `x_{k+1} ≤ (1+ε_k) x_k` ⇒ `x_n ≤ x_0 exp(Σ_{k<n} ε_k)`. -/
theorem strip_bound_linear (x ε : ℕ → ℝ) (hε : ∀ k, 0 ≤ ε k) (hx0 : 0 ≤ x 0)
    (h : ∀ k, x (k + 1) ≤ (1 + ε k) * x k) (n : ℕ) :
    x n ≤ x 0 * Real.exp (∑ k ∈ range n, ε k) := by
  have := discrete_gronwall_exp x ε (fun _ => 0) hε (fun _ => le_rfl) hx0 (by simpa using h) n
  simp only [sum_const_zero, add_zero] at this
  linarith

/-- Quadratic strip recursion with bootstrap, horizon `N`: `x_k ≥ 0`, `ε, δ ≥ 0`,
`x_{k+1} ≤ (1+ε_k) x_k + δ_k x_k²` for `k < N`, `x_0 ≤ τ`, `Σ_{k<N} ε_k ≤ a`,
`Σ_{k<N} δ_k·(2τ) ≤ b`, `e^{a+b} ≤ 3/2` ⇒ for all `n ≤ N`: `x_n ≤ τ e^{a+b}` and `x_n ≤ (3/2)τ`. -/
theorem strip_bound_quadratic (x ε δ : ℕ → ℝ) (τ a b : ℝ) (N : ℕ) (hx : ∀ k, 0 ≤ x k)
    (hε : ∀ k, 0 ≤ ε k) (hδ : ∀ k, 0 ≤ δ k)
    (h : ∀ k < N, x (k + 1) ≤ (1 + ε k) * x k + δ k * x k ^ 2) (hx0 : x 0 ≤ τ)
    (ha : ∑ k ∈ range N, ε k ≤ a) (hb : ∑ k ∈ range N, δ k * (2 * τ) ≤ b)
    (hab : Real.exp (a + b) ≤ 3 / 2) :
    ∀ n ≤ N, x n ≤ τ * Real.exp (a + b) ∧ x n ≤ 3 / 2 * τ := by
  have hτ : 0 ≤ τ := (hx 0).trans hx0
  set e : ℕ → ℝ := fun k => ε k + 3 / 2 * τ * δ k
  have he : ∀ k, 0 ≤ e k := fun k => add_nonneg (hε k) (by have := hδ k; positivity)
  have hsum : ∀ n ≤ N, ∑ k ∈ range n, e k ≤ a + b := fun n hn => by
    have h1 : ∑ k ∈ range n, e k ≤ ∑ k ∈ range N, e k :=
      sum_le_sum_of_subset_of_nonneg (range_subset_range.2 hn) fun k _ _ => he k
    have h2 : ∑ k ∈ range N, 3 / 2 * τ * δ k ≤ ∑ k ∈ range N, δ k * (2 * τ) :=
      sum_le_sum fun k _ => by nlinarith [hδ k]
    simp only [e, sum_add_distrib] at h1 ⊢
    linarith
  have hexp : ∀ n ≤ N, τ * Real.exp (∑ k ∈ range n, e k) ≤ τ * Real.exp (a + b) := fun n hn =>
    mul_le_mul_of_nonneg_left (Real.exp_le_exp.2 (hsum n hn)) hτ
  -- bootstrap: x_n ≤ τ Π_{k<n}(1 + e_k)
  have hP : ∀ n ≤ N, x n ≤ τ * ∏ k ∈ range n, (1 + e k) := by
    intro n
    induction n with
    | zero => intro; simpa using hx0
    | succ n ih =>
      intro hn
      have ihn := ih (by omega)
      have hxn : x n ≤ 3 / 2 * τ := by
        have := (mul_le_mul_of_nonneg_left (prod_le_exp e he (range n)) hτ).trans (hexp n (by omega))
        nlinarith
      have hq : δ n * x n ^ 2 ≤ δ n * (3 / 2 * τ) * x n := by
        have := mul_le_mul_of_nonneg_left hxn (mul_nonneg (hδ n) (hx n)); nlinarith
      have hstep : x (n + 1) ≤ (1 + e n) * x n := by
        have := h n (by omega); simp only [e]; nlinarith
      rw [prod_range_succ]
      calc x (n + 1) ≤ (1 + e n) * x n := hstep
        _ ≤ (1 + e n) * (τ * ∏ k ∈ range n, (1 + e k)) :=
            mul_le_mul_of_nonneg_left ihn (by linarith [he n])
        _ = τ * ((∏ k ∈ range n, (1 + e k)) * (1 + e n)) := by ring
  intro n hn
  have h1 := (hP n hn).trans ((mul_le_mul_of_nonneg_left (prod_le_exp e he (range n)) hτ).trans
    (hexp n hn))
  exact ⟨h1, by nlinarith⟩

end YmLean

#print axioms YmLean.strip_bound_linear
#print axioms YmLean.strip_bound_quadratic
