import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Nontriviality from the two-sided (0.31) envelope (ASSEMBLY.md §2.9; ASSEMBLY_VERIFY.md (B-NT))

Arithmetic core of the derivation of Theorem 1.4 from (NT) and (B-T2). Notation: `u = 1/g_k²`,
`t = 1/g²`, `β' = β′`, `s = L^k ε` (layer scale), `d0 = d_0`. The upper envelope is
`1/g_k² ≤ 1/g² + β′ log(L^k ε)^{−1}`, the lower one `1/g² + β log(L^k ε)^{−1} ≤ 1/g_k²`.
The integral `∫∫ f_1 f_2 g_k⁴ |x−y|^{−8}` is replaced by a finite nonnegative weighted sum
(`w p` = `f_1 f_2 |x−y|^{−8}` times a cell volume); (NT) itself is a hypothesis.
-/

open Real Filter Topology Finset

namespace YmLean

/-- §2.9 (i), one layer: `L^k ε > d_0/L` and the upper (0.31) envelope give
`g_k⁴ ≥ (1/g² + β′ log(L/d_0))^{−2}`, uniformly in `ε`. -/
theorem envelope_layer (t β' L d0 s u : ℝ) (hβ' : 0 ≤ β') (hL : 0 < L) (hd0 : 0 < d0)
    (hs : d0 / L < s) (hu : 0 < u) (hup : u ≤ t + β' * log (1 / s)) :
    u ≤ t + β' * log (L / d0) ∧ (t + β' * log (L / d0))⁻¹ ^ 2 ≤ u⁻¹ ^ 2 := by
  have hs0 : 0 < s := lt_trans (div_pos hd0 hL) hs
  have h1 : 1 / s ≤ L / d0 := by
    rw [div_le_div_iff₀ hs0 hd0]; rw [div_lt_iff₀ hL] at hs; linarith
  have hlog : log (1 / s) ≤ log (L / d0) := log_le_log (by positivity) h1
  have hT : u ≤ t + β' * log (L / d0) := hup.trans (by nlinarith)
  refine ⟨hT, pow_le_pow_left₀ (inv_nonneg.mpr (hu.le.trans hT)) (inv_anti₀ hu hT) 2⟩

/-- §2.9 (i): with `|R| ≤ ½`, `c > 0`, nonnegative weights, and every pair at a layer with
`L^k ε > d_0/L` obeying the upper envelope,
`c (Σ_p w_p g_{k(p)}⁴)(1 + R) ≥ ½ c (1/g² + β′ log(L/d_0))^{−2} Σ_p w_p`, and this is `> 0`
when `Σ_p w_p > 0`. -/
theorem envelope_nontrivial {π : Type*} (P : Finset π) (w s u : π → ℝ)
    (t β' L d0 c R : ℝ) (hβ' : 0 ≤ β') (hL : 0 < L) (hd0 : 0 < d0) (hc : 0 < c)
    (hR : |R| ≤ 1 / 2) (hw : ∀ p ∈ P, 0 ≤ w p) (hs : ∀ p ∈ P, d0 / L < s p)
    (hu : ∀ p ∈ P, 0 < u p) (hup : ∀ p ∈ P, u p ≤ t + β' * log (1 / s p)) :
    1 / 2 * c * (t + β' * log (L / d0))⁻¹ ^ 2 * (∑ p ∈ P, w p)
        ≤ c * (∑ p ∈ P, w p * (u p)⁻¹ ^ 2) * (1 + R) ∧
      (0 < ∑ p ∈ P, w p → 0 < c * (∑ p ∈ P, w p * (u p)⁻¹ ^ 2) * (1 + R)) := by
  set T := t + β' * log (L / d0)
  have hlay := fun p hp => envelope_layer t β' L d0 (s p) (u p) hβ' hL hd0 (hs p hp) (hu p hp)
    (hup p hp)
  have hsum : T⁻¹ ^ 2 * (∑ p ∈ P, w p) ≤ ∑ p ∈ P, w p * (u p)⁻¹ ^ 2 := by
    rw [mul_sum]
    exact sum_le_sum fun p hp => by
      rw [mul_comm]; exact mul_le_mul_of_nonneg_left (hlay p hp).2 (hw p hp)
  have hR1 : 1 / 2 ≤ 1 + R := by linarith [neg_abs_le R]
  have hA : 0 ≤ T⁻¹ ^ 2 * (∑ p ∈ P, w p) := by
    have := sum_nonneg hw; positivity
  have main : 1 / 2 * c * T⁻¹ ^ 2 * (∑ p ∈ P, w p)
      ≤ c * (∑ p ∈ P, w p * (u p)⁻¹ ^ 2) * (1 + R) := by
    calc 1 / 2 * c * T⁻¹ ^ 2 * (∑ p ∈ P, w p) = c * (T⁻¹ ^ 2 * (∑ p ∈ P, w p)) * (1 / 2) := by
          ring
      _ ≤ c * (∑ p ∈ P, w p * (u p)⁻¹ ^ 2) * (1 + R) :=
          mul_le_mul (mul_le_mul_of_nonneg_left hsum hc.le) hR1 (by norm_num)
            (mul_nonneg hc.le (hA.trans hsum))
  refine ⟨main, fun hpos => lt_of_lt_of_le ?_ main⟩
  obtain ⟨p, hp, hwp⟩ : ∃ p ∈ P, 0 < w p := by
    by_contra h; push Not at h; linarith [sum_nonpos h]
  have hT : 0 < T := (hu p hp).trans_le (hlay p hp).1
  positivity

/-- §2.9 (ii): if `0 ≤ S(d) ≤ A(d) c (1/g_{k(d)}²)^{−2}` with `A(d) = 1 + C g_{k(d)}² ∈ [0, M]`
and the lower (0.31) envelope `1/g² + β log(1/d) ≤ 1/g_{k(d)}²` for `d ∈ ]0, 1[`, then
`S(d) → 0` as `d → 0⁺`. Here `S(d)` stands for `d⁸ S_2` at separation `d`. -/
theorem envelope_decay (t β c M : ℝ) (hβ : 0 < β) (hc : 0 ≤ c) (S A U : ℝ → ℝ)
    (hA : ∀ d, 0 < d → d < 1 → A d ≤ M)
    (hS : ∀ d, 0 < d → d < 1 → 0 ≤ S d ∧ S d ≤ A d * c * (U d)⁻¹ ^ 2)
    (hU : ∀ d, 0 < d → d < 1 → t + β * log (1 / d) ≤ U d) :
    Tendsto S (𝓝[>] 0) (𝓝 0) := by
  have hev : ∀ᶠ d in 𝓝[>] (0 : ℝ), 0 < d ∧ d < 1 :=
    Filter.mem_of_superset (Ioo_mem_nhdsGT (show (0 : ℝ) < 1 by norm_num)) fun d hd => hd
  have hg : Tendsto (fun d : ℝ => t + β * log (1 / d)) (𝓝[>] 0) atTop := by
    have : Tendsto (fun d : ℝ => β * log (1 / d)) (𝓝[>] 0) atTop := by
      simp only [one_div, log_inv]
      exact (tendsto_neg_atBot_atTop.comp tendsto_log_nhdsGT_zero).const_mul_atTop hβ
    exact tendsto_atTop_add_const_left _ t this
  have hUt : Tendsto U (𝓝[>] 0) atTop :=
    tendsto_atTop_mono' _ (hev.mono fun d hd => hU d hd.1 hd.2) hg
  have hlim : Tendsto (fun d => M * c * (U d)⁻¹ ^ 2) (𝓝[>] 0) (𝓝 0) := by
    simpa using ((tendsto_inv_atTop_zero.comp hUt).pow 2).const_mul (M * c)
  have hUpos : ∀ᶠ d in 𝓝[>] (0 : ℝ), 0 < U d := hUt.eventually_gt_atTop 0
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le' tendsto_const_nhds hlim
    (hev.mono fun d hd => (hS d hd.1 hd.2).1) ?_
  filter_upwards [hev, hUpos] with d hd hUd
  refine (hS d hd.1 hd.2).2.trans ?_
  have : 0 ≤ c * (U d)⁻¹ ^ 2 := by positivity
  nlinarith [hA d hd.1 hd.2]

/-- §2.9 (ii), conclusion: `S(d) > 0` (by (i)) and `S(d) → 0`, so `S` has no nonzero limit
at `0⁺`; a scale-invariant composite (`d⁸ S_2 → a ≠ 0`) is excluded. -/
theorem envelope_not_scale_invariant (t β c M : ℝ) (hβ : 0 < β) (hc : 0 ≤ c) (S A U : ℝ → ℝ)
    (hA : ∀ d, 0 < d → d < 1 → A d ≤ M)
    (hS : ∀ d, 0 < d → d < 1 → 0 ≤ S d ∧ S d ≤ A d * c * (U d)⁻¹ ^ 2)
    (hU : ∀ d, 0 < d → d < 1 → t + β * log (1 / d) ≤ U d) (a : ℝ) (ha : a ≠ 0) :
    ¬ Tendsto S (𝓝[>] 0) (𝓝 a) := fun h =>
  ha (tendsto_nhds_unique h (envelope_decay t β c M hβ hc S A U hA hS hU))

end YmLean

#print axioms YmLean.envelope_layer
#print axioms YmLean.envelope_nontrivial
#print axioms YmLean.envelope_decay
#print axioms YmLean.envelope_not_scale_invariant
