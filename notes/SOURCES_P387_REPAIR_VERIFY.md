# SOURCES_P387_REPAIR_VERIFY — adversarial verification of SOURCES_P387_REPAIR.md and numerics/p387_counterexample.py

Opus, 2026-10-29. Firewall kept. Saved by the coordinator from the verifier's report (the disk was full). Images read: CMP 122 II pp. 380–389, CMP 122 I p. 177 (150 dpi).

VERDICT: CONFIRMED WITH CORRECTIONS.

1. Page statements: all §1 quotes CONFIRMED. (A) and (B) match word for word. p. 384 defines j(Z) as the index of the first large-field region in Z.

2. (B) false: CONFIRMED.
- Script rerun: output matches exactly; the offset lasts t+1 levels.
- Independent check with explicit 1D cell sets (not the box formula): L ∈ {2,3,4,13}, ratios from {1,L,L²}, consecutive ρ = 1 allowed: offset 1 in 4262 of 4262 cases.
- Box formula and back-solve b_{m−1} = ρ_m(b_m+10): CONFIRMED.
- CORRECTED: "H/L^m" should be H/Πρ_i (ρ = L² steps shrink by up to L^{2m}). The bound still holds because H ≥ 10b ≥ 100Πρ_i.
- CORRECTED: K_1 = 0 is not allowed (K ≥ 1 on p. 384). Fix: any box of side ≥ 21 is an S-image, so the family starts one level later.
- (B′) CONFIRMED. ⌈o/ρ⌉ evolution checked. n_1 = 6 at L = 13, 10 at L = 4. "No two consecutive ρ = 1" follows from SOURCES_UW_FINAL_VERIFY §6.3. Random 2D check: 320 of 320.
- §3.4 volume-form defect unbounded: CONFIRMED. The bound "|R_m| ≤ 2d·49^{d−1}" is UNSUPPORTED outside boxes; nothing uses it.

3. (A′) with join constant √d: CONFIRMED. Exact (A) open: CONFIRMED. The §2.2 claim "two SHORTEST trees can be disjoint" is UNSUPPORTED: the combs are valid trees, but nothing shows they are shortest. The E-margin argument: CONFIRMED (Helly's theorem gives d′ > 0 ⇒ d′ ≥ 1). Note: d′ is not monotone under inclusion; Balaban's p. 386 and the E-margin step use it, Lemma G does not.

4. Local devices (a), (b2), (c): CONFIRMED. (b1): CONFIRMED only as an [I] reading. The general "no local device works" claim: [P-sketch] only.

5. Lemma G: CONFIRMED line by line, relative to (I1)–(I7).
- T = 10 at d = 4, L = 13 (13^5 ≥ 64512).
- G-3 and the G-4 recursion: no errors. Q_* recomputed: correct.
- G-5 Claims 1 and 2: CONFIRMED (merges ≤ new regions on every prefix; greedy assignment works).
- CORRECTED (I6)/G-1: "r ≤ 31 is kept" is not inductive (31 → 41 under a ρ = 1 step). The induction must carry the two-case invariant: r ≤ 18 after a ρ ≥ L step, r ≤ 28 after a ρ = 1 step.
- CORRECTED side bound: 64 becomes 84 after a ρ = 1 step; 84 < 100, so the conclusion holds.
- Episodes must include their first level (accounting detail, no extra cost).
- (I1), (I4): CONFIRMED as [V+I]. CMP 122 I p. 177 (1.1) factors T over the components satisfying (i), (ii), and pp. 381/383 define Π′ on those components. "Each such component is processed at that step" is still the construction rule [I].

6. Cor G1 / (1.89) as printed: CONFIRMED. Prop R: CONFIRMED. Torus and wrapping: CONFIRMED.
MAIN CORRECTION: the Cor G2 conversion d_k ≤ c_dR_k(d′+1) is false. The correct bound is d_k ≤ √d R_k^d V (SOURCES_FX_O1 §3). SOURCES_FX_R2 §5 already showed that the final expansion needs volume decay per M-cube, and Lemma G gives that directly:
T′_k(Y)1 ≤ exp(−κ_vol·#M(Y) − 2p_0), κ_vol = min(¼γ_0A_1²p_0², ½p_0)/(63^d C_Φ R_k^d).

7. p. 385 misprint (printed "R_{m+1} = LR_m", should be R_{m+1} = L^{−1}R_m): CONFIRMED on pp. 384/385 and p. 177. The dropped ½ in (1.85): CONFIRMED on p. 386; upgrades from [I] to [V].

8. Canon:
- T, C_W, C_Φ, Q_* at N-050/N-060: CONFIRMED.
- (G1), (G2) at N-470: CONFIRMED; their inputs come earlier, and N-410's p_0 > (d+5)r gives the needed powers.
- (G3): CORRECTED to the volume form min(¼γ_0A_1²p_0², ½p_0) ≥ 63^d C_Φ R^d κ_final. It holds, since p_0 > dr.
- (Rγ1), (Rγ2): CONFIRMED; the canon slot of B′, D′ was not located.
- No new edge, no cycle: CONFIRMED.
- C_1^{FX}: retire only after a full consumer grep.

9. Consumers:
- FX_O1 §4: CORRECTED; superseded through the volume form.
- FX_R2: superseded (CONFIRMED). Its §3 used the misprinted reading, but its bound L+2r ≤ 3L covers all three ratios, so nothing breaks.
- FX §6.1, FX_D 5.2, FX_O23 Step 5, D4D5, UW_WRAP Lemma W, U_ELL §6.1: UNSUPPORTED — not grepped (disk full). Open task.

## Safe status (proposed)
- R-013 large-field input: (1.80) in margin form, (1.89), and the volume-form improved bound are [P relative to (I1)–(I7)], verified once with corrections. Balaban's Case 2 proof is invalid as written; his conclusions stand.
- (U-W): R item (3) of SOURCES_UW_FINAL_VERIFY §7 is replaced by Lemma G (verified with corrections). Remaining R items: (1), (2). No item contains ℓ.
- L-319: do not upgrade to [P] until the consumer grep is done.
- Canon: add the new entries with the corrected (G3). Keep N-330's C_1^{FX} and N-310's FX_R2 M-entry for now.
- Headline: none.

## Report
Confirmed with corrections. The page quotes of (A), (B), (1.79)–(1.89) and the p. 385 misprint match the images. The missing ½ in (1.85) is now [V]. (B) is false: the script and an independent cell-set check agree. Two small proof errors are fixed: the shrink factor, and K_1 ≥ 1. (B′) holds with n_1 = 6 at L = 13. Nothing shows the §2.2 combs are shortest trees. Lemma G holds line by line; the radius invariant needs two cases, and the side bound is 84 < 100. Main correction: d_k ≤ √dR^dV, not R(d′+1), so Cor G2 and (G3) use the volume form with R^d, which holds since p_0 > dr. The consumer grep is incomplete.
