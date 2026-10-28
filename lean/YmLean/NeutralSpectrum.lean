import Mathlib.Analysis.SpecialFunctions.Trigonometric.Basic
import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic.FinCases

/-!
# Neutral-sector spectrum on the 2D periodic lattice

Source: SOURCES_T2_MJ_REST.md §5.2 and §6 (neutral sector), checked numerically in
SOURCES_T2_MJ_REST_VERIFY.md §7 (task (f)). Claim there: on the `N × N` periodic lattice the
neutral (colour-3) block of the Wilson Hessian plus Feynman term at constant flux `φ` is
`d d* + cos φ · d* d` on 1-forms. Its spectrum is `⋃_K {l(K), cos φ · l(K)}` with
`l(K) = 4 sin²(K₀/2) + 4 sin²(K₁/2)`, `K ∈ (2π/N) ℤ_N²`; it has exactly two zero modes (the
constant 1-forms) and gap `cos φ · 4 sin²(π/N)`.

Sites are `ZMod N × ZMod N`; a 1-form is `v : Fin 2 → Site N → R` (`v μ x` lives on the link
`x → x + e μ`); a 2-form is a function on sites (plaquette with lower-left corner `x`).
`grad` = `d` on 0-forms, `codiff` = `d*` on 1-forms, `curl` = `d` on 1-forms, `cocurl` = `d*` on
2-forms; `hodge = d d* + d* d`, `neutral c = d d* + c · d* d` (`c = cos φ`).

Formalized:
* `grad_adjoint`, `cocurl_adjoint`: summation by parts on the torus.
* `neutral_form`, `neutral_symm`, `neutral_nonneg`, `hodge_symm`, `hodge_nonneg`: (1).
* `hodge_eq_lap`: the Hodge Laplacian acts on each component as the scalar lattice Laplacian.
* `hodge_ker`, `ker_hodgeL`, `finrank_ker_hodgeL`, `neutral_ker`: (2), kernel = constant 1-forms,
  dimension 2.
* `lap1_eigen`, `lam_eq_four_sin_sq`, `gap_le_lam`, `poincare1`: the 1D circulant Laplacian, its
  eigenvalues `4 sin²(πk/N)`, and the gap `4 sin²(π/N)` on mean-zero functions (discrete Fourier
  with `ZMod.stdAddChar`, Parseval proved here).
* `poincare2`, `hodge_gap`: (3), `⟨v, Δv⟩ ≥ 4 sin²(π/N) |v|²` for `v ⊥` constants.
* `neutral_gap`, `neutral_gap_cos`: (4), the gap times `cos φ`.
* `neutral_grad_pw`, `neutral_cocurl_pw`, `grad_pw_ne_zero`, `cocurl_pw_ne_zero`: for each
  `K ≠ 0`, `l(K)` (longitudinal) and `c · l(K)` (transverse) are eigenvalues with explicit
  nonzero eigenvectors.
Not formalized: completeness of the plane-wave eigenbasis (that these `2(N² − 1)` modes plus the
two constants exhaust the spectrum).
-/

open Finset
open scoped Real ComplexConjugate

namespace YmLean.NeutralSpectrum

variable {N : ℕ} [NeZero N] {R : Type*} [CommRing R]

/-- Sites of the periodic `N × N` lattice. -/
abbrev Site (N : ℕ) := ZMod N × ZMod N

/-- Unit vectors `e 0 = (1,0)`, `e 1 = (0,1)`. -/
def e (μ : Fin 2) : Site N := if μ = 0 then (1, 0) else (0, 1)

lemma sum_shift_add {M G : Type*} [AddCommMonoid M] [AddGroup G] [Fintype G]
    (f : G → M) (a : G) : ∑ x, f (x + a) = ∑ x, f x :=
  Fintype.sum_equiv (Equiv.addRight a) _ _ (fun _ => rfl)

/-- `d` on 0-forms. -/
def grad (g : Site N → R) : Fin 2 → Site N → R := fun μ x => g (x + e μ) - g x

/-- `d*` on 1-forms (adjoint of `grad`). -/
def codiff (v : Fin 2 → Site N → R) : Site N → R := fun x => ∑ μ, (v μ (x - e μ) - v μ x)

/-- `d` on 1-forms: the plaquette curl. -/
def curl (v : Fin 2 → Site N → R) : Site N → R :=
  fun x => v 0 x + v 1 (x + e 0) - v 0 (x + e 1) - v 1 x

/-- `d*` on 2-forms (adjoint of `curl`). -/
def cocurl (F : Site N → R) : Fin 2 → Site N → R :=
  fun μ x => if μ = 0 then F x - F (x - e 1) else F (x - e 0) - F x

/-- The Hodge (Maxwell) Laplacian `d d* + d* d` on 1-forms. -/
def hodge (v : Fin 2 → Site N → R) : Fin 2 → Site N → R :=
  fun μ x => grad (codiff v) μ x + cocurl (curl v) μ x

/-- The neutral block `d d* + c · d* d` (`c = cos φ`, SOURCES_T2_MJ_REST.md §5.2). -/
def neutral (c : R) (v : Fin 2 → Site N → R) : Fin 2 → Site N → R :=
  fun μ x => grad (codiff v) μ x + c * cocurl (curl v) μ x

/-- Scalar lattice Laplacian (positive sign). -/
def lap (g : Site N → R) : Site N → R := fun x => ∑ μ, (2 * g x - g (x + e μ) - g (x - e μ))

omit [NeZero N] in
lemma hodge_eq_neutral_one (v : Fin 2 → Site N → R) : hodge v = neutral 1 v := by
  funext μ x; simp [hodge, neutral]

theorem grad_adjoint (v : Fin 2 → Site N → R) (g : Site N → R) :
    ∑ μ, ∑ x, v μ x * grad g μ x = ∑ x, codiff v x * g x := by
  simp only [codiff, Finset.sum_mul]
  conv_rhs => rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun μ _ => ?_
  have h : ∑ x, v μ x * g (x + e μ) = ∑ x, v μ (x - e μ) * g x := by
    have := sum_shift_add (fun x => v μ (x - e μ) * g x) (e μ)
    simp only [add_sub_cancel_right] at this
    exact this
  simp only [grad, mul_sub, sub_mul, Finset.sum_sub_distrib, h]

theorem cocurl_adjoint (v : Fin 2 → Site N → R) (F : Site N → R) :
    ∑ μ, ∑ x, v μ x * cocurl F μ x = ∑ x, curl v x * F x := by
  have h1 : ∑ x, v 0 x * F (x - e 1) = ∑ x, v 0 (x + e 1) * F x := by
    have := sum_shift_add (fun x => v 0 x * F (x - e 1)) (e 1)
    simp only [add_sub_cancel_right] at this
    exact this.symm
  have h2 : ∑ x, v 1 x * F (x - e 0) = ∑ x, v 1 (x + e 0) * F x := by
    have := sum_shift_add (fun x => v 1 x * F (x - e 0)) (e 0)
    simp only [add_sub_cancel_right] at this
    exact this.symm
  simp only [Fin.sum_univ_two, cocurl, curl, ↓reduceIte, Fin.one_eq_zero_iff,
    OfNat.ofNat_ne_one, mul_sub, sub_mul, add_mul, Finset.sum_sub_distrib,
    Finset.sum_add_distrib, h1, h2]
  ring

/-- `⟨u, (d d* + c d* d) v⟩ = ⟨d* u, d* v⟩ + c ⟨d u, d v⟩`. -/
theorem neutral_form (c : R) (u v : Fin 2 → Site N → R) :
    ∑ μ, ∑ x, u μ x * neutral c v μ x =
      ∑ x, codiff u x * codiff v x + c * ∑ x, curl u x * curl v x := by
  simp only [neutral, mul_add, Finset.sum_add_distrib, mul_left_comm _ c, ← Finset.mul_sum,
    grad_adjoint, cocurl_adjoint]

theorem neutral_symm (c : R) (u v : Fin 2 → Site N → R) :
    ∑ μ, ∑ x, u μ x * neutral c v μ x = ∑ μ, ∑ x, neutral c u μ x * v μ x := by
  simp only [mul_comm (neutral c u _ _), neutral_form]
  simp only [mul_comm (codiff u _), mul_comm (curl u _)]

theorem neutral_nonneg {c : ℝ} (hc : 0 ≤ c) (v : Fin 2 → Site N → ℝ) :
    0 ≤ ∑ μ, ∑ x, v μ x * neutral c v μ x := by
  rw [neutral_form]
  exact add_nonneg (sum_nonneg fun _ _ => mul_self_nonneg _)
    (mul_nonneg hc (sum_nonneg fun _ _ => mul_self_nonneg _))

theorem hodge_symm (u v : Fin 2 → Site N → R) :
    ∑ μ, ∑ x, u μ x * hodge v μ x = ∑ μ, ∑ x, hodge u μ x * v μ x := by
  simp only [hodge_eq_neutral_one, neutral_symm]

theorem hodge_nonneg (v : Fin 2 → Site N → ℝ) : 0 ≤ ∑ μ, ∑ x, v μ x * hodge v μ x := by
  simpa [hodge_eq_neutral_one] using neutral_nonneg zero_le_one v

omit [NeZero N] in
/-- The Hodge Laplacian is the scalar Laplacian on each component. -/
theorem hodge_eq_lap (v : Fin 2 → Site N → R) (μ : Fin 2) : hodge v μ = lap (v μ) := by
  funext x
  fin_cases μ <;>
    simp [hodge, grad, codiff, curl, cocurl, lap, Fin.sum_univ_two, sub_add_eq_add_sub] <;> ring

/-! ### (2) Kernel: exactly the constant 1-forms -/

omit [NeZero N] in
lemma shift_form [Fintype (ZMod N)] (g : Site N → R) (a : Site N) :
    ∑ x, g x * (2 * g x - g (x + a) - g (x - a)) = ∑ x, (g (x + a) - g x) ^ 2 := by
  have h1 : ∑ x, g x * g (x - a) = ∑ x, g (x + a) * g x := by
    have := sum_shift_add (fun x => g x * g (x - a)) a
    simp only [add_sub_cancel_right] at this
    exact this.symm
  have h2 : ∑ x, g (x + a) ^ 2 = ∑ x, g x ^ 2 := sum_shift_add (fun x => g x ^ 2) a
  have l : ∀ x, g x * (2 * g x - g (x + a) - g (x - a)) =
      2 * g x ^ 2 - g (x + a) * g x - g x * g (x - a) := fun x => by ring
  have r : ∀ x, (g (x + a) - g x) ^ 2 = g (x + a) ^ 2 - 2 * (g (x + a) * g x) + g x ^ 2 :=
    fun x => by ring
  simp only [l, r, sum_sub_distrib, sum_add_distrib, ← mul_sum, h1, h2]
  ring

/-- `⟨g, lap g⟩ = Σ_ν Σ_x (g(x + e_ν) − g(x))²`. -/
theorem lap_form (g : Site N → R) :
    ∑ x, g x * lap g x = ∑ ν, ∑ x, (g (x + e ν) - g x) ^ 2 := by
  simp only [lap, mul_sum]
  rw [sum_comm]
  exact sum_congr rfl fun ν _ => shift_form g (e ν)

theorem hodge_form_lap (v : Fin 2 → Site N → R) :
    ∑ μ, ∑ x, v μ x * hodge v μ x = ∑ μ, ∑ ν, ∑ x, (v μ (x + e ν) - v μ x) ^ 2 := by
  simp only [hodge_eq_lap, lap_form]

/-- A function invariant under both unit shifts is constant on the torus. -/
lemma const_of_shift_inv (g : Site N → ℝ) (h : ∀ ν x, g (x + e ν) = g x) (x : Site N) :
    g x = g 0 := by
  have hn : ∀ ν (n : ℕ) y, g (y + n • e ν) = g y := by
    intro ν n
    induction n with
    | zero => simp
    | succ n ih => intro y; rw [succ_nsmul, ← add_assoc, h, ih]
  have hx : x = (0 + x.1.val • e 0) + x.2.val • e 1 := by
    ext <;> simp [e]
  rw [hx, hn, hn]

theorem const_of_form_zero (v : Fin 2 → Site N → ℝ)
    (h : ∑ μ, ∑ x, v μ x * hodge v μ x = 0) (μ : Fin 2) (x : Site N) : v μ x = v μ 0 := by
  rw [hodge_form_lap] at h
  refine const_of_shift_inv (v μ) (fun ν y => ?_) x
  have h1 := (sum_eq_zero_iff_of_nonneg (fun _ _ => sum_nonneg fun _ _ =>
    sum_nonneg fun _ _ => sq_nonneg _)).1 h μ (mem_univ _)
  have h2 := (sum_eq_zero_iff_of_nonneg (fun _ _ => sum_nonneg fun _ _ => sq_nonneg _)).1
    h1 ν (mem_univ _)
  have h3 := (sum_eq_zero_iff_of_nonneg (fun _ _ => sq_nonneg _)).1 h2 y (mem_univ _)
  exact sub_eq_zero.1 (pow_eq_zero_iff two_ne_zero |>.1 h3)

/-- (2) `Δ v = 0` iff `v` is a constant 1-form. -/
theorem hodge_ker (v : Fin 2 → Site N → ℝ) :
    hodge v = 0 ↔ ∃ c : Fin 2 → ℝ, ∀ μ x, v μ x = c μ := by
  constructor
  · intro h
    exact ⟨fun μ => v μ 0, const_of_form_zero v (by simp [h])⟩
  · rintro ⟨c, hc⟩
    funext μ x
    rw [hodge_eq_lap]
    simp only [lap, hc, Pi.zero_apply]
    exact sum_eq_zero fun _ _ => by ring

/-- `hodge` as a linear map on real 1-forms. -/
noncomputable def hodgeL : (Fin 2 → Site N → ℝ) →ₗ[ℝ] (Fin 2 → Site N → ℝ) where
  toFun := hodge
  map_add' u v := by
    funext μ x
    simp only [hodge_eq_lap, lap, Pi.add_apply, ← sum_add_distrib]
    exact sum_congr rfl fun _ _ => by ring
  map_smul' a v := by
    funext μ x
    simp only [hodge_eq_lap, lap, Pi.smul_apply, smul_eq_mul, RingHom.id_apply, mul_sum]
    exact sum_congr rfl fun _ _ => by ring

/-- Constant 1-forms. -/
def constL : (Fin 2 → ℝ) →ₗ[ℝ] (Fin 2 → Site N → ℝ) where
  toFun c := fun μ _ => c μ
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

theorem ker_hodgeL : LinearMap.ker (hodgeL (N := N)) = LinearMap.range (constL (N := N)) := by
  ext v
  rw [LinearMap.mem_ker, LinearMap.mem_range]
  change hodge v = 0 ↔ _
  rw [hodge_ker]
  constructor
  · rintro ⟨c, hc⟩; exact ⟨c, funext fun μ => funext fun x => (hc μ x).symm⟩
  · rintro ⟨c, rfl⟩; exact ⟨c, fun _ _ => rfl⟩

/-- (2) The kernel has dimension 2. -/
theorem finrank_ker_hodgeL : Module.finrank ℝ (LinearMap.ker (hodgeL (N := N))) = 2 := by
  rw [ker_hodgeL, LinearMap.finrank_range_of_inj, Module.finrank_fin_fun]
  intro c c' h
  funext μ
  exact congrFun (congrFun h μ) 0

/-! ### 1D circulant Laplacian, discrete Fourier analysis on `ZMod N` -/

/-- `ω = exp(2πi/N)`. -/
noncomputable def ω (N : ℕ) : ℂ := Complex.exp (2 * π * Complex.I / N)

/-- The character `k ↦ ω^k` of `ZMod N`. -/
noncomputable def ch (k : ZMod N) : ℂ := ω N ^ k.val

lemma ω_pow_N : ω N ^ N = 1 := by
  have hN : (N : ℂ) ≠ 0 := Nat.cast_ne_zero.2 (NeZero.ne N)
  have : (N : ℂ) * (2 * π * Complex.I / N) = 2 * π * Complex.I := by field_simp
  rw [ω, ← Complex.exp_nat_mul, this, Complex.exp_two_pi_mul_I]

lemma ω_pow_mod (n : ℕ) : ω N ^ (n % N) = ω N ^ n := by
  conv_rhs => rw [← Nat.mod_add_div n N, pow_add, pow_mul, ω_pow_N, one_pow, mul_one]

lemma ch_add (a b : ZMod N) : ch (a + b) = ch a * ch b := by
  rw [ch, ch, ch, ZMod.val_add, ω_pow_mod, pow_add]

omit [NeZero N] in
lemma ch_zero : ch (0 : ZMod N) = 1 := by simp [ch]

lemma ch_neg_mul (a : ZMod N) : ch (-a) * ch a = 1 := by
  rw [← ch_add, neg_add_cancel, ch_zero]

omit [NeZero N] in
lemma ch_eq_exp (k : ZMod N) : ch k = Complex.exp (↑(2 * π * k.val / N) * Complex.I) := by
  rw [ch, ω, ← Complex.exp_nat_mul]; congr 1; push_cast; ring

omit [NeZero N] in
lemma ch_norm (k : ZMod N) : ‖ch k‖ = 1 := by
  rw [ch_eq_exp, Complex.norm_exp_ofReal_mul_I]

omit [NeZero N] in
lemma ch_re (k : ZMod N) : (ch k).re = Real.cos (2 * π * k.val / N) := by
  rw [ch_eq_exp, Complex.exp_ofReal_mul_I_re]

lemma ch_conj (a : ZMod N) : conj (ch a) = ch (-a) := by
  have h1 : conj (ch a) * ch a = 1 := by
    rw [mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq, ch_norm]; simp
  have hne : ch a ≠ 0 := fun h => by simpa [h] using ch_norm a
  exact mul_right_cancel₀ hne (h1.trans (ch_neg_mul a).symm)

/-- Eigenvalue `2 − 2 cos(2πk/N)` of the 1D circulant Laplacian. -/
noncomputable def lam (k : ZMod N) : ℝ := 2 - 2 * Real.cos (2 * π * k.val / N)

/-- The gap `2 − 2 cos(2π/N)`. -/
noncomputable def gap (N : ℕ) : ℝ := 2 - 2 * Real.cos (2 * π / N)

lemma two_sub_two_cos (t : ℝ) : 2 - 2 * Real.cos (2 * t) = 4 * Real.sin t ^ 2 := by
  rw [Real.cos_two_mul, Real.cos_sq']; ring

omit [NeZero N] in
theorem lam_eq_four_sin_sq (k : ZMod N) : lam k = 4 * Real.sin (π * k.val / N) ^ 2 := by
  rw [lam, show 2 * π * k.val / N = 2 * (π * k.val / N) by ring, two_sub_two_cos]

omit [NeZero N] in
theorem gap_eq_four_sin_sq : gap N = 4 * Real.sin (π / N) ^ 2 := by
  rw [gap, show 2 * π / N = 2 * (π / N) by ring, two_sub_two_cos]

lemma cos_le_of_le_half (w : ℕ) (h1 : 1 ≤ w) (h2 : 2 * w ≤ N) :
    Real.cos (2 * π * w / N) ≤ Real.cos (2 * π / N) := by
  have hN : (0 : ℝ) < N := by exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne N)
  have hw1 : (1 : ℝ) ≤ w := by exact_mod_cast h1
  have hw2 : (2 * w : ℝ) ≤ N := by exact_mod_cast h2
  apply Real.cos_le_cos_of_nonneg_of_le_pi (by positivity)
  · rw [div_le_iff₀ hN]; nlinarith [Real.pi_pos]
  · exact div_le_div_of_nonneg_right (by nlinarith [Real.pi_pos]) hN.le

lemma cos_le_cos_gap {k : ZMod N} (hk : k ≠ 0) :
    Real.cos (2 * π * k.val / N) ≤ Real.cos (2 * π / N) := by
  have hv0 : k.val ≠ 0 := by rwa [Ne, ZMod.val_eq_zero]
  have hvN := ZMod.val_lt k
  rcases le_or_gt (2 * k.val) N with h | h
  · exact cos_le_of_le_half _ (Nat.one_le_iff_ne_zero.2 hv0) h
  · have hN : (N : ℝ) ≠ 0 := Nat.cast_ne_zero.2 (NeZero.ne N)
    have hc : Real.cos (2 * π * k.val / N) = Real.cos (2 * π * ↑(N - k.val) / N) := by
      rw [Nat.cast_sub hvN.le, ← Real.cos_two_pi_sub]; congr 1; field_simp
    rw [hc]; exact cos_le_of_le_half _ (by omega) (by omega)

/-- Every nonzero mode lies at or above the gap: `4 sin²(π/N) ≤ 4 sin²(πk/N)`. -/
theorem gap_le_lam {k : ZMod N} (hk : k ≠ 0) : gap N ≤ lam k := by
  have := cos_le_cos_gap hk
  simp only [gap, lam]; linarith

lemma cos_gap_lt_one {k : ZMod N} (hk : k ≠ 0) : Real.cos (2 * π / N) < 1 := by
  have h1 := ZMod.val_lt k
  have h0 : k.val ≠ 0 := by rwa [Ne, ZMod.val_eq_zero]
  have hN : (2 : ℝ) ≤ N := by exact_mod_cast (by omega : 2 ≤ N)
  have hNpos : (0 : ℝ) < N := by linarith
  rw [← Real.cos_zero]
  apply Real.cos_lt_cos_of_nonneg_of_le_pi le_rfl
  · rw [div_le_iff₀ hNpos]; nlinarith [Real.pi_pos]
  · positivity

lemma ch_ne_one {k : ZMod N} (hk : k ≠ 0) : ch k ≠ 1 := by
  intro h
  have := congrArg Complex.re h
  rw [ch_re, Complex.one_re] at this
  linarith [cos_le_cos_gap hk, cos_gap_lt_one hk]

lemma ch_add_ch_neg (k : ZMod N) :
    ch k + ch (-k) = ((2 * Real.cos (2 * π * k.val / N) : ℝ) : ℂ) := by
  rw [← ch_conj, Complex.add_conj, ch_re]

lemma lam_cast (k : ZMod N) : (lam k : ℂ) = 2 - (ch k + ch (-k)) := by
  rw [ch_add_ch_neg, lam]; push_cast; ring

/-- 1D circulant Laplacian `(L g)(x) = 2 g(x) − g(x+1) − g(x−1)` on `ZMod N`. -/
def lap1 (g : ZMod N → R) (x : ZMod N) : R := 2 * g x - g (x + 1) - g (x - 1)

/-- The characters are eigenvectors of the 1D circulant Laplacian with eigenvalue
`lam k = 4 sin²(πk/N)`. -/
theorem lap1_eigen (k : ZMod N) :
    lap1 (fun x => ch (k * x)) = fun x => (lam k : ℂ) * ch (k * x) := by
  funext x
  simp only [lap1, mul_add, mul_one, sub_eq_add_neg, mul_neg, ch_add, lam_cast]
  ring

/-- Discrete Fourier transform of a real function on `ZMod N`. -/
noncomputable def dft (g : ZMod N → ℝ) (k : ZMod N) : ℂ := ∑ x, ch (-(k * x)) * g x

lemma sum_ch (b : ZMod N) : ∑ k, ch (k * b) = if b = 0 then (N : ℂ) else 0 := by
  split_ifs with hb
  · simp [hb, ch_zero, ZMod.card]
  · have hs : ch b * ∑ k, ch (k * b) = ∑ k, ch (k * b) := by
      rw [mul_sum, ← sum_shift_add (fun k => ch (k * b)) 1]
      refine sum_congr rfl fun k _ => ?_
      rw [add_mul, one_mul, ch_add, mul_comm]
    have : (ch b - 1) * ∑ k, ch (k * b) = 0 := by rw [sub_mul, hs, one_mul, sub_self]
    exact (mul_eq_zero.1 this).resolve_left (sub_ne_zero.2 (ch_ne_one hb))

lemma dft_conj (g : ZMod N → ℝ) (k : ZMod N) : conj (dft g k) = ∑ x, ch (k * x) * g x := by
  simp [dft, map_sum, ch_conj]

/-- Parseval: `Σ_k |ĝ(k)|² = N Σ_x g(x)²`. -/
theorem parseval (g : ZMod N → ℝ) :
    ∑ k, Complex.normSq (dft g k) = N * ∑ x, g x ^ 2 := by
  have key : ∑ k, dft g k * conj (dft g k) = N * ∑ x, (g x : ℂ) ^ 2 := by
    have hm : ∀ k x y, ch (-(k * x)) * (g x : ℂ) * (ch (k * y) * g y) =
        ch (k * (y - x)) * (g x * g y) := by
      intro k x y; rw [mul_sub, sub_eq_add_neg, add_comm, ch_add]; ring
    simp only [dft_conj]
    simp only [dft, sum_mul_sum, hm]
    rw [sum_comm]
    rw [sum_congr rfl fun x _ => sum_comm]
    simp only [← sum_mul, sum_ch, sub_eq_zero, ite_mul, zero_mul, sum_ite_eq', mem_univ,
      if_true, mul_sum]
    exact sum_congr rfl fun x _ => by ring
  have : ((∑ k, Complex.normSq (dft g k) : ℝ) : ℂ) = ((N * ∑ x, g x ^ 2 : ℝ) : ℂ) := by
    push_cast; rw [← key]; simp [Complex.mul_conj]
  exact_mod_cast this

lemma dft_shift (g : ZMod N → ℝ) (k : ZMod N) :
    dft (fun x => g (x + 1) - g x) k = (ch k - 1) * dft g k := by
  have h : ∑ x, ch (-(k * x)) * (g (x + 1) : ℂ) = ch k * dft g k := by
    have := sum_shift_add (fun x => ch (-(k * (x - 1))) * (g x : ℂ)) 1
    simp only [add_sub_cancel_right] at this
    rw [this, dft, mul_sum]
    refine sum_congr rfl fun x _ => ?_
    rw [show -(k * (x - 1)) = k + -(k * x) by ring, ch_add]; ring
  simp only [dft, Complex.ofReal_sub, mul_sub, sum_sub_distrib] at h ⊢
  rw [h]; ring

lemma dft_zero (g : ZMod N → ℝ) : dft g 0 = ((∑ x, g x : ℝ) : ℂ) := by
  simp [dft, ch_zero]

lemma normSq_ch_sub_one (k : ZMod N) : Complex.normSq (ch k - 1) = lam k := by
  rw [Complex.normSq_sub, Complex.normSq_eq_norm_sq, ch_norm]
  simp [ch_re, lam]; ring

/-- Discrete Poincaré inequality on `ZMod N`: for `Σ g = 0`,
`4 sin²(π/N) Σ g² ≤ Σ (g(x+1) − g(x))²`. -/
theorem poincare1 (g : ZMod N → ℝ) (h0 : ∑ x, g x = 0) :
    gap N * ∑ x, g x ^ 2 ≤ ∑ x, (g (x + 1) - g x) ^ 2 := by
  have hN : (0 : ℝ) < N := by exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne N)
  have hP := parseval (fun x => g (x + 1) - g x)
  simp only [dft_shift, Complex.normSq_mul, normSq_ch_sub_one] at hP
  have hterm : ∀ k, gap N * Complex.normSq (dft g k) ≤ lam k * Complex.normSq (dft g k) := by
    intro k
    by_cases hk : k = 0
    · subst hk; simp [dft_zero, h0]
    · exact mul_le_mul_of_nonneg_right (gap_le_lam hk) (Complex.normSq_nonneg _)
  have := sum_le_sum fun k (_ : k ∈ univ) => hterm k
  rw [← mul_sum, parseval, hP, mul_left_comm] at this
  exact le_of_mul_le_mul_left this hN

/-! ### (3) The spectral gap on the 2D torus -/

/-- 2D discrete Poincaré inequality: for `Σ g = 0`,
`4 sin²(π/N) Σ g² ≤ Σ_ν Σ_x (g(x + e_ν) − g(x))²`. Proof: split `g` into row means `m` and the
remainder; 1D Poincaré on each row and on `m`, Cauchy–Schwarz for the column energy of `m`. -/
theorem poincare2 (g : Site N → ℝ) (h0 : ∑ x, g x = 0) :
    gap N * ∑ x, g x ^ 2 ≤ ∑ ν, ∑ x, (g (x + e ν) - g x) ^ 2 := by
  have hN : (0 : ℝ) < N := by exact_mod_cast Nat.pos_of_ne_zero (NeZero.ne N)
  set m : ZMod N → ℝ := fun b => (∑ a, g (a, b)) / N with hm
  have hsum_m : ∀ b, ∑ a, g (a, b) = N * m b := by
    intro b; simp only [m]; field_simp
  have hrow : ∀ b, gap N * ∑ a, (g (a, b) - m b) ^ 2 ≤ ∑ a, (g (a + 1, b) - g (a, b)) ^ 2 := by
    intro b
    have := poincare1 (fun a => g (a, b) - m b)
      (by simp [sum_sub_distrib, hsum_m, ZMod.card])
    simpa using this
  have hcol : ∀ b, N * (m (b + 1) - m b) ^ 2 ≤ ∑ a, (g (a, b + 1) - g (a, b)) ^ 2 := by
    intro b
    have hcs := sum_mul_sq_le_sq_mul_sq univ (fun _ => (1 : ℝ))
      (fun a => g (a, b + 1) - g (a, b))
    have hd : ∑ a, (1 : ℝ) * (g (a, b + 1) - g (a, b)) = N * (m (b + 1) - m b) := by
      simp only [one_mul, sum_sub_distrib, hsum_m]; ring
    simp only [hd, one_pow, sum_const, card_univ, ZMod.card, nsmul_eq_mul, mul_one] at hcs
    have : N * (N * (m (b + 1) - m b) ^ 2) ≤ N * ∑ a, (g (a, b + 1) - g (a, b)) ^ 2 := by
      nlinarith [hcs]
    exact le_of_mul_le_mul_left this hN
  have hg : ∑ b, ∑ a, g (a, b) = ∑ x, g x := by rw [sum_comm, Fintype.sum_prod_type]
  have hm0 : ∑ b, m b = 0 := by
    have : (N : ℝ) * ∑ b, m b = 0 := by simp only [mul_sum, ← hsum_m]; rw [hg, h0]
    exact (mul_eq_zero.1 this).resolve_left hN.ne'
  have hmP := poincare1 m hm0
  have hb : ∀ b, ∑ a, g (a, b) ^ 2 = ∑ a, (g (a, b) - m b) ^ 2 + N * m b ^ 2 := by
    intro b
    have : ∑ a, (g (a, b) - m b) ^ 2 = ∑ a, (g (a, b) ^ 2 - 2 * m b * g (a, b) + m b ^ 2) :=
      sum_congr rfl fun _ _ => by ring
    rw [this, sum_add_distrib, sum_sub_distrib, ← mul_sum, hsum_m, sum_const, card_univ,
      ZMod.card, nsmul_eq_mul]
    ring
  have hL : ∑ x, g x ^ 2 = ∑ b, ∑ a, (g (a, b) - m b) ^ 2 + N * ∑ b, m b ^ 2 := by
    rw [Fintype.sum_prod_type, sum_comm, mul_sum, ← sum_add_distrib]
    exact sum_congr rfl fun b _ => hb b
  have hE : ∑ ν, ∑ x, (g (x + e ν) - g x) ^ 2 =
      ∑ b, ∑ a, (g (a + 1, b) - g (a, b)) ^ 2 + ∑ b, ∑ a, (g (a, b + 1) - g (a, b)) ^ 2 := by
    simp only [Fin.sum_univ_two, Fintype.sum_prod_type, e]
    simp only [↓reduceIte, Fin.one_eq_zero_iff, OfNat.ofNat_ne_one, Prod.mk_add_mk, add_zero]
    rw [sum_comm]
    congr 1
    exact sum_comm
  have s1 := sum_le_sum fun b (_ : b ∈ univ) => hrow b
  have s2 := sum_le_sum fun b (_ : b ∈ univ) => hcol b
  rw [← mul_sum] at s1 s2
  rw [hL, hE]
  nlinarith [mul_le_mul_of_nonneg_left hmP hN.le]

/-- (3) Spectral gap of the Hodge Laplacian: for `v ⊥` constants (`Σ_x v_μ(x) = 0` for each
`μ`), `⟨v, Δ v⟩ ≥ 4 sin²(π/N) |v|²`. -/
theorem hodge_gap (v : Fin 2 → Site N → ℝ) (h : ∀ μ, ∑ x, v μ x = 0) :
    gap N * ∑ μ, ∑ x, v μ x ^ 2 ≤ ∑ μ, ∑ x, v μ x * hodge v μ x := by
  rw [mul_sum]
  refine sum_le_sum fun μ _ => ?_
  rw [hodge_eq_lap, lap_form]
  exact poincare2 (v μ) (h μ)

/-! ### (4) The neutral block `d d* + cos φ · d* d` -/

theorem neutral_ge {c : ℝ} (hc1 : c ≤ 1) (v : Fin 2 → Site N → ℝ) :
    c * ∑ μ, ∑ x, v μ x * hodge v μ x ≤ ∑ μ, ∑ x, v μ x * neutral c v μ x := by
  simp only [hodge_eq_neutral_one, neutral_form]
  have hD : 0 ≤ ∑ x, codiff v x * codiff v x := sum_nonneg fun _ _ => mul_self_nonneg _
  nlinarith [mul_le_mul_of_nonneg_right hc1 hD]

/-- (4) Gap of the neutral block: `⟨v, (d d* + c d* d) v⟩ ≥ c · 4 sin²(π/N) |v|²` for
`v ⊥` constants and `0 ≤ c ≤ 1`. -/
theorem neutral_gap {c : ℝ} (hc0 : 0 ≤ c) (hc1 : c ≤ 1) (v : Fin 2 → Site N → ℝ)
    (h : ∀ μ, ∑ x, v μ x = 0) :
    c * gap N * ∑ μ, ∑ x, v μ x ^ 2 ≤ ∑ μ, ∑ x, v μ x * neutral c v μ x := by
  rw [mul_assoc]
  exact (mul_le_mul_of_nonneg_left (hodge_gap v h) hc0).trans (neutral_ge hc1 v)

/-- (4) with `c = cos φ`: gap `cos φ · 4 sin²(π/N)`. -/
theorem neutral_gap_cos (φ : ℝ) (hφ : 0 ≤ Real.cos φ) (v : Fin 2 → Site N → ℝ)
    (h : ∀ μ, ∑ x, v μ x = 0) :
    Real.cos φ * (4 * Real.sin (π / N) ^ 2) * ∑ μ, ∑ x, v μ x ^ 2 ≤
      ∑ μ, ∑ x, v μ x * neutral (Real.cos φ) v μ x := by
  rw [← gap_eq_four_sin_sq]
  exact neutral_gap hφ (Real.cos_le_one φ) v h

/-- Kernel of the neutral block for `c > 0`: exactly the constant 1-forms. -/
theorem neutral_ker {c : ℝ} (hc : 0 < c) (v : Fin 2 → Site N → ℝ) :
    neutral c v = 0 ↔ ∃ k : Fin 2 → ℝ, ∀ μ x, v μ x = k μ := by
  constructor
  · intro h
    have h0 : ∑ μ, ∑ x, v μ x * neutral c v μ x = 0 := by simp [h]
    rw [neutral_form] at h0
    have hD : 0 ≤ ∑ x, codiff v x * codiff v x := sum_nonneg fun _ _ => mul_self_nonneg _
    have hC : 0 ≤ ∑ x, curl v x * curl v x := sum_nonneg fun _ _ => mul_self_nonneg _
    have hC0 : ∑ x, curl v x * curl v x = 0 := by nlinarith
    have hD0 : ∑ x, codiff v x * codiff v x = 0 := by nlinarith
    refine ⟨fun μ => v μ 0, const_of_form_zero v ?_⟩
    rw [hodge_eq_neutral_one, neutral_form, hC0, hD0]; ring
  · rintro ⟨k, hk⟩
    have : hodge v = 0 := (hodge_ker v).2 ⟨k, hk⟩
    have h0 : ∑ μ, ∑ x, v μ x * hodge v μ x = 0 := by simp [this]
    rw [hodge_eq_neutral_one, neutral_form] at h0
    have hD : 0 ≤ ∑ x, codiff v x * codiff v x := sum_nonneg fun _ _ => mul_self_nonneg _
    have hC : 0 ≤ ∑ x, curl v x * curl v x := sum_nonneg fun _ _ => mul_self_nonneg _
    have hD0 := (sum_eq_zero_iff_of_nonneg fun _ _ => mul_self_nonneg _).1 (by nlinarith : ∑ x,
      codiff v x * codiff v x = 0)
    have hC0 := (sum_eq_zero_iff_of_nonneg fun _ _ => mul_self_nonneg _).1 (by nlinarith : ∑ x,
      curl v x * curl v x = 0)
    have hd : codiff v = 0 := funext fun x => mul_self_eq_zero.1 (hD0 x (mem_univ _))
    have hcu : curl v = 0 := funext fun x => mul_self_eq_zero.1 (hC0 x (mem_univ _))
    funext μ x
    simp [neutral, hd, hcu, grad, cocurl]

/-! ### Plane-wave eigenvectors: `l(K)` (longitudinal) and `c · l(K)` (transverse) -/

omit [NeZero N] in
lemma codiff_grad (g : Site N → R) : codiff (grad g) = lap g := by
  funext x; simp [codiff, grad, lap, Fin.sum_univ_two]; ring

omit [NeZero N] in
lemma curl_grad (g : Site N → R) : curl (grad g) = 0 := by
  funext x; simp [curl, grad, add_right_comm _ (e 0) (e 1)]

omit [NeZero N] in
lemma codiff_cocurl (F : Site N → R) : codiff (cocurl F) = 0 := by
  funext x; simp [codiff, cocurl, Fin.sum_univ_two, sub_right_comm _ (e 0) (e 1)]

omit [NeZero N] in
lemma curl_cocurl (F : Site N → R) : curl (cocurl F) = lap F := by
  funext x; simp [curl, cocurl, lap, Fin.sum_univ_two, sub_add_eq_add_sub]; ring

omit [NeZero N] in
theorem neutral_grad (c : R) (g : Site N → R) : neutral c (grad g) = grad (lap g) := by
  funext μ x; simp [neutral, codiff_grad, curl_grad, cocurl]

omit [NeZero N] in
theorem neutral_cocurl (c : R) (F : Site N → R) :
    neutral c (cocurl F) = fun μ x => c * cocurl (lap F) μ x := by
  funext μ x; simp [neutral, codiff_cocurl, curl_cocurl, grad]

/-- Plane wave `x ↦ exp(i K·x)`, `K ∈ (2π/N) ℤ_N²` (identified with `ZMod N × ZMod N`). -/
noncomputable def pw (K : Site N) (x : Site N) : ℂ := ch (K.1 * x.1 + K.2 * x.2)

/-- `l(K) = 4 sin²(K₀/2) + 4 sin²(K₁/2)`. -/
noncomputable def ell (K : Site N) : ℝ := lam K.1 + lam K.2

lemma pw_add (K x y : Site N) : pw K (x + y) = pw K x * pw K y := by
  simp only [pw, Prod.fst_add, Prod.snd_add]; rw [← ch_add]; congr 1; ring

theorem lap_pw (K x : Site N) : lap (pw K) x = (ell K : ℂ) * pw K x := by
  have h0 : pw K (e 0) = ch K.1 := by simp [pw, e]
  have h0' : pw K (-e 0) = ch (-K.1) := by simp [pw, e]
  have h1 : pw K (e 1) = ch K.2 := by simp [pw, e]
  have h1' : pw K (-e 1) = ch (-K.2) := by simp [pw, e]
  simp only [lap, Fin.sum_univ_two]
  rw [sub_eq_add_neg x (e 0), sub_eq_add_neg x (e 1)]
  simp only [pw_add, h0, h0', h1, h1', ell, Complex.ofReal_add, lam_cast]
  ring

/-- Longitudinal modes: `(d d* + c d* d)(d χ_K) = l(K) · d χ_K`. -/
theorem neutral_grad_pw (c : ℂ) (K : Site N) :
    neutral c (grad (pw K)) = fun μ x => (ell K : ℂ) * grad (pw K) μ x := by
  rw [neutral_grad]; funext μ x; simp only [grad, lap_pw]; ring

/-- Transverse modes: `(d d* + c d* d)(d* χ_K) = c · l(K) · d* χ_K`. -/
theorem neutral_cocurl_pw (c : ℂ) (K : Site N) :
    neutral c (cocurl (pw K)) = fun μ x => c * (ell K : ℂ) * cocurl (pw K) μ x := by
  rw [neutral_cocurl]; funext μ x; simp only [cocurl, lap_pw]; split_ifs <;> ring

theorem grad_pw_ne_zero {K : Site N} (hK : K ≠ 0) : grad (pw K) ≠ 0 := by
  intro h
  have h0 := congrFun (congrFun h 0) 0
  have h1 := congrFun (congrFun h 1) 0
  simp [grad, pw, e, ch_zero, sub_eq_zero] at h0 h1
  apply hK
  ext
  · by_contra hk; exact ch_ne_one hk h0
  · by_contra hk; exact ch_ne_one hk h1

theorem cocurl_pw_ne_zero {K : Site N} (hK : K ≠ 0) : cocurl (pw K) ≠ 0 := by
  intro h
  have h0 := congrFun (congrFun h 0) (e 1)
  have h1 := congrFun (congrFun h 1) (e 0)
  simp [cocurl, pw, e, ch_zero, sub_eq_zero] at h0 h1
  apply hK
  ext
  · by_contra hk; exact ch_ne_one hk h1.symm
  · by_contra hk; exact ch_ne_one hk h0

end YmLean.NeutralSpectrum
