import YmLean.LemmaDPrime

/-!
# Ledger L5: history-dependent increments in Lemmas D and D′

`β j h` is the `j`-th increment as a function of the whole past `h = (g_0, …, g_{j-1})`,
`h : Fin j → ℝ`. A trajectory satisfies `u (k+1) = u k - β (k+1) (g_0, …, g_k)`, `g_i = 1/√(u i)`.

* `lemma_D_hist`, `lemma_DPrime_hist`: clamped shooting, with `β j` continuous on the cube
  `]0, γ]^j` (LEMMA_DPRIME.md Remark 3).
* `lemma_D_hist_adm`: nested-interval shooting (LEMMAS_DE_VERIFY.md §1.5). It needs only the bounds
  on true admissible trajectories and continuity of `u₀ ↦ u_{k+1}` on
  `D_k = {u₀ : u_0, …, u_k ≥ 1/γ²}`.
* `βce_separately_continuous`, `βce_no_shot`: continuity of `β_j` in each argument separately
  (in particular in the current argument with the past fixed) plus the two-sided bounds does
  NOT give shooting.
-/

open Finset

noncomputable section

namespace YmLean

/-- History-dependent increments: `β j (g_0, …, g_{j-1})`. -/
abbrev HistInc : Type := (j : ℕ) → (Fin j → ℝ) → ℝ

/-- The cube `]0, γ]^j` of pasts. -/
def Cube (γ : ℝ) (j : ℕ) : Set (Fin j → ℝ) := {h | ∀ i, 0 < h i ∧ h i ≤ γ}

/-- The past `(g_0, …, g_k)`, `g_i = 1/√(u i)`, of a sequence `u`. -/
def hist (u : ℕ → ℝ) (k : ℕ) : Fin (k + 1) → ℝ := fun i => 1 / √(u i)

/-- `u` is a trajectory up to `K`. -/
def HTraj (β : HistInc) (K : ℕ) (u : ℕ → ℝ) : Prop :=
  ∀ k < K, u (k + 1) = u k - β (k + 1) (hist u k)

/-- A trajectory of length `K` with all couplings in `]0, γ]` and `g_K = g`. -/
def HShot (β : HistInc) (γ g : ℝ) (K : ℕ) (u : ℕ → ℝ) : Prop :=
  HTraj β K u ∧ (∀ k ≤ K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) ∧ u K = 1 / g ^ 2 ∧ 1 / √(u K) = g

/-- The increments `i ↦ β_i(H_{i-1})` along a sequence of pasts `H` (`0` at `i = 0`). -/
def incr (β : HistInc) (H : (k : ℕ) → Fin (k + 1) → ℝ) : ℕ → ℝ
  | 0 => 0
  | k + 1 => β (k + 1) (H k)

variable {β : HistInc}

lemma incr_tail {K : ℕ} (u : ℕ → ℝ) (H : (k : ℕ) → Fin (k + 1) → ℝ)
    (hrec : ∀ k < K, u (k + 1) = u k - β (k + 1) (H k)) {k : ℕ} (hk : k ≤ K) :
    u k - u K = ∑ i ∈ Ioc k K, incr β H i :=
  telescope u (incr β H) hrec hk

lemma incr_mem {K k : ℕ} (H : (k : ℕ) → Fin (k + 1) → ℝ) (P : ℕ → ℝ → Prop)
    (hP : ∀ m < K, P (m + 1) (β (m + 1) (H m))) : ∀ i ∈ Ioc k K, P i (incr β H i) := by
  intro i hi
  simp only [mem_Ioc] at hi
  obtain ⟨m, rfl⟩ := Nat.exists_eq_succ_of_ne_zero (by omega : i ≠ 0)
  exact hP m (by omega)

lemma incr_bounds {b b' : ℝ} {K : ℕ} (H : (k : ℕ) → Fin (k + 1) → ℝ)
    (hP : ∀ m < K, b ≤ β (m + 1) (H m) ∧ β (m + 1) (H m) ≤ b') (k : ℕ) :
    b * (K - k : ℕ) ≤ ∑ i ∈ Ioc k K, incr β H i ∧ ∑ i ∈ Ioc k K, incr β H i ≤ b' * (K - k : ℕ) := by
  have hci := incr_mem (k := k) H (fun _ x => b ≤ x ∧ x ≤ b') hP
  have lo := card_nsmul_le_sum (Ioc k K) _ b fun i hi => (hci i hi).1
  rw [Nat.card_Ioc, nsmul_eq_mul] at lo
  exact ⟨by linarith, window_sum_le _ fun i hi => (hci i hi).2⟩

/-! ### Window sums with early increments `≥ -B′` and late increments `≥ β∞/4` -/

section window
variable {B βinf : ℝ} {J k K : ℕ} (f : ℕ → ℝ) (hB : 0 ≤ B) (hβ : 0 < βinf)
  (he : ∀ i ∈ Ioc k K, -B' B βinf ≤ f i) (hl : ∀ i ∈ Ioc k K, J < i → βinf / 4 ≤ f i)
include hB hβ he hl

lemma wsum_ge_neg_D : -D J B βinf ≤ ∑ i ∈ Ioc k K, f i := by
  have h1 := window_sum_ge (J := J) f he hl
  have h2 : (early J k K : ℝ) ≤ J := by exact_mod_cast early_le_J J k K
  have h3 : (early J k K : ℝ) ≤ (K - k : ℕ) := by exact_mod_cast early_le J k K
  have hB' : 0 ≤ B' B βinf := by unfold B'; linarith
  unfold D
  nlinarith

lemma wsum_ge_c : βinf / 4 * (K - k : ℕ) - D' J B βinf ≤ ∑ i ∈ Ioc k K, f i := by
  have h1 := window_sum_ge (J := J) f he hl
  have h2 : (early J k K : ℝ) ≤ J := by exact_mod_cast early_le_J J k K
  have hB0 : 0 ≤ B + βinf / 2 := by linarith
  unfold D'; unfold B' at h1
  nlinarith

lemma wsum_ge_d (hK : K₀ J B βinf ≤ K) (hk : k ≤ K) :
    βinf / 8 * (K - k : ℕ) ≤ ∑ i ∈ Ioc k K, f i := by
  have hc' := wsum_ge_c f hB hβ he hl
  have hn : (0 : ℝ) ≤ (K - k : ℕ) := Nat.cast_nonneg _
  rcases le_or_gt J k with hJk | hJk
  · have h1 := window_sum_ge (J := J) f he hl
    rw [early_eq_zero hJk] at h1
    push_cast at h1; nlinarith
  · have hceil := Nat.le_ceil (8 * D' J B βinf / βinf)
    have hKk : ((⌈8 * D' J B βinf / βinf⌉₊ : ℕ) : ℝ) ≤ (K - k : ℕ) := by
      unfold K₀ at hK; exact_mod_cast (by omega : ⌈8 * D' J B βinf / βinf⌉₊ ≤ K - k)
    have : D' J B βinf ≤ βinf / 8 * (K - k : ℕ) := by
      have := hceil.trans hKk
      rw [div_le_iff₀ hβ] at this; linarith
    linarith

end window

/-! ### The flow with history: state vector `(u_0, …, u_k)` padded by `u_k` -/

/-- `hstate β ψ u₀ k i = u_{min(i,k)}` for the flow `u_{k+1} = u_k - β_{k+1}(ψ(u_0), …, ψ(u_k))`. -/
def hstate (β : HistInc) (ψ : ℝ → ℝ) (u₀ : ℝ) : ℕ → ℕ → ℝ
  | 0 => fun _ => u₀
  | k + 1 => fun i => if i ≤ k then hstate β ψ u₀ k i else
      hstate β ψ u₀ k k - β (k + 1) (fun i : Fin (k + 1) => ψ (hstate β ψ u₀ k i))

/-- The flow `u_k` from `u_0 = u₀`, couplings `ψ(u_i)`. -/
def hflow (β : HistInc) (ψ : ℝ → ℝ) (u₀ : ℝ) (k : ℕ) : ℝ := hstate β ψ u₀ k k

/-- The past `(ψ(u_0), …, ψ(u_k))` of the flow. -/
def hH (β : HistInc) (ψ : ℝ → ℝ) (u₀ : ℝ) : (k : ℕ) → Fin (k + 1) → ℝ :=
  fun _ i => ψ (hflow β ψ u₀ i)

lemma hstate_eq (ψ : ℝ → ℝ) (u₀ : ℝ) : ∀ k i, i ≤ k → hstate β ψ u₀ k i = hflow β ψ u₀ i
  | 0, i, hi => by
    obtain rfl : i = 0 := by omega
    rfl
  | k + 1, i, hi => by
    rcases Nat.lt_or_ge i (k + 1) with h | h
    · show (if i ≤ k then _ else _) = _
      rw [if_pos (by omega)]; exact hstate_eq ψ u₀ k i (by omega)
    · obtain rfl : i = k + 1 := by omega
      rfl

lemma hflow_succ (ψ : ℝ → ℝ) (u₀ : ℝ) (k : ℕ) :
    hflow β ψ u₀ (k + 1) = hflow β ψ u₀ k - β (k + 1) (hH β ψ u₀ k) := by
  show (if k + 1 ≤ k then _ else _) = _
  rw [if_neg (by omega)]
  congr 2
  funext i; exact congrArg ψ (hstate_eq ψ u₀ k i (by omega))

lemma hflow_tail (ψ : ℝ → ℝ) (u₀ : ℝ) {K k : ℕ} (hk : k ≤ K) :
    hflow β ψ u₀ k - hflow β ψ u₀ K = ∑ i ∈ Ioc k K, incr β (hH β ψ u₀) i :=
  incr_tail (fun k => hflow β ψ u₀ k) _ (fun k _ => hflow_succ ψ u₀ k) hk

/-- Cube continuity makes the clamped flow continuous in `u₀`. -/
lemma hstate_cont {γ : ℝ} (hγ : 0 < γ) (hc : ∀ j, ContinuousOn (β j) (Cube γ j)) :
    ∀ k, Continuous fun u₀ => hstate β (φ γ) u₀ k
  | 0 => continuous_pi fun _ => continuous_id
  | k + 1 => by
    have ih := hstate_cont hγ hc k
    have hh : Continuous fun u₀ => (fun i : Fin (k + 1) => φ γ (hstate β (φ γ) u₀ k i)) :=
      continuous_pi fun i => (φ_cont hγ).comp ((continuous_apply _).comp ih)
    have hb : Continuous fun u₀ => β (k + 1) (fun i : Fin (k + 1) => φ γ (hstate β (φ γ) u₀ k i)) :=
      (hc (k + 1)).comp_continuous hh fun _ _ => ⟨φ_pos hγ _, φ_le hγ _⟩
    refine continuous_pi fun i => ?_
    show Continuous fun u₀ => if i ≤ k then _ else _
    split_ifs
    · exact (continuous_apply i).comp ih
    · exact ((continuous_apply k).comp ih).sub hb

lemma hflow_cont {γ : ℝ} (hγ : 0 < γ) (hc : ∀ j, ContinuousOn (β j) (Cube γ j)) (k : ℕ) :
    Continuous fun u₀ => hflow β (φ γ) u₀ k :=
  (continuous_apply k).comp (hstate_cont hγ hc k)

lemma hH_cube {γ : ℝ} (hγ : 0 < γ) (u₀ : ℝ) (k : ℕ) : hH β (φ γ) u₀ k ∈ Cube γ (k + 1) :=
  fun _ => ⟨φ_pos hγ _, φ_le hγ _⟩

lemma hist_cube {γ : ℝ} {K : ℕ} {u : ℕ → ℝ} (hc : ∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) :
    ∀ m < K, hist u m ∈ Cube γ (m + 1) :=
  fun m hm i => hc i (by have := i.isLt; omega)

/-- Clamp inactive on `[0, K]` ⇒ the clamped flow is a shot trajectory. -/
lemma hshot_of_flow {γ g u₀ : ℝ} {K : ℕ} (hγ : 0 < γ) (hg0 : 0 < g)
    (hF : hflow β (φ γ) u₀ K = 1 / g ^ 2) (hab : ∀ k ≤ K, 1 / γ ^ 2 ≤ hflow β (φ γ) u₀ k) :
    HShot β γ g K (fun k => hflow β (φ γ) u₀ k) := by
  refine ⟨fun k hk => ?_, fun k hk => ⟨inv_sqrt_pos hγ (hab k hk), inv_sqrt_le hγ (hab k hk)⟩,
    hF, by simp only [hF]; exact inv_sqrt_inv_sq hg0⟩
  show hflow β (φ γ) u₀ (k + 1) = hflow β (φ γ) u₀ k - _
  rw [hflow_succ]
  congr 2
  funext i; exact φ_eq (hab i (by have := i.isLt; omega))

/-! ### Lemma D with history (clamped proof, cube continuity) -/

/-- **L-006 (Lemma D), history form.** `β j` continuous on the cube `]0, γ]^j` and
`b ≤ β j h ≤ b'` on it, `0 ≤ b ≤ b'`. (1) Envelope for every trajectory with couplings in `]0, γ]`;
(2) shooting for every `K` and `g ∈ ]0, γ]`. -/
theorem lemma_D_hist (β : HistInc) (γ b b' : ℝ) (hγ : 0 < γ) (hb : 0 ≤ b) (hbb : b ≤ b')
    (hcont : ∀ j, ContinuousOn (β j) (Cube γ j))
    (hbd : ∀ j h, h ∈ Cube γ j → b ≤ β j h ∧ β j h ≤ b') :
    (∀ (K : ℕ) (g : ℝ) (u : ℕ → ℝ), HTraj β K u →
      (∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) → u K = 1 / g ^ 2 →
      ∀ k ≤ K, 1 / g ^ 2 + b * (K - k : ℕ) ≤ u k ∧ u k ≤ 1 / g ^ 2 + b' * (K - k : ℕ)) ∧
    (∀ (K : ℕ) (g : ℝ), 0 < g → g ≤ γ → ∃ u, HShot β γ g K u ∧
      ∀ k ≤ K, 1 / g ^ 2 + b * (K - k : ℕ) ≤ u k ∧ u k ≤ 1 / g ^ 2 + b' * (K - k : ℕ)) := by
  have traj : ∀ (K : ℕ) (g : ℝ) (u : ℕ → ℝ), HTraj β K u →
      (∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) → u K = 1 / g ^ 2 →
      ∀ k ≤ K, 1 / g ^ 2 + b * (K - k : ℕ) ≤ u k ∧ u k ≤ 1 / g ^ 2 + b' * (K - k : ℕ) := by
    intro K g u hrec hc hu k hk
    have e := incr_tail u (hist u) hrec hk
    have := incr_bounds (hist u) (fun m hm => hbd _ _ (hist_cube hc m hm)) k
    constructor <;> linarith [this.1, this.2]
  refine ⟨traj, fun K g hg0 hg => ?_⟩
  set t := 1 / g ^ 2
  have ht : 1 / γ ^ 2 ≤ t :=
    one_div_le_one_div_of_le (by positivity) (pow_le_pow_left₀ hg0.le hg 2)
  have bds := fun u₀ k => incr_bounds (K := K) (hH β (φ γ) u₀)
    (fun m _ => hbd _ _ (hH_cube hγ u₀ m)) k
  have lo := (bds (t + b * K) 0).1
  have hi := (bds (t + b' * K) 0).2
  rw [← hflow_tail _ _ (Nat.zero_le K)] at lo hi
  simp only [Nat.sub_zero] at lo hi
  change b * K ≤ t + b * K - _ at lo
  change t + b' * K - _ ≤ b' * K at hi
  have hK : (0 : ℝ) ≤ K := Nat.cast_nonneg K
  obtain ⟨u₀, -, hF⟩ := intermediate_value_Icc (f := fun u₀ => hflow β (φ γ) u₀ K)
    (a := t + b * K) (b := t + b' * K) (by nlinarith)
    (hflow_cont hγ hcont K).continuousOn (show t ∈ Set.Icc _ _ from ⟨by linarith, by linarith⟩)
  simp only at hF
  have hab : ∀ k ≤ K, 1 / γ ^ 2 ≤ hflow β (φ γ) u₀ k := fun k hk => by
    have := (bds u₀ k).1
    rw [← hflow_tail _ _ hk, hF] at this
    nlinarith [(Nat.cast_nonneg (K - k) : (0 : ℝ) ≤ (K - k : ℕ))]
  have s := hshot_of_flow hγ hg0 hF hab
  exact ⟨_, s, traj K g _ s.1 (fun k hk => s.2.1 k hk.le) s.2.2.1⟩

/-! ### Lemma D with history, admissible pasts only (nested intervals) -/

/-- True (unclamped) flow `u_{k+1} = u_k - β_{k+1}(1/√u_0, …, 1/√u_k)`. -/
abbrev tflow (β : HistInc) (u₀ : ℝ) (k : ℕ) : ℝ := hflow β (fun u => 1 / √u) u₀ k

/-- `D_k = {u₀ : u_0, …, u_k ≥ 1/γ²}` (couplings `g_0, …, g_k ∈ ]0, γ]`). -/
def Adm (β : HistInc) (γ : ℝ) (k : ℕ) : Set ℝ := {u₀ | ∀ i ≤ k, 1 / γ ^ 2 ≤ tflow β u₀ i}

lemma Adm_mono {γ : ℝ} {k n : ℕ} (h : k ≤ n) : Adm β γ n ⊆ Adm β γ k :=
  fun _ hx i hi => hx i (hi.trans h)

/-- **L-006 (Lemma D), history form on admissible pasts** (LEMMAS_DE_VERIFY.md §1.5).
`β` is arbitrary off true trajectories. Hypotheses: `b ≤ β_{k+1} ≤ b'` on the past of every
`u₀ ∈ D_k`, and `u₀ ↦ u_{k+1}` continuous on `D_k`. Conclusion: shooting for every `K`,
`g ∈ ]0, γ]`, with the envelope. -/
theorem lemma_D_hist_adm (β : HistInc) (γ b b' : ℝ) (hγ : 0 < γ) (hb : 0 ≤ b) (hbb : b ≤ b')
    (hcont : ∀ k, ContinuousOn (fun u₀ => tflow β u₀ (k + 1)) (Adm β γ k))
    (hbd : ∀ k, ∀ u₀ ∈ Adm β γ k,
      b ≤ β (k + 1) (hist (tflow β u₀) k) ∧ β (k + 1) (hist (tflow β u₀) k) ≤ b')
    (K : ℕ) (g : ℝ) (hg0 : 0 < g) (hg : g ≤ γ) :
    ∃ u, HShot β γ g K u ∧
      ∀ k ≤ K, 1 / g ^ 2 + b * (K - k : ℕ) ≤ u k ∧ u k ≤ 1 / g ^ 2 + b' * (K - k : ℕ) := by
  set t := 1 / g ^ 2
  have ht : 1 / γ ^ 2 ≤ t :=
    one_div_le_one_div_of_le (by positivity) (pow_le_pow_left₀ hg0.le hg 2)
  have hrecf : ∀ u₀ k, tflow β u₀ (k + 1) = tflow β u₀ k - β (k + 1) (hist (tflow β u₀) k) :=
    fun u₀ k => hflow_succ _ u₀ k
  -- nested intervals
  have claim : ∀ k ≤ K, ∃ a c, a ≤ c ∧ tflow β a k ≤ t + b * (K - k : ℕ) ∧
      t + b' * (K - k : ℕ) ≤ tflow β c k ∧ Set.Icc a c ⊆ Adm β γ k := by
    intro k
    induction k with
    | zero =>
      intro _
      have hK : (0 : ℝ) ≤ K := Nat.cast_nonneg K
      refine ⟨t + b * K, t + b' * K, by nlinarith, by simp [tflow, hflow, hstate],
        by simp [tflow, hflow, hstate], fun x hx i hi => ?_⟩
      obtain rfl : i = 0 := by omega
      change 1 / γ ^ 2 ≤ x
      nlinarith [hx.1]
    | succ k ih =>
      intro hk
      obtain ⟨a, c, hac, ha, hc, hsub⟩ := ih (by omega)
      have hcast : ((K - k : ℕ) : ℝ) = ((K - (k + 1) : ℕ) : ℝ) + 1 := by
        rw [show K - k = (K - (k + 1)) + 1 by omega]; push_cast; ring
      set m := t + b * (K - (k + 1) : ℕ)
      have hm : 1 / γ ^ 2 ≤ m := by
        have : (0 : ℝ) ≤ b * (K - (k + 1) : ℕ) := by positivity
        linarith
      set f := fun x => tflow β x (k + 1)
      have hf : ContinuousOn f (Set.Icc a c) := (hcont k).mono hsub
      have fa : f a ≤ m := by
        have := (hbd k a (hsub ⟨le_rfl, hac⟩)).1
        simp only [f, hrecf]; rw [hcast] at ha; linarith
      have fc : t + b' * (K - (k + 1) : ℕ) ≤ f c := by
        have := (hbd k c (hsub ⟨hac, le_rfl⟩)).2
        simp only [f, hrecf]; rw [hcast] at hc; linarith
      have hMm : m ≤ t + b' * (K - (k + 1) : ℕ) := by
        have : b * (K - (k + 1) : ℕ) ≤ b' * (K - (k + 1) : ℕ) :=
          mul_le_mul_of_nonneg_right hbb (Nat.cast_nonneg _)
        linarith
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
        exact hm.trans (ge x hx)
  obtain ⟨a, c, hac, ha, hc, hsub⟩ := claim K le_rfl
  simp only [Nat.sub_self, Nat.cast_zero, mul_zero, add_zero] at ha hc
  have hcK : ContinuousOn (fun u₀ => tflow β u₀ K) (Set.Icc a c) := by
    rcases K with _ | n
    · exact continuousOn_id.congr fun x _ => rfl
    · exact (hcont n).mono (hsub.trans (Adm_mono (Nat.le_succ n)))
  obtain ⟨u₀, hu₀, hF⟩ := intermediate_value_Icc hac hcK ⟨ha, hc⟩
  simp only at hF
  have hA := hsub hu₀
  have s : HShot β γ g K (tflow β u₀) :=
    ⟨fun k _ => hrecf u₀ k, fun k hk => ⟨inv_sqrt_pos hγ (hA k hk), inv_sqrt_le hγ (hA k hk)⟩,
      hF, by rw [hF]; exact inv_sqrt_inv_sq hg0⟩
  refine ⟨_, s, fun k hk => ?_⟩
  have e := incr_tail (tflow β u₀) (hist (tflow β u₀)) (fun k _ => hrecf u₀ k) hk
  have := incr_bounds (K := K) (hist (tflow β u₀))
    (fun m hm => hbd m u₀ (Adm_mono hm.le hA)) k
  rw [hF] at e
  constructor <;> linarith [this.1, this.2]

/-! ### Lemma D′ with history (clamped proof, cube continuity) -/

/-- (P1)–(P3) of L-004 on the cube of pasts, and cube continuity. -/
structure HHyp (β : HistInc) (B βinf γ : ℝ) (J : ℕ) : Prop where
  βinf_pos : 0 < βinf
  B_nonneg : 0 ≤ B
  γ_pos : 0 < γ
  cont : ∀ j, ContinuousOn (β j) (Cube γ j)
  up : ∀ j h, h ∈ Cube γ j → β j h ≤ B' B βinf
  lo : ∀ j h, h ∈ Cube γ j → -B' B βinf ≤ β j h
  late : ∀ j h, h ∈ Cube γ j → J < j → βinf / 4 ≤ β j h

section dprime
variable {B βinf γ : ℝ} {J : ℕ} (h : HHyp β B βinf γ J) {K : ℕ}
  (H : (k : ℕ) → Fin (k + 1) → ℝ) (hH : ∀ m < K, H m ∈ Cube γ (m + 1))
include h hH

lemma HHyp.he {k : ℕ} : ∀ i ∈ Ioc k K, -B' B βinf ≤ incr β H i :=
  incr_mem H (fun _ x => -B' B βinf ≤ x) fun m hm => h.lo _ _ (hH m hm)

lemma HHyp.hl {k : ℕ} : ∀ i ∈ Ioc k K, J < i → βinf / 4 ≤ incr β H i :=
  incr_mem H (fun i x => J < i → βinf / 4 ≤ x) fun m hm => h.late _ _ (hH m hm)

lemma HHyp.ge_neg_D {k : ℕ} : -D J B βinf ≤ ∑ i ∈ Ioc k K, incr β H i :=
  wsum_ge_neg_D _ h.B_nonneg h.βinf_pos (h.he H hH) (h.hl H hH)

lemma HHyp.ge_c {k : ℕ} : βinf / 4 * (K - k : ℕ) - D' J B βinf ≤ ∑ i ∈ Ioc k K, incr β H i :=
  wsum_ge_c _ h.B_nonneg h.βinf_pos (h.he H hH) (h.hl H hH)

lemma HHyp.ge_d (hK : K₀ J B βinf ≤ K) {k : ℕ} (hk : k ≤ K) :
    βinf / 8 * (K - k : ℕ) ≤ ∑ i ∈ Ioc k K, incr β H i :=
  wsum_ge_d _ h.B_nonneg h.βinf_pos (h.he H hH) (h.hl H hH) hK hk

lemma HHyp.le {k : ℕ} : ∑ i ∈ Ioc k K, incr β H i ≤ B' B βinf * (K - k : ℕ) :=
  window_sum_le _ (incr_mem H (fun _ x => x ≤ B' B βinf) fun m hm => h.up _ _ (hH m hm))

end dprime

lemma HHyp.D_nonneg {B βinf γ : ℝ} {J : ℕ} (h : HHyp β B βinf γ J) : 0 ≤ D J B βinf := by
  unfold D B'; have := h.B_nonneg; have := h.βinf_pos; positivity

/-- (b) Shooting for `g ≤ g₁`, every `K`. -/
theorem hshooting {B βinf γ : ℝ} {J : ℕ} (h : HHyp β B βinf γ J) {g : ℝ} (hg0 : 0 < g)
    (hg : g ≤ g₁ γ J B βinf) (K : ℕ) : ∃ u, HShot β γ g K u := by
  set t := 1 / g ^ 2
  have hD := h.D_nonneg
  have ht := t_ge_of_le_g₁ h.γ_pos hD hg0 hg
  have hB' : 0 ≤ B' B βinf := by unfold B'; linarith [h.B_nonneg, h.βinf_pos]
  have cpl := fun u₀ m (_ : m < K) => hH_cube (β := β) h.γ_pos u₀ m
  have lo := h.ge_neg_D _ (cpl (t - D J B βinf)) (k := 0)
  have hi := h.le _ (cpl (t + B' B βinf * K)) (k := 0)
  rw [← hflow_tail _ _ (Nat.zero_le K)] at lo hi
  simp only [Nat.sub_zero] at lo hi
  change _ ≤ t - D J B βinf - _ at lo
  change t + B' B βinf * K - _ ≤ _ at hi
  have hK : (0 : ℝ) ≤ K := Nat.cast_nonneg K
  obtain ⟨u₀, -, hF⟩ := intermediate_value_Icc (f := fun u₀ => hflow β (φ γ) u₀ K)
    (a := t - D J B βinf) (b := t + B' B βinf * K) (by nlinarith)
    (hflow_cont h.γ_pos h.cont K).continuousOn
    (show t ∈ Set.Icc _ _ from ⟨by linarith, by linarith⟩)
  simp only at hF
  refine ⟨_, hshot_of_flow h.γ_pos hg0 hF fun k hk => ?_⟩
  have := h.ge_neg_D _ (cpl u₀) (k := k)
  rw [← hflow_tail _ _ hk, hF] at this
  linarith

/-- (d), second part: for `K ≥ K₀`, shooting for every `g ∈ ]0, γ]`. -/
theorem hshooting_large_K {B βinf γ : ℝ} {J : ℕ} (h : HHyp β B βinf γ J) {g : ℝ} (hg0 : 0 < g)
    (hg : g ≤ γ) {K : ℕ} (hK : K₀ J B βinf ≤ K) : ∃ u, HShot β γ g K u := by
  set t := 1 / g ^ 2
  have ht : 1 / γ ^ 2 ≤ t :=
    one_div_le_one_div_of_le (by positivity) (pow_le_pow_left₀ hg0.le hg 2)
  have hB' : βinf / 8 ≤ B' B βinf := by unfold B'; linarith [h.B_nonneg, h.βinf_pos]
  have cpl := fun u₀ m (_ : m < K) => hH_cube (β := β) h.γ_pos u₀ m
  have lo := h.ge_d _ (cpl (t + βinf / 8 * K)) hK (Nat.zero_le K)
  have hi := h.le _ (cpl (t + B' B βinf * K)) (k := 0)
  rw [← hflow_tail _ _ (Nat.zero_le K)] at lo hi
  simp only [Nat.sub_zero] at lo hi
  change _ ≤ t + βinf / 8 * K - _ at lo
  change t + B' B βinf * K - _ ≤ _ at hi
  have hK' : (0 : ℝ) ≤ K := Nat.cast_nonneg K
  obtain ⟨u₀, -, hF⟩ := intermediate_value_Icc (f := fun u₀ => hflow β (φ γ) u₀ K)
    (a := t + βinf / 8 * K) (b := t + B' B βinf * K) (by nlinarith)
    (hflow_cont h.γ_pos h.cont K).continuousOn
    (show t ∈ Set.Icc _ _ from ⟨by linarith, by linarith⟩)
  simp only at hF
  refine ⟨_, hshot_of_flow h.γ_pos hg0 hF fun k hk => ?_⟩
  have := h.ge_d _ (cpl u₀) hK hk
  rw [← hflow_tail _ _ hk, hF] at this
  nlinarith [h.βinf_pos, (Nat.cast_nonneg (K - k) : (0 : ℝ) ≤ (K - k : ℕ))]

/-- **L-004 (Lemma D′), history form (Remark 3 of LEMMA_DPRIME.md).** `β j` continuous on
`]0, γ₀]^j`; `|β j h - β0 j| ≤ C₁ M` for every past `h ∈ ]0, M]^j`, `M ≤ γ₀` (the max form of
Remark 3; it is implied by item 7′, `|β_{k+1}(h_{k-1}, g) - β_{k+1}(0)| ≤ C_β g`, uniform in the past);
`|β0 j| ≤ B`; `β0 j ≥ β∞/2` for `j > J`. Conclusions as in `lemma_DPrime`: `γ ≤ γ_Bal`, `g₁ ≤ γ`,
(a) tail sums along any pasts in `]0, γ]`, (b) shooting for `g ≤ g₁`, (c) the two-sided bound,
(d) the bound with `β∞/8` for `K ≥ K₀` and shooting for all `g ≤ γ`. -/
theorem lemma_DPrime_hist (β : HistInc) (β0 : ℕ → ℝ) (γ₀ γBal C₁ B βinf γ : ℝ) (J : ℕ)
    (hγ₀ : 0 < γ₀) (hγBal : 0 < γBal) (hC₁ : 0 ≤ C₁) (hβinf : 0 < βinf)
    (hcont : ∀ j, ContinuousOn (β j) (Cube γ₀ j))
    (hlip : ∀ j (h : Fin j → ℝ) (M : ℝ), h ∈ Cube M j → M ≤ γ₀ → |β j h - β0 j| ≤ C₁ * M)
    (hB : ∀ j, |β0 j| ≤ B)
    (hJ : ∀ j, J < j → βinf / 2 ≤ β0 j)
    (hγ : γ = γdef γ₀ γBal C₁ βinf) :
    γ ≤ γBal ∧ g₁ γ J B βinf ≤ γ ∧
    -- (a)
    (∀ (K : ℕ) (H : (k : ℕ) → Fin (k + 1) → ℝ), (∀ m < K, H m ∈ Cube γ (m + 1)) →
      ∀ k ≤ K, -D J B βinf ≤ ∑ i ∈ Ioc k K, incr β H i) ∧
    -- (b)
    (∀ (K : ℕ) (g : ℝ), 0 < g → g ≤ g₁ γ J B βinf → ∃ u, HShot β γ g K u) ∧
    -- (c)
    (∀ (K : ℕ) (g : ℝ) (u : ℕ → ℝ), HTraj β K u →
      (∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) → u K = 1 / g ^ 2 →
      ∀ k ≤ K, 1 / g ^ 2 + βinf / 4 * (K - k : ℕ) - D' J B βinf ≤ u k ∧
        u k ≤ 1 / g ^ 2 + B' B βinf * (K - k : ℕ)) ∧
    -- (d)
    (∀ K : ℕ, K₀ J B βinf ≤ K → ∀ (g : ℝ) (u : ℕ → ℝ), HTraj β K u →
      (∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) → u K = 1 / g ^ 2 →
      ∀ k ≤ K, 1 / g ^ 2 + βinf / 8 * (K - k : ℕ) ≤ u k ∧
        u k ≤ 1 / g ^ 2 + B' B βinf * (K - k : ℕ)) ∧
    (∀ K : ℕ, K₀ J B βinf ≤ K → ∀ g : ℝ, 0 < g → g ≤ γ → ∃ u, HShot β γ g K u) := by
  obtain ⟨hγpos, hγle, hγBal', hγC⟩ := γdef_spec hγ₀ hγBal hC₁ hβinf
  rw [← hγ] at hγpos hγle hγBal' hγC
  have hB0 : 0 ≤ B := (abs_nonneg _).trans (hB 0)
  have pert : ∀ j h, h ∈ Cube γ j → |β j h - β0 j| ≤ βinf / 4 :=
    fun j h hh => (hlip j h γ hh hγle).trans hγC
  have h : HHyp β B βinf γ J :=
    { βinf_pos := hβinf
      B_nonneg := hB0
      γ_pos := hγpos
      cont := fun j => (hcont j).mono fun x hx i => ⟨(hx i).1, (hx i).2.trans hγle⟩
      up := fun j x hx => by
        have := pert j x hx; have := hB j
        unfold B'; linarith [le_abs_self (β j x - β0 j), le_abs_self (β0 j)]
      lo := fun j x hx => by
        have := pert j x hx; have := hB j
        unfold B'; linarith [neg_abs_le (β j x - β0 j), neg_abs_le (β0 j)]
      late := fun j x hx hj => by
        have := pert j x hx; have := hJ j hj
        linarith [neg_abs_le (β j x - β0 j)] }
  have hD := h.D_nonneg
  refine ⟨hγBal', inv_sqrt_le hγpos (by linarith), fun K H hH k _ => h.ge_neg_D H hH,
    fun K g hg0 hg => hshooting h hg0 hg K, ?_, ?_, fun K hK g hg0 hg => hshooting_large_K h hg0 hg hK⟩
  · intro K g u hrec hc hu k hk
    have e := incr_tail u (hist u) hrec hk
    have := h.ge_c _ (hist_cube hc) (k := k)
    have := h.le _ (hist_cube hc) (k := k)
    constructor <;> linarith
  · intro K hK g u hrec hc hu k hk
    have e := incr_tail u (hist u) hrec hk
    have := h.ge_d _ (hist_cube hc) hK hk
    have := h.le _ (hist_cube hc) (k := k)
    constructor <;> linarith

/-! ### Separate continuity is not enough: a counterexample -/

/-- `(2sr/(s²+r²))²`, `0` at the origin (Lean's `x/0 = 0`). Continuous in each argument
separately, discontinuous at `(0,0)`. -/
def hce (s r : ℝ) : ℝ := (2 * s * r / (s ^ 2 + r ^ 2)) ^ 2

lemma hce_mem (s r : ℝ) : 0 ≤ hce s r ∧ hce s r ≤ 1 := by
  refine ⟨sq_nonneg _, ?_⟩
  unfold hce
  rcases eq_or_lt_of_le (add_nonneg (sq_nonneg s) (sq_nonneg r)) with h0 | hpos
  · rw [← h0]; simp
  · rw [div_pow, div_le_one (by positivity)]
    nlinarith [sq_nonneg (s ^ 2 - r ^ 2)]

lemma hce_zero : hce 0 0 = 0 := by simp [hce]

lemma hce_diag {s : ℝ} (hs : s ≠ 0) : hce s s = 1 := by
  have : 0 < s ^ 2 := lt_of_le_of_ne (sq_nonneg s) (Ne.symm (pow_ne_zero 2 hs))
  unfold hce
  rw [show 2 * s * s / (s ^ 2 + s ^ 2) = 1 by field_simp; ring]
  norm_num

lemma hce_symm (s r : ℝ) : hce s r = hce r s := by unfold hce; ring

lemma hce_cont (s : ℝ) : Continuous (hce s) := by
  by_cases hs : s = 0
  · subst hs
    have : hce 0 = fun _ => 0 := by funext r; simp [hce]
    rw [this]; exact continuous_const
  · have : 0 < s ^ 2 := lt_of_le_of_ne (sq_nonneg s) (Ne.symm (pow_ne_zero 2 hs))
    exact ((continuous_const.mul continuous_id).div (continuous_const.add (continuous_pow 2))
      fun r => (add_pos_of_pos_of_nonneg this (sq_nonneg r)).ne').pow 2

/-- `β_2(g_0, g_1) = 2 - hce(1/g_0² - 6, 1/g_1² - 5)`, all other `β_j ≡ 1`. -/
def βce : HistInc := fun j => match j with
  | 2 => fun h => 2 - hce (1 / h 0 ^ 2 - 6) (1 / h 1 ^ 2 - 5)
  | _ => fun _ => 1

lemma βce_ne {j : ℕ} (hj : j ≠ 2) (h : Fin j → ℝ) : βce j h = 1 := by
  unfold βce; split
  · exact absurd rfl hj
  · rfl

lemma βce_mem (j : ℕ) (h : Fin j → ℝ) : 1 ≤ βce j h ∧ βce j h ≤ 2 := by
  by_cases hj : j = 2
  · subst hj
    have := hce_mem (1 / h 0 ^ 2 - 6) (1 / h 1 ^ 2 - 5)
    show 1 ≤ 2 - _ ∧ 2 - _ ≤ 2
    constructor <;> linarith
  · rw [βce_ne hj]; norm_num

lemma cont_inv_sq (c : ℝ) : ContinuousOn (fun x : ℝ => 1 / x ^ 2 - c) (Set.Ioi 0) :=
  (continuousOn_const.div (continuousOn_pow 2) fun _ hx => pow_ne_zero 2 (ne_of_gt hx)).sub
    continuousOn_const

/-- `βce` is bounded, `1 ≤ β_j ≤ 2`, every `β_j` with `j ≠ 2` is constant, and `β_2` is continuous
in each argument on `]0, ∞[` with the other argument fixed (in particular in the current argument
`g_1` with the past `g_0` fixed). -/
theorem βce_separately_continuous :
    (∀ j h, 1 ≤ βce j h ∧ βce j h ≤ 2) ∧ (∀ j, j ≠ 2 → ∀ h, βce j h = 1) ∧
    (∀ c₀ : ℝ, ContinuousOn (fun x => βce 2 ![c₀, x]) (Set.Ioi 0)) ∧
    (∀ c₁ : ℝ, ContinuousOn (fun x => βce 2 ![x, c₁]) (Set.Ioi 0)) := by
  refine ⟨βce_mem, fun j hj h => βce_ne hj h, fun c₀ => ?_, fun c₁ => ?_⟩
  · show ContinuousOn (fun x => 2 - hce (1 / c₀ ^ 2 - 6) (1 / x ^ 2 - 5)) _
    exact continuousOn_const.sub ((hce_cont _).comp_continuousOn (cont_inv_sq 5))
  · show ContinuousOn (fun x => 2 - hce (1 / x ^ 2 - 6) (1 / c₁ ^ 2 - 5)) _
    simp_rw [hce_symm _ (1 / c₁ ^ 2 - 5)]
    exact continuousOn_const.sub ((hce_cont _).comp_continuousOn (cont_inv_sq 6))

lemma inv_sq_inv_sqrt {v : ℝ} (hv : 0 ≤ v) : 1 / (1 / √v) ^ 2 = v := by
  rw [div_pow, one_pow, Real.sq_sqrt hv, one_div_one_div]

/-- No trajectory of length `K = 2` with couplings in `]0, 1]` hits `g = 1/2`. -/
theorem βce_no_shot : ¬ ∃ u, HShot βce 1 (1 / 2) 2 u := by
  rintro ⟨u, hrec, hc, hu, -⟩
  have pos : ∀ k ≤ 2, 0 ≤ u k := fun k hk => by
    have := (hc k hk).1
    rw [one_div_pos] at this
    exact (Real.sqrt_pos.1 this).le
  have h1 := hrec 0 (by norm_num)
  have h2 := hrec 1 (by norm_num)
  have e1 : βce 1 (hist u 0) = 1 := βce_ne (by norm_num) _
  have e2 : βce 2 (hist u 1) = 2 - hce (u 0 - 6) (u 1 - 5) := by
    show 2 - hce (1 / (1 / √(u 0)) ^ 2 - 6) (1 / (1 / √(u 1)) ^ 2 - 5) = _
    rw [inv_sq_inv_sqrt (pos 0 (by norm_num)), inv_sq_inv_sqrt (pos 1 (by norm_num))]
  rw [e1] at h1
  rw [e2, show u 0 - 6 = u 1 - 5 by linarith] at h2
  norm_num at hu
  by_cases hr : u 1 - 5 = 0
  · rw [hr, hce_zero] at h2; linarith
  · rw [hce_diag hr] at h2; exact hr (by linarith)

/-- Hence `β_2` of `βce` is not continuous on the cube `]0, 1]²` (by `lemma_D_hist`). -/
theorem βce_not_cube_continuous : ¬ ContinuousOn (βce 2) (Cube 1 2) := by
  intro hc
  apply βce_no_shot
  obtain ⟨u, hu, -⟩ := (lemma_D_hist βce 1 1 2 one_pos zero_le_one one_le_two
    (fun j => by
      by_cases hj : j = 2
      · subst hj; exact hc
      · exact continuousOn_const.congr fun h _ => βce_ne hj h)
    (fun j h _ => βce_mem j h)).2 2 (1 / 2) (by norm_num) (by norm_num)
  exact ⟨u, hu⟩

end YmLean
