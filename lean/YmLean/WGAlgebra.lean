import Mathlib.Analysis.CStarAlgebra.Matrix
import Mathlib.Analysis.SpecificLimits.Normed
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
# WG algebra (LEAN_CATALOGUE.md wave 2, item 4: P16 + P18 + P21)

Sources: `../WG_FULL.md` §1.2 (L-228 (Lemma N)), §2.2–2.6 (polarization of `V = −Δ′_π`, 6 and 24
patterns, `N_V = 9`), §4.3 and §4.7 (step factor `ρ_*`, WG-1 exponent `10 = N_V + 1`),
§5.1 (`G₁⁻¹ = G⁻¹ − Δ_π^{(2)}`, four-term expansion (3.135)), §5.6–5.7 and 5.10(b)
(`k_2 = 12`, `M₁^{−12}`); `../WG_FULL_VERIFY.md` items (4), (6), (7) and the regrade
(exponents redone: `10 = N_V + 1`, `12 = k_2`).

Norm in (a): the ℓ² operator norm `Matrix.Norms.L2Operator`. Part (b) works over `ℝ` with the
quadratic forms `x ⬝ᵥ (M *ᵥ x)` and Mathlib's `Matrix.PosDef` / `Matrix.PosSemidef`; the Loewner
order `A ≤ B` is written `(B − A).PosSemidef`. Part (c) uses natural powers only (no `rpow`):
`ε_V^{1/10}` is a variable `r ≥ 0` with `r ^ 10 = ε_V`.
-/

open Matrix Finset
open scoped Matrix.Norms.L2Operator

namespace YmLean.WGAlgebra

set_option linter.unusedSectionVars false

section LemmaN

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n]

/-- L-228 (Lemma N). WG_FULL §1.2, the partial-sum identity: with `x = −G₀V` and `S_N = Σ_{k<N} x^k G₀`,
`(G₀⁻¹ + V) S_N = 1 − G₀⁻¹ x^N G₀`. (Source form: `S_N = Σ G₀(Δ′_πG₀)^k`, `V = −Δ′_π`;
`x^k G₀ = G₀(−VG₀)^k`.) -/
theorem lemmaN_partial (G₀ V : Matrix n n 𝕜) (hG₀ : IsUnit G₀) (N : ℕ) :
    (G₀⁻¹ + V) * ∑ k ∈ range N, (-(G₀ * V)) ^ k * G₀ = 1 - G₀⁻¹ * (-(G₀ * V)) ^ N * G₀ := by
  have hd : IsUnit G₀.det := (isUnit_iff_isUnit_det _).mp hG₀
  have hA : G₀⁻¹ + V = G₀⁻¹ * (1 - -(G₀ * V)) := by
    rw [sub_neg_eq_add, mul_add, mul_one, ← mul_assoc, nonsing_inv_mul _ hd, one_mul]
  rw [hA, ← Finset.sum_mul, mul_assoc, ← mul_assoc (1 - _), mul_neg_geom_sum, ← mul_assoc,
    mul_sub, mul_one, sub_mul, nonsing_inv_mul _ hd]

/-- **L-228 (Lemma N)** (WG_FULL §1.2, finite volume): `‖G₀V‖ < 1` ⇒ `G₀⁻¹ + V` is invertible,
`(G₀⁻¹ + V)⁻¹ = Σ_k (−G₀V)^k G₀`, and `‖(G₀⁻¹ + V)⁻¹‖ ≤ ‖G₀‖ / (1 − ‖G₀V‖)`. No separate
existence assumption on `G`: the series gives it. -/
theorem lemmaN (G₀ V : Matrix n n 𝕜) (hG₀ : IsUnit G₀) (h : ‖G₀ * V‖ < 1) :
    IsUnit (G₀⁻¹ + V) ∧ (G₀⁻¹ + V)⁻¹ = ∑' k : ℕ, (-(G₀ * V)) ^ k * G₀ ∧
      ‖(G₀⁻¹ + V)⁻¹‖ ≤ ‖G₀‖ / (1 - ‖G₀ * V‖) := by
  have : CompleteSpace (Matrix n n 𝕜) := FiniteDimensional.complete 𝕜 _
  have hd : IsUnit G₀.det := (isUnit_iff_isUnit_det _).mp hG₀
  set x := -(G₀ * V) with hx
  have hxn : ‖x‖ < 1 := by rwa [hx, norm_neg]
  set S := ∑' k : ℕ, x ^ k
  have hA : G₀⁻¹ + V = G₀⁻¹ * (1 - x) := by
    rw [hx, sub_neg_eq_add, mul_add, mul_one, ← mul_assoc, nonsing_inv_mul _ hd, one_mul]
  have hright : (G₀⁻¹ + V) * (S * G₀) = 1 := by
    rw [hA, mul_assoc, ← mul_assoc (1 - x), mul_neg_geom_series x hxn, one_mul,
      nonsing_inv_mul _ hd]
  have hinv : (G₀⁻¹ + V)⁻¹ = S * G₀ := inv_eq_right_inv hright
  refine ⟨⟨⟨_, _, hright, mul_eq_one_comm.mp hright⟩, rfl⟩,
    by rw [hinv, (summable_geometric_of_norm_lt_one hxn).tsum_mul_right], ?_⟩
  have hS : S = 1 + x * S := by
    have := mul_neg_geom_series x hxn
    rw [sub_mul, one_mul] at this
    exact (eq_add_of_sub_eq this)
  have hfix : S * G₀ = G₀ + x * (S * G₀) := by
    conv_lhs => rw [hS]
    rw [add_mul, one_mul, mul_assoc]
  have hb : ‖S * G₀‖ ≤ ‖G₀‖ + ‖x‖ * ‖S * G₀‖ := by
    calc ‖S * G₀‖ = ‖G₀ + x * (S * G₀)‖ := by rw [← hfix]
      _ ≤ _ := (norm_add_le _ _).trans (add_le_add le_rfl (norm_mul_le _ _))
  have hxV : ‖x‖ = ‖G₀ * V‖ := by rw [hx, norm_neg]
  rw [hinv, ← hxV, le_div_iff₀ (by linarith)]
  nlinarith [norm_nonneg (S * G₀)]

/-- L-228 (Lemma N) for `G₁` (WG_FULL §5.1): `G₁⁻¹ = G⁻¹ − Δ_π^{(2)}`, `‖GΔ_π^{(2)}‖ < 1` ⇒
`G₁ = Σ_k (GΔ_π^{(2)})^k G` and `‖G₁‖ ≤ ‖G‖ / (1 − ‖GΔ_π^{(2)}‖)`. -/
theorem lemmaN_G1 (G Δ : Matrix n n 𝕜) (hG : IsUnit G) (h : ‖G * Δ‖ < 1) :
    IsUnit (G⁻¹ - Δ) ∧ (G⁻¹ - Δ)⁻¹ = ∑' k : ℕ, (G * Δ) ^ k * G ∧
      ‖(G⁻¹ - Δ)⁻¹‖ ≤ ‖G‖ / (1 - ‖G * Δ‖) := by
  have := lemmaN G (-Δ) hG (by rwa [mul_neg, norm_neg])
  simpa only [← sub_eq_add_neg, mul_neg, neg_neg, norm_neg] using this

/-- Resolvent identity (WG_FULL §5.1): `G₁ = G + G Δ_π^{(2)} G₁` for `G₁ = (G⁻¹ − Δ_π^{(2)})⁻¹`. -/
theorem resolvent_G1 (G Δ : Matrix n n 𝕜) (hG : IsUnit G) (hK : IsUnit (G⁻¹ - Δ)) :
    (G⁻¹ - Δ)⁻¹ = G + G * Δ * (G⁻¹ - Δ)⁻¹ := by
  have hd : IsUnit G.det := (isUnit_iff_isUnit_det _).mp hG
  have hKd : IsUnit (G⁻¹ - Δ).det := (isUnit_iff_isUnit_det _).mp hK
  calc (G⁻¹ - Δ)⁻¹ = G * (G⁻¹ - Δ) * (G⁻¹ - Δ)⁻¹ + G * Δ * (G⁻¹ - Δ)⁻¹ := by
        rw [mul_sub, mul_nonsing_inv _ hd, sub_mul, one_mul]; abel
    _ = G + G * Δ * (G⁻¹ - Δ)⁻¹ := by rw [mul_assoc G, mul_nonsing_inv _ hKd, mul_one]

/-- The four-term expansion (WG_FULL §5.1, (3.135)): with `B = DG′RD*`, `Π = 1 − B`,
`Π*Δ^{(2)}Π = Δ^{(2)} − B*Δ^{(2)} − Δ^{(2)}B + B*Δ^{(2)}B`, and `B* = DRG′D*` when
`G′* = G′`, `R* = R`. -/
theorem deltaPi2_expand {m : Type*} [Fintype m] (D : Matrix n m 𝕜) (G' R : Matrix m m 𝕜) (Δ2 : Matrix n n 𝕜)
    (hG' : G'ᴴ = G') (hR : Rᴴ = R) :
    (1 - D * G' * R * Dᴴ)ᴴ * Δ2 * (1 - D * G' * R * Dᴴ) = Δ2 - D * R * G' * Dᴴ * Δ2 -
      Δ2 * (D * G' * R * Dᴴ) + D * R * G' * Dᴴ * Δ2 * (D * G' * R * Dᴴ) := by
  simp only [conjTranspose_sub, conjTranspose_one, conjTranspose_mul, conjTranspose_conjTranspose,
    hG', hR, Matrix.mul_sub, Matrix.sub_mul, Matrix.one_mul, Matrix.mul_one, Matrix.mul_assoc]
  abel

end LemmaN

section Loewner

variable {n : Type*} [Fintype n] [DecidableEq n]

private lemma psd_of (M : Matrix n n ℝ) (hM : M.IsHermitian) (h : ∀ x, 0 ≤ x ⬝ᵥ (M *ᵥ x)) :
    M.PosSemidef :=
  PosSemidef.of_dotProduct_mulVec_nonneg hM fun x => by simpa using h x

private lemma qf_smul (c : ℝ) (M : Matrix n n ℝ) (x : n → ℝ) :
    x ⬝ᵥ ((c • M) *ᵥ x) = c * (x ⬝ᵥ (M *ᵥ x)) := by
  simp [smul_mulVec, dotProduct_smul]

/-- Operator antitonicity of the inverse (real symmetric matrices), proved with quadratic forms:
`0 ≤ A ≤ B` (Loewner), `A`, `B` invertible ⇒ `⟨x, B⁻¹x⟩ ≤ ⟨x, A⁻¹x⟩`. With `y = B⁻¹x`,
`z = A⁻¹x`: `⟨y, x⟩ = ⟨y, By⟩ ≥ ⟨y, Ay⟩ ≥ 2⟨y, x⟩ − ⟨z, x⟩`, the last from `⟨y−z, A(y−z)⟩ ≥ 0`. -/
theorem inv_antitone (A B : Matrix n n ℝ) (hA : A.PosSemidef) (hAB : (B - A).PosSemidef)
    (hAu : IsUnit A) (hBu : IsUnit B) (x : n → ℝ) : x ⬝ᵥ (B⁻¹ *ᵥ x) ≤ x ⬝ᵥ (A⁻¹ *ᵥ x) := by
  have hAd := (isUnit_iff_isUnit_det _).mp hAu
  have hBd := (isUnit_iff_isUnit_det _).mp hBu
  have hy : B *ᵥ (B⁻¹ *ᵥ x) = x := by rw [mulVec_mulVec, mul_nonsing_inv _ hBd, one_mulVec]
  have hz : A *ᵥ (A⁻¹ *ᵥ x) = x := by rw [mulVec_mulVec, mul_nonsing_inv _ hAd, one_mulVec]
  have hT : Aᵀ = A := by
    have := hA.1; rwa [IsHermitian, conjTranspose_eq_transpose_of_trivial] at this
  generalize B⁻¹ *ᵥ x = y at hy ⊢
  generalize A⁻¹ *ᵥ x = z at hz ⊢
  have hsym : z ⬝ᵥ (A *ᵥ y) = x ⬝ᵥ y := by rw [dotProduct_mulVec, ← mulVec_transpose, hT, hz]
  have h1 := hAB.dotProduct_mulVec_nonneg y
  rw [star_trivial, sub_mulVec, dotProduct_sub, hy] at h1
  have h2 := hA.dotProduct_mulVec_nonneg (y - z)
  rw [star_trivial, mulVec_sub, dotProduct_sub, sub_dotProduct, sub_dotProduct, hz, hsym] at h2
  rw [dotProduct_comm y x] at h1 h2
  rw [dotProduct_comm z x] at h2
  linarith

/-- WG_FULL §5.1, two-sided form: `G > 0`, `Δ = Δ_π^{(2)}` symmetric,
`|⟨x, Δx⟩| ≤ δ⟨x, G⁻¹x⟩` with `0 ≤ δ < 1` ⇒ `G₁⁻¹ = G⁻¹ − Δ` is positive definite (so `G₁`
exists), `G₁ = G + GΔG₁`, and `G/(1 + δ) ≤ G₁ ≤ G/(1 − δ)` in the Loewner order. -/
theorem G1_loewner (G Δ : Matrix n n ℝ) (hG : G.PosDef) (hΔ : Δ.IsHermitian) {δ : ℝ}
    (hδ0 : 0 ≤ δ) (hδ1 : δ < 1) (hform : ∀ x, |x ⬝ᵥ (Δ *ᵥ x)| ≤ δ * (x ⬝ᵥ (G⁻¹ *ᵥ x))) :
    (G⁻¹ - Δ).PosDef ∧ (G⁻¹ - Δ)⁻¹ = G + G * Δ * (G⁻¹ - Δ)⁻¹ ∧
      ((G⁻¹ - Δ)⁻¹ - (1 + δ)⁻¹ • G).PosSemidef ∧ ((1 - δ)⁻¹ • G - (G⁻¹ - Δ)⁻¹).PosSemidef := by
  have hGi := hG.inv
  have hGd := (isUnit_iff_isUnit_det _).mp hG.isUnit
  have qK : ∀ x, x ⬝ᵥ ((G⁻¹ - Δ) *ᵥ x) = x ⬝ᵥ (G⁻¹ *ᵥ x) - x ⬝ᵥ (Δ *ᵥ x) := fun x => by
    rw [sub_mulVec, dotProduct_sub]
  have lo : ∀ x, (1 - δ) * (x ⬝ᵥ (G⁻¹ *ᵥ x)) ≤ x ⬝ᵥ ((G⁻¹ - Δ) *ᵥ x) := fun x => by
    rw [qK]; linarith [(abs_le.mp (hform x)).2]
  have hi : ∀ x, x ⬝ᵥ ((G⁻¹ - Δ) *ᵥ x) ≤ (1 + δ) * (x ⬝ᵥ (G⁻¹ *ᵥ x)) := fun x => by
    rw [qK]; linarith [(abs_le.mp (hform x)).1]
  have hpos : ∀ x, x ≠ 0 → 0 < x ⬝ᵥ (G⁻¹ *ᵥ x) := fun x hx => by
    simpa using hGi.dotProduct_mulVec_pos hx
  have hKH : (G⁻¹ - Δ).IsHermitian := hGi.1.sub hΔ
  have hsa : ∀ c : ℝ, IsSelfAdjoint c := fun c => IsSelfAdjoint.all c
  have hK : (G⁻¹ - Δ).PosDef := PosDef.of_dotProduct_mulVec_pos hKH fun x hx => by
    have := mul_pos (by linarith : 0 < 1 - δ) (hpos x hx)
    simpa using this.trans_le (lo x)
  have pdS : ∀ c : ℝ, 0 < c → (c • G⁻¹).PosDef := fun c hc =>
    PosDef.of_dotProduct_mulVec_pos (hGi.1.smul (hsa c)) fun x hx => by
      simpa [qf_smul] using mul_pos hc (hpos x hx)
  have invS : ∀ c : ℝ, c ≠ 0 → (c • G⁻¹)⁻¹ = c⁻¹ • G := fun c hc => inv_eq_right_inv (by
    rw [Matrix.smul_mul, Matrix.mul_smul, smul_smul, nonsing_inv_mul _ hGd,
      mul_inv_cancel₀ hc, one_smul])
  have hKi := hK.inv
  refine ⟨hK, resolvent_G1 G Δ hG.isUnit hK.isUnit, ?_, ?_⟩
  · have h := inv_antitone (G⁻¹ - Δ) ((1 + δ) • G⁻¹) hK.posSemidef
      (psd_of _ ((hGi.1.smul (hsa _)).sub hKH) fun x => by
        rw [sub_mulVec, dotProduct_sub, qf_smul]; linarith [hi x])
      hK.isUnit (pdS _ (by linarith)).isUnit
    rw [invS _ (by linarith)] at h
    exact psd_of _ (hKi.1.sub (hG.1.smul (hsa _))) fun x => by
      rw [sub_mulVec, dotProduct_sub]; linarith [h x]
  · have h := inv_antitone ((1 - δ) • G⁻¹) (G⁻¹ - Δ) (pdS _ (by linarith)).posSemidef
      (psd_of _ (hKH.sub (hGi.1.smul (hsa _))) fun x => by
        rw [sub_mulVec, dotProduct_sub, qf_smul]; linarith [lo x])
      (pdS _ (by linarith)).isUnit hK.isUnit
    rw [invS _ (by linarith)] at h
    exact psd_of _ ((hG.1.smul (hsa _)).sub hKi.1) fun x => by
      rw [sub_mulVec, dotProduct_sub]; linarith [h x]

end Loewner

/-! ## (d) Polarization count (WG_FULL §2.2, §2.6, §5.6; WG_FULL_VERIFY (4), (7)) -/

/-- Chain types of §2.2: `E` (identity), `Λ = G′RD*`, `Λ_D = DΛ` (the left chains are their
adjoints, with the same walk-block counts). -/
inductive Chain | E | Lam | LamD

/-- A pattern of `V = −½Σ_k (X_k*ι_kY_k + Y_k*ι_k*X_k)`: the term index `k ∈ Fin 3` and the
choice of the two summands (`false`: `X_k*ι_kY_k`, `true`: `Y_k*ι_k*X_k`). -/
abbrev Pattern := Fin 3 × Bool

/-- `(X_k, Y_k)`: `(Λ, E)`, `(E, Λ)`, `(Λ, Λ_D)` (§2.2). -/
def pairs : Fin 3 → Chain × Chain := ![(.Lam, .E), (.E, .Lam), (.Lam, .LamD)]

/-- (left chain, right chain) of a pattern. -/
def chains (p : Pattern) : Chain × Chain := if p.2 then (pairs p.1).swap else pairs p.1

/-- Walk blocks of a chain (§2.3): `E` has 0; I-product (`false`) 1; P-product (`true`) 4. -/
def blocks : Chain → Bool → ℕ
  | .E, _ => 0
  | _, false => 1
  | _, true => 4

/-- A V-label up to walks and the ι-domain: pattern and the I/P choice in each chain. -/
abbrev VLabel := Pattern × Bool × Bool

/-- Blocks of a V-term: left chain, one ι-block, right chain. -/
def nBlocks (v : VLabel) : ℕ := blocks (chains v.1).1 v.2.1 + 1 + blocks (chains v.1).2 v.2.2

/-- `N_V := 4 + 1 + 4` (§2.6). -/
def N_V : ℕ := 4 + 1 + 4

theorem card_pattern : Fintype.card Pattern = 6 := by decide

theorem card_VLabel : Fintype.card VLabel = 24 := by decide

/-- Every V-label has at most `N_V = 9` blocks. -/
theorem nBlocks_le : ∀ v : VLabel, nBlocks v ≤ N_V := by decide

/-- `N_V` is attained exactly by `(Λ*, Λ_D)` and `(Λ_D*, Λ)` with P in both chains (§2.6). -/
theorem nBlocks_eq_iff : ∀ v : VLabel, nBlocks v = N_V ↔
    v = ((2, false), true, true) ∨ v = ((2, true), true, true) := by decide

theorem chains_max : chains (2, false) = (.Lam, .LamD) ∧ chains (2, true) = (.LamD, .Lam) :=
  ⟨rfl, rfl⟩

/-- Tag count of §4.4: `1 + 4·24 = 97`. -/
theorem tag_count : 1 + 4 * Fintype.card VLabel = 97 := by decide

/-- `Δ_π^{(2)}` chain patterns (§5.6): left ∈ {I, −Λ_D*}, right ∈ {I, −Λ_D}; `none` = I,
`some s` = Λ_D with I/P choice `s`. -/
abbrev G1Label := Option Bool × Option Bool

def blocks2 : Option Bool → ℕ
  | none => 0
  | some false => 1
  | some true => 4

def nBlocks2 (v : G1Label) : ℕ := blocks2 v.1 + 1 + blocks2 v.2

/-- `N₂ := 4 + 1 + 4` (§5.7). -/
def N₂ : ℕ := 4 + 1 + 4

/-- `k₂` (§5.7): `N₂ + 1` main-line junction steps, plus the step from `X` into the branch and
the junction inside the branch. -/
def k₂ : ℕ := (N₂ + 1) + 2

theorem card_G1Label : Fintype.card G1Label = 9 := by decide

theorem nBlocks2_le : ∀ v : G1Label, nBlocks2 v ≤ N₂ := by decide

theorem N_V_succ : N_V + 1 = 10 := rfl

theorem k₂_eq : k₂ = 12 := rfl

/-! ## (c) Step factor and WG-1 arithmetic (WG_FULL §4.3, §4.7, §5.7, 5.10(b)) -/

/-- §4.3: a product of `N` factors in `[0, ρ]` is at most `ρ^N`. -/
theorem prod_le_pow {N : ℕ} (f : Fin N → ℝ) {ρ : ℝ} (h0 : ∀ i, 0 ≤ f i) (h : ∀ i, f i ≤ ρ) :
    ∏ i, f i ≤ ρ ^ N :=
  calc ∏ i, f i ≤ ∏ _i : Fin N, ρ := Finset.prod_le_prod (fun i _ => h0 i) (fun i _ => h i)
    _ = ρ ^ N := by simp

/-- §4.3 (`K = N_V + 1 = 10`) and §5.7 (`K = k₂ = 12`): `W ≤ ε = r^K`, `0 ≤ r ≤ 1`, `k ≤ K`
⇒ `W ≤ r^k`. Here `r` stands for `ε^{1/K}`. -/
theorem weight_absorb {W r : ℝ} {k K : ℕ} (hr0 : 0 ≤ r) (hr1 : r ≤ 1) (hW : W ≤ r ^ K)
    (hk : k ≤ K) : W ≤ r ^ k :=
  hW.trans (pow_le_pow_of_le_one hr0 hr1 hk)

/-- §4.3: walk steps (factor `ρ`) and junction steps (factor `r`) combine under
`ρ_* = max{ρ, r}`: `ρ^a r^b ≤ ρ_*^{a+b}`. -/
theorem step_max {ρ r : ℝ} (hρ : 0 ≤ ρ) (hr : 0 ≤ r) (a b : ℕ) :
    ρ ^ a * r ^ b ≤ (max ρ r) ^ (a + b) := by
  rw [pow_add]
  exact mul_le_mul (pow_le_pow_left₀ hρ (le_max_left _ _) a)
    (pow_le_pow_left₀ hr (le_max_right _ _) b) (pow_nonneg hr _)
    (pow_nonneg (hρ.trans (le_max_left _ _)) _)

/-- `max{ρ, r} ≤ ρ_max ⟺ ρ ≤ ρ_max ∧ r^N ≤ ρ_max^N` (`r, ρ_max ≥ 0`, `N ≠ 0`). -/
theorem rho_star_le_iff {N : ℕ} (hN : N ≠ 0) {ρ r ρm : ℝ} (hr : 0 ≤ r) (hρm : 0 ≤ ρm) :
    max ρ r ≤ ρm ↔ ρ ≤ ρm ∧ r ^ N ≤ ρm ^ N := by
  rw [max_le_iff, pow_le_pow_iff_left₀ hr hρm hN]

/-- `K M α ≤ (c₀/M₁)^N ⟺ α ≤ (c₀^N/K) M⁻¹ M₁^{−N}`. -/
theorem wg1_alpha (N : ℕ) {K M M₁ c₀ α : ℝ} (hK : 0 < K) (hM : 0 < M) (hM₁ : 0 < M₁) :
    K * M * α ≤ (c₀ / M₁) ^ N ↔ α ≤ c₀ ^ N / K * M⁻¹ * (M₁ ^ N)⁻¹ := by
  have hP : 0 < M₁ ^ N := pow_pos hM₁ N
  have e1 : K * M * α * M₁ ^ N = α * (K * M * M₁ ^ N) := by ring
  have e2 : c₀ ^ N / K * M⁻¹ * (M₁ ^ N)⁻¹ = c₀ ^ N / (K * M * M₁ ^ N) := by
    field_simp
  rw [div_pow, le_div_iff₀ hP, e1, e2, le_div_iff₀ (by positivity)]

/-- **WG-1 for G** (WG_FULL §4.7; VERIFY regrade): with `r^{N_V+1} = K_V M α₀` (`r = ε_V^{1/10}`),
`ρ_* = max{c₀/M₁, r} = c₀/M₁` iff `α₀ ≤ c′ M⁻¹ M₁^{−10}`, `c′ = c₀^{10}/K_V`. -/
theorem wg1_G {K M M₁ c₀ α r : ℝ} (hK : 0 < K) (hM : 0 < M) (hM₁ : 0 < M₁) (hc₀ : 0 ≤ c₀)
    (hr : 0 ≤ r) (hrε : r ^ (N_V + 1) = K * M * α) :
    max (c₀ / M₁) r ≤ c₀ / M₁ ↔ α ≤ c₀ ^ 10 / K * M⁻¹ * (M₁ ^ 10)⁻¹ := by
  rw [rho_star_le_iff (N := N_V + 1) (by decide) hr (by positivity), hrε, N_V_succ,
    wg1_alpha 10 hK hM hM₁]
  simp

/-- **WG-1 for G₁** (WG_FULL 5.10(b)): with `r^{k₂} = K₂ M α₀` (`r = ε₂^{1/12}`),
`max{c/M₁, r} = c/M₁` iff `α₀ ≤ c″ M⁻¹ M₁^{−12}`, `c″ = c^{12}/K₂`. -/
theorem wg1_G1 {K M M₁ c α r : ℝ} (hK : 0 < K) (hM : 0 < M) (hM₁ : 0 < M₁) (hc : 0 ≤ c)
    (hr : 0 ≤ r) (hrε : r ^ k₂ = K * M * α) :
    max (c / M₁) r ≤ c / M₁ ↔ α ≤ c ^ 12 / K * M⁻¹ * (M₁ ^ 12)⁻¹ := by
  rw [rho_star_le_iff (N := k₂) (by decide) hr (by positivity), hrε, k₂_eq,
    wg1_alpha 12 hK hM hM₁]
  simp

/-- CMP 99 notation `M₁ = M` (WG_FULL §4.7): `c′ M⁻¹ M^{−10} = c′ M^{−11}`. -/
theorem wg1_cmp99 (c' M : ℝ) : c' * M⁻¹ * (M ^ 10)⁻¹ = c' * (M ^ 11)⁻¹ := by
  rw [pow_succ, mul_inv]; ring

end YmLean.WGAlgebra
