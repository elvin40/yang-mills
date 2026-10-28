import YmLean.CombesThomas
import YmLean.Resolvent
import YmLean.KernelRow
import Mathlib.Analysis.SpecificLimits.Normed

/-!
# A1-W core: weighted kernel norm, μ-weighted L-124 (Lemma CT), parametrix, Neumann step

Sources: `../A1_WALK_FULL.md` §1.5 ((N0)–H-226 (N3)), §0.1 (V, m), §3 (L-124 (Lemma CT)), §4.1 (parametrix
identity), §5.2 (Neumann series); constants as confirmed in `../A1_WALK_FULL_VERIFY.md` §1, §3.
Catalogue: `LEAN_CATALOGUE.md` §10 wave 2 item (2) = P1 (kernel form), P2, P3, P7, P8.

Norms. `‖·‖` is the spectral norm (`Matrix.Norms.L2Operator`) on `ℓ²(n)` with counting measure.
The μ-weights enter through `V u = μ^{1/2} u` of §0.1: the operator `A u = Σ_y μ y a(·, y) u y`
on `ℓ²(n, μ)` has matrix `vconj μ a = diag(√μ) a diag(√μ)` after conjugation by `V`.
`knorm ε d K := max(sup_x Σ_y ‖K x y‖ e^{ε d x y}, sup_y Σ_x ‖K x y‖ e^{ε d x y})` is the kernel
form of the conjugation norm ‖·‖_ε of §1.5: `conj_le_knorm` bounds every conjugation
`e^{εf} K e^{−εf}` with `f` 1-Lipschitz by it (Schur test), so `‖K‖_ε ≤ knorm ε d K`.

Ring for (c): any complete normed ring with `‖1‖ = 1` (`parametrix_neumann`), via Mathlib
`geom_series_eq_inverse` (`Σ' xⁿ = Ring.inverse (1 − x)`), `isUnit_one_sub_of_norm_lt_one`, and
`tsum_geometric_le_of_norm_lt_one`; specialised to matrices with the L2 operator norm
(`parametrix_inv`, a right inverse is two-sided by `Matrix.inv_eq_right_inv`).

What stays prose: the cover 𝒟, the cut-offs h_□ and their Lipschitz bound, the walk-term
structure of F_□ (§5.3–§6), the three error bounds ρ of §4.2–§4.3 and §5.1 (here
`knorm (ε/2) d F ≤ 1/2` is a hypothesis), the accretivity transfer through V (here stated
for `vconj μ a`), the Schur constant Σ(½δ) (a hypothesis `hSig`), and (N4).
-/

open Matrix Finset
open scoped Matrix.Norms.L2Operator

namespace YmLean

set_option linter.unusedSectionVars false

/-! ### (c) Parametrix identity (§4.1) and Neumann step (§5.2) in a ring -/

section Ring

/-- **Parametrix identity** (A1_WALK_FULL §4.1). In any ring: `one i` = 1_□, `h i` = h_□ with
`1_□ h_□ = h_□ = h_□ 1_□`, `Nloc i = 1_□ N̂^{(□)} 1_□`, `N̂_□ C_□ = 1_□` (3.4(a)),
`Σ_□ h_□² = 1`. Then `N̂ P = I + Σ_□ F_□` with `P = Σ h_□C_□h_□` and
`F_□ = (E^sep + E^tr + E^com) C_□ h_□`, `E^sep = (1 − 1_□)N̂h_□`,
`E^tr = 1_□(N̂ − N̂^{(□)})1_□h_□`, `E^com = N̂_□h_□ − h_□N̂_□`. -/
theorem parametrix_identity {R ι : Type*} [Ring R] (s : Finset ι) (N : R)
    (one h C Nloc Ntr : ι → R) (hh : ∀ i, one i * h i = h i) (hh' : ∀ i, h i * one i = h i)
    (hloc : ∀ i, Nloc i = one i * Ntr i * one i) (hC : ∀ i, Nloc i * C i = one i)
    (hsum : ∑ i ∈ s, h i * h i = 1) :
    N * ∑ i ∈ s, h i * C i * h i = 1 + ∑ i ∈ s,
      ((1 - one i) * N * h i + one i * (N - Ntr i) * one i * h i +
        (Nloc i * h i - h i * Nloc i)) * C i * h i := by
  have key : ∀ i ∈ s, N * (h i * C i * h i) = h i * h i +
      ((1 - one i) * N * h i + one i * (N - Ntr i) * one i * h i +
        (Nloc i * h i - h i * Nloc i)) * C i * h i := fun i _ => by
    have e1 : h i * Nloc i * C i * h i = h i * h i := by rw [mul_assoc (h i), hC, hh']
    have e2 : one i * (N - Ntr i) * one i * h i = one i * N * h i - Nloc i * h i := by
      rw [hloc, mul_sub, sub_mul, sub_mul, mul_assoc (one i * N), hh]
    rw [e2, ← e1]; noncomm_ring
  rw [mul_sum, sum_congr rfl key, sum_add_distrib, hsum]

/-- **Neumann step** (A1_WALK_FULL §5.2(a)–(b), (c) norm part), complete normed ring with
`‖1‖ = 1`: `N̂ P = 1 + F`, `‖F‖ ≤ ½` ⇒ `1 + F` is a unit, `(1 + F)⁻¹ = Σ_k (−F)^k`,
`N̂ (P (1 + F)⁻¹) = 1`, and `‖P (1 + F)⁻¹‖ ≤ 2 ‖P‖`. -/
theorem parametrix_neumann {R : Type*} [NormedRing R] [CompleteSpace R] [NormOneClass R]
    {N P F : R} (hNP : N * P = 1 + F) (hF : ‖F‖ ≤ 1 / 2) :
    IsUnit (1 + F) ∧ Ring.inverse (1 + F) = ∑' k : ℕ, (-F) ^ k ∧
      N * (P * Ring.inverse (1 + F)) = 1 ∧ ‖P * Ring.inverse (1 + F)‖ ≤ 2 * ‖P‖ := by
  have h : ‖-F‖ < 1 := by rw [norm_neg]; linarith
  have e : (1 : R) - -F = 1 + F := sub_neg_eq_add 1 F
  have hu : IsUnit (1 + F) := e ▸ isUnit_one_sub_of_norm_lt_one h
  have hs : Ring.inverse (1 + F) = ∑' k : ℕ, (-F) ^ k := by rw [← e, geom_series_eq_inverse _ h]
  refine ⟨hu, hs, by rw [← mul_assoc, hNP, Ring.mul_inverse_cancel _ hu], ?_⟩
  have hb := tsum_geometric_le_of_norm_lt_one (-F) h
  rw [norm_one, norm_neg, sub_self, zero_add] at hb
  have h2 : (1 - ‖F‖)⁻¹ ≤ 2 := by rw [inv_le_comm₀ (by linarith) two_pos]; linarith
  calc ‖P * Ring.inverse (1 + F)‖ ≤ ‖P‖ * ‖Ring.inverse (1 + F)‖ := norm_mul_le _ _
    _ ≤ ‖P‖ * 2 := mul_le_mul_of_nonneg_left (hs ▸ hb.trans h2) (norm_nonneg _)
    _ = 2 * ‖P‖ := mul_comm _ _

end Ring

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n]

/-- **Neumann step for matrices** (§5.2(b)): right inverse ⇒ two-sided; `N̂⁻¹ = P Σ_k (−F)^k`,
`‖N̂⁻¹‖ ≤ 2 ‖P‖`. -/
theorem parametrix_inv [Nonempty n] {N P F : Matrix n n 𝕜} (hNP : N * P = 1 + F)
    (hF : ‖F‖ ≤ 1 / 2) : IsUnit N ∧ N⁻¹ = P * ∑' k : ℕ, (-F) ^ k ∧ ‖N⁻¹‖ ≤ 2 * ‖P‖ := by
  obtain ⟨-, hs, hr, hb⟩ := parametrix_neumann hNP hF
  have hinv := inv_eq_right_inv hr
  exact ⟨(isUnit_iff_isUnit_det N).mpr (isUnit_det_of_right_inverse hr), hs ▸ hinv, hinv ▸ hb⟩

/-! ### (a) Weighted kernel norm (§1.5 (N0)–(N2), kernel form) -/

/-- `e^{ε d(x, y)}`. -/
noncomputable def ew (ε : ℝ) (d : n → n → ℝ) (x y : n) : ℝ := Real.exp (ε * d x y)

/-- `‖K‖_ε := max(sup_x Σ_y ‖K x y‖ e^{εd(x,y)}, sup_y Σ_x ‖K x y‖ e^{εd(x,y)})`, built from
`wnorm` of Resolvent.lean (rows of `K`, rows of `Kᵀ`). -/
noncomputable def knorm (ε : ℝ) (d : n → n → ℝ) (K : Matrix n n 𝕜) : ℝ :=
  max (wnorm (ew ε d) K) (wnorm (fun x y => ew ε d y x) Kᵀ)

variable {ε : ℝ} {d : n → n → ℝ}

theorem knorm_nonneg (K : Matrix n n 𝕜) : 0 ≤ knorm ε d K :=
  (wnorm_nonneg (fun _ _ => (Real.exp_pos _).le) K).trans (le_max_left _ _)

theorem row_le_knorm (K : Matrix n n 𝕜) (x : n) : ∑ y, ‖K x y‖ * ew ε d x y ≤ knorm ε d K :=
  (row_le_wnorm _ K x).trans (le_max_left _ _)

theorem col_le_knorm (K : Matrix n n 𝕜) (y : n) : ∑ x, ‖K x y‖ * ew ε d x y ≤ knorm ε d K :=
  (row_le_wnorm (fun x y => ew ε d y x) Kᵀ y).trans (le_max_right _ _)

/-- (N2), kernel form: `‖K x y‖ ≤ ‖K‖_ε e^{−ε d(x, y)}`. -/
theorem entry_le_knorm (K : Matrix n n 𝕜) (x y : n) :
    ‖K x y‖ ≤ knorm ε d K * Real.exp (-(ε * d x y)) := by
  have h := (single_le_sum (f := fun y => ‖K x y‖ * ew ε d x y)
    (fun y _ => mul_nonneg (norm_nonneg _) (Real.exp_pos _).le) (mem_univ y)).trans
    (row_le_knorm (d := d) K x)
  rw [Real.exp_neg, ← div_eq_mul_inv, le_div_iff₀ (Real.exp_pos _)]
  exact h

/-- Schur step: if `‖L x y‖ ≤ ‖K x y‖ e^{εd(x,y)}` entrywise, then `‖L‖₂ ≤ ‖K‖_ε`. -/
theorem schur_le_knorm (K L : Matrix n n 𝕜) (h : ∀ x y, ‖L x y‖ ≤ ‖K x y‖ * ew ε d x y) :
    ‖L‖ ≤ knorm ε d K := by
  have hs := schur_test L (knorm_nonneg K) (knorm_nonneg K)
    (fun x => (sum_le_sum fun y _ => h x y).trans (row_le_knorm K x))
    (fun y => (sum_le_sum fun x _ => h x y).trans (col_le_knorm K y))
  rwa [Real.sqrt_mul_self (knorm_nonneg K)] at hs

/-- (N0), kernel form: `‖K‖₂ ≤ ‖K‖_ε` for `ε ≥ 0`, `d ≥ 0`. -/
theorem op_le_knorm (hε : 0 ≤ ε) (hd : ∀ x y, 0 ≤ d x y) (K : Matrix n n 𝕜) :
    ‖K‖ ≤ knorm ε d K :=
  schur_le_knorm K K fun x y => le_mul_of_one_le_right (norm_nonneg _)
    (Real.one_le_exp (mul_nonneg hε (hd x y)))

/-- **Conjugation bound** (§1.5, §3.2): `w = e^{εf}`, `|f x − f y| ≤ d(x, y)`, `ε ≥ 0` ⇒
`‖diag(w) K diag(w)⁻¹‖₂ ≤ ‖K‖_ε`. Taking the sup over `f`: the conjugation norm of §1.5 is
`≤ knorm ε d K`. -/
theorem conj_le_knorm (hε : 0 ≤ ε) (f : n → ℝ) (hf : ∀ x y, |f x - f y| ≤ d x y)
    (K : Matrix n n 𝕜) :
    ‖diagonal (fun x => (Real.exp (ε * f x) : 𝕜)) * K *
      diagonal (fun x => (Real.exp (ε * f x) : 𝕜)⁻¹)‖ ≤ knorm ε d K := by
  refine schur_le_knorm K _ fun x y => ?_
  rw [mul_diagonal, diagonal_mul, norm_mul, norm_mul, norm_inv, RCLike.norm_ofReal,
    RCLike.norm_ofReal, abs_of_pos (Real.exp_pos _), abs_of_pos (Real.exp_pos _), ew,
    mul_comm (Real.exp _) ‖K x y‖, mul_assoc, ← Real.exp_neg, ← Real.exp_add]
  exact mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr (by
    nlinarith [le_abs_self (f x - f y), hf x y])) (norm_nonneg _)

/-! ### (d) Submultiplicativity and the Neumann bound in `‖·‖_ε` (§5.2(a), (c)) -/

theorem ew_tri (hε : 0 ≤ ε) (htri : ∀ x y z, d x z ≤ d x y + d y z) (x y z : n) :
    ew ε d x z ≤ ew ε d x y * ew ε d y z := by
  rw [ew, ew, ew, ← Real.exp_add, ← mul_add]
  exact Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left (htri x y z) hε)

/-- (N1), kernel form: `‖K L‖_ε ≤ ‖K‖_ε ‖L‖_ε`. -/
theorem knorm_mul_le (hε : 0 ≤ ε) (htri : ∀ x y z, d x z ≤ d x y + d y z)
    (K L : Matrix n n 𝕜) : knorm ε d (K * L) ≤ knorm ε d K * knorm ε d L := by
  have hw : ∀ x y, 0 ≤ ew ε d x y := fun _ _ => (Real.exp_pos _).le
  have hr := wnorm_mul_le hw (ew_tri hε htri) K L
  have hc := wnorm_mul_le (fun x y => hw y x) (fun x y z => by
    rw [mul_comm]; exact ew_tri hε htri z y x) Lᵀ Kᵀ
  rw [← transpose_mul] at hc
  have hK := knorm_nonneg (ε := ε) (d := d) K
  have hL := knorm_nonneg (ε := ε) (d := d) L
  refine max_le (hr.trans (mul_le_mul (le_max_left _ _) (le_max_left _ _)
    (wnorm_nonneg hw _) hK)) (hc.trans ?_)
  rw [mul_comm]
  exact mul_le_mul (le_max_right _ _) (le_max_right _ _) (wnorm_nonneg (fun x y => hw y x) _) hK

theorem knorm_one_le (hd0 : ∀ x, d x x = 0) : knorm ε d (1 : Matrix n n 𝕜) ≤ 1 := by
  have hdiag : ∀ x, ew ε d x x ≤ 1 := fun x => by simp [ew, hd0]
  refine max_le (wnorm_one_le hdiag) ?_
  rw [transpose_one]; exact wnorm_one_le hdiag

/-- `‖K^k‖_ε ≤ ‖K‖_ε^k`: so `‖F‖_ε ≤ ½` gives `‖(−F)^k‖_ε ≤ (½)^k`. -/
theorem knorm_pow_le (hε : 0 ≤ ε) (hd0 : ∀ x, d x x = 0)
    (htri : ∀ x y z, d x z ≤ d x y + d y z) (K : Matrix n n 𝕜) (k : ℕ) :
    knorm ε d (K ^ k) ≤ knorm ε d K ^ k := by
  induction k with
  | zero => simpa using knorm_one_le hd0
  | succ k ih =>
    rw [pow_succ, pow_succ]
    exact (knorm_mul_le hε htri _ _).trans
      (mul_le_mul_of_nonneg_right ih (knorm_nonneg K))

theorem wnorm_neg (w : n → n → ℝ) (K : Matrix n n 𝕜) : wnorm w (-K) = wnorm w K := by
  simp [wnorm]

/-- **Neumann bound in `‖·‖_ε`** (§5.2(a)): `‖F‖_ε ≤ ½` ⇒ `1 + F` invertible and
`‖(1 + F)⁻¹‖_ε ≤ 2`. Rows and columns both by `wnorm_neumann` (Resolvent.lean) with `K = −F`;
`(1 + F)⁻¹ = Σ_k (−F)^k` by `parametrix_inv`/`parametrix_knorm`. -/
theorem knorm_neumann (hε : 0 ≤ ε) (hd0 : ∀ x, d x x = 0)
    (htri : ∀ x y z, d x z ≤ d x y + d y z) (F : Matrix n n 𝕜) (hF : knorm ε d F ≤ 1 / 2) :
    IsUnit (1 + F) ∧ knorm ε d (1 + F)⁻¹ ≤ 2 := by
  have hw : ∀ x y, 0 < ew ε d x y := fun _ _ => Real.exp_pos _
  have hdiag : ∀ x, ew ε d x x ≤ 1 := fun x => by simp [ew, hd0]
  have hr : wnorm (ew ε d) (-F) ≤ 1 / 2 := by rw [wnorm_neg]; exact (le_max_left _ _).trans hF
  have hc : wnorm (fun x y => ew ε d y x) (-Fᵀ) ≤ 1 / 2 := by
    rw [wnorm_neg]; exact (le_max_right _ _).trans hF
  obtain ⟨hu, h1⟩ := wnorm_neumann hw (ew_tri hε htri) hdiag (-F) (by linarith)
  obtain ⟨-, h2⟩ := wnorm_neumann (fun x y => hw y x)
    (fun x y z => by rw [mul_comm]; exact ew_tri hε htri z y x) hdiag (-Fᵀ) (by linarith)
  rw [sub_neg_eq_add] at hu h1 h2
  have h2' : (1 / (1 - wnorm (ew ε d) (-F))) ≤ 2 := by
    rw [div_le_iff₀ (by linarith)]; linarith
  have h3 : (1 / (1 - wnorm (fun x y => ew ε d y x) (-Fᵀ))) ≤ 2 := by
    rw [div_le_iff₀ (by linarith)]; linarith
  refine ⟨hu, max_le (h1.trans h2') ?_⟩
  rw [transpose_nonsing_inv, transpose_add, transpose_one]
  exact h2.trans h3

/-- **A1-W §5.2, kernel-norm form.** `N̂ P = 1 + F` and `‖F‖_κ ≤ ½` (κ = ½ε in the note; `κ ≥ 0`,
`d ≥ 0`, `d x x = 0`, triangle inequality) ⇒ `N̂` invertible, `N̂⁻¹ = P Σ_k (−F)^k`,
`‖N̂⁻¹‖₂ ≤ 2‖P‖₂`, `‖N̂⁻¹‖_κ ≤ 2‖P‖_κ`, and `|N̂⁻¹(x, y)| ≤ 2‖P‖_κ e^{−κ d(x, y)}`. -/
theorem parametrix_knorm [Nonempty n] {κ : ℝ} (hκ : 0 ≤ κ) (hd : ∀ x y, 0 ≤ d x y)
    (hd0 : ∀ x, d x x = 0) (htri : ∀ x y z, d x z ≤ d x y + d y z) {N P F : Matrix n n 𝕜}
    (hNP : N * P = 1 + F) (hF : knorm κ d F ≤ 1 / 2) :
    IsUnit N ∧ N⁻¹ = P * ∑' k : ℕ, (-F) ^ k ∧ ‖N⁻¹‖ ≤ 2 * ‖P‖ ∧
      knorm κ d N⁻¹ ≤ 2 * knorm κ d P ∧
      ∀ x y, ‖N⁻¹ x y‖ ≤ 2 * knorm κ d P * Real.exp (-(κ * d x y)) := by
  have hop : ‖F‖ ≤ 1 / 2 := (op_le_knorm hκ hd F).trans hF
  obtain ⟨hu, hN, hb⟩ := parametrix_inv hNP hop
  have hlt : ‖-F‖ < 1 := by rw [norm_neg]; linarith
  have hs : (1 + F)⁻¹ = ∑' k : ℕ, (-F) ^ k :=
    inv_eq_right_inv (by simpa using mul_neg_geom_series (-F) hlt)
  obtain ⟨-, hk⟩ := knorm_neumann hκ hd0 htri F hF
  have hK : knorm κ d N⁻¹ ≤ 2 * knorm κ d P := by
    rw [hN, ← hs, mul_comm 2]
    exact (knorm_mul_le hκ htri _ _).trans (mul_le_mul_of_nonneg_left hk (knorm_nonneg P))
  refine ⟨hu, hN, hb, hK, fun x y => (entry_le_knorm _ x y).trans
    (mul_le_mul_of_nonneg_right hK (Real.exp_pos _).le)⟩

/-! ### (b) L-124 (Lemma CT) with μ-weights (§0.1, §3.1–§3.3) -/

/-- Matrix of `V A V⁻¹` for the operator `A u = Σ_y μ y a(·, y) u y` on `ℓ²(n, μ)` (§0.1):
`diag(√μ) a diag(√μ)`. -/
noncomputable def vconj (μ : n → ℝ) (a : Matrix n n 𝕜) : Matrix n n 𝕜 :=
  diagonal (fun x => (Real.sqrt (μ x) : 𝕜)) * a * diagonal (fun x => (Real.sqrt (μ x) : 𝕜))

/-- `m(x, y) = (μ x μ y)^{−1/2}`. -/
noncomputable def mw (μ : n → ℝ) (x y : n) : ℝ := (Real.sqrt (μ x) * Real.sqrt (μ y))⁻¹

/-- The operator `A = a · diag μ` has inverse `kinv · diag μ` with kernel
`kinv = diag(μ^{−1/2}) (vconj μ a)⁻¹ diag(μ^{−1/2})`, so `|kinv x y| = m(x, y) |(vconj μ a)⁻¹ x y|`
(VERIFY_CombesThomas "Not formalized" item 1: the change of variables V and the factor m). -/
theorem vconj_inv (μ : n → ℝ) (hμ : ∀ x, 0 < μ x) (a : Matrix n n 𝕜) (hu : IsUnit (vconj μ a)) :
    a * diagonal (fun x => (μ x : 𝕜)) * ((diagonal (fun x => (Real.sqrt (μ x) : 𝕜)⁻¹) *
      (vconj μ a)⁻¹ * diagonal (fun x => (Real.sqrt (μ x) : 𝕜)⁻¹)) *
        diagonal (fun x => (μ x : 𝕜))) = 1 ∧
    ∀ x y, ‖(diagonal (fun x => (Real.sqrt (μ x) : 𝕜)⁻¹) * (vconj μ a)⁻¹ *
      diagonal (fun x => (Real.sqrt (μ x) : 𝕜)⁻¹)) x y‖ = mw μ x y * ‖(vconj μ a)⁻¹ x y‖ := by
  set s : n → 𝕜 := fun x => (Real.sqrt (μ x) : 𝕜)
  have hs : ∀ x, s x ≠ 0 := fun x =>
    RCLike.ofReal_ne_zero.2 (Real.sqrt_pos.2 (hμ x)).ne'
  have hss : ∀ x, s x * s x = (μ x : 𝕜) := fun x => by
    simp only [s]; rw [← RCLike.ofReal_mul, Real.mul_self_sqrt (hμ x).le]
  have hB := mul_nonsing_inv _ ((isUnit_iff_isUnit_det _).mp hu)
  refine ⟨?_, fun x y => ?_⟩
  · have e : a * diagonal (fun x => (μ x : 𝕜)) * diagonal (fun x => (s x)⁻¹) =
        diagonal (fun x => (s x)⁻¹) * vconj μ a := by
      simp only [vconj, ← mul_assoc, diagonal_mul_diagonal]
      rw [mul_assoc a, diagonal_mul_diagonal]
      ext x y
      simp only [mul_diagonal, diagonal_mul]
      rw [← hss y]; field_simp [hs x, hs y]; simp only [s]; ring
    calc _ = a * diagonal (fun x => (μ x : 𝕜)) * diagonal (fun x => (s x)⁻¹) *
          (vconj μ a)⁻¹ * (diagonal (fun x => (s x)⁻¹) * diagonal (fun x => (μ x : 𝕜))) := by
          simp only [s, mul_assoc]
      _ = 1 := by
        rw [e, mul_assoc (diagonal _) (vconj μ a), hB, mul_one, diagonal_mul_diagonal,
          diagonal_mul_diagonal, ← diagonal_one]
        congr 1; funext x; rw [← hss x]; field_simp [hs x]
  · rw [mul_diagonal, diagonal_mul, norm_mul, norm_mul, norm_inv, norm_inv, RCLike.norm_ofReal,
      RCLike.norm_ofReal, abs_of_nonneg (Real.sqrt_nonneg _), abs_of_nonneg (Real.sqrt_nonneg _),
      mw, mul_inv]
    ring

/-- Kernel step of §3.2 (VERIFY_CombesThomas item 2): `|B x y| ≤ b e^{−δ d}`, `0 ≤ ε ≤ δ/2`,
`|f x − f y| ≤ d(x, y)`, `Σ_y (1 + d) e^{−½δ d} ≤ Σ` (rows; columns by symmetry of d) ⇒
`‖e^{εf} B e^{−εf} − B‖₂ ≤ bεΣ`. -/
theorem ct_conj_sub_le (B : Matrix n n 𝕜) (hd : ∀ x y, 0 ≤ d x y)
    (hsymm : ∀ x y, d x y = d y x) {b δ S : ℝ} (hb : 0 ≤ b) (hε : 0 ≤ ε) (hεδ : ε ≤ δ / 2)
    (hB : ∀ x y, ‖B x y‖ ≤ b * Real.exp (-(δ * d x y)))
    (hSig : ∀ x, ∑ y, (1 + d x y) * Real.exp (-(δ / 2 * d x y)) ≤ S) (hS : 0 ≤ S)
    (f : n → ℝ) (hf : ∀ x y, |f x - f y| ≤ d x y) :
    ‖diagonal (fun x => (Real.exp (ε * f x) : 𝕜)) * B *
      diagonal (fun x => (Real.exp (ε * f x) : 𝕜)⁻¹) - B‖ ≤ b * ε * S := by
  have hent : ∀ x y, ‖(diagonal (fun x => (Real.exp (ε * f x) : 𝕜)) * B *
      diagonal (fun x => (Real.exp (ε * f x) : 𝕜)⁻¹) - B) x y‖ ≤
      b * ε * ((1 + d x y) * Real.exp (-(δ / 2 * d x y))) := by
    intro x y
    rw [Matrix.sub_apply, mul_diagonal, diagonal_mul,
      show (Real.exp (ε * f x) : 𝕜) * B x y * (Real.exp (ε * f y) : 𝕜)⁻¹ - B x y =
        B x y * ((Real.exp (ε * (f x - f y)) - 1 : ℝ) : 𝕜) by
          rw [mul_sub, Real.exp_sub]; push_cast; field_simp,
      norm_mul, RCLike.norm_ofReal]
    have hD := hd x y
    have ht : |ε * (f x - f y)| ≤ ε * d x y := by
      rw [abs_mul, abs_of_nonneg hε]; exact mul_le_mul_of_nonneg_left (hf x y) hε
    have h1 := (abs_exp_sub_one_le_mul_exp _).trans (mul_le_mul ht (Real.exp_le_exp.2 ht)
      (Real.exp_pos _).le (mul_nonneg hε hD))
    have h2 : Real.exp (-(δ * d x y)) * Real.exp (ε * d x y) ≤ Real.exp (-(δ / 2 * d x y)) := by
      rw [← Real.exp_add]; exact Real.exp_le_exp.mpr (by nlinarith)
    calc ‖B x y‖ * |Real.exp (ε * (f x - f y)) - 1|
        ≤ b * Real.exp (-(δ * d x y)) * (ε * d x y * Real.exp (ε * d x y)) :=
          mul_le_mul (hB x y) h1 (abs_nonneg _) (by positivity)
      _ = b * ε * d x y * (Real.exp (-(δ * d x y)) * Real.exp (ε * d x y)) := by ring
      _ ≤ b * ε * d x y * Real.exp (-(δ / 2 * d x y)) :=
          mul_le_mul_of_nonneg_left h2 (by positivity)
      _ ≤ _ := by
          rw [mul_assoc (b * ε)]
          exact mul_le_mul_of_nonneg_left (mul_le_mul_of_nonneg_right (by linarith)
            (Real.exp_pos _).le) (by positivity)
  have hS0 : 0 ≤ b * ε * S := mul_nonneg (mul_nonneg hb hε) hS
  have hs := schur_test (𝕜 := 𝕜) _ hS0 hS0
    (fun x => (sum_le_sum fun y _ => hent x y).trans (by
      rw [← mul_sum]; exact mul_le_mul_of_nonneg_left (hSig x) (mul_nonneg hb hε)))
    (fun y => (sum_le_sum fun x _ => hent x y).trans (by
      rw [← mul_sum]; refine mul_le_mul_of_nonneg_left ?_ (mul_nonneg hb hε)
      simpa only [hsymm _ y] using hSig y))
  rwa [Real.sqrt_mul_self hS0] at hs

/-- **L-124 (Lemma CT), μ-weighted, conjugation-norm form** (A1_WALK_FULL §3.1, P3). `a` is the kernel of
an operator on `ℓ²(n, μ)`; (i) `|a(x, y)| ≤ b m(x, y) e^{−δ d(x, y)}`; (ii) accretivity
`Re⟨u, A u⟩_μ ≥ c‖u‖²_μ`, stated for `vconj μ a = V A V⁻¹` (V unitary, prose). With
`0 ≤ ε ≤ δ/2` and `bεΣ ≤ c/2` (i.e. `ε ≤ c/(2bΣ(½δ))`): `V A V⁻¹` is invertible; for every
1-Lipschitz `f`, `‖e^{εf}(V A V⁻¹)⁻¹e^{−εf}‖₂ ≤ 2/c` (so `‖A⁻¹‖_ε ≤ 2/c`); and the kernel of
`A⁻¹` (see `vconj_inv`) obeys `m |(V A V⁻¹)⁻¹ x y| ≤ (2/c) m(x, y) e^{−ε d(x, y)}` (N2). -/
theorem combes_thomas_mu (μ : n → ℝ) (hμ : ∀ x, 0 < μ x) (a : Matrix n n 𝕜)
    (hd : ∀ x y, 0 ≤ d x y) (hd0 : ∀ x, d x x = 0) (hsymm : ∀ x y, d x y = d y x)
    (htri : ∀ x y z, d x z ≤ d x y + d y z) {b c δ S : ℝ} (hb : 0 ≤ b) (hc : 0 < c)
    (hε : 0 ≤ ε) (hεδ : ε ≤ δ / 2)
    (hA : ∀ x y, ‖a x y‖ ≤ b * mw μ x y * Real.exp (-(δ * d x y)))
    (hN : ∀ v, c * ‖v‖ ^ 2 ≤ rq (vconj μ a) v)
    (hSig : ∀ x, ∑ y, (1 + d x y) * Real.exp (-(δ / 2 * d x y)) ≤ S) (hS : 0 ≤ S) (hsmall : b * ε * S ≤ c / 2) :
    IsUnit (vconj μ a) ∧
    (∀ f : n → ℝ, (∀ x y, |f x - f y| ≤ d x y) →
      ‖(diagonal (fun x => (Real.exp (ε * f x) : 𝕜)) * vconj μ a *
        diagonal (fun x => (Real.exp (ε * f x) : 𝕜)⁻¹))⁻¹‖ ≤ 2 / c) ∧
    ∀ x y, mw μ x y * ‖(vconj μ a)⁻¹ x y‖ ≤ 2 / c * mw μ x y * Real.exp (-(ε * d x y)) := by
  have hB : ∀ x y, ‖vconj μ a x y‖ ≤ b * Real.exp (-(δ * d x y)) := by
    intro x y
    have hx := Real.sqrt_pos.2 (hμ x); have hy := Real.sqrt_pos.2 (hμ y)
    rw [vconj, mul_diagonal, diagonal_mul, norm_mul, norm_mul, RCLike.norm_ofReal,
      RCLike.norm_ofReal, abs_of_pos hx, abs_of_pos hy]
    have h := mul_le_mul_of_nonneg_right (hA x y) (mul_pos hx hy).le
    calc _ = ‖a x y‖ * (Real.sqrt (μ x) * Real.sqrt (μ y)) := by ring
      _ ≤ _ := h
      _ = b * Real.exp (-(δ * d x y)) := by
        rw [mw]; field_simp
  have hE := fun f hf => (ct_conj_sub_le (𝕜 := 𝕜) (vconj μ a) hd hsymm hb hε hεδ hB hSig hS f hf).trans
    hsmall
  have hfy : ∀ y : n, ∀ x x', |d x y - d x' y| ≤ d x x' := fun y x x' => abs_sub_le_iff.2
    ⟨by linarith [htri x x' y], by linarith [htri x' x y, hsymm x x']⟩
  refine ⟨(coercive_inv _ hc hN).1, fun f hf => ?_, fun x y => ?_⟩
  · exact (combes_thomas (vconj μ a) (fun x => Real.exp (ε * f x)) (fun _ => Real.exp_pos _) hc hN
      (hE f hf)).2.1
  · have h := (combes_thomas (vconj μ a) (fun x => Real.exp (ε * d x y))
      (fun _ => Real.exp_pos _) hc hN (hE _ (hfy y))).2.2 x y
    rw [hd0, mul_zero, Real.exp_zero, one_div, ← Real.exp_neg] at h
    rw [mul_comm (2 / c), mul_assoc]
    exact mul_le_mul_of_nonneg_left h (inv_nonneg.2 (by positivity))

end YmLean

#print axioms YmLean.parametrix_identity
#print axioms YmLean.parametrix_neumann
#print axioms YmLean.parametrix_inv
#print axioms YmLean.conj_le_knorm
#print axioms YmLean.op_le_knorm
#print axioms YmLean.knorm_mul_le
#print axioms YmLean.knorm_pow_le
#print axioms YmLean.knorm_neumann
#print axioms YmLean.parametrix_knorm
#print axioms YmLean.vconj_inv
#print axioms YmLean.ct_conj_sub_le
#print axioms YmLean.combes_thomas_mu
