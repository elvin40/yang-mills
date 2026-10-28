import YmLean.DetIdentities
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Gaussian telescoping, finite-dimensional form (R2_TELESCOPING.md Prop. 3.1; R2_VERIFY.md §2.6)

`Q₁ : ℝ^ι → ℝ^ρ₁`, `Q₂ : ℝ^ρ₁ → ℝ^ρ₂`, composed constraint `Q = Q₂ Q₁`. Columns of `Z₁`: basis of
`ker Q₁`; columns of `Z₂`: basis of `ker Q₂`. `H₁` is the linearized minimizer map:
`Q₁ H₁ = 1` and `Δ H₁ ⊥ ker Q₁` (`Z₁ᵀ Δ H₁ = 0`, the Lagrange condition). The one-step
effective form is `Δ₁ = H₁ᵀ Δ H₁`. `B = [Z₁ | H₁ Z₂]` is a basis of `ker Q` adapted to the flag
`ker Q₁ ⊆ ker Q`. Restricted forms are Gram matrices `Zᵀ Δ Z` on an orthonormal basis `Z`.
-/

open Matrix

namespace YmLean

variable {ι α β ρ₁ ρ₂ σ : Type*} [Fintype ι] [Fintype α] [Fintype β] [Fintype ρ₁] [Fintype ρ₂]
  [DecidableEq ι] [DecidableEq α] [DecidableEq β] [DecidableEq ρ₁]

omit [DecidableEq ι] [DecidableEq α] [DecidableEq ρ₁] in
/-- The Fubini step of Prop. 3.1: for `B = H₁ V + B'` with `B' = Z₁ c ∈ ker Q₁`,
`⟨B, Δ B⟩ = ⟨V, Δ₁ V⟩ + ⟨B', Δ B'⟩` (no cross term). Matrix form, any number of columns `σ`. -/
theorem quad_split (Δ : Matrix ι ι ℝ) (hΔ : Δᵀ = Δ) (Z₁ : Matrix ι α ℝ) (H₁ : Matrix ι ρ₁ ℝ)
    (hL : Z₁ᵀ * Δ * H₁ = 0) (V : Matrix ρ₁ σ ℝ) (c : Matrix α σ ℝ) :
    (H₁ * V + Z₁ * c)ᵀ * Δ * (H₁ * V + Z₁ * c) =
      Vᵀ * (H₁ᵀ * Δ * H₁) * V + cᵀ * (Z₁ᵀ * Δ * Z₁) * c := by
  have hL' : H₁ᵀ * Δ * Z₁ = 0 := by
    rw [← transpose_transpose (H₁ᵀ * Δ * Z₁)]
    simp [transpose_mul, hΔ, Matrix.mul_assoc, hL]
  have h1 : Vᵀ * H₁ᵀ * Δ * (Z₁ * c) = 0 := by
    simp only [Matrix.mul_assoc] at hL' ⊢; rw [← Matrix.mul_assoc Δ, ← Matrix.mul_assoc H₁ᵀ, hL']
    simp
  have h2 : cᵀ * Z₁ᵀ * Δ * (H₁ * V) = 0 := by
    simp only [Matrix.mul_assoc] at hL ⊢; rw [← Matrix.mul_assoc Δ, ← Matrix.mul_assoc Z₁ᵀ, hL]
    simp
  simp only [transpose_add, transpose_mul, Matrix.add_mul, Matrix.mul_add, h1, h2, add_zero,
    zero_add]
  simp only [Matrix.mul_assoc]

omit [Fintype α] [Fintype β] [Fintype ρ₂] [DecidableEq ι] [DecidableEq α] [DecidableEq β] in
/-- The adapted basis `B = [Z₁ | H₁ Z₂]` lies in `ker (Q₂ Q₁)`. -/
theorem adapted_in_ker (Q₁ : Matrix ρ₁ ι ℝ) (Q₂ : Matrix ρ₂ ρ₁ ℝ) (Z₁ : Matrix ι α ℝ)
    (H₁ : Matrix ι ρ₁ ℝ) (Z₂ : Matrix ρ₁ β ℝ) (hQZ₁ : Q₁ * Z₁ = 0) (hQH : Q₁ * H₁ = 1)
    (hQZ₂ : Q₂ * Z₂ = 0) : Q₂ * Q₁ * fromCols Z₁ (H₁ * Z₂) = 0 := by
  have : Q₁ * (H₁ * Z₂) = Z₂ := by rw [← Matrix.mul_assoc, hQH, Matrix.one_mul]
  simp only [Matrix.mul_assoc, mul_fromCols, hQZ₁, this, hQZ₂, Matrix.mul_zero, fromCols_zero]

omit [DecidableEq ι] [DecidableEq ρ₁] in
/-- Prop. 3.1 in determinant form: `det(Δ|_{ker Q₁}) · det(Δ₁|_{ker Q₂}) = det(Δ|_{ker Q}) ·
det(Bᵀ B)`. `Z` is an orthonormal basis of `ker Q` and `B = Z M` (the adapted basis spans the same
space; it does by `adapted_in_ker` and a dimension count, which is assumed here). `Z₁`, `Z₂` are
orthonormal in the applications; the identity does not need it. -/
theorem telescoping_det (Δ : Matrix ι ι ℝ) (hΔ : Δᵀ = Δ) (Z₁ : Matrix ι α ℝ)
    (H₁ : Matrix ι ρ₁ ℝ) (hL : Z₁ᵀ * Δ * H₁ = 0) (Z₂ : Matrix ρ₁ β ℝ)
    (Z : Matrix ι (α ⊕ β) ℝ) (M : Matrix (α ⊕ β) (α ⊕ β) ℝ) (hZ : Zᵀ * Z = 1)
    (hB : fromCols Z₁ (H₁ * Z₂) = Z * M) :
    (Z₁ᵀ * Δ * Z₁).det * (Z₂ᵀ * (H₁ᵀ * Δ * H₁) * Z₂).det =
      (Zᵀ * Δ * Z).det * ((fromCols Z₁ (H₁ * Z₂))ᵀ * fromCols Z₁ (H₁ * Z₂)).det := by
  set B := fromCols Z₁ (H₁ * Z₂)
  have hL' : H₁ᵀ * Δ * Z₁ = 0 := by
    rw [← transpose_transpose (H₁ᵀ * Δ * Z₁)]
    simp [transpose_mul, hΔ, Matrix.mul_assoc, hL]
  have hA : Z₁ᵀ * (Δ * (H₁ * Z₂)) = 0 := by
    rw [← Matrix.mul_assoc, ← Matrix.mul_assoc, hL, Matrix.zero_mul]
  have hA' : Z₂ᵀ * (H₁ᵀ * (Δ * Z₁)) = 0 := by
    rw [← Matrix.mul_assoc H₁ᵀ, hL', Matrix.mul_zero]
  have hblock : Bᵀ * Δ * B =
      fromBlocks (Z₁ᵀ * Δ * Z₁) 0 0 (Z₂ᵀ * (H₁ᵀ * Δ * H₁) * Z₂) := by
    rw [transpose_fromCols, fromRows_mul, fromRows_mul_fromCols]
    simp only [transpose_mul, Matrix.mul_assoc, hA, hA']
  have h1 : (Bᵀ * Δ * B).det = M.det ^ 2 * (Zᵀ * Δ * Z).det := by
    rw [hB, transpose_mul, show Mᵀ * Zᵀ * Δ * (Z * M) = Mᵀ * (Zᵀ * Δ * Z) * M by
      simp [Matrix.mul_assoc], det_mul, det_mul, det_transpose]; ring
  have h2 : (Bᵀ * B).det = M.det ^ 2 := by
    rw [hB, transpose_mul, Matrix.mul_assoc, ← Matrix.mul_assoc Zᵀ, hZ, Matrix.one_mul,
      det_mul, det_transpose]; ring
  rw [← det_fromBlocks_zero₂₁, ← hblock, h1, h2]; ring

/-- The intermediate Gram factor is independent of `Δ`: if `Z₁` is an orthonormal basis of
`ker Q₁` (dimension count `|ι| = |α| + |ρ₁|`, `Q₁` of full row rank) and `Q₁ H₁ = 1`, then
`det(Bᵀ B) = det(Z₂ᵀ (Q₁ Q₁ᵀ)⁻¹ Z₂)`: the Gram matrix of the basis `Z₂` of `ker Q₂` in the metric
`(Q₁ Q₁ᵀ)⁻¹` on `ℝ^ρ₁`. -/
theorem gram_adapted (Q₁ : Matrix ρ₁ ι ℝ) (Z₁ : Matrix ι α ℝ) (H₁ : Matrix ι ρ₁ ℝ)
    (Z₂ : Matrix ρ₁ β ℝ) (hcard : Fintype.card ι = Fintype.card α + Fintype.card ρ₁)
    (hZ₁ : Z₁ᵀ * Z₁ = 1) (hQZ₁ : Q₁ * Z₁ = 0) (hQ : (Q₁ * Q₁ᵀ).det ≠ 0) (hQH : Q₁ * H₁ = 1) :
    ((fromCols Z₁ (H₁ * Z₂))ᵀ * fromCols Z₁ (H₁ * Z₂)).det = (Z₂ᵀ * (Q₁ * Q₁ᵀ)⁻¹ * Z₂).det := by
  set G := Q₁ * Q₁ᵀ
  have hGu : IsUnit G.det := isUnit_iff_ne_zero.mpr hQ
  have hP : Z₁ * Z₁ᵀ + Q₁ᵀ * (G⁻¹ * Q₁) = 1 := by
    have e : ι ≃ α ⊕ ρ₁ := Fintype.equivOfCardEq (by simp [hcard])
    have h : fromRows Z₁ᵀ (G⁻¹ * Q₁) * fromCols Z₁ Q₁ᵀ = 1 := by
      have hZQ : Z₁ᵀ * Q₁ᵀ = 0 := by rw [← transpose_mul, hQZ₁, transpose_zero]
      rw [fromRows_mul_fromCols, ← fromBlocks_one, hZ₁, hZQ, Matrix.mul_assoc, hQZ₁,
        Matrix.mul_zero, Matrix.mul_assoc, nonsing_inv_mul _ hGu]
    have := (fromCols_mul_fromRows_eq_one_comm e _ _ _ _).mpr h
    rwa [fromCols_mul_fromRows] at this
  have hY : 1 - Z₁ * Z₁ᵀ = Q₁ᵀ * (G⁻¹ * Q₁) := by rw [← hP]; abel
  have hQH' : ∀ X : Matrix ρ₁ β ℝ, Q₁ * (H₁ * X) = X := fun X => by
    rw [← Matrix.mul_assoc, hQH, Matrix.one_mul]
  have hHQ' : ∀ X : Matrix ρ₁ β ℝ, H₁ᵀ * (Q₁ᵀ * X) = X := fun X => by
    rw [← Matrix.mul_assoc, ← transpose_mul, hQH, transpose_one, Matrix.one_mul]
  rw [transpose_fromCols, fromRows_mul_fromCols, hZ₁, det_fromBlocks_one₁₁]
  congr 1
  calc (H₁ * Z₂)ᵀ * (H₁ * Z₂) - (H₁ * Z₂)ᵀ * Z₁ * (Z₁ᵀ * (H₁ * Z₂))
      = (H₁ * Z₂)ᵀ * (1 - Z₁ * Z₁ᵀ) * (H₁ * Z₂) := by
        simp [Matrix.mul_sub, Matrix.sub_mul, Matrix.mul_assoc]
    _ = Z₂ᵀ * G⁻¹ * Z₂ := by
        rw [hY]; simp only [transpose_mul, Matrix.mul_assoc, hQH', hHQ']

/-- Prop. 3.1, log form: the two one-step constrained log-determinants add up to the composed
one plus the log-determinant of the intermediate Gram matrix `Z₂ᵀ (Q₁ Q₁ᵀ)⁻¹ Z₂`. -/
theorem telescoping_log (Δ : Matrix ι ι ℝ) (hΔ : Δᵀ = Δ) (Q₁ : Matrix ρ₁ ι ℝ)
    (Z₁ : Matrix ι α ℝ) (H₁ : Matrix ι ρ₁ ℝ) (Z₂ : Matrix ρ₁ β ℝ)
    (hcard : Fintype.card ι = Fintype.card α + Fintype.card ρ₁)
    (hZ₁ : Z₁ᵀ * Z₁ = 1) (hQZ₁ : Q₁ * Z₁ = 0) (hQ : (Q₁ * Q₁ᵀ).det ≠ 0) (hQH : Q₁ * H₁ = 1)
    (hL : Z₁ᵀ * Δ * H₁ = 0) (Z : Matrix ι (α ⊕ β) ℝ) (M : Matrix (α ⊕ β) (α ⊕ β) ℝ)
    (hZ : Zᵀ * Z = 1) (hB : fromCols Z₁ (H₁ * Z₂) = Z * M)
    (h₁ : (Z₁ᵀ * Δ * Z₁).det ≠ 0) (h₂ : (Z₂ᵀ * (H₁ᵀ * Δ * H₁) * Z₂).det ≠ 0) :
    Real.log (Z₁ᵀ * Δ * Z₁).det + Real.log (Z₂ᵀ * (H₁ᵀ * Δ * H₁) * Z₂).det =
      Real.log (Zᵀ * Δ * Z).det + Real.log (Z₂ᵀ * (Q₁ * Q₁ᵀ)⁻¹ * Z₂).det := by
  have h := telescoping_det Δ hΔ Z₁ H₁ hL Z₂ Z M hZ hB
  rw [gram_adapted Q₁ Z₁ H₁ Z₂ hcard hZ₁ hQZ₁ hQ hQH] at h
  have h0 : (Zᵀ * Δ * Z).det * (Z₂ᵀ * (Q₁ * Q₁ᵀ)⁻¹ * Z₂).det ≠ 0 := h ▸ mul_ne_zero h₁ h₂
  rw [← Real.log_mul h₁ h₂, h, Real.log_mul (left_ne_zero_of_mul h0) (right_ne_zero_of_mul h0)]

end YmLean
