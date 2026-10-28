import Mathlib.LinearAlgebra.Matrix.SchurComplement
import Mathlib.Data.Matrix.ColumnRowPartitioned
import Mathlib.Data.Real.Basic

/-!
# Determinant identities of NUMERICS.md §1, steps (iv) and (v)

Restrictions to a subspace are written in an orthonormal basis given by the columns of a matrix:
`Z : Matrix ι μ ℝ` with `Zᵀ * Z = 1`; the restricted form of `K` is `Zᵀ * K * Z`.
-/

open Matrix

namespace YmLean

variable {ι μ ν κ ρ : Type*} [Fintype ι] [Fintype μ] [Fintype ν] [Fintype κ] [Fintype ρ]
  [DecidableEq ι] [DecidableEq μ] [DecidableEq ν] [DecidableEq κ] [DecidableEq ρ]

/-- `det [[0, 1], [1, 0]] = (-1)^r`. -/
lemma det_swapBlocks :
    (fromBlocks (0 : Matrix ρ ρ ℝ) (1 : Matrix ρ ρ ℝ) (1 : Matrix ρ ρ ℝ) 0).det =
      (-1) ^ Fintype.card ρ := by
  set I : Matrix ρ ρ ℝ := 1
  have h : fromBlocks 0 I I 0 =
      fromBlocks I I 0 I * fromBlocks I 0 (-I) I * fromBlocks I I 0 I * fromBlocks (-I) 0 0 I := by
    simp [I, fromBlocks_multiply]
  rw [h, det_mul, det_mul, det_mul, det_fromBlocks_zero₂₁, det_fromBlocks_zero₁₂,
    det_fromBlocks_zero₂₁]
  simp [I, det_neg]

/-- `det [[E, Gᵀ], [G, 0]] = (-1)^r det(G)²`. -/
lemma det_fromBlocks_zero₂₂ (E G : Matrix ρ ρ ℝ) :
    (fromBlocks E Gᵀ G 0).det = (-1) ^ Fintype.card ρ * G.det ^ 2 := by
  have h : fromBlocks E Gᵀ G 0 = fromBlocks Gᵀ E 0 G * fromBlocks 0 1 1 0 := by
    simp [fromBlocks_multiply]
  rw [h, det_mul, det_fromBlocks_zero₂₁, det_swapBlocks, det_transpose]
  ring

/-- Bordered determinant in an adapted basis (`μ` = kernel block, first `ρ` = complement block,
second `ρ` = multipliers). -/
lemma det_bordered_adapted (A : Matrix μ μ ℝ) (B : Matrix μ ρ ℝ) (B' : Matrix ρ μ ℝ)
    (E G : Matrix ρ ρ ℝ) (hG : G.det ≠ 0) :
    (fromBlocks (fromBlocks A B B' E) (fromRows 0 Gᵀ) (fromCols 0 G) 0).det =
      (-1) ^ Fintype.card ρ * A.det * G.det ^ 2 := by
  set N := fromBlocks E Gᵀ G 0
  have hre : fromBlocks (fromBlocks A B B' E) (fromRows 0 Gᵀ) (fromCols 0 G) 0 =
      (fromBlocks A (fromCols B 0) (fromRows B' 0) N).submatrix
        (Equiv.sumAssoc μ ρ ρ) (Equiv.sumAssoc μ ρ ρ) := by
    ext ((i | i) | i) ((j | j) | j) <;> simp [N]
  have hGu : IsUnit G.det := isUnit_iff_ne_zero.mpr hG
  have hGTu : IsUnit Gᵀ.det := by rwa [det_transpose]
  have hNinv : N * fromBlocks 0 G⁻¹ G⁻¹ᵀ (-(G⁻¹ᵀ * E * G⁻¹)) = 1 := by
    rw [← fromBlocks_one]
    simp only [N, fromBlocks_multiply, transpose_nonsing_inv, mul_nonsing_inv _ hGu,
      mul_nonsing_inv _ hGTu]
    simp [← Matrix.mul_assoc, mul_nonsing_inv _ hGTu]
  haveI : Invertible N := invertibleOfRightInverse _ _ hNinv
  rw [hre, det_submatrix_equiv_self, det_fromBlocks₂₂, invOf_eq_right_inv hNinv,
    fromCols_mul_fromBlocks, fromCols_mul_fromRows, det_fromBlocks_zero₂₂]
  simp
  ring

end YmLean
