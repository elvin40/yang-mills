import YmLean.CertBridge
import YmLean.Schur
import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Block-level Combes–Thomas estimate (L-125 (Lemma CT))

Sources: `../SOURCES_A1_KERNEL.md` §7 (L-125 (Lemma CT) [P]) with its use in §8–§10 (L-066), and
`../SOURCES_A1_A4_VERIFY.md` Part A §1 / grade (4) ("L-125 (Lemma CT): CONFIRMED").
Abstract form on `ℓ²(ι)` with counting measure (the μ-weights of the note are absorbed into `N̂`).
`N ≥ c` is written in Rayleigh form `c ‖v‖² ≤ re ⟪v, N v⟫` (`rq` of CertBridge.lean); `N` need not
be Hermitian. `W = diag(w)`, `w > 0`. Norm: spectral norm (`Matrix.Norms.L2Operator`).
-/

open Matrix Finset
open scoped Matrix.Norms.L2Operator

namespace YmLean

set_option linter.unusedSectionVars false

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n]

theorem neg_rq_le_norm (G : Matrix n n 𝕜) (x : EuclideanSpace 𝕜 n) : -rq G x ≤ ‖G‖ * ‖x‖ ^ 2 := by
  have h := rq_le_norm (-G) x
  have : rq (-G) x = -rq G x := by simp [rq, map_neg, inner_neg_right]
  rwa [this, norm_neg] at h

/-- An entry is bounded by the spectral norm: `|A x y| ≤ ‖A‖₂`. -/
theorem norm_entry_le (A : Matrix n n 𝕜) (x y : n) : ‖A x y‖ ≤ ‖A‖ := by
  have h1 := PiLp.norm_apply_le (toEuclideanCLM (n := n) (𝕜 := 𝕜) A (PiLp.single 2 y 1)) x
  have h2 := (toEuclideanCLM (n := n) (𝕜 := 𝕜) A).le_opNorm (PiLp.single 2 y 1)
  rw [PiLp.norm_single, norm_one, mul_one, ← cstar_norm_def] at h2
  have e : (toEuclideanCLM (n := n) (𝕜 := 𝕜) A (PiLp.single 2 y 1)) x = A x y := by
    change (A *ᵥ (PiLp.single 2 y (1 : 𝕜)).ofLp) x = A x y
    simp [mulVec_single]
  rw [e] at h1
  exact h1.trans h2

/-- Coercivity `c ‖v‖² ≤ re ⟪v, A v⟫`, `c > 0` ⇒ `A` invertible and `‖A⁻¹‖₂ ≤ 1/c`. -/
theorem coercive_inv (A : Matrix n n 𝕜) {c : ℝ} (hc : 0 < c)
    (h : ∀ v, c * ‖v‖ ^ 2 ≤ rq A v) : IsUnit A ∧ ‖A⁻¹‖ ≤ 1 / c := by
  have hb : ∀ v, c * ‖v‖ ≤ ‖toEuclideanCLM (n := n) (𝕜 := 𝕜) A v‖ := by
    intro v
    have h1 : rq A v ≤ ‖v‖ * ‖toEuclideanCLM (n := n) (𝕜 := 𝕜) A v‖ :=
      (RCLike.re_le_norm _).trans (norm_inner_le_norm _ _)
    rcases (norm_nonneg v).eq_or_lt with h0 | h0
    · rw [← h0, mul_zero]; exact norm_nonneg _
    · nlinarith [h v]
  have hu : IsUnit A := by
    refine mulVec_injective_iff_isUnit.1 fun x y hxy => ?_
    have := hb (WithLp.toLp 2 (x - y))
    rw [toEuclideanCLM_toLp, mulVec_sub, hxy, sub_self] at this
    have h0 : ‖(WithLp.toLp 2 (x - y) : EuclideanSpace 𝕜 n)‖ = 0 := by
      nlinarith [norm_nonneg (WithLp.toLp 2 (x - y) : EuclideanSpace 𝕜 n),
        show ‖(WithLp.toLp 2 (0 : n → 𝕜) : EuclideanSpace 𝕜 n)‖ = 0 by simp]
    rw [norm_eq_zero] at h0
    exact sub_eq_zero.1 (congrArg WithLp.ofLp h0)
  refine ⟨hu, ?_⟩
  have hdet := (isUnit_iff_isUnit_det A).mp hu
  rw [cstar_norm_def]
  refine ContinuousLinearMap.opNorm_le_bound _ (by positivity) fun u => ?_
  have hAA : toEuclideanCLM (n := n) (𝕜 := 𝕜) A (toEuclideanCLM (n := n) (𝕜 := 𝕜) A⁻¹ u) = u := by
    change (toEuclideanCLM (n := n) (𝕜 := 𝕜) A * toEuclideanCLM (n := n) (𝕜 := 𝕜) A⁻¹) u = u
    rw [← map_mul, mul_nonsing_inv _ hdet, map_one]; rfl
  have := hb (toEuclideanCLM (n := n) (𝕜 := 𝕜) A⁻¹ u)
  rw [hAA] at this
  rw [div_mul_eq_mul_div, one_mul, le_div_iff₀ hc]; linarith

/-- **L-125 (Lemma CT), weighted form.** `c ‖v‖² ≤ re ⟪v, N v⟫` with `c > 0`, `w > 0`, `W = diag w`, and
`‖W N W⁻¹ − N‖₂ ≤ c/2` ⇒ `N` invertible, `‖(W N W⁻¹)⁻¹‖₂ ≤ 2/c`, and
`|N⁻¹ x y| ≤ (2/c) · w y / w x` for all `x, y`. -/
theorem combes_thomas (N : Matrix n n 𝕜) (w : n → ℝ) (hw : ∀ x, 0 < w x) {c : ℝ} (hc : 0 < c)
    (hN : ∀ v, c * ‖v‖ ^ 2 ≤ rq N v)
    (hE : ‖diagonal (fun x => (w x : 𝕜)) * N * diagonal (fun x => (w x : 𝕜)⁻¹) - N‖ ≤ c / 2) :
    IsUnit N ∧ ‖(diagonal (fun x => (w x : 𝕜)) * N * diagonal (fun x => (w x : 𝕜)⁻¹))⁻¹‖ ≤ 2 / c ∧
      ∀ x y, ‖N⁻¹ x y‖ ≤ 2 / c * (w y / w x) := by
  set W := diagonal (fun x => (w x : 𝕜))
  set Wi := diagonal (fun x => (w x : 𝕜)⁻¹)
  set M := W * N * Wi
  have hw0 : ∀ x, (w x : 𝕜) ≠ 0 := fun x => RCLike.ofReal_ne_zero.2 (hw x).ne'
  have hM : ∀ v, c / 2 * ‖v‖ ^ 2 ≤ rq M v := by
    intro v
    have e : rq M v = rq N v + rq (M - N) v := by rw [← rq_add]; congr 1; abel
    nlinarith [hN v, neg_rq_le_norm (M - N) v, sq_nonneg ‖v‖]
  obtain ⟨hNu, -⟩ := coercive_inv N hc hN
  obtain ⟨-, hMi⟩ := coercive_inv M (by positivity) hM
  rw [one_div_div] at hMi
  have hWW : Wi * W = 1 := by
    rw [diagonal_mul_diagonal, ← diagonal_one]; congr 1; funext x; exact inv_mul_cancel₀ (hw0 x)
  have hWW' : W * Wi = 1 := by
    rw [diagonal_mul_diagonal, ← diagonal_one]; congr 1; funext x; exact mul_inv_cancel₀ (hw0 x)
  have hdet := (isUnit_iff_isUnit_det N).mp hNu
  have hinv : M⁻¹ = W * N⁻¹ * Wi := by
    refine inv_eq_left_inv ?_
    calc W * N⁻¹ * Wi * (W * N * Wi) = W * (N⁻¹ * (Wi * W) * N) * Wi := by simp only [mul_assoc]
      _ = 1 := by
        rw [hWW, mul_one, nonsing_inv_mul _ hdet, mul_one, hWW']
  refine ⟨hNu, hMi, fun x y => ?_⟩
  have h := (norm_entry_le M⁻¹ x y).trans hMi
  rw [hinv, mul_diagonal, diagonal_mul, norm_mul, norm_mul, norm_inv, RCLike.norm_ofReal,
    RCLike.norm_ofReal, abs_of_pos (hw x), abs_of_pos (hw y)] at h
  have hx := hw x; have hy := hw y
  rw [mul_div_assoc', le_div_iff₀ hx]
  calc ‖N⁻¹ x y‖ * w x = w x * ‖N⁻¹ x y‖ * (w y)⁻¹ * w y := by field_simp
    _ ≤ 2 / c * w y := mul_le_mul_of_nonneg_right h hy.le

/-- Exponential weight `w x = exp(ε d(x, x₀))` (the `ψ = e^{εf}` of L-125 (Lemma CT)):
`|N⁻¹ x y| ≤ (2/c) exp(ε (d y x₀ − d x x₀))`. -/
theorem combes_thomas_exp (N : Matrix n n 𝕜) (d : n → n → ℝ) (x₀ : n) {c ε : ℝ} (hc : 0 < c)
    (hN : ∀ v, c * ‖v‖ ^ 2 ≤ rq N v)
    (hE : ‖diagonal (fun x => (Real.exp (ε * d x x₀) : 𝕜)) * N *
      diagonal (fun x => (Real.exp (ε * d x x₀) : 𝕜)⁻¹) - N‖ ≤ c / 2) :
    IsUnit N ∧ ∀ x y, ‖N⁻¹ x y‖ ≤ 2 / c * Real.exp (ε * (d y x₀ - d x x₀)) := by
  obtain ⟨hu, -, h⟩ := combes_thomas N (fun x => Real.exp (ε * d x x₀)) (fun _ => Real.exp_pos _)
    hc hN hE
  refine ⟨hu, fun x y => ?_⟩
  rw [mul_sub, Real.exp_sub]; exact h x y

/-- **L-125 (Lemma CT), decay form.** If the hypothesis of `combes_thomas_exp` holds for every centre `x₀`
and `d x x = 0`, then `|N⁻¹ x y| ≤ (2/c) e^{−ε d(x, y)}` (take `x₀ = y`). -/
theorem combes_thomas_decay (N : Matrix n n 𝕜) (d : n → n → ℝ) (hd : ∀ x, d x x = 0) {c ε : ℝ}
    (hc : 0 < c) (hN : ∀ v, c * ‖v‖ ^ 2 ≤ rq N v)
    (hE : ∀ x₀, ‖diagonal (fun x => (Real.exp (ε * d x x₀) : 𝕜)) * N *
      diagonal (fun x => (Real.exp (ε * d x x₀) : 𝕜)⁻¹) - N‖ ≤ c / 2) :
    IsUnit N ∧ ∀ x y, ‖N⁻¹ x y‖ ≤ 2 / c * Real.exp (-(ε * d x y)) := by
  refine ⟨(coercive_inv N hc hN).1, fun x y => ?_⟩
  have := (combes_thomas_exp N d y hc hN (hE y)).2 x y
  rwa [hd, zero_sub, mul_neg] at this

/-- **L-125 (Lemma CT) with the Schur step** (the proof of SOURCES_A1_KERNEL §7): the kernel of
`E = W N W⁻¹ − N` is `N x y (e^{ε(d x x₀ − d y x₀)} − 1)`; if its row and column sums are `≤ c/2` for
every `x₀`, then `‖E‖₂ ≤ c/2` by `schur_test`, and `|N⁻¹ x y| ≤ (2/c) e^{−ε d(x, y)}`. -/
theorem combes_thomas_schur (N : Matrix n n 𝕜) (d : n → n → ℝ) (hd : ∀ x, d x x = 0) {c ε : ℝ}
    (hc : 0 < c) (hN : ∀ v, c * ‖v‖ ^ 2 ≤ rq N v)
    (hrow : ∀ x₀ x, ∑ y, ‖N x y‖ * |Real.exp (ε * (d x x₀ - d y x₀)) - 1| ≤ c / 2)
    (hcol : ∀ x₀ y, ∑ x, ‖N x y‖ * |Real.exp (ε * (d x x₀ - d y x₀)) - 1| ≤ c / 2) :
    IsUnit N ∧ ∀ x y, ‖N⁻¹ x y‖ ≤ 2 / c * Real.exp (-(ε * d x y)) := by
  refine combes_thomas_decay N d hd hc hN fun x₀ => ?_
  have hent : ∀ x y, ‖(diagonal (fun x => (Real.exp (ε * d x x₀) : 𝕜)) * N *
      diagonal (fun x => (Real.exp (ε * d x x₀) : 𝕜)⁻¹) - N) x y‖ =
      ‖N x y‖ * |Real.exp (ε * (d x x₀ - d y x₀)) - 1| := by
    intro x y
    rw [Matrix.sub_apply, mul_diagonal, diagonal_mul, mul_sub, Real.exp_sub,
      show (Real.exp (ε * d x x₀) : 𝕜) * N x y * (Real.exp (ε * d y x₀) : 𝕜)⁻¹ - N x y =
        N x y * ((Real.exp (ε * d x x₀) / Real.exp (ε * d y x₀) - 1 : ℝ) : 𝕜) by
          push_cast; field_simp,
      norm_mul, RCLike.norm_ofReal]
  have h := schur_test (𝕜 := 𝕜) _ (by positivity : (0 : ℝ) ≤ c / 2) (by positivity : (0 : ℝ) ≤ c / 2)
    (fun x => (sum_congr rfl fun y _ => hent x y).trans_le (hrow x₀ x))
    (fun y => (sum_congr rfl fun x _ => hent x y).trans_le (hcol x₀ y))
  rwa [Real.sqrt_mul_self (by positivity)] at h

end YmLean

#print axioms YmLean.norm_entry_le
#print axioms YmLean.coercive_inv
#print axioms YmLean.combes_thomas
#print axioms YmLean.combes_thomas_exp
#print axioms YmLean.combes_thomas_decay
#print axioms YmLean.combes_thomas_schur
