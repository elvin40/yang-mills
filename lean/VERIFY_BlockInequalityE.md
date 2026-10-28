IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# VERIFY: BlockInequalityE.lean (L8, Lemma E)

Date 2026-10-28. Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md, no reports/ONLINE_SWEEP.md).
Tags: [P] proved here (in Lean, or by the arithmetic written here), [R] reduced to a named input, [I] inference, [V] checked against a source page.
Inputs read: notes/SOURCES_WC_EXPGAUGE.md §1.5 (l. 16–19), §2 (l. 23–31), §3.2 (l. 36–45); notes/SOURCES_WC_EXPGAUGE_VERIFY.md V1–V4 (l. 5–29).

## Plan
1. Statement correspondence: source objects and hypotheses → Lean.
2. Proof map: steps (b)–(f) → Lean lemmas.
3. Hypotheses beyond the printed ones (missing-hypothesis report).
4. V2/V3 corrections and how they instantiate the theorem.
5. Build status.
6. Not formalized.
7. Ledger.

## 1. Statement correspondence
Setting [P]. `E, F, Pl, H` are finite-dimensional real inner product spaces: bond fields on B(y), site fields on B(y), plaquette fields inside B(y), values of 𝒢. `D : F →ₗ E` is D^V. `curl : E →ₗ Pl` is ∂^V. `𝒢 : E →ₗ H` is 𝒢. `N ≤ F` is {λ(y) = 0}. `W ≤ E` is {B = 0 on T(y)}. `d L : ℕ`. `cG τp τG : ℝ`.

| Source (§3.2, §1.5, V1) | Lean hypothesis |
|---|---|
| S_y, P_y, G_y, Λ_y | `‖B‖ ^ 2`, `‖curl B‖ ^ 2`, `‖𝒢 B‖ ^ 2`, `‖l‖ ^ 2` |
| (a) λ ∈ N with B_ax = B + D^Vλ = 0 on T(y) | `ha : ∀ B, ∃ l ∈ N, B + D l ∈ W` [R tree construction] |
| (b) A3 Lemma 4.2: S_y(B_ax) ≤ dL^dP_y(B_ax) | `hb : ∀ B ∈ W, ‖B‖ ^ 2 ≤ d * L ^ d * ‖curl B‖ ^ 2` [R A3 Lemma 4.2] |
| (c) curl of a gauge direction, ≤ d² plaquettes per base corner | `hc : ∀ l ∈ N, ‖curl (D l)‖ ^ 2 ≤ d ^ 2 * τp ^ 2 * ‖l‖ ^ 2` [R R3, (E)] |
| (d) \|avg_Γ Ad(V(Γ))λ(x)\| ≥ (1 − τ_G)\|λ(x)\|, summed over x | `hd : ∀ l ∈ N, (1 - τG) * ‖l‖ ≤ ‖𝒢 (D l)‖` [R §1.5(c)] |
| (e) ‖D^Vλ‖² ≤ 4dΛ_y | `he : ∀ l ∈ N, ‖D l‖ ^ 2 ≤ 4 * d * ‖l‖ ^ 2` [R geometry] |
| §1.5(b) ‖𝒢B‖² ≤ c_𝒢 S_y | `hG : ∀ B, ‖𝒢 B‖ ^ 2 ≤ cG * ‖B‖ ^ 2` [R Cauchy–Schwarz on contours] |
| τ_G ≤ ½ | `hτG : τG ≤ 1 / 2` |
| 16d³L^dc_𝒢τ_p² ≤ ½ | `hsmall : 16 * d ^ 3 * L ^ d * cG * τp ^ 2 ≤ 1 / 2` |
| V1 form 32d³L^dτ_p² ≤ 1/c_G | equivalent for cG > 0: `smallness_iff` [P] |
| K_b := 8dL^d(1 + 32dc_𝒢) | `Kb d L cG` |

Conclusions [P, Lean-checked, §5]:
- `block_ineq_E_axial` (V1 algebra, one B and one l): from `hb` at B + D l, `hc`, `hd`, `hG`, `hτG`, `hsmall`, `0 < cG`: S(B_ax) ≤ 4dL^d P + G/c_𝒢 and Λ ≤ 16G + 32c_𝒢dL^dP.
- `block_ineq_E` (Lemma E): under all rows above plus `1 ≤ d`, `1 ≤ L`, `1 ≤ cG` (see §3): for every B, ‖B‖² ≤ K_b(‖curl B‖² + ‖𝒢B‖²).
- `Kb_le`: K_b at c_𝒢 = d(L − 1)L^d/2 is ≤ 136d³L^{2d+1} (d, L ≥ 1).
- `cG_ge_one`: d(L − 1)L^d/2 ≥ 1 for d ≥ 1, L ≥ 2.

## 2. Proof map
Write A := dL^d, δ := d²τ_p², S0 := S_y(B_ax), Q := ‖𝒢D^Vλ‖².
- (c) split [P]. curl(B + Dλ) = curl B + curl Dλ (`map_add`). `normsq_add_le_two` gives P_y(B_ax) ≤ 2P_y + 2‖curl Dλ‖², and `hc` gives P_y(B_ax) ≤ 2P_y + 2δΛ_y. This is the source's (c) line.
- (b)+(c) [P]. S0 ≤ A·P_y(B_ax) ≤ 2AP_y + 2AδΛ_y (`h1`).
- (d) [P]. τ_G ≤ ½ gives ½‖λ‖ ≤ (1 − τ_G)‖λ‖ ≤ ‖𝒢Dλ‖, so Λ_y ≤ 4Q. 𝒢Dλ = 𝒢B_ax − 𝒢B and `normsq_sub_le_two` give Q ≤ 2‖𝒢B_ax‖² + 2G_y. `hG` at B_ax gives Λ_y ≤ 8G_y + 8c_𝒢S0 (`h2`). This is V1's second item.
- (f), first half [P] (`block_f_real`). S0 ≤ 2AP + 16AδG + 16Aδc_𝒢S0. With 16Aδc_𝒢 ≤ ½ (= `hsmall`, since Aδ = d³L^dτ_p²): S0 ≤ 4AP + 32AδG. 32Aδc_𝒢 ≤ 1 gives 32AδG ≤ G/c_𝒢. So S0 ≤ 4AP + G/c_𝒢. Then Λ ≤ 8G + 8c_𝒢(4AP + G/c_𝒢) = 16G + 32c_𝒢AP.
- (e) [P] (`block_e_real`). B = B_ax − Dλ and `normsq_sub_le_two` give S ≤ 2S0 + 2‖Dλ‖² ≤ 2S0 + 8dΛ. Substitution: S ≤ (8A + 256dc_𝒢A)P + (2/c_𝒢 + 128d)G.
- (f), last bound [P] (`block_Kb_real`). With A, d, c_𝒢 ≥ 1: 2/c_𝒢 ≤ 2 ≤ 8A and 128d ≤ 256dc_𝒢A. So both coefficients are ≤ K_b = 8A + 256dc_𝒢A.
- K_b bound [P] (`Kb_le`). With x = L^d ≥ 1: K_b = 8dx + 128d³(L − 1)x². The gap 136d³x²L − K_b = 8d³x²L + 128d³x² − 8dx is ≥ 0 because d³x² ≥ d²x² ≥ dx ≥ 1. This is V1's "1 + 16d²(L−1)L^d ≤ 17d²L^{d+1}" step, multiplied by 8dL^d.
- Assembly (`block_ineq_E`). `ha` picks λ. Then `block_ineq_E_axial`, `block_e_real`, `block_Kb_real` in order.
The proof uses only the norm and linearity. It does not use the inner product or finite dimension. Those appear as instance hypotheses, as the brief asks [P].

## 3. Hypotheses beyond the printed ones
The "Assume" line of §3.2 (l. 36) lists τ_G ≤ ½ and 16d³L^dc_𝒢τ_p² ≤ ½. V1 adds the equivalent form 32d³L^dτ_p² ≤ 1/c_G. These do not suffice for the conclusion as stated. The missing hypotheses:
1. **c_𝒢 > 0.** Needed to write G/c_𝒢 and to pass between the two smallness forms (`smallness_iff`). It is implicit in the source (c_𝒢 = d(L−1)L^d/2) [P].
2. **c_𝒢 ≥ 1** (or any lower bound c_𝒢 ≥ c_0 > 0, with K_b then depending on c_0). The last step of (f) bounds the G-coefficient 2/c_𝒢 + 128d by K_b. Without a lower bound on c_𝒢, 2/c_𝒢 is unbounded and S ≤ K_b(P + G) fails for small c_𝒢 [P: the bound before this step, `block_e_real`, needs only c_𝒢 > 0]. The source uses "since c_𝒢 ≥ 1" inside the proof (l. 44), not in the hypothesis line. For c_𝒢 = d(L−1)L^d/2 it holds when d ≥ 1 and L ≥ 2 (`cG_ge_one`) [P]. Lean hypothesis: `hcG : 1 ≤ cG`.
3. **d ≥ 1, L ≥ 1.** Used for A = dL^d ≥ 1 in the same last step, and in `Kb_le` [P]. Trivial for a lattice block, but not in the printed list. Lean: `hd1`, `hL1`.
4. **Summed form of (d).** The source states (d) pointwise in x. The Lean hypothesis is the summed form ‖𝒢Dλ‖ ≥ (1 − τ_G)‖λ‖. The pointwise form implies it when ‖𝒢B‖² = Σ_{x∈B(y)∖{y}}|(𝒢B)(y, x)|², Λ_y = Σ_{x∈B(y)}|λ(x)|², and λ(y) = 0 (so the x = y term of Λ_y vanishes), using 1 − τ_G ≥ 0 [I; elementary, not formalized].
No other hypothesis is needed. The geometric inputs (a)–(e) and §1.5(b) enter as the stated hypotheses; the brief asks for this.

## 4. V2–V4 corrections and how they instantiate the theorem
The Lean theorem is stated for arbitrary constants cG, τp, τG. So each correction is a choice of constants, not a new proof.
- V2 (1): (d) is exact, |𝒢D^Vλ(x)| = |λ(x)| [V CMP 109 (0.6), per V2]. Instantiate τG := 0. `hτG` holds [P].
- V2 (2): ‖𝒢‖² ≤ (1 + O(Lα_0))c_𝒢 ≤ 2c_𝒢. Instantiate cG := 2c_𝒢. Then `hsmall` reads 32d³L^dc_𝒢τ_p² ≤ ½, and K_b(2c_𝒢) = 8A(1 + 64dc_𝒢) ≤ 2K_b(c_𝒢) [P, arithmetic, not in Lean]. With `Kb_le` this gives K_b ≤ 272d³L^{2d+1} [P, same remark]. This matches V2's "K_b changes by at most a factor 2".
- V2 (3): backward bonds carry the transport Ad(V(Γ_≤b)). This changes 𝒢 but not the bound `hG` (orthogonal Ad) [R V2].
- V3: τ_p becomes c × max_b‖R(V(b)) − 1‖ with c ≤ 6. V4: (E) needs a √N factor. Both change only the value of τp in `hc`. The theorem holds for any τp that satisfies `hc` and `hsmall` [P].
- V3: the sign of D^V (λ → −λ) does not enter: every hypothesis is invariant under l ↦ −l [P].

## 5. Build status
- `lake build YmLean.BlockInequalityE` passes (Lean v4.33.1, Mathlib v4.33.1 per `lake-manifest.json`; 2392 jobs; no errors, no warnings) [P]. The Mathlib closure was compiled from source because this session's network policy blocked the cache host.
- `#print axioms` for `block_ineq_E`, `block_ineq_E_axial`, `Kb_le`, `cG_ge_one`, `smallness_iff`: `[propext, Classical.choice, Quot.sound]` [P].
- No `sorry`, no `admit`, no `axiom` in the file (grep) [P].
- New import: only `Mathlib.Analysis.InnerProductSpace.Adjoint`, which GaugeMin.lean already imports.
- The brief forbids editing existing files. So `YmLean.lean` does not import the new module, and plain `lake build` (default target `YmLean`) does not compile it. To include it, add `import YmLean.BlockInequalityE` to `YmLean.lean` and a row to `lean/README.md`. Plain `lake build` was not rerun here: it does not touch this file, and it would need further Mathlib modules built from source.

## 6. Not formalized
1. Regular gauge on B(y) and gauge covariance of all norms (§3.2 proof, first line) [R (Cov)].
2. Existence of λ from the tree T(y) (a), A3 Lemma 4.2 (b), the curl identity and the (E) bound (c), the 𝒢-telescoping (d), and the count in (e). All are hypotheses [R].
3. The pointwise-to-summed step of (d) (§3, item 4) [I].
4. The K_b factor 2 under V2 (2) (§4) is hand arithmetic, not in Lean.
5. Lemma P_exp and Theorem L (§3.3–3.4) are out of scope.

## 7. Ledger
- [P, Lean-checked] `block_ineq_E`: S_y ≤ K_b(P_y + ‖𝒢B‖²) under (a)–(e), §1.5(b), τ_G ≤ ½, 16d³L^dc_𝒢τ_p² ≤ ½, c_𝒢 ≥ 1, d, L ≥ 1.
- [P, Lean-checked] `block_ineq_E_axial`: V1 algebra S(B_ax) ≤ 4dL^dP + G/c_𝒢, Λ ≤ 16G + 32c_𝒢dL^dP (needs only c_𝒢 > 0).
- [P, Lean-checked] `smallness_iff`, `Kb_le`, `cG_ge_one`, `block_f_real`, `block_e_real`, `block_Kb_real`, `normsq_add_le_two`, `normsq_sub_le_two`.
- Missing hypotheses reported (§3): c_𝒢 > 0; c_𝒢 ≥ 1 (or a stated lower bound); d, L ≥ 1; the summed form of (d).
- [R] geometric inputs (a)–(e), §1.5(b). [I] pointwise → summed (d).
- Open: wire the module into `YmLean.lean` and `lean/README.md` (not done here; existing files are off limits).

STATUS: COMPLETE
