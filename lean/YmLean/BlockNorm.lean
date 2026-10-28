import Mathlib.Analysis.Normed.Lp.PiLp
import Mathlib.Analysis.Normed.Operator.Basic

/-!
# Block operator norms (H2_CERTIFY.md §1 R2 and §5 C4; H2_CERTIFY_VERIFY.md §5 item (5))

Direct sums carry the ℓ² norm: `PiLp 2 E`, `‖v‖² = Σ_l ‖v_l‖²` (the norm used numerically for
`⊕_l ℂ⁴ = ℂ³²⁴`). Operator norms are Mathlib's `ContinuousLinearMap` operator norms.

- `blockDiag T`: `v ↦ (T_l v_l)_l`, `‖blockDiag T‖ = sup_l ‖T_l‖` (`blockDiag_opNorm_le`, `_eq`).
- `blockCol_opNorm_le`: the form actually used in R2, `X = (⊕_l A_l) ∘ B` with `B` a column of
  blocks (`B : G → ⊕_l F_l`): `‖X‖ ≤ max_l ‖A_l‖ · ‖B‖`.
- `rho2_le`: `ρ_2 = ‖X‖/L²`, `ρ_1(j, K) = ‖B‖/L`, `ρ_1(j−1, k_l) = ‖A_l‖/L` ⇒ (1.1).
-/

namespace YmLean

variable {𝕜 : Type*} [NontriviallyNormedField 𝕜] {ι : Type*} [Fintype ι]
  {E F : ι → Type*} [∀ i, NormedAddCommGroup (E i)] [∀ i, NormedSpace 𝕜 (E i)]
  [∀ i, NormedAddCommGroup (F i)] [∀ i, NormedSpace 𝕜 (F i)]

/-- Block-diagonal operator `⊕_l T_l` on the ℓ² direct sum. -/
noncomputable def blockDiag (T : ∀ i, E i →L[𝕜] F i) : PiLp 2 E →L[𝕜] PiLp 2 F :=
  (PiLp.continuousLinearEquiv 2 𝕜 F).symm.toContinuousLinearMap ∘L
    (ContinuousLinearMap.pi fun i => T i ∘L ContinuousLinearMap.proj i) ∘L
      (PiLp.continuousLinearEquiv 2 𝕜 E).toContinuousLinearMap

omit [Fintype ι] in
@[simp] lemma blockDiag_apply (T : ∀ i, E i →L[𝕜] F i) (v : PiLp 2 E) (i : ι) :
    blockDiag T v i = T i (v i) := rfl

/-- `‖⊕_l T_l‖ ≤ C` if every `‖T_l‖ ≤ C`: `‖Xv‖² = Σ_l ‖T_l v_l‖² ≤ C² Σ_l ‖v_l‖²`. -/
theorem blockDiag_opNorm_le (T : ∀ i, E i →L[𝕜] F i) {C : ℝ} (hC : 0 ≤ C)
    (hT : ∀ i, ‖T i‖ ≤ C) : ‖blockDiag T‖ ≤ C := by
  refine ContinuousLinearMap.opNorm_le_bound _ hC fun v => ?_
  refine le_of_pow_le_pow_left₀ two_ne_zero (by positivity) ?_
  rw [PiLp.norm_sq_eq_of_L2, mul_pow, PiLp.norm_sq_eq_of_L2, Finset.mul_sum]
  refine Finset.sum_le_sum fun i _ => ?_
  rw [blockDiag_apply, ← mul_pow]
  exact pow_le_pow_left₀ (norm_nonneg _)
    (((T i).le_opNorm _).trans (mul_le_mul_of_nonneg_right (hT i) (norm_nonneg _))) 2

/-- Equality for the ℓ² sum: `‖⊕_l T_l‖ = sup_l ‖T_l‖`. -/
theorem blockDiag_opNorm_eq (T : ∀ i, E i →L[𝕜] F i) :
    ‖blockDiag T‖ = ⨆ i, ‖T i‖ := by
  have hbdd : BddAbove (Set.range fun i => ‖T i‖) := (Set.finite_range _).bddAbove
  refine le_antisymm (blockDiag_opNorm_le T (Real.iSup_nonneg fun i => norm_nonneg _)
    fun i => le_ciSup hbdd i) ?_
  refine Real.iSup_le (fun i => ?_) (norm_nonneg _)
  classical
  refine (T i).opNorm_le_bound (norm_nonneg _) fun x => ?_
  have hs : blockDiag T (PiLp.single 2 i x) = PiLp.single 2 i (T i x) := by
    ext j
    by_cases h : j = i
    · subst h; simp
    · simp [h]
  have := (blockDiag T).le_opNorm (PiLp.single 2 i x)
  rwa [hs, PiLp.norm_single, PiLp.norm_single] at this

/-- Corollary, `T_l = A_l ∘ B_l` (`opNorm_comp_le`): `‖⊕_l A_l B_l‖ ≤ C` if every
`‖A_l‖ ‖B_l‖ ≤ C`. -/
theorem blockDiag_comp_opNorm_le {G : ι → Type*} [∀ i, NormedAddCommGroup (G i)]
    [∀ i, NormedSpace 𝕜 (G i)] (A : ∀ i, F i →L[𝕜] G i) (B : ∀ i, E i →L[𝕜] F i) {C : ℝ}
    (hC : 0 ≤ C) (hAB : ∀ i, ‖A i‖ * ‖B i‖ ≤ C) :
    ‖blockDiag fun i => A i ∘L B i‖ ≤ C :=
  blockDiag_opNorm_le _ hC fun i => ((A i).opNorm_comp_le (B i)).trans (hAB i)

/-- **R2 / VERIFY item (5)**: `X = (⊕_l A_l) B`, `B` a column of blocks. Then
`‖X v‖² = Σ_l ‖A_l (B v)_l‖² ≤ (max_l ‖A_l‖)² ‖B v‖²`, so `‖X‖ ≤ C ‖B‖` if every `‖A_l‖ ≤ C`. -/
theorem blockCol_opNorm_le {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]
    (A : ∀ i, E i →L[𝕜] F i) (B : H →L[𝕜] PiLp 2 E) {C : ℝ} (hC : 0 ≤ C)
    (hA : ∀ i, ‖A i‖ ≤ C) : ‖blockDiag A ∘L B‖ ≤ C * ‖B‖ :=
  ((blockDiag A).opNorm_comp_le B).trans
    (mul_le_mul_of_nonneg_right (blockDiag_opNorm_le A hC hA) (norm_nonneg _))

/-- (1.1) of H2_CERTIFY.md: with `ρ_2 = ‖(⊕_l A_l) B‖/L²`, `ρ_1(j, K) = ‖B‖/L` and
`ρ_1(j−1, k_l) = ‖A_l‖/L ≤ r`: `ρ_2 ≤ ρ_1(j, K) · r`. -/
theorem rho2_le {H : Type*} [NormedAddCommGroup H] [NormedSpace 𝕜 H]
    (A : ∀ i, E i →L[𝕜] F i) (B : H →L[𝕜] PiLp 2 E) {L r : ℝ} (hL : 0 < L) (hr : 0 ≤ r)
    (hA : ∀ i, ‖A i‖ / L ≤ r) : ‖blockDiag A ∘L B‖ / L ^ 2 ≤ ‖B‖ / L * r := by
  have hA' : ∀ i, ‖A i‖ ≤ r * L := fun i => (div_le_iff₀ hL).mp (hA i)
  have := blockCol_opNorm_le A B (by positivity) hA'
  rw [div_le_iff₀ (by positivity)]
  calc _ ≤ r * L * ‖B‖ := this
    _ = ‖B‖ / L * r * L ^ 2 := by field_simp
    _ ≤ _ := le_rfl

end YmLean

#print axioms YmLean.blockDiag_opNorm_le
#print axioms YmLean.blockDiag_opNorm_eq
#print axioms YmLean.blockDiag_comp_opNorm_le
#print axioms YmLean.blockCol_opNorm_le
#print axioms YmLean.rho2_le
