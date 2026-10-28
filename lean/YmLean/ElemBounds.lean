import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.Calculus.Deriv.MeanValue
import Mathlib.Algebra.Field.GeomSum
import Mathlib.Algebra.Order.Archimedean.Basic
import Mathlib.Topology.Algebra.InfiniteSum.Real

/-!
# Elementary bounds used in the A10, A11, and ORDER_CANON notes

1. `a10Sum`: the j-sum of SOURCES_A10_LOWER.md §3 (c) and SOURCES_A10_LOWER_VERIFY claim (1).
   A raw order-n term (n ≤ 4) gives (6L)^4 L^{(4−n)(k−j)} at scale j; the sum over j = 0..k is
   k + 1 for n = 4 and (L^{(4−n)(k+1)} − 1)/(L^{4−n} − 1) ≥ L^{(4−n)k} for n < 4.
   It has no bound uniform in k.
2. `gLogPow_strictMonoOn`: SOURCES_A11_CONST_VERIFY.md (monotonicity fix of (2.8) line 1) and
   SOURCES_T2_IEPS_LF_VERIFY.md: F(g) = g (log g^{−2})^q, F′ = ℓ^{q−1}(ℓ − 2q) with ℓ = log g^{−2},
   so F is strictly increasing on (0, e^{−q}).
3. SOURCES_ORDER_CANON.md A.2 Lemma M2 (safe direction): S(δ) = Σ e^{−δ|x|} decreasing in δ
   (abstract index type, `tsum`); k = c_P c/(c + 4Γ) increasing in c, decreasing in Γ;
   ε^a = min{½δ, c/(16 C b Σ(½δ))} increasing in δ, c and decreasing in b; e^{2Lδ} increasing in δ.
-/

namespace YmLean

open Finset

/-- Σ_{j=0}^{k} L^{(4−n)(k−j)}  (SOURCES_A10_LOWER §3 (c)). -/
noncomputable def a10Sum (L : ℝ) (n k : ℕ) : ℝ :=
  ∑ j ∈ range (k + 1), L ^ ((4 - n) * (k - j))

theorem a10Sum_eq_four (L : ℝ) (k : ℕ) : a10Sum L 4 k = k + 1 := by
  simp [a10Sum]

theorem a10Sum_reindex (L : ℝ) (n k : ℕ) :
    a10Sum L n k = ∑ m ∈ range (k + 1), (L ^ (4 - n)) ^ m := by
  rw [a10Sum, ← sum_range_reflect]
  refine sum_congr rfl fun j hj => ?_
  have hj : j ≤ k := Nat.lt_succ_iff.mp (mem_range.mp hj)
  rw [← pow_mul]
  congr 2
  omega

/-- Closed form for n < 4 (SOURCES_A10_LOWER_VERIFY claim (1)). -/
theorem a10Sum_closed {L : ℝ} (hL : 1 < L) {n : ℕ} (hn : n < 4) (k : ℕ) :
    a10Sum L n k = (L ^ ((4 - n) * (k + 1)) - 1) / (L ^ (4 - n) - 1) := by
  have h1 : L ^ (4 - n) ≠ 1 := (one_lt_pow₀ hL (by omega)).ne'
  rw [a10Sum_reindex, geom_sum_eq h1, pow_mul]

theorem a10Sum_ge_top {L : ℝ} (hL : 1 ≤ L) (n k : ℕ) : L ^ ((4 - n) * k) ≤ a10Sum L n k := by
  rw [a10Sum]
  have := single_le_sum (s := range (k + 1)) (f := fun j => L ^ ((4 - n) * (k - j)))
    (fun j _ => by positivity) (mem_range.mpr (Nat.succ_pos k))
  simpa using this

theorem a10Sum_ge_succ {L : ℝ} (hL : 1 ≤ L) (n k : ℕ) : (k : ℝ) + 1 ≤ a10Sum L n k := by
  have : ∑ _j ∈ range (k + 1), (1 : ℝ) ≤ a10Sum L n k :=
    sum_le_sum fun j _ => one_le_pow₀ hL
  simpa using this

/-- No bound uniform in k, for every n ≤ 4 (for n < 4 the growth is L^{(4−n)k}). -/
theorem a10Sum_unbounded {L : ℝ} (hL : 1 ≤ L) (n : ℕ) : ¬ ∃ C, ∀ k, a10Sum L n k ≤ C := by
  rintro ⟨C, hC⟩
  obtain ⟨k, hk⟩ := exists_nat_gt C
  linarith [hC k, a10Sum_ge_succ hL n k]

/-- SOURCES_A11_CONST_VERIFY (monotonicity step): g ↦ g ℓ^q with ℓ = log g^{−2} is strictly
increasing on (0, e^{−q}), i.e. where ℓ > 2q. Here ℓ^q is written exp(q log ℓ), which is
ℓ^q for ℓ > 0 (the rpow files are not built in this .lake). F′ = ℓ^q (1 − 2q/ℓ). -/
theorem gLogPow_strictMonoOn {q : ℝ} (hq : 0 < q) :
    StrictMonoOn (fun g : ℝ => g * Real.exp (q * Real.log (Real.log (g ^ 2)⁻¹)))
      (Set.Ioo 0 (Real.exp (-q))) := by
  have hℓ : ∀ g : ℝ, Real.log (g ^ 2)⁻¹ = -2 * Real.log g := fun g => by
    rw [Real.log_inv, Real.log_pow]; push_cast; ring
  simp_rw [hℓ]
  have hpos : ∀ g ∈ Set.Ioo 0 (Real.exp (-q)), 2 * q < -2 * Real.log g := fun g hg => by
    have := (Real.log_lt_iff_lt_exp hg.1).mpr hg.2
    linarith
  have hd : ∀ g ∈ Set.Ioo 0 (Real.exp (-q)),
      HasDerivAt (fun g => g * Real.exp (q * Real.log (-2 * Real.log g)))
        (1 * Real.exp (q * Real.log (-2 * Real.log g)) + g * (Real.exp (q * Real.log
          (-2 * Real.log g)) * (q * ((-2 * g⁻¹) / (-2 * Real.log g))))) g :=
    fun g hg => by
      have hL : 0 < -2 * Real.log g := by linarith [hpos g hg]
      exact (hasDerivAt_id g).mul ((((Real.hasDerivAt_log hg.1.ne').const_mul (-2)).log
        hL.ne').const_mul q).exp
  apply strictMonoOn_of_deriv_pos (convex_Ioo _ _)
  · exact fun g hg => (hd g hg).continuousAt.continuousWithinAt
  · intro g hg
    rw [interior_Ioo] at hg
    rw [(hd g hg).deriv]
    have hg0 := hg.1
    have hL : 2 * q < -2 * Real.log g := hpos g hg
    set ℓ := -2 * Real.log g
    set E := Real.exp (q * Real.log ℓ)
    have hE : 0 < E := Real.exp_pos _
    have hℓ0 : 0 < ℓ := by linarith
    have : 1 * E + g * (E * (q * ((-2 * g⁻¹) / ℓ))) = E * ((ℓ - 2 * q) / ℓ) := by
      field_simp; ring
    rw [this]
    exact mul_pos hE (div_pos (by linarith) hℓ0)

/-- ORDER_CANON Lemma M2: S(δ) = Σ_x e^{−δ|x|} is decreasing in δ (any index type, |x| ≥ 0,
summability at the smaller rate). -/
theorem schurSum_antitone {ι : Type*} (w : ι → ℝ) (hw : ∀ x, 0 ≤ w x) {δ₁ δ₂ : ℝ}
    (hδ : δ₁ ≤ δ₂) (hs : Summable fun x => Real.exp (-δ₁ * w x)) :
    ∑' x, Real.exp (-δ₂ * w x) ≤ ∑' x, Real.exp (-δ₁ * w x) := by
  have hle : ∀ x, Real.exp (-δ₂ * w x) ≤ Real.exp (-δ₁ * w x) := fun x =>
    Real.exp_le_exp.mpr (by nlinarith [hw x])
  exact (hs.of_nonneg_of_le (fun _ => (Real.exp_pos _).le) hle).tsum_le_tsum hle hs

/-- ORDER_CANON Lemma M2: k = c_P c/(c + 4Γ) is increasing in c and decreasing in Γ. -/
theorem kMap_mono {cP c₁ c₂ Γ₁ Γ₂ : ℝ} (hcP : 0 ≤ cP) (hc₁ : 0 < c₁) (hc : c₁ ≤ c₂)
    (hΓ₂ : 0 ≤ Γ₂) (hΓ : Γ₂ ≤ Γ₁) :
    cP * c₁ / (c₁ + 4 * Γ₁) ≤ cP * c₂ / (c₂ + 4 * Γ₂) := by
  rw [div_le_div_iff₀ (by linarith) (by linarith)]
  have : c₁ * (c₂ + 4 * Γ₂) ≤ c₂ * (c₁ + 4 * Γ₁) := by nlinarith
  nlinarith

/-- ORDER_CANON Lemma M2: ε^a = min{½δ, c/(16 C b Σ(½δ))} is increasing in δ and c and
decreasing in b, given Σ decreasing (Σ(½δ₂) ≤ Σ(½δ₁), `schurSum_antitone`). -/
theorem epsMap_mono {C δ₁ δ₂ c₁ c₂ b₁ b₂ S₁ S₂ : ℝ} (hC : 0 < C) (hδ : δ₁ ≤ δ₂)
    (hc₁ : 0 ≤ c₁) (hc : c₁ ≤ c₂) (hb₂ : 0 < b₂) (hb : b₂ ≤ b₁) (hS₂ : 0 < S₂) (hΣ : S₂ ≤ S₁) :
    min (δ₁ / 2) (c₁ / (16 * C * b₁ * S₁)) ≤ min (δ₂ / 2) (c₂ / (16 * C * b₂ * S₂)) := by
  refine min_le_min (by linarith) ?_
  have h1 : 16 * C * b₂ * S₂ ≤ 16 * C * b₁ * S₁ := by gcongr
  exact div_le_div₀ (by linarith) hc (by positivity) h1

/-- ORDER_CANON Lemma M2 / amendment E4: e^{2Lδ} is increasing in δ (for L ≥ 0). -/
theorem expRange_mono {L δ₁ δ₂ : ℝ} (hL : 0 ≤ L) (hδ : δ₁ ≤ δ₂) :
    Real.exp (2 * L * δ₁) ≤ Real.exp (2 * L * δ₂) :=
  Real.exp_le_exp.mpr (by nlinarith)

end YmLean

#print axioms YmLean.a10Sum_eq_four
#print axioms YmLean.a10Sum_closed
#print axioms YmLean.a10Sum_ge_top
#print axioms YmLean.a10Sum_unbounded
#print axioms YmLean.gLogPow_strictMonoOn
#print axioms YmLean.schurSum_antitone
#print axioms YmLean.kMap_mono
#print axioms YmLean.epsMap_mono
#print axioms YmLean.expRange_mono
