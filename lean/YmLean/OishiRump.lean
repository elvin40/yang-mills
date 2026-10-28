import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.Normed.Ring.Units

/-!
# Oishi–Rump inverse bound and the certified ‖R‖₂ bound (H2_CERTIFY.md §2 (i-a), §5 C2)

Sources: `../H2_CERTIFY.md` §2 (i-a) and ledger C2; `../H2_CERTIFY_VERIFY.md` §4 (item (2),
"Oishi–Rump in solve_cert"). Matrix norm: the ℓ² operator (spectral) norm of Mathlib
(`Matrix.Norms.L2Operator`, `‖A‖ = ‖toEuclideanCLM A‖`), the norm used numerically.
`frob A = √(Σ_{i,j} |A i j|²)` is the Frobenius norm, written out.
-/

open Matrix

namespace YmLean

/-- Oishi–Rump in an abstract complete normed ring with `‖1‖ ≤ 1` in which a left inverse is a
two-sided inverse: `‖R A − 1‖ < 1` ⇒ `A` is a unit and `‖A⁻¹‖ ≤ ‖R‖ / (1 − ‖R A − 1‖)`.
Proof: `R A = 1 − t` with `‖t‖ < 1`, `(R A)⁻¹ = Σ tⁿ` (Neumann), `A⁻¹ = (R A)⁻¹ R`. -/
theorem oishi_rump_ring {α : Type*} [NormedRing α] [CompleteSpace α] (h1 : ‖(1 : α)‖ ≤ 1)
    (hcomm : ∀ x y : α, x * y = 1 → y * x = 1) (A R : α) (h : ‖R * A - 1‖ < 1) :
    IsUnit A ∧ ‖Ring.inverse A‖ ≤ ‖R‖ / (1 - ‖R * A - 1‖) := by
  set t := 1 - R * A
  have ht : ‖t‖ < 1 := by rwa [norm_sub_rev]
  set S := ∑' n : ℕ, t ^ n
  have hS : S * (R * A) = 1 := by
    have := (Units.oneSub t ht).inv_val
    simpa [Units.oneSub, t] using this
  have hAinv : A * (S * R) = 1 := hcomm _ _ (by rw [mul_assoc]; exact hS)
  have hu : IsUnit A := ⟨⟨A, S * R, hAinv, hcomm _ _ hAinv⟩, rfl⟩
  refine ⟨hu, ?_⟩
  have hinv : Ring.inverse A = S * R := by
    rw [← mul_one (Ring.inverse A), ← hAinv, ← mul_assoc, Ring.inverse_mul_cancel _ hu, one_mul]
  have hSn : ‖S‖ ≤ (1 - ‖t‖)⁻¹ := by
    have := tsum_geometric_le_of_norm_lt_one t ht; linarith
  rw [hinv, show ‖R * A - 1‖ = ‖t‖ from norm_sub_rev _ _, div_eq_mul_inv, mul_comm ‖R‖]
  exact (norm_mul_le _ _).trans (mul_le_mul_of_nonneg_right hSn (norm_nonneg _))

open scoped Matrix.Norms.L2Operator

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n]

/-- **Oishi–Rump** (H2_CERTIFY.md §2 (i-a); VERIFY §4) for square matrices over `ℝ` or `ℂ`,
ℓ² operator norm: `‖R A − 1‖ < 1` ⇒ `A` invertible and `‖A⁻¹‖ ≤ ‖R‖ / (1 − ‖R A − 1‖)`. -/
theorem oishi_rump (A R : Matrix n n 𝕜) (h : ‖R * A - 1‖ < 1) :
    IsUnit A ∧ ‖A⁻¹‖ ≤ ‖R‖ / (1 - ‖R * A - 1‖) := by
  have : CompleteSpace (Matrix n n 𝕜) := FiniteDimensional.complete 𝕜 _
  have h1 : ‖(1 : Matrix n n 𝕜)‖ ≤ 1 := by
    rw [cstar_norm_def, map_one]; exact ContinuousLinearMap.norm_id_le
  obtain ⟨hu, hb⟩ := oishi_rump_ring h1 (fun _ _ hxy => mul_eq_one_comm.mp hxy) A R h
  refine ⟨hu, ?_⟩
  rwa [← Matrix.nonsing_inv_eq_ringInverse] at hb

/-- Frobenius norm, written out: `√(Σ_{i,j} |A i j|²)`. -/
noncomputable def frob (A : Matrix n n 𝕜) : ℝ := √(∑ i, ∑ j, ‖A i j‖ ^ 2)

/-- `‖A‖₂ ≤ ‖A‖_F` (row-wise Cauchy–Schwarz). -/
theorem l2_le_frob (A : Matrix n n 𝕜) : ‖A‖ ≤ frob A := by
  rw [cstar_norm_def]
  refine ContinuousLinearMap.opNorm_le_bound _ (Real.sqrt_nonneg _) fun x => ?_
  have hrow : ∀ i, ‖(A *ᵥ x.ofLp) i‖ ≤ √(∑ j, ‖A i j‖ ^ 2) * ‖x‖ := by
    intro i
    have := norm_inner_le_norm (𝕜 := 𝕜) (WithLp.toLp 2 (star (A i ·))) x
    have e1 : (inner 𝕜 (WithLp.toLp 2 (star (A i ·))) x : 𝕜) = (A *ᵥ x.ofLp) i := by
      simp [PiLp.inner_apply, mulVec, dotProduct, mul_comm]
    have e2 : ‖(WithLp.toLp 2 (star (A i ·)) : EuclideanSpace 𝕜 n)‖ = √(∑ j, ‖A i j‖ ^ 2) := by
      simp [EuclideanSpace.norm_eq]
    rwa [e1, e2] at this
  rw [EuclideanSpace.norm_eq, ofLp_toEuclideanCLM, frob, ← Real.sqrt_sq (norm_nonneg x),
    ← Real.sqrt_mul (Finset.sum_nonneg fun i _ => Finset.sum_nonneg fun j _ => by positivity)]
  refine Real.sqrt_le_sqrt ?_
  rw [Finset.sum_mul]
  refine Finset.sum_le_sum fun i _ => ?_
  calc ‖(A *ᵥ x.ofLp) i‖ ^ 2 ≤ (√(∑ j, ‖A i j‖ ^ 2) * ‖x‖) ^ 2 := by gcongr; exact hrow i
    _ = (∑ j, ‖A i j‖ ^ 2) * ‖x‖ ^ 2 := by
      rw [mul_pow, Real.sq_sqrt (Finset.sum_nonneg fun j _ => by positivity)]

/-- Certified spectral-norm bound (H2_CERTIFY.md §5 C2, "certified ‖R‖₂"):
`‖M‖₂ ≤ ‖(Mᴴ M)^{2^m}‖_F ^ (1/2^{m+1})`. Proof: C*-identity `‖Mᴴ M‖ = ‖M‖²`,
`‖S^{2^m}‖ = ‖S‖^{2^m}` for self-adjoint `S`, and `‖·‖₂ ≤ ‖·‖_F`. -/
theorem frobenius_power_bound (M : Matrix n n 𝕜) (m : ℕ) :
    ‖M‖ ≤ frob ((Mᴴ * M) ^ 2 ^ m) ^ ((1 : ℝ) / 2 ^ (m + 1)) := by
  have hsa : IsSelfAdjoint (Mᴴ * M) := by
    simp [IsSelfAdjoint, star_eq_conjTranspose, conjTranspose_mul]
  have key : ‖M‖ ^ 2 ^ (m + 1) ≤ frob ((Mᴴ * M) ^ 2 ^ m) := by
    calc ‖M‖ ^ 2 ^ (m + 1) = ‖Mᴴ * M‖ ^ 2 ^ m := by
          rw [l2_opNorm_conjTranspose_mul_self, ← sq, ← pow_mul, pow_succ']
      _ = ‖(Mᴴ * M) ^ 2 ^ m‖ := (hsa.norm_pow_two_pow m).symm
      _ ≤ _ := l2_le_frob _
  have hN : (2 ^ (m + 1) : ℕ) ≠ 0 := by positivity
  calc ‖M‖ = (‖M‖ ^ 2 ^ (m + 1)) ^ ((1 : ℝ) / 2 ^ (m + 1)) := by
        rw [one_div, show ((2 : ℝ) ^ (m + 1)) = ((2 ^ (m + 1) : ℕ) : ℝ) by push_cast; rfl,
          Real.pow_rpow_inv_natCast (norm_nonneg _) hN]
    _ ≤ _ := Real.rpow_le_rpow (by positivity) key (by positivity)

/-- The form computed in `solve_cert` (numerics/h2cert_proto.py): `A = A₀ + dA` with `‖dA‖₂ ≤ r`,
`η = ‖R A₀ − 1‖_F + ‖R‖₂ r < 1` ⇒ `A` invertible and `‖A⁻¹‖₂ ≤ ‖R‖₂ / (1 − η)`. -/
theorem oishi_rump_eta (A₀ dA R : Matrix n n 𝕜) {r : ℝ} (hr : ‖dA‖ ≤ r)
    (hη : frob (R * A₀ - 1) + ‖R‖ * r < 1) :
    IsUnit (A₀ + dA) ∧ ‖(A₀ + dA)⁻¹‖ ≤ ‖R‖ / (1 - (frob (R * A₀ - 1) + ‖R‖ * r)) := by
  have hle : ‖R * (A₀ + dA) - 1‖ ≤ frob (R * A₀ - 1) + ‖R‖ * r := by
    rw [mul_add, add_sub_right_comm]
    exact (norm_add_le _ _).trans (add_le_add (l2_le_frob _)
      ((norm_mul_le _ _).trans (mul_le_mul_of_nonneg_left hr (norm_nonneg _))))
  obtain ⟨hu, hb⟩ := oishi_rump (A₀ + dA) R (hle.trans_lt hη)
  exact ⟨hu, hb.trans (div_le_div_of_nonneg_left (norm_nonneg _) (by linarith)
    (by linarith))⟩

end YmLean

#print axioms YmLean.oishi_rump_ring
#print axioms YmLean.oishi_rump
#print axioms YmLean.l2_le_frob
#print axioms YmLean.frobenius_power_bound
#print axioms YmLean.oishi_rump_eta
