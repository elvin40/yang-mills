import YmLean.LemmaH

/-!
# Discrete Gronwall and the contraction bound (THEOREM2_PROOF_v4.md §4.1, §5.1–§5.3)

`discrete_gronwall` is the Gronwall form of the task. `contraction_bound` is the form the
source uses (Prop. 4.1, Theorems C1 and B2: `N_j ≤ q N_{j−1} + Z`, `q < 1`).
Reuses `prod_le_exp` from LemmaH.lean.
-/

open Finset

namespace YmLean

/-- `a_{j+1} ≤ (1+ε_j) a_j + f_j`, `ε, f ≥ 0`, `a_0 ≥ 0` ⇒
`a_n ≤ Π_{j<n}(1+ε_j) · (a_0 + Σ_{j<n} f_j)`. -/
theorem discrete_gronwall (a ε f : ℕ → ℝ) (hε : ∀ j, 0 ≤ ε j) (hf : ∀ j, 0 ≤ f j)
    (ha0 : 0 ≤ a 0) (h : ∀ j, a (j + 1) ≤ (1 + ε j) * a j + f j) (n : ℕ) :
    a n ≤ (∏ j ∈ range n, (1 + ε j)) * (a 0 + ∑ j ∈ range n, f j) := by
  induction n with
  | zero => simp
  | succ n ih =>
    rw [prod_range_succ, sum_range_succ]
    have hP : 1 ≤ ∏ j ∈ range n, (1 + ε j) := one_le_prod fun j _ => by linarith [hε j]
    have hS : 0 ≤ a 0 + ∑ j ∈ range n, f j := add_nonneg ha0 (sum_nonneg fun j _ => hf j)
    calc a (n + 1) ≤ (1 + ε n) * a n + f n := h n
      _ ≤ (1 + ε n) * ((∏ j ∈ range n, (1 + ε j)) * (a 0 + ∑ j ∈ range n, f j)) + f n := by
          gcongr; linarith [hε n]
      _ ≤ (∏ j ∈ range n, (1 + ε j)) * (1 + ε n) * (a 0 + (∑ j ∈ range n, f j + f n)) := by
          have hPe : 1 ≤ (∏ j ∈ range n, (1 + ε j)) * (1 + ε n) :=
            one_le_mul_of_one_le_of_one_le hP (by linarith [hε n])
          nlinarith [mul_le_mul_of_nonneg_right hPe (hf n)]

/-- Gronwall with `Π(1+ε_j) ≤ exp Σ ε_j`. -/
theorem discrete_gronwall_exp (a ε f : ℕ → ℝ) (hε : ∀ j, 0 ≤ ε j) (hf : ∀ j, 0 ≤ f j)
    (ha0 : 0 ≤ a 0) (h : ∀ j, a (j + 1) ≤ (1 + ε j) * a j + f j) (n : ℕ) :
    a n ≤ Real.exp (∑ j ∈ range n, ε j) * (a 0 + ∑ j ∈ range n, f j) :=
  (discrete_gronwall a ε f hε hf ha0 h n).trans (mul_le_mul_of_nonneg_right
    (prod_le_exp ε hε _) (add_nonneg ha0 (sum_nonneg fun j _ => hf j)))

/-- Contraction form (Prop. 4.1, Theorems C1/B2): `N_{j+1} ≤ q N_j + Z`, `0 ≤ q < 1`,
`N_0, Z ≥ 0` ⇒ `N_j ≤ N_0 + Z/(1 − q)` for all `j`. -/
theorem contraction_bound (N : ℕ → ℝ) (q Z : ℝ) (hq0 : 0 ≤ q) (hq1 : q < 1) (hN0 : 0 ≤ N 0)
    (hZ : 0 ≤ Z) (h : ∀ j, N (j + 1) ≤ q * N j + Z) (n : ℕ) : N n ≤ N 0 + Z / (1 - q) := by
  have hpos : 0 < 1 - q := by linarith
  induction n with
  | zero => linarith [div_nonneg hZ hpos.le]
  | succ n ih =>
    have e : Z / (1 - q) = q * (Z / (1 - q)) + Z := by field_simp; ring
    nlinarith [h n, mul_le_mul_of_nonneg_left ih hq0, div_nonneg hZ hpos.le]

end YmLean

#print axioms YmLean.discrete_gronwall
#print axioms YmLean.discrete_gronwall_exp
#print axioms YmLean.contraction_bound
