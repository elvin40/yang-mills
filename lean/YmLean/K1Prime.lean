import Mathlib.Tactic.NormNum

/-!
# H-216 (K1′): large-field T-step loss 13δ (SOURCES_A23_TSTEP.md §4, SOURCES_A23_TSTEP_VERIFY.md)

At L = 13, θ = 1/2, β = 1/4: δ′ = (1/13)(1 − 2(1+4β)/(θL)) = 5/169 ≈ 0.0296;
δ = 1/40 satisfies θ(1 − 13δ)L/2 ≥ 1 + 4β (2.194 ≥ 2); δ = 3/100 fails (1.9825 < 2).
-/

namespace YmLean

/-- H-216 (K1′). -/
theorem K1_numeric_13 :
    (1 / 13 : ℚ) * (1 - 2 * (1 + 4 * (1 / 4)) / ((1 / 2) * 13)) = 5 / 169 ∧
      1 + 4 * (1 / 4 : ℚ) ≤ (1 / 2) * (1 - 13 * (1 / 40)) * 13 / 2 ∧
      ¬ (1 + 4 * (1 / 4 : ℚ) ≤ (1 / 2) * (1 - 13 * (3 / 100)) * 13 / 2) := by
  norm_num

end YmLean

#print axioms YmLean.K1_numeric_13
