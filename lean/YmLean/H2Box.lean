import YmLean.H2BoxTreeSound
import YmLean.H2BoxRun00
import YmLean.H2BoxRun01
import YmLean.H2BoxRun02
import YmLean.H2BoxRun03
import YmLean.H2BoxRun04
import YmLean.H2BoxRun05
import YmLean.H2BoxRun06
import YmLean.H2BoxRun07
import YmLean.H2BoxRun08
import YmLean.H2BoxRun09
import YmLean.H2BoxRun10
import YmLean.H2BoxRun11
import YmLean.H2BoxRun12
import YmLean.H2BoxRun13
import YmLean.H2BoxRun14
import YmLean.H2BoxRun15

/-!
# (H1_13) by a Lean-checked branch-and-bound: `sup B*_13 ≤ 10` (ledger row R-025)

Source: `../H1_ANALYTIC.md` §5–§7 (majorant `B_L = γ_L F_CS + Ḡ_L` and its interval bound),
`../numerics/h1analytic/bb_arb.py` (the arb certificate this file replaces), `../H2_CERTIFY_P5_VERIFY.md`
(symmetry). Statement check: `../VERIFY_H2Box.md`.

* `Bst_le_ten`: `B*(u) ≤ 10` for every `u` in the sorted chamber `0 ≤ u₀ ≤ u₁ ≤ u₂ ≤ u₃ ≤ 1`,
  `u ≠ 0` (`K = π u`). `B*` is defined in `H2BoxG.lean`/`H2BoxTreeSound.lean` from `Real.sin`, `Real.cos`,
  `Real.sinc`, `π` and `H1M.FCS`; nothing numerical is assumed.
* `rho1_sq_le_ten`: any function `ρ₁²(j, K)` that is bounded by `B*(K/π)` on the sorted chamber
  (the analytic majorant of H1_ANALYTIC, a named hypothesis) and is invariant under the 384 signed
  permutations (P5, a named hypothesis) satisfies `ρ₁²(j, K) ≤ 10` on `[−π, π]⁴` (given the value at `K = 0`).

The 16 `native_decide` runs (`H2BoxRun00`–`H2BoxRun15`) each add one compiler-trust axiom
`run??._native.native_decide.ax_1_1`.
-/

open Real Finset

namespace YmLean.H2B

theorem all_drop {α : Type*} (L : List α) (f : α → Bool) {a b : ℕ} (hab : a ≤ b)
    (h1 : ((L.drop a).take (b - a)).all f = true) (h2 : (L.drop b).all f = true) :
    (L.drop a).all f = true := by
  rw [← List.take_append_drop (b - a) (L.drop a), List.all_append, h1, List.drop_drop,
    Nat.add_sub_cancel' hab, h2]
  rfl

theorem slice_of {rs : List (Fin 4 → ℕ)} (h : checkRoots mkTab rs = true) :
    rs.all (fun r => check mkTab 4 (mk4 (256 * r 0) (256 * r 1) (256 * r 2) (256 * r 3))
      (mk4 (256 * r 0 + 256) (256 * r 1 + 256) (256 * r 2 + 256) (256 * r 3 + 256)) none) = true := by
  unfold checkRoots at h; simp only [Bool.and_eq_true] at h; exact h.2

/-- The whole certificate: every root passes. -/
theorem checkRoots_roots : checkRoots mkTab roots = true := by
  have hg : globalChk mkTab = true := by
    have h := run00; unfold checkRoots at h; simp only [Bool.and_eq_true] at h; exact h.1
  unfold checkRoots
  rw [hg, Bool.true_and]
  set f := fun r : Fin 4 → ℕ => check mkTab 4 (mk4 (256 * r 0) (256 * r 1) (256 * r 2) (256 * r 3))
      (mk4 (256 * r 0 + 256) (256 * r 1 + 256) (256 * r 2 + 256) (256 * r 3 + 256)) none
  have e : roots = roots.drop 0 := rfl
  rw [e]
  refine all_drop roots f (b := 486) (by norm_num) (slice_of run00) ?_
  refine all_drop roots f (b := 972) (by norm_num) (slice_of run01) ?_
  refine all_drop roots f (b := 1458) (by norm_num) (slice_of run02) ?_
  refine all_drop roots f (b := 1944) (by norm_num) (slice_of run03) ?_
  refine all_drop roots f (b := 2430) (by norm_num) (slice_of run04) ?_
  refine all_drop roots f (b := 2916) (by norm_num) (slice_of run05) ?_
  refine all_drop roots f (b := 3402) (by norm_num) (slice_of run06) ?_
  refine all_drop roots f (b := 3645) (by norm_num) (slice_of run07) ?_
  refine all_drop roots f (b := 3674) (by norm_num) (slice_of run08) ?_
  refine all_drop roots f (b := 3703) (by norm_num) (slice_of run09) ?_
  refine all_drop roots f (b := 3732) (by norm_num) (slice_of run10) ?_
  refine all_drop roots f (b := 3761) (by norm_num) (slice_of run11) ?_
  refine all_drop roots f (b := 3790) (by norm_num) (slice_of run12) ?_
  refine all_drop roots f (b := 3819) (by norm_num) (slice_of run13) ?_
  refine all_drop roots f (b := 3848) (by norm_num) (slice_of run14) ?_
  exact slice_of run15

/-- **`sup B*_13 ≤ 10`** on the sorted chamber (`K = π u`, `u ≠ 0`). -/
theorem Bst_le_ten {u : Fin 4 → ℝ} (hu : ∀ ρ, 0 ≤ u ρ ∧ u ρ ≤ 1) (s01 : u 0 ≤ u 1) (s12 : u 1 ≤ u 2)
    (s23 : u 2 ≤ u 3) (hne : ∃ ρ, 0 < u ρ) : Bst u ≤ 10 :=
  checkRoots_sound mkTab_ok checkRoots_roots hu s01 s12 s23 hne

/-- The same in momentum variables: `B*(K/π) ≤ 10` for `0 ≤ K₀ ≤ K₁ ≤ K₂ ≤ K₃ ≤ π`, `K ≠ 0`. -/
theorem Bst_le_ten_K {K : Fin 4 → ℝ} (h0 : 0 ≤ K 0) (s01 : K 0 ≤ K 1) (s12 : K 1 ≤ K 2) (s23 : K 2 ≤ K 3)
    (h3 : K 3 ≤ π) (hne : K ≠ 0) : Bst (fun ρ => K ρ / π) ≤ 10 := by
  have hp := pi_pos
  have hK0 : ∀ ρ, 0 ≤ K ρ := by
    intro ρ; fin_cases ρ <;> simp <;> linarith
  have hKπ : ∀ ρ, K ρ ≤ π := by
    intro ρ; fin_cases ρ <;> simp <;> linarith
  apply Bst_le_ten
  · intro ρ; exact ⟨div_nonneg (hK0 ρ) hp.le, (div_le_one hp).2 (hKπ ρ)⟩
  · exact div_le_div_of_nonneg_right s01 hp.le
  · exact div_le_div_of_nonneg_right s12 hp.le
  · exact div_le_div_of_nonneg_right s23 hp.le
  · by_contra h
    push Not at h
    apply hne; funext ρ
    have := h ρ
    have : K ρ / π = 0 := le_antisymm this (div_nonneg (hK0 ρ) hp.le)
    rw [div_eq_zero_iff] at this
    rcases this with h' | h'
    · exact h'
    · exact absurd h' hp.ne'

/-- **(H1_13)** relative to two named hypotheses: the majorant `ρ₁² ≤ B*` on the sorted chamber
(H1_ANALYTIC (5.3), (6.1), Lemma G) and the `B₄` invariance of `ρ₁` (P5). The value at `K = 0`
(`ρ₁(0) = 1`, H1_ANALYTIC §7) enters as `hzero`. -/
theorem rho1_sq_le_ten (rho1sq : ℕ → (Fin 4 → ℝ) → ℝ)
    (hmaj : ∀ j K, 0 ≤ K 0 → K 0 ≤ K 1 → K 1 ≤ K 2 → K 2 ≤ K 3 → K 3 ≤ π → K ≠ 0 →
      rho1sq j K ≤ Bst (fun ρ => K ρ / π))
    (hsym : ∀ j K (σ : Equiv.Perm (Fin 4)) (s : Fin 4 → Bool), rho1sq j (H1M.act σ s K) = rho1sq j K)
    (hzero : ∀ j, rho1sq j 0 ≤ 10) :
    ∀ j K, (∀ ρ, |K ρ| ≤ π) → rho1sq j K ≤ 10 := by
  intro j K hK
  by_cases hK0 : K = 0
  · rw [hK0]; exact hzero j
  set a : Fin 4 → ℝ := fun ρ => |K ρ|
  set σ := Tuple.sort a
  have hmono := Tuple.monotone_sort a
  set s : Fin 4 → Bool := fun ρ => decide (K (σ ρ) < 0)
  have hact : H1M.act σ s K = fun ρ => a (σ ρ) := by
    funext ρ
    unfold H1M.act
    simp only [s, a]
    by_cases h : K (σ ρ) < 0
    · simp [h, abs_of_neg h]
    · simp [h, abs_of_nonneg (not_lt.1 h)]
  rw [← hsym j K σ s, hact]
  have h0 : 0 ≤ a (σ 0) := abs_nonneg _
  have h01 : a (σ 0) ≤ a (σ 1) := hmono (by decide)
  have h12 : a (σ 1) ≤ a (σ 2) := hmono (by decide)
  have h23 : a (σ 2) ≤ a (σ 3) := hmono (by decide)
  have h3 : a (σ 3) ≤ π := hK (σ 3)
  have hne : (fun ρ => a (σ ρ)) ≠ 0 := by
    intro h0
    apply hK0
    funext ρ
    have := congrFun h0 (σ.symm ρ)
    simp only [Equiv.apply_symm_apply, Pi.zero_apply, a] at this
    exact abs_eq_zero.1 this
  exact (hmaj j _ h0 h01 h12 h23 h3 hne).trans (Bst_le_ten_K h0 h01 h12 h23 h3 hne)

end YmLean.H2B

#print axioms YmLean.H2B.mkTab_ok
#print axioms YmLean.H2B.Gbox_sound
#print axioms YmLean.H2B.Fbox_sound
#print axioms YmLean.H2B.checkRoots_sound
#print axioms YmLean.H2B.checkRoots_roots
#print axioms YmLean.H2B.Bst_le_ten
#print axioms YmLean.H2B.Bst_le_ten_K
#print axioms YmLean.H2B.rho1_sq_le_ten
