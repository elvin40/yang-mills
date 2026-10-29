import Mathlib.Analysis.SpecialFunctions.Trigonometric.Series
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.Analysis.Real.Pi.Bounds

/-!
# GPY holonomy potential: certified global minimum (continuum part, checker)

SOURCES_R3S1_GPY_MIN.md §1.2–§1.4, SOURCES_R3S1_GPY_MIN_IV.md. Statement check: `VERIFY_GpyMin.md`.

Coordinates in units of π: SU(2) pair angle x = π s, s ∈ [0, 2], centre s = 1; SU(3) alcove
x = π s, y = π t, s, t ≥ 0, s + t ≤ 2, centre (2/3, 2/3). With b(u) = 1/90 − u²/12 + u³/12 − u⁴/48
(B(πu) = π⁴ b(u), `GpyBernoulli.lean`), the continuum potentials minus their centre values are
* `G2 a s = 2a(cos πs + 1) − 4π²(b(s) − b(1))`,
* `G3 a s t = 2a(cos πs + cos πt + cos π(s+t) + 3/2) − 4π²(b(s) + b(t) + b(s+t) − 3b(2/3))`.

This file: rational Taylor bounds for cos and sin, a rational interval enclosure of cos(πu),
a 1D second-order box bound, the box checkers `chk2`, `chk3` (dyadic trees coded as base-4
naturals) with soundness proofs, and the local bounds near the centre. The certificates and the
main theorems are in `GpyMinCert.lean`.
-/

namespace YmLean.Gpy

open Real Finset Filter

/-! ## 1. Taylor bounds for cos and sin (alternating series) -/

section Taylor

theorem cos_terms_antitone {q : ℝ} (hq : q ^ 2 ≤ 2) :
    Antitone (fun n : ℕ => q ^ (2 * n) / ((2 * n).factorial : ℝ)) := by
  refine antitone_nat_of_succ_le (fun n => ?_)
  have hf : ((2 * (n + 1)).factorial : ℝ) = (2 * n + 2) * (2 * n + 1) * (2 * n).factorial := by
    rw [show 2 * (n + 1) = (2 * n + 1) + 1 by ring, Nat.factorial_succ, Nat.factorial_succ]
    push_cast; ring
  have hpos : (0 : ℝ) < (2 * n).factorial := by exact_mod_cast Nat.factorial_pos _
  rw [hf, div_le_div_iff₀ (by positivity) hpos]
  have h1 : q ^ (2 * (n + 1)) = q ^ (2 * n) * q ^ 2 := by rw [← pow_add]; ring_nf
  rw [h1]
  have hq0 : 0 ≤ q ^ (2 * n) := by rw [pow_mul]; positivity
  have : q ^ 2 ≤ (2 * n + 2) * (2 * n + 1) := by nlinarith [(Nat.cast_nonneg n : (0:ℝ) ≤ n)]
  calc q ^ (2 * n) * q ^ 2 * (2 * n).factorial
      ≤ q ^ (2 * n) * ((2 * n + 2) * (2 * n + 1)) * (2 * n).factorial := by gcongr
    _ = q ^ (2 * n) * ((2 * n + 2) * (2 * n + 1) * (2 * n).factorial) := by ring

theorem sin_terms_antitone {q : ℝ} (hq0 : 0 ≤ q) (hq : q ^ 2 ≤ 6) :
    Antitone (fun n : ℕ => q ^ (2 * n + 1) / ((2 * n + 1).factorial : ℝ)) := by
  refine antitone_nat_of_succ_le (fun n => ?_)
  have hf : ((2 * (n + 1) + 1).factorial : ℝ) =
      (2 * n + 3) * (2 * n + 2) * (2 * n + 1).factorial := by
    rw [show 2 * (n + 1) + 1 = (2 * n + 1) + 1 + 1 by ring, Nat.factorial_succ, Nat.factorial_succ]
    push_cast; ring
  have hpos : (0 : ℝ) < (2 * n + 1).factorial := by exact_mod_cast Nat.factorial_pos _
  rw [hf, div_le_div_iff₀ (by positivity) hpos]
  have h1 : q ^ (2 * (n + 1) + 1) = q ^ (2 * n + 1) * q ^ 2 := by rw [← pow_add]; ring_nf
  rw [h1]
  have hq0' : 0 ≤ q ^ (2 * n + 1) := by positivity
  have : q ^ 2 ≤ (2 * n + 3) * (2 * n + 2) := by nlinarith [(Nat.cast_nonneg n : (0:ℝ) ≤ n)]
  calc q ^ (2 * n + 1) * q ^ 2 * (2 * n + 1).factorial
      ≤ q ^ (2 * n + 1) * ((2 * n + 3) * (2 * n + 2)) * (2 * n + 1).factorial := by gcongr
    _ = q ^ (2 * n + 1) * ((2 * n + 3) * (2 * n + 2) * (2 * n + 1).factorial) := by ring

/-- Taylor lower bound for cos (6 terms) and upper bound (5 terms), over any field. -/
def cosLo {K : Type*} [Field K] (q : K) : K :=
  1 - q ^ 2 / 2 + q ^ 4 / 24 - q ^ 6 / 720 + q ^ 8 / 40320 - q ^ 10 / 3628800
def cosHi {K : Type*} [Field K] (q : K) : K :=
  1 - q ^ 2 / 2 + q ^ 4 / 24 - q ^ 6 / 720 + q ^ 8 / 40320
def sinLo {K : Type*} [Field K] (q : K) : K :=
  q - q ^ 3 / 6 + q ^ 5 / 120 - q ^ 7 / 5040 + q ^ 9 / 362880 - q ^ 11 / 39916800
def sinHi {K : Type*} [Field K] (q : K) : K :=
  q - q ^ 3 / 6 + q ^ 5 / 120 - q ^ 7 / 5040 + q ^ 9 / 362880

theorem cos_tendsto (q : ℝ) :
    Tendsto (fun n => ∑ i ∈ range n, (-1) ^ i * (q ^ (2 * i) / ((2 * i).factorial : ℝ)))
      atTop (nhds (cos q)) := by
  have := (Real.hasSum_cos q).tendsto_sum_nat
  simpa only [mul_div_assoc] using this

theorem sin_tendsto (q : ℝ) :
    Tendsto (fun n => ∑ i ∈ range n, (-1) ^ i * (q ^ (2 * i + 1) / ((2 * i + 1).factorial : ℝ)))
      atTop (nhds (sin q)) := by
  have := (Real.hasSum_sin q).tendsto_sum_nat
  simpa only [mul_div_assoc] using this

theorem cosLo_le {q : ℝ} (hq : q ^ 2 ≤ 2) : cosLo q ≤ cos q := by
  have := (cos_terms_antitone hq).alternating_series_le_tendsto (cos_tendsto q) 3
  simp only [Finset.sum_range_succ, Finset.sum_range_zero] at this
  norm_num [Nat.factorial] at this
  unfold cosLo; linarith

theorem le_cosHi {q : ℝ} (hq : q ^ 2 ≤ 2) : cos q ≤ cosHi q := by
  have := (cos_terms_antitone hq).tendsto_le_alternating_series (cos_tendsto q) 2
  simp only [Finset.sum_range_succ, Finset.sum_range_zero] at this
  norm_num [Nat.factorial] at this
  unfold cosHi; linarith

theorem sinLo_le {q : ℝ} (hq0 : 0 ≤ q) (hq : q ^ 2 ≤ 6) : sinLo q ≤ sin q := by
  have := (sin_terms_antitone hq0 hq).alternating_series_le_tendsto (sin_tendsto q) 3
  simp only [Finset.sum_range_succ, Finset.sum_range_zero] at this
  norm_num [Nat.factorial] at this
  unfold sinLo; linarith

theorem le_sinHi {q : ℝ} (hq0 : 0 ≤ q) (hq : q ^ 2 ≤ 6) : sin q ≤ sinHi q := by
  have := (sin_terms_antitone hq0 hq).tendsto_le_alternating_series (sin_tendsto q) 2
  simp only [Finset.sum_range_succ, Finset.sum_range_zero] at this
  norm_num [Nat.factorial] at this
  unfold sinHi; linarith

end Taylor

end YmLean.Gpy
