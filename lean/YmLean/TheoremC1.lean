import YmLean.Gronwall

/-!
# Theorem C1, arithmetic core (THEOREM2_PROOF_v4.md §5.3; B2_TWOSTEP.md §2; KAPPA_BOUNDED.md Prop. 4.1)

`c1_two_step`: the two-step recursion `D_j ≤ q D_{j−2} + S` of Theorem C1 ⇒
`sup_j D_j ≤ max(D_0, D_1) + S/(1 − q)` (even and odd j iterated separately).
`c1_kappa_bound`: a level constant bounded by `A + C·N_j` is bounded by `κ_* := A + C(N_0 + Z/(1 − q))`.
`c1_window`: `|β_j − β_∞| ≤ κ_j g_j²`, `κ_j ≤ κ_*`, `Σ_{window} g_j² ≤ wγ²` ⇒ the window sum
deviates from `wβ_∞` by at most `κ_* w γ²`.
-/

open Finset

namespace YmLean

/-- Theorem C1 (B2_TWOSTEP §2): `D_{j+2} ≤ q D_j + S`, `0 ≤ q < 1`, `D_0, D_1, S ≥ 0` ⇒
`D_n ≤ max(D_0, D_1) + S/(1 − q)` for all `n`. -/
theorem c1_two_step (D : ℕ → ℝ) (q S : ℝ) (hq0 : 0 ≤ q) (hq1 : q < 1) (hD0 : 0 ≤ D 0)
    (hD1 : 0 ≤ D 1) (hS : 0 ≤ S) (h : ∀ j, D (j + 2) ≤ q * D j + S) (n : ℕ) :
    D n ≤ max (D 0) (D 1) + S / (1 - q) := by
  have key : ∀ r m, 0 ≤ D r → D (2 * m + r) ≤ D r + S / (1 - q) := fun r m hr => by
    simpa using contraction_bound (fun m => D (2 * m + r)) q S hq0 hq1 (by simpa using hr) hS
      (fun m => by simpa [show 2 * (m + 1) + r = 2 * m + r + 2 by ring] using h (2 * m + r)) m
  obtain ⟨m, rfl | rfl⟩ := Nat.even_or_odd' n
  · have := key 0 m hD0; simp only [add_zero] at this; linarith [le_max_left (D 0) (D 1)]
  · have := key 1 m hD1; linarith [ le_max_right (D 0) (D 1)]

/-- κ-bound (KAPPA_BOUNDED Prop. 4.1, last line; Theorems C1/B2): `N_{j+1} ≤ q N_j + Z`,
`0 ≤ q < 1`, `N_0, Z ≥ 0`, and `κ_j ≤ A + C N_j` with `C ≥ 0` ⇒
`κ_j ≤ κ_* := A + C(N_0 + Z/(1 − q))` for all `j`. Prop. 4.1 is `A = 0`, `C = 16/c_0 + 1`;
the affine `A` covers KAPPA (2.2), which is affine in `Y_2`. -/
theorem c1_kappa_bound (N κ : ℕ → ℝ) (q Z A C : ℝ) (hq0 : 0 ≤ q) (hq1 : q < 1) (hN0 : 0 ≤ N 0)
    (hZ : 0 ≤ Z) (hC : 0 ≤ C) (h : ∀ j, N (j + 1) ≤ q * N j + Z) (hκ : ∀ j, κ j ≤ A + C * N j)
    (j : ℕ) : κ j ≤ A + C * (N 0 + Z / (1 - q)) := by
  have := mul_le_mul_of_nonneg_left (contraction_bound N q Z hq0 hq1 hN0 hZ h j) hC
  linarith [hκ j]

/-- Window bound feeding Lemma D″: `|β_j − β_∞| ≤ κ_j g_j²`, `κ_j ≤ κ_*` (`κ_* ≥ 0`) on a window
`s` of length `w = |s|` with `Σ_{j∈s} g_j² ≤ wγ²` ⇒ `|Σ_{j∈s} β_j − wβ_∞| ≤ κ_* w γ²`. -/
theorem c1_window (β κ g : ℕ → ℝ) (βinf κs γ : ℝ) (s : Finset ℕ) (hκs : 0 ≤ κs)
    (hβ : ∀ j ∈ s, |β j - βinf| ≤ κ j * g j ^ 2) (hκ : ∀ j ∈ s, κ j ≤ κs)
    (hg : ∑ j ∈ s, g j ^ 2 ≤ s.card * γ ^ 2) :
    |∑ j ∈ s, β j - s.card * βinf| ≤ κs * s.card * γ ^ 2 := by
  have e : ∑ j ∈ s, β j - s.card * βinf = ∑ j ∈ s, (β j - βinf) := by
    rw [sum_sub_distrib, sum_const, nsmul_eq_mul]
  rw [e]
  calc |∑ j ∈ s, (β j - βinf)| ≤ ∑ j ∈ s, |β j - βinf| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ j ∈ s, κs * g j ^ 2 := sum_le_sum fun j hj =>
        (hβ j hj).trans (mul_le_mul_of_nonneg_right (hκ j hj) (sq_nonneg _))
    _ = κs * ∑ j ∈ s, g j ^ 2 := (mul_sum _ _ _).symm
    _ ≤ κs * (s.card * γ ^ 2) := mul_le_mul_of_nonneg_left hg hκs
    _ = κs * s.card * γ ^ 2 := by ring

end YmLean

#print axioms YmLean.c1_two_step
#print axioms YmLean.c1_kappa_bound
#print axioms YmLean.c1_window
