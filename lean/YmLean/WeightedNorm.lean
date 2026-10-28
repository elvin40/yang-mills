import YmLean.Resolvent

/-!
# Weighted kernel norm max(row, column) and Lemma N

Source: `../SOURCES_A2_R2.md` §3 (the norm `‖K‖_ρ := max{sup_b Σ_{b′}, sup_{b′} Σ_b} |K(b,b′)|e^{ρ|b−b′|}`,
fact (N1), Lemma N); `VERIFY_Resolvent.md` (d), differences 1–2.
Resolvent.lean has the row half `wnorm w K = sup_x Σ_y ‖K x y‖ w x y`. Here: the column half
`cwnorm w K = sup_y Σ_x ‖K x y‖ w x y = wnorm (tw w) Kᵀ` with the transposed weight
`tw w x y = w y x`; `mnorm w K = max (wnorm w K) (cwnorm w K)` (= `‖K‖_ρ` for
`w x y = e^{ρ d(x,y)}`, `expw_props`); and Lemma N for `mnorm`. In Lemma N the weight is `ω`,
since `w` is the bound on `‖W‖_ρ` in the note.
-/

open Matrix Finset

namespace YmLean

set_option linter.unusedSectionVars false

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n]

/-- Column-sum weighted norm `sup_y Σ_x ‖K x y‖ w x y` (column half of A2_R2's `‖·‖_ρ`). -/
noncomputable def cwnorm (w : n → n → ℝ) (K : Matrix n n 𝕜) : ℝ := ⨆ y, ∑ x, ‖K x y‖ * w x y

/-- Transposed weight `tw w x y = w y x`. -/
def tw (w : n → n → ℝ) (x y : n) : ℝ := w y x

/-- `‖K‖_ρ = max(row, column)` (A2_R2 §3). -/
noncomputable def mnorm (w : n → n → ℝ) (K : Matrix n n 𝕜) : ℝ := max (wnorm w K) (cwnorm w K)

theorem cwnorm_eq (w : n → n → ℝ) (K : Matrix n n 𝕜) : cwnorm w K = wnorm (tw w) Kᵀ := rfl

/-- `tw w` inherits the weight hypotheses of `w`. -/
theorem tw_props {w : n → n → ℝ} (hw : ∀ x y, 0 < w x y) (htri : ∀ x y z, w x z ≤ w x y * w y z)
    (hdiag : ∀ x, w x x ≤ 1) :
    (∀ x y, 0 < tw w x y) ∧ (∀ x y z, tw w x z ≤ tw w x y * tw w y z) ∧ ∀ x, tw w x x ≤ 1 :=
  ⟨fun x y => hw y x, fun x y z => by simpa [tw, mul_comm] using htri z y x, hdiag⟩

/-- Transposing the vertex weight: `tw (pw p) = pw p⁻¹`. -/
theorem tw_pw (p : n → ℝ) : tw (pw p) = pw (fun x => (p x)⁻¹) := by
  funext x y; simp only [tw, pw]; rw [inv_div_inv]

/-- (N1), column half: `‖K L‖_col ≤ ‖K‖_col ‖L‖_col`, from `wnorm_mul_le` for `Lᵀ Kᵀ`. -/
theorem cwnorm_mul_le {w : n → n → ℝ} (hw : ∀ x y, 0 ≤ w x y)
    (htri : ∀ x y z, w x z ≤ w x y * w y z) (K L : Matrix n n 𝕜) :
    cwnorm w (K * L) ≤ cwnorm w K * cwnorm w L := by
  rw [cwnorm_eq, cwnorm_eq, cwnorm_eq, transpose_mul, mul_comm (wnorm _ Kᵀ)]
  exact wnorm_mul_le (fun x y => hw y x) (fun x y z => by simpa [tw, mul_comm] using htri z y x) _ _

/-- (N1), column half for `‖·‖_p`: transposition of `pwnorm_mul_le` (weight `p⁻¹`). -/
theorem pcwnorm_mul_le {p : n → ℝ} (hp : ∀ x, 0 < p x) (K L : Matrix n n 𝕜) :
    cwnorm (pw p) (K * L) ≤ cwnorm (pw p) K * cwnorm (pw p) L := by
  rw [cwnorm_eq, cwnorm_eq, cwnorm_eq, tw_pw, transpose_mul, mul_comm (wnorm _ Kᵀ)]
  exact pwnorm_mul_le (fun x => inv_pos.mpr (hp x)) _ _

theorem mnorm_nonneg {w : n → n → ℝ} (hw : ∀ x y, 0 ≤ w x y) (K : Matrix n n 𝕜) :
    0 ≤ mnorm w K :=
  (wnorm_nonneg hw K).trans (le_max_left _ _)

theorem mnorm_add_le {w : n → n → ℝ} (hw : ∀ x y, 0 ≤ w x y) (K L : Matrix n n 𝕜) :
    mnorm w (K + L) ≤ mnorm w K + mnorm w L := by
  refine max_le ((wnorm_add_le hw K L).trans (add_le_add (le_max_left _ _) (le_max_left _ _))) ?_
  rw [cwnorm_eq, transpose_add]
  exact (wnorm_add_le (fun x y => hw y x) _ _).trans (add_le_add (le_max_right _ _) (le_max_right _ _))

theorem wnorm_smul (w : n → n → ℝ) (c : 𝕜) (K : Matrix n n 𝕜) :
    wnorm w (c • K) = ‖c‖ * wnorm w K := by
  simp only [wnorm, Matrix.smul_apply, smul_eq_mul, norm_mul, mul_assoc, ← mul_sum]
  rw [Real.mul_iSup_of_nonneg (norm_nonneg c)]

theorem mnorm_smul (w : n → n → ℝ) (c : 𝕜) (K : Matrix n n 𝕜) :
    mnorm w (c • K) = ‖c‖ * mnorm w K := by
  rw [mnorm, mnorm, cwnorm_eq, cwnorm_eq, transpose_smul, wnorm_smul, wnorm_smul,
    mul_max_of_nonneg _ _ (norm_nonneg c)]

/-- Definiteness (uses `w > 0`). -/
theorem mnorm_eq_zero {w : n → n → ℝ} (hw : ∀ x y, 0 < w x y) (K : Matrix n n 𝕜) :
    mnorm w K = 0 ↔ K = 0 := by
  have hw0 : ∀ x y, 0 ≤ w x y := fun x y => (hw x y).le
  constructor
  · intro h
    ext x y
    have h1 : ‖K x y‖ * w x y ≤ 0 :=
      (single_le_sum (f := fun y => ‖K x y‖ * w x y) (fun y _ => mul_nonneg (norm_nonneg _)
        (hw0 x y)) (mem_univ y)).trans ((row_le_wnorm w K x).trans (h ▸ le_max_left _ _))
    have : ‖K x y‖ ≤ 0 := by nlinarith [hw x y, norm_nonneg (K x y)]
    simpa using this
  · rintro rfl
    simpa using mnorm_smul w (0 : 𝕜) (0 : Matrix n n 𝕜)

theorem mnorm_one_le {w : n → n → ℝ} (hdiag : ∀ x, w x x ≤ 1) :
    mnorm w (1 : Matrix n n 𝕜) ≤ 1 := by
  refine max_le (wnorm_one_le hdiag) ?_
  rw [cwnorm_eq, transpose_one]
  exact wnorm_one_le hdiag

/-- (N1) for `‖·‖_ρ = max(row, column)`: `‖K L‖_ρ ≤ ‖K‖_ρ ‖L‖_ρ`. -/
theorem mnorm_mul_le {w : n → n → ℝ} (hw : ∀ x y, 0 ≤ w x y)
    (htri : ∀ x y z, w x z ≤ w x y * w y z) (K L : Matrix n n 𝕜) :
    mnorm w (K * L) ≤ mnorm w K * mnorm w L :=
  max_le ((wnorm_mul_le hw htri K L).trans (mul_le_mul (le_max_left _ _) (le_max_left _ _)
      (wnorm_nonneg hw L) (mnorm_nonneg hw K)))
    ((cwnorm_mul_le hw htri K L).trans (mul_le_mul (le_max_right _ _) (le_max_right _ _)
      ((wnorm_nonneg (fun x y => hw y x) Lᵀ)) (mnorm_nonneg hw K)))

theorem mnorm_pow_le {w : n → n → ℝ} (hw : ∀ x y, 0 ≤ w x y)
    (htri : ∀ x y z, w x z ≤ w x y * w y z) (hdiag : ∀ x, w x x ≤ 1) (K : Matrix n n 𝕜) (m : ℕ) :
    mnorm w (K ^ m) ≤ mnorm w K ^ m := by
  induction m with
  | zero => simpa using mnorm_one_le (𝕜 := 𝕜) hdiag
  | succ m ih =>
    rw [pow_succ, pow_succ]
    exact (mnorm_mul_le hw htri _ _).trans
      (mul_le_mul_of_nonneg_right ih (mnorm_nonneg hw K))

/-- Neumann in `‖·‖_ρ = max(row, column)`: `‖K‖_ρ < 1` ⇒ `1 − K` invertible and
`‖(1 − K)⁻¹‖_ρ ≤ 1 / (1 − ‖K‖_ρ)`. Column half: `wnorm_neumann` for `Kᵀ` with weight `tw w`,
`((1 − K)⁻¹)ᵀ = (1 − Kᵀ)⁻¹`. -/
theorem mnorm_neumann {w : n → n → ℝ} (hw : ∀ x y, 0 < w x y)
    (htri : ∀ x y z, w x z ≤ w x y * w y z) (hdiag : ∀ x, w x x ≤ 1) (K : Matrix n n 𝕜)
    (hK : mnorm w K < 1) : IsUnit (1 - K) ∧ mnorm w (1 - K)⁻¹ ≤ 1 / (1 - mnorm w K) := by
  obtain ⟨hu, hr⟩ := wnorm_neumann hw htri hdiag K ((le_max_left _ _).trans_lt hK)
  have ht := tw_props hw htri hdiag
  have hc := (wnorm_neumann ht.1 ht.2.1 ht.2.2 Kᵀ ((le_max_right _ _).trans_lt hK)).2
  rw [← transpose_one, ← transpose_sub, ← transpose_nonsing_inv, ← cwnorm_eq,
    ← cwnorm_eq] at hc
  have hpos : 0 < 1 - mnorm w K := by linarith
  have h1 := le_max_left (wnorm w K) (cwnorm w K)
  have h2 := le_max_right (wnorm w K) (cwnorm w K)
  refine ⟨hu, max_le (hr.trans ?_) (hc.trans ?_)⟩ <;>
    exact one_div_le_one_div_of_le hpos (by simp only [mnorm] at *; linarith)

/-- The weight `e^{ρ d(x,y)}` of A2_R2 §3 (`d(x,y) = |x − y|`) satisfies the weight hypotheses
for `ρ ≥ 0` and any `d` with the triangle inequality and `d(x,x) = 0`. -/
theorem expw_props {d : n → n → ℝ} (hd : ∀ x y z, d x z ≤ d x y + d y z) (hd0 : ∀ x, d x x = 0)
    {ρ : ℝ} (hρ : 0 ≤ ρ) :
    (∀ x y, 0 < Real.exp (ρ * d x y)) ∧
      (∀ x y z, Real.exp (ρ * d x z) ≤ Real.exp (ρ * d x y) * Real.exp (ρ * d y z)) ∧
      ∀ x, Real.exp (ρ * d x x) ≤ 1 :=
  ⟨fun _ _ => Real.exp_pos _, fun x y z => by
    rw [← Real.exp_add, Real.exp_le_exp, ← mul_add]
    exact mul_le_mul_of_nonneg_left (hd x y z) hρ, fun x => by simp [hd0]⟩

/-! ### Lemma N (A2_R2 §3) -/

/-- Lemma N's `T := Σ_{n≥1} (A_Z W)^n A_Z`, in closed form `(1 − A_Z W)⁻¹ (A_Z W) A_Z`
(`lemmaN_series` identifies it with the series). -/
noncomputable def lemmaN_T (A W : Matrix n n 𝕜) : Matrix n n 𝕜 := (1 - A * W)⁻¹ * (A * W) * A

/-- Partial sums of the Neumann series: `Y (1 − X) = 1`, `(1 − X) Y = 1` ⇒
`Y X = Σ_{k<N} X^{k+1} + X^{N+1} Y`. -/
theorem neumann_partial (X Y : Matrix n n 𝕜) (h1 : Y * (1 - X) = 1) (h2 : (1 - X) * Y = 1)
    (N : ℕ) : Y * X = ∑ k ∈ range N, X ^ (k + 1) + X ^ (N + 1) * Y := by
  have hY : Y = 1 + X * Y := by rw [sub_mul, one_mul] at h2; exact eq_add_of_sub_eq h2
  have hY' : Y = 1 + Y * X := by rw [mul_sub, mul_one] at h1; exact eq_add_of_sub_eq h1
  induction N with
  | zero =>
    simp only [range_zero, sum_empty, zero_add, pow_one]
    have := hY.symm.trans hY'
    exact (add_left_cancel this).symm
  | succ N ih =>
    rw [ih, sum_range_succ, add_assoc]
    congr 1
    conv_lhs => rw [hY, mul_add, mul_one, ← mul_assoc, ← pow_succ]

/-- **Lemma N** (A2_R2 §3). Weight `ω > 0` with `ω x z ≤ ω x y · ω y z`, `ω x x ≤ 1`;
`A = A_Z` invertible, `C₁ = A⁻¹`, `‖A‖_ρ ≤ a`, `‖W‖_ρ ≤ w`, `a w ≤ ½` (`‖·‖_ρ = mnorm ω`).
Then `C₁ − W` is invertible, `(C₁ − W)⁻¹ = A + T`, `‖T‖_ρ ≤ 2a²w`. -/
theorem lemma_N {ω : n → n → ℝ} (hω : ∀ x y, 0 < ω x y) (htri : ∀ x y z, ω x z ≤ ω x y * ω y z)
    (hdiag : ∀ x, ω x x ≤ 1) (A W : Matrix n n 𝕜) (hA : IsUnit A) {a w : ℝ}
    (ha : mnorm ω A ≤ a) (hw : mnorm ω W ≤ w) (haw : a * w ≤ 1 / 2) :
    IsUnit (A⁻¹ - W) ∧ (A⁻¹ - W)⁻¹ = A + lemmaN_T A W ∧ mnorm ω (lemmaN_T A W) ≤ 2 * a ^ 2 * w := by
  have hω0 : ∀ x y, 0 ≤ ω x y := fun x y => (hω x y).le
  have hdet := (isUnit_iff_isUnit_det _).mp hA
  have ha0 : 0 ≤ a := (mnorm_nonneg hω0 A).trans ha
  have hw0 : 0 ≤ w := (mnorm_nonneg hω0 W).trans hw
  have hX : mnorm ω (A * W) ≤ a * w :=
    (mnorm_mul_le hω0 htri A W).trans (mul_le_mul ha hw (mnorm_nonneg hω0 W) ha0)
  obtain ⟨hu, hinv⟩ := mnorm_neumann hω htri hdiag (A * W) (by linarith)
  have hfac : A⁻¹ - W = A⁻¹ * (1 - A * W) := by
    rw [mul_sub, mul_one, ← mul_assoc, nonsing_inv_mul _ hdet, one_mul]
  have hY : (1 - A * W)⁻¹ = 1 + (1 - A * W)⁻¹ * (A * W) := by
    have h := nonsing_inv_mul _ ((isUnit_iff_isUnit_det _).mp hu)
    rw [mul_sub, mul_one] at h
    exact eq_add_of_sub_eq h
  refine ⟨hfac ▸ (isUnit_nonsing_inv_iff.mpr hA).mul hu, ?_, ?_⟩
  · rw [hfac, Matrix.mul_inv_rev, nonsing_inv_nonsing_inv _ hdet, lemmaN_T]
    conv_lhs => rw [hY, add_mul, one_mul]
  · have h2 : mnorm ω (1 - A * W)⁻¹ ≤ 2 :=
      hinv.trans (by rw [div_le_iff₀ (by linarith)]; linarith)
    calc mnorm ω (lemmaN_T A W)
        ≤ mnorm ω (1 - A * W)⁻¹ * mnorm ω (A * W) * mnorm ω A :=
          (mnorm_mul_le hω0 htri _ _).trans (mul_le_mul_of_nonneg_right
            (mnorm_mul_le hω0 htri _ _) (mnorm_nonneg hω0 A))
      _ ≤ 2 * (a * w) * a := mul_le_mul (mul_le_mul h2 hX (mnorm_nonneg hω0 _) zero_le_two) ha
          (mnorm_nonneg hω0 A) (by positivity)
      _ = 2 * a ^ 2 * w := by ring

/-- Lemma N, `T` is the series `Σ_{n≥1} (A_Z W)^n A_Z` in `‖·‖_ρ`: under the hypotheses of
`lemma_N`, `‖T − Σ_{k<N} (A W)^{k+1} A‖_ρ ≤ 2a (aw)^{N+1}` (→ 0 since `aw ≤ ½`). -/
theorem lemmaN_series {ω : n → n → ℝ} (hω : ∀ x y, 0 < ω x y)
    (htri : ∀ x y z, ω x z ≤ ω x y * ω y z) (hdiag : ∀ x, ω x x ≤ 1) (A W : Matrix n n 𝕜)
    {a w : ℝ} (ha : mnorm ω A ≤ a) (hw : mnorm ω W ≤ w) (haw : a * w ≤ 1 / 2) (N : ℕ) :
    mnorm ω (lemmaN_T A W - ∑ k ∈ range N, (A * W) ^ (k + 1) * A) ≤ 2 * a * (a * w) ^ (N + 1) := by
  have hω0 : ∀ x y, 0 ≤ ω x y := fun x y => (hω x y).le
  have ha0 : 0 ≤ a := (mnorm_nonneg hω0 A).trans ha
  have hX : mnorm ω (A * W) ≤ a * w :=
    (mnorm_mul_le hω0 htri A W).trans (mul_le_mul ha hw (mnorm_nonneg hω0 W) ha0)
  obtain ⟨hu, hinv⟩ := mnorm_neumann hω htri hdiag (A * W) (by linarith)
  have hd := (isUnit_iff_isUnit_det _).mp hu
  have hp := neumann_partial (A * W) _ (nonsing_inv_mul _ hd) (mul_nonsing_inv _ hd) N
  have e : lemmaN_T A W - ∑ k ∈ range N, (A * W) ^ (k + 1) * A =
      (A * W) ^ (N + 1) * (1 - A * W)⁻¹ * A := by
    rw [lemmaN_T, hp, add_mul, sum_mul, add_sub_cancel_left]
  have h2 : mnorm ω (1 - A * W)⁻¹ ≤ 2 :=
    hinv.trans (by rw [div_le_iff₀ (by linarith)]; linarith)
  have hXN : mnorm ω ((A * W) ^ (N + 1)) ≤ (a * w) ^ (N + 1) :=
    (mnorm_pow_le hω0 htri hdiag _ _).trans
      (pow_le_pow_left₀ (mnorm_nonneg hω0 _) hX _)
  rw [e]
  calc mnorm ω ((A * W) ^ (N + 1) * (1 - A * W)⁻¹ * A)
      ≤ mnorm ω ((A * W) ^ (N + 1)) * mnorm ω (1 - A * W)⁻¹ * mnorm ω A :=
        (mnorm_mul_le hω0 htri _ _).trans (mul_le_mul_of_nonneg_right
          (mnorm_mul_le hω0 htri _ _) (mnorm_nonneg hω0 A))
    _ ≤ (a * w) ^ (N + 1) * 2 * a :=
        mul_le_mul (mul_le_mul hXN h2 (mnorm_nonneg hω0 _) ((mnorm_nonneg hω0 _).trans hXN)) ha
          (mnorm_nonneg hω0 A) (by have := (mnorm_nonneg hω0 _).trans hXN; positivity)
    _ = 2 * a * (a * w) ^ (N + 1) := by ring

/-- Lemma N with the weight of the note, `ω(x,y) = e^{ρ d(x,y)}` (`d` with the triangle
inequality and `d(x,x) = 0`, e.g. `|b − b′|`), `ρ ≥ 0`. -/
theorem lemma_N_exp {d : n → n → ℝ} (hd : ∀ x y z, d x z ≤ d x y + d y z) (hd0 : ∀ x, d x x = 0)
    {ρ : ℝ} (hρ : 0 ≤ ρ) (A W : Matrix n n 𝕜) (hA : IsUnit A) {a w : ℝ}
    (ha : mnorm (fun x y => Real.exp (ρ * d x y)) A ≤ a)
    (hw : mnorm (fun x y => Real.exp (ρ * d x y)) W ≤ w) (haw : a * w ≤ 1 / 2) :
    IsUnit (A⁻¹ - W) ∧ (A⁻¹ - W)⁻¹ = A + lemmaN_T A W ∧
      mnorm (fun x y => Real.exp (ρ * d x y)) (lemmaN_T A W) ≤ 2 * a ^ 2 * w :=
  let h := expw_props hd hd0 hρ
  lemma_N h.1 h.2.1 h.2.2 A W hA ha hw haw

end YmLean

#print axioms YmLean.cwnorm_mul_le
#print axioms YmLean.pcwnorm_mul_le
#print axioms YmLean.mnorm_add_le
#print axioms YmLean.mnorm_smul
#print axioms YmLean.mnorm_eq_zero
#print axioms YmLean.mnorm_mul_le
#print axioms YmLean.mnorm_neumann
#print axioms YmLean.expw_props
#print axioms YmLean.lemma_N
#print axioms YmLean.lemmaN_series
#print axioms YmLean.lemma_N_exp
