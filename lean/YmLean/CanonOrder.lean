import Mathlib.Logic.Relation

/-!
# Acyclicity of the canonical constant order (SOURCES_ORDER_CANON.md Part B; E7, E8, F.3, F.5)

`canonEdges` is a hand transcription of SOURCES_ORDER_CANON Part B as of 2026-10-28
(round B90 + the lift pass of F.5). An edge `(a, b)` means "a condition of line `b` uses a
constant fixed on line `a`". Sources of the edges: the "uses" lists of the topological
passes E7, E8, F.3, F.5, plus the dependencies that the Part B line text names explicitly.
Line `B0` does not exist in the source; the lines are B1–B33 plus the sub-lines B5a, B12a–c,
B14a, B17a, B18a–b, B22a, B29a (43 lines). B6 sits in Group 0, before B3 (E2), so the rank is
the position in the file, not the line number.

The theorems certify only that this transcription is acyclic. They do not certify the
mathematics behind any condition, nor that the transcription is complete.
-/

namespace YmLean.CanonOrder

inductive Line
  | B1 | B2 | B6 | B3 | B4 | B5 | B5a | B7 | B8 | B9 | B10 | B11 | B12 | B12a | B12b | B12c
  | B13 | B14 | B14a | B15 | B16 | B17 | B17a | B18 | B18a | B18b | B19 | B20 | B21 | B22
  | B22a | B23 | B24 | B25 | B26 | B27 | B28 | B29 | B29a | B30 | B31 | B32 | B33
  deriving DecidableEq, Repr

open Line

/-- The lines in file order (Part B). -/
def canonOrder : List Line :=
  [B1, B2, B6, B3, B4, B5, B5a, B7, B8, B9, B10, B11, B12, B12a, B12b, B12c,
   B13, B14, B14a, B15, B16, B17, B17a, B18, B18a, B18b, B19, B20, B21, B22,
   B22a, B23, B24, B25, B26, B27, B28, B29, B29a, B30, B31, B32, B33]

def rank (a : Line) : ℕ := canonOrder.idxOf a

/-! ## TRANSCRIPTION of SOURCES_ORDER_CANON Part B (predecessor, line) -/
def canonEdges : List (Line × Line) :=
  [ (B1, B2)                                      -- β_H ≤ β_0^H
  , (B6, B4)                                      -- S10 with the cap β_0 ≤ ½
  , (B3, B5), (B4, B5)                            -- (d, L, N) numbers; (K1′) uses L
  , (B5, B5a)
  , (B3, B7), (B5, B7)                            -- κ: δ, β, c_d, d
  , (B5, B8), (B6, B8)                            -- κ_0: δ; β_0′ vs β_0
  , (B4, B9), (B5, B9), (B7, B9)                  -- κ_1: L, δ, κ
  , (B5, B10)                                     -- δ_0
  , (B5, B11), (B5a, B11), (B10, B11)
  , (B11, B12)
  , (B5, B12a), (B5a, B12a), (B11, B12a), (B12, B12a)
  , (B12a, B12b)
  , (B11, B12c), (B12b, B12c)
  , (B5, B13), (B12b, B13), (B12c, B13)           -- γ_exp, θ_c
  , (B5, B14), (B11, B14), (B12a, B14), (B12b, B14), (B12c, B14)
  , (B5, B14a), (B12c, B14a), (B14, B14a)
  , (B5, B15), (B5a, B15), (B9, B15), (B11, B15), (B12, B15), (B13, B15), (B14, B15), (B14a, B15)
  , (B15, B16)
  , (B15, B17)
  , (B5, B17a), (B14, B17a), (B14a, B17a), (B15, B17a)
  , (B3, B18), (B4, B18), (B5, B18), (B5a, B18), (B7, B18), (B9, B18), (B12, B18), (B14, B18)
  , (B15, B18), (B16, B18), (B17a, B18)
  , (B5, B18a), (B15, B18a), (B18, B18a)
  , (B4, B18b), (B18, B18b)                       -- C_1^{FX} after M
  , (B4, B19), (B18, B19)
  , (B5, B20), (B12a, B20), (B14, B20), (B15, B20), (B18, B20)
  , (B20, B21)
  , (B5, B22), (B5a, B22), (B9, B22), (B12a, B22), (B12c, B22), (B15, B22), (B17, B22)
  , (B18, B22), (B20, B22), (B21, B22)
  , (B5, B22a), (B15, B22a), (B18, B22a), (B22, B22a)
  , (B17, B23), (B18, B23), (B22, B23)
  , (B4, B24), (B5, B24), (B9, B24), (B18, B24), (B22, B24)
  , (B3, B25)                                     -- exponents use only each other and d
  , (B5, B26)                                     -- γ_0
  , (B3, B27), (B5, B27), (B7, B27), (B10, B27), (B18, B27), (B26, B27)
  , (B5, B28), (B18, B28), (B25, B28), (B27, B28)
  , (B5, B29), (B18, B29), (B22, B29), (B25, B29), (B28, B29)
  , (B4, B29a), (B6, B29a), (B18, B29a), (B25, B29a)
  , (B5, B30), (B7, B30), (B18, B30), (B18a, B30), (B18b, B30), (B22, B30), (B24, B30)
  , (B25, B30), (B27, B30), (B28, B30), (B29, B30), (B29a, B30)
  , (B30, B31)
  , (B5, B32), (B14, B32), (B14a, B32), (B18, B32), (B30, B32), (B31, B32)
  ]
-- B1, B3, B6, B33 have no predecessor in the source text.

def Edge (a b : Line) : Prop := (a, b) ∈ canonEdges

theorem canonOrder_nodup : canonOrder.Nodup := by decide

theorem counts : canonOrder.length = 43 ∧ canonEdges.length = 135 := by decide

/-- Every transcribed edge goes forward in the file order. -/
theorem edges_forward : ∀ e ∈ canonEdges, rank e.1 < rank e.2 := by decide

theorem edge_rank {a b : Line} (h : Edge a b) : rank a < rank b := edges_forward (a, b) h

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
