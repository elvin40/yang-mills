import Mathlib.Analysis.Real.Sqrt
import Mathlib.Topology.Order.IntermediateValue

/-!
# Lemma D′ (shooting with early negative one-loop increments)

Abstract form of LEMMA_DPRIME.md. `β j g` is the `j`-th increment at coupling `g`,
`u k = 1/g_k²`, recursion `u (k+1) = u k - β (k+1) (g_k)`, `g_k = 1/√(u k)`.
-/

open Finset

noncomputable section

namespace YmLean

/-- Hypotheses (i)–(iii) of Lemma D′, plus the three properties of `γ` the proof uses. -/
structure Hyp (β : ℕ → ℝ → ℝ) (γ₀ C₁ B βinf γ : ℝ) (J : ℕ) : Prop where
  βinf_pos : 0 < βinf
  cont : ∀ j, ContinuousOn (β j) (Set.Icc 0 γ₀)
  lip : ∀ j g, 0 ≤ g → g ≤ γ₀ → |β j g - β j 0| ≤ C₁ * g
  C₁_nonneg : 0 ≤ C₁
  bound : ∀ j, |β j 0| ≤ B
  conv : ∀ j, J < j → βinf / 2 ≤ β j 0
  γ_pos : 0 < γ
  γ_le : γ ≤ γ₀
  γ_C₁ : C₁ * γ ≤ βinf / 4

/-- `B′ = B + β∞/4`. -/
def B' (B βinf : ℝ) : ℝ := B + βinf / 4
/-- `D = J·B′`. -/
def D (J : ℕ) (B βinf : ℝ) : ℝ := J * B' B βinf
/-- `D′ = J·(B + β∞/2)`. -/
def D' (J : ℕ) (B βinf : ℝ) : ℝ := J * (B + βinf / 2)
/-- `g₁ = (1/γ² + D)^{-1/2}`. -/
def g₁ (γ : ℝ) (J : ℕ) (B βinf : ℝ) : ℝ := 1 / √(1 / γ ^ 2 + D J B βinf)
/-- `K₀ = J + ⌈8D′/β∞⌉`. -/
def K₀ (J : ℕ) (B βinf : ℝ) : ℕ := J + ⌈8 * D' J B βinf / βinf⌉₊

/-- Clamped map `φ(u) = max(u, 1/γ²)^{-1/2}`. -/
def φ (γ u : ℝ) : ℝ := 1 / √(max u (1 / γ ^ 2))

/-- Clamped flow `ũ_k` from `ũ_0 = u₀`. -/
def flow (β : ℕ → ℝ → ℝ) (γ u₀ : ℝ) : ℕ → ℝ
  | 0 => u₀
  | k + 1 => flow β γ u₀ k - β (k + 1) (φ γ (flow β γ u₀ k))

variable {β : ℕ → ℝ → ℝ} {γ₀ C₁ B βinf γ : ℝ} {J : ℕ}

/-! ### Step 0: pointwise bounds -/

lemma B_nonneg (h : Hyp β γ₀ C₁ B βinf γ J) : 0 ≤ B := (abs_nonneg _).trans (h.bound 0)

lemma pert (h : Hyp β γ₀ C₁ B βinf γ J) {j : ℕ} {x : ℝ} (h0 : 0 ≤ x) (hx : x ≤ γ) :
    |β j x - β j 0| ≤ βinf / 4 :=
  (h.lip j x h0 (hx.trans h.γ_le)).trans
    ((mul_le_mul_of_nonneg_left hx h.C₁_nonneg).trans h.γ_C₁)

/-- (P1) -/
lemma P1 (h : Hyp β γ₀ C₁ B βinf γ J) {j : ℕ} {x : ℝ} (h0 : 0 ≤ x) (hx : x ≤ γ) :
    β j x ≤ B' B βinf := by
  have := pert h h0 hx (j := j); have := h.bound j
  unfold B'; linarith [le_abs_self (β j x - β j 0), le_abs_self (β j 0)]

/-- (P2) -/
lemma P2 (h : Hyp β γ₀ C₁ B βinf γ J) {j : ℕ} {x : ℝ} (h0 : 0 ≤ x) (hx : x ≤ γ) :
    -B' B βinf ≤ β j x := by
  have := pert h h0 hx (j := j); have := h.bound j
  unfold B'; linarith [neg_abs_le (β j x - β j 0), neg_abs_le (β j 0)]

/-- (P3) -/
lemma P3 (h : Hyp β γ₀ C₁ B βinf γ J) {j : ℕ} {x : ℝ} (h0 : 0 ≤ x) (hx : x ≤ γ) (hj : J < j) :
    βinf / 4 ≤ β j x := by
  have := pert h h0 hx (j := j); have := h.conv j hj
  linarith [neg_abs_le (β j x - β j 0)]

/-! ### Step 1: window sums -/

/-- Number of early indices `i ≤ J` in the window `{k+1, …, K}`. -/
def early (J k K : ℕ) : ℕ := ((Ioc k K).filter (· ≤ J)).card

lemma early_le_J (J k K : ℕ) : early J k K ≤ J := by
  unfold early
  calc _ ≤ (Ioc 0 J).card := card_le_card (fun i hi => by
          simp only [mem_filter, mem_Ioc] at hi ⊢; omega)
    _ = J := by simp

lemma early_le (J k K : ℕ) : early J k K ≤ K - k := by
  unfold early
  calc _ ≤ (Ioc k K).card := card_le_card (filter_subset _ _)
    _ = K - k := Nat.card_Ioc k K

lemma early_eq_zero {J k K : ℕ} (hk : J ≤ k) : early J k K = 0 := by
  unfold early; rw [card_eq_zero, filter_eq_empty_iff]
  intro i hi; simp only [mem_Ioc] at hi; omega

/-- Core counting bound: early terms `≥ -b`, late terms `≥ a`. -/
lemma window_sum_ge {J k K : ℕ} (hkK : k ≤ K) {a b : ℝ} (f : ℕ → ℝ)
    (he : ∀ i ∈ Ioc k K, -b ≤ f i) (hl : ∀ i ∈ Ioc k K, J < i → a ≤ f i) :
    -b * early J k K + a * ((K - k : ℕ) - early J k K : ℝ) ≤ ∑ i ∈ Ioc k K, f i := by
  set s := Ioc k K
  have hcard : (s.filter (· ≤ J)).card + (s.filter (fun i => ¬ i ≤ J)).card = K - k := by
    rw [filter_card_add_filter_neg_card_eq_card]; exact Nat.card_Ioc k K
  calc -b * early J k K + a * ((K - k : ℕ) - early J k K : ℝ)
      = ∑ i ∈ s, (if i ≤ J then -b else a) := by
        rw [sum_ite, sum_const, sum_const, nsmul_eq_mul, nsmul_eq_mul, ← hcard]
        unfold early; push_cast; ring
    _ ≤ ∑ i ∈ s, f i := sum_le_sum fun i hi => by
        split_ifs with hij
        · exact he i hi
        · exact hl i hi (by omega)

lemma window_sum_le {k K : ℕ} {b : ℝ} (f : ℕ → ℝ) (hu : ∀ i ∈ Ioc k K, f i ≤ b) :
    ∑ i ∈ Ioc k K, f i ≤ b * (K - k : ℕ) := by
  have := sum_le_card_nsmul (Ioc k K) f b hu
  rw [Nat.card_Ioc, nsmul_eq_mul] at this; linarith

/-- Telescoping: `u k - u K = Σ_{i=k+1}^K b i` when `u (i+1) = u i - b (i+1)`. -/
lemma telescope {K : ℕ} (u b : ℕ → ℝ) (hrec : ∀ i < K, u (i + 1) = u i - b (i + 1))
    {k : ℕ} (hk : k ≤ K) : u k - u K = ∑ i ∈ Ioc k K, b i := by
  have key : ∀ m, k ≤ m → m ≤ K → u k - u m = ∑ i ∈ Ioc k m, b i := by
    intro m hm
    induction m, hm using Nat.le_induction with
    | base => simp
    | succ m hkm ih =>
      intro hmK
      rw [sum_Ioc_succ_top hkm, ← ih (by omega), hrec m (by omega)]; ring
  exact key K hk le_rfl

end YmLean
