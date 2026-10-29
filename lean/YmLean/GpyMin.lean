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

/-! ## 2. Rational intervals and the enclosure of cos(πu) -/

section Enclosure

/-- π bounds used by the checker. -/
def PL : ℚ := 314159265 / 100000000
def PH : ℚ := 314159266 / 100000000

theorem PL_lt_pi : (PL : ℝ) < π := by
  have := Real.pi_gt_d20; unfold PL; push_cast; linarith
theorem pi_lt_PH : π < (PH : ℝ) := by
  have := Real.pi_lt_d20; unfold PH; push_cast; linarith

/-- A rational interval `(lo, hi)`. -/
abbrev Iv := ℚ × ℚ

/-- `x ∈ [lo, hi]`. -/
def Mem (x : ℝ) (I : Iv) : Prop := (I.1 : ℝ) ≤ x ∧ x ≤ (I.2 : ℝ)

def Iv.neg (I : Iv) : Iv := (-I.2, -I.1)
def Iv.add (I J : Iv) : Iv := (I.1 + J.1, I.2 + J.2)
def Iv.smul (c : ℚ) (I : Iv) : Iv := if 0 ≤ c then (c * I.1, c * I.2) else (c * I.2, c * I.1)
def Iv.mul (I J : Iv) : Iv :=
  (min (min (I.1 * J.1) (I.1 * J.2)) (min (I.2 * J.1) (I.2 * J.2)),
   max (max (I.1 * J.1) (I.1 * J.2)) (max (I.2 * J.1) (I.2 * J.2)))
/-- An upper bound for |x| on the interval. -/
def Iv.absHi (I : Iv) : ℚ := max |I.1| |I.2|

theorem Mem.neg {x : ℝ} {I : Iv} (h : Mem x I) : Mem (-x) I.neg := by
  unfold Mem Iv.neg at *; push_cast; constructor <;> linarith [h.1, h.2]

theorem Mem.add {x y : ℝ} {I J : Iv} (h : Mem x I) (h' : Mem y J) : Mem (x + y) (I.add J) := by
  unfold Mem Iv.add at *; push_cast; constructor <;> linarith [h.1, h.2, h'.1, h'.2]

theorem Mem.smul {x : ℝ} {I : Iv} (c : ℚ) (h : Mem x I) : Mem (c * x) (I.smul c) := by
  unfold Mem Iv.smul at *
  split_ifs with hc
  · have hc' : (0 : ℝ) ≤ c := by exact_mod_cast hc
    push_cast; constructor <;> nlinarith [h.1, h.2]
  · have hc' : (c : ℝ) < 0 := by exact_mod_cast (not_le.mp hc)
    push_cast; constructor <;> nlinarith [h.1, h.2]

theorem Mem.mul {x y : ℝ} {I J : Iv} (h : Mem x I) (h' : Mem y J) : Mem (x * y) (I.mul J) := by
  obtain ⟨h1, h2⟩ := h; obtain ⟨h3, h4⟩ := h'
  unfold Mem Iv.mul; push_cast
  constructor
  · -- x*y is above the min of the four corner products
    rcases le_total 0 y with hy | hy
    · have e1 : (I.1 : ℝ) * y ≤ x * y := mul_le_mul_of_nonneg_right h1 hy
      rcases le_total 0 (I.1 : ℝ) with ha | ha
      · have : (I.1 : ℝ) * J.1 ≤ I.1 * y := mul_le_mul_of_nonneg_left h3 ha
        exact le_trans (min_le_left _ _ |>.trans (min_le_left _ _)) (by linarith)
      · have : (I.1 : ℝ) * J.2 ≤ I.1 * y := mul_le_mul_of_nonpos_left h4 ha
        exact le_trans (min_le_left _ _ |>.trans (min_le_right _ _)) (by linarith)
    · have e1 : (I.2 : ℝ) * y ≤ x * y := mul_le_mul_of_nonpos_right h2 hy
      rcases le_total 0 (I.2 : ℝ) with ha | ha
      · have : (I.2 : ℝ) * J.1 ≤ I.2 * y := mul_le_mul_of_nonneg_left h3 ha
        exact le_trans (min_le_right _ _ |>.trans (min_le_left _ _)) (by linarith)
      · have : (I.2 : ℝ) * J.2 ≤ I.2 * y := mul_le_mul_of_nonpos_left h4 ha
        exact le_trans (min_le_right _ _ |>.trans (min_le_right _ _)) (by linarith)
  · rcases le_total 0 y with hy | hy
    · have e1 : x * y ≤ (I.2 : ℝ) * y := mul_le_mul_of_nonneg_right h2 hy
      rcases le_total 0 (I.2 : ℝ) with ha | ha
      · have : (I.2 : ℝ) * y ≤ I.2 * J.2 := mul_le_mul_of_nonneg_left h4 ha
        exact le_trans (by linarith) (le_max_right _ _ |>.trans (le_max_right _ _))
      · have : (I.2 : ℝ) * y ≤ I.2 * J.1 := mul_le_mul_of_nonpos_left h3 ha
        exact le_trans (by linarith) (le_max_left _ _ |>.trans (le_max_right _ _))
    · have e1 : x * y ≤ (I.1 : ℝ) * y := mul_le_mul_of_nonpos_right h1 hy
      rcases le_total 0 (I.1 : ℝ) with ha | ha
      · have : (I.1 : ℝ) * y ≤ I.1 * J.2 := mul_le_mul_of_nonneg_left h4 ha
        exact le_trans (by linarith) (le_max_right _ _ |>.trans (le_max_left _ _))
      · have : (I.1 : ℝ) * y ≤ I.1 * J.1 := mul_le_mul_of_nonpos_left h3 ha
        exact le_trans (by linarith) (le_max_left _ _ |>.trans (le_max_left _ _))

theorem Mem.abs_le {x : ℝ} {I : Iv} (h : Mem x I) : |x| ≤ (I.absHi : ℝ) := by
  obtain ⟨h1, h2⟩ := h
  unfold Iv.absHi; push_cast
  refine _root_.abs_le.mpr ⟨?_, ?_⟩
  · have := neg_abs_le (I.1 : ℝ); have := le_max_left |(I.1 : ℝ)| |(I.2 : ℝ)|; linarith
  · have := le_abs_self (I.2 : ℝ); have := le_max_right |(I.1 : ℝ)| |(I.2 : ℝ)|; linarith

theorem cast_cosLo (q : ℚ) : ((cosLo q : ℚ) : ℝ) = cosLo (q : ℝ) := by simp [cosLo]
theorem cast_cosHi (q : ℚ) : ((cosHi q : ℚ) : ℝ) = cosHi (q : ℝ) := by simp [cosHi]
theorem cast_sinLo (q : ℚ) : ((sinLo q : ℚ) : ℝ) = sinLo (q : ℝ) := by simp [sinLo]
theorem cast_sinHi (q : ℚ) : ((sinHi q : ℚ) : ℝ) = sinHi (q : ℝ) := by simp [sinHi]

def fullIv : Iv := (-1, 1)
theorem mem_full_cos (x : ℝ) : Mem (cos x) fullIv := by
  unfold Mem fullIv; push_cast; exact ⟨neg_one_le_cos x, cos_le_one x⟩

/-- Enclosure of cos(πu) for u ∈ [0, 1/2] (cos Taylor on [0, 1/4], sin Taylor beyond). -/
def cpiB (u : ℚ) : Iv :=
  if 0 ≤ u ∧ u ≤ 1 / 4 then (cosLo (PH * u), cosHi (PL * u))
  else if 1 / 4 < u ∧ u ≤ 1 / 2 then (sinLo (PL * (1 / 2 - u)), sinHi (PH * (1 / 2 - u)))
  else fullIv
def cpiC (u : ℚ) : Iv :=
  if 0 ≤ u ∧ u ≤ 1 / 2 then cpiB u else if 1 / 2 < u ∧ u ≤ 1 then (cpiB (1 - u)).neg else fullIv
def cpiD (u : ℚ) : Iv := if u ≤ 1 then cpiC u else cpiC (2 - u)
def cpiE (u : ℚ) : Iv := if u ≤ 2 then cpiD u else cpiD (u - 2)
/-- Enclosure of cos(πu), any rational u (trivial [−1, 1] outside |u| ≤ 4). -/
def cpi (u : ℚ) : Iv := cpiE |u|

theorem PL_val : (PL : ℝ) = 314159265 / 100000000 := by unfold PL; push_cast; ring
theorem PH_val : (PH : ℝ) = 314159266 / 100000000 := by unfold PH; push_cast; ring

theorem qcast_le {u : ℚ} {c : ℚ} (h : u ≤ c) : (u : ℝ) ≤ (c : ℝ) := by exact_mod_cast h
theorem qcast_lt {u : ℚ} {c : ℚ} (h : u < c) : (u : ℝ) < (c : ℝ) := by exact_mod_cast h

theorem mem_cpiB (u : ℚ) : Mem (cos (π * u)) (cpiB u) := by
  have hL := PL_lt_pi; have hH := pi_lt_PH
  have hPL := PL_val; have hPH := PH_val
  unfold cpiB
  split_ifs with h1 h2
  · obtain ⟨h0, h4⟩ := h1
    have h0' : (0 : ℝ) ≤ u := by exact_mod_cast h0
    have h4' : (u : ℝ) ≤ 1 / 4 := by have := qcast_le h4; push_cast at this; linarith
    have hHu : (PH : ℝ) * u ≤ π := by nlinarith
    unfold Mem; rw [cast_cosLo, cast_cosHi]; push_cast
    constructor
    · refine le_trans (cosLo_le ?_) (cos_le_cos_of_nonneg_of_le_pi (by positivity) hHu ?_)
      · rw [hPH]; nlinarith
      · nlinarith
    · refine le_trans (cos_le_cos_of_nonneg_of_le_pi (by rw [hPL]; positivity) (by nlinarith) ?_)
        (le_cosHi ?_)
      · nlinarith
      · rw [hPL]; nlinarith
  · obtain ⟨h0, h4⟩ := h2
    have h0' : (1 / 4 : ℝ) < u := by have := qcast_lt h0; push_cast at this; linarith
    have h4' : (u : ℝ) ≤ 1 / 2 := by have := qcast_le h4; push_cast at this; linarith
    have hcs : cos (π * u) = sin (π * (1 / 2 - u)) := by
      rw [← Real.cos_pi_div_two_sub]; congr 1; ring
    have hv0 : (0 : ℝ) ≤ 1 / 2 - u := by linarith
    have hv1 : (1 / 2 : ℝ) - u ≤ 1 / 4 := by linarith
    unfold Mem; rw [hcs, cast_sinLo, cast_sinHi]; push_cast
    constructor
    · refine le_trans (sinLo_le (by rw [hPL]; positivity) (by rw [hPL]; nlinarith)) ?_
      apply sin_le_sin_of_le_of_le_pi_div_two (by nlinarith) (by nlinarith) (by nlinarith)
    · refine le_trans ?_ (le_sinHi (by rw [hPH]; positivity) (by rw [hPH]; nlinarith))
      apply sin_le_sin_of_le_of_le_pi_div_two (by nlinarith) (by nlinarith) (by nlinarith)
  · exact mem_full_cos _

theorem mem_cpiC (u : ℚ) : Mem (cos (π * u)) (cpiC u) := by
  unfold cpiC
  split_ifs with h1 h2
  · exact mem_cpiB u
  · have := (mem_cpiB (1 - u)).neg
    have e : cos (π * u) = -cos (π * ((1 - u : ℚ) : ℝ)) := by
      push_cast; rw [← Real.cos_pi_sub]; congr 1; ring
    rw [e]; exact this
  · exact mem_full_cos _

theorem mem_cpiD (u : ℚ) : Mem (cos (π * u)) (cpiD u) := by
  unfold cpiD
  split_ifs
  · exact mem_cpiC u
  · have e : cos (π * u) = cos (π * ((2 - u : ℚ) : ℝ)) := by
      push_cast; rw [mul_sub, ← Real.cos_two_pi_sub (π * u)]; ring_nf
    rw [e]; exact mem_cpiC _

theorem mem_cpiE (u : ℚ) : Mem (cos (π * u)) (cpiE u) := by
  unfold cpiE
  split_ifs
  · exact mem_cpiD u
  · have e : cos (π * u) = cos (π * ((u - 2 : ℚ) : ℝ)) := by
      push_cast; rw [show π * ((u : ℝ) - 2) = π * u - 2 * π by ring, Real.cos_sub_two_pi]
    rw [e]; exact mem_cpiD _

theorem mem_cpi (u : ℚ) : Mem (cos (π * u)) (cpi u) := by
  unfold cpi
  have e : cos (π * u) = cos (π * ((|u| : ℚ) : ℝ)) := by
    push_cast
    rcases le_total 0 (u : ℝ) with h | h
    · rw [abs_of_nonneg h]
    · rw [abs_of_nonpos h, mul_neg, Real.cos_neg]
  rw [e]; exact mem_cpiE _

theorem mem_spi (u : ℚ) : Mem (sin (π * u)) (cpi (1 / 2 - u)) := by
  have e : sin (π * u) = cos (π * ((1 / 2 - u : ℚ) : ℝ)) := by
    push_cast; rw [← Real.cos_pi_div_two_sub]; congr 1; ring
  rw [e]; exact mem_cpi _

end Enclosure

/-! ## 3. The continuum potentials and the box checkers -/

section Checker

/-- b(u) = B(πu)/π⁴ on [0, 2] and its derivatives. -/
def bP {K : Type*} [Field K] (u : K) : K := 1 / 90 - u ^ 2 / 12 + u ^ 3 / 12 - u ^ 4 / 48
def b1P {K : Type*} [Field K] (u : K) : K := -u / 6 + u ^ 2 / 4 - u ^ 3 / 12
def b2P {K : Type*} [Field K] (u : K) : K := -1 / 6 + u / 2 - u ^ 2 / 4
def b3P {K : Type*} [Field K] (u : K) : K := 1 / 2 - u / 2

theorem cast_bP (u : ℚ) : ((bP u : ℚ) : ℝ) = bP (u : ℝ) := by simp [bP]
theorem cast_b1P (u : ℚ) : ((b1P u : ℚ) : ℝ) = b1P (u : ℝ) := by simp [b1P]
theorem cast_b2P (u : ℚ) : ((b2P u : ℚ) : ℝ) = b2P (u : ℝ) := by simp [b2P]
theorem cast_b3P (u : ℚ) : ((b3P u : ℚ) : ℝ) = b3P (u : ℝ) := by simp [b3P]

/-- SU(3) continuum potential minus its centre value, alcove coordinates in units of π. -/
noncomputable def G3 (a s t : ℝ) : ℝ :=
  2 * a * (cos (π * s) + cos (π * t) + cos (π * (s + t)) + 3 / 2)
    - 4 * π ^ 2 * (bP s + bP t + bP (s + t) - 3 * bP (2 / 3 : ℝ))
/-- SU(2) continuum potential minus its centre value. -/
noncomputable def G2 (a s : ℝ) : ℝ := 2 * a * (cos (π * s) + 1) - 4 * π ^ 2 * (bP s - bP (1 : ℝ))
/-- Squared distance to the centre in orthonormal Cartan coordinates. -/
noncomputable def d3sq (s t : ℝ) : ℝ :=
  2 / 3 * π ^ 2 * ((s - 2 / 3) ^ 2 + (s - 2 / 3) * (t - 2 / 3) + (t - 2 / 3) ^ 2)
noncomputable def d2sq (s : ℝ) : ℝ := π ^ 2 * (s - 1) ^ 2 / 2

/-- Second-order remainder bound of the pair function on |v| ≤ w. -/
def Ierr (a m w : ℚ) : ℚ :=
  2 * a * ((PH * w) ^ 2 / 2 + (PH * w) ^ 3 / 6) + 4 * PH ^ 2 * (|b2P m| * w ^ 2 / 2 + |b3P m| * w ^ 3 / 6)
def P1 : Iv := (PL, PH)
def P2 : Iv := (PL ^ 2, PH ^ 2)
/-- Enclosure of the pair derivative −2aπ sin(πm) − 4π² b′(m). -/
def gIv (a m : ℚ) : Iv := ((P1.mul (cpi (1 / 2 - m))).smul (-2 * a)).add (P2.smul (-4 * b1P m))

/-- Lower bound of `G3 a` on the box [sm ± w] × [tm ± w]. -/
def lb3 (a sm tm w : ℚ) : ℚ :=
  ((((cpi sm).add (cpi tm)).add (cpi (sm + tm))).smul (2 * a) |>.add (3 * a, 3 * a)
      |>.add (P2.smul (-4 * (bP sm + bP tm + bP (sm + tm) - 3 * bP (2 / 3 : ℚ))))).1
    - ((gIv a sm).add (gIv a (sm + tm))).absHi * w - ((gIv a tm).add (gIv a (sm + tm))).absHi * w
    - (Ierr a sm w + Ierr a tm w + Ierr a (sm + tm) (2 * w))
/-- Upper bound of `d3sq` on the box (using d² ≤ π²(δs² + δt²)). -/
def dhi3 (sm tm w : ℚ) : ℚ := PH ^ 2 * ((|sm - 2 / 3| + w) ^ 2 + (|tm - 2 / 3| + w) ^ 2)

def lb2 (a m w : ℚ) : ℚ :=
  ((((cpi m).smul (2 * a)).add (2 * a, 2 * a)).add (P2.smul (-4 * (bP m - bP (1 : ℚ))))).1
    - (gIv a m).absHi * w - Ierr a m w
def dhi2 (m w : ℚ) : ℚ := PH ^ 2 / 2 * (|m - 1| + w) ^ 2

/-- SU(3) certificate checker. `code` is a preorder tree in base 4 (least significant digit
first): 0 = box bound, 1 = outside the alcove, 2 = inside the local hexagon, 3 = split in four.
Returns the unread rest of `code` on success. -/
def chk3 (a M0 M2 τ : ℚ) : ℕ → ℚ → ℚ → ℚ → ℕ → Option ℕ
  | 0, _, _, _, _ => none
  | f + 1, sm, tm, w, code =>
    match code % 4 with
    | 0 => if M0 ≤ lb3 a sm tm w ∨ M2 * dhi3 sm tm w ≤ lb3 a sm tm w then some (code / 4) else none
    | 1 => if 2 < (sm - w) + (tm - w) then some (code / 4) else none
    | 2 => if sm + w - 2 / 3 ≤ τ ∧ -τ ≤ sm - w - 2 / 3 ∧ tm + w - 2 / 3 ≤ τ ∧ -τ ≤ tm - w - 2 / 3 ∧
          sm + tm + 2 * w - 4 / 3 ≤ τ ∧ -τ ≤ sm + tm - 2 * w - 4 / 3 then some (code / 4) else none
    | _ =>
      (chk3 a M0 M2 τ f (sm - w / 2) (tm - w / 2) (w / 2) (code / 4)).bind fun r1 =>
      (chk3 a M0 M2 τ f (sm + w / 2) (tm - w / 2) (w / 2) r1).bind fun r2 =>
      (chk3 a M0 M2 τ f (sm - w / 2) (tm + w / 2) (w / 2) r2).bind fun r3 =>
      chk3 a M0 M2 τ f (sm + w / 2) (tm + w / 2) (w / 2) r3

/-- SU(2) certificate checker (binary tree: 0 = box bound, 2 = local interval, 3 = split). -/
def chk2 (a M0 M2 τ : ℚ) : ℕ → ℚ → ℚ → ℕ → Option ℕ
  | 0, _, _, _ => none
  | f + 1, m, w, code =>
    match code % 4 with
    | 0 => if M0 ≤ lb2 a m w ∨ M2 * dhi2 m w ≤ lb2 a m w then some (code / 4) else none
    | 2 => if m + w - 1 ≤ τ ∧ -τ ≤ m - w - 1 then some (code / 4) else none
    | 3 =>
      (chk2 a M0 M2 τ f (m - w / 2) (w / 2) (code / 4)).bind fun r1 =>
      chk2 a M0 M2 τ f (m + w / 2) (w / 2) r1
    | _ => none

end Checker

/-! ## 4. Soundness of the box bounds -/

section BoxBounds

theorem pi_mem_P1 : Mem π P1 := ⟨PL_lt_pi.le, pi_lt_PH.le⟩

theorem pi_sq_mem_P2 : Mem (π ^ 2) P2 := by
  have h1 := PL_lt_pi; have h2 := pi_lt_PH
  have h0 : (0 : ℝ) < PL := by rw [PL_val]; norm_num
  unfold Mem P2; push_cast; constructor <;> nlinarith

theorem mem_const (c : ℚ) : Mem (c : ℝ) (c, c) := ⟨le_rfl, le_rfl⟩

/-- Real remainder of the pair function on |v| ≤ w. -/
noncomputable def Ereal (a m w : ℝ) : ℝ :=
  2 * a * ((π * w) ^ 2 / 2 + (π * w) ^ 3 / 6) + 4 * π ^ 2 * (|b2P m| * w ^ 2 / 2 + |b3P m| * w ^ 3 / 6)

theorem Ereal_le {a w : ℚ} (m : ℚ) (ha : 0 ≤ a) (hw : 0 ≤ w) : Ereal a m w ≤ (Ierr a m w : ℝ) := by
  have h2 := pi_lt_PH; have hp := pi_pos
  have ha' : (0 : ℝ) ≤ a := by exact_mod_cast ha
  have hw' : (0 : ℝ) ≤ w := by exact_mod_cast hw
  unfold Ereal Ierr; push_cast; rw [cast_b2P, cast_b3P]
  have e1 : π * w ≤ PH * w := by nlinarith
  have e2 : (π * w) ^ 2 ≤ (PH * w) ^ 2 := pow_le_pow_left₀ (by positivity) e1 2
  have e3 : (π * w) ^ 3 ≤ (PH * w) ^ 3 := pow_le_pow_left₀ (by positivity) e1 3
  have e4 : π ^ 2 ≤ (PH : ℝ) ^ 2 := pow_le_pow_left₀ hp.le h2.le 2
  have hb : 0 ≤ |b2P (m : ℝ)| * (w : ℝ) ^ 2 / 2 + |b3P (m : ℝ)| * (w : ℝ) ^ 3 / 6 := by positivity
  have k1 : 2 * (a : ℝ) * ((π * w) ^ 2 / 2 + (π * w) ^ 3 / 6) ≤
      2 * (a : ℝ) * (((PH : ℝ) * w) ^ 2 / 2 + ((PH : ℝ) * w) ^ 3 / 6) := by gcongr
  have k2 : 4 * π ^ 2 * (|b2P (m : ℝ)| * (w : ℝ) ^ 2 / 2 + |b3P (m : ℝ)| * (w : ℝ) ^ 3 / 6) ≤
      4 * (PH : ℝ) ^ 2 * (|b2P (m : ℝ)| * (w : ℝ) ^ 2 / 2 + |b3P (m : ℝ)| * (w : ℝ) ^ 3 / 6) := by
    gcongr
  linarith

/-- Second-order lower bound of the pair function q(u) = 2a cos(πu) − 4π² b(u) on |v| ≤ w. -/
theorem pair_bound {a : ℝ} (ha : 0 ≤ a) (m v w : ℝ) (hv : |v| ≤ w) :
    2 * a * cos (π * m) - 4 * π ^ 2 * bP m + (-2 * a * π * sin (π * m) - 4 * π ^ 2 * b1P m) * v
      - Ereal a m w ≤ 2 * a * cos (π * (m + v)) - 4 * π ^ 2 * bP (m + v) := by
  have hp := pi_pos
  have hae : |π * v| ≤ π * w := by
    rw [abs_mul, abs_of_pos hp]; exact mul_le_mul_of_nonneg_left hv hp.le
  have hc : cos (π * (m + v)) = cos (π * m) * cos (π * v) - sin (π * m) * sin (π * v) := by
    rw [mul_add, cos_add]
  have h1 : 1 - (π * v) ^ 2 / 2 ≤ cos (π * v) := one_sub_sq_div_two_le_cos
  have h1' : cos (π * v) ≤ 1 := cos_le_one _
  have h2 := abs_sub_sin_le (π * v)
  have hcm := abs_cos_le_one (π * m)
  have hsm := abs_sin_le_one (π * m)
  have k1 : -(1 - cos (π * v)) ≤ cos (π * m) * (cos (π * v) - 1) := by
    have : |cos (π * m) * (cos (π * v) - 1)| ≤ 1 - cos (π * v) := by
      rw [abs_mul]
      calc |cos (π * m)| * |cos (π * v) - 1| ≤ 1 * |cos (π * v) - 1| := by gcongr
        _ = 1 - cos (π * v) := by rw [one_mul, abs_sub_comm, abs_of_nonneg (by linarith)]
    linarith [neg_abs_le (cos (π * m) * (cos (π * v) - 1))]
  have k2 : -(|π * v| ^ 3 / 6) ≤ sin (π * m) * (π * v - sin (π * v)) := by
    have : |sin (π * m) * (π * v - sin (π * v))| ≤ |π * v| ^ 3 / 6 := by
      rw [abs_mul]
      calc |sin (π * m)| * |π * v - sin (π * v)| ≤ 1 * (|π * v| ^ 3 / 6) := by gcongr
        _ = _ := one_mul _
    linarith [neg_abs_le (sin (π * m) * (π * v - sin (π * v)))]
  have k3 : (π * v) ^ 2 ≤ (π * w) ^ 2 := by
    rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) hae 2
  have k4 : |π * v| ^ 3 ≤ (π * w) ^ 3 := pow_le_pow_left₀ (abs_nonneg _) hae 3
  have hcos : cos (π * m) - π * v * sin (π * m) - ((π * w) ^ 2 / 2 + (π * w) ^ 3 / 6)
      ≤ cos (π * (m + v)) := by
    rw [hc]
    have e : cos (π * m) * cos (π * v) - sin (π * m) * sin (π * v) =
        cos (π * m) - π * v * sin (π * m) + cos (π * m) * (cos (π * v) - 1)
          + sin (π * m) * (π * v - sin (π * v)) := by ring
    rw [e]; linarith
  have hb : bP (m + v) ≤ bP m + b1P m * v + (|b2P m| * w ^ 2 / 2 + |b3P m| * w ^ 3 / 6) := by
    have ht : bP (m + v) =
        bP m + b1P m * v + (b2P m * v ^ 2 / 2 + b3P m * v ^ 3 / 6 - v ^ 4 / 48) := by
      unfold bP b1P b2P b3P; ring
    have hv2 : v ^ 2 ≤ w ^ 2 := by rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) hv 2
    have hv3 : |v| ^ 3 ≤ w ^ 3 := pow_le_pow_left₀ (abs_nonneg _) hv 3
    have q1 : b2P m * v ^ 2 ≤ |b2P m| * w ^ 2 := by
      have := le_abs_self (b2P m); have := sq_nonneg v
      nlinarith [abs_nonneg (b2P m)]
    have q2 : b3P m * v ^ 3 ≤ |b3P m| * w ^ 3 := by
      have h := le_abs_self (b3P m * v ^ 3)
      rw [abs_mul, abs_pow] at h
      nlinarith [abs_nonneg (b3P m)]
    have q3 : 0 ≤ v ^ 4 := by positivity
    rw [ht]; linarith
  unfold Ereal
  have t1 := mul_le_mul_of_nonneg_left hcos (by linarith : (0 : ℝ) ≤ 2 * a)
  have t2 := mul_le_mul_of_nonneg_left hb (by positivity : (0 : ℝ) ≤ 4 * π ^ 2)
  linear_combination t1 + t2

theorem lin_lower (g v w : ℝ) (G : ℚ) (hg : |g| ≤ (G : ℝ)) (hv : |v| ≤ w) :
    -((G : ℝ) * w) ≤ g * v := by
  have h0 : 0 ≤ |v| := abs_nonneg v
  have : |g * v| ≤ (G : ℝ) * w := by
    rw [abs_mul]; exact mul_le_mul hg hv h0 (le_trans (abs_nonneg _) hg)
  linarith [neg_abs_le (g * v)]

theorem mem_gIv (a m : ℚ) :
    Mem (-2 * a * π * sin (π * m) - 4 * π ^ 2 * b1P (m : ℝ)) (gIv a m) := by
  have h := ((pi_mem_P1.mul (mem_spi m)).smul (-2 * a)).add (pi_sq_mem_P2.smul (-4 * b1P m))
  unfold gIv
  have e : (-2 * a * π * sin (π * m) - 4 * π ^ 2 * b1P (m : ℝ)) =
      ((-2 * a : ℚ) : ℝ) * (π * sin (π * m)) + ((-4 * b1P m : ℚ) : ℝ) * π ^ 2 := by
    push_cast; rw [cast_b1P]; ring
  rw [e]; exact h

theorem lb3_sound {a : ℚ} (ha : 0 ≤ a) (sm tm w : ℚ) {s t : ℝ} (hs : |s - sm| ≤ w)
    (ht : |t - tm| ≤ w) : (lb3 a sm tm w : ℝ) ≤ G3 a s t := by
  have hw : (0 : ℝ) ≤ w := le_trans (abs_nonneg _) hs
  have hwq : (0 : ℚ) ≤ w := by exact_mod_cast hw
  have ha' : (0 : ℝ) ≤ a := by exact_mod_cast ha
  have h3 : |(s - sm) + (t - tm)| ≤ ((2 * w : ℚ) : ℝ) := by
    push_cast
    calc _ ≤ |s - sm| + |t - tm| := abs_add_le _ _
      _ ≤ _ := by linarith
  have p1 := pair_bound ha' sm (s - sm) w hs
  have p2 := pair_bound ha' tm (t - tm) w ht
  have p3 := pair_bound ha' ((sm + tm : ℚ) : ℝ) ((s - sm) + (t - tm)) ((2 * w : ℚ) : ℝ) h3
  have e1 : (sm : ℝ) + (s - sm) = s := by ring
  have e2 : (tm : ℝ) + (t - tm) = t := by ring
  have e3 : ((sm + tm : ℚ) : ℝ) + ((s - sm) + (t - tm)) = s + t := by push_cast; ring
  rw [e1] at p1; rw [e2] at p2; rw [e3] at p3
  have E1 := Ereal_le sm ha hwq
  have E2 := Ereal_le tm ha hwq
  have E3 := Ereal_le (sm + tm) ha (by linarith : (0 : ℚ) ≤ 2 * w)
  have hG := (((((mem_cpi sm).add (mem_cpi tm)).add (mem_cpi (sm + tm))).smul (2 * a)).add
    (mem_const (3 * a))).add
    (pi_sq_mem_P2.smul (-4 * (bP sm + bP tm + bP (sm + tm) - 3 * bP (2 / 3 : ℚ))))
  have g1 := mem_gIv a sm; have g2 := mem_gIv a tm; have g3 := mem_gIv a (sm + tm)
  have gs := (g1.add g3).abs_le; have gt := (g2.add g3).abs_le
  have l1 := lin_lower _ (s - sm) w _ gs hs
  have l2 := lin_lower _ (t - tm) w _ gt ht
  unfold lb3 G3
  unfold Mem at hG
  have hG1 := hG.1
  push_cast [cast_bP] at hG1 l1 l2 E1 E2 E3 p3 ⊢
  linear_combination hG1 + p1 + p2 + p3 + l1 + l2 + E1 + E2 + E3

theorem lb2_sound {a : ℚ} (ha : 0 ≤ a) (m w : ℚ) {s : ℝ} (hs : |s - m| ≤ w) :
    (lb2 a m w : ℝ) ≤ G2 a s := by
  have hw : (0 : ℝ) ≤ w := le_trans (abs_nonneg _) hs
  have hwq : (0 : ℚ) ≤ w := by exact_mod_cast hw
  have ha' : (0 : ℝ) ≤ a := by exact_mod_cast ha
  have p1 := pair_bound ha' m (s - m) w hs
  have e1 : (m : ℝ) + (s - m) = s := by ring
  rw [e1] at p1
  have E1 := Ereal_le m ha hwq
  have hG := (((mem_cpi m).smul (2 * a)).add (mem_const (2 * a))).add
    (pi_sq_mem_P2.smul (-4 * (bP m - bP (1 : ℚ))))
  have g := (mem_gIv a m).abs_le
  have l1 := lin_lower _ (s - m) w _ g hs
  unfold lb2 G2
  unfold Mem at hG
  have hG1 := hG.1
  push_cast [cast_bP] at hG1 l1 E1 ⊢
  linear_combination hG1 + p1 + l1 + E1

end BoxBounds

/-! ## 5. Soundness of the checkers -/

section CheckerSound

theorem child_lo {s : ℝ} {m w : ℚ} (h : |s - m| ≤ w) (h' : s ≤ m) :
    |s - ((m - w / 2 : ℚ) : ℝ)| ≤ ((w / 2 : ℚ) : ℝ) := by
  push_cast; rw [abs_le] at *; constructor <;> linarith [h.1, h.2]
theorem child_hi {s : ℝ} {m w : ℚ} (h : |s - m| ≤ w) (h' : (m : ℝ) ≤ s) :
    |s - ((m + w / 2 : ℚ) : ℝ)| ≤ ((w / 2 : ℚ) : ℝ) := by
  push_cast; rw [abs_le] at *; constructor <;> linarith [h.1, h.2]

theorem d3sq_le_dhi3 {s t : ℝ} {sm tm w : ℚ} (hs : |s - sm| ≤ w) (ht : |t - tm| ≤ w) :
    d3sq s t ≤ (dhi3 sm tm w : ℝ) := by
  have hp := pi_pos; have hH := pi_lt_PH
  have ax : |s - 2 / 3| ≤ |(sm : ℝ) - 2 / 3| + w := by
    calc |s - 2 / 3| = |(s - sm) + ((sm : ℝ) - 2 / 3)| := by ring_nf
      _ ≤ |s - sm| + |(sm : ℝ) - 2 / 3| := abs_add_le _ _
      _ ≤ _ := by linarith
  have ay : |t - 2 / 3| ≤ |(tm : ℝ) - 2 / 3| + w := by
    calc |t - 2 / 3| = |(t - tm) + ((tm : ℝ) - 2 / 3)| := by ring_nf
      _ ≤ |t - tm| + |(tm : ℝ) - 2 / 3| := abs_add_le _ _
      _ ≤ _ := by linarith
  have bx : (s - 2 / 3) ^ 2 ≤ (|(sm : ℝ) - 2 / 3| + w) ^ 2 := by
    rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) ax 2
  have by' : (t - 2 / 3) ^ 2 ≤ (|(tm : ℝ) - 2 / 3| + w) ^ 2 := by
    rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) ay 2
  have hq : (s - 2 / 3) ^ 2 + (s - 2 / 3) * (t - 2 / 3) + (t - 2 / 3) ^ 2 ≤
      3 / 2 * ((s - 2 / 3) ^ 2 + (t - 2 / 3) ^ 2) := by nlinarith [sq_nonneg (s - t)]
  have h4 : π ^ 2 ≤ (PH : ℝ) ^ 2 := pow_le_pow_left₀ hp.le hH.le 2
  unfold d3sq dhi3; push_cast
  calc 2 / 3 * π ^ 2 * ((s - 2 / 3) ^ 2 + (s - 2 / 3) * (t - 2 / 3) + (t - 2 / 3) ^ 2)
      ≤ 2 / 3 * π ^ 2 * (3 / 2 * ((s - 2 / 3) ^ 2 + (t - 2 / 3) ^ 2)) := by gcongr
    _ = π ^ 2 * ((s - 2 / 3) ^ 2 + (t - 2 / 3) ^ 2) := by ring
    _ ≤ (PH : ℝ) ^ 2 * ((|(sm : ℝ) - 2 / 3| + w) ^ 2 + (|(tm : ℝ) - 2 / 3| + w) ^ 2) := by
        gcongr

theorem d2sq_le_dhi2 {s : ℝ} {m w : ℚ} (hs : |s - m| ≤ w) : d2sq s ≤ (dhi2 m w : ℝ) := by
  have hp := pi_pos; have hH := pi_lt_PH
  have ax : |s - 1| ≤ |(m : ℝ) - 1| + w := by
    calc |s - 1| = |(s - m) + ((m : ℝ) - 1)| := by ring_nf
      _ ≤ |s - m| + |(m : ℝ) - 1| := abs_add_le _ _
      _ ≤ _ := by linarith
  have bx : (s - 1) ^ 2 ≤ (|(m : ℝ) - 1| + w) ^ 2 := by
    rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) ax 2
  have h4 : π ^ 2 ≤ (PH : ℝ) ^ 2 := pow_le_pow_left₀ hp.le hH.le 2
  unfold d2sq dhi2; push_cast
  calc π ^ 2 * (s - 1) ^ 2 / 2 ≤ (PH : ℝ) ^ 2 * (|(m : ℝ) - 1| + w) ^ 2 / 2 := by gcongr
    _ = (PH : ℝ) ^ 2 / 2 * (|(m : ℝ) - 1| + w) ^ 2 := by ring

/-- What a certified SU(3) box gives: the point is in the local hexagon or the bound holds. -/
def Good3 (a M0 M2 τ : ℚ) (s t : ℝ) : Prop :=
  (|s - 2 / 3| ≤ τ ∧ |t - 2 / 3| ≤ τ ∧ |s + t - 4 / 3| ≤ τ) ∨
    min (M0 : ℝ) (M2 * d3sq s t) ≤ G3 a s t

def Good2 (a M0 M2 τ : ℚ) (s : ℝ) : Prop :=
  |s - 1| ≤ τ ∨ min (M0 : ℝ) (M2 * d2sq s) ≤ G2 a s

theorem chk3_sound {a M0 M2 τ : ℚ} (ha : 0 ≤ a) (hM2 : 0 ≤ M2) :
    ∀ (f : ℕ) (sm tm w : ℚ) (code r : ℕ), chk3 a M0 M2 τ f sm tm w code = some r →
      ∀ s t : ℝ, |s - sm| ≤ w → |t - tm| ≤ w → s + t ≤ 2 → Good3 a M0 M2 τ s t := by
  intro f
  induction f with
  | zero => intro sm tm w code r h; simp [chk3] at h
  | succ f ih =>
    intro sm tm w code r h s t hs ht hst
    simp only [chk3] at h
    split at h
    · split_ifs at h with hc
      right
      have hlb := lb3_sound ha sm tm w hs ht
      rcases hc with hc | hc
      · exact le_trans (min_le_left _ _) (le_trans (by exact_mod_cast hc) hlb)
      · have hd := d3sq_le_dhi3 hs ht
        refine le_trans (min_le_right _ _) (le_trans ?_ (le_trans (qcast_le hc) hlb))
        push_cast; exact mul_le_mul_of_nonneg_left hd (by exact_mod_cast hM2)
    · split_ifs at h with hc
      exfalso
      have := qcast_lt hc; push_cast at this
      rw [abs_le] at hs ht; linarith [hs.1, ht.1]
    · split_ifs at h with hc
      obtain ⟨c1, c2, c3, c4, c5, c6⟩ := hc
      have c1 := qcast_le c1; have c2 := qcast_le c2; have c3 := qcast_le c3
      have c4 := qcast_le c4; have c5 := qcast_le c5; have c6 := qcast_le c6
      push_cast at c1 c2 c3 c4 c5 c6
      left; rw [abs_le] at hs ht
      refine ⟨abs_le.mpr ⟨?_, ?_⟩, abs_le.mpr ⟨?_, ?_⟩, abs_le.mpr ⟨?_, ?_⟩⟩ <;>
        linarith [hs.1, hs.2, ht.1, ht.2]
    · simp only [Option.bind_eq_some_iff] at h
      obtain ⟨r1, h1, r2, h2, r3, h3, h4⟩ := h
      rcases le_total s sm with hs' | hs' <;> rcases le_total t tm with ht' | ht'
      · exact ih _ _ _ _ _ h1 s t (child_lo hs hs') (child_lo ht ht') hst
      · exact ih _ _ _ _ _ h3 s t (child_lo hs hs') (child_hi ht ht') hst
      · exact ih _ _ _ _ _ h2 s t (child_hi hs hs') (child_lo ht ht') hst
      · exact ih _ _ _ _ _ h4 s t (child_hi hs hs') (child_hi ht ht') hst

theorem chk2_sound {a M0 M2 τ : ℚ} (ha : 0 ≤ a) (hM2 : 0 ≤ M2) :
    ∀ (f : ℕ) (m w : ℚ) (code r : ℕ), chk2 a M0 M2 τ f m w code = some r →
      ∀ s : ℝ, |s - m| ≤ w → Good2 a M0 M2 τ s := by
  intro f
  induction f with
  | zero => intro m w code r h; simp [chk2] at h
  | succ f ih =>
    intro m w code r h s hs
    simp only [chk2] at h
    split at h
    · split_ifs at h with hc
      right
      have hlb := lb2_sound ha m w hs
      rcases hc with hc | hc
      · exact le_trans (min_le_left _ _) (le_trans (by exact_mod_cast hc) hlb)
      · have hd := d2sq_le_dhi2 hs
        refine le_trans (min_le_right _ _) (le_trans ?_ (le_trans (qcast_le hc) hlb))
        push_cast; exact mul_le_mul_of_nonneg_left hd (by exact_mod_cast hM2)
    · split_ifs at h with hc
      obtain ⟨c1, c2⟩ := hc
      have c1 := qcast_le c1; have c2 := qcast_le c2
      push_cast at c1 c2
      left; rw [abs_le] at hs
      exact abs_le.mpr ⟨by linarith [hs.1, hs.2], by linarith [hs.1, hs.2]⟩
    · simp only [Option.bind_eq_some_iff] at h
      obtain ⟨r1, h1, h2⟩ := h
      rcases le_total s m with hs' | hs'
      · exact ih _ _ _ _ h1 s (child_lo hs hs')
      · exact ih _ _ _ _ h2 s (child_hi hs hs')
    · simp at h

end CheckerSound

/-! ## 6. Local bounds near the centre, monotonicity in a, assembly -/

section Assembly

theorem cos_two_pi_div_three : cos (π * (2 / 3)) = -1 / 2 := by
  have : π * (2 / 3) = π - π / 3 := by ring
  rw [this, Real.cos_pi_sub, Real.cos_pi_div_three]; ring
theorem sin_two_pi_div_three : sin (π * (2 / 3)) = √3 / 2 := by
  have : π * (2 / 3) = π - π / 3 := by ring
  rw [this, Real.sin_pi_sub, Real.sin_pi_div_three]

theorem one_sub_cos_ge {e : ℝ} (he : |e| ≤ 1) : e ^ 2 / 2 - 5 / 96 * e ^ 4 ≤ 1 - cos e := by
  have h := Real.cos_bound he
  have h4 : |e| ^ 4 = e ^ 4 := by
    rw [show (4 : ℕ) = 2 * 2 from rfl, pow_mul, sq_abs, ← pow_mul]
  rw [h4] at h
  linarith [le_abs_self (cos e - (1 - e ^ 2 / 2))]

/-- One pair near the SU(3) centre: φ(v) − Λv ≥ 0.007 (πv)² for |v| ≤ 0.079, a ≥ 0.3. -/
theorem phi_bound {a v : ℝ} (ha : 3 / 10 ≤ a) (hv : |v| ≤ 79 / 1000) :
    7 / 1000 * (π * v) ^ 2 ≤ 2 * a * (cos (π * (2 / 3 + v)) + 1 / 2)
      - 4 * π ^ 2 * (bP (2 / 3 + v) - bP (2 / 3 : ℝ)) - (-a * π * √3 + 8 * π ^ 2 / 81) * v := by
  have hp := pi_pos; have hH := pi_lt_PH; have hPH := PH_val
  have s3 : √3 ≤ 17321 / 10000 := by
    rw [Real.sqrt_le_left (by norm_num)]; norm_num
  have s3' : 0 ≤ √3 := Real.sqrt_nonneg 3
  set e := π * v with he
  have hae : |e| ≤ 1 / 4 := by
    rw [he, abs_mul, abs_of_pos hp]; rw [hPH] at hH; nlinarith [abs_nonneg v]
  have hc : cos (π * (2 / 3 + v)) = -1 / 2 * cos e - √3 / 2 * sin e := by
    rw [mul_add, cos_add, cos_two_pi_div_three, sin_two_pi_div_three]
  have key : 2 * a * (cos (π * (2 / 3 + v)) + 1 / 2)
      - 4 * π ^ 2 * (bP (2 / 3 + v) - bP (2 / 3 : ℝ)) - (-a * π * √3 + 8 * π ^ 2 / 81) * v
      = a * (1 - cos e) + √3 * a * (e - sin e) - e ^ 2 / 9 - π ^ 2 * v ^ 3 / 9
        + π ^ 2 * v ^ 4 / 12 := by
    rw [hc, he]; unfold bP; ring
  rw [key]
  have t1 := mul_le_mul_of_nonneg_left (one_sub_cos_ge (le_trans hae (by norm_num)))
    (by linarith : (0 : ℝ) ≤ a)
  have hs := abs_sub_sin_le e
  have t2 : -(√3 * a * (|e| ^ 3 / 6)) ≤ √3 * a * (e - sin e) := by
    have : 0 ≤ √3 * a := by positivity
    have := mul_le_mul_of_nonneg_left (neg_abs_le (e - sin e)) this
    nlinarith
  have t3 : π ^ 2 * v ^ 3 ≤ e ^ 2 * |v| := by
    have : v ^ 3 ≤ v ^ 2 * |v| := by
      have := le_abs_self v; nlinarith [sq_nonneg v]
    rw [he, mul_pow]; nlinarith [sq_nonneg π]
  have t4 : 0 ≤ π ^ 2 * v ^ 4 / 12 := by positivity
  have e3 : |e| ^ 3 = e ^ 2 * |e| := by rw [pow_succ, sq_abs]
  have hA : 4245 / 10000 ≤ 1 / 2 - 5 / 96 * e ^ 2 - √3 * |e| / 6 := by
    have : e ^ 2 ≤ 1 / 16 := by
      rw [← sq_abs]; nlinarith [abs_nonneg e]
    nlinarith [abs_nonneg e]
  have hK : 7 / 1000 ≤ a * (1 / 2 - 5 / 96 * e ^ 2 - √3 * |e| / 6) - 1 / 9 - |v| / 9 := by
    nlinarith [abs_nonneg v]
  have he2 : 0 ≤ e ^ 2 := sq_nonneg e
  have := mul_le_mul_of_nonneg_left hK he2
  rw [e3] at t2
  nlinarith

theorem bP_symm (u : ℝ) : bP (2 - u) = bP u := by unfold bP; ring

theorem local3 {a : ℝ} (ha : 3 / 10 ≤ a) {s t : ℝ} (h1 : |s - 2 / 3| ≤ 79 / 1000)
    (h2 : |t - 2 / 3| ≤ 79 / 1000) (h3 : |s + t - 4 / 3| ≤ 79 / 1000) :
    21 / 1000 * d3sq s t ≤ G3 a s t := by
  have p1 := phi_bound ha h1
  have p2 := phi_bound ha h2
  have h3' : |-(s + t - 4 / 3)| ≤ 79 / 1000 := by rwa [abs_neg]
  have p3 := phi_bound ha h3'
  have c1 : cos (π * (2 / 3 + (s - 2 / 3))) = cos (π * s) := by ring_nf
  have c2 : cos (π * (2 / 3 + (t - 2 / 3))) = cos (π * t) := by ring_nf
  have c3 : cos (π * (2 / 3 + -(s + t - 4 / 3))) = cos (π * (s + t)) := by
    rw [show π * (2 / 3 + -(s + t - 4 / 3)) = 2 * π - π * (s + t) by ring, Real.cos_two_pi_sub]
  have b1 : bP (2 / 3 + (s - 2 / 3)) = bP s := by ring_nf
  have b2 : bP (2 / 3 + (t - 2 / 3)) = bP t := by ring_nf
  have b3 : bP (2 / 3 + -(s + t - 4 / 3)) = bP (s + t) := by
    rw [show (2 / 3 + -(s + t - 4 / 3) : ℝ) = 2 - (s + t) by ring, bP_symm]
  rw [c1, b1] at p1; rw [c2, b2] at p2; rw [c3, b3] at p3
  unfold G3 d3sq
  nlinarith [p1, p2, p3]

theorem local2 {a : ℝ} (ha : 1 / 5 ≤ a) {s : ℝ} (h : |s - 1| ≤ 318 / 1000) :
    1 / 50 * d2sq s ≤ G2 a s := by
  have hp := pi_pos; have hH := pi_lt_PH; have hPH := PH_val
  set v := s - 1 with hv
  have hs : s = 1 + v := by rw [hv]; ring
  have hae : |π * v| ≤ 1 := by
    rw [abs_mul, abs_of_pos hp]; rw [hPH] at hH; nlinarith [abs_nonneg v]
  have hc : cos (π * s) = -cos (π * v) := by
    rw [hs, mul_add, mul_one, Real.cos_add, Real.cos_pi, Real.sin_pi]; ring
  have key : G2 a s = 2 * a * (1 - cos (π * v)) - (π * v) ^ 2 / 6 + π ^ 2 * v ^ 4 / 12 := by
    unfold G2; rw [hc, hs]; unfold bP; ring
  rw [key]
  have t1 := mul_le_mul_of_nonneg_left (one_sub_cos_ge hae) (by linarith : (0 : ℝ) ≤ 2 * a)
  have t4 : 0 ≤ π ^ 2 * v ^ 4 / 12 := by positivity
  have he2 : (π * v) ^ 2 ≤ 1 := by rw [← sq_abs]; nlinarith [abs_nonneg (π * v)]
  have hK : 1 / 80 ≤ a - 5 / 48 * a * (π * v) ^ 2 - 1 / 6 := by nlinarith [sq_nonneg (π * v)]
  have := mul_le_mul_of_nonneg_left hK (sq_nonneg (π * v))
  unfold d2sq
  have e : π ^ 2 * (s - 1) ^ 2 = (π * v) ^ 2 := by rw [hv]; ring
  rw [e]
  nlinarith

/-- |tr Ω|²/2 for SU(3) is non-negative. -/
theorem C3_nonneg (s t : ℝ) : 0 ≤ cos (π * s) + cos (π * t) + cos (π * (s + t)) + 3 / 2 := by
  have hb : cos (π * t) = cos (π * (s + t)) * cos (π * s) + sin (π * (s + t)) * sin (π * s) := by
    rw [← Real.cos_sub]; ring_nf
  have k1 := Real.sin_sq_add_cos_sq (π * s)
  have k2 := Real.sin_sq_add_cos_sq (π * (s + t))
  nlinarith [sq_nonneg (1 + cos (π * s) + cos (π * (s + t))),
    sq_nonneg (sin (π * s) + sin (π * (s + t)))]

theorem G3_mono {a a' : ℝ} (h : a ≤ a') (s t : ℝ) : G3 a s t ≤ G3 a' s t := by
  have := C3_nonneg s t
  unfold G3; nlinarith

theorem G2_mono {a a' : ℝ} (h : a ≤ a') (s : ℝ) : G2 a s ≤ G2 a' s := by
  have := neg_one_le_cos (π * s)
  unfold G2; nlinarith

theorem G3_centre (a : ℝ) : G3 a (2 / 3) (2 / 3) = 0 := by
  unfold G3
  have : cos (π * (2 / 3 + 2 / 3)) = -1 / 2 := by
    rw [show π * (2 / 3 + 2 / 3) = 2 * π - π * (2 / 3) by ring, Real.cos_two_pi_sub,
      cos_two_pi_div_three]
  rw [this, cos_two_pi_div_three]; unfold bP; ring

theorem G2_centre (a : ℝ) : G2 a 1 = 0 := by
  unfold G2; rw [mul_one, Real.cos_pi]; ring

theorem d3sq_nonneg (s t : ℝ) : 0 ≤ d3sq s t := by
  unfold d3sq; have := sq_nonneg π
  have : 0 ≤ (s - 2 / 3) ^ 2 + (s - 2 / 3) * (t - 2 / 3) + (t - 2 / 3) ^ 2 := by
    nlinarith [sq_nonneg (s - 2 / 3 + (t - 2 / 3)), sq_nonneg (s - 2 / 3), sq_nonneg (t - 2 / 3)]
  positivity

theorem d3sq_pos {s t : ℝ} (h : (s, t) ≠ (2 / 3, 2 / 3)) : 0 < d3sq s t := by
  unfold d3sq
  have hp : 0 < π ^ 2 := by have := pi_pos; positivity
  have : 0 < (s - 2 / 3) ^ 2 + (s - 2 / 3) * (t - 2 / 3) + (t - 2 / 3) ^ 2 := by
    by_contra hc
    have hq : (s - 2 / 3) ^ 2 + (s - 2 / 3) * (t - 2 / 3) + (t - 2 / 3) ^ 2 = 0 := by
      nlinarith [sq_nonneg (s - 2 / 3 + (t - 2 / 3)), sq_nonneg (s - 2 / 3), sq_nonneg (t - 2 / 3)]
    have h1 : s - 2 / 3 = 0 := by nlinarith [sq_nonneg (s - 2 / 3 + 2 * (t - 2 / 3)), sq_nonneg (s - 2 / 3)]
    have h2 : t - 2 / 3 = 0 := by rw [h1] at hq; nlinarith [sq_nonneg (t - 2 / 3)]
    exact h (by rw [show s = 2 / 3 by linarith, show t = 2 / 3 by linarith])
  positivity

theorem d2sq_nonneg (s : ℝ) : 0 ≤ d2sq s := by unfold d2sq; positivity

theorem d2sq_pos {s : ℝ} (h : s ≠ 1) : 0 < d2sq s := by
  unfold d2sq
  have : (s - 1) ^ 2 > 0 := by have : s - 1 ≠ 0 := sub_ne_zero.mpr h; positivity
  have := pi_pos; positivity

/-- The SU(3) alcove in units of π. -/
def Alc3 (s t : ℝ) : Prop := 0 ≤ s ∧ 0 ≤ t ∧ s + t ≤ 2
/-- The SU(2) Weyl interval in units of π. -/
def Alc2 (s : ℝ) : Prop := 0 ≤ s ∧ s ≤ 2

/-- A passing SU(3) certificate gives min(M0, M2 d²) ≤ G3 a0 on the alcove. -/
theorem G3_bound_of_cert {a M0 M2 τ : ℚ} {f code : ℕ}
    (hcert : (chk3 a M0 M2 τ f 1 1 1 code).isSome = true)
    (ha : 3 / 10 ≤ a) (hM2 : 0 ≤ M2) (hM2' : M2 ≤ 21 / 1000) (hτ : τ ≤ 79 / 1000) :
    ∀ s t, Alc3 s t → min (M0 : ℝ) (M2 * d3sq s t) ≤ G3 a s t := by
  intro s t ⟨hs, ht, hst⟩
  obtain ⟨r, hr⟩ := Option.isSome_iff_exists.mp hcert
  have ha0 : (0 : ℚ) ≤ a := by linarith
  have hb1 : |s - ((1 : ℚ) : ℝ)| ≤ ((1 : ℚ) : ℝ) := by
    push_cast; rw [abs_le]; constructor <;> linarith
  have hb2 : |t - ((1 : ℚ) : ℝ)| ≤ ((1 : ℚ) : ℝ) := by
    push_cast; rw [abs_le]; constructor <;> linarith
  rcases chk3_sound ha0 hM2 f 1 1 1 code r hr s t hb1 hb2 hst with h | h
  · obtain ⟨h1, h2, h3⟩ := h
    have hτ' : (τ : ℝ) ≤ 79 / 1000 := by have := qcast_le hτ; push_cast at this; linarith
    have ha' : (3 / 10 : ℝ) ≤ a := by have := qcast_le ha; push_cast at this; linarith
    have hl := local3 ha' (h1.trans hτ') (h2.trans hτ') (h3.trans hτ')
    have hM : (M2 : ℝ) ≤ 21 / 1000 := by have := qcast_le hM2'; push_cast at this; linarith
    have := d3sq_nonneg s t
    exact le_trans (min_le_right _ _) (le_trans (by nlinarith) hl)
  · exact h

theorem G2_bound_of_cert {a M0 M2 τ : ℚ} {f code : ℕ}
    (hcert : (chk2 a M0 M2 τ f 1 1 code).isSome = true)
    (ha : 1 / 5 ≤ a) (hM2 : 0 ≤ M2) (hM2' : M2 ≤ 1 / 50) (hτ : τ ≤ 318 / 1000) :
    ∀ s, Alc2 s → min (M0 : ℝ) (M2 * d2sq s) ≤ G2 a s := by
  intro s ⟨hs, hs2⟩
  obtain ⟨r, hr⟩ := Option.isSome_iff_exists.mp hcert
  have ha0 : (0 : ℚ) ≤ a := by linarith
  have hb1 : |s - ((1 : ℚ) : ℝ)| ≤ ((1 : ℚ) : ℝ) := by
    push_cast; rw [abs_le]; constructor <;> linarith
  rcases chk2_sound ha0 hM2 f 1 1 code r hr s hb1 with h | h
  · have hτ' : (τ : ℝ) ≤ 318 / 1000 := by have := qcast_le hτ; push_cast at this; linarith
    have ha' : (1 / 5 : ℝ) ≤ a := by have := qcast_le ha; push_cast at this; linarith
    have hl := local2 ha' (h.trans hτ')
    have hM : (M2 : ℝ) ≤ 1 / 50 := by have := qcast_le hM2'; push_cast at this; linarith
    have := d2sq_nonneg s
    exact le_trans (min_le_right _ _) (le_trans (by nlinarith) hl)
  · exact h

theorem min_sub_min_le (A B C D : ℝ) : min (A - C) (B - D) ≤ min A B - min C D := by
  rcases le_total C D with h' | h'
  · rw [min_eq_left h', ← min_sub_sub_right]; exact min_le_min le_rfl (by linarith)
  · rw [min_eq_right h', ← min_sub_sub_right]; exact min_le_min (by linarith) le_rfl

/-- (b) for SU(3): the continuum bound at a0 plus a remainder hypothesis give the bound for V. -/
theorem lattice3 {a0 aeff M0 M2 ρ0 ρ2 : ℝ}
    (hcont : ∀ s t, Alc3 s t → min M0 (M2 * d3sq s t) ≤ G3 a0 s t) (haeff : a0 ≤ aeff)
    (V : ℝ → ℝ → ℝ)
    (hrem : ∀ s t, Alc3 s t →
      |V s t - V (2 / 3) (2 / 3) - G3 aeff s t| ≤ min (9 * ρ0) (3 * ρ2 * d3sq s t)) :
    ∀ s t, Alc3 s t → min (M0 - 9 * ρ0) ((M2 - 3 * ρ2) * d3sq s t) ≤ V s t - V (2 / 3) (2 / 3) := by
  intro s t h
  have h1 := le_trans (hcont s t h) (G3_mono haeff s t)
  have h2 := hrem s t h
  have h3 := min_sub_min_le M0 (M2 * d3sq s t) (9 * ρ0) (3 * ρ2 * d3sq s t)
  have e : M2 * d3sq s t - 3 * ρ2 * d3sq s t = (M2 - 3 * ρ2) * d3sq s t := by ring
  rw [e] at h3
  linarith [le_abs_self (V s t - V (2 / 3) (2 / 3) - G3 aeff s t),
    neg_abs_le (V s t - V (2 / 3) (2 / 3) - G3 aeff s t)]

theorem lattice2 {a0 aeff M0 M2 ρ0 ρ2 : ℝ}
    (hcont : ∀ s, Alc2 s → min M0 (M2 * d2sq s) ≤ G2 a0 s) (haeff : a0 ≤ aeff)
    (V : ℝ → ℝ)
    (hrem : ∀ s, Alc2 s → |V s - V 1 - G2 aeff s| ≤ min (4 * ρ0) (2 * ρ2 * d2sq s)) :
    ∀ s, Alc2 s → min (M0 - 4 * ρ0) ((M2 - 2 * ρ2) * d2sq s) ≤ V s - V 1 := by
  intro s h
  have h1 := le_trans (hcont s h) (G2_mono haeff s)
  have h2 := hrem s h
  have h3 := min_sub_min_le M0 (M2 * d2sq s) (4 * ρ0) (2 * ρ2 * d2sq s)
  have e : M2 * d2sq s - 2 * ρ2 * d2sq s = (M2 - 2 * ρ2) * d2sq s := by ring
  rw [e] at h3
  linarith [le_abs_self (V s - V 1 - G2 aeff s), neg_abs_le (V s - V 1 - G2 aeff s)]

theorem min_pos {A B : ℝ} (hA : 0 < A) (hB : 0 < B) : 0 < min A B := lt_min hA hB

end Assembly


end YmLean.Gpy
