import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Topology.Algebra.InfiniteSum.Basic
import Mathlib.Tactic.Module

/-!
# Magnetic shifts in Landau gauge on ℤ²: the algebra of SOURCES_T2_GAPRIME2

Source: SOURCES_T2_GAPRIME2.md §1–§4 (checked in SOURCES_T2_GAPRIME2_VERIFY.md §1, §4, §5).
Lattice model: scalar fields are all functions `ℤ × ℤ → ℂ` (no support or periodicity
condition), so every statement holds for every real flux angle `α`; no rational flux is used.
Operators are elements of the ring `Module.End ℂ (ℤ × ℤ → ℂ)`; 2 × 2 operator matrices act on
`(b₀, b₁)`.

* Shifts (§1): `(T₀ψ)(x) = e^{iαx₁} ψ(x + e₀)`, `(T₁ψ)(x) = ψ(x + e₁)`, and their inverses
  `T0s`, `T1s`. `T0_adjoint`, `T1_adjoint`: `T_μ^* = T_μ⁻¹` against the pairing
  `∑' x, conj (φ x) * ψ x` (an unconditional reindexing of `tsum`). `T0_T1`: `T₀T₁ = qT₁T₀`,
  `q = e^{−iα}`.
* Commutators (§2, §3): `comm_nab` (`[∇₀,∇₁] = (q − 1)T₁T₀`), `comm_T0_T1s`
  (`[T₀,T₁^*] = (e^{iα} − 1)T₁^*T₀`), `comm_T1_T0s`; normality `nab0_normal`, `nab1_normal`.
* Ladder operator (Lemma 3.1, Lemma 3.2 algebra): `X_eq` (`Π^*Π = 𝔏 + J`), `Y_eq`
  (`ΠΠ^* = Π^*Π + [Π,Π^*]`), `ladder_comm` (`[Π,Π^*] = is(1 − e^{iα})(V + T₁^*T₀)`),
  `ladder_comm_sin` (`[Π,Π^*] = 2s·sin(α/2)(V′ + V′^*)`, exact lattice sine), `J_eq`
  (`J = is(h₀∇₁ − h₁∇₀ − (q − 1)T₁T₀)`), `Vp_add_Vps`, `one_sub_Vp`.
* Exact-sine bookkeeping: `norm_qb_sub_one`, `norm_q_sub_one` (`|e^{±iα} − 1| = 2|sin(α/2)|`),
  `two_abs_sin_half_le`, `abs_sub_two_sin_half_le` (`|α − 2 sin(α/2)| ≤ |α|³/24`),
  `abs_le_two_abs_sin_half_add`, `one_sub_cos_le`, `I_mul_one_sub_exp`,
  `sin_half_eq_abs`, `neg_sin_half_eq_abs` (`s·sin(α/2) = |sin(α/2)|` for `s = sgn α`,
  `|α| ≤ 2π`).
* Operator `A′` of Lemma 1.1 and its reduction (§1, §4): `c_eq` (1.a), `curl_div` (1.b), `Cm_eq`,
  `Aprime_decomp`, `R_eq` (exact formula for `R := A′ − (𝔏 ⊗ 1 − 2ασ_y)`), `Cm_add_sigmaY_01`,
  `Cm_add_sigmaY_10`, `Kbar_eq` (`K` with all shifts and phases set to 1 equals `σ_y`: the
  Wilson-spin half of `−2ασ_y`).
* `σ_y`: `sigmaY_mem_unitary`, `sigmaY_norm` (`‖σ_y‖ = 1` in the L2 operator norm),
  `sigmaY_sq`, `sigmaY_eigen_plus`, `sigmaY_eigen_minus`, `sigmaYM_sq`.

Not formalized (analytic; remaining): the regularity Lemmas 2.1–2.3 and Cor. 2.4 as norm bounds,
the form bound `[Π,Π^*] ≥ 2|α| − 3|α|𝔏 − |α|³`, the inequality `X(X − 2|α|) ≥ −157|α|³` on low
states, Prop. 3.3 (scalar Landau gap), Lemma 4.1 / Cor. 4.3 norm bounds on `R`, Theorem 5.1.
Lemma 1.1 itself (derivation of `A′` from the Wilson action) is prose; here `A′` is the definition.
-/

open Complex
open scoped ComplexConjugate

namespace YmLean.MagneticShift

/-- Scalar fields on ℤ² (all functions; no support condition). -/
abbrev F := ℤ × ℤ → ℂ
/-- Linear operators on scalar fields. -/
abbrev E := Module.End ℂ F

variable (α : ℝ)

/-- Landau-gauge phase `e^{iαn}`. -/
noncomputable def ph (n : ℤ) : ℂ := exp (α * n * I)
/-- `q = e^{−iα}` (GAPRIME2 §1). -/
noncomputable def q : ℂ := exp (-(α * I))
/-- `q̄ = e^{iα}`. -/
noncomputable def qb : ℂ := exp (α * I)

lemma q_mul_qb : q α * qb α = 1 := by
  rw [q, qb, ← exp_add]; simp

lemma ph_succ (n : ℤ) : ph α (n + 1) = ph α n * qb α := by
  rw [ph, ph, qb, ← exp_add]; congr 1; push_cast; ring

lemma ph_pred (n : ℤ) : ph α (n - 1) = ph α n * q α := by
  rw [ph, ph, q, ← exp_add]; congr 1; push_cast; ring

lemma ph_neg_mul (n : ℤ) : ph α (-n) * ph α n = 1 := by
  rw [ph, ph, ← exp_add]; push_cast; ring_nf; simp

lemma conj_ph (n : ℤ) : conj (ph α n) = ph α (-n) := by
  rw [ph, ph, ← exp_conj]; congr 1; simp [map_mul, conj_ofReal]; push_cast; ring

/-- `T₀ψ(x) = e^{iαx₁} ψ(x + e₀)` (GAPRIME2 §1, Landau gauge). -/
noncomputable def T0 : E where
  toFun ψ x := ph α x.2 * ψ (x.1 + 1, x.2)
  map_add' ψ φ := by ext x; simp; ring
  map_smul' c ψ := by ext x; simp; ring

/-- `T₀^* = T₀⁻¹`: `ψ(x) ↦ e^{−iαx₁} ψ(x − e₀)`. -/
noncomputable def T0s : E where
  toFun ψ x := ph α (-x.2) * ψ (x.1 - 1, x.2)
  map_add' ψ φ := by ext x; simp; ring
  map_smul' c ψ := by ext x; simp; ring

/-- `T₁ψ(x) = ψ(x + e₁)`. -/
def T1 : E where
  toFun ψ x := ψ (x.1, x.2 + 1)
  map_add' ψ φ := by ext x; simp
  map_smul' c ψ := by ext x; simp

/-- `T₁^* = T₁⁻¹`. -/
def T1s : E where
  toFun ψ x := ψ (x.1, x.2 - 1)
  map_add' ψ φ := by ext x; simp
  map_smul' c ψ := by ext x; simp

@[simp] lemma T0_apply (ψ : F) (x : ℤ × ℤ) : T0 α ψ x = ph α x.2 * ψ (x.1 + 1, x.2) := rfl
@[simp] lemma T0s_apply (ψ : F) (x : ℤ × ℤ) :
    T0s α ψ x = ph α (-x.2) * ψ (x.1 - 1, x.2) := rfl
@[simp] lemma T1_apply (ψ : F) (x : ℤ × ℤ) : T1 ψ x = ψ (x.1, x.2 + 1) := rfl
@[simp] lemma T1s_apply (ψ : F) (x : ℤ × ℤ) : T1s ψ x = ψ (x.1, x.2 - 1) := rfl

/-! ### Unitarity and the Weyl relation -/

lemma T0_T0s : T0 α * T0s α = 1 := by
  refine LinearMap.ext fun ψ => funext fun x => ?_
  simp only [Module.End.mul_apply, T0_apply, T0s_apply, add_sub_cancel_right, Module.End.one_apply]
  rw [← mul_assoc, mul_comm (ph α _), ph_neg_mul, one_mul]

lemma T0s_T0 : T0s α * T0 α = 1 := by
  refine LinearMap.ext fun ψ => funext fun x => ?_
  simp only [Module.End.mul_apply, T0_apply, T0s_apply, sub_add_cancel, Module.End.one_apply]
  rw [← mul_assoc, ph_neg_mul, one_mul]

lemma T1_T1s : T1 * T1s = 1 := by
  refine LinearMap.ext fun ψ => funext fun x => ?_
  simp

lemma T1s_T1 : T1s * T1 = 1 := by
  refine LinearMap.ext fun ψ => funext fun x => ?_
  simp

/-- Weyl relation `T₀T₁ = qT₁T₀`, `q = e^{−iα}` (GAPRIME2 §1; VERIFY §1). -/
theorem T0_T1 : T0 α * T1 = q α • (T1 * T0 α) := by
  refine LinearMap.ext fun ψ => funext fun x => ?_
  simp only [Module.End.mul_apply, T0_apply, T1_apply, LinearMap.smul_apply, Pi.smul_apply,
    smul_eq_mul, ph_succ]
  linear_combination (-(ph α x.2 * ψ (x.1 + 1, x.2 + 1))) * q_mul_qb α

lemma T0_T1s : T0 α * T1s = qb α • (T1s * T0 α) := by
  refine LinearMap.ext fun ψ => funext fun x => ?_
  simp only [Module.End.mul_apply, T0_apply, T1s_apply, LinearMap.smul_apply, Pi.smul_apply,
    smul_eq_mul, ph_pred]
  linear_combination (-(ph α x.2 * ψ (x.1 + 1, x.2 - 1))) * q_mul_qb α

lemma T0s_T1 : T0s α * T1 = qb α • (T1 * T0s α) := by
  refine LinearMap.ext fun ψ => funext fun x => ?_
  simp only [Module.End.mul_apply, T0s_apply, T1_apply, LinearMap.smul_apply, Pi.smul_apply,
    smul_eq_mul]
  rw [show -(x.2 + 1) = -x.2 - 1 by ring, ph_pred]
  linear_combination (ph α (-x.2) * ψ (x.1 - 1, x.2 + 1)) * q_mul_qb α

lemma T0s_T1s : T0s α * T1s = q α • (T1s * T0s α) := by
  refine LinearMap.ext fun ψ => funext fun x => ?_
  simp only [Module.End.mul_apply, T0s_apply, T1s_apply, LinearMap.smul_apply, Pi.smul_apply,
    smul_eq_mul]
  rw [show -(x.2 - 1) = -x.2 + 1 by ring, ph_succ]
  linear_combination (-(ph α (-x.2) * ψ (x.1 - 1, x.2 - 1))) * q_mul_qb α

/-- `T₀^*` is the adjoint of `T₀` for the pairing `∑' x, conj (φ x) * ψ x`
(unconditional: a reindexing of `tsum` along `x ↦ x + e₀`). -/
theorem T0_adjoint (φ ψ : F) :
    ∑' x, conj (φ x) * T0 α ψ x = ∑' x, conj (T0s α φ x) * ψ x := by
  rw [← (Equiv.addRight ((1, 0) : ℤ × ℤ)).tsum_eq]
  congr 1; funext x
  simp only [Equiv.coe_addRight, T0_apply, T0s_apply, Prod.fst_add, Prod.snd_add, add_zero,
    add_sub_cancel_right, map_mul, conj_ph, neg_neg, Prod.mk.eta]
  ring

theorem T1_adjoint (φ ψ : F) :
    ∑' x, conj (φ x) * T1 ψ x = ∑' x, conj (T1s φ x) * ψ x := by
  rw [← (Equiv.addRight ((0, 1) : ℤ × ℤ)).tsum_eq]
  congr 1; funext x
  simp only [Equiv.coe_addRight, T1_apply, T1s_apply, Prod.fst_add, Prod.snd_add, add_zero,
    add_sub_cancel_right, Prod.mk.eta]

/-! ### Covariant differences and commutators -/

/-- `∇₀ = 1 − T₀`. -/
noncomputable def nab0 : E := 1 - T0 α
/-- `∇₀^* = 1 − T₀^*`. -/
noncomputable def nab0s : E := 1 - T0s α
/-- `∇₁ = 1 − T₁`. -/
def nab1 : E := 1 - T1
/-- `∇₁^* = 1 − T₁^*`. -/
def nab1s : E := 1 - T1s
/-- `h₀ = ∇₀^*∇₀`. -/
noncomputable def h0 : E := nab0s α * nab0 α
/-- `h₁ = ∇₁^*∇₁`. -/
def h1 : E := nab1s * nab1
/-- `𝔏 = h₀ + h₁` (GAPRIME2 §1). -/
noncomputable def Lap : E := h0 α + h1

/-- Normal form for words of length ≤ 2 in the shifts. -/
local macro "shift_nf" : tactic => `(tactic| (
  simp only [nab0, nab0s, nab1, nab1s, h0, h1, Lap, sub_mul, mul_sub, add_mul, mul_add, one_mul,
    mul_one, smul_mul_assoc, mul_smul_comm, smul_sub, smul_add, smul_smul, T0_T0s, T0s_T0, T1_T1s,
    T1s_T1, T0_T1, T0_T1s, T0s_T1, T0s_T1s]))

/-- `[∇₀,∇₁] = [T₀,T₁] = (q − 1)T₁T₀` (GAPRIME2 §2, Lemma 3.2 proof). -/
theorem comm_nab : nab0 α * nab1 - nab1 * nab0 α = (q α - 1) • (T1 * T0 α) := by
  shift_nf; module

/-- The lattice magnetic commutator `[T₀,T₁^*] = (e^{iα} − 1)T₁^*T₀` (GAPRIME2 (1.b)). -/
theorem comm_T0_T1s : T0 α * T1s - T1s * T0 α = (qb α - 1) • (T1s * T0 α) := by
  shift_nf; module

/-- `[T₁,T₀^*] = (1 − e^{iα})T₁T₀^*` (GAPRIME2 (1.b)). -/
theorem comm_T1_T0s : T1 * T0s α - T0s α * T1 = (1 - qb α) • (T1 * T0s α) := by
  shift_nf; module

theorem nab0_normal : nab0 α * nab0s α = nab0s α * nab0 α := by shift_nf; module
theorem nab1_normal : nab1 * nab1s = nab1s * nab1 := by shift_nf; module

/-- `∇_μ^* = h_μ − ∇_μ` (GAPRIME2 Lemma 3.2 proof). -/
lemma nab0s_eq : nab0s α = h0 α - nab0 α := by
  have : h0 α = nab0s α * nab0 α := rfl
  rw [this]; shift_nf; module

lemma nab1s_eq : nab1s = h1 - nab1 := by
  have : h1 = nab1s * nab1 := rfl
  rw [this]; shift_nf; module

/-! ### The ladder operator (GAPRIME2 §3) -/

variable (s : ℝ)

/-- `Π = ∇₀ + is∇₁` (`s = sgn α`). -/
noncomputable def Pi : E := nab0 α + (I * s) • nab1
/-- `Π^* = ∇₀^* − is∇₁^*`. -/
noncomputable def Pis : E := nab0s α - (I * s) • nab1s
/-- `J = is(∇₀^*∇₁ − ∇₁^*∇₀)` (GAPRIME2 Lemma 3.2). -/
noncomputable def J : E := (I * s) • (nab0s α * nab1 - nab1s * nab0 α)

/-- `X = Π^*Π = 𝔏 + J` (GAPRIME2 Lemma 3.2). -/
theorem X_eq (hs : s ^ 2 = 1) : Pis α s * Pi α s = Lap α + J α s := by
  have hI : (I * s) * (I * s) = -1 := by
    have : ((s : ℂ)) ^ 2 = 1 := by exact_mod_cast hs
    linear_combination (-1 : ℂ) * this + (s : ℂ) ^ 2 * I_sq
  simp only [Pis, Pi, J, Lap, h0, h1, sub_mul, mul_add, smul_mul_assoc, mul_smul_comm, smul_smul,
    hI, smul_sub]
  module

/-- `[Π,Π^*] = is(1 − e^{iα})(T₁T₀^* + T₁^*T₀)` exactly (GAPRIME2 Lemma 3.1). -/
theorem ladder_comm :
    Pi α s * Pis α s - Pis α s * Pi α s =
      (I * s * (1 - qb α)) • (T1 * T0s α + T1s * T0 α) := by
  simp only [Pis, Pi]
  shift_nf
  module

/-- `Y = ΠΠ^* = X + [Π,Π^*]`. -/
theorem Y_eq : Pi α s * Pis α s = Pis α s * Pi α s +
    (I * s * (1 - qb α)) • (T1 * T0s α + T1s * T0 α) := by
  rw [← ladder_comm]; abel

/-- `J = is(h₀∇₁ − h₁∇₀ − (q − 1)T₁T₀)` (GAPRIME2 Lemma 3.2, first display). -/
theorem J_eq : J α s = (I * s) • (h0 α * nab1 - h1 * nab0 α - (q α - 1) • (T1 * T0 α)) := by
  rw [J, ← comm_nab, nab0s_eq, nab1s_eq]
  congr 1; noncomm_ring

/-! ### Exact-sine bookkeeping -/

/-- `i(1 − e^{iα}) = 2 sin(α/2) e^{iα/2}` (GAPRIME2 Lemma 3.1 proof). -/
theorem I_mul_one_sub_exp :
    I * (1 - qb α) = 2 * Real.sin (α / 2) * exp ((α / 2 : ℝ) * I) := by
  have h1 : qb α = exp ((α / 2 : ℝ) * I) * exp ((α / 2 : ℝ) * I) := by
    rw [qb, ← exp_add]; congr 1; push_cast; ring
  have h2 : (Real.sin (α / 2) : ℂ) =
      (exp ((α / 2 : ℝ) * I) - exp (-((α / 2 : ℝ) * I))) / (2 * I) := by
    rw [ofReal_sin, sin]; field_simp; ring_nf; simp [I_sq]; ring
  have h3 : exp (-((α / 2 : ℝ) * I)) * exp ((α / 2 : ℝ) * I) = 1 := by
    rw [← exp_add]; simp
  rw [h1, h2]
  field_simp
  linear_combination (-2 * exp ((α / 2 : ℝ) * I)) * h3

/-- `V′ = e^{iα/2} T₁T₀^*` (GAPRIME2 §3). -/
noncomputable def Vp : E := exp ((α / 2 : ℝ) * I) • (T1 * T0s α)
/-- `V′^* = e^{−iα/2} T₀T₁^*`. -/
noncomputable def Vps : E := exp (-((α / 2 : ℝ) * I)) • (T0 α * T1s)

lemma exp_half_mul_qb : exp (-((α / 2 : ℝ) * I)) * qb α = exp ((α / 2 : ℝ) * I) := by
  rw [qb, ← exp_add]; congr 1; push_cast; ring

/-- Lemma 3.1, identity part: `[Π,Π^*] = 2s·sin(α/2)(V′ + V′^*)`, with the exact lattice
factor `2 sin(α/2)` (= `2|sin(α/2)|` for `s = sgn α`, `|α| ≤ 2π`: `sin_half_eq_abs`). -/
theorem ladder_comm_sin :
    Pi α s * Pis α s - Pis α s * Pi α s =
      (2 * s * Real.sin (α / 2) : ℂ) • (Vp α + Vps α) := by
  rw [ladder_comm, Vp, Vps, T0_T1s, smul_smul, ← mul_assoc, exp_half_mul_qb, smul_add, smul_add,
    smul_smul, smul_smul]
  have h := I_mul_one_sub_exp α
  congr 2 <;> linear_combination (s : ℂ) * h

/-- `V′^*V′ = 1`. -/
lemma Vps_Vp : Vps α * Vp α = 1 := by
  rw [Vps, Vp, smul_mul_assoc, mul_smul_comm, smul_smul, ← exp_add, neg_add_cancel, exp_zero,
    one_smul, mul_assoc, ← mul_assoc T1s, T1s_T1, one_mul, T0_T0s]

/-- `V′ + V′^* = 2 − (1 − V′)^*(1 − V′)` (GAPRIME2 Lemma 3.1 proof). -/
theorem Vp_add_Vps : Vp α + Vps α = 2 - (1 - Vps α) * (1 - Vp α) := by
  rw [sub_mul, mul_sub, mul_sub, Vps_Vp]; noncomm_ring

/-- `1 − V′ = (1 − e^{iα/2}) + e^{iα/2}(∇₁ + T₁∇₀^*)` (GAPRIME2 Lemma 3.1 proof). -/
theorem one_sub_Vp : 1 - Vp α = (1 - exp ((α / 2 : ℝ) * I)) • (1 : E) +
    exp ((α / 2 : ℝ) * I) • (nab1 + T1 * nab0s α) := by
  simp only [Vp, nab1, nab0s, mul_sub, mul_one]; module

/-- `|e^{iα} − 1| = 2|sin(α/2)|`. -/
theorem norm_qb_sub_one : ‖qb α - 1‖ = 2 * |Real.sin (α / 2)| := by
  have := norm_exp_I_mul_ofReal_sub_one α
  rw [qb, mul_comm, this, norm_mul, Real.norm_eq_abs]; norm_num

/-- `|e^{−iα} − 1| = 2|sin(α/2)|` (the Weyl-commutator size). -/
theorem norm_q_sub_one : ‖q α - 1‖ = 2 * |Real.sin (α / 2)| := by
  have := norm_exp_I_mul_ofReal_sub_one (-α)
  rw [q, show -((α : ℂ) * I) = I * ((-α : ℝ) : ℂ) by push_cast; ring, this, norm_mul,
    Real.norm_eq_abs, neg_div, Real.sin_neg, abs_neg]; norm_num

/-- `2|sin(α/2)| ≤ |α|`. -/
theorem two_abs_sin_half_le : 2 * |Real.sin (α / 2)| ≤ |α| := by
  have := Real.abs_sin_le_abs (x := α / 2)
  rw [abs_div, abs_two] at this; linarith

lemma sub_two_sin_half_nonneg_le {a : ℝ} (ha : 0 ≤ a) :
    0 ≤ a - 2 * Real.sin (a / 2) ∧ a - 2 * Real.sin (a / 2) ≤ a ^ 3 / 24 := by
  have h1 := Real.sin_le (x := a / 2) (by linarith)
  have h2 := Real.sin_ge_sub_cube (x := a / 2) (by linarith)
  constructor <;> nlinarith

/-- `|α − 2 sin(α/2)| ≤ |α|³/24` (GAPRIME2 Lemma 4.1 (vi)). -/
theorem abs_sub_two_sin_half_le : |α - 2 * Real.sin (α / 2)| ≤ |α| ^ 3 / 24 := by
  rcases le_total 0 α with h | h
  · obtain ⟨h1, h2⟩ := sub_two_sin_half_nonneg_le h
    rw [abs_of_nonneg h1, abs_of_nonneg h]; exact h2
  · obtain ⟨h1, h2⟩ := sub_two_sin_half_nonneg_le (a := -α) (by linarith)
    rw [neg_div, Real.sin_neg] at h1 h2
    rw [abs_of_nonpos (by linarith), abs_of_nonpos h]
    have : (-α) ^ 3 = -α ^ 3 := by ring
    linarith

/-- `|α| ≤ 2|sin(α/2)| + |α|³/24`, i.e. `4|sin(α/2)| ≥ 2|α| − |α|³/12` (Lemma 3.1 proof). -/
theorem abs_le_two_abs_sin_half_add : |α| ≤ 2 * |Real.sin (α / 2)| + |α| ^ 3 / 24 := by
  have h := abs_sub_two_sin_half_le α
  have h' := abs_sub_abs_le_abs_sub α (2 * Real.sin (α / 2))
  rw [abs_mul, abs_two] at h'; linarith

/-- `1 − cos α ≤ α²/2` (GAPRIME2 Lemma 2.3, 4.1 (ii)). -/
theorem one_sub_cos_le : 1 - Real.cos α ≤ α ^ 2 / 2 := by
  have := Real.one_sub_sq_div_two_le_cos (x := α); linarith

/-- For `0 ≤ α ≤ 2π`, `sin(α/2) = |sin(α/2)|`. -/
theorem sin_half_eq_abs (h0 : 0 ≤ α) (h1 : α ≤ 2 * Real.pi) :
    Real.sin (α / 2) = |Real.sin (α / 2)| :=
  (abs_of_nonneg (Real.sin_nonneg_of_nonneg_of_le_pi (by linarith) (by linarith))).symm

/-- For `−2π ≤ α ≤ 0`, `−sin(α/2) = |sin(α/2)|`. -/
theorem neg_sin_half_eq_abs (h0 : α ≤ 0) (h1 : -(2 * Real.pi) ≤ α) :
    -Real.sin (α / 2) = |Real.sin (α / 2)| := by
  have := sin_half_eq_abs (-α) (by linarith) (by linarith)
  rw [neg_div, Real.sin_neg, abs_neg] at this; exact this

/-! ### The operator `A′` of Lemma 1.1 and its reduction (GAPRIME2 §1, §4) -/

/-- Operator 2 × 2 matrices acting on `(b₀, b₁)`. -/
abbrev M2 := Matrix (Fin 2) (Fin 2) E

/-- Outer product `col · row` of an operator column and an operator row. -/
def op (u v : Fin 2 → E) : M2 := Matrix.of fun a b => u a * v b

@[simp] lemma op_apply (u v : Fin 2 → E) (a b : Fin 2) : op u v a b = u a * v b := rfl

lemma op_add_left (u u' v : Fin 2 → E) : op (u + u') v = op u v + op u' v := by
  ext a b : 2; simp [add_mul]
lemma op_add_right (u v v' : Fin 2 → E) : op u (v + v') = op u v + op u v' := by
  ext a b : 2; simp [mul_add]
lemma op_neg_left (u v : Fin 2 → E) : op (-u) v = -op u v := by ext a b : 2; simp
lemma op_neg_right (u v : Fin 2 → E) : op u (-v) = -op u v := by ext a b : 2; simp

/-- `c = (1 − qT₁, T₀ − q)` (Lemma 1.1). -/
noncomputable def c : Fin 2 → E := ![1 - q α • T1, T0 α - q α • (1 : E)]
/-- `c^† = (1 − q̄T₁^*, T₀^* − q̄)^T`. -/
noncomputable def cs : Fin 2 → E := ![1 - qb α • T1s, T0s α - qb α • (1 : E)]
/-- Flat curl `c₀ = (−∇₁, ∇₀)` ((1.a)). -/
noncomputable def c0 : Fin 2 → E := ![-nab1, nab0 α]
/-- `c₀^† = (−∇₁^*, ∇₀^*)^T`. -/
noncomputable def c0s : Fin 2 → E := ![-nab1s, nab0s α]
/-- `δ = (1 − e^{−iα})(T₁, 1)` ((1.a)). -/
noncomputable def dl : Fin 2 → E := ![(1 - q α) • T1, (1 - q α) • (1 : E)]
/-- `δ^† = (1 − e^{iα})(T₁^*, 1)^T`. -/
noncomputable def dls : Fin 2 → E := ![(1 - qb α) • T1s, (1 - qb α) • (1 : E)]
/-- `D′ = (∇₀, ∇₁)^T`. -/
noncomputable def D : Fin 2 → E := ![nab0 α, nab1]
/-- `D′^† = (∇₀^*, ∇₁^*)`. -/
noncomputable def Ds : Fin 2 → E := ![nab0s α, nab1s]

/-- (1.a): `c = −c₀ + δ`. -/
theorem c_eq : c α = -c0 α + dl α := by
  ext a : 1; fin_cases a <;> simp [c, c0, dl, nab0, nab1] <;> module

/-- (1.a), adjoint side: `c^† = −c₀^† + δ^†`. -/
theorem cs_eq : cs α = -c0s α + dls α := by
  ext a : 1; fin_cases a <;> simp [cs, c0s, dls, nab0s, nab1s] <;> module

/-- The commutator block `C = [[0, [T₀,T₁^*]], [[T₁,T₀^*], 0]]` of (1.b). -/
noncomputable def Cm : M2 := !![0, T0 α * T1s - T1s * T0 α; T1 * T0s α - T0s α * T1, 0]

/-- `𝔏 ⊗ 1₂`. -/
noncomputable def LapM : M2 := Matrix.diagonal fun _ => Lap α

/-- (1.b) curl–divergence identity: `c₀^†c₀ + D′D′^† = 𝔏 ⊗ 1 + C` (GAPRIME2 §1). -/
theorem curl_div : op (c0s α) (c0 α) + op (D α) (Ds α) = LapM α + Cm α := by
  ext a b : 2
  fin_cases a <;> fin_cases b <;>
    simp [op, c0s, c0, D, Ds, LapM, Cm] <;> shift_nf <;> module

/-- Entries of `C`: `[T₀,T₁^*] = (e^{iα} − 1)T₁^*T₀`, `[T₁,T₀^*] = (1 − e^{iα})T₁T₀^*`. -/
theorem Cm_eq : Cm α = !![0, (qb α - 1) • (T1s * T0 α); (1 - qb α) • (T1 * T0s α), 0] := by
  rw [Cm, comm_T0_T1s, comm_T1_T0s]

/-- Corner maps `u₁ … u₄` of Lemma 1.1 with generic shifts `a₀, a₁` and phase `p`. -/
def uG (a0 a1 : E) (p : ℂ) : Fin 4 → Fin 2 → E :=
  ![![1, 0], ![0, a0], ![-(p • a1), 0], ![0, -(p • (1 : E))]]

/-- Generic `K = Σ_{i<j}(u_i^†u_j − u_j^†u_i)/(2i)`, with `1/(2i) = −i/2`; `b₀, b₁, pb` play the
roles of `T₀^*, T₁^*, q̄`. -/
noncomputable def KG (a0 a1 b0 b1 : E) (p pb : ℂ) : M2 :=
  let u := uG a0 a1 p
  let us := uG b0 b1 pb
  let P := fun i j => op (us i) (u j) - op (us j) (u i)
  (-(I / 2)) • (P 0 1 + P 0 2 + P 0 3 + P 1 2 + P 1 3 + P 2 3)

/-- The spin operator `K` of Lemma 1.1. -/
noncomputable def K : M2 := KG (T0 α) T1 (T0s α) T1s (q α) (qb α)

/-- `σ_y` acting on the component index, as an operator matrix. -/
noncomputable def sigmaYM : M2 := !![0, (-I) • (1 : E); I • (1 : E), 0]

/-- GAPRIME2 §4: with every shift and phase set to 1, `K̄ = σ_y` (the Wilson-spin half of
`−2ασ_y`). -/
theorem Kbar_eq : KG 1 1 1 1 1 1 = sigmaYM := by
  ext a b : 2
  fin_cases a <;> fin_cases b <;> simp [KG, uG, op, sigmaYM] <;> module

theorem sigmaYM_sq : sigmaYM * sigmaYM = 1 := by
  ext a b : 2
  fin_cases a <;> fin_cases b <;> simp [sigmaYM, Matrix.mul_apply, Fin.sum_univ_two] <;> module

/-- `A′ = cos φ·c^†c + D′D′^† − 2 sin φ·K`, `φ = α/2` (GAPRIME2 Lemma 1.1). -/
noncomputable def Aprime : M2 :=
  (Real.cos (α / 2) : ℂ) • op (cs α) (c α) + op (D α) (Ds α) -
    (2 * Real.sin (α / 2) : ℂ) • K α

/-- `A_c = 𝔏 ⊗ 1 − 2ασ_y` (GAPRIME2 §4). -/
noncomputable def Ac : M2 := LapM α - (2 * α : ℂ) • sigmaYM

/-- The remainder, defined as the difference `R := A′ − A_c`. -/
noncomputable def R : M2 := Aprime α - Ac α

/-- GAPRIME2 Lemma 4.1 proof, first line:
`A′ = 𝔏⊗1 + C + (cos φ − 1)c^†c − c₀^†δ − δ^†c₀ + δ^†δ − 2 sin φ·K`. -/
theorem Aprime_decomp : Aprime α = LapM α + Cm α +
    ((Real.cos (α / 2) : ℂ) - 1) • op (cs α) (c α) - op (c0s α) (dl α) - op (dls α) (c0 α) +
    op (dls α) (dl α) - (2 * Real.sin (α / 2) : ℂ) • K α := by
  have hX : op (cs α) (c α) =
      op (c0s α) (c0 α) - op (c0s α) (dl α) - op (dls α) (c0 α) + op (dls α) (dl α) := by
    rw [cs_eq, c_eq]
    simp only [op_add_left, op_add_right, op_neg_left, op_neg_right]
    abel
  rw [Aprime, ← curl_div, hX]
  module

/-- GAPRIME2 Lemma 4.1 proof, second line (exact):
`R = (C + ασ_y) + (cos φ − 1)c^†c − c₀^†δ − δ^†c₀ + δ^†δ − 2 sin φ(K − σ_y) − (2 sin φ − α)σ_y`. -/
theorem R_eq : R α = (Cm α + (α : ℂ) • sigmaYM) +
    ((Real.cos (α / 2) : ℂ) - 1) • op (cs α) (c α) - op (c0s α) (dl α) - op (dls α) (c0 α) +
    op (dls α) (dl α) - (2 * Real.sin (α / 2) : ℂ) • (K α - sigmaYM) -
    ((2 * Real.sin (α / 2) : ℂ) - α) • sigmaYM := by
  rw [R, Ac, Aprime_decomp]
  module

/-- Lemma 4.1 (i), entry (0,1): `(C + ασ_y)₀₁ = (e^{iα} − 1)(T₁^*T₀ − 1) + (e^{iα} − 1 − iα)`. -/
theorem Cm_add_sigmaY_01 : (Cm α + (α : ℂ) • sigmaYM) 0 1 =
    (qb α - 1) • (T1s * T0 α - 1) + (qb α - 1 - I * α) • (1 : E) := by
  rw [Cm_eq]; simp [sigmaYM]; module

/-- Lemma 4.1 (i), entry (1,0): `(C + ασ_y)₁₀ = (1 − e^{iα})(T₁T₀^* − 1) + (1 − e^{iα} + iα)`. -/
theorem Cm_add_sigmaY_10 : (Cm α + (α : ℂ) • sigmaYM) 1 0 =
    (1 - qb α) • (T1 * T0s α - 1) + (1 - qb α + I * α) • (1 : E) := by
  rw [Cm_eq]; simp [sigmaYM]; module

/-! ### `σ_y` as a 2 × 2 complex matrix -/

/-- `σ_y = [[0, −i], [i, 0]]`. -/
def sigmaY : Matrix (Fin 2) (Fin 2) ℂ := !![0, -I; I, 0]

theorem sigmaY_sq : sigmaY * sigmaY = 1 := by
  ext a b; fin_cases a <;> fin_cases b <;> simp [sigmaY, Matrix.mul_apply, Fin.sum_univ_two]

theorem sigmaY_conjTranspose : sigmaY.conjTranspose = sigmaY := by
  ext a b; fin_cases a <;> fin_cases b <;> simp [sigmaY]

theorem sigmaY_mem_unitary : sigmaY ∈ unitary (Matrix (Fin 2) (Fin 2) ℂ) := by
  rw [Unitary.mem_iff, Matrix.star_eq_conjTranspose, sigmaY_conjTranspose, sigmaY_sq]
  exact ⟨rfl, rfl⟩

open scoped Matrix.Norms.L2Operator in
/-- `‖σ_y‖ = 1` in the L2 operator norm. -/
theorem sigmaY_norm : ‖sigmaY‖ = 1 := CStarRing.norm_of_mem_unitary sigmaY_mem_unitary

/-- `σ_y(1, i) = (1, i)`. -/
theorem sigmaY_eigen_plus : sigmaY.mulVec ![1, I] = ![1, I] := by
  ext a; fin_cases a <;> simp [sigmaY, Matrix.mulVec, dotProduct, Fin.sum_univ_two]

/-- `σ_y(1, −i) = −(1, −i)`. -/
theorem sigmaY_eigen_minus : sigmaY.mulVec ![1, -I] = -![1, -I] := by
  ext a; fin_cases a <;> simp [sigmaY, Matrix.mulVec, dotProduct, Fin.sum_univ_two]

end YmLean.MagneticShift
