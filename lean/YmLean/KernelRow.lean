import YmLean.CombesThomas
import Mathlib.Analysis.SpecificLimits.Normed

/-!
# Kernel bound to row sums (input of Lemma CT)

Sources: `../SOURCES_A1_KERNEL.md` §7 (ii), proof of Lemma CT (the step from (i)
`|n̂| ≤ c_+ e^{−δd}` to `‖E‖ ≤ c_−/2`), and `VERIFY_CombesThomas.md` "Not formalized", item 2.
Weight `w x = e^{ε d(x, x₀)}`, so `w x / w y = exp(ε (d x x₀ − d y x₀))` (`Real.exp_sub`), the form
used in `combes_thomas_schur`. Counting measure (m = 1), as in CombesThomas.lean.
-/

open Matrix Finset
open scoped Matrix.Norms.L2Operator

namespace YmLean

set_option linter.unusedSectionVars false

variable {𝕜 : Type*} [RCLike 𝕜] {ι : Type*} [Fintype ι]

/-- (a) `|e^x − 1| ≤ |x| e^{|x|}` for real `x`. -/
theorem abs_exp_sub_one_le_mul_exp (x : ℝ) : |Real.exp x - 1| ≤ |x| * Real.exp |x| := by
  rcases le_or_gt 0 x with hx | hx
  · rw [abs_of_nonneg hx, abs_of_nonneg (by linarith [Real.add_one_le_exp x])]
    have h1 := mul_le_mul_of_nonneg_right (Real.add_one_le_exp (-x)) (Real.exp_pos x).le
    rw [← Real.exp_add, neg_add_cancel, Real.exp_zero] at h1
    nlinarith
  · have h1 := Real.add_one_le_exp x
    have h3 : 1 ≤ Real.exp (-x) := Real.one_le_exp (by linarith)
    rw [abs_of_neg hx, abs_of_nonpos (by linarith [Real.exp_lt_one_iff.2 hx])]
    nlinarith

/-- Triangle inequality in the form used by the note: `|f(x) − f(y)| ≤ d(x, y)`, `f = d(·, x₀)`. -/
theorem abs_dist_sub_le (d : ι → ι → ℝ) (hsymm : ∀ x y, d x y = d y x)
    (htri : ∀ x y z, d x z ≤ d x y + d y z) (x y x₀ : ι) : |d x x₀ - d y x₀| ≤ d x y := by
  rw [abs_le]; constructor <;> linarith [htri x y x₀, htri y x x₀, hsymm x y]

/-- One kernel entry of `E = W N W⁻¹ − N`: `|N x y| ≤ C e^{−δ d}` and `|f(x) − f(y)| ≤ d`, `ε ≥ 0` ⇒
`|N x y| |e^{ε(f(x) − f(y))} − 1| ≤ C ε d e^{−(δ−ε) d}`. -/
theorem kernel_entry_le {C δ ε a t : ℝ} {z : 𝕜} (hε : 0 ≤ ε) (hK : ‖z‖ ≤ C * Real.exp (-(δ * a)))
    (ht : |t| ≤ a) : ‖z‖ * |Real.exp (ε * t) - 1| ≤ C * ε * (a * Real.exp (-((δ - ε) * a))) := by
  have hεt : |ε * t| ≤ ε * a := by rw [abs_mul, abs_of_nonneg hε]; exact mul_le_mul_of_nonneg_left ht hε
  have ha : 0 ≤ ε * a := (abs_nonneg _).trans hεt
  have h1 : |Real.exp (ε * t) - 1| ≤ ε * a * Real.exp (ε * a) :=
    (abs_exp_sub_one_le_mul_exp _).trans
      (mul_le_mul hεt (Real.exp_le_exp.2 hεt) (Real.exp_pos _).le ha)
  calc ‖z‖ * |Real.exp (ε * t) - 1| ≤ C * Real.exp (-(δ * a)) * (ε * a * Real.exp (ε * a)) :=
        mul_le_mul hK h1 (abs_nonneg _) ((norm_nonneg _).trans hK)
    _ = C * ε * (a * Real.exp (-((δ - ε) * a))) := by
        rw [show -((δ - ε) * a) = -(δ * a) + ε * a by ring, Real.exp_add]; ring

/-- (b) **Row sums.** `|N x y| ≤ C e^{−δ d(x,y)}`, `d` symmetric with the triangle inequality,
`ε ≥ 0`, `w x = e^{ε d(x, x₀)}` ⇒ `Σ_y |N x y| |w x / w y − 1| ≤ C ε Σ_y d(x,y) e^{−(δ−ε) d(x,y)}`. -/
theorem kernel_row (N : Matrix ι ι 𝕜) (d : ι → ι → ℝ) (hsymm : ∀ x y, d x y = d y x)
    (htri : ∀ x y z, d x z ≤ d x y + d y z) {C δ ε : ℝ} (hε : 0 ≤ ε)
    (hK : ∀ x y, ‖N x y‖ ≤ C * Real.exp (-(δ * d x y))) (x₀ x : ι) :
    ∑ y, ‖N x y‖ * |Real.exp (ε * (d x x₀ - d y x₀)) - 1| ≤
      C * ε * ∑ y, d x y * Real.exp (-((δ - ε) * d x y)) := by
  rw [mul_sum]
  exact sum_le_sum fun y _ => kernel_entry_le hε (hK x y) (abs_dist_sub_le d hsymm htri x y x₀)

/-- (b) **Column sums**, same hypotheses: `Σ_x |N x y| |w x / w y − 1| ≤ C ε Σ_x d(x,y) e^{−(δ−ε) d(x,y)}`. -/
theorem kernel_col (N : Matrix ι ι 𝕜) (d : ι → ι → ℝ) (hsymm : ∀ x y, d x y = d y x)
    (htri : ∀ x y z, d x z ≤ d x y + d y z) {C δ ε : ℝ} (hε : 0 ≤ ε)
    (hK : ∀ x y, ‖N x y‖ ≤ C * Real.exp (-(δ * d x y))) (x₀ y : ι) :
    ∑ x, ‖N x y‖ * |Real.exp (ε * (d x x₀ - d y x₀)) - 1| ≤
      C * ε * ∑ x, d x y * Real.exp (-((δ - ε) * d x y)) := by
  rw [mul_sum]
  exact sum_le_sum fun x _ => kernel_entry_le hε (hK x y) (abs_dist_sub_le d hsymm htri x y x₀)

/-- **Lemma CT from the kernel bound** (§7 with (i) in place of `hrow`, `hcol`): if
`Σ_y d(x,y) e^{−(δ−ε) d(x,y)} ≤ S` for all `x` and `C ε S ≤ c/2`, then `N` is invertible and
`|N⁻¹ x y| ≤ (2/c) e^{−ε d(x,y)}`. -/
theorem combes_thomas_kernel [DecidableEq ι] (N : Matrix ι ι 𝕜) (d : ι → ι → ℝ)
    (hsymm : ∀ x y, d x y = d y x) (htri : ∀ x y z, d x z ≤ d x y + d y z) (hd : ∀ x, d x x = 0)
    {c C δ ε S : ℝ} (hc : 0 < c) (hε : 0 ≤ ε) (hN : ∀ v, c * ‖v‖ ^ 2 ≤ rq N v)
    (hK : ∀ x y, ‖N x y‖ ≤ C * Real.exp (-(δ * d x y)))
    (hS : ∀ x, ∑ y, d x y * Real.exp (-((δ - ε) * d x y)) ≤ S) (hsmall : C * ε * S ≤ c / 2) :
    IsUnit N ∧ ∀ x y, ‖N⁻¹ x y‖ ≤ 2 / c * Real.exp (-(ε * d x y)) := by
  have hCε : ∀ x : ι, 0 ≤ C * ε := fun x =>
    mul_nonneg (nonneg_of_mul_nonneg_left ((norm_nonneg _).trans (hK x x)) (Real.exp_pos _)) hε
  refine combes_thomas_schur N d hd hc hN (fun x₀ x => ?_) (fun x₀ y => ?_)
  · exact (kernel_row N d hsymm htri hε hK x₀ x).trans
      ((mul_le_mul_of_nonneg_left (hS x) (hCε x)).trans hsmall)
  · refine (kernel_col N d hsymm htri hε hK x₀ y).trans
      ((mul_le_mul_of_nonneg_left ?_ (hCε y)).trans hsmall)
    simpa only [hsymm _ y] using hS y

/-- `Σ_{k ∈ ℤ} |k| r^{|k|} = 2r/(1−r)²` for `0 ≤ r < 1`. -/
theorem hasSum_int_abs_geometric {r : ℝ} (h0 : 0 ≤ r) (h1 : r < 1) :
    HasSum (fun k : ℤ => (k.natAbs : ℝ) * r ^ k.natAbs) (2 * (r / (1 - r) ^ 2)) := by
  have hr : ‖r‖ < 1 := by rwa [Real.norm_of_nonneg h0]
  have hN := hasSum_coe_mul_geometric_of_norm_lt_one hr
  have hN1 : HasSum (fun n : ℕ => ((n + 1 : ℕ) : ℝ) * r ^ (n + 1)) (r / (1 - r) ^ 2) := by
    have := (hasSum_nat_add_iff' 1).mpr hN
    simpa using this
  rw [two_mul]
  refine HasSum.of_nat_of_neg_add_one ?_ ?_
  · simpa using hN
  · convert hN1 using 2 with n
    rw [show (-((n : ℤ) + 1)).natAbs = n + 1 by omega]

/-- `Σ_{y ∈ Fin n} |x − y| e^{−a|x−y|} ≤ 2/(1 − e^{−a})²` for `a > 0`. -/
theorem fin_sum_le (n : ℕ) (x : Fin n) {a : ℝ} (ha : 0 < a) :
    ∑ y : Fin n, |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)| * Real.exp (-(a * |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)|)) ≤
      2 / (1 - Real.exp (-a)) ^ 2 := by
  set r := Real.exp (-a)
  have h0 : 0 ≤ r := (Real.exp_pos _).le
  have h1 : r < 1 := Real.exp_lt_one_iff.2 (by linarith)
  set F : ℤ → ℝ := fun k => (k.natAbs : ℝ) * r ^ k.natAbs
  have hterm : ∀ y : Fin n, |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)| *
      Real.exp (-(a * |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)|)) = F ((x : ℕ) - (y : ℕ) : ℤ) := by
    intro y
    have e : |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)| = ((((x : ℕ) - (y : ℕ) : ℤ)).natAbs : ℝ) := by
      rw [Nat.cast_natAbs]; push_cast; rfl
    simp only [F]
    rw [e, show -(a * (((((x : ℕ) - (y : ℕ) : ℤ)).natAbs : ℕ) : ℝ)) =
      ((((x : ℕ) - (y : ℕ) : ℤ)).natAbs : ℝ) * (-a) by ring, Real.exp_nat_mul]
  have hinj : Set.InjOn (fun y : Fin n => ((x : ℕ) - (y : ℕ) : ℤ)) (univ : Finset (Fin n)) := by
    intro y _ z _ h; simp only at h; exact Fin.ext (by omega)
  rw [sum_congr rfl fun y _ => hterm y, ← sum_image (f := F) hinj]
  have hF : ∀ k, 0 ≤ F k := fun k => by positivity
  calc _ ≤ 2 * (r / (1 - r) ^ 2) :=
        sum_le_hasSum _ (fun k _ => hF k) (hasSum_int_abs_geometric h0 h1)
    _ ≤ 2 / (1 - r) ^ 2 := by
        rw [mul_div_assoc']
        exact div_le_div_of_nonneg_right (by linarith) (by nlinarith)

/-- (c) **Row sums on `Fin n`**, `d(x,y) = |x − y|`, `0 < ε ≤ δ/2`:
`Σ_y |N x y| |w x / w y − 1| ≤ 2 C ε / (1 − e^{−(δ−ε)})²`. -/
theorem kernel_row_fin {n : ℕ} (N : Matrix (Fin n) (Fin n) 𝕜) {C δ ε : ℝ} (hε : 0 < ε)
    (hεδ : ε ≤ δ / 2)
    (hK : ∀ x y, ‖N x y‖ ≤ C * Real.exp (-(δ * |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)|))) (x₀ x : Fin n) :
    ∑ y, ‖N x y‖ * |Real.exp (ε * (|((x : ℕ) : ℝ) - ((x₀ : ℕ) : ℝ)| -
      |((y : ℕ) : ℝ) - ((x₀ : ℕ) : ℝ)|)) - 1| ≤ 2 * C * ε / (1 - Real.exp (-(δ - ε))) ^ 2 := by
  have hC : 0 ≤ C * ε :=
    mul_nonneg (nonneg_of_mul_nonneg_left ((norm_nonneg _).trans (hK x x)) (Real.exp_pos _)) hε.le
  refine (kernel_row N (fun x y : Fin n => |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)|) (fun _ _ => abs_sub_comm _ _)
    (fun _ _ _ => abs_sub_le _ _ _) hε.le hK x₀ x).trans ?_
  rw [show 2 * C * ε / (1 - Real.exp (-(δ - ε))) ^ 2 =
    C * ε * (2 / (1 - Real.exp (-(δ - ε))) ^ 2) by ring]
  exact mul_le_mul_of_nonneg_left (fin_sum_le n x (by linarith)) hC

/-- (c) **Column sums on `Fin n`**, same hypotheses. -/
theorem kernel_col_fin {n : ℕ} (N : Matrix (Fin n) (Fin n) 𝕜) {C δ ε : ℝ} (hε : 0 < ε)
    (hεδ : ε ≤ δ / 2)
    (hK : ∀ x y, ‖N x y‖ ≤ C * Real.exp (-(δ * |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)|))) (x₀ y : Fin n) :
    ∑ x, ‖N x y‖ * |Real.exp (ε * (|((x : ℕ) : ℝ) - ((x₀ : ℕ) : ℝ)| -
      |((y : ℕ) : ℝ) - ((x₀ : ℕ) : ℝ)|)) - 1| ≤ 2 * C * ε / (1 - Real.exp (-(δ - ε))) ^ 2 := by
  have hC : 0 ≤ C * ε :=
    mul_nonneg (nonneg_of_mul_nonneg_left ((norm_nonneg _).trans (hK y y)) (Real.exp_pos _)) hε.le
  refine (kernel_col N (fun x y : Fin n => |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)|) (fun _ _ => abs_sub_comm _ _)
    (fun _ _ _ => abs_sub_le _ _ _) hε.le hK x₀ y).trans ?_
  rw [show 2 * C * ε / (1 - Real.exp (-(δ - ε))) ^ 2 =
    C * ε * (2 / (1 - Real.exp (-(δ - ε))) ^ 2) by ring]
  refine mul_le_mul_of_nonneg_left ?_ hC
  simpa only [abs_sub_comm _ ((y : ℕ) : ℝ)] using fin_sum_le n y (a := δ - ε) (by linarith)

/-- **Lemma CT on `Fin n`** (chain of (c) with `combes_thomas_schur`): `N ≥ c > 0`,
`|N x y| ≤ C e^{−δ|x−y|}`, `0 < ε ≤ δ/2` and `2 C ε / (1 − e^{−(δ−ε)})² ≤ c/2` ⇒ `N` invertible and
`|N⁻¹ x y| ≤ (2/c) e^{−ε|x−y|}`. -/
theorem combes_thomas_fin {n : ℕ} (N : Matrix (Fin n) (Fin n) 𝕜) {c C δ ε : ℝ} (hc : 0 < c)
    (hε : 0 < ε) (hεδ : ε ≤ δ / 2) (hN : ∀ v, c * ‖v‖ ^ 2 ≤ rq N v)
    (hK : ∀ x y, ‖N x y‖ ≤ C * Real.exp (-(δ * |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)|)))
    (hsmall : 2 * C * ε / (1 - Real.exp (-(δ - ε))) ^ 2 ≤ c / 2) :
    IsUnit N ∧ ∀ x y, ‖N⁻¹ x y‖ ≤ 2 / c * Real.exp (-(ε * |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)|)) :=
  combes_thomas_schur N (fun x y : Fin n => |((x : ℕ) : ℝ) - ((y : ℕ) : ℝ)|) (fun _ => by simp) hc hN
    (fun x₀ x => (kernel_row_fin N hε hεδ hK x₀ x).trans hsmall)
    (fun x₀ y => (kernel_col_fin N hε hεδ hK x₀ y).trans hsmall)

end YmLean

#print axioms YmLean.abs_exp_sub_one_le_mul_exp
#print axioms YmLean.abs_dist_sub_le
#print axioms YmLean.kernel_entry_le
#print axioms YmLean.kernel_row
#print axioms YmLean.kernel_col
#print axioms YmLean.combes_thomas_kernel
#print axioms YmLean.hasSum_int_abs_geometric
#print axioms YmLean.fin_sum_le
#print axioms YmLean.kernel_row_fin
#print axioms YmLean.kernel_col_fin
#print axioms YmLean.combes_thomas_fin
