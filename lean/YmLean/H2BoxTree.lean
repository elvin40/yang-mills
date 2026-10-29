import YmLean.H2BoxF

/-!
# The branch-and-bound tree (H2Box, part 5)

`check` evaluates `γ F + G` on a box and accepts it if the value is `≤ 10`; otherwise it bisects
every coordinate and recurses into the children that meet the sorted chamber
`0 ≤ u_0 ≤ u_1 ≤ u_2 ≤ u_3 ≤ 1`. The gauge bound of a parent box is inherited by its children,
as in `bb_arb.py`. Roots: the sorted cells of the `16⁴` grid.
-/

open Real Finset

namespace YmLean.H2B

/-- Target `10` in fixed point. -/
def TGT : ℤ := 10 * SC

def mkD (tab : ℕ → ℤ × ℤ) (lo hi : Fin 4 → ℕ) : Fin 4 → Dir :=
  mk4 (mkDir tab (lo 0) (hi 0)) (mkDir tab (lo 1) (hi 1)) (mkDir tab (lo 2) (hi 2)) (mkDir tab (lo 3) (hi 3))

/-- Positivity of the lower bounds of `|k̂_{l,ρ}|²`, `l = 1..12` (needed for the `l ≠ 0` divisions). -/
def posChk (d : Fin 4 → Dir) : Bool :=
  (List.range 12).all fun l => decide (0 < at13 (d 0).s4lo (l + 1)) && decide (0 < at13 (d 1).s4lo (l + 1)) &&
    decide (0 < at13 (d 2).s4lo (l + 1)) && decide (0 < at13 (d 3).s4lo (l + 1))

def boxValid (lo hi : Fin 4 → ℕ) : Bool :=
  decide (lo 0 < hi 0 ∧ lo 1 < hi 1 ∧ lo 2 < hi 2 ∧ lo 3 < hi 3) &&
    decide (hi 0 ≤ 4096 ∧ hi 1 ≤ 4096 ∧ hi 2 ≤ 4096 ∧ hi 3 ≤ 4096)

def splittable (lo hi : Fin 4 → ℕ) : Bool :=
  decide (lo 0 + 1 < hi 0 ∧ lo 1 + 1 < hi 1 ∧ lo 2 + 1 < hi 2 ∧ lo 3 + 1 < hi 3)

def childLo (lo hi : Fin 4 → ℕ) (i : ℕ) : Fin 4 → ℕ :=
  fun ρ => if i.testBit ρ then (lo ρ + hi ρ) / 2 else lo ρ
def childHi (lo hi : Fin 4 → ℕ) (i : ℕ) : Fin 4 → ℕ :=
  fun ρ => if i.testBit ρ then hi ρ else (lo ρ + hi ρ) / 2

def sortedOK (lo hi : Fin 4 → ℕ) : Bool :=
  decide (lo 0 ≤ hi 1 ∧ lo 1 ≤ hi 2 ∧ lo 2 ≤ hi 3)

def materialize (f : Fin 4 → ℕ) : Fin 4 → ℕ := mk4 (f 0) (f 1) (f 2) (f 3)

def ogate (Gp : Option ℤ) (gF : ℤ) : Bool :=
  match Gp with
  | none => true
  | some g => decide (TGT < gF + g)

def accept (gF : ℤ) (G : Option ℤ) : Bool :=
  match G with
  | none => false
  | some g => decide (gF + g ≤ TGT)

/-- One node of the tree with direction data `d`; `rec` checks the children. -/
def checkBody (tab : ℕ → ℤ × ℤ) (rec : (Fin 4 → ℕ) → (Fin 4 → ℕ) → Option ℤ → Bool)
    (lo hi : Fin 4 → ℕ) (Gp : Option ℤ) (d : Fin 4 → Dir) : Bool :=
  match Fbox d with
  | none =>
    splittable lo hi && (List.range 16).all fun i =>
      let nlo := mk4 (childLo lo hi i 0) (childLo lo hi i 1) (childLo lo hi i 2) (childLo lo hi i 3)
      let nhi := mk4 (childHi lo hi i 0) (childHi lo hi i 1) (childHi lo hi i 2) (childHi lo hi i 3)
      !sortedOK nlo nhi || rec nlo nhi Gp
  | some f =>
    let gF := mulU (gamU tab) f
    let G := if decide (gF < TGT) && ogate Gp gF && posChk d then omin Gp (Gbox tab d f) else Gp
    accept gF G ||
      (splittable lo hi && (List.range 16).all fun i =>
        let nlo := mk4 (childLo lo hi i 0) (childLo lo hi i 1) (childLo lo hi i 2) (childLo lo hi i 3)
        let nhi := mk4 (childHi lo hi i 0) (childHi lo hi i 1) (childHi lo hi i 2) (childHi lo hi i 3)
        !sortedOK nlo nhi || rec nlo nhi G)

/-- One node of the tree; `rec` checks the children. -/
def checkStep (tab : ℕ → ℤ × ℤ) (rec : (Fin 4 → ℕ) → (Fin 4 → ℕ) → Option ℤ → Bool)
    (lo hi : Fin 4 → ℕ) (Gp : Option ℤ) : Bool :=
  boxValid lo hi && checkBody tab rec lo hi Gp
    (mk4 (mkDir tab (lo 0) (hi 0)) (mkDir tab (lo 1) (hi 1)) (mkDir tab (lo 2) (hi 2)) (mkDir tab (lo 3) (hi 3)))

/-- The recursive check with fuel. -/
def check (tab : ℕ → ℤ × ℤ) : ℕ → (Fin 4 → ℕ) → (Fin 4 → ℕ) → Option ℤ → Bool
  | 0 => fun _ _ _ => false
  | fuel + 1 => checkStep tab (check tab fuel)

/-- The sorted cells of the `16⁴` grid, as index tuples. -/
def roots : List (Fin 4 → ℕ) :=
  ((List.range 16).flatMap fun a => (List.range 16).flatMap fun b => (List.range 16).flatMap fun c =>
    (List.range 16).filterMap fun e =>
      if a ≤ b ∧ b ≤ c ∧ c ≤ e then some (mk4 a b c e) else none)

def rootLo (r : Fin 4 → ℕ) : Fin 4 → ℕ := materialize fun ρ => 256 * r ρ
def rootHi (r : Fin 4 → ℕ) : Fin 4 → ℕ := materialize fun ρ => 256 * r ρ + 256

/-- Global table facts used by the soundness proof. -/
def globalChk (tab : ℕ → ℤ × ℤ) : Bool :=
  decide (0 < sincC tab) && decide (0 < mulD (sincC tab) (sincC tab))

def checkRoots (tab : ℕ → ℤ × ℤ) (rs : List (Fin 4 → ℕ)) : Bool :=
  globalChk tab && rs.all fun r =>
    check tab 4 (mk4 (256 * r 0) (256 * r 1) (256 * r 2) (256 * r 3))
      (mk4 (256 * r 0 + 256) (256 * r 1 + 256) (256 * r 2 + 256) (256 * r 3 + 256)) none

end YmLean.H2B
