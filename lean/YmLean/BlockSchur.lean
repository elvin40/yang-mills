import YmLean.Schur

/-!
# Block-valued Schur test (SOURCES_A1_KERNEL.md §7; SOURCES_S2_FORM.md §2 Π3)

Sources: `../SOURCES_A1_KERNEL.md` §7 (Schur step of L-125 (Lemma CT) on ℓ²(𝔅)), `../SOURCES_S2_FORM.md`
§2 (Step Π3, "Schur over blocks", ‖T_{yy′}‖ in place of |K|); gap 5 of `VERIFY_CombesThomas.md`.
Norm: spectral norm `Matrix.Norms.L2Operator` on `𝕜^{ι × Fin n}` and on each block `𝕜^{Fin n}`.
`blk K x y` = block `K_{xy}`, `k(x,y) := ‖K_{xy}‖₂`.
`block_row_le`: `‖(Kv)_x‖ ≤ Σ_y k(x,y) ‖v_y‖` (triangle inequality over blocks).
`block_schur_test`: `p > 0`, `Σ_y k(x,y) p y ≤ a p x`, `Σ_x k(x,y) p x ≤ b p y` ⇒ `‖K‖₂ ≤ √(ab)`.
Proof: `‖Kv‖² = Σ_x ‖(Kv)_x‖² ≤ Σ_x (Σ_y k(x,y)‖v_y‖)² = ‖k w‖²` with `w_y = ‖v_y‖`, `‖w‖ = ‖v‖`,
and `‖k‖₂ ≤ √(ab)` by `schur_test_weighted` applied to the scalar matrix `k`.
-/

open Matrix Finset
open scoped Matrix.Norms.L2Operator

namespace YmLean

variable {𝕜 : Type*} [RCLike 𝕜] {ι : Type*} [Fintype ι] [DecidableEq ι] {n : ℕ}

/-- Block `K_{xy}` of a block matrix `K` on `ι × Fin n`. -/
def blk (K : Matrix (ι × Fin n) (ι × Fin n) 𝕜) (x y : ι) : Matrix (Fin n) (Fin n) 𝕜 :=
  fun i j => K (x, i) (y, j)

omit [DecidableEq ι] in
/-- **Block-norm inequality** `‖(Kv)_x‖ ≤ Σ_y ‖K_{xy}‖₂ ‖v_y‖` (Euclidean norms on `𝕜ⁿ`). -/
theorem block_row_le (K : Matrix (ι × Fin n) (ι × Fin n) 𝕜) (u : ι × Fin n → 𝕜) (x : ι) :
    ‖(WithLp.toLp 2 fun i => (K *ᵥ u) (x, i) : EuclideanSpace 𝕜 (Fin n))‖ ≤
      ∑ y, ‖blk K x y‖ * ‖(WithLp.toLp 2 fun j => u (y, j) : EuclideanSpace 𝕜 (Fin n))‖ := by
  have h : (WithLp.toLp 2 fun i => (K *ᵥ u) (x, i) : EuclideanSpace 𝕜 (Fin n)) =
      ∑ y, (EuclideanSpace.equiv (Fin n) 𝕜).symm (blk K x y *ᵥ fun j => u (y, j)) := by
    ext i
    simp [mulVec, dotProduct, blk, Fintype.sum_prod_type]
  rw [h]
  exact (norm_sum_le _ _).trans (sum_le_sum fun y _ =>
    l2_opNorm_mulVec (blk K x y) (WithLp.toLp 2 fun j => u (y, j)))

/-- **Block Schur test**: weighted row and column sums of the block norms `‖K_{xy}‖₂` bound
`‖K‖₂`. -/
theorem block_schur_test (K : Matrix (ι × Fin n) (ι × Fin n) 𝕜) (p : ι → ℝ) (hp : ∀ x, 0 < p x)
    {a b : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b) (hrow : ∀ x, ∑ y, ‖blk K x y‖ * p y ≤ a * p x)
    (hcol : ∀ y, ∑ x, ‖blk K x y‖ * p x ≤ b * p y) : ‖K‖ ≤ √(a * b) := by
  set k : Matrix ι ι ℝ := fun x y => ‖blk K x y‖
  have hk : ‖k‖ ≤ √(a * b) :=
    schur_test_weighted k p hp ha hb (by simpa [k] using hrow) (by simpa [k] using hcol)
  rw [cstar_norm_def] at hk ⊢
  refine ContinuousLinearMap.opNorm_le_bound _ (Real.sqrt_nonneg _) fun v => ?_
  set u := v.ofLp
  set w : EuclideanSpace ℝ ι :=
    WithLp.toLp 2 fun y => ‖(WithLp.toLp 2 fun j => u (y, j) : EuclideanSpace 𝕜 (Fin n))‖
  have hw : ‖w‖ ^ 2 = ‖v‖ ^ 2 := by
    rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
    refine sum_congr rfl fun y _ => ?_
    simp [w, EuclideanSpace.norm_sq_eq, u]
  have hKv : ‖toEuclideanCLM (n := ι × Fin n) (𝕜 := 𝕜) K v‖ ^ 2 ≤
      ‖toEuclideanCLM (n := ι) (𝕜 := ℝ) k w‖ ^ 2 := by
    rw [EuclideanSpace.norm_sq_eq, EuclideanSpace.norm_sq_eq, Fintype.sum_prod_type]
    refine sum_le_sum fun x _ => ?_
    have h1 := pow_le_pow_left₀ (norm_nonneg _) (block_row_le K u x) 2
    rw [EuclideanSpace.norm_sq_eq] at h1
    have h2 : toEuclideanCLM (n := ι) (𝕜 := ℝ) k w x =
        ∑ y, ‖blk K x y‖ * ‖(WithLp.toLp 2 fun j => u (y, j) : EuclideanSpace 𝕜 (Fin n))‖ := rfl
    rw [h2, Real.norm_eq_abs, sq_abs]
    simpa [u, mulVec, dotProduct] using h1
  have hkw : ‖toEuclideanCLM (n := ι) (𝕜 := ℝ) k w‖ ≤ √(a * b) * ‖w‖ :=
    (ContinuousLinearMap.le_opNorm _ w).trans (mul_le_mul_of_nonneg_right hk (norm_nonneg _))
  refine le_of_pow_le_pow_left₀ two_ne_zero (by positivity) ?_
  calc _ ≤ _ := hKv
    _ ≤ (√(a * b) * ‖w‖) ^ 2 := pow_le_pow_left₀ (norm_nonneg _) hkw 2
    _ = (√(a * b) * ‖v‖) ^ 2 := by rw [mul_pow, mul_pow, hw]

end YmLean

#print axioms YmLean.block_row_le
#print axioms YmLean.block_schur_test
