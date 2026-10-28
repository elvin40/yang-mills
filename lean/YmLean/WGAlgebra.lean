import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
# WG algebra (LEAN_CATALOGUE.md wave 2, item 4: P16 + P18 + P21)

Sources: `../WG_FULL.md` §1.2 (Lemma N), §2.2–2.6 (polarization of `V = −Δ′_π`, 6 and 24
patterns, `N_V = 9`), §4.3 and §4.7 (step factor `ρ_*`, WG-1 exponent `10 = N_V + 1`),
§5.1 (`G₁⁻¹ = G⁻¹ − Δ_π^{(2)}`, four-term expansion (3.135)), §5.6–5.7 and 5.10(b)
(`k_2 = 12`, `M₁^{−12}`); `../WG_FULL_VERIFY.md` items (4), (6), (7) and the regrade
(exponents redone: `10 = N_V + 1`, `12 = k_2`).

Norm in (a): the ℓ² operator norm `Matrix.Norms.L2Operator`. Part (b) works over `ℝ` with the
quadratic forms `x ⬝ᵥ (M *ᵥ x)` and Mathlib's `Matrix.PosDef` / `Matrix.PosSemidef`; the Loewner
order `A ≤ B` is written `(B − A).PosSemidef`. Part (c) uses natural powers only (no `rpow`):
`ε_V^{1/10}` is a variable `r ≥ 0` with `r ^ 10 = ε_V`.
-/

open Matrix Finset
open scoped Matrix.Norms.L2Operator

namespace YmLean.WGAlgebra

set_option linter.unusedSectionVars false

section LemmaN

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n]

/-- WG_FULL §1.2, the partial-sum identity: with `x = −G₀V` and `S_N = Σ_{k<N} x^k G₀`,
`(G₀⁻¹ + V) S_N = 1 − G₀⁻¹ x^N G₀`. (Source form: `S_N = Σ G₀(Δ′_πG₀)^k`, `V = −Δ′_π`;
`x^k G₀ = G₀(−VG₀)^k`.) -/
theorem lemmaN_partial (G₀ V : Matrix n n 𝕜) (hG₀ : IsUnit G₀) (N : ℕ) :
    (G₀⁻¹ + V) * ∑ k ∈ range N, (-(G₀ * V)) ^ k * G₀ = 1 - G₀⁻¹ * (-(G₀ * V)) ^ N * G₀ := by
  have hd : IsUnit G₀.det := (isUnit_iff_isUnit_det _).mp hG₀
  have hA : G₀⁻¹ + V = G₀⁻¹ * (1 - -(G₀ * V)) := by
    rw [sub_neg_eq_add, mul_add, mul_one, ← mul_assoc, nonsing_inv_mul _ hd, one_mul]
  rw [hA, ← Finset.sum_mul, mul_assoc, ← mul_assoc (1 - _), mul_neg_geom_sum, ← mul_assoc,
    mul_sub, mul_one, sub_mul, nonsing_inv_mul _ hd]

/-- **Lemma N** (WG_FULL §1.2, finite volume): `‖G₀V‖ < 1` ⇒ `G₀⁻¹ + V` is invertible,
`(G₀⁻¹ + V)⁻¹ = Σ_k (−G₀V)^k G₀`, and `‖(G₀⁻¹ + V)⁻¹‖ ≤ ‖G₀‖ / (1 − ‖G₀V‖)`. No separate
existence assumption on `G`: the series gives it. -/
theorem lemmaN (G₀ V : Matrix n n 𝕜) (hG₀ : IsUnit G₀) (h : ‖G₀ * V‖ < 1) :
    IsUnit (G₀⁻¹ + V) ∧ (G₀⁻¹ + V)⁻¹ = ∑' k : ℕ, (-(G₀ * V)) ^ k * G₀ ∧
      ‖(G₀⁻¹ + V)⁻¹‖ ≤ ‖G₀‖ / (1 - ‖G₀ * V‖) := by
  have : CompleteSpace (Matrix n n 𝕜) := FiniteDimensional.complete 𝕜 _
  have hd : IsUnit G₀.det := (isUnit_iff_isUnit_det _).mp hG₀
  set x := -(G₀ * V) with hx
  have hxn : ‖x‖ < 1 := by rwa [hx, norm_neg]
  set S := ∑' k : ℕ, x ^ k
  have hA : G₀⁻¹ + V = G₀⁻¹ * (1 - x) := by
    rw [hx, sub_neg_eq_add, mul_add, mul_one, ← mul_assoc, nonsing_inv_mul _ hd, one_mul]
  have hright : (G₀⁻¹ + V) * (S * G₀) = 1 := by
    rw [hA, mul_assoc, ← mul_assoc (1 - x), mul_neg_geom_series x hxn, one_mul,
      nonsing_inv_mul _ hd]
  have hinv : (G₀⁻¹ + V)⁻¹ = S * G₀ := inv_eq_right_inv hright
  refine ⟨⟨⟨_, _, hright, mul_eq_one_comm.mp hright⟩, rfl⟩,
    by rw [hinv, (summable_geometric_of_norm_lt_one hxn).tsum_mul_right], ?_⟩
  have hS : S = 1 + x * S := by
    have := mul_neg_geom_series x hxn
    rw [sub_mul, one_mul] at this
    exact (eq_add_of_sub_eq this)
  have hfix : S * G₀ = G₀ + x * (S * G₀) := by
    conv_lhs => rw [hS]
    rw [add_mul, one_mul, mul_assoc]
  have hb : ‖S * G₀‖ ≤ ‖G₀‖ + ‖x‖ * ‖S * G₀‖ := by
    calc ‖S * G₀‖ = ‖G₀ + x * (S * G₀)‖ := by rw [← hfix]
      _ ≤ _ := (norm_add_le _ _).trans (add_le_add le_rfl (norm_mul_le _ _))
  have hxV : ‖x‖ = ‖G₀ * V‖ := by rw [hx, norm_neg]
  rw [hinv, ← hxV, le_div_iff₀ (by linarith)]
  nlinarith [norm_nonneg (S * G₀)]

/-- Lemma N for `G₁` (WG_FULL §5.1): `G₁⁻¹ = G⁻¹ − Δ_π^{(2)}`, `‖GΔ_π^{(2)}‖ < 1` ⇒
`G₁ = Σ_k (GΔ_π^{(2)})^k G` and `‖G₁‖ ≤ ‖G‖ / (1 − ‖GΔ_π^{(2)}‖)`. -/
theorem lemmaN_G1 (G Δ : Matrix n n 𝕜) (hG : IsUnit G) (h : ‖G * Δ‖ < 1) :
    IsUnit (G⁻¹ - Δ) ∧ (G⁻¹ - Δ)⁻¹ = ∑' k : ℕ, (G * Δ) ^ k * G ∧
      ‖(G⁻¹ - Δ)⁻¹‖ ≤ ‖G‖ / (1 - ‖G * Δ‖) := by
  have := lemmaN G (-Δ) hG (by rwa [mul_neg, norm_neg])
  simpa only [← sub_eq_add_neg, mul_neg, neg_neg, norm_neg] using this

/-- Resolvent identity (WG_FULL §5.1): `G₁ = G + G Δ_π^{(2)} G₁` for `G₁ = (G⁻¹ − Δ_π^{(2)})⁻¹`. -/
theorem resolvent_G1 (G Δ : Matrix n n 𝕜) (hG : IsUnit G) (hK : IsUnit (G⁻¹ - Δ)) :
    (G⁻¹ - Δ)⁻¹ = G + G * Δ * (G⁻¹ - Δ)⁻¹ := by
  have hd : IsUnit G.det := (isUnit_iff_isUnit_det _).mp hG
  have hKd : IsUnit (G⁻¹ - Δ).det := (isUnit_iff_isUnit_det _).mp hK
  calc (G⁻¹ - Δ)⁻¹ = G * (G⁻¹ - Δ) * (G⁻¹ - Δ)⁻¹ + G * Δ * (G⁻¹ - Δ)⁻¹ := by
        rw [mul_sub, mul_nonsing_inv _ hd, sub_mul, one_mul]; abel
    _ = G + G * Δ * (G⁻¹ - Δ)⁻¹ := by rw [mul_assoc G, mul_nonsing_inv _ hKd, mul_one]

/-- The four-term expansion (WG_FULL §5.1, (3.135)): with `B = DG′RD*`, `Π = 1 − B`,
`Π*Δ^{(2)}Π = Δ^{(2)} − B*Δ^{(2)} − Δ^{(2)}B + B*Δ^{(2)}B`, and `B* = DRG′D*` when
`G′* = G′`, `R* = R`. -/
theorem deltaPi2_expand {m : Type*} [Fintype m] (D : Matrix n m 𝕜) (G' R : Matrix m m 𝕜) (Δ2 : Matrix n n 𝕜)
    (hG' : G'ᴴ = G') (hR : Rᴴ = R) :
    (1 - D * G' * R * Dᴴ)ᴴ * Δ2 * (1 - D * G' * R * Dᴴ) = Δ2 - D * R * G' * Dᴴ * Δ2 -
      Δ2 * (D * G' * R * Dᴴ) + D * R * G' * Dᴴ * Δ2 * (D * G' * R * Dᴴ) := by
  simp only [conjTranspose_sub, conjTranspose_one, conjTranspose_mul, conjTranspose_conjTranspose,
    hG', hR, Matrix.mul_sub, Matrix.sub_mul, Matrix.one_mul, Matrix.mul_one, Matrix.mul_assoc]
  abel

end LemmaN

end YmLean.WGAlgebra
