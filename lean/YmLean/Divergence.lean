import Mathlib.Algebra.BigOperators.Ring.Finset
import Mathlib.Data.Fintype.Pi
import Mathlib.Algebra.Module.Pi
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Abel

/-!
# Divergence of lattice paths (H2_CERTIFY_P4.md §2, Steps 2–3, identity (D))

Sites of `ℤ^d` are `Fin d → ℤ`; `e ν = Pi.single ν 1`. A 1-chain is a function on links
`(ν, z)` (the link `z → z + e ν`) with values in a commutative ring `R`. No finite support is
needed: the divergence `(div F)(y) = Σ_ν [F(ν, y − e_ν) − F(ν, y)]` (inflow minus outflow) is a
finite sum over `ν`. A step goes forward `z → z + e_ν` (weight `+1` on `(ν, z)`) or backward
`z → z − e_ν` (weight `−1` on `(ν, z − e_ν)`), as in the note's `χ_Γ`. Only the discrete identity
(D) is formalized, not the Fourier step (Step 4).
-/

open Finset

namespace YmLean

variable {d : ℕ} {R : Type*} [CommRing R]

/-- Unit vector `e_ν`. -/
def ev (ν : Fin d) : Fin d → ℤ := Pi.single ν 1

/-- A nearest-neighbour step: start site, direction, forward (`true`) or backward. -/
structure Step (d : ℕ) where
  start : Fin d → ℤ
  dir : Fin d
  fwd : Bool

/-- End site of a step. -/
def Step.stop (s : Step d) : Fin d → ℤ := if s.fwd then s.start + ev s.dir else s.start - ev s.dir

/-- `δ_a`. -/
def delta (a : Fin d → ℤ) (y : Fin d → ℤ) : R := if y = a then 1 else 0

/-- Divergence of a 1-chain: inflow minus outflow at `y`. -/
def div (F : Fin d × (Fin d → ℤ) → R) (y : Fin d → ℤ) : R :=
  ∑ ν, (F (ν, y - ev ν) - F (ν, y))

/-- Signed link indicator of one step. -/
def chiStep (s : Step d) : Fin d × (Fin d → ℤ) → R := fun e =>
  if e.1 = s.dir then
    (if s.fwd then (if e.2 = s.start then 1 else 0)
     else (if e.2 = s.start - ev s.dir then -1 else 0))
  else 0

/-- Signed link indicator `χ_Γ` of a list of steps. -/
def chi (l : List (Step d)) : Fin d × (Fin d → ℤ) → R := (l.map chiStep).sum

/-- `l` is a path from `a` to `b`: consecutive steps. -/
def IsPath : List (Step d) → (Fin d → ℤ) → (Fin d → ℤ) → Prop
  | [], a, b => a = b
  | s :: l, a, b => s.start = a ∧ IsPath l s.stop b

theorem div_add (F G : Fin d × (Fin d → ℤ) → R) : div (F + G) = div F + div G := by
  funext y; simp only [div, Pi.add_apply, ← sum_add_distrib]; congr 1; funext ν; ring

theorem div_smul (c : R) (F : Fin d × (Fin d → ℤ) → R) : div (c • F) = c • div F := by
  funext y; simp only [div, Pi.smul_apply, smul_eq_mul, mul_sum]; congr 1; funext ν; ring

theorem div_zero : div (0 : Fin d × (Fin d → ℤ) → R) = 0 := by funext y; simp [div]

theorem div_sum {ι : Type*} (S : Finset ι) (F : ι → Fin d × (Fin d → ℤ) → R) :
    div (∑ i ∈ S, F i) = ∑ i ∈ S, div (F i) := by
  classical
  induction S using Finset.induction_on with
  | empty => simp [div_zero]
  | insert i S hi ih => rw [sum_insert hi, sum_insert hi, div_add, ih]

/-- Step 2, one step: `div χ_s = δ_end − δ_start`. -/
theorem step_divergence (s : Step d) : div (chiStep s) = delta (R := R) s.stop - delta s.start := by
  funext y
  simp only [div, chiStep, Pi.sub_apply, delta, Step.stop]
  rw [show (∑ ν, ((if ν = s.dir then
        (if s.fwd then (if y - ev ν = s.start then (1 : R) else 0)
         else (if y - ev ν = s.start - ev s.dir then -1 else 0)) else 0) -
      (if ν = s.dir then
        (if s.fwd then (if y = s.start then (1 : R) else 0)
         else (if y = s.start - ev s.dir then -1 else 0)) else 0)))
      = ∑ ν, (if ν = s.dir then
        ((if s.fwd then (if y - ev s.dir = s.start then (1 : R) else 0)
         else (if y - ev s.dir = s.start - ev s.dir then -1 else 0)) -
        (if s.fwd then (if y = s.start then (1 : R) else 0)
         else (if y = s.start - ev s.dir then -1 else 0))) else 0) from
    sum_congr rfl fun ν _ => by split_ifs <;> simp_all]
  rw [sum_ite_eq' univ s.dir, if_pos (mem_univ _)]
  cases s.fwd <;> simp only [Bool.false_eq_true, ite_false, ite_true,
    eq_sub_iff_add_eq, sub_eq_iff_eq_add] <;> (split_ifs <;> simp_all)

theorem chi_nil : chi ([] : List (Step d)) = (0 : Fin d × (Fin d → ℤ) → R) := rfl

theorem chi_cons (s : Step d) (l : List (Step d)) :
    chi (s :: l) = chiStep s + (chi l : Fin d × (Fin d → ℤ) → R) := rfl

theorem chi_append (l₁ l₂ : List (Step d)) :
    chi (l₁ ++ l₂) = (chi l₁ : Fin d × (Fin d → ℤ) → R) + chi l₂ := by
  simp [chi]

theorem IsPath.append {l₁ l₂ : List (Step d)} {a b c : Fin d → ℤ} (h₁ : IsPath l₁ a b)
    (h₂ : IsPath l₂ b c) : IsPath (l₁ ++ l₂) a c := by
  induction l₁ generalizing a with
  | nil => cases h₁; exact h₂
  | cons s l ih => exact ⟨h₁.1, ih h₁.2⟩

/-- Step 2: a path from `a` to `b` has divergence `δ_b − δ_a`. -/
theorem path_divergence (l : List (Step d)) (a b : Fin d → ℤ) (h : IsPath l a b) :
    div (chi l) = delta (R := R) b - delta a := by
  induction l generalizing a with
  | nil => cases h; rw [chi_nil, div_zero]; simp
  | cons s l ih =>
    rw [chi_cons, div_add, step_divergence, ih _ h.2, h.1]; abel

/-- Step 2: a closed path has divergence `0`. -/
theorem loop_divergence (l : List (Step d)) (a : Fin d → ℤ) (h : IsPath l a a) :
    div (chi l : Fin d × (Fin d → ℤ) → R) = 0 := by
  rw [path_divergence l a a h, sub_self]

/-- Step 3, identity (D): a path from `a` to `b` plus any finite weighted sum of closed loops
has divergence `δ_b − δ_a`; the weights do not enter. -/
theorem profile_divergence {ι : Type*} (S : Finset ι) (w : ι → R) (loops : ι → List (Step d))
    (base : ι → Fin d → ℤ) (hloop : ∀ i ∈ S, IsPath (loops i) (base i) (base i))
    (l : List (Step d)) (a b : Fin d → ℤ) (h : IsPath l a b) :
    div (chi l + ∑ i ∈ S, w i • chi (loops i)) = delta (R := R) b - delta a := by
  rw [div_add, div_sum, path_divergence l a b h,
    sum_eq_zero fun i hi => by rw [div_smul, loop_divergence _ _ (hloop i hi), smul_zero],
    add_zero]

/-- Straight path of `n` forward steps in direction `μ` from `a`. -/
def straight (a : Fin d → ℤ) (μ : Fin d) : ℕ → List (Step d)
  | 0 => []
  | n + 1 => ⟨a, μ, true⟩ :: straight (a + ev μ) μ n

theorem straight_isPath (a : Fin d → ℤ) (μ : Fin d) (n : ℕ) :
    IsPath (straight a μ n) a (a + (n : ℤ) • ev μ) := by
  induction n generalizing a with
  | zero => simp [straight, IsPath]
  | succ n ih =>
    refine ⟨rfl, ?_⟩
    have := ih (a + ev μ)
    simp only [Step.stop, ite_true]
    convert this using 1; push_cast; rw [add_smul, one_smul]; abel

/-- (D) for the order-0 profile of H2_CERTIFY_P4 Step 1: the straight path `0 → L e_μ` plus
`Σ_i w_i χ` of loops `0 → d_i → d_i + L e_μ → L e_μ → 0` (four arbitrary path pieces) has
divergence `δ_{L e_μ} − δ_0`, for every choice of weights. -/
theorem P4_divergence {ι : Type*} (S : Finset ι) (w : ι → R) (μ : Fin d) (L : ℕ)
    (dd : ι → Fin d → ℤ) (p₁ p₂ p₃ p₄ : ι → List (Step d))
    (h₁ : ∀ i ∈ S, IsPath (p₁ i) 0 (dd i))
    (h₂ : ∀ i ∈ S, IsPath (p₂ i) (dd i) (dd i + (L : ℤ) • ev μ))
    (h₃ : ∀ i ∈ S, IsPath (p₃ i) (dd i + (L : ℤ) • ev μ) ((L : ℤ) • ev μ))
    (h₄ : ∀ i ∈ S, IsPath (p₄ i) ((L : ℤ) • ev μ) 0) :
    div (chi (straight 0 μ L) + ∑ i ∈ S, w i • chi (p₁ i ++ p₂ i ++ p₃ i ++ p₄ i))
      = delta (R := R) ((L : ℤ) • ev μ) - delta 0 := by
  refine profile_divergence S w _ (fun _ => 0) (fun i hi => ?_) _ 0 _ ?_
  · exact (((h₁ i hi).append (h₂ i hi)).append (h₃ i hi)).append (h₄ i hi)
  · simpa using straight_isPath (0 : Fin d → ℤ) μ L

end YmLean

#print axioms YmLean.div_add
#print axioms YmLean.div_smul
#print axioms YmLean.div_sum
#print axioms YmLean.step_divergence
#print axioms YmLean.path_divergence
#print axioms YmLean.loop_divergence
#print axioms YmLean.profile_divergence
#print axioms YmLean.straight_isPath
#print axioms YmLean.P4_divergence
