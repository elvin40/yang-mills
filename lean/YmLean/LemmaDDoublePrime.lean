import YmLean.LemmaDPrime

/-!
# L-005 (Lemma D″) (window-sum shooting; no index J)

KAPPA_BOUNDED.md §5.3, THEOREM2_PROOF_v3.md §2.2. Hypothesis (5.1):
`|Σ_{i=k+1}^K β_i(0) − b(K−k)| ≤ 2R` for all `k < K`. Reuses the clamped flow of LemmaDPrime.
-/

open Finset

noncomputable section

namespace YmLean

variable {β : ℕ → ℝ → ℝ} {γ₀ C₁ b R γ : ℝ}

lemma pertDD (hC₁ : 0 ≤ C₁) (hγ : γ ≤ γ₀) (hγC : C₁ * γ ≤ b / 4)
    (hlip : ∀ j g, 0 ≤ g → g ≤ γ₀ → |β j g - β j 0| ≤ C₁ * g) {j : ℕ} {x : ℝ}
    (h0 : 0 ≤ x) (hx : x ≤ γ) : |β j x - β j 0| ≤ b / 4 :=
  (hlip j x h0 (hx.trans hγ)).trans ((mul_le_mul_of_nonneg_left hx hC₁).trans hγC)

/-- (a″) `T(k,K) ∈ [(3b/4)(K−k) − 2R, (5b/4)(K−k) + 2R]` for `k < K`, couplings in `[0, γ]`. -/
lemma tail_bracketDD (hC₁ : 0 ≤ C₁) (hγ : γ ≤ γ₀) (hγC : C₁ * γ ≤ b / 4)
    (hlip : ∀ j g, 0 ≤ g → g ≤ γ₀ → |β j g - β j 0| ≤ C₁ * g)
    (hwin : ∀ k K : ℕ, k < K → |∑ i ∈ Ioc k K, β i 0 - b * (K - k : ℕ)| ≤ 2 * R)
    {K : ℕ} (c : ℕ → ℝ) (hc : ∀ i < K, 0 ≤ c i ∧ c i ≤ γ) {k : ℕ} (hk : k < K) :
    3 * b / 4 * (K - k : ℕ) - 2 * R ≤ ∑ i ∈ Ioc k K, β i (c (i - 1)) ∧
      ∑ i ∈ Ioc k K, β i (c (i - 1)) ≤ 5 * b / 4 * (K - k : ℕ) + 2 * R := by
  have hd : ∑ i ∈ Ioc k K, |β i (c (i - 1)) - β i 0| ≤ b / 4 * (K - k : ℕ) :=
    window_sum_le _ fun i hi => by
      simp only [mem_Ioc] at hi
      exact pertDD hC₁ hγ hγC hlip (hc _ (by omega)).1 (hc _ (by omega)).2
  have hs := (abs_sum_le_sum_abs (fun i => β i (c (i - 1)) - β i 0) (Ioc k K)).trans hd
  rw [sum_sub_distrib] at hs
  obtain ⟨h1, h2⟩ := abs_le.1 hs
  obtain ⟨h3, h4⟩ := abs_le.1 (hwin k K hk)
  constructor <;> linarith

lemma R_nonnegDD (hwin : ∀ k K : ℕ, k < K → |∑ i ∈ Ioc k K, β i 0 - b * (K - k : ℕ)| ≤ 2 * R) :
    0 ≤ R := by linarith [(abs_nonneg _).trans (hwin 0 1 one_pos)]

/-- The bracket `T(k,K) ∈ [−2R, B′(K−k)]`, `B′ = 5b/4 + 2R`, for all `k ≤ K` (Step 2 input). -/
lemma tail_wideDD (hb : 0 < b) (hC₁ : 0 ≤ C₁) (hγ : γ ≤ γ₀) (hγC : C₁ * γ ≤ b / 4)
    (hlip : ∀ j g, 0 ≤ g → g ≤ γ₀ → |β j g - β j 0| ≤ C₁ * g)
    (hwin : ∀ k K : ℕ, k < K → |∑ i ∈ Ioc k K, β i 0 - b * (K - k : ℕ)| ≤ 2 * R)
    {K : ℕ} (c : ℕ → ℝ) (hc : ∀ i < K, 0 ≤ c i ∧ c i ≤ γ) {k : ℕ} (hk : k ≤ K) :
    -(2 * R) ≤ ∑ i ∈ Ioc k K, β i (c (i - 1)) ∧
      ∑ i ∈ Ioc k K, β i (c (i - 1)) ≤ (5 * b / 4 + 2 * R) * (K - k : ℕ) := by
  have hR := R_nonnegDD hwin
  rcases hk.lt_or_eq with hk | rfl
  · obtain ⟨h1, h2⟩ := tail_bracketDD hC₁ hγ hγC hlip hwin c hc hk
    have hn : (1 : ℝ) ≤ (K - k : ℕ) := by exact_mod_cast (by omega : 1 ≤ K - k)
    constructor <;> nlinarith
  · simp; linarith

lemma flow_contDD (hγ : 0 < γ) (hγ₀ : γ ≤ γ₀) (hcont : ∀ j, ContinuousOn (β j) (Set.Icc 0 γ₀))
    (k : ℕ) : Continuous fun u₀ => flow β γ u₀ k := by
  induction k with
  | zero => exact continuous_id
  | succ k ih =>
    have hφ : Continuous fun u₀ => φ γ (flow β γ u₀ k) := (φ_cont hγ).comp ih
    exact ih.sub ((hcont (k + 1)).comp_continuous hφ fun u₀ =>
      ⟨(φ_pos hγ _).le, (φ_le hγ _).trans hγ₀⟩)

/-- **L-005 (Lemma D″).** `γ` is any number in `]0, γ₀]` with `C₁γ ≤ b/4` (e.g. `min(γ₀, γ_Bal, b/(4C₁))`).
`g₁ = (1/γ² + 2R)^{−1/2}`, `D = D′ = 2R`, `β = 3b/4`, `B′ = 5b/4 + 2R`. -/
theorem lemma_DDoublePrime (β : ℕ → ℝ → ℝ) (γ₀ C₁ b R γ : ℝ)
    (hb : 0 < b) (hC₁ : 0 ≤ C₁) (hγpos : 0 < γ) (hγ : γ ≤ γ₀) (hγC : C₁ * γ ≤ b / 4)
    (hcont : ∀ j, ContinuousOn (β j) (Set.Icc 0 γ₀))
    (hlip : ∀ j g, 0 ≤ g → g ≤ γ₀ → |β j g - β j 0| ≤ C₁ * g)
    (hwin : ∀ k K : ℕ, k < K → |∑ i ∈ Ioc k K, β i 0 - b * (K - k : ℕ)| ≤ 2 * R) :
    0 ≤ R ∧ 1 / √(1 / γ ^ 2 + 2 * R) ≤ γ ∧
    -- (a″)
    (∀ (K : ℕ) (c : ℕ → ℝ), (∀ i < K, 0 ≤ c i ∧ c i ≤ γ) → ∀ k < K,
      3 * b / 4 * (K - k : ℕ) - 2 * R ≤ ∑ i ∈ Ioc k K, β i (c (i - 1)) ∧
      ∑ i ∈ Ioc k K, β i (c (i - 1)) ≤ 5 * b / 4 * (K - k : ℕ) + 2 * R) ∧
    -- (b): the solution is the clamped flow, and the clamp is inactive on it
    (∀ (K : ℕ) (g : ℝ), 0 < g → g ≤ 1 / √(1 / γ ^ 2 + 2 * R) →
      ∃ u₀, Shot β γ g K (fun k => flow β γ u₀ k) ∧ ∀ k ≤ K, 1 / γ ^ 2 ≤ flow β γ u₀ k) ∧
    -- (c′)
    (∀ (K : ℕ) (u : ℕ → ℝ), (∀ k < K, u (k + 1) = u k - β (k + 1) (1 / √(u k))) →
      (∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) → ∀ m n : ℕ, m ≤ n → n ≤ K →
      u n + 3 * b / 4 * (n - m : ℕ) - 2 * R ≤ u m ∧
        u m ≤ u n + (5 * b / 4 + 2 * R) * (n - m : ℕ)) ∧
    -- (d): literal (0.31), lower constant b/2, for windows `n − m ≥ 8R/b`
    (∀ (K : ℕ) (u : ℕ → ℝ), (∀ k < K, u (k + 1) = u k - β (k + 1) (1 / √(u k))) →
      (∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) → ∀ m n : ℕ, m ≤ n → n ≤ K →
      8 * R / b ≤ (n - m : ℕ) →
      u n + b / 2 * (n - m : ℕ) ≤ u m ∧ u m ≤ u n + (5 * b / 4 + 2 * R) * (n - m : ℕ)) := by
  have hR := R_nonnegDD hwin
  have hD : 0 ≤ 2 * R := by linarith
  -- (c′) core: windows of a true trajectory
  have win : ∀ (K : ℕ) (u : ℕ → ℝ), (∀ k < K, u (k + 1) = u k - β (k + 1) (1 / √(u k))) →
      (∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) → ∀ m n : ℕ, m < n → n ≤ K →
      3 * b / 4 * (n - m : ℕ) - 2 * R ≤ u m - u n ∧
        u m - u n ≤ 5 * b / 4 * (n - m : ℕ) + 2 * R := by
    intro K u hrec hc m n hmn hnK
    rw [tail_eq (β := β) (K := n) u (fun i => 1 / √(u i)) (fun i hi => hrec i (by omega)) hmn.le]
    exact tail_bracketDD hC₁ hγ hγC hlip hwin _
      (fun i hi => ⟨(hc i (by omega)).1.le, (hc i (by omega)).2⟩) hmn
  refine ⟨hR, inv_sqrt_le hγpos (by linarith),
    fun K c hc k hk => tail_bracketDD hC₁ hγ hγC hlip hwin c hc hk, ?_, ?_, ?_⟩
  · -- (b): IVT on `[t − 2R, t + B′K]` for the clamped flow, then the clamp is inactive
    intro K g hg0 hg
    set t := 1 / g ^ 2
    have ht := t_ge_of_le_g₁ hγpos hD hg0 hg
    have cpl : ∀ u₀ i, i < K → 0 ≤ φ γ (flow β γ u₀ i) ∧ φ γ (flow β γ u₀ i) ≤ γ :=
      fun u₀ i _ => ⟨(φ_pos hγpos _).le, φ_le hγpos _⟩
    have wide := fun u₀ k (hk : k ≤ K) =>
      tail_wideDD hb hC₁ hγ hγC hlip hwin _ (cpl u₀) hk
    have lo := (wide (t - 2 * R) 0 (Nat.zero_le K)).1
    have hi := (wide (t + (5 * b / 4 + 2 * R) * K) 0 (Nat.zero_le K)).2
    rw [← flow_tail _ (Nat.zero_le K)] at lo hi
    simp only [flow, Nat.sub_zero] at lo hi
    have hB' : 0 ≤ 5 * b / 4 + 2 * R := by linarith
    obtain ⟨u₀, -, hF⟩ := intermediate_value_Icc
      (by nlinarith [(Nat.cast_nonneg K : (0 : ℝ) ≤ K)] :
        t - 2 * R ≤ t + (5 * b / 4 + 2 * R) * K)
      (flow_contDD hγpos hγ hcont K).continuousOn
      (show t ∈ Set.Icc (flow β γ (t - 2 * R) K) (flow β γ (t + (5 * b / 4 + 2 * R) * K) K)
        from ⟨by linarith, by linarith⟩)
    simp only at hF
    have hab : ∀ k ≤ K, 1 / γ ^ 2 ≤ flow β γ u₀ k := fun k hk => by
      have := (wide u₀ k hk).1
      rw [← flow_tail _ hk, hF] at this
      linarith
    exact ⟨u₀, shot_of_flow hγpos hg0 hF hab, hab⟩
  · intro K u hrec hc m n hmn hnK
    rcases hmn.lt_or_eq with hmn | rfl
    · obtain ⟨h1, h2⟩ := win K u hrec hc m n hmn hnK
      have hn : (1 : ℝ) ≤ (n - m : ℕ) := by exact_mod_cast (by omega : 1 ≤ n - m)
      constructor <;> nlinarith
    · simp; linarith
  · intro K u hrec hc m n hmn hnK h8
    rcases hmn.lt_or_eq with hmn | rfl
    · obtain ⟨h1, h2⟩ := win K u hrec hc m n hmn hnK
      have hn : (1 : ℝ) ≤ (n - m : ℕ) := by exact_mod_cast (by omega : 1 ≤ n - m)
      have h8' : 2 * R ≤ b / 4 * (n - m : ℕ) := by
        rw [div_le_iff₀ hb] at h8; linarith
      constructor <;> nlinarith
    · simp

end YmLean

#print axioms YmLean.lemma_DDoublePrime
