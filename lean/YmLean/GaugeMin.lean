import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# Gauge condition of the constrained minimizer (L3)

Source: `../SOURCES_A3_GAMMA0_FULL.md` §5 (5.1 variational identity, 5.2 Lemma 5: `RD*A_* = 0`),
checked in `../SOURCES_A3_GAMMA0_FULL_VERIFY.md` §4 item (1) and summary item 5.
Finite-dimensional inner product spaces over `𝕜 = ℝ` or `ℂ`: fields `V`, gauge functions `W`,
block fields `U`. `K` plays `G₁⁻¹` (`hGK`, `hKG`), `adjoint` is `LinearMap.adjoint`.
`qf K A = re⟪A, K A⟫ = ⟨A, G_1^{−1}A⟩`. The relations of Lemma 5 enter as hypotheses
(F1), (F3), (F4) on an abstract subspace `N` (= `N(Q′)`), linear `D`, `R`, `G'` and an arbitrary
function `Φ`. `R` need not be a projection.
-/

open RCLike
open scoped InnerProductSpace

namespace YmLean

set_option linter.unusedSectionVars false

variable {𝕜 V W U : Type*} [RCLike 𝕜]
  [NormedAddCommGroup V] [InnerProductSpace 𝕜 V] [FiniteDimensional 𝕜 V]
  [NormedAddCommGroup W] [InnerProductSpace 𝕜 W] [FiniteDimensional 𝕜 W]
  [NormedAddCommGroup U] [InnerProductSpace 𝕜 U] [FiniteDimensional 𝕜 U]

/-- The quadratic form `q_K(A) = re⟪A, K A⟫` (`⟨A, G_1^{−1}A⟩` for `K = G₁⁻¹`). -/
def qf (K : V →ₗ[𝕜] V) (A : V) : ℝ := re ⟪A, K A⟫_𝕜

/-- `A` minimizes `q_K` on the extensions `{A : Q A = B}`. -/
def IsConstrMin (K : V →ₗ[𝕜] V) (Q : V →ₗ[𝕜] U) (B : U) (A : V) : Prop :=
  Q A = B ∧ ∀ A', Q A' = B → qf K A ≤ qf K A'

/-- A positive-definite `G` is injective. -/
theorem posdef_injective {G : V →ₗ[𝕜] V} (hpos : ∀ x, x ≠ 0 → 0 < re ⟪x, G x⟫_𝕜) :
    Function.Injective G := by
  rw [← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
  intro x hx
  by_contra h
  have := hpos x h
  rw [hx, inner_zero_right, map_zero] at this
  exact lt_irrefl _ this

/-- (R1, part) `G₁ > 0` has an inverse `K = G₁⁻¹` (finite dimensions). -/
theorem posdef_inv {G₁ : V →ₗ[𝕜] V} (hpos : ∀ x, x ≠ 0 → 0 < re ⟪x, G₁ x⟫_𝕜) :
    ∃ K : V →ₗ[𝕜] V, (∀ x, G₁ (K x) = x) ∧ (∀ x, K (G₁ x) = x) := by
  let e := LinearEquiv.ofInjectiveEndo G₁ (posdef_injective hpos)
  exact ⟨e.symm.toLinearMap, fun x => e.apply_symm_apply x, fun x => e.symm_apply_apply x⟩

/-- `G₁⁻¹` is symmetric. -/
theorem inv_symm {G₁ K : V →ₗ[𝕜] V} (hsym : G₁.IsSymmetric) (hGK : ∀ x, G₁ (K x) = x) :
    K.IsSymmetric := by
  intro x y
  conv_lhs => rw [← hGK y]
  rw [← hsym, hGK]

/-- `G₁⁻¹ > 0`. -/
theorem inv_posdef {G₁ K : V →ₗ[𝕜] V} (hpos : ∀ x, x ≠ 0 → 0 < re ⟪x, G₁ x⟫_𝕜)
    (hGK : ∀ x, G₁ (K x) = x) : ∀ x, x ≠ 0 → 0 < qf K x := by
  intro x hx
  have hK : K x ≠ 0 := fun h => hx (by rw [← hGK x, h, map_zero])
  have := hpos (K x) hK
  rw [hGK] at this
  unfold qf
  rwa [← inner_conj_symm, conj_re] at this

theorem qf_nonneg {K : V →ₗ[𝕜] V} (hK : ∀ x, x ≠ 0 → 0 < qf K x) (x : V) : 0 ≤ qf K x := by
  by_cases h : x = 0
  · simp [qf, h]
  · exact (hK x h).le

/-- `q(A + Z) = q(A) + q(Z) + 2 re⟪Z, K A⟫` for symmetric `K`. -/
theorem qf_add {K : V →ₗ[𝕜] V} (hK : K.IsSymmetric) (A Z : V) :
    qf K (A + Z) = qf K A + qf K Z + 2 * re ⟪Z, K A⟫_𝕜 := by
  have h : re ⟪A, K Z⟫_𝕜 = re ⟪Z, K A⟫_𝕜 := by rw [← hK, ← inner_conj_symm, conj_re]
  unfold qf
  rw [map_add, inner_add_left, inner_add_right, inner_add_right, map_add, map_add, map_add]
  linarith

/-- (R1, part) `Q` onto and `G₁ > 0` ⇒ `QG₁Q*` is invertible on the `B`-space (onto). -/
theorem schur_surjective {G₁ : V →ₗ[𝕜] V} (hpos : ∀ x, x ≠ 0 → 0 < re ⟪x, G₁ x⟫_𝕜)
    {Q : V →ₗ[𝕜] U} (hQ : Function.Surjective Q) :
    Function.Surjective (Q ∘ₗ G₁ ∘ₗ LinearMap.adjoint Q) := by
  rw [← LinearMap.injective_iff_surjective, ← LinearMap.ker_eq_bot, LinearMap.ker_eq_bot']
  intro w hw
  have h0 : LinearMap.adjoint Q w = 0 := by
    by_contra h
    have := hpos _ h
    rw [LinearMap.adjoint_inner_left] at this
    simp only [LinearMap.comp_apply] at hw
    rw [hw, inner_zero_right, map_zero] at this
    exact lt_irrefl _ this
  obtain ⟨v, rfl⟩ := hQ w
  rw [← inner_self_eq_zero (𝕜 := 𝕜), ← LinearMap.adjoint_inner_left, h0, inner_zero_left]

/-- 5.1 **Variational identity**: for `QG₁Q* w = B`, `A_* := G₁Q*w` has `QA_* = B`,
`q(A) = q(A_*) + q(A − A_*)` for every extension `A`, and `q(A_*) = re⟪B, w⟫`
(`= ⟨B, (QG_1Q*)^{−1}B⟩`). -/
theorem variational {G₁ K : V →ₗ[𝕜] V} (hsym : G₁.IsSymmetric) (hGK : ∀ x, G₁ (K x) = x)
    (hKG : ∀ x, K (G₁ x) = x) {Q : V →ₗ[𝕜] U} {B w : U} {Astar : V}
    (hA : Astar = G₁ (LinearMap.adjoint Q w)) (hw : Q Astar = B) :
    (∀ A, Q A = B → qf K A = qf K Astar + qf K (A - Astar)) ∧ qf K Astar = re ⟪B, w⟫_𝕜 := by
  have hKA : K Astar = LinearMap.adjoint Q w := by rw [hA, hKG]
  refine ⟨fun A hQA => ?_, ?_⟩
  · have e := qf_add (inv_symm hsym hGK) Astar (A - Astar)
    rw [add_sub_cancel] at e
    rw [e, hKA, LinearMap.adjoint_inner_right, map_sub, hQA, hw, sub_self, inner_zero_left,
      map_zero, mul_zero, add_zero]
  · rw [qf, hKA, LinearMap.adjoint_inner_right, hw]

/-- 5.1 **Existence and uniqueness** of the constrained minimizer (`G₁ > 0`, `Q` onto). The
minimizer is `G₁Q*w` with `QG₁Q* w = B`. -/
theorem constrMin_existsUnique {G₁ K : V →ₗ[𝕜] V} (hsym : G₁.IsSymmetric)
    (hpos : ∀ x, x ≠ 0 → 0 < re ⟪x, G₁ x⟫_𝕜) (hGK : ∀ x, G₁ (K x) = x)
    (hKG : ∀ x, K (G₁ x) = x) {Q : V →ₗ[𝕜] U} (hQ : Function.Surjective Q) (B : U) :
    ∃ w, (Q (G₁ (LinearMap.adjoint Q w)) = B ∧ IsConstrMin K Q B (G₁ (LinearMap.adjoint Q w))) ∧
      ∀ A, IsConstrMin K Q B A → A = G₁ (LinearMap.adjoint Q w) := by
  obtain ⟨w, hw⟩ := schur_surjective hpos hQ B
  simp only [LinearMap.comp_apply] at hw
  have hKp := inv_posdef hpos hGK
  have hv := (variational hsym hGK hKG rfl hw).1
  refine ⟨w, ⟨hw, hw, fun A hQA => ?_⟩, fun A hA => ?_⟩
  · rw [hv A hQA]; linarith [qf_nonneg hKp (A - G₁ (LinearMap.adjoint Q w))]
  · have h1 := hA.2 _ hw
    rw [hv A hA.1] at h1
    by_contra hne
    linarith [hKp _ (sub_ne_zero.mpr hne)]

/-- **Abstract gauge condition** (5.2, last step): if `A ↦ A′ = A − DG′RD*A` keeps `QA` and
lowers `q` by `‖RD*A‖²` at a constrained minimizer `A_*`, then `RD*A_* = 0`. -/
theorem gauge_min_abstract {K : V →ₗ[𝕜] V} {Q : V →ₗ[𝕜] U} {B : U} {D : W →ₗ[𝕜] V}
    {R G' : W →ₗ[𝕜] W} {Astar : V} (hmin : IsConstrMin K Q B Astar)
    (hQ : Q (Astar - D (G' (R (LinearMap.adjoint D Astar)))) = Q Astar)
    (hq : qf K (Astar - D (G' (R (LinearMap.adjoint D Astar)))) =
      qf K Astar - ‖R (LinearMap.adjoint D Astar)‖ ^ 2) :
    R (LinearMap.adjoint D Astar) = 0 := by
  have h := hmin.2 _ (hQ.trans hmin.1)
  rw [hq] at h
  have : ‖R (LinearMap.adjoint D Astar)‖ ^ 2 = 0 := le_antisymm (by linarith) (by positivity)
  exact norm_eq_zero.mp (pow_eq_zero_iff two_ne_zero |>.mp this)

/-- 5.2 proof, steps (i)–(iii), for any `A`, from (F1), (F3), (F4): `A′ := A − DG′RD*A` has
(i) `QA′ = QA`, (ii) `RD*A′ = 0` and `(A′)′ = A′`, (iii) `q(A′) = q(A) − ‖RD*A‖²`. -/
theorem lemma5_step {K : V →ₗ[𝕜] V} {Q : V →ₗ[𝕜] U} {N : Submodule 𝕜 W} {D : W →ₗ[𝕜] V}
    {R G' : W →ₗ[𝕜] W} {Φ : V → ℝ} {a : ℝ}
    (F1 : ∀ μ ∈ N, Q (D μ) = 0)
    (F3a : ∀ A, G' (R (LinearMap.adjoint D A)) ∈ N)
    (F3b : ∀ A, R (LinearMap.adjoint D (A - D (G' (R (LinearMap.adjoint D A))))) = 0)
    (F4 : ∀ A, qf K A = Φ (A - D (G' (R (LinearMap.adjoint D A)))) +
      ‖R (LinearMap.adjoint D A)‖ ^ 2 + a * ‖Q A‖ ^ 2) (A : V) :
    Q (A - D (G' (R (LinearMap.adjoint D A)))) = Q A ∧
    R (LinearMap.adjoint D (A - D (G' (R (LinearMap.adjoint D A))))) = 0 ∧
    (A - D (G' (R (LinearMap.adjoint D A)))) -
      D (G' (R (LinearMap.adjoint D (A - D (G' (R (LinearMap.adjoint D A))))))) =
      A - D (G' (R (LinearMap.adjoint D A))) ∧
    qf K (A - D (G' (R (LinearMap.adjoint D A)))) = qf K A - ‖R (LinearMap.adjoint D A)‖ ^ 2 := by
  have hi : Q (A - D (G' (R (LinearMap.adjoint D A)))) = Q A := by
    rw [map_sub, F1 _ (F3a A), sub_zero]
  have hii := F3b A
  have hfix : (A - D (G' (R (LinearMap.adjoint D A)))) -
      D (G' (R (LinearMap.adjoint D (A - D (G' (R (LinearMap.adjoint D A))))))) =
      A - D (G' (R (LinearMap.adjoint D A))) := by rw [hii, map_zero, map_zero, sub_zero]
  refine ⟨hi, hii, hfix, ?_⟩
  rw [F4 (A - _), hfix, hii, hi, F4 A, norm_zero]
  ring

/-- 5.2 **Lemma 5**: under (F1), (F3), (F4), every constrained minimizer `A_*` of
`⟨A, G_1^{−1}A⟩` has `RD*A_* = 0`, hence `A_*′ = A_*` and `q(A_*) = Φ(A_*) + a‖B‖²`. -/
theorem lemma5 {K : V →ₗ[𝕜] V} {Q : V →ₗ[𝕜] U} {N : Submodule 𝕜 W} {D : W →ₗ[𝕜] V}
    {R G' : W →ₗ[𝕜] W} {Φ : V → ℝ} {a : ℝ}
    (F1 : ∀ μ ∈ N, Q (D μ) = 0)
    (F3a : ∀ A, G' (R (LinearMap.adjoint D A)) ∈ N)
    (F3b : ∀ A, R (LinearMap.adjoint D (A - D (G' (R (LinearMap.adjoint D A))))) = 0)
    (F4 : ∀ A, qf K A = Φ (A - D (G' (R (LinearMap.adjoint D A)))) +
      ‖R (LinearMap.adjoint D A)‖ ^ 2 + a * ‖Q A‖ ^ 2) {B : U} {Astar : V}
    (hmin : IsConstrMin K Q B Astar) :
    R (LinearMap.adjoint D Astar) = 0 ∧ Astar - D (G' (R (LinearMap.adjoint D Astar))) = Astar ∧
    qf K Astar = Φ Astar + a * ‖B‖ ^ 2 := by
  obtain ⟨hi, -, -, hiii⟩ := lemma5_step F1 F3a F3b F4 Astar
  have h0 := gauge_min_abstract hmin hi hiii
  have hfix : Astar - D (G' (R (LinearMap.adjoint D Astar))) = Astar := by
    rw [h0, map_zero, map_zero, sub_zero]
  refine ⟨h0, hfix, ?_⟩
  rw [F4, hfix, h0, hmin.1, norm_zero]
  ring

/-- 5.1 + 5.2 combined (`G₁ > 0`, `Q` onto): the unique minimizer `A_* = G₁Q*w`
(`QG₁Q* w = B`) has `RD*A_* = 0`, `A_*′ = A_*` and
`re⟪B, w⟫ = q(A_*) = Φ(A_*) + a‖B‖²` (the first line of (5.1)). -/
theorem lemma5_full {G₁ K : V →ₗ[𝕜] V} (hsym : G₁.IsSymmetric)
    (hpos : ∀ x, x ≠ 0 → 0 < re ⟪x, G₁ x⟫_𝕜) (hGK : ∀ x, G₁ (K x) = x)
    (hKG : ∀ x, K (G₁ x) = x) {Q : V →ₗ[𝕜] U} (hQ : Function.Surjective Q)
    {N : Submodule 𝕜 W} {D : W →ₗ[𝕜] V} {R G' : W →ₗ[𝕜] W} {Φ : V → ℝ} {a : ℝ}
    (F1 : ∀ μ ∈ N, Q (D μ) = 0)
    (F3a : ∀ A, G' (R (LinearMap.adjoint D A)) ∈ N)
    (F3b : ∀ A, R (LinearMap.adjoint D (A - D (G' (R (LinearMap.adjoint D A))))) = 0)
    (F4 : ∀ A, qf K A = Φ (A - D (G' (R (LinearMap.adjoint D A)))) +
      ‖R (LinearMap.adjoint D A)‖ ^ 2 + a * ‖Q A‖ ^ 2) (B : U) :
    ∃ w Astar, Astar = G₁ (LinearMap.adjoint Q w) ∧ IsConstrMin K Q B Astar ∧
      (∀ A, IsConstrMin K Q B A → A = Astar) ∧
      R (LinearMap.adjoint D Astar) = 0 ∧ Astar - D (G' (R (LinearMap.adjoint D Astar))) = Astar ∧
      re ⟪B, w⟫_𝕜 = qf K Astar ∧ qf K Astar = Φ Astar + a * ‖B‖ ^ 2 := by
  obtain ⟨w, ⟨hw, hmin⟩, huniq⟩ := constrMin_existsUnique hsym hpos hGK hKG hQ B
  obtain ⟨h0, hfix, hval⟩ := lemma5 F1 F3a F3b F4 hmin
  exact ⟨w, _, rfl, hmin, huniq, h0, hfix, ((variational hsym hGK hKG rfl hw).2).symm, hval⟩

end YmLean

#print axioms YmLean.posdef_inv
#print axioms YmLean.inv_symm
#print axioms YmLean.inv_posdef
#print axioms YmLean.qf_add
#print axioms YmLean.schur_surjective
#print axioms YmLean.variational
#print axioms YmLean.constrMin_existsUnique
#print axioms YmLean.gauge_min_abstract
#print axioms YmLean.lemma5_step
#print axioms YmLean.lemma5
#print axioms YmLean.lemma5_full
