import Mathlib

/-!
# Closed-form pieces of the H1 analytic majorant (H1_ANALYTIC.md §2–§6)

Source: `../H1_ANALYTIC.md` (Lemmas S, T, G, Gauge and (6.1) F_CS), checked in
`../H1_ANALYTIC_VERIFY.md` V0–V1 and `../H1_ANALYTIC_VERIFY2.md`; the 384-fold symmetry is
`../H2_CERTIFY_P5_VERIFY.md` (P5). LEAN_CATALOGUE §8 items C2–C6 (parts).

This file proves the finite-dimensional inequalities and identities behind
`ρ_1² ≤ B_L(K) = γ_L F_CS(K) + Ḡ_L(K)`. It does not evaluate `B_L`. The certificate
`sup_chamber B_13 ≤ 9.9995` still rests on `numerics/h1analytic/bb_arb.py`, the interval
(arb, outward-rounded) evaluation of `B_L` over the boxes of the sorted chamber.
-/

open Real Finset

namespace YmLean.H1M

/-! ## Lemma T, trigonometric steps (H1_ANALYTIC §3 (b), (d)) -/

/-- Concavity of `sin` on `[0, π]`: `t sin y ≤ sin (t y)` for `t ∈ [0, 1]`. -/
theorem sin_mul_ge {t y : ℝ} (ht0 : 0 ≤ t) (ht1 : t ≤ 1) (hy0 : 0 ≤ y) (hy : y ≤ π) :
    t * sin y ≤ sin (t * y) := by
  have h := strictConcaveOn_sin_Icc.concaveOn.2 (show (0:ℝ) ∈ Set.Icc 0 π from ⟨le_refl 0, pi_pos.le⟩)
    (show y ∈ Set.Icc 0 π from ⟨hy0, hy⟩) (show (0:ℝ) ≤ 1 - t by linarith) ht0 (by ring)
  simpa [smul_eq_mul] using h

/-- §3 (d): `N |sin(q/(2N))| ≤ |q|/2` (deformed momentum `|q̃^N| ≤ |q|`). The certificate's
rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem N_sin_le {N : ℝ} (hN : 0 < N) (q : ℝ) : N * |sin (q / (2 * N))| ≤ |q| / 2 := by
  have h := abs_sin_le_abs (x := q / (2 * N))
  rw [abs_div, abs_of_pos (by positivity : (0:ℝ) < 2 * N)] at h
  calc N * |sin (q / (2 * N))| ≤ N * (|q| / (2 * N)) := mul_le_mul_of_nonneg_left h hN.le
    _ = |q| / 2 := by field_simp

/-- §3 (d): termwise `(σ^∞)² ≤ (σ^N)²`, `σ^∞ = sin(K/2)/(q/2)`, `σ^N = sin(K/2)/(N sin(q/(2N)))`.
The certificate's rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem sigma_inf_le_sigma_N {N K q : ℝ} (hN : 0 < N) (hs : sin (q / (2 * N)) ≠ 0) :
    (sin (K / 2) / (q / 2)) ^ 2 ≤ (sin (K / 2) / (N * sin (q / (2 * N)))) ^ 2 := by
  have h : (N * sin (q / (2 * N))) ^ 2 ≤ (q / 2) ^ 2 := by
    apply sq_le_sq.2
    rw [abs_mul, abs_of_pos hN, abs_div, abs_two]
    exact N_sin_le hN q
  rw [div_pow (sin (K / 2)) (q / 2), div_pow (sin (K / 2))]
  exact div_le_div_of_nonneg_left (sq_nonneg _) (by positivity) h

/-- §3 (b): `2 sin(x/2) ≤ 2M sin(x/(2M))` for `M ≥ 1`, `x ∈ [0, π]`. The certificate's rigor
rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem two_sin_le_deformed {M x : ℝ} (hM : 1 ≤ M) (hx0 : 0 ≤ x) (hx : x ≤ π) :
    2 * sin (x / 2) ≤ 2 * M * sin (x / (2 * M)) := by
  have hM0 : 0 < M := by linarith
  have h := sin_mul_ge (t := 1 / M) (y := x / 2) (by positivity)
    (by rw [div_le_one hM0]; exact hM) (by linarith) (by linarith [pi_pos])
  have e : 1 / M * (x / 2) = x / (2 * M) := by field_simp
  rw [e] at h
  have : 2 * M * (1 / M * sin (x / 2)) = 2 * sin (x / 2) := by field_simp
  nlinarith

/-- §3 (b): `x sinc(π/(2L)) ≤ 2 sin(x/2)` for `x ∈ [0, π/L]`, `L ≥ 1`. The certificate's rigor
rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem sinc_mul_le_two_sin {L x : ℝ} (hL : 1 ≤ L) (hx0 : 0 ≤ x) (hx : x ≤ π / L) :
    x * sinc (π / (2 * L)) ≤ 2 * sin (x / 2) := by
  have hL0 : 0 < L := by linarith
  set a := π / (2 * L) with ha
  have ha0 : 0 < a := by positivity
  have hapi : a ≤ π := by
    rw [ha, div_le_iff₀ (by positivity)]; nlinarith [pi_pos]
  have hxa : x / 2 ≤ a := by
    rw [ha]; have : x / 2 ≤ π / L / 2 := by linarith
    calc x / 2 ≤ π / L / 2 := this
      _ = π / (2 * L) := by field_simp
  have h := sin_mul_ge (t := x / 2 / a) (y := a) (by positivity)
    (by rw [div_le_one ha0]; exact hxa) ha0.le hapi
  rw [div_mul_cancel₀ _ ha0.ne'] at h
  rw [sinc_of_ne_zero ha0.ne']
  calc x * (sin a / a) = 2 * (x / 2 / a * sin a) := by field_simp
    _ ≤ 2 * sin (x / 2) := by linarith

theorem sinc_pos_of {L : ℝ} (hL : 1 ≤ L) : 0 < sinc (π / (2 * L)) := by
  have hL0 : 0 < L := by linarith
  have ha0 : 0 < π / (2 * L) := by positivity
  rw [sinc_of_ne_zero ha0.ne']
  refine div_pos (sin_pos_of_pos_of_lt_pi ha0 ?_) ha0
  rw [div_lt_iff₀ (by positivity)]; nlinarith [pi_pos]

/-- §3 (b): the smallest fine deformed momentum, `Σ_ρ (2M sin(K_ρ/(2ML)))² ≥ |K|² sinc²(π/2L)/L²`
on the chamber `K ∈ [0, π]⁴`. The certificate's rigor rests on bb_arb's interval evaluation of
`B_L` over the cells. -/
theorem deformed_sum_ge {L M : ℝ} (hL : 1 ≤ L) (hM : 1 ≤ M) (K : Fin 4 → ℝ)
    (hK0 : ∀ ρ, 0 ≤ K ρ) (hK : ∀ ρ, K ρ ≤ π) :
    (∑ ρ, K ρ ^ 2) * sinc (π / (2 * L)) ^ 2 / L ^ 2 ≤
      ∑ ρ, (2 * M * sin (K ρ / L / (2 * M))) ^ 2 := by
  have hL0 : 0 < L := by linarith
  have hs := (sinc_pos_of hL).le
  rw [sum_mul, sum_div]
  refine sum_le_sum fun ρ _ => ?_
  have hx0 : 0 ≤ K ρ / L := div_nonneg (hK0 ρ) hL0.le
  have hxL : K ρ / L ≤ π / L := div_le_div_of_nonneg_right (hK ρ) hL0.le
  have hxpi : K ρ / L ≤ π := by
    calc K ρ / L ≤ K ρ := div_le_self (hK0 ρ) hL
      _ ≤ π := hK ρ
  have h1 := sinc_mul_le_two_sin hL hx0 hxL
  have h2 := two_sin_le_deformed hM hx0 hxpi
  have e : K ρ ^ 2 * sinc (π / (2 * L)) ^ 2 / L ^ 2 = (K ρ / L * sinc (π / (2 * L))) ^ 2 := by
    field_simp
  rw [e]
  exact pow_le_pow_left₀ (mul_nonneg hx0 hs) (h1.trans h2) 2

/-- §3 (b): `d_max ≤ 1/Σ_ρ(2M sin(K_ρ/2ML))² ≤ L² γ_L/|K|²`, `γ_L = sinc(π/2L)⁻²`. The
certificate's rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem dmax_le {L M : ℝ} (hL : 1 ≤ L) (hM : 1 ≤ M) (K : Fin 4 → ℝ)
    (hK0 : ∀ ρ, 0 ≤ K ρ) (hK : ∀ ρ, K ρ ≤ π) (hpos : 0 < ∑ ρ, K ρ ^ 2) :
    1 / ∑ ρ, (2 * M * sin (K ρ / L / (2 * M))) ^ 2 ≤
      L ^ 2 * (1 / sinc (π / (2 * L)) ^ 2) / ∑ ρ, K ρ ^ 2 := by
  have hL0 : 0 < L := by linarith
  have hs := sinc_pos_of hL
  have h := deformed_sum_ge hL hM K hK0 hK
  have hlo : 0 < (∑ ρ, K ρ ^ 2) * sinc (π / (2 * L)) ^ 2 / L ^ 2 := by positivity
  calc 1 / ∑ ρ, (2 * M * sin (K ρ / L / (2 * M))) ^ 2
      ≤ 1 / ((∑ ρ, K ρ ^ 2) * sinc (π / (2 * L)) ^ 2 / L ^ 2) :=
        one_div_le_one_div_of_le hlo h
    _ = L ^ 2 * (1 / sinc (π / (2 * L)) ^ 2) / ∑ ρ, K ρ ^ 2 := by field_simp

/-! ## F_CS, the Cauchy–Schwarz majorant (H1_ANALYTIC §6 (6.1)) -/

/-- (6.1) Cauchy–Schwarz: `(Σ W)² ≤ (Σ W/|q|²)(Σ W|q|²)` for `W ≥ 0`, `|q|² > 0`. The
certificate's rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem cs_weighted {ι : Type*} (s : Finset ι) (W x : ι → ℝ) (hW : ∀ i ∈ s, 0 ≤ W i)
    (hx : ∀ i ∈ s, 0 < x i) :
    (∑ i ∈ s, W i) ^ 2 ≤ (∑ i ∈ s, W i / x i) * ∑ i ∈ s, W i * x i := by
  refine sum_sq_le_sum_mul_sum_of_sq_le_mul s
    (fun i hi => div_nonneg (hW i hi) (hx i hi).le)
    (fun i hi => mul_nonneg (hW i hi) (hx i hi).le) fun i hi => ?_
  have := (hx i hi).ne'
  apply le_of_eq; field_simp

/-- (6.1) factorization over directions: `Σ_ε Π_ρ w_ρ(ε_ρ) = Π_ρ Σ_b w_ρ(b)` (also the expectation
of a product of independent coordinates in Lemma G). The certificate's rigor rests on bb_arb's
interval evaluation of `B_L` over the cells. -/
theorem sum_prod_factor {R : Type*} [CommSemiring R] {d m : ℕ} (w : Fin d → Fin m → R) :
    ∑ ε : Fin d → Fin m, ∏ ρ, w ρ (ε ρ) = ∏ ρ, ∑ b, w ρ b :=
  (Fintype.prod_sum w).symm

/-- (6.1) factorization of `Σ_ε W_ε |q_ε|²` with `|q_ε|² = Σ_ν x_ν(ε_ν)`: one factor per `ν` carries
`Σ_b w_ν(b) x_ν(b)`. The certificate's rigor rests on bb_arb's interval evaluation of `B_L` over the
cells. -/
theorem sum_prod_mul_sum_factor {d m : ℕ} (w x : Fin d → Fin m → ℝ) :
    ∑ ε : Fin d → Fin m, (∏ ρ, w ρ (ε ρ)) * ∑ ν, x ν (ε ν) =
      ∑ ν, ∏ ρ, (if ρ = ν then ∑ b, w ρ b * x ρ b else ∑ b, w ρ b) := by
  simp_rw [mul_sum]
  rw [sum_comm]
  refine sum_congr rfl fun ν _ => ?_
  have h : ∀ ρ, (if ρ = ν then ∑ b, w ρ b * x ρ b else ∑ b, w ρ b) =
      ∑ b, (if ρ = ν then w ρ b * x ρ b else w ρ b) := fun ρ => by split_ifs <;> rfl
  simp_rw [h]
  rw [← sum_prod_factor]
  refine sum_congr rfl fun ε _ => ?_
  have h2 : ∀ ρ, (if ρ = ν then w ρ (ε ρ) * x ρ (ε ρ) else w ρ (ε ρ)) =
      w ρ (ε ρ) * (if ρ = ν then x ρ (ε ρ) else 1) := fun ρ => by split_ifs <;> simp
  simp_rw [h2, prod_mul_distrib, prod_ite_eq', mem_univ, if_true]

/-- (6.1): `σ_{ε,ρ}² q_{ε,ρ}² = 4 sin²(K_ρ/2)` for every `ε` (`σ = sin(K/2)/(q/2)`). The
certificate's rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem sigma_sq_mul_q_sq {K q : ℝ} (hq : q ≠ 0) :
    (sin (K / 2) / (q / 2)) ^ 2 * q ^ 2 = 4 * sin (K / 2) ^ 2 := by
  field_simp; ring

/-- (6.1): `4 sin²(K/2)/sinc²(K/2) = K²`, which turns the factor ratios into `K_ρ² r_ρ`. The
certificate's rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem four_sin_sq_div_sinc_sq {K : ℝ} (hK : K ≠ 0) (hs : sin (K / 2) ≠ 0) :
    4 * sin (K / 2) ^ 2 / sinc (K / 2) ^ 2 = K ^ 2 := by
  rw [sinc_of_ne_zero (by positivity)]
  field_simp; ring

/-- (6.1) assembly: `d̲ ≥ Σ W/|q|²` and Cauchy–Schwarz give
`F = 1/(|K|² d̲) ≤ Σ W|q|² / (|K|² (Σ W)²)`. The certificate's rigor rests on bb_arb's interval
evaluation of `B_L` over the cells. -/
theorem F_le_of_cs {K2 dlow SW SWx Sinv : ℝ} (hK2 : 0 < K2) (hSW : 0 < SW) (hSWx : 0 < SWx)
    (hd : Sinv ≤ dlow) (hcs : SW ^ 2 ≤ Sinv * SWx) :
    1 / (K2 * dlow) ≤ SWx / (K2 * SW ^ 2) := by
  have hSinv : 0 < Sinv := by
    by_contra h; have h := not_lt.1 h; nlinarith [mul_nonpos_of_nonpos_of_nonneg h hSWx.le]
  have hd0 : 0 < dlow := lt_of_lt_of_le hSinv hd
  rw [div_le_div_iff₀ (by positivity) (by positivity)]
  nlinarith [mul_le_mul_of_nonneg_right hd hSWx.le]

/-! ## Lemma G, the gauge row (H1_ANALYTIC §4) -/

/-- The axis variables before `ν` in the order `π` (`π.symm ρ` = position of axis `ρ`). -/
def before (p : Equiv.Perm (Fin 4)) (ν : Fin 4) : Finset (Fin 4) :=
  univ.filter fun ρ => p.symm ρ < p.symm ν

/-- §4: `Φ_ν` as the proof defines it, the average over the 24 axis orders of the product of the
`α_ρ` of the earlier axes. -/
noncomputable def Phi (α : Fin 4 → ℝ) (ν : Fin 4) : ℝ :=
  (1 / 24) * ∑ p : Equiv.Perm (Fin 4), ∏ ρ ∈ before p ν, α ρ

/-- §4 count: the orders with earlier set `B` (`ν ∉ B`) number `|B|! (3 − |B|)!` (VERIFY V1: 6 per
subset weight per `r`, i.e. `¼ /C(3,r)`). Kernel `decide`. The certificate's rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem before_count : ∀ ν : Fin 4, ∀ B : Finset (Fin 4), ν ∉ B →
    (univ.filter (fun p : Equiv.Perm (Fin 4) => before p ν = B)).card =
      B.card.factorial * (3 - B.card).factorial := by
  unfold before; decide

theorem before_image : ∀ ν : Fin 4,
    univ.image (fun p : Equiv.Perm (Fin 4) => before p ν) = (univ.erase ν).powerset := by
  unfold before; decide

/-- §4 (4.1): `Φ_ν = ¼ Σ_r e_r({α_ρ}_{ρ≠ν})/C(3, r)`, written as a sum over subsets `B` of the other
three axes with weight `1/(4 C(3,|B|))`. The certificate's rigor rests on bb_arb's interval
evaluation of `B_L` over the cells. -/
theorem Phi_closed (α : Fin 4 → ℝ) (ν : Fin 4) :
    Phi α ν = ∑ B ∈ (univ.erase ν).powerset, (∏ ρ ∈ B, α ρ) / (4 * (Nat.choose 3 B.card)) := by
  unfold Phi
  rw [sum_comp (fun B => ∏ ρ ∈ B, α ρ) (fun p => before p ν), before_image, mul_sum]
  refine sum_congr rfl fun B hB => ?_
  have hν : ν ∉ B := fun h => by
    have := mem_powerset.1 hB h; simp at this
  have hc : B.card ≤ 3 := by
    have := card_le_card (mem_powerset.1 hB); simpa using this
  rw [before_count ν B hν, nsmul_eq_mul]
  push_cast
  interval_cases h : B.card <;> norm_num [Nat.factorial] <;> ring

/-- §4: `|Φ_ν| ≤ 1` when every `|α_ρ| ≤ 1`. The certificate's rigor rests on bb_arb's interval
evaluation of `B_L` over the cells. -/
theorem Phi_abs_le (α : Fin 4 → ℝ) (hα : ∀ ρ, |α ρ| ≤ 1) (ν : Fin 4) : |Phi α ν| ≤ 1 := by
  unfold Phi
  rw [abs_mul, abs_of_pos (by norm_num : (0:ℝ) < 1 / 24)]
  have h : |∑ p : Equiv.Perm (Fin 4), ∏ ρ ∈ before p ν, α ρ| ≤ ∑ _p : Equiv.Perm (Fin 4), (1:ℝ) := by
    refine (abs_sum_le_sum_abs _ _).trans (sum_le_sum fun p _ => ?_)
    rw [abs_prod]
    exact prod_le_one (fun ρ _ => abs_nonneg _) fun ρ _ => hα ρ
  have hc : ∑ _p : Equiv.Perm (Fin 4), (1:ℝ) = 24 := by
    simp [Fintype.card_perm]; norm_num
  rw [hc] at h; linarith

/-- §4: `α(κ) = L⁻¹ Σ_{t=−h}^{h} e^{iκt}` has `|α| ≤ 1` (written with `t ∈ [0, L)`, shift `h`). The certificate's rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem alpha_norm_le {L : ℕ} (hL : 0 < L) (κ h : ℝ) :
    ‖(1 / (L : ℂ)) * ∑ t ∈ range L, Complex.exp (((κ * (t - h) : ℝ) : ℂ) * Complex.I)‖ ≤ 1 := by
  rw [norm_mul]
  have hs : ‖∑ t ∈ range L, Complex.exp (((κ * (t - h) : ℝ) : ℂ) * Complex.I)‖ ≤ L := by
    refine (norm_sum_le _ _).trans (le_of_eq ?_)
    rw [sum_congr rfl fun t _ => Complex.norm_exp_ofReal_mul_I _]; simp
  have hL' : (0:ℝ) < L := by exact_mod_cast hL
  rw [norm_div, norm_one, Complex.norm_natCast]
  calc 1 / (L:ℝ) * _ ≤ 1 / L * L := mul_le_mul_of_nonneg_left hs (by positivity)
    _ = 1 := by field_simp

/-- §4: `|g_{l,ν}| = |Φ_ν (α_ν − 1)/k̂_ν| ≤ |1 − α_ν|/|k̂_ν|` from `|Φ_ν| ≤ 1`. The certificate's
rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem g_norm_le {Φ α kh : ℂ} (hΦ : ‖Φ‖ ≤ 1) : ‖Φ * (α - 1) / kh‖ ≤ ‖1 - α‖ / ‖kh‖ := by
  rw [norm_div, norm_mul, norm_sub_rev]
  exact div_le_div_of_nonneg_right (mul_le_of_le_one_left (norm_nonneg _) hΦ) (norm_nonneg _)

/-! ## Lemma Gauge (H1_ANALYTIC §2 consequences, §5) -/

/-- `k̂ = 1 − e^{ik}`. -/
noncomputable def khat (k : ℝ) : ℂ := 1 - Complex.exp (k * Complex.I)

/-- `S_L(k) = Σ_{t<L} e^{ikt}`. -/
noncomputable def SL (L : ℕ) (k : ℝ) : ℂ := ∑ t ∈ range L, Complex.exp (k * Complex.I) ^ t

/-- `k_l = (K + 2πl)/L`. -/
noncomputable def kl (L : ℕ) (K : ℝ) (l : ℕ) : ℝ := (K + 2 * π * l) / L

/-- §2: `S_L(k_l) k̂_l = K̂` (straight path of length `L` at the fine momenta). The certificate's
rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem SL_mul_khat {L : ℕ} (hL : L ≠ 0) (K : ℝ) (l : ℕ) :
    SL L (kl L K l) * khat (kl L K l) = khat K := by
  unfold SL khat
  rw [mul_comm, mul_neg_geom_sum, ← Complex.exp_nat_mul]
  have : (L : ℂ) * ((kl L K l : ℝ) * Complex.I) = K * Complex.I + l * (2 * π * Complex.I) := by
    unfold kl; push_cast; field_simp
  rw [this, Complex.exp_add, Complex.exp_nat_mul_two_pi_mul_I, mul_one]

/-- `P_⊥ w = w − (⟨v, w⟩/⟨v, v⟩) v`, the projection orthogonal to `v`. -/
noncomputable def projPerp {n : ℕ} (v w : Fin n → ℂ) : Fin n → ℂ :=
  w - ((∑ i, star (v i) * w i) / ∑ i, star (v i) * v i) • v

/-- `P_⊥ (c v) = 0`: the gauge direction is annihilated. -/
theorem projPerp_smul_self {n : ℕ} (v : Fin n → ℂ) (hv : ∑ i, star (v i) * v i ≠ 0) (c : ℂ) :
    projPerp v (c • v) = 0 := by
  unfold projPerp
  ext i
  simp only [Pi.smul_apply, smul_eq_mul, Pi.sub_apply, Pi.zero_apply]
  have : ∑ i, star (v i) * (c * v i) = c * ∑ i, star (v i) * v i := by
    rw [mul_sum]; exact sum_congr rfl fun _ _ => by ring
  rw [this, mul_div_cancel_right₀ _ hv, sub_self]

/-- §2: `E⁰_l k̂_l = A(k_l) K̂` with `E⁰_l = diag_μ(S_L(k_{l,μ}) A)`, so `P_⊥ E⁰_l k̂_l = 0`
(hence `P_⊥E⁰_lP_l = P_⊥E⁰_l`). The certificate's rigor rests on bb_arb's interval evaluation of
`B_L` over the cells. -/
theorem gauge_kernel {L : ℕ} (hL : L ≠ 0) (K : Fin 4 → ℝ) (l : Fin 4 → ℕ) (A : ℂ)
    (hK : ∑ i, star (khat (K i)) * khat (K i) ≠ 0) :
    projPerp (fun μ => khat (K μ))
      (fun μ => SL L (kl L (K μ) (l μ)) * A * khat (kl L (K μ) (l μ))) = 0 := by
  have : (fun μ => SL L (kl L (K μ) (l μ)) * A * khat (kl L (K μ) (l μ))) =
      A • fun μ => khat (K μ) := by
    ext μ; simp only [Pi.smul_apply, smul_eq_mul]
    rw [mul_right_comm, SL_mul_khat hL, mul_comm]
  rw [this]; exact projPerp_smul_self _ hK A

/-- §5 (5.2), scalar chain: `c†b = K̂†b − K̂†TZb` with `|K̂†TZb| ≤ |K̂| N ‖Z‖ |b|`, `N ≤ V + |K̂|U`,
`‖Z‖ ≤ 1/d̲` gives `|c†b| ≤ |K̂||b|(1 + τ)`, `τ = (V + |K̂|U)/d̲`. The certificate's rigor rests on
bb_arb's interval evaluation of `B_L` over the cells. -/
theorem gauge_tau {cb kh nb N z V U dl : ℝ} (hkh : 0 ≤ kh) (hnb : 0 ≤ nb) (hN0 : 0 ≤ N)
    (hN : N ≤ V + kh * U) (hz : z ≤ 1 / dl) (hdl : 0 < dl)
    (hc : |cb| ≤ kh * nb + kh * N * z * nb) :
    |cb| ≤ kh * nb * (1 + (V + kh * U) / dl) := by
  have h1 : N * z ≤ (V + kh * U) / dl := by
    calc N * z ≤ N * (1 / dl) := mul_le_mul_of_nonneg_left hz hN0
      _ ≤ (V + kh * U) * (1 / dl) := mul_le_mul_of_nonneg_right hN (by positivity)
      _ = (V + kh * U) / dl := by ring
  have h2 : kh * N * z * nb ≤ kh * nb * ((V + kh * U) / dl) := by
    have := mul_le_mul_of_nonneg_left h1 (mul_nonneg hkh hnb)
    nlinarith
  nlinarith

/-- §5 (5.2): `G = |c|²/(σ|K̂|⁴L²) ≤ (1 + τ)²/(|K̂|² S_L)` with `S_L = σL²`. The certificate's
rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem gauge_G_le {c2 kh σ L τ : ℝ} (hkh : 0 < kh) (hσ : 0 < σ) (hL : 0 < L)
    (hc : c2 ≤ (kh * (1 + τ)) ^ 2) :
    c2 / (σ * kh ^ 4 * L ^ 2) ≤ (1 + τ) ^ 2 / (kh ^ 2 * (σ * L ^ 2)) := by
  rw [div_le_div_iff₀ (by positivity) (by positivity)]
  have : (1 + τ) ^ 2 * (σ * kh ^ 4 * L ^ 2) = (kh * (1 + τ)) ^ 2 * (kh ^ 2 * (σ * L ^ 2)) := by ring
  rw [this]; exact mul_le_mul_of_nonneg_right hc (by positivity)

/-! ## Lemma S: reduction to the sorted chamber (H1_ANALYTIC §6, H2_CERTIFY_P5_VERIFY P5) -/

/-- Signed permutation `K ↦ (s_ρ K_{σ ρ})_ρ`, `s_ρ = −1` iff `s ρ`. -/
def act (σ : Equiv.Perm (Fin 4)) (s : Fin 4 → Bool) (K : Fin 4 → ℝ) : Fin 4 → ℝ :=
  fun ρ => (if s ρ then -1 else 1) * K (σ ρ)

theorem abs_act (σ : Equiv.Perm (Fin 4)) (s : Fin 4 → Bool) (K : Fin 4 → ℝ) (ρ : Fin 4) :
    |act σ s K ρ| = |K (σ ρ)| := by
  unfold act; split_ifs <;> simp

/-- P5: the hyperoctahedral group `B_4` has `2⁴ · 4! = 384` elements. The certificate's rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem card_B4 : Fintype.card (Equiv.Perm (Fin 4) × (Fin 4 → Bool)) = 384 := by
  simp [Fintype.card_prod, Fintype.card_perm]; decide

theorem sup'_equiv {α β : Type*} [Fintype α] [Nonempty α] [LinearOrder β] (e : α ≃ α)
    (f g : α → β) (h : ∀ a, f a = g (e a)) :
    univ.sup' univ_nonempty f = univ.sup' univ_nonempty g := by
  apply le_antisymm
  · exact sup'_le _ _ fun a _ => (h a).trans_le (le_sup' g (mem_univ _))
  · exact sup'_le _ _ fun a _ => by
      rw [← e.apply_symm_apply a, ← h]; exact le_sup' f (mem_univ _)

theorem inf'_equiv {α β : Type*} [Fintype α] [Nonempty α] [LinearOrder β] (e : α ≃ α)
    (f g : α → β) (h : ∀ a, f a = g (e a)) :
    univ.inf' univ_nonempty f = univ.inf' univ_nonempty g := by
  apply le_antisymm
  · exact le_inf' _ _ fun a _ => by
      rw [← e.apply_symm_apply a, ← h]; exact inf'_le f (mem_univ _)
  · exact le_inf' _ _ fun a _ => (inf'_le g (mem_univ (e a))).trans_eq (h a).symm

/-- The (6.1) shape `min_c max_μ [Σ_ρ x_ρ R_ρ / Σ_ρ x_ρ] / Π_ρ S_ρ`, with `R_ρ, S_ρ` the `ρ = μ` or
`ρ ≠ μ` one-dimensional factor, every factor evaluated at `|K_ρ|` (the sign reduction to
`[0, π]⁴`). `c_ρ ∈ {0, 1}` is a `Bool`. -/
noncomputable def fcsForm (S Sm r rm : Bool → ℝ → ℝ) (x : ℝ → ℝ) (K : Fin 4 → ℝ) : ℝ :=
  univ.inf' univ_nonempty fun c : Fin 4 → Bool =>
    univ.sup' univ_nonempty fun μ : Fin 4 =>
      ((∑ ρ, x |K ρ| * (if ρ = μ then rm (c ρ) |K ρ| else r (c ρ) |K ρ|)) / ∑ ρ, x |K ρ|) /
        ∏ ρ, (if ρ = μ then Sm (c ρ) |K ρ| else S (c ρ) |K ρ|)

/-- Lemma S for F_CS: the (6.1) shape is invariant under the 384 signed permutations, for any
one-dimensional factors. The certificate's rigor rests on bb_arb's interval evaluation of `B_L`
over the cells of the sorted chamber; this theorem justifies restricting to that chamber. -/
theorem fcsForm_act (S Sm r rm : Bool → ℝ → ℝ) (x : ℝ → ℝ) (σ : Equiv.Perm (Fin 4))
    (s : Fin 4 → Bool) (K : Fin 4 → ℝ) :
    fcsForm S Sm r rm x (act σ s K) = fcsForm S Sm r rm x K := by
  unfold fcsForm
  simp_rw [abs_act]
  refine inf'_equiv (Equiv.arrowCongr σ (Equiv.refl Bool)) _ _ fun c => ?_
  refine sup'_equiv σ _ _ fun μ => ?_
  simp only [Equiv.arrowCongr_apply, Equiv.coe_refl, Function.comp_apply, id]
  congr 1; congr 1
  · exact Fintype.sum_equiv σ _ _ fun ρ => by simp
  · exact Fintype.sum_equiv σ _ _ fun ρ => rfl
  · exact Fintype.prod_equiv σ _ _ fun ρ => by simp

/-- The (6.1) one-dimensional factors (H1_ANALYTIC (6.1), bb_arb `tables_F`), `t = K_ρ ∈ [0, π]`,
`t_ρ = t/(2π − t)`. -/
noncomputable def fcsS (c : Bool) (t : ℝ) : ℝ :=
  sinc (t / 2) ^ 2 + if c then 4 * sin (t / 2) ^ 2 / (2 * π - t) ^ 2 else 0
noncomputable def fcsSm (c : Bool) (t : ℝ) : ℝ :=
  sinc (t / 2) ^ 4 + if c then 16 * sin (t / 2) ^ 4 / (2 * π - t) ^ 4 else 0
noncomputable def fcsr (c : Bool) (t : ℝ) : ℝ :=
  if c then 2 / (1 + (t / (2 * π - t)) ^ 2) else 1
noncomputable def fcsrm (c : Bool) (t : ℝ) : ℝ :=
  if c then (1 + (t / (2 * π - t)) ^ 2) / (1 + (t / (2 * π - t)) ^ 4) else 1

/-- F_CS of (6.1). -/
noncomputable def FCS (K : Fin 4 → ℝ) : ℝ := fcsForm fcsS fcsSm fcsr fcsrm (fun t => t ^ 2) K

/-- Lemma S for the explicit F_CS. The certificate's rigor rests on bb_arb's interval evaluation of
`B_L` over the cells. -/
theorem FCS_act (σ : Equiv.Perm (Fin 4)) (s : Fin 4 → Bool) (K : Fin 4 → ℝ) :
    FCS (act σ s K) = FCS K := fcsForm_act _ _ _ _ _ σ s K

/-- Lemma S for the gauge part: every `l`-sum of (5.2) (`S_L`, `V`, `U`, and `|K̂|²`) has the shape
`Σ_{l ∈ {0..L−1}⁴} Ψ((l_ρ, |K_ρ|)_ρ)` with `Ψ` symmetric under permutations of the four pairs
(products, sums and maxima over `ρ`). Such a sum is invariant under the 384 signed permutations.
The sign part relies on evaluating at `|K_ρ|` (the chamber `[0, π]⁴` of bb_arb); the evenness of
`ρ_1` itself in each `K_ρ` is P5a, not formalized here. The certificate's rigor rests on bb_arb's
interval evaluation of `B_L` over the cells. -/
theorem latticeSum_act {L : ℕ} {β : Type*} [AddCommMonoid β] (Ψ : (Fin 4 → Fin L × ℝ) → β)
    (hΨ : ∀ (τ : Equiv.Perm (Fin 4)) v, Ψ (v ∘ τ) = Ψ v) (σ : Equiv.Perm (Fin 4))
    (s : Fin 4 → Bool) (K : Fin 4 → ℝ) :
    ∑ l : Fin 4 → Fin L, Ψ (fun ρ => (l ρ, |act σ s K ρ|)) =
      ∑ l : Fin 4 → Fin L, Ψ (fun ρ => (l ρ, |K ρ|)) := by
  simp_rw [abs_act]
  refine Fintype.sum_equiv (Equiv.arrowCongr σ (Equiv.refl (Fin L))) _ _ fun l => ?_
  rw [← hΨ σ (fun ρ => ((Equiv.arrowCongr σ (Equiv.refl (Fin L)) l) ρ, |K ρ|))]
  congr 1; ext ρ <;> simp

/-- Example instance: `S_L(K) = L⁻² Σ_l 1/|k̂_l|²`, `|k̂_l|² = Σ_ρ 4 sin²((K_ρ + 2πl_ρ)/(2L))`. -/
noncomputable def SLsum (L : ℕ) (K : Fin 4 → ℝ) : ℝ :=
  (1 / (L : ℝ) ^ 2) * ∑ l : Fin 4 → Fin L,
    1 / ∑ ρ, 4 * sin ((|K ρ| + 2 * π * (l ρ : ℕ)) / (2 * L)) ^ 2

/-- Lemma S for `S_L`. The certificate's rigor rests on bb_arb's interval evaluation of `B_L` over the cells. -/
theorem SLsum_act (L : ℕ) (σ : Equiv.Perm (Fin 4)) (s : Fin 4 → Bool) (K : Fin 4 → ℝ) :
    SLsum L (act σ s K) = SLsum L K := by
  unfold SLsum
  congr 1
  exact latticeSum_act (fun v : Fin 4 → Fin L × ℝ =>
      1 / ∑ ρ, 4 * sin (((v ρ).2 + 2 * π * ((v ρ).1 : ℕ)) / (2 * L)) ^ 2)
    (fun τ v => by simp only [Function.comp_apply]; rw [Equiv.sum_comp τ (fun ρ =>
      4 * sin (((v ρ).2 + 2 * π * ((v ρ).1 : ℕ)) / (2 * L)) ^ 2)]) σ s K

end YmLean.H1M

#print axioms YmLean.H1M.sin_mul_ge
#print axioms YmLean.H1M.N_sin_le
#print axioms YmLean.H1M.sigma_inf_le_sigma_N
#print axioms YmLean.H1M.two_sin_le_deformed
#print axioms YmLean.H1M.sinc_mul_le_two_sin
#print axioms YmLean.H1M.sinc_pos_of
#print axioms YmLean.H1M.deformed_sum_ge
#print axioms YmLean.H1M.dmax_le
#print axioms YmLean.H1M.cs_weighted
#print axioms YmLean.H1M.sum_prod_factor
#print axioms YmLean.H1M.sum_prod_mul_sum_factor
#print axioms YmLean.H1M.sigma_sq_mul_q_sq
#print axioms YmLean.H1M.four_sin_sq_div_sinc_sq
#print axioms YmLean.H1M.F_le_of_cs
#print axioms YmLean.H1M.before_count
#print axioms YmLean.H1M.before_image
#print axioms YmLean.H1M.Phi_closed
#print axioms YmLean.H1M.Phi_abs_le
#print axioms YmLean.H1M.alpha_norm_le
#print axioms YmLean.H1M.g_norm_le
#print axioms YmLean.H1M.SL_mul_khat
#print axioms YmLean.H1M.projPerp_smul_self
#print axioms YmLean.H1M.gauge_kernel
#print axioms YmLean.H1M.gauge_tau
#print axioms YmLean.H1M.gauge_G_le
#print axioms YmLean.H1M.abs_act
#print axioms YmLean.H1M.card_B4
#print axioms YmLean.H1M.sup'_equiv
#print axioms YmLean.H1M.inf'_equiv
#print axioms YmLean.H1M.fcsForm_act
#print axioms YmLean.H1M.FCS_act
#print axioms YmLean.H1M.latticeSum_act
#print axioms YmLean.H1M.SLsum_act
