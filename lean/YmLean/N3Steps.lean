import YmLean.LemmaHSteps
import Mathlib.Analysis.Complex.Liouville
import Mathlib.Analysis.SpecialFunctions.Pow.Deriv

/-!
# L-232 (Lemma N3), Steps 0 and 2 (SOURCES_HBETA_N3.md §4, one-argument case)

These are the inputs `ε_k` of StripBound.lean / the column sums of LemmaH.lean, at complex
`c`. Notation: `u = x + iy`, `g_r = 1/√x` (real-part coupling), `z = u^{−1/2}` (principal
branch, Mathlib `cpow`), `βj : ℂ → ℂ` one step's β-function of one coupling.

Step 0: `inv_sqrt_dev` (`|s| ≤ ½` ⇒ `|(1+s)^{−1/2} − 1| ≤ √2|s|`), `z_dev`
(`|z − g_r| ≤ √2 g_r³|y|`, `z ∈ D(g_r, ρg_r/2)`), `cauchy_second` (`|β″| ≤ 8M/(ρ²g_r²)` on
`D(g_r, ρg_r/2)`), `n3_step0_deriv` (`|β′(z)| ≤ C₁′ = C₁ + 12MγY/ρ²`), `n3_step0_du`
(`|∂_u β(u^{−1/2})| ≤ ½C₁′g_r³`), `n3_step0_re` (`Re β(u^{−1/2}) ≥ β/2`).
Step 1 (complex Gronwall, used by Step 2): `lemma_H_complex`.
Step 2: `n3_S3` (`Σ_i (Re u_i)^{−3/2} ≤ 4γ/β`), `n3_step2` (`Σ|B′_j| ≤ e^{x_C} − 1 ≤ ½`,
`|v_k + 1| ≤ ½`, `½ ≤ |v_k| ≤ 3/2`, `x_C = 2C₁′Aγ/β`).
-/

open Finset Set Metric Complex

noncomputable section

namespace YmLean

/-! ## Step 0 -/

/-- Principal `u^{−1/2}`: `(u^{−1/2})² · u = 1` and `Re u^{−1/2} ≥ 0`, for `u ≠ 0`. -/
lemma cpow_neg_half_props {u : ℂ} (hu : u ≠ 0) :
    (u ^ (-(1 / 2) : ℂ)) ^ 2 * u = 1 ∧ 0 ≤ (u ^ (-(1 / 2) : ℂ)).re := by
  constructor
  · rw [← cpow_nat_mul, show ((2 : ℕ) : ℂ) * (-(1 / 2)) = -1 by push_cast; ring, cpow_neg_one,
      inv_mul_cancel₀ hu]
  · rw [cpow_def_of_ne_zero hu, exp_re]
    refine mul_nonneg (Real.exp_pos _).le (Real.cos_nonneg_of_mem_Icc ⟨?_, ?_⟩)
    · have := log_im_le_pi u
      simp only [mul_im, neg_re, neg_im, div_ofNat_re, div_ofNat_im, one_re, one_im]
      norm_num; linarith
    · have := neg_pi_lt_log_im u
      simp only [mul_im, neg_re, neg_im, div_ofNat_re, div_ofNat_im, one_re, one_im]
      norm_num; linarith

/-- Core of Step 0: `w²(1+s) = 1`, `Re w ≥ 0`, `|s| ≤ ½` ⇒ `|w − 1| ≤ √2|s|`. -/
lemma inv_sqrt_dev_core {s w : ℂ} (hs : ‖s‖ ≤ 1 / 2) (hw : w ^ 2 * (1 + s) = 1)
    (hre : 0 ≤ w.re) : ‖w - 1‖ ≤ √2 * ‖s‖ := by
  set A := 1 + s with hA
  have hAre : 1 / 2 ≤ A.re := by
    have := abs_le.1 ((abs_re_le_norm s).trans hs); simp [hA]; linarith
  have hAn : ‖A‖ ≤ 3 / 2 := (norm_add_le _ _).trans (by simp; linarith)
  have hAn' : 1 / 2 ≤ ‖A‖ := hAre.trans (re_le_norm A)
  have hA0 : A ≠ 0 := fun h => by simp [h] at hAre; linarith
  have hw2 : w ^ 2 = A⁻¹ := eq_inv_of_mul_eq_one_left hw
  -- |w|² ≤ 2
  have hwn : ‖w‖ ^ 2 ≤ 2 := by
    have : ‖w‖ ^ 2 * ‖A‖ = 1 := by rw [← norm_pow, ← norm_mul, hw, norm_one]
    nlinarith
  -- Re w ≥ 0.45
  have hre2 : 2 / 9 ≤ w.re ^ 2 := by
    have h1 : (w ^ 2).re = w.re ^ 2 - w.im ^ 2 := by simp [pow_two, mul_re]
    have h2 : (w ^ 2).re = A.re / normSq A := by rw [hw2, inv_re]
    have h3 : normSq A ≤ 9 / 4 := by rw [← Complex.sq_norm]; nlinarith [norm_nonneg A]
    have h4 : 0 < normSq A := normSq_pos.2 hA0
    have h5 : 2 / 9 ≤ A.re / normSq A := by
      rw [le_div_iff₀ h4]; nlinarith
    nlinarith [sq_nonneg w.im]
  have hp : 9 / 20 ≤ w.re := by nlinarith
  -- |1 + w| ≥ √2
  have h1w : √2 ≤ ‖1 + w‖ := by
    have : 2 ≤ ‖1 + w‖ ^ 2 := by
      rw [Complex.sq_norm, normSq_apply]; simp; nlinarith [sq_nonneg w.im]
    calc √2 ≤ √(‖1 + w‖ ^ 2) := Real.sqrt_le_sqrt this
      _ = _ := Real.sqrt_sq (norm_nonneg _)
  -- (1 − w)(1 + w) = w² s
  have hid : (1 - w) * (1 + w) = w ^ 2 * s := by linear_combination -hw
  have hprod : ‖w - 1‖ * ‖1 + w‖ ≤ 2 * ‖s‖ := by
    rw [norm_sub_rev, ← norm_mul, hid, norm_mul, norm_pow]
    exact mul_le_mul_of_nonneg_right hwn (norm_nonneg _)
  have hs2 : (0 : ℝ) < √2 := by positivity
  have : ‖w - 1‖ * √2 ≤ 2 * ‖s‖ :=
    (mul_le_mul_of_nonneg_left h1w (norm_nonneg _)).trans hprod
  have h22 : (2 : ℝ) = √2 * √2 := (Real.mul_self_sqrt (by norm_num)).symm
  nlinarith

/-- Step 0, first line: `|s| ≤ ½` ⇒ `|(1+s)^{−1/2} − 1| ≤ √2|s|` (principal branch). -/
theorem inv_sqrt_dev {s : ℂ} (hs : ‖s‖ ≤ 1 / 2) :
    ‖(1 + s) ^ (-(1 / 2) : ℂ) - 1‖ ≤ √2 * ‖s‖ := by
  have h0 : (1 + s) ≠ 0 := fun h => by
    have : s = -1 := by linear_combination h
    rw [this] at hs; norm_num at hs
  obtain ⟨h1, h2⟩ := cpow_neg_half_props h0
  exact inv_sqrt_dev_core hs h1 h2

/-- Step 0, `|z − g_r| ≤ √2 g_r³|y|` for `u = x + iy`, `x ≥ γ^{−2}`, `|y| ≤ Y`, `γ²Y ≤ ½`. -/
theorem z_dev {x y γ Y : ℝ} (hγ : 0 < γ) (hx : 1 / γ ^ 2 ≤ x) (hy : |y| ≤ Y)
    (hY : γ ^ 2 * Y ≤ 1 / 2) :
    ‖((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ) - ((1 / √x : ℝ) : ℂ)‖ ≤ √2 * (1 / √x) ^ 3 * |y| := by
  have hx0 : 0 < x := lt_of_lt_of_le (by positivity) hx
  have hsx : 0 < √x := Real.sqrt_pos.2 hx0
  set u : ℂ := (x : ℂ) + y * I with hu
  have hu0 : u ≠ 0 := fun h => by
    have := congrArg Complex.re h; simp [hu] at this; linarith
  obtain ⟨hz2, hzre⟩ := cpow_neg_half_props hu0
  set z := u ^ (-(1 / 2) : ℂ)
  set s : ℂ := ((y / x : ℝ) : ℂ) * I
  set w : ℂ := z * (√x : ℝ)
  have hxc : (x : ℂ) ≠ 0 := by exact_mod_cast hx0.ne'
  have hsq : ((√x : ℝ) : ℂ) ^ 2 = x := by rw [← ofReal_pow, Real.sq_sqrt hx0.le]
  have hw : w ^ 2 * (1 + s) = 1 := by
    have : (1 + s) * x = u := by simp only [s, hu]; push_cast; field_simp
    calc w ^ 2 * (1 + s) = z ^ 2 * ((1 + s) * ((√x : ℝ) : ℂ) ^ 2) := by ring
      _ = 1 := by rw [hsq, this, hz2]
  have hwre : 0 ≤ w.re := by
    simp only [w, mul_re, ofReal_re, ofReal_im, mul_zero, sub_zero]; positivity
  have hsn : ‖s‖ = |y| / x := by
    simp only [s, norm_mul, norm_I, mul_one, norm_real, Real.norm_eq_abs, abs_div,
      abs_of_pos hx0]
  have hsle : ‖s‖ ≤ 1 / 2 := by
    rw [hsn, div_le_iff₀ hx0]
    have : 1 ≤ γ ^ 2 * x := by rwa [div_le_iff₀ (by positivity), mul_comm] at hx
    nlinarith [abs_nonneg y]
  have hdev := inv_sqrt_dev_core hsle hw hwre
  have hzw : z - ((1 / √x : ℝ) : ℂ) = (w - 1) * ((1 / √x : ℝ) : ℂ) := by
    have hsxc : ((√x : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hsx.ne'
    simp only [w]; push_cast; field_simp
  rw [hzw, norm_mul, norm_real, Real.norm_eq_abs, abs_of_pos (by positivity)]
  calc ‖w - 1‖ * (1 / √x) ≤ √2 * ‖s‖ * (1 / √x) :=
        mul_le_mul_of_nonneg_right hdev (by positivity)
    _ = √2 * (1 / √x) ^ 3 * |y| := by
        rw [hsn]
        calc √2 * (|y| / x) * (1 / √x) = √2 * (|y| / √x ^ 2) * (1 / √x) := by
              rw [Real.sq_sqrt hx0.le]
          _ = _ := by field_simp

/-- Cauchy's estimate used in Step 0: `βj` holomorphic on `D(g, ρg)` with `|βj| ≤ M` there ⇒
`|βj″(ζ)| ≤ 8M/(ρ²g²)` for `ζ ∈ D̄(g, ρg/2)`. -/
theorem cauchy_second (βj : ℂ → ℂ) {g ρ M : ℝ} (hg : 0 < g) (hρ : 0 < ρ)
    (hβ : DifferentiableOn ℂ βj (ball (g : ℂ) (ρ * g))) (hM : ∀ z ∈ ball (g : ℂ) (ρ * g), ‖βj z‖ ≤ M)
    {ζ : ℂ} (hζ : ζ ∈ closedBall (g : ℂ) (ρ * g / 2)) :
    ‖deriv (deriv βj) ζ‖ ≤ 8 * M / (ρ ^ 2 * g ^ 2) := by
  set r₀ := ρ * g / 2
  have hr₀ : 0 < r₀ := by positivity
  have hR : ∀ R ∈ Ioo 0 r₀, ‖deriv (deriv βj) ζ‖ * R ^ 2 ≤ 2 * M := by
    intro R hR
    have hsub : closedBall ζ R ⊆ ball (g : ℂ) (ρ * g) := by
      intro z hz
      rw [mem_closedBall] at hz hζ; rw [mem_ball]
      have : r₀ * 2 = ρ * g := by simp only [r₀]; ring
      linarith [dist_triangle z ζ (g : ℂ), hR.2]
    have hdc : DiffContOnCl ℂ βj (ball ζ R) :=
      (hβ.mono (by rw [closure_ball ζ hR.1.ne']; exact hsub)).diffContOnCl
    have hC := Complex.norm_iteratedDeriv_le_of_forall_mem_sphere_norm_le 2 hR.1 hdc
      (fun z hz => hM z (hsub (sphere_subset_closedBall hz)))
    rw [iteratedDeriv_succ, iteratedDeriv_one] at hC
    simp only [Nat.factorial_two, Nat.cast_ofNat] at hC
    rwa [le_div_iff₀ (by have := hR.1; positivity)] at hC
  have hlim : ‖deriv (deriv βj) ζ‖ * r₀ ^ 2 ≤ 2 * M := by
    have ht : Filter.Tendsto (fun R => ‖deriv (deriv βj) ζ‖ * R ^ 2) (nhdsWithin r₀ (Iio r₀))
        (nhds (‖deriv (deriv βj) ζ‖ * r₀ ^ 2)) :=
      ((continuous_const.mul (continuous_pow 2)).tendsto r₀).mono_left nhdsWithin_le_nhds
    exact le_of_tendsto ht (Filter.mem_of_superset (Ioo_mem_nhdsLT hr₀) fun R hR' => hR R hR')
  rw [le_div_iff₀ (by positivity)]
  have : ρ ^ 2 * g ^ 2 = 4 * r₀ ^ 2 := by simp only [r₀]; ring
  rw [this]; nlinarith

/-- Step 0, derivative bound: with (H-hol) on `D(g_r, ρg_r)` (`|βj| ≤ M`), the real C¹ bound
`|βj′(g_r)| ≤ C₁`, `x ≥ γ^{−2}`, `|y| ≤ Y`, (d) `2√2γ²Y ≤ ρ ≤ 1`:
`z = u^{−1/2} ∈ D̄(g_r, ρg_r/2)` and `|βj′(z)| ≤ C₁ + 8√2Mg_r|y|/ρ² ≤ C₁′ = C₁ + 12MγY/ρ²`. -/
theorem n3_step0_deriv (βj : ℂ → ℂ) {x y γ Y ρ M C₁ : ℝ} (hγ : 0 < γ) (hρ : 0 < ρ)
    (hρ1 : ρ ≤ 1) (hM : 0 ≤ M) (hx : 1 / γ ^ 2 ≤ x) (hy : |y| ≤ Y)
    (hd : 2 * √2 * γ ^ 2 * Y ≤ ρ)
    (hβ : DifferentiableOn ℂ βj (ball ((1 / √x : ℝ) : ℂ) (ρ * (1 / √x))))
    (hMb : ∀ z ∈ ball ((1 / √x : ℝ) : ℂ) (ρ * (1 / √x)), ‖βj z‖ ≤ M)
    (hC₁ : ‖deriv βj ((1 / √x : ℝ) : ℂ)‖ ≤ C₁) :
    ((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ) ∈ closedBall ((1 / √x : ℝ) : ℂ) (ρ * (1 / √x) / 2) ∧
    ‖deriv βj (((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ))‖ ≤
      C₁ + 8 * √2 * M * (1 / √x) * |y| / ρ ^ 2 ∧
    ‖deriv βj (((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ))‖ ≤ C₁ + 12 * M * γ * Y / ρ ^ 2 := by
  have hx0 : 0 < x := lt_of_lt_of_le (by positivity) hx
  set gr := 1 / √x with hgr
  have hg : 0 < gr := by positivity
  have hgγ : gr ≤ γ := by
    rw [hgr, div_le_iff₀ (Real.sqrt_pos.2 hx0)]
    have : 1 / γ ≤ √x := by
      rw [show 1 / γ = √(1 / γ ^ 2) by rw [Real.sqrt_div' _ (sq_nonneg γ), Real.sqrt_one,
        Real.sqrt_sq hγ.le]]
      exact Real.sqrt_le_sqrt hx
    rw [div_le_iff₀ hγ] at this; linarith
  have hgr2 : gr ^ 2 * x = 1 := by
    rw [hgr, div_pow, Real.sq_sqrt hx0.le]; field_simp
  have hs2 : (1 : ℝ) ≤ √2 := by rw [show (1 : ℝ) = √1 by simp]; exact Real.sqrt_le_sqrt (by norm_num)
  have hY0 : 0 ≤ Y := (abs_nonneg y).trans hy
  have hY : γ ^ 2 * Y ≤ 1 / 2 := by nlinarith [sq_nonneg γ]
  have hz := z_dev hγ hx hy hY
  -- |z − g_r| ≤ √2 g_r³|y| ≤ ρ g_r / 2
  have hg3 : √2 * gr ^ 3 * |y| ≤ ρ * gr / 2 := by
    have h1 : gr ^ 2 ≤ γ ^ 2 := pow_le_pow_left₀ hg.le hgγ 2
    have : √2 * gr ^ 2 * |y| ≤ √2 * γ ^ 2 * Y :=
      mul_le_mul (mul_le_mul_of_nonneg_left h1 (by positivity)) hy (abs_nonneg _) (by positivity)
    nlinarith
  have hmem : ((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ) ∈ closedBall (gr : ℂ) (ρ * gr / 2) := by
    rw [mem_closedBall, dist_eq_norm]; exact hz.trans hg3
  refine ⟨hmem, ?_⟩
  -- mean value for βj′ on D̄(g_r, ρg_r/2)
  have hsub : closedBall (gr : ℂ) (ρ * gr / 2) ⊆ ball (gr : ℂ) (ρ * gr) :=
    closedBall_subset_ball (by nlinarith)
  have hdiff : ∀ ζ ∈ closedBall (gr : ℂ) (ρ * gr / 2), DifferentiableAt ℂ (deriv βj) ζ :=
    fun ζ hζ => (hβ.deriv isOpen_ball).differentiableAt (isOpen_ball.mem_nhds (hsub hζ))
  have hmv := (convex_closedBall (gr : ℂ) (ρ * gr / 2)).norm_image_sub_le_of_norm_deriv_le hdiff
    (fun ζ hζ => cauchy_second βj hg hρ hβ hMb hζ) (mem_closedBall_self (by positivity)) hmem
  have h1 : ‖deriv βj (((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ))‖ ≤
      C₁ + 8 * √2 * M * gr * |y| / ρ ^ 2 := by
    have e1 := norm_le_insert' (deriv βj (((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ)))
      (deriv βj (gr : ℂ))
    have e2 : 8 * M / (ρ ^ 2 * gr ^ 2) * ‖((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ) - gr‖ ≤
        8 * √2 * M * gr * |y| / ρ ^ 2 := by
      calc 8 * M / (ρ ^ 2 * gr ^ 2) * ‖((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ) - gr‖
          ≤ 8 * M / (ρ ^ 2 * gr ^ 2) * (√2 * gr ^ 3 * |y|) :=
            mul_le_mul_of_nonneg_left hz (by positivity)
        _ = _ := by field_simp
    linarith
  refine ⟨h1, h1.trans ?_⟩
  have : 8 * √2 * M * gr * |y| ≤ 12 * M * γ * Y := by
    have hs : √2 ≤ 3 / 2 := by
      rw [show (3 / 2 : ℝ) = √((3 / 2) ^ 2) by rw [Real.sqrt_sq (by norm_num)]]
      exact Real.sqrt_le_sqrt (by norm_num)
    have : gr * |y| ≤ γ * Y := mul_le_mul hgγ hy (abs_nonneg _) hγ.le
    calc 8 * √2 * M * gr * |y| = 8 * √2 * M * (gr * |y|) := by ring
      _ ≤ 8 * (3 / 2) * M * (γ * Y) := by gcongr
      _ = _ := by ring
  have hρ2 : 0 < ρ ^ 2 := by positivity
  linarith [div_le_div_of_nonneg_right this hρ2.le]

lemma rpow_neg_three_halves {x : ℝ} (hx : 0 < x) : x ^ (-(3 / 2) : ℝ) = (1 / √x) ^ 3 := by
  rw [Real.rpow_neg hx.le, Real.sqrt_eq_rpow, div_pow, one_pow, ← Real.rpow_natCast,
    ← Real.rpow_mul hx.le]
  norm_num

lemma cpow_neg_half_ofReal {x : ℝ} (hx : 0 < x) :
    (x : ℂ) ^ (-(1 / 2) : ℂ) = ((1 / √x : ℝ) : ℂ) := by
  rw [show (-(1 / 2) : ℂ) = ((-(1 / 2) : ℝ) : ℂ) by push_cast; ring, ← ofReal_cpow hx.le,
    Real.rpow_neg hx.le, Real.sqrt_eq_rpow, one_div]
  norm_num

/-- Step 0, `|dz/du| ≤ ½g_r³` and `|∂_u β(u^{−1/2})| ≤ ½C₁′g_r³` (the bound (1.1) of HBETA with
`Re u` in place of `u`). Hypotheses as in `n3_step0_deriv`. -/
theorem n3_step0_du (βj : ℂ → ℂ) {x y γ Y ρ M C₁ : ℝ} (hγ : 0 < γ) (hρ : 0 < ρ)
    (hρ1 : ρ ≤ 1) (hM : 0 ≤ M) (hx : 1 / γ ^ 2 ≤ x) (hy : |y| ≤ Y)
    (hd : 2 * √2 * γ ^ 2 * Y ≤ ρ)
    (hβ : DifferentiableOn ℂ βj (ball ((1 / √x : ℝ) : ℂ) (ρ * (1 / √x))))
    (hMb : ∀ z ∈ ball ((1 / √x : ℝ) : ℂ) (ρ * (1 / √x)), ‖βj z‖ ≤ M)
    (hC₁ : ‖deriv βj ((1 / √x : ℝ) : ℂ)‖ ≤ C₁) :
    ∃ F' : ℂ, HasDerivAt (fun u => βj (u ^ (-(1 / 2) : ℂ))) F' ((x : ℂ) + y * I) ∧
      ‖F'‖ ≤ 1 / 2 * (C₁ + 12 * M * γ * Y / ρ ^ 2) * (1 / √x) ^ 3 := by
  have hx0 : 0 < x := lt_of_lt_of_le (by positivity) hx
  set u : ℂ := (x : ℂ) + y * I
  have hure : u.re = x := by simp [u]
  have hslit : u ∈ slitPlane := mem_slitPlane_iff.2 (Or.inl (by rw [hure]; exact hx0))
  obtain ⟨hmem, -, hder⟩ := n3_step0_deriv βj hγ hρ hρ1 hM hx hy hd hβ hMb hC₁
  have hg : 0 < 1 / √x := by positivity
  have hopen : ball ((1 / √x : ℝ) : ℂ) (ρ * (1 / √x)) ∈ nhds (u ^ (-(1 / 2) : ℂ)) :=
    isOpen_ball.mem_nhds (closedBall_subset_ball (by nlinarith) hmem)
  have hβz := (hβ.differentiableAt hopen).hasDerivAt
  have hcp := (hasStrictDerivAt_cpow_const (c := (-(1 / 2) : ℂ)) hslit).hasDerivAt
  refine ⟨_, hβz.comp u hcp, ?_⟩
  have hpow : ‖u ^ ((-(1 / 2) : ℂ) - 1)‖ ≤ (1 / √x) ^ 3 := by
    rw [show (-(1 / 2) : ℂ) - 1 = ((-(3 / 2) : ℝ) : ℂ) by push_cast; ring, norm_cpow_real,
      ← rpow_neg_three_halves hx0]
    exact Real.rpow_le_rpow_of_nonpos hx0 (hure ▸ re_le_norm u) (by norm_num)
  have hc : ‖(-(1 / 2) : ℂ)‖ = 1 / 2 := by simp
  rw [norm_mul, norm_mul, hc]
  have h0 : 0 ≤ C₁ + 12 * M * γ * Y / ρ ^ 2 := (norm_nonneg _).trans hder
  calc ‖deriv βj (u ^ (-(1 / 2) : ℂ))‖ * (1 / 2 * ‖u ^ ((-(1 / 2) : ℂ) - 1)‖)
      ≤ (C₁ + 12 * M * γ * Y / ρ ^ 2) * (1 / 2 * (1 / √x) ^ 3) :=
        mul_le_mul hder (by linarith) (by positivity) h0
    _ = _ := by ring

/-- Step 0, last line: with (E) `β ≤ βj(g_r)` (real point) and (c) `γ³C₁′Y ≤ β`:
`|βj(u^{−1/2}) − βj(g_r)| ≤ |y|·½C₁′γ³ ≤ β/2` and `Re βj(u^{−1/2}) ≥ β/2`. -/
theorem n3_step0_re (βj : ℂ → ℂ) {x y γ Y ρ M C₁ β : ℝ} (hγ : 0 < γ) (hρ : 0 < ρ)
    (hρ1 : ρ ≤ 1) (hM : 0 ≤ M) (hx : 1 / γ ^ 2 ≤ x) (hy : |y| ≤ Y)
    (hd : 2 * √2 * γ ^ 2 * Y ≤ ρ)
    (hβ : DifferentiableOn ℂ βj (ball ((1 / √x : ℝ) : ℂ) (ρ * (1 / √x))))
    (hMb : ∀ z ∈ ball ((1 / √x : ℝ) : ℂ) (ρ * (1 / √x)), ‖βj z‖ ≤ M)
    (hC₁ : ‖deriv βj ((1 / √x : ℝ) : ℂ)‖ ≤ C₁)
    (hE : β ≤ (βj ((1 / √x : ℝ) : ℂ)).re)
    (hc : γ ^ 3 * (C₁ + 12 * M * γ * Y / ρ ^ 2) * Y ≤ β) :
    ‖βj (((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ)) - βj ((1 / √x : ℝ) : ℂ)‖ ≤
      |y| * (1 / 2 * (C₁ + 12 * M * γ * Y / ρ ^ 2) * γ ^ 3) ∧
    β / 2 ≤ (βj (((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ))).re := by
  have hx0 : 0 < x := lt_of_lt_of_le (by positivity) hx
  set C' := C₁ + 12 * M * γ * Y / ρ ^ 2
  set S : Set ℂ := {w | w.re = x ∧ |w.im| ≤ Y}
  have hS : Convex ℝ S := by
    intro a ha b hb s t hs ht hst
    simp only [S, Set.mem_ofPred_eq, Complex.add_re, Complex.add_im, Complex.real_smul,
      Complex.mul_re, Complex.mul_im, ofReal_re, ofReal_im, zero_mul, sub_zero,
      add_zero] at ha hb ⊢
    refine ⟨by rw [ha.1, hb.1, ← add_mul, hst, one_mul], ?_⟩
    calc |s * a.im + t * b.im| ≤ s * |a.im| + t * |b.im| := by
          have := abs_add_le (s * a.im) (t * b.im)
          rwa [abs_mul, abs_mul, abs_of_nonneg hs, abs_of_nonneg ht] at this
      _ ≤ s * Y + t * Y := add_le_add (mul_le_mul_of_nonneg_left ha.2 hs)
          (mul_le_mul_of_nonneg_left hb.2 ht)
      _ = Y := by rw [← add_mul, hst, one_mul]
  have hform : ∀ w ∈ S, (x : ℂ) + w.im * I = w := fun w hw => by
    rw [← hw.1]; exact re_add_im w
  have hdS : ∀ w ∈ S, ∃ F' : ℂ, HasDerivAt (fun u => βj (u ^ (-(1 / 2) : ℂ))) F' w ∧
      ‖F'‖ ≤ 1 / 2 * C' * (1 / √x) ^ 3 := fun w hw => by
    have := n3_step0_du βj hγ hρ hρ1 hM hx hw.2 hd hβ hMb hC₁
    rwa [hform w hw] at this
  choose! F' hF' hF'b using hdS
  have hY0 : 0 ≤ Y := (abs_nonneg y).trans hy
  have hxS : (x : ℂ) ∈ S := ⟨by simp, by simpa using hY0⟩
  have huS : (x : ℂ) + y * I ∈ S := ⟨by simp, by simpa using hy⟩
  have hmv := hS.norm_image_sub_le_of_norm_hasDerivWithin_le
    (fun w hw => (hF' w hw).hasDerivWithinAt) hF'b hxS huS
  rw [cpow_neg_half_ofReal hx0, show (x : ℂ) + y * I - x = y * I by ring, norm_mul, norm_I,
    mul_one, norm_real, Real.norm_eq_abs] at hmv
  -- g_r ≤ γ
  have hgγ : 1 / √x ≤ γ := by
    rw [div_le_iff₀ (Real.sqrt_pos.2 hx0)]
    have : 1 / γ ≤ √x := by
      rw [show 1 / γ = √(1 / γ ^ 2) by rw [Real.sqrt_div' _ (sq_nonneg γ), Real.sqrt_one,
        Real.sqrt_sq hγ.le]]
      exact Real.sqrt_le_sqrt hx
    rw [div_le_iff₀ hγ] at this; linarith
  have hC'0 : 0 ≤ C' := (norm_nonneg _).trans (le_trans hC₁ (by
    simp only [C', le_add_iff_nonneg_right]; positivity))
  have hg3 : (1 / √x) ^ 3 ≤ γ ^ 3 := pow_le_pow_left₀ (by positivity) hgγ 3
  have h1 : ‖βj (((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ)) - βj ((1 / √x : ℝ) : ℂ)‖ ≤
      |y| * (1 / 2 * C' * γ ^ 3) := by
    refine hmv.trans ?_
    rw [mul_comm]
    exact mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_left hg3 (by positivity))
      (abs_nonneg _)
  refine ⟨h1, ?_⟩
  have h2 : |y| * (1 / 2 * C' * γ ^ 3) ≤ β / 2 := by
    have : |y| * (C' * γ ^ 3) ≤ Y * (C' * γ ^ 3) :=
      mul_le_mul_of_nonneg_right hy (by positivity)
    nlinarith
  have h3 := (abs_re_le_norm (βj (((x : ℂ) + y * I) ^ (-(1 / 2) : ℂ)) -
    βj ((1 / √x : ℝ) : ℂ))).trans h1
  rw [sub_re] at h3
  have := (abs_le.1 h3).1
  linarith

end YmLean
