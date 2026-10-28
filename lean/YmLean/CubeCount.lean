import Mathlib.Analysis.Real.Sqrt

/-!
# Lemma [P], arithmetic core (SOURCES_FX_O1.md §2–§3, Lemmas O1-R and O1-R′;
SOURCES_FX_O1_VERIFY.md §3)

Abstract inequality on counts. The geometric inputs are hypotheses:
(F1) `N ≤ 4^d (1 + 2ℓ)` (L-080 (Fact B): a tree of length `ℓ` meets at most `4^d(1 + 2ℓ)` unit cubes),
(F2) `21^d ≤ N` (`S(Y)` has one cube plus ten layers),
(F3) `n_f ≤ (ρ + 2)^d N_Y`, `N_Y ≤ N` (L-106 (Fact C)).
-/

namespace YmLean

/-- `21 · 4^d ≤ 4 · 21^d` for `d ≥ 1`, i.e. `(4/21)^d ≤ 4/21`. -/
lemma four_pow_le (d : ℕ) (hd : 1 ≤ d) : 21 * (4 : ℝ) ^ d ≤ 4 * 21 ^ d := by
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hd
  have : (4 : ℝ) ^ k ≤ 21 ^ k := pow_le_pow_left₀ (by norm_num) (by norm_num) k
  rw [pow_add, pow_add]; nlinarith

/-- (F1), (F2) ⇒ `17 N ≤ 42 · 4^d ℓ` (SOURCES_FX_O1_VERIFY §3: `N ≤ (42/17)4^d ℓ`) and
`N/(3 · 4^d) ≤ ℓ` (L-236, first inequality). -/
theorem cube_count_sharp (d : ℕ) (hd : 1 ≤ d) (N ℓ : ℝ)
    (hF1 : N ≤ 4 ^ d * (1 + 2 * ℓ)) (hF2 : 21 ^ d ≤ N) :
    17 * N ≤ 42 * 4 ^ d * ℓ ∧ N / (3 * 4 ^ d) ≤ ℓ := by
  have h := four_pow_le d hd
  have h4 : (0 : ℝ) < 4 ^ d := by positivity
  have h17 : 17 * N ≤ 42 * 4 ^ d * ℓ := by nlinarith
  refine ⟨h17, ?_⟩
  rw [div_le_iff₀ (by positivity)]
  have hN : 0 ≤ N := le_trans (by positivity) hF2
  nlinarith

/-- L-236: (F1), (F2), (F3) ⇒ `ℓ ≥ N/(3 · 4^d)` and `ℓ ≥ n_f/(3 · 4^d (ρ + 2)^d)`.
`ρ ≥ 1` is the coarse/fine side ratio (only `ρ + 2 > 0` is used). -/
theorem cube_count_lower (d : ℕ) (hd : 1 ≤ d) (ρ nf N NY ℓ : ℝ) (hρ : 1 ≤ ρ)
    (hF1 : N ≤ 4 ^ d * (1 + 2 * ℓ)) (hF2 : 21 ^ d ≤ N)
    (hF3 : nf ≤ (ρ + 2) ^ d * NY) (hNY : NY ≤ N) :
    N / (3 * 4 ^ d) ≤ ℓ ∧ nf / (3 * 4 ^ d * (ρ + 2) ^ d) ≤ ℓ := by
  obtain ⟨_, h1⟩ := cube_count_sharp d hd N ℓ hF1 hF2
  refine ⟨h1, le_trans ?_ h1⟩
  have hr : (0 : ℝ) < (ρ + 2) ^ d := by positivity
  have h4 : (0 : ℝ) < 3 * 4 ^ d := by positivity
  rw [div_le_div_iff₀ (by positivity) h4]
  have : nf ≤ (ρ + 2) ^ d * N := hF3.trans (mul_le_mul_of_nonneg_left hNY hr.le)
  nlinarith

end YmLean

#print axioms YmLean.cube_count_sharp
#print axioms YmLean.cube_count_lower
