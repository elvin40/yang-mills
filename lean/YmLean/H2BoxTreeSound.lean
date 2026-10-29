import YmLean.H2BoxTree
import YmLean.H2BoxFSound

/-!
# Soundness of the branch-and-bound tree (H2Box, part 5b)

`checkRoots_sound`: if `checkRoots tab roots = true` for a correct sine table, then
`B*(u) = γ_13 F_CS(π u) + G*(u) ≤ 10` on the sorted chamber minus the origin.
-/

open Real Finset

namespace YmLean.H2B

/-- `γ_13 = sinc(π/26)⁻²`. -/
noncomputable def gam13 : ℝ := 1 / sinc (π / (2 * 13)) ^ 2

/-- The majorant `B*(u) = γ_13 F_CS(πu) + G*(u)` (H1_ANALYTIC.md (5.3) with (6.1) and Lemma G). -/
noncomputable def Bst (u : Fin 4 → ℝ) : ℝ := gam13 * FCSu u + Gst u

/-- `u` lies in the box `[lo/4096, hi/4096]`. -/
def Mem (lo hi : Fin 4 → ℕ) (u : Fin 4 → ℝ) : Prop :=
  ∀ ρ, (lo ρ : ℝ) / 4096 ≤ u ρ ∧ u ρ ≤ (hi ρ : ℝ) / 4096

theorem mk4_self (f : Fin 4 → ℕ) : mk4 (f 0) (f 1) (f 2) (f 3) = f := by
  funext ρ; fin_cases ρ <;> rfl

theorem mk4_dir (tab : ℕ → ℤ × ℤ) (lo hi : Fin 4 → ℕ) (ρ : Fin 4) :
    mk4 (mkDir tab (lo 0) (hi 0)) (mkDir tab (lo 1) (hi 1)) (mkDir tab (lo 2) (hi 2))
      (mkDir tab (lo 3) (hi 3)) ρ = mkDir tab (lo ρ) (hi ρ) := by
  fin_cases ρ <;> rfl

theorem boxValid_inBox {lo hi : Fin 4 → ℕ} (h : boxValid lo hi = true) {u : Fin 4 → ℝ} (hu : Mem lo hi u) :
    ∀ ρ, InBox (lo ρ) (hi ρ) (u ρ) := by
  unfold boxValid at h
  simp only [Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨h0, h1, h2, h3⟩, ⟨k0, k1, k2, k3⟩⟩ := h
  intro ρ
  have hlt : lo ρ < hi ρ := by fin_cases ρ <;> assumption
  have hle : hi ρ ≤ 4096 := by fin_cases ρ <;> assumption
  exact ⟨hlt, hle, (hu ρ).1, (hu ρ).2⟩

theorem posChk_sound {d : Fin 4 → Dir} (h : posChk d = true) :
    ∀ ρ, ∀ l, 0 < l → l < 13 → 0 < at13 (d ρ).s4lo l := by
  intro ρ l hl0 hl
  unfold posChk at h
  rw [List.all_eq_true] at h
  obtain ⟨k, rfl⟩ : ∃ k, l = k + 1 := ⟨l - 1, by omega⟩
  have := h k (List.mem_range.2 (by omega))
  simp only [Bool.and_eq_true, decide_eq_true_eq] at this
  obtain ⟨⟨⟨a0, a1⟩, a2⟩, a3⟩ := this
  fin_cases ρ <;> assumption

theorem bits_exist : ∀ b : Fin 4 → Bool, ∃ i, i < 16 ∧ ∀ ρ : Fin 4, i.testBit ρ = b ρ := by decide

/-- The gauge bound handed to a box is valid on it. -/
def GOK (lo hi : Fin 4 → ℕ) (G : Option ℤ) : Prop :=
  ∀ g, G = some g → ∀ u, Mem lo hi u → (∃ ρ, 0 < u ρ) → Gst u ≤ val g

theorem accept_some {gF : ℤ} {G : Option ℤ} (h : accept gF G = true) : ∃ g, G = some g ∧ gF + g ≤ TGT := by
  unfold accept at h
  rcases G with _ | g
  · simp at h
  · exact ⟨g, rfl, by simpa using h⟩

theorem val_TGT : val TGT = 10 := by
  unfold TGT val; push_cast; rw [SC_real]; norm_num

/-- The split step: if every child that meets the chamber passes, so does the box. -/
theorem split_case {tab : ℕ → ℤ × ℤ} {fuel : ℕ}
    (ih : ∀ lo hi G, check tab fuel lo hi G = true → GOK lo hi G →
      ∀ u, Mem lo hi u → u 0 ≤ u 1 → u 1 ≤ u 2 → u 2 ≤ u 3 → (∃ ρ, 0 < u ρ) → Bst u ≤ 10)
    {lo hi : Fin 4 → ℕ} (hvalid : boxValid lo hi = true) {G : Option ℤ} (hG : GOK lo hi G)
    (hall : (List.range 16).all (fun i =>
      !sortedOK (mk4 (childLo lo hi i 0) (childLo lo hi i 1) (childLo lo hi i 2) (childLo lo hi i 3))
        (mk4 (childHi lo hi i 0) (childHi lo hi i 1) (childHi lo hi i 2) (childHi lo hi i 3)) ||
      check tab fuel (mk4 (childLo lo hi i 0) (childLo lo hi i 1) (childLo lo hi i 2) (childLo lo hi i 3))
        (mk4 (childHi lo hi i 0) (childHi lo hi i 1) (childHi lo hi i 2) (childHi lo hi i 3)) G) = true)
    {u : Fin 4 → ℝ} (hu : Mem lo hi u) (s01 : u 0 ≤ u 1) (s12 : u 1 ≤ u 2) (s23 : u 2 ≤ u 3)
    (hne : ∃ ρ, 0 < u ρ) : Bst u ≤ 10 := by
  have hib := boxValid_inBox hvalid hu
  rw [List.all_eq_true] at hall
  set m : Fin 4 → ℕ := fun ρ => (lo ρ + hi ρ) / 2
  obtain ⟨i, hi16, hbits⟩ := bits_exist (fun ρ => decide (((m ρ : ℕ) : ℝ) / 4096 ≤ u ρ))
  have hci := hall i (List.mem_range.2 hi16)
  rw [mk4_self (childLo lo hi i), mk4_self (childHi lo hi i)] at hci
  have hmem : Mem (childLo lo hi i) (childHi lo hi i) u := by
    intro ρ
    unfold childLo childHi
    have hb := hbits ρ
    by_cases hm : ((m ρ : ℕ) : ℝ) / 4096 ≤ u ρ
    · have : i.testBit ρ = true := by rw [hb]; simp [hm]
      simp only [this, if_true]
      exact ⟨hm, (hu ρ).2⟩
    · have : i.testBit ρ = false := by rw [hb]; simp [hm]
      simp only [this, Bool.false_eq_true, if_false]
      exact ⟨(hu ρ).1, (not_le.1 hm).le⟩
  have hsorted : sortedOK (childLo lo hi i) (childHi lo hi i) = true := by
    unfold sortedOK
    simp only [decide_eq_true_eq]
    have c1 : ∀ ρ σ : Fin 4, u ρ ≤ u σ → childLo lo hi i ρ ≤ childHi lo hi i σ := by
      intro ρ σ h
      have h1 := (hmem ρ).1; have h2 := (hmem σ).2
      have : (childLo lo hi i ρ : ℝ) ≤ (childHi lo hi i σ : ℝ) := by linarith
      exact_mod_cast this
    exact ⟨c1 0 1 s01, c1 1 2 s12, c1 2 3 s23⟩
  rw [hsorted] at hci
  simp only [Bool.not_true, Bool.false_or] at hci
  have hGc : GOK (childLo lo hi i) (childHi lo hi i) G := by
    intro g hg u' hu' hne'
    have hu'' : Mem lo hi u' := by
      intro ρ
      have h1 := hu' ρ
      unfold childLo childHi at h1
      have hlh := (hib ρ).lt
      have hm1 : ((lo ρ + hi ρ) / 2 : ℕ) ≤ hi ρ := by omega
      have hm2 : lo ρ ≤ ((lo ρ + hi ρ) / 2 : ℕ) := by omega
      have hm1' : (((lo ρ + hi ρ) / 2 : ℕ) : ℝ) / 4096 ≤ (hi ρ : ℝ) / 4096 :=
        div_le_div_of_nonneg_right (by exact_mod_cast hm1) (by norm_num)
      have hm2' : (lo ρ : ℝ) / 4096 ≤ (((lo ρ + hi ρ) / 2 : ℕ) : ℝ) / 4096 :=
        div_le_div_of_nonneg_right (by exact_mod_cast hm2) (by norm_num)
      split_ifs at h1
      · exact ⟨hm2'.trans h1.1, h1.2⟩
      · exact ⟨h1.1, h1.2.trans hm1'⟩
    exact hG g hg u' hu'' hne'
  exact ih _ _ G hci hGc u hmem s01 s12 s23 hne

theorem check_sound {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) (hgl : globalChk tab = true) :
    ∀ fuel lo hi G, check tab fuel lo hi G = true → GOK lo hi G →
      ∀ u, Mem lo hi u → u 0 ≤ u 1 → u 1 ≤ u 2 → u 2 ≤ u 3 → (∃ ρ, 0 < u ρ) → Bst u ≤ 10 := by
  unfold globalChk at hgl
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hgl
  obtain ⟨hC, hC2⟩ := hgl
  intro fuel
  induction fuel with
  | zero => intro lo hi G h; exact absurd h (by simp [check])
  | succ fuel ih =>
    intro lo hi Gp h hGp u hu s01 s12 s23 hne
    have h' : checkStep tab (check tab fuel) lo hi Gp = true := h
    clear h
    rw [checkStep, Bool.and_eq_true] at h'
    obtain ⟨hvalid, h⟩ := h'
    have hib := boxValid_inBox hvalid hu
    have hd := mk4_dir tab lo hi
    generalize mk4 (mkDir tab (lo 0) (hi 0)) (mkDir tab (lo 1) (hi 1)) (mkDir tab (lo 2) (hi 2))
      (mkDir tab (lo 3) (hi 3)) = d at h hd
    have hGv : ∀ f, Fbox d = some f → ∀ (c : Prop) [Decidable c], (c → posChk d = true) →
        GOK lo hi (if c then omin Gp (Gbox tab d f) else Gp) := by
      intro f hF c _ hc g hg u' hu' hne'
      have hib' := boxValid_inBox hvalid hu'
      split_ifs at hg with hcc
      · rcases omin_some hg with h1 | h1
        · exact hGp g h1 u' hu' hne'
        · exact Gbox_sound htab hC hC2 hd hib' hne' (posChk_sound (hc hcc))
            (Fbox_sound htab hd hib' hF) (FCSu_nonneg u') h1
      · exact hGp g hg u' hu' hne'
    unfold checkBody at h
    rcases hF : Fbox d with _ | f
    · simp only [hF, Bool.and_eq_true] at h
      exact split_case ih hvalid hGp h.2 hu s01 s12 s23 hne
    · simp only [hF, Bool.or_eq_true, Bool.and_eq_true] at h
      have hGok := hGv f hF ((decide (mulU (gamU tab) f < TGT) = true ∧ ogate Gp (mulU (gamU tab) f) = true) ∧
        posChk d = true) (fun hc => hc.2)
      rcases h with hA | ⟨_, hS⟩
      · obtain ⟨g, hg, hle⟩ := accept_some hA
        have hFu := Fbox_sound htab hd hib hF
        have hF0 := FCSu_nonneg u
        have hγ : gam13 * FCSu u ≤ val (mulU (gamU tab) f) := by
          unfold gam13
          exact ub_mul (by positivity) hF0 (gamU_ok htab hC2) hFu
        have hGu := hGok g hg u hu hne
        have : Bst u ≤ val (mulU (gamU tab) f + g) := by
          unfold Bst; rw [val_add]; linarith
        refine this.trans ?_
        rw [← val_TGT]; exact val_le_val.2 hle
      · exact split_case ih hvalid hGok hS hu s01 s12 s23 hne

/-! ## Roots -/

theorem mem_roots {a b c e : ℕ} (ha : a ≤ b) (hb : b ≤ c) (hc : c ≤ e) (he : e < 16) :
    mk4 a b c e ∈ roots := by
  unfold roots
  simp only [List.mem_flatMap, List.mem_range, List.mem_filterMap]
  exact ⟨a, by omega, b, by omega, c, by omega, e, he, by simp [ha, hb, hc]⟩

theorem idx_bounds {x : ℝ} (h0 : 0 ≤ x) (h1 : x ≤ 1) :
    ((256 * min ⌊16 * x⌋₊ 15 : ℕ) : ℝ) / 4096 ≤ x ∧ x ≤ ((256 * min ⌊16 * x⌋₊ 15 + 256 : ℕ) : ℝ) / 4096 := by
  have hf := Nat.floor_le (show 0 ≤ 16 * x by positivity)
  have hf2 := Nat.lt_floor_add_one (16 * x)
  constructor
  · have : ((min ⌊16 * x⌋₊ 15 : ℕ) : ℝ) ≤ 16 * x := by
      have : ((min ⌊16 * x⌋₊ 15 : ℕ) : ℝ) ≤ (⌊16 * x⌋₊ : ℝ) := by exact_mod_cast min_le_left _ _
      linarith
    push_cast at this ⊢; linarith
  · rcases le_total ⌊16 * x⌋₊ 15 with h | h
    · rw [min_eq_left h]; push_cast; linarith
    · rw [min_eq_right h]; push_cast; linarith

theorem roots_cover {u : Fin 4 → ℝ} (hu : ∀ ρ, 0 ≤ u ρ ∧ u ρ ≤ 1) (s01 : u 0 ≤ u 1) (s12 : u 1 ≤ u 2)
    (s23 : u 2 ≤ u 3) : ∃ r ∈ roots,
      Mem (mk4 (256 * r 0) (256 * r 1) (256 * r 2) (256 * r 3))
        (mk4 (256 * r 0 + 256) (256 * r 1 + 256) (256 * r 2 + 256) (256 * r 3 + 256)) u := by
  set k : Fin 4 → ℕ := fun ρ => min ⌊16 * u ρ⌋₊ 15
  have hmono : ∀ ρ σ : Fin 4, u ρ ≤ u σ → k ρ ≤ k σ := by
    intro ρ σ h
    exact min_le_min_right _ (Nat.floor_le_floor (by linarith))
  refine ⟨mk4 (k 0) (k 1) (k 2) (k 3), mem_roots (hmono 0 1 s01) (hmono 1 2 s12) (hmono 2 3 s23)
    (lt_of_le_of_lt (min_le_right _ _) (by norm_num)), ?_⟩
  rw [mk4_self]
  intro ρ
  have h := idx_bounds (hu ρ).1 (hu ρ).2
  have e1 : mk4 (256 * k 0) (256 * k 1) (256 * k 2) (256 * k 3) ρ = 256 * k ρ := by fin_cases ρ <;> rfl
  have e2 : mk4 (256 * k 0 + 256) (256 * k 1 + 256) (256 * k 2 + 256) (256 * k 3 + 256) ρ = 256 * k ρ + 256 := by
    fin_cases ρ <;> rfl
  rw [e1, e2]; exact h

/-- The branch-and-bound certificate implies `B* ≤ 10` on the sorted chamber (`u ≠ 0`). -/
theorem checkRoots_sound {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) (h : checkRoots tab roots = true)
    {u : Fin 4 → ℝ} (hu : ∀ ρ, 0 ≤ u ρ ∧ u ρ ≤ 1) (s01 : u 0 ≤ u 1) (s12 : u 1 ≤ u 2) (s23 : u 2 ≤ u 3)
    (hne : ∃ ρ, 0 < u ρ) : Bst u ≤ 10 := by
  unfold checkRoots at h
  simp only [Bool.and_eq_true, List.all_eq_true] at h
  obtain ⟨hgl, hall⟩ := h
  obtain ⟨r, hr, hmem⟩ := roots_cover hu s01 s12 s23
  exact check_sound htab hgl 4 _ _ none (hall r hr) (fun g hg => by simp at hg) u hmem s01 s12 s23 hne

end YmLean.H2B
