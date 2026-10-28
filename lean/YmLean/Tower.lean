import YmLean.CertBridge

/-!
# Tower identity and the majorant inequalities (H1_ANALYTIC.md §1–§3, §5; H1_ANALYTIC_VERIFY.md V1–V3)

Source: `../H1_ANALYTIC.md` §2 (tower identity (2.2), consequence (I1)), §3 Lemma T (a)–(c),
(1.1), (5.3); `../H1_ANALYTIC_VERIFY.md` V1 (inequalities (i)–(vii)). Abstract algebraic core only:
the Fourier/umklapp derivation of (2.2) and the specific symbols `a_ρ`, `σ`, `q̃` are not formalized.
`λ_max(G) ≤ c` is written in Rayleigh form `∀ x, rq G x ≤ c ‖x‖²` (`rq` of CertBridge.lean).
-/

open Matrix
open scoped Matrix.Norms.L2Operator

namespace YmLean

set_option linter.unusedSectionVars false

section Weights

variable {ι : Type*} [Fintype ι]

/-- Averages of a probability weight lie between min and max: `w ≥ 0`, `Σ w = 1` ⇒
`min d ≤ Σ w_i d_i ≤ max d`. (`Σ w = 1` forces `ι` nonempty.) -/
theorem weighted_tower (w d : ι → ℝ) (hw : ∀ i, 0 ≤ w i) (hw1 : ∑ i, w i = 1) :
    ∃ hne : (Finset.univ : Finset ι).Nonempty,
      Finset.univ.inf' hne d ≤ ∑ i, w i * d i ∧ ∑ i, w i * d i ≤ Finset.univ.sup' hne d := by
  have hne : (Finset.univ : Finset ι).Nonempty :=
    Finset.nonempty_of_sum_ne_zero (s := Finset.univ) (f := w) (by rw [hw1]; norm_num)
  refine ⟨hne, ?_, ?_⟩
  · calc Finset.univ.inf' hne d = ∑ i, w i * Finset.univ.inf' hne d := by
          rw [← Finset.sum_mul, hw1, one_mul]
      _ ≤ _ := Finset.sum_le_sum fun i _ =>
          mul_le_mul_of_nonneg_left (Finset.inf'_le _ (Finset.mem_univ i)) (hw i)
  · calc ∑ i, w i * d i ≤ ∑ i, w i * Finset.univ.sup' hne d := Finset.sum_le_sum fun i _ =>
          mul_le_mul_of_nonneg_left (Finset.le_sup' _ (Finset.mem_univ i)) (hw i)
      _ = _ := by rw [← Finset.sum_mul, hw1, one_mul]

/-- Upper bound of H1_ANALYTIC §3 (b) / VERIFY V1 (iv): weights `w_i s_i` with `w ≥ 0`, `Σ w = 1`
(Fejér: `w = Π_ρ σ_ρ²`), `0 ≤ s ≤ 1` (`s = σ_μ²`), and per-term bounds `0 ≤ d_i ≤ b_i`
(`b_i = 1/|q̃_i|²`) ⇒ `Σ w_i s_i d_i ≤ Σ w_i b_i ≤ max b`. -/
theorem weighted_tower_le (w s d b : ι → ℝ) (hw : ∀ i, 0 ≤ w i) (hw1 : ∑ i, w i = 1)
    (hs0 : ∀ i, 0 ≤ s i) (hs1 : ∀ i, s i ≤ 1) (hd0 : ∀ i, 0 ≤ d i) (hdb : ∀ i, d i ≤ b i) :
    ∃ hne : (Finset.univ : Finset ι).Nonempty,
      0 ≤ ∑ i, w i * s i * d i ∧ ∑ i, w i * s i * d i ≤ ∑ i, w i * b i ∧
        ∑ i, w i * b i ≤ Finset.univ.sup' hne b := by
  obtain ⟨hne, -, hsup⟩ := weighted_tower w b hw hw1
  refine ⟨hne, Finset.sum_nonneg fun i _ => by have := hw i; have := hs0 i; have := hd0 i; positivity,
    Finset.sum_le_sum fun i _ => ?_, hsup⟩
  have := hw i; have := hs0 i; have := hs1 i; have := hd0 i; have := hdb i
  nlinarith [mul_nonneg (hw i) (hd0 i)]

/-- (2.2) as a definition: `d^{ML}_μ(K) = L^{−2} Σ_l Π_ρ a_ρ(k_l)² · a_μ(k_l)² · d^M_μ(k_l)`, with
`p l = Π_ρ a_ρ(k_l)²`, `aμ2 l = a_μ(k_l)²`, `dM l = d^M_μ(k_l)` (l over the L⁴ umklapp representatives). -/
noncomputable def towerSym (L : ℝ) (p aμ2 dM : ι → ℝ) : ℝ := (L ^ 2)⁻¹ * ∑ l, p l * aμ2 l * dM l

/-- The two bounds the majorant uses on (2.2): with `Σ_l p_l = 1` (partition of unity), `0 ≤ a_μ² ≤ 1`,
and per-term `0 ≤ d^M_μ(k_l) ≤ b_l` (`b_l = 1/|q̃_0(k_l)|²`): `0 ≤ d^{ML}_μ ≤ L^{−2} max_l b_l`. -/
theorem tower_bounds (L : ℝ) (p aμ2 dM b : ι → ℝ) (hp : ∀ l, 0 ≤ p l) (hp1 : ∑ l, p l = 1)
    (ha0 : ∀ l, 0 ≤ aμ2 l) (ha1 : ∀ l, aμ2 l ≤ 1) (hd0 : ∀ l, 0 ≤ dM l) (hdb : ∀ l, dM l ≤ b l) :
    ∃ hne : (Finset.univ : Finset ι).Nonempty,
      0 ≤ towerSym L p aμ2 dM ∧ towerSym L p aμ2 dM ≤ (L ^ 2)⁻¹ * Finset.univ.sup' hne b := by
  obtain ⟨hne, h0, h1, h2⟩ := weighted_tower_le p aμ2 dM b hp hp1 ha0 ha1 hd0 hdb
  have hL : 0 ≤ (L ^ 2)⁻¹ := inv_nonneg.2 (sq_nonneg L)
  exact ⟨hne, mul_nonneg hL h0, mul_le_mul_of_nonneg_left (h1.trans h2) hL⟩

end Weights

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n]

/-- Consequence (I1), algebraic step: `T = s² Σ_l E_l P_l D_l P_l E_lᴴ`, `P_⊥`, `P_l` Hermitian,
`D_l = diag(d_l)`, `P_⊥ E_l P_l = P_⊥ diag(e_l)` (H1_ANALYTIC §2: `P_⊥E_lP_l = P_⊥E⁰_l`, `E⁰_l` diagonal) ⇒
`P_⊥ T P_⊥ = P_⊥ diag_μ(s² Σ_l e_{l,μ} d_{l,μ} conj e_{l,μ}) P_⊥`. With (2.2) the diagonal is `d^{ML}(K)`. -/
theorem I1_compress {ι : Type*} [Fintype ι] (s : 𝕜) (P : Matrix n n 𝕜) (hP : Pᴴ = P)
    (E Pl : ι → Matrix n n 𝕜) (e d : ι → n → 𝕜) (hPl : ∀ l, (Pl l)ᴴ = Pl l)
    (hE : ∀ l, P * E l * Pl l = P * diagonal (e l)) :
    P * (s ^ 2 • ∑ l, E l * Pl l * diagonal (d l) * Pl l * (E l)ᴴ) * P =
      P * diagonal (fun μ => s ^ 2 * ∑ l, e l μ * d l μ * star (e l μ)) * P := by
  have key : ∀ l, P * (E l * Pl l * diagonal (d l) * Pl l * (E l)ᴴ) * P =
      P * diagonal (fun μ => e l μ * d l μ * star (e l μ)) * P := by
    intro l
    have h2 : Pl l * (E l)ᴴ * P = (diagonal (e l))ᴴ * P := by
      have := congrArg conjTranspose (hE l)
      simpa [conjTranspose_mul, hP, hPl, Matrix.mul_assoc] using this
    calc P * (E l * Pl l * diagonal (d l) * Pl l * (E l)ᴴ) * P
        = (P * E l * Pl l) * diagonal (d l) * (Pl l * (E l)ᴴ * P) := by
          simp only [Matrix.mul_assoc]
      _ = P * diagonal (e l) * diagonal (d l) * ((diagonal (e l))ᴴ * P) := by rw [hE l, h2]
      _ = _ := by
          rw [diagonal_conjTranspose]
          simp only [← Matrix.mul_assoc]
          rw [Matrix.mul_assoc P (diagonal _) (diagonal _), diagonal_mul_diagonal,
            Matrix.mul_assoc P, diagonal_mul_diagonal]
          rfl
  have hd : diagonal (fun μ => s ^ 2 * ∑ l, e l μ * d l μ * star (e l μ)) =
      s ^ 2 • ∑ l, diagonal (fun μ => e l μ * d l μ * star (e l μ)) := by
    ext i j
    rw [Matrix.smul_apply, Matrix.sum_apply]
    by_cases h : i = j <;> simp [h]
  rw [hd, Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_sum,
    Matrix.sum_mul, Matrix.mul_sum, Matrix.sum_mul]
  simp only [← Matrix.mul_assoc] at key ⊢
  simp only [key]

/-- `re⟪x, Zᴴ T Z x⟫ = re⟪Zx, T Zx⟫`. -/
theorem rq_conj (Z T : Matrix n n 𝕜) (x : EuclideanSpace 𝕜 n) :
    rq (Zᴴ * T * Z) x = rq T (toEuclideanCLM (n := n) (𝕜 := 𝕜) Z x) := by
  rw [rq, rq, map_mul, map_mul, ← star_eq_conjTranspose, map_star,
    ContinuousLinearMap.star_eq_adjoint]
  simp only [mul_apply_eq_comp]
  rw [ContinuousLinearMap.adjoint_inner_right]

/-- (2) VERIFY V1 (i): `λ_max(A + B) ≤ λ_max A + λ_max B`, Rayleigh form. Hermiticity is not needed. -/
theorem rayleigh_sum_bound (A B : Matrix n n 𝕜) {a b : ℝ} (hA : ∀ x, rq A x ≤ a * ‖x‖ ^ 2)
    (hB : ∀ x, rq B x ≤ b * ‖x‖ ^ 2) (x : EuclideanSpace 𝕜 n) : rq (A + B) x ≤ (a + b) * ‖x‖ ^ 2 := by
  rw [rq_add]; nlinarith [hA x, hB x]

/-- (3) `λ_max(Zᴴ T Z) ≤ ‖Z‖² t` when `λ_max(T) ≤ t`, `t ≥ 0` (`‖Z‖` = spectral norm). -/
theorem conj_rayleigh_bound (Z T : Matrix n n 𝕜) {t : ℝ} (ht : 0 ≤ t)
    (hT : ∀ y, rq T y ≤ t * ‖y‖ ^ 2) (x : EuclideanSpace 𝕜 n) :
    rq (Zᴴ * T * Z) x ≤ ‖Z‖ ^ 2 * t * ‖x‖ ^ 2 := by
  rw [rq_conj]
  have hZx : ‖toEuclideanCLM (n := n) (𝕜 := 𝕜) Z x‖ ≤ ‖Z‖ * ‖x‖ := by
    rw [cstar_norm_def]; exact ContinuousLinearMap.le_opNorm _ x
  have h2 : ‖toEuclideanCLM (n := n) (𝕜 := 𝕜) Z x‖ ^ 2 ≤ (‖Z‖ * ‖x‖) ^ 2 :=
    pow_le_pow_left₀ (norm_nonneg _) hZx 2
  nlinarith [hT (toEuclideanCLM (n := n) (𝕜 := 𝕜) Z x)]

/-- (4) `λ_max(γ w wᴴ) ≤ γ ‖w‖²` for `γ ≥ 0` (`w` a column, `‖w‖` its spectral = Euclidean norm). -/
theorem rank_one_bound (w : Matrix n Unit 𝕜) {γ : ℝ} (hγ : 0 ≤ γ) (x : EuclideanSpace 𝕜 n) :
    rq ((γ : 𝕜) • (w * wᴴ)) x ≤ γ * ‖w‖ ^ 2 * ‖x‖ ^ 2 := by
  rw [rq_smul]
  have h1 : ‖w * wᴴ‖ ≤ ‖w‖ ^ 2 :=
    (l2_opNorm_mul _ _).trans (by rw [l2_opNorm_conjTranspose, sq])
  have := (rq_le_norm (w * wᴴ) x).trans (mul_le_mul_of_nonneg_right h1 (sq_nonneg ‖x‖))
  nlinarith [mul_le_mul_of_nonneg_left this hγ]

/-- (2)–(4) combined, for (1.1): `ρ_1² L² = λ_max(Zᴴ T2 Z + γ w wᴴ) ≤ ‖Z‖² λ_max(T2) + γ ‖w‖²`
(`w = c`, `γ = 1/(σ|K̂|⁴)`). -/
theorem majorant_core (Z T2 : Matrix n n 𝕜) (w : Matrix n Unit 𝕜) {t γ : ℝ} (ht : 0 ≤ t)
    (hγ : 0 ≤ γ) (hT : ∀ y, rq T2 y ≤ t * ‖y‖ ^ 2) (x : EuclideanSpace 𝕜 n) :
    rq (Zᴴ * T2 * Z + (γ : 𝕜) • (w * wᴴ)) x ≤ (‖Z‖ ^ 2 * t + γ * ‖w‖ ^ 2) * ‖x‖ ^ 2 :=
  rayleigh_sum_bound _ _ (conj_rayleigh_bound Z T2 ht hT) (rank_one_bound w hγ) x

/-- The sharper form Lemma T (a), (c) actually uses: `T2 ≤ d_max T` (Loewner, Rayleigh form) and
`Zᴴ T Z = Z` (`Z = (P_⊥TP_⊥)⁺`) ⇒ `λ_max(Zᴴ T2 Z) ≤ d_max ‖Z‖`. -/
theorem lemmaT_core (Z T T2 : Matrix n n 𝕜) {dmax : ℝ} (hdm : 0 ≤ dmax)
    (hT2 : ∀ y, rq T2 y ≤ dmax * rq T y) (hZ : Zᴴ * T * Z = Z) (x : EuclideanSpace 𝕜 n) :
    rq (Zᴴ * T2 * Z) x ≤ dmax * ‖Z‖ * ‖x‖ ^ 2 := by
  rw [rq_conj]
  have h := hT2 (toEuclideanCLM (n := n) (𝕜 := 𝕜) Z x)
  have e : rq T (toEuclideanCLM (n := n) (𝕜 := 𝕜) Z x) = rq Z x := by rw [← rq_conj, hZ]
  rw [e] at h
  nlinarith [rq_le_norm Z x, mul_le_mul_of_nonneg_left (rq_le_norm Z x) hdm]

end YmLean

#print axioms YmLean.weighted_tower
#print axioms YmLean.weighted_tower_le
#print axioms YmLean.tower_bounds
#print axioms YmLean.I1_compress
#print axioms YmLean.rq_conj
#print axioms YmLean.rayleigh_sum_bound
#print axioms YmLean.conj_rayleigh_bound
#print axioms YmLean.rank_one_bound
#print axioms YmLean.majorant_core
#print axioms YmLean.lemmaT_core
