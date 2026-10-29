import YmLean.GpyMin
import Mathlib.NumberTheory.ZetaValues

/-!
# GPY potential: trace form = Bernoulli-polynomial form (SU(2), SU(3))

SOURCES_R3S1_GPY_MIN.md §1.2 (pair form, B(x) = Σ cos(nx)/n⁴ = π⁴/90 − π²x²/12 + πx³/12 − x⁴/48
on [0, 2π]). Statement check: `VERIFY_GpyMin.md`.

* `Bser_eq`: Σ_n cos(n·πu)/n⁴ = π⁴ b(u) for u ∈ [0, 2] (Mathlib `hasSum_one_div_nat_pow_mul_cos`,
  Bernoulli polynomial B₄).
* `normSq_tr`: |Σ_j e^{inθ_j}|² = (Σ_j cos nθ_j)² + (Σ_j sin nθ_j)².
* `V3_eq`, `V2_eq`: the continuum one-loop potential plus deformation,
  L³V(θ) = a|tr Ω|² − Σ_{n≥1} (2/(π²n⁴))|tr Ωⁿ|², minus its value at the centre, equals `G3 a s t`
  (resp. `G2 a s`) with θ₁ − θ₂ = πs, θ₂ − θ₃ = πt (resp. θ₁ − θ₂ = πs) on the alcove.
-/

namespace YmLean.Gpy

open Real

/-- B(x) = Σ_{n ≥ 1} cos(nx)/n⁴ (the n = 0 term is 0 in Lean). -/
noncomputable def Bser (x : ℝ) : ℝ := ∑' n : ℕ, cos (n * x) / (n : ℝ) ^ 4

theorem bernoulliFun_four (x : ℝ) : bernoulliFun 4 x = x ^ 4 - 2 * x ^ 3 + x ^ 2 - 1 / 30 := by
  have b2 : bernoulli 2 = 1 / 6 := by
    rw [bernoulli_eq_bernoulli'_of_ne_one (by norm_num), bernoulli'_two]
  have b3 : bernoulli 3 = 0 := by
    rw [bernoulli_eq_bernoulli'_of_ne_one (by norm_num), bernoulli'_three]
  have b4 : bernoulli 4 = -1 / 30 := by
    rw [bernoulli_eq_bernoulli'_of_ne_one (by norm_num), bernoulli'_four]
  simp [bernoulliFun, Polynomial.bernoulli_def, Finset.sum_range_succ, b2, b3, b4, Nat.choose]
  ring

theorem Bser_eq {u : ℝ} (h0 : 0 ≤ u) (h2 : u ≤ 2) : Bser (π * u) = π ^ 4 * bP u := by
  have h := hasSum_one_div_nat_pow_mul_cos (k := 2) (by norm_num) (x := u / 2)
    ⟨by linarith, by linarith⟩
  have hB : (Polynomial.map (algebraMap ℚ ℝ) (Polynomial.bernoulli (2 * 2))).eval (u / 2) =
      bernoulliFun 4 (u / 2) := rfl
  rw [hB, bernoulliFun_four] at h
  unfold Bser
  rw [show (fun n : ℕ => cos (n * (π * u)) / (n : ℝ) ^ 4) =
      (fun n : ℕ => 1 / (n : ℝ) ^ (2 * 2) * cos (2 * π * n * (u / 2))) by
    ext n; rw [show 2 * π * n * (u / 2) = n * (π * u) by ring]; ring]
  rw [h.tsum_eq]
  unfold bP; norm_num [Nat.factorial]; ring

theorem summable_cos_div (x : ℝ) : Summable (fun n : ℕ => cos (n * x) / (n : ℝ) ^ 4) := by
  refine Summable.of_norm_bounded (g := fun n : ℕ => 1 / (n : ℝ) ^ 4)
    (Real.summable_one_div_nat_pow.mpr (by norm_num)) (fun n => ?_)
  rw [Real.norm_eq_abs, abs_div, abs_of_nonneg (by positivity : (0 : ℝ) ≤ (n : ℝ) ^ 4)]
  exact div_le_div_of_nonneg_right (abs_cos_le_one _) (by positivity)

/-- |Σ_j e^{inθ_j}|² in real form. -/
theorem normSq_tr {ι : Type*} (S : Finset ι) (θ : ι → ℝ) (n : ℕ) :
    Complex.normSq (∑ j ∈ S, Complex.exp (((n : ℝ) * θ j : ℝ) * Complex.I)) =
      (∑ j ∈ S, cos (n * θ j)) ^ 2 + (∑ j ∈ S, sin (n * θ j)) ^ 2 := by
  rw [Complex.normSq_apply, Complex.re_sum, Complex.im_sum]
  simp only [Complex.exp_ofReal_mul_I_re, Complex.exp_ofReal_mul_I_im]
  ring

/-- D_n(θ) = |tr Ωⁿ|² for SU(3), Ω = diag(e^{iθ₁}, e^{iθ₂}, e^{iθ₃}). -/
noncomputable def D3 (θ₁ θ₂ θ₃ : ℝ) (n : ℕ) : ℝ :=
  Complex.normSq (Complex.exp (((n : ℝ) * θ₁ : ℝ) * Complex.I) +
    Complex.exp (((n : ℝ) * θ₂ : ℝ) * Complex.I) + Complex.exp (((n : ℝ) * θ₃ : ℝ) * Complex.I))

theorem D3_eq (θ₁ θ₂ θ₃ : ℝ) (n : ℕ) :
    D3 θ₁ θ₂ θ₃ n = 3 + 2 * (cos (n * (θ₁ - θ₂)) + cos (n * (θ₂ - θ₃)) + cos (n * (θ₁ - θ₃))) := by
  have h := normSq_tr Finset.univ ![θ₁, θ₂, θ₃] n
  simp only [Fin.sum_univ_three, Matrix.cons_val_zero, Matrix.cons_val_one,
    Matrix.cons_val_two, Matrix.head_cons, Matrix.tail_cons] at h
  unfold D3; rw [h]
  simp only [mul_sub, cos_sub]
  nlinarith [sin_sq_add_cos_sq (n * θ₁), sin_sq_add_cos_sq (n * θ₂), sin_sq_add_cos_sq (n * θ₃)]

/-- Continuum one-loop GPY potential plus deformation, SU(3):
L³V = a|tr Ω|² − Σ_n (2/(π²n⁴))|tr Ωⁿ|². -/
noncomputable def V3 (a θ₁ θ₂ θ₃ : ℝ) : ℝ :=
  a * D3 θ₁ θ₂ θ₃ 1 - ∑' n : ℕ, 2 / (π ^ 2 * (n : ℝ) ^ 4) * D3 θ₁ θ₂ θ₃ n

theorem V3_pair (a θ₁ θ₂ θ₃ : ℝ) :
    V3 a θ₁ θ₂ θ₃ = 3 * a - 6 / π ^ 2 * (π ^ 4 / 90) + 2 * (a * cos (θ₁ - θ₂) + a * cos (θ₂ - θ₃)
      + a * cos (θ₁ - θ₃)) - 4 / π ^ 2 * (Bser (θ₁ - θ₂) + Bser (θ₂ - θ₃) + Bser (θ₁ - θ₃)) := by
  have hz : ∑' n : ℕ, 1 / (n : ℝ) ^ 4 = π ^ 4 / 90 := hasSum_zeta_four.tsum_eq
  have hs0 : Summable (fun n : ℕ => 1 / (n : ℝ) ^ 4) := Real.summable_one_div_nat_pow.mpr (by norm_num)
  have e : (fun n : ℕ => 2 / (π ^ 2 * (n : ℝ) ^ 4) * D3 θ₁ θ₂ θ₃ n) = fun n : ℕ =>
      6 / π ^ 2 * (1 / (n : ℝ) ^ 4) + 4 / π ^ 2 * (cos (n * (θ₁ - θ₂)) / (n : ℝ) ^ 4 +
        cos (n * (θ₂ - θ₃)) / (n : ℝ) ^ 4 + cos (n * (θ₁ - θ₃)) / (n : ℝ) ^ 4) := by
    ext n; rw [D3_eq]
    rcases Nat.eq_zero_or_pos n with hn | hn
    · subst hn; simp
    · have : (n : ℝ) ≠ 0 := by exact_mod_cast hn.ne'
      field_simp; ring
  unfold V3; rw [e, D3_eq]
  rw [(hs0.mul_left _).tsum_add ((((summable_cos_div _).add (summable_cos_div _)).add
      (summable_cos_div _)).mul_left _), tsum_mul_left, tsum_mul_left,
    ((summable_cos_div _).add (summable_cos_div _)).tsum_add (summable_cos_div _),
    (summable_cos_div _).tsum_add (summable_cos_div _), hz]
  unfold Bser; push_cast; ring_nf

theorem V3_eq {a θ₁ θ₂ θ₃ : ℝ} (hx : 0 ≤ θ₁ - θ₂) (hy : 0 ≤ θ₂ - θ₃) (hxy : θ₁ - θ₃ ≤ 2 * π) :
    V3 a θ₁ θ₂ θ₃ - V3 a (2 * π / 3) 0 (-(2 * π / 3)) =
      G3 a ((θ₁ - θ₂) / π) ((θ₂ - θ₃) / π) := by
  have hp := pi_pos; have hp0 : π ≠ 0 := hp.ne'
  rw [V3_pair, V3_pair]
  have h13 : θ₁ - θ₃ = (θ₁ - θ₂) + (θ₂ - θ₃) := by ring
  rw [h13] at hxy ⊢
  generalize θ₁ - θ₂ = x at *
  generalize θ₂ - θ₃ = y at *
  have ex : x = π * (x / π) := by field_simp
  have ey : y = π * (y / π) := by field_simp
  have exy : x + y = π * (x / π + y / π) := by field_simp
  have Bx := Bser_eq (u := x / π) (by positivity) (by rw [div_le_iff₀ hp]; linarith)
  have By := Bser_eq (u := y / π) (by positivity) (by rw [div_le_iff₀ hp]; linarith)
  have Bxy := Bser_eq (u := x / π + y / π) (by positivity)
    (by rw [← add_div, div_le_iff₀ hp]; linarith)
  have B23 := Bser_eq (u := 2 / 3) (by norm_num) (by norm_num)
  have B43 := Bser_eq (u := 4 / 3) (by norm_num) (by norm_num)
  rw [← ex] at Bx; rw [← ey] at By; rw [← exy] at Bxy
  simp only [sub_zero, sub_neg_eq_add, zero_add]
  rw [show π * (2 / 3 : ℝ) = 2 * π / 3 by ring] at B23
  rw [show π * (4 / 3 : ℝ) = 2 * π / 3 + 2 * π / 3 by ring] at B43
  rw [Bx, By, Bxy, B23, B43]
  have c23 : cos (2 * π / 3) = -1 / 2 := by
    rw [show 2 * π / 3 = π * (2 / 3) by ring]; exact cos_two_pi_div_three
  have c43 : cos (2 * π / 3 + 2 * π / 3) = -1 / 2 := by
    rw [show 2 * π / 3 + 2 * π / 3 = 2 * π - π * (2 / 3) by ring, cos_two_pi_sub]
    exact cos_two_pi_div_three
  rw [c23, c43]
  unfold G3
  rw [← ex, ← ey, ← exy]
  have : bP (4 / 3 : ℝ) = bP (2 / 3 : ℝ) := by unfold bP; norm_num
  rw [this]
  field_simp
  ring

/-- SU(2): D_n = |e^{inθ₁} + e^{inθ₂}|² and L³V = a|tr Ω|² − Σ_n (2/(π²n⁴))|tr Ωⁿ|². -/
noncomputable def D2 (θ₁ θ₂ : ℝ) (n : ℕ) : ℝ :=
  Complex.normSq (Complex.exp (((n : ℝ) * θ₁ : ℝ) * Complex.I) +
    Complex.exp (((n : ℝ) * θ₂ : ℝ) * Complex.I))

theorem D2_eq (θ₁ θ₂ : ℝ) (n : ℕ) : D2 θ₁ θ₂ n = 2 + 2 * cos (n * (θ₁ - θ₂)) := by
  have h := normSq_tr Finset.univ ![θ₁, θ₂] n
  simp only [Fin.sum_univ_two, Matrix.cons_val_zero, Matrix.cons_val_one] at h
  unfold D2; rw [h]
  simp only [mul_sub, cos_sub]
  nlinarith [sin_sq_add_cos_sq (n * θ₁), sin_sq_add_cos_sq (n * θ₂)]

noncomputable def V2 (a θ₁ θ₂ : ℝ) : ℝ :=
  a * D2 θ₁ θ₂ 1 - ∑' n : ℕ, 2 / (π ^ 2 * (n : ℝ) ^ 4) * D2 θ₁ θ₂ n

theorem V2_pair (a θ₁ θ₂ : ℝ) :
    V2 a θ₁ θ₂ = 2 * a - 4 / π ^ 2 * (π ^ 4 / 90) + 2 * a * cos (θ₁ - θ₂)
      - 4 / π ^ 2 * Bser (θ₁ - θ₂) := by
  have hz : ∑' n : ℕ, 1 / (n : ℝ) ^ 4 = π ^ 4 / 90 := hasSum_zeta_four.tsum_eq
  have hs0 : Summable (fun n : ℕ => 1 / (n : ℝ) ^ 4) := Real.summable_one_div_nat_pow.mpr (by norm_num)
  have e : (fun n : ℕ => 2 / (π ^ 2 * (n : ℝ) ^ 4) * D2 θ₁ θ₂ n) = fun n : ℕ =>
      4 / π ^ 2 * (1 / (n : ℝ) ^ 4) + 4 / π ^ 2 * (cos (n * (θ₁ - θ₂)) / (n : ℝ) ^ 4) := by
    ext n; rw [D2_eq]
    rcases Nat.eq_zero_or_pos n with hn | hn
    · subst hn; simp
    · have : (n : ℝ) ≠ 0 := by exact_mod_cast hn.ne'
      field_simp; ring
  unfold V2; rw [e, D2_eq]
  rw [(hs0.mul_left _).tsum_add ((summable_cos_div _).mul_left _), tsum_mul_left, tsum_mul_left,
    hz]
  unfold Bser; push_cast; ring_nf

theorem V2_eq {a θ₁ θ₂ : ℝ} (hx : 0 ≤ θ₁ - θ₂) (hx2 : θ₁ - θ₂ ≤ 2 * π) :
    V2 a θ₁ θ₂ - V2 a π 0 = G2 a ((θ₁ - θ₂) / π) := by
  have hp := pi_pos; have hp0 : π ≠ 0 := hp.ne'
  rw [V2_pair, V2_pair]
  generalize θ₁ - θ₂ = x at *
  have ex : x = π * (x / π) := by field_simp
  have Bx := Bser_eq (u := x / π) (by positivity) (by rw [div_le_iff₀ hp]; linarith)
  have B1 := Bser_eq (u := 1) (by norm_num) (by norm_num)
  rw [← ex] at Bx; rw [mul_one] at B1
  simp only [sub_zero]
  rw [Bx, B1, Real.cos_pi]
  unfold G2
  rw [← ex]
  field_simp
  ring

end YmLean.Gpy
