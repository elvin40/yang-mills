# Statement check: WalkAffine.lean

Build: `lake build` from lean/. No `sorry`. Axioms of all five printed theorems: `[propext, Classical.choice, Quot.sound]`.

Source: SOURCES_A3_SIGMA.md §3.2 ("Convex-combination structure"); closes the finite-sum part of the gap in VERIFY_Interp.md §1 ("that C_s is affine in each coordinate is not formalized").

## Notation

- Walks: any type `W`; a finite family is `Ω : Finset W`. Cubes: any type `S` with decidable equality; `cubes ω : Finset S` is the set of σ_0 cubes met by ω, so each cube enters once (degree ≤ 1).
- `T ω : E`, E any real vector space (covers `Matrix n n ℝ` and kernels).
- `walkWeight cubes s ω` = s^ω = Π_{c∈cubes ω} s_c; `walkSum Ω cubes T s` = C(s) = Σ_{ω∈Ω} s^ω T_ω.
- `AffineEach`, `corner`, `cornerWeight`, `multilinear_convex`, `monomial_affine`: Interp.lean.

## Theorems

| Lean | Markdown statement | Match |
|---|---|---|
| `affineEach_sum Ω F hF`: each F ω (ω ∈ Ω) `AffineEach` ⇒ s ↦ Σ_{ω∈Ω} F ω s `AffineEach` | VERIFY_Interp.md §1: "Finite sums of AffineEach functions are AffineEach (linearity), but this lemma is not stated" | Exact. |
| `affineEach_smul_const f hf v`: f : (S → ℝ) → ℝ `AffineEach` ⇒ s ↦ f s • v `AffineEach` | (step: s^ω T_ω with T_ω s-free) | Exact. |
| `walkSum_affineEach Ω cubes T`: `AffineEach (walkSum Ω cubes T)` | 3.2: "s^ω is MULTILINEAR in s … So, for finite σ_0 … C_s = Σ_τ w_τ(s) C_τ" (the multilinearity of C_s it uses) | Exact for a finite walk family. |
| `walkSum_convex Ω cubes T s hs`: S a Fintype, s ∈ [0,1]^S ⇒ C(s) = Σ_U w_U(s) C(corner_U), w_U(s) ≥ 0, Σ_U w_U(s) = 1 | 3.2: "C_s = Σ_{τ∈{0,1}^{σ_0}} w_τ(s) C_τ, w_τ(s) ≥ 0, Σ_τ w_τ(s) = 1" | Exact for finite Ω, finite σ_0 (τ = indicator of U). |
| `walkSum_corner Ω cubes T U`: C(corner_U) = Σ_{ω∈Ω, cubes ω ⊆ U} T_ω | 3.2: "Each corner C_τ is the walk sum with the walks meeting {Δ: τ(Δ) = 0} deleted" | Exact: cubes ω ⊆ U ⇔ ω meets no cube with τ = 0. |

## Not formalized

1. Infinite walk sums. The note's C_s is an absolutely convergent infinite sum (W); passing `AffineEach` to the limit (each identity is linear, so it survives pointwise limits) is not stated. Lean covers the finite case only.
2. That the [13] expansion of C^{(k)}(Z_0, s) is a walk sum with s-free T_ω (A3_SIGMA §6 grade [I]); here this is the definition.
3. The consequences (a) symmetry and (b) the λ_min/λ_max bracket of 3.2.
