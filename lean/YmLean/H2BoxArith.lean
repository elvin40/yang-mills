import Mathlib
import YmLean.H1Majorant

/-!
# Outward-rounded fixed-point arithmetic and a proved sine table (H2Box, part 1)

Numbers are integers `n` read as `val n = n / 2^40`. Every operation rounds down (`…D`) or up
(`…U`), with a proved inclusion lemma. The sine table gives proved enclosures of
`sin (π m / NN)`, `0 ≤ m ≤ NN`, from the alternating Taylor series of `Real.sin` and the
20-digit bounds `Real.pi_gt_d20`, `Real.pi_lt_d20`. Used by `H2Box.lean` (the branch-and-bound
for `sup B_13 ≤ 10`, H1_ANALYTIC.md §6–§7).
-/

open Real Finset

namespace YmLean.H2B

/-! ## Fixed point -/

/-- The fixed-point scale `2^40`. -/
def SC : ℤ := 1099511627776

theorem SC_pos : (0:ℤ) < SC := by unfold SC; norm_num

theorem SC_real : ((SC:ℤ):ℝ) = 2 ^ 40 := by unfold SC; norm_num

theorem SC_real_pos : (0:ℝ) < (SC:ℝ) := by rw [SC_real]; norm_num

/-- The real number represented by `n`. -/
noncomputable def val (n : ℤ) : ℝ := (n : ℝ) / SC

def fdiv (a b : ℤ) : ℤ := a / b
def cdiv (a b : ℤ) : ℤ := -((-a) / b)

theorem fdiv_le {a b : ℤ} (hb : 0 < b) : ((fdiv a b : ℤ) : ℝ) ≤ (a : ℝ) / b := by
  have h := Int.ediv_mul_le a hb.ne'
  have hb' : (0:ℝ) < b := by exact_mod_cast hb
  rw [le_div_iff₀ hb']; unfold fdiv; exact_mod_cast h

theorem le_cdiv {a b : ℤ} (hb : 0 < b) : (a : ℝ) / b ≤ ((cdiv a b : ℤ) : ℝ) := by
  have h := Int.ediv_mul_le (-a) hb.ne'
  have hb' : (0:ℝ) < b := by exact_mod_cast hb
  rw [div_le_iff₀ hb']; unfold cdiv
  have : a ≤ -((-a) / b) * b := by linarith
  exact_mod_cast this

def mulD (a b : ℤ) : ℤ := fdiv (a * b) SC
def mulU (a b : ℤ) : ℤ := cdiv (a * b) SC
def divD (a b : ℤ) : ℤ := fdiv (a * SC) b
def divU (a b : ℤ) : ℤ := cdiv (a * SC) b

theorem val_add (a b : ℤ) : val (a + b) = val a + val b := by
  unfold val; push_cast; ring

theorem val_sub (a b : ℤ) : val (a - b) = val a - val b := by
  unfold val; push_cast; ring

theorem val_zero : val 0 = 0 := by simp [val]

theorem val_SC : val SC = 1 := by unfold val; field_simp [SC_real_pos.ne']

theorem val_natmul (k : ℕ) (a : ℤ) : val ((k:ℤ) * a) = k * val a := by
  unfold val; push_cast; ring

theorem val_le_val {a b : ℤ} : val a ≤ val b ↔ a ≤ b := by
  unfold val; rw [div_le_div_iff_of_pos_right SC_real_pos]; exact_mod_cast Iff.rfl

theorem val_lt_val {a b : ℤ} : val a < val b ↔ a < b := by
  unfold val; rw [div_lt_div_iff_of_pos_right SC_real_pos]; exact_mod_cast Iff.rfl

theorem val_nonneg {a : ℤ} : 0 ≤ val a ↔ 0 ≤ a := by
  rw [← val_zero, val_le_val]

theorem val_pos {a : ℤ} : 0 < val a ↔ 0 < a := by
  rw [← val_zero, val_lt_val]

theorem val_max (a b : ℤ) : val (max a b) = max (val a) (val b) := by
  rcases le_total a b with h | h
  · rw [max_eq_right h, max_eq_right (val_le_val.2 h)]
  · rw [max_eq_left h, max_eq_left (val_le_val.2 h)]

theorem val_min (a b : ℤ) : val (min a b) = min (val a) (val b) := by
  rcases le_total a b with h | h
  · rw [min_eq_left h, min_eq_left (val_le_val.2 h)]
  · rw [min_eq_right h, min_eq_right (val_le_val.2 h)]

theorem val_sum {ι : Type*} (s : Finset ι) (f : ι → ℤ) : val (∑ i ∈ s, f i) = ∑ i ∈ s, val (f i) := by
  unfold val; push_cast; rw [sum_div]

theorem val_mulD (a b : ℤ) : val (mulD a b) ≤ val a * val b := by
  unfold val mulD
  have h := fdiv_le (a := a * b) SC_pos
  have := SC_real_pos
  calc ((fdiv (a * b) SC : ℤ) : ℝ) / SC ≤ ((a * b : ℤ) : ℝ) / SC / SC :=
        div_le_div_of_nonneg_right h this.le
    _ = (a:ℝ) / SC * ((b:ℝ) / SC) := by push_cast; ring

theorem val_mulU (a b : ℤ) : val a * val b ≤ val (mulU a b) := by
  unfold val mulU
  have h := le_cdiv (a := a * b) SC_pos
  have := SC_real_pos
  calc (a:ℝ) / SC * ((b:ℝ) / SC) = ((a * b : ℤ) : ℝ) / SC / SC := by push_cast; ring
    _ ≤ ((cdiv (a * b) SC : ℤ) : ℝ) / SC := div_le_div_of_nonneg_right h this.le

theorem val_divD {a b : ℤ} (hb : 0 < b) : val (divD a b) ≤ val a / val b := by
  unfold val divD
  have h := fdiv_le (a := a * SC) hb
  have := SC_real_pos
  have hb' : (0:ℝ) < b := by exact_mod_cast hb
  calc ((fdiv (a * SC) b : ℤ) : ℝ) / SC ≤ ((a * SC : ℤ) : ℝ) / b / SC :=
        div_le_div_of_nonneg_right h this.le
    _ = (a:ℝ) / SC / ((b:ℝ) / SC) := by push_cast; field_simp

theorem val_divU {a b : ℤ} (hb : 0 < b) : val a / val b ≤ val (divU a b) := by
  unfold val divU
  have h := le_cdiv (a := a * SC) hb
  have := SC_real_pos
  have hb' : (0:ℝ) < b := by exact_mod_cast hb
  calc (a:ℝ) / SC / ((b:ℝ) / SC) = ((a * SC : ℤ) : ℝ) / b / SC := by push_cast; field_simp
    _ ≤ ((cdiv (a * SC) b : ℤ) : ℝ) / SC := div_le_div_of_nonneg_right h this.le

/-- `cdiv` by a positive natural number, as a real upper bound. -/
theorem val_cdiv_nat {a : ℤ} {k : ℕ} (hk : 0 < k) : val a / k ≤ val (cdiv a k) := by
  unfold val
  have h := le_cdiv (a := a) (b := k) (by exact_mod_cast hk)
  have := SC_real_pos
  have hk' : (0:ℝ) < k := by exact_mod_cast hk
  calc (a:ℝ) / SC / k = ((a:ℝ) / ((k:ℤ):ℝ)) / SC := by push_cast; ring
    _ ≤ _ := div_le_div_of_nonneg_right h this.le

theorem val_fdiv_nat {a : ℤ} {k : ℕ} (hk : 0 < k) : val (fdiv a k) ≤ val a / k := by
  unfold val
  have h := fdiv_le (a := a) (b := k) (by exact_mod_cast hk)
  have := SC_real_pos
  calc ((fdiv a k : ℤ) : ℝ) / SC ≤ ((a:ℝ) / ((k:ℤ):ℝ)) / SC := div_le_div_of_nonneg_right h this.le
    _ = (a:ℝ) / SC / k := by push_cast; ring

/-! ### Monotone enclosure lemmas (upper bounds of nonnegative reals) -/

theorem ub_mul {x y : ℝ} {X Y : ℤ} (hx : 0 ≤ x) (hy : 0 ≤ y) (hX : x ≤ val X) (hY : y ≤ val Y) :
    x * y ≤ val (mulU X Y) :=
  (mul_le_mul hX hY hy (hx.trans hX)).trans (val_mulU X Y)

theorem lb_mul {x y : ℝ} {X Y : ℤ} (hX0 : 0 ≤ X) (hY0 : 0 ≤ Y) (hX : val X ≤ x) (hY : val Y ≤ y) :
    val (mulD X Y) ≤ x * y :=
  (val_mulD X Y).trans (mul_le_mul hX hY (val_nonneg.2 hY0) ((val_nonneg.2 hX0).trans hX))

theorem ub_div {x y : ℝ} {X Y : ℤ} (hx : 0 ≤ x) (hX : x ≤ val X) (hY : val Y ≤ y) (hY0 : 0 < Y) :
    x / y ≤ val (divU X Y) := by
  have hYp : 0 < val Y := val_pos.2 hY0
  calc x / y ≤ val X / y := div_le_div_of_nonneg_right hX (hYp.le.trans hY)
    _ ≤ val X / val Y := div_le_div_of_nonneg_left (hx.trans hX) hYp hY
    _ ≤ _ := val_divU hY0

theorem lb_div {x y : ℝ} {X Y : ℤ} (hX0 : 0 ≤ X) (hX : val X ≤ x) (hY : y ≤ val Y) (hy : 0 < y)
    (hY0 : 0 < Y) : val (divD X Y) ≤ x / y := by
  calc val (divD X Y) ≤ val X / val Y := val_divD hY0
    _ ≤ val X / y := div_le_div_of_nonneg_left (val_nonneg.2 hX0) hy hY
    _ ≤ x / y := div_le_div_of_nonneg_right hX hy.le

theorem mulD_nonneg {a b : ℤ} (ha : 0 ≤ a) (hb : 0 ≤ b) : 0 ≤ mulD a b :=
  Int.ediv_nonneg (mul_nonneg ha hb) SC_pos.le

theorem divD_nonneg {a b : ℤ} (ha : 0 ≤ a) (hb : 0 < b) : 0 ≤ divD a b :=
  Int.ediv_nonneg (mul_nonneg ha SC_pos.le) hb.le

/-- Upper square root: `Nat.sqrt (a·2^40) + 1`. -/
def sqrtU (a : ℤ) : ℤ := ((Nat.sqrt (a.toNat * SC.toNat) + 1 : ℕ) : ℤ)

theorem ub_sqrt {x : ℝ} {X : ℤ} (hx : 0 ≤ x) (hX : x ≤ val X) : Real.sqrt x ≤ val (sqrtU X) := by
  have hX0 : 0 ≤ X := val_nonneg.1 (hx.trans hX)
  set n := X.toNat * SC.toNat with hn
  have hs := Nat.lt_succ_sqrt n
  have hnZ : ((n:ℕ):ℤ) = X * SC := by
    rw [hn]; push_cast; rw [Int.toNat_of_nonneg hX0, Int.toNat_of_nonneg SC_pos.le]
  have hnR : ((n:ℕ):ℝ) = (X:ℝ) * SC := by exact_mod_cast hnZ
  have hsR : ((n:ℕ):ℝ) < ((Nat.sqrt n + 1 : ℕ):ℝ) * ((Nat.sqrt n + 1 : ℕ):ℝ) := by exact_mod_cast hs
  have hv : val (sqrtU X) = ((Nat.sqrt n + 1 : ℕ):ℝ) / SC := by
    unfold val sqrtU; rw [← hn]; push_cast; ring
  rw [hv]
  apply Real.sqrt_le_iff.2
  refine ⟨div_nonneg (by positivity) SC_real_pos.le, ?_⟩
  have hSC := SC_real_pos
  calc x ≤ val X := hX
    _ = (X:ℝ) * SC / SC ^ 2 := by unfold val; field_simp
    _ ≤ ((Nat.sqrt n + 1 : ℕ):ℝ) * ((Nat.sqrt n + 1 : ℕ):ℝ) / SC ^ 2 := by
        rw [← hnR]; exact div_le_div_of_nonneg_right hsR.le (by positivity)
    _ = (((Nat.sqrt n + 1 : ℕ):ℝ) / SC) ^ 2 := by ring

/-! ### Rationals to fixed point -/

def qD (q : ℚ) : ℤ := ⌊q * SC⌋
def qU (q : ℚ) : ℤ := ⌈q * SC⌉

theorem val_qD (q : ℚ) : val (qD q) ≤ (q : ℝ) := by
  unfold val qD
  have h := Int.floor_le (q * SC)
  have h' : ((⌊q * SC⌋ : ℤ) : ℝ) ≤ (q:ℝ) * SC := by exact_mod_cast h
  rw [div_le_iff₀ SC_real_pos]; exact h'

theorem val_qU (q : ℚ) : (q : ℝ) ≤ val (qU q) := by
  unfold val qU
  have h := Int.le_ceil (q * SC)
  have h' : (q:ℝ) * SC ≤ ((⌈q * SC⌉ : ℤ) : ℝ) := by exact_mod_cast h
  rw [le_div_iff₀ SC_real_pos]; exact h'

/-! ## π -/

def piLo : ℚ := 314159265358979323846 / 10 ^ 20
def piHi : ℚ := 314159265358979323847 / 10 ^ 20

theorem piLo_lt : (piLo : ℝ) < π := by
  have := Real.pi_gt_d20; unfold piLo; push_cast; norm_num at this ⊢; linarith

theorem pi_lt_piHi : π < (piHi : ℝ) := by
  have := Real.pi_lt_d20; unfold piHi; push_cast; norm_num at this ⊢; linarith

/-! ## Sine by the alternating Taylor series -/

/-- `Σ_{i<n} (−1)^i x^{2i+1}/(2i+1)!` over `ℚ`. -/
def tq (x : ℚ) (n : ℕ) : ℚ := ∑ i ∈ range n, (-1) ^ i * (x ^ (2 * i + 1) / ((2 * i + 1).factorial : ℚ))

theorem tq_cast (x : ℚ) (n : ℕ) :
    ((tq x n : ℚ) : ℝ) = ∑ i ∈ range n, (-1) ^ i * ((x:ℝ) ^ (2 * i + 1) / ((2 * i + 1).factorial : ℝ)) := by
  unfold tq; push_cast; rfl

theorem sin_taylor {x : ℝ} (h0 : 0 ≤ x) (h2 : x ≤ 2) (k : ℕ) :
    ∑ i ∈ range (2 * k), (-1) ^ i * (x ^ (2 * i + 1) / ((2 * i + 1).factorial : ℝ)) ≤ sin x ∧
    sin x ≤ ∑ i ∈ range (2 * k + 1), (-1) ^ i * (x ^ (2 * i + 1) / ((2 * i + 1).factorial : ℝ)) := by
  set f : ℕ → ℝ := fun i => x ^ (2 * i + 1) / ((2 * i + 1).factorial : ℝ) with hf
  have hfl : Filter.Tendsto (fun n => ∑ i ∈ range n, (-1) ^ i * f i) Filter.atTop (nhds (sin x)) := by
    have := (Real.hasSum_sin x).tendsto_sum_nat
    refine this.congr fun n => sum_congr rfl fun i _ => ?_
    simp only [hf]; ring
  have hfa : Antitone f := by
    refine antitone_nat_of_succ_le fun n => ?_
    simp only [hf]
    have e1 : 2 * (n + 1) + 1 = (2 * n + 1) + 2 := by ring
    rw [e1, pow_add, Nat.factorial_succ, Nat.factorial_succ]
    have hfac : (0:ℝ) < ((2 * n + 1).factorial : ℝ) := by exact_mod_cast Nat.factorial_pos _
    have hx2 : x ^ 2 ≤ ((2 * n + 1 + 1 + 1 : ℕ) : ℝ) * ((2 * n + 1 + 1 : ℕ) : ℝ) := by
      push_cast; nlinarith
    push_cast
    rw [div_le_div_iff₀ (by positivity) hfac]
    have hp : 0 ≤ x ^ (2 * n + 1) := pow_nonneg h0 _
    have : x ^ (2 * n + 1) * x ^ 2 * ((2 * n + 1).factorial : ℝ) ≤
        x ^ (2 * n + 1) * (((2 * n + 1 + 1 + 1 : ℕ) : ℝ) * ((2 * n + 1 + 1 : ℕ) : ℝ)) *
          ((2 * n + 1).factorial : ℝ) := by
      apply mul_le_mul_of_nonneg_right _ hfac.le
      exact mul_le_mul_of_nonneg_left hx2 hp
    push_cast at this; nlinarith
  exact ⟨hfa.alternating_series_le_tendsto hfl k, hfa.tendsto_le_alternating_series hfl k⟩

/-- Table resolution: arguments `π m / NN`, `NN = 2^13 · 13`. -/
def NN : ℕ := 106496
def NH : ℕ := 53248

theorem NN_eq : NN = 2 * NH := by decide

/-- Enclosure of `sin (π m / NN)` for `2m ≤ NN`, as fixed-point `(lo, hi)`. -/
def sinEnt (m : ℕ) : ℤ × ℤ :=
  let x : ℚ := piLo * m / NN
  (max (qD (tq x 12 - 1 / 10 ^ 20)) 0, qU (tq x 13 + 1 / 10 ^ 20))

theorem sin_close {m : ℕ} (hm : m ≤ NN) :
    |sin (π * m / NN) - sin ((piLo * m / NN : ℚ) : ℝ)| ≤ 1 / 10 ^ 20 := by
  refine (abs_sin_sub_sin_le _ _).trans ?_
  have h1 := piLo_lt; have h2 := pi_lt_piHi
  have hd : (piHi : ℝ) - piLo = 1 / 10 ^ 20 := by unfold piHi piLo; push_cast; norm_num
  have hN : (0:ℝ) < NN := by unfold NN; norm_num
  have hmN : (m:ℝ) / NN ≤ 1 := by
    rw [div_le_one hN]; exact_mod_cast hm
  have hm0 : (0:ℝ) ≤ m / NN := by positivity
  push_cast
  have : π * m / NN - piLo * m / NN = (π - piLo) * (m / NN) := by ring
  rw [this, abs_mul, abs_of_nonneg (by linarith), abs_of_nonneg hm0]
  calc (π - piLo) * (m / NN) ≤ (piHi - piLo) * 1 := by
        apply mul_le_mul (by linarith) hmN hm0 (by linarith)
    _ = 1 / 10 ^ 20 := by rw [hd]; ring

theorem sinEnt_ok {m : ℕ} (hm : 2 * m ≤ NN) :
    0 ≤ (sinEnt m).1 ∧ val (sinEnt m).1 ≤ sin (π * m / NN) ∧ sin (π * m / NN) ≤ val (sinEnt m).2 := by
  have hc := sin_close (m := m) (by omega)
  set x : ℚ := piLo * m / NN with hx
  have hx0 : (0:ℝ) ≤ (x:ℝ) := by rw [hx]; unfold piLo; push_cast; positivity
  have hx2 : (x:ℝ) ≤ 2 := by
    rw [hx]; push_cast
    have hN : (0:ℝ) < NN := by unfold NN; norm_num
    have hm' : (m:ℝ) ≤ NN / 2 := by
      have : ((2 * m : ℕ):ℝ) ≤ NN := by exact_mod_cast hm
      push_cast at this; linarith
    have hp : (piLo:ℝ) ≤ 4 := by unfold piLo; norm_num
    have hp0 : (0:ℝ) ≤ piLo := by unfold piLo; norm_num
    rw [div_le_iff₀ hN]
    calc (piLo:ℝ) * m ≤ 4 * (NN / 2) := mul_le_mul hp hm' (by positivity) (by norm_num)
      _ = 2 * NN := by ring
  have ht := sin_taylor hx0 hx2 6
  rw [abs_le] at hc
  refine ⟨le_max_right _ _, ?_, ?_⟩
  · unfold sinEnt; simp only
    rw [val_max]
    apply max_le
    · refine (val_qD _).trans ?_
      push_cast; rw [← hx, tq_cast]; linarith [ht.1]
    · rw [val_zero]
      apply sin_nonneg_of_nonneg_of_le_pi (by positivity)
      have hN : (0:ℝ) < NN := by unfold NN; norm_num
      rw [div_le_iff₀ hN]
      have : (m:ℝ) ≤ NN := by
        have : ((2 * m : ℕ):ℝ) ≤ NN := by exact_mod_cast hm
        push_cast at this; linarith
      nlinarith [pi_pos]
  · unfold sinEnt; simp only
    refine le_trans ?_ (val_qU _)
    push_cast; rw [← hx, tq_cast]; linarith [ht.2]

/-- A sine table: entry `m` encloses `sin (π m / NN)`. -/
def TabOK (tab : ℕ → ℤ × ℤ) : Prop :=
  ∀ m, m ≤ NN → 0 ≤ (tab m).1 ∧ val (tab m).1 ≤ sin (π * m / NN) ∧ sin (π * m / NN) ≤ val (tab m).2

/-- The half table `m ≤ NH`, a constant array (computed once). -/
def sinArr : Array (ℤ × ℤ) := Array.ofFn (n := NH + 1) fun m => sinEnt m

/-- The table used by the checker: half table, reflected by `sin (π − x) = sin x`. -/
def mkTab (m : ℕ) : ℤ × ℤ :=
  if 2 * m ≤ NN then sinArr.getD m (0, SC) else sinArr.getD (NN - m) (0, SC)

theorem mkTab_ok : TabOK mkTab := by
  intro m hm
  unfold mkTab sinArr
  split_ifs with h
  · have hlt : m < NH + 1 := by rw [NN_eq] at h; omega
    rw [Array.getD_eq_getD_getElem?, Array.getElem?_ofFn]
    simp only [hlt, dite_true, Option.getD_some]
    exact sinEnt_ok h
  · have hlt : NN - m < NH + 1 := by rw [NN_eq] at hm h ⊢; omega
    rw [Array.getD_eq_getD_getElem?, Array.getElem?_ofFn]
    simp only [hlt, dite_true, Option.getD_some]
    have h2 : 2 * (NN - m) ≤ NN := by omega
    have := sinEnt_ok h2
    have e : π * ((NN - m : ℕ) : ℝ) / NN = π - π * m / NN := by
      have hN : (NN:ℝ) ≠ 0 := by unfold NN; norm_num
      rw [Nat.cast_sub hm]; field_simp
    rw [e, sin_pi_sub] at this
    exact this

end YmLean.H2B
