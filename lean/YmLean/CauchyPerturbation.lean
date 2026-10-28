import Mathlib.Analysis.Complex.Liouville
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.Analysis.InnerProductSpace.Positive

/-!
# L-122 (Lemma CP) (Cauchy perturbation to accretivity)

Sources: `../SOURCES_WC_RESIDUE.md` §6.1 (L-122 (Lemma CP) with proof) and `../SOURCES_WC_RESIDUE_VERIFY.md`
Q6 (re-derivation; hypothesis restated in accretive form). Brief: `api_runs/CLOUD_BRIEFS.md` L7.

`H` is a complex Hilbert space, `F : ℂ → (H →L[ℂ] H)` is complex differentiable on the open disc
`ball 0 ρ` with `‖F w‖ ≤ Γ` there, and `Re F(0) ≥ c > 0` in the accretive form
`c ‖v‖² ≤ re ⟪v, F 0 v⟫` (no symmetry of `F 0` assumed). For `t ≥ 1 + 2Γ/c` and `‖z‖ ≤ ρ/t`:
`½c ‖v‖² ≤ re ⟪v, F z v⟫`.

Proof: for `‖w‖ ≤ ‖z‖` and `0 < r < ρ - ‖z‖`, Cauchy on `closedBall w r ⊆ ball 0 ρ` gives
`‖F' w‖ ≤ Γ/r`; the mean value inequality on `closedBall 0 ‖z‖` gives `‖F z - F 0‖ r ≤ Γ ‖z‖`;
`r → ρ - ‖z‖` gives `‖F z - F 0‖ ≤ Γ‖z‖/(ρ - ‖z‖) ≤ Γ/(t - 1) ≤ c/2`.

* `cp_increment`: `‖F z - F 0‖ (ρ - ‖z‖) ≤ Γ ‖z‖`.
* `cauchy_perturbation`: the quadratic-form statement (the brief's statement).
* `lemma_CP`: the source's normalization (disc `|s| < t`, point `s = 1`).
* `cauchy_perturbation_op`: the operator statement `Re F(z) ≥ ½c` in the Loewner order, with
  `reOp T := 2⁻¹ (T + T†)` (`star T = T†`, `ContinuousLinearMap.star_eq_adjoint`).
-/

open Metric RCLike
open scoped InnerProductSpace

namespace YmLean

set_option linter.unusedSectionVars false

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H] [CompleteSpace H]

/-- Cauchy estimate plus mean value inequality: `‖F z - F 0‖ (ρ - ‖z‖) ≤ Γ ‖z‖`. -/
theorem cp_increment {F : ℂ → H →L[ℂ] H} {ρ Γ : ℝ} {z : ℂ}
    (hF : DifferentiableOn ℂ F (ball 0 ρ)) (hΓ : ∀ w ∈ ball (0 : ℂ) ρ, ‖F w‖ ≤ Γ)
    (hz : ‖z‖ < ρ) : ‖F z - F 0‖ * (ρ - ‖z‖) ≤ Γ * ‖z‖ := by
  have key : ∀ r, 0 < r → r < ρ - ‖z‖ → ‖F z - F 0‖ * r ≤ Γ * ‖z‖ := by
    intro r hr hrz
    have hsub : ∀ w ∈ closedBall (0 : ℂ) ‖z‖, closedBall w r ⊆ ball 0 ρ := by
      intro w hw
      apply closedBall_subset_ball'
      rw [mem_closedBall] at hw
      linarith
    have hd : ∀ w ∈ closedBall (0 : ℂ) ‖z‖, DifferentiableAt ℂ F w := fun w hw =>
      hF.differentiableAt (isOpen_ball.mem_nhds (hsub w hw (mem_closedBall_self hr.le)))
    have hb : ∀ w ∈ closedBall (0 : ℂ) ‖z‖, ‖deriv F w‖ ≤ Γ / r := fun w hw =>
      Complex.norm_deriv_le_of_forall_mem_sphere_norm_le hr (hF.diffContOnCl_ball (hsub w hw))
        fun y hy => hΓ y (hsub w hw (sphere_subset_closedBall hy))
    have h := Convex.norm_image_sub_le_of_norm_deriv_le hd hb (convex_closedBall 0 ‖z‖)
      (mem_closedBall_self (norm_nonneg z)) (mem_closedBall_zero_iff.2 le_rfl)
    rw [sub_zero] at h
    calc ‖F z - F 0‖ * r ≤ Γ / r * ‖z‖ * r := by gcongr
      _ = Γ * ‖z‖ := by field_simp
  have hΓ0 : 0 ≤ Γ := (norm_nonneg _).trans (hΓ 0 (mem_ball_self ((norm_nonneg z).trans_lt hz)))
  by_contra hcon
  replace hcon := not_le.1 hcon
  have hD : 0 < ‖F z - F 0‖ := by
    by_contra h'
    have : ‖F z - F 0‖ = 0 := le_antisymm (not_lt.1 h') (norm_nonneg _)
    rw [this, zero_mul] at hcon
    linarith [mul_nonneg hΓ0 (norm_nonneg z)]
  have hlt : Γ * ‖z‖ / ‖F z - F 0‖ < ρ - ‖z‖ := by
    rw [div_lt_iff₀ hD]; linarith
  obtain ⟨r, hr1, hr2⟩ := exists_between hlt
  have hr0 : 0 < r := lt_of_le_of_lt (div_nonneg (mul_nonneg hΓ0 (norm_nonneg z)) hD.le) hr1
  have := key r hr0 hr2
  rw [div_lt_iff₀ hD] at hr1
  linarith

/-- **L-122 (Lemma CP)**, quadratic-form statement. -/
theorem cauchy_perturbation {F : ℂ → H →L[ℂ] H} {ρ Γ c t : ℝ} {z : ℂ}
    (hF : DifferentiableOn ℂ F (ball 0 ρ)) (hΓ : ∀ w ∈ ball (0 : ℂ) ρ, ‖F w‖ ≤ Γ)
    (hρ : 0 < ρ) (hc : 0 < c) (h0 : ∀ v : H, c * ‖v‖ ^ 2 ≤ re ⟪v, F 0 v⟫_ℂ)
    (ht : 1 + 2 * Γ / c ≤ t) (hz : ‖z‖ ≤ ρ / t) (v : H) :
    c / 2 * ‖v‖ ^ 2 ≤ re ⟪v, F z v⟫_ℂ := by
  -- `|re ⟪v, A v⟫| ≤ ‖A‖ ‖v‖²`
  have habs : ∀ A : H →L[ℂ] H, |re ⟪v, A v⟫_ℂ| ≤ ‖A‖ * ‖v‖ ^ 2 := fun A =>
    calc |re ⟪v, A v⟫_ℂ| ≤ ‖⟪v, A v⟫_ℂ‖ := abs_re_le_norm _
      _ ≤ ‖v‖ * ‖A v‖ := norm_inner_le_norm _ _
      _ ≤ ‖v‖ * (‖A‖ * ‖v‖) := by gcongr; exact A.le_opNorm v
      _ = ‖A‖ * ‖v‖ ^ 2 := by ring
  rcases eq_or_ne v 0 with rfl | hv
  · simp
  have hv2 : 0 < ‖v‖ ^ 2 := by positivity
  -- `c ≤ Γ`, hence `t ≥ 3` and `‖z‖ < ρ`
  have hcΓ : c ≤ Γ := by
    have hup : re ⟪v, F 0 v⟫_ℂ ≤ ‖F 0‖ * ‖v‖ ^ 2 := (le_abs_self _).trans (habs (F 0))
    have hF0 : ‖F 0‖ ≤ Γ := hΓ 0 (mem_ball_self hρ)
    nlinarith [h0 v]
  have hΓc : 2 * Γ ≤ (t - 1) * c := by
    have : 2 * Γ / c ≤ t - 1 := by linarith
    rwa [div_le_iff₀ hc] at this
  have ht1 : 1 < t := by nlinarith
  have ht0 : 0 < t := by linarith
  have hzt : ‖z‖ * t ≤ ρ := (le_div_iff₀ ht0).1 hz
  have hzρ : ‖z‖ < ρ := by nlinarith [norm_nonneg z]
  -- `‖F z - F 0‖ ≤ Γ / (t - 1) ≤ c / 2`
  set D := ‖F z - F 0‖ with hDdef
  have hinc : D * (ρ - ‖z‖) ≤ Γ * ‖z‖ := cp_increment hF hΓ hzρ
  have hD0 : 0 ≤ D := norm_nonneg _
  have hΓ0 : 0 ≤ Γ := hc.le.trans hcΓ
  have h1 : D * ρ * (t - 1) ≤ Γ * ρ := by
    have e1 : D * ρ * (t - 1) ≤ D * (ρ - ‖z‖) * t := by nlinarith
    have e2 : D * (ρ - ‖z‖) * t ≤ Γ * ‖z‖ * t := by nlinarith
    have e3 : Γ * ‖z‖ * t ≤ Γ * ρ := by nlinarith
    linarith
  have h2 : D * (t - 1) ≤ Γ := by
    have : (D * (t - 1)) * ρ ≤ Γ * ρ := by linarith
    exact le_of_mul_le_mul_right this hρ
  have hDc : D ≤ c / 2 := by nlinarith
  -- conclude
  have hsplit : re ⟪v, F z v⟫_ℂ = re ⟪v, F 0 v⟫_ℂ + re ⟪v, (F z - F 0) v⟫_ℂ := by
    simp [inner_sub_right]
  have := neg_abs_le (re ⟪v, (F z - F 0) v⟫_ℂ)
  have := habs (F z - F 0)
  rw [hsplit]
  nlinarith [h0 v]

/-- **L-122 (Lemma CP)** in the normalization of SOURCES_WC_RESIDUE §6.1: `f` analytic on `|s| < t` with
`‖f‖ ≤ Γ`, `Re f(0) ≥ c`, `t ≥ 1 + 2Γ/c` ⇒ `Re ⟪u, f(1) u⟫ ≥ ½c ‖u‖²`. -/
theorem lemma_CP {f : ℂ → H →L[ℂ] H} {Γ c t : ℝ}
    (hf : DifferentiableOn ℂ f (ball 0 t)) (hΓ : ∀ s ∈ ball (0 : ℂ) t, ‖f s‖ ≤ Γ)
    (htpos : 0 < t) (hc : 0 < c) (h0 : ∀ u : H, c * ‖u‖ ^ 2 ≤ re ⟪u, f 0 u⟫_ℂ)
    (ht : 1 + 2 * Γ / c ≤ t) (u : H) :
    c / 2 * ‖u‖ ^ 2 ≤ re ⟪u, f 1 u⟫_ℂ :=
  cauchy_perturbation hf hΓ htpos hc h0 ht (by rw [norm_one, div_self htpos.ne']) u

/-- Real part of an operator: `reOp T = 2⁻¹ (T + T†)`. -/
noncomputable def reOp (T : H →L[ℂ] H) : H →L[ℂ] H := (2⁻¹ : ℂ) • (T + star T)

theorem re_inner_reOp_sub (T : H →L[ℂ] H) (a : ℝ) (x : H) :
    re ⟪(reOp T - (a : ℂ) • 1) x, x⟫_ℂ = re ⟪x, T x⟫_ℂ - a * ‖x‖ ^ 2 := by
  have hT : (⟪T x, x⟫_ℂ).re = (⟪x, T x⟫_ℂ).re := by
    rw [← inner_conj_symm x (T x), Complex.conj_re]
  have hS : ⟪(star T) x, x⟫_ℂ = ⟪x, T x⟫_ℂ := by
    rw [ContinuousLinearMap.star_eq_adjoint, ContinuousLinearMap.adjoint_inner_left]
  have ha : (⟪a • x, x⟫_ℂ).re = a * ‖x‖ ^ 2 := by
    rw [RCLike.real_smul_eq_coe_smul (K := ℂ), inner_smul_real_left]
    simp [inner_self_eq_norm_sq_to_K, ← Complex.ofReal_pow]
  simp [reOp, inner_sub_left, inner_smul_left, inner_add_left, hS, hT, ha]
  ring

theorem isSelfAdjoint_reOp_sub (T : H →L[ℂ] H) (a : ℝ) :
    IsSelfAdjoint (reOp T - (a : ℂ) • 1) := by
  refine IsSelfAdjoint.sub ?_ ?_
  · simp only [reOp, IsSelfAdjoint, star_smul, star_add, star_star]
    simp [add_comm]
  · simp [IsSelfAdjoint, star_smul]

/-- **L-122 (Lemma CP)**, operator statement: `Re F(0) ≥ c` ⇒ `Re F(z) ≥ ½c` in the Loewner order. -/
theorem cauchy_perturbation_op {F : ℂ → H →L[ℂ] H} {ρ Γ c t : ℝ} {z : ℂ}
    (hF : DifferentiableOn ℂ F (ball 0 ρ)) (hΓ : ∀ w ∈ ball (0 : ℂ) ρ, ‖F w‖ ≤ Γ)
    (hρ : 0 < ρ) (hc : 0 < c) (h0 : (c : ℂ) • (1 : H →L[ℂ] H) ≤ reOp (F 0))
    (ht : 1 + 2 * Γ / c ≤ t) (hz : ‖z‖ ≤ ρ / t) :
    ((c / 2 : ℝ) : ℂ) • (1 : H →L[ℂ] H) ≤ reOp (F z) := by
  have h0' : ∀ v : H, c * ‖v‖ ^ 2 ≤ re ⟪v, F 0 v⟫_ℂ := by
    intro v
    have := ((ContinuousLinearMap.le_def _ _).1 h0).2 v
    rw [ContinuousLinearMap.reApplyInnerSelf_apply, re_inner_reOp_sub] at this
    linarith
  rw [ContinuousLinearMap.le_def, ContinuousLinearMap.isPositive_def']
  refine ⟨isSelfAdjoint_reOp_sub _ _, fun x => ?_⟩
  rw [ContinuousLinearMap.reApplyInnerSelf_apply, re_inner_reOp_sub]
  linarith [cauchy_perturbation hF hΓ hρ hc h0' ht hz x]

end YmLean
