import YmLean.Interp

/-!
# Affineness of a finite walk sum (SOURCES_A3_SIGMA.md §3.2; VERIFY_Interp.md §1 gap)

For a finite family Ω of walks, each with a cube set `cubes ω` and a coefficient `T ω` in a real
vector space (matrices, kernels), the walk sum C(s) = Σ_{ω∈Ω} s^ω T_ω with
s^ω = Π_{c∈cubes ω} s_c is affine in each coordinate (`walkSum_affineEach`), so
`multilinear_convex` applies (`walkSum_convex`). `walkSum_corner`: the corner value at τ = 1_T
is the walk sum over the walks with every cube in T (A3_SIGMA §3.2: "the walk sum with the walks
meeting {Δ: τ(Δ) = 0} deleted").
-/

open Finset

namespace YmLean

variable {S W : Type*} [DecidableEq S] {E : Type*} [AddCommGroup E] [Module ℝ E]

/-- Walk weight s^ω = Π_{c ∈ cubes(ω)} s_c (A3_SIGMA §3.2). -/
def walkWeight (cubes : W → Finset S) (s : S → ℝ) (ω : W) : ℝ := ∏ c ∈ cubes ω, s c

/-- Finite walk sum C(s) = Σ_{ω∈Ω} s^ω T_ω (A3_SIGMA §2–§3, finite volume). -/
def walkSum (Ω : Finset W) (cubes : W → Finset S) (T : W → E) (s : S → ℝ) : E :=
  ∑ ω ∈ Ω, walkWeight cubes s ω • T ω

/-- A finite sum of functions affine in each coordinate is affine in each coordinate. -/
theorem affineEach_sum {ι : Type*} (Ω : Finset ι) (F : ι → (S → ℝ) → E)
    (hF : ∀ ω ∈ Ω, AffineEach (F ω)) : AffineEach (fun s => ∑ ω ∈ Ω, F ω s) := by
  intro s c t
  simp only [smul_sum, ← sum_add_distrib]
  exact sum_congr rfl fun ω hω => hF ω hω s c t

/-- A scalar function affine in each coordinate times a fixed vector. -/
theorem affineEach_smul_const (f : (S → ℝ) → ℝ) (hf : AffineEach f) (v : E) :
    AffineEach (fun s => f s • v) := by
  intro s c t
  simp only [hf s c t, add_smul, smul_smul, smul_eq_mul]

/-- A3_SIGMA §3.2: C(s) = Σ_ω s^ω T_ω is affine in each s_c (Ω finite). -/
theorem walkSum_affineEach (Ω : Finset W) (cubes : W → Finset S) (T : W → E) :
    AffineEach (walkSum Ω cubes T) :=
  affineEach_sum Ω _ fun ω _ => affineEach_smul_const _ (monomial_affine (cubes ω)) (T ω)

/-- A3_SIGMA §3.2: for s ∈ [0,1]^S, C(s) = Σ_T w_T(s) C(corner_T), w_T(s) ≥ 0,
Σ_T w_T(s) = 1 (`multilinear_convex` applied to `walkSum_affineEach`). -/
theorem walkSum_convex [Fintype S] (Ω : Finset W) (cubes : W → Finset S) (T : W → E)
    (s : S → ℝ) (hs : ∀ c, 0 ≤ s c ∧ s c ≤ 1) :
    walkSum Ω cubes T s = ∑ U : Finset S, cornerWeight s U • walkSum Ω cubes T (corner U) ∧
      (∀ U, 0 ≤ cornerWeight s U) ∧ ∑ U : Finset S, cornerWeight s U = 1 :=
  multilinear_convex _ (walkSum_affineEach Ω cubes T) s hs

/-- A3_SIGMA §3.2: the corner C_τ, τ = 1_U, is the walk sum over the walks whose cubes all lie
in U (walks meeting {τ = 0} deleted). -/
theorem walkSum_corner (Ω : Finset W) (cubes : W → Finset S) (T : W → E) (U : Finset S) :
    walkSum Ω cubes T (corner U) = ∑ ω ∈ Ω.filter (fun ω => cubes ω ⊆ U), T ω := by
  rw [walkSum, sum_filter]
  refine sum_congr rfl fun ω _ => ?_
  by_cases h : cubes ω ⊆ U
  · rw [if_pos h, walkWeight, prod_eq_one fun c hc => by simp [corner, h hc], one_smul]
  · obtain ⟨c, hc, hcU⟩ := not_subset.mp h
    rw [if_neg h, walkWeight, prod_eq_zero hc (by simp [corner, hcU]), zero_smul]

end YmLean

#print axioms YmLean.affineEach_sum
#print axioms YmLean.affineEach_smul_const
#print axioms YmLean.walkSum_affineEach
#print axioms YmLean.walkSum_convex
#print axioms YmLean.walkSum_corner
