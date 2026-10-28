import YmLean.DetIdentities

/-!
# Abelian-sector value (U1_INFINITE_LATTICE.md Prop. 9.1): counting part

Per coarse cell of a k-step block (`N = L^{4k}` fine sites): `4N` abelian bond variables,
`4` constraints (coarse bonds), `N − 1` ghost directions (sites minus the anchor). The physical
input is equipartition plus `½⟨B, Δ₀ B⟩ = Σ_p (dB)_p² / 8`; it enters as the hypothesis
`(Σ_p E_p) / 8 = ½ · dim`, with `E_p` the expectation of `(dB)_p²` and `6N` plaquettes per cell.
-/

open Matrix Finset

namespace YmLean

/-- SU(2): `12N − 12 − 3(N − 1) = 9N − 9` (bond variables minus constraints minus ghosts). -/
theorem su2_count (N : ℤ) : 12 * N - 12 - 3 * (N - 1) = 9 * N - 9 := by ring

/-- σ₃ sector: `4N − 4 − (N − 1) = 3(N − 1)`. -/
theorem ab_count (N : ℤ) : 4 * N - 4 - (N - 1) = 3 * (N - 1) := by ring

/-- Equipartition: the Gaussian expectation of `⟨B, Δ B⟩` with covariance `Δ⁻¹` is
`tr(Δ Δ⁻¹) = dim`. -/
theorem equipartition {ι : Type*} [Fintype ι] [DecidableEq ι] (Δ : Matrix ι ι ℝ)
    (h : Δ.det ≠ 0) : (Δ * Δ⁻¹).trace = Fintype.card ι := by
  rw [mul_nonsing_inv _ (isUnit_iff_ne_zero.mpr h), trace_one]

/-- `S_k^{ab} = Ē/8 = (1 − L^{−4k})/4`, given equipartition over the `6N` plaquettes of a cell. -/
theorem abelian_share {π : Type*} (P : Finset π) (E : π → ℚ) (L k : ℕ) (hL : 0 < L)
    (hP : (P.card : ℚ) = 6 * (L : ℚ) ^ (4 * k))
    (hE : (∑ p ∈ P, E p) / 8 =
      (1 / 2) * (4 * (L : ℚ) ^ (4 * k) - 4 - ((L : ℚ) ^ (4 * k) - 1))) :
    (∑ p ∈ P, E p) / P.card / 8 = (1 - 1 / (L : ℚ) ^ (4 * k)) / 4 := by
  have hN : (L : ℚ) ^ (4 * k) ≠ 0 := pow_ne_zero _ (by exact_mod_cast hL.ne')
  have hs : ∑ p ∈ P, E p = 4 * (3 * ((L : ℚ) ^ (4 * k) - 1)) := by linarith
  rw [hP, hs]
  field_simp
  ring

/-- `S_k^{ab}` as a function of `L, k`. -/
def Sab (L k : ℕ) : ℚ := (1 - 1 / (L : ℚ) ^ (4 * k)) / 4

theorem Sab_values : Sab 2 1 = 15 / 64 ∧ Sab 3 1 = 20 / 81 ∧ Sab 2 2 = 255 / 1024 := by
  norm_num [Sab]

/-- Per-step increment `β_j^{ab}(0) = S_j − S_{j−1} = (1 − L^{−4}) L^{−4(j−1)} / 4`. -/
theorem βab (L j : ℕ) (hL : 0 < L) :
    Sab L (j + 1) - Sab L j = (1 - 1 / (L : ℚ) ^ 4) * (1 / (L : ℚ) ^ (4 * j)) / 4 := by
  have hL' : (L : ℚ) ≠ 0 := by exact_mod_cast hL.ne'
  simp only [Sab]
  rw [show 4 * (j + 1) = 4 * j + 4 by ring, pow_add]
  field_simp
  ring

end YmLean
