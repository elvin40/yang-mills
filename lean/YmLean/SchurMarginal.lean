import Mathlib

/-!
# Schur complement, block inverse, and the one-bond marginal (SOURCES_G3_N2.md §2.4, §3.3–3.4)

Sources: `../SOURCES_G3_N2.md` §2.4 (one-bond-fixed integral = marginal, `S_b`, `Γ_bb = S_b⁻¹`,
`det Q = det Q_ww · det S_b`), §3.2–3.3 (`Q₀′ = [[I + Γ*H₀⁻¹Γ, Γ*], [Γ, H₀]]`, B-block of
`Q₀′⁻¹` = `H₀⁻¹ + H₀⁻¹ΓΓ*H₀⁻¹`), §3.4 (`c₋ = (γ₁ᴺ + ε₀)⁻¹ ≥ 4/(5γ₁ᴺ)`);
`../SOURCES_G3_N2_VERIFY.md` V1–V2 (identities confirmed, verifier's B-block correction).

Convention. Real block matrix `Q = fromBlocks A B Bᵀ D` on `ι ⊕ κ`. The FIRST block (index `ι`)
is the block that is integrated out: `w = (X, B_{≠b})` in §2.4, `X` in §3.4. The SECOND block
(index `κ`) is the one that is kept: `x = B(b)` in §2.4, `B` in §3.4. So
`A = Q_ww`, `B = Q_wx`, `Bᵀ = Q_xw`, `D = Q_xx`, and the Schur complement
`D - Bᵀ A⁻¹ B` is `S_b = Q_xx − Q_xw Q_ww⁻¹ Q_wx` (§2.4) or `Σ_B` (§3.4).
"Lower bound `c` of a form `M`" = `∀ v, c‖v‖² ≤ ⟨v, Mv⟩`, i.e. `c ≤ λ_min(M)`.
-/

open Matrix

namespace YmLean.SchurMarginal

variable {ι κ : Type*} [Fintype ι] [Fintype κ] [DecidableEq ι] [DecidableEq κ]

/-- **(1) Block-inverse formula.** `A` and the Schur complement `S = D - C A⁻¹ B` invertible ⇒
`Q⁻¹ = [[A⁻¹ + A⁻¹BS⁻¹CA⁻¹, −A⁻¹BS⁻¹], [−S⁻¹CA⁻¹, S⁻¹]]` (SOURCES_G3_N2.md §2.4, §3.3). -/
theorem block_inv (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ) (C : Matrix κ ι ℝ) (D : Matrix κ κ ℝ)
    (hA : IsUnit A.det) (hS : IsUnit (D - C * A⁻¹ * B).det) :
    (fromBlocks A B C D)⁻¹ =
      fromBlocks (A⁻¹ + A⁻¹ * B * (D - C * A⁻¹ * B)⁻¹ * C * A⁻¹)
        (-(A⁻¹ * B * (D - C * A⁻¹ * B)⁻¹)) (-((D - C * A⁻¹ * B)⁻¹ * C * A⁻¹))
        (D - C * A⁻¹ * B)⁻¹ := by
  letI iA := invertibleOfIsUnitDet A hA
  letI iS : Invertible (D - C * ⅟A * B) := by
    rw [invOf_eq_nonsing_inv]; exact invertibleOfIsUnitDet _ hS
  letI := fromBlocks₁₁Invertible A B C D
  rw [← invOf_eq_nonsing_inv, invOf_fromBlocks₁₁_eq]
  simp only [invOf_eq_nonsing_inv]

/-- **(2) D-block of the inverse = inverse of the Schur complement** (`(Q⁻¹)_xx = S_b⁻¹ = Γ_bb`,
SOURCES_G3_N2.md §2.4; `(Q⁻¹)_BB = Σ_B⁻¹`, §3.4). -/
theorem toBlocks₂₂_inv (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ) (C : Matrix κ ι ℝ)
    (D : Matrix κ κ ℝ) (hA : IsUnit A.det) (hS : IsUnit (D - C * A⁻¹ * B).det) :
    (fromBlocks A B C D)⁻¹.toBlocks₂₂ = (D - C * A⁻¹ * B)⁻¹ := by
  rw [block_inv A B C D hA hS, toBlocks_fromBlocks₂₂]

/-- `det Q = det Q_ww · det S_b` (SOURCES_G3_N2.md §2.4). -/
theorem det_block (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ) (C : Matrix κ ι ℝ) (D : Matrix κ κ ℝ)
    (hA : IsUnit A.det) : (fromBlocks A B C D).det = A.det * (D - C * A⁻¹ * B).det := by
  letI := invertibleOfIsUnitDet A hA
  rw [det_fromBlocks₁₁, invOf_eq_nonsing_inv]

/-- The `ι`-block (`Q_ww`, or the X-block) of a positive-definite `Q` is positive definite. -/
theorem posDef_toBlocks₁₁ {A : Matrix ι ι ℝ} {B : Matrix ι κ ℝ} {C : Matrix κ ι ℝ}
    {D : Matrix κ κ ℝ} (hQ : (fromBlocks A B C D).PosDef) : A.PosDef := by
  have := hQ.submatrix (e := (Sum.inl : ι → ι ⊕ κ)) Sum.inl_injective
  exact this

/-- **(4) Completing the square / one-bond-fixed form** (SOURCES_G3_N2.md §2.4):
`⟨v, Qv⟩ = ⟨w + A⁻¹Bx, A(w + A⁻¹Bx)⟩ + ⟨x, S x⟩`, `v = (w, x)`, `S = D − BᵀA⁻¹B`. -/
theorem quad_split {A : Matrix ι ι ℝ} (B : Matrix ι κ ℝ) (D : Matrix κ κ ℝ) (hA : A.PosDef)
    (w : ι → ℝ) (x : κ → ℝ) :
    Sum.elim w x ⬝ᵥ (fromBlocks A B Bᵀ D *ᵥ Sum.elim w x) =
      (w + (A⁻¹ * B) *ᵥ x) ⬝ᵥ (A *ᵥ (w + (A⁻¹ * B) *ᵥ x)) +
        x ⬝ᵥ ((D - Bᵀ * A⁻¹ * B) *ᵥ x) := by
  letI := invertibleOfIsUnitDet A hA.isUnit.map_det -- placeholder
  have h := schur_complement_eq₁₁ B D w x hA.1
  simp only [star_trivial, conjTranspose_eq_transpose_of_trivial] at h
  simpa only [dotProduct_mulVec] using h

end YmLean.SchurMarginal
