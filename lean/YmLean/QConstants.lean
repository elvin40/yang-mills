import YmLean.SchurMarginal
import YmLean.CombesThomas
import YmLean.Resolvent
import Mathlib.Analysis.InnerProductSpace.Rayleigh

/-!
# The (Q) constants: Λ, c₋, and Lemma N (LEAN_CATALOGUE.md wave 2, item 1: H2 + H3 + N1)

Sources: `../SOURCES_G3_N2.md` §3.1–3.4, §3.6 and `../SOURCES_G3_N2_VERIFY.md`;
`../SOURCES_A7_CDC.md` §2.1–2.3 (Lemma N, two-sided form of §2.3) and `../SOURCES_A7_CDC_VERIFY.md`.

Norm: the ℓ² operator (spectral) norm `Matrix.Norms.L2Operator` (as in OishiRump, CertBridge,
CombesThomas, Resolvent). All matrices are real. Quadratic forms are written with `⬝ᵥ`:
`⟨v, Mv⟩ = v ⬝ᵥ (M *ᵥ v)`, `‖v‖² = v ⬝ᵥ v` (`nrm_sq`).

Block convention of SchurMarginal.lean: index `ι` = X (first block), `κ` = B (second block),
`G = Γ : B ← X`, `H = H₀`, `Q₀′ = fromBlocks (1 + GᵀH⁻¹G) Gᵀ G H`, `Q = Q₀′ − P`.
-/

open Matrix
open scoped Matrix.Norms.L2Operator

namespace YmLean.QConstants

open YmLean.SchurMarginal

set_option linter.unusedSectionVars false

variable {n m p ι κ : Type*} [Fintype n] [DecidableEq n] [Fintype m] [DecidableEq m]
  [Fintype p] [DecidableEq p] [Fintype ι] [DecidableEq ι] [Fintype κ] [DecidableEq κ]

/-! ### Dot-product forms and the spectral norm -/

theorem nrm_sq (x : n → ℝ) : ‖(WithLp.toLp 2 x : EuclideanSpace ℝ n)‖ ^ 2 = x ⬝ᵥ x := by
  rw [← real_inner_self_eq_norm_sq, EuclideanSpace.inner_toLp_toLp]; simp

/-- `‖Ax‖² ≤ ‖A‖²‖x‖²` (rectangular `A`). -/
theorem mulVec_sq_le (A : Matrix m n ℝ) (x : n → ℝ) :
    (A *ᵥ x) ⬝ᵥ (A *ᵥ x) ≤ ‖A‖ ^ 2 * (x ⬝ᵥ x) := by
  have h := l2_opNorm_mulVec A (WithLp.toLp 2 x)
  have h' : ‖(WithLp.toLp 2 (A *ᵥ x) : EuclideanSpace ℝ m)‖ ≤ ‖A‖ * ‖(WithLp.toLp 2 x : EuclideanSpace ℝ n)‖ := h
  rw [← nrm_sq, ← nrm_sq, ← mul_pow]
  exact pow_le_pow_left₀ (norm_nonneg _) h' 2

/-- Cauchy–Schwarz for `⬝ᵥ`. -/
theorem dot_sq_le (x y : n → ℝ) : (x ⬝ᵥ y) ^ 2 ≤ (x ⬝ᵥ x) * (y ⬝ᵥ y) := by
  have h := real_inner_mul_inner_self_le (WithLp.toLp 2 x : EuclideanSpace ℝ n) (WithLp.toLp 2 y)
  simp only [EuclideanSpace.inner_toLp_toLp, star_trivial] at h
  rw [dotProduct_comm y x] at h; nlinarith [h]

theorem dot_self_nonneg (x : n → ℝ) : 0 ≤ x ⬝ᵥ x := by rw [← nrm_sq]; positivity

/-- `|⟨x, Mx⟩| ≤ ‖M‖‖x‖²`. -/
theorem abs_dot_le (M : Matrix n n ℝ) (x : n → ℝ) : |x ⬝ᵥ (M *ᵥ x)| ≤ ‖M‖ * (x ⬝ᵥ x) := by
  have h1 := dot_sq_le x (M *ᵥ x)
  have h2 := mulVec_sq_le M x
  have hx := dot_self_nonneg x
  rw [← sq_le_sq₀ (abs_nonneg _) (by positivity), sq_abs]
  nlinarith [mul_le_mul_of_nonneg_left h2 hx, norm_nonneg M]

/-- **Norm from a two-sided form bound.** `M` symmetric, `|⟨x, Mx⟩| ≤ c‖x‖²` for all `x`
⇒ `‖M‖ ≤ c` (`‖M‖ = sup |Rayleigh quotient|`, Mathlib `norm_eq_iSup_rayleighQuotient`). -/
theorem norm_le_of_abs_dot {M : Matrix n n ℝ} (hM : M.IsHermitian) {c : ℝ} (hc : 0 ≤ c)
    (h : ∀ x, |x ⬝ᵥ (M *ᵥ x)| ≤ c * (x ⬝ᵥ x)) : ‖M‖ ≤ c := by
  have hs : (toEuclideanCLM (n := n) (𝕜 := ℝ) M : EuclideanSpace ℝ n →ₗ[ℝ] EuclideanSpace ℝ n).IsSymmetric :=
    isSymmetric_toEuclideanLin_iff.mpr hM
  rw [cstar_norm_def, ContinuousLinearMap.norm_eq_iSup_rayleighQuotient _ hs]
  refine ciSup_le fun x => ?_
  rw [ContinuousLinearMap.rayleighQuotient, ContinuousLinearMap.reApplyInnerSelf_apply,
    abs_div, abs_sq]
  have e : RCLike.re (inner ℝ (toEuclideanCLM (n := n) (𝕜 := ℝ) M x) x) = x.ofLp ⬝ᵥ (M *ᵥ x.ofLp) := by
    rw [RCLike.re_to_real, EuclideanSpace.inner_eq_star_dotProduct, ofLp_toEuclideanCLM, star_trivial]
  have hn : ‖x‖ ^ 2 = x.ofLp ⬝ᵥ x.ofLp := by simpa using nrm_sq x.ofLp
  rw [e]
  rcases (sq_nonneg ‖x‖).eq_or_lt with h0 | h0
  · rw [← h0, div_zero]; exact hc
  · rw [div_le_iff₀ h0, hn]; exact h _

/-! ### (a) The upper bound Λ (SOURCES_G3_N2.md §3.2–3.3) -/

/-- `H ≥ h⁻¹` (form) ⇒ `‖H⁻¹‖ ≤ h`. In §3.1, `H₀ ≥ ¾γ_exp` (A8) gives `h = 4/(3γ_exp)`. -/
theorem inv_norm_le {H : Matrix κ κ ℝ} {h : ℝ} (hh : 0 < h)
    (hc : ∀ z, z ⬝ᵥ z ≤ h * (z ⬝ᵥ (H *ᵥ z))) : IsUnit H ∧ ‖H⁻¹‖ ≤ h := by
  have := coercive_inv (𝕜 := ℝ) H (inv_pos.2 hh) fun v => by
    have e : rq (𝕜 := ℝ) H v = v.ofLp ⬝ᵥ (H *ᵥ v.ofLp) := by
      rw [rq, RCLike.re_to_real, EuclideanSpace.inner_eq_star_dotProduct, ofLp_toEuclideanCLM,
        star_trivial, dotProduct_comm]
    have hn : ‖v‖ ^ 2 = v.ofLp ⬝ᵥ v.ofLp := by simpa using nrm_sq v.ofLp
    rw [e, hn, inv_mul_le_iff₀ hh]; exact hc _
  simpa using this

/-- **B-block of `Q₀′⁻¹`** (§3.3 with the VERIFY V1 correction; `author_Bblock`):
`‖H₀⁻¹ + H₀⁻¹ΓΓ*H₀⁻¹‖ ≤ h + h²G_Γ²` given `‖H₀⁻¹‖ ≤ h`, `‖Γ‖ ≤ G_Γ`. -/
theorem author_Bblock_norm_le {H : Matrix κ κ ℝ} (G : Matrix κ ι ℝ) (hH : H.PosDef) {h g : ℝ}
    (hHi : ‖H⁻¹‖ ≤ h) (hg : ‖G‖ ≤ g) :
    ‖(fromBlocks (1 + Gᵀ * H⁻¹ * G) Gᵀ G H)⁻¹.toBlocks₂₂‖ ≤ h + h ^ 2 * g ^ 2 := by
  rw [author_Bblock G hH]
  have hGt : ‖Gᵀ‖ = ‖G‖ := by rw [← conjTranspose_eq_transpose_of_trivial, l2_opNorm_conjTranspose]
  have h0 : 0 ≤ h := (norm_nonneg _).trans hHi
  have g0 : 0 ≤ g := (norm_nonneg _).trans hg
  have : ‖H⁻¹ * G * Gᵀ * H⁻¹‖ ≤ h * g * g * h :=
    calc ‖H⁻¹ * G * Gᵀ * H⁻¹‖ ≤ ‖H⁻¹ * G * Gᵀ‖ * ‖H⁻¹‖ := l2_opNorm_mul _ _
      _ ≤ (‖H⁻¹ * G‖ * ‖Gᵀ‖) * ‖H⁻¹‖ := by gcongr; exact l2_opNorm_mul _ _
      _ ≤ (‖H⁻¹‖ * ‖G‖ * ‖Gᵀ‖) * ‖H⁻¹‖ := by gcongr; exact l2_opNorm_mul _ _
      _ ≤ h * g * g * h := by rw [hGt]; gcongr
  refine (norm_add_le _ _).trans ?_
  nlinarith

/-- Completing the square in B (§3.2): `⟨v, Q₀′v⟩ = ‖X‖² + ⟨z, H₀z⟩`, `z = B + H₀⁻¹ΓX`. -/
theorem q0_split {H : Matrix κ κ ℝ} (G : Matrix κ ι ℝ) (hH : H.PosDef) (x : ι → ℝ) (y : κ → ℝ) :
    Sum.elim x y ⬝ᵥ (fromBlocks (1 + Gᵀ * H⁻¹ * G) Gᵀ G H *ᵥ Sum.elim x y) =
      x ⬝ᵥ x + (y + H⁻¹ *ᵥ (G *ᵥ x)) ⬝ᵥ (H *ᵥ (y + H⁻¹ *ᵥ (G *ᵥ x))) := by
  have hHi : H * H⁻¹ = 1 := mul_nonsing_inv H ((isUnit_iff_isUnit_det H).1 hH.isUnit)
  have hT : Hᵀ = H := by simpa [conjTranspose_eq_transpose_of_trivial] using hH.1.eq
  set u := G *ᵥ x
  set w := H⁻¹ *ᵥ u
  have hHw : H *ᵥ w = u := by rw [mulVec_mulVec, hHi, one_mulVec]
  have hwH : w ⬝ᵥ (H *ᵥ y) = u ⬝ᵥ y := by
    rw [dotProduct_mulVec, ← mulVec_transpose, hT, hHw]
  have hxG : x ⬝ᵥ (Gᵀ *ᵥ y) = u ⬝ᵥ y := by
    rw [dotProduct_mulVec, vecMul_transpose]
  have hxA : x ⬝ᵥ ((Gᵀ * H⁻¹ * G) *ᵥ x) = u ⬝ᵥ w := by
    rw [← mulVec_mulVec, ← mulVec_mulVec, dotProduct_mulVec, vecMul_transpose]
  rw [fromBlocks_mulVec, sumElim_dotProduct_sumElim]
  simp only [Sum.elim_comp_inl, Sum.elim_comp_inr, add_mulVec, one_mulVec, mulVec_add,
    dotProduct_add, add_dotProduct]
  rw [hxA, hxG, hHw, hwH]
  linarith [dotProduct_comm w u, dotProduct_comm y u]

/-- **`Q₀′ ≥ Λ₀⁻¹`** (§3.3, `‖Q₀′⁻¹‖ ≤ Λ₀ = 1 + h + h²G_Γ²`), in form:
`‖X‖² + ‖B‖² ≤ Λ₀ ⟨v, Q₀′v⟩`. Inputs: `H₀ > 0`, `H₀ ≥ h⁻¹` (form), `‖Γ‖ ≤ G_Γ`. -/
theorem q0_lower {H : Matrix κ κ ℝ} (G : Matrix κ ι ℝ) (hH : H.PosDef) {h g : ℝ} (hh : 0 < h)
    (hc : ∀ z, z ⬝ᵥ z ≤ h * (z ⬝ᵥ (H *ᵥ z))) (hg : ‖G‖ ≤ g) (x : ι → ℝ) (y : κ → ℝ) :
    x ⬝ᵥ x + y ⬝ᵥ y ≤ (1 + h + h ^ 2 * g ^ 2) *
      (Sum.elim x y ⬝ᵥ (fromBlocks (1 + Gᵀ * H⁻¹ * G) Gᵀ G H *ᵥ Sum.elim x y)) := by
  rw [q0_split G hH]
  set w := H⁻¹ *ᵥ (G *ᵥ x)
  set z := y + w
  have hy : y = z - w := by simp [z]
  have hHi := (inv_norm_le hh hc).2
  have hW : w ⬝ᵥ w ≤ h ^ 2 * g ^ 2 * (x ⬝ᵥ x) := by
    have h1 : w ⬝ᵥ w ≤ ‖H⁻¹ * G‖ ^ 2 * (x ⬝ᵥ x) := by
      simpa [w, mulVec_mulVec] using mulVec_sq_le (H⁻¹ * G) x
    have h2 : ‖H⁻¹ * G‖ ≤ h * g := (l2_opNorm_mul _ _).trans (mul_le_mul hHi hg (norm_nonneg _) hh.le)
    have h3 : ‖H⁻¹ * G‖ ^ 2 ≤ (h * g) ^ 2 := pow_le_pow_left₀ (norm_nonneg _) h2 2
    nlinarith [dot_self_nonneg x]
  have hyy : y ⬝ᵥ y = z ⬝ᵥ z - 2 * (z ⬝ᵥ w) + w ⬝ᵥ w := by
    rw [hy, sub_dotProduct, dotProduct_sub, dotProduct_sub, dotProduct_comm w z]; ring
  have hcs := dot_sq_le z w
  have X0 := dot_self_nonneg x
  have Z0 := dot_self_nonneg z
  have W0 := dot_self_nonneg w
  have hzH := hc z
  have hzH0 : 0 ≤ z ⬝ᵥ (H *ᵥ z) := by nlinarith
  -- −2⟨z, w⟩ ≤ h G_Γ² ‖z‖² + h ‖X‖²  (AM–GM with (z·w)² ≤ ‖z‖² h²G_Γ² ‖X‖²)
  have hzw : -2 * (z ⬝ᵥ w) ≤ h * g ^ 2 * (z ⬝ᵥ z) + h * (x ⬝ᵥ x) := by
    have hprod : (z ⬝ᵥ w) ^ 2 ≤ (h * g ^ 2 * (z ⬝ᵥ z)) * (h * (x ⬝ᵥ x)) := by
      calc (z ⬝ᵥ w) ^ 2 ≤ (z ⬝ᵥ z) * (w ⬝ᵥ w) := hcs
        _ ≤ (z ⬝ᵥ z) * (h ^ 2 * g ^ 2 * (x ⬝ᵥ x)) := mul_le_mul_of_nonneg_left hW Z0
        _ = _ := by ring
    have ha : 0 ≤ h * g ^ 2 * (z ⬝ᵥ z) := by positivity
    have hb : 0 ≤ h * (x ⬝ᵥ x) := by positivity
    nlinarith [sq_nonneg (h * g ^ 2 * (z ⬝ᵥ z) - h * (x ⬝ᵥ x))]
  have hg2 : 0 ≤ h * g ^ 2 := by positivity
  nlinarith [mul_le_mul_of_nonneg_left hzH (by positivity : (0 : ℝ) ≤ 1 + h * g ^ 2)]

/-- **Λ bound and `Q > 0`** (SOURCES_G3_N2.md §3.2–3.3, §3.6). `Q = Q₀′ − P`, `‖P‖ ≤ p`,
(Hα) `pΛ₀ ≤ ½`, `Λ₀ = 1 + h + h²G_Γ²` ⇒ `Q ≥ (2Λ₀)⁻¹ > 0` (form), `Q` invertible,
`‖Q⁻¹‖ ≤ Λ = 2Λ₀`, and the B-block `(Q⁻¹)_BB` has norm `≤ Λ`. The bond-b block `Γ_bb` is a
further compression (`norm_submatrix_le`), so `Γ_bb ≤ Λ·I_n`. -/
theorem Lambda_bound {H : Matrix κ κ ℝ} (G : Matrix κ ι ℝ) (hH : H.PosDef) {h g pp : ℝ}
    (hh : 0 < h) (hc : ∀ z, z ⬝ᵥ z ≤ h * (z ⬝ᵥ (H *ᵥ z))) (hg : ‖G‖ ≤ g)
    (P : Matrix (ι ⊕ κ) (ι ⊕ κ) ℝ) (hP : ‖P‖ ≤ pp) (hα : pp * (1 + h + h ^ 2 * g ^ 2) ≤ 1 / 2) :
    let Q := fromBlocks (1 + Gᵀ * H⁻¹ * G) Gᵀ G H - P
    let Λ := 2 * (1 + h + h ^ 2 * g ^ 2)
    (∀ v, Λ⁻¹ * ‖v‖ ^ 2 ≤ rq Q v) ∧ IsUnit Q ∧ ‖Q⁻¹‖ ≤ Λ ∧ ‖Q⁻¹.toBlocks₂₂‖ ≤ Λ := by
  intro Q Λ
  set Q0 := fromBlocks (1 + Gᵀ * H⁻¹ * G) Gᵀ G H
  set L0 := 1 + h + h ^ 2 * g ^ 2
  have hL0 : 0 < L0 := by positivity
  have hrq : ∀ v : EuclideanSpace ℝ (ι ⊕ κ), rq Q0 v = v.ofLp ⬝ᵥ (Q0 *ᵥ v.ofLp) := fun v => by
    rw [rq, RCLike.re_to_real, EuclideanSpace.inner_eq_star_dotProduct, ofLp_toEuclideanCLM,
      star_trivial, dotProduct_comm]
  have h0 : ∀ v : EuclideanSpace ℝ (ι ⊕ κ), L0⁻¹ * ‖v‖ ^ 2 ≤ rq Q0 v := fun v => by
    have hn : ‖v‖ ^ 2 = v.ofLp ⬝ᵥ v.ofLp := by simpa using nrm_sq v.ofLp
    have hv : v.ofLp = Sum.elim (v.ofLp ∘ Sum.inl) (v.ofLp ∘ Sum.inr) := (Sum.elim_comp_inl_inr _).symm
    have := q0_lower G hH hh hc hg (v.ofLp ∘ Sum.inl) (v.ofLp ∘ Sum.inr)
    rw [← sumElim_dotProduct_sumElim, ← hv] at this
    rw [hrq, hn, inv_mul_le_iff₀ hL0]; exact this
  have hQ : ∀ v, Λ⁻¹ * ‖v‖ ^ 2 ≤ rq Q v := fun v => by
    have hd : ‖Q0 - Q‖ ≤ pp := by rw [show Q0 - Q = P from sub_sub_cancel _ _]; exact hP
    have := lower_transfer Q0 Q h0 hd v
    have hk : Λ⁻¹ ≤ L0⁻¹ - pp := by
      have : L0⁻¹ - pp = (1 - pp * L0) / L0 := by field_simp
      rw [this, show Λ = 2 * L0 from rfl, le_div_iff₀ hL0]
      field_simp; linarith
    nlinarith [sq_nonneg ‖v‖]
  have hΛ : 0 < Λ := by positivity
  obtain ⟨hu, hn⟩ := coercive_inv Q (inv_pos.2 hΛ) hQ
  rw [one_div, inv_inv] at hn
  refine ⟨hQ, hu, hn, (le_trans ?_ hn)⟩
  exact norm_submatrix_le Q⁻¹ Sum.inr Sum.inr Sum.inr_injective Sum.inr_injective

/-- §3.6 with `h = 4/(3γ_exp)` (from `H₀ ≥ ¾γ_exp`, A8):
`Λ = 2(1 + 4/(3γ_exp) + (16/(9γ_exp²))G_Γ²)` bounds `‖(Q⁻¹)_BB‖`. -/
theorem Lambda_bound_gamma {H : Matrix κ κ ℝ} (G : Matrix κ ι ℝ) (hH : H.PosDef) {γ g pp : ℝ}
    (hγ : 0 < γ) (hc : ∀ z, 3 * γ / 4 * (z ⬝ᵥ z) ≤ z ⬝ᵥ (H *ᵥ z)) (hg : ‖G‖ ≤ g)
    (P : Matrix (ι ⊕ κ) (ι ⊕ κ) ℝ) (hP : ‖P‖ ≤ pp)
    (hα : pp * (1 + 4 / (3 * γ) + 16 / (9 * γ ^ 2) * g ^ 2) ≤ 1 / 2) :
    ‖(fromBlocks (1 + Gᵀ * H⁻¹ * G) Gᵀ G H - P)⁻¹.toBlocks₂₂‖ ≤
      2 * (1 + 4 / (3 * γ) + 16 / (9 * γ ^ 2) * g ^ 2) := by
  have e : (4 / (3 * γ)) ^ 2 = 16 / (9 * γ ^ 2) := by ring
  have hc' : ∀ z, z ⬝ᵥ z ≤ 4 / (3 * γ) * (z ⬝ᵥ (H *ᵥ z)) := fun z => by
    have := hc z
    rw [div_mul_eq_mul_div, le_div_iff₀ (by positivity)]; nlinarith
  have := (Lambda_bound G hH (by positivity : (0 : ℝ) < 4 / (3 * γ)) hc' hg P hP (by rw [e]; exact hα)).2.2.2
  rwa [e] at this

/-! ### (b) The lower bound c₋ (SOURCES_G3_N2.md §3.4) -/

/-- §3.4: `H₀ = sym K₀`, `|⟨B, A_Z B⟩| ≤ γ₁ᴺ‖B‖²` (Lemma N, two-sided), `‖K₀ − A_Z‖ ≤ ε₀`
⇒ `‖H₀‖ ≤ γ₁ᴺ + ε₀`; with `ε₀ ≤ γ₁ᴺ/4`, `c₋ = (γ₁ᴺ + ε₀)⁻¹ ≥ 4/(5γ₁ᴺ)` (`c_minus_ge`).
The step `Γ_bb ≥ H₀⁻¹ ≥ ‖H₀‖⁻¹` (inversion is operator-decreasing) is not formalized here. -/
theorem c_minus_bound (K A : Matrix n n ℝ) {γ ε : ℝ} (hγ : 0 < γ)
    (hA : ∀ x, |x ⬝ᵥ (A *ᵥ x)| ≤ γ * (x ⬝ᵥ x)) (hKA : ‖K - A‖ ≤ ε) (hε : ε ≤ γ / 4) :
    ‖(1 / 2 : ℝ) • (K + Kᵀ)‖ ≤ γ + ε ∧ 4 / (5 * γ) ≤ (γ + ε)⁻¹ := by
  have hε0 : 0 ≤ ε := (norm_nonneg _).trans hKA
  refine ⟨norm_le_of_abs_dot ?_ (by linarith) fun x => ?_, c_minus_ge hγ hε (by linarith)⟩
  · simp only [IsHermitian, conjTranspose_eq_transpose_of_trivial, transpose_smul, transpose_add,
      transpose_transpose, add_comm]
  · have e : x ⬝ᵥ (((1 / 2 : ℝ) • (K + Kᵀ)) *ᵥ x) = x ⬝ᵥ (A *ᵥ x) + x ⬝ᵥ ((K - A) *ᵥ x) := by
      rw [smul_mulVec, add_mulVec, sub_mulVec, dotProduct_smul, dotProduct_add, dotProduct_sub,
        dotProduct_mulVec x Kᵀ, vecMul_transpose, dotProduct_comm (K *ᵥ x), smul_eq_mul]; ring
    rw [e]
    have h1 := hA x
    have h2 := (abs_dot_le (K - A) x).trans (mul_le_mul_of_nonneg_right hKA (dot_self_nonneg x))
    calc _ ≤ |x ⬝ᵥ (A *ᵥ x)| + |x ⬝ᵥ ((K - A) *ᵥ x)| := abs_add_le _ _
      _ ≤ _ := by linarith

/-! ### (c) Lemma N, abstract two-sided form (SOURCES_A7_CDC.md §2.2–2.3) -/

/-- **Lemma N** (A7 §2.2 steps (c)–(e), two-sided form of §2.3). With `B = C B̃`, the precision
`C*Δ_kC` has form `⟨B, (P − a − Δ_J + 𝒢*𝒢)B⟩` (I1), where `P = (QG₁Q*)⁻¹` with
`0 ≤ P`, `‖P‖ ≤ K_{ext,1}` (C₁); `‖Δ_J‖ ≤ c_J` (A3-R4); `‖𝒢‖² ≤ 2c_𝒢` (Lemma G(c)); `a ≥ 0`. Then
`‖C*(P − a − Δ_J + 𝒢*𝒢)C‖ ≤ ‖C‖²·max{K_{ext,1} − a + c_J + 2c_𝒢, a + c_J}`. -/
theorem lemmaN (C : Matrix m n ℝ) (P Δ : Matrix m m ℝ) (G : Matrix p m ℝ) {K cJ cG a : ℝ}
    (hP : P.PosSemidef) (hPK : ‖P‖ ≤ K) (hΔ : Δ.IsHermitian) (hΔc : ‖Δ‖ ≤ cJ)
    (hG : ‖G‖ ^ 2 ≤ 2 * cG) (ha : 0 ≤ a) :
    ‖Cᵀ * (P - a • 1 - Δ + Gᵀ * G) * C‖ ≤ ‖C‖ ^ 2 * max (K - a + cJ + 2 * cG) (a + cJ) := by
  set X := P - a • 1 - Δ + Gᵀ * G
  have hX : X.IsHermitian :=
    ((hP.1.sub (by rw [IsHermitian, conjTranspose_smul, conjTranspose_one, star_trivial] :
      (a • (1 : Matrix m m ℝ)).IsHermitian)).sub hΔ).add
      (by simpa [conjTranspose_eq_transpose_of_trivial] using isHermitian_conjTranspose_mul_self G)
  have hM : (Cᵀ * X * C).IsHermitian := by
    simpa [conjTranspose_eq_transpose_of_trivial] using isHermitian_conjTranspose_mul_mul C hX
  have hcJ : 0 ≤ cJ := (norm_nonneg _).trans hΔc
  set mx := max (K - a + cJ + 2 * cG) (a + cJ)
  have hmx : a + cJ ≤ mx := le_max_right _ _
  refine norm_le_of_abs_dot hM (by positivity) fun x => ?_
  have e1 : x ⬝ᵥ ((Cᵀ * X * C) *ᵥ x) = (C *ᵥ x) ⬝ᵥ (X *ᵥ (C *ᵥ x)) := by
    rw [← mulVec_mulVec, ← mulVec_mulVec, dotProduct_mulVec, vecMul_transpose]
  have e2 : ∀ b, b ⬝ᵥ (X *ᵥ b) =
      b ⬝ᵥ (P *ᵥ b) - a * (b ⬝ᵥ b) - b ⬝ᵥ (Δ *ᵥ b) + (G *ᵥ b) ⬝ᵥ (G *ᵥ b) := fun b => by
    simp only [X, add_mulVec, sub_mulVec, smul_mulVec, one_mulVec, dotProduct_add,
      dotProduct_sub, dotProduct_smul, smul_eq_mul]
    rw [← mulVec_mulVec, dotProduct_mulVec b Gᵀ, vecMul_transpose]
  set b := C *ᵥ x
  rw [e1, e2]
  have hB := dot_self_nonneg b
  have hBC := mulVec_sq_le C x
  have hP0 : 0 ≤ b ⬝ᵥ (P *ᵥ b) := by simpa using hP.dotProduct_mulVec_nonneg b
  have hPu := (le_abs_self _).trans ((abs_dot_le P b).trans (mul_le_mul_of_nonneg_right hPK hB))
  have hΔu := (abs_le.1 ((abs_dot_le Δ b).trans (mul_le_mul_of_nonneg_right hΔc hB)))
  have hG0 := dot_self_nonneg (G *ᵥ b)
  have hGu := (mulVec_sq_le G b).trans (mul_le_mul_of_nonneg_right hG hB)
  have hU : K - a + cJ + 2 * cG ≤ mx := le_max_left _ _
  have hmx0 : 0 ≤ mx := by linarith
  have hfin : mx * (b ⬝ᵥ b) ≤ ‖C‖ ^ 2 * mx * (x ⬝ᵥ x) := by
    nlinarith [mul_le_mul_of_nonneg_left hBC hmx0]
  rw [abs_le]; constructor <;> nlinarith [mul_le_mul_of_nonneg_right hU hB,
    mul_le_mul_of_nonneg_right hmx hB]

end YmLean.QConstants

#print axioms YmLean.QConstants.Lambda_bound
#print axioms YmLean.QConstants.Lambda_bound_gamma
#print axioms YmLean.QConstants.author_Bblock_norm_le
#print axioms YmLean.QConstants.c_minus_bound
#print axioms YmLean.QConstants.lemmaN
