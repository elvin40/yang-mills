import YmLean.LemmaDPrime
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Lemma H, Steps 1–2 (SOURCES_HBETA.md §2, as corrected in SOURCES_HBETA_VERIFY.md §5)

Abstract form. `a j i` stands for `∂β_j/∂u_i` (`i < j`), `v` for `v_j = du_j/dc`.
Variational equation `v (j+1) = v j - B'_{j+1}`, `B'_j = Σ_{i<j} a j i · v i`.
Row sums `ε_j = Σ_{i<j} |a j i|`. Column-sum hypothesis: `Σ_{j ∈ (i,K]} |a j i| ≤ c i` and
`Σ_{i<K} c i ≤ x` (in the note `c i = ½ C₁ A g_i³` and `Σ c i ≤ x` is Step 2, not formalized).
-/

open Finset

noncomputable section

namespace YmLean

/-- `B'_j = Σ_{i<j} a j i · v i`. -/
def Bp (a : ℕ → ℕ → ℝ) (v : ℕ → ℝ) (j : ℕ) : ℝ := ∑ i ∈ range j, a j i * v i

/-- Row sum `ε_j = Σ_{i<j} |a j i|`. -/
def εH (a : ℕ → ℕ → ℝ) (j : ℕ) : ℝ := ∑ i ∈ range j, |a j i|

/-- Telescoping identity `Π_{l ≤ K}(1+e_l) − 1 = Σ_{j ≤ K} e_j Π_{l<j}(1+e_l)` (indices from 1). -/
lemma gronwall_telescope (e : ℕ → ℝ) (K : ℕ) :
    ∏ l ∈ Ioc 0 K, (1 + e l) - 1 = ∑ j ∈ Ioc 0 K, e j * ∏ l ∈ Ioc 0 (j - 1), (1 + e l) := by
  induction K with
  | zero => simp
  | succ K ih =>
    rw [prod_Ioc_succ_top (Nat.zero_le K), sum_Ioc_succ_top (Nat.zero_le K), ← ih,
      Nat.add_sub_cancel]
    ring

/-- `Π(1+e_l) ≤ exp(Σ e_l)` for `e_l ≥ 0`. -/
lemma prod_le_exp (e : ℕ → ℝ) (he : ∀ l, 0 ≤ e l) (s : Finset ℕ) :
    ∏ l ∈ s, (1 + e l) ≤ Real.exp (∑ l ∈ s, e l) := by
  rw [Real.exp_sum]
  exact prod_le_prod (fun l _ => by linarith [he l])
    (fun l _ => by linarith [Real.add_one_le_exp (e l)])

lemma εH_nonneg (a : ℕ → ℕ → ℝ) (j : ℕ) : 0 ≤ εH a j := sum_nonneg fun _ _ => abs_nonneg _

lemma Bp_le (a : ℕ → ℕ → ℝ) (v : ℕ → ℝ) {j : ℕ} {M : ℝ} (h : ∀ i < j, |v i| ≤ M) :
    |Bp a v j| ≤ εH a j * M := by
  unfold Bp εH
  calc |∑ i ∈ range j, a j i * v i| ≤ ∑ i ∈ range j, |a j i| * M :=
        (abs_sum_le_sum_abs _ _).trans (sum_le_sum fun i hi => by
          rw [abs_mul]; exact mul_le_mul_of_nonneg_left (h i (mem_range.1 hi)) (abs_nonneg _))
    _ = _ := by rw [sum_mul]

/-- `P j = Π_{l ∈ (0,j]} (1 + ε_l)`. -/
def PH (a : ℕ → ℕ → ℝ) (j : ℕ) : ℝ := ∏ l ∈ Ioc 0 j, (1 + εH a l)

lemma PH_succ (a : ℕ → ℕ → ℝ) (j : ℕ) : PH a (j + 1) = PH a j * (1 + εH a (j + 1)) :=
  prod_Ioc_succ_top (Nat.zero_le j) _

lemma PH_ge_one (a : ℕ → ℕ → ℝ) (j : ℕ) : 1 ≤ PH a j := by
  induction j with
  | zero => simp [PH]
  | succ j ih => rw [PH_succ]; nlinarith [εH_nonneg a (j + 1)]

/-- Gronwall step: `|v_i| ≤ P_j` for all `i ≤ j ≤ K`. -/
lemma v_le_PH (a : ℕ → ℕ → ℝ) (v : ℕ → ℝ) {K : ℕ} (hv0 : |v 0| ≤ 1)
    (hrec : ∀ j < K, v (j + 1) = v j - Bp a v (j + 1)) :
    ∀ j ≤ K, ∀ i ≤ j, |v i| ≤ PH a j := by
  intro j
  induction j with
  | zero => intro _ i hi; obtain rfl : i = 0 := by omega
            simpa [PH] using hv0
  | succ j ih =>
    intro hj i hi
    have ih' := ih (by omega)
    have hmono : PH a j ≤ PH a (j + 1) := by
      rw [PH_succ]; nlinarith [εH_nonneg a (j + 1), PH_ge_one a j]
    rcases Nat.lt_or_ge i (j + 1) with h | h
    · exact (ih' i (by omega)).trans hmono
    · obtain rfl : i = j + 1 := by omega
      have hB := Bp_le a v (j := j + 1) fun i hi => ih' i (by omega)
      rw [hrec j (by omega), PH_succ]
      calc |v j - Bp a v (j + 1)| ≤ |v j| + |Bp a v (j + 1)| := abs_sub _ _
        _ ≤ PH a j + εH a (j + 1) * PH a j := add_le_add (ih' j le_rfl) hB
        _ = _ := by ring

/-- **Lemma H, Step 1** (abstract). Variational equation, `|v_0| ≤ 1`, column sums
`Σ_{j∈(i,K]} |a j i| ≤ c i` with `Σ_{i<K} c i ≤ x`. Then
`Σ_{j=1}^K |B'_j| ≤ Π_{j=1}^K (1+ε_j) − 1 ≤ e^x − 1` and `|v_k − v_0| ≤ e^x − 1` for `k ≤ K`. -/
theorem lemma_H (a : ℕ → ℕ → ℝ) (v c : ℕ → ℝ) (x : ℝ) (K : ℕ) (hv0 : |v 0| ≤ 1)
    (hrec : ∀ j < K, v (j + 1) = v j - Bp a v (j + 1))
    (hcol : ∀ i < K, ∑ j ∈ Ioc i K, |a j i| ≤ c i) (hx : ∑ i ∈ range K, c i ≤ x) :
    ∑ j ∈ Ioc 0 K, |Bp a v j| ≤ PH a K - 1 ∧ PH a K - 1 ≤ Real.exp x - 1 ∧
    ∀ k ≤ K, |v k - v 0| ≤ Real.exp x - 1 := by
  have hv := v_le_PH a v hv0 hrec
  have h1 : ∑ j ∈ Ioc 0 K, |Bp a v j| ≤ PH a K - 1 := by
    unfold PH; rw [gronwall_telescope]
    exact sum_le_sum fun j hj => by
      simp only [mem_Ioc] at hj
      exact Bp_le a v fun i hi => hv (j - 1) (by omega) i (by omega)
  have hsum : ∑ j ∈ Ioc 0 K, εH a j ≤ x := by
    unfold εH
    rw [sum_comm' (t' := range K) (s' := fun i => Ioc i K) (fun j i => by
      simp only [mem_Ioc, mem_range]; omega)]
    exact (sum_le_sum fun i hi => hcol i (mem_range.1 hi)).trans hx
  have h2 : PH a K - 1 ≤ Real.exp x - 1 := by
    have := (prod_le_exp _ (εH_nonneg a) (Ioc 0 K)).trans (Real.exp_le_exp.2 hsum)
    unfold PH; linarith
  refine ⟨h1, h2, fun k hk => ?_⟩
  have e := telescope v (Bp a v) (K := k) (fun i hi => hrec i (by omega)) (Nat.zero_le k)
  have hsub : ∑ j ∈ Ioc 0 k, |Bp a v j| ≤ ∑ j ∈ Ioc 0 K, |Bp a v j| :=
    sum_le_sum_of_subset_of_nonneg (Ioc_subset_Ioc_right hk) fun _ _ _ => abs_nonneg _
  rw [abs_sub_comm, e]
  exact (abs_sum_le_sum_abs _ _).trans (hsub.trans (h1.trans h2))

/-- Lemma H with the note's constants: `v_0 = −1`, `x ≤ ln(3/2)` give
`Σ|B'_j| ≤ 1/2` and `1/2 ≤ |v_k| ≤ 3/2`. -/
theorem lemma_H_half (a : ℕ → ℕ → ℝ) (v c : ℕ → ℝ) (x : ℝ) (K : ℕ) (hv0 : v 0 = -1)
    (hrec : ∀ j < K, v (j + 1) = v j - Bp a v (j + 1))
    (hcol : ∀ i < K, ∑ j ∈ Ioc i K, |a j i| ≤ c i) (hx : ∑ i ∈ range K, c i ≤ x)
    (hx32 : x ≤ Real.log (3 / 2)) :
    ∑ j ∈ Ioc 0 K, |Bp a v j| ≤ 1 / 2 ∧ ∀ k ≤ K, 1 / 2 ≤ |v k| ∧ |v k| ≤ 3 / 2 := by
  obtain ⟨h1, h2, h3⟩ := lemma_H a v c x K (by simp [hv0]) hrec hcol hx
  have he : Real.exp x ≤ 3 / 2 := by
    calc Real.exp x ≤ Real.exp (Real.log (3 / 2)) := Real.exp_le_exp.2 hx32
      _ = 3 / 2 := Real.exp_log (by norm_num)
  refine ⟨by linarith, fun k hk => ?_⟩
  have := h3 k hk; rw [hv0, sub_neg_eq_add] at this
  have ha := abs_le.1 (this.trans (by linarith : Real.exp x - 1 ≤ 1 / 2))
  constructor
  · rw [abs_of_neg (by linarith)]; linarith
  · rw [abs_of_neg (by linarith)]; linarith

end YmLean
