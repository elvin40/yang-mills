import Mathlib.Logic.Relation
import Mathlib.Order.WellFounded
import Mathlib.Data.Nat.Basic

/-!
# Acyclicity of the canonical constant order (SOURCES_ORDER_CANON.md Part B; E7, E8, F.3, F.5)

`canonEdges` is a hand transcription of SOURCES_ORDER_CANON Part B as of 2026-10-28
(round T-0099 + the lift pass of F.5 + canon pass G: N-100–N-160, N-170 and N-180 moved;
VERIFY2 fix pass: edges (N-180, N-310) and (N-160, N-270) added; Ω pass: edge (N-180, N-260) added;
sweep fix pass 2026-10-28: line N-265 (M_1^{(102)}) inserted before N-270, 10 edges added;
apply pass 2026-10-29: line N-395 (CMP 116 (1.36) constants) inserted after N-390, 10 edges added). An edge `(a, b)` means "a condition of line `b` uses a
constant fixed on line `a`". Sources of the edges: the "uses" lists of the topological
passes E7, E8, F.3, F.5, plus the dependencies that the Part B line text names explicitly.
There is no line before N-010; the lines are N-010–N-500 plus the sub-lines N-170, N-100–N-160,
N-210–N-230, N-260, N-265, N-300, N-320–N-330, N-380, N-395, N-460 (52 lines). N-265 uses the gap of the
step-10 scheme (IDS.md), so `num` is order-equivalent to `rank` but no longer equal to 10 × (rank + 1) after N-260; N-395 does the same after N-390. N-030 sits in Group 0, before N-040 (E2), and
N-170, N-180 sit after N-160 (G.3), so the rank is the position in the file, not the line number.

The theorems certify only that this transcription is acyclic. They do not certify the
mathematics behind any condition, nor that the transcription is complete.
-/

namespace YmLean.CanonOrder

inductive Line
  | N010 | N020 | N030 | N040 | N050 | N060 | N070 | N080 | N090
  | N100 | N110 | N120 | N130 | N140 | N150 | N160 | N170 | N180 | N190 | N200 | N210 | N220 | N230
  | N240 | N250 | N260 | N265 | N270 | N280 | N290 | N300 | N310 | N320 | N330 | N340 | N350 | N360 | N370
  | N380 | N390 | N395 | N400 | N410 | N420 | N430 | N440 | N450 | N460 | N470 | N480 | N490 | N500
  deriving DecidableEq, Repr

open Line

/-- The lines in file order (Part B). -/
def canonOrder : List Line :=
  [N010, N020, N030, N040, N050, N060, N070, N080, N090,
   N100, N110, N120, N130, N140, N150, N160, N170, N180, N190, N200, N210, N220, N230,
   N240, N250, N260, N265, N270, N280, N290, N300, N310, N320, N330, N340, N350, N360, N370,
   N380, N390, N395, N400, N410, N420, N430, N440, N450, N460, N470, N480, N490, N500]

def rank (a : Line) : ℕ := canonOrder.idxOf a

/-! ## TRANSCRIPTION of SOURCES_ORDER_CANON Part B (predecessor, line) -/
def canonEdges : List (Line × Line) :=
  [ (N010, N020)                                      -- β_H ≤ β_0^H
  , (N030, N050)                                      -- H-264 with the cap β_0 ≤ ½
  , (N040, N060), (N050, N060)                            -- (d, L, N) numbers; H-216 (K1′) uses L
  , (N060, N100)                                    -- G: RM_min
  , (N060, N110), (N100, N110)                      -- THM37
  , (N060, N120), (N100, N120), (N110, N120)        -- THM39, ε_39
  , (N100, N130), (N120, N130)                    -- RM_0
  , (N060, N140), (N110, N140), (N120, N140), (N130, N140)   -- THM310, δ_*, M_310
  , (N060, N150), (N110, N150), (N120, N150), (N130, N150), (N140, N150)  -- δ_WG, c_0, B_WG
  , (N060, N160), (N110, N160), (N120, N160), (N130, N160), (N140, N160)  -- complex radii
  , (N060, N170), (N150, N170)                        -- N-170 moved after N-150 (G)
  , (N040, N070), (N060, N070)                            -- κ: δ, β, c_d, d
  , (N050, N070)                                    -- κ ≥ 2(24 + s_0)/β, δLκ/2 ≥ 24 + s_0 (sweep fix pass)
  , (N060, N080), (N030, N080)                            -- κ_0: δ; β_0′ vs β_0
  , (N050, N090), (N060, N090), (N070, N090)                  -- κ_1: L, δ, κ
  , (N060, N180), (N140, N180), (N150, N180)          -- R > 18dL, RM_0, δ_WG (G)
  , (N060, N190), (N170, N190), (N180, N190), (N150, N190)
  , (N190, N200)
  , (N060, N210), (N170, N210), (N190, N210), (N200, N210)
  , (N210, N220)
  , (N190, N230), (N220, N230)
  , (N060, N240), (N220, N240), (N230, N240)           -- γ_exp, θ_c
  , (N060, N250), (N190, N250), (N210, N250), (N220, N250), (N230, N250)
  , (N160, N250)                                   -- level-4 radius k_{C′}b_1^{37} (G)
  , (N060, N260), (N230, N260), (N250, N260)
  , (N180, N260)                                   -- Ω pass; no value since the canon fix pass: δ_𝒲^Ω is read under the N-310 entry (S_H^Ω); harmless over-approximation
  , (N060, N265), (N130, N265), (N140, N265)        -- M_1^{(102)}: R_1, R_0M_0, M_99, RM_0 (sweep fix pass)
  , (N265, N270)                                    -- M_1 ≥ L^aR_1M_1^{(102)}
  , (N060, N270), (N170, N270), (N090, N270), (N190, N270), (N200, N270), (N240, N270), (N250, N270), (N260, N270)
  , (N140, N270)                                   -- M_1 ≥ M_310 (G)
  , (N160, N270)                                   -- M_1 ≥ M_W^{39,c} (VERIFY2)
  , (N150, N270)                                   -- (CF) M_1 ≥ 2C_Wc_0 (apply pass)
  , (N270, N280)
  , (N270, N290)
  , (N060, N300), (N250, N300), (N260, N300), (N270, N300)
  , (N040, N310), (N050, N310), (N060, N310), (N170, N310), (N070, N310), (N090, N310), (N200, N310), (N250, N310)
  , (N270, N310), (N280, N310), (N300, N310)
  , (N140, N310), (N150, N310)                      -- (2.59) at the smallest walk rate (G)
  , (N180, N310)                                    -- R fixed at N-180: RM bounds are bounds on M (VERIFY2)
  , (N060, N320), (N270, N320), (N310, N320)
  , (N265, N320)                                    -- cube cap with R_1M_1^{(102)}
  , (N050, N330), (N310, N330)                       -- C_1^{FX} after M
  , (N050, N340), (N310, N340)
  , (N060, N350), (N210, N350), (N250, N350), (N270, N350), (N310, N350)
  , (N160, N350)                                   -- α_1 rows ≤ k_{C′}b_1^{37}, b_1^{310} (G)
  , (N350, N360)
  , (N060, N370), (N170, N370), (N090, N370), (N210, N370), (N230, N370), (N270, N370), (N290, N370)
  , (N310, N370), (N350, N370), (N360, N370)
  , (N110, N370)                                   -- Mα_0 ≤ a_37 (G)
  , (N070, N370), (N150, N370)                      -- K_T^C uses κ; conditional (CF) α_0 cap uses c_0 (apply pass)
  , (N060, N380), (N270, N380), (N310, N380), (N370, N380)
  , (N265, N380)                                    -- (18L + 2)Mε_0^{109} ≤ R_1M_1^{(102)}a_1^{102}
  , (N290, N390), (N310, N390), (N370, N390)
  , (N060, N395), (N090, N395), (N310, N395), (N370, N395)   -- (1.36) constants C_1, C_2, q (apply pass 2026-10-29)
  , (N395, N400)                                    -- ε_2, C_3^{116} use the (1.36) constants
  , (N050, N400), (N060, N400), (N090, N400), (N310, N400), (N370, N400)
  , (N040, N400), (N070, N400)                      -- (KP-116), (R1-a): d, κ, s_0
  , (N040, N410)                                     -- exponents use only each other and d
  , (N060, N420)                                     -- γ_0
  , (N040, N430), (N060, N430), (N070, N430), (N180, N430), (N310, N430), (N420, N430)
  , (N060, N440), (N310, N440), (N410, N440), (N430, N440)
  , (N060, N450), (N310, N450), (N370, N450), (N410, N450), (N440, N450)
  , (N050, N460), (N030, N460), (N310, N460), (N410, N460)
  , (N060, N470), (N070, N470), (N310, N470), (N320, N470), (N330, N470), (N370, N470), (N400, N470)
  , (N410, N470), (N430, N470), (N440, N470), (N450, N470), (N460, N470)
  , (N265, N470)                                    -- B_5^{122}M^6O(1)ε_k ≤ R_1M_1^{(102)}a_1^{102}
  , (N395, N470), (N420, N470)                      -- B13 with c_2 of N-395; (G1), (G2) use γ_0, A_1 (apply pass)
  , (N470, N480)
  , (N060, N490), (N250, N490), (N260, N490), (N310, N490), (N470, N490), (N480, N490)
  ]
-- N-010, N-040, N-030, N-500 have no predecessor in the source text.

set_option maxRecDepth 20000

def Edge (a b : Line) : Prop := (a, b) ∈ canonEdges

theorem canonOrder_nodup : canonOrder.Nodup := by decide

theorem counts : canonOrder.length = 52 ∧ canonEdges.length = 190 := by decide

/-- Every transcribed edge goes forward in the file order. -/
theorem edges_forward : ∀ e ∈ canonEdges, rank e.1 < rank e.2 := by decide

theorem edge_rank {a b : Line} (h : Edge a b) : rank a < rank b := edges_forward (a, b) h

/-- The number of a line's id `N-nnn` (IDS.md): `N010 ↦ 10`, …, `N265 ↦ 265`, …, `N500 ↦ 500`. -/
def num : Line → ℕ
  | .N010 => 10
  | .N020 => 20
  | .N030 => 30
  | .N040 => 40
  | .N050 => 50
  | .N060 => 60
  | .N070 => 70
  | .N080 => 80
  | .N090 => 90
  | .N100 => 100
  | .N110 => 110
  | .N120 => 120
  | .N130 => 130
  | .N140 => 140
  | .N150 => 150
  | .N160 => 160
  | .N170 => 170
  | .N180 => 180
  | .N190 => 190
  | .N200 => 200
  | .N210 => 210
  | .N220 => 220
  | .N230 => 230
  | .N240 => 240
  | .N250 => 250
  | .N260 => 260
  | .N265 => 265
  | .N270 => 270
  | .N280 => 280
  | .N290 => 290
  | .N300 => 300
  | .N310 => 310
  | .N320 => 320
  | .N330 => 330
  | .N340 => 340
  | .N350 => 350
  | .N360 => 360
  | .N370 => 370
  | .N380 => 380
  | .N390 => 390
  | .N395 => 395
  | .N400 => 400
  | .N410 => 410
  | .N420 => 420
  | .N430 => 430
  | .N440 => 440
  | .N450 => 450
  | .N460 => 460
  | .N470 => 470
  | .N480 => 480
  | .N490 => 490
  | .N500 => 500

/-- Numeric order of the N-ids equals canon rank: `num a < num b ↔ rank a < rank b` for all lines.
So "every edge goes from a smaller N to a larger N" is the same statement as `edges_forward`.
(Before N-265 was inserted this was the stronger `num a = 10 * (rank a + 1)`; it still holds for
every line up to N-260, see `id_eq_rank_prefix`.) -/
theorem id_eq_rank : ∀ a b : Line, num a < num b ↔ rank a < rank b := by
  intro a b; cases a <;> cases b <;> decide

/-- The step-10 form holds on every line up to N-260; from N-270 to N-390, `num a = 10 * rank a`;
after N-395, `num a = 10 * (rank a - 1)`. -/
theorem id_eq_rank_prefix : ∀ a : Line,
    (rank a ≤ rank N260 → num a = 10 * (rank a + 1)) ∧
    (rank N265 < rank a → rank a ≤ rank N390 → num a = 10 * rank a) ∧
    (rank N395 < rank a → num a = 10 * (rank a - 1)) := by
  intro a; cases a <;> decide

/-- Every edge goes from a smaller N-id to a larger one. -/
theorem edges_forward_num : ∀ e ∈ canonEdges, num e.1 < num e.2 := by decide

/-- Any rank-increasing relation has no cycle: `a → … → a` is impossible. -/
theorem no_cycle_of_rank {α : Type*} {r : α → α → Prop} (f : α → ℕ)
    (hf : ∀ a b, r a b → f a < f b) (a : α) : ¬ Relation.TransGen r a a := by
  have key : ∀ {x y}, Relation.TransGen r x y → f x < f y := by
    intro x y h
    induction h with
    | single h => exact hf _ _ h
    | tail _ h ih => exact ih.trans (hf _ _ h)
  exact fun h => lt_irrefl _ (key h)

/-- The transcribed canon is acyclic. -/
theorem canon_acyclic (a : Line) : ¬ Relation.TransGen Edge a a :=
  no_cycle_of_rank rank (fun _ _ => edge_rank) a

/-- Equivalently, "uses" is well founded (no infinite descending chain of predecessors). -/
theorem canon_wf : WellFounded (fun a b => Edge a b) :=
  Subrelation.wf (fun h => edge_rank h) (InvImage.wf rank wellFounded_lt)

end YmLean.CanonOrder
