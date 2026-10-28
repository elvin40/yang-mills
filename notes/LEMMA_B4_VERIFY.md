IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# Verification of LEMMA_B4.md

Status: independent pass, 2026-10-27, Claude (Fable 5.1). Scope: every claim of LEMMA_B4.md checked against balaban/*.txt, reports/o3_continuum.txt, LEMMAS.md, and by recomputation. Scripts used: the author's numerics/inclined_stabilizer.py (runs 125 s, not seconds) and numerics/inclined_cell_geometry.py (0.6 s); stab_search_big.py not rerun (its stab_search_big.out is complete through m = 45; the text's "m = 49, 50 still running" has no output in the file). My own checks ran from /tmp (not kept). No other file was edited.

Prose: short sentences, plain technical English.

---

## 1. Source quotes

All page and line numbers cited by the author exist. Every quotation I checked is verbatim up to OCR noise. Checked items:

| Quote | Location claimed | Found | Status |
|---|---|---|---|
| (0.1), (0.2), "odd, positive integer > 11" | CMP 109 pp. 251–252 | lines 124–160, p. 251–252 | OK |
| (0.3) contours, "In the previous papers … not symmetric" | CMP 109 p. 252 | lines 174–200 | OK ((0.3) bound is |n_μ| ≤ (L−1)/2 in print; the text's "L − 1/2" is an OCR copy) |
| "do not depend on any particular averaging" | CMP 109 p. 253 | line 250 | OK |
| (0.14), (0.16), "fix a configuration U_0" | CMP 109 pp. 254–255 | lines 297–325 | OK |
| (0.20), (0.22), (0.23) | CMP 109 p. 256 | lines 363–413 | OK |
| (0.24), (0.25), d_j(X) tree graph | CMP 109 p. 257 | lines 441–455 | OK |
| (0.29) "(L^jη)^{4+α}" | CMP 109 p. 258 | lines 505–512 (garbled; the sum below it shows (L^jη)^{4+α}) | OK |
| regularity (1.2), (1.3) | CMP 109 p. 260 | line 600 ff. | OK |
| "absolute constants α_0, α_1", (1.18), "Symmetries are the subject", "Other symmetries are Euclidean" | CMP 109 p. 263 | lines 736–760 | OK |
| (1.20)–(1.22), "smooth … uniformly bounded" | CMP 109 p. 264 | lines 762–790 | OK |
| b_0(c), corridor, LQh = I | CMP 109 p. 267 | line 930 | OK |
| ζ_□ partition of unity | CMP 109 p. 270 | line 1068 | OK |
| (5.7), (5.12)–(5.15) | CMP 109 p. 293 | lines 2188–2240 | OK |
| "Consider cases with one component of ε" | CMP 109 p. 294 | line 2269 | OK |
| (5.32), "three different indices" | CMP 109 p. 296 | line 2355 | OK |
| "common value of 2d^{−2}β_{μν}", (5.36), (5.37), (5.42) "fundamental equality" | CMP 109 pp. 296–297 | lines 2397–2440 | OK |
| (11), (14) averaging conditions; (15) | CMP 98 p. 19 | lines 96–142 | OK |
| "can be easily extended to other definitions" | CMP 98 p. 20 | line 155 | OK |
| locality "depends only on U_b for b ⊂ B(c_−) ∪ B(c_+) … very important role" | CMP 98 p. 24 | line 357 | OK (the author does not quote this; see §2.2) |
| axial gauge, "|A_b| < 2|b_− − y|α_0 ≤ 2dLα_0", (48), (49) | CMP 98 p. 25 | lines 396–470 | OK |
| Proposition 1, (51), Proposition 2 | CMP 98 p. 26 | lines 472–505 | OK |
| (58) | CMP 98 p. 27 | line 526 | OK |
| (1.15), "determine uniquely an element in each orbit" | CMP 99g p. 78 | lines 159–166 | OK |
| Lemma 1, (1.25), "(d−1)(L−1)2α_0L^{−2}" | CMP 99g p. 79 | lines 207–218 | OK |
| global axial gauge, (1.129) | CMP 99g p. 98 | lines 1092–1096 | OK |
| "momentum representation" | CMP 95 line 306 | line 306, p. 23 | OK |
| "Δ_a is a positive operator" | CMP 95 | line 633, p. 30 | OK |
| "Generalized Random Walk Expansions", □^n of size (2+2n)ML^jη | CMP 99p line 951 | lines 951–962 | OK |
| Theorem 1, (8); lift (11); "k = 1 … U_0 = V_0"; Prop. 2 | CMP 102 pp. 279–281 | lines 104–210 | OK; (11) is on p. 279, not p. 280 |
| (2.1), (2.3) "100 MR_j … rectangular parallelepiped" | CMP 119 pp. 254–255 | lines 629–660 | OK |
| (2.23) description, "fully renormalized", "does not require any renormalization" | CMP 119 pp. 258–259 | lines 834–845 | OK |
| (2.29), (2.32) | CMP 119 p. 260 | lines 890, 916 | OK |
| (3.58)–(3.61), "usual implications", "Considering reflections/permutations", "possible definition of the β-function" | CMP 119 p. 282 | lines 2050–2066 | OK |
| Theorem 1 | CMP 119 p. 262 | line 1017 | OK |
| "ten layers of MR_k-cubes" | CMP 122 I p. 177 | line 123 | OK |
| "essential use of the fact … rectangular parallelepipeds", "slightly awkward definition" | CMP 122 I pp. 195–196 | lines 1079–1105 | OK |
| "averages over d! permutations … 2^d reflections, N_i = 1/(2^d d!)" | CMP 122 I p. 201 | line 1376 | OK |
| Theorem 1 | CMP 122 II p. 355 | line 31 (first page, header 356 follows) | OK |
| "deserve detailed analysis and further publication" | CMP 122 II p. 356 | line 55 | OK |
| Lemma 4.1 | template 1631–1636 | 1631–1638 | OK |
| (4.3) and alias computation | template 1770–1800 | 1773–1802 | OK |
| "C4 covariance; reflection transports it" | template 1950–1952 | 1950–1952 | OK |
| §5.1 quarter-turn averaging | template 2128–2133 | 2131–2136 | OK |
| (5.2), "same-step Lipschitz bounds … inclined first step" | template 2179–2188 | 2180–2188 | OK |
| Lemma 5.6 | template 2727–2731 | 2727–2731 | OK |
| Prop 6.2 "need not equal H" | template 3129–3131 | 3128–3130 | OK |
| Prop 6.3 statement and two-boundary proof | template 3215–3251 | 3213–3251 | OK |
| Prop 9.1 | template 4146 | 4146 | OK |
| Prop 9.3, "identical B*_N by the reflection covariance" | template 4420–4426 | 4419–4428 | OK |
| Prop 10.2 "Finally, let O_+ …" | template "line 4620" | Prop starts 4620, sentence at 4628–4630 | OK |
| Figure 2 caption | template 4665–4668 | 4665–4668 | OK |
| "Put one microscopic regulator …", (10.7), "Apply Equation (6.8) and Corollary 9.2 …" | template 4699–4731 | 4699–4731 | OK |
| Prop 10.3 proof | template 4807–4813 | 4807–4813 | OK |
| (14.13) | template 6198–6200 | 6198–6200; Prop 14.4 at 6189; §15.1 at 6502 | OK |

Conclusion on sourcing: no fabricated or misplaced quotation. One page slip (CMP 102 (11): p. 279). One omission that matters: the author never quotes Balaban's locality property of the averaging (CMP 98 p. 24), and T_R violates it (§2.2 below).

---

## 2. The "proved here" items, recomputed

### 2.1 Cell geometry and comb paths (ledger item 1)

Recomputed: |B(0)| = 625; no boundary sites; connected; all 24 comb orders from the centre stay inside for all 625 sites (0 failures); one order gives 624 edges = spanning tree. CONFIRMED.

The written proof is wrong. The author says the horizontal half-chord of the rotated square through its centre equals its horizontal half-extent, "both (5/2)(cos θ + sin θ) = 7/2". The half-extent is 7/2. The half-chord is (5/2)/max(cos θ, sin θ) = (5/2)/(4/5) = 25/8 = 3.125 < 3.5. The lattice statement survives only because no site has |x_1| in (3.125, 3.5): sites have |x_1| ≤ 3. The exhaustive check is the proof; the chord argument is not.

The generalization to "tilted cubes at scale 0" (E3, ledger item 1 second sentence) is FALSE. For a coarse-frame cube of side 5n intersected with Z⁴ (projection to the (1,2)-plane), half-chord = 0.625·side and half-extent = 0.7·side. Sites in the gap exist once the side is ≥ 15:

| side | sites | x_1-first comb path leaves | example |
|---|---|---|---|
| 5 | 25 | 0 | — |
| 10 | 97 | 0 | — |
| 15 | 225 | 2 | (10, 1): the point (10, 0) is outside |
| 20 | 393 | 4 | (−13, −2) |
| 25 | 625 | 8 | (−17, −2) |

Balaban's cubes have side M = L^m fine units with M large, so every coarse-frame cube at scale 0 has side ≥ 15 fine units. E3 "cubes: proved" must become "cubes: open; new tree needed", the same as the parallelepiped case. (1.129) at scale 0 is not established.

Minor: the "ℓ¹-diameter from the centre at most 12" used in E1/E2 is loose; the true maximum ℓ¹ norm of a cell site is 7 (|x_1|,|x_2| ≤ 3, |x_3|,|x_4| ≤ 2). Harmless.

### 2.2 CMP 98 Proposition 1 with constant 35 (ledger item 2)

Recomputed. With opposite legs translates of each other (loops of type (a, b, a, b)), every one of the 35 × 35 planar loops has shoelace area 25 and exactly 25 plaquettes with nonzero winding. For the mixed plane (v_1, 5e_3) the ribbon has 7 × 5 = 35 plaquettes. So the leading constant max(25, 35) = 35 is right, and (3,4)-plane plaquettes give 25. CONFIRMED, with three caveats.

(a) The author's (R3) averages the transporter [x, x+v_μ] over all 35 staircases. The telescoping (48) then holds at the linear level only after pairing each staircase a from x with the same staircase a translated to x + v_ν. The author's text speaks of "canonical staircases"; with unpaired legs (a, b, c, d) the loop can have up to 41 or more plaquettes with nonzero winding (300 random samples). The paired decomposition is available, so the result stands, but it should be stated.

(b) Balaban fixes the axial gauge in the neighbourhood Δ(p') (2^d blocks around the corner y) by comb paths from y. For the inclined case Δ(p') is a tilted region of side ≥ 10 cells, and by §2.1 comb paths from y leave tilted cubes of side ≥ 15. The bound |A_b| ≤ (ℓ¹ distance)·α_0 then needs the plaquette bound on a larger region than Δ(p'). This only enlarges the locality neighbourhood of Proposition 2; it does not change the constant. The author does not address it.

(c) Locality of the averaging fails. Balaban, CMP 98 p. 24, line 357: "this definition is local in the sense that Ū_c … depends only on the bond variables U_b for b ⊂ B^k(c_−) ∪ B^k(c_+). This property will play a very important role in the future." For T_R with (R3), I enumerated all (x, staircase) pairs for v_1 = (3,4,0,0): of 625 × 35 = 21875 pairs, 7700 (35.2%) leave B(y) ∪ B(y+v_1); 2400 do not cross from B(y) to B(y+v_1) exactly once. Even the single canonical staircase (x_1 first) from x fails for 300 of the 625 sites x (example: x = (−3,0,−2,−2), the path passes through (−2,2,−2,−2), which lies in neither cell). The same numbers hold for v_2; v_3, v_4 are fine. The author's E7 check covers only the canonical staircase from the centre y, which is the one case that works. Consequences: Ū(c) depends on bonds in third cells; the corridor B(c) of CMP 109 p. 267 does not contain the paths; E5, E7, E8 (locality of E^{(1)}) and E11 all inherit this. A repair exists (route each x through the centre: comb path x → y, canonical staircase y → y+v_μ, comb path y+v_μ → x+v_μ; all three pieces stay in the two cells), but then [x, x'] is not a translate of a fixed segment, and the E1 count must be redone for that choice. This is the most important defect in the definition of T_R.

### 2.3 Symmetry group and invariant forms (ledger item 3)

Recomputed independently (explicit nullspace, not the character formula): |Stab_{B_4}(5R_θZ⁴)| = 32, 16 elements of determinant −1, every element block-diagonal with (1,2)-block a power of the quarter turn and (3,4)-block a signed permutation, so G_R = C_4 × B_2. Also |B_4 ∩ R_θ B_4 R_θ^{−1}| = 32. Invariant symmetric bilinear forms on Λ²R⁴: dimension 3 under G_R, 1 under B_4; the three forms are diagonal in the plaquette basis with diagonals (0, ½, ½, ½, ½, 0), (0,0,0,0,0,1), (1,0,0,0,0,0), i.e. O_mix, O_34, O_12. The ε-form (Hodge pairing) is not G_R-invariant. CONFIRMED.

Proof for every planar Pythagorean angle (the author relies on the script only). Let g ∈ B_4 preserve Λ' = √m R_θ Z⁴ with θ/π irrational. g maps coordinate 2-planes to coordinate 2-planes. Λ' ∩ (1,2)-plane is the rotated square lattice of index m; Λ' ∩ (1,3)-plane is mZ × √m Z of index m^{3/2}·… (for m = 25: 25Z × 5Z, index 125 ≠ 25). So g preserves the (1,2)-plane and the (3,4)-plane. On the (1,2)-plane g ∈ D_4; a reflection s satisfies s R_θ = R_{−θ} s and preserves R_θZ² only if R_{2θ} ∈ D_4, i.e. 2θ ∈ (π/2)Z, false. So g|_{12} ∈ C_4, g|_{34} ∈ B_2, and G_R = C_4 × B_2 for every planar Pythagorean rotation. Count: Λ² = ⟨e_12⟩ ⊕ ⟨e_34⟩ ⊕ (R²_{12} ⊗ R²_{34}); invariants of Sym² are 1 + 1 + (Sym²V)^{C_4}⊗(Sym²W)^{B_2} ⊕ (Λ²V)^{C_4}⊗(Λ²W)^{B_2} = 1 + 1 + 1·1 + 1·0 = 3, and no cross terms (e_12·e_34 is odd under x_3 ↦ −x_3; e_12·e_{ai} needs an invariant in V ⊗ W, none). So three couplings are forced for every planar inclined step, not only for m ≤ 45.

Search output reproduced (author's script, 125 s): m ∈ {5, 9, 13, 17, 25} minimum 3; stab_search_big.out: m ∈ {29, 37, 41, 45} minimum 3 (m = 29, 41, 45 actually have minimum 4; only m = 37 reaches 3). Nuance the author does not state: the minimum-3 cases at m = 13 and m = 37 have |Stab| = 24 with no reflections; their image in S_4 is A_4, the group is {±1} × A_4, the ε-form is invariant, so these have 2 parity-even marginal forms plus a θ-type form. They are non-planar rotations, outside Lemma A as stated. The planar family is the only one with 3 parity-even forms and reflections.

Script note: inclined_cell_geometry.py prints "three averaged basis forms e12, e13, e34" but the indices 0, 1, 5 are the forms e12·e12, e12·e13, e12·e34; the last two project to zero, which is why the printed rows are zero. The rank-3 result is unaffected.

### 2.4 σ'-invariance (ledger item 4)

Recomputed: σ' = R_{2θ}s satisfies R_θ^{−1}σ'R_θ = diag(1, −1, 1, 1), so σ' is the coarse-frame reflection x'_2 ↦ −x'_2 and preserves Λ'. All three G_R-invariant forms are σ'-invariant; the invariant forms under ⟨G_R, σ'⟩ still number 3. CONFIRMED. The identity ρ_2 = σ'ρ_1 follows from LEMMAS.md B2–B3 as the author says (s_*μ_Wilson = μ_Wilson; (R_{2θ})_* then gives the rotated regulator; Q_{−θ} ∘ R_{2θ} ∘ s = σ' ∘ Q_θ).

### 2.5 Two-boundary iteration lemma (ledger item 5)

The two intermediate bounds are right: U ≤ u_* + (εW + F)/(ρ − q) and W ≤ a(CU + F)/(1 − aρ). The final statement "if (ε/(ρ−q))·(aC/(1−aρ)) ≤ 1/2 then U + W ≤ 4(u_* + F/(ρ−q) + aF/(1−aρ))" is FALSE. Counterexample: ε = F = 0, a = 1, C = 10, ρ = 1/2, q = 1/5, u_K = u_* = 1. The product condition holds (it is 0). But |λ_K| ≥ aC u_K = 10, so W ≥ 10 > 4. Random instances give (U + W)/bound up to 7.2. What is true: U ≤ 2(u_* + F/(ρ−q) + (ε/(ρ−q))·aF/(1−aρ)) and W ≤ (aC/(1−aρ))U + aF/(1−aρ), hence u_j + |λ_j| ≤ C'ρ^{K−j} with C' depending on (q, ρ, ε, a, C). The qualitative conclusion (endpoint matching at rate ρ) survives; the explicit constant does not. The template (lines 3240–3249) claims no explicit constant, only that "these inequalities prove Equation (6.8)". CORRECTED.

### 2.6 E7 crossing check

Recomputed for the canonical staircase from the centre: labels along the path are AAAABBBB for v_1 and v_2 (crossing at the 4th bond, i.e. (3,0,0,0) → (3,1,0,0) for v_1) and AAABBB for v_3, v_4. CONFIRMED for that one path. But see §2.2(c): the property fails for the staircases from most other x, so "b_0(c) lies in the corridor" is established only for the centre path, and the coefficient of B'(b_0(c)) in (QB')(c) is not computed.

### 2.7 E15 recursion

Σ_{k≤K} g_k² with 1/g_k² = 1/g² + β(K−k) equals Σ_n 1/(1/g² + βn) ≈ (1/β) log(1 + βg²K): divergent. Π_k(1 + λg_k²) ≈ (βg²K)^{λ/β}: numerically, λ = 0.5, β = 1, g² = 0.1, K = 10⁴ gives 30.5 versus 31.6. Relative anisotropy at the terminal scale ≈ g²|δ_1|K^{λ/β}, so (M5) fails for λ > 0 and holds for λ ≤ 0. The recursion δ_{k+1} = δ_k(1 + g_k²Λ_k) is a one-loop model, not derived from Balaban's objects; the author says so. The claim that the metric-type direction has zero universal running is standard (coordinate rescaling) but not proved here. The sign of the Lorentz-violating eigenvalue is left open; one-loop continuum results for CPT-even Lorentz-violating Yang–Mills exist in the literature (Colladay–McDonald type calculations) and could fix the universal sign; not checked here. CONFIRMED as a model; not a proof.

---

## 3. Grades for the five numbered conclusions

(1) G_R = Stab_{B_4}(5R_θZ⁴) has order 32, three marginal couplings. CONFIRMED. Strengthened: this holds for every planar Pythagorean angle (proof in §2.3), not only the searched m.

(2) The template's rotation argument compares the same microscopic field under two regulator orientations; no ordinary-versus-inclined identification is used. CONFIRMED. Lines 4628–4630 state the comparison of orientations 1 and O_+²; lines 4699–4731 use two inclined first steps, the ordinary B_N for both, and (6.8) after the first step; Prop 6.2 (3128–3130) says the inclined terminal couplings "need not equal H"; (14.13)/Prop 14.4/§15.1 live in Part II (lines 6189, 6200, 6502) and are used for the offset relations and uniqueness. LEMMAS.md's pointer to §15.1 for B4 was wrong, as the author says. O3_TEMPLATE.md §3 agrees.

(3) Conditional Proposition (B4-i…v + fixed-torus limit ⇒ L = (R_{2θ})_*L). CONFIRMED as a conditional statement, with two hypotheses the author does not list: (i) Balaban's Theorem 1 on a fine torus with period lattice in N·5R_θZ⁴ (a tilted torus); his T_ε in (0.1) is an axis-parallel box, and the ordinary coarse-frame steps need a coarse-frame box, so the whole induction must be run on a tilted fine torus (fine-frame cubes of π_0 do not tile it); (ii) existence of the fixed-torus limit for both inclined trajectories, which the author takes from the ordinary scheme (correct in the template, where the laws are laws of the same microscopic field). Also the proof needs the (R5) placement of all scale-≥1 geometry in the coarse frame for σ'-covariance of T_1; that is a definition, fine.

(4) Table E1–E15 with transfer status. CORRECTED:
- E3 "cubes: proved" → false; comb paths leave tilted cubes of side ≥ 15 (§2.1). Verdict for cubes at scale 0 is W, same as parallelepipeds.
- E5 lift "V_{0,b} = exp(iA(b')/7) on the 7 bonds of the canonical staircase from y" does not reproduce V to first order: in (0.12) only the x = y term sees the full value; the other 624 terms see 1 or partial overlaps, so the linear average is a small fraction of A(b'). Balaban's own lift (V_{0,b} = V_c on every bond with b_− ∈ B(c_−), b_+ ∈ B(c_+), and 1 inside cells) transfers verbatim if and only if every averaged path stays in the two cells and crosses once, which fails for 35% of the (R3) staircases (§2.2(c)). E5 needs the repaired path family first.
- E7 "crossing once" is proved for the centre path only (§2.6).
- E1: constant 35 correct; pairing and the Δ(p') gauge should be stated (§2.2(a),(b)).
- E2: spanning tree correct; "12" loose (7). OK.
- E9/E12: three-coefficient reduction correct by invariant theory (§2.3); Laurent normalization not written, as the author says.
- E13: iteration lemma constant wrong (§2.5); qualitative content right.
- E8, E11: not checked beyond reading; the locality failure of §2.2(c) adds a scale-0 non-locality the author does not list.
- The table omits one item: Balaban's induction on a tilted fine torus (see (3)(i)).

(5) Obstacle E15: δ_{k+1} ≈ δ_k(1 + g_k²Λ_k), Σg_k² divergent. CONFIRMED as a model statement (§2.7). The author's own caveats (one-loop, sign unknown, no Balaban analogue) are accurate.

---

## 4. Is the three-coupling reduced class forced?

Within the author's framework (fine lattice Z⁴, coarse lattice a rotated scaled copy AZ⁴ with A/√m of infinite order, ordinary steps in the coarse frame): yes.
- The symmetry of the pair (Z⁴, Λ') fixing a coarse site is exactly B_4 ∩ OB_4O^{−1} (affine symmetries x ↦ gx + t need t ∈ Λ' and g ∈ B_4). No choice of cell can enlarge it; a cell can only break it further.
- N_{O(4)}(B_4) = B_4 is finite, so no infinite-order O gives the full B_4.
- For planar O (the only case Lemma A covers) the stabilizer is C_4 × B_2 for every Pythagorean angle (§2.3), so three parity-even couplings are forced, not only for m ≤ 45.
- One form only would need the stabilizer to act irreducibly on Λ²R⁴ with a reflection present; its image in S_4 would have to contain A_4. The exhaustive search finds no such lattice for m ≤ 45. The A_4-type lattices (m = 13, 37) have no reflections and carry a θ-type form; they do not help.
Not considered by the author (and not required by the task): a different fine lattice (e.g. D_4 with point group W(F_4), order 1152) or non-cubic coarse lattices. These leave Balaban's framework, so "forced" is correct relative to the author's stated setting.

---

## 5. Error list (severity ordered)

1. [Definition defect] T_R with (R3) is not block-local: 35% of the averaged staircases leave B(c_−) ∪ B(c_+); Balaban's locality property (CMP 98 p. 24) fails; E5's lift is wrong; E7's corridor claim is proved for one path only. A repair (route through the centre) exists but changes E1's count and (R3).
2. [False claim] "The same holds for tilted cubes at scale 0" (ledger 1, E3): false for side ≥ 15; E3 cubes is W, not T*.
3. [Wrong proof, true statement] "half-extent equals half-chord, both 7/2": half-chord is 25/8. The comb-path property of the side-5 cell holds only by the exhaustive check.
4. [Wrong constant] Iteration lemma final bound U + W ≤ 4(…) is false; qualitative conclusion holds with a constant depending on all parameters.
5. [Unlisted hypothesis] Balaban's theorem on a tilted fine torus (his T_ε is an axis box) is needed for the fixed-torus comparison; not in the E-table.
6. [Imprecision] E1 telescoping needs the paired decomposition of the 35-staircase average; the axial gauge on Δ(p') needs a larger plaquette-bound region.
7. [Minor] "ℓ¹-diameter 12" is 7; CMP 102 (11) is on p. 279; geometry script labels; stabilizer script runtime 125 s; m = 29, 41, 45 minima are 4 (statement "minimum 3" is true only as a minimum over the set).

---

## 6. Summary verdict

Ledger "proved here" items: 1 CORRECTED (cell: confirmed by exhaustive check; proof wrong; tilted-cube extension false). 2 CONFIRMED with caveats (35 correct; locality of the averaging fails, which is a separate defect of T_R). 3 CONFIRMED and strengthened (holds for all planar Pythagorean angles). 4 CONFIRMED. 5 CORRECTED (constant).

Numbered conclusions: (1) CONFIRMED. (2) CONFIRMED. (3) CONFIRMED as conditional, plus two unlisted hypotheses. (4) CORRECTED (E3, E5, E7 as above). (5) CONFIRMED as a model.

The structural picture of LEMMA_B4.md stands: one inclined step breaks B_4 to C_4 × B_2, forces three marginal couplings, the mirror trajectories share them exactly, and the template's argument needs no ordinary-versus-inclined identification. The most important correction is that the author's own averaging (R3) is not block-local and the scale-0 geometry (tilted cubes) does not admit Balaban's comb-path gauge; both must be repaired before E1–E8 can be called transfers.
