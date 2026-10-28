import Mathlib.Analysis.InnerProductSpace.Adjoint

/-!
# L-153 (Lemma E): block inequality with the exponential gauge term (L8)

Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md, no reports/ONLINE_SWEEP.md).

Source: `../SOURCES_WC_EXPGAUGE.md` §3.2 (L-153 (Lemma E), steps (a)–(f)) and §1.5 (b), (c);
`../SOURCES_WC_EXPGAUGE_VERIFY.md` V1 (algebra of (f)) and V2 (corrections to (d) and to the
`𝒢`-bound). One block `B(y)`. Finite-dimensional real inner product spaces: bond fields `E`,
site fields `F`, plaquette fields `Pl`, values of `𝒢` in `H`. Linear maps: `D` (= `D^V`, the
linearized gauge action), `curl` (= `∂^V`), `𝒢`. `N` = site fields with `λ(y) = 0`, `W` = bond
fields that vanish on the tree `T(y)`. The geometric inputs (a)–(e) and §1.5 (b) are hypotheses.
Notation: `S_y = ‖B‖²`, `P_y = ‖curl B‖²`, `G_y = ‖𝒢 B‖²`, `Λ_y = ‖λ‖²`, `A = d L^d`.
-/

namespace YmLean

set_option linter.unusedSectionVars false

/-- `‖a + b‖² ≤ 2‖a‖² + 2‖b‖²`. -/
theorem normsq_add_le_two {X : Type*} [SeminormedAddCommGroup X] (a b : X) :
    ‖a + b‖ ^ 2 ≤ 2 * ‖a‖ ^ 2 + 2 * ‖b‖ ^ 2 := by
  have h := pow_le_pow_left₀ (norm_nonneg _) (norm_add_le a b) 2
  nlinarith [sq_nonneg (‖a‖ - ‖b‖)]

/-- `‖a - b‖² ≤ 2‖a‖² + 2‖b‖²`. -/
theorem normsq_sub_le_two {X : Type*} [SeminormedAddCommGroup X] (a b : X) :
    ‖a - b‖ ^ 2 ≤ 2 * ‖a‖ ^ 2 + 2 * ‖b‖ ^ 2 := by
  have h := pow_le_pow_left₀ (norm_nonneg _) (norm_sub_le a b) 2
  nlinarith [sq_nonneg (‖a‖ - ‖b‖)]

/-- The two smallness forms agree: `16 K c ≤ 1/2 ↔ 32 K ≤ 1/c` (source §3.2 vs V1),
with `K = d³ L^d τ_p²`. -/
theorem smallness_iff {K c : ℝ} (hc : 0 < c) : 16 * K * c ≤ 1 / 2 ↔ 32 * K ≤ 1 / c := by
  rw [le_div_iff₀ hc]
  constructor <;> intro h <;> linarith

/-- Algebra of L-153 (Lemma E) (f) (V1). `S0 = S_y(B_ax)`, `δ = d² τ_p²`.
`h1` is (b) + (c), `h2` is (d). -/
theorem block_f_real {A δ c S0 P G Λ : ℝ} (hA : 0 ≤ A) (hδ : 0 ≤ δ) (hc : 0 < c)
    (hS0 : 0 ≤ S0) (hG : 0 ≤ G)
    (h1 : S0 ≤ 2 * A * P + 2 * A * δ * Λ) (h2 : Λ ≤ 8 * G + 8 * c * S0)
    (hsmall : 16 * A * δ * c ≤ 1 / 2) :
    S0 ≤ 4 * A * P + G / c ∧ Λ ≤ 16 * G + 32 * c * A * P := by
  have h3 := mul_le_mul_of_nonneg_left h2 (mul_nonneg (mul_nonneg (by norm_num) hA) hδ :
    (0 : ℝ) ≤ 2 * A * δ)
  have h4 := mul_le_mul_of_nonneg_right hsmall hS0
  have h5 : S0 ≤ 4 * A * P + 32 * A * δ * G := by linarith
  have hcc : c * c⁻¹ = 1 := mul_inv_cancel₀ hc.ne'
  have e : 32 * A * δ * c * (G / c) = 32 * A * δ * G := by
    rw [div_eq_mul_inv]
    calc 32 * A * δ * c * (G * c⁻¹) = 32 * A * δ * G * (c * c⁻¹) := by ring
      _ = 32 * A * δ * G := by rw [hcc, mul_one]
  have h6 := mul_le_mul_of_nonneg_right (by linarith : 32 * A * δ * c ≤ 1)
    (div_nonneg hG hc.le)
  have hS : S0 ≤ 4 * A * P + G / c := by linarith
  have e2 : c * (G / c) = G := by
    rw [div_eq_mul_inv]
    calc c * (G * c⁻¹) = G * (c * c⁻¹) := by ring
      _ = G := by rw [hcc, mul_one]
  have h7 := mul_le_mul_of_nonneg_left hS (by linarith : (0 : ℝ) ≤ 8 * c)
  exact ⟨hS, by linarith⟩

/-- Step (e) and the end of (f): `S_y ≤ (8A + 256 d c A) P + (2/c + 128 d) G`. -/
theorem block_e_real {A d c S S0 P G Λ Dn : ℝ} (hd : 0 ≤ d)
    (hS : S ≤ 2 * S0 + 2 * Dn) (hDn : Dn ≤ 4 * d * Λ)
    (hS0 : S0 ≤ 4 * A * P + G / c) (hΛ : Λ ≤ 16 * G + 32 * c * A * P) :
    S ≤ (8 * A + 256 * d * c * A) * P + (2 / c + 128 * d) * G := by
  have h := mul_le_mul_of_nonneg_left hΛ (by linarith : (0 : ℝ) ≤ 8 * d)
  have e : (2 / c + 128 * d) * G = 2 * (G / c) + 128 * d * G := by ring
  rw [e]
  linarith

/-- Last bound of (f): with `A, d, c ≥ 1`, the coefficients are `≤ K_b = 8A(1 + 32dc)`. -/
theorem block_Kb_real {A d c P G : ℝ} (hA : 1 ≤ A) (hd : 1 ≤ d) (hc : 1 ≤ c) (hG : 0 ≤ G) :
    (8 * A + 256 * d * c * A) * P + (2 / c + 128 * d) * G ≤
      8 * A * (1 + 32 * d * c) * (P + G) := by
  have h2c : 2 / c ≤ 2 := by
    rw [div_le_iff₀ (by linarith)]
    linarith
  have hcA : (1 : ℝ) * 1 ≤ c * A := mul_le_mul hc hA zero_le_one (by linarith)
  have hdcA := mul_le_mul_of_nonneg_left hcA (by linarith : (0 : ℝ) ≤ d)
  have hcoef : 2 / c + 128 * d ≤ 8 * A * (1 + 32 * d * c) := by nlinarith
  have := mul_le_mul_of_nonneg_right hcoef hG
  nlinarith

/-- `K_b := 8 d L^d (1 + 32 d c_𝒢)` (source §3.2). -/
def Kb (d L : ℕ) (c : ℝ) : ℝ := 8 * (d : ℝ) * (L : ℝ) ^ d * (1 + 32 * (d : ℝ) * c)

/-- `K_b ≤ 136 d³ L^{2d+1}` for `c_𝒢 = d(L−1)L^d/2` (source §3.2, V1). -/
theorem Kb_le (d L : ℕ) (hd : 1 ≤ d) (hL : 1 ≤ L) :
    Kb d L ((d : ℝ) * ((L : ℝ) - 1) * (L : ℝ) ^ d / 2) ≤
      136 * (d : ℝ) ^ 3 * (L : ℝ) ^ (2 * d + 1) := by
  have hdR : (1 : ℝ) ≤ d := by exact_mod_cast hd
  have hLR : (1 : ℝ) ≤ L := by exact_mod_cast hL
  have hx : (1 : ℝ) ≤ (L : ℝ) ^ d := by
    have := pow_le_pow_left₀ zero_le_one hLR d
    rwa [one_pow] at this
  have e : (L : ℝ) ^ (2 * d + 1) = ((L : ℝ) ^ d) ^ 2 * L := by ring
  have h1' : (1 : ℝ) * 1 ≤ d * (L : ℝ) ^ d := mul_le_mul hdR hx zero_le_one (by linarith)
  have h2 := mul_le_mul_of_nonneg_left (by linarith : (1 : ℝ) ≤ d * (L : ℝ) ^ d)
    (by linarith : (0 : ℝ) ≤ d * (L : ℝ) ^ d)
  have h3 := mul_le_mul_of_nonneg_left hdR (by positivity : (0 : ℝ) ≤ (d * (L : ℝ) ^ d) ^ 2)
  have h4 : (0 : ℝ) ≤ (d : ℝ) ^ 3 * ((L : ℝ) ^ d) ^ 2 * L := by positivity
  unfold Kb
  rw [e]
  nlinarith

/-- `c_𝒢 = d(L−1)L^d/2 ≥ 1` for `d ≥ 1`, `L ≥ 2` (used in (f): "since `c_𝒢 ≥ 1`"). -/
theorem cG_ge_one (d L : ℕ) (hd : 1 ≤ d) (hL : 2 ≤ L) :
    1 ≤ (d : ℝ) * ((L : ℝ) - 1) * (L : ℝ) ^ d / 2 := by
  obtain ⟨k, rfl⟩ : ∃ k, d = k + 1 := ⟨d - 1, by omega⟩
  have hdR : (1 : ℝ) ≤ ((k + 1 : ℕ) : ℝ) := by exact_mod_cast hd
  have hLR : (2 : ℝ) ≤ L := by exact_mod_cast hL
  have hk : (1 : ℝ) ≤ (L : ℝ) ^ k := by
    have := pow_le_pow_left₀ zero_le_one (by linarith : (1 : ℝ) ≤ L) k
    rwa [one_pow] at this
  have hx : (2 : ℝ) ≤ (L : ℝ) ^ (k + 1) := by
    rw [pow_succ]
    nlinarith
  have h1 : (1 : ℝ) * 1 ≤ ((k + 1 : ℕ) : ℝ) * ((L : ℝ) - 1) :=
    mul_le_mul hdR (by linarith) zero_le_one (by linarith)
  have h2 := mul_le_mul h1 hx (by norm_num) (by linarith)
  linarith

variable {E F Pl H : Type*}
  [NormedAddCommGroup E] [InnerProductSpace ℝ E] [FiniteDimensional ℝ E]
  [NormedAddCommGroup F] [InnerProductSpace ℝ F] [FiniteDimensional ℝ F]
  [NormedAddCommGroup Pl] [InnerProductSpace ℝ Pl] [FiniteDimensional ℝ Pl]
  [NormedAddCommGroup H] [InnerProductSpace ℝ H] [FiniteDimensional ℝ H]

/-- L-153 (Lemma E) (b)–(d), (f) for one `B` and its axial shift `B_ax = B + D λ`:
`S(B_ax) ≤ 4dL^d P + G/c_𝒢` and `Λ ≤ 16 G + 32 c_𝒢 d L^d P`. -/
theorem block_ineq_E_axial (D : F →ₗ[ℝ] E) (curl : E →ₗ[ℝ] Pl) (𝒢 : E →ₗ[ℝ] H)
    {d L : ℕ} {cG τp τG : ℝ} (hcG : 0 < cG) (hτG : τG ≤ 1 / 2)
    (hsmall : 16 * (d : ℝ) ^ 3 * (L : ℝ) ^ d * cG * τp ^ 2 ≤ 1 / 2)
    (hG : ∀ B, ‖𝒢 B‖ ^ 2 ≤ cG * ‖B‖ ^ 2) {B : E} {l : F}
    (hb : ‖B + D l‖ ^ 2 ≤ (d : ℝ) * (L : ℝ) ^ d * ‖curl (B + D l)‖ ^ 2)
    (hc : ‖curl (D l)‖ ^ 2 ≤ (d : ℝ) ^ 2 * τp ^ 2 * ‖l‖ ^ 2)
    (hd : (1 - τG) * ‖l‖ ≤ ‖𝒢 (D l)‖) :
    ‖B + D l‖ ^ 2 ≤ 4 * ((d : ℝ) * (L : ℝ) ^ d) * ‖curl B‖ ^ 2 + ‖𝒢 B‖ ^ 2 / cG ∧
      ‖l‖ ^ 2 ≤ 16 * ‖𝒢 B‖ ^ 2 + 32 * cG * ((d : ℝ) * (L : ℝ) ^ d) * ‖curl B‖ ^ 2 := by
  have hA0 : (0 : ℝ) ≤ (d : ℝ) * (L : ℝ) ^ d := by positivity
  have hδ0 : (0 : ℝ) ≤ (d : ℝ) ^ 2 * τp ^ 2 := by positivity
  -- (c): P(B_ax) ≤ 2P + 2 d² τ_p² Λ
  have hPax : ‖curl (B + D l)‖ ^ 2 ≤ 2 * ‖curl B‖ ^ 2 + 2 * ‖curl (D l)‖ ^ 2 := by
    rw [map_add]; exact normsq_add_le_two _ _
  have hP2 := mul_le_mul_of_nonneg_left
    (hPax.trans (by linarith : 2 * ‖curl B‖ ^ 2 + 2 * ‖curl (D l)‖ ^ 2 ≤
      2 * ‖curl B‖ ^ 2 + 2 * ((d : ℝ) ^ 2 * τp ^ 2 * ‖l‖ ^ 2))) hA0
  have h1 : ‖B + D l‖ ^ 2 ≤ 2 * ((d : ℝ) * (L : ℝ) ^ d) * ‖curl B‖ ^ 2 +
      2 * ((d : ℝ) * (L : ℝ) ^ d) * ((d : ℝ) ^ 2 * τp ^ 2) * ‖l‖ ^ 2 := by
    nlinarith
  -- (d): Λ ≤ 8 G + 8 c_𝒢 S(B_ax)
  have hhalf := mul_le_mul_of_nonneg_right (by linarith : (1 : ℝ) / 2 ≤ 1 - τG) (norm_nonneg l)
  have hd' : 1 / 2 * ‖l‖ ≤ ‖𝒢 (D l)‖ := hhalf.trans hd
  have hsq := pow_le_pow_left₀ (by positivity) hd' 2
  have hGsplit : ‖𝒢 (D l)‖ ^ 2 ≤ 2 * ‖𝒢 (B + D l)‖ ^ 2 + 2 * ‖𝒢 B‖ ^ 2 := by
    have : 𝒢 (D l) = 𝒢 (B + D l) - 𝒢 B := by rw [map_add]; abel
    rw [this]; exact normsq_sub_le_two _ _
  have h2 : ‖l‖ ^ 2 ≤ 8 * ‖𝒢 B‖ ^ 2 + 8 * cG * ‖B + D l‖ ^ 2 := by
    nlinarith [hG (B + D l)]
  -- (f)
  exact block_f_real hA0 hδ0 hcG (sq_nonneg _) (sq_nonneg _) h1 h2 (by nlinarith)

/-- **L-153 (Lemma E)** (source §3.2, V1–V2): on one block, `S_y ≤ K_b (P_y + ‖𝒢 B‖²)`.
(a) `ha`; (b) `hb`; (c) `hc`; (d) `hd` with `τ_G ≤ 1/2`; (e) `he`; §1.5 (b) `hG`. -/
theorem block_ineq_E (D : F →ₗ[ℝ] E) (curl : E →ₗ[ℝ] Pl) (𝒢 : E →ₗ[ℝ] H)
    (N : Submodule ℝ F) (W : Submodule ℝ E)
    {d L : ℕ} {cG τp τG : ℝ} (hd1 : 1 ≤ d) (hL1 : 1 ≤ L) (hcG : 1 ≤ cG) (hτG : τG ≤ 1 / 2)
    (hsmall : 16 * (d : ℝ) ^ 3 * (L : ℝ) ^ d * cG * τp ^ 2 ≤ 1 / 2)
    (ha : ∀ B, ∃ l ∈ N, B + D l ∈ W)
    (hb : ∀ B ∈ W, ‖B‖ ^ 2 ≤ (d : ℝ) * (L : ℝ) ^ d * ‖curl B‖ ^ 2)
    (hc : ∀ l ∈ N, ‖curl (D l)‖ ^ 2 ≤ (d : ℝ) ^ 2 * τp ^ 2 * ‖l‖ ^ 2)
    (hd : ∀ l ∈ N, (1 - τG) * ‖l‖ ≤ ‖𝒢 (D l)‖)
    (he : ∀ l ∈ N, ‖D l‖ ^ 2 ≤ 4 * (d : ℝ) * ‖l‖ ^ 2)
    (hG : ∀ B, ‖𝒢 B‖ ^ 2 ≤ cG * ‖B‖ ^ 2) (B : E) :
    ‖B‖ ^ 2 ≤ Kb d L cG * (‖curl B‖ ^ 2 + ‖𝒢 B‖ ^ 2) := by
  obtain ⟨l, hlN, hlW⟩ := ha B
  obtain ⟨h0, hΛ⟩ := block_ineq_E_axial D curl 𝒢 (by linarith) hτG hsmall hG
    (hb _ hlW) (hc l hlN) (hd l hlN)
  -- (e): S ≤ 2 S(B_ax) + 2‖D λ‖²
  have hS : ‖B‖ ^ 2 ≤ 2 * ‖B + D l‖ ^ 2 + 2 * ‖D l‖ ^ 2 := by
    calc ‖B‖ ^ 2 = ‖(B + D l) - D l‖ ^ 2 := by simp
      _ ≤ _ := normsq_sub_le_two _ _
  have hdR : (1 : ℝ) ≤ d := by exact_mod_cast hd1
  have hLR : (1 : ℝ) ≤ L := by exact_mod_cast hL1
  have hx : (1 : ℝ) ≤ (L : ℝ) ^ d := by
    have := pow_le_pow_left₀ zero_le_one hLR d
    rwa [one_pow] at this
  have hA1 : (1 : ℝ) * 1 ≤ (d : ℝ) * (L : ℝ) ^ d := mul_le_mul hdR hx zero_le_one (by linarith)
  have hfin := block_e_real (by linarith) hS (he l hlN) h0 hΛ
  have hKb := block_Kb_real (P := ‖curl B‖ ^ 2) (by linarith : (1 : ℝ) ≤ (d : ℝ) * (L : ℝ) ^ d)
    hdR hcG (sq_nonneg ‖𝒢 B‖)
  calc ‖B‖ ^ 2 ≤ _ := hfin
    _ ≤ _ := hKb
    _ = Kb d L cG * (‖curl B‖ ^ 2 + ‖𝒢 B‖ ^ 2) := by unfold Kb; ring

end YmLean
