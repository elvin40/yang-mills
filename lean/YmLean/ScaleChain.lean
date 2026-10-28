import YmLean.ElemBounds
import Mathlib.Analysis.Real.Sqrt
import Mathlib.Algebra.BigOperators.Intervals

/-!
# The CMP 119 scale chain (2.6)–(2.9), (T1)–(T4), and the (2.46) sum

Sources: SOURCES_A11_CONST.md §1 (transcription of (2.4)–(2.9), side conditions (T1)–(T4)),
§4 (the (2.46) re-proof); SOURCES_A11_CONST_VERIFY.md §8 (the naive product gives (1 + β₀)² in
(2.8) line 1; the printed (1 + β₀) needs monotonicity of g ℓ^q, here
`YmLean.gLogPow_strictMonoOn`; (T2), (T3) hold for real p > 0), §17 (H-255–H-265);
SOURCES_B10_SWEEP.md (i) H-156 (P-up)/H-155 (P-low) ⇒ (2.6), c_sw = 64/15 at β₀ = 1/7, (2.46) recomputed);
THEOREM2_PROOF_v4.md §1.2 (H-156 (P-up), H-155 (P-low), K-018 (S)).

Scope. Everything is a statement about a real sequence g : ℕ → ℝ with 0 < g_j ≤ γ. The
recursion bounds (2.6) (or H-156 (P-up)/H-155 (P-low)) are hypotheses. This file certifies the arithmetic of
the chain, not Balaban's derivation of (2.6)–(2.7) from the renormalization group equations.

Notation: ℓ(x) = log x^{−2} (`ell`), x^a = exp(a log x) (`epow`, rpow avoided),
ε = g A₀ ℓ^{p₀} ((2.4), `eps`), X = g_n²β′(n − m), N = n − m.

Finding (2.9) line 2, last step. L(1 + X)^{β₀} ≤ (L + 1)N^{β₀} needs
(1 + g_n²β′)^{β₀} ≤ 1 + 1/L; (T1)–(T4) only give 1 + β₀. `eq29_line2_full` uses γ²β′ ≤ 1/L
(an upper bound on γ after L, β′: admissible). This condition is not printed.

(2.46) constant. The proof compares with Σ_t (a + βt)^{−2} (telescoping), so the constant is
2^k(1 + 1/β), k = ⌊κ₀/2⌋, instead of the integral constant 1/(β(κ₀/2 − 1)) of A11 §4; the
order g_n^{κ₀−3} (odd κ₀) or g_n^{κ₀−2} (even κ₀) is the same. The smallness condition is
2^k(1 + 1/β)γ³ < 1.
-/

namespace YmLean.ScaleChain

open Finset

/-- ℓ(x) = log x^{−2}. -/
noncomputable def ell (x : ℝ) : ℝ := Real.log (x ^ 2)⁻¹

/-- x^a written exp(a log x); equal to the real power for x > 0. -/
noncomputable def epow (a x : ℝ) : ℝ := Real.exp (a * Real.log x)

/-- (2.4): ε = g A₀ (log g^{−2})^{p₀}. -/
noncomputable def eps (A0 p0 x : ℝ) : ℝ := x * A0 * epow p0 (ell x)

/-- c_sw = max(2, 1/(1 − (1 + β₀)^{−2})) (THEOREM2_PROOF_v4 §1.2 K-018 (S)). -/
noncomputable def cSw (β0 : ℝ) : ℝ := max 2 (1 / (1 - ((1 + β0) ^ 2)⁻¹))

/-- SOURCES_B10_SWEEP (i): c_sw = 64/15 at β₀ = 1/7. -/
theorem cSw_one_seventh : cSw (1 / 7) = 64 / 15 := by norm_num [cSw]

lemma ell_eq (x : ℝ) : ell x = -(2 * Real.log x) := by
  rw [ell, Real.log_inv, Real.log_pow]; push_cast; ring

lemma ell_anti {x y : ℝ} (hx : 0 < x) (hxy : x ≤ y) : ell y ≤ ell x := by
  rw [ell_eq, ell_eq]; have := Real.log_le_log hx hxy; linarith

lemma epow_pos (a x : ℝ) : 0 < epow a x := Real.exp_pos _

lemma epow_mono {a x y : ℝ} (ha : 0 ≤ a) (hx : 0 < x) (hxy : x ≤ y) : epow a x ≤ epow a y :=
  Real.exp_le_exp.mpr (mul_le_mul_of_nonneg_left (Real.log_le_log hx hxy) ha)

lemma epow_mul {a x y : ℝ} (hx : 0 < x) (hy : 0 < y) :
    epow a (x * y) = epow a x * epow a y := by
  rw [epow, epow, epow, Real.log_mul hx.ne' hy.ne', mul_add, Real.exp_add]

lemma epow_le_self {a y : ℝ} (ha1 : a ≤ 1) (hy : 1 ≤ y) : epow a y ≤ y := by
  have hl : 0 ≤ Real.log y := Real.log_nonneg hy
  calc epow a y ≤ Real.exp (Real.log y) := Real.exp_le_exp.mpr (by nlinarith)
    _ = y := Real.exp_log (by linarith)

lemma one_le_epow {a y : ℝ} (ha : 0 ≤ a) (hy : 1 ≤ y) : 1 ≤ epow a y :=
  Real.one_le_exp (mul_nonneg ha (Real.log_nonneg hy))

/-- The step behind (T2), (T3): a ≤ b + c and p c ≤ K b give a^p ≤ e^K b^p (log a − log b ≤ c/b). -/
lemma logpow_ratio {a b c p K : ℝ} (ha : 0 < a) (hb : 0 < b) (hp : 0 ≤ p)
    (hab : a ≤ b + c) (hK : p * c ≤ K * b) : epow p a ≤ Real.exp K * epow p b := by
  rw [epow, epow, ← Real.exp_add, Real.exp_le_exp]
  have h1 : Real.log a - Real.log b ≤ c / b := by
    rw [← Real.log_div ha.ne' hb.ne']
    have h := Real.log_le_sub_one_of_pos (div_pos ha hb)
    have : a / b - 1 ≤ c / b := by
      rw [div_sub_one hb.ne']; exact div_le_div_of_nonneg_right (by linarith) hb.le
    linarith
  have h2 : p * (c / b) ≤ K := by rw [mul_div_assoc']; exact (div_le_iff₀ hb).mpr hK
  nlinarith [mul_le_mul_of_nonneg_left h1 hp]

/-- A11_CONST_VERIFY §8 monotonicity, closed at the endpoint: x ℓ(x)^q ≤ y ℓ(y)^q for
0 < x ≤ y ≤ e^{−q} (from `gLogPow_strictMonoOn` and continuity at y). -/
lemma gLogPow_le {q x y : ℝ} (hq : 0 < q) (hx : 0 < x) (hxy : x ≤ y) (hy : y ≤ Real.exp (-q)) :
    x * epow q (ell x) ≤ y * epow q (ell y) := by
  set F : ℝ → ℝ := fun g => g * Real.exp (q * Real.log (Real.log (g ^ 2)⁻¹))
  change F x ≤ F y
  have hmono := YmLean.gLogPow_strictMonoOn hq
  rcases hxy.eq_or_lt with h | hlt
  · rw [h]
  have hxI : x ∈ Set.Ioo 0 (Real.exp (-q)) := ⟨hx, lt_of_lt_of_le hlt hy⟩
  have hin : ∀ z ∈ Set.Ioo x y, F x ≤ F z := fun z hz =>
    (hmono hxI ⟨hx.trans hz.1, lt_of_lt_of_le hz.2 hy⟩ hz.1).le
  have hy0 : 0 < y := hx.trans hlt
  have hℓ : Real.log (y ^ 2)⁻¹ ≠ 0 := by
    have : Real.log y ≤ -q := (Real.log_le_iff_le_exp hy0).mpr hy
    rw [show Real.log (y ^ 2)⁻¹ = ell y from rfl, ell_eq]; intro h; linarith
  have hc : ContinuousAt F y := by
    have h2 : (y ^ 2)⁻¹ ≠ 0 := inv_ne_zero (pow_ne_zero 2 hy0.ne')
    have c1 : ContinuousAt (fun g : ℝ => (g ^ 2)⁻¹) y :=
      (continuousAt_id.pow 2).inv₀ (pow_ne_zero 2 hy0.ne')
    exact continuousAt_id.mul ((continuousAt_const.mul ((c1.log h2).log hℓ)).rexp)
  exact ContinuousWithinAt.closure_le (by rw [closure_Ioo hlt.ne]; exact ⟨hlt.le, le_rfl⟩)
    continuousWithinAt_const hc.continuousWithinAt hin

variable {g : ℕ → ℝ} {γ β0 β' : ℝ}

lemma cast_sub_ge_one {m n : ℕ} (hmn : m < n) : (1 : ℝ) ≤ (n : ℝ) - m := by
  have : (m : ℝ) + 1 ≤ n := by exact_mod_cast hmn
  linarith

/-- (T1): g_n²β′ ≤ (1 + β₀)² − 1 from H-255 (S1) γ²β′ ≤ (1 + β₀)² − 1. -/
theorem T1 (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ' : 0 ≤ β')
    (hS1 : γ ^ 2 * β' ≤ (1 + β0) ^ 2 - 1) (n : ℕ) : g n ^ 2 * β' ≤ (1 + β0) ^ 2 - 1 :=
  le_trans (mul_le_mul_of_nonneg_right (pow_le_pow_left₀ (hg n).le (hγ n) 2) hβ') hS1

/-- (2.6) line 1, the full chain from its first step (hypothesis `h26`, squared form of
g_n ≤ (1 + g_n²β′(n − m))^{1/2} g_m): g_n² ≤ (1 + g_n²β′)(n − m) g_m² and
g_n ≤ (1 + β₀)(n − m)^{1/2} g_m. -/
theorem eq26_line1 (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0) (hβ' : 0 ≤ β')
    (hS1 : γ ^ 2 * β' ≤ (1 + β0) ^ 2 - 1)
    (h26 : ∀ m n : ℕ, m < n → g n ^ 2 ≤ (1 + g n ^ 2 * β' * (n - m)) * g m ^ 2)
    {m n : ℕ} (hmn : m < n) :
    g n ^ 2 ≤ (1 + g n ^ 2 * β') * (n - m) * g m ^ 2 ∧ g n ≤ (1 + β0) * √(n - m) * g m := by
  have hN := cast_sub_ge_one hmn
  set N : ℝ := (n : ℝ) - m
  have ha : 0 ≤ g n ^ 2 * β' := mul_nonneg (sq_nonneg _) hβ'
  have h1 : g n ^ 2 ≤ (1 + g n ^ 2 * β') * N * g m ^ 2 :=
    (h26 m n hmn).trans (mul_le_mul_of_nonneg_right (by nlinarith) (sq_nonneg _))
  refine ⟨h1, ?_⟩
  have hT1 := T1 hg hγ hβ' hS1 n
  have h2 : g n ^ 2 ≤ ((1 + β0) * √N * g m) ^ 2 := by
    rw [mul_pow, mul_pow, Real.sq_sqrt (by linarith)]
    refine h1.trans (mul_le_mul_of_nonneg_right ?_ (by positivity))
    exact mul_le_mul_of_nonneg_right (by linarith) (by linarith)
  calc g n = √(g n ^ 2) := (Real.sqrt_sq (hg n).le).symm
    _ ≤ √(((1 + β0) * √N * g m) ^ 2) := Real.sqrt_le_sqrt h2
    _ = _ := Real.sqrt_sq (mul_nonneg (mul_nonneg (by linarith) (Real.sqrt_nonneg _)) (hg m).le)

lemma ell_ge (hγ : ∀ j, g j ≤ γ) (hg : ∀ j, 0 < g j) {c : ℝ} (h : c ≤ ell γ)
    (j : ℕ) : c ≤ ell (g j) := h.trans (ell_anti (hg j) (hγ j))

/-- (T2) = (2.7) line 1: (log g_n^{−2})^p ≤ (1 + β₀)(log g_m^{−2})^p, real p > 0, given
(2.6) line 2 and log γ^{−2} ≥ 2p. -/
theorem T2 (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0) {p : ℝ} (hp : 0 < p)
    (h2p : 2 * p ≤ ell γ) (h26b : ∀ m n : ℕ, m < n → g m ≤ (1 + β0) * g n)
    {m n : ℕ} (hmn : m < n) : epow p (ell (g n)) ≤ (1 + β0) * epow p (ell (g m)) := by
  have hm := ell_ge hγ hg h2p m
  have hn := ell_ge hγ hg h2p n
  have hL : 0 ≤ Real.log (1 + β0) := Real.log_nonneg (by linarith)
  have hab : ell (g n) ≤ ell (g m) + 2 * Real.log (1 + β0) := by
    have := Real.log_le_log (hg m) (h26b m n hmn)
    rw [Real.log_mul (by linarith) (hg n).ne'] at this
    rw [ell_eq, ell_eq]; linarith
  have := logpow_ratio (K := Real.log (1 + β0)) (by linarith) (by linarith) hp.le hab
    (by nlinarith)
  rwa [Real.exp_log (by linarith)] at this

/-- (T3) = (2.7) line 2, first step: (log g_m^{−2})^p ≤ (1 + X)^{β₀}(log g_n^{−2})^p,
X = g_n²β′(n − m), real p > 0, given log γ^{−2} ≥ p/β₀ (as p ≤ β₀ log γ^{−2}). -/
theorem T3 (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0) (hβ' : 0 ≤ β') {p : ℝ}
    (hp : 0 < p) (hpβ : p ≤ β0 * ell γ)
    (h26 : ∀ m n : ℕ, m < n → g n ^ 2 ≤ (1 + g n ^ 2 * β' * (n - m)) * g m ^ 2)
    {m n : ℕ} (hmn : m < n) :
    epow p (ell (g m)) ≤ epow β0 (1 + g n ^ 2 * β' * (n - m)) * epow p (ell (g n)) := by
  have hN := cast_sub_ge_one hmn
  have hX : 1 ≤ 1 + g n ^ 2 * β' * (n - m) := by
    have : 0 ≤ g n ^ 2 * β' * (n - m) := mul_nonneg (by positivity) (by linarith)
    linarith
  have hγ0 : 0 < ell γ := by
    by_contra h; push Not at h; nlinarith [mul_nonneg hβ0 (neg_nonneg.mpr h)]
  have hm := ell_ge hγ hg (le_refl (ell γ)) m
  have hn := ell_ge hγ hg (le_refl (ell γ)) n
  have hlX := Real.log_nonneg hX
  have hab : ell (g m) ≤ ell (g n) + Real.log (1 + g n ^ 2 * β' * (n - m)) := by
    have := Real.log_le_log (by have := hg n; positivity) (h26 m n hmn)
    rw [Real.log_mul (by linarith) (by have := hg m; positivity)] at this
    rw [ell, ell, Real.log_inv, Real.log_inv]; linarith
  have hpn : p ≤ β0 * ell (g n) := hpβ.trans (mul_le_mul_of_nonneg_left
    (ell_anti (hg n) (hγ n)) hβ0)
  exact logpow_ratio (by linarith) (by linarith) hp.le hab (by nlinarith)

/-- (T4): (1 + X)^{β₀} ≤ (1 + β₀)(n − m)^{β₀}, from 1 + X ≤ (1 + g_n²β′)(n − m), (T1), and
(1 + β₀)^{2β₀} ≤ 1 + β₀ for β₀ ≤ 1/2. -/
theorem T4 (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0) (hβ0h : β0 ≤ 1 / 2)
    (hβ' : 0 ≤ β') (hS1 : γ ^ 2 * β' ≤ (1 + β0) ^ 2 - 1) {m n : ℕ} (hmn : m < n) :
    epow β0 (1 + g n ^ 2 * β' * (n - m)) ≤ (1 + β0) * epow β0 (n - m) := by
  have hN := cast_sub_ge_one hmn
  have ha : 0 ≤ g n ^ 2 * β' := mul_nonneg (sq_nonneg _) hβ'
  have hT1 := T1 hg hγ hβ' hS1 n
  calc epow β0 (1 + g n ^ 2 * β' * (n - m))
      ≤ epow β0 ((1 + g n ^ 2 * β') * (n - m)) :=
        epow_mono hβ0 (by nlinarith) (by nlinarith)
    _ = epow β0 (1 + g n ^ 2 * β') * epow β0 (n - m) := epow_mul (by linarith) (by linarith)
    _ ≤ epow β0 ((1 + β0) ^ 2) * epow β0 (n - m) :=
        mul_le_mul_of_nonneg_right (epow_mono hβ0 (by linarith) (by linarith))
          (epow_pos _ _).le
    _ ≤ (1 + β0) * epow β0 (n - m) := by
        refine mul_le_mul_of_nonneg_right ?_ (epow_pos _ _).le
        have : epow β0 ((1 + β0) ^ 2) = epow (2 * β0) (1 + β0) := by
          rw [epow, epow, Real.log_pow]; push_cast; ring_nf
        rw [this]; exact epow_le_self (by linarith) (by linarith)

/-- (2.7) line 2 in full: (log g_m^{−2})^p ≤ (1 + β₀)(n − m)^{β₀}(log g_n^{−2})^p. -/
theorem eq27_line2 (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0) (hβ0h : β0 ≤ 1 / 2)
    (hβ' : 0 ≤ β') (hS1 : γ ^ 2 * β' ≤ (1 + β0) ^ 2 - 1) {p : ℝ} (hp : 0 < p)
    (hpβ : p ≤ β0 * ell γ)
    (h26 : ∀ m n : ℕ, m < n → g n ^ 2 ≤ (1 + g n ^ 2 * β' * (n - m)) * g m ^ 2)
    {m n : ℕ} (hmn : m < n) :
    epow p (ell (g m)) ≤ (1 + β0) * epow β0 (n - m) * epow p (ell (g n)) :=
  (T3 hg hγ hβ0 hβ' hp hpβ h26 hmn).trans
    (mul_le_mul_of_nonneg_right (T4 hg hγ hβ0 hβ0h hβ' hS1 hmn) (epow_pos _ _).le)

/-- (2.8) line 1 by the naive product of (2.6) line 1 and (2.7) line 1: the factor is
(1 + β₀)², not the printed (1 + β₀) (A11_CONST_VERIFY §8). -/
theorem eq28_line1_naive (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0) (hβ' : 0 ≤ β')
    (hS1 : γ ^ 2 * β' ≤ (1 + β0) ^ 2 - 1) {A0 p0 : ℝ} (hA0 : 0 ≤ A0) (hp0 : 0 < p0)
    (h2p : 2 * p0 ≤ ell γ)
    (h26 : ∀ m n : ℕ, m < n → g n ^ 2 ≤ (1 + g n ^ 2 * β' * (n - m)) * g m ^ 2)
    (h26b : ∀ m n : ℕ, m < n → g m ≤ (1 + β0) * g n) {m n : ℕ} (hmn : m < n) :
    eps A0 p0 (g n) ≤ (1 + β0) ^ 2 * √(n - m) * eps A0 p0 (g m) := by
  have h1 := (eq26_line1 hg hγ hβ0 hβ' hS1 h26 hmn).2
  have h2 := T2 hg hγ hβ0 hp0 h2p h26b hmn
  unfold eps
  calc g n * A0 * epow p0 (ell (g n))
      ≤ ((1 + β0) * √(n - m) * g m) * A0 * ((1 + β0) * epow p0 (ell (g m))) :=
        mul_le_mul (mul_le_mul_of_nonneg_right h1 hA0) h2 (epow_pos _ _).le
          (mul_nonneg ((hg n).le.trans h1) hA0)
    _ = _ := by ring

/-- (2.8) line 1 as printed: ε_n ≤ (1 + β₀)(n − m)^{1/2} ε_m, via the monotonicity of g ℓ^{p₀}
on (0, e^{−p₀}] (A11_CONST_VERIFY §8 fix). Uses only (2.6) line 1 (B10_SWEEP (i) row 9). -/
theorem eq28_line1 (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0) (hβ' : 0 ≤ β')
    (hS1 : γ ^ 2 * β' ≤ (1 + β0) ^ 2 - 1) {A0 p0 : ℝ} (hA0 : 0 ≤ A0) (hp0 : 0 < p0)
    (h2p : 2 * p0 ≤ ell γ)
    (h26 : ∀ m n : ℕ, m < n → g n ^ 2 ≤ (1 + g n ^ 2 * β' * (n - m)) * g m ^ 2)
    {m n : ℕ} (hmn : m < n) :
    eps A0 p0 (g n) ≤ (1 + β0) * √(n - m) * eps A0 p0 (g m) := by
  have hN := cast_sub_ge_one hmn
  have hfac : 1 ≤ (1 + β0) * √((n : ℝ) - m) := by
    have : 1 ≤ √((n : ℝ) - m) := Real.one_le_sqrt.mpr hN
    nlinarith
  have hm := ell_ge hγ hg h2p m
  have hn := ell_ge hγ hg h2p n
  have hexp : ∀ j, g j ≤ Real.exp (-p0) := fun j => by
    have := ell_ge hγ hg h2p j
    rw [ell_eq] at this
    exact (Real.log_le_iff_le_exp (hg j)).mp (by linarith)
  have hεm : 0 ≤ eps A0 p0 (g m) := by unfold eps; have := hg m; have := epow_pos p0 (ell (g m)); positivity
  rcases le_or_gt (g n) (g m) with hle | hlt
  · have := gLogPow_le hp0 (hg n) hle (hexp m)
    calc eps A0 p0 (g n) = A0 * (g n * epow p0 (ell (g n))) := by unfold eps; ring
      _ ≤ A0 * (g m * epow p0 (ell (g m))) := mul_le_mul_of_nonneg_left this hA0
      _ = 1 * eps A0 p0 (g m) := by unfold eps; ring
      _ ≤ _ := mul_le_mul_of_nonneg_right hfac hεm
  · have h1 := (eq26_line1 hg hγ hβ0 hβ' hS1 h26 hmn).2
    have h2 : epow p0 (ell (g n)) ≤ epow p0 (ell (g m)) :=
      epow_mono hp0.le (by linarith) (ell_anti (hg m) hlt.le)
    unfold eps
    calc g n * A0 * epow p0 (ell (g n))
        ≤ ((1 + β0) * √(n - m) * g m) * A0 * epow p0 (ell (g m)) :=
          mul_le_mul (mul_le_mul_of_nonneg_right h1 hA0) h2 (epow_pos _ _).le
            (mul_nonneg ((hg n).le.trans h1) hA0)
      _ = _ := by ring

/-- (2.8) line 2: ε_m ≤ (1 + β₀)(1 + X)^{β₀} ε_n ≤ (1 + β₀)²(n − m)^{β₀} ε_n. -/
theorem eq28_line2 (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0) (hβ0h : β0 ≤ 1 / 2)
    (hβ' : 0 ≤ β') (hS1 : γ ^ 2 * β' ≤ (1 + β0) ^ 2 - 1) {A0 p0 : ℝ} (hA0 : 0 ≤ A0)
    (hp0 : 0 < p0) (hpβ : p0 ≤ β0 * ell γ)
    (h26 : ∀ m n : ℕ, m < n → g n ^ 2 ≤ (1 + g n ^ 2 * β' * (n - m)) * g m ^ 2)
    (h26b : ∀ m n : ℕ, m < n → g m ≤ (1 + β0) * g n) {m n : ℕ} (hmn : m < n) :
    eps A0 p0 (g m) ≤ (1 + β0) * epow β0 (1 + g n ^ 2 * β' * (n - m)) * eps A0 p0 (g n) ∧
    eps A0 p0 (g m) ≤ (1 + β0) ^ 2 * epow β0 (n - m) * eps A0 p0 (g n) := by
  have h3 := T3 hg hγ hβ0 hβ' hp0 hpβ h26 hmn
  have h4 := T4 hg hγ hβ0 hβ0h hβ' hS1 hmn
  have hb := h26b m n hmn
  have hgn := (hg n).le
  have hE := (epow_pos p0 (ell (g n))).le
  have hEm := (epow_pos p0 (ell (g m))).le
  have first : eps A0 p0 (g m) ≤
      (1 + β0) * epow β0 (1 + g n ^ 2 * β' * (n - m)) * eps A0 p0 (g n) := by
    unfold eps
    calc g m * A0 * epow p0 (ell (g m))
        ≤ ((1 + β0) * g n) * A0 * (epow β0 (1 + g n ^ 2 * β' * (n - m)) *
            epow p0 (ell (g n))) := by gcongr
      _ = _ := by ring
  refine ⟨first, first.trans ?_⟩
  have hεn : 0 ≤ eps A0 p0 (g n) := by unfold eps; positivity
  calc (1 + β0) * epow β0 (1 + g n ^ 2 * β' * (n - m)) * eps A0 p0 (g n)
      ≤ (1 + β0) * ((1 + β0) * epow β0 (n - m)) * eps A0 p0 (g n) := by gcongr
    _ = _ := by ring

section R

variable {L r : ℝ} {R : ℕ → ℝ}

/-- (2.9) line 1: R_n ≤ L R_m, where R_j is the least integer power of L with
R_j ≥ (log g_j^{−2})^r ((2.5); "smallest power of L", CMP 119 p. 245). Needs 1 + β₀ ≤ L. -/
theorem eq29_line1 (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0) (hL : 1 + β0 ≤ L)
    (hr : 0 < r) (h2r : 2 * r ≤ ell γ) (h26b : ∀ m n : ℕ, m < n → g m ≤ (1 + β0) * g n)
    (hRpow : ∀ j, ∃ k : ℕ, R j = L ^ k) (hRge : ∀ j, epow r (ell (g j)) ≤ R j)
    (hRmin : ∀ j (k : ℕ), epow r (ell (g j)) ≤ L ^ k → R j ≤ L ^ k)
    {m n : ℕ} (hmn : m < n) : R n ≤ L * R m := by
  obtain ⟨k, hk⟩ := hRpow m
  have hRm : 0 ≤ R m := (epow_pos _ _).le.trans (hRge m)
  have := hRmin n (k + 1) (by
    calc epow r (ell (g n)) ≤ (1 + β0) * epow r (ell (g m)) := T2 hg hγ hβ0 hr h2r h26b hmn
      _ ≤ L * R m := mul_le_mul hL (hRge m) (epow_pos _ _).le (by linarith)
      _ = L ^ (k + 1) := by rw [hk, pow_succ, mul_comm])
  rw [hk, ← pow_succ']; exact this

/-- (2.9) line 2, first step: R_m ≤ L(1 + X)^{β₀} R_n. -/
theorem eq29_line2 (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0) (hβ' : 0 ≤ β')
    (hL : 1 < L) (hr : 0 < r) (hrβ : r ≤ β0 * ell γ)
    (h26 : ∀ m n : ℕ, m < n → g n ^ 2 ≤ (1 + g n ^ 2 * β' * (n - m)) * g m ^ 2)
    (hRpow : ∀ j, ∃ k : ℕ, R j = L ^ k) (hRge : ∀ j, epow r (ell (g j)) ≤ R j)
    (hRmin : ∀ j (k : ℕ), epow r (ell (g j)) ≤ L ^ k → R j ≤ L ^ k)
    {m n : ℕ} (hmn : m < n) :
    R m ≤ L * epow β0 (1 + g n ^ 2 * β' * (n - m)) * R n := by
  set c := epow β0 (1 + g n ^ 2 * β' * (n - m))
  have hN := cast_sub_ge_one hmn
  have hc : 1 ≤ c := one_le_epow hβ0 (by
    have : 0 ≤ g n ^ 2 * β' * (n - m) := mul_nonneg (by positivity) (by linarith)
    linarith)
  obtain ⟨s, hs1, hs2⟩ := exists_nat_pow_near hc hL
  obtain ⟨k, hk⟩ := hRpow n
  have hRn : 0 < R n := (epow_pos _ _).trans_le (hRge n)
  have := hRmin m (s + 1 + k) (by
    calc epow r (ell (g m)) ≤ c * epow r (ell (g n)) := T3 hg hγ hβ0 hβ' hr hrβ h26 hmn
      _ ≤ c * R n := mul_le_mul_of_nonneg_left (hRge n) (by linarith)
      _ ≤ L ^ (s + 1) * R n := mul_le_mul_of_nonneg_right hs2.le hRn.le
      _ = L ^ (s + 1 + k) := by rw [hk, ← pow_add])
  calc R m ≤ L ^ (s + 1 + k) := this
    _ = L * L ^ s * R n := by rw [hk, pow_add, pow_succ]; ring
    _ ≤ L * c * R n := by gcongr

/-- (2.9) line 2 in full: R_m ≤ (L + 1)(n − m)^{β₀} R_n. Extra side condition γ²β′ ≤ 1/L
(see module docstring: not printed; (T1) alone gives the factor L(1 + β₀)). -/
theorem eq29_line2_full (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0)
    (hβ0h : β0 ≤ 1 / 2) (hβ' : 0 ≤ β') (hL : 1 < L) (hγL : γ ^ 2 * β' ≤ 1 / L) (hr : 0 < r)
    (hrβ : r ≤ β0 * ell γ)
    (h26 : ∀ m n : ℕ, m < n → g n ^ 2 ≤ (1 + g n ^ 2 * β' * (n - m)) * g m ^ 2)
    (hRpow : ∀ j, ∃ k : ℕ, R j = L ^ k) (hRge : ∀ j, epow r (ell (g j)) ≤ R j)
    (hRmin : ∀ j (k : ℕ), epow r (ell (g j)) ≤ L ^ k → R j ≤ L ^ k)
    {m n : ℕ} (hmn : m < n) : R m ≤ (L + 1) * epow β0 (n - m) * R n := by
  have hN := cast_sub_ge_one hmn
  have ha : 0 ≤ g n ^ 2 * β' := mul_nonneg (sq_nonneg _) hβ'
  have haL : g n ^ 2 * β' ≤ 1 / L :=
    (mul_le_mul_of_nonneg_right (pow_le_pow_left₀ (hg n).le (hγ n) 2) hβ').trans hγL
  have hRn : 0 ≤ R n := (epow_pos _ _).le.trans (hRge n)
  have hc : epow β0 (1 + g n ^ 2 * β' * (n - m)) ≤ (1 + 1 / L) * epow β0 (n - m) :=
    calc epow β0 (1 + g n ^ 2 * β' * (n - m))
        ≤ epow β0 ((1 + g n ^ 2 * β') * (n - m)) :=
          epow_mono hβ0 (by nlinarith) (by nlinarith)
      _ = epow β0 (1 + g n ^ 2 * β') * epow β0 (n - m) := epow_mul (by linarith) (by linarith)
      _ ≤ (1 + 1 / L) * epow β0 (n - m) := by
          refine mul_le_mul_of_nonneg_right ?_ (epow_pos _ _).le
          exact (epow_le_self (by linarith) (by linarith)).trans (by linarith)
  calc R m ≤ L * epow β0 (1 + g n ^ 2 * β' * (n - m)) * R n :=
        eq29_line2 hg hγ hβ0 hβ' hL hr hrβ h26 hRpow hRge hRmin hmn
    _ ≤ L * ((1 + 1 / L) * epow β0 (n - m)) * R n := by gcongr
    _ = (L + 1) * epow β0 (n - m) * R n := by field_simp

/-- A11_CONST_VERIFY §8 rederivation 3: R_k ≤ L R_{k+1} (integer powers of L; needs
1 + β₀ < L). Used for H-258 (M₂ ≥ 1/δ) and the k₁ monotonicity (§10). -/
theorem R_step (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 ≤ β0) (hβ0h : β0 ≤ 1 / 2)
    (hβ' : 0 ≤ β') (hS1 : γ ^ 2 * β' ≤ (1 + β0) ^ 2 - 1) (hL : 1 + β0 < L) (hr : 0 < r)
    (hrβ : r ≤ β0 * ell γ)
    (h26 : ∀ m n : ℕ, m < n → g n ^ 2 ≤ (1 + g n ^ 2 * β' * (n - m)) * g m ^ 2)
    (hRpow : ∀ j, ∃ k : ℕ, R j = L ^ k) (hRge : ∀ j, epow r (ell (g j)) ≤ R j)
    (hRmin : ∀ j (k : ℕ), epow r (ell (g j)) ≤ L ^ k → R j ≤ L ^ k) (k : ℕ) :
    R k ≤ L * R (k + 1) := by
  have hL1 : 1 < L := by linarith
  have hlt := Nat.lt_succ_self k
  have h1 := eq29_line2 hg hγ hβ0 hβ' hL1 hr hrβ h26 hRpow hRge hRmin hlt
  have h4 := T4 hg hγ hβ0 hβ0h hβ' hS1 hlt
  have hone : epow β0 (((k + 1 : ℕ) : ℝ) - k) = 1 := by
    push_cast; rw [epow, show (k : ℝ) + 1 - k = 1 by ring, Real.log_one, mul_zero, Real.exp_zero]
  rw [hone, mul_one] at h4
  obtain ⟨a, ha⟩ := hRpow k
  obtain ⟨b, hb⟩ := hRpow (k + 1)
  have hRn : 0 < R (k + 1) := (epow_pos _ _).trans_le (hRge _)
  have hlt2 : L ^ a < L ^ (b + 2) := by
    rw [← ha, pow_add, ← hb]
    calc R k ≤ L * epow β0 (1 + g (k + 1) ^ 2 * β' * (((k + 1 : ℕ) : ℝ) - k)) * R (k + 1) := h1
      _ ≤ L * (1 + β0) * R (k + 1) := by gcongr
      _ < L * L * R (k + 1) := by gcongr
      _ = R (k + 1) * L ^ 2 := by ring
  have hab : a ≤ b + 1 := by
    have := (pow_lt_pow_iff_right₀ hL1).mp hlt2; omega
  rw [ha, hb, ← pow_succ']
  exact pow_le_pow_right₀ hL1.le hab

end R

/-- H-156 (P-up) ⇒ first step of (2.6) line 1: u_m ≤ u_n + β′(n − m) (u = g^{−2}) gives
g_n² ≤ (1 + g_n²β′(n − m)) g_m² (B10_SWEEP (i)). -/
theorem eq26_line1_of_Pup (hg : ∀ j, 0 < g j)
    (hPup : ∀ m n : ℕ, m ≤ n → 1 / g m ^ 2 ≤ 1 / g n ^ 2 + β' * (n - m))
    {m n : ℕ} (hmn : m < n) : g n ^ 2 ≤ (1 + g n ^ 2 * β' * (n - m)) * g m ^ 2 := by
  have hx : 0 < g m ^ 2 := by have := hg m; positivity
  have hy : 0 < g n ^ 2 := by have := hg n; positivity
  have h := hPup m n hmn.le
  have hx1 : g m ^ 2 * (1 / g m ^ 2) = 1 := mul_one_div_cancel hx.ne'
  have hy1 : g n ^ 2 * (1 / g n ^ 2) = 1 := mul_one_div_cancel hy.ne'
  calc g n ^ 2 = g m ^ 2 * g n ^ 2 * (1 / g m ^ 2) := by linear_combination (-(g n ^ 2)) * hx1
    _ ≤ g m ^ 2 * g n ^ 2 * (1 / g n ^ 2 + β' * (n - m)) :=
        mul_le_mul_of_nonneg_left h (by positivity)
    _ = _ := by linear_combination (g m ^ 2) * hy1

/-- H-155 (P-low) + K-018 (S) ⇒ (2.6) line 2: u_m ≥ u_n + β(n − m) − D′ and γ^{−2} ≥ c_sw D′ give
g_m ≤ (1 + β₀) g_n (B10_SWEEP (i): needs u_n ≥ D′/(1 − (1 + β₀)^{−2})). -/
theorem eq26_line2_of_Plow {β D' : ℝ} (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ) (hβ0 : 0 < β0)
    (hD : 0 ≤ D') (hβ : 0 ≤ β)
    (hPlow : ∀ m n : ℕ, m ≤ n → 1 / g n ^ 2 + β * (n - m) - D' ≤ 1 / g m ^ 2)
    (hS : cSw β0 * D' ≤ 1 / γ ^ 2) {m n : ℕ} (hmn : m ≤ n) : g m ≤ (1 + β0) * g n := by
  have hx : 0 < g m ^ 2 := by have := hg m; positivity
  have hy : 0 < g n ^ 2 := by have := hg n; positivity
  set q := ((1 + β0) ^ 2)⁻¹
  have hB : 1 < (1 + β0) ^ 2 := by nlinarith
  have hq0 : 0 < q := by positivity
  have hq1 : q < 1 := inv_lt_one_of_one_lt₀ hB
  have hqB : (1 + β0) ^ 2 * q = 1 := mul_inv_cancel₀ (by positivity)
  have hun : 1 / γ ^ 2 ≤ 1 / g n ^ 2 :=
    one_div_le_one_div_of_le hy (pow_le_pow_left₀ (hg n).le (hγ n) 2)
  have hD1 : D' ≤ (1 - q) * (1 / g n ^ 2) := by
    have h1 : 1 / (1 - q) * D' ≤ 1 / g n ^ 2 :=
      (mul_le_mul_of_nonneg_right (le_max_right _ _) hD).trans (hS.trans hun)
    rw [div_mul_eq_mul_div, one_mul, div_le_iff₀ (by linarith)] at h1; linarith
  have hm := hPlow m n hmn
  have hNm : (0 : ℝ) ≤ (n : ℝ) - m := by have : (m : ℝ) ≤ n := by exact_mod_cast hmn
                                         linarith
  -- u_n ≤ (1 + β₀)² u_m
  have key : 1 / g n ^ 2 ≤ (1 + β0) ^ 2 * (1 / g m ^ 2) := by
    have : q * (1 / g n ^ 2) ≤ 1 / g m ^ 2 := by nlinarith [mul_nonneg hβ hNm]
    calc 1 / g n ^ 2 = (1 + β0) ^ 2 * (q * (1 / g n ^ 2)) := by rw [← mul_assoc, hqB, one_mul]
      _ ≤ _ := mul_le_mul_of_nonneg_left this (by positivity)
  have h2 : g m ^ 2 ≤ ((1 + β0) * g n) ^ 2 := by
    rw [mul_pow]
    have hx1 : g m ^ 2 * (1 / g m ^ 2) = 1 := mul_one_div_cancel hx.ne'
    have hy1 : g n ^ 2 * (1 / g n ^ 2) = 1 := mul_one_div_cancel hy.ne'
    have e1 : g m ^ 2 = g m ^ 2 * g n ^ 2 * (1 / g n ^ 2) := by
      linear_combination (-(g m ^ 2)) * hy1
    have e2 : g m ^ 2 * g n ^ 2 * ((1 + β0) ^ 2 * (1 / g m ^ 2)) = (1 + β0) ^ 2 * g n ^ 2 := by
      linear_combination ((1 + β0) ^ 2 * g n ^ 2) * hx1
    rw [e1, ← e2]; exact mul_le_mul_of_nonneg_left key (by positivity)
  exact (pow_le_pow_iff_left₀ (hg m).le (by have := hg n; positivity) two_ne_zero).mp h2

/-- Telescoping: Σ_{t=0}^{N} (a + βt)^{−2} ≤ a^{−2} + (a^{−1} − (a + βN)^{−1})/β. -/
lemma sum_inv_sq_le {a β : ℝ} (ha : 0 < a) (hβ : 0 < β) (N : ℕ) :
    ∑ t ∈ range (N + 1), 1 / (a + β * t) ^ 2 ≤ 1 / a ^ 2 + (1 / a - 1 / (a + β * N)) / β := by
  induction N with
  | zero => simp
  | succ N ih =>
    rw [sum_range_succ]
    have hv : 0 < a + β * N := by positivity
    have hw : a + β * ((N + 1 : ℕ) : ℝ) = (a + β * N) + β := by push_cast; ring
    have step : 1 / (a + β * ((N + 1 : ℕ) : ℝ)) ^ 2 ≤
        (1 / (a + β * N) - 1 / (a + β * ((N + 1 : ℕ) : ℝ))) / β := by
      rw [hw]
      have e : (1 / (a + β * N) - 1 / (a + β * N + β)) / β = 1 / ((a + β * N) * (a + β * N + β)) := by
        field_simp; ring
      rw [e]
      exact one_div_le_one_div_of_le (by positivity) (by nlinarith)
    have e : (1 / a - 1 / (a + β * N)) / β + (1 / (a + β * N) - 1 / (a + β * ((N + 1 : ℕ) : ℝ))) / β
        = (1 / a - 1 / (a + β * ((N + 1 : ℕ) : ℝ))) / β := by ring
    linarith

/-- (2.46), explicit form: with H-155 (P-low) and γ^{−2} ≥ c_sw D′ (so u_n ≥ 2D′), for κ₀ ≥ 4 and
k = ⌊κ₀/2⌋, Σ_{j=1}^n g_j^{κ₀} ≤ (2g_n²)^k + (2g_n²)^{k−1}/β. -/
theorem eq246_explicit {β D' : ℝ} {κ0 n : ℕ} (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ)
    (hγ1 : γ ≤ 1) (hβ : 0 < β) (hD : 0 ≤ D') (hκ : 4 ≤ κ0)
    (hPlow : ∀ m n : ℕ, m ≤ n → 1 / g n ^ 2 + β * (n - m) - D' ≤ 1 / g m ^ 2)
    (hS : cSw β0 * D' ≤ 1 / γ ^ 2) :
    ∑ j ∈ Icc 1 n, g j ^ κ0 ≤ (2 * g n ^ 2) ^ (κ0 / 2) + (2 * g n ^ 2) ^ (κ0 / 2 - 1) / β := by
  set k := κ0 / 2 with hk
  have hk2 : 2 ≤ k := by omega
  have hy : 0 < g n ^ 2 := by have := hg n; positivity
  set a := 1 / (2 * g n ^ 2) with ha_def
  have ha : 0 < a := by positivity
  have hinva : 1 / a = 2 * g n ^ 2 := by rw [ha_def, one_div_one_div]
  have h2D : 2 * D' ≤ 1 / g n ^ 2 := by
    have h1 : 2 * D' ≤ cSw β0 * D' := mul_le_mul_of_nonneg_right (le_max_left _ _) hD
    exact h1.trans (hS.trans (one_div_le_one_div_of_le hy (pow_le_pow_left₀ (hg n).le (hγ n) 2)))
  have hau : 1 / g n ^ 2 = 2 * a := by rw [ha_def]; field_simp
  -- per-term bound
  set h : ℕ → ℝ := fun t => (1 / a) ^ (k - 2) * (1 / (a + β * t) ^ 2)
  have hterm : ∀ j ≤ n, g j ^ κ0 ≤ h (n - j) := by
    intro j hj
    have hgj : 0 < g j := hg j
    have hj2 : 0 < g j ^ 2 := by positivity
    have hcast : ((n - j : ℕ) : ℝ) = (n : ℝ) - j := Nat.cast_sub hj
    have hv : 0 < a + β * ((n - j : ℕ) : ℝ) := by positivity
    have hu : a + β * ((n - j : ℕ) : ℝ) ≤ 1 / g j ^ 2 := by
      have := hPlow j n hj; rw [hcast]; linarith
    have hgv : g j ^ 2 ≤ 1 / (a + β * ((n - j : ℕ) : ℝ)) := by
      have := one_div_le_one_div_of_le hv hu; rwa [one_div_one_div] at this
    have hva : 1 / (a + β * ((n - j : ℕ) : ℝ)) ≤ 1 / a :=
      one_div_le_one_div_of_le ha (by have : 0 ≤ β * ((n - j : ℕ) : ℝ) := by positivity
                                      linarith)
    have hle1 : g j ≤ 1 := (hγ j).trans hγ1
    calc g j ^ κ0 ≤ g j ^ (2 * k) := pow_le_pow_of_le_one hgj.le hle1 (Nat.mul_div_le κ0 2)
      _ = (g j ^ 2) ^ (k - 2) * (g j ^ 2) ^ 2 := by
          rw [← pow_mul, ← pow_mul, ← pow_add]; congr 1; omega
      _ ≤ (1 / a) ^ (k - 2) * (1 / (a + β * ((n - j : ℕ) : ℝ))) ^ 2 := by
          gcongr; exact hgv.trans hva
      _ = h (n - j) := by simp only [h, one_div_pow]
  have hh0 : ∀ t, 0 ≤ h t := fun t => by simp only [h]; positivity
  calc ∑ j ∈ Icc 1 n, g j ^ κ0 ≤ ∑ j ∈ range (n + 1), g j ^ κ0 := by
        refine sum_le_sum_of_subset_of_nonneg ?_ (fun j _ _ => by have := hg j; positivity)
        intro j hj; simp only [mem_Icc] at hj; simp only [mem_range]; omega
    _ ≤ ∑ j ∈ range (n + 1), h (n + 1 - 1 - j) := by
        refine sum_le_sum fun j hj => ?_
        simp only [mem_range] at hj
        simpa using hterm j (by omega)
    _ = ∑ t ∈ range (n + 1), h t := sum_range_reflect h (n + 1)
    _ = (1 / a) ^ (k - 2) * ∑ t ∈ range (n + 1), 1 / (a + β * t) ^ 2 := by
        rw [mul_sum]
    _ ≤ (1 / a) ^ (k - 2) * (1 / a ^ 2 + (1 / a) / β) := by
        refine mul_le_mul_of_nonneg_left ((sum_inv_sq_le ha hβ n).trans ?_) (by positivity)
        have : 0 ≤ 1 / (a + β * n) / β := by positivity
        rw [sub_div]; linarith
    _ = (1 / a) ^ k + (1 / a) ^ (k - 1) / β := by
        have e1 : (1 / a) ^ (k - 2) * (1 / a) ^ 2 = (1 / a) ^ k := by
          rw [← pow_add]; congr 1; omega
        have e2 : (1 / a) ^ (k - 2) * (1 / a) = (1 / a) ^ (k - 1) := by
          rw [← pow_succ]; congr 1; omega
        rw [mul_add, ← one_div_pow, e1, ← mul_div_assoc, e2]
    _ = _ := by rw [hinva]

/-- (2.46) as printed: Σ_{j=1}^n g_j^{κ₀} < g_n^{κ₀−6} for κ₀ ≥ 7, under H-155 (P-low), K-018 (S), and the
smallness 2^{⌊κ₀/2⌋}(1 + 1/β)γ³ < 1 (A11 §4, A11_CONST_VERIFY S8: an upper bound on γ after
β, κ₀). -/
theorem eq246 {β D' : ℝ} {κ0 n : ℕ} (hg : ∀ j, 0 < g j) (hγ : ∀ j, g j ≤ γ)
    (hγ1 : γ ≤ 1) (hβ : 0 < β) (hD : 0 ≤ D') (hκ : 7 ≤ κ0)
    (hPlow : ∀ m n : ℕ, m ≤ n → 1 / g n ^ 2 + β * (n - m) - D' ≤ 1 / g m ^ 2)
    (hS : cSw β0 * D' ≤ 1 / γ ^ 2) (hC : 2 ^ (κ0 / 2) * (1 + 1 / β) * γ ^ 3 < 1) :
    ∑ j ∈ Icc 1 n, g j ^ κ0 < g n ^ (κ0 - 6) := by
  have h := eq246_explicit (β0 := β0) (n := n) (κ0 := κ0) hg hγ hγ1 hβ hD (by omega) hPlow hS
  set k := κ0 / 2 with hk
  set x := g n with hx
  have hx0 : 0 < x := hg n
  have hx1 : x ≤ 1 := (hγ n).trans hγ1
  have hC' : 2 ^ k * (1 + 1 / β) * x ^ 3 < 1 :=
    lt_of_le_of_lt (by gcongr; exact hγ n) hC
  have hp : 0 < x ^ (κ0 - 6) := by positivity
  -- (2x²)^k + (2x²)^{k−1}/β ≤ 2^k(1 + 1/β) x^{2k−2} ≤ 2^k(1 + 1/β) x^{κ₀−3}
  have hb1 : (2 * x ^ 2) ^ k ≤ 2 ^ k * x ^ (2 * k - 2) := by
    rw [mul_pow, ← pow_mul]
    exact mul_le_mul_of_nonneg_left (pow_le_pow_of_le_one hx0.le hx1 (by omega)) (by positivity)
  have hb2 : (2 * x ^ 2) ^ (k - 1) / β ≤ 2 ^ k * (1 / β) * x ^ (2 * k - 2) := by
    rw [mul_pow, ← pow_mul, show 2 * (k - 1) = 2 * k - 2 by omega, div_eq_mul_one_div]
    have : (2 : ℝ) ^ (k - 1) ≤ 2 ^ k := pow_le_pow_right₀ (by norm_num) (by omega)
    have : 0 ≤ x ^ (2 * k - 2) := by positivity
    have : 0 ≤ 1 / β := by positivity
    calc (2 : ℝ) ^ (k - 1) * x ^ (2 * k - 2) * (1 / β)
        ≤ 2 ^ k * x ^ (2 * k - 2) * (1 / β) := by gcongr
      _ = _ := by ring
  have hb3 : x ^ (2 * k - 2) ≤ x ^ 3 * x ^ (κ0 - 6) := by
    rw [← pow_add]; exact pow_le_pow_of_le_one hx0.le hx1 (by omega)
  calc ∑ j ∈ Icc 1 n, g j ^ κ0 ≤ (2 * x ^ 2) ^ k + (2 * x ^ 2) ^ (k - 1) / β := h
    _ ≤ 2 ^ k * (1 + 1 / β) * x ^ (2 * k - 2) := by nlinarith
    _ ≤ 2 ^ k * (1 + 1 / β) * (x ^ 3 * x ^ (κ0 - 6)) := by gcongr
    _ = (2 ^ k * (1 + 1 / β) * x ^ 3) * x ^ (κ0 - 6) := by ring
    _ < 1 * x ^ (κ0 - 6) := by gcongr
    _ = _ := one_mul _

end YmLean.ScaleChain

#print axioms YmLean.ScaleChain.cSw_one_seventh
#print axioms YmLean.ScaleChain.T1
#print axioms YmLean.ScaleChain.T2
#print axioms YmLean.ScaleChain.T3
#print axioms YmLean.ScaleChain.T4
#print axioms YmLean.ScaleChain.eq26_line1
#print axioms YmLean.ScaleChain.eq27_line2
#print axioms YmLean.ScaleChain.eq28_line1_naive
#print axioms YmLean.ScaleChain.eq28_line1
#print axioms YmLean.ScaleChain.eq28_line2
#print axioms YmLean.ScaleChain.eq29_line1
#print axioms YmLean.ScaleChain.eq29_line2
#print axioms YmLean.ScaleChain.eq29_line2_full
#print axioms YmLean.ScaleChain.R_step
#print axioms YmLean.ScaleChain.eq26_line1_of_Pup
#print axioms YmLean.ScaleChain.eq26_line2_of_Plow
#print axioms YmLean.ScaleChain.eq246_explicit
#print axioms YmLean.ScaleChain.eq246
