import YmLean.AbelianCount
import Mathlib.Analysis.InnerProductSpace.Projection.FiniteDimensional

/-!
# Abelian share, general form (U1_INFINITE_LATTICE.md Prop. 9.1; U1_VERIFY.md §2.6;
# BETA_FP_LEMMA43.md §5; NUMERICS §6) — OPUS_QUEUE item D3

`abelian_share` (AbelianCount.lean) is the case `d = 4`, `N = L^{4k}`, with the count
`4N − 4 − (N − 1)` written into the hypothesis. Here:

* `ab_dim_count`: the dimension count itself. `Q̃ : V → W` onto (`dim V = dN` bond variables,
  `dim W = d` coarse bonds), `D : G → V` injective (`dim G = N − 1` ghosts), `im D ⊆ ker Q̃` ⇒
  `dim(ker Q̃ ∩ (im D)^⊥) = dN − d − (N − 1)`.
* `abelian_share_gen`: any `d`, any `N ≥ 1` sites per cell, `d(d−1)/2·N` plaquettes ⇒
  `Ē/8 = (1 − 1/N)/d`. `abelian_share_block`: `d = 4`, block side `Λ` (`N = Λ⁴`) ⇒
  `𝒮^{ab}(Λ) = (1 − Λ^{−4})/4` (BETA_FP_LEMMA43 form; `Λ = L^k` gives `Sab L k`).
* `abelian_fine`: no constraint, Feynman gauge, `d − 1` physical directions per site ⇒ fine piece
  `1/d`; `abelian_fine_coarse`: coarse pieces `S − 1/d = −1/(dN)` (`= −L^{−4k}/4`, U1_VERIFY).
* `Sab_eq_sum` (`S_k = Σ_{j<k} β_{j+1}^{ab}`), `βab_geom` (ratio `L^{−4}`), `Sab_tendsto` (→ 1/4).
-/

open Finset Module

noncomputable section

namespace YmLean

/-- Dimension count of Prop. 9.1: `dim(ker Q̃ ∩ (im D)^⊥) = dN − d − (N − 1)` for `Q̃` onto a
`d`-dimensional space, `D` injective from an `(N − 1)`-dimensional space, `im D ⊆ ker Q̃`. -/
theorem ab_dim_count {V W G : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    [FiniteDimensional ℝ V] [AddCommGroup W] [Module ℝ W] [FiniteDimensional ℝ W]
    [AddCommGroup G] [Module ℝ G] [FiniteDimensional ℝ G]
    (Q : V →ₗ[ℝ] W) (D : G →ₗ[ℝ] V) (d N : ℕ) (hV : finrank ℝ V = d * N) (hW : finrank ℝ W = d)
    (hG : finrank ℝ G = N - 1) (hQ : Function.Surjective Q) (hD : Function.Injective D)
    (hDQ : LinearMap.range D ≤ LinearMap.ker Q) :
    finrank ℝ ((LinearMap.range D)ᗮ ⊓ LinearMap.ker Q : Submodule ℝ V) = d * N - d - (N - 1) := by
  have hker : finrank ℝ (LinearMap.ker Q) = d * N - d := by
    have := LinearMap.finrank_range_add_finrank_ker Q
    rw [LinearMap.range_eq_top.2 hQ, finrank_top, hW, hV] at this; omega
  have hrD : finrank ℝ (LinearMap.range D) = N - 1 := by
    rw [LinearMap.finrank_range_of_inj hD, hG]
  have := Submodule.finrank_add_inf_finrank_orthogonal hDQ
  rw [hker, hrD] at this
  omega

/-- **General abelian share.** `d` dimensions, `N ≥ 1` sites per cell, `d(d−1)/2 · N` plaquettes,
equipartition `(Σ_p E_p)/8 = ½(dN − d − (N − 1))` ⇒ `Ē/8 = (1 − 1/N)/d`. -/
theorem abelian_share_gen {π : Type*} (P : Finset π) (E : π → ℚ) (d N : ℕ) (hd : 2 ≤ d)
    (hN : 1 ≤ N) (hP : (P.card : ℚ) = d * (d - 1) / 2 * N)
    (hE : (∑ p ∈ P, E p) / 8 = (1 / 2) * ((d : ℚ) * N - d - ((N : ℚ) - 1))) :
    (∑ p ∈ P, E p) / P.card / 8 = (1 - 1 / (N : ℚ)) / d := by
  have hN' : (N : ℚ) ≠ 0 := by exact_mod_cast (by omega : N ≠ 0)
  have hd' : (d : ℚ) ≠ 0 := by exact_mod_cast (by omega : d ≠ 0)
  have hd1 : (d : ℚ) - 1 ≠ 0 := by
    have : (2 : ℚ) ≤ d := by exact_mod_cast hd
    linarith
  have hs : ∑ p ∈ P, E p = 4 * (((d : ℚ) - 1) * ((N : ℚ) - 1)) := by linarith
  rw [hP, hs]
  field_simp
  ring

/-- Prop. 9.1 with the dimension count derived (`ab_dim_count`): equipartition
`(Σ_p E_p)/8 = ½ dim(ker Q̃ ∩ (im D)^⊥)` ⇒ `Ē/8 = (1 − 1/N)/d`. -/
theorem abelian_share_dims {V W G : Type*} [NormedAddCommGroup V] [InnerProductSpace ℝ V]
    [FiniteDimensional ℝ V] [AddCommGroup W] [Module ℝ W] [FiniteDimensional ℝ W]
    [AddCommGroup G] [Module ℝ G] [FiniteDimensional ℝ G]
    (Q : V →ₗ[ℝ] W) (D : G →ₗ[ℝ] V) (d N : ℕ) (hd : 2 ≤ d) (hN : 1 ≤ N)
    (hV : finrank ℝ V = d * N) (hW : finrank ℝ W = d) (hG : finrank ℝ G = N - 1)
    (hQ : Function.Surjective Q) (hD : Function.Injective D)
    (hDQ : LinearMap.range D ≤ LinearMap.ker Q)
    {π : Type*} (P : Finset π) (E : π → ℚ) (hP : (P.card : ℚ) = d * (d - 1) / 2 * N)
    (hE : (∑ p ∈ P, E p) / 8 =
      (1 / 2) * (finrank ℝ ((LinearMap.range D)ᗮ ⊓ LinearMap.ker Q : Submodule ℝ V) : ℚ)) :
    (∑ p ∈ P, E p) / P.card / 8 = (1 - 1 / (N : ℚ)) / d := by
  rw [ab_dim_count Q D d N hV hW hG hQ hD hDQ] at hE
  refine abelian_share_gen P E d N hd hN hP ?_
  rw [hE]
  have h1 : d ≤ d * N := Nat.le_mul_of_pos_right d hN
  have h2 : N - 1 ≤ d * N - d := by
    have : d * N - d = d * (N - 1) := by rw [Nat.mul_sub_one]
    rw [this]; exact Nat.le_mul_of_pos_left _ (by omega)
  rw [Nat.cast_sub h2, Nat.cast_sub h1, Nat.cast_sub hN]
  push_cast; ring

/-- `d = 4`, block side `Λ ≥ 1` (`N = Λ⁴`): `𝒮^{ab}(Λ) = (1 − Λ^{−4})/4`. -/
theorem abelian_share_block {π : Type*} (P : Finset π) (E : π → ℚ) (Λ : ℕ) (hΛ : 1 ≤ Λ)
    (hP : (P.card : ℚ) = 6 * (Λ : ℚ) ^ 4)
    (hE : (∑ p ∈ P, E p) / 8 = (1 / 2) * (4 * (Λ : ℚ) ^ 4 - 4 - ((Λ : ℚ) ^ 4 - 1))) :
    (∑ p ∈ P, E p) / P.card / 8 = (1 - 1 / (Λ : ℚ) ^ 4) / 4 := by
  have := abelian_share_gen P E 4 (Λ ^ 4) (by norm_num) (Nat.one_le_pow _ _ hΛ)
    (by rw [hP]; push_cast; ring) (by rw [hE]; push_cast; ring)
  rw [this]; push_cast; ring

/-- The existing `Sab` is the block value at `Λ = L^k`. -/
theorem Sab_block (L k : ℕ) : Sab L k = (1 - 1 / ((L ^ k : ℕ) : ℚ) ^ 4) / 4 := by
  simp only [Sab]; push_cast; rw [← pow_mul, mul_comm]

/-- Fine piece (U1_VERIFY §2.6 addition): no constraint, Feynman gauge, per site `d` bond
variables minus one gauge direction, `d(d−1)/2` plaquettes: `(Σ_p E_p)/8 = ½(d − 1)` per site
⇒ `Ē/8 = 1/d` (`= 1/4` for `d = 4`). -/
theorem abelian_fine {π : Type*} (P : Finset π) (E : π → ℚ) (d : ℕ) (hd : 2 ≤ d)
    (hP : (P.card : ℚ) = d * (d - 1) / 2)
    (hE : (∑ p ∈ P, E p) / 8 = (1 / 2) * ((d : ℚ) - 1)) :
    (∑ p ∈ P, E p) / P.card / 8 = 1 / d := by
  have hd' : (d : ℚ) ≠ 0 := by exact_mod_cast (by omega : d ≠ 0)
  have hd1 : (d : ℚ) - 1 ≠ 0 := by
    have : (2 : ℚ) ≤ d := by exact_mod_cast hd
    linarith
  have hs : ∑ p ∈ P, E p = 4 * ((d : ℚ) - 1) := by linarith
  rw [hP, hs]
  field_simp
  ring

/-- Coarse pieces: `(1 − 1/N)/d − 1/d = −1/(dN)`; for `d = 4`, `N = L^{4k}`: `−L^{−4k}/4`. -/
theorem abelian_fine_coarse (d N : ℕ) (hd : d ≠ 0) (hN : N ≠ 0) :
    (1 - 1 / (N : ℚ)) / d - 1 / d = -(1 / ((d : ℚ) * N)) := by
  have : (d : ℚ) ≠ 0 := by exact_mod_cast hd
  have : (N : ℚ) ≠ 0 := by exact_mod_cast hN
  field_simp; ring

theorem Sab_coarse (L k : ℕ) : Sab L k - 1 / 4 = -(1 / (L : ℚ) ^ (4 * k)) / 4 := by
  simp only [Sab]; ring

/-- `S_k = Σ_{j<k} β_{j+1}^{ab}(0)` with `β_{j+1}^{ab} = S_{j+1} − S_j` (`S_0 = 0`). -/
theorem Sab_eq_sum (L k : ℕ) : Sab L k = ∑ j ∈ range k, (Sab L (j + 1) - Sab L j) := by
  rw [sum_range_sub (Sab L)]; simp [Sab]

/-- Geometric increments: `β_{j+2}^{ab} = L^{−4} β_{j+1}^{ab}`. -/
theorem βab_geom (L j : ℕ) (hL : 0 < L) :
    Sab L (j + 2) - Sab L (j + 1) = 1 / (L : ℚ) ^ 4 * (Sab L (j + 1) - Sab L j) := by
  rw [βab L (j + 1) hL, βab L j hL]
  have : (L : ℚ) ≠ 0 := by exact_mod_cast hL.ne'
  rw [show 4 * (j + 1) = 4 * j + 4 by ring, pow_add]
  field_simp

/-- `S_k^{ab} → 1/4` as `k → ∞` (`L ≥ 2`), in ℝ. -/
theorem Sab_tendsto (L : ℕ) (hL : 2 ≤ L) :
    Filter.Tendsto (fun k => ((Sab L k : ℚ) : ℝ)) Filter.atTop (nhds (1 / 4)) := by
  have hr : (1 / (L : ℝ) ^ 4) < 1 := by
    rw [div_lt_one (by positivity)]
    have : (2 : ℝ) ≤ L := by exact_mod_cast hL
    nlinarith [pow_le_pow_left₀ (by norm_num : (0 : ℝ) ≤ 2) this 4]
  have hg := tendsto_pow_atTop_nhds_zero_of_lt_one (by positivity) hr
  have : (fun k => ((Sab L k : ℚ) : ℝ)) = fun k => (1 - (1 / (L : ℝ) ^ 4) ^ k) / 4 := by
    funext k; simp only [Sab]; push_cast; rw [div_pow, one_pow, ← pow_mul]
  rw [this]
  simpa using ((hg.const_sub 1).div_const 4)

end YmLean

#print axioms YmLean.ab_dim_count
#print axioms YmLean.abelian_share_gen
#print axioms YmLean.abelian_share_dims
#print axioms YmLean.abelian_share_block
#print axioms YmLean.Sab_block
#print axioms YmLean.abelian_fine
#print axioms YmLean.abelian_fine_coarse
#print axioms YmLean.Sab_coarse
#print axioms YmLean.Sab_eq_sum
#print axioms YmLean.βab_geom
#print axioms YmLean.Sab_tendsto
