import YmLean.LemmaDHist

/-!
# Ledger L5 residue: nested-interval shooting with negative early increments

THEOREM2_PROOF_v4 §10 item 8(c). `β` is evaluated only on true trajectories `tflow β u₀`
with `u_0, …, u_k ≥ 1/γ²` (`Adm β γ k = D_k`) whose past steps already obey the per-step
bounds (`Good`). The per-step bounds imply the window bounds (c′) of the past, so `Good` lies
inside every domain defined by (c′)-type windows. No cube continuity is used.

* `nested_shoot`: general form with per-step bounds `l i ≤ β_i ≤ U i` (`l i` may be negative)
  and the condition `t + Σ_{i=k+1}^K l i ≥ 1/γ²` for every `k ≤ K`.
* `lemma_DPrime_hist_adm`: Lemma D′ (b), (c), (d) on admissible pasts.
* `lemma_DDoublePrime_hist_adm`: Lemma D″ (b), (c) on admissible pasts.
-/

open Finset

noncomputable section

namespace YmLean

variable {β : HistInc}

/-- The steps `1, …, k` of the true flow from `u₀` obey `l i ≤ β_i ≤ U i`. -/
def Good (β : HistInc) (l U : ℕ → ℝ) (k : ℕ) (u₀ : ℝ) : Prop :=
  ∀ i < k, l (i + 1) ≤ β (i + 1) (hist (tflow β u₀) i) ∧ β (i + 1) (hist (tflow β u₀) i) ≤ U (i + 1)

/-- Under the bounds on admissible good pasts, every admissible past is good (induction). -/
lemma good_of_adm {γ : ℝ} {l U : ℕ → ℝ} {K : ℕ}
    (hbd : ∀ k < K, ∀ u₀ ∈ Adm β γ k, Good β l U k u₀ →
      l (k + 1) ≤ β (k + 1) (hist (tflow β u₀) k) ∧ β (k + 1) (hist (tflow β u₀) k) ≤ U (k + 1)) :
    ∀ k ≤ K, ∀ u₀ ∈ Adm β γ k, Good β l U k u₀ := by
  intro k
  induction k with
  | zero => intro _ _ _ i hi; omega
  | succ k ih =>
    intro hk u₀ hu i hi
    have hg := ih (by omega) u₀ (Adm_mono (Nat.le_succ k) hu)
    rcases Nat.lt_or_ge i k with h | h
    · exact hg i h
    · obtain rfl : i = k := by omega
      exact hbd i (by omega) u₀ (Adm_mono (Nat.le_succ i) hu) hg

lemma sum_Ioc_bot (f : ℕ → ℝ) {k K : ℕ} (hk : k < K) :
    ∑ i ∈ Ioc k K, f i = f (k + 1) + ∑ i ∈ Ioc (k + 1) K, f i := by
  rw [← sum_Ioc_consecutive f (Nat.le_succ k) hk, Nat.Ioc_succ_singleton, sum_singleton]

/-- **Nested-interval shooting, general form.** Per-step bounds `l i ≤ β_i ≤ U i` on admissible
good pasts, `l ≤ U`, continuity of `u₀ ↦ u_{k+1}` on `D_k`, and
`m_k := t + Σ_{i=k+1}^K l i ≥ 1/γ²` for `k ≤ K`. Then some `u₀ ∈ D_K` has `u_K = t`,
and its trajectory obeys the per-step bounds. -/
theorem nested_shoot (β : HistInc) (γ t : ℝ) (l U : ℕ → ℝ) (K : ℕ) (hlU : ∀ i, l i ≤ U i)
    (hm : ∀ k ≤ K, 1 / γ ^ 2 ≤ t + ∑ i ∈ Ioc k K, l i)
    (hcont : ∀ k < K, ContinuousOn (fun u₀ => tflow β u₀ (k + 1)) (Adm β γ k))
    (hbd : ∀ k < K, ∀ u₀ ∈ Adm β γ k, Good β l U k u₀ →
      l (k + 1) ≤ β (k + 1) (hist (tflow β u₀) k) ∧ β (k + 1) (hist (tflow β u₀) k) ≤ U (k + 1)) :
    ∃ u₀ ∈ Adm β γ K, tflow β u₀ K = t ∧ Good β l U K u₀ := by
  have hrecf : ∀ u₀ k, tflow β u₀ (k + 1) = tflow β u₀ k - β (k + 1) (hist (tflow β u₀) k) :=
    fun u₀ k => hflow_succ _ u₀ k
  have hgood := good_of_adm hbd
  have bd : ∀ k < K, ∀ u₀ ∈ Adm β γ k,
      l (k + 1) ≤ β (k + 1) (hist (tflow β u₀) k) ∧ β (k + 1) (hist (tflow β u₀) k) ≤ U (k + 1) :=
    fun k hk u₀ hu => hbd k hk u₀ hu (hgood k hk.le u₀ hu)
  have hmM : ∀ k, t + ∑ i ∈ Ioc k K, l i ≤ t + ∑ i ∈ Ioc k K, U i :=
    fun k => by linarith [sum_le_sum fun i (_ : i ∈ Ioc k K) => hlU i]
  have claim : ∀ k ≤ K, ∃ a c, a ≤ c ∧ tflow β a k ≤ t + ∑ i ∈ Ioc k K, l i ∧
      t + ∑ i ∈ Ioc k K, U i ≤ tflow β c k ∧ Set.Icc a c ⊆ Adm β γ k := by
    intro k
    induction k with
    | zero =>
      intro _
      refine ⟨_, _, hmM 0, le_refl (t + ∑ i ∈ Ioc 0 K, l i), le_refl (t + ∑ i ∈ Ioc 0 K, U i),
        fun x hx i hi => ?_⟩
      obtain rfl : i = 0 := by omega
      change 1 / γ ^ 2 ≤ x
      exact (hm 0 (Nat.zero_le K)).trans hx.1
    | succ k ih =>
      intro hk
      obtain ⟨a, c, hac, ha, hc, hsub⟩ := ih (by omega)
      rw [sum_Ioc_bot _ (by omega : k < K)] at ha hc
      set m := t + ∑ i ∈ Ioc (k + 1) K, l i
      have hm1 : 1 / γ ^ 2 ≤ m := hm (k + 1) hk
      set f := fun x => tflow β x (k + 1)
      have hf : ContinuousOn f (Set.Icc a c) := (hcont k (by omega)).mono hsub
      have fa : f a ≤ m := by
        have := (bd k (by omega) a (hsub ⟨le_rfl, hac⟩)).1
        simp only [f, hrecf]; linarith
      have fc : t + ∑ i ∈ Ioc (k + 1) K, U i ≤ f c := by
        have := (bd k (by omega) c (hsub ⟨hac, le_rfl⟩)).2
        simp only [f, hrecf]; linarith
      have hMm := hmM (k + 1)
      set S := Set.Icc a c ∩ f ⁻¹' Set.Iic m
      have hS : IsClosed S := hf.preimage_isClosed_of_isClosed isClosed_Icc isClosed_Iic
      have hSne : S.Nonempty := ⟨a, ⟨le_rfl, hac⟩, fa⟩
      have hSbdd : BddAbove S := ⟨c, fun x hx => hx.1.2⟩
      set a' := sSup S
      have ha'S : a' ∈ S := hS.csSup_mem hSne hSbdd
      have gt : ∀ x ∈ Set.Ioc a' c, m < f x := fun x hx => by
        by_contra hle
        have : x ∈ S := ⟨⟨ha'S.1.1.trans hx.1.le, hx.2⟩, not_lt.1 hle⟩
        exact absurd (le_csSup hSbdd this) (not_le.2 hx.1)
      have ge : ∀ x ∈ Set.Icc a' c, m ≤ f x := by
        rcases eq_or_lt_of_le ha'S.1.2 with he | hlt
        · intro x hx
          obtain rfl : x = c := le_antisymm hx.2 (he ▸ hx.1)
          linarith
        · have hC : IsClosed (Set.Icc a' c ∩ f ⁻¹' Set.Ici m) :=
            (hf.mono (Set.Icc_subset_Icc ha'S.1.1 le_rfl)).preimage_isClosed_of_isClosed
              isClosed_Icc isClosed_Ici
          have hsubC : Set.Ioc a' c ⊆ Set.Icc a' c ∩ f ⁻¹' Set.Ici m :=
            fun x hx => ⟨Set.Ioc_subset_Icc_self hx, (gt x hx).le⟩
          have := closure_minimal hsubC hC
          rw [closure_Ioc hlt.ne] at this
          exact fun x hx => (this hx).2
      refine ⟨a', c, ha'S.1.2, ha'S.2, fc, fun x hx i hi => ?_⟩
      rcases Nat.lt_or_ge i (k + 1) with h | h
      · exact hsub ⟨ha'S.1.1.trans hx.1, hx.2⟩ i (by omega)
      · obtain rfl : i = k + 1 := by omega
        exact hm1.trans (ge x hx)
  obtain ⟨a, c, hac, ha, hc, hsub⟩ := claim K le_rfl
  simp only [Ioc_self, sum_empty, add_zero] at ha hc
  have hcK : ContinuousOn (fun u₀ => tflow β u₀ K) (Set.Icc a c) := by
    rcases K with _ | n
    · exact continuousOn_id.congr fun x _ => rfl
    · exact (hcont n (Nat.lt_succ_self n)).mono (hsub.trans (Adm_mono (Nat.le_succ n)))
  obtain ⟨u₀, hu₀, hF⟩ := intermediate_value_Icc hac hcK ⟨ha, hc⟩
  exact ⟨u₀, hsub hu₀, hF, hgood K le_rfl u₀ (hsub hu₀)⟩

/-- The shot trajectory produced by `nested_shoot`. -/
lemma hshot_of_adm {γ g u₀ : ℝ} {K : ℕ} (hγ : 0 < γ) (hg0 : 0 < g) (hA : u₀ ∈ Adm β γ K)
    (hF : tflow β u₀ K = 1 / g ^ 2) : HShot β γ g K (tflow β u₀) :=
  ⟨fun k _ => hflow_succ _ u₀ k, fun k hk => ⟨inv_sqrt_pos hγ (hA k hk), inv_sqrt_le hγ (hA k hk)⟩,
    hF, by rw [hF]; exact inv_sqrt_inv_sq hg0⟩

lemma tail_of_good {l U : ℕ → ℝ} {K : ℕ} {u₀ : ℝ} (hG : Good β l U K u₀) {k : ℕ} (hk : k ≤ K) :
    tflow β u₀ k - tflow β u₀ K = ∑ i ∈ Ioc k K, incr β (hist (tflow β u₀)) i ∧
      ∀ i ∈ Ioc k K, l i ≤ incr β (hist (tflow β u₀)) i ∧ incr β (hist (tflow β u₀)) i ≤ U i :=
  ⟨incr_tail _ _ (fun k _ => hflow_succ _ u₀ k) hk,
    incr_mem (hist (tflow β u₀)) (fun i x => l i ≤ x ∧ x ≤ U i) hG⟩

/-! ### Lemma D′ on admissible pasts -/

/-- Per-step lower bounds of L-004: `-B′` for `i ≤ J`, `β∞/4` for `i > J`. -/
def lowb (J : ℕ) (B βinf : ℝ) (i : ℕ) : ℝ := if i ≤ J then -B' B βinf else βinf / 4

/-- **L-004 (Lemma D′), history form on admissible pasts.** The bounds (P1)–(P3)
(`-B′ ≤ β_{k+1} ≤ B′`, `β_{k+1} ≥ β∞/4` for `k+1 > J`) are assumed only on true trajectories
`u₀ ∈ D_k` whose earlier steps obey them; `u₀ ↦ u_{k+1}` continuous on `D_k`.
(b) + (c): for `g ≤ g₁`, every `K`, a shot trajectory with
`t + (β∞/4)(K-k) - D′ ≤ u_k ≤ t + B′(K-k)`. (d): for `K ≥ K₀` and `g ≤ γ`, a shot trajectory with
`t + (β∞/8)(K-k) ≤ u_k ≤ t + B′(K-k)`. -/
theorem lemma_DPrime_hist_adm (β : HistInc) (B βinf γ : ℝ) (J : ℕ) (hB : 0 ≤ B)
    (hβinf : 0 < βinf) (hγ : 0 < γ)
    (hcont : ∀ k, ContinuousOn (fun u₀ => tflow β u₀ (k + 1)) (Adm β γ k))
    (hbd : ∀ k, ∀ u₀ ∈ Adm β γ k, Good β (lowb J B βinf) (fun _ => B' B βinf) k u₀ →
      lowb J B βinf (k + 1) ≤ β (k + 1) (hist (tflow β u₀) k) ∧
        β (k + 1) (hist (tflow β u₀) k) ≤ B' B βinf) :
    (∀ (K : ℕ) (g : ℝ), 0 < g → g ≤ g₁ γ J B βinf → ∃ u, HShot β γ g K u ∧ ∀ k ≤ K,
      1 / g ^ 2 + βinf / 4 * (K - k : ℕ) - D' J B βinf ≤ u k ∧
        u k ≤ 1 / g ^ 2 + B' B βinf * (K - k : ℕ)) ∧
    (∀ K : ℕ, K₀ J B βinf ≤ K → ∀ g : ℝ, 0 < g → g ≤ γ → ∃ u, HShot β γ g K u ∧ ∀ k ≤ K,
      1 / g ^ 2 + βinf / 8 * (K - k : ℕ) ≤ u k ∧ u k ≤ 1 / g ^ 2 + B' B βinf * (K - k : ℕ)) := by
  have hB' : 0 ≤ B' B βinf := by unfold B'; linarith
  have hlU : ∀ i, lowb J B βinf i ≤ B' B βinf := fun i => by
    unfold lowb B'; split_ifs <;> linarith
  have he : ∀ {k K : ℕ}, ∀ i ∈ Ioc k K, -B' B βinf ≤ lowb J B βinf i := fun i _ => by
    unfold lowb; split_ifs <;> linarith
  have hl : ∀ {k K : ℕ}, ∀ i ∈ Ioc k K, J < i → βinf / 4 ≤ lowb J B βinf i := fun i _ hi => by
    unfold lowb; rw [if_neg (by omega)]
  -- envelope along a good trajectory
  have env : ∀ (K : ℕ) (u₀ : ℝ), Good β (lowb J B βinf) (fun _ => B' B βinf) K u₀ → ∀ k ≤ K,
      βinf / 4 * (K - k : ℕ) - D' J B βinf ≤ tflow β u₀ k - tflow β u₀ K ∧
      tflow β u₀ k - tflow β u₀ K ≤ B' B βinf * (K - k : ℕ) ∧
      (K₀ J B βinf ≤ K → βinf / 8 * (K - k : ℕ) ≤ tflow β u₀ k - tflow β u₀ K) := by
    intro K u₀ hG k hk
    obtain ⟨e, hi⟩ := tail_of_good hG hk
    have he' : ∀ i ∈ Ioc k K, -B' B βinf ≤ incr β (hist (tflow β u₀)) i :=
      fun i hi' => (he i hi').trans (hi i hi').1
    have hl' : ∀ i ∈ Ioc k K, J < i → βinf / 4 ≤ incr β (hist (tflow β u₀)) i :=
      fun i hi' hJ => (hl i hi' hJ).trans (hi i hi').1
    rw [e]
    exact ⟨wsum_ge_c _ hB hβinf he' hl', window_sum_le _ fun i hi' => (hi i hi').2,
      fun hK => wsum_ge_d _ hB hβinf he' hl' hK hk⟩
  have shoot : ∀ (K : ℕ) (g : ℝ), 0 < g → (∀ k ≤ K, 1 / γ ^ 2 ≤ 1 / g ^ 2 +
      ∑ i ∈ Ioc k K, lowb J B βinf i) → ∃ u₀, HShot β γ g K (tflow β u₀) ∧
      Good β (lowb J B βinf) (fun _ => B' B βinf) K u₀ ∧ tflow β u₀ K = 1 / g ^ 2 := by
    intro K g hg0 hm
    obtain ⟨u₀, hA, hF, hG⟩ := nested_shoot β γ (1 / g ^ 2) (lowb J B βinf) (fun _ => B' B βinf) K
      hlU hm (fun k _ => hcont k) (fun k _ => hbd k)
    exact ⟨u₀, hshot_of_adm hγ hg0 hA hF, hG, hF⟩
  constructor
  · intro K g hg0 hg
    have hD : 0 ≤ D J B βinf := by unfold D; positivity
    have ht := t_ge_of_le_g₁ hγ hD hg0 hg
    obtain ⟨u₀, s, hG, hF⟩ := shoot K g hg0 fun k _ => by
      have := wsum_ge_neg_D (J := J) (k := k) (K := K) _ hB hβinf he hl
      linarith
    refine ⟨_, s, fun k hk => ?_⟩
    have := env K u₀ hG k hk
    rw [hF] at this
    constructor <;> linarith [this.1, this.2.1]
  · intro K hK g hg0 hg
    have ht : 1 / γ ^ 2 ≤ 1 / g ^ 2 :=
      one_div_le_one_div_of_le (by positivity) (pow_le_pow_left₀ hg0.le hg 2)
    obtain ⟨u₀, s, hG, hF⟩ := shoot K g hg0 fun k hk => by
      have := wsum_ge_d (J := J) (k := k) (K := K) _ hB hβinf he hl hK hk
      have : (0 : ℝ) ≤ βinf / 8 * (K - k : ℕ) := by positivity
      linarith
    refine ⟨_, s, fun k hk => ?_⟩
    have := env K u₀ hG k hk
    rw [hF] at this
    constructor <;> linarith [this.1, this.2.1, this.2.2 hK]

/-! ### Lemma D″ on admissible pasts -/

/-- **L-005 (Lemma D″), history form on admissible pasts.** `β0 i` (history independent) has
windows `|Σ_{i=k+1}^K β0 i - b(K-k)| ≤ 2R`; on true trajectories `u₀ ∈ D_k` whose earlier steps obey
the same bound, `|β_{k+1} - β0_{k+1}| ≤ δ` with `δ ≤ b/4` (`δ = C₁γ` in the note);
`u₀ ↦ u_{k+1}` continuous on `D_k`. Then for `1/g² ≥ 1/γ² + 2R`, every `K`: a shot trajectory
with `t + (3b/4)(K-k) - 2R ≤ u_k ≤ t + (5b/4)(K-k) + 2R`. -/
theorem lemma_DDoublePrime_hist_adm (β : HistInc) (β0 : ℕ → ℝ) (b R δ γ : ℝ)
    (hb : 0 < b) (hδ : 0 ≤ δ) (hδb : δ ≤ b / 4) (hγ : 0 < γ)
    (hwin : ∀ k K : ℕ, k < K → |∑ i ∈ Ioc k K, β0 i - b * (K - k : ℕ)| ≤ 2 * R)
    (hcont : ∀ k, ContinuousOn (fun u₀ => tflow β u₀ (k + 1)) (Adm β γ k))
    (hbd : ∀ k, ∀ u₀ ∈ Adm β γ k, Good β (fun i => β0 i - δ) (fun i => β0 i + δ) k u₀ →
      |β (k + 1) (hist (tflow β u₀) k) - β0 (k + 1)| ≤ δ)
    (K : ℕ) (g : ℝ) (hg0 : 0 < g) (hg : 1 / γ ^ 2 + 2 * R ≤ 1 / g ^ 2) :
    ∃ u, HShot β γ g K u ∧ ∀ k ≤ K, 1 / g ^ 2 + 3 * b / 4 * (K - k : ℕ) - 2 * R ≤ u k ∧
      u k ≤ 1 / g ^ 2 + 5 * b / 4 * (K - k : ℕ) + 2 * R := by
  have hR : 0 ≤ R := by have := hwin 0 1 one_pos; linarith [abs_nonneg (∑ i ∈ Ioc 0 1, β0 i - b * (1 - 0 : ℕ))]
  -- window sums of `β0 ∓ δ`
  have wsum : ∀ (f : ℕ → ℝ) (s : ℝ), (∀ i, f i = β0 i + s) → |s| ≤ b / 4 → ∀ k ≤ K,
      3 * b / 4 * (K - k : ℕ) - 2 * R ≤ ∑ i ∈ Ioc k K, f i ∧
        ∑ i ∈ Ioc k K, f i ≤ 5 * b / 4 * (K - k : ℕ) + 2 * R := by
    intro f s hf hs k hk
    have hsum : ∑ i ∈ Ioc k K, f i = ∑ i ∈ Ioc k K, β0 i + s * (K - k : ℕ) := by
      simp only [hf, sum_add_distrib, sum_const, Nat.card_Ioc, nsmul_eq_mul]; ring
    have hn : (0 : ℝ) ≤ (K - k : ℕ) := Nat.cast_nonneg _
    have hs' : -(b / 4) * (K - k : ℕ) ≤ s * (K - k : ℕ) ∧ s * (K - k : ℕ) ≤ b / 4 * (K - k : ℕ) :=
      ⟨mul_le_mul_of_nonneg_right (by linarith [neg_abs_le s]) hn,
        mul_le_mul_of_nonneg_right (by linarith [le_abs_self s]) hn⟩
    rcases eq_or_lt_of_le hk with rfl | hlt
    · simp only [Ioc_self, sum_empty, Nat.sub_self, Nat.cast_zero, mul_zero]; constructor <;> linarith
    · have := hwin k K hlt
      rw [hsum]
      constructor <;> linarith [le_abs_self (∑ i ∈ Ioc k K, β0 i - b * (K - k : ℕ)),
        neg_abs_le (∑ i ∈ Ioc k K, β0 i - b * (K - k : ℕ))]
  have hlo := wsum (fun i => β0 i - δ) (-δ) (fun i => by ring) (by rw [abs_neg, abs_of_nonneg hδ]; exact hδb)
  have hup := wsum (fun i => β0 i + δ) δ (fun i => rfl) (by rw [abs_of_nonneg hδ]; exact hδb)
  obtain ⟨u₀, hA, hF, hG⟩ := nested_shoot β γ (1 / g ^ 2) (fun i => β0 i - δ) (fun i => β0 i + δ) K
    (fun i => by linarith) (fun k hk => by
      have := (hlo k hk).1
      have : (0 : ℝ) ≤ 3 * b / 4 * (K - k : ℕ) := by positivity
      linarith)
    (fun k _ => hcont k) (fun k _ u₀ hu hg => by
      have := hbd k u₀ hu hg
      constructor <;> linarith [le_abs_self (β (k + 1) (hist (tflow β u₀) k) - β0 (k + 1)),
        neg_abs_le (β (k + 1) (hist (tflow β u₀) k) - β0 (k + 1))])
  refine ⟨_, hshot_of_adm hγ hg0 hA hF, fun k hk => ?_⟩
  obtain ⟨e, hi⟩ := tail_of_good hG hk
  have lo := sum_le_sum fun i hi' => (hi i hi').1
  have up := sum_le_sum fun i hi' => (hi i hi').2
  have := (hlo k hk).1; have := (hup k hk).2
  rw [hF] at e
  constructor <;> linarith

end YmLean
