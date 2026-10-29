import YmLean.H2BoxArith

/-!
# One-dimensional enclosures for the H2 branch-and-bound (H2Box, part 2)

Coordinates: `u ∈ [0, 1]`, `K = π u`, box `[lo/4096, hi/4096]` with `lo < hi ≤ 4096` natural numbers.
This file defines the one-dimensional factors of the majorant `B*` (H1_ANALYTIC.md §5–§6) and
proves that the integer data computed by `mkDir` enclose them on the box, given a correct sine
table (`TabOK`).
-/

open Real Finset

namespace YmLean.H2B

/-! ## Sine on a segment of `[0, π]` -/

/-- Upper bound of `sin` on `[π ma/NN, π mb/NN]`. -/
def sinUB (tab : ℕ → ℤ × ℤ) (ma mb : ℕ) : ℤ :=
  if 2 * mb ≤ NN then (tab mb).2 else if NN ≤ 2 * ma then (tab ma).2 else SC

theorem argNN_nonneg (m : ℕ) : 0 ≤ π * m / NN := by unfold NN; positivity

theorem argNN_le_pi {m : ℕ} (hm : m ≤ NN) : π * m / NN ≤ π := by
  have hN : (0:ℝ) < NN := by unfold NN; norm_num
  rw [div_le_iff₀ hN]
  have : (m:ℝ) ≤ NN := by exact_mod_cast hm
  nlinarith [pi_pos]

theorem sin_seg_lb {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {ma mb : ℕ} (hb : mb ≤ NN) {x : ℝ}
    (h1 : π * ma / NN ≤ x) (h2 : x ≤ π * mb / NN) :
    val (min (tab ma).1 (tab mb).1) ≤ sin x := by
  have ha : ma ≤ NN := by
    by_contra h
    have : (NN:ℝ) < ma := by exact_mod_cast (not_le.1 h)
    have hN : (0:ℝ) < NN := by unfold NN; norm_num
    have : π * mb / NN < π * ma / NN := by
      apply div_lt_div_of_pos_right _ hN
      have : (mb:ℝ) < ma := lt_of_le_of_lt (by exact_mod_cast hb) this
      nlinarith [pi_pos]
    linarith
  have hmin := strictConcaveOn_sin_Icc.concaveOn.min_le_of_mem_Icc
    (show π * ma / NN ∈ Set.Icc 0 π from ⟨argNN_nonneg _, argNN_le_pi ha⟩)
    (show π * mb / NN ∈ Set.Icc 0 π from ⟨argNN_nonneg _, argNN_le_pi hb⟩)
    (show x ∈ Set.Icc (π * ma / NN) (π * mb / NN) from ⟨h1, h2⟩)
  rw [val_min]
  exact (min_le_min (htab ma ha).2.1 (htab mb hb).2.1).trans hmin

theorem sin_seg_ub {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {ma mb : ℕ} (hb : mb ≤ NN) {x : ℝ}
    (h1 : π * ma / NN ≤ x) (h2 : x ≤ π * mb / NN) :
    sin x ≤ val (sinUB tab ma mb) := by
  have hN : (0:ℝ) < NN := by unfold NN; norm_num
  unfold sinUB
  split_ifs with hA hB
  · refine le_trans ?_ (htab mb hb).2.2
    apply sin_le_sin_of_le_of_le_pi_div_two (by linarith [argNN_nonneg ma, pi_pos]) _ h2
    rw [div_le_iff₀ hN]
    have : ((2 * mb : ℕ):ℝ) ≤ NN := by exact_mod_cast hA
    push_cast at this; nlinarith [pi_pos]
  · have ha : ma ≤ NN := by
      by_contra h
      have : (NN:ℝ) < ma := by exact_mod_cast (not_le.1 h)
      have : π * mb / NN < π * ma / NN := by
        apply div_lt_div_of_pos_right _ hN
        have : (mb:ℝ) < ma := lt_of_le_of_lt (by exact_mod_cast hb) this
        nlinarith [pi_pos]
      linarith
    refine le_trans ?_ (htab ma ha).2.2
    have hma : π / 2 ≤ π * ma / NN := by
      rw [le_div_iff₀ hN]
      have : (NN:ℝ) ≤ ((2 * ma : ℕ):ℝ) := by exact_mod_cast hB
      push_cast at this; nlinarith [pi_pos]
    rw [← sin_pi_sub x, ← sin_pi_sub (π * ma / NN)]
    apply sin_le_sin_of_le_of_le_pi_div_two _ (by linarith) (by linarith)
    linarith [argNN_le_pi hb]
  · rw [val_SC]; exact sin_le_one x

/-! ## The Fejér average `α(κ) = 13⁻¹ Σ_{t=-6}^{6} cos(κ t)` (H1_ANALYTIC §4) -/

noncomputable def alpha (κ : ℝ) : ℝ := (∑ t ∈ range 13, cos (κ * ((t:ℝ) - 6))) / 13

/-- Dirichlet: `sin(13κ/2) = 13 sin(κ/2) α(κ)`. -/
theorem dirichlet (κ : ℝ) : sin (13 * κ / 2) = 13 * sin (κ / 2) * alpha κ := by
  unfold alpha
  have key : ∀ t : ℕ, 2 * sin (κ / 2) * cos (κ * ((t:ℝ) - 6)) =
      sin (κ * (((t + 1 : ℕ) : ℝ) - 13 / 2)) - sin (κ * ((t : ℝ) - 13 / 2)) := by
    intro t
    have e1 : κ * (((t + 1 : ℕ) : ℝ) - 13 / 2) = κ * ((t:ℝ) - 6) + κ / 2 := by push_cast; ring
    have e2 : κ * ((t : ℝ) - 13 / 2) = κ * ((t:ℝ) - 6) - κ / 2 := by ring
    rw [e1, e2, sin_add, sin_sub]; ring
  have hs : 2 * sin (κ / 2) * ∑ t ∈ range 13, cos (κ * ((t:ℝ) - 6)) = 2 * sin (13 * κ / 2) := by
    rw [mul_sum, sum_congr rfl fun t _ => key t,
      sum_range_sub (fun t : ℕ => sin (κ * ((t:ℝ) - 13 / 2)))]
    push_cast
    have : κ * ((0:ℝ) - 13 / 2) = -(13 * κ / 2) := by ring
    rw [this, sin_neg]; ring_nf
  field_simp
  linarith

theorem alpha_abs_le (κ : ℝ) : |alpha κ| ≤ 1 := by
  unfold alpha
  rw [abs_div, abs_of_pos (by norm_num : (0:ℝ) < 13), div_le_one (by norm_num)]
  refine (abs_sum_le_sum_abs _ _).trans ?_
  calc ∑ t ∈ range 13, |cos (κ * ((t:ℝ) - 6))| ≤ ∑ _t ∈ range 13, (1:ℝ) :=
        sum_le_sum fun t _ => abs_cos_le_one _
    _ = 13 := by simp

theorem alpha_zero : alpha 0 = 1 := by
  unfold alpha; simp

theorem sum_sq_shift : ∑ t ∈ range 13, ((t:ℝ) - 6) ^ 2 = 182 := by
  simp only [sum_range_succ, sum_range_zero]; norm_num

/-- `1 − α(κ) ≤ 7 κ²` from `cos x ≥ 1 − x²/2` (`(L² − 1)/24 = 7` at `L = 13`). -/
theorem one_sub_alpha_le (κ : ℝ) : 1 - alpha κ ≤ 7 * κ ^ 2 := by
  unfold alpha
  have h : ∀ t ∈ range 13, 1 - (κ * ((t:ℝ) - 6)) ^ 2 / 2 ≤ cos (κ * ((t:ℝ) - 6)) :=
    fun t _ => one_sub_sq_div_two_le_cos
  have hs := sum_le_sum h
  rw [sum_sub_distrib] at hs
  have e : ∑ t ∈ range 13, (κ * ((t:ℝ) - 6)) ^ 2 / 2 = κ ^ 2 * 91 := by
    have : ∀ t ∈ range 13, (κ * ((t:ℝ) - 6)) ^ 2 / 2 = κ ^ 2 / 2 * ((t:ℝ) - 6) ^ 2 :=
      fun t _ => by ring
    rw [sum_congr rfl this, ← mul_sum, sum_sq_shift]; ring
  rw [e] at hs
  simp at hs
  linarith

/-! ## Sign of `α` at the fine momenta `k_l = π(u + 2l)/13` -/

/-- `(−1)^l sin(πu/2) = 13 sin(π(u+2l)/26) α(π(u+2l)/13)`. -/
theorem alpha_l_identity (u : ℝ) (l : ℕ) :
    (-1) ^ l * sin (π * u / 2) = 13 * sin (π * (u + 2 * l) / 26) * alpha (π * (u + 2 * l) / 13) := by
  have h := dirichlet (π * (u + 2 * l) / 13)
  have e1 : 13 * (π * (u + 2 * l) / 13) / 2 = π * u / 2 + l * π := by ring
  have e2 : π * (u + 2 * l) / 13 / 2 = π * (u + 2 * l) / 26 := by ring
  rw [e1, e2, sin_add_nat_mul_pi] at h
  exact h

theorem skq_pos {u : ℝ} (hu0 : 0 ≤ u) (hu1 : u ≤ 1) {l : ℕ} (hl : l < 13) (hl0 : 0 < l ∨ 0 < u) :
    0 < sin (π * (u + 2 * l) / 26) := by
  apply sin_pos_of_pos_of_lt_pi
  · rcases hl0 with h | h
    · have : (1:ℝ) ≤ l := by exact_mod_cast h
      have : 0 < u + 2 * l := by linarith
      positivity
    · have : 0 < u + 2 * l := by positivity
      positivity
  · have : (l:ℝ) ≤ 12 := by exact_mod_cast (Nat.lt_succ_iff.1 hl)
    have : u + 2 * l < 26 := by linarith
    rw [div_lt_iff₀ (by norm_num)]; nlinarith [pi_pos]

theorem sK_nonneg {u : ℝ} (hu0 : 0 ≤ u) (hu1 : u ≤ 1) : 0 ≤ sin (π * u / 2) := by
  apply sin_nonneg_of_nonneg_of_le_pi (by positivity)
  nlinarith [pi_pos]

/-- `|α_l| = sin(πu/2)/(13 sin(π(u+2l)/26))` when the denominator is positive. -/
theorem abs_alpha_l {u : ℝ} (hu0 : 0 ≤ u) (hu1 : u ≤ 1) (l : ℕ)
    (hs : 0 < sin (π * (u + 2 * l) / 26)) :
    |alpha (π * (u + 2 * l) / 13)| = sin (π * u / 2) / (13 * sin (π * (u + 2 * l) / 26)) := by
  have h := alpha_l_identity u l
  have hK := sK_nonneg hu0 hu1
  rw [eq_div_iff (by positivity)]
  have h2 := congrArg abs h
  rw [abs_mul, abs_mul, abs_pow, abs_neg, abs_one, one_pow, one_mul, abs_of_nonneg hK,
    abs_of_pos (by positivity : (0:ℝ) < 13 * sin (π * (u + 2 * l) / 26))] at h2
  linarith

theorem alpha_l_sign {u : ℝ} (hu0 : 0 ≤ u) (hu1 : u ≤ 1) (l : ℕ) (hl : l < 13) :
    (Even l → 0 ≤ alpha (π * (u + 2 * l) / 13)) ∧ (Odd l → alpha (π * (u + 2 * l) / 13) ≤ 0) := by
  have h := alpha_l_identity u l
  have hK := sK_nonneg hu0 hu1
  rcases Nat.eq_zero_or_pos l with hl0 | hl0
  · subst hl0
    refine ⟨fun _ => ?_, fun ho => absurd ho (by decide)⟩
    rcases eq_or_lt_of_le hu0 with hu | hu
    · subst hu; simp [alpha_zero]
    · have hs := skq_pos hu0 hu1 hl (Or.inr hu)
      simp only [pow_zero, one_mul] at h
      by_contra hneg; rw [not_le] at hneg
      have : 13 * sin (π * (u + 2 * ((0:ℕ):ℝ)) / 26) * alpha (π * (u + 2 * ((0:ℕ):ℝ)) / 13) < 0 :=
        mul_neg_of_pos_of_neg (by positivity) hneg
      linarith
  · have hs := skq_pos hu0 hu1 hl (Or.inl hl0)
    refine ⟨fun he => ?_, fun ho => ?_⟩
    · rw [he.neg_one_pow, one_mul] at h
      by_contra hneg; rw [not_le] at hneg
      have : 13 * sin (π * (u + 2 * l) / 26) * alpha (π * (u + 2 * l) / 13) < 0 :=
        mul_neg_of_pos_of_neg (by positivity) hneg
      linarith
    · rw [ho.neg_one_pow] at h
      by_contra hpos; rw [not_le] at hpos
      have : 0 < 13 * sin (π * (u + 2 * l) / 26) * alpha (π * (u + 2 * l) / 13) := by positivity
      linarith

/-! ## `sinc` -/

theorem sinc_nonneg_of {x : ℝ} (hx0 : 0 ≤ x) (hx : x ≤ π) : 0 ≤ sinc x := by
  rcases eq_or_lt_of_le hx0 with h | h
  · subst h; rw [sinc_zero]; norm_num
  · rw [sinc_of_ne_zero h.ne']; exact div_nonneg (sin_nonneg_of_nonneg_of_le_pi hx0 hx) hx0

theorem sinc_anti {x y : ℝ} (hx : 0 ≤ x) (hxy : x ≤ y) (hy : y ≤ π) : sinc y ≤ sinc x := by
  rcases eq_or_lt_of_le hx with h | h
  · subst h; rw [sinc_zero]; exact sinc_le_one y
  · have hy0 : 0 < y := lt_of_lt_of_le h hxy
    rw [sinc_of_ne_zero h.ne', sinc_of_ne_zero hy0.ne']
    have := H1M.sin_mul_ge (t := x / y) (y := y) (by positivity) ((div_le_one hy0).2 hxy) hy0.le hy
    rw [div_mul_cancel₀ _ hy0.ne'] at this
    rw [div_le_div_iff₀ hy0 h]
    have := mul_le_mul_of_nonneg_right this hy0.le
    rw [div_mul_eq_mul_div, div_mul_cancel₀ _ hy0.ne'] at this
    linarith

/-- `α(πu/13) = sinc(πu/2)/sinc(πu/26)` on `[0, 1]`. -/
theorem alpha0_sinc {u : ℝ} (hu0 : 0 ≤ u) (hu1 : u ≤ 1) :
    alpha (π * (u + 2 * ((0:ℕ):ℝ)) / 13) = sinc (π * u / 2) / sinc (π * u / 26) := by
  rcases eq_or_lt_of_le hu0 with h | h
  · subst h; simp [alpha_zero]
  · have hs := skq_pos hu0 hu1 (l := 0) (by norm_num) (Or.inr h)
    have h1 := abs_alpha_l hu0 hu1 0 hs
    have hsg := (alpha_l_sign hu0 hu1 0 (by norm_num)).1 (by decide)
    rw [abs_of_nonneg hsg] at h1
    rw [h1]
    simp only [Nat.cast_zero, mul_zero, add_zero] at hs ⊢
    rw [sinc_of_ne_zero (by positivity), sinc_of_ne_zero (by positivity)]
    field_simp
    ring

/-- Lower bound of `sinc(π m/NN)` from the table (`m > 0`). -/
def sincLo (tab : ℕ → ℤ × ℤ) (m : ℕ) : ℤ := divD (tab m).1 (qU (piHi * m / NN))
/-- Upper bound of `sinc(π m/NN)` from the table. -/
def sincHi (tab : ℕ → ℤ × ℤ) (m : ℕ) : ℤ :=
  if m = 0 then SC else min SC (divU (tab m).2 (qD (piLo * m / NN)))

theorem qU_piHi_pos {m : ℕ} (hm : 0 < m) : 0 < qU (piHi * m / NN) := by
  have h := val_qU (piHi * m / NN)
  have : (0:ℝ) < ((piHi * m / NN : ℚ) : ℝ) := by
    unfold piHi NN; push_cast; have : (0:ℝ) < m := by exact_mod_cast hm
    positivity
  exact val_pos.1 (lt_of_lt_of_le this h)

theorem sincLo_ok {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {m : ℕ} (hm0 : 0 < m) (hm : m ≤ NN) :
    0 ≤ sincLo tab m ∧ val (sincLo tab m) ≤ sinc (π * m / NN) := by
  have hpos := qU_piHi_pos hm0
  have ht := htab m hm
  refine ⟨divD_nonneg ht.1 hpos, ?_⟩
  have hx : 0 < π * m / NN := by
    have : (0:ℝ) < m := by exact_mod_cast hm0
    unfold NN; positivity
  rw [sinc_of_ne_zero hx.ne']
  apply lb_div ht.1 ht.2.1 _ hx hpos
  refine le_trans ?_ (val_qU _)
  push_cast
  apply div_le_div_of_nonneg_right _ (by unfold NN; positivity)
  exact mul_le_mul_of_nonneg_right pi_lt_piHi.le (by positivity)

theorem sincHi_ok {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {m : ℕ} (hm : m ≤ NN) :
    sinc (π * m / NN) ≤ val (sincHi tab m) := by
  unfold sincHi
  split_ifs with h0
  · rw [val_SC]; exact sinc_le_one _
  · rw [val_min, val_SC]
    refine le_min (sinc_le_one _) ?_
    have hm0 : 0 < m := Nat.pos_of_ne_zero h0
    have ht := htab m hm
    have hx : 0 < π * m / NN := by
      have : (0:ℝ) < m := by exact_mod_cast hm0
      unfold NN; positivity
    have hq : (0:ℝ) < ((piLo * m / NN : ℚ) : ℝ) := by
      unfold piLo NN; push_cast; have : (0:ℝ) < m := by exact_mod_cast hm0
      positivity
    have hqD : 0 < qD (piLo * m / NN) := by
      unfold qD; apply Int.floor_pos.2
      have : (1:ℚ) ≤ piLo * m / NN * SC := by
        unfold piLo NN SC; have : (1:ℚ) ≤ m := by exact_mod_cast hm0
        rw [div_mul_eq_mul_div, le_div_iff₀ (by norm_num)]; nlinarith
      exact this
    rw [sinc_of_ne_zero hx.ne']
    apply ub_div (sin_nonneg_of_nonneg_of_le_pi hx.le (argNN_le_pi hm)) ht.2.2 _ hqD
    refine (val_qD _).trans ?_
    push_cast
    apply div_le_div_of_nonneg_right _ (by unfold NN; positivity)
    exact mul_le_mul_of_nonneg_right piLo_lt.le (by positivity)


/-! ## Per-direction data -/

theorem getD_ofFn13 (f : ℕ → ℤ) {l : ℕ} (hl : l < 13) :
    (Array.ofFn (n := 13) fun i => f i).getD l 0 = f l := by
  rw [Array.getD_eq_getD_getElem?, Array.getElem?_ofFn]
  simp [hl]

structure Dir where
  sKlo : ℤ
  sKhi : ℤ
  s4lo : Array ℤ
  s4hi : Array ℤ
  alo : Array ℤ
  ahi : Array ℤ
  g2 : Array ℤ
  a2lo : Array ℤ
  a2hi : Array ℤ
  xl : ℤ
  xh : ℤ
  S0 : ℤ
  S1 : ℤ
  Sm0 : ℤ
  Sm1 : ℤ
  r1 : ℤ
  rm1 : ℤ

def sl (tab : ℕ → ℤ × ℤ) (lo hi l : ℕ) : ℤ := min (tab (lo + 8192 * l)).1 (tab (hi + 8192 * l)).1
def sh (tab : ℕ → ℤ × ℤ) (lo hi l : ℕ) : ℤ := sinUB tab (lo + 8192 * l) (hi + 8192 * l)
def s4loF (tab : ℕ → ℤ × ℤ) (lo hi l : ℕ) : ℤ := 4 * mulD (sl tab lo hi l) (sl tab lo hi l)
def s4hiF (tab : ℕ → ℤ × ℤ) (lo hi l : ℕ) : ℤ := 4 * mulU (sh tab lo hi l) (sh tab lo hi l)
def sKloF (tab : ℕ → ℤ × ℤ) (lo hi : ℕ) : ℤ := min (tab (13 * lo)).1 (tab (13 * hi)).1
def sKhiF (tab : ℕ → ℤ × ℤ) (lo hi : ℕ) : ℤ := sinUB tab (13 * lo) (13 * hi)
def aloF (tab : ℕ → ℤ × ℤ) (lo hi l : ℕ) : ℤ :=
  if l = 0 then (if 0 < sincHi tab lo then divD (sincLo tab (13 * hi)) (sincHi tab lo) else 0)
  else if 0 < 13 * sh tab lo hi l then divD (sKloF tab lo hi) (13 * sh tab lo hi l) else 0
def ahiF (tab : ℕ → ℤ × ℤ) (lo hi l : ℕ) : ℤ :=
  if l = 0 then (if 0 < sincLo tab hi then min SC (divU (sincHi tab (13 * lo)) (sincLo tab hi)) else SC)
  else if 0 < sl tab lo hi l then min SC (divU (sKhiF tab lo hi) (13 * sl tab lo hi l)) else SC
def omF (tab : ℕ → ℤ × ℤ) (lo hi l : ℕ) : ℤ :=
  if l % 2 = 0 then SC - aloF tab lo hi l else SC + ahiF tab lo hi l
def g0F (tab : ℕ → ℤ × ℤ) (hi : ℕ) : ℤ :=
  let v := divU (qU (7 * piHi * hi / 53248)) (sincLo tab 4096); mulU v v
def genF (tab : ℕ → ℤ × ℤ) (lo hi l : ℕ) : ℤ :=
  divU (mulU (omF tab lo hi l) (omF tab lo hi l)) (s4loF tab lo hi l)
def g2F (tab : ℕ → ℤ × ℤ) (lo hi l : ℕ) : ℤ :=
  if l = 0 then
    (if lo = 0 then g0F tab hi else if 0 < s4loF tab lo hi 0 then min (genF tab lo hi 0) (g0F tab hi)
      else g0F tab hi)
  else genF tab lo hi l
def ttF (tab : ℕ → ℤ × ℤ) (lo hi : ℕ) : ℤ :=
  divD (4 * mulD (sKloF tab lo hi) (sKloF tab lo hi)) (qU (piHi ^ 2 * (2 - (lo:ℚ) / 4096) ^ 2))
def s2F (tab : ℕ → ℤ × ℤ) (hi : ℕ) : ℤ := mulD (sincLo tab (13 * hi)) (sincLo tab (13 * hi))

def mkDir (tab : ℕ → ℤ × ℤ) (lo hi : ℕ) : Dir where
  sKlo := sKloF tab lo hi
  sKhi := sKhiF tab lo hi
  s4lo := Array.ofFn (n := 13) fun i => s4loF tab lo hi i
  s4hi := Array.ofFn (n := 13) fun i => s4hiF tab lo hi i
  alo := Array.ofFn (n := 13) fun i => aloF tab lo hi i
  ahi := Array.ofFn (n := 13) fun i => ahiF tab lo hi i
  g2 := Array.ofFn (n := 13) fun i => g2F tab lo hi i
  a2lo := Array.ofFn (n := 13) fun i => mulD (aloF tab lo hi i) (aloF tab lo hi i)
  a2hi := Array.ofFn (n := 13) fun i => mulU (ahiF tab lo hi i) (ahiF tab lo hi i)
  xl := qD (piLo ^ 2 * (lo:ℚ) ^ 2 / 4096 ^ 2)
  xh := qU (piHi ^ 2 * (hi:ℚ) ^ 2 / 4096 ^ 2)
  S0 := s2F tab hi
  S1 := s2F tab hi + ttF tab lo hi
  Sm0 := mulD (s2F tab hi) (s2F tab hi)
  Sm1 := mulD (s2F tab hi) (s2F tab hi) + mulD (ttF tab lo hi) (ttF tab lo hi)
  r1 := qU (2 / (1 + ((lo:ℚ) / (8192 - lo)) ^ 2))
  rm1 := qU ((1 + ((hi:ℚ) / (8192 - hi)) ^ 2) / (1 + ((lo:ℚ) / (8192 - lo)) ^ 4))

def Dir.S (d : Dir) (c : Bool) : ℤ := if c then d.S1 else d.S0
def Dir.Sm (d : Dir) (c : Bool) : ℤ := if c then d.Sm1 else d.Sm0
def Dir.r (d : Dir) (c : Bool) : ℤ := if c then d.r1 else SC
def Dir.rm (d : Dir) (c : Bool) : ℤ := if c then d.rm1 else SC

/-! ## The one-dimensional factors and their enclosures -/

/-- `sin(π(u + 2l)/26) = sin(k_l/2)`. -/
noncomputable def sq (u : ℝ) (l : ℕ) : ℝ := sin (π * (u + 2 * l) / 26)
/-- `α_l = α(k_l)`, `k_l = π(u + 2l)/13`. -/
noncomputable def al (u : ℝ) (l : ℕ) : ℝ := alpha (π * (u + 2 * l) / 13)
/-- `|1 − α_l|²/|k̂_l|²`, the Lemma G bound on `|g_{l,ν}|²`. -/
noncomputable def g2f (u : ℝ) (l : ℕ) : ℝ := (1 - al u l) ^ 2 / (4 * sq u l ^ 2)

/-- Box hypothesis for one direction. -/
structure InBox (lo hi : ℕ) (u : ℝ) : Prop where
  lt : lo < hi
  le : hi ≤ 4096
  lo_le : (lo:ℝ) / 4096 ≤ u
  le_hi : u ≤ (hi:ℝ) / 4096

theorem InBox.u0 {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) : 0 ≤ u :=
  le_trans (by positivity) h.lo_le

theorem InBox.u1 {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) : u ≤ 1 := by
  refine h.le_hi.trans ?_
  rw [div_le_one (by norm_num)]; exact_mod_cast h.le

theorem arg13_lo {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) : π * ((13 * lo : ℕ) : ℝ) / NN ≤ π * u / 2 := by
  have e : π * ((13 * lo : ℕ) : ℝ) / NN = π * ((lo:ℝ) / 4096) / 2 := by unfold NN; push_cast; ring
  rw [e]; have := h.lo_le; gcongr

theorem arg13_hi {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) : π * u / 2 ≤ π * ((13 * hi : ℕ) : ℝ) / NN := by
  have e : π * ((13 * hi : ℕ) : ℝ) / NN = π * ((hi:ℝ) / 4096) / 2 := by unfold NN; push_cast; ring
  rw [e]; have := h.le_hi; gcongr

theorem argl_lo {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) (l : ℕ) :
    π * ((lo + 8192 * l : ℕ) : ℝ) / NN ≤ π * (u + 2 * l) / 26 := by
  have e : π * ((lo + 8192 * l : ℕ) : ℝ) / NN = π * ((lo:ℝ) / 4096 + 2 * l) / 26 := by
    unfold NN; push_cast; ring
  rw [e]; have := h.lo_le; gcongr

theorem argl_hi {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) (l : ℕ) :
    π * (u + 2 * l) / 26 ≤ π * ((hi + 8192 * l : ℕ) : ℝ) / NN := by
  have e : π * ((hi + 8192 * l : ℕ) : ℝ) / NN = π * ((hi:ℝ) / 4096 + 2 * l) / 26 := by
    unfold NN; push_cast; ring
  rw [e]; have := h.le_hi; gcongr

theorem le_NN_13 {hi : ℕ} (h : hi ≤ 4096) : 13 * hi ≤ NN := by unfold NN; omega
theorem le_NN_l {hi l : ℕ} (h : hi ≤ 4096) (hl : l < 13) : hi + 8192 * l ≤ NN := by unfold NN; omega

theorem dir_sK {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) :
    0 ≤ sKloF tab lo hi ∧ val (sKloF tab lo hi) ≤ sin (π * u / 2) ∧
      sin (π * u / 2) ≤ val (sKhiF tab lo hi) := by
  have hb := le_NN_13 h.le
  have hlo : 13 * lo ≤ NN := le_trans (by have := h.lt; omega) hb
  refine ⟨le_min (htab _ hlo).1 (htab _ hb).1, sin_seg_lb htab hb (arg13_lo h) (arg13_hi h),
    sin_seg_ub htab hb (arg13_lo h) (arg13_hi h)⟩

theorem dir_sq {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u)
    {l : ℕ} (hl : l < 13) :
    0 ≤ sl tab lo hi l ∧ val (sl tab lo hi l) ≤ sq u l ∧ sq u l ≤ val (sh tab lo hi l) := by
  have hb := le_NN_l h.le hl
  have hlo : lo + 8192 * l ≤ NN := le_trans (by have := h.lt; omega) hb
  exact ⟨le_min (htab _ hlo).1 (htab _ hb).1, sin_seg_lb htab hb (argl_lo h l) (argl_hi h l),
    sin_seg_ub htab hb (argl_lo h l) (argl_hi h l)⟩

theorem dir_s4 {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u)
    {l : ℕ} (hl : l < 13) :
    0 ≤ s4loF tab lo hi l ∧ val (s4loF tab lo hi l) ≤ 4 * sq u l ^ 2 ∧
      4 * sq u l ^ 2 ≤ val (s4hiF tab lo hi l) := by
  obtain ⟨h0, h1, h2⟩ := dir_sq htab h hl
  have hs0 : 0 ≤ sq u l := (val_nonneg.2 h0).trans h1
  unfold s4loF s4hiF
  refine ⟨by have := mulD_nonneg h0 h0; omega, ?_, ?_⟩
  · have e : ((4:ℤ) * mulD (sl tab lo hi l) (sl tab lo hi l)) = ((4:ℕ):ℤ) * mulD (sl tab lo hi l) (sl tab lo hi l) := by norm_num
    rw [e, val_natmul]; push_cast
    have := lb_mul h0 h0 h1 h1; nlinarith
  · have e : ((4:ℤ) * mulU (sh tab lo hi l) (sh tab lo hi l)) = ((4:ℕ):ℤ) * mulU (sh tab lo hi l) (sh tab lo hi l) := by norm_num
    rw [e, val_natmul]; push_cast
    have := ub_mul hs0 hs0 h2 h2; nlinarith

theorem sinc_pos_of {x : ℝ} (hx0 : 0 ≤ x) (hx : x < π) : 0 < sinc x := by
  rcases eq_or_lt_of_le hx0 with h | h
  · subst h; rw [sinc_zero]; norm_num
  · rw [sinc_of_ne_zero h.ne']; exact div_pos (sin_pos_of_pos_of_lt_pi h hx) h

theorem val13 (a : ℤ) : val (13 * a) = 13 * val a := by
  have := val_natmul 13 a; push_cast at this; exact this

theorem dir_a {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u)
    {l : ℕ} (hl : l < 13) :
    0 ≤ aloF tab lo hi l ∧ val (aloF tab lo hi l) ≤ |al u l| ∧ |al u l| ≤ val (ahiF tab lo hi l) := by
  have hu0 := h.u0; have hu1 := h.u1
  have hab := alpha_abs_le (π * (u + 2 * l) / 13)
  have hlo13 : 13 * lo ≤ NN := le_trans (by have := h.lt; omega) (le_NN_13 h.le)
  have hloN : lo ≤ NN := le_trans (by omega) hlo13
  have hhiN : hi ≤ NN := by unfold NN; have := h.le; omega
  unfold aloF ahiF al
  rcases Nat.eq_zero_or_pos l with hl0 | hl0
  · subst hl0
    simp only [if_true]
    rw [alpha0_sinc hu0 hu1]
    have hn0 : 0 ≤ sinc (π * u / 2) := sinc_nonneg_of (by positivity) (by nlinarith [pi_pos])
    have hd0 : 0 < sinc (π * u / 26) := sinc_pos_of (by positivity) (by nlinarith [pi_pos])
    rw [abs_of_nonneg (div_nonneg hn0 hd0.le)]
    have hsu2 : π * u / 26 ≤ π := by nlinarith [pi_pos]
    -- argument identities
    have eA : π * u / 26 = π * u / 26 := rfl
    have e_lo : π * ((lo:ℕ):ℝ) / NN ≤ π * u / 26 := by
      have := argl_lo h 0; simpa using this
    have e_hi : π * u / 26 ≤ π * ((hi:ℕ):ℝ) / NN := by
      have := argl_hi h 0; simpa using this
    refine ⟨?_, ?_, ?_⟩
    · split_ifs with hd
      · exact divD_nonneg (sincLo_ok htab (by have := h.lt; omega) (le_NN_13 h.le)).1 hd
      · exact le_refl 0
    · split_ifs with hd
      · have hlo1 := sincLo_ok htab (m := 13 * hi) (by have := h.lt; omega) (le_NN_13 h.le)
        apply lb_div hlo1.1 (hlo1.2.trans (sinc_anti (by positivity) (arg13_hi h) (argNN_le_pi (le_NN_13 h.le)))) _ hd0 hd
        exact (sinc_anti (argNN_nonneg _) e_lo hsu2).trans (sincHi_ok htab hloN)
      · rw [val_zero]; positivity
    · split_ifs with hd
      · rw [val_min, val_SC]
        refine le_min ?_ ?_
        · have := alpha0_sinc hu0 hu1 ▸ hab
          rw [abs_of_nonneg (div_nonneg hn0 hd0.le)] at this; exact this
        · apply ub_div hn0 _ _ hd
          · exact (sinc_anti (argNN_nonneg _) (arg13_lo h) (by nlinarith [pi_pos])).trans
              (sincHi_ok htab hlo13)
          · have := sincLo_ok htab (m := hi) (by have := h.lt; omega) hhiN
            exact this.2.trans (sinc_anti (by positivity) e_hi (argNN_le_pi hhiN))
      · rw [val_SC]
        have := alpha0_sinc hu0 hu1 ▸ hab
        rw [abs_of_nonneg (div_nonneg hn0 hd0.le)] at this; exact this
  · have hl0' : l ≠ 0 := by omega
    simp only [hl0', if_false]
    have hs := skq_pos hu0 hu1 hl (Or.inl hl0)
    rw [abs_alpha_l hu0 hu1 l hs]
    obtain ⟨hK0, hK1, hK2⟩ := dir_sK htab h
    obtain ⟨hq0, hq1, hq2⟩ := dir_sq htab h hl
    unfold sq at hq1 hq2
    have hsK := sK_nonneg hu0 hu1
    refine ⟨?_, ?_, ?_⟩
    · split_ifs with hd
      · exact divD_nonneg hK0 hd
      · exact le_refl 0
    · split_ifs with hd
      · apply lb_div hK0 hK1 _ (by positivity) hd
        rw [val13]; linarith
      · rw [val_zero]; positivity
    · have hab' := abs_alpha_l hu0 hu1 l hs ▸ hab
      split_ifs with hd
      · rw [val_min, val_SC]
        refine le_min hab' ?_
        apply ub_div hsK hK2 _ (by omega)
        rw [val13]; linarith
      · rw [val_SC]; exact hab'


theorem dir_om {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u)
    {l : ℕ} (hl : l < 13) : 0 ≤ 1 - al u l ∧ 1 - al u l ≤ val (omF tab lo hi l) := by
  have hab := alpha_abs_le (π * (u + 2 * l) / 13)
  obtain ⟨_, ha1, ha2⟩ := dir_a htab h hl
  have hsg := alpha_l_sign h.u0 h.u1 l hl
  unfold omF
  unfold al at ha1 ha2 ⊢
  split_ifs with he
  · have hev : Even l := Nat.even_iff.2 he
    have hpos := hsg.1 hev
    rw [abs_of_nonneg hpos] at ha1 hab
    rw [val_sub, val_SC]
    constructor <;> linarith
  · have hod : Odd l := Nat.odd_iff.2 (by omega)
    have hneg := hsg.2 hod
    rw [abs_of_nonpos hneg] at ha2
    rw [val_add, val_SC]
    constructor <;> linarith

theorem g0_ok {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) (hC : 0 < sincLo tab 4096) {lo hi : ℕ} {u : ℝ}
    (h : InBox lo hi u) : g2f u 0 ≤ val (g0F tab hi) := by
  have hu0 := h.u0; have hu1 := h.u1
  unfold g0F; simp only
  set v := divU (qU (7 * piHi * hi / 53248)) (sincLo tab 4096) with hv
  have hsc := sincLo_ok htab (m := 4096) (by norm_num) (by unfold NN; norm_num)
  have e26 : π * ((4096:ℕ):ℝ) / NN = π / (2 * 13) := by unfold NN; push_cast; ring
  rw [e26] at hsc
  have hsinc : 0 < sinc (π / (2 * 13)) := lt_of_lt_of_le (val_pos.2 hC) hsc.2
  set κ := π * u / 13 with hκ
  have hκ0 : 0 ≤ κ := by positivity
  have h7 : 7 * κ / sinc (π / (2 * 13)) ≤ val v := by
    apply ub_div (by positivity) _ hsc.2 hC
    refine le_trans ?_ (val_qU _)
    push_cast
    have : 7 * κ = 7 * π * u / 13 := by rw [hκ]; ring
    rw [this]
    have hh := h.le_hi
    have : 7 * π * u / 13 ≤ 7 * (piHi:ℝ) * (hi / 4096) / 13 := by
      have := pi_lt_piHi.le
      have : π * u ≤ piHi * (hi / 4096) := mul_le_mul this hh hu0 (by unfold piHi; norm_num)
      nlinarith
    linarith [show 7 * (piHi:ℝ) * (hi / 4096) / 13 = 7 * piHi * hi / 53248 by ring]
  have hv0 : 0 ≤ val v := le_trans (by positivity) h7
  have hsq : (7 * κ / sinc (π / (2 * 13))) ^ 2 ≤ val (mulU v v) := by
    have := ub_mul (by positivity) (by positivity) h7 h7; nlinarith
  refine le_trans ?_ hsq
  unfold g2f sq al
  simp only [Nat.cast_zero, mul_zero, add_zero]
  have eκ : π * u / 13 = κ := rfl
  rw [eκ]
  have e2 : π * u / 26 = κ / 2 := by rw [hκ]; ring
  rw [e2]
  rcases eq_or_lt_of_le hκ0 with hk | hk
  · rw [← hk]; simp [alpha_zero]
  · have h1 := one_sub_alpha_le κ
    have h1' : 0 ≤ 1 - alpha κ := by have := alpha_abs_le κ; rw [abs_le] at this; linarith
    have h2 := H1M.sinc_mul_le_two_sin (L := 13) (x := κ) (by norm_num) hκ0
      (by rw [hκ]; exact div_le_div_of_nonneg_right (by nlinarith [pi_pos]) (by norm_num))
    have hden : κ ^ 2 * sinc (π / (2 * 13)) ^ 2 ≤ 4 * sin (κ / 2) ^ 2 := by
      have := mul_le_mul h2 h2 (mul_nonneg hκ0 hsinc.le) ((mul_nonneg hκ0 hsinc.le).trans h2)
      nlinarith
    have hdpos : 0 < κ ^ 2 * sinc (π / (2 * 13)) ^ 2 := by positivity
    calc (1 - alpha κ) ^ 2 / (4 * sin (κ / 2) ^ 2) ≤ (7 * κ ^ 2) ^ 2 / (κ ^ 2 * sinc (π / (2 * 13)) ^ 2) := by
          apply div_le_div₀ (by positivity) (pow_le_pow_left₀ h1' h1 2) hdpos hden
      _ = (7 * κ / sinc (π / (2 * 13))) ^ 2 := by field_simp

theorem dir_g2 {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) (hC : 0 < sincLo tab 4096) {lo hi : ℕ} {u : ℝ}
    (h : InBox lo hi u) {l : ℕ} (hl : l < 13) (hpos : l = 0 ∨ 0 < s4loF tab lo hi l) :
    g2f u l ≤ val (g2F tab lo hi l) := by
  have hgen : 0 < s4loF tab lo hi l → g2f u l ≤ val (genF tab lo hi l) := by
    intro hs
    obtain ⟨o0, o1⟩ := dir_om htab h hl
    obtain ⟨_, s1, _⟩ := dir_s4 htab h hl
    unfold genF g2f
    apply ub_div (by positivity) _ s1 hs
    have := ub_mul o0 o0 o1 o1; nlinarith
  unfold g2F
  split_ifs with h0 h1 h2
  · subst h0; exact g0_ok htab hC h
  · subst h0; exact le_min (hgen h2) (g0_ok htab hC h) |>.trans_eq (val_min _ _).symm
  · subst h0; exact g0_ok htab hC h
  · rcases hpos with hp | hp
    · exact absurd hp h0
    · exact hgen hp

theorem dir_x {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) :
    val (qD (piLo ^ 2 * (lo:ℚ) ^ 2 / 4096 ^ 2)) ≤ (π * u) ^ 2 ∧
      (π * u) ^ 2 ≤ val (qU (piHi ^ 2 * (hi:ℚ) ^ 2 / 4096 ^ 2)) := by
  have hu0 := h.u0
  have p1 := piLo_lt.le; have p2 := pi_lt_piHi.le
  have pl0 : (0:ℝ) ≤ piLo := by unfold piLo; norm_num
  constructor
  · refine (val_qD _).trans ?_
    push_cast
    have : (piLo:ℝ) * (lo / 4096) ≤ π * u := mul_le_mul p1 h.lo_le (by positivity) pi_pos.le
    have h0 : 0 ≤ (piLo:ℝ) * (lo / 4096) := by positivity
    have := pow_le_pow_left₀ h0 this 2
    calc (piLo:ℝ) ^ 2 * (lo:ℝ) ^ 2 / 4096 ^ 2 = ((piLo:ℝ) * (lo / 4096)) ^ 2 := by ring
      _ ≤ _ := this
  · refine le_trans ?_ (val_qU _)
    push_cast
    have : π * u ≤ (piHi:ℝ) * (hi / 4096) := mul_le_mul p2 h.le_hi hu0 (by linarith [pi_pos])
    have := pow_le_pow_left₀ (by positivity) this 2
    calc (π * u) ^ 2 ≤ ((piHi:ℝ) * (hi / 4096)) ^ 2 := this
      _ = (piHi:ℝ) ^ 2 * (hi:ℝ) ^ 2 / 4096 ^ 2 := by ring

theorem dir_sinc {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) :
    0 ≤ sincLo tab (13 * hi) ∧ val (sincLo tab (13 * hi)) ≤ sinc (π * u / 2) := by
  have := sincLo_ok htab (m := 13 * hi) (by have := h.lt; omega) (le_NN_13 h.le)
  exact ⟨this.1, this.2.trans (sinc_anti (by have := h.u0; positivity) (arg13_hi h)
    (argNN_le_pi (le_NN_13 h.le)))⟩

theorem dir_s2 {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) :
    0 ≤ s2F tab hi ∧ val (s2F tab hi) ≤ sinc (π * u / 2) ^ 2 := by
  obtain ⟨a0, a1⟩ := dir_sinc htab h
  unfold s2F
  exact ⟨mulD_nonneg a0 a0, by have := lb_mul a0 a0 a1 a1; nlinarith⟩

theorem dir_tt {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) :
    0 ≤ ttF tab lo hi ∧ val (ttF tab lo hi) ≤ 4 * sin (π * u / 2) ^ 2 / (2 * π - π * u) ^ 2 := by
  have hu0 := h.u0; have hu1 := h.u1
  obtain ⟨k0, k1, _⟩ := dir_sK htab h
  have hq : 0 < qU (piHi ^ 2 * (2 - (lo:ℚ) / 4096) ^ 2) := by
    apply val_pos.1; refine lt_of_lt_of_le ?_ (val_qU _)
    push_cast
    have : (lo:ℝ) / 4096 ≤ 1 := h.lo_le.trans hu1
    have : (0:ℝ) < 2 - lo / 4096 := by linarith
    have : (0:ℝ) < piHi := by unfold piHi; norm_num
    positivity
  have hm0 : 0 ≤ mulD (sKloF tab lo hi) (sKloF tab lo hi) := mulD_nonneg k0 k0
  have h4 : 0 ≤ 4 * mulD (sKloF tab lo hi) (sKloF tab lo hi) := by omega
  unfold ttF
  refine ⟨divD_nonneg h4 hq, ?_⟩
  have hden : 0 < (2 * π - π * u) ^ 2 := by
    have : 0 < 2 * π - π * u := by nlinarith [pi_pos]
    positivity
  apply lb_div h4 _ _ hden hq
  · have e : ((4:ℤ) * mulD (sKloF tab lo hi) (sKloF tab lo hi)) =
        ((4:ℕ):ℤ) * mulD (sKloF tab lo hi) (sKloF tab lo hi) := by norm_num
    rw [e, val_natmul]; push_cast
    have := lb_mul k0 k0 k1 k1; nlinarith
  · refine le_trans ?_ (val_qU _)
    push_cast
    have e : 2 * π - π * u = π * (2 - u) := by ring
    rw [e]
    have : π * (2 - u) ≤ (piHi:ℝ) * (2 - lo / 4096) :=
      mul_le_mul pi_lt_piHi.le (by linarith [h.lo_le]) (by linarith) (by unfold piHi; norm_num)
    have := pow_le_pow_left₀ (by nlinarith [pi_pos]) this 2
    calc (π * (2 - u)) ^ 2 ≤ ((piHi:ℝ) * (2 - lo / 4096)) ^ 2 := this
      _ = (piHi:ℝ) ^ 2 * (2 - lo / 4096) ^ 2 := by ring

theorem dir_S {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) (c : Bool) :
    0 ≤ (mkDir tab lo hi).S c ∧ val ((mkDir tab lo hi).S c) ≤ H1M.fcsS c (π * u) ∧
    0 ≤ (mkDir tab lo hi).Sm c ∧ val ((mkDir tab lo hi).Sm c) ≤ H1M.fcsSm c (π * u) := by
  obtain ⟨s0, s1⟩ := dir_s2 htab h
  obtain ⟨t0, t1⟩ := dir_tt htab h
  have e2 : π * u / 2 = π * u / 2 := rfl
  unfold H1M.fcsS H1M.fcsSm Dir.S Dir.Sm mkDir
  simp only
  have hs4 : val (mulD (s2F tab hi) (s2F tab hi)) ≤ sinc (π * u / 2) ^ 4 := by
    have := lb_mul s0 s0 s1 s1; nlinarith
  have ht4 : val (mulD (ttF tab lo hi) (ttF tab lo hi)) ≤ 16 * sin (π * u / 2) ^ 4 / (2 * π - π * u) ^ 4 := by
    have := lb_mul t0 t0 t1 t1
    have e : 16 * sin (π * u / 2) ^ 4 / (2 * π - π * u) ^ 4 =
        (4 * sin (π * u / 2) ^ 2 / (2 * π - π * u) ^ 2) * (4 * sin (π * u / 2) ^ 2 / (2 * π - π * u) ^ 2) := by
      field_simp; ring
    rw [e]; exact this
  cases c
  · simp only [Bool.false_eq_true, if_false, add_zero]
    exact ⟨s0, s1, mulD_nonneg s0 s0, hs4⟩
  · simp only [if_true]
    refine ⟨by omega, by rw [val_add]; linarith, ?_, ?_⟩
    · have := mulD_nonneg s0 s0; have := mulD_nonneg t0 t0; omega
    · rw [val_add]; linarith

theorem tq_mono {a b : ℝ} (_ha : 0 ≤ a) (hab : a ≤ b) (hb : b < 2) : a / (2 - a) ≤ b / (2 - b) := by
  rw [div_le_div_iff₀ (by linarith) (by linarith)]; nlinarith

theorem dir_r {tab : ℕ → ℤ × ℤ} {lo hi : ℕ} {u : ℝ} (h : InBox lo hi u) (c : Bool) :
    H1M.fcsr c (π * u) ≤ val ((mkDir tab lo hi).r c) ∧
      H1M.fcsrm c (π * u) ≤ val ((mkDir tab lo hi).rm c) := by
  have hu0 := h.u0; have hu1 := h.u1
  have e : π * u / (2 * π - π * u) = u / (2 - u) := by
    have : 2 - u ≠ 0 := by linarith
    field_simp
  have hlo1 : (lo:ℝ) / 4096 ≤ 1 := h.lo_le.trans hu1
  have hhi1 : (hi:ℝ) / 4096 ≤ 1 := by
    rw [div_le_one (by norm_num)]; exact_mod_cast h.le
  have etl : ((lo:ℝ) / (8192 - lo)) = (lo / 4096) / (2 - lo / 4096) := by
    have : (8192:ℝ) - lo ≠ 0 := by
      have : (lo:ℝ) ≤ 4096 := by linarith [(div_le_one (by norm_num : (0:ℝ) < 4096)).1 hlo1]
      linarith
    have h2 : (2:ℝ) - lo / 4096 ≠ 0 := by linarith
    rw [div_eq_div_iff this h2]; ring
  have eth : ((hi:ℝ) / (8192 - hi)) = (hi / 4096) / (2 - hi / 4096) := by
    have : (8192:ℝ) - hi ≠ 0 := by
      have : (hi:ℝ) ≤ 4096 := by exact_mod_cast h.le
      linarith
    have h2 : (2:ℝ) - hi / 4096 ≠ 0 := by linarith
    rw [div_eq_div_iff this h2]; ring
  have htl : (lo:ℝ) / (8192 - lo) ≤ u / (2 - u) := by
    rw [etl]; exact tq_mono (by positivity) h.lo_le (by linarith)
  have hth : u / (2 - u) ≤ (hi:ℝ) / (8192 - hi) := by
    rw [eth]; exact tq_mono hu0 h.le_hi (by linarith)
  have htl0 : 0 ≤ (lo:ℝ) / (8192 - lo) := by rw [etl]; exact div_nonneg (by positivity) (by linarith)
  have hτ0 : 0 ≤ u / (2 - u) := div_nonneg hu0 (by linarith)
  unfold H1M.fcsr H1M.fcsrm Dir.r Dir.rm mkDir
  simp only
  rw [e]
  cases c
  · simp [val_SC]
  · simp only [if_true]
    constructor
    · refine le_trans ?_ (val_qU _)
      push_cast
      apply div_le_div_of_nonneg_left (by norm_num) (by positivity)
      have := pow_le_pow_left₀ htl0 htl 2; linarith
    · refine le_trans ?_ (val_qU _)
      push_cast
      have h2 := pow_le_pow_left₀ hτ0 hth 2
      have h4 := pow_le_pow_left₀ htl0 htl 4
      apply div_le_div₀ (by positivity) (by linarith) (by positivity) (by linarith)

end YmLean.H2B
