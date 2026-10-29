import YmLean.GpyMin
import YmLean.GpyMinCodes

/-!
# GPY potential: certified global minimum for SU(2), SU(3) (main theorems)

SOURCES_R3S1_GPY_MIN.md §1, SOURCES_R3S1_GPY_MIN_IV.md §2. Statement check: `VERIFY_GpyMin.md`.

The four certificates are checked by `decide +kernel` (kernel evaluation of `chk2`/`chk3`, no
`native_decide`). Constants (rational, from the IV run of numerics/r3s1_gpy_cert_iv.py, upper ends
rounded up):
* N_4 ≥ 16: δc₁⁺ = 0.0041028, ρ₀⁺ = 1.157e−4, ρ₂⁺ = 5.492e−4; a₁* = 0.20984 (SU(2)), 0.30997 (SU(3)).
* N_4 ≥ 8:  δc₁⁺ = 0.0191049, ρ₀⁺ = 5.591e−4, ρ₂⁺ = 2.582e−3; a₁* = 0.22529 (SU(2)), 0.32896 (SU(3)).
Each certificate proves the continuum bound at a₀ = a₁* − δc₁⁺.
-/

namespace YmLean.Gpy

theorem cert_su2_16 :
    (chk2 (2057372 / 10000000) (472 / 1000000) (2 / 1000) (318 / 1000) 40 1 1 code_su2_16).isSome
      = true := by decide +kernel
theorem cert_su2_8 :
    (chk2 (2061851 / 10000000) (2255 / 1000000) (6 / 1000) (318 / 1000) 40 1 1 code_su2_8).isSome
      = true := by decide +kernel
theorem cert_su3_16 :
    (chk3 (3058672 / 10000000) (115 / 100000) (25 / 10000) (79 / 1000) 40 1 1 1 code_su3_16).isSome
      = true := by decide +kernel
theorem cert_su3_8 :
    (chk3 (3098551 / 10000000) (5135 / 1000000) (9 / 1000) (79 / 1000) 40 1 1 1 code_su3_8).isSome
      = true := by decide +kernel

/-! ## (a) Continuum: explicit lower bound and unique global minimum -/

theorem G2_bound_16 {a : ℝ} (ha : 2057372 / 10000000 ≤ a) {s : ℝ} (hs : Alc2 s) :
    min (472 / 1000000) (2 / 1000 * d2sq s) ≤ G2 a s := by
  have h := G2_bound_of_cert cert_su2_16 (by norm_num) (by norm_num) (by norm_num) (by norm_num) s hs
  push_cast at h
  exact le_trans h (G2_mono ha s)

theorem G2_bound_8 {a : ℝ} (ha : 2061851 / 10000000 ≤ a) {s : ℝ} (hs : Alc2 s) :
    min (2255 / 1000000) (6 / 1000 * d2sq s) ≤ G2 a s := by
  have h := G2_bound_of_cert cert_su2_8 (by norm_num) (by norm_num) (by norm_num) (by norm_num) s hs
  push_cast at h
  exact le_trans h (G2_mono ha s)

theorem G3_bound_16 {a : ℝ} (ha : 3058672 / 10000000 ≤ a) {s t : ℝ} (hst : Alc3 s t) :
    min (115 / 100000) (25 / 10000 * d3sq s t) ≤ G3 a s t := by
  have h := G3_bound_of_cert cert_su3_16 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    s t hst
  push_cast at h
  exact le_trans h (G3_mono ha s t)

theorem G3_bound_8 {a : ℝ} (ha : 3098551 / 10000000 ≤ a) {s t : ℝ} (hst : Alc3 s t) :
    min (5135 / 1000000) (9 / 1000 * d3sq s t) ≤ G3 a s t := by
  have h := G3_bound_of_cert cert_su3_8 (by norm_num) (by norm_num) (by norm_num) (by norm_num)
    s t hst
  push_cast at h
  exact le_trans h (G3_mono ha s t)

/-- (a) SU(2): for a ≥ 0.2057372 (so for a ≥ a₁* = 0.20984) the centre s = 1 is the unique global
minimiser of the continuum potential on [0, 2π], with margin min(4.72e−4, 2e−3·d²). -/
theorem su2_continuum_min {a : ℝ} (ha : 2057372 / 10000000 ≤ a) :
    G2 a 1 = 0 ∧ (∀ s, Alc2 s → min (472 / 1000000) (2 / 1000 * d2sq s) ≤ G2 a s) ∧
      ∀ s, Alc2 s → s ≠ 1 → G2 a 1 < G2 a s := by
  refine ⟨G2_centre a, fun s hs => G2_bound_16 ha hs, fun s hs hne => ?_⟩
  rw [G2_centre]
  have hd := d2sq_pos hne
  have hp : (0 : ℝ) < min (472 / 1000000) (2 / 1000 * d2sq s) := lt_min (by norm_num) (by positivity)
  exact lt_of_lt_of_le hp (G2_bound_16 ha hs)

/-- (a) SU(3): for a ≥ 0.3058672 (so for a ≥ a₁* = 0.30997) the centre (2/3, 2/3) is the unique
global minimiser of the continuum potential on the alcove, with margin min(1.15e−3, 2.5e−3·d²). -/
theorem su3_continuum_min {a : ℝ} (ha : 3058672 / 10000000 ≤ a) :
    G3 a (2 / 3) (2 / 3) = 0 ∧
      (∀ s t, Alc3 s t → min (115 / 100000) (25 / 10000 * d3sq s t) ≤ G3 a s t) ∧
      ∀ s t, Alc3 s t → (s, t) ≠ (2 / 3, 2 / 3) → G3 a (2 / 3) (2 / 3) < G3 a s t := by
  refine ⟨G3_centre a, fun s t hst => G3_bound_16 ha hst, fun s t hst hne => ?_⟩
  rw [G3_centre]
  have hd := d3sq_pos hne
  have hp : (0 : ℝ) < min (115 / 100000) (25 / 10000 * d3sq s t) :=
    lt_min (by norm_num) (by positivity)
  exact lt_of_lt_of_le hp (G3_bound_16 ha hst)

/-! ## (b) Lattice: continuum bound + remainder hypothesis ⇒ unique global minimum

Hypothesis (H-rem), the certified output of SOURCES_R3S1_GPY_MIN §1.2–§1.3 and the IV run:
the lattice potential V (minus its centre value) equals G at a_eff = a₁ − δc₁ up to a remainder
bounded by min(N²ρ₀⁺, Nρ₂⁺d²), with δc₁ ≤ δc₁⁺. -/

theorem su2_lattice_16 (V : ℝ → ℝ) (a1 δc1 : ℝ) (ha1 : 20984 / 100000 ≤ a1)
    (hδ : δc1 ≤ 41028 / 10000000)
    (hrem : ∀ s, Alc2 s → |V s - V 1 - G2 (a1 - δc1) s| ≤
      min (4 * (1157 / 10000000)) (2 * (5492 / 10000000) * d2sq s)) :
    (∀ s, Alc2 s → min (472 / 1000000 - 4 * (1157 / 10000000))
        ((2 / 1000 - 2 * (5492 / 10000000)) * d2sq s) ≤ V s - V 1) ∧
      ∀ s, Alc2 s → s ≠ 1 → V 1 < V s := by
  have hb := lattice2 (fun s hs => G2_bound_16 le_rfl hs) (by linarith) V hrem
  refine ⟨hb, fun s hs hne => ?_⟩
  have hd := d2sq_pos hne
  have h := hb s hs
  have hp : (0 : ℝ) < min (472 / 1000000 - 4 * (1157 / 10000000)) ((2 / 1000 - 2 * (5492 / 10000000)) * d2sq s) :=
    lt_min (by norm_num) (mul_pos (by norm_num) hd)
  linarith [lt_of_lt_of_le hp h]

theorem su2_lattice_8 (V : ℝ → ℝ) (a1 δc1 : ℝ) (ha1 : 22529 / 100000 ≤ a1)
    (hδ : δc1 ≤ 191049 / 10000000)
    (hrem : ∀ s, Alc2 s → |V s - V 1 - G2 (a1 - δc1) s| ≤
      min (4 * (5591 / 10000000)) (2 * (2582 / 1000000) * d2sq s)) :
    (∀ s, Alc2 s → min (2255 / 1000000 - 4 * (5591 / 10000000))
        ((6 / 1000 - 2 * (2582 / 1000000)) * d2sq s) ≤ V s - V 1) ∧
      ∀ s, Alc2 s → s ≠ 1 → V 1 < V s := by
  have hb := lattice2 (fun s hs => G2_bound_8 le_rfl hs) (by linarith) V hrem
  refine ⟨hb, fun s hs hne => ?_⟩
  have hd := d2sq_pos hne
  have h := hb s hs
  have hp : (0 : ℝ) < min (2255 / 1000000 - 4 * (5591 / 10000000)) ((6 / 1000 - 2 * (2582 / 1000000)) * d2sq s) :=
    lt_min (by norm_num) (mul_pos (by norm_num) hd)
  linarith [lt_of_lt_of_le hp h]

theorem su3_lattice_16 (V : ℝ → ℝ → ℝ) (a1 δc1 : ℝ) (ha1 : 30997 / 100000 ≤ a1)
    (hδ : δc1 ≤ 41028 / 10000000)
    (hrem : ∀ s t, Alc3 s t → |V s t - V (2 / 3) (2 / 3) - G3 (a1 - δc1) s t| ≤
      min (9 * (1157 / 10000000)) (3 * (5492 / 10000000) * d3sq s t)) :
    (∀ s t, Alc3 s t → min (115 / 100000 - 9 * (1157 / 10000000))
        ((25 / 10000 - 3 * (5492 / 10000000)) * d3sq s t) ≤ V s t - V (2 / 3) (2 / 3)) ∧
      ∀ s t, Alc3 s t → (s, t) ≠ (2 / 3, 2 / 3) → V (2 / 3) (2 / 3) < V s t := by
  have hb := lattice3 (fun s t hst => G3_bound_16 le_rfl hst) (by linarith) V hrem
  refine ⟨hb, fun s t hst hne => ?_⟩
  have hd := d3sq_pos hne
  have h := hb s t hst
  have hp : (0 : ℝ) < min (115 / 100000 - 9 * (1157 / 10000000)) ((25 / 10000 - 3 * (5492 / 10000000)) * d3sq s t) :=
    lt_min (by norm_num) (mul_pos (by norm_num) hd)
  linarith [lt_of_lt_of_le hp h]

theorem su3_lattice_8 (V : ℝ → ℝ → ℝ) (a1 δc1 : ℝ) (ha1 : 32896 / 100000 ≤ a1)
    (hδ : δc1 ≤ 191049 / 10000000)
    (hrem : ∀ s t, Alc3 s t → |V s t - V (2 / 3) (2 / 3) - G3 (a1 - δc1) s t| ≤
      min (9 * (5591 / 10000000)) (3 * (2582 / 1000000) * d3sq s t)) :
    (∀ s t, Alc3 s t → min (5135 / 1000000 - 9 * (5591 / 10000000))
        ((9 / 1000 - 3 * (2582 / 1000000)) * d3sq s t) ≤ V s t - V (2 / 3) (2 / 3)) ∧
      ∀ s t, Alc3 s t → (s, t) ≠ (2 / 3, 2 / 3) → V (2 / 3) (2 / 3) < V s t := by
  have hb := lattice3 (fun s t hst => G3_bound_8 le_rfl hst) (by linarith) V hrem
  refine ⟨hb, fun s t hst hne => ?_⟩
  have hd := d3sq_pos hne
  have h := hb s t hst
  have hp : (0 : ℝ) < min (5135 / 1000000 - 9 * (5591 / 10000000)) ((9 / 1000 - 3 * (2582 / 1000000)) * d3sq s t) :=
    lt_min (by norm_num) (mul_pos (by norm_num) hd)
  linarith [lt_of_lt_of_le hp h]

end YmLean.Gpy
