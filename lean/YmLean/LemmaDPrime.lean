import Mathlib.Analysis.Real.Sqrt
import Mathlib.Topology.Order.IntermediateValue

/-!
# L-004 (Lemma D′) (shooting with early negative one-loop increments)

Abstract form of LEMMA_DPRIME.md. `β j g` is the `j`-th increment at coupling `g`,
`u k = 1/g_k²`, recursion `u (k+1) = u k - β (k+1) (g_k)`, `g_k = 1/√(u k)`.
-/

open Finset

noncomputable section

namespace YmLean

/-- Hypotheses (i)–(iii) of L-004 (Lemma D′), plus the three properties of `γ` the proof uses. -/
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
lemma window_sum_ge {J k K : ℕ} {a b : ℝ} (f : ℕ → ℝ)
    (he : ∀ i ∈ Ioc k K, -b ≤ f i) (hl : ∀ i ∈ Ioc k K, J < i → a ≤ f i) :
    -b * early J k K + a * ((K - k : ℕ) - early J k K : ℝ) ≤ ∑ i ∈ Ioc k K, f i := by
  set s := Ioc k K
  have hcard : (s.filter (· ≤ J)).card + (s.filter (fun i => ¬ i ≤ J)).card = K - k := by
    rw [card_filter_add_card_filter_not]; exact Nat.card_Ioc k K
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

/-- Telescoping along a trajectory: `u k - u K = T(k,K)`. -/
lemma tail_eq {K : ℕ} (u c : ℕ → ℝ) (hrec : ∀ i < K, u (i + 1) = u i - β (i + 1) (c i))
    {k : ℕ} (hk : k ≤ K) : u k - u K = ∑ i ∈ Ioc k K, β i (c (i - 1)) :=
  telescope u (fun i => β i (c (i - 1))) (fun i hi => by simpa using hrec i hi) hk

/-! ### Steps 1, 6, 7: bounds on `T(k,K) = Σ_{i=k+1}^K β_i(c_{i-1})`, couplings `c_i ∈ [0, γ]` -/

section tail
variable (h : Hyp β γ₀ C₁ B βinf γ J) {K : ℕ} (c : ℕ → ℝ) (hc : ∀ i < K, 0 ≤ c i ∧ c i ≤ γ)
include h hc

lemma tail_ge_aux {k : ℕ} :
    -B' B βinf * early J k K + βinf / 4 * ((K - k : ℕ) - early J k K : ℝ) ≤
      ∑ i ∈ Ioc k K, β i (c (i - 1)) := by
  have hci : ∀ i ∈ Ioc k K, 0 ≤ c (i - 1) ∧ c (i - 1) ≤ γ := fun i hi => by
    simp only [mem_Ioc] at hi; exact hc _ (by omega)
  exact window_sum_ge _ (fun i hi => P2 h (hci i hi).1 (hci i hi).2)
    (fun i hi hJ => P3 h (hci i hi).1 (hci i hi).2 hJ)

/-- (a) `T(k,K) ≥ -D`. -/
lemma tail_ge_neg_D {k : ℕ} : -D J B βinf ≤ ∑ i ∈ Ioc k K, β i (c (i - 1)) := by
  have h1 := tail_ge_aux h c hc (k := k)
  have h2 : (early J k K : ℝ) ≤ J := by exact_mod_cast early_le_J J k K
  have h3 : (early J k K : ℝ) ≤ (K - k : ℕ) := by exact_mod_cast early_le J k K
  have hB' : 0 ≤ B' B βinf := by unfold B'; linarith [B_nonneg h, h.βinf_pos]
  unfold D
  nlinarith [h.βinf_pos]

/-- (1.2) `T(k,K) ≤ B′(K-k)`. -/
lemma tail_le {k : ℕ} : ∑ i ∈ Ioc k K, β i (c (i - 1)) ≤ B' B βinf * (K - k : ℕ) :=
  window_sum_le _ fun i hi => by
    simp only [mem_Ioc] at hi; exact P1 h (hc _ (by omega)).1 (hc _ (by omega)).2

/-- Step 6: `T(k,K) ≥ (β∞/4)(K-k) - D′`. -/
lemma tail_ge_c {k : ℕ} :
    βinf / 4 * (K - k : ℕ) - D' J B βinf ≤ ∑ i ∈ Ioc k K, β i (c (i - 1)) := by
  have h1 := tail_ge_aux h c hc (k := k)
  have h2 : (early J k K : ℝ) ≤ J := by exact_mod_cast early_le_J J k K
  have hB : 0 ≤ B + βinf / 2 := by linarith [B_nonneg h, h.βinf_pos]
  unfold D'; unfold B' at h1
  nlinarith

/-- Step 7: for `K ≥ K₀`, `T(k,K) ≥ (β∞/8)(K-k)`. -/
lemma tail_ge_d (hK : K₀ J B βinf ≤ K) {k : ℕ} (hk : k ≤ K) :
    βinf / 8 * (K - k : ℕ) ≤ ∑ i ∈ Ioc k K, β i (c (i - 1)) := by
  have hc' := tail_ge_c h c hc (k := k)
  have hpos := h.βinf_pos
  have hn : (0 : ℝ) ≤ (K - k : ℕ) := Nat.cast_nonneg _
  rcases le_or_gt J k with hJk | hJk
  · have h1 := tail_ge_aux h c hc (k := k)
    rw [early_eq_zero hJk] at h1
    push_cast at h1; nlinarith
  · -- `K - k ≥ K - J ≥ ⌈8D′/β∞⌉ ≥ 8D′/β∞`
    have hceil := Nat.le_ceil (8 * D' J B βinf / βinf)
    have hKk : ((⌈8 * D' J B βinf / βinf⌉₊ : ℕ) : ℝ) ≤ (K - k : ℕ) := by
      unfold K₀ at hK; exact_mod_cast (by omega : ⌈8 * D' J B βinf / βinf⌉₊ ≤ K - k)
    have : D' J B βinf ≤ βinf / 8 * (K - k : ℕ) := by
      have := hceil.trans hKk
      rw [div_le_iff₀ hpos] at this; linarith
    linarith

end tail

/-! ### Step 2: the clamped map and the clamped flow -/

lemma inv_sqrt_le {γ u : ℝ} (hγ : 0 < γ) (hu : 1 / γ ^ 2 ≤ u) : 1 / √u ≤ γ := by
  have h1 : 1 / γ = √(1 / γ ^ 2) := by
    rw [show (1 : ℝ) / γ ^ 2 = (1 / γ) ^ 2 by rw [div_pow, one_pow],
      Real.sqrt_sq (by positivity)]
  have h2 : 0 < √u := Real.sqrt_pos.2 (lt_of_lt_of_le (by positivity) hu)
  rw [div_le_iff₀ h2, ← div_le_iff₀' hγ, h1]
  exact Real.sqrt_le_sqrt hu

lemma inv_sqrt_pos {γ u : ℝ} (hγ : 0 < γ) (hu : 1 / γ ^ 2 ≤ u) : 0 < 1 / √u :=
  one_div_pos.2 (Real.sqrt_pos.2 (lt_of_lt_of_le (by positivity) hu))

lemma φ_pos (hγ : 0 < γ) (u : ℝ) : 0 < φ γ u := inv_sqrt_pos hγ (le_max_right _ _)

lemma φ_le (hγ : 0 < γ) (u : ℝ) : φ γ u ≤ γ := inv_sqrt_le hγ (le_max_right _ _)

lemma φ_eq {u : ℝ} (hu : 1 / γ ^ 2 ≤ u) : φ γ u = 1 / √u := by
  unfold φ; rw [max_eq_left hu]

lemma φ_cont (hγ : 0 < γ) : Continuous (φ γ) := by
  unfold φ
  exact continuous_const.div (Real.continuous_sqrt.comp (continuous_id.max continuous_const))
    (fun u => (Real.sqrt_pos.2 (lt_of_lt_of_le (by positivity) (le_max_right u _))).ne')

lemma flow_succ (u₀ : ℝ) (k : ℕ) :
    flow β γ u₀ (k + 1) = flow β γ u₀ k - β (k + 1) (φ γ (flow β γ u₀ k)) := rfl

/-- The clamped flow is continuous in `u₀` (composition of continuous maps). -/
lemma flow_cont (h : Hyp β γ₀ C₁ B βinf γ J) (k : ℕ) : Continuous fun u₀ => flow β γ u₀ k := by
  induction k with
  | zero => exact continuous_id
  | succ k ih =>
    have hφ : Continuous fun u₀ => φ γ (flow β γ u₀ k) := (φ_cont h.γ_pos).comp ih
    have hβ : Continuous fun u₀ => β (k + 1) (φ γ (flow β γ u₀ k)) :=
      (h.cont (k + 1)).comp_continuous hφ fun u₀ =>
        ⟨(φ_pos h.γ_pos _).le, (φ_le h.γ_pos _).trans h.γ_le⟩
    exact ih.sub hβ

/-- Clamped couplings lie in `]0, γ]`, so the tail bounds apply to every clamped flow. -/
lemma flow_coupling (h : Hyp β γ₀ C₁ B βinf γ J) (u₀ : ℝ) (i : ℕ) :
    0 ≤ φ γ (flow β γ u₀ i) ∧ φ γ (flow β γ u₀ i) ≤ γ :=
  ⟨(φ_pos h.γ_pos _).le, φ_le h.γ_pos _⟩

lemma flow_tail (u₀ : ℝ) {K k : ℕ} (hk : k ≤ K) :
    flow β γ u₀ k - flow β γ u₀ K = ∑ i ∈ Ioc k K, β i (φ γ (flow β γ u₀ (i - 1))) :=
  tail_eq (fun k => flow β γ u₀ k) (fun i => φ γ (flow β γ u₀ i)) (fun _ _ => rfl) hk

/-! ### Steps 4–5: IVT and the clamp-inactive lemma -/

/-- IVT for the clamped flow map `F(u₀) = ũ_K` on a bracket `[lo, hi]`. -/
lemma flow_ivt (h : Hyp β γ₀ C₁ B βinf γ J) (K : ℕ) {lo hi t : ℝ} (hlh : lo ≤ hi)
    (hlo : flow β γ lo K ≤ t) (hhi : t ≤ flow β γ hi K) :
    ∃ u₀ ∈ Set.Icc lo hi, flow β γ u₀ K = t :=
  intermediate_value_Icc hlh (flow_cont h K).continuousOn ⟨hlo, hhi⟩

/-- Clamp inactive: if the clamped flow stays above `1/γ²` up to `K`, it is a true trajectory
with couplings in `]0, γ]`. -/
lemma clamp_inactive {K : ℕ} {u₀ : ℝ} (hγ : 0 < γ)
    (hab : ∀ k ≤ K, 1 / γ ^ 2 ≤ flow β γ u₀ k) :
    (∀ k < K, flow β γ u₀ (k + 1) = flow β γ u₀ k - β (k + 1) (1 / √(flow β γ u₀ k))) ∧
    (∀ k ≤ K, 0 < 1 / √(flow β γ u₀ k) ∧ 1 / √(flow β γ u₀ k) ≤ γ) :=
  ⟨fun k hk => by rw [flow_succ, φ_eq (hab k hk.le)],
   fun k hk => ⟨inv_sqrt_pos hγ (hab k hk), inv_sqrt_le hγ (hab k hk)⟩⟩

lemma inv_sqrt_inv_sq {g : ℝ} (hg : 0 < g) : 1 / √(1 / g ^ 2) = g := by
  rw [show (1 : ℝ) / g ^ 2 = (1 / g) ^ 2 by rw [div_pow, one_pow],
    Real.sqrt_sq (by positivity), one_div_one_div]

/-! ### Step 5 and Step 7: shooting -/

/-- A true trajectory of length `K` hitting `g_K = g`, with all couplings `g_k = 1/√u_k`,
`k ≤ K`, in `]0, γ]`. -/
def Shot (β : ℕ → ℝ → ℝ) (γ g : ℝ) (K : ℕ) (u : ℕ → ℝ) : Prop :=
  (∀ k < K, u (k + 1) = u k - β (k + 1) (1 / √(u k))) ∧
  (∀ k ≤ K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) ∧ u K = 1 / g ^ 2 ∧ 1 / √(u K) = g

lemma D_nonneg (h : Hyp β γ₀ C₁ B βinf γ J) : 0 ≤ D J B βinf := by
  unfold D B'; have := B_nonneg h; have := h.βinf_pos; positivity

lemma t_ge_of_le_g₁ (hγ : 0 < γ) {Dc g : ℝ} (hD : 0 ≤ Dc) (hg0 : 0 < g)
    (hg : g ≤ 1 / √(1 / γ ^ 2 + Dc)) : 1 / γ ^ 2 + Dc ≤ 1 / g ^ 2 := by
  have hA : 0 < 1 / γ ^ 2 + Dc := by positivity
  have hs : √(1 / γ ^ 2 + Dc) ≤ 1 / g := (le_one_div hg0 (Real.sqrt_pos.2 hA)).1 hg
  calc 1 / γ ^ 2 + Dc = √(1 / γ ^ 2 + Dc) ^ 2 := (Real.sq_sqrt hA.le).symm
    _ ≤ (1 / g) ^ 2 := pow_le_pow_left₀ (Real.sqrt_nonneg _) hs 2
    _ = 1 / g ^ 2 := by rw [div_pow, one_pow]

lemma shot_of_flow (hγ : 0 < γ) {g u₀ : ℝ} {K : ℕ} (hg0 : 0 < g)
    (hF : flow β γ u₀ K = 1 / g ^ 2) (hab : ∀ k ≤ K, 1 / γ ^ 2 ≤ flow β γ u₀ k) :
    Shot β γ g K (fun k => flow β γ u₀ k) := by
  obtain ⟨h1, h2⟩ := clamp_inactive hγ hab
  exact ⟨h1, h2, hF, by simp only [hF]; exact inv_sqrt_inv_sq hg0⟩

/-- (b) Shooting for `g ≤ g₁`, every `K` (IVT on `[t - D, t + B′K]`). -/
theorem shooting (h : Hyp β γ₀ C₁ B βinf γ J) {g : ℝ} (hg0 : 0 < g) (hg : g ≤ g₁ γ J B βinf)
    (K : ℕ) : ∃ u, Shot β γ g K u := by
  set t := 1 / g ^ 2
  have hD := D_nonneg h
  have ht := t_ge_of_le_g₁ h.γ_pos hD hg0 hg
  have hB' : 0 ≤ B' B βinf := by unfold B'; linarith [B_nonneg h, h.βinf_pos]
  have cpl := fun u₀ i (_ : i < K) => flow_coupling h u₀ i
  have lo := tail_ge_neg_D h _ (cpl (t - D J B βinf)) (k := 0)
  have hi := tail_le h _ (cpl (t + B' B βinf * K)) (k := 0)
  rw [← flow_tail _ (Nat.zero_le K)] at lo hi
  simp only [flow, Nat.sub_zero] at lo hi
  obtain ⟨u₀, -, hF⟩ := flow_ivt h K (lo := t - D J B βinf) (hi := t + B' B βinf * K) (t := t)
    (by nlinarith [(Nat.cast_nonneg K : (0 : ℝ) ≤ K)]) (by linarith) (by linarith)
  refine ⟨_, shot_of_flow h.γ_pos hg0 hF fun k hk => ?_⟩
  have := tail_ge_neg_D h _ (cpl u₀) (k := k)
  rw [← flow_tail _ hk, hF] at this
  linarith

/-- (d), second part: for `K ≥ K₀` shooting works for every `g ∈ ]0, γ]`
(IVT on `[t + (β∞/8)K, t + B′K]`). -/
theorem shooting_large_K (h : Hyp β γ₀ C₁ B βinf γ J) {g : ℝ} (hg0 : 0 < g) (hg : g ≤ γ)
    {K : ℕ} (hK : K₀ J B βinf ≤ K) : ∃ u, Shot β γ g K u := by
  set t := 1 / g ^ 2
  have ht : 1 / γ ^ 2 ≤ t :=
    one_div_le_one_div_of_le (by positivity) (pow_le_pow_left₀ hg0.le hg 2)
  have hB' : βinf / 8 ≤ B' B βinf := by unfold B'; linarith [B_nonneg h, h.βinf_pos]
  have cpl := fun u₀ i (_ : i < K) => flow_coupling h u₀ i
  have lo := tail_ge_d h _ (cpl (t + βinf / 8 * K)) hK (Nat.zero_le K)
  have hi := tail_le h _ (cpl (t + B' B βinf * K)) (k := 0)
  rw [← flow_tail _ (Nat.zero_le K)] at lo hi
  simp only [flow, Nat.sub_zero] at lo hi
  obtain ⟨u₀, -, hF⟩ := flow_ivt h K (lo := t + βinf / 8 * K) (hi := t + B' B βinf * K) (t := t)
    (by nlinarith [(Nat.cast_nonneg K : (0 : ℝ) ≤ K)]) (by linarith) (by linarith)
  refine ⟨_, shot_of_flow h.γ_pos hg0 hF fun k hk => ?_⟩
  have := tail_ge_d h _ (cpl u₀) hK hk
  rw [← flow_tail _ hk, hF] at this
  nlinarith [h.βinf_pos, (Nat.cast_nonneg (K - k) : (0 : ℝ) ≤ (K - k : ℕ))]

/-! ### The constant `γ = min(γ₀, γ_Bal, β∞/(4C₁))` (read `β∞/(4C₁) = ∞` if `C₁ = 0`) -/

def γdef (γ₀ γBal C₁ βinf : ℝ) : ℝ :=
  if C₁ = 0 then min γ₀ γBal else min γ₀ (min γBal (βinf / (4 * C₁)))

lemma γdef_spec {γ₀ γBal C₁ βinf : ℝ} (hγ₀ : 0 < γ₀) (hγBal : 0 < γBal) (hC₁ : 0 ≤ C₁)
    (hβinf : 0 < βinf) :
    0 < γdef γ₀ γBal C₁ βinf ∧ γdef γ₀ γBal C₁ βinf ≤ γ₀ ∧ γdef γ₀ γBal C₁ βinf ≤ γBal ∧
      C₁ * γdef γ₀ γBal C₁ βinf ≤ βinf / 4 := by
  unfold γdef
  split_ifs with h0
  · subst h0
    exact ⟨lt_min hγ₀ hγBal, min_le_left _ _, min_le_right _ _, by simp; positivity⟩
  · have hC : 0 < C₁ := lt_of_le_of_ne hC₁ (Ne.symm h0)
    refine ⟨lt_min hγ₀ (lt_min hγBal (by positivity)), min_le_left _ _,
      (min_le_right _ _).trans (min_le_left _ _), ?_⟩
    calc C₁ * min γ₀ (min γBal (βinf / (4 * C₁))) ≤ C₁ * (βinf / (4 * C₁)) :=
          mul_le_mul_of_nonneg_left ((min_le_right _ _).trans (min_le_right _ _)) hC₁
      _ = βinf / 4 := by field_simp

/-! ### Main theorem -/

/-- **L-004 (Lemma D′).** Hypotheses (i)–(iii) of LEMMA_DPRIME.md in abstract form; `J` is any index with
`β_j(0) ≥ β∞/2` for all `j > J` (the least such `J` gives the constants of the note).
Conclusions: `γ ≤ γ_Bal`, `g₁ ≤ γ`, (a) tail sums, (b) shooting for `g ≤ g₁`,
(c) the two-sided bound, (d) literal (0.31) for `K ≥ K₀` and shooting for all `g ≤ γ`. -/
theorem lemma_DPrime (β : ℕ → ℝ → ℝ) (γ₀ γBal C₁ B βinf γ : ℝ) (J : ℕ)
    (hγ₀ : 0 < γ₀) (hγBal : 0 < γBal) (hC₁ : 0 ≤ C₁) (hβinf : 0 < βinf)
    (hcont : ∀ j, ContinuousOn (β j) (Set.Icc 0 γ₀))
    (hlip : ∀ j g, 0 ≤ g → g ≤ γ₀ → |β j g - β j 0| ≤ C₁ * g)
    (hB : ∀ j, |β j 0| ≤ B)
    (hJ : ∀ j, J < j → βinf / 2 ≤ β j 0)
    (hγ : γ = γdef γ₀ γBal C₁ βinf) :
    γ ≤ γBal ∧ g₁ γ J B βinf ≤ γ ∧
    -- (a)
    (∀ K k : ℕ, k ≤ K → -(J * B) ≤ ∑ i ∈ Ioc k K, β i 0) ∧
    (∀ (K : ℕ) (c : ℕ → ℝ), (∀ i < K, 0 < c i ∧ c i ≤ γ) →
      ∀ k ≤ K, -D J B βinf ≤ ∑ i ∈ Ioc k K, β i (c (i - 1))) ∧
    -- (b)
    (∀ (K : ℕ) (g : ℝ), 0 < g → g ≤ g₁ γ J B βinf → ∃ u, Shot β γ g K u) ∧
    -- (c)
    (∀ (K : ℕ) (g : ℝ) (u : ℕ → ℝ), (∀ k < K, u (k + 1) = u k - β (k + 1) (1 / √(u k))) →
      (∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) → u K = 1 / g ^ 2 →
      ∀ k ≤ K, 1 / g ^ 2 + βinf / 4 * (K - k : ℕ) - D' J B βinf ≤ u k ∧
        u k ≤ 1 / g ^ 2 + B' B βinf * (K - k : ℕ)) ∧
    -- (d)
    (∀ K : ℕ, K₀ J B βinf ≤ K → ∀ (g : ℝ) (u : ℕ → ℝ),
      (∀ k < K, u (k + 1) = u k - β (k + 1) (1 / √(u k))) →
      (∀ k < K, 0 < 1 / √(u k) ∧ 1 / √(u k) ≤ γ) → u K = 1 / g ^ 2 →
      ∀ k ≤ K, 1 / g ^ 2 + βinf / 8 * (K - k : ℕ) ≤ u k ∧
        u k ≤ 1 / g ^ 2 + B' B βinf * (K - k : ℕ)) ∧
    (∀ K : ℕ, K₀ J B βinf ≤ K → ∀ g : ℝ, 0 < g → g ≤ γ → ∃ u, Shot β γ g K u) := by
  obtain ⟨hγpos, hγle, hγBal', hγC⟩ := γdef_spec hγ₀ hγBal hC₁ hβinf
  rw [← hγ] at hγpos hγle hγBal' hγC
  have h : Hyp β γ₀ C₁ B βinf γ J := ⟨hβinf, hcont, hlip, hC₁, hB, hJ, hγpos, hγle, hγC⟩
  have hD := D_nonneg h
  refine ⟨hγBal', inv_sqrt_le hγpos (by linarith), ?_, ?_, fun K g hg0 hg => shooting h hg0 hg K,
    ?_, ?_, fun K hK g hg0 hg => shooting_large_K h hg0 hg hK⟩
  · intro K k _
    have h1 := window_sum_ge (J := J) (k := k) (K := K) (a := βinf / 2) (b := B) (fun i => β i 0)
      (fun i _ => by linarith [neg_abs_le (β i 0), hB i]) (fun i _ hi => hJ i hi)
    have h2 : (early J k K : ℝ) ≤ J := by exact_mod_cast early_le_J J k K
    have h3 : (early J k K : ℝ) ≤ (K - k : ℕ) := by exact_mod_cast early_le J k K
    nlinarith [B_nonneg h]
  · intro K c hc k _
    exact tail_ge_neg_D h c fun i hi => ⟨(hc i hi).1.le, (hc i hi).2⟩
  · intro K g u hrec hc hu k hk
    have hc' : ∀ i < K, 0 ≤ 1 / √(u i) ∧ 1 / √(u i) ≤ γ := fun i hi => ⟨(hc i hi).1.le, (hc i hi).2⟩
    have e := tail_eq u (fun i => 1 / √(u i)) hrec hk
    have := tail_ge_c h _ hc' (k := k)
    have := tail_le h _ hc' (k := k)
    constructor <;> linarith
  · intro K hK g u hrec hc hu k hk
    have hc' : ∀ i < K, 0 ≤ 1 / √(u i) ∧ 1 / √(u i) ≤ γ := fun i hi => ⟨(hc i hi).1.le, (hc i hi).2⟩
    have e := tail_eq u (fun i => 1 / √(u i)) hrec hk
    have := tail_ge_d h _ hc' hK hk
    have := tail_le h _ hc' (k := k)
    constructor <;> linarith

end YmLean
