import YmLean.TheoremK
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Algebra.BigOperators.Group.Finset.Powerset
import Mathlib.Algebra.BigOperators.Intervals
import Mathlib.Algebra.BigOperators.Ring.Finset

/-!
# Interpolation and rate arithmetic (SOURCES_A3_SIGMA.md §3.2, SOURCES_T2_KUNIF.md §5.2,
SOURCES_T2_KAPPA2.md H-215 (K1), SOURCES_GGAIN_LF.md)

1. `multilinear_convex`: a function affine in each coordinate is the convex combination of its
   corner values with product weights (A3_SIGMA §3.2, the identity C_s = Σ_τ w_τ(s) C_τ).
   `monomial_affine` shows that the walk weight s^ω = Π_{c∈T} s_c is affine in each coordinate.
2. `window_perturb`: KUNIF (K3) under a perturbation |β_j − β_j^0| ≤ C_β g_j, g_j ≤ γ, C_βγ ≤ b/4.
3. `rescale_exp`, `rescale_rate`, `K1_iff`, `K1_numeric`: KAPPA2 (2.36) recovery and H-215 (K1).
4. `xexp_le`, `xexp_absorb`: x e^{−θx} ≤ 1/(θe) and x e^{−x} ≤ e^{−(1−θ)x}/(θe).
-/

open Finset

namespace YmLean

section Convex

variable {S : Type*} [Fintype S] [DecidableEq S] {E : Type*} [AddCommGroup E] [Module ℝ E]

/-- Corner τ = indicator of `T` (A3_SIGMA §3.2: τ(Δ) = 1 iff Δ ∈ T). -/
def corner (T : Finset S) : S → ℝ := fun c => if c ∈ T then 1 else 0

/-- Product weight w_τ(s) = Π_{c∈T} s_c Π_{c∉T} (1 − s_c) (A3_SIGMA §3.2). -/
def cornerWeight (s : S → ℝ) (T : Finset S) : ℝ :=
  (∏ c ∈ T, s c) * ∏ c ∈ univ \ T, (1 - s c)

/-- Affine in each coordinate separately (multilinear in A3_SIGMA §3.2's sense). -/
def AffineEach (F : (S → ℝ) → E) : Prop :=
  ∀ s c t, F (Function.update s c t) =
    (1 - t) • F (Function.update s c 0) + t • F (Function.update s c 1)

omit [Fintype S] in
/-- Interpolation over the coordinates in `U`; the other coordinates stay at `s`. -/
theorem convex_aux (F : (S → ℝ) → E) (hF : AffineEach F) (U : Finset S) (s : S → ℝ) :
    F s = ∑ T ∈ U.powerset, ((∏ c ∈ T, s c) * ∏ c ∈ U \ T, (1 - s c)) •
      F (fun c => if c ∈ U then (if c ∈ T then 1 else 0) else s c) := by
  induction U using Finset.induction_on generalizing s with
  | empty => simp
  | insert a U ha ih =>
    have h0 := hF s a (s a)
    rw [Function.update_eq_self] at h0
    rw [h0, ih (Function.update s a 0), ih (Function.update s a 1), sum_powerset_insert ha,
      smul_sum, smul_sum]
    congr 1 <;> refine sum_congr rfl fun T hT => ?_ <;> rw [smul_smul] <;>
      have hTU := mem_powerset.mp hT <;> have haT : a ∉ T := fun h => ha (hTU h)
    · have p1 : ∏ c ∈ T, Function.update s a 0 c = ∏ c ∈ T, s c :=
        prod_congr rfl fun c hc => Function.update_of_ne (by rintro rfl; exact haT hc) _ _
      have p2 : ∏ c ∈ U \ T, (1 - Function.update s a 0 c) = ∏ c ∈ U \ T, (1 - s c) :=
        prod_congr rfl fun c hc => by
          rw [Function.update_of_ne (by rintro rfl; exact ha (mem_sdiff.mp hc).1)]
      have e : insert a U \ T = insert a (U \ T) := by
        ext c; simp only [mem_sdiff, mem_insert]; constructor
        · rintro ⟨h | h, h'⟩ <;> [exact Or.inl h; exact Or.inr ⟨h, h'⟩]
        · rintro (rfl | ⟨h, h'⟩) <;> [exact ⟨Or.inl rfl, haT⟩; exact ⟨Or.inr h, h'⟩]
      rw [p1, p2, e, prod_insert (fun h => ha (mem_sdiff.mp h).1)]
      congr 1
      · ring
      · congr 1; funext c
        by_cases hc : c = a
        · subst hc; simp [ha, haT]
        · simp [mem_insert, hc]
    · have p1 : ∏ c ∈ T, Function.update s a 1 c = ∏ c ∈ T, s c :=
        prod_congr rfl fun c hc => Function.update_of_ne (by rintro rfl; exact haT hc) _ _
      have p2 : ∏ c ∈ U \ T, (1 - Function.update s a 1 c) = ∏ c ∈ U \ T, (1 - s c) :=
        prod_congr rfl fun c hc => by
          rw [Function.update_of_ne (by rintro rfl; exact ha (mem_sdiff.mp hc).1)]
      have e : insert a U \ insert a T = U \ T := by
        ext c; simp only [mem_sdiff, mem_insert]; constructor
        · rintro ⟨h | h, h'⟩
          · exact absurd (Or.inl h) h'
          · exact ⟨h, fun h'' => h' (Or.inr h'')⟩
        · rintro ⟨h, h'⟩
          exact ⟨Or.inr h, by rintro (rfl | h''); exacts [ha h, h' h'']⟩
      rw [p1, p2, e, prod_insert haT]
      congr 1
      · ring
      · congr 1; funext c
        by_cases hc : c = a
        · subst hc; simp [ha]
        · simp [mem_insert, hc]

/-- A3_SIGMA §3.2: for F affine in each variable and s ∈ [0,1]^S,
F(s) = Σ_T w_T(s) F(corner_T), with w_T(s) ≥ 0 and Σ_T w_T(s) = 1. -/
theorem multilinear_convex (F : (S → ℝ) → E) (hF : AffineEach F) (s : S → ℝ)
    (hs : ∀ c, 0 ≤ s c ∧ s c ≤ 1) :
    F s = ∑ T : Finset S, cornerWeight s T • F (corner T) ∧
      (∀ T, 0 ≤ cornerWeight s T) ∧ ∑ T : Finset S, cornerWeight s T = 1 := by
  refine ⟨?_, fun T => mul_nonneg (prod_nonneg fun c _ => (hs c).1)
    (prod_nonneg fun c _ => by linarith [(hs c).2]), ?_⟩
  · rw [convex_aux F hF univ s, ← powerset_univ]
    simp [cornerWeight]; rfl
  · rw [← powerset_univ]
    have := prod_add s (fun c => 1 - s c) univ
    simp only [add_sub_cancel, prod_const_one] at this
    simpa [cornerWeight] using this.symm

omit [Fintype S] in
/-- The walk weight s ↦ Π_{c∈T} s_c is affine in each coordinate (A3_SIGMA §3.2: "each
σ_0 cube enters once, with degree ≤ 1"). -/
theorem monomial_affine (T : Finset S) : AffineEach (fun s : S → ℝ => ∏ c ∈ T, s c) := by
  intro s c t
  by_cases hc : c ∈ T
  · simp only [prod_update_of_mem hc]; ring
  · simp only [prod_update_of_notMem hc]; ring

end Convex

/-- SOURCES_T2_KUNIF §5.2 (K3) under perturbation. The hypothesis `hw` is the reference window
bound |Σ_{k ≤ i < K} β_i^0 − b(K − k)| ≤ 2R in the exact form of the conclusion of
`window_of_partial` for x k = Σ_{i<k} β_i^0. With |β_j − β_j^0| ≤ C_β g_j, 0 ≤ C_β, g_j ≤ γ,
C_βγ ≤ b/4, every window sum Σ_{k ≤ i < K} β_i lies in [(3b/4)(K−k) − 2R, (5b/4)(K−k) + 2R]. -/
theorem window_perturb (β β0 g : ℕ → ℝ) (b R Cβ γ : ℝ) (hC : 0 ≤ Cβ)
    (hβ : ∀ j, |β j - β0 j| ≤ Cβ * g j) (hg : ∀ j, g j ≤ γ) (hCγ : Cβ * γ ≤ b / 4)
    (k K : ℕ) (hkK : k ≤ K)
    (hw : |(∑ i ∈ range K, β0 i) - (∑ i ∈ range k, β0 i) - b * ((K - k : ℕ) : ℝ)| ≤ 2 * R) :
    3 * b / 4 * ((K - k : ℕ) : ℝ) - 2 * R ≤ ∑ i ∈ Ico k K, β i ∧
      ∑ i ∈ Ico k K, β i ≤ 5 * b / 4 * ((K - k : ℕ) : ℝ) + 2 * R := by
  rw [← sum_Ico_eq_sub _ hkK] at hw
  have hd : |∑ i ∈ Ico k K, β i - ∑ i ∈ Ico k K, β0 i| ≤ ((K - k : ℕ) : ℝ) * (b / 4) := by
    rw [← sum_sub_distrib]
    refine (abs_sum_le_sum_abs _ _).trans ?_
    calc ∑ i ∈ Ico k K, |β i - β0 i| ≤ ∑ _i ∈ Ico k K, b / 4 :=
          sum_le_sum fun j _ => (hβ j).trans ((mul_le_mul_of_nonneg_left (hg j) hC).trans hCγ)
      _ = _ := by rw [sum_const, Nat.card_Ico, nsmul_eq_mul]
  have hn : (0 : ℝ) ≤ ((K - k : ℕ) : ℝ) := Nat.cast_nonneg _
  constructor <;> nlinarith [abs_le.mp hw, abs_le.mp hd]

/-- `window_perturb` fed by `window_of_partial` (L-009 (Theorem K) form |Σ_{i<k} β_i^0 − k b| ≤ R). -/
theorem window_perturb_partial (β β0 g : ℕ → ℝ) (b R Cβ γ : ℝ) (hC : 0 ≤ Cβ)
    (hβ : ∀ j, |β j - β0 j| ≤ Cβ * g j) (hg : ∀ j, g j ≤ γ) (hCγ : Cβ * γ ≤ b / 4)
    (h : ∀ k, |(∑ i ∈ range k, β0 i) - k * b| ≤ R) (k K : ℕ) (hkK : k ≤ K) :
    3 * b / 4 * ((K - k : ℕ) : ℝ) - 2 * R ≤ ∑ i ∈ Ico k K, β i ∧
      ∑ i ∈ Ico k K, β i ≤ 5 * b / 4 * ((K - k : ℕ) : ℝ) + 2 * R :=
  window_perturb β β0 g b R Cβ γ hC hβ hg hCγ k K hkK
    (window_of_partial (fun k => ∑ i ∈ range k, β0 i) b R h k K hkK)

/-- SOURCES_T2_KAPPA2, CMP 116 (2.36) `2 d_k(Z) ≥ L d_{k+1}(Z′)`: a bound at rate θκ in d_k
gives rate θκ(L/2) in d_{k+1}. -/
theorem rescale_exp (θκ L dk dk1 : ℝ) (hθκ : 0 ≤ θκ) (h236 : L * dk1 ≤ 2 * dk) :
    Real.exp (-θκ * dk) ≤ Real.exp (-(θκ * (L / 2)) * dk1) :=
  Real.exp_le_exp.mpr (by nlinarith)

/-- SOURCES_T2_KAPPA2: θκ(L/2) ≥ (1 + 4β)κ ⇔ θL/2 ≥ 1 + 4β, for κ > 0. -/
theorem rescale_rate (θ L β κ : ℝ) (hκ : 0 < κ) :
    (1 + 4 * β) * κ ≤ θ * κ * (L / 2) ↔ 1 + 4 * β ≤ θ * L / 2 := by
  rw [show θ * κ * (L / 2) = (θ * L / 2) * κ by ring]
  exact mul_le_mul_iff_of_pos_right hκ

/-- SOURCES_T2_KAPPA2 H-215 (K1): θ(1 − 10δ)L/2 ≥ 1 + 4β ⇔ δ ≤ (1/10)(1 − 2(1+4β)/(θL)). -/
theorem K1_iff (θ L β δ : ℝ) (hθ : 0 < θ) (hL : 0 < L) :
    1 + 4 * β ≤ θ * (1 - 10 * δ) * L / 2 ↔ δ ≤ 1 / 10 * (1 - 2 * (1 + 4 * β) / (θ * L)) := by
  have hθL : 0 < θ * L := mul_pos hθ hL
  rw [le_div_iff₀ (by norm_num : (0 : ℝ) < 2), ← sub_nonneg, ← sub_nonneg (b := δ)]
  have e : 1 / 10 * (1 - 2 * (1 + 4 * β) / (θ * L)) - δ
      = (θ * (1 - 10 * δ) * L - (1 + 4 * β) * 2) / (10 * (θ * L)) := by
    field_simp; ring
  rw [e]
  constructor
  · intro h; positivity
  · intro h; exact (div_nonneg_iff.mp h).elim (fun h => h.1)
      (fun h => absurd h.2 (not_le.mpr (by positivity)))

/-- SOURCES_T2_KAPPA2 numbers at L = 13, θ = 1/2, β = 1/4: δ_θ = 1/26 ≈ 0.0385, and
δ = 0.03 satisfies H-215 (K1) (3.25 · 0.7 = 2.275 ≥ 2). -/
theorem K1_numeric :
    (1 / 10 : ℝ) * (1 - 2 * (1 + 4 * (1 / 4)) / ((1 / 2) * 13)) = 1 / 26 ∧
      (1 / 26 : ℝ) ≤ 0.0385 ∧
      1 + 4 * (1 / 4 : ℝ) ≤ (1 / 2) * (1 - 10 * 0.03) * 13 / 2 := by
  norm_num

/-- SOURCES_GGAIN_LF (polynomial absorption): x e^{−θx} ≤ 1/(θe) for x ≥ 0, θ > 0.
From y + 1 ≤ e^y at y = θx − 1. -/
theorem xexp_le (x θ : ℝ) (hθ : 0 < θ) :
    x * Real.exp (-(θ * x)) ≤ 1 / (θ * Real.exp 1) := by
  have h := Real.add_one_le_exp (θ * x - 1)
  rw [Real.exp_sub] at h
  have he := Real.exp_pos 1
  have hx := Real.exp_pos (θ * x)
  rw [le_div_iff₀ (by positivity), Real.exp_neg]
  rw [le_div_iff₀ he] at h
  calc x * (Real.exp (θ * x))⁻¹ * (θ * Real.exp 1)
      = (θ * x - 1 + 1) * Real.exp 1 * (Real.exp (θ * x))⁻¹ := by ring
    _ ≤ Real.exp (θ * x) * (Real.exp (θ * x))⁻¹ := by gcongr
    _ = 1 := mul_inv_cancel₀ hx.ne'

/-- SOURCES_GGAIN_LF: x e^{−x} ≤ e^{−(1−θ)x}/(θe) for θ > 0 (θ ∈ (0,1) in the source). -/
theorem xexp_absorb (x θ : ℝ) (hθ : 0 < θ) :
    x * Real.exp (-x) ≤ Real.exp (-((1 - θ) * x)) / (θ * Real.exp 1) := by
  have e : x * Real.exp (-x) = x * Real.exp (-(θ * x)) * Real.exp (-((1 - θ) * x)) := by
    rw [mul_assoc, ← Real.exp_add]; ring_nf
  rw [e, div_eq_mul_inv, mul_comm (Real.exp _), ← one_div]
  exact mul_le_mul_of_nonneg_right (xexp_le x θ hθ) (Real.exp_pos _).le

end YmLean

#print axioms YmLean.multilinear_convex
#print axioms YmLean.monomial_affine
#print axioms YmLean.window_perturb
#print axioms YmLean.window_perturb_partial
#print axioms YmLean.rescale_exp
#print axioms YmLean.rescale_rate
#print axioms YmLean.K1_iff
#print axioms YmLean.K1_numeric
#print axioms YmLean.xexp_le
#print axioms YmLean.xexp_absorb
