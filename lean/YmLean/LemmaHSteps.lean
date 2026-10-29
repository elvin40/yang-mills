import YmLean.LemmaH
import Mathlib.Analysis.Calculus.MeanValue

/-!
# L-182 (Lemma H), Steps 2 and 3 (SOURCES_HBETA.md §2)

`g_i = 1/√(u_i)` (convention of LemmaDPrime.lean), so `g_i³ = (1/√(u_i))^3`.

* Step 2: `S3_le` (`S_3 = Σ_{i<K} g_i³ ≤ 2 g_K/β ≤ 2γ/β`, (2.2)), `colsum_le` (column sums of
  (1.1) with history weights), `lemma_H_step2` (`Σ_i ½C₁A g_i³ ≤ C₁Aγ/β = x`),
  `lemma_H_real` (Steps 1 + 2 at one value of `c`).
* Step 3: `bootstrap` (real-analysis core of the open-closed argument),
  `lemma_H_bootstrap` (Lemma H on `|c| ≤ 2r`).

The Yang–Mills identification (I) stays a hypothesis: the numbers `a c j i` stand for
`∂β_j/∂u_i` along the trajectory `u · c`, and the hypotheses of `lemma_H_bootstrap` say what
(I), (E), (H-hist) and the chain rule (1.1) provide.
-/

open Finset Set

noncomputable section

namespace YmLean

/-- `0 < s ≤ t` ⇒ `(t² − s²)/t³ ≤ 2(1/s − 1/t)` (one step of the comparison with the integral). -/
lemma cube_step {s t : ℝ} (hs : 0 < s) (hst : s ≤ t) :
    (t ^ 2 - s ^ 2) / t ^ 3 ≤ 2 * (1 / s - 1 / t) := by
  have ht : 0 < t := hs.trans_le hst
  rw [div_le_iff₀ (by positivity), show 2 * (1 / s - 1 / t) * t ^ 3 = 2 * t ^ 2 * (t - s) / s by
    field_simp, le_div_iff₀ hs]
  nlinarith [mul_nonneg (mul_nonneg (sub_nonneg.2 hst) (sub_nonneg.2 hst)) (add_pos ht ht).le,
    mul_nonneg (mul_nonneg (sub_nonneg.2 hst) (sub_nonneg.2 hst)) hs.le]

/-- **Step 2, (2.2).** Increments `u_i − u_{i+1} ≥ β > 0` for `i < K` and the floor
`u_K ≥ γ^{−2}` give `S_3 = Σ_{i<K} g_i³ ≤ 2 g_K/β ≤ 2γ/β`. -/
theorem S3_le (u : ℕ → ℝ) (β γ : ℝ) (K : ℕ) (hβ : 0 < β) (hγ : 0 < γ)
    (hinc : ∀ i < K, β ≤ u i - u (i + 1)) (hfloor : 1 / γ ^ 2 ≤ u K) :
    ∑ i ∈ range K, (1 / √(u i)) ^ 3 ≤ 2 / β * (1 / √(u K)) ∧
    ∑ i ∈ range K, (1 / √(u i)) ^ 3 ≤ 2 * γ / β := by
  have huK : 0 < u K := lt_of_lt_of_le (by positivity) hfloor
  have hge : ∀ i ≤ K, u K ≤ u i := by
    intro i hi
    induction hi using Nat.decreasingInduction with
    | self => exact le_rfl
    | of_succ i hiK ih => linarith [hinc i hiK, hβ]
  have hstep : ∀ i < K, β * (1 / √(u i)) ^ 3 ≤ 2 * (1 / √(u (i + 1)) - 1 / √(u i)) := by
    intro i hi
    have h1 : 0 < u (i + 1) := huK.trans_le (hge _ hi)
    have hs : 0 < √(u (i + 1)) := Real.sqrt_pos.2 h1
    have hst : √(u (i + 1)) ≤ √(u i) := Real.sqrt_le_sqrt (by linarith [hinc i hi])
    have ht : 0 < √(u i) := hs.trans_le hst
    have key := cube_step hs hst
    rw [Real.sq_sqrt h1.le, Real.sq_sqrt (by linarith [hinc i hi])] at key
    calc β * (1 / √(u i)) ^ 3 ≤ (u i - u (i + 1)) / √(u i) ^ 3 := by
          rw [div_pow, one_pow, mul_one_div]
          exact div_le_div_of_nonneg_right (hinc i hi) (by positivity)
      _ ≤ _ := key
  have hsum : β * ∑ i ∈ range K, (1 / √(u i)) ^ 3 ≤ 2 * (1 / √(u K) - 1 / √(u 0)) := by
    rw [mul_sum]
    calc ∑ i ∈ range K, β * (1 / √(u i)) ^ 3
        ≤ ∑ i ∈ range K, 2 * (1 / √(u (i + 1)) - 1 / √(u i)) :=
          sum_le_sum fun i hi => hstep i (mem_range.1 hi)
      _ = _ := by rw [← mul_sum, sum_range_sub (fun i => 1 / √(u i))]
  have hu0 : 0 ≤ 1 / √(u 0) := by positivity
  have h1 : ∑ i ∈ range K, (1 / √(u i)) ^ 3 ≤ 2 / β * (1 / √(u K)) := by
    rw [div_mul_eq_mul_div, le_div_iff₀ hβ]; linarith
  have hgK : 1 / √(u K) ≤ γ := by
    rw [div_le_iff₀ (Real.sqrt_pos.2 huK)]
    have : 1 / γ ≤ √(u K) := by
      rw [show 1 / γ = √(1 / γ ^ 2) by rw [Real.sqrt_div' _ (sq_nonneg γ), Real.sqrt_one,
        Real.sqrt_sq hγ.le]]
      exact Real.sqrt_le_sqrt hfloor
    rw [div_le_iff₀ hγ] at this; linarith
  refine ⟨h1, h1.trans ?_⟩
  rw [div_mul_eq_mul_div, mul_comm 2 γ]
  exact div_le_div_of_nonneg_right (by linarith) hβ.le

/-- Column sums of (1.1): `|a_{ji}| ≤ ½C₁ g_i³ w_{j−1−i}`, `w ≥ 0`, `Σ_m w_m ≤ A` ⇒
`Σ_{j∈(i,K]} |a_{ji}| ≤ ½C₁A g_i³`. -/
theorem colsum_le (a : ℕ → ℕ → ℝ) (w : ℕ → ℝ) (G : ℕ → ℝ) (C₁ A : ℝ) (K : ℕ) (hC₁ : 0 ≤ C₁)
    (hG : ∀ i, 0 ≤ G i) (hA : ∀ n, ∑ m ∈ range n, w m ≤ A)
    (h11 : ∀ j ≤ K, ∀ i < j, |a j i| ≤ C₁ / 2 * G i * w (j - 1 - i)) :
    ∀ i < K, ∑ j ∈ Ioc i K, |a j i| ≤ C₁ / 2 * A * G i := by
  intro i _
  have hre : ∑ j ∈ Ioc i K, w (j - 1 - i) = ∑ m ∈ range (K - i), w m := by
    rw [← Finset.Ico_add_one_add_one_eq_Ioc, sum_Ico_eq_sum_range]
    rw [show K + 1 - (i + 1) = K - i by omega]
    exact sum_congr rfl fun m _ => by congr 1; omega
  calc ∑ j ∈ Ioc i K, |a j i| ≤ ∑ j ∈ Ioc i K, C₁ / 2 * G i * w (j - 1 - i) :=
        sum_le_sum fun j hj => by simp only [Finset.mem_Ioc] at hj; exact h11 j hj.2 i hj.1
    _ = C₁ / 2 * G i * ∑ m ∈ range (K - i), w m := by rw [← mul_sum, hre]
    _ ≤ C₁ / 2 * G i * A := mul_le_mul_of_nonneg_left (hA _) (by have := hG i; positivity)
    _ = _ := by ring

/-- **Step 2.** With `c_i = ½C₁A g_i³` (the column-sum bound of `colsum_le`):
`Σ_{i<K} c_i ≤ ½C₁A·S_3 ≤ C₁Aγ/β = x`. -/
theorem lemma_H_step2 (u : ℕ → ℝ) (C₁ A β γ : ℝ) (K : ℕ) (hC₁ : 0 ≤ C₁) (hA : 0 ≤ A)
    (hβ : 0 < β) (hγ : 0 < γ) (hinc : ∀ i < K, β ≤ u i - u (i + 1)) (hfloor : 1 / γ ^ 2 ≤ u K) :
    ∑ i ∈ range K, C₁ / 2 * A * (1 / √(u i)) ^ 3 ≤ C₁ * A * γ / β := by
  rw [← mul_sum]
  calc C₁ / 2 * A * ∑ i ∈ range K, (1 / √(u i)) ^ 3 ≤ C₁ / 2 * A * (2 * γ / β) :=
        mul_le_mul_of_nonneg_left (S3_le u β γ K hβ hγ hinc hfloor).2 (by positivity)
    _ = _ := by field_simp

/-- **L-182 (Lemma H), Steps 1–2 at one value of `c`.** Variational equation with `v_0 = −1`,
(1.1) `|a_{ji}| ≤ ½C₁ g_i³ w_{j−1−i}` with `Σ w ≤ A`, increments `≥ β` (E), floor
`u_K ≥ γ^{−2}`, `x = C₁Aγ/β ≤ ln(3/2)` ⇒ `Σ_{j≤K}|B'_j| ≤ e^x − 1 ≤ ½` and `½ ≤ |v_k| ≤ 3/2`. -/
theorem lemma_H_real (u v : ℕ → ℝ) (a : ℕ → ℕ → ℝ) (w : ℕ → ℝ) (C₁ A β γ : ℝ) (K : ℕ)
    (hC₁ : 0 ≤ C₁) (hβ : 0 < β) (hγ : 0 < γ)
    (hA : ∀ n, ∑ m ∈ range n, w m ≤ A) (hv0 : v 0 = -1)
    (hrec : ∀ j < K, v (j + 1) = v j - Bp a v (j + 1))
    (h11 : ∀ j ≤ K, ∀ i < j, |a j i| ≤ C₁ / 2 * (1 / √(u i)) ^ 3 * w (j - 1 - i))
    (hinc : ∀ i < K, β ≤ u i - u (i + 1)) (hfloor : 1 / γ ^ 2 ≤ u K)
    (hx : C₁ * A * γ / β ≤ Real.log (3 / 2)) :
    ∑ j ∈ Ioc 0 K, |Bp a v j| ≤ Real.exp (C₁ * A * γ / β) - 1 ∧
    ∑ j ∈ Ioc 0 K, |Bp a v j| ≤ 1 / 2 ∧ ∀ k ≤ K, 1 / 2 ≤ |v k| ∧ |v k| ≤ 3 / 2 := by
  have hA0 : 0 ≤ A := by simpa using hA 0
  have hcol := colsum_le a w (fun i => (1 / √(u i)) ^ 3) C₁ A K hC₁ (fun i => by positivity)
    hA h11
  have hs := lemma_H_step2 u C₁ A β γ K hC₁ hA0 hβ hγ hinc hfloor
  obtain ⟨h1, h2, -⟩ := lemma_H a v _ _ K (by simp [hv0]) hrec hcol hs
  obtain ⟨h3, h4⟩ := lemma_H_half a v _ _ K hv0 hrec hcol hs hx
  exact ⟨h1.trans h2, h3, h4⟩

/-- Real-analysis core of Step 3 on `[0, R]`: `U(0) = t`, `θ < t − MR`, and `|U'| ≤ M` wherever
`U > θ` ⇒ `U(c) ≥ t − Mc` on `[0, R]`. -/
lemma bootstrap_right (U U' : ℝ → ℝ) (R t θ M : ℝ) (hM : 0 ≤ M)
    (hder : ∀ c ∈ Icc 0 R, HasDerivAt U (U' c) c) (h0 : U 0 = t) (hgap : θ < t - M * R)
    (hbd : ∀ c ∈ Icc 0 R, θ < U c → |U' c| ≤ M) : ∀ c ∈ Icc 0 R, t - M * c ≤ U c := by
  rcases lt_or_ge R 0 with hR | hR
  · intro c hc; exact absurd (hc.1.trans hc.2) (not_le.2 hR)
  have hcont : ContinuousOn (fun c => -U c) (Icc 0 R) := fun c hc =>
    (hder c hc).continuousAt.neg.continuousWithinAt
  have hf' : ∀ c ∈ Ico 0 R, HasDerivWithinAt (fun c => -U c) (-U' c) (Ici c) c := fun c hc =>
    (hder c (Ico_subset_Icc_self hc)).neg.hasDerivWithinAt
  have hlin : ∀ m : ℝ, ∀ c, HasDerivAt (fun c => -t + m * c) m c := fun m c => by
    simpa using ((hasDerivAt_id c).const_mul m).const_add (-t)
  -- an ε of room
  set ε := (t - M * R - θ) / (R + 1)
  have hε : 0 < ε := div_pos (by linarith) (by linarith)
  have hεR : ε * R < t - M * R - θ := by
    rw [div_mul_eq_mul_div, div_lt_iff₀ (by linarith)]; nlinarith
  have hpos : ∀ c ∈ Icc 0 R, θ < U c := by
    intro c hc
    have := image_le_of_deriv_right_lt_deriv_boundary' hcont hf' (B := fun c => -t + (M + ε) * c)
      (B' := fun _ => M + ε) (by simp [h0]) (fun c _ => (hlin _ c).continuousAt.continuousWithinAt)
      (fun c _ => (hlin _ c).hasDerivWithinAt) (fun c hc hfc => by
        have hc' := Ico_subset_Icc_self hc
        have hU : θ < U c := by
          have : (M + ε) * c ≤ (M + ε) * R := mul_le_mul_of_nonneg_left hc'.2 (by linarith)
          try dsimp only at hfc
          nlinarith
        have := abs_le.1 (hbd c hc' hU); try dsimp only
        linarith) hc
    try dsimp only at this
    have : (M + ε) * c ≤ (M + ε) * R := mul_le_mul_of_nonneg_left hc.2 (by linarith)
    nlinarith
  intro c hc
  have := image_le_of_deriv_right_le_deriv_boundary hcont hf' (B := fun c => -t + M * c)
    (B' := fun _ => M) (by simp [h0]) (fun c _ => (hlin _ c).continuousAt.continuousWithinAt)
    (fun c _ => (hlin _ c).hasDerivWithinAt) (fun c hc => by
      have hc' := Ico_subset_Icc_self hc
      have := abs_le.1 (hbd c hc' (hpos c hc')); try dsimp only
      linarith) hc
  try dsimp only at this
  linarith

/-- **Step 3, real-analysis core** (open-closed argument on `[−R, R]`): `U` differentiable on
`[−R, R]`, `U(0) = t`, `θ < t − MR`, `|U'| ≤ M` wherever `U > θ` ⇒ `U(c) ≥ t − M|c| > θ`. -/
theorem bootstrap (U U' : ℝ → ℝ) (R t θ M : ℝ) (hM : 0 ≤ M)
    (hder : ∀ c ∈ Icc (-R) R, HasDerivAt U (U' c) c) (h0 : U 0 = t) (hgap : θ < t - M * R)
    (hbd : ∀ c ∈ Icc (-R) R, θ < U c → |U' c| ≤ M) :
    ∀ c ∈ Icc (-R) R, t - M * |c| ≤ U c ∧ θ < U c := by
  have hR : ∀ c ∈ Icc (-R) R, |c| ≤ R := fun c hc => abs_le.2 hc
  have key : ∀ c ∈ Icc (-R) R, t - M * |c| ≤ U c := by
    intro c hc
    rcases le_total 0 c with h | h
    · rw [abs_of_nonneg h]
      exact bootstrap_right U U' R t θ M hM (fun c hc' => hder c ⟨by linarith [hc'.1, hc'.2,
        hc.1, hc.2], hc'.2⟩) h0 hgap (fun c hc' => hbd c ⟨by linarith [hc'.1, hc.1, hc.2], hc'.2⟩)
        c ⟨h, hc.2⟩
    · rw [abs_of_nonpos h]
      have := bootstrap_right (fun c => U (-c)) (fun c => -U' (-c)) R t θ M hM
        (fun c hc' => by
          have h := (hder (-c) ⟨by linarith [hc'.2], by linarith [hc'.1, hc.1, hc.2]⟩).comp c
            (hasDerivAt_neg c)
          convert h using 1
          all_goals first | rfl | simp)
        (by simpa using h0) hgap
        (fun c hc' hU => by
          rw [abs_neg]; exact hbd (-c) ⟨by linarith [hc'.2], by linarith [hc'.1, hc.1, hc.2]⟩ hU)
        (-c) ⟨by linarith, by linarith [hc.1]⟩
      simpa using this
  intro c hc
  refine ⟨key c hc, ?_⟩
  have := mul_le_mul_of_nonneg_left (hR c hc) hM
  linarith [key c hc]

/-- **L-182 (Lemma H) on `|c| ≤ 2r`** (Steps 1–3). `u k c` = û_k(c) (clamped flow, `C¹` in `c`,
derivative `v k c`), `a c j i` = ∂β_j/∂u_i along it. Hypotheses:
* `hder`: `c ↦ u K c` has derivative `v K c` on `[−2r, 2r]` (only `k = K` is needed);
* `hmono`: `û_K ≤ û_k` for `k ≤ K` (all increments ≥ β > 0 by (E) on the clamped flow);
* `hreg`: where all `u k c > γ^{−2}` (clamp inactive): `v_0 = −1`, the variational equation,
  (1.1) with history weights `w` (`Σ_{m<n} w_m ≤ A`), and increments `≥ β` ((E));
* `u_K(0) = g^{−2}`, `3r < g^{−2} − γ^{−2}`, `x = C₁Aγ/β ≤ ln(3/2)`.
Conclusion for every `c ∈ [−2r, 2r]`: all `u k c > γ^{−2}` (so `g_k(c) ∈ ]0, γ[`),
`Σ_{j≤K}|B'_j(c)| ≤ e^x − 1 ≤ ½`, `½ ≤ |v_k(c)| ≤ 3/2`, and `u_K(c) ≥ g^{−2} − (3/2)|c|`. -/
theorem lemma_H_bootstrap (u v : ℕ → ℝ → ℝ) (a : ℝ → ℕ → ℕ → ℝ) (w : ℕ → ℝ)
    (C₁ A β γ g r : ℝ) (K : ℕ) (hC₁ : 0 ≤ C₁) (hβ : 0 < β) (hγ : 0 < γ)
    (hA : ∀ n, ∑ m ∈ range n, w m ≤ A)
    (hx : C₁ * A * γ / β ≤ Real.log (3 / 2)) (hr : 3 * r < 1 / g ^ 2 - 1 / γ ^ 2)
    (hu0 : u K 0 = 1 / g ^ 2)
    (hder : ∀ c ∈ Icc (-(2 * r)) (2 * r), HasDerivAt (u K) (v K c) c)
    (hmono : ∀ c ∈ Icc (-(2 * r)) (2 * r), ∀ k ≤ K, u K c ≤ u k c)
    (hreg : ∀ c ∈ Icc (-(2 * r)) (2 * r), (∀ k ≤ K, 1 / γ ^ 2 < u k c) →
      v 0 c = -1 ∧ (∀ j < K, v (j + 1) c = v j c - Bp (a c) (fun i => v i c) (j + 1)) ∧
      (∀ j ≤ K, ∀ i < j, |a c j i| ≤ C₁ / 2 * (1 / √(u i c)) ^ 3 * w (j - 1 - i)) ∧
      (∀ i < K, β ≤ u i c - u (i + 1) c)) :
    ∀ c ∈ Icc (-(2 * r)) (2 * r), (∀ k ≤ K, 1 / γ ^ 2 < u k c) ∧
      ∑ j ∈ Ioc 0 K, |Bp (a c) (fun i => v i c) j| ≤ Real.exp (C₁ * A * γ / β) - 1 ∧
      ∑ j ∈ Ioc 0 K, |Bp (a c) (fun i => v i c) j| ≤ 1 / 2 ∧
      (∀ k ≤ K, 1 / 2 ≤ |v k c| ∧ |v k c| ≤ 3 / 2) ∧ 1 / g ^ 2 - 3 / 2 * |c| ≤ u K c := by
  -- Steps 1–2 wherever u_K(c) > γ^{−2}
  have step12 : ∀ c ∈ Icc (-(2 * r)) (2 * r), 1 / γ ^ 2 < u K c →
      (∀ k ≤ K, 1 / γ ^ 2 < u k c) ∧
      ∑ j ∈ Ioc 0 K, |Bp (a c) (fun i => v i c) j| ≤ Real.exp (C₁ * A * γ / β) - 1 ∧
      ∑ j ∈ Ioc 0 K, |Bp (a c) (fun i => v i c) j| ≤ 1 / 2 ∧
      (∀ k ≤ K, 1 / 2 ≤ |v k c| ∧ |v k c| ≤ 3 / 2) := by
    intro c hc hK
    have hall : ∀ k ≤ K, 1 / γ ^ 2 < u k c := fun k hk => hK.trans_le (hmono c hc k hk)
    obtain ⟨h0, hrec, h11, hinc⟩ := hreg c hc hall
    exact ⟨hall, lemma_H_real (fun i => u i c) (fun i => v i c) (a c) w C₁ A β γ K hC₁ hβ hγ
      hA h0 hrec h11 hinc hK.le hx⟩
  have hboot := bootstrap (u K) (v K) (2 * r) (1 / g ^ 2) (1 / γ ^ 2) (3 / 2) (by norm_num)
    hder hu0 (by linarith) (fun c hc hK => (step12 c hc hK).2.2.2 K le_rfl |>.2)
  intro c hc
  obtain ⟨hlow, hθ⟩ := hboot c hc
  exact ⟨(step12 c hc hθ).1, (step12 c hc hθ).2.1, (step12 c hc hθ).2.2.1,
    (step12 c hc hθ).2.2.2, hlow⟩

end YmLean

#print axioms YmLean.S3_le
#print axioms YmLean.colsum_le
#print axioms YmLean.lemma_H_step2
#print axioms YmLean.lemma_H_real
#print axioms YmLean.bootstrap
#print axioms YmLean.lemma_H_bootstrap
