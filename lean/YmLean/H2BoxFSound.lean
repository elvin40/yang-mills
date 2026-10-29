import YmLean.H2BoxF
import YmLean.H2BoxGSound

/-!
# Soundness of `Fbox` (H2Box, part 4b)
-/

open Real Finset

namespace YmLean.H2B

theorem omin_some {a b : Option ℤ} {v : ℤ} (h : omin a b = some v) : a = some v ∨ b = some v := by
  unfold omin at h
  rcases a with _ | x <;> rcases b with _ | y <;> simp at h
  · exact Or.inr (by rw [h])
  · exact Or.inl (by rw [h])
  · rcases min_choice x y with h' | h' <;> rw [h'] at h
    · exact Or.inl (by rw [h])
    · exact Or.inr (by rw [h])

theorem foldl_omin {g : ℕ → Option ℤ} (L : List ℕ) (init : Option ℤ) {v : ℤ}
    (h : L.foldl (fun best i => omin best (g i)) init = some v) : init = some v ∨ ∃ i, g i = some v := by
  induction L generalizing init with
  | nil => exact Or.inl h
  | cons a L ih =>
    rcases ih _ h with h1 | h1
    · rcases omin_some h1 with h2 | h2
      · exact Or.inl h2
      · exact Or.inr ⟨a, h2⟩
    · exact Or.inr h1

theorem omax_some {a b : Option ℤ} {v : ℤ} (h : omax a b = some v) :
    ∃ x y, a = some x ∧ b = some y ∧ x ≤ v ∧ y ≤ v := by
  unfold omax at h
  rcases a with _ | x <;> rcases b with _ | y <;> simp at h
  exact ⟨x, y, rfl, rfl, h ▸ le_max_left _ _, h ▸ le_max_right _ _⟩

theorem Fc_some {d : Fin 4 → Dir} {c : Fin 4 → Bool} {v : ℤ} (h : Fc d c = some v) :
    ∀ μ, ∃ w, Fcm d c μ = some w ∧ w ≤ v := by
  unfold Fc at h
  obtain ⟨x, y3, hx, h3, hxv, h3v⟩ := omax_some h
  obtain ⟨x', y2, hx', h2, hx'v, h2v⟩ := omax_some hx
  obtain ⟨y0, y1, h0, h1, h0v, h1v⟩ := omax_some hx'
  intro μ
  fin_cases μ
  · exact ⟨y0, h0, by omega⟩
  · exact ⟨y1, h1, by omega⟩
  · exact ⟨y2, h2, by omega⟩
  · exact ⟨y3, h3, by omega⟩

/-- Real reading of the integer linear check. -/
theorem linChk_real {d : Fin 4 → Dir} {rh : Fin 4 → ℤ} {M : ℤ} (h : linChk d rh M = true)
    {x : Fin 4 → ℝ} (hx : ∀ ρ, val (d ρ).xl ≤ x ρ ∧ x ρ ≤ val (d ρ).xh) :
    ∑ ρ, x ρ * (val (rh ρ) - val M) ≤ 0 ∧ 0 ≤ M := by
  unfold linChk at h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  refine ⟨?_, h.2⟩
  have hSC := SC_real_pos
  have key : ∀ ρ, x ρ * (val (rh ρ) - val M) ≤ ((linTerm d rh M ρ : ℤ) : ℝ) / (SC:ℝ) ^ 2 := by
    intro ρ
    unfold linTerm
    have e1 : ∀ a b : ℤ, ((a * b : ℤ) : ℝ) / (SC:ℝ) ^ 2 = val a * val b := by
      intro a b; unfold val; push_cast; ring
    rw [show ((max ((d ρ).xl * (rh ρ - M)) ((d ρ).xh * (rh ρ - M)) : ℤ) : ℝ) / (SC:ℝ) ^ 2 =
        max (((d ρ).xl * (rh ρ - M) : ℤ) / (SC:ℝ) ^ 2) (((d ρ).xh * (rh ρ - M) : ℤ) / (SC:ℝ) ^ 2) by
      push_cast
      rw [max_div_div_right (by positivity)]]
    rw [e1, e1, val_sub]
    rcases le_total 0 (val (rh ρ) - val M) with hs | hs
    · exact le_trans (mul_le_mul_of_nonneg_right (hx ρ).2 hs) (le_max_right _ _)
    · exact le_trans (mul_le_mul_of_nonpos_right (hx ρ).1 hs) (le_max_left _ _)
  have hsum : ((linTerm d rh M 0 + linTerm d rh M 1 + linTerm d rh M 2 + linTerm d rh M 3 : ℤ) : ℝ) ≤ 0 := by
    exact_mod_cast h.1
  rw [Fin.sum_univ_four]
  have := key 0; have := key 1; have := key 2; have := key 3
  have e : ((linTerm d rh M 0 : ℤ) : ℝ) / (SC:ℝ) ^ 2 + ((linTerm d rh M 1 : ℤ) : ℝ) / (SC:ℝ) ^ 2 +
      ((linTerm d rh M 2 : ℤ) : ℝ) / (SC:ℝ) ^ 2 + ((linTerm d rh M 3 : ℤ) : ℝ) / (SC:ℝ) ^ 2 =
      ((linTerm d rh M 0 + linTerm d rh M 1 + linTerm d rh M 2 + linTerm d rh M 3 : ℤ) : ℝ) / (SC:ℝ) ^ 2 := by
    push_cast; ring
  have : ((linTerm d rh M 0 + linTerm d rh M 1 + linTerm d rh M 2 + linTerm d rh M 3 : ℤ) : ℝ) / (SC:ℝ) ^ 2 ≤ 0 :=
    div_nonpos_of_nonpos_of_nonneg hsum (by positivity)
  linarith

theorem fcsr_nonneg (c : Bool) {t : ℝ} : 0 ≤ H1M.fcsr c t := by
  unfold H1M.fcsr; split_ifs <;> positivity

theorem fcsrm_nonneg (c : Bool) {t : ℝ} : 0 ≤ H1M.fcsrm c t := by
  unfold H1M.fcsrm; split_ifs <;> positivity

theorem fcsS_nonneg (c : Bool) (t : ℝ) : 0 ≤ H1M.fcsS c t := by
  unfold H1M.fcsS; split_ifs <;> positivity

theorem fcsSm_nonneg (c : Bool) (t : ℝ) : 0 ≤ H1M.fcsSm c t := by
  unfold H1M.fcsSm
  have : 0 ≤ sinc (t / 2) ^ 4 := by
    have : sinc (t / 2) ^ 4 = (sinc (t / 2) ^ 2) ^ 2 := by ring
    rw [this]; positivity
  split_ifs <;> positivity

/-- The `(c, μ)` term of (6.1) at `K = π u`. -/
noncomputable def fcsTerm (u : Fin 4 → ℝ) (c : Fin 4 → Bool) (μ : Fin 4) : ℝ :=
  ((∑ ρ, (fun t : ℝ => t ^ 2) |π * u ρ| * (if ρ = μ then H1M.fcsrm (c ρ) |π * u ρ| else H1M.fcsr (c ρ) |π * u ρ|)) /
      ∑ ρ, (fun t : ℝ => t ^ 2) |π * u ρ|) /
    ∏ ρ, (if ρ = μ then H1M.fcsSm (c ρ) |π * u ρ| else H1M.fcsS (c ρ) |π * u ρ|)

theorem fcsTerm_nonneg (u : Fin 4 → ℝ) (c : Fin 4 → Bool) (μ : Fin 4) : 0 ≤ fcsTerm u c μ := by
  unfold fcsTerm
  refine div_nonneg (div_nonneg (sum_nonneg fun ρ _ => mul_nonneg (by positivity) ?_) (sum_nonneg fun ρ _ => by positivity))
    (prod_nonneg fun ρ _ => ?_)
  · split_ifs
    · exact fcsrm_nonneg _
    · exact fcsr_nonneg _
  · split_ifs
    · exact fcsSm_nonneg _ _
    · exact fcsS_nonneg _ _

theorem FCSu_eq (u : Fin 4 → ℝ) :
    FCSu u = univ.inf' univ_nonempty fun c : Fin 4 → Bool => univ.sup' univ_nonempty fun μ => fcsTerm u c μ := rfl

theorem FCSu_nonneg (u : Fin 4 → ℝ) : 0 ≤ FCSu u := by
  rw [FCSu_eq]
  refine le_inf' _ _ fun c _ => ?_
  exact (fcsTerm_nonneg u c 0).trans (le_sup' (fun μ => fcsTerm u c μ) (mem_univ 0))

theorem Fcm_sound {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {lo hi : Fin 4 → ℕ} {d : Fin 4 → Dir}
    (hd : ∀ ρ, d ρ = mkDir tab (lo ρ) (hi ρ)) {u : Fin 4 → ℝ} (hu : ∀ ρ, InBox (lo ρ) (hi ρ) (u ρ))
    {c : Fin 4 → Bool} {μ : Fin 4} {w : ℤ} (h : Fcm d c μ = some w) : fcsTerm u c μ ≤ val w := by
  have hu0 : ∀ ρ, 0 ≤ u ρ := fun ρ => (hu ρ).u0
  have habs : ∀ ρ, |π * u ρ| = π * u ρ := fun ρ => abs_of_nonneg (by have := hu0 ρ; positivity)
  unfold Fcm at h
  simp only at h
  split_ifs at h with hc
  injection h with h; subst h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hc
  obtain ⟨hlin, hdp⟩ := hc
  set rh := rhF d c μ
  set M := vertMax d rh
  have hx : ∀ ρ, val (d ρ).xl ≤ (π * u ρ) ^ 2 ∧ (π * u ρ) ^ 2 ≤ val (d ρ).xh := by
    intro ρ; rw [hd ρ]; exact dir_x (hu ρ)
  obtain ⟨hlr, hM0⟩ := linChk_real hlin hx
  have hR : ∀ ρ, (if ρ = μ then H1M.fcsrm (c ρ) (π * u ρ) else H1M.fcsr (c ρ) (π * u ρ)) ≤ val (rh ρ) := by
    intro ρ
    show _ ≤ val (rhF d c μ ρ)
    unfold rhF
    have := dir_r (tab := tab) (hu ρ) (c ρ)
    rw [← hd ρ] at this
    split_ifs
    · exact this.2
    · exact this.1
  have hR0 : ∀ ρ, 0 ≤ (if ρ = μ then H1M.fcsrm (c ρ) (π * u ρ) else H1M.fcsr (c ρ) (π * u ρ)) := by
    intro ρ; split_ifs
    · exact fcsrm_nonneg _
    · exact fcsr_nonneg _
  -- ratio ≤ M
  have hq : (∑ ρ, (π * u ρ) ^ 2 * (if ρ = μ then H1M.fcsrm (c ρ) (π * u ρ) else H1M.fcsr (c ρ) (π * u ρ))) /
      ∑ ρ, (π * u ρ) ^ 2 ≤ val M := by
    have hnum : ∑ ρ, (π * u ρ) ^ 2 * (if ρ = μ then H1M.fcsrm (c ρ) (π * u ρ) else H1M.fcsr (c ρ) (π * u ρ)) ≤
        val M * ∑ ρ, (π * u ρ) ^ 2 := by
      have h1 : ∑ ρ, (π * u ρ) ^ 2 * (if ρ = μ then H1M.fcsrm (c ρ) (π * u ρ) else H1M.fcsr (c ρ) (π * u ρ)) ≤
          ∑ ρ, (π * u ρ) ^ 2 * val (rh ρ) :=
        sum_le_sum fun ρ _ => mul_le_mul_of_nonneg_left (hR ρ) (by positivity)
      have h2 : ∑ ρ, (π * u ρ) ^ 2 * val (rh ρ) - val M * ∑ ρ, (π * u ρ) ^ 2 =
          ∑ ρ, (π * u ρ) ^ 2 * (val (rh ρ) - val M) := by
        rw [mul_sum, ← sum_sub_distrib]; exact sum_congr rfl fun ρ _ => by ring
      linarith
    have hs0 : 0 ≤ ∑ ρ, (π * u ρ) ^ 2 := sum_nonneg fun ρ _ => by positivity
    rcases eq_or_lt_of_le hs0 with hs | hs
    · rw [← hs, div_zero]; exact val_nonneg.2 hM0
    · rw [div_le_iff₀ hs]; linarith
  -- product ≥ dp
  have hS : ∀ ρ, 0 ≤ denF d c μ ρ ∧
      val (denF d c μ ρ) ≤ (if ρ = μ then H1M.fcsSm (c ρ) (π * u ρ) else H1M.fcsS (c ρ) (π * u ρ)) := by
    intro ρ
    unfold denF
    have := dir_S htab (hu ρ) (c ρ)
    rw [← hd ρ] at this
    split_ifs
    · exact ⟨this.2.2.1, this.2.2.2⟩
    · exact ⟨this.1, this.2.1⟩
  set P := ∏ ρ, (if ρ = μ then H1M.fcsSm (c ρ) (π * u ρ) else H1M.fcsS (c ρ) (π * u ρ)) with hPdef
  have hP : val (mulD (mulD (mulD (denF d c μ 0) (denF d c μ 1)) (denF d c μ 2)) (denF d c μ 3)) ≤ P := by
    rw [hPdef, Fin.prod_univ_four]
    have m01 := mulD_nonneg (hS 0).1 (hS 1).1
    have m012 := mulD_nonneg m01 (hS 2).1
    exact lb_mul m012 (hS 3).1 (lb_mul m01 (hS 2).1 (lb_mul (hS 0).1 (hS 1).1 (hS 0).2 (hS 1).2) (hS 2).2) (hS 3).2
  have hdpv : 0 < val (mulD (mulD (mulD (denF d c μ 0) (denF d c μ 1)) (denF d c μ 2)) (denF d c μ 3)) :=
    val_pos.2 hdp
  have hPpos : 0 < P := lt_of_lt_of_le hdpv hP
  unfold fcsTerm
  simp only [habs]
  calc _ ≤ val M / P := div_le_div_of_nonneg_right hq hPpos.le
    _ ≤ val M / val (mulD (mulD (mulD (denF d c μ 0) (denF d c μ 1)) (denF d c μ 2)) (denF d c μ 3)) :=
        div_le_div_of_nonneg_left (val_nonneg.2 hM0) hdpv hP
    _ ≤ _ := val_divU hdp

/-- Soundness of the `F_CS` box bound. -/
theorem Fbox_sound {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) {lo hi : Fin 4 → ℕ} {d : Fin 4 → Dir}
    (hd : ∀ ρ, d ρ = mkDir tab (lo ρ) (hi ρ)) {u : Fin 4 → ℝ} (hu : ∀ ρ, InBox (lo ρ) (hi ρ) (u ρ))
    {F : ℤ} (h : Fbox d = some F) : FCSu u ≤ val F := by
  unfold Fbox at h
  rcases foldl_omin _ _ h with h0 | ⟨i, hi⟩
  · exact absurd h0 (by simp)
  · rw [FCSu_eq]
    refine (inf'_le _ (mem_univ (cOf i))).trans ?_
    refine sup'_le _ _ fun μ _ => ?_
    obtain ⟨w, hw, hwv⟩ := Fc_some hi μ
    exact (Fcm_sound htab hd hu hw).trans (val_le_val.2 hwv)

end YmLean.H2B
