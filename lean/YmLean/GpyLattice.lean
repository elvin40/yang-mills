import YmLean.GpyBernoulli
import YmLean.GpyMinCert

/-!
# GPY potential on the lattice: from coefficient bounds to the unique global minimum

SOURCES_R3S1_GPY_MIN.md §1.2 (reduction to the continuum at a_eff plus a remainder bounded by
ρ₀, ρ₂). Statement check: `VERIFY_GpyMin.md`.

The lattice potential is L³V = a₁|tr Ω|² − Σ_{n≥1} c_n |tr Ωⁿ|² with arbitrary real coefficients
c_n (c_n = c_n^lat = 2N₄³w(nN₄)/n in the source). Put δc_n = c_n − 2/(π²n⁴). The only inputs are
* δc₁ ≤ δc₁⁺,  Σ_{n≥2} |δc_n| ≤ ρ₀,  Σ_{n≥2} n²|δc_n| ≤ ρ₂  (summable),
which are the quantities certified by numerics/r3s1_gpy_cert_iv.py (R⁺(m) chord sums and the
analytic tail A(m)). `rem3`, `rem2` prove the remainder hypothesis (H-rem) of `GpyMinCert.lean`
from them; `su3_lattice_coeff_16` etc. give the lattice theorem.
-/

namespace YmLean.Gpy

open Real

/-! ## 1. Second-order bound for cos -/

theorem cos_taylor2_of_nonneg (α : ℝ) {e : ℝ} (he : 0 ≤ e) :
    |cos (α + e) - cos α + e * sin α| ≤ e ^ 2 / 2 := by
  have key : ∀ σ : ℝ, (σ = 1 ∨ σ = -1) →
      0 ≤ e ^ 2 / 2 - σ * (cos (α + e) - cos α + e * sin α) := by
    intro σ hσ
    let g : ℝ → ℝ := fun x => x ^ 2 / 2 - σ * (cos (α + x) - cos α + x * sin α)
    have hd : ∀ x, HasDerivAt g (x - σ * (-sin (α + x) + sin α)) x := by
      intro x
      have H := ((hasDerivAt_pow 2 x).div_const 2).sub
        (((((hasDerivAt_id' x).const_add α).cos.sub_const (cos α)).add
          ((hasDerivAt_id' x).mul_const (sin α))).const_mul σ)
      have e : (2 : ℕ) * x ^ (2 - 1) / 2 - σ * (-sin (α + x) * 1 + 1 * sin α) =
          x - σ * (-sin (α + x) + sin α) := by norm_num
      rw [e] at H; exact H
    have hmono : MonotoneOn g (Set.Ici 0) := by
      apply monotoneOn_of_deriv_nonneg (convex_Ici 0)
      · exact fun x _ => (hd x).continuousAt.continuousWithinAt
      · exact fun x _ => (hd x).differentiableAt.differentiableWithinAt
      · intro x hx
        rw [interior_Ici] at hx
        rw [(hd x).deriv]
        have hx0 : 0 ≤ x := le_of_lt hx
        have hs := abs_sin_sub_sin_le (α + x) α
        rw [show α + x - α = x by ring, abs_of_nonneg hx0] at hs
        have hs' := abs_le.mp hs
        rcases hσ with h | h <;> subst h <;> linarith [hs'.1, hs'.2]
    have h0 := hmono (Set.mem_Ici.mpr le_rfl) (Set.mem_Ici.mpr he) he
    have hg0 : g 0 = 0 := by simp [g]
    rw [hg0] at h0
    exact h0
  have k1 := key 1 (Or.inl rfl)
  have k2 := key (-1) (Or.inr rfl)
  rw [abs_le]; constructor <;> linarith

theorem cos_taylor2 (α e : ℝ) : |cos (α + e) - cos α + e * sin α| ≤ e ^ 2 / 2 := by
  rcases le_total 0 e with he | he
  · exact cos_taylor2_of_nonneg α he
  · have h := cos_taylor2_of_nonneg (-α) (neg_nonneg.mpr he)
    have e1 : cos (-α + -e) = cos (α + e) := by rw [← neg_add, cos_neg]
    rw [e1, cos_neg, sin_neg, neg_sq] at h
    have e2 : cos (α + e) - cos α + -e * -sin α = cos (α + e) - cos α + e * sin α := by ring
    rwa [e2] at h

/-! ## 2. |D_n(θ) − D_n(c)| ≤ min(N², N n² d²) -/

theorem D3_nonneg (θ₁ θ₂ θ₃ : ℝ) (n : ℕ) : 0 ≤ D3 θ₁ θ₂ θ₃ n := Complex.normSq_nonneg _

theorem D3_le (θ₁ θ₂ θ₃ : ℝ) (n : ℕ) : D3 θ₁ θ₂ θ₃ n ≤ 9 := by
  rw [D3_eq]
  linarith [cos_le_one (n * (θ₁ - θ₂)), cos_le_one (n * (θ₂ - θ₃)), cos_le_one (n * (θ₁ - θ₃))]

theorem D3_diff_sq (n : ℕ) (x y : ℝ) :
    |(cos (n * x) + cos (n * y) + cos (n * (x + y))) -
        (cos (n * (2 * π / 3)) + cos (n * (2 * π / 3)) + cos (n * (2 * π / 3 + 2 * π / 3)))|
      ≤ (n : ℝ) ^ 2 * ((x - 2 * π / 3) ^ 2 + (y - 2 * π / 3) ^ 2
          + (x + y - (2 * π / 3 + 2 * π / 3)) ^ 2) / 2 := by
  set α := (n : ℝ) * (2 * π / 3)
  set β := (n : ℝ) * (2 * π / 3 + 2 * π / 3)
  have hβ : sin β = -sin α := by
    rw [show β = n * (2 * π) - α by simp only [α, β]; ring, sin_nat_mul_two_pi_sub]
  have F1 := cos_taylor2 α (n * (x - 2 * π / 3))
  have F2 := cos_taylor2 α (n * (y - 2 * π / 3))
  have F3 := cos_taylor2 β (n * (x + y - (2 * π / 3 + 2 * π / 3)))
  have a1 : α + n * (x - 2 * π / 3) = n * x := by simp only [α]; ring
  have a2 : α + n * (y - 2 * π / 3) = n * y := by simp only [α]; ring
  have a3 : β + n * (x + y - (2 * π / 3 + 2 * π / 3)) = n * (x + y) := by simp only [β]; ring
  rw [a1] at F1; rw [a2] at F2; rw [a3, hβ] at F3
  have e : (cos (n * x) + cos (n * y) + cos (n * (x + y))) - (cos α + cos α + cos β) =
      (cos (n * x) - cos α + n * (x - 2 * π / 3) * sin α) +
      (cos (n * y) - cos α + n * (y - 2 * π / 3) * sin α) +
      (cos (n * (x + y)) - cos β + n * (x + y - (2 * π / 3 + 2 * π / 3)) * -sin α) := by ring
  rw [e]
  calc _ ≤ |cos (n * x) - cos α + n * (x - 2 * π / 3) * sin α| +
        |cos (n * y) - cos α + n * (y - 2 * π / 3) * sin α| +
        |cos (n * (x + y)) - cos β + n * (x + y - (2 * π / 3 + 2 * π / 3)) * -sin α| :=
        abs_add_three _ _ _
    _ ≤ _ := by
        have := add_le_add (add_le_add F1 F2) F3
        refine le_trans this (le_of_eq ?_); ring

theorem D3_diff (θ₁ θ₂ θ₃ : ℝ) (n : ℕ) :
    |D3 θ₁ θ₂ θ₃ n - D3 (2 * π / 3) 0 (-(2 * π / 3)) n| ≤
      min 9 (3 * (n : ℝ) ^ 2 * d3sq ((θ₁ - θ₂) / π) ((θ₂ - θ₃) / π)) := by
  apply le_min
  · have := D3_nonneg θ₁ θ₂ θ₃ n; have := D3_le θ₁ θ₂ θ₃ n
    have := D3_nonneg (2 * π / 3) 0 (-(2 * π / 3)) n; have := D3_le (2 * π / 3) 0 (-(2 * π / 3)) n
    rw [abs_le]; constructor <;> linarith
  · have hp := pi_pos; have hp0 : π ≠ 0 := hp.ne'
    rw [D3_eq, D3_eq]
    have h13 : θ₁ - θ₃ = (θ₁ - θ₂) + (θ₂ - θ₃) := by ring
    rw [h13]
    simp only [sub_zero, sub_neg_eq_add, zero_add]
    have h := D3_diff_sq n (θ₁ - θ₂) (θ₂ - θ₃)
    have e : (3 + 2 * (cos (n * (θ₁ - θ₂)) + cos (n * (θ₂ - θ₃)) + cos (n * (θ₁ - θ₂ + (θ₂ - θ₃))))) -
        (3 + 2 * (cos (n * (2 * π / 3)) + cos (n * (2 * π / 3)) +
          cos (n * (2 * π / 3 + 2 * π / 3)))) =
        2 * ((cos (n * (θ₁ - θ₂)) + cos (n * (θ₂ - θ₃)) + cos (n * (θ₁ - θ₂ + (θ₂ - θ₃)))) -
        (cos (n * (2 * π / 3)) + cos (n * (2 * π / 3)) + cos (n * (2 * π / 3 + 2 * π / 3)))) := by
      ring
    rw [e, abs_mul, abs_two]
    have hd : 3 * (n : ℝ) ^ 2 * d3sq ((θ₁ - θ₂) / π) ((θ₂ - θ₃) / π) = (n : ℝ) ^ 2 *
        (((θ₁ - θ₂) - 2 * π / 3) ^ 2 + ((θ₂ - θ₃) - 2 * π / 3) ^ 2
          + ((θ₁ - θ₂) + (θ₂ - θ₃) - (2 * π / 3 + 2 * π / 3)) ^ 2) := by
      unfold d3sq; field_simp; ring
    rw [hd]; linarith

theorem D2_diff (θ₁ θ₂ : ℝ) (n : ℕ) :
    |D2 θ₁ θ₂ n - D2 π 0 n| ≤ min 4 (2 * (n : ℝ) ^ 2 * d2sq ((θ₁ - θ₂) / π)) := by
  rw [D2_eq, D2_eq]
  apply le_min
  · rw [abs_le]; constructor <;>
      linarith [cos_le_one (n * (θ₁ - θ₂)), neg_one_le_cos (n * (θ₁ - θ₂)),
        cos_le_one (n * (π - 0)), neg_one_le_cos (n * (π - 0))]
  · have hp := pi_pos; have hp0 : π ≠ 0 := hp.ne'
    have h := cos_taylor2 (n * π) (n * ((θ₁ - θ₂) - π))
    rw [show (n : ℝ) * π + n * ((θ₁ - θ₂) - π) = n * (θ₁ - θ₂) by ring, sin_nat_mul_pi,
      mul_zero, add_zero] at h
    rw [sub_zero]
    have e : 2 + 2 * cos (n * (θ₁ - θ₂)) - (2 + 2 * cos (n * π)) =
        2 * (cos (n * (θ₁ - θ₂)) - cos (n * π)) := by ring
    rw [e, abs_mul, abs_two]
    have hd : 2 * (n : ℝ) ^ 2 * d2sq ((θ₁ - θ₂) / π) = (n : ℝ) ^ 2 * ((θ₁ - θ₂) - π) ^ 2 := by
      unfold d2sq; field_simp
    rw [hd]
    have : (n * ((θ₁ - θ₂) - π)) ^ 2 = (n : ℝ) ^ 2 * ((θ₁ - θ₂) - π) ^ 2 := by ring
    linarith

/-! ## 3. Lattice potentials and the remainder bound -/

/-- δc_n = c_n − 2/(π²n⁴) (δc₀ = c₀). -/
noncomputable def dc (c : ℕ → ℝ) (n : ℕ) : ℝ := c n - 2 / (π ^ 2 * (n : ℝ) ^ 4)

/-- Lattice one-loop potential plus deformation, SU(3): a₁|tr Ω|² − Σ_n c_n|tr Ωⁿ|². -/
noncomputable def Vlat3 (a1 : ℝ) (c : ℕ → ℝ) (θ₁ θ₂ θ₃ : ℝ) : ℝ :=
  a1 * D3 θ₁ θ₂ θ₃ 1 - ∑' n : ℕ, c n * D3 θ₁ θ₂ θ₃ n

noncomputable def Vlat2 (a1 : ℝ) (c : ℕ → ℝ) (θ₁ θ₂ : ℝ) : ℝ :=
  a1 * D2 θ₁ θ₂ 1 - ∑' n : ℕ, c n * D2 θ₁ θ₂ n

/-- The certified coefficient inputs (all n ≥ 2 sums shifted by 2). -/
structure CoefBounds (c : ℕ → ℝ) (dc1 ρ0 ρ2 : ℝ) : Prop where
  zero : c 0 = 0
  one : dc c 1 ≤ dc1
  summ : Summable (fun n : ℕ => ((n : ℝ) + 2) ^ 2 * |dc c (n + 2)|)
  rho0 : ∑' n : ℕ, |dc c (n + 2)| ≤ ρ0
  rho2 : ∑' n : ℕ, ((n : ℝ) + 2) ^ 2 * |dc c (n + 2)| ≤ ρ2

theorem CoefBounds.summ0 {c : ℕ → ℝ} {dc1 ρ0 ρ2 : ℝ} (h : CoefBounds c dc1 ρ0 ρ2) :
    Summable (fun n : ℕ => |dc c (n + 2)|) := by
  refine Summable.of_nonneg_of_le (fun n => abs_nonneg _) (fun n => ?_) h.summ
  have : (1 : ℝ) ≤ ((n : ℝ) + 2) ^ 2 := by nlinarith [(Nat.cast_nonneg n : (0 : ℝ) ≤ n)]
  nlinarith [abs_nonneg (dc c (n + 2))]

/-- Splitting of the lattice sum: Σ c_n D_n = Σ (2/(π²n⁴)) D_n + δc₁ D₁ + Σ_{n≥2} δc_n D_n. -/
theorem lat_split {c : ℕ → ℝ} {dc1 ρ0 ρ2 : ℝ} (h : CoefBounds c dc1 ρ0 ρ2) (D : ℕ → ℝ)
    (hD0 : ∀ n, 0 ≤ D n) (hDle : ∀ n, D n ≤ 9) :
    ∑' n : ℕ, c n * D n = ∑' n : ℕ, 2 / (π ^ 2 * (n : ℝ) ^ 4) * D n + dc c 1 * D 1
      + ∑' n : ℕ, dc c (n + 2) * D (n + 2) := by
  have hs1 : Summable (fun n : ℕ => 2 / (π ^ 2 * (n : ℝ) ^ 4) * D n) := by
    refine Summable.of_norm_bounded (g := fun n : ℕ => 18 / π ^ 2 * (1 / (n : ℝ) ^ 4))
      ((Real.summable_one_div_nat_pow.mpr (by norm_num)).mul_left _) (fun n => ?_)
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (hD0 n), abs_of_nonneg (by positivity)]
    have hp : 0 < π ^ 2 := by have := pi_pos; positivity
    rcases Nat.eq_zero_or_pos n with hn | hn
    · subst hn; simp
    · have hn' : (0 : ℝ) < n := by exact_mod_cast hn
      have hn4 : (0 : ℝ) < (n : ℝ) ^ 4 := by positivity
      calc 2 / (π ^ 2 * (n : ℝ) ^ 4) * D n ≤ 2 / (π ^ 2 * (n : ℝ) ^ 4) * 9 := by
            gcongr; exact hDle n
        _ = 18 / π ^ 2 * (1 / (n : ℝ) ^ 4) := by field_simp; ring
  have hs2' : Summable (fun n : ℕ => dc c (n + 2) * D (n + 2)) := by
    refine Summable.of_norm_bounded (g := fun n : ℕ => 9 * |dc c (n + 2)|)
      (h.summ0.mul_left _) (fun n => ?_)
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (hD0 _)]
    nlinarith [abs_nonneg (dc c (n + 2)), hDle (n + 2)]
  have hs2 : Summable (fun n : ℕ => dc c n * D n) := (summable_nat_add_iff 2).mp hs2'
  have e : (fun n : ℕ => c n * D n) =
      fun n : ℕ => 2 / (π ^ 2 * (n : ℝ) ^ 4) * D n + dc c n * D n := by
    ext n; unfold dc; ring
  rw [e, hs1.tsum_add hs2, ← hs2.sum_add_tsum_nat_add 2]
  simp only [Finset.sum_range_succ, Finset.sum_range_zero]
  have h0 : dc c 0 = 0 := by unfold dc; rw [h.zero]; simp
  rw [h0]; ring

theorem tsum_rem_bound {c : ℕ → ℝ} {dc1 ρ0 ρ2 : ℝ} (h : CoefBounds c dc1 ρ0 ρ2) (Δ : ℕ → ℝ)
    (K0 K2 : ℝ) (hK2 : 0 ≤ K2) (hΔ : ∀ n, |Δ n| ≤ min K0 (K2 * (n : ℝ) ^ 2)) :
    |∑' n : ℕ, dc c (n + 2) * Δ (n + 2)| ≤ min (K0 * ρ0) (K2 * ρ2) := by
  have hK0 : 0 ≤ K0 := le_trans (abs_nonneg _) ((hΔ 0).trans (min_le_left _ _))
  have b0 : ∀ n : ℕ, ‖dc c (n + 2) * Δ (n + 2)‖ ≤ K0 * |dc c (n + 2)| := by
    intro n; rw [Real.norm_eq_abs, abs_mul, mul_comm K0]
    exact mul_le_mul_of_nonneg_left ((hΔ _).trans (min_le_left _ _)) (abs_nonneg _)
  have b2 : ∀ n : ℕ, ‖dc c (n + 2) * Δ (n + 2)‖ ≤ K2 * (((n : ℝ) + 2) ^ 2 * |dc c (n + 2)|) := by
    intro n; rw [Real.norm_eq_abs, abs_mul]
    have := (hΔ (n + 2)).trans (min_le_right _ _)
    push_cast at this
    calc |dc c (n + 2)| * |Δ (n + 2)| ≤ |dc c (n + 2)| * (K2 * ((n : ℝ) + 2) ^ 2) :=
          mul_le_mul_of_nonneg_left this (abs_nonneg _)
      _ = _ := by ring
  have hsn : Summable (fun n : ℕ => ‖dc c (n + 2) * Δ (n + 2)‖) :=
    Summable.of_nonneg_of_le (fun n => norm_nonneg _) b0 (h.summ0.mul_left _)
  have t := norm_tsum_le_tsum_norm hsn
  rw [Real.norm_eq_abs] at t
  apply le_min
  · calc _ ≤ _ := t
      _ ≤ ∑' n : ℕ, K0 * |dc c (n + 2)| := hsn.tsum_le_tsum b0 (h.summ0.mul_left _)
      _ = K0 * ∑' n : ℕ, |dc c (n + 2)| := tsum_mul_left
      _ ≤ K0 * ρ0 := mul_le_mul_of_nonneg_left h.rho0 hK0
  · calc _ ≤ _ := t
      _ ≤ ∑' n : ℕ, K2 * (((n : ℝ) + 2) ^ 2 * |dc c (n + 2)|) :=
          hsn.tsum_le_tsum b2 (h.summ.mul_left _)
      _ = K2 * ∑' n : ℕ, ((n : ℝ) + 2) ^ 2 * |dc c (n + 2)| := tsum_mul_left
      _ ≤ K2 * ρ2 := mul_le_mul_of_nonneg_left h.rho2 hK2

/-- (H-rem) for SU(3), proved from the coefficient bounds. -/
theorem rem3 {a1 : ℝ} {c : ℕ → ℝ} {dc1 ρ0 ρ2 : ℝ} (h : CoefBounds c dc1 ρ0 ρ2)
    {θ₁ θ₂ θ₃ : ℝ} (hx : 0 ≤ θ₁ - θ₂) (hy : 0 ≤ θ₂ - θ₃) (hxy : θ₁ - θ₃ ≤ 2 * π) :
    |Vlat3 a1 c θ₁ θ₂ θ₃ - Vlat3 a1 c (2 * π / 3) 0 (-(2 * π / 3))
        - G3 (a1 - dc c 1) ((θ₁ - θ₂) / π) ((θ₂ - θ₃) / π)| ≤
      min (9 * ρ0) (3 * ρ2 * d3sq ((θ₁ - θ₂) / π) ((θ₂ - θ₃) / π)) := by
  set d := d3sq ((θ₁ - θ₂) / π) ((θ₂ - θ₃) / π)
  have sp := lat_split h (D3 θ₁ θ₂ θ₃) (D3_nonneg θ₁ θ₂ θ₃) (D3_le θ₁ θ₂ θ₃)
  have sc := lat_split h (D3 (2 * π / 3) 0 (-(2 * π / 3))) (D3_nonneg _ _ _) (D3_le _ _ _)
  have hV := V3_eq (a := a1 - dc c 1) hx hy hxy
  unfold V3 at hV
  have hsum : ∀ (θ₁ θ₂ θ₃ : ℝ), Summable (fun n : ℕ => dc c (n + 2) * D3 θ₁ θ₂ θ₃ (n + 2)) := by
    intro θ₁ θ₂ θ₃
    refine Summable.of_norm_bounded (g := fun n : ℕ => 9 * |dc c (n + 2)|)
      (h.summ0.mul_left _) (fun n => ?_)
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (D3_nonneg _ _ _ _)]
    nlinarith [abs_nonneg (dc c (n + 2)), D3_le θ₁ θ₂ θ₃ (n + 2)]
  have hdiff := (hsum θ₁ θ₂ θ₃).tsum_sub (hsum (2 * π / 3) 0 (-(2 * π / 3)))
  have hb := tsum_rem_bound h
    (fun n => D3 θ₁ θ₂ θ₃ n - D3 (2 * π / 3) 0 (-(2 * π / 3)) n) 9 (3 * d)
    (by have := d3sq_nonneg ((θ₁ - θ₂) / π) ((θ₂ - θ₃) / π); positivity)
    (fun n => by
      have := D3_diff θ₁ θ₂ θ₃ n
      rwa [show 3 * (n : ℝ) ^ 2 * d = 3 * d * (n : ℝ) ^ 2 by ring] at this)
  have e : Vlat3 a1 c θ₁ θ₂ θ₃ - Vlat3 a1 c (2 * π / 3) 0 (-(2 * π / 3))
      - G3 (a1 - dc c 1) ((θ₁ - θ₂) / π) ((θ₂ - θ₃) / π) =
      -∑' n : ℕ, dc c (n + 2) * (D3 θ₁ θ₂ θ₃ (n + 2) - D3 (2 * π / 3) 0 (-(2 * π / 3)) (n + 2)) := by
    unfold Vlat3; rw [sp, sc, ← hV]
    simp only [mul_sub]; rw [hdiff]; ring
  rw [e, abs_neg]
  refine le_trans hb (le_of_eq ?_)
  congr 1; ring

/-- (H-rem) for SU(2), proved from the coefficient bounds. -/
theorem rem2 {a1 : ℝ} {c : ℕ → ℝ} {dc1 ρ0 ρ2 : ℝ} (h : CoefBounds c dc1 ρ0 ρ2)
    {θ₁ θ₂ : ℝ} (hx : 0 ≤ θ₁ - θ₂) (hx2 : θ₁ - θ₂ ≤ 2 * π) :
    |Vlat2 a1 c θ₁ θ₂ - Vlat2 a1 c π 0 - G2 (a1 - dc c 1) ((θ₁ - θ₂) / π)| ≤
      min (4 * ρ0) (2 * ρ2 * d2sq ((θ₁ - θ₂) / π)) := by
  set d := d2sq ((θ₁ - θ₂) / π)
  have hD0 : ∀ θ₁ θ₂ n, 0 ≤ D2 θ₁ θ₂ n := fun _ _ _ => Complex.normSq_nonneg _
  have hDle : ∀ θ₁ θ₂ n, D2 θ₁ θ₂ n ≤ 9 := fun θ₁ θ₂ n => by
    rw [D2_eq]; linarith [cos_le_one (n * (θ₁ - θ₂))]
  have sp := lat_split h (D2 θ₁ θ₂) (hD0 θ₁ θ₂) (hDle θ₁ θ₂)
  have sc := lat_split h (D2 π 0) (hD0 π 0) (hDle π 0)
  have hV := V2_eq (a := a1 - dc c 1) hx hx2
  unfold V2 at hV
  have hsum : ∀ (θ₁ θ₂ : ℝ), Summable (fun n : ℕ => dc c (n + 2) * D2 θ₁ θ₂ (n + 2)) := by
    intro θ₁ θ₂
    refine Summable.of_norm_bounded (g := fun n : ℕ => 9 * |dc c (n + 2)|)
      (h.summ0.mul_left _) (fun n => ?_)
    rw [Real.norm_eq_abs, abs_mul, abs_of_nonneg (hD0 _ _ _)]
    nlinarith [abs_nonneg (dc c (n + 2)), hDle θ₁ θ₂ (n + 2)]
  have hdiff := (hsum θ₁ θ₂).tsum_sub (hsum π 0)
  have hb := tsum_rem_bound h (fun n => D2 θ₁ θ₂ n - D2 π 0 n) 4 (2 * d)
    (by have := d2sq_nonneg ((θ₁ - θ₂) / π); positivity)
    (fun n => by
      have := D2_diff θ₁ θ₂ n
      rwa [show 2 * (n : ℝ) ^ 2 * d = 2 * d * (n : ℝ) ^ 2 by ring] at this)
  have e : Vlat2 a1 c θ₁ θ₂ - Vlat2 a1 c π 0 - G2 (a1 - dc c 1) ((θ₁ - θ₂) / π) =
      -∑' n : ℕ, dc c (n + 2) * (D2 θ₁ θ₂ (n + 2) - D2 π 0 (n + 2)) := by
    unfold Vlat2; rw [sp, sc, ← hV]
    simp only [mul_sub]; rw [hdiff]; ring
  rw [e, abs_neg]
  refine le_trans hb (le_of_eq ?_)
  congr 1; ring

/-! ## 4. Lattice theorems with the IV constants as the only inputs -/

/-- SU(3), N₄ ≥ 16 inputs: if the lattice coefficients satisfy δc₁ ≤ 0.0041028,
Σ_{n≥2}|δc_n| ≤ 1.157e−4, Σ_{n≥2} n²|δc_n| ≤ 5.492e−4 and a₁ ≥ 0.30997, then the centre is the
unique global minimum of the lattice potential on the alcove, with margin
min(1.087e−4, 8.524e−4·d²). -/
theorem su3_lattice_coeff_16 {a1 : ℝ} {c : ℕ → ℝ} (ha1 : 30997 / 100000 ≤ a1)
    (h : CoefBounds c (41028 / 10000000) (1157 / 10000000) (5492 / 10000000)) (s t : ℝ)
    (hst : Alc3 s t) :
    min (115 / 100000 - 9 * (1157 / 10000000)) ((25 / 10000 - 3 * (5492 / 10000000)) * d3sq s t)
        ≤ Vlat3 a1 c (π * s) 0 (-(π * t)) - Vlat3 a1 c (2 * π / 3) 0 (-(2 * π / 3)) ∧
      ((s, t) ≠ (2 / 3, 2 / 3) →
        Vlat3 a1 c (2 * π / 3) 0 (-(2 * π / 3)) < Vlat3 a1 c (π * s) 0 (-(π * t))) := by
  have hp := pi_pos; have hp0 : π ≠ 0 := hp.ne'
  let V : ℝ → ℝ → ℝ := fun s t => Vlat3 a1 c (π * s) 0 (-(π * t))
  have hVc : V (2 / 3) (2 / 3) = Vlat3 a1 c (2 * π / 3) 0 (-(2 * π / 3)) := by
    simp only [V]; ring_nf
  have hrem : ∀ s t, Alc3 s t → |V s t - V (2 / 3) (2 / 3) - G3 (a1 - dc c 1) s t| ≤
      min (9 * (1157 / 10000000)) (3 * (5492 / 10000000) * d3sq s t) := by
    intro s t ⟨h0s, h0t, hst⟩
    have r := rem3 (a1 := a1) h (θ₁ := π * s) (θ₂ := 0) (θ₃ := -(π * t))
      (by simp; positivity) (by simp; positivity) (by simp; nlinarith)
    simp only [sub_zero, zero_sub, neg_neg] at r
    rw [show π * s / π = s by field_simp, show π * t / π = t by field_simp] at r
    rw [hVc]; exact r
  have L := su3_lattice_16 V a1 (dc c 1) ha1 h.one hrem
  rw [hVc] at L
  exact ⟨L.1 s t hst, L.2 s t hst⟩

theorem su3_lattice_coeff_8 {a1 : ℝ} {c : ℕ → ℝ} (ha1 : 32896 / 100000 ≤ a1)
    (h : CoefBounds c (191049 / 10000000) (5591 / 10000000) (2582 / 1000000)) (s t : ℝ)
    (hst : Alc3 s t) :
    min (5135 / 1000000 - 9 * (5591 / 10000000)) ((9 / 1000 - 3 * (2582 / 1000000)) * d3sq s t)
        ≤ Vlat3 a1 c (π * s) 0 (-(π * t)) - Vlat3 a1 c (2 * π / 3) 0 (-(2 * π / 3)) ∧
      ((s, t) ≠ (2 / 3, 2 / 3) →
        Vlat3 a1 c (2 * π / 3) 0 (-(2 * π / 3)) < Vlat3 a1 c (π * s) 0 (-(π * t))) := by
  have hp := pi_pos; have hp0 : π ≠ 0 := hp.ne'
  let V : ℝ → ℝ → ℝ := fun s t => Vlat3 a1 c (π * s) 0 (-(π * t))
  have hVc : V (2 / 3) (2 / 3) = Vlat3 a1 c (2 * π / 3) 0 (-(2 * π / 3)) := by
    simp only [V]; ring_nf
  have hrem : ∀ s t, Alc3 s t → |V s t - V (2 / 3) (2 / 3) - G3 (a1 - dc c 1) s t| ≤
      min (9 * (5591 / 10000000)) (3 * (2582 / 1000000) * d3sq s t) := by
    intro s t ⟨h0s, h0t, hst⟩
    have r := rem3 (a1 := a1) h (θ₁ := π * s) (θ₂ := 0) (θ₃ := -(π * t))
      (by simp; positivity) (by simp; positivity) (by simp; nlinarith)
    simp only [sub_zero, zero_sub, neg_neg] at r
    rw [show π * s / π = s by field_simp, show π * t / π = t by field_simp] at r
    rw [hVc]; exact r
  have L := su3_lattice_8 V a1 (dc c 1) ha1 h.one hrem
  rw [hVc] at L
  exact ⟨L.1 s t hst, L.2 s t hst⟩

theorem su2_lattice_coeff_16 {a1 : ℝ} {c : ℕ → ℝ} (ha1 : 20984 / 100000 ≤ a1)
    (h : CoefBounds c (41028 / 10000000) (1157 / 10000000) (5492 / 10000000)) (s : ℝ)
    (hs : Alc2 s) :
    min (472 / 1000000 - 4 * (1157 / 10000000)) ((2 / 1000 - 2 * (5492 / 10000000)) * d2sq s)
        ≤ Vlat2 a1 c (π * s) 0 - Vlat2 a1 c π 0 ∧
      (s ≠ 1 → Vlat2 a1 c π 0 < Vlat2 a1 c (π * s) 0) := by
  have hp := pi_pos; have hp0 : π ≠ 0 := hp.ne'
  let V : ℝ → ℝ := fun s => Vlat2 a1 c (π * s) 0
  have hVc : V 1 = Vlat2 a1 c π 0 := by simp only [V, mul_one]
  have hrem : ∀ s, Alc2 s → |V s - V 1 - G2 (a1 - dc c 1) s| ≤
      min (4 * (1157 / 10000000)) (2 * (5492 / 10000000) * d2sq s) := by
    intro s ⟨h0s, hs2⟩
    have r := rem2 (a1 := a1) h (θ₁ := π * s) (θ₂ := 0) (by simp; positivity) (by simp; nlinarith)
    simp only [sub_zero] at r
    rw [show π * s / π = s by field_simp] at r
    rw [hVc]; exact r
  have L := su2_lattice_16 V a1 (dc c 1) ha1 h.one hrem
  rw [hVc] at L
  exact ⟨L.1 s hs, L.2 s hs⟩

theorem su2_lattice_coeff_8 {a1 : ℝ} {c : ℕ → ℝ} (ha1 : 22529 / 100000 ≤ a1)
    (h : CoefBounds c (191049 / 10000000) (5591 / 10000000) (2582 / 1000000)) (s : ℝ)
    (hs : Alc2 s) :
    min (2255 / 1000000 - 4 * (5591 / 10000000)) ((6 / 1000 - 2 * (2582 / 1000000)) * d2sq s)
        ≤ Vlat2 a1 c (π * s) 0 - Vlat2 a1 c π 0 ∧
      (s ≠ 1 → Vlat2 a1 c π 0 < Vlat2 a1 c (π * s) 0) := by
  have hp := pi_pos; have hp0 : π ≠ 0 := hp.ne'
  let V : ℝ → ℝ := fun s => Vlat2 a1 c (π * s) 0
  have hVc : V 1 = Vlat2 a1 c π 0 := by simp only [V, mul_one]
  have hrem : ∀ s, Alc2 s → |V s - V 1 - G2 (a1 - dc c 1) s| ≤
      min (4 * (5591 / 10000000)) (2 * (2582 / 1000000) * d2sq s) := by
    intro s ⟨h0s, hs2⟩
    have r := rem2 (a1 := a1) h (θ₁ := π * s) (θ₂ := 0) (by simp; positivity) (by simp; nlinarith)
    simp only [sub_zero] at r
    rw [show π * s / π = s by field_simp] at r
    rw [hVc]; exact r
  have L := su2_lattice_8 V a1 (dc c 1) ha1 h.one hrem
  rw [hVc] at L
  exact ⟨L.1 s hs, L.2 s hs⟩

/-! ## 5. (a) in trace form -/

/-- (a), SU(3), trace form: for a ≥ 0.3058672 (in particular a ≥ a₁* = 0.30997) and every θ in
the alcove θ₁ ≥ θ₂ ≥ θ₃ ≥ θ₁ − 2π, the continuum potential a|tr Ω|² − Σ (2/(π²n⁴))|tr Ωⁿ|²
exceeds its centre value by at least min(1.15e−3, 2.5e−3·d²); equality only at the centre. -/
theorem su3_continuum_trace {a θ₁ θ₂ θ₃ : ℝ} (ha : 3058672 / 10000000 ≤ a)
    (hx : 0 ≤ θ₁ - θ₂) (hy : 0 ≤ θ₂ - θ₃) (hxy : θ₁ - θ₃ ≤ 2 * π) :
    min (115 / 100000) (25 / 10000 * d3sq ((θ₁ - θ₂) / π) ((θ₂ - θ₃) / π)) ≤
      V3 a θ₁ θ₂ θ₃ - V3 a (2 * π / 3) 0 (-(2 * π / 3)) := by
  have hp := pi_pos
  rw [V3_eq hx hy hxy]
  refine G3_bound_16 ha ⟨by positivity, by positivity, ?_⟩
  rw [← add_div, div_le_iff₀ hp]; linarith

theorem su2_continuum_trace {a θ₁ θ₂ : ℝ} (ha : 2057372 / 10000000 ≤ a)
    (hx : 0 ≤ θ₁ - θ₂) (hx2 : θ₁ - θ₂ ≤ 2 * π) :
    min (472 / 1000000) (2 / 1000 * d2sq ((θ₁ - θ₂) / π)) ≤ V2 a θ₁ θ₂ - V2 a π 0 := by
  have hp := pi_pos
  rw [V2_eq hx hx2]
  refine G2_bound_16 ha ⟨by positivity, ?_⟩
  rw [div_le_iff₀ hp]; linarith

end YmLean.Gpy
