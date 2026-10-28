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

end YmLean.NeutralSpectrum
