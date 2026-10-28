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
  have : Invertible N := invertibleOfRightInverse _ _ hNinv
  rw [hre, det_submatrix_equiv_self, det_fromBlocks₂₂, invOf_eq_right_inv hNinv,
    fromCols_mul_fromBlocks, fromCols_mul_fromRows, det_fromBlocks_zero₂₂]
  simp
  ring

/-- NUMERICS.md §1 step (v). `Z` (columns: orthonormal basis of `ker C`) and `Y` together form an
orthonormal basis of `ℝ^ι`; `Zᵀ K Z` is `K` restricted to `ker C`. Then
`det [[K, Cᵀ], [C, 0]] = (-1)^r · det(K|_{ker C}) · det(C Cᵀ)`.
Symmetry of `K` is not needed. -/
theorem det_bordered (K : Matrix ι ι ℝ) (C : Matrix ρ ι ℝ) (Z : Matrix ι μ ℝ) (Y : Matrix ι ρ ℝ)
    (hcard : Fintype.card ι = Fintype.card μ + Fintype.card ρ)
    (hT : (fromCols Z Y)ᵀ * fromCols Z Y = 1) (hCZ : C * Z = 0) (hC : (C * Cᵀ).det ≠ 0) :
    (fromBlocks K Cᵀ C 0).det = (-1) ^ Fintype.card ρ * (Zᵀ * K * Z).det * (C * Cᵀ).det := by
  have e : μ ⊕ ρ ≃ ι := Fintype.equivOfCardEq (by simp [hcard])
  set T := fromCols Z Y
  have hTT : Z * Zᵀ + Y * Yᵀ = 1 := by
    have := (mul_eq_one_comm_of_equiv e).mp hT
    rwa [transpose_fromCols, fromCols_mul_fromRows] at this
  -- G = C Y satisfies G Gᵀ = C Cᵀ
  set G := C * Y
  have hGG : G * Gᵀ = C * Cᵀ := by
    have hY : Y * Yᵀ = 1 - Z * Zᵀ := by rw [← hTT]; abel
    calc G * Gᵀ = C * (Y * Yᵀ) * Cᵀ := by simp [G, transpose_mul, Matrix.mul_assoc]
      _ = C * Cᵀ - (C * Z) * (C * Z)ᵀ := by
        rw [hY, Matrix.mul_sub, Matrix.sub_mul, transpose_mul]; simp [Matrix.mul_assoc]
      _ = C * Cᵀ := by simp [hCZ]
  have hdetG : G.det ^ 2 = (C * Cᵀ).det := by rw [← hGG, det_mul, det_transpose]; ring
  have hG : G.det ≠ 0 := fun h => hC (by rw [← hdetG, h]; ring)
  -- change of basis Q = diag(T, 1)
  set Q : Matrix (ι ⊕ ρ) ((μ ⊕ ρ) ⊕ ρ) ℝ := fromBlocks T 0 0 1
  set M := fromBlocks K Cᵀ C 0
  have hR : Qᵀ * M * Q = fromBlocks (fromBlocks (Zᵀ * K * Z) (Zᵀ * K * Y) (Yᵀ * K * Z)
      (Yᵀ * K * Y)) (fromRows 0 Gᵀ) (fromCols 0 G) 0 := by
    simp only [Q, M, T, G, fromBlocks_transpose, fromBlocks_multiply, transpose_fromCols,
      fromRows_mul, mul_fromCols, transpose_mul,
      Matrix.mul_assoc]
    simp [← transpose_mul, hCZ, Matrix.mul_assoc]
  have hQQ : Qᵀ * Q = 1 := by
    simp [Q, fromBlocks_transpose, fromBlocks_multiply, hT, T]
  set σ : ι ⊕ ρ ≃ (μ ⊕ ρ) ⊕ ρ := Equiv.sumCongr e.symm (Equiv.refl ρ)
  set P := Q.submatrix id σ
  have hsub : ∀ X : Matrix ((μ ⊕ ρ) ⊕ ρ) (ι ⊕ ρ) ℝ, ∀ Y' : Matrix (ι ⊕ ρ) ((μ ⊕ ρ) ⊕ ρ) ℝ,
      (X * Y').submatrix σ σ = X.submatrix σ id * Y'.submatrix id σ := fun X Y' => by
    rw [← submatrix_mul_equiv X Y' σ (Equiv.refl _) σ]; rfl
  have hP : (Qᵀ * M * Q).submatrix σ σ = Pᵀ * M * P := by
    rw [hsub, ← submatrix_mul_equiv (Qᵀ) M σ (Equiv.refl _) id]
    simp [P, transpose_submatrix]
  have hP1 : P.det ^ 2 = 1 := by
    have : Pᵀ * P = 1 := by
      rw [show Pᵀ * P = (Qᵀ * Q).submatrix σ σ by
        rw [hsub]; simp [P, transpose_submatrix], hQQ, submatrix_one_equiv]
    have := congrArg det this
    rwa [det_mul, det_transpose, det_one, ← sq] at this
  have hdet : M.det = (Qᵀ * M * Q).det := by
    rw [← det_submatrix_equiv_self σ, hP, det_mul, det_mul, det_transpose]
    rw [show P.det * M.det * P.det = P.det ^ 2 * M.det by ring, hP1, one_mul]
  rw [hdet, hR, det_bordered_adapted _ _ _ _ _ hG, hdetG]

omit [DecidableEq ι] in
/-- NUMERICS.md §1 step (iv). `fromCols V U` is an orthonormal basis of `W`; the columns of `U`
are an orthonormal basis of `N = range D` (`D = U M₁`, `U = D M₂`), so `N ⊆ W` and the columns of
`V` span `W ∩ N^⊥`. For symmetric `Δ` with `Δ D = 0`:
`det((Δ + D Dᵀ)|_W) = det(Δ|_{W ∩ N^⊥}) · det(Dᵀ D)`. -/
theorem det_restrict_add_gauge (Δ : Matrix ι ι ℝ) (hΔ : Δᵀ = Δ) (D : Matrix ι κ ℝ)
    (hΔD : Δ * D = 0) (V : Matrix ι ν ℝ) (U : Matrix ι κ ℝ)
    (hW : (fromCols V U)ᵀ * fromCols V U = 1) (M₁ M₂ : Matrix κ κ ℝ)
    (hDU : D = U * M₁) (hUD : U = D * M₂) :
    ((fromCols V U)ᵀ * (Δ + D * Dᵀ) * fromCols V U).det = (Vᵀ * Δ * V).det * (Dᵀ * D).det := by
  rw [transpose_fromCols, fromRows_mul_fromCols, ← fromBlocks_one, fromBlocks_inj] at hW
  obtain ⟨-, hVU, -, hUU⟩ := hW
  have hΔU : Δ * U = 0 := by rw [hUD, ← Matrix.mul_assoc, hΔD, Matrix.zero_mul]
  have hUΔ : Uᵀ * Δ = 0 := by rw [← hΔ, ← transpose_mul, hΔU, transpose_zero]
  have hVD : Vᵀ * D = 0 := by rw [hDU, ← Matrix.mul_assoc, hVU, Matrix.zero_mul]
  have hUD' : Uᵀ * D = M₁ := by rw [hDU, ← Matrix.mul_assoc, hUU, Matrix.one_mul]
  rw [transpose_fromCols, fromRows_mul, fromRows_mul_fromCols]
  have hDV : Dᵀ * V = 0 := by rw [← transpose_transpose V, ← transpose_mul, hVD, transpose_zero]
  have hDtU : Dᵀ * U = M₁ᵀ := by rw [← hUD', transpose_mul, transpose_transpose]
  have hDD : Dᵀ * D = M₁ᵀ * M₁ := by
    rw [hDU, transpose_mul, Matrix.mul_assoc, ← Matrix.mul_assoc Uᵀ, hUU, Matrix.one_mul]
  simp only [Matrix.mul_add, Matrix.add_mul, ← Matrix.mul_assoc, hUΔ, Matrix.zero_mul]
  simp only [Matrix.mul_assoc, hΔU, hVD, hDV, hDtU, Matrix.mul_zero, Matrix.zero_mul, add_zero,
    zero_add]
  simp only [← Matrix.mul_assoc, hUD']
  rw [det_fromBlocks_zero₁₂, hDD, det_mul, det_mul, det_transpose]

end YmLean
