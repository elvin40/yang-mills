import YmLean.H2BoxDir

/-!
# The gauge part of the majorant and its box enclosure (H2Box, part 3)

`Gst u = (1 + τ*)²/S*` is the gauge term of H1_ANALYTIC.md (5.2)–(5.3) in the form bounded by
`bb_arb.py` (`Gbox.bound`): `1/d̲ ≤ F_CS |K|²` ((6.1)), `|P_l g_l| ≤ (Σ_ν |1 − α_ν|²/|k̂_ν|²)^{1/2}`
(Lemma G), `L = 13`, `K = π u`. `Gbox` computes an outward-rounded upper bound on a box;
`Gbox_sound` proves it.
-/

open Real Finset

namespace YmLean.H2B

/-! ## Pointwise definitions -/

noncomputable def K2 (u : Fin 4 → ℝ) : ℝ := ∑ ρ, (π * u ρ) ^ 2
noncomputable def Kh2 (u : Fin 4 → ℝ) : ℝ := ∑ ρ, 4 * sin (π * u ρ / 2) ^ 2
/-- `|k̂_l|²`. -/
noncomputable def kh2 (u : Fin 4 → ℝ) (l : Fin 4 → ℕ) : ℝ := ∑ ρ, 4 * sq (u ρ) (l ρ) ^ 2
/-- `|a_{l,ρ}| = |α(k_{l,ρ})|`. -/
noncomputable def aa (u : Fin 4 → ℝ) (l : Fin 4 → ℕ) (ρ : Fin 4) : ℝ := |al (u ρ) (l ρ)|

def mx4 {α : Type*} [LinearOrder α] (f : Fin 4 → α) : α := max (max (max (f 0) (f 1)) (f 2)) (f 3)
def mn4 {α : Type*} [LinearOrder α] (f : Fin 4 → α) : α := min (min (min (f 0) (f 1)) (f 2)) (f 3)

/-- `V`-summand: `Π_ρ a² · |K|²/|k̂_l|² · max_μ |L² a_μ² − |K̂|²/|k̂_l|²|`. -/
noncomputable def Vt (u : Fin 4 → ℝ) (l : Fin 4 → ℕ) : ℝ :=
  (∏ ρ, aa u l ρ ^ 2) * (K2 u / kh2 u l) * mx4 (fun μ => |169 * aa u l μ ^ 2 - Kh2 u / kh2 u l|)
/-- `U`-summand: `Π_ρ |a| · max_μ |a_μ| · |K|²/|k̂_l|² · (Σ_ν |1 − α_ν|²/|k̂_ν|²)^{1/2}`. -/
noncomputable def Ut (u : Fin 4 → ℝ) (l : Fin 4 → ℕ) : ℝ :=
  (∏ ρ, aa u l ρ) * mx4 (aa u l) * (K2 u / kh2 u l) * Real.sqrt (∑ ρ, g2f (u ρ) (l ρ))
/-- `S_L`-summand times `|K̂|²`: `|K̂|²/|k̂_l|²`. -/
noncomputable def St (u : Fin 4 → ℝ) (l : Fin 4 → ℕ) : ℝ := Kh2 u / kh2 u l

def L4 (a b c d : ℕ) : Fin 4 → ℕ := ![a, b, c, d]

/-- `Σ_{l ∈ {0..12}⁴}`. -/
noncomputable def lsum (f : (Fin 4 → ℕ) → ℝ) : ℝ :=
  ∑ a : Fin 13, ∑ b : Fin 13, ∑ c : Fin 13, ∑ d : Fin 13, f (L4 a b c d)

noncomputable def FCSu (u : Fin 4 → ℝ) : ℝ := H1M.FCS fun ρ => π * u ρ
noncomputable def Vst (u : Fin 4 → ℝ) : ℝ := lsum (Vt u) / 13 ^ 4
noncomputable def Ust (u : Fin 4 → ℝ) : ℝ := lsum (Ut u) / 13 ^ 3
/-- `|K̂|² S_L(K)`. -/
noncomputable def Sst (u : Fin 4 → ℝ) : ℝ := lsum (St u) / 13 ^ 2
noncomputable def tauSt (u : Fin 4 → ℝ) : ℝ := FCSu u * (Vst u + Real.sqrt (Kh2 u) * Ust u)
/-- The gauge term `(1 + τ)²/(|K̂|² S_L)` of (5.3). -/
noncomputable def Gst (u : Fin 4 → ℝ) : ℝ := (1 + tauSt u) ^ 2 / Sst u

/-! ## Box computation -/

def at13 (a : Array ℤ) (l : ℕ) : ℤ := a.getD l 0

/-- `![a, b, c, e]`, not inlined: the arguments are evaluated once, before the closure is built. -/
@[noinline] def mk4 {α : Type*} (a b c e : α) : Fin 4 → α := fun ρ =>
  match ρ.val with
  | 0 => a
  | 1 => b
  | 2 => c
  | _ => e

/-- Lower bound of `sinc(π/26)`. -/
def sincC (tab : ℕ → ℤ × ℤ) : ℤ := sincLo tab 4096
/-- Upper bound of `γ_13 = sinc(π/26)⁻²`. -/
def gamU (tab : ℕ → ℤ × ℤ) : ℤ := divU SC (mulD (sincC tab) (sincC tab))

/-- Box constants: `|K|²` upper, `|K̂|²` lower and upper, `l = 0` ratio bounds. -/
def K2hiB (d : Fin 4 → Dir) : ℤ := (d 0).xh + (d 1).xh + (d 2).xh + (d 3).xh
def KhloB (d : Fin 4 → Dir) : ℤ :=
  4 * mulD (d 0).sKlo (d 0).sKlo + 4 * mulD (d 1).sKlo (d 1).sKlo +
    4 * mulD (d 2).sKlo (d 2).sKlo + 4 * mulD (d 3).sKlo (d 3).sKlo
def KhhiB (d : Fin 4 → Dir) : ℤ :=
  4 * mulU (d 0).sKhi (d 0).sKhi + 4 * mulU (d 1).sKhi (d 1).sKhi +
    4 * mulU (d 2).sKhi (d 2).sKhi + 4 * mulU (d 3).sKhi (d 3).sKhi
def y0loB (d : Fin 4 → Dir) : ℤ := mn4 fun ρ => 169 * at13 (d ρ).a2lo 0
def y0hiB (d : Fin 4 → Dir) : ℤ := mx4 fun ρ => 169 * at13 (d ρ).a2hi 0

/-- Partial data of the summand at `l = (a, b, c, ·)` (first three directions). -/
structure P3 where
  kl : ℤ
  kh : ℤ
  Pa2 : ℤ
  Pa : ℤ
  mxa : ℤ
  g : ℤ
  Ymax : ℤ
  Ymin : ℤ
  z : Bool

def pre3 (d : Fin 4 → Dir) (a b c : ℕ) : P3 where
  kl := at13 (d 0).s4lo a + at13 (d 1).s4lo b + at13 (d 2).s4lo c
  kh := at13 (d 0).s4hi a + at13 (d 1).s4hi b + at13 (d 2).s4hi c
  Pa2 := mulU (mulU (at13 (d 0).a2hi a) (at13 (d 1).a2hi b)) (at13 (d 2).a2hi c)
  Pa := mulU (mulU (at13 (d 0).ahi a) (at13 (d 1).ahi b)) (at13 (d 2).ahi c)
  mxa := max (max (at13 (d 0).ahi a) (at13 (d 1).ahi b)) (at13 (d 2).ahi c)
  g := at13 (d 0).g2 a + at13 (d 1).g2 b + at13 (d 2).g2 c
  Ymax := max (max (169 * at13 (d 0).a2hi a) (169 * at13 (d 1).a2hi b)) (169 * at13 (d 2).a2hi c)
  Ymin := min (min (169 * at13 (d 0).a2lo a) (169 * at13 (d 1).a2lo b)) (169 * at13 (d 2).a2lo c)
  z := a == 0 && b == 0 && c == 0

/-- Box constants. -/
structure GC where
  L2g : ℤ
  K2hi : ℤ
  Khlo : ℤ
  Khhi : ℤ
  y0lo : ℤ
  y0hi : ℤ

/-- The integer summands `(V, U, S)` at `l = (a, b, c, e)` from the partial data. -/
def fin3 (d3 : Dir) (C : GC) (p : P3) (e : ℕ) : ℤ × ℤ × ℤ :=
  let kl := p.kl + at13 d3.s4lo e
  let kh := p.kh + at13 d3.s4hi e
  let Pa2 := mulU p.Pa2 (at13 d3.a2hi e)
  let Pa := mulU p.Pa (at13 d3.ahi e)
  let mxa := max p.mxa (at13 d3.ahi e)
  let Gn := sqrtU (p.g + at13 d3.g2 e)
  let z := p.z && e == 0
  let W := if z then C.L2g else mulU C.K2hi (divU SC kl)
  let rhi := if z then C.y0hi else mulU C.Khhi (divU SC kl)
  let rlo := if z then C.y0lo else mulD C.Khlo (divD SC kh)
  let Ymax := max p.Ymax (169 * at13 d3.a2hi e)
  let Ymin := min p.Ymin (169 * at13 d3.a2lo e)
  let br := max (Ymax - rlo) (rhi - Ymin)
  (mulU (mulU Pa2 W) br, mulU (mulU (mulU Pa mxa) W) Gn, rlo)

/-- `Σ_{l ∈ range 13} f l` as a left fold (computation). -/
def fsum {M : Type*} [Add M] (n : ℕ) (f : ℕ → M) (init : M) : M :=
  (List.range n).foldl (fun acc i => acc + f i) init

def Tsum (d : Fin 4 → Dir) (C : GC) : ℤ × ℤ × ℤ :=
  let d3 := d 3
  fsum 13 (fun a => fsum 13 (fun b => fsum 13 (fun c =>
    let p := pre3 d a b c
    fsum 13 (fun e => fin3 d3 C p e) 0) 0) 0) 0

def mkGC (tab : ℕ → ℤ × ℤ) (d : Fin 4 → Dir) : GC where
  L2g := 169 * gamU tab
  K2hi := K2hiB d
  Khlo := KhloB d
  Khhi := KhhiB d
  y0lo := y0loB d
  y0hi := y0hiB d

/-- Upper bound of `Gst` on the box, given an upper bound `F` of `F_CS`. -/
def Gbox (tab : ℕ → ℤ × ℤ) (d : Fin 4 → Dir) (F : ℤ) : Option ℤ :=
  let C := mkGC tab d
  let T := Tsum d C
  let V := cdiv T.1 (13 ^ 4)
  let U := cdiv T.2.1 (13 ^ 3)
  let Sv := fdiv T.2.2 169
  let tau := mulU F (V + mulU (sqrtU C.Khhi) U)
  if 0 < Sv then some (divU (mulU (SC + tau) (SC + tau)) Sv) else none

end YmLean.H2B
