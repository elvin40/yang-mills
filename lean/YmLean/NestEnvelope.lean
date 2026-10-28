import YmLean.LemmaDPrime

/-!
# Lemmas D″-nest and D′-nest (nested-interval shooting on true trajectories)

SOURCES_T2_B7_CLAMP.md §4.2–§4.4, envelope arithmetic as confirmed in
SOURCES_T2_B7_CLAMP_VERIFY.md V1. Abstract real-sequence form.

* `F k : ℝ → ℝ` is the map `u₀ ↦ u_k` of the true flow `u_{k+1} = u_k − β_{k+1}(h_k)`;
  `c i` is the centre `β_i(0)`; `T₀(k,K) = Σ_{i=k+1}^K c i`.
* Envelopes `p_k, q_k = t + T₀(k,K) ∓ s(K − k)`, slack `s = b/4` (D″) or `β∞/4` (D′).
* `Good k` = the `u₀` whose prefix `u_0, …, u_k` lies in the envelopes. The step hypothesis
  `|u_{k+1} − (u_k − c_{k+1})| ≤ s` and continuity of `F (k+1)` are assumed on `Good k` only.
  In §4.2 they hold on `D_k ⊇ Good k`: on `Good k` all `u_i ≥ p_i ≥ γ^{−2}` by (e1), and (c′)
  for pairs `≤ k` follows from the earlier steps (`cprime*` below), so the history is in `Dom_k`.
-/

open Finset

noncomputable section

namespace YmLean.Nest

/-- `T₀(k,K) = Σ_{i=k+1}^K c i`. -/
def T0 (c : ℕ → ℝ) (k K : ℕ) : ℝ := ∑ i ∈ Ioc k K, c i

/-- Lower envelope `p_k = t + T₀(k,K) − s(K − k)`. -/
def pe (c : ℕ → ℝ) (t s : ℝ) (K k : ℕ) : ℝ := t + T0 c k K - s * (K - k : ℕ)

/-- Upper envelope `q_k = t + T₀(k,K) + s(K − k)`. -/
def qe (c : ℕ → ℝ) (t s : ℝ) (K k : ℕ) : ℝ := t + T0 c k K + s * (K - k : ℕ)

/-- Starting points whose prefix `u_0, …, u_k` stays in the envelopes. -/
def Good (F : ℕ → ℝ → ℝ) (c : ℕ → ℝ) (t s : ℝ) (K k : ℕ) : Set ℝ :=
  {x | ∀ i ≤ k, F i x ∈ Set.Icc (pe c t s K i) (qe c t s K i)}

variable {c : ℕ → ℝ} {t s : ℝ} {K : ℕ}

lemma T0_succ {k : ℕ} (hk : k < K) : T0 c k K = c (k + 1) + T0 c (k + 1) K := by
  unfold T0
  rw [← sum_Ioc_consecutive c (Nat.le_succ k) hk, sum_Ioc_succ_top le_rfl]; simp

/-- (e2) `p_{k+1} = p_k − c_{k+1} + s`. -/
lemma pe_succ {k : ℕ} (hk : k < K) : pe c t s K (k + 1) = pe c t s K k - c (k + 1) + s := by
  unfold pe; rw [T0_succ hk, show K - k = (K - (k + 1)) + 1 by omega]; push_cast; ring

/-- (e2) `q_{k+1} = q_k − c_{k+1} − s`. -/
lemma qe_succ {k : ℕ} (hk : k < K) : qe c t s K (k + 1) = qe c t s K k - c (k + 1) - s := by
  unfold qe; rw [T0_succ hk, show K - k = (K - (k + 1)) + 1 by omega]; push_cast; ring

lemma pe_K : pe c t s K K = t := by simp [pe, T0]

lemma pe_le_qe (hs : 0 ≤ s) (k : ℕ) : pe c t s K k ≤ qe c t s K k := by
  unfold pe qe; nlinarith [(Nat.cast_nonneg (K - k) : (0 : ℝ) ≤ _)]

/-- Increment bracket: `u_m − u_n ∈ T₀(m,n) ± s(n − m)` from the per-step bounds. -/
lemma incr_bracket {u : ℕ → ℝ} {m n : ℕ} (hmn : m ≤ n)
    (hstep : ∀ i, m ≤ i → i < n → |u (i + 1) - (u i - c (i + 1))| ≤ s) :
    |u m - u n - T0 c m n| ≤ s * (n - m : ℕ) := by
  induction n, hmn using Nat.le_induction with
  | base => simp [T0]
  | succ n hmn ih =>
    obtain ⟨h1, h2⟩ := abs_le.1 (ih fun i h1 h2 => hstep i h1 (by omega))
    obtain ⟨h3, h4⟩ := abs_le.1 (hstep n hmn (Nat.lt_succ_self n))
    unfold T0 at h1 h2 ⊢
    rw [sum_Ioc_succ_top hmn, show n + 1 - m = (n - m) + 1 by omega]; push_cast
    rw [abs_le]; constructor <;> linarith

/-- Single-trajectory form: a sequence with the step bounds and `u_K = t` lies in the envelopes. -/
theorem env_of_terminal {u : ℕ → ℝ} (hstep : ∀ i < K, |u (i + 1) - (u i - c (i + 1))| ≤ s)
    (hK : u K = t) {k : ℕ} (hk : k ≤ K) : u k ∈ Set.Icc (pe c t s K k) (qe c t s K k) := by
  obtain ⟨h1, h2⟩ := abs_le.1 (incr_bracket hk fun i _ hi => hstep i hi)
  unfold pe qe; rw [← hK]; constructor <;> linarith

/-- One IVT step: a continuous `f` on `[a, d]` with `f a ≤ p ≤ q ≤ f d` has a subinterval
`[a', d']` with `f a' = p`, `f d' = q` and `f ∈ [p, q]` on it (`d'` = first hit of `q`,
`a'` = last hit of `p` before `d'`). -/
lemma shoot_step {f : ℝ → ℝ} {a d p q : ℝ} (had : a ≤ d) (hf : ContinuousOn f (Set.Icc a d))
    (hpq : p ≤ q) (ha : f a ≤ p) (hd : q ≤ f d) :
    ∃ a' d', a ≤ a' ∧ a' ≤ d' ∧ d' ≤ d ∧ f a' = p ∧ f d' = q ∧
      ∀ x ∈ Set.Icc a' d', f x ∈ Set.Icc p q := by
  have hS : IsClosed (Set.Icc a d ∩ f ⁻¹' {q}) :=
    hf.preimage_isClosed_of_isClosed isClosed_Icc isClosed_singleton
  have hSne : (Set.Icc a d ∩ f ⁻¹' {q}).Nonempty := by
    obtain ⟨y, hy, hfy⟩ := intermediate_value_Icc had hf ⟨ha.trans hpq, hd⟩
    exact ⟨y, hy, hfy⟩
  have hSb : BddBelow (Set.Icc a d ∩ f ⁻¹' {q}) := ⟨a, fun y hy => hy.1.1⟩
  obtain ⟨d', ⟨⟨had', hd'd⟩, hfd'⟩, hmin⟩ :
      ∃ d' ∈ Set.Icc a d ∩ f ⁻¹' {q}, ∀ y ∈ Set.Icc a d ∩ f ⁻¹' {q}, d' ≤ y :=
    ⟨_, hS.csInf_mem hSne hSb, fun y hy => csInf_le hSb hy⟩
  simp only [Set.mem_preimage, Set.mem_singleton_iff] at hfd'
  have hf' : ContinuousOn f (Set.Icc a d') := hf.mono (Set.Icc_subset_Icc le_rfl hd'd)
  have hS2 : IsClosed (Set.Icc a d' ∩ f ⁻¹' {p}) :=
    hf'.preimage_isClosed_of_isClosed isClosed_Icc isClosed_singleton
  have hS2ne : (Set.Icc a d' ∩ f ⁻¹' {p}).Nonempty := by
    obtain ⟨y, hy, hfy⟩ := intermediate_value_Icc had' hf' ⟨ha, by rw [hfd']; exact hpq⟩
    exact ⟨y, hy, hfy⟩
  have hS2b : BddAbove (Set.Icc a d' ∩ f ⁻¹' {p}) := ⟨d', fun y hy => hy.1.2⟩
  obtain ⟨a', ⟨⟨haa', ha'd'⟩, hfa'⟩, hmax⟩ :
      ∃ a' ∈ Set.Icc a d' ∩ f ⁻¹' {p}, ∀ y ∈ Set.Icc a d' ∩ f ⁻¹' {p}, y ≤ a' :=
    ⟨_, hS2.csSup_mem hS2ne hS2b, fun y hy => le_csSup hS2b hy⟩
  simp only [Set.mem_preimage, Set.mem_singleton_iff] at hfa'
  refine ⟨a', d', haa', ha'd', hd'd, hfa', hfd', fun x hx => ⟨?_, ?_⟩⟩
  · by_contra h; push_neg at h
    obtain ⟨y, hy, hfy⟩ := intermediate_value_Icc hx.2
      (hf'.mono (Set.Icc_subset_Icc (haa'.trans hx.1) le_rfl)) ⟨h.le, by rw [hfd']; exact hpq⟩
    have := hmax y ⟨⟨haa'.trans (hx.1.trans hy.1), hy.2⟩, hfy⟩
    rw [le_antisymm (hy.1.trans this) hx.1, hfa'] at h; exact lt_irrefl _ h
  · by_contra h; push_neg at h
    obtain ⟨y, hy, hfy⟩ := intermediate_value_Icc hx.1
      (hf'.mono (Set.Icc_subset_Icc haa' hx.2)) ⟨by rw [hfa']; exact hpq, h.le⟩
    have := hmin y ⟨⟨haa'.trans hy.1, hy.2.trans (hx.2.trans hd'd)⟩, hfy⟩
    rw [le_antisymm hx.2 (this.trans hy.2), hfd'] at h; exact lt_irrefl _ h

/-- §4.2 core (claim `P(k)` by induction, then `P(K)`): nested-interval shooting with envelopes
built from `T₀` exactly. There is `u₀` with `u_K = t` and `p_k ≤ u_k ≤ q_k` for all `k ≤ K`.
The sign of `c` never enters (V1: negative increments are absorbed). -/
theorem nest_shoot (F : ℕ → ℝ → ℝ) (c : ℕ → ℝ) (t s : ℝ) (K : ℕ) (hs : 0 ≤ s)
    (hF0 : ∀ x, F 0 x = x)
    (hcont : ∀ k < K, ContinuousOn (F (k + 1)) (Good F c t s K k))
    (hstep : ∀ k < K, ∀ x ∈ Good F c t s K k, |F (k + 1) x - (F k x - c (k + 1))| ≤ s) :
    ∃ x, F K x = t ∧ x ∈ Good F c t s K K := by
  have key : ∀ k ≤ K, ∃ a d, a ≤ d ∧ Set.Icc a d ⊆ Good F c t s K k ∧
      F k a = pe c t s K k ∧ F k d = qe c t s K k := by
    intro k
    induction k with
    | zero =>
      intro _
      refine ⟨pe c t s K 0, qe c t s K 0, pe_le_qe hs 0, ?_, hF0 _, hF0 _⟩
      intro x hx i hi
      obtain rfl : i = 0 := by omega
      rw [hF0]; exact hx
    | succ k ih =>
      intro hk
      have hkK : k < K := by omega
      obtain ⟨a, d, had, hsub, ha, hd⟩ := ih (by omega)
      have sa := abs_le.1 (hstep k hkK a (hsub ⟨le_rfl, had⟩))
      have sd := abs_le.1 (hstep k hkK d (hsub ⟨had, le_rfl⟩))
      obtain ⟨a', d', h1, h2, h3, ha', hd', hin⟩ :=
        shoot_step had ((hcont k hkK).mono hsub) (pe_le_qe hs (k + 1))
          (by rw [pe_succ hkK]; linarith [sa.2]) (by rw [qe_succ hkK]; linarith [sd.1])
      refine ⟨a', d', h2, fun x hx i hi => ?_, ha', hd'⟩
      rcases Nat.lt_or_eq_of_le hi with hi | rfl
      · exact hsub ⟨h1.trans hx.1, hx.2.trans h3⟩ i (by omega)
      · exact hin x hx
  obtain ⟨a, d, had, hsub, ha, -⟩ := key K le_rfl
  exact ⟨a, by rw [ha, pe_K], hsub ⟨le_rfl, had⟩⟩

/-- §4.2 (c′) on every trajectory with the D″ step bounds (§4.4), using (5.1) at each
endpoint `n` (V1): `u_n + (3b/4)(n − m) − 2R ≤ u_m ≤ u_n + (5b/4 + 2R)(n − m)`. -/
theorem cprimeDD {b R : ℝ} (hR : 0 ≤ R)
    (hwin : ∀ m n : ℕ, m < n → n ≤ K → |T0 c m n - b * (n - m : ℕ)| ≤ 2 * R)
    {u : ℕ → ℝ} (hstep : ∀ i < K, |u (i + 1) - (u i - c (i + 1))| ≤ b / 4)
    {m n : ℕ} (hmn : m ≤ n) (hnK : n ≤ K) :
    u n + 3 * b / 4 * (n - m : ℕ) - 2 * R ≤ u m ∧
      u m ≤ u n + (5 * b / 4 + 2 * R) * (n - m : ℕ) := by
  rcases hmn.lt_or_eq with hmn' | rfl
  · obtain ⟨h1, h2⟩ := abs_le.1 (incr_bracket hmn fun i _ hi => hstep i (by omega))
    obtain ⟨h3, h4⟩ := abs_le.1 (hwin m n hmn' hnK)
    have hn : (1 : ℝ) ≤ (n - m : ℕ) := by exact_mod_cast (by omega : 1 ≤ n - m)
    constructor <;> nlinarith
  · simp; linarith

/-- **Lemma D″-nest** (§4.2), abstract form. Slack `b/4` (= worst step error `C₁γ`),
(5.1) `|T₀(m,n) − b(n − m)| ≤ 2R` for `m < n ≤ K`. There is `u₀` with `u_K = t`, the envelope
bounds, (b) `u_k ≥ t − 2R` (so `u_k ≥ γ^{−2}` when `t ≥ γ^{−2} + 2R`), and (c′) with
`β = 3b/4`, `B′ = 5b/4 + 2R`, `D′ = 2R`. -/
theorem nest_DDoublePrime (F : ℕ → ℝ → ℝ) (c : ℕ → ℝ) (t b R : ℝ) (K : ℕ)
    (hb : 0 < b) (hK : 1 ≤ K) (hF0 : ∀ x, F 0 x = x)
    (hcont : ∀ k < K, ContinuousOn (F (k + 1)) (Good F c t (b / 4) K k))
    (hstep : ∀ k < K, ∀ x ∈ Good F c t (b / 4) K k,
      |F (k + 1) x - (F k x - c (k + 1))| ≤ b / 4)
    (hwin : ∀ m n : ℕ, m < n → n ≤ K → |T0 c m n - b * (n - m : ℕ)| ≤ 2 * R) :
    ∃ x, F K x = t ∧
      (∀ k ≤ K, F k x ∈ Set.Icc (pe c t (b / 4) K k) (qe c t (b / 4) K k)) ∧
      (∀ k ≤ K, t - 2 * R ≤ F k x) ∧
      (∀ m n, m ≤ n → n ≤ K → F n x + 3 * b / 4 * (n - m : ℕ) - 2 * R ≤ F m x ∧
        F m x ≤ F n x + (5 * b / 4 + 2 * R) * (n - m : ℕ)) := by
  have hR : 0 ≤ R := by linarith [(abs_nonneg _).trans (hwin 0 1 one_pos hK)]
  obtain ⟨x, hxK, hx⟩ := nest_shoot F c t (b / 4) K (by positivity) hF0 hcont hstep
  have hsx : ∀ i < K, |F (i + 1) x - (F i x - c (i + 1))| ≤ b / 4 :=
    fun i hi => hstep i hi x fun j hj => hx j (by omega)
  refine ⟨x, hxK, hx, fun k hk => ?_, fun m n hmn hnK => cprimeDD hR hwin hsx hmn hnK⟩
  refine le_trans ?_ (hx k hk).1
  rcases hk.lt_or_eq with hk' | rfl
  · obtain ⟨h3, -⟩ := abs_le.1 (hwin k K hk' le_rfl)
    have : (0 : ℝ) ≤ (K - k : ℕ) := Nat.cast_nonneg _
    unfold pe; nlinarith
  · rw [pe_K]; linarith

/-- D′ window bound: `Σ_{i=m+1}^n (c i − β∞/4) ≥ (β∞/4)(n − m) − J(B + β∞/2)`. -/
lemma dp_sum_ge {B βinf : ℝ} {J : ℕ} (hβ : 0 < βinf) (hbound : ∀ j, |c j| ≤ B)
    (hconv : ∀ j, J < j → βinf / 2 ≤ c j) (m n : ℕ) :
    βinf / 4 * (n - m : ℕ) - J * (B + βinf / 2) ≤ T0 c m n - βinf / 4 * (n - m : ℕ) := by
  have hB : 0 ≤ B := (abs_nonneg _).trans (hbound 0)
  have h := window_sum_ge (J := J) (k := m) (K := n) (a := βinf / 4) (b := B + βinf / 4)
    (fun i => c i - βinf / 4)
    (fun i _ => by linarith [neg_abs_le (c i), hbound i]) (fun i _ hi => by linarith [hconv i hi])
  rw [sum_sub_distrib, sum_const, Nat.card_Ioc, nsmul_eq_mul] at h
  have h2 : (early J m n : ℝ) ≤ J := by exact_mod_cast early_le_J J m n
  unfold T0; nlinarith

/-- (c′) for D′ (§4.3 with the V1 constants): slope `β∞/4`, `D′ = J(B + β∞/2)`,
`B′ = B + β∞/4`, on every trajectory with step bounds `β∞/4`. -/
theorem cprimeDP {B βinf : ℝ} {J : ℕ} (hβ : 0 < βinf) (hbound : ∀ j, |c j| ≤ B)
    (hconv : ∀ j, J < j → βinf / 2 ≤ c j)
    {u : ℕ → ℝ} (hstep : ∀ i < K, |u (i + 1) - (u i - c (i + 1))| ≤ βinf / 4)
    {m n : ℕ} (hmn : m ≤ n) (hnK : n ≤ K) :
    u n + βinf / 4 * (n - m : ℕ) - J * (B + βinf / 2) ≤ u m ∧
      u m ≤ u n + (B + βinf / 4) * (n - m : ℕ) := by
  obtain ⟨h1, h2⟩ := abs_le.1 (incr_bracket hmn fun i _ hi => hstep i (by omega))
  have h3 := dp_sum_ge hβ hbound hconv m n
  have h4 : T0 c m n ≤ B * (n - m : ℕ) :=
    window_sum_le _ fun i _ => (le_abs_self _).trans (hbound i)
  constructor <;> linarith

/-- **Lemma D′-nest** (§4.3), abstract form. Hypotheses (ii) `|c j| ≤ B`, (iii′) `c j ≥ β∞/2`
for `j > J`; slack `β∞/4` (= `C₁γ` bound). There is `u₀` with `u_K = t`, the envelope bounds,
(b) `u_k ≥ t − D`, `D = J(B + β∞/4)`, and (c′) with slope `β∞/4`, `D′ = J(B + β∞/2)`,
`B′ = B + β∞/4`. -/
theorem nest_DPrime (F : ℕ → ℝ → ℝ) (c : ℕ → ℝ) (t B βinf : ℝ) (J K : ℕ)
    (hβ : 0 < βinf) (hbound : ∀ j, |c j| ≤ B) (hconv : ∀ j, J < j → βinf / 2 ≤ c j)
    (hF0 : ∀ x, F 0 x = x)
    (hcont : ∀ k < K, ContinuousOn (F (k + 1)) (Good F c t (βinf / 4) K k))
    (hstep : ∀ k < K, ∀ x ∈ Good F c t (βinf / 4) K k,
      |F (k + 1) x - (F k x - c (k + 1))| ≤ βinf / 4) :
    ∃ x, F K x = t ∧
      (∀ k ≤ K, F k x ∈ Set.Icc (pe c t (βinf / 4) K k) (qe c t (βinf / 4) K k)) ∧
      (∀ k ≤ K, t - J * (B + βinf / 4) ≤ F k x) ∧
      (∀ m n, m ≤ n → n ≤ K → F n x + βinf / 4 * (n - m : ℕ) - J * (B + βinf / 2) ≤ F m x ∧
        F m x ≤ F n x + (B + βinf / 4) * (n - m : ℕ)) := by
  obtain ⟨x, hxK, hx⟩ := nest_shoot F c t (βinf / 4) K (by positivity) hF0 hcont hstep
  have hsx : ∀ i < K, |F (i + 1) x - (F i x - c (i + 1))| ≤ βinf / 4 :=
    fun i hi => hstep i hi x fun j hj => hx j (by omega)
  refine ⟨x, hxK, hx, fun k hk => le_trans ?_ (hx k hk).1,
    fun m n hmn hnK => cprimeDP hβ hbound hconv hsx hmn hnK⟩
  have h := dp_sum_ge hβ hbound hconv k K
  have hB : 0 ≤ B := (abs_nonneg _).trans (hbound 0)
  have : (0 : ℝ) ≤ (K - k : ℕ) := Nat.cast_nonneg _
  unfold pe; nlinarith

end YmLean.Nest

#print axioms YmLean.Nest.nest_shoot
#print axioms YmLean.Nest.env_of_terminal
#print axioms YmLean.Nest.nest_DDoublePrime
#print axioms YmLean.Nest.nest_DPrime
#print axioms YmLean.Nest.cprimeDD
#print axioms YmLean.Nest.cprimeDP
