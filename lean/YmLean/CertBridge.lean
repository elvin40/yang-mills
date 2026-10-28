import YmLean.OishiRump

/-!
# From entrywise enclosures to the certified cell bound (VERIFY_BlockNorm.md, gaps 3–4)

Sources: `../numerics/h1cert_cell.py` (`_radF`, `final_bound`) and `../numerics/h1cert_cell2.py`
(`cell_bound2`, last two lines); `VERIFY_BlockNorm.md` "Gaps to the numerical normalization".
The certifier produces entrywise enclosures (arb balls: `‖A i j − A₀ i j‖ ≤ E i j`). This file proves
the matrix inequalities that turn them into (1) a spectral-norm radius, (2) invertibility and an
inverse bound on the whole cell, (3) the upper bound on `λ_max` that the code outputs
(`ρ_1² L² = λ_max(G)`). `λ_max(G) ≤ c` is written in Rayleigh form: `re ⟪x, G x⟫ ≤ c ‖x‖²` for all `x`.
-/

open Matrix
open scoped Matrix.Norms.L2Operator

namespace YmLean

set_option linter.unusedSectionVars false

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n]

/-- `frob` is monotone in entrywise upper bounds. -/
theorem frob_mono (A : Matrix n n 𝕜) (E : Matrix n n ℝ) (h : ∀ i j, ‖A i j‖ ≤ E i j) :
    frob A ≤ frob E :=
  Real.sqrt_le_sqrt (Finset.sum_le_sum fun i _ => Finset.sum_le_sum fun j _ =>
    pow_le_pow_left₀ (norm_nonneg _) ((h i j).trans (Real.le_norm_self _)) 2)

/-- (1) Entrywise error bounds give a spectral-norm bound: `|A_ij − B_ij| ≤ E_ij` ⇒ `‖A − B‖₂ ≤ ‖E‖_F`.
This is `_radF` of h1cert_cell.py (r_B, r2) and `‖r_G‖_F` of h1cert_cell2.py. -/
theorem entrywise_to_opnorm (A B : Matrix n n 𝕜) (E : Matrix n n ℝ)
    (h : ∀ i j, ‖A i j - B i j‖ ≤ E i j) : ‖A - B‖ ≤ frob E :=
  (l2_le_frob _).trans (frob_mono _ _ fun i j => by simpa using h i j)

/-- Real interval form: `Alo ≤ A, A₀ ≤ Ahi` entrywise ⇒ `‖A − A₀‖₂ ≤ ‖Ahi − Alo‖_F`. -/
theorem interval_to_opnorm (A A₀ Alo Ahi : Matrix n n ℝ) (hA : ∀ i j, Alo i j ≤ A i j ∧ A i j ≤ Ahi i j)
    (hA₀ : ∀ i j, Alo i j ≤ A₀ i j ∧ A₀ i j ≤ Ahi i j) : ‖A - A₀‖ ≤ frob (Ahi - Alo) :=
  entrywise_to_opnorm A A₀ _ fun i j => by
    rw [Real.norm_eq_abs, Matrix.sub_apply, abs_sub_le_iff]
    constructor <;> linarith [hA i j, hA₀ i j]

/-- The Oishi–Rump `η` with upper bounds `f0 ≥ ‖R A₀ − 1‖_F`, `nR ≥ ‖R‖₂`, radius `‖E‖_F`. -/
noncomputable def orEta (f0 nR : ℝ) (E : Matrix n n ℝ) : ℝ := f0 + nR * frob E

/-- (2) Cell-wide invertibility (`final_bound`, Oishi–Rump on B with X = inv(B_mid)): every `A` in the
enclosure is invertible, `‖A⁻¹‖ ≤ nR/(1 − η)`, and `‖A⁻¹ − R‖ ≤ nR η/(1 − η)` (the `eps` of the code). -/
theorem cell_invertible (A A₀ R : Matrix n n 𝕜) (E : Matrix n n ℝ)
    (hA : ∀ i j, ‖A i j - A₀ i j‖ ≤ E i j) {nR f0 : ℝ} (hR : ‖R‖ ≤ nR)
    (hf0 : frob (R * A₀ - 1) ≤ f0) (hη : orEta f0 nR E < 1) :
    IsUnit A ∧ ‖A⁻¹‖ ≤ nR / (1 - orEta f0 nR E) ∧
      ‖A⁻¹ - R‖ ≤ nR * orEta f0 nR E / (1 - orEta f0 nR E) := by
  have hr := entrywise_to_opnorm A A₀ E hA
  have hle : frob (R * A₀ - 1) + ‖R‖ * frob E ≤ orEta f0 nR E :=
    add_le_add hf0 (mul_le_mul_of_nonneg_right hR (Real.sqrt_nonneg _))
  have hsum : A₀ + (A - A₀) = A := by abel
  obtain ⟨hu, hb⟩ := oishi_rump_eta A₀ (A - A₀) R hr (hle.trans_lt hη)
  rw [hsum] at hu hb
  have hpos : 0 < 1 - orEta f0 nR E := by linarith
  have hinv : ‖A⁻¹‖ ≤ nR / (1 - orEta f0 nR E) :=
    hb.trans (div_le_div₀ ((norm_nonneg _).trans hR) hR hpos (by linarith))
  refine ⟨hu, hinv, ?_⟩
  have hRA : ‖R * A - 1‖ ≤ orEta f0 nR E := by
    have : R * A - 1 = (R * A₀ - 1) + R * (A - A₀) := by rw [mul_sub]; abel
    rw [this]
    exact (norm_add_le _ _).trans (hle.trans' (add_le_add (l2_le_frob _)
      ((norm_mul_le _ _).trans (mul_le_mul_of_nonneg_left hr (norm_nonneg _)))))
  have hdet := (isUnit_iff_isUnit_det A).mp hu
  have hid : A⁻¹ - R = -((R * A - 1) * A⁻¹) := by
    rw [sub_mul, one_mul, mul_assoc, mul_nonsing_inv _ hdet, mul_one, neg_sub]
  rw [hid, norm_neg]
  calc _ ≤ orEta f0 nR E * (nR / (1 - orEta f0 nR E)) :=
        (norm_mul_le _ _).trans (mul_le_mul hRA hinv (norm_nonneg _)
          ((norm_nonneg _).trans hRA))
    _ = _ := by ring

/-- A row selection `S = 1.submatrix e id` with `e` injective has `S Sᴴ = 1`, so `‖S‖₂ ≤ 1`. -/
theorem sel_norm_le {m p : Type*} [Fintype m] [DecidableEq m] [Fintype p] [DecidableEq p]
    (e : p → m) (he : Function.Injective e) : ‖(1 : Matrix m m 𝕜).submatrix e id‖ ≤ 1 := by
  have hSS : (1 : Matrix m m 𝕜).submatrix e id * ((1 : Matrix m m 𝕜).submatrix e id)ᴴ = 1 := by
    rw [conjTranspose_submatrix, conjTranspose_one, ← submatrix_mul _ _ _ _ _ Function.bijective_id,
      Matrix.one_mul, submatrix_one _ he]
  have h1 : ‖(1 : Matrix p p 𝕜)‖ ≤ 1 := by
    rw [cstar_norm_def, map_one]; exact ContinuousLinearMap.norm_id_le
  have : ‖(1 : Matrix m m 𝕜).submatrix e id‖ * ‖(1 : Matrix m m 𝕜).submatrix e id‖ ≤ 1 := by
    rw [← l2_opNorm_conjTranspose ((1 : Matrix m m 𝕜).submatrix e id), ← l2_opNorm_conjTranspose_mul_self,
      conjTranspose_conjTranspose, hSS]; exact h1
  nlinarith [norm_nonneg ((1 : Matrix m m 𝕜).submatrix e id)]

/-- A submatrix (injective row and column selections) has spectral norm at most that of the matrix:
`M.submatrix f g = S_f M S_gᴴ` with `‖S_f‖, ‖S_g‖ ≤ 1`. -/
theorem norm_submatrix_le {m m' k : Type*} [Fintype m] [DecidableEq m] [Fintype m'] [DecidableEq m']
    [Fintype k] [DecidableEq k] (M : Matrix m m 𝕜) (f : m' → m) (g : k → m)
    (hf : Function.Injective f) (hg : Function.Injective g) : ‖M.submatrix f g‖ ≤ ‖M‖ := by
  have hfac : M.submatrix f g =
      (1 : Matrix m m 𝕜).submatrix f id * M * ((1 : Matrix m m 𝕜).submatrix g id)ᴴ := by
    have h1 := one_submatrix_mul f (Equiv.refl m) M
    have h2 := mul_submatrix_one (Equiv.refl m) g (M.submatrix f id)
    simp only [Equiv.coe_refl, Equiv.refl_symm, Function.id_comp] at h1 h2
    rw [conjTranspose_submatrix, conjTranspose_one, h1, h2, submatrix_submatrix]; rfl
  have hS := sel_norm_le (𝕜 := 𝕜) f hf
  have hT := sel_norm_le (𝕜 := 𝕜) g hg
  rw [hfac]
  calc _ ≤ ‖(1 : Matrix m m 𝕜).submatrix f id‖ * ‖M‖ * ‖((1 : Matrix m m 𝕜).submatrix g id)ᴴ‖ :=
        (l2_opNorm_mul _ _).trans (mul_le_mul_of_nonneg_right (l2_opNorm_mul _ _) (norm_nonneg _))
    _ ≤ 1 * ‖M‖ * 1 := by rw [l2_opNorm_conjTranspose]; gcongr
    _ = ‖M‖ := by ring

/-- Rayleigh quotient numerator `re ⟪x, G x⟫`. `λ_max(G) ≤ c` for Hermitian `G` means `rq G x ≤ c ‖x‖²`. -/
noncomputable def rq (G : Matrix n n 𝕜) (x : EuclideanSpace 𝕜 n) : ℝ :=
  RCLike.re (inner 𝕜 x (toEuclideanCLM (n := n) (𝕜 := 𝕜) G x))

theorem rq_add (G G' : Matrix n n 𝕜) (x : EuclideanSpace 𝕜 n) : rq (G + G') x = rq G x + rq G' x := by
  simp [rq, map_add, inner_add_right]

theorem rq_smul (a : ℝ) (G : Matrix n n 𝕜) (x : EuclideanSpace 𝕜 n) :
    rq ((a : 𝕜) • G) x = a * rq G x := by
  rw [rq, rq, map_smul, _root_.smul_apply, inner_smul_right, RCLike.re_ofReal_mul]

theorem rq_sum {ι : Type*} (s : Finset ι) (G : ι → Matrix n n 𝕜) (x : EuclideanSpace 𝕜 n) :
    rq (∑ i ∈ s, G i) x = ∑ i ∈ s, rq (G i) x := by
  simp [rq, map_sum, inner_sum]

theorem rq_le_norm (G : Matrix n n 𝕜) (x : EuclideanSpace 𝕜 n) : rq G x ≤ ‖G‖ * ‖x‖ ^ 2 := by
  refine (RCLike.re_le_norm _).trans ((norm_inner_le_norm _ _).trans ?_)
  rw [cstar_norm_def]
  nlinarith [ContinuousLinearMap.le_opNorm (toEuclideanCLM (n := n) (𝕜 := 𝕜) G) x, norm_nonneg x]

theorem rq_conjTranspose (G : Matrix n n 𝕜) (x : EuclideanSpace 𝕜 n) : rq Gᴴ x = rq G x := by
  rw [rq, ← star_eq_conjTranspose, map_star, ContinuousLinearMap.star_eq_adjoint,
    ContinuousLinearMap.adjoint_inner_right, ← inner_conj_symm, RCLike.conj_re, rq]

/-- The code passes the Hermitian part `(G + Gᴴ)/2` to `lam_max_upper`; it has the same Rayleigh quotient. -/
theorem rq_herm (G : Matrix n n 𝕜) (x : EuclideanSpace 𝕜 n) :
    rq (((1 / 2 : ℝ) : 𝕜) • (G + Gᴴ)) x = rq G x := by
  rw [rq_smul, rq_add, rq_conjTranspose]; ring

/-- `w wᴴ` is positive semidefinite: `re⟪x, w wᴴ x⟫ = ‖wᴴ x‖² ≥ 0`. -/
theorem rq_rank_nonneg (w : Matrix n Unit 𝕜) (x : EuclideanSpace 𝕜 n) : 0 ≤ rq (w * wᴴ) x := by
  rw [rq, EuclideanSpace.inner_eq_star_dotProduct, ofLp_toEuclideanCLM, ← mulVec_mulVec,
    dotProduct_comm, dotProduct_mulVec,
    show star x.ofLp ᵥ* w = star (wᴴ *ᵥ x.ofLp) by rw [star_mulVec, conjTranspose_conjTranspose]]
  simp only [dotProduct, Pi.star_apply, map_sum]
  refine Finset.sum_nonneg fun i _ => ?_
  rw [RCLike.star_def, RCLike.conj_mul]
  norm_cast; positivity

/-- Weyl, Rayleigh form: `λ_max(G) ≤ λ_max(G₀) + ‖G − G₀‖₂`. -/
theorem rq_weyl (G G₀ : Matrix n n 𝕜) {c p : ℝ} (h₀ : ∀ x, rq G₀ x ≤ c * ‖x‖ ^ 2)
    (hp : ‖G - G₀‖ ≤ p) (x : EuclideanSpace 𝕜 n) : rq G x ≤ (c + p) * ‖x‖ ^ 2 := by
  have e : G = G₀ + (G - G₀) := by abel
  rw [e, rq_add]
  nlinarith [h₀ x, rq_le_norm (G - G₀) x, sq_nonneg ‖x‖]

/-- The perturbation term `pert` of `final_bound` (h1cert_cell.py):
`G = Zᴴ T2 Z + γ w wᴴ`, `G₀ = XZᴴ T2h XZ + γ xw xwᴴ`, `‖Z − XZ‖, ‖w − xw‖ ≤ ε`, `‖T2 − T2h‖ ≤ r2` ⇒
`‖G − G₀‖ ≤ 2‖T2h XZ‖ε + ‖T2h‖ε² + (‖XZ‖ + ε)² r2 + γ(2‖xw‖ε + ε²)`. -/
theorem pert_bound (Z XZ T2 T2h : Matrix n n 𝕜) (w xw : Matrix n Unit 𝕜) {ε r2 γ : ℝ}
    (hZ : ‖Z - XZ‖ ≤ ε) (hw : ‖w - xw‖ ≤ ε) (hT : ‖T2 - T2h‖ ≤ r2) (hH : T2hᴴ = T2h)
    (hγ : 0 ≤ γ) :
    ‖(Zᴴ * T2 * Z + (γ : 𝕜) • (w * wᴴ)) - (XZᴴ * T2h * XZ + (γ : 𝕜) • (xw * xwᴴ))‖ ≤
      2 * ‖T2h * XZ‖ * ε + ‖T2h‖ * ε ^ 2 + (‖XZ‖ + ε) ^ 2 * r2 + γ * (2 * ‖xw‖ * ε + ε ^ 2) := by
  obtain ⟨D, rfl⟩ : ∃ D, Z = XZ + D := ⟨Z - XZ, by abel⟩
  obtain ⟨d, rfl⟩ : ∃ d, w = xw + d := ⟨w - xw, by abel⟩
  obtain ⟨Δ, rfl⟩ : ∃ Δ, T2 = T2h + Δ := ⟨T2 - T2h, by abel⟩
  simp only [add_sub_cancel_left] at hZ hw hT
  have hε : 0 ≤ ε := (norm_nonneg _).trans hZ
  have hr2 : 0 ≤ r2 := (norm_nonneg _).trans hT
  have e : (XZ + D)ᴴ * (T2h + Δ) * (XZ + D) + (γ : 𝕜) • ((xw + d) * (xw + d)ᴴ) -
      (XZᴴ * T2h * XZ + (γ : 𝕜) • (xw * xwᴴ)) =
      Dᴴ * (T2h * XZ) + (T2h * XZ)ᴴ * D + Dᴴ * T2h * D + (XZ + D)ᴴ * Δ * (XZ + D) +
        (γ : 𝕜) • (d * xwᴴ + xw * dᴴ + d * dᴴ) := by
    simp only [conjTranspose_add, conjTranspose_mul, hH, Matrix.add_mul, Matrix.mul_add,
      Matrix.mul_assoc, smul_add]
    abel
  have hXD : ‖XZ + D‖ ≤ ‖XZ‖ + ε := (norm_add_le _ _).trans (by linarith)
  have b1 : ‖Dᴴ * (T2h * XZ)‖ ≤ ε * ‖T2h * XZ‖ := (l2_opNorm_mul _ _).trans (by
    rw [l2_opNorm_conjTranspose]; gcongr)
  have b2 : ‖(T2h * XZ)ᴴ * D‖ ≤ ‖T2h * XZ‖ * ε := (l2_opNorm_mul _ _).trans (by
    rw [l2_opNorm_conjTranspose]; gcongr)
  have b3 : ‖Dᴴ * T2h * D‖ ≤ ε * ‖T2h‖ * ε := (l2_opNorm_mul _ _).trans (by
    gcongr; exact (l2_opNorm_mul _ _).trans (by rw [l2_opNorm_conjTranspose]; gcongr))
  have b4 : ‖(XZ + D)ᴴ * Δ * (XZ + D)‖ ≤ (‖XZ‖ + ε) * r2 * (‖XZ‖ + ε) := (l2_opNorm_mul _ _).trans (by
    gcongr; exact (l2_opNorm_mul _ _).trans (by rw [l2_opNorm_conjTranspose]; gcongr))
  have b5 : ‖(γ : 𝕜) • (d * xwᴴ + xw * dᴴ + d * dᴴ)‖ ≤ γ * (ε * ‖xw‖ + ‖xw‖ * ε + ε * ε) := by
    rw [norm_smul, RCLike.norm_ofReal, abs_of_nonneg hγ]
    gcongr
    refine (norm_add₃_le).trans (add_le_add (add_le_add ?_ ?_) ?_) <;>
      refine (l2_opNorm_mul _ _).trans ?_ <;> rw [l2_opNorm_conjTranspose] <;> gcongr
  rw [e]
  have t1 := norm_add_le (Dᴴ * (T2h * XZ) + (T2h * XZ)ᴴ * D + Dᴴ * T2h * D + (XZ + D)ᴴ * Δ * (XZ + D))
    ((γ : 𝕜) • (d * xwᴴ + xw * dᴴ + d * dᴴ))
  have t2 := norm_add_le (Dᴴ * (T2h * XZ) + (T2h * XZ)ᴴ * D + Dᴴ * T2h * D) ((XZ + D)ᴴ * Δ * (XZ + D))
  have t3 := norm_add₃_le (a := Dᴴ * (T2h * XZ)) (b := (T2h * XZ)ᴴ * D) (c := Dᴴ * T2h * D)
  have b4' : (‖XZ‖ + ε) * r2 * (‖XZ‖ + ε) = (‖XZ‖ + ε) ^ 2 * r2 := by ring
  nlinarith

/-- (3) The certified bound of `final_bound` (h1cert_cell.py), composed. Bordered matrix `B` on
`n ⊕ Unit` (n = 4 coarse directions, one border row) with entrywise enclosure around `Bm`; float
`X ≈ Bm⁻¹`; `Z, w` = blocks (1,1), (1,2) of `B⁻¹`; `XZ, xw` the same blocks of `X`; `T2` enclosed around
the Hermitian `T2h`; the true rank-one coefficient `γ' = (σ/|β|²)τ²/|K̂|²` varies over the cell and
`γ ≥ γ'` is the code's `gam` (`w wᴴ ⪰ 0`, so raising the coefficient raises `λ_max`); `core` an upper bound on `λ_max(XZᴴ T2h XZ + γ xw xwᴴ)` (`lam_max_upper`).
Then `B` is invertible and `λ_max(Zᴴ T2 Z + γ w wᴴ) ≤ core + pert`, with
`ε = nX η/(1 − η)` and `pert` as in the code. The code outputs `√(core + pert)/L ≥ ρ_1`. -/
theorem cell_sup_bound (B Bm X : Matrix (n ⊕ Unit) (n ⊕ Unit) 𝕜) (EB : Matrix (n ⊕ Unit) (n ⊕ Unit) ℝ)
    (hB : ∀ i j, ‖B i j - Bm i j‖ ≤ EB i j) {nX f0 : ℝ} (hX : ‖X‖ ≤ nX)
    (hf0 : frob (X * Bm - 1) ≤ f0) (hη : orEta f0 nX EB < 1)
    (T2 T2h : Matrix n n 𝕜) (E2 : Matrix n n ℝ) (hT : ∀ i j, ‖T2 i j - T2h i j‖ ≤ E2 i j)
    (hH : T2hᴴ = T2h) {γ' γ core ε : ℝ} (hγ' : 0 ≤ γ') (hγγ : γ' ≤ γ)
    (hε : ε = nX * orEta f0 nX EB / (1 - orEta f0 nX EB))
    (hcore : ∀ x, rq (X.toBlocks₁₁ᴴ * T2h * X.toBlocks₁₁ +
      (γ : 𝕜) • (X.toBlocks₁₂ * X.toBlocks₁₂ᴴ)) x ≤ core * ‖x‖ ^ 2) :
    IsUnit B ∧ ∀ x, rq ((B⁻¹).toBlocks₁₁ᴴ * T2 * (B⁻¹).toBlocks₁₁ +
      (γ' : 𝕜) • ((B⁻¹).toBlocks₁₂ * (B⁻¹).toBlocks₁₂ᴴ)) x ≤
      (core + (2 * ‖T2h * X.toBlocks₁₁‖ * ε + ‖T2h‖ * ε ^ 2 + (‖X.toBlocks₁₁‖ + ε) ^ 2 * frob E2 +
        γ * (2 * ‖X.toBlocks₁₂‖ * ε + ε ^ 2))) * ‖x‖ ^ 2 := by
  obtain ⟨hu, -, hdiff⟩ := cell_invertible B Bm X EB hB hX hf0 hη
  rw [← hε] at hdiff
  have hZ : ‖(B⁻¹).toBlocks₁₁ - X.toBlocks₁₁‖ ≤ ε := by
    have : (B⁻¹).toBlocks₁₁ - X.toBlocks₁₁ = (B⁻¹ - X).submatrix Sum.inl Sum.inl := by ext; rfl
    rw [this]; exact (norm_submatrix_le _ _ _ Sum.inl_injective Sum.inl_injective).trans hdiff
  have hw : ‖(B⁻¹).toBlocks₁₂ - X.toBlocks₁₂‖ ≤ ε := by
    have : (B⁻¹).toBlocks₁₂ - X.toBlocks₁₂ = (B⁻¹ - X).submatrix Sum.inl Sum.inr := by ext; rfl
    rw [this]; exact (norm_submatrix_le _ _ _ Sum.inl_injective Sum.inr_injective).trans hdiff
  refine ⟨hu, fun x => ?_⟩
  have hW := rq_weyl _ _ hcore (pert_bound _ _ _ _ _ _ hZ hw (entrywise_to_opnorm _ _ _ hT) hH
    (hγ'.trans hγγ)) x
  rw [rq_add, rq_smul] at hW ⊢
  nlinarith [rq_rank_nonneg (B⁻¹).toBlocks₁₂ x]

/-- The final step of `cell_bound2` (h1cert_cell2.py): `G(δ) = c + Σ_ν δ_ν g_ν + R_G` (Taylor-1 model,
`|δ_ν| ≤ h`, `|R_G i j| ≤ r i j`). If `lam` bounds `λ_max` of the Hermitian part of `G` at every vertex
`δ ∈ {±h}^ι` (no remainder), then `λ_max(G(δ)) ≤ lam + ‖r‖_F` on the whole box. For fixed `x` the
Rayleigh quotient is affine in `δ`; the vertex `s_ν = h·sign(re⟪x, g_ν x⟫)` dominates it. -/
theorem vertex_bound {ι : Type*} [Fintype ι] (c : Matrix n n 𝕜) (g : ι → Matrix n n 𝕜)
    (RG : Matrix n n 𝕜) (r : Matrix n n ℝ) {h lam : ℝ} (hR : ∀ i j, ‖RG i j‖ ≤ r i j)
    (hv : ∀ s : ι → ℝ, (∀ ν, s ν = h ∨ s ν = -h) → ∀ x,
      rq (((1 / 2 : ℝ) : 𝕜) • ((c + ∑ ν, ((s ν : ℝ) : 𝕜) • g ν) + (c + ∑ ν, ((s ν : ℝ) : 𝕜) • g ν)ᴴ)) x
        ≤ lam * ‖x‖ ^ 2)
    (δ : ι → ℝ) (hδ : ∀ ν, |δ ν| ≤ h) (x : EuclideanSpace 𝕜 n) :
    rq (c + ∑ ν, ((δ ν : ℝ) : 𝕜) • g ν + RG) x ≤ (lam + frob r) * ‖x‖ ^ 2 := by
  set s : ι → ℝ := fun ν => if 0 ≤ rq (g ν) x then h else -h
  have hs : ∀ ν, s ν = h ∨ s ν = -h := fun ν => by simp only [s]; split_ifs <;> simp
  have key := hv s hs x
  rw [rq_herm, rq_add, rq_sum] at key
  rw [rq_add, rq_add, rq_sum]
  have hle : ∑ ν, rq (((δ ν : ℝ) : 𝕜) • g ν) x ≤ ∑ ν, rq (((s ν : ℝ) : 𝕜) • g ν) x :=
    Finset.sum_le_sum fun ν _ => by
      rw [rq_smul, rq_smul]; simp only [s]; split_ifs with hp
      · nlinarith [le_abs_self (δ ν), hδ ν]
      · nlinarith [neg_abs_le (δ ν), hδ ν]
  have hRn := (rq_le_norm RG x).trans (mul_le_mul_of_nonneg_right
    ((l2_le_frob RG).trans (frob_mono RG r hR)) (sq_nonneg _))
  nlinarith

end YmLean

#print axioms YmLean.frob_mono
#print axioms YmLean.entrywise_to_opnorm
#print axioms YmLean.interval_to_opnorm
#print axioms YmLean.cell_invertible
#print axioms YmLean.sel_norm_le
#print axioms YmLean.norm_submatrix_le
#print axioms YmLean.rq_herm
#print axioms YmLean.rq_rank_nonneg
#print axioms YmLean.rq_weyl
#print axioms YmLean.pert_bound
#print axioms YmLean.cell_sup_bound
#print axioms YmLean.vertex_bound
