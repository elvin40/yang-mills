import YmLean.LemmaDPrime

/-!
# Lemmas D and E (LEMMAS.md, corrected) and Step 8 of Lemma D′

One-argument form `β j g` (as in LemmaDPrime.lean); the history version of LEMMAS.md is not
formalized. Lean names `b`, `b'` are the note's constants β, β′.
-/

open Finset

noncomputable section

namespace YmLean

variable {β : ℕ → ℝ → ℝ} {γ : ℝ}

/-- The clamped flow is continuous in `u₀` if every `β j` is continuous on `]0, γ]`. -/
lemma flow_cont_of (hγ : 0 < γ) (hc : ∀ j, ContinuousOn (β j) (Set.Ioc 0 γ)) (k : ℕ) :
    Continuous fun u₀ => flow β γ u₀ k := by
  induction k with
  | zero => exact continuous_id
  | succ k ih =>
    have hφ : Continuous fun u₀ => φ γ (flow β γ u₀ k) := (φ_cont hγ).comp ih
    exact ih.sub ((hc (k + 1)).comp_continuous hφ fun _ => ⟨φ_pos hγ _, φ_le hγ _⟩)

/-- `T(k,K) ∈ [b(K-k), b'(K-k)]` when every increment lies in `[b, b']`. -/
lemma tail_bounds {b b' : ℝ} (hbd : ∀ j x, 0 < x → x ≤ γ → b ≤ β j x ∧ β j x ≤ b')
    {K : ℕ} (c : ℕ → ℝ) (hc : ∀ i < K, 0 < c i ∧ c i ≤ γ) (k : ℕ) :
    b * (K - k : ℕ) ≤ ∑ i ∈ Ioc k K, β i (c (i - 1)) ∧
      ∑ i ∈ Ioc k K, β i (c (i - 1)) ≤ b' * (K - k : ℕ) := by
  have hci : ∀ i ∈ Ioc k K, b ≤ β i (c (i - 1)) ∧ β i (c (i - 1)) ≤ b' := fun i hi => by
    simp only [mem_Ioc] at hi; exact hbd _ _ (hc _ (by omega)).1 (hc _ (by omega)).2
  have lo := card_nsmul_le_sum (Ioc k K) _ b fun i hi => (hci i hi).1
  rw [Nat.card_Ioc, nsmul_eq_mul] at lo
  exact ⟨by linarith, window_sum_le _ fun i hi => (hci i hi).2⟩

/-- **Lemma D** (LEMMAS.md, corrected). Increments in `[b, b']`, `0 ≤ b ≤ b'`, continuous on
`]0, γ]`. (1) Every trajectory with couplings in `]0, γ]` and `u K = 1/g²` satisfies
`1/g² + b(K-k) ≤ u k ≤ 1/g² + b'(K-k)`. (2) For every `K` and `g ∈ ]0, γ]` a shot trajectory
exists (IVT on `[t + bK, t + b'K]`). -/
theorem lemma_D (β : ℕ → ℝ → ℝ) (γ b b' : ℝ) (hγ : 0 < γ) (hb : 0 ≤ b) (hbb : b ≤ b')
    (hcont : ∀ j, ContinuousOn (β j) (Set.Ioc 0 γ))
    (hbd : ∀ j x, 0 < x → x ≤ γ → b ≤ β j x ∧ β j x ≤ b') :
    (∀ (K : ℕ) (g : ℝ) (u : ℕ → ℝ), (∀ k < K, u (k + 1) = u k - β (k + 1) (1 / √(u k))) →
      (∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) → u K = 1 / g ^ 2 →
      ∀ k ≤ K, 1 / g ^ 2 + b * (K - k : ℕ) ≤ u k ∧ u k ≤ 1 / g ^ 2 + b' * (K - k : ℕ)) ∧
    (∀ (K : ℕ) (g : ℝ), 0 < g → g ≤ γ → ∃ u, Shot β γ g K u ∧
      ∀ k ≤ K, 1 / g ^ 2 + b * (K - k : ℕ) ≤ u k ∧ u k ≤ 1 / g ^ 2 + b' * (K - k : ℕ)) := by
  have traj : ∀ (K : ℕ) (g : ℝ) (u : ℕ → ℝ),
      (∀ k < K, u (k + 1) = u k - β (k + 1) (1 / √(u k))) →
      (∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) → u K = 1 / g ^ 2 →
      ∀ k ≤ K, 1 / g ^ 2 + b * (K - k : ℕ) ≤ u k ∧ u k ≤ 1 / g ^ 2 + b' * (K - k : ℕ) := by
    intro K g u hrec hc hu k hk
    have e := tail_eq u (fun i => 1 / √(u i)) hrec hk
    have := tail_bounds hbd _ hc k
    constructor <;> linarith [this.1, this.2]
  refine ⟨traj, fun K g hg0 hg => ?_⟩
  set t := 1 / g ^ 2
  have ht : 1 / γ ^ 2 ≤ t :=
    one_div_le_one_div_of_le (by positivity) (pow_le_pow_left₀ hg0.le hg 2)
  have cpl := fun u₀ i (_ : i < K) =>
    (⟨φ_pos hγ _, φ_le hγ _⟩ : 0 < φ γ (flow β γ u₀ i) ∧ φ γ (flow β γ u₀ i) ≤ γ)
  have lo := (tail_bounds hbd _ (cpl (t + b * K)) 0).1
  have hi := (tail_bounds hbd _ (cpl (t + b' * K)) 0).2
  rw [← flow_tail _ (Nat.zero_le K)] at lo hi
  simp only [flow, Nat.sub_zero] at lo hi
  have hK : (0 : ℝ) ≤ K := Nat.cast_nonneg K
  obtain ⟨u₀, -, hF⟩ := intermediate_value_Icc (f := fun u₀ => flow β γ u₀ K)
    (a := t + b * K) (b := t + b' * K) (by nlinarith)
    (flow_cont_of hγ hcont K).continuousOn (show t ∈ Set.Icc _ _ from ⟨by linarith, by linarith⟩)
  have hab : ∀ k ≤ K, 1 / γ ^ 2 ≤ flow β γ u₀ k := fun k hk => by
    have := (tail_bounds hbd _ (cpl u₀) k).1
    rw [← flow_tail _ hk] at this
    simp only at hF
    nlinarith [(Nat.cast_nonneg (K - k) : (0 : ℝ) ≤ (K - k : ℕ))]
  have s := shot_of_flow hγ hg0 hF hab
  exact ⟨_, s, traj K g _ s.1 (fun k hk => s.2.1 k hk.le) s.2.2.1⟩

/-- `γ = min(γ₀, √(β₀/(2C)))`, `γ = γ₀` if `C = 0`. -/
def γE (γ₀ C β₀ : ℝ) : ℝ := if C = 0 then γ₀ else min γ₀ (√(β₀ / (2 * C)))

/-- **Lemma E** (LEMMAS.md, corrected). `β1 j` is the one-loop coefficient `β_j^{(0)}`. -/
theorem lemma_E (β : ℕ → ℝ → ℝ) (β1 : ℕ → ℝ) (γ₀ C β₀ β₀' : ℝ) (hγ₀ : 0 < γ₀) (hC : 0 ≤ C)
    (hβ₀ : 0 < β₀) (h1 : ∀ j, β₀ ≤ β1 j ∧ β1 j ≤ β₀')
    (hrem : ∀ j g, 0 ≤ g → g ≤ γ₀ → |β j g - β1 j| ≤ C * g ^ 2) :
    0 < γE γ₀ C β₀ ∧ γE γ₀ C β₀ ≤ γ₀ ∧
    ∀ j g, 0 < g → g ≤ γE γ₀ C β₀ → β₀ / 2 ≤ β j g ∧ β j g ≤ β₀' + β₀ / 2 := by
  have key : 0 < γE γ₀ C β₀ ∧ γE γ₀ C β₀ ≤ γ₀ ∧
      ∀ g, 0 < g → g ≤ γE γ₀ C β₀ → C * g ^ 2 ≤ β₀ / 2 := by
    unfold γE; split_ifs with h0
    · subst h0; exact ⟨hγ₀, le_rfl, fun g _ _ => by simp; positivity⟩
    · have hCp : 0 < C := lt_of_le_of_ne hC (Ne.symm h0)
      refine ⟨lt_min hγ₀ (Real.sqrt_pos.2 (by positivity)), min_le_left _ _, fun g hg0 hg => ?_⟩
      have h2 : g ^ 2 ≤ β₀ / (2 * C) := by
        calc g ^ 2 ≤ √(β₀ / (2 * C)) ^ 2 :=
              pow_le_pow_left₀ hg0.le (hg.trans (min_le_right _ _)) 2
          _ = β₀ / (2 * C) := Real.sq_sqrt (by positivity)
      calc C * g ^ 2 ≤ C * (β₀ / (2 * C)) := mul_le_mul_of_nonneg_left h2 hC
        _ = β₀ / 2 := by field_simp
  obtain ⟨hp, hle, hk⟩ := key
  refine ⟨hp, hle, fun j g hg0 hg => ?_⟩
  have := hrem j g hg0.le (hg.trans hle); have := hk g hg0 hg; have := h1 j
  constructor <;> linarith [le_abs_self (β j g - β1 j), neg_abs_le (β j g - β1 j)]

/-- Lemmas E + D: under E's hypotheses and continuity, shooting for every `K` and `g ∈ ]0, γ]`
with the two-sided bound for `β = β₀/2`, `β′ = β₀′ + β₀/2`. -/
theorem lemma_DE (β : ℕ → ℝ → ℝ) (β1 : ℕ → ℝ) (γ₀ C β₀ β₀' : ℝ) (hγ₀ : 0 < γ₀) (hC : 0 ≤ C)
    (hβ₀ : 0 < β₀) (h1 : ∀ j, β₀ ≤ β1 j ∧ β1 j ≤ β₀')
    (hrem : ∀ j g, 0 ≤ g → g ≤ γ₀ → |β j g - β1 j| ≤ C * g ^ 2)
    (hcont : ∀ j, ContinuousOn (β j) (Set.Icc 0 γ₀)) (K : ℕ) (g : ℝ) (hg0 : 0 < g)
    (hg : g ≤ γE γ₀ C β₀) : ∃ u, Shot β (γE γ₀ C β₀) g K u ∧ ∀ k ≤ K,
      1 / g ^ 2 + β₀ / 2 * (K - k : ℕ) ≤ u k ∧ u k ≤ 1 / g ^ 2 + (β₀' + β₀ / 2) * (K - k : ℕ) := by
  obtain ⟨hp, hle, hb⟩ := lemma_E β β1 γ₀ C β₀ β₀' hγ₀ hC hβ₀ h1 hrem
  have hb' : β₀ ≤ β₀' := (h1 0).1.trans (h1 0).2
  exact (lemma_D β _ _ _ hp (by positivity) (by linarith)
    (fun j => (hcont j).mono fun x hx => ⟨hx.1.le, hx.2.trans hle⟩) hb).2 K g hg0 hg

/-- Lemma D′ constants: `g₁ = γ` if `J = 0`. -/
lemma g₁_of_J_zero {γ : ℝ} (hγ : 0 < γ) (B βinf : ℝ) : g₁ γ 0 B βinf = γ := by
  simp only [g₁, D, Nat.cast_zero, zero_mul, add_zero]; exact inv_sqrt_inv_sq hγ

/-! ### Step 8 of Lemma D′: all `β_j(0) > 0` -/

/-- `β₀ = min(min_{j ≤ J} β_j(0), β∞/2)`. -/
def β0min (β : ℕ → ℝ → ℝ) (J : ℕ) (βinf : ℝ) : ℝ :=
  min ((range (J + 1)).inf' ⟨0, mem_range.2 J.succ_pos⟩ fun j => β j 0) (βinf / 2)

/-- **Lemma D′ (d), last sentence (Step 8).** Hypotheses of `lemma_DPrime` plus `β_j(0) > 0` for
all `j`. With `β₀ = β0min` and `γ″ = min(γ₀, γ_Bal, β₀/(2C₁))` (= `γdef γ₀ γBal C₁ (2β₀)`):
`γ″ ≤ γ_Bal`, and for every `K` and `g ∈ ]0, γ″]` there is a shot trajectory with
`1/g² + (β₀/2)(K-k) ≤ u_k ≤ 1/g² + (B + β₀/2)(K-k)`. -/
theorem lemma_DPrime_step8 (β : ℕ → ℝ → ℝ) (γ₀ γBal C₁ B βinf : ℝ) (J : ℕ)
    (hγ₀ : 0 < γ₀) (hγBal : 0 < γBal) (hC₁ : 0 ≤ C₁) (hβinf : 0 < βinf)
    (hcont : ∀ j, ContinuousOn (β j) (Set.Icc 0 γ₀))
    (hlip : ∀ j g, 0 ≤ g → g ≤ γ₀ → |β j g - β j 0| ≤ C₁ * g)
    (hB : ∀ j, |β j 0| ≤ B)
    (hJ : ∀ j, J < j → βinf / 2 ≤ β j 0)
    (hpos : ∀ j, 0 < β j 0) :
    γdef γ₀ γBal C₁ (2 * β0min β J βinf) ≤ γBal ∧
    ∀ (K : ℕ) (g : ℝ), 0 < g → g ≤ γdef γ₀ γBal C₁ (2 * β0min β J βinf) →
      ∃ u, Shot β (γdef γ₀ γBal C₁ (2 * β0min β J βinf)) g K u ∧ ∀ k ≤ K,
        1 / g ^ 2 + β0min β J βinf / 2 * (K - k : ℕ) ≤ u k ∧
          u k ≤ 1 / g ^ 2 + (B + β0min β J βinf / 2) * (K - k : ℕ) := by
  set b₀ := β0min β J βinf
  have hb₀ : 0 < b₀ := lt_min ((lt_inf'_iff _).2 fun j _ => hpos j) (by linarith)
  have hb₀j : ∀ j, b₀ ≤ β j 0 := fun j => by
    rcases le_or_gt j J with h | h
    · exact (min_le_left _ _).trans (inf'_le _ (mem_range.2 (by omega)))
    · exact (min_le_right _ _).trans (hJ j h)
  obtain ⟨hp, hle, hBal, hC⟩ := γdef_spec hγ₀ hγBal hC₁ (by linarith : 0 < 2 * b₀)
  have hB0 : 0 ≤ B := (abs_nonneg _).trans (hB 0)
  refine ⟨hBal, fun K g hg0 hg => (lemma_D β _ (b₀ / 2) (B + b₀ / 2) hp (by positivity)
    (by linarith) (fun j => (hcont j).mono fun x hx => ⟨hx.1.le, hx.2.trans hle⟩)
    (fun j x hx0 hx => ?_)).2 K g hg0 hg⟩
  have h1 := hlip j x hx0.le (hx.trans hle)
  have h2 : C₁ * x ≤ b₀ / 2 := (mul_le_mul_of_nonneg_left hx hC₁).trans (by linarith)
  have := hb₀j j; have := hB j
  constructor <;> linarith [le_abs_self (β j x - β j 0), neg_abs_le (β j x - β j 0),
    le_abs_self (β j 0)]

end YmLean
