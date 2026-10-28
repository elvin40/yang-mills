import YmLean.CertBridge

/-!
# Resolvent identity, lower-bound transfer, Neumann series in a weighted row-sum norm

Sources: `../SOURCES_A3_SIGMA.md` §4 (4.2, 4.5) and `../SOURCES_A3_SIGMA_VERIFY.md` V5 and grade 2
(the 4.3(iii) correction: `re⟪v, C_s⁻¹v⟫ ≥ (γ_0 − 2γ_1²η_M)‖v‖²` without symmetry);
`../SOURCES_A2_R2.md` §3 (facts (N1), Lemma N: Neumann series in a weighted kernel norm).
Parts (a)–(c): spectral norm `Matrix.Norms.L2Operator`, `rq G v = re⟪v, G v⟫` (CertBridge.lean).
Part (d): `wnorm w K = sup_x Σ_y ‖K x y‖ w x y` for a two-point weight `w > 0` with
`w x z ≤ w x y · w y z` and `w x x ≤ 1`. The vertex weight `pw p x y = p y / p x` (`‖K‖_p`) and
the weight `e^{ρ|x−y|}` of A2_R2 §3 both satisfy these hypotheses.
-/

open Matrix Finset
open scoped Matrix.Norms.L2Operator

namespace YmLean

set_option linter.unusedSectionVars false

variable {𝕜 : Type*} [RCLike 𝕜] {n : Type*} [Fintype n] [DecidableEq n]

/-- (a) **Resolvent identity** (A3_SIGMA 4.2): `C₁⁻¹ − C_s⁻¹ = C₁⁻¹ (C_s − C₁) C_s⁻¹`. -/
theorem resolvent_identity (C₁ Cs : Matrix n n 𝕜) (h₁ : IsUnit C₁) (hs : IsUnit Cs) :
    C₁⁻¹ - Cs⁻¹ = C₁⁻¹ * (Cs - C₁) * Cs⁻¹ := by
  rw [mul_sub, sub_mul, nonsing_inv_mul _ ((isUnit_iff_isUnit_det _).mp h₁), one_mul, mul_assoc,
    mul_nonsing_inv _ ((isUnit_iff_isUnit_det _).mp hs), mul_one]

/-- (a) bound: `‖C_s − C₁‖ ≤ η` ⇒ `‖C₁⁻¹ − C_s⁻¹‖ ≤ ‖C₁⁻¹‖ η ‖C_s⁻¹‖`. -/
theorem resolvent_bound (C₁ Cs : Matrix n n 𝕜) (h₁ : IsUnit C₁) (hs : IsUnit Cs) {η : ℝ}
    (hη : ‖Cs - C₁‖ ≤ η) : ‖C₁⁻¹ - Cs⁻¹‖ ≤ ‖C₁⁻¹‖ * η * ‖Cs⁻¹‖ := by
  have hη0 : 0 ≤ η := (norm_nonneg _).trans hη
  rw [resolvent_identity C₁ Cs h₁ hs]
  exact (norm_mul_le _ _).trans (mul_le_mul_of_nonneg_right ((norm_mul_le _ _).trans
    (mul_le_mul_of_nonneg_left hη (norm_nonneg _))) (norm_nonneg _))

/-- (b) **Lower-bound transfer** (A3_SIGMA_VERIFY V5, 4.3(iii) corrected): `re⟪v, A v⟫ ≥ γ₀‖v‖²`
and `‖A − B‖ ≤ ε` ⇒ `re⟪v, B v⟫ ≥ (γ₀ − ε)‖v‖²`. No symmetry is assumed. -/
theorem lower_transfer (A B : Matrix n n 𝕜) {γ₀ ε : ℝ} (hA : ∀ v, γ₀ * ‖v‖ ^ 2 ≤ rq A v)
    (hAB : ‖A - B‖ ≤ ε) (v : EuclideanSpace 𝕜 n) : (γ₀ - ε) * ‖v‖ ^ 2 ≤ rq B v := by
  have e : rq A v = rq B v + rq (A - B) v := by rw [← rq_add, add_sub_cancel]
  have h1 := rq_le_norm (A - B) v
  have h2 : ‖A - B‖ * ‖v‖ ^ 2 ≤ ε * ‖v‖ ^ 2 := mul_le_mul_of_nonneg_right hAB (by positivity)
  linarith [hA v]

/-- (c) **Neumann** (A3_SIGMA 4.5, via `oishi_rump` with `R = C₁⁻¹`): `‖C_s − C₁‖ ≤ η`,
`η ‖C₁⁻¹‖ < 1` ⇒ `C_s` invertible and `‖C_s⁻¹‖ ≤ ‖C₁⁻¹‖ / (1 − η ‖C₁⁻¹‖)`. -/
theorem neumann_perturb (C₁ Cs : Matrix n n 𝕜) (h₁ : IsUnit C₁) {η : ℝ} (hη : ‖Cs - C₁‖ ≤ η)
    (hlt : η * ‖C₁⁻¹‖ < 1) : IsUnit Cs ∧ ‖Cs⁻¹‖ ≤ ‖C₁⁻¹‖ / (1 - η * ‖C₁⁻¹‖) := by
  have e : C₁⁻¹ * Cs - 1 = C₁⁻¹ * (Cs - C₁) := by
    rw [mul_sub, nonsing_inv_mul _ ((isUnit_iff_isUnit_det _).mp h₁)]
  have hle : ‖C₁⁻¹ * Cs - 1‖ ≤ η * ‖C₁⁻¹‖ := by
    rw [e, mul_comm η]
    exact (norm_mul_le _ _).trans (mul_le_mul_of_nonneg_left hη (norm_nonneg _))
  obtain ⟨hu, hb⟩ := oishi_rump Cs C₁⁻¹ (hle.trans_lt hlt)
  exact ⟨hu, hb.trans (div_le_div_of_nonneg_left (norm_nonneg _) (by linarith) (by linarith))⟩

/-- (a)–(c) chained as in A3_SIGMA 4.2/4.5 and VERIFY V5: `‖C₁⁻¹‖ ≤ γ₁`, `‖C_s − C₁‖ ≤ η`,
`2γ₁η ≤ 1`, `re⟪v, C₁⁻¹v⟫ ≥ γ₀‖v‖²` ⇒ `C_s` invertible, `‖C_s⁻¹‖ ≤ 2γ₁`,
`‖C₁⁻¹ − C_s⁻¹‖ ≤ 2γ₁²η`, and `re⟪v, C_s⁻¹v⟫ ≥ (γ₀ − 2γ₁²η)‖v‖²`. -/
theorem resolvent_chain (C₁ Cs : Matrix n n 𝕜) (h₁ : IsUnit C₁) {γ₀ γ₁ η : ℝ}
    (hγ₁ : ‖C₁⁻¹‖ ≤ γ₁) (hη : ‖Cs - C₁‖ ≤ η) (hsmall : 2 * γ₁ * η ≤ 1)
    (hγ₀ : ∀ v, γ₀ * ‖v‖ ^ 2 ≤ rq C₁⁻¹ v) :
    IsUnit Cs ∧ ‖Cs⁻¹‖ ≤ 2 * γ₁ ∧ ‖C₁⁻¹ - Cs⁻¹‖ ≤ 2 * γ₁ ^ 2 * η ∧
      ∀ v, (γ₀ - 2 * γ₁ ^ 2 * η) * ‖v‖ ^ 2 ≤ rq Cs⁻¹ v := by
  have hη0 : 0 ≤ η := (norm_nonneg _).trans hη
  have hn0 := norm_nonneg C₁⁻¹
  have hhalf : η * ‖C₁⁻¹‖ ≤ 1 / 2 := by nlinarith
  obtain ⟨hs, hb⟩ := neumann_perturb C₁ Cs h₁ hη (by linarith)
  have hs2 : ‖Cs⁻¹‖ ≤ 2 * γ₁ := hb.trans (by
    rw [div_le_iff₀ (by linarith)]; nlinarith)
  have hR : ‖C₁⁻¹ - Cs⁻¹‖ ≤ 2 * γ₁ ^ 2 * η := (resolvent_bound C₁ Cs h₁ hs hη).trans (by
    have := norm_nonneg Cs⁻¹
    calc ‖C₁⁻¹‖ * η * ‖Cs⁻¹‖ ≤ γ₁ * η * (2 * γ₁) := by gcongr; linarith
      _ = 2 * γ₁ ^ 2 * η := by ring)
  exact ⟨hs, hs2, hR, lower_transfer _ _ hγ₀ hR⟩

/-! ### (d) Weighted row-sum norm (A2_R2 §3 (N1), Lemma N) -/

/-- `‖K‖_w := sup_x Σ_y ‖K x y‖ w x y`. -/
noncomputable def wnorm (w : n → n → ℝ) (K : Matrix n n 𝕜) : ℝ := ⨆ x, ∑ y, ‖K x y‖ * w x y

/-- Vertex weight `p y / p x`: `wnorm (pw p) K = ‖K‖_p = sup_x Σ_y |K x y| p y / p x`. -/
noncomputable def pw (p : n → ℝ) (x y : n) : ℝ := p y / p x

theorem row_le_wnorm (w : n → n → ℝ) (K : Matrix n n 𝕜) (x : n) :
    ∑ y, ‖K x y‖ * w x y ≤ wnorm w K :=
  le_ciSup (Set.finite_range _).bddAbove x

theorem wnorm_nonneg {w : n → n → ℝ} (hw : ∀ x y, 0 ≤ w x y) (K : Matrix n n 𝕜) :
    0 ≤ wnorm w K :=
  Real.iSup_nonneg fun x => sum_nonneg fun y _ => mul_nonneg (norm_nonneg _) (hw x y)

theorem wnorm_add_le {w : n → n → ℝ} (hw : ∀ x y, 0 ≤ w x y) (A B : Matrix n n 𝕜) :
    wnorm w (A + B) ≤ wnorm w A + wnorm w B :=
  Real.iSup_le (fun x => calc
    ∑ y, ‖(A + B) x y‖ * w x y ≤ ∑ y, (‖A x y‖ * w x y + ‖B x y‖ * w x y) :=
        sum_le_sum fun y _ => by
          rw [← add_mul]; exact mul_le_mul_of_nonneg_right (norm_add_le _ _) (hw x y)
    _ ≤ _ := by rw [sum_add_distrib]; exact add_le_add (row_le_wnorm _ _ x) (row_le_wnorm _ _ x))
    (add_nonneg (wnorm_nonneg hw _) (wnorm_nonneg hw _))

theorem wnorm_one_le {w : n → n → ℝ} (hw : ∀ x y, 0 ≤ w x y) (hdiag : ∀ x, w x x ≤ 1) :
    wnorm w (1 : Matrix n n 𝕜) ≤ 1 :=
  Real.iSup_le (fun x => by simp [one_apply, hdiag x]) zero_le_one

/-- (N1) **Submultiplicativity**: `‖K L‖_w ≤ ‖K‖_w ‖L‖_w` if `w x z ≤ w x y · w y z`. -/
theorem wnorm_mul_le {w : n → n → ℝ} (hw : ∀ x y, 0 ≤ w x y)
    (htri : ∀ x y z, w x z ≤ w x y * w y z) (K L : Matrix n n 𝕜) :
    wnorm w (K * L) ≤ wnorm w K * wnorm w L :=
  Real.iSup_le (fun x => calc
    ∑ z, ‖(K * L) x z‖ * w x z ≤ ∑ z, ∑ y, ‖K x y‖ * w x y * (‖L y z‖ * w y z) :=
        sum_le_sum fun z _ => by
          rw [mul_apply, sum_mul]
          refine (mul_le_mul_of_nonneg_right (norm_sum_le _ _) (hw x z)).trans ?_
          rw [sum_mul]
          refine sum_le_sum fun y _ => ?_
          rw [norm_mul]
          calc ‖K x y‖ * ‖L y z‖ * w x z ≤ ‖K x y‖ * ‖L y z‖ * (w x y * w y z) :=
                mul_le_mul_of_nonneg_left (htri x y z) (by positivity)
            _ = _ := by ring
    _ = ∑ y, ‖K x y‖ * w x y * ∑ z, ‖L y z‖ * w y z := by
        rw [sum_comm]; simp only [mul_sum]
    _ ≤ ∑ y, ‖K x y‖ * w x y * wnorm w L :=
        sum_le_sum fun y _ => mul_le_mul_of_nonneg_left (row_le_wnorm _ _ y)
          (mul_nonneg (norm_nonneg _) (hw x y))
    _ ≤ wnorm w K * wnorm w L := by
        rw [← sum_mul]
        exact mul_le_mul_of_nonneg_right (row_le_wnorm _ _ x) (wnorm_nonneg hw _))
    (mul_nonneg (wnorm_nonneg hw _) (wnorm_nonneg hw _))

/-- **Neumann in the weighted norm** (A2_R2 §3 Lemma N, first step): `w > 0`,
`w x z ≤ w x y · w y z`, `w x x ≤ 1`, `‖K‖_w < 1` ⇒ `1 − K` invertible and
`‖(1 − K)⁻¹‖_w ≤ 1 / (1 − ‖K‖_w)`. Proof without the series: `(1 − K)v = 0` gives `V = K V` for
the matrix `V` with every column `v`, so `‖V‖_w ≤ ‖K‖_w ‖V‖_w`, `‖V‖_w = 0`, `v = 0`; then
`X = (1 − K)⁻¹ = 1 + K X` gives `‖X‖_w ≤ 1 + ‖K‖_w ‖X‖_w`. -/
theorem wnorm_neumann {w : n → n → ℝ} (hw : ∀ x y, 0 < w x y)
    (htri : ∀ x y z, w x z ≤ w x y * w y z) (hdiag : ∀ x, w x x ≤ 1) (K : Matrix n n 𝕜)
    (hK : wnorm w K < 1) : IsUnit (1 - K) ∧ wnorm w (1 - K)⁻¹ ≤ 1 / (1 - wnorm w K) := by
  have hw0 : ∀ x y, 0 ≤ w x y := fun x y => (hw x y).le
  have hu : IsUnit (1 - K) := by
    rw [← mulVec_injective_iff_isUnit]
    intro u u' h
    set v := u - u'
    have hv : K *ᵥ v = v := by
      have : (1 - K) *ᵥ v = 0 := by simp only [v, mulVec_sub, h, sub_self]
      rw [sub_mulVec, one_mulVec, sub_eq_zero] at this; exact this.symm
    set V : Matrix n n 𝕜 := Matrix.of fun x _ => v x
    have hKV : K * V = V := by
      ext x y; rw [← hv]; simp [V, mul_apply, mulVec, dotProduct]
    have hV0 : wnorm w V ≤ 0 := by
      have h1 := wnorm_mul_le hw0 htri K V
      rw [hKV] at h1
      nlinarith [wnorm_nonneg hw0 V]
    rw [← sub_eq_zero]
    funext x
    have h2 : ‖v x‖ * w x x ≤ 0 :=
      ((single_le_sum (f := fun y => ‖V x y‖ * w x y) (fun y _ => mul_nonneg (norm_nonneg _)
        (hw0 x y)) (mem_univ x))).trans ((row_le_wnorm w V x).trans hV0)
    have : ‖v x‖ ≤ 0 := by nlinarith [hw x x, norm_nonneg (v x)]
    exact norm_le_zero_iff.mp this
  refine ⟨hu, ?_⟩
  set X := (1 - K)⁻¹
  have hX : X = 1 + K * X := by
    have h := mul_nonsing_inv _ ((isUnit_iff_isUnit_det _).mp hu)
    rw [sub_mul, one_mul] at h
    exact eq_add_of_sub_eq h
  have hb : wnorm w X ≤ 1 + wnorm w K * wnorm w X := by
    calc wnorm w X = wnorm w (1 + K * X) := by rw [← hX]
      _ ≤ _ := (wnorm_add_le hw0 _ _).trans
          (add_le_add (wnorm_one_le hw0 hdiag) (wnorm_mul_le hw0 htri _ _))
  rw [le_div_iff₀ (by linarith)]
  nlinarith

/-- `pw p` (`p > 0`) satisfies the weight hypotheses: `pw p x z = pw p x y · pw p y z`,
`pw p x x = 1`. -/
theorem pw_props {p : n → ℝ} (hp : ∀ x, 0 < p x) :
    (∀ x y, 0 < pw p x y) ∧ (∀ x y z, pw p x z ≤ pw p x y * pw p y z) ∧ ∀ x, pw p x x ≤ 1 := by
  refine ⟨fun x y => div_pos (hp y) (hp x), fun x y z => le_of_eq ?_, fun x => ?_⟩
  · have := (hp y).ne'; simp only [pw]; field_simp
  · simp [pw, (hp x).ne']

/-- (N1) for `‖K‖_p := sup_x Σ_y |K x y| p y / p x`: `‖K L‖_p ≤ ‖K‖_p ‖L‖_p`. -/
theorem pwnorm_mul_le {p : n → ℝ} (hp : ∀ x, 0 < p x) (K L : Matrix n n 𝕜) :
    wnorm (pw p) (K * L) ≤ wnorm (pw p) K * wnorm (pw p) L :=
  let h := pw_props hp
  wnorm_mul_le (fun x y => (h.1 x y).le) h.2.1 K L

/-- Neumann for `‖·‖_p`: `‖K‖_p < 1` ⇒ `1 − K` invertible, `‖(1 − K)⁻¹‖_p ≤ 1 / (1 − ‖K‖_p)`. -/
theorem pwnorm_neumann {p : n → ℝ} (hp : ∀ x, 0 < p x) (K : Matrix n n 𝕜)
    (hK : wnorm (pw p) K < 1) :
    IsUnit (1 - K) ∧ wnorm (pw p) (1 - K)⁻¹ ≤ 1 / (1 - wnorm (pw p) K) :=
  let h := pw_props hp
  wnorm_neumann h.1 h.2.1 h.2.2 K hK

end YmLean

#print axioms YmLean.resolvent_identity
#print axioms YmLean.resolvent_bound
#print axioms YmLean.lower_transfer
#print axioms YmLean.neumann_perturb
#print axioms YmLean.resolvent_chain
#print axioms YmLean.wnorm_mul_le
#print axioms YmLean.wnorm_neumann
#print axioms YmLean.pwnorm_mul_le
#print axioms YmLean.pwnorm_neumann
