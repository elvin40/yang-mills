import Mathlib.Analysis.Real.Pi.Bounds
import Mathlib.Algebra.BigOperators.Intervals

/-!
# Free-case slab counterexample (SOURCES_A3_GAMMA0_FULL.md §3.2–§3.3 Remark;
SOURCES_A3_GAMMA0_FULL_VERIFY.md Part 1, §1–§3)

d = 2 slice: the face Δ′ is a path of L sites. Balaban (CMP 96 p. 245) claims
Σ|∇f|² + L^{−d}|Σf|² ≥ L^{−1}Σ|f|². Times L^{−1} at d = 2 this is q_L(f) ≥ L^{−2}‖f‖² with
q_L(f) = L^{−1}Σ_{i+1<L}(f_{i+1} − f_i)² + L^{−3}(Σ_{i<L} f_i)².

1. `slab_fails_10` … `slab_fails_13`: explicit rational f with Σf = 0 and q_L(f) < L^{−2}‖f‖²,
   f_i = round(1000·cos(π(i+½)/L))/1000.
2. `slab_fails`: for every L ≥ 10 such an f exists (cosine witnesses for L = 10, 11, the linear
   f_i = 2i − (L−1) for L ≥ 12).
3. `lambda1_lt`: 2(1 − cos(π/L)) < 1/L for L ≥ 10, from cos x ≥ 1 − x²/2 and π² < 10.
-/

open Finset

namespace YmLean

/-- SOURCES_A3_GAMMA0_FULL_VERIFY.md §1 slab form K(f), d = 2, times L:
q_L(f) = L^{−1}Σ_{i+1<L}(f_{i+1} − f_i)² + L^{−3}(Σ_{i<L} f_i)². Only f i for i < L enter. -/
noncomputable def slabForm (L : ℕ) (f : ℕ → ℝ) : ℝ :=
  (L : ℝ)⁻¹ * ∑ i ∈ range (L - 1), (f (i + 1) - f i) ^ 2 + ((L : ℝ) ^ 3)⁻¹ * (∑ i ∈ range L, f i) ^ 2

/-- ‖f‖² = Σ_{i<L} f_i². -/
noncomputable def sqNorm (L : ℕ) (f : ℕ → ℝ) : ℝ := ∑ i ∈ range L, f i ^ 2

/-- f violates the slab claim (SOURCES_A3_GAMMA0_FULL.md §3.3 Remark): Σf = 0 and
q_L(f) < L^{−2}‖f‖². -/
def SlabFails (L : ℕ) (f : ℕ → ℝ) : Prop :=
  ∑ i ∈ range L, f i = 0 ∧ slabForm L f < ((L : ℝ) ^ 2)⁻¹ * sqNorm L f

/-- The vector (l_0, …, l_{L−1})/1000, zero beyond the list. -/
noncomputable def milli (l : List ℤ) (i : ℕ) : ℝ := (l.getD i 0 : ℝ) / 1000

/-- round(1000·cos(π(i+½)/10)), i < 10. -/
def c10 : List ℤ := [988, 891, 707, 454, 156, -156, -454, -707, -891, -988]
/-- round(1000·cos(π(i+½)/11)), i < 11. -/
def c11 : List ℤ := [990, 910, 756, 541, 282, 0, -282, -541, -756, -910, -990]
/-- round(1000·cos(π(i+½)/12)), i < 12. -/
def c12 : List ℤ := [991, 924, 793, 609, 383, 131, -131, -383, -609, -793, -924, -991]
/-- round(1000·cos(π(i+½)/13)), i < 13. -/
def c13 : List ℤ := [993, 935, 823, 663, 465, 239, 0, -239, -465, -663, -823, -935, -993]

/-- SOURCES_A3_GAMMA0_FULL_VERIFY.md §2, L = 10: the slab claim fails. -/
theorem slab_fails_10 : SlabFails 10 (milli c10) := by
  simp only [SlabFails, slabForm, sqNorm, milli, c10, sum_range_succ, sum_range_zero]
  norm_num

/-- L = 11. -/
theorem slab_fails_11 : SlabFails 11 (milli c11) := by
  simp only [SlabFails, slabForm, sqNorm, milli, c11, sum_range_succ, sum_range_zero]
  norm_num

/-- L = 12. -/
theorem slab_fails_12 : SlabFails 12 (milli c12) := by
  simp only [SlabFails, slabForm, sqNorm, milli, c12, sum_range_succ, sum_range_zero]
  norm_num

/-- L = 13 (the block size of SOURCES_A3_GAMMA0_FULL_VERIFY.md §3 "Downstream"). -/
theorem slab_fails_13 : SlabFails 13 (milli c13) := by
  simp only [SlabFails, slabForm, sqNorm, milli, c13, sum_range_succ, sum_range_zero]
  norm_num

lemma sum_lin (n : ℕ) (c : ℝ) : ∑ i ∈ range n, (2 * (i : ℝ) - c) = n * (n - 1) - n * c := by
  induction n with
  | zero => simp
  | succ n ih => rw [sum_range_succ, ih]; push_cast; ring

lemma sum_lin_sq (n : ℕ) (c : ℝ) : ∑ i ∈ range n, (2 * (i : ℝ) - c) ^ 2 =
    (4 * n ^ 3 - 6 * n ^ 2 + 2 * n) / 3 - 2 * c * n * (n - 1) + n * c ^ 2 := by
  induction n with
  | zero => simp
  | succ n ih => rw [sum_range_succ, ih]; push_cast; ring

/-- SOURCES_A3_GAMMA0_FULL_VERIFY.md §3 verdict (d = 2): the slab claim fails for every L ≥ 10. -/
theorem slab_fails (L : ℕ) (hL : 10 ≤ L) : ∃ f : ℕ → ℝ, SlabFails L f := by
  rcases (show L = 10 ∨ L = 11 ∨ 12 ≤ L by omega) with rfl | rfl | h
  · exact ⟨_, slab_fails_10⟩
  · exact ⟨_, slab_fails_11⟩
  obtain ⟨m, rfl⟩ : ∃ m, L = m + 12 := ⟨L - 12, by omega⟩
  refine ⟨fun i => 2 * (i : ℝ) - ((m : ℝ) + 11), ?_, ?_⟩
  · rw [sum_lin]; push_cast; ring
  · have hd : ∀ i : ℕ, (2 * ((i + 1 : ℕ) : ℝ) - ((m : ℝ) + 11)) - (2 * (i : ℝ) - ((m : ℝ) + 11))
        = 2 := fun i => by push_cast; ring
    simp only [slabForm, sqNorm, hd, sum_lin, sum_lin_sq, show m + 12 - 1 = m + 11 by omega,
      sum_const, card_range, nsmul_eq_mul]
    push_cast
    have hm : (0 : ℝ) ≤ m := m.cast_nonneg
    rw [← sub_pos]
    field_simp
    ring_nf
    nlinarith [sq_nonneg (m : ℝ), mul_nonneg hm (sq_nonneg (m : ℝ))]

/-- SOURCES_A3_GAMMA0_FULL.md §3.2 Bound / VERIFY §2: λ_1(L) = 2(1 − cos(π/L)) < 1/L for L ≥ 10
(cos x ≥ 1 − x²/2 gives λ_1 ≤ π²/L² < 1/L as π² < 10 ≤ L). -/
theorem lambda1_lt (L : ℕ) (hL : 10 ≤ L) : 2 * (1 - Real.cos (Real.pi / L)) < 1 / L := by
  have hL' : (10 : ℝ) ≤ L := by exact_mod_cast hL
  have hc := Real.one_sub_sq_div_two_le_cos (x := Real.pi / L)
  have hpi : Real.pi ^ 2 < 10 := by nlinarith [Real.pi_lt_d2, Real.pi_pos]
  calc 2 * (1 - Real.cos (Real.pi / L)) ≤ Real.pi ^ 2 / (L : ℝ) ^ 2 := by
        rw [div_pow] at hc; linarith
    _ < 1 / L := by
        rw [div_lt_div_iff₀ (by positivity) (by positivity)]; nlinarith

end YmLean

#print axioms YmLean.slab_fails_10
#print axioms YmLean.slab_fails_11
#print axioms YmLean.slab_fails_12
#print axioms YmLean.slab_fails_13
#print axioms YmLean.slab_fails
#print axioms YmLean.lambda1_lt
