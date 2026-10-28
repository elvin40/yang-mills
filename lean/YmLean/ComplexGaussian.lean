import YmLean.Resolvent
import YmLean.CombesThomas
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.Analysis.Matrix.PosDef
import Mathlib.MeasureTheory.Integral.Pi
import Mathlib.MeasureTheory.Measure.Lebesgue.Basic

/-!
# Finite-dimensional complex Gaussian facts behind A8 (Lemma P (a)–(c), Lemma S, Lemma D core)

Sources: `../SOURCES_A8_POS.md` §3.1 (Lemma S), §4 (Lemma D), §5.2–5.3 (Lemma P), and
`../SOURCES_A8_POS_VERIFY.md` V2, V5 (Lemma D exponent `e^{−ε″M/8}`; normalisation reading:
the exact integral is `(2π)^{n/2} det(sym K)^{−1/2}`). LEAN_CATALOGUE §10 wave-2 item (5).

Conventions. `ψ : n → ℝ` with Lebesgue `volume` on `n → ℝ`. `cq K ψ = Σ_{ij} ψ_i K_ij ψ_j ∈ ℂ`.
`symRe K = (Re K + (Re K)ᵀ)/2` is `H(K)` of A8 2.3 restricted to real arguments.
The determinant identity is stated squared, `I² · det H = (2π)^n`, and as `I = √((2π)^n / det H)`
(no `rpow`). Lemma D's exponential rate stays prose; only its matrix-analysis core is here.
-/

open Matrix MeasureTheory Finset
open scoped Matrix.Norms.L2Operator

namespace YmLean

set_option linter.unusedSectionVars false

variable {n : Type*} [Fintype n] [DecidableEq n]

/-- Complex quadratic form `⟨ψ, Kψ⟩` at a real vector `ψ` (A8 2.2). -/
noncomputable def cq (K : Matrix n n ℂ) (ψ : n → ℝ) : ℂ :=
  (fun i => (ψ i : ℂ)) ⬝ᵥ K *ᵥ (fun i => (ψ i : ℂ))

/-- `H(K) = sym Re K = (Re K + (Re K)ᵀ)/2` (A8 2.3, real arguments). -/
noncomputable def symRe (K : Matrix n n ℂ) : Matrix n n ℝ :=
  (1 / 2 : ℝ) • (K.map Complex.re + (K.map Complex.re)ᵀ)

lemma dot_transpose (B : Matrix n n ℝ) (ψ : n → ℝ) : ψ ⬝ᵥ Bᵀ *ᵥ ψ = ψ ⬝ᵥ B *ᵥ ψ := by
  rw [mulVec_transpose, dotProduct_comm, dotProduct_mulVec]

/-- **Lemma P (a), algebra** (A8 2.3, 5.3(c)): `Re⟨ψ, Kψ⟩ = ⟨ψ, H(K)ψ⟩` for real `ψ`. -/
theorem re_cq (K : Matrix n n ℂ) (ψ : n → ℝ) : (cq K ψ).re = ψ ⬝ᵥ symRe K *ᵥ ψ := by
  have h1 : (cq K ψ).re = ψ ⬝ᵥ K.map Complex.re *ᵥ ψ := by
    simp [cq, dotProduct, mulVec, Complex.re_sum, Complex.mul_re]
  rw [h1, symRe, smul_mulVec, add_mulVec, dotProduct_smul, dotProduct_add, dot_transpose,
    smul_eq_mul]
  ring

/-- **Lemma P (a)** (A8 5.3(c)): `|e^{−½⟨ψ,Kψ⟩}| = e^{−½⟨ψ,Hψ⟩}`, `H = sym Re K`. -/
theorem norm_cexp_cq (K : Matrix n n ℂ) (ψ : n → ℝ) :
    ‖Complex.exp (-cq K ψ / 2)‖ = Real.exp (-(ψ ⬝ᵥ symRe K *ᵥ ψ) / 2) := by
  rw [Complex.norm_exp, ← re_cq]
  simp

/-- Diagonal form of a positive-definite real quadratic form: `⟨ψ,Hψ⟩ = Σ λ_i (Uᵀψ)_i²`. -/
lemma quad_eigen {H : Matrix n n ℝ} (hH : H.PosDef) (ψ : n → ℝ) :
    ψ ⬝ᵥ H *ᵥ ψ = ∑ i, hH.1.eigenvalues i * ((↑hH.1.eigenvectorUnitary : Matrix n n ℝ)ᵀ *ᵥ ψ) i ^ 2 := by
  set U : Matrix n n ℝ := ↑hH.1.eigenvectorUnitary
  have hs : H = U * diagonal hH.1.eigenvalues * Uᵀ := by
    conv_lhs => rw [hH.1.spectral_theorem]
    simp [U, RCLike.ofReal_real_eq_id, star_eq_conjTranspose]
  conv_lhs => rw [hs]
  rw [← mulVec_mulVec, ← mulVec_mulVec, dotProduct_mulVec, ← mulVec_transpose]
  simp [dotProduct, mulVec_diagonal, sq]
  exact Finset.sum_congr rfl fun i _ => by ring

/-- One-dimensional factor `∫ e^{−(λ/2)x²} = √(π/(λ/2))`. -/
lemma gauss_prod {lam : n → ℝ} (hl : ∀ i, 0 < lam i) :
    Integrable (fun φ : n → ℝ => ∏ i, Real.exp (-(lam i / 2) * φ i ^ 2)) ∧
      ∫ φ : n → ℝ, ∏ i, Real.exp (-(lam i / 2) * φ i ^ 2) = ∏ i, √(Real.pi / (lam i / 2)) := by
  refine ⟨Integrable.fintype_prod (f := fun i (x : ℝ) => Real.exp (-(lam i / 2) * x ^ 2))
    fun i => integrable_exp_neg_mul_sq (by linarith [hl i]), ?_⟩
  rw [integral_fintype_prod_volume_eq_prod (f := fun i (x : ℝ) => Real.exp (-(lam i / 2) * x ^ 2))]
  simp_rw [integral_gaussian]

/-- **Real Gaussian integral for a positive-definite matrix** (A8 5.2(b)–(c), VERIFY V2):
`∫ e^{−½⟨ψ,Hψ⟩} dψ` converges and `I² · det H = (2π)^n`, i.e. `I = (2π)^{n/2} det(H)^{−1/2}`.
Proof: spectral theorem, orthogonal change of variables (`|det U| = 1`), product of 1-d Gaussians. -/
theorem gauss_posDef {H : Matrix n n ℝ} (hH : H.PosDef) :
    Integrable (fun ψ : n → ℝ => Real.exp (-(ψ ⬝ᵥ H *ᵥ ψ) / 2)) ∧
      (∫ ψ : n → ℝ, Real.exp (-(ψ ⬝ᵥ H *ᵥ ψ) / 2)) ^ 2 * H.det = (2 * Real.pi) ^ Fintype.card n := by
  set U : Matrix n n ℝ := ↑hH.1.eigenvectorUnitary
  set lam := hH.1.eigenvalues
  have hl : ∀ i, 0 < lam i := hH.eigenvalues_pos
  have hUU : Uᵀ * U = 1 := by
    have := Unitary.coe_star_mul_self hH.1.eigenvectorUnitary
    simpa [U, star_eq_conjTranspose] using this
  have hdet : U.det ^ 2 = 1 := by
    have := congrArg det hUU
    rwa [det_mul, det_transpose, det_one, ← sq] at this
  let L : (n → ℝ) →ₗ[ℝ] (n → ℝ) := Matrix.toLin' Uᵀ
  have hLd : LinearMap.det L = U.det := by simp [L, LinearMap.det_toLin']
  have habs : |U.det| = 1 := by
    have := abs_mul_abs_self U.det
    nlinarith [abs_nonneg U.det, sq_abs U.det]
  have hmap : Measure.map L volume = volume := by
    rw [Real.map_linearMap_volume_pi_eq_smul_volume_pi (by rw [hLd]; intro h; simp [h] at hdet),
      hLd, abs_inv, habs]
    simp
  have hLm : AEMeasurable L volume := (LinearMap.continuous_on_pi L).measurable.aemeasurable
  set f : (n → ℝ) → ℝ := fun φ => ∏ i, Real.exp (-(lam i / 2) * φ i ^ 2)
  have hf : Continuous f := by fun_prop
  have hfL : (fun ψ : n → ℝ => Real.exp (-(ψ ⬝ᵥ H *ᵥ ψ) / 2)) = f ∘ L := by
    ext ψ
    simp only [Function.comp, f, L, Matrix.toLin'_apply, ← Real.exp_sum, quad_eigen hH ψ]
    congr 1
    rw [neg_div, Finset.sum_div, ← Finset.sum_neg_distrib]
    exact Finset.sum_congr rfl fun i _ => by ring
  obtain ⟨hfi, hfv⟩ := gauss_prod hl
  have hint : ∫ ψ : n → ℝ, Real.exp (-(ψ ⬝ᵥ H *ᵥ ψ) / 2) = ∫ φ, f φ := by
    rw [hfL, ← hmap.symm ▸ (integral_map hLm (hmap ▸ hf.aestronglyMeasurable)).symm, hmap]
    rfl
  refine ⟨?_, ?_⟩
  · rw [hfL, ← integrable_map_measure (hmap ▸ hf.aestronglyMeasurable) hLm, hmap]
    exact hfi
  · rw [hint, hfv, hH.1.det_eq_prod_eigenvalues, ← Finset.prod_pow, ← Finset.prod_mul_distrib,
      ← Finset.prod_const, Finset.card_univ]
    refine Finset.prod_congr rfl fun i _ => ?_
    have := hl i
    rw [Real.sq_sqrt (by positivity)]
    simp only [RCLike.ofReal_real_eq_id, id]
    field_simp

/-- Same, unsquared: `∫ e^{−½⟨ψ,Hψ⟩} dψ = √((2π)^n / det H)`. -/
theorem gauss_posDef_eq {H : Matrix n n ℝ} (hH : H.PosDef) :
    ∫ ψ : n → ℝ, Real.exp (-(ψ ⬝ᵥ H *ᵥ ψ) / 2) = √((2 * Real.pi) ^ Fintype.card n / H.det) := by
  have h := (gauss_posDef hH).2
  have hd : 0 < H.det := hH.det_pos
  rw [← h, mul_div_assoc, div_self hd.ne', mul_one, Real.sqrt_sq]
  exact integral_nonneg fun _ => (Real.exp_pos _).le

/-- **Lemma P (b)–(c), integral part** (A8 5.2(c); VERIFY V2 normalisation reading): if
`H = sym Re K` is positive definite then `ψ ↦ e^{−½⟨ψ,Kψ⟩}` is integrable,
`|∫ e^{−½⟨ψ,Kψ⟩}| ≤ ∫ e^{−½⟨ψ,Hψ⟩}`, and the latter squared times `det H` is `(2π)^n`. -/
theorem cgauss_bound (K : Matrix n n ℂ) (hH : (symRe K).PosDef) :
    Integrable (fun ψ : n → ℝ => Complex.exp (-cq K ψ / 2)) ∧
      ‖∫ ψ : n → ℝ, Complex.exp (-cq K ψ / 2)‖ ≤
        ∫ ψ : n → ℝ, Real.exp (-(ψ ⬝ᵥ symRe K *ᵥ ψ) / 2) ∧
      (∫ ψ : n → ℝ, Real.exp (-(ψ ⬝ᵥ symRe K *ᵥ ψ) / 2)) ^ 2 * (symRe K).det =
        (2 * Real.pi) ^ Fintype.card n := by
  obtain ⟨hi, hv⟩ := gauss_posDef hH
  have hc : Continuous fun ψ : n → ℝ => Complex.exp (-cq K ψ / 2) := by
    unfold cq; simp only [dotProduct, mulVec]; fun_prop
  refine ⟨hi.mono' hc.aestronglyMeasurable (Filter.Eventually.of_forall fun ψ =>
    (norm_cexp_cq K ψ).le), ?_, hv⟩
  refine (norm_integral_le_integral_norm _).trans_eq ?_
  simp_rw [norm_cexp_cq]

/-- **Lemma S, form version** (A8 3.1–3.2): a real matrix with `A ≥ γ·I` (Loewner order)
satisfies `⟨ψ, Aψ⟩ ≥ γ|ψ|²`. -/
theorem lemmaS_form {A : Matrix n n ℝ} {γ : ℝ} (h : (A - γ • (1 : Matrix n n ℝ)).PosSemidef)
    (ψ : n → ℝ) : γ * (ψ ⬝ᵥ ψ) ≤ ψ ⬝ᵥ A *ᵥ ψ := by
  have := h.dotProduct_mulVec_nonneg ψ
  rw [star_trivial, sub_mulVec, smul_mulVec, one_mulVec, dotProduct_sub, dotProduct_smul,
    smul_eq_mul] at this
  linarith

/-- Chain (a) + (c): `sym Re K ≥ γ·I` ⇒ `|e^{−½⟨ψ,Kψ⟩}| ≤ e^{−γ|ψ|²/2}`. -/
theorem norm_cexp_cq_le (K : Matrix n n ℂ) {γ : ℝ}
    (h : (symRe K - γ • (1 : Matrix n n ℝ)).PosSemidef) (ψ : n → ℝ) :
    ‖Complex.exp (-cq K ψ / 2)‖ ≤ Real.exp (-(γ * (ψ ⬝ᵥ ψ)) / 2) := by
  rw [norm_cexp_cq]
  have := lemmaS_form h ψ
  gcongr

variable {𝕜 : Type*} [RCLike 𝕜]

/-- **Lemma D, matrix core** (A8 4.3, 5.3(a); exponent `e^{−ε″M/8}` per VERIFY V5 stays prose):
`re⟨v, C₀v⟩ ≥ γ‖v‖²`, `‖C − C₀‖₂ ≤ η < γ` ⇒ `re⟨v, Cv⟩ ≥ (γ − η)‖v‖²`, `C` invertible, and
`‖C⁻¹ − C₀⁻¹‖₂ ≤ η / (γ(γ − η))` (resolvent identity). No symmetry assumed. -/
theorem lemmaD_core (C₀ C : Matrix n n 𝕜) {γ η : ℝ} (hγ : 0 < γ) (hηγ : η < γ)
    (h₀ : ∀ v, γ * ‖v‖ ^ 2 ≤ rq C₀ v) (hC : ‖C - C₀‖ ≤ η) :
    (∀ v, (γ - η) * ‖v‖ ^ 2 ≤ rq C v) ∧ IsUnit C ∧ ‖C⁻¹ - C₀⁻¹‖ ≤ η / (γ * (γ - η)) := by
  have hl := lower_transfer (ε := η) C₀ C h₀ (by rwa [norm_sub_rev])
  obtain ⟨hu₀, hn₀⟩ := coercive_inv C₀ hγ h₀
  obtain ⟨hu, hn⟩ := coercive_inv C (sub_pos.2 hηγ) hl
  have hη : 0 ≤ η := (norm_nonneg _).trans hC
  refine ⟨hl, hu, ?_⟩
  rw [norm_sub_rev]
  calc ‖C₀⁻¹ - C⁻¹‖ ≤ ‖C₀⁻¹‖ * η * ‖C⁻¹‖ := resolvent_bound C₀ C hu₀ hu hC
    _ ≤ 1 / γ * η * (1 / (γ - η)) := by gcongr
    _ = η / (γ * (γ - η)) := by field_simp

end YmLean
