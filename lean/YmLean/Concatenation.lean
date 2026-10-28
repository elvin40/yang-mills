import Mathlib.Analysis.SpecialFunctions.Exp

/-!
# Concatenation lemma (WG_FULL §3.1 Lemma C, as used in §4.3 and §5.7)

Abstract form on a finite type `X` with a function `d : X → X → ℝ` (triangle inequality only;
`d ≥ 0` only where a rate is weakened). Composition rule of WG_FULL 0.2:
`(A ∘ B)(x, y) = Σ_z μ(z) A(x, z) B(z, y)`. Kernel bounds carry a weight `m(x, y)`:
`|K(x, y)| ≤ a · m(x, y) · e^{−δ d(x, y)}`.

Junction hypothesis `hS` (one CMP 96 Lemma 2.1-type sum per junction):
`Σ_z μ(z) m(x, z) m(z, y) e^{−θδ d(x, z)} ≤ c₁ m(x, y)`.
* WG_FULL convention: `μ(z) m(x, z) m(z, y) = m(x, y)` (telescoping), then `hS` follows from
  `Σ_z e^{−θδ d(x, z)} ≤ c₁` (`junction_of_telescope`).
* Plain μ-weighted case `m ≡ 1`: `hS` is `Σ_z μ(z) e^{−θδ d(x, z)} ≤ c₁` (`junction_of_weighted`).

Main results: `concat_two` (head at rate δ, tail at rate (1 − θ)δ), `concat_two_rate` (both at δ),
`concat_list` (m-fold product: constant `Π a_i · c₁^{m−1}`, rate `(1 − θ)δ`, the factor
`(1 − θ)` paid once for the whole product, WG_FULL 3.6(i)). Applying `concat_list` to the kernels
`|K_i|` gives the absolute-sum form of Lemma C(c).
-/

open Finset

namespace YmLean

variable {X : Type*} [Fintype X]

/-- Composition with weight μ, WG_FULL 0.2: `(A ∘ B)(x, y) = Σ_z μ(z) A(x, z) B(z, y)`. -/
def kcomp (μ : X → ℝ) (A B : X → X → ℝ) : X → X → ℝ := fun x y => ∑ z, μ z * A x z * B z y

/-- Right-nested product `K₁ ∘ (K₂ ∘ (⋯ ∘ K_m))` of a nonempty list `K₁ :: Ks`. -/
def kprod (μ : X → ℝ) : (X → X → ℝ) → List (X → X → ℝ) → X → X → ℝ
  | K, [] => K
  | K, K' :: Ks => kcomp μ K (kprod μ K' Ks)

variable (μ : X → ℝ) (m d : X → X → ℝ) {θ δ c₁ : ℝ}

/-- Rate weakening: `e^{−δ d} ≤ e^{−(1−θ)δ d}` for `d ≥ 0`, `θ, δ ≥ 0`. -/
theorem exp_rate_weaken {t : ℝ} (ht : 0 ≤ t) (hθ0 : 0 ≤ θ) (hδ : 0 ≤ δ) :
    Real.exp (-δ * t) ≤ Real.exp (-((1 - θ) * δ) * t) :=
  Real.exp_le_exp.mpr (by nlinarith [mul_nonneg (mul_nonneg hθ0 hδ) ht])

/-- **Lemma C, two kernels, one junction** (WG_FULL §3.4 Steps 4–5 for N = 2, in the form used
by the induction): `A` at rate δ, `B` at rate `(1 − θ)δ`. The θ-split
`e^{−δ d(x,z)} = e^{−(1−θ)δ d(x,z)} e^{−θδ d(x,z)}`, the triangle inequality
`d(x,y) ≤ d(x,z) + d(z,y)`, and one junction sum `hS` give rate `(1 − θ)δ`, constant `a b c₁`. -/
theorem concat_two (hμ : ∀ z, 0 ≤ μ z) (hm : ∀ x y, 0 ≤ m x y)
    (htri : ∀ x z y, d x y ≤ d x z + d z y) (hθ : θ ≤ 1) (hδ : 0 ≤ δ)
    (hS : ∀ x y, ∑ z, μ z * m x z * m z y * Real.exp (-(θ * δ) * d x z) ≤ c₁ * m x y)
    {A B : X → X → ℝ} {a b : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b)
    (hA : ∀ x y, |A x y| ≤ a * m x y * Real.exp (-δ * d x y))
    (hB : ∀ x y, |B x y| ≤ b * m x y * Real.exp (-((1 - θ) * δ) * d x y)) (x y : X) :
    |kcomp μ A B x y| ≤ a * b * c₁ * m x y * Real.exp (-((1 - θ) * δ) * d x y) := by
  have h1 : 0 ≤ (1 - θ) * δ := mul_nonneg (sub_nonneg.2 hθ) hδ
  have split : ∀ z, Real.exp (-δ * d x z) * Real.exp (-((1 - θ) * δ) * d z y) ≤
      Real.exp (-(θ * δ) * d x z) * Real.exp (-((1 - θ) * δ) * d x y) := fun z => by
    rw [← Real.exp_add, ← Real.exp_add]
    exact Real.exp_le_exp.mpr (by nlinarith [mul_le_mul_of_nonneg_left (htri x z y) h1])
  calc |kcomp μ A B x y| ≤ ∑ z, |μ z * A x z * B z y| := abs_sum_le_sum_abs _ _
    _ ≤ ∑ z, μ z * (a * m x z * Real.exp (-δ * d x z)) *
          (b * m z y * Real.exp (-((1 - θ) * δ) * d z y)) := sum_le_sum fun z _ => by
        rw [abs_mul, abs_mul, abs_of_nonneg (hμ z)]
        exact mul_le_mul (mul_le_mul_of_nonneg_left (hA x z) (hμ z)) (hB z y) (abs_nonneg _)
          (mul_nonneg (hμ z) ((abs_nonneg _).trans (hA x z)))
    _ ≤ ∑ z, a * b * Real.exp (-((1 - θ) * δ) * d x y) *
          (μ z * m x z * m z y * Real.exp (-(θ * δ) * d x z)) := sum_le_sum fun z _ => by
        have h := mul_le_mul_of_nonneg_left (split z)
          (mul_nonneg (mul_nonneg ha hb) (mul_nonneg (mul_nonneg (hμ z) (hm x z)) (hm z y)))
        linarith
    _ = a * b * Real.exp (-((1 - θ) * δ) * d x y) *
          ∑ z, μ z * m x z * m z y * Real.exp (-(θ * δ) * d x z) := by rw [mul_sum]
    _ ≤ a * b * Real.exp (-((1 - θ) * δ) * d x y) * (c₁ * m x y) :=
        mul_le_mul_of_nonneg_left (hS x y) (by positivity)
    _ = _ := by ring

/-- **Lemma C, two kernels at the common rate δ** (WG_FULL 3.1(c), N = 2): both factors at rate δ
give rate `(1 − θ)δ` and constant `a b c₁`. -/
theorem concat_two_rate (hμ : ∀ z, 0 ≤ μ z) (hm : ∀ x y, 0 ≤ m x y) (hd : ∀ x y, 0 ≤ d x y)
    (htri : ∀ x z y, d x y ≤ d x z + d z y) (hθ0 : 0 ≤ θ) (hθ : θ ≤ 1) (hδ : 0 ≤ δ)
    (hS : ∀ x y, ∑ z, μ z * m x z * m z y * Real.exp (-(θ * δ) * d x z) ≤ c₁ * m x y)
    {A B : X → X → ℝ} {a b : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b)
    (hA : ∀ x y, |A x y| ≤ a * m x y * Real.exp (-δ * d x y))
    (hB : ∀ x y, |B x y| ≤ b * m x y * Real.exp (-δ * d x y)) (x y : X) :
    |kcomp μ A B x y| ≤ a * b * c₁ * m x y * Real.exp (-((1 - θ) * δ) * d x y) :=
  concat_two μ m d hμ hm htri hθ hδ hS ha hb hA (fun x y => (hB x y).trans
    (mul_le_mul_of_nonneg_left (exp_rate_weaken (hd x y) hθ0 hδ)
      (mul_nonneg hb (hm x y)))) x y

/-- **Lemma C, m-fold** (WG_FULL 3.1(c), §3.4, Remark 3.6(i)). Kernels `K₁ :: Ks` with bounds
`|K_i(x,y)| ≤ a_i m(x,y) e^{−δ d(x,y)}` (the list `L` holds the pairs `(K_i, a_i)`, i ≥ 2). Then
`|(K₁ ∘ ⋯ ∘ K_m)(x,y)| ≤ (Π a_i) c₁^{m−1} m(x,y) e^{−(1−θ)δ d(x,y)}`: one junction sum `c₁`
per junction (m − 1 of them), and the rate loss `(1 − θ)` once for the whole product.
Induction on the list: the tail already has rate `(1 − θ)δ`, the head has rate δ (`concat_two`). -/
theorem concat_list (hμ : ∀ z, 0 ≤ μ z) (hm : ∀ x y, 0 ≤ m x y) (hd : ∀ x y, 0 ≤ d x y)
    (htri : ∀ x z y, d x y ≤ d x z + d z y) (hθ0 : 0 ≤ θ) (hθ : θ ≤ 1) (hδ : 0 ≤ δ)
    (hc₁ : 0 ≤ c₁)
    (hS : ∀ x y, ∑ z, μ z * m x z * m z y * Real.exp (-(θ * δ) * d x z) ≤ c₁ * m x y)
    (L : List ((X → X → ℝ) × ℝ)) (K : X → X → ℝ) (a : ℝ)
    (hK : ∀ p ∈ (K, a) :: L, 0 ≤ p.2 ∧ ∀ x y, |p.1 x y| ≤ p.2 * m x y * Real.exp (-δ * d x y))
    (x y : X) :
    |kprod μ K (L.map Prod.fst) x y| ≤
      (a :: L.map Prod.snd).prod * c₁ ^ L.length * m x y * Real.exp (-((1 - θ) * δ) * d x y) := by
  induction L generalizing K a x y with
  | nil =>
    obtain ⟨ha, hK⟩ := hK _ List.mem_cons_self
    simpa using (hK x y).trans (mul_le_mul_of_nonneg_left (exp_rate_weaken (hd x y) hθ0 hδ)
      (mul_nonneg ha (hm x y)))
  | cons p L ih =>
    obtain ⟨ha, hKa⟩ := hK _ List.mem_cons_self
    have hP : ∀ q ∈ p :: L, 0 ≤ q.2 := fun q hq => (hK q (List.mem_cons_of_mem _ hq)).1
    have tail := ih p.1 p.2 (fun q hq => hK q (List.mem_cons_of_mem _ hq))
    have hb : 0 ≤ (p.2 :: L.map Prod.snd).prod * c₁ ^ L.length :=
      mul_nonneg (List.prod_nonneg (by simpa using hP)) (pow_nonneg hc₁ _)
    have h := concat_two μ m d hμ hm htri hθ hδ hS ha hb hKa tail x y
    simp only [List.map_cons, kprod, List.prod_cons, List.length_cons] at h ⊢
    calc _ ≤ _ := h
      _ = _ := by ring

/-- Junction hypothesis from the WG_FULL 0.2 telescoping `μ(z) m(x,z) m(z,y) = m(x,y)` and the
CMP 96 Lemma 2.1 sum `Σ_z e^{−θδ d(x,z)} ≤ c₁` (unweighted, as in WG_FULL §3.4 Step 5). -/
theorem junction_of_telescope (hm : ∀ x y, 0 ≤ m x y)
    (htel : ∀ x z y, μ z * m x z * m z y = m x y)
    (hsum : ∀ x, ∑ z, Real.exp (-(θ * δ) * d x z) ≤ c₁) (x y : X) :
    ∑ z, μ z * m x z * m z y * Real.exp (-(θ * δ) * d x z) ≤ c₁ * m x y := by
  simp only [htel, ← mul_sum]
  nlinarith [mul_le_mul_of_nonneg_left (hsum x) (hm x y)]

/-- Junction hypothesis for the plain μ-weighted rule (`m ≡ 1`): the Schur sum weighted by μ. -/
theorem junction_of_weighted (hsum : ∀ x, ∑ z, μ z * Real.exp (-(θ * δ) * d x z) ≤ c₁) (x y : X) :
    ∑ z, μ z * (fun _ _ => (1 : ℝ)) x z * (fun _ _ => (1 : ℝ)) z y *
      Real.exp (-(θ * δ) * d x z) ≤ c₁ * (fun _ _ => (1 : ℝ)) x y := by
  simpa using hsum x

end YmLean
