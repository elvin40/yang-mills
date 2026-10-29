import YmLean.H2BoxG

/-!
# The transverse part `F_CS` on a box (H2Box, part 4)

`Fbox` computes an upper bound of `H1M.FCS (π u)` (H1_ANALYTIC.md (6.1)) on a box: for each of the
16 choices `c` and each `μ`, the ratio `Σ x_ρ R_ρ / Σ x_ρ` (`x_ρ = K_ρ²`) is bounded by a number `M`
that is verified by a separable linear check over the box, and the product `Π S_ρ` is bounded below.
-/

open Real Finset

namespace YmLean.H2B

def cOf (i : ℕ) : Fin 4 → Bool := fun ρ => i.testBit ρ

/-- Numerator weights `R_ρ` (upper bounds) for `(c, μ)`. -/
def rhF (d : Fin 4 → Dir) (c : Fin 4 → Bool) (μ ρ : Fin 4) : ℤ :=
  if ρ = μ then (d ρ).rm (c ρ) else (d ρ).r (c ρ)
/-- Denominator factors `S_ρ` (lower bounds) for `(c, μ)`. -/
def denF (d : Fin 4 → Dir) (c : Fin 4 → Bool) (μ ρ : Fin 4) : ℤ :=
  if ρ = μ then (d ρ).Sm (c ρ) else (d ρ).S (c ρ)

/-- Vertex maximum of `Σ x r / Σ x` (a hint; soundness uses only `linChk`). -/
def vertMax (d : Fin 4 → Dir) (rh : Fin 4 → ℤ) : ℤ :=
  (List.range 16).foldl (fun m i =>
    let xs : Fin 4 → ℤ := fun ρ => if i.testBit ρ then (d ρ).xh else (d ρ).xl
    let sx := xs 0 + xs 1 + xs 2 + xs 3
    if 0 < sx then max m (cdiv (xs 0 * rh 0 + xs 1 * rh 1 + xs 2 * rh 2 + xs 3 * rh 3) sx) else m) 0

/-- `Σ_ρ max(xl_ρ (r_ρ − M), xh_ρ (r_ρ − M)) ≤ 0`: then `Σ x_ρ r_ρ ≤ M Σ x_ρ` on the box. -/
def linTerm (d : Fin 4 → Dir) (rh : Fin 4 → ℤ) (M : ℤ) (ρ : Fin 4) : ℤ :=
  max ((d ρ).xl * (rh ρ - M)) ((d ρ).xh * (rh ρ - M))

def linChk (d : Fin 4 → Dir) (rh : Fin 4 → ℤ) (M : ℤ) : Bool :=
  decide (linTerm d rh M 0 + linTerm d rh M 1 + linTerm d rh M 2 + linTerm d rh M 3 ≤ 0) && decide (0 ≤ M)

def Fcm (d : Fin 4 → Dir) (c : Fin 4 → Bool) (μ : Fin 4) : Option ℤ :=
  let rh := rhF d c μ
  let den := denF d c μ
  let M := vertMax d rh
  let dp := mulD (mulD (mulD (den 0) (den 1)) (den 2)) (den 3)
  if linChk d rh M && decide (0 < dp) then some (divU M dp) else none

def omax (a b : Option ℤ) : Option ℤ :=
  match a, b with
  | some x, some y => some (max x y)
  | _, _ => none

def omin (a b : Option ℤ) : Option ℤ :=
  match a, b with
  | some x, some y => some (min x y)
  | some x, none => some x
  | none, b => b

def Fc (d : Fin 4 → Dir) (c : Fin 4 → Bool) : Option ℤ :=
  omax (omax (omax (Fcm d c 0) (Fcm d c 1)) (Fcm d c 2)) (Fcm d c 3)

def Fbox (d : Fin 4 → Dir) : Option ℤ :=
  (List.range 16).foldl (fun best i => omin best (Fc d (cOf i))) none

end YmLean.H2B
