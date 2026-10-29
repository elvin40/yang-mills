import YmLean.H2BoxG

/-!
# Soundness of `Gbox` (H2Box, part 3b)
-/

open Real Finset

namespace YmLean.H2B

/-! ## Per-direction facts at the index `l` -/

theorem mkDir_at {tab : ℕ → ℤ × ℤ} {lo hi l : ℕ} (hl : l < 13) :
    at13 (mkDir tab lo hi).s4lo l = s4loF tab lo hi l ∧
    at13 (mkDir tab lo hi).s4hi l = s4hiF tab lo hi l ∧
    at13 (mkDir tab lo hi).alo l = aloF tab lo hi l ∧
    at13 (mkDir tab lo hi).ahi l = ahiF tab lo hi l ∧
    at13 (mkDir tab lo hi).g2 l = g2F tab lo hi l ∧
    at13 (mkDir tab lo hi).a2lo l = mulD (aloF tab lo hi l) (aloF tab lo hi l) ∧
    at13 (mkDir tab lo hi).a2hi l = mulU (ahiF tab lo hi l) (ahiF tab lo hi l) := by
  unfold at13 mkDir
  simp only
  exact ⟨getD_ofFn13 _ hl, getD_ofFn13 _ hl, getD_ofFn13 _ hl, getD_ofFn13 _ hl, getD_ofFn13 _ hl,
    getD_ofFn13 (fun i => mulD (aloF tab lo hi i) (aloF tab lo hi i)) hl,
    getD_ofFn13 (fun i => mulU (ahiF tab lo hi i) (ahiF tab lo hi i)) hl⟩

/-- All one-dimensional facts used by a summand, for direction data `D` at index `l`. -/
structure DirAt (D : Dir) (u : ℝ) (l : ℕ) : Prop where
  s4lo0 : 0 ≤ at13 D.s4lo l
  s4lo : val (at13 D.s4lo l) ≤ 4 * sq u l ^ 2
  s4hi : 4 * sq u l ^ 2 ≤ val (at13 D.s4hi l)
  alo0 : 0 ≤ at13 D.alo l
  alo : val (at13 D.alo l) ≤ |al u l|
  ahi : |al u l| ≤ val (at13 D.ahi l)
  a2lo0 : 0 ≤ at13 D.a2lo l
  a2lo : val (at13 D.a2lo l) ≤ |al u l| ^ 2
  a2hi : |al u l| ^ 2 ≤ val (at13 D.a2hi l)
  g2 : g2f u l ≤ val (at13 D.g2 l)

theorem dirAt_of {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) (hC : 0 < sincC tab) {lo hi : ℕ} {u : ℝ}
    (h : InBox lo hi u) {l : ℕ} (hl : l < 13) (hpos : l = 0 ∨ 0 < s4loF tab lo hi l) :
    DirAt (mkDir tab lo hi) u l := by
  obtain ⟨e1, e2, e3, e4, e5, e6, e7⟩ := mkDir_at (tab := tab) (lo := lo) (hi := hi) hl
  obtain ⟨s0, s1, s2⟩ := dir_s4 htab h hl
  obtain ⟨a0, a1, a2⟩ := dir_a htab h hl
  have hA : 0 ≤ |al u l| := abs_nonneg _
  have f1 : 0 ≤ at13 (mkDir tab lo hi).s4lo l := by rw [e1]; exact s0
  have f2 : val (at13 (mkDir tab lo hi).s4lo l) ≤ 4 * sq u l ^ 2 := by rw [e1]; exact s1
  have f3 : 4 * sq u l ^ 2 ≤ val (at13 (mkDir tab lo hi).s4hi l) := by rw [e2]; exact s2
  have f4 : 0 ≤ at13 (mkDir tab lo hi).alo l := by rw [e3]; exact a0
  have f5 : val (at13 (mkDir tab lo hi).alo l) ≤ |al u l| := by rw [e3]; exact a1
  have f6 : |al u l| ≤ val (at13 (mkDir tab lo hi).ahi l) := by rw [e4]; exact a2
  have f7 : 0 ≤ at13 (mkDir tab lo hi).a2lo l := by rw [e6]; exact mulD_nonneg a0 a0
  have f8 : val (at13 (mkDir tab lo hi).a2lo l) ≤ |al u l| ^ 2 := by
    rw [e6, pow_two]; exact lb_mul a0 a0 a1 a1
  have f9 : |al u l| ^ 2 ≤ val (at13 (mkDir tab lo hi).a2hi l) := by
    rw [e7, pow_two]; exact ub_mul hA hA a2 a2
  have f10 : g2f u l ≤ val (at13 (mkDir tab lo hi).g2 l) := by
    rw [e5]; exact dir_g2 htab (by unfold sincC at hC; exact hC) h hl hpos
  exact ⟨f1, f2, f3, f4, f5, f6, f7, f8, f9, f10⟩

/-! ## Real-side helpers -/

theorem kh2_four (u : Fin 4 → ℝ) (l : Fin 4 → ℕ) :
    kh2 u l = 4 * sq (u 0) (l 0) ^ 2 + 4 * sq (u 1) (l 1) ^ 2 + 4 * sq (u 2) (l 2) ^ 2 +
      4 * sq (u 3) (l 3) ^ 2 := by
  unfold kh2; rw [Fin.sum_univ_four]

theorem g2f_nonneg (u : ℝ) (l : ℕ) : 0 ≤ g2f u l := by
  unfold g2f; positivity

theorem ratio_bounds {a b c : Fin 4 → ℝ} {m M : ℝ} (hab : ∀ ρ, a ρ = c ρ * b ρ) (hb : ∀ ρ, 0 ≤ b ρ)
    (hpos : 0 < ∑ ρ, b ρ) (hm : ∀ ρ, m ≤ c ρ) (hM : ∀ ρ, c ρ ≤ M) :
    m ≤ (∑ ρ, a ρ) / ∑ ρ, b ρ ∧ (∑ ρ, a ρ) / ∑ ρ, b ρ ≤ M := by
  constructor
  · rw [le_div_iff₀ hpos, mul_sum]
    exact sum_le_sum fun ρ _ => by rw [hab]; exact mul_le_mul_of_nonneg_right (hm ρ) (hb ρ)
  · rw [div_le_iff₀ hpos, mul_sum]
    exact sum_le_sum fun ρ _ => by rw [hab]; exact mul_le_mul_of_nonneg_right (hM ρ) (hb ρ)

/-- `4 sin²(πu/2) = 169 α_0² · 4 sin²(πu/26)`. -/
theorem sK_alpha0 (u : ℝ) :
    4 * sin (π * u / 2) ^ 2 = (169 * |al u 0| ^ 2) * (4 * sq u 0 ^ 2) := by
  have h := alpha_l_identity u 0
  simp only [pow_zero, one_mul] at h
  unfold al sq
  rw [h, sq_abs]; ring

/-- `|K|²/|k̂_0|² ≤ 169 γ_13`. -/
theorem K2_div_kh2_zero (u : Fin 4 → ℝ) (hu0 : ∀ ρ, 0 ≤ u ρ) (hu1 : ∀ ρ, u ρ ≤ 1) :
    K2 u / kh2 u (fun _ => 0) ≤ 169 * (1 / sinc (π / (2 * 13)) ^ 2) := by
  have h := H1M.deformed_sum_ge (L := 13) (M := 1) (by norm_num) (le_refl 1) (fun ρ => π * u ρ)
    (fun ρ => by have := hu0 ρ; positivity) (fun ρ => by have := hu1 ρ; have := hu0 ρ; nlinarith [pi_pos])
  have e : ∑ ρ, (2 * 1 * sin (π * u ρ / 13 / (2 * 1))) ^ 2 = kh2 u (fun _ => 0) := by
    unfold kh2 sq
    refine sum_congr rfl fun ρ _ => ?_
    have : π * u ρ / 13 / (2 * 1) = π * (u ρ + 2 * ((0:ℕ):ℝ)) / 26 := by push_cast; ring
    rw [this]; ring
  rw [e] at h
  have hs := H1M.sinc_pos_of (L := 13) (by norm_num)
  have hK0 : 0 ≤ K2 u := by unfold K2; positivity
  rcases eq_or_lt_of_le hK0 with h0 | h0
  · rw [← h0, zero_div]; positivity
  · have hlo : 0 < K2 u * sinc (π / (2 * 13)) ^ 2 / 13 ^ 2 := by positivity
    have hk : 0 < kh2 u (fun _ => 0) := lt_of_lt_of_le hlo (by unfold K2; exact h)
    rw [div_le_iff₀ hk]
    have : K2 u = 169 * (1 / sinc (π / (2 * 13)) ^ 2) * (K2 u * sinc (π / (2 * 13)) ^ 2 / 13 ^ 2) := by
      field_simp; norm_num
    rw [this]
    exact mul_le_mul_of_nonneg_left (by unfold K2; exact h) (by positivity)

theorem abs_sub_le_br {y r ylo yhi rlo rhi Ymax Ymin : ℝ} (hy1 : ylo ≤ y) (hy2 : y ≤ yhi)
    (hr1 : rlo ≤ r) (hr2 : r ≤ rhi) (hYmax : yhi ≤ Ymax) (hYmin : Ymin ≤ ylo) :
    |y - r| ≤ max (Ymax - rlo) (rhi - Ymin) := by
  rw [abs_le]; constructor
  · have := le_max_right (Ymax - rlo) (rhi - Ymin); linarith
  · have := le_max_left (Ymax - rlo) (rhi - Ymin); linarith

theorem val169 (a : ℤ) : val (169 * a) = 169 * val a := by
  have := val_natmul 169 a; push_cast at this; exact this


theorem prod4_ub {x : Fin 4 → ℝ} {X : Fin 4 → ℤ} (h0 : ∀ ρ, 0 ≤ x ρ) (h : ∀ ρ, x ρ ≤ val (X ρ)) :
    ∏ ρ, x ρ ≤ val (mulU (mulU (mulU (X 0) (X 1)) (X 2)) (X 3)) := by
  rw [Fin.prod_univ_four]
  exact ub_mul (by have := h0 0; have := h0 1; have := h0 2; positivity) (h0 3)
    (ub_mul (by have := h0 0; have := h0 1; positivity) (h0 2)
      (ub_mul (h0 0) (h0 1) (h 0) (h 1)) (h 2)) (h 3)

theorem mx4_ub {x : Fin 4 → ℝ} {X : Fin 4 → ℤ} (h : ∀ ρ, x ρ ≤ val (X ρ)) :
    mx4 x ≤ val (max (max (max (X 0) (X 1)) (X 2)) (X 3)) := by
  unfold mx4; simp only [val_max]
  exact max_le_max (max_le_max (max_le_max (h 0) (h 1)) (h 2)) (h 3)

theorem mx4_nonneg {x : Fin 4 → ℝ} (h : ∀ ρ, 0 ≤ x ρ) : 0 ≤ mx4 x := by
  unfold mx4; exact (h 0).trans ((le_max_left _ _).trans ((le_max_left _ _).trans (le_max_left _ _)))

theorem le_mx4 (x : Fin 4 → ℝ) (ρ : Fin 4) : x ρ ≤ mx4 x := by
  unfold mx4; fin_cases ρ <;> simp

theorem mn4_le (x : Fin 4 → ℝ) (ρ : Fin 4) : mn4 x ≤ x ρ := by
  unfold mn4; fin_cases ρ <;> simp

theorem val_mx4 (X : Fin 4 → ℤ) : val (mx4 X) = mx4 (fun ρ => val (X ρ)) := by
  unfold mx4; simp only [val_max]

theorem val_mn4 (X : Fin 4 → ℤ) : val (mn4 X) = mn4 (fun ρ => val (X ρ)) := by
  unfold mn4; simp only [val_min]

theorem mx4_le_iff {x : Fin 4 → ℝ} {c : ℝ} : mx4 x ≤ c ↔ ∀ ρ, x ρ ≤ c := by
  constructor
  · intro h ρ; exact (le_mx4 x ρ).trans h
  · intro h; unfold mx4; exact max_le (max_le (max_le (h 0) (h 1)) (h 2)) (h 3)

/-- Bounds on `r = |K̂|²/|k̂_l|²` and `|K|²/|k̂_l|²` handed to the summand lemma. -/
structure RatIn (u : Fin 4 → ℝ) (l : Fin 4 → ℕ) (W rlo rhi : ℤ) : Prop where
  W : K2 u / kh2 u l ≤ val W
  rlo : val rlo ≤ Kh2 u / kh2 u l
  rhi : Kh2 u / kh2 u l ≤ val rhi

theorem K2_nonneg (u : Fin 4 → ℝ) : 0 ≤ K2 u := by unfold K2; positivity
theorem Kh2_nonneg (u : Fin 4 → ℝ) : 0 ≤ Kh2 u := by unfold Kh2; positivity
theorem kh2_nonneg (u : Fin 4 → ℝ) (l : Fin 4 → ℕ) : 0 ≤ kh2 u l := by unfold kh2; positivity

def Pa2I (d : Fin 4 → Dir) (l : Fin 4 → ℕ) : ℤ :=
  mulU (mulU (mulU (at13 (d 0).a2hi (l 0)) (at13 (d 1).a2hi (l 1))) (at13 (d 2).a2hi (l 2))) (at13 (d 3).a2hi (l 3))
def PaI (d : Fin 4 → Dir) (l : Fin 4 → ℕ) : ℤ :=
  mulU (mulU (mulU (at13 (d 0).ahi (l 0)) (at13 (d 1).ahi (l 1))) (at13 (d 2).ahi (l 2))) (at13 (d 3).ahi (l 3))
def mxaI (d : Fin 4 → Dir) (l : Fin 4 → ℕ) : ℤ :=
  max (max (max (at13 (d 0).ahi (l 0)) (at13 (d 1).ahi (l 1))) (at13 (d 2).ahi (l 2))) (at13 (d 3).ahi (l 3))
def YmxI (d : Fin 4 → Dir) (l : Fin 4 → ℕ) : ℤ :=
  max (max (max (169 * at13 (d 0).a2hi (l 0)) (169 * at13 (d 1).a2hi (l 1))) (169 * at13 (d 2).a2hi (l 2)))
    (169 * at13 (d 3).a2hi (l 3))
def YmnI (d : Fin 4 → Dir) (l : Fin 4 → ℕ) : ℤ :=
  min (min (min (169 * at13 (d 0).a2lo (l 0)) (169 * at13 (d 1).a2lo (l 1))) (169 * at13 (d 2).a2lo (l 2)))
    (169 * at13 (d 3).a2lo (l 3))

/-- One summand: `V` and `U` parts, from the per-direction facts and the ratio bounds. -/
theorem summand {d : Fin 4 → Dir} {u : Fin 4 → ℝ} {l : Fin 4 → ℕ} (hD : ∀ ρ, DirAt (d ρ) (u ρ) (l ρ))
    {W rlo rhi : ℤ} (hR : RatIn u l W rlo rhi) :
    Vt u l ≤ val (mulU (mulU (Pa2I d l) W) (max (YmxI d l - rlo) (rhi - YmnI d l))) ∧
    ∀ Gn : ℤ, Real.sqrt (∑ ρ, g2f (u ρ) (l ρ)) ≤ val Gn →
    Ut u l ≤ val (mulU (mulU (mulU (PaI d l) (mxaI d l)) W) Gn) := by
  have hA0 : ∀ ρ, 0 ≤ aa u l ρ := fun ρ => abs_nonneg _
  have hW0 : 0 ≤ K2 u / kh2 u l := div_nonneg (K2_nonneg u) (kh2_nonneg u l)
  have hPa2 : ∏ ρ, aa u l ρ ^ 2 ≤ val (Pa2I d l) :=
    prod4_ub (x := fun ρ => aa u l ρ ^ 2) (X := fun ρ => at13 (d ρ).a2hi (l ρ))
      (fun ρ => by positivity) (fun ρ => (hD ρ).a2hi)
  have hPa : ∏ ρ, aa u l ρ ≤ val (PaI d l) :=
    prod4_ub (x := fun ρ => aa u l ρ) (X := fun ρ => at13 (d ρ).ahi (l ρ)) hA0 (fun ρ => (hD ρ).ahi)
  have hmxa : mx4 (aa u l) ≤ val (mxaI d l) :=
    mx4_ub (x := aa u l) (X := fun ρ => at13 (d ρ).ahi (l ρ)) (fun ρ => (hD ρ).ahi)
  constructor
  · unfold Vt
    refine ub_mul (mul_nonneg (prod_nonneg fun ρ _ => by positivity) hW0)
      (mx4_nonneg fun μ => abs_nonneg _) (ub_mul (prod_nonneg fun ρ _ => by positivity) hW0 hPa2 hR.W) ?_
    rw [mx4_le_iff]
    intro μ
    rw [val_max, val_sub, val_sub]
    have hy := (hD μ).a2hi
    have hy' := (hD μ).a2lo
    have hYmax := le_mx4 (fun ρ => val (169 * at13 (d ρ).a2hi (l ρ))) μ
    have hYmin := mn4_le (fun ρ => val (169 * at13 (d ρ).a2lo (l ρ))) μ
    have e1 : val (YmxI d l) = mx4 (fun ρ => val (169 * at13 (d ρ).a2hi (l ρ))) := by
      unfold YmxI mx4; simp only [val_max]
    have e2 : val (YmnI d l) = mn4 (fun ρ => val (169 * at13 (d ρ).a2lo (l ρ))) := by
      unfold YmnI mn4; simp only [val_min]
    rw [e1, e2]
    simp only [val169] at hYmax hYmin ⊢
    apply abs_sub_le_br _ _ hR.rlo hR.rhi hYmax hYmin
    · unfold aa; linarith
    · unfold aa; linarith
  · intro Gn hGn
    unfold Ut
    have hg0 : 0 ≤ ∑ ρ, g2f (u ρ) (l ρ) := sum_nonneg fun ρ _ => g2f_nonneg _ _
    refine ub_mul (mul_nonneg (mul_nonneg (prod_nonneg fun ρ _ => hA0 ρ) (mx4_nonneg hA0)) hW0)
      (Real.sqrt_nonneg _) (ub_mul (mul_nonneg (prod_nonneg fun ρ _ => hA0 ρ) (mx4_nonneg hA0)) hW0
        (ub_mul (prod_nonneg fun ρ _ => hA0 ρ) (mx4_nonneg hA0) hPa hmxa) hR.W) hGn


/-! ## The summand as computed by `fin3 ∘ pre3` -/

def klI (d : Fin 4 → Dir) (l : Fin 4 → ℕ) : ℤ :=
  at13 (d 0).s4lo (l 0) + at13 (d 1).s4lo (l 1) + at13 (d 2).s4lo (l 2) + at13 (d 3).s4lo (l 3)
def khI (d : Fin 4 → Dir) (l : Fin 4 → ℕ) : ℤ :=
  at13 (d 0).s4hi (l 0) + at13 (d 1).s4hi (l 1) + at13 (d 2).s4hi (l 2) + at13 (d 3).s4hi (l 3)
def gI (d : Fin 4 → Dir) (l : Fin 4 → ℕ) : ℤ :=
  at13 (d 0).g2 (l 0) + at13 (d 1).g2 (l 1) + at13 (d 2).g2 (l 2) + at13 (d 3).g2 (l 3)
def zI (l : Fin 4 → ℕ) : Bool := l 0 == 0 && l 1 == 0 && l 2 == 0 && l 3 == 0
def WI (C : GC) (d : Fin 4 → Dir) (l : Fin 4 → ℕ) : ℤ :=
  if zI l then C.L2g else mulU C.K2hi (divU SC (klI d l))
def rhiI (C : GC) (d : Fin 4 → Dir) (l : Fin 4 → ℕ) : ℤ :=
  if zI l then C.y0hi else mulU C.Khhi (divU SC (klI d l))
def rloI (C : GC) (d : Fin 4 → Dir) (l : Fin 4 → ℕ) : ℤ :=
  if zI l then C.y0lo else mulD C.Khlo (divD SC (khI d l))

theorem fin3_eq (d : Fin 4 → Dir) (C : GC) (l : Fin 4 → ℕ) :
    fin3 (d 3) C (pre3 d (l 0) (l 1) (l 2)) (l 3) =
      (mulU (mulU (Pa2I d l) (WI C d l)) (max (YmxI d l - rloI C d l) (rhiI C d l - YmnI d l)),
       mulU (mulU (mulU (PaI d l) (mxaI d l)) (WI C d l)) (sqrtU (gI d l)), rloI C d l) := rfl

theorem gamU_ok {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) (hC2 : 0 < mulD (sincC tab) (sincC tab)) :
    1 / sinc (π / (2 * 13)) ^ 2 ≤ val (gamU tab) := by
  have hsc := sincLo_ok htab (m := 4096) (by norm_num) (by unfold NN; norm_num)
  have e26 : π * ((4096:ℕ):ℝ) / NN = π / (2 * 13) := by unfold NN; push_cast; ring
  rw [e26] at hsc
  unfold gamU
  have h1 : (1:ℝ) ≤ val SC := by rw [val_SC]
  apply ub_div (by norm_num) h1 _ hC2
  rw [pow_two]; exact lb_mul hsc.1 hsc.1 hsc.2 hsc.2

/-- Box facts for the constants `GC`. -/
structure GCok (tab : ℕ → ℤ × ℤ) (C : GC) (u : Fin 4 → ℝ) : Prop where
  L2g : 169 * (1 / sinc (π / (2 * 13)) ^ 2) ≤ val C.L2g
  K2hi : K2 u ≤ val C.K2hi
  Khlo0 : 0 ≤ C.Khlo
  Khlo : val C.Khlo ≤ Kh2 u
  Khhi : Kh2 u ≤ val C.Khhi
  y0lo : ∀ ρ : Fin 4, val C.y0lo ≤ 169 * |al (u ρ) 0| ^ 2
  y0hi : ∀ ρ : Fin 4, 169 * |al (u ρ) 0| ^ 2 ≤ val C.y0hi

theorem zI_true {l : Fin 4 → ℕ} (h : zI l = true) : l = fun _ => 0 := by
  unfold zI at h; simp only [Bool.and_eq_true, beq_iff_eq] at h
  funext ρ; fin_cases ρ <;> simp [h.1.1.1, h.1.1.2, h.1.2, h.2]

theorem ratIn {d : Fin 4 → Dir} {u : Fin 4 → ℝ} {l : Fin 4 → ℕ} (hD : ∀ ρ, DirAt (d ρ) (u ρ) (l ρ))
    {tab : ℕ → ℤ × ℤ} {C : GC} (hC : GCok tab C u) (hu0 : ∀ ρ, 0 ≤ u ρ) (hu1 : ∀ ρ, u ρ ≤ 1)
    (hne : ∃ ρ, 0 < u ρ) (hkl : zI l = false → 0 < klI d l) :
    RatIn u l (WI C d l) (rloI C d l) (rhiI C d l) := by
  have hkh_ge : val (klI d l) ≤ kh2 u l := by
    unfold klI; simp only [val_add]; rw [kh2_four]
    linarith [(hD 0).s4lo, (hD 1).s4lo, (hD 2).s4lo, (hD 3).s4lo]
  have hkh_le : kh2 u l ≤ val (khI d l) := by
    unfold khI; simp only [val_add]; rw [kh2_four]
    linarith [(hD 0).s4hi, (hD 1).s4hi, (hD 2).s4hi, (hD 3).s4hi]
  cases hz : zI l
  · have hk := hkl hz
    have hkv : 0 < val (klI d l) := val_pos.2 hk
    have hkpos : 0 < kh2 u l := lt_of_lt_of_le hkv hkh_ge
    have hkhI : 0 < khI d l := val_pos.1 (lt_of_lt_of_le hkpos hkh_le)
    have hinv : 1 / kh2 u l ≤ val (divU SC (klI d l)) := by
      have := ub_div (x := 1) (y := kh2 u l) zero_le_one (by rw [val_SC]) hkh_ge hk
      exact this
    have hinv0 : 0 ≤ 1 / kh2 u l := by positivity
    unfold WI rloI rhiI; simp only [hz, Bool.false_eq_true, if_false]
    refine ⟨?_, ?_, ?_⟩
    · rw [div_eq_mul_one_div]
      exact ub_mul (K2_nonneg u) hinv0 hC.K2hi hinv
    · rw [div_eq_mul_one_div]
      have hdv : val (divD SC (khI d l)) ≤ 1 / kh2 u l := by
        have := lb_div (x := 1) (y := kh2 u l) SC_pos.le (by rw [val_SC]) hkh_le hkpos hkhI
        exact this
      exact lb_mul hC.Khlo0 (divD_nonneg SC_pos.le hkhI) hC.Khlo hdv
    · rw [div_eq_mul_one_div]
      exact ub_mul (Kh2_nonneg u) hinv0 hC.Khhi hinv
  · have hl := zI_true hz
    subst hl
    unfold WI rloI rhiI; simp only [hz, if_true]
    have hb0 : ∀ ρ, 0 ≤ 4 * sq (u ρ) 0 ^ 2 := fun ρ => by positivity
    have hpos : 0 < ∑ ρ, 4 * sq (u ρ) ((fun _ => 0 : Fin 4 → ℕ) ρ) ^ 2 := by
      obtain ⟨ρ, hρ⟩ := hne
      have hs := skq_pos (hu0 ρ) (hu1 ρ) (l := 0) (by norm_num) (Or.inr hρ)
      have : 0 < 4 * sq (u ρ) 0 ^ 2 := by unfold sq; positivity
      exact lt_of_lt_of_le this (single_le_sum (fun i _ => hb0 i) (mem_univ ρ))
    have hrat := ratio_bounds (a := fun ρ => 4 * sin (π * u ρ / 2) ^ 2)
      (b := fun ρ => 4 * sq (u ρ) 0 ^ 2) (c := fun ρ => 169 * |al (u ρ) 0| ^ 2)
      (m := val C.y0lo) (M := val C.y0hi) (fun ρ => sK_alpha0 (u ρ)) hb0 hpos hC.y0lo hC.y0hi
    refine ⟨?_, ?_, ?_⟩
    · exact (K2_div_kh2_zero u hu0 hu1).trans hC.L2g
    · exact hrat.1
    · exact hrat.2

theorem gn_ok {d : Fin 4 → Dir} {u : Fin 4 → ℝ} {l : Fin 4 → ℕ} (hD : ∀ ρ, DirAt (d ρ) (u ρ) (l ρ)) :
    Real.sqrt (∑ ρ, g2f (u ρ) (l ρ)) ≤ val (sqrtU (gI d l)) := by
  apply ub_sqrt (sum_nonneg fun ρ _ => g2f_nonneg _ _)
  unfold gI; simp only [val_add]; rw [Fin.sum_univ_four]
  linarith [(hD 0).g2, (hD 1).g2, (hD 2).g2, (hD 3).g2]

/-- The three summand inequalities at `l`. -/
theorem summand3 {d : Fin 4 → Dir} {u : Fin 4 → ℝ} {l : Fin 4 → ℕ} (hD : ∀ ρ, DirAt (d ρ) (u ρ) (l ρ))
    {tab : ℕ → ℤ × ℤ} {C : GC} (hC : GCok tab C u) (hu0 : ∀ ρ, 0 ≤ u ρ) (hu1 : ∀ ρ, u ρ ≤ 1)
    (hne : ∃ ρ, 0 < u ρ) (hkl : zI l = false → 0 < klI d l) :
    Vt u l ≤ val (fin3 (d 3) C (pre3 d (l 0) (l 1) (l 2)) (l 3)).1 ∧
    Ut u l ≤ val (fin3 (d 3) C (pre3 d (l 0) (l 1) (l 2)) (l 3)).2.1 ∧
    val (fin3 (d 3) C (pre3 d (l 0) (l 1) (l 2)) (l 3)).2.2 ≤ St u l := by
  rw [fin3_eq]
  have hR := ratIn hD hC hu0 hu1 hne hkl
  have hs := summand hD hR
  exact ⟨hs.1, hs.2 _ (gn_ok hD), hR.rlo⟩


/-! ## Assembly -/

theorem fsum_eq {M : Type*} [AddCommMonoid M] (n : ℕ) (f : ℕ → M) (init : M) :
    fsum n f init = init + ∑ i ∈ range n, f i := by
  unfold fsum
  induction n generalizing init with
  | zero => simp
  | succ n ih => rw [List.range_succ, List.foldl_append, ih, sum_range_succ]; simp [add_assoc]

theorem Tsum_eq (d : Fin 4 → Dir) (C : GC) :
    Tsum d C = ∑ a ∈ range 13, ∑ b ∈ range 13, ∑ c ∈ range 13, ∑ e ∈ range 13,
      fin3 (d 3) C (pre3 d a b c) e := by
  unfold Tsum; simp only [fsum_eq, zero_add]

theorem lsum_eq (f : (Fin 4 → ℕ) → ℝ) :
    lsum f = ∑ a ∈ range 13, ∑ b ∈ range 13, ∑ c ∈ range 13, ∑ e ∈ range 13, f (L4 a b c e) := by
  unfold lsum; simp only [Finset.sum_range]

theorem L4_apply (a b c e : ℕ) : L4 a b c e 0 = a ∧ L4 a b c e 1 = b ∧ L4 a b c e 2 = c ∧ L4 a b c e 3 = e :=
  ⟨rfl, rfl, rfl, rfl⟩

theorem L4_lt {a b c e : ℕ} (ha : a < 13) (hb : b < 13) (hc : c < 13) (he : e < 13) :
    ∀ ρ, L4 a b c e ρ < 13 := by
  intro ρ; fin_cases ρ <;> simpa [L4]

/-- Soundness of the gauge box bound. -/
theorem Gbox_sound {tab : ℕ → ℤ × ℤ} (htab : TabOK tab) (hC : 0 < sincC tab)
    (hC2 : 0 < mulD (sincC tab) (sincC tab)) {lo hi : Fin 4 → ℕ} {d : Fin 4 → Dir}
    (hd : ∀ ρ, d ρ = mkDir tab (lo ρ) (hi ρ)) {u : Fin 4 → ℝ} (hu : ∀ ρ, InBox (lo ρ) (hi ρ) (u ρ))
    (hne : ∃ ρ, 0 < u ρ) (hpos : ∀ ρ, ∀ l, 0 < l → l < 13 → 0 < at13 (d ρ).s4lo l)
    {F : ℤ} (hF : FCSu u ≤ val F) (hF0 : 0 ≤ FCSu u) {g : ℤ} (hg : Gbox tab d F = some g) :
    Gst u ≤ val g := by
  have hu0 : ∀ ρ, 0 ≤ u ρ := fun ρ => (hu ρ).u0
  have hu1 : ∀ ρ, u ρ ≤ 1 := fun ρ => (hu ρ).u1
  -- per-direction facts
  have hD : ∀ l : Fin 4 → ℕ, (∀ ρ, l ρ < 13) → ∀ ρ, DirAt (d ρ) (u ρ) (l ρ) := by
    intro l hl ρ
    rw [hd ρ]
    refine dirAt_of htab hC (hu ρ) (hl ρ) ?_
    rcases Nat.eq_zero_or_pos (l ρ) with h0 | h0
    · exact Or.inl h0
    · right
      have := hpos ρ (l ρ) h0 (hl ρ)
      rw [hd ρ, (mkDir_at (hl ρ)).1] at this; exact this
  have hD0 : ∀ ρ, DirAt (d ρ) (u ρ) 0 := fun ρ => by
    have := hD (fun _ => 0) (fun _ => by norm_num) ρ; exact this
  -- constants
  have hGC : GCok tab (mkGC tab d) u := by
    have hK : ∀ ρ, 0 ≤ (d ρ).sKlo ∧ val (d ρ).sKlo ≤ sin (π * u ρ / 2) ∧ sin (π * u ρ / 2) ≤ val (d ρ).sKhi := by
      intro ρ; rw [hd ρ]; exact dir_sK htab (hu ρ)
    have hx : ∀ ρ, (π * u ρ) ^ 2 ≤ val (d ρ).xh := by
      intro ρ; rw [hd ρ]; exact (dir_x (hu ρ)).2
    have h4lo : ∀ ρ, val (4 * mulD (d ρ).sKlo (d ρ).sKlo) ≤ 4 * sin (π * u ρ / 2) ^ 2 := by
      intro ρ
      have e : ((4:ℤ) * mulD (d ρ).sKlo (d ρ).sKlo) = ((4:ℕ):ℤ) * mulD (d ρ).sKlo (d ρ).sKlo := by norm_num
      rw [e, val_natmul]; push_cast
      have := lb_mul (hK ρ).1 (hK ρ).1 (hK ρ).2.1 (hK ρ).2.1; nlinarith
    have h4hi : ∀ ρ, 4 * sin (π * u ρ / 2) ^ 2 ≤ val (4 * mulU (d ρ).sKhi (d ρ).sKhi) := by
      intro ρ
      have e : ((4:ℤ) * mulU (d ρ).sKhi (d ρ).sKhi) = ((4:ℕ):ℤ) * mulU (d ρ).sKhi (d ρ).sKhi := by norm_num
      rw [e, val_natmul]; push_cast
      have h0 : 0 ≤ sin (π * u ρ / 2) := sK_nonneg (hu0 ρ) (hu1 ρ)
      have := ub_mul h0 h0 (hK ρ).2.2 (hK ρ).2.2; nlinarith
    refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
    · show _ ≤ val (169 * gamU tab)
      rw [val169]; exact mul_le_mul_of_nonneg_left (gamU_ok htab hC2) (by norm_num)
    · show K2 u ≤ val (K2hiB d)
      unfold K2 K2hiB; simp only [val_add]; rw [Fin.sum_univ_four]
      linarith [hx 0, hx 1, hx 2, hx 3]
    · show 0 ≤ KhloB d
      unfold KhloB
      have hm := fun ρ => mulD_nonneg (hK ρ).1 (hK ρ).1
      have := hm 0; have := hm 1; have := hm 2; have := hm 3; omega
    · show val (KhloB d) ≤ Kh2 u
      unfold Kh2 KhloB; simp only [val_add]; rw [Fin.sum_univ_four]
      linarith [h4lo 0, h4lo 1, h4lo 2, h4lo 3]
    · show Kh2 u ≤ val (KhhiB d)
      unfold Kh2 KhhiB; simp only [val_add]; rw [Fin.sum_univ_four]
      linarith [h4hi 0, h4hi 1, h4hi 2, h4hi 3]
    · intro ρ
      show val (y0loB d) ≤ _
      unfold y0loB; rw [val_mn4]
      refine (mn4_le _ ρ).trans ?_
      simp only [val169]
      linarith [(hD0 ρ).a2lo]
    · intro ρ
      show _ ≤ val (y0hiB d)
      unfold y0hiB; rw [val_mx4]
      refine le_trans ?_ (le_mx4 _ ρ)
      simp only [val169]
      linarith [(hD0 ρ).a2hi]
  -- the sums
  have hterm : ∀ a ∈ range 13, ∀ b ∈ range 13, ∀ c ∈ range 13, ∀ e ∈ range 13,
      Vt u (L4 a b c e) ≤ val (fin3 (d 3) (mkGC tab d) (pre3 d a b c) e).1 ∧
      Ut u (L4 a b c e) ≤ val (fin3 (d 3) (mkGC tab d) (pre3 d a b c) e).2.1 ∧
      val (fin3 (d 3) (mkGC tab d) (pre3 d a b c) e).2.2 ≤ St u (L4 a b c e) := by
    intro a ha b hb c hc e he
    rw [mem_range] at ha hb hc he
    have hl := L4_lt ha hb hc he
    have hDl := hD _ hl
    have hkl : zI (L4 a b c e) = false → 0 < klI d (L4 a b c e) := by
      intro hz
      have hnz : ∃ ρ, L4 a b c e ρ ≠ 0 := by
        by_contra hall; push Not at hall
        have : zI (L4 a b c e) = true := by unfold zI; simp [hall]
        rw [this] at hz; exact absurd hz (by decide)
      obtain ⟨ρ, hρ⟩ := hnz
      have hp := hpos ρ _ (Nat.pos_of_ne_zero hρ) (hl ρ)
      have e : klI d (L4 a b c e) = ∑ σ, at13 (d σ).s4lo (L4 a b c e σ) := by
        unfold klI; rw [Fin.sum_univ_four]
      rw [e]
      exact lt_of_lt_of_le hp (single_le_sum (fun σ _ => (hDl σ).s4lo0) (mem_univ ρ))
    exact summand3 hDl hGC hu0 hu1 hne hkl
  -- conclude
  unfold Gbox at hg
  simp only at hg
  split_ifs at hg with hS
  · injection hg with hg; subst hg
    set C := mkGC tab d
    set T := Tsum d C with hT
    have hT' := Tsum_eq d C
    have hV : lsum (Vt u) ≤ val T.1 := by
      rw [lsum_eq, hT, hT', Prod.fst_sum, val_sum]
      refine sum_le_sum fun a ha => ?_; rw [Prod.fst_sum, val_sum]
      refine sum_le_sum fun b hb => ?_; rw [Prod.fst_sum, val_sum]
      refine sum_le_sum fun c hc => ?_; rw [Prod.fst_sum, val_sum]
      exact sum_le_sum fun e he => (hterm a ha b hb c hc e he).1
    have hU : lsum (Ut u) ≤ val T.2.1 := by
      rw [lsum_eq, hT, hT', Prod.snd_sum, Prod.fst_sum, val_sum]
      refine sum_le_sum fun a ha => ?_; rw [Prod.snd_sum, Prod.fst_sum, val_sum]
      refine sum_le_sum fun b hb => ?_; rw [Prod.snd_sum, Prod.fst_sum, val_sum]
      refine sum_le_sum fun c hc => ?_; rw [Prod.snd_sum, Prod.fst_sum, val_sum]
      exact sum_le_sum fun e he => (hterm a ha b hb c hc e he).2.1
    have hSs : val T.2.2 ≤ lsum (St u) := by
      rw [lsum_eq, hT, hT', Prod.snd_sum, Prod.snd_sum, val_sum]
      refine sum_le_sum fun a ha => ?_; rw [Prod.snd_sum, Prod.snd_sum, val_sum]
      refine sum_le_sum fun b hb => ?_; rw [Prod.snd_sum, Prod.snd_sum, val_sum]
      refine sum_le_sum fun c hc => ?_; rw [Prod.snd_sum, Prod.snd_sum, val_sum]
      exact sum_le_sum fun e he => (hterm a ha b hb c hc e he).2.2
    have hV' : Vst u ≤ val (cdiv T.1 (13 ^ 4)) := by
      have := val_cdiv_nat (a := T.1) (k := 13 ^ 4) (by norm_num)
      push_cast at this
      unfold Vst
      have e : ((13:ℤ) ^ 4) = 28561 := by norm_num
      rw [e]; norm_num
      exact (div_le_div_of_nonneg_right hV (by norm_num)).trans this
    have hU' : Ust u ≤ val (cdiv T.2.1 (13 ^ 3)) := by
      have := val_cdiv_nat (a := T.2.1) (k := 13 ^ 3) (by norm_num)
      push_cast at this
      unfold Ust
      have e : ((13:ℤ) ^ 3) = 2197 := by norm_num
      rw [e]; norm_num
      exact (div_le_div_of_nonneg_right hU (by norm_num)).trans this
    have hS' : val (fdiv T.2.2 169) ≤ Sst u := by
      have := val_fdiv_nat (a := T.2.2) (k := 169) (by norm_num)
      push_cast at this
      unfold Sst; refine this.trans ?_
      have e : (13:ℝ) ^ 2 = 169 := by norm_num
      rw [e]; exact div_le_div_of_nonneg_right hSs (by norm_num)
    have hV0 : 0 ≤ Vst u := by
      unfold Vst lsum Vt
      refine div_nonneg (sum_nonneg fun _ _ => sum_nonneg fun _ _ => sum_nonneg fun _ _ =>
        sum_nonneg fun _ _ => ?_) (by norm_num)
      exact mul_nonneg (mul_nonneg (prod_nonneg fun _ _ => by positivity)
        (div_nonneg (K2_nonneg u) (kh2_nonneg u _))) (mx4_nonneg fun _ => abs_nonneg _)
    have hU0 : 0 ≤ Ust u := by
      unfold Ust lsum Ut
      refine div_nonneg (sum_nonneg fun _ _ => sum_nonneg fun _ _ => sum_nonneg fun _ _ =>
        sum_nonneg fun _ _ => ?_) (by norm_num)
      exact mul_nonneg (mul_nonneg (mul_nonneg (prod_nonneg fun _ _ => abs_nonneg _)
        (mx4_nonneg fun _ => abs_nonneg _)) (div_nonneg (K2_nonneg u) (kh2_nonneg u _)))
        (Real.sqrt_nonneg _)
    have hsq : Real.sqrt (Kh2 u) ≤ val (sqrtU C.Khhi) := ub_sqrt (Kh2_nonneg u) hGC.Khhi
    have hinner : Vst u + Real.sqrt (Kh2 u) * Ust u ≤
        val (cdiv T.1 (13 ^ 4) + mulU (sqrtU C.Khhi) (cdiv T.2.1 (13 ^ 3))) := by
      rw [val_add]
      linarith [ub_mul (Real.sqrt_nonneg _) hU0 hsq hU']
    have htau : tauSt u ≤ val (mulU F (cdiv T.1 (13 ^ 4) + mulU (sqrtU C.Khhi) (cdiv T.2.1 (13 ^ 3)))) :=
      ub_mul hF0 (by positivity) hF hinner
    have htau0 : 0 ≤ tauSt u := by unfold tauSt; positivity
    set τ := mulU F (cdiv T.1 (13 ^ 4) + mulU (sqrtU C.Khhi) (cdiv T.2.1 (13 ^ 3)))
    have h1 : 1 + tauSt u ≤ val (SC + τ) := by rw [val_add, val_SC]; linarith
    have hSpos : 0 < Sst u := lt_of_lt_of_le (val_pos.2 hS) hS'
    unfold Gst
    exact ub_div (by positivity) (by have := ub_mul (by positivity) (by positivity) h1 h1; nlinarith) hS' hS

end YmLean.H2B
