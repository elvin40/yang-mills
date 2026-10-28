import YmLean.BlockInequalityE

/-!
# L-153 (Lemma E) (exact step (d)) and L-206 (Theorem L) (γ_exp = γ_e/4)

Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md, no reports/ONLINE_SWEEP.md).

Source: `../WC_FULL.md` §2 (L-153 (Lemma E), 2.1–2.8), §3.1 (L-248 (Lemma P_exp)), §3.2 (L-208 (Theorem L));
`../WC_FULL_VERIFY.md` (recomputed L-153 (Lemma E) (f) lines, L-208 (Theorem L) bracket).
Same abstract setting as `BlockInequalityE.lean` (`D`, `curl`, `𝒢`, `N`, `W`), but with
L-170 (Lemma G)(c) `‖𝒢B‖² ≤ 2c_𝒢‖B‖²`, the exact step (d) `‖λ‖ ≤ ‖𝒢 D λ‖` (WC_FULL 1.6(d), i.e.
`τ_G = 0`), and H-121 (H_E) `16 d³ L^d c_𝒢 τ_p² ≤ 1`. The `τ_G = 0` instance of `block_ineq_E` keeps
the factor `1/(1-τ_G)² ≤ 4` of its step (d), so it cannot give the sharper `K_b`; the algebra of
§2.7 is redone here.
-/

namespace YmLean

open scoped InnerProductSpace

set_option linter.unusedSectionVars false

/-- WC_FULL 2.1: H-121 (H_E) implies the (E) condition `2√N c_4 Mα_0 ≤ 1`.
`x = 2√N c_4 Mα_0`, `τ_p = 8x`, `K = 16 d³ L^d c_𝒢 ≥ 1`. -/
theorem HE_implies_E_cond {x τp K : ℝ} (hx : 0 ≤ x) (hτ : τp = 8 * x) (hK : 1 ≤ K)
    (hHE : K * τp ^ 2 ≤ 1) : x ^ 2 ≤ 1 / 64 ∧ x ≤ 1 := by
  subst hτ
  have h : (8 * x) ^ 2 ≤ 1 := by nlinarith [sq_nonneg (8 * x)]
  constructor <;> nlinarith

/-- WC_FULL 2.7, (2.6)–(2.7). `A = dL^d`, `δ = d²τ_p²`, `S0 = S_y(B_ax)`.
`h1` = (2.1)+(2.3), `h2` = (2.4), `hHE` = H-121 (H_E) as `16Aδc ≤ 1`. -/
theorem blockExact_f_real {A δ c S0 P G Λ : ℝ} (hA : 0 ≤ A) (hδ : 0 ≤ δ) (hc : 0 < c)
    (hS0 : 0 ≤ S0) (hG : 0 ≤ G)
    (h1 : S0 ≤ 2 * A * P + 2 * A * δ * Λ) (h2 : Λ ≤ 2 * G + 4 * c * S0)
    (hHE : 16 * A * δ * c ≤ 1) :
    S0 ≤ 4 * A * P + G / (2 * c) ∧ Λ ≤ 4 * G + 16 * c * A * P := by
  have h3 := mul_le_mul_of_nonneg_left h2 (by positivity : (0 : ℝ) ≤ 2 * A * δ)
  have h4 := mul_le_mul_of_nonneg_right hHE hS0
  have h5 : S0 ≤ 4 * A * P + 8 * A * δ * G := by nlinarith
  have e : 16 * A * δ * c * (G / (2 * c)) = 8 * A * δ * G := by field_simp; ring
  have h6 := mul_le_mul_of_nonneg_right hHE (div_nonneg hG (by linarith : (0 : ℝ) ≤ 2 * c))
  have hS : S0 ≤ 4 * A * P + G / (2 * c) := by linarith
  have e2 : 4 * c * (G / (2 * c)) = 2 * G := by field_simp; ring
  have h7 := mul_le_mul_of_nonneg_left hS (by linarith : (0 : ℝ) ≤ 4 * c)
  exact ⟨hS, by nlinarith⟩

/-- WC_FULL 2.7, last display: (2.5) with (2.6), (2.7) gives
`S_y ≤ 8dL^d(1 + 16dc_𝒢)P_y + (1/c_𝒢 + 32d)G_y`. -/
theorem blockExact_e_real {A d c S S0 P G Λ Dn : ℝ} (hd : 0 ≤ d) (hc : 0 < c)
    (hS : S ≤ 2 * S0 + 2 * Dn) (hDn : Dn ≤ 4 * d * Λ)
    (hS0 : S0 ≤ 4 * A * P + G / (2 * c)) (hΛ : Λ ≤ 4 * G + 16 * c * A * P) :
    S ≤ 8 * A * (1 + 16 * d * c) * P + (1 / c + 32 * d) * G := by
  have h := mul_le_mul_of_nonneg_left hΛ (by linarith : (0 : ℝ) ≤ 8 * d)
  have e : (1 / c + 32 * d) * G = 2 * (G / (2 * c)) + 32 * d * G := by field_simp
  rw [e]
  nlinarith

/-- WC_FULL 2.8, first half: with `A, d, c_𝒢 ≥ 1`, `1/c_𝒢 + 32d ≤ K_b`. -/
theorem blockExact_Kb_real {A d c P G : ℝ} (hA : 1 ≤ A) (hd : 1 ≤ d) (hc : 1 ≤ c) (hG : 0 ≤ G) :
    8 * A * (1 + 16 * d * c) * P + (1 / c + 32 * d) * G ≤
      8 * A * (1 + 16 * d * c) * (P + G) := by
  have h1c : 1 / c ≤ 1 := by rw [div_le_iff₀ (by linarith)]; linarith
  have hcA : (1 : ℝ) * 1 ≤ c * A := mul_le_mul hc hA zero_le_one (by linarith)
  have hdcA := mul_le_mul_of_nonneg_left hcA (by linarith : (0 : ℝ) ≤ d)
  have hcoef : 1 / c + 32 * d ≤ 8 * A * (1 + 16 * d * c) := by nlinarith
  nlinarith [mul_le_mul_of_nonneg_right hcoef hG]

/-- `K_b := 8 d L^d (1 + 16 d c_𝒢)` (WC_FULL 2.1). -/
def KbExact (d L : ℕ) (c : ℝ) : ℝ := 8 * (d : ℝ) * (L : ℝ) ^ d * (1 + 16 * (d : ℝ) * c)

/-- WC_FULL 2.8: `K_b ≤ 64 d³ L^{2d+1}` at `c_𝒢 = d(L−1)L^d/2`, for `d, L ≥ 1`. -/
theorem KbExact_le (d L : ℕ) (hd : 1 ≤ d) (hL : 1 ≤ L) :
    KbExact d L ((d : ℝ) * ((L : ℝ) - 1) * (L : ℝ) ^ d / 2) ≤
      64 * (d : ℝ) ^ 3 * (L : ℝ) ^ (2 * d + 1) := by
  have hdR : (1 : ℝ) ≤ d := by exact_mod_cast hd
  have hLR : (1 : ℝ) ≤ L := by exact_mod_cast hL
  have hx : (1 : ℝ) ≤ (L : ℝ) ^ d := by
    have := pow_le_pow_left₀ zero_le_one hLR d
    rwa [one_pow] at this
  have e : (L : ℝ) ^ (2 * d + 1) = ((L : ℝ) ^ d) ^ 2 * L := by ring
  have h1 : (1 : ℝ) * 1 ≤ d * (L : ℝ) ^ d := mul_le_mul hdR hx zero_le_one (by linarith)
  have h2 := mul_le_mul_of_nonneg_left (by linarith : (1 : ℝ) ≤ d * (L : ℝ) ^ d)
    (by linarith : (0 : ℝ) ≤ d * (L : ℝ) ^ d)
  have h3 := mul_le_mul_of_nonneg_left hdR (by positivity : (0 : ℝ) ≤ (d * (L : ℝ) ^ d) ^ 2)
  unfold KbExact
  rw [e]
  nlinarith

variable {E F Pl H : Type*}
  [NormedAddCommGroup E] [InnerProductSpace ℝ E] [FiniteDimensional ℝ E]
  [NormedAddCommGroup F] [InnerProductSpace ℝ F] [FiniteDimensional ℝ F]
  [NormedAddCommGroup Pl] [InnerProductSpace ℝ Pl] [FiniteDimensional ℝ Pl]
  [NormedAddCommGroup H] [InnerProductSpace ℝ H] [FiniteDimensional ℝ H]

/-- **L-153 (Lemma E), exact-step form** (WC_FULL 2.1–2.8): `S_y ≤ K_b (P_y + G_y)`,
`K_b = 8dL^d(1 + 16dc_𝒢)`. (a) `ha`; (b) `hb` = (2.1); (c) `hc` = (2.2)+(E);
(d) `hd` = L-170 (Lemma G)(d), exact; (e) `he`; L-170 (Lemma G)(c) `hG`; H-121 (H_E) `hHE`; `c_𝒢 ≥ 1` (2.8). -/
theorem block_ineq_E_exact (D : F →ₗ[ℝ] E) (curl : E →ₗ[ℝ] Pl) (𝒢 : E →ₗ[ℝ] H)
    (N : Submodule ℝ F) (W : Submodule ℝ E)
    {d L : ℕ} {cG τp : ℝ} (hd1 : 1 ≤ d) (hL1 : 1 ≤ L) (hcG : 1 ≤ cG)
    (hHE : 16 * (d : ℝ) ^ 3 * (L : ℝ) ^ d * cG * τp ^ 2 ≤ 1)
    (ha : ∀ B, ∃ l ∈ N, B + D l ∈ W)
    (hb : ∀ B ∈ W, ‖B‖ ^ 2 ≤ (d : ℝ) * (L : ℝ) ^ d * ‖curl B‖ ^ 2)
    (hc : ∀ l ∈ N, ‖curl (D l)‖ ^ 2 ≤ (d : ℝ) ^ 2 * τp ^ 2 * ‖l‖ ^ 2)
    (hd : ∀ l ∈ N, ‖l‖ ≤ ‖𝒢 (D l)‖)
    (he : ∀ l ∈ N, ‖D l‖ ^ 2 ≤ 4 * (d : ℝ) * ‖l‖ ^ 2)
    (hG : ∀ B, ‖𝒢 B‖ ^ 2 ≤ 2 * cG * ‖B‖ ^ 2) (B : E) :
    ‖B‖ ^ 2 ≤ KbExact d L cG * (‖curl B‖ ^ 2 + ‖𝒢 B‖ ^ 2) := by
  obtain ⟨l, hlN, hlW⟩ := ha B
  have hA0 : (0 : ℝ) ≤ (d : ℝ) * (L : ℝ) ^ d := by positivity
  -- (c), (2.3)
  have hPax : ‖curl (B + D l)‖ ^ 2 ≤ 2 * ‖curl B‖ ^ 2 + 2 * ‖curl (D l)‖ ^ 2 := by
    rw [map_add]; exact normsq_add_le_two _ _
  have hP2 := mul_le_mul_of_nonneg_left
    (hPax.trans (by linarith [hc l hlN] : 2 * ‖curl B‖ ^ 2 + 2 * ‖curl (D l)‖ ^ 2 ≤
      2 * ‖curl B‖ ^ 2 + 2 * ((d : ℝ) ^ 2 * τp ^ 2 * ‖l‖ ^ 2))) hA0
  have h1 : ‖B + D l‖ ^ 2 ≤ 2 * ((d : ℝ) * (L : ℝ) ^ d) * ‖curl B‖ ^ 2 +
      2 * ((d : ℝ) * (L : ℝ) ^ d) * ((d : ℝ) ^ 2 * τp ^ 2) * ‖l‖ ^ 2 := by
    nlinarith [hb _ hlW]
  -- (d), (2.4): exact, Λ ≤ 2G(B) + 2G(B_ax) ≤ 2G + 4c_𝒢 S(B_ax)
  have hsq := pow_le_pow_left₀ (norm_nonneg l) (hd l hlN) 2
  have hGsplit : ‖𝒢 (D l)‖ ^ 2 ≤ 2 * ‖𝒢 (B + D l)‖ ^ 2 + 2 * ‖𝒢 B‖ ^ 2 := by
    have : 𝒢 (D l) = 𝒢 (B + D l) - 𝒢 B := by rw [map_add]; abel
    rw [this]; exact normsq_sub_le_two _ _
  have h2 : ‖l‖ ^ 2 ≤ 2 * ‖𝒢 B‖ ^ 2 + 4 * cG * ‖B + D l‖ ^ 2 := by
    nlinarith [hG (B + D l)]
  -- (f), (2.6)–(2.7)
  obtain ⟨h0, hΛ⟩ := blockExact_f_real hA0 (by positivity) (by linarith) (sq_nonneg _)
    (sq_nonneg _) h1 h2 (by nlinarith)
  -- (e), (2.5)
  have hS : ‖B‖ ^ 2 ≤ 2 * ‖B + D l‖ ^ 2 + 2 * ‖D l‖ ^ 2 := by
    calc ‖B‖ ^ 2 = ‖(B + D l) - D l‖ ^ 2 := by simp
      _ ≤ _ := normsq_sub_le_two _ _
  have hdR : (1 : ℝ) ≤ d := by exact_mod_cast hd1
  have hx : (1 : ℝ) ≤ (L : ℝ) ^ d := by
    have := pow_le_pow_left₀ zero_le_one (by exact_mod_cast hL1 : (1 : ℝ) ≤ L) d
    rwa [one_pow] at this
  have hA1 : (1 : ℝ) * 1 ≤ (d : ℝ) * (L : ℝ) ^ d := mul_le_mul hdR hx zero_le_one (by linarith)
  have hfin := blockExact_e_real (by linarith) (by linarith) hS (he l hlN) h0 hΛ
  have hKb := blockExact_Kb_real (P := ‖curl B‖ ^ 2) (by linarith : (1 : ℝ) ≤ (d : ℝ) * (L : ℝ) ^ d)
    hdR hcG (sq_nonneg ‖𝒢 B‖)
  calc ‖B‖ ^ 2 ≤ _ := hfin
    _ ≤ _ := hKb
    _ = KbExact d L cG * (‖curl B‖ ^ 2 + ‖𝒢 B‖ ^ 2) := by unfold KbExact; ring

/-- **L-248 (Lemma P_exp)** assembly (WC_FULL 3.1 (3)): from (1) `S_b ≤ K_b(P + G)`, (2)
`S_c ≤ (3/m_L)(2P + 2dS_b) + η_6‖B‖²`, and `‖B‖² = S_b + S_c`:
`γ_e(1 − η_6)‖B‖² ≤ P + G`, `γ_e⁻¹ = K_b(1 + 6d/m_L) + 6/m_L`. -/
theorem lemmaPexp_real {Kb d m η Sb Sc P G B2 : ℝ} (hKb : 0 ≤ Kb) (hd : 0 ≤ d) (hm : 0 < m)
    (hG : 0 ≤ G)
    (h1 : Sb ≤ Kb * (P + G)) (h2 : Sc ≤ 3 / m * (2 * P + 2 * d * Sb) + η * B2)
    (h3 : B2 = Sb + Sc) :
    (Kb * (1 + 6 * d / m) + 6 / m)⁻¹ * (1 - η) * B2 ≤ P + G := by
  have hu : 0 < 6 / m := by positivity
  have hv : 0 ≤ 6 * d / m := by positivity
  have hΓ : 0 < Kb * (1 + 6 * d / m) + 6 / m := by positivity
  have e : 3 / m * (2 * P + 2 * d * Sb) = 6 / m * P + 6 * d / m * Sb := by ring
  have h4 := mul_le_mul_of_nonneg_left h1 (by linarith : (0 : ℝ) ≤ 1 + 6 * d / m)
  have h5 : (1 - η) * B2 ≤ (Kb * (1 + 6 * d / m) + 6 / m) * (P + G) := by
    nlinarith [mul_nonneg hu.le hG]
  rw [mul_assoc, inv_mul_le_iff₀ hΓ]
  exact h5

/-- WC_FULL 3.2 / (c): `½ min(½, c_G) γ_e = ¼ γ_e` when `c_G ≥ ½`. -/
theorem gammaExp_eq {cG γe : ℝ} (hcG : 1 / 2 ≤ cG) : 1 / 2 * min (1 / 2) cG * γe = 1 / 4 * γe := by
  rw [min_eq_left hcG]; ring

/-- L-208 (Theorem L) bracket (WC_FULL 3.2). `e0 = ⟨B, Δ^full B⟩ = E(B) − ⟨B, Δ_J B⟩`, bounded below by
(A3-6.1) and H-069 (A3-R4) as `hE0`; `G = ‖𝒢B‖²`; `hPexp` = L-248 (Lemma P_exp); (3.1) = `hε`, `hη`, `hJ`.
Then `e0 + c_G G ≥ ½ min(½, c_G) γ_e ‖B‖²`. -/
theorem theoremL_real {e0 P G B2 ε7 η6 ε7a cJ γe cG : ℝ} (hG : 0 ≤ G)
    (hB2 : 0 ≤ B2) (hγ : 0 ≤ γe) (hcG : 1 / 2 ≤ cG)
    (hε0 : 0 ≤ ε7) (hε : ε7 ≤ 1 / 8) (hη : η6 ≤ 1 / 4) (hJ : ε7a + cJ ≤ γe / 12)
    (hE0 : (1 + ε7)⁻¹ * (1 / 2 * P) - (ε7a + cJ) * B2 ≤ e0)
    (hPexp : γe * (1 - η6) * B2 ≤ P + G) :
    1 / 2 * min (1 / 2) cG * γe * B2 ≤ e0 + cG * G := by
  rw [gammaExp_eq hcG]
  set r := (1 + ε7)⁻¹ with hr
  have hr1 : r ≤ 1 := inv_le_one_of_one_le₀ (by linarith)
  have hr89 : 8 / 9 ≤ r := by
    rw [hr, le_inv_comm₀ (by norm_num) (by linarith)]; linarith
  -- c_G G ≥ c̄ G ≥ r c̄ G, and ½P ≥ c̄P, c̄ = ½
  have hgG : r * (1 / 2 * G) ≤ cG * G := by nlinarith
  have hJB := mul_le_mul_of_nonneg_right hJ hB2
  -- r c̄ (P + G) ≥ r c̄ γ_e(1 − η_6)‖B‖² ≥ (8/9)(3/4)½γ_e‖B‖² = γ_e‖B‖²/3
  have h1 := mul_le_mul_of_nonneg_left hPexp (by linarith : (0 : ℝ) ≤ r / 2)
  have hγB : 0 ≤ γe * B2 := mul_nonneg hγ hB2
  have h2 : 3 / 4 * (γe * B2) ≤ γe * (1 - η6) * B2 := by nlinarith
  have h3 : γe * B2 / 3 ≤ r / 2 * (γe * (1 - η6) * B2) := by nlinarith
  nlinarith

/-- **L-208 (Theorem L)** (WC_FULL 3.2) as a quadratic-form inequality. `A = Δ^full + c_G 𝒢*𝒢` (1.1),
`A_exp = C* A C`, `B = C B̃`. Inputs at `B`: `hE0` = (A3-6.1)+H-069 (A3-R4), `hPexp` = L-248 (Lemma P_exp),
`hC` = `‖CB̃‖ ≥ ‖B̃‖` (A3 §6.5). Conclusion `⟨B̃, A_exp B̃⟩ ≥ ½ min(½, c_G) γ_e ‖B̃‖²`. -/
theorem theoremL {E' : Type*} [NormedAddCommGroup E'] [InnerProductSpace ℝ E']
    [FiniteDimensional ℝ E']
    (A0 : E →ₗ[ℝ] E) (𝒢 : E →ₗ[ℝ] H) (C : E' →ₗ[ℝ] E)
    {P ε7 η6 ε7a cJ γe cG : ℝ} (hγ : 0 ≤ γe) (hcG : 1 / 2 ≤ cG)
    (hε0 : 0 ≤ ε7) (hε : ε7 ≤ 1 / 8) (hη : η6 ≤ 1 / 4) (hJ : ε7a + cJ ≤ γe / 12) (Bt : E')
    (hE0 : (1 + ε7)⁻¹ * (1 / 2 * P) - (ε7a + cJ) * ‖C Bt‖ ^ 2 ≤ ⟪C Bt, A0 (C Bt)⟫_ℝ)
    (hPexp : γe * (1 - η6) * ‖C Bt‖ ^ 2 ≤ P + ‖𝒢 (C Bt)‖ ^ 2)
    (hC : ‖Bt‖ ≤ ‖C Bt‖) :
    1 / 2 * min (1 / 2) cG * γe * ‖Bt‖ ^ 2 ≤
      ⟪Bt, (LinearMap.adjoint C ∘ₗ (A0 + cG • (LinearMap.adjoint 𝒢 ∘ₗ 𝒢)) ∘ₗ C) Bt⟫_ℝ := by
  have hform : ⟪Bt, (LinearMap.adjoint C ∘ₗ (A0 + cG • (LinearMap.adjoint 𝒢 ∘ₗ 𝒢)) ∘ₗ C) Bt⟫_ℝ =
      ⟪C Bt, A0 (C Bt)⟫_ℝ + cG * ‖𝒢 (C Bt)‖ ^ 2 := by
    simp only [LinearMap.comp_apply, LinearMap.adjoint_inner_right, LinearMap.add_apply,
      LinearMap.smul_apply, inner_add_right, real_inner_smul_right, real_inner_self_eq_norm_sq]
  rw [hform]
  have hL := theoremL_real (sq_nonneg _) (sq_nonneg _) hγ hcG hε0 hε hη hJ hE0 hPexp
  have hsq := pow_le_pow_left₀ (norm_nonneg _) hC 2
  have hc0 : 0 ≤ 1 / 2 * min (1 / 2) cG * γe := by rw [gammaExp_eq hcG]; positivity
  nlinarith [mul_le_mul_of_nonneg_left hsq hc0]

end YmLean
