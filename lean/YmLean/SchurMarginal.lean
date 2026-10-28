import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.SchurComplement
import Mathlib.Analysis.Matrix.Spectrum
import Mathlib.Algebra.Order.Star.Real

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
  let iA := invertibleOfIsUnitDet A hA
  let iS : Invertible (D - C * ⅟A * B) := by
    rw [invOf_eq_nonsing_inv]; exact invertibleOfIsUnitDet _ hS
  let := fromBlocks₁₁Invertible A B C D
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
  let := invertibleOfIsUnitDet A hA
  rw [det_fromBlocks₁₁, invOf_eq_nonsing_inv]

omit [Fintype ι] [Fintype κ] [DecidableEq ι] [DecidableEq κ] in
/-- The `ι`-block (`Q_ww`, or the X-block) of a positive-definite `Q` is positive definite. -/
theorem posDef_toBlocks₁₁ {A : Matrix ι ι ℝ} {B : Matrix ι κ ℝ} {C : Matrix κ ι ℝ}
    {D : Matrix κ κ ℝ} (hQ : (fromBlocks A B C D).PosDef) : A.PosDef := by
  have := hQ.submatrix (e := (Sum.inl : ι → ι ⊕ κ)) Sum.inl_injective
  exact this

omit [DecidableEq κ] in
/-- **(4) Completing the square / one-bond-fixed form** (SOURCES_G3_N2.md §2.4):
`⟨v, Qv⟩ = ⟨w + A⁻¹Bx, A(w + A⁻¹Bx)⟩ + ⟨x, S x⟩`, `v = (w, x)`, `S = D − BᵀA⁻¹B`. -/
theorem quad_split {A : Matrix ι ι ℝ} (B : Matrix ι κ ℝ) (D : Matrix κ κ ℝ) (hA : A.PosDef)
    (w : ι → ℝ) (x : κ → ℝ) :
    Sum.elim w x ⬝ᵥ (fromBlocks A B Bᵀ D *ᵥ Sum.elim w x) =
      (w + (A⁻¹ * B) *ᵥ x) ⬝ᵥ (A *ᵥ (w + (A⁻¹ * B) *ᵥ x)) +
        x ⬝ᵥ ((D - Bᵀ * A⁻¹ * B) *ᵥ x) := by
  let := invertibleOfIsUnitDet A ((isUnit_iff_isUnit_det A).1 hA.isUnit)
  have h := schur_complement_eq₁₁ B D w x hA.1
  simp only [star_trivial, conjTranspose_eq_transpose_of_trivial] at h
  simpa only [dotProduct_mulVec] using h

omit [DecidableEq κ] in
/-- **(4) Fixing `x` = minimizing over `w`** (SOURCES_G3_N2.md §2.4): for fixed `x = B(b)`,
`⟨x, S_b x⟩ ≤ ⟨v, Qv⟩` for every `w`, with equality at `w = −A⁻¹Bx`. -/
theorem schur_le_quad {A : Matrix ι ι ℝ} (B : Matrix ι κ ℝ) (D : Matrix κ κ ℝ) (hA : A.PosDef)
    (w : ι → ℝ) (x : κ → ℝ) :
    x ⬝ᵥ ((D - Bᵀ * A⁻¹ * B) *ᵥ x) ≤ Sum.elim w x ⬝ᵥ (fromBlocks A B Bᵀ D *ᵥ Sum.elim w x) := by
  rw [quad_split B D hA]
  have := hA.posSemidef.dotProduct_mulVec_nonneg (w + (A⁻¹ * B) *ᵥ x)
  simp only [star_trivial] at this
  linarith

omit [DecidableEq κ] in
/-- Equality case of `schur_le_quad`: `w = −A⁻¹Bx` attains `⟨x, S_b x⟩`. -/
theorem quad_at_min {A : Matrix ι ι ℝ} (B : Matrix ι κ ℝ) (D : Matrix κ κ ℝ) (hA : A.PosDef)
    (x : κ → ℝ) :
    Sum.elim (-((A⁻¹ * B) *ᵥ x)) x ⬝ᵥ (fromBlocks A B Bᵀ D *ᵥ Sum.elim (-((A⁻¹ * B) *ᵥ x)) x) =
      x ⬝ᵥ ((D - Bᵀ * A⁻¹ * B) *ᵥ x) := by
  rw [quad_split B D hA, neg_add_cancel, zero_dotProduct, zero_add]

omit [DecidableEq κ] in
/-- **(3)+(4) Lower bound passes to the Schur complement** (SOURCES_G3_N2.md §2.4–2.5):
if `c ≥ 0` and `c‖v‖² ≤ ⟨v, Qv⟩` for all `v`, then `c‖x‖² ≤ ⟨x, S_b x⟩` for all `x`.
So `λ_min(S_b) ≥ λ_min(Q)`. -/
theorem schur_lower {A : Matrix ι ι ℝ} (B : Matrix ι κ ℝ) (D : Matrix κ κ ℝ) (hA : A.PosDef)
    {c : ℝ} (hc : 0 ≤ c) (hQ : ∀ v, c * (v ⬝ᵥ v) ≤ v ⬝ᵥ (fromBlocks A B Bᵀ D *ᵥ v))
    (x : κ → ℝ) : c * (x ⬝ᵥ x) ≤ x ⬝ᵥ ((D - Bᵀ * A⁻¹ * B) *ᵥ x) := by
  have h := hQ (Sum.elim (-((A⁻¹ * B) *ᵥ x)) x)
  rw [quad_at_min B D hA, sumElim_dotProduct_sumElim] at h
  have hw := dotProduct_self_star_nonneg (-((A⁻¹ * B) *ᵥ x))
  simp only [star_trivial] at hw
  nlinarith

omit [DecidableEq ι] [DecidableEq κ] in
/-- Compression: the same lower bound holds for the `κ`-block alone (`v ⊥` the `ι`
coordinates), `c‖x‖² ≤ ⟨x, D x⟩`; in §2.4 this is the bound on `Q_ww` with the roles swapped. -/
theorem compression_lower {A : Matrix ι ι ℝ} {B : Matrix ι κ ℝ} {C : Matrix κ ι ℝ}
    {D : Matrix κ κ ℝ} {c : ℝ} (hQ : ∀ v, c * (v ⬝ᵥ v) ≤ v ⬝ᵥ (fromBlocks A B C D *ᵥ v))
    (x : κ → ℝ) : c * (x ⬝ᵥ x) ≤ x ⬝ᵥ (D *ᵥ x) := by
  have h := hQ (Sum.elim 0 x)
  simpa [fromBlocks_mulVec, sumElim_dotProduct_sumElim] using h

omit [DecidableEq κ] in
/-- **(3) Schur complement of a positive-definite matrix is positive definite**
(SOURCES_G3_N2.md §2.4, §3.4: `S_b > 0`, `Σ_B > 0`). -/
theorem schur_posDef {A : Matrix ι ι ℝ} {B : Matrix ι κ ℝ} {D : Matrix κ κ ℝ}
    (hQ : (fromBlocks A B Bᵀ D).PosDef) : (D - Bᵀ * A⁻¹ * B).PosDef := by
  have hA := posDef_toBlocks₁₁ hQ
  have hH : (D - Bᵀ * A⁻¹ * B).IsHermitian := by
    have hD : D.IsHermitian := by
      have := hQ.1.submatrix (Sum.inr : κ → ι ⊕ κ); exact this
    refine hD.sub ?_
    simpa [conjTranspose_eq_transpose_of_trivial] using
      isHermitian_conjTranspose_mul_mul B hA.1.inv
  refine PosDef.of_dotProduct_mulVec_pos hH fun x hx => ?_
  simp only [star_trivial]
  rw [← quad_at_min B D hA]
  have := hQ.dotProduct_mulVec_pos (x := Sum.elim (-((A⁻¹ * B) *ᵥ x)) x) ?_
  · simpa only [star_trivial] using this
  · intro h0; apply hx; funext k; simpa using congrFun h0 (Sum.inr k)

/-- **(3) Eigenvalue form**: every eigenvalue of the Schur complement is `≥ c`, where `c ≥ 0`
is any lower bound of the form `Q` (so `λ_min(S_b) ≥ λ_min(Q)`). -/
theorem schur_eigenvalues_ge {A : Matrix ι ι ℝ} (B : Matrix ι κ ℝ) (D : Matrix κ κ ℝ)
    (hA : A.PosDef) (hS : (D - Bᵀ * A⁻¹ * B).IsHermitian) {c : ℝ} (hc : 0 ≤ c)
    (hQ : ∀ v, c * (v ⬝ᵥ v) ≤ v ⬝ᵥ (fromBlocks A B Bᵀ D *ᵥ v)) (j : κ) :
    c ≤ hS.eigenvalues j := by
  rw [hS.eigenvalues_eq]
  set e := hS.eigenvectorBasis j
  have h1 : (e : κ → ℝ) ⬝ᵥ e = 1 := by
    have := hS.eigenvectorBasis.orthonormal.1 j
    rw [EuclideanSpace.norm_eq] at this
    have h2 : ∑ i, ‖e i‖ ^ 2 = 1 :=
      (Real.sqrt_eq_one (x := ∑ i, ‖e i‖ ^ 2)).1 this
    simpa [dotProduct, sq] using h2
  have := schur_lower B D hA hc hQ e
  simpa [h1] using this

/-- **(1) for `Q > 0`**: the block-inverse formula with `S = D − BᵀA⁻¹B`; the hypotheses of
`block_inv` follow from `Q > 0`. -/
theorem block_inv_posDef {A : Matrix ι ι ℝ} {B : Matrix ι κ ℝ} {D : Matrix κ κ ℝ}
    (hQ : (fromBlocks A B Bᵀ D).PosDef) :
    (fromBlocks A B Bᵀ D)⁻¹ =
      fromBlocks (A⁻¹ + A⁻¹ * B * (D - Bᵀ * A⁻¹ * B)⁻¹ * Bᵀ * A⁻¹)
        (-(A⁻¹ * B * (D - Bᵀ * A⁻¹ * B)⁻¹)) (-((D - Bᵀ * A⁻¹ * B)⁻¹ * Bᵀ * A⁻¹))
        (D - Bᵀ * A⁻¹ * B)⁻¹ :=
  block_inv A B Bᵀ D ((isUnit_iff_isUnit_det A).1 (posDef_toBlocks₁₁ hQ).isUnit)
    ((isUnit_iff_isUnit_det _).1 (schur_posDef hQ).isUnit)

/-- **(2) for `Q > 0`**: `Γ_bb = (Q⁻¹)_xx = S_b⁻¹` (SOURCES_G3_N2.md §2.4). -/
theorem gamma_bb_eq {A : Matrix ι ι ℝ} {B : Matrix ι κ ℝ} {D : Matrix κ κ ℝ}
    (hQ : (fromBlocks A B Bᵀ D).PosDef) :
    (fromBlocks A B Bᵀ D)⁻¹.toBlocks₂₂ = (D - Bᵀ * A⁻¹ * B)⁻¹ := by
  rw [block_inv_posDef hQ, toBlocks_fromBlocks₂₂]

/-- `1 + GᵀH⁻¹G > 0` for `H > 0` (the X-block of `Q₀′`, SOURCES_G3_N2.md §3.2). -/
theorem one_add_posDef {H : Matrix κ κ ℝ} (G : Matrix κ ι ℝ) (hH : H.PosDef) :
    (1 + Gᵀ * H⁻¹ * G).PosDef := by
  refine PosDef.one.add_posSemidef ?_
  simpa [conjTranspose_eq_transpose_of_trivial] using
    hH.inv.posSemidef.conjTranspose_mul_mul_same G

/-- `S · (H⁻¹ + H⁻¹GGᵀH⁻¹) = 1` for `S = H − G(1 + GᵀH⁻¹G)⁻¹Gᵀ` (VERIFY V1, by hand there). -/
theorem schur_mul_author {H : Matrix κ κ ℝ} (G : Matrix κ ι ℝ) (hH : H.PosDef) :
    (H - G * (1 + Gᵀ * H⁻¹ * G)⁻¹ * Gᵀ) * (H⁻¹ + H⁻¹ * G * Gᵀ * H⁻¹) = 1 := by
  have hA := one_add_posDef G hH
  have hHi : H * H⁻¹ = 1 := mul_nonsing_inv H ((isUnit_iff_isUnit_det H).1 hH.isUnit)
  have hAi : (1 + Gᵀ * H⁻¹ * G)⁻¹ * (1 + Gᵀ * H⁻¹ * G) = 1 :=
    nonsing_inv_mul _ ((isUnit_iff_isUnit_det _).1 hA.isUnit)
  set Ai := (1 + Gᵀ * H⁻¹ * G)⁻¹
  set Hi := H⁻¹
  have key : Ai + Ai * (Gᵀ * Hi * G) = 1 := by rw [← hAi, Matrix.mul_add, Matrix.mul_one]
  calc (H - G * Ai * Gᵀ) * (Hi + Hi * G * Gᵀ * Hi)
      = H * Hi + H * Hi * (G * Gᵀ * Hi) - G * (Ai + Ai * (Gᵀ * Hi * G)) * (Gᵀ * Hi) := by
        simp only [Matrix.sub_mul, Matrix.mul_add, Matrix.add_mul, Matrix.mul_assoc]; abel
    _ = 1 := by
        rw [key, hHi]; simp only [Matrix.mul_one, Matrix.one_mul, Matrix.mul_assoc]; abel

/-- **(2) Author's form**, Woodbury step: `(H − G(1 + GᵀH⁻¹G)⁻¹Gᵀ)⁻¹ = H⁻¹ + H⁻¹GGᵀH⁻¹`. -/
theorem schur_inv_author {H : Matrix κ κ ℝ} (G : Matrix κ ι ℝ) (hH : H.PosDef) :
    (H - G * (1 + Gᵀ * H⁻¹ * G)⁻¹ * Gᵀ)⁻¹ = H⁻¹ + H⁻¹ * G * Gᵀ * H⁻¹ :=
  inv_eq_right_inv (schur_mul_author G hH)

/-- **(2) Author's form** (SOURCES_G3_N2.md §3.3, verifier's correction in VERIFY V1).
Correspondence: `ι` = X, `κ` = B, `G = Γ : B ← X`, `H = H₀`; `Q₀′ = fromBlocks (1 + GᵀH⁻¹G) Gᵀ G H`
(`Γ* = Gᵀ` over ℝ). Its B-block of `Q₀′⁻¹` is the inverse of the Schur complement
`H₀ − Γ(1 + Γ*H₀⁻¹Γ)⁻¹Γ*`, which is `H₀⁻¹ + H₀⁻¹ΓΓ*H₀⁻¹`. -/
theorem author_Bblock {H : Matrix κ κ ℝ} (G : Matrix κ ι ℝ) (hH : H.PosDef) :
    (fromBlocks (1 + Gᵀ * H⁻¹ * G) Gᵀ G H)⁻¹.toBlocks₂₂ = H⁻¹ + H⁻¹ * G * Gᵀ * H⁻¹ := by
  rw [toBlocks₂₂_inv _ _ _ _ ((isUnit_iff_isUnit_det _).1 (one_add_posDef G hH).isUnit)
    (isUnit_det_of_right_inverse (schur_mul_author G hH)), schur_inv_author G hH]

/-- **(5)** `c₋ = (γ₁ᴺ + ε₀)⁻¹ ≥ 4/(5γ₁ᴺ)` given `0 < γ₁ᴺ`, `ε₀ ≤ γ₁ᴺ/4`
(SOURCES_G3_N2.md §3.4). `ε₀ ≥ 0` is not needed. -/
theorem c_minus_ge {γ ε : ℝ} (hγ : 0 < γ) (hε : ε ≤ γ / 4) (hpos : 0 < γ + ε) :
    4 / (5 * γ) ≤ (γ + ε)⁻¹ := by
  rw [div_le_iff₀ (by positivity), inv_mul_eq_div, le_div_iff₀ hpos]
  linarith

end YmLean.SchurMarginal
