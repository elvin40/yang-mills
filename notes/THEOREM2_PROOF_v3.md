# Theorem 2 — proof chapter, version 3 (shortest route; Route K reduction verified)

Written 2026-10-27/28 (Opus). v3 = v2 (THEOREM2_PROOF_v2.md) with the corrections of THEOREM2_PROOF_v2_VERIFY.md §A–§N applied. Nothing else is changed. It does not edit v1 or v2. It is not itself verified as a whole document. The change log is at the end.

Tag legend.
- [proved+verified]: proved in a project file and confirmed by an independent verifier file.
- [proved+verified, conditional on X]: the implication is confirmed; X is open or assumed.
- [proved, unverified]: proved in a project file; no verifier has graded it yet.
- [Lean]: formalized in Lean 4 + Mathlib, no `sorry`, axioms propext, Classical.choice, Quot.sound only.
- [verified quote]: read on the page image of Balaban's paper (reports/BALABAN_EXCERPTS_CHECK.md or a verifier file).
- [numerical, reproduced]: floating-point result reproduced by a verifier. [numerical, run by the verifier]: run once, by a verifier. [numerical]: not reproduced. None is certified.
- [argued]: a plausibility argument, not a proof. [open]: no proof. [refuted]: shown false.
- [Balaban]: an input taken from Balaban's published papers, used as stated there.
- [not written]: a proof plan; no project file contains the proof.

Range of L. Balaban assumes L odd, L > 11, as a standing assumption for the whole of CMP 109 (pp. 251–252). His construction of β_j(g) for g > 0 and his inductive assumption (H0) are therefore available only at odd L > 11. Every statement below that uses (H0) or β_j(g) at g > 0 is stated for odd L > 11, or carries "(H0) and Balaban's construction at this L" as an explicit hypothesis. Statements about the one-loop quantities β_j(0), S_k, and the symbols σ_j hold for odd L ≥ 3.

## §1 Statement

### 1.1 Balaban's statements [verified quote]

Theorem 2 (CMP 109 (1987), p. 259): "Let d = 4, G = SU(2), and let γ be a sufficiently small positive constant, then for a sufficiently small positive g there exists a bare coupling constant g_0 = g_0(ε, g) such that the sequence of the effective coupling constants g_k is contained in the interval ]0, γ], and g_K = g. Moreover, there exist constants β, β′, 0 < β ≤ β′, such that g_k satisfy the inequality 1/g² + β log(L^kε)^{−1} ≤ 1/g_k² ≤ 1/g² + β′ log(L^kε)^{−1}. (0.31)" Balaban adds that the proof "will be given in a separate paper". It was never published (CMP 122 II p. 355, verbatim: "has not been published yet, so we have Theorem 1 with the assumption").

Theorem 1 (CMP 122 II p. 355): "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective densities ρ_k have the form, and satisfy all the conditions and bounds, described in Sect. 2 [III]." The bound (0.1) there reads χ_k exp[−(1/g_k²)A(U_k) − E_−|T_η|] ≤ ρ_k ≤ exp E_+|T_η| (corrected reading, BALABAN_EXCERPTS_CHECK item 3).

Setting. ε = L^{−K}, so log(L^kε)^{−1} = (K − k) log L. u_k := 1/g_k². Recursion (CMP 109 (0.18)/(0.20)): u_{k+1} = u_k − β_{k+1}(g_k). The increment β_{k+1} depends on the whole history g_0, …, g_k (CMP 109 p. 298, [verified quote]). β_j(0) is the one-loop (Gaussian) increment; it is history-independent by definition. Balaban assumes L odd, L > 11, for the whole paper (CMP 109 pp. 251–252, OCR line 124, verbatim confirmed in THEOREM2_PROOF_VERIFY Step 6).

### 1.2 What Balaban's Theorem 1 actually needs (LEMMA_DPRIME_SWEEP §2, §7)

The quoted hypothesis of Theorem 1 is only g_k ∈ ]0, γ]. The proof uses more. CMP 119 Theorem 1 (p. 262) assumes "(I.0.33)", a misnumbered reference to (0.31) of CMP 109. Its working form is CMP 119 p. 255–256 (2.6)–(2.9), for scales m < n:
- (2.6) g_n ≤ (1 + g_n²β′(n − m))^{1/2} g_m and g_m ≤ (1 + β_0) g_n;
- (2.7) (log g_n^{−2})^p ≤ (1 + β_0)(log g_m^{−2})^p and (log g_m^{−2})^p ≤ (1 + g_n²β′(n − m))^{β_0}(log g_n^{−2})^p;
- (2.8), (2.9) the same for ε_j = g_j p_0(g_j) and R_j.
Here β_0 is Balaban's small constant (1/7 in CMP 122 II p. 389), not a coupling. [verified quote for (2.6)–(2.9): page images, LEMMA_DPRIME_SWEEP §1; the sweep itself is single-author, see §2.3.]

In u-variables these follow from two pairwise bounds:
- (P-up) u_m ≤ u_n + B′(n − m), with no additive constant;
- (P-low) u_m ≥ u_n + β(n − m) − D′, with β > 0, D′ ≥ 0 fixed,
plus the smallness condition
- (S) γ^{−2} ≥ c_sw·D′, c_sw = max(2, 1/(1 − (1 + β_0)^{−2})) = 64/15 at β_0 = 1/7, and γ ≤ γ_*(β_0, β, B′, p_0, p_1, r, ν, κ_0) (the conditions that literal (0.31) also needs). γ_* is free of the D′-ratio conditions, but it depends on R through B′ (it contains γ²B′ ≤ (1 + β_0)² − 1 with B′ = 5b/4 + 2R). The order of constants in §6 (R before γ) handles this.
β_0 must be fixed before γ.

### 1.3 The weak form proved conditionally in this chapter

Theorem 2w (weak form). Let G = SU(2), d = 4, L odd, L > 11 (equivalently: L odd ≥ 3 with (H0) and Balaban's construction of β_j(g) at this L as an explicit hypothesis). There are γ > 0, g_1 ∈ ]0, γ], β > 0, B′ ≥ β, D′ ≥ 0 such that for every K ≥ 1 and every g ∈ ]0, g_1] there is a bare coupling g_0 = g_0(K, g) with
- (b) g_k ∈ ]0, γ] for 0 ≤ k ≤ K, and g_K = g;
- (c′) for all 0 ≤ m ≤ n ≤ K: u_n + β(n − m) − D′ ≤ u_m ≤ u_n + B′(n − m);
- (S) holds for γ, D′.
Consequence: Balaban's (0.31) holds up to the additive constant D′ on the lower side, with constants β/log L and B′/log L. The two-sided bound fixes 1/g_k² up to constants, as required.

Status: [proved+verified, conditional on (B2) and the fixed-level inputs of §4] by Route K (Theorem K + Lemma D″). Second route: [proved, unverified, conditional on (U), (Bθ), and the plane-wave defects] by Route B (BETA_FP_PW Theorem 3.2 + Lemma D″). Both routes also need (H0) at this L and L5 (§2.4). See §4.

### 1.4 Literal (0.31)

- (L1) Literal (0.31) for every K ≥ K_0 and every g ∈ ]0, γ]. Needs eventual uniform positivity: there are J and β_* > 0 with β_j(0) ≥ β_* for all j > J, plus sup_j |β_j(0)| < ∞ (Lemma D′ (d), §2.1). [proved+verified; Lean] as an implication. Theorem K and Theorem B do NOT give eventual positivity: they bound window sums, not single increments. Eventual positivity follows from the convergence route (§7), which is open.
- (L2) Literal (0.31) for every K ≥ 1. Needs inf_j β_j(0) > 0 and sup_j β_j(0) < ∞ (Lemmas D + E). If β_j(0) → β_∞ > 0, then "every β_j(0) > 0" is equivalent to inf_j β_j(0) > 0 (Lemma D′ Step 8). [proved+verified; Lean] as an implication. Inputs open.
- Literal (0.31) is not needed for Theorem 1: §1.2 shows the proof uses (c′) + (S). Literal (0.31) is used directly in one place only, the alternative choice of ε_0 in CMP 119 p. 248, which Balaban does not adopt.
- Necessity. Literal (0.31) at every K ≥ 1 forces β_K(0) ≥ β log L > 0 for every K (window k = K − 1, let g → 0 using (H0); so L odd > 11). [proved, unverified; elementary; THEOREM2_PROOF_VERIFY Point 5(a) agrees.] So certified early steps are needed only for (L2), not for Theorem 1.

## §2 Shooting lemmas

Notation: u_k = 1/g_k², t = 1/g², T(k, K) := Σ_{i=k+1}^{K} β_i(g_{i−1}). Clamp φ(u) := max(u, 1/γ²)^{−1/2}. Lemmas D′, D″, D, E are abstract statements about a sequence of functions β_j. Applied to Balaban's β_j(g), they need L odd > 11 (or (H0) at this L) and L5.

### 2.1 Lemma D′ (shooting without early positivity) [proved+verified; Lean]

Sources: LEMMA_DPRIME.md §1–§2; LEMMA_DPRIME_VERIFY.md grades 1, 2, 5 (CONFIRMED). Step 7 of that file also holds grades 3, 4, 6, which are CORRECTED (Remark 1 overclaim, misreads in §5, ledger); this chapter uses none of them except through the sweep (§2.3). Lean: lean/YmLean/LemmaDPrime.lean (`YmLean.lemma_DPrime`, 405 lines), statement check lean/VERIFY_LemmaDPrime.md.

Hypotheses. (i) β_{k+1} continuous on [0, γ_0] and |β_{k+1}(g) − β_{k+1}(0)| ≤ C_1 g, C_1 independent of k, K. (ii) sup_j |β_j(0)| ≤ B. (iii′) there is J with β_j(0) ≥ β_∞/2 for all j > J (this is all the proof uses of "β_j(0) → β_∞ > 0").
Constants. γ := min(γ_0, γ_Bal, β_∞/(4C_1)); B′ := B + β_∞/4; D := J·B′; D′ := J(B + β_∞/2); g_1 := (1/γ² + D)^{−1/2}; K_0 := J + ⌈8D′/β_∞⌉.
Conclusions.
- (a) T(k, K) ≥ −D for all k < K along any couplings in ]0, γ].
- (b) For every K ≥ 1 and g ∈ ]0, g_1] there is g_0 with all g_k ∈ ]0, γ] and g_K = g.
- (c) u_K + (β_∞/4)(K − k) − D′ ≤ u_k ≤ u_K + B′(K − k). The upper side has no constant.
- (d) For K ≥ K_0: literal (0.31) with lower constant β_∞/8, and shooting for every g ∈ ]0, γ]. If every β_j(0) > 0: literal (0.31) for all K (Step 8 = Lemmas D + E).
Proof idea. Clamped flow ũ_{k+1} = ũ_k − β_{k+1}(φ(ũ_k)) is continuous in u_0. Its tail sums lie in [−D, B′(K − k)] for every u_0, because clamped couplings lie in ]0, γ]. IVT on [t − D, t + B′K] gives ũ_K = t. Then ũ_k ≥ t − D ≥ 1/γ² for g ≤ g_1, so the clamp is never active. The bound is derived for the clamped flow first; there is no circularity. For history-dependent β this proof needs β_{k+1} defined and continuous on the whole cube ]0, γ]^{k+1}; see L5 in §2.4.
Lean. The Lean hypotheses are weaker (ContinuousOn instead of C¹; (iii′) instead of convergence). Step 8 is `lemma_DPrime_step8` (lean/YmLean/LemmaDE.lean). Lean covers one-argument β_j(g) only, not the history form.
Remark 4 [proved+verified]: without g ≤ g_1, (b) can fail at small K (β_1 = β_2 = β_3 = −0.8, K = 3, g = γ).

### 2.2 Lemma D″ (tail-sum form; no index J) [proved+verified]

Source: KAPPA_BOUNDED.md §5.3; KAPPA_BOUNDED_VERIFY §6 (CONFIRMED: "No J needed"); hand rederivation in THEOREM2_PROOF_v2_VERIFY §A.
Hypotheses. (i) as in 2.1, and the window bound
  (5.1) T_0(k, K) := Σ_{i=k+1}^{K} β_i(0) ∈ [b(K − k) − 2R, b(K − k) + 2R] for all 0 ≤ k < K,
with b := c log L > 0 and some R ≥ 0. (Route K gives R = κ_*; Route B gives R = C_B.)
Constants. γ := min(γ_0, γ_Bal, b/(4C_1)); β := 3b/4; B′ := 5b/4 + 2R; D = D′ := 2R; g_1 := (1/γ² + D)^{−1/2}.
Conclusions. (b) of 2.1, and the pairwise bound
  (c′) u_n + β(n − m) − D′ ≤ u_m ≤ u_n + B′(n − m), 0 ≤ m ≤ n ≤ K, upper side without constant.
Proof. |T − T_0| ≤ C_1γ(K − k) ≤ (b/4)(K − k). Add (5.1). Steps 2–5 of Lemma D′ use only continuity and the bracket T̃ ∈ [−D, B′(K − k)]; this bracket now comes from (5.1). The pairwise form is the same window argument with K → n. The proof is the clamped-flow proof of 2.1; for history-dependent β the L5 caveat of §2.4 applies.
Not in Lean (the Lean lemma has hypothesis (iii′), not (5.1)). The reduction is short; formalizing it is a small task. [open as Lean work]
Literal (0.31) from (5.1) alone holds only for windows with n − m ≥ 8R/b; short windows near K are not controlled (see §1.4).

### 2.3 Lemma D″ meets Balaban's proof: the cross-scale sweep [proved, unverified (sweep); 4 of 19 table rows verified]

Source: LEMMA_DPRIME_SWEEP.md (all 12 Balaban files; OCR grep plus page image for every non-single-scale hit). LEMMA_DPRIME_VERIFY Steps 4–5 checked comparisons A–E on page images (CMP 122 I p. 192, p. 198 (1.94); II p. 381 ×2, p. 386) and corrected two misreadings of A (factor (1+β_0)²(k−j)^{β_0}; δ′_j = g_j A_1 p_1(g_j)). The five comparisons map to four table rows: A = row 11, E = row 12, C and D = row 16, B = row 18.
Result. 19 cross-scale uses of the coupling sequence (table in SWEEP §7), all in CMP 119 and CMP 122 I–II; none in CMP 95, 96, 98, 99, 102, 109, 116. Each is covered by (b) + (c′) + (S) of §1.2:
- items 1, 7, 10, 12, 17 need (P-up) with no constant (e.g. (2.6) line 1 is exactly (P-up));
- items 2, 3, 11, 13, 15, 16, 18 need (P-low) with fixed multiplicative slack (1 + β_0) or (1 + β_0)²; item 2 ((2.6) line 2) gives the constant 64/15; item 11 needs only 2.42D′;
- items 4 ((2.8)–(2.9), ε and R ratios), 6 (CMP 119 (3.7), (3.8), (3.12), (3.13)), and 9 (CMP 122 I (1.52)), the last two of the form ε_{k+1} ≤ (1 + β_0)ε_k, use both sides; they follow as items 1 and 3 do (item 4 from items 1–3);
- item 14 (CMP 122 I p. 200, R_{k−N_0+1} vs R_k) uses the lower side; it follows as item 3 does;
- item 5 (CMP 119 (2.31), (2.46): Σ_j g_j^{κ_0} ≤ g_n^{κ_0−6}) needs linear growth (P-low) and γ^{−2} ≥ 2D′;
- item 0 is CMP 119 Theorem 1 assuming (0.31); its proof works with (2.6)–(2.9);
- item 8 (CMP 119 p. 284) is in a sketch, not load-bearing.
Caveats [open]: (1) the sweep is a grep plus page images, not a line-by-line read; (2) "Similar inequalities hold for other constants, which will be introduced later" (CMP 119 p. 256) was not located; (3) Balaban says β_0 "can be chosen arbitrarily small, if g is sufficiently small"; under (P-low) the floor is β_0 ≳ Dγ²/2, so β_0 must be fixed first; no step was found that needs β_0 → 0; (4) the sweep has no independent verifier beyond rows 11, 12, 16, 18; (5) BALABAN_EXCERPTS_CHECK item 11 lists readings not checked on page images: Π (4.37)/(5.1), CMP 119 (2.42), the (2.12)/(2.23) ambiguity, the "L odd" page, the Sect. 3 estimates, and the 1989 bound lists.

### 2.4 Lemma D and Lemma E [proved+verified; Lean]

Sources: LEMMAS.md (corrected), LEMMAS_DE_VERIFY.md §1.4, §1.5, §2.4; lean/YmLean/LemmaDE.lean (`lemma_D`, `lemma_E`, `lemma_DE`).
- Lemma D. If b ≤ β_j(g) ≤ b′ on ]0, γ] with b > 0, then for every K and g ∈ ]0, γ] shooting succeeds and t + b(K − k) ≤ u_k ≤ t + b′(K − k). This is literal (0.31). The first IVT interval in the draft was wrong and was refuted by the verifier; the corrected interval is [t + bK, t + b′K]. The nested-interval variant for β defined only on admissible histories (LEMMAS_DE_VERIFY §1.5) is [proved+verified], not in Lean.
- Lemma E. If β_0 ≤ β_j(0) ≤ β_0′ and |β_j(g) − β_j(0)| ≤ C g², then for γ ≤ sqrt(β_0/(2C)): β_0/2 ≤ β_j(g) ≤ β_0′ + β_0/2. The verifier checked this Cg² form; the C¹ form (C_1 g, γ ≤ β_0/(2C_1)) is the same two-line proof [proved, trivial variant]. Lean has the Cg² form.
- History dependence (ledger item L5) [open]. Balaban's β_{k+1} depends on (g_0, …, g_k). Lemma D′ Remark 3 states the cube-continuity version (same proof). The gap is sharper than v2 stated (THEOREM2_PROOF_v2_VERIFY §F):
  - Domain. Balaban defines β_{k+1} only on histories for which his Theorem 1 induction has run to step k (LEMMAS_DE_VERIFY §2 item 1). By the sweep (§2.3), that induction uses (2.6)–(2.9), that is (c′) + (S), on the history, not only g_i ∈ ]0, γ].
  - The new gap. The clamped shooting of §2.1–§2.2 evaluates β on clamped histories g̃_i = φ(ũ_i). A clamped history can violate the growth side of (c′): from max(a, c) − max(b, c) ≥ min(a − b, 0) one gets only u_m ≥ u_n − D′, not u_m ≥ u_n + β(n − m) − D′. So the clamped shooting evaluates β on histories outside Balaban's domain. The clamp proof is valid only under the cube hypothesis, which Balaban does not supply.
  - A variant that avoids it [not written]. Use a nested-interval proof in the style of LEMMAS_DE_VERIFY §1.5, with domain D_k = {u_0, …, u_k ≥ γ^{−2}} of true (unclamped) trajectories. On such trajectories, (c′) up to step k follows from the tail-sum bound (a″) of Lemma D″, and (S) holds by the choice of γ. So every evaluation of β stays inside Balaban's domain. At each step k, keep the set of u_0 whose trajectory stays in D_k; show by IVT, step by step, that this set contains a closed interval on which u_k sweeps a range that contains the next target interval. For Lemma D (all increments positive) this is written. For Lemma D″ the increments can be negative, so the nested intervals need new envelopes, built from the window bounds [b(n − m) − 2R − (b/4)(n − m), …]. The adaptation is plausible; it is not written and not verified.
  - Lean is one-argument only.

## §3 The exact structure of the one-loop sums

### 3.1 Telescoping [proved+verified, corrected scope]
S_k := p → 0 F²-coefficient of the composed k-step gauge-fixed one-loop integral (U1 (1.2)). Then S_k = Σ_{j=1}^{k} β_j(0), S_0 = 0 (BETA_FP Prop. 1.1; BETA_FP_VERIFY item 1). Scope: exact for the p → 0 coefficient at fixed k, not for log Z_k at fixed p (the plane wave is off-shell).

### 3.2 Prop. 2.1, anchor-free identity [proved+verified]
Source: BETA_FP_LEMMA43 Prop. 2.1; BETA_FP_LEMMA43_VERIFY items 1, 3–4 (hand rederivation; lattice check with the real CMP 109 averaging at random SU(2) backgrounds, relative difference 10^{−14}).
Under (G1) = {ΔD = 0, Q̃D = D_cι_a^T}:
  log Z_Λ(V) = [log det X − ½ log det K] − [log det(D_c^TD_c) − ½ log det(Δ_Λ(V) + D_cD_c^T)].
In words: constrained one-loop = fine Wilson one-loop in background Feynman gauge minus the one-loop of the coarse Gaussian theory with kernel Δ_Λ(V). All point-anchor objects cancel; the constant is exactly 0.
- Q̃D = D_cι_a^T is exact at any background (lattice 10^{−15}). ΔD = 0 is load-bearing (raw Hessian gives O(1) errors).
- At the constant abelian field V_f the background is critical, so ΔD = 0 is exact and Prop. 2.1 holds exactly (BETA_FP_H_VERIFY §2, CONFIRMED). At a plane wave it holds up to the defect 𝔡_Y (BETA_FP_PW Lemma 2.3) [proved, unverified].
- Per-cell infinite-volume densities only: on a torus the constant zero modes must be removed. This is input (G2) [formal].

### 3.3 The constant c [proved+verified]
c = 11N²/(12π²) = 2N·b_0/(8π²), b_0 = 11N/3; SU(2): c = 0.371511. Normalization 1/g_B² = 2N/g² (R2_VERIFY; BETA_FP_LEMMA43_VERIFY §5). The log coefficient of the fine piece at constant field is c_2 = c/2 per ln(1/φ), checked against Savvidy, arXiv:1910.00654 eq. (1.4) (BETA_FP_H_VERIFY §4) = input (F) [cited, source checked; lattice = continuum log coefficient is standard, not proved in project files].
b := c log L: 0.25751 (L = 2), 0.40815 (3), 0.51502 (4), 0.59793 (5), 0.72293 (7).

### 3.4 The decomposition S_k = c k log L + κ_W^F − κ_k
- As bookkeeping the split is empty: any c′ gives an exact identity if κ_k is defined as the remainder (U1_VERIFY). Boundedness of a remainder-defined κ_k is a restatement, not progress.
- Content comes from defining κ_k by the coarse theory alone. KAPPA_BOUNDED Prop. 1.1 [proved+verified, conditional on (PI), (F), (M_j), V1, (G2)]: with the Wilson level j = 0 as reference,
  S_j = c j log L − d_j, κ_j = κ_W^F + d_j,
  d_j := −(1/(2n_2)) ∫_0^1 dt ∫_BZ dK/(2π)⁴ tr[b_{t,2}δσ_j^{(0)} + b_{t,1}δσ_j^{(1)} + b_{t,0}δσ_j^{(2)}],
where δσ_j^{(m)} = σ_j^{(m)} − σ_0^{(m)} are differences of the f^m Taylor symbols of the coarse kernel at level j and level 0, and b_{t,m} are the Moyal inverse coefficients of the interpolated coarse operator. No limit symbols σ_∞ are used.
- Checks [numerical, reproduced]: ρ(1) = κ_W^F (Lüscher–Weisz (5.7)); L = 2: d_1 = −0.372, κ_1 = 1.114; L = 3: d_1 = c log 3 − β_1 = −0.256 ± 0.01 (KAPPA_BOUNDED_VERIFY §4: fits give −0.254 … −0.258). This checks the definition of d_j through S_j; it does not evaluate (1.1) from the symbols independently.
- Cor. 3.1 of BETA_FP_LEMMA43 (𝒞(Λ) = c log Λ + κ_W^F − ρ(Λ)) is exact as an identity. "The whole log Λ sits in the fine piece" is equivalent to ρ(Λ) = o(log Λ). It is not a separate fact (BETA_FP_LEMMA43_VERIFY item 2; v1 overclaim removed).
- Given convergence β_j(0) → β_∞, Cesàro gives β_∞ = c log L − lim κ_k/k. So v1's (H′) "κ_k = o(k)" is EQUIVALENT to β_∞ = c log L, not weaker (THEOREM2_PROOF_VERIFY Point 4). Theorem K (§4) gives κ_k bounded, hence κ_k = o(k) trivially.

### 3.5 Level-uniform symbol facts used below [proved+verified]
Source: U3_AW.md, U3_AW_VERIFY.md (grades 1–4 CONFIRMED); U3_REPAIRS_VERIFY.
- O5/A0: Δ_M real-analytic on a fixed strip, |∂^α(Δ_M − Δ_∞)| ≤ C M^{−2}, uniform to K = 0 (odd L, centered blocks). Prop. B: c_0|K̂|^{−2}P′_T ≤ P′_TS_MP′_T ≤ C_1|K̂|^{−2}P′_T, c_0 = (2/π)^{12}, C_1 ≤ 1363. Existential constants.
- Prop. E (evenness): σ_j(f; −K) = σ_j(f; K) in the midpoint trivialization, all f, j. Tested in d = 2 only.
- Theorem W: σ_j^{(1)}(0) = τ_c = (3ie/2)(E_{10} − E_{01}) for every j ≥ 0, from the exact Ward identity Δ_j(f)D_f = 0. Numerically 0.750000, 0.75015, 0.75051 at j = 0, 1, 2 vs 0.75 (d = 2 proxy).
- Theorem A3: |σ_j^{(1)}(K) − τ_c| ≤ C_A|K|², real K, uniform in j (C⁰ only).
- Prop. A2: σ_j^{(m)}, m ≤ 2, analytic on the same strip at every fixed j (not uniform in j for m = 1 derivatives, m = 2).
- Lemma M: Maxwell coefficient exactly 1 at every level.


## §4 Bounded window sums: two formally distinct conditional routes

Both routes give the window bound (5.1) of §2.2, |S_K − S_k − b(K − k)| ≤ 2R, with b = c log L. Lemma D″ then gives Theorem 2w (at odd L > 11, or with (H0) at this L as a hypothesis, and with L5). Neither route uses convergence of β_j(0), a rate, (N), or certified early steps. The two routes have formally distinct named hypotheses. Their mathematical content is not shown to be independent; both plausibly need a uniform first-order smoothness of the level-j vertex (BETA_FP_PW_VERIFY §3; §4.3 below).

### 4.1 Route K: Theorem K [proved+verified, conditional on (B2) and the fixed-level inputs]

Source: KAPPA_BOUNDED.md; KAPPA_BOUNDED_VERIFY.md (items (i)–(v) and (vii) CONFIRMED; (vi) CORRECTED in reasoning, conclusion unchanged).
Statement. L odd ≥ 3. Assume (B2) (§5) and the fixed-level inputs below. Then sup_k |d_k| ≤ κ_* < ∞, so sup_k |κ_k| ≤ |κ_W^F| + κ_* and |S_k − c k log L| ≤ κ_* for all k. Window sums satisfy (5.1) with R = κ_*. (Theorem K is a statement about one-loop quantities. Its use in Lemma D″ for Balaban's β_j(g) needs L odd > 11 or (H0) at this L.)
Proof structure.
1. Prop. 1.1 (§3.4): S_j = c j log L − d_j. [proved+verified, conditional on (PI), (F), (M_j), V1, (G2)]
2. Lemma 2.1: the only K-derivative of σ^{(1)} in d_j enters linearly with f⁰ coefficients. Integration by parts moves it onto f⁰ data; boundary terms vanish (periodic up to a common constant conjugation; inner sphere O(r²)). So σ^{(1)} is needed only in C⁰, which Theorem A3 gives. [proved+verified]
3. Prop. 2.2: with (E0) f⁰ bounds (Prop. B, O5/A0, Lemma M), (E1) Theorem A3 + Theorem W, and (B2), every term of the d_j integrand is ≤ C|K|^{−2}, uniformly in j and t. In d = 4 this has two powers of infrared margin. |d_j| ≤ κ_* := (C(L)/n_2)(1 + Y_1² + C_A(1 + Y_1) + Y_2)·I_2. [proved+verified, conditional on (B2)]
4. Infrared: the degree −4 part of the coarse f² integrand is the same at every level (Lemma M + Theorem W), so the τ_c log cancels exactly in level differences. [proved+verified]
Constants are existential; κ_* is not evaluated.
Fixed-level inputs of Route K (needed at each j separately; no uniformity in j):
- (PI) probe independence: plane-wave p² coefficient = constant-field f² coefficient [argued; per-cell limit for the linear potential not written].
- (F) fine log coefficient c_2 at constant field [cited, source checked, §3.3].
- (M_j) the formal f² coefficient d_j equals the true one at fixed j. The resolvent step of the first argument was false (Nielsen–Olesen zero at k_⊥² = |ef|; BETA_FP_H_VERIFY §5). BETA_FP_M repairs it with a direct log|det| bound given spectral bounds (S1)–(S3) [open on the lattice]; Prop. 4.4 there is [argued]; BETA_FP_M has no verifier file. The t-subdivision of KAPPA §1.3 removes the small-ε requirement [argued, CONFIRMED as plausible]. Status: [argued].
- V1: the Maxwell coefficient of the per-step determinant equals β_{j+1}(0), i.e. order-g⁰ completeness of CMP 109 (1.3)–(1.5) [open; supported at order p² by U3_VERIFY §6].
- (G2) per-cell infinite-volume densities [formal].
- (H0) Balaban's inductive assumption: β_{j+1} smooth on [0, γ], "uniformly bounded on this interval together with all derivatives" (CMP 109 pp. 263–264, (1.22)) [Balaban; available at odd L > 11 only]. CMP 116 has no theorem statement and no C^m-in-g bound in words (BALABAN_EXCERPTS_CHECK item 10); the smoothness in g is CMP 109's inductive assumption, asserted by CMP 109 Theorem 3, whose proof CMP 116 completes.
- L5 history-dependent β, its domain, and its continuity (§2.4) [open].

### 4.2 Route B: Theorem B of BETA_FP_PW [proved, unverified]

Source: BETA_FP_PW.md §1–§5 (Theorem 3.2 = Theorem B, Theorem 5.1). BETA_FP_PW_VERIFY.md (checked 2026-10-28) has §1–§5 and no final grade. It rederives the Lemma 1.3 arithmetic and the Lemma 2.3 / Prop. 2.2 algebra correctly, confirms the Prop. 2.2 determinant identity on a 4⁴ lattice (4e−13), and notes that identity 3.0 is a tautology (Γ^{ex} := Π̂ − S), so all content sits in (Bθ)/(Cθ). The tag stays [proved, unverified].
Statement. L odd ≥ 3. Assume
- (U) there are p_* > 0, C_U with |β_{j+1}(p) − β_{j+1}(0)| ≤ C_U p² for all j ≥ 0, 0 < p ≤ p_* [hypothesis; argued from uniform analyticity in p of the one-step plane-wave data plus one-step O6];
- (Bθ) there is θ_* ∈ (0, min(p_*, 1)) with B_* := sup_k |Γ^{ex}(θ_*; L^k)| < ∞, where Γ^{ex} is the coarse remainder at fixed coarse momentum θ_* [hypothesis];
- Lüscher–Weisz (5.7) [cited].
Then |S_k − c k log L| ≤ C_B := B_* + c_2 ln(1/θ_*²) + |κ_W^F| + sup_{p≤θ_*}|η(p)| + C_Uθ_*²/(L² − 1), and window sums satisfy (5.1) with R = C_B. θ_* < 1 is required so that c_2 ln(1/θ_*²) ≥ 0; otherwise the term must be replaced by its absolute value (BETA_FP_PW_VERIFY §3).
Key step. Lemma 1.3: |S(θ; L^k) − S_k| ≤ C_Uθ²/(L² − 1) from (U). The massless coarse side is then needed only at a fixed θ_* > 0, where there is no infrared problem. No (W), (PI), (M), IR weights, or spectral theory.
What (Bθ) reduces to (BETA_FP_PW §4) [argued]: Lemma 4.1(i) (trivial-background convergence, from O5, odd L) [proved]; vertex bounds at fixed θ_* (the uniform bounds cited by U3 Theorem 7.1 to Balaban; the fixed-θ data hypothesis (Dθ) is needed only in its "bounded" form); and boundedness in k of the defect 𝔡 = 𝔡_Y + 𝔡_gf.
- 𝔡_Y (Prop. 2.1 defect at the non-stationary plane wave): O(aΛ^{−2}) relative at fixed θ, from zero capacity of point anchors in d = 4 [argued; region |K| ≲ Λ^{−1} not written].
- 𝔡_gf (composite gauge vs D_k^T gauge at the plane wave): O(θ²) relative; uniformity in k not shown [argued]. Data: 0.953 (direct) vs 0.9595 (recursion) at L = 2, p_0 = 0.2; difference below the tabulation error, so unresolved.
Identification. Route B's β_j(0) is the per-level plane-wave increment (the quantity the code computes). It matches Balaban's second-moment β up to the expansion point (fine wave vs constrained minimizer), argued to change S by O(θ²) relative (SOURCES_D1_VERIFY item 8) [argued]. This identification and the 𝔡_gf bound need expansion-point bounds uniform in k. So the (PI)-type content of Route K is not removed in Route B; it moves into a uniform-in-k input (BETA_FP_PW_VERIFY §3).
Three points from BETA_FP_PW_VERIFY §3 (no grade yet):
1. θ_* < 1 is required (above).
2. The β identification (B4) is a uniform-in-k input, not a fixed-level input.
3. (U) is a uniform-in-j analyticity of the level data. It plausibly needs the plane-wave analogue of a uniform C¹ bound on σ^{(1)}: uniform p-smoothness of the a¹ vertex. That is the same uniform first-order vertex smoothness as Route K's open core (C1σ).

### 4.3 Comparison
| | Route K | Route B |
|---|---|---|
| uniform-in-level input | (B2): sup_j sup_K |σ_j^{(2)}| < ∞ | (U), (Bθ), and the β identification and 𝔡_gf bound, both with k-uniform expansion-point bounds |
| fixed-level inputs | (PI), (F), (M_j), V1, (G2) | LW (5.7), 𝔡_Y, θ_* < 1 |
| uses (W), Theorem A3 | yes | no |
| verification | verified (conditional) | unverified (BETA_FP_PW_VERIFY has no grade) |
| common | (H0) at odd L > 11, L5, (G2), V1-type identification, Balaban's proofs, SU(2) | same |
Shared inputs: (H0), L5, (G2), odd L (> 11 for (H0)), and the identification of the computed β_j(0) with Balaban's β_j(0) (V1; in Route B also the expansion point). The uniform-in-level hypotheses ((B2) vs (U) + (Bθ)) are formally distinct as named hypotheses. Their content plausibly overlaps: both need a uniform first-order smoothness of the level-j vertex ((C1σ) for Route K, uniform p-smoothness of the a¹ vertex for (U)). One closed route suffices for Theorem 2w.

## §5 The hypothesis (B2) of Route K

(B2): sup_{j≥0} sup_{K∈BZ} |σ_j^{(2)}(K)| < ∞. Weaker form that suffices, (B2w): sup_j ∫_BZ |K|^{−2}|σ_j^{(2)}(K)| d⁴K < ∞ (σ^{(2)} enters d_j only undifferentiated; KAPPA_BOUNDED Remark 2.3) [proved+verified: not graded by name; implied by KAPPA_BOUNDED_VERIFY §9(iv)].
σ^{(2)} obeys the one-step recursion (U3_AW (1.2)): σ_j^{(2)} = L^{−2}𝒜_jσ_{j−1}^{(2)} + Q_j[σ_{j−1}^{(1)}] + g_j^{(2)}, with 𝒜_js = L^{−2}H_j^†(⊕_l s(k_l))H_j and H_j(K) the one-step gauge-fixed minimizer map.

### 5.1 Proved
- K = 0 bound [proved+verified]: sup_j |σ_j^{(2)}(0)| ≤ C(|e|C_A + e²). Theorem A3 + scaling give |∂²σ_j^{(1)}(0)| ≤ 2C_A (polarization; KAPPA_BOUNDED_VERIFY §7), and the slaving identity (W-2) expresses σ_j^{(2)}(0) through these second derivatives.
- Each fixed j [proved+verified]: σ_j^{(2)} is analytic on a fixed strip (Prop. A2), hence bounded. The content of (B2) is uniformity in j.
- Prop. 4.1 [proved+verified, conditional]: if (h) h := sup_{j,K} ‖H_j(K)‖ < L² and (C1σ) sup_j sup_K |∂_Kσ_j^{(1)}(K)| < ∞, then (B2) holds. Proof: in the form norm ±s ≤ N(Δ + 1), N_j ≤ (h²/L⁴)N_{j−1} + Z_2, and Z_2 is finite by Theorem A3, (C1σ), and fixed f⁰ vertices.

### 5.2 Refuted
- (HS) h < L√(L − 1) (named (H′) in U3_AW; renamed to avoid the clash with v1's (H′)) [refuted at L = 3]. Measured max_K ‖H_j(K)‖/L = 1.652, 1.736, 1.757, 1.760 for j = 1, 2, 3, ∞ (U3_AW_VERIFY §6); the threshold is √2 = 1.414. The maximum lies in a BZ face interior, ≈ (1.9, 1.9, π, π). Gauge choice cannot help: H_j is already minimal-norm in its gauge orbit. L ≥ 5 (threshold ≥ 2) is untested.

### 5.3 Live routes and the precise remaining inequality
- Why the Lemma A4 mechanism alone fails [proved+verified, reason corrected by KAPPA_BOUNDED_VERIFY §7]: the obstruction is the missing uniform C¹ bound on σ^{(1)}, which enters twice: in Q_j (term L^{−3}∂_Kσ_{j−1}^{(1)}) and in the longitudinal part of σ^{(2)} given by (W-2). Theorem A3 is C⁰ only.
- Condition (h) at L = 3 [numerical, run by the verifier, U3_AW_VERIFY §6]: h/L ≈ 1.76, so h²/L⁴ ≈ 0.34 < 1 for j ≤ 3 and j = ∞ (sup over all j inferred from the observed convergence in j). A proof of (h) is [open]; h ≥ L is known (H_j(0) = L e_{l=0}).
- (H″) (n-step form): sup_{n,j,K} ‖H_{(n),j}(K)‖/L^n < ∞ with L^n − 1 above its square [open]. At n = 2 it passes on a coarse grid: 2.056 < 2.828 (U3_AW_VERIFY §9, one level pair) [numerical, run by the verifier]. (H″) ⇒ (A) in full ⇒ (B2) and (C1σ) [argued]: the implication is a sketch in U3_AW §4.7; U3_AW_VERIFY grade 5 covers only the reduction to (H′); no verifier graded (H″) ⇒ (B2).
- Two-step recursion route (B2_TWOSTEP.md): an unverified candidate proof of (C1σ). It claims (H2) (a two-step norm condition) ⇒ uniform C¹ bound on σ^{(1)} ⇒ (B2), and that a plain sup-norm contraction needs only ρ_1 < L, i.e. (h). No verifier file exists. Nothing from it is used here.

The precise remaining inequality for Route K, at a fixed odd L ≥ 3, is

  (C1σ) sup_{j≥0} sup_{K∈BZ} |∂_K σ_j^{(1)}(K)| < ∞,   together with   (h) sup_{j≥0} sup_{K∈BZ} ‖H_j(K)‖ < L²,

or, alternatively, (H″). (C1σ) + (h) ⇒ (B2) is [proved+verified]; (H″) ⇒ (B2) is [argued]. (B2w) directly is also enough. No per-momentum d = 4 constant-field code exists, so (B2) itself has not been scanned numerically (KAPPA_BOUNDED_VERIFY §8).

## §6 Conclusion

Theorem 2w ⇐ (Route K inputs) or (Route B inputs). Precisely:

Route K. (B2) [open; reduces to (C1σ) + (h) (verified reduction), or (H″) (argued reduction)] + (PI), (F), (M_j), V1, (G2) [fixed-level] + (H0) [Balaban, odd L > 11] + L5 [open] ⇒ Theorem K (R = κ_*) ⇒ (5.1) ⇒ Lemma D″ ⇒ Theorem 2w. Status of the implication: [proved+verified, conditional].

Route B. (U) + (Bθ) with θ_* < 1 + LW (5.7) + bounded 𝔡_Y, 𝔡_gf + identification of β (uniform in k) + (G2) + (H0) [odd L > 11] + L5 ⇒ Theorem B (R = C_B) ⇒ (5.1) ⇒ Lemma D″ ⇒ Theorem 2w. Status: [proved, unverified, conditional].

Then Balaban's Theorem 1. Theorem 2w gives (b) and (c′). With γ shrunk so that (S) holds, every one of the 19 cross-scale uses in CMP 119 and CMP 122 I–II is covered (§2.3), and the single-scale uses need only g_k ≤ γ. So Theorem 1 holds for the bare coupling g_0(K, g), for every K and every g ∈ ]0, g_1], without Balaban's coupling assumption. This needs L5 in the sharpened form of §2.4: β must exist on every history the shooting visits. Status: [proved, unverified (sweep), conditional on Route K or Route B inputs, on L5, and on Balaban's published proofs].

Order of constants. Fix β_0, p_0, p_1, r, ν, κ_0 (Balaban). Fix L (odd, > 11), then R from Route K or B, then b = c log L, then γ ≤ min(γ_0, γ_Bal, b/(4C_1), γ_*) with γ^{−2} ≥ c_sw·2R. Then g_1 = (γ^{−2} + 2R)^{−1/2}. Balaban's phrase "for a sufficiently small positive g" fits g ≤ g_1.

What this does not give.
- Literal (0.31): only for windows of length ≥ 8R/b. Literal (0.31) at every K needs (L1) or (L2) of §1.4, which need individual increments, not window sums. Not needed for Theorem 1.
- The value lim β_j(0) and any rate: §7.
- Even L, or odd L ≤ 11 without (H0) as an extra hypothesis (Balaban assumes L odd > 11 throughout CMP 109); SU(N) with N > 2.
- Monotone couplings: g_m can exceed g_n for m < n by the bounded amount u_m ≥ u_n − D′. §2.3 shows Balaban's proof tolerates this under (S); a line-by-line read was not done.
- A continuum limit (ASSEMBLY.md treats the assembly separately; not claimed here).

## §7 The convergence route: what it adds, and its status

Not needed for Theorem 1. It adds: (i) existence of β_∞ = lim β_j(0); (ii) its value c log L; (iii) a rate; (iv) eventual positivity, hence literal (0.31) for K ≥ K_0 (Lemma D′ (d)); (v) with certified early steps, literal (0.31) at every K (§1.4 (L2)). It also implies (B2), since convergence of σ_j^{(2)} implies boundedness. So it needs strictly more than Route K.

### 7.1 Components and status
- U3 Theorem 4.1 with O5: |∂_K^α(Δ_M − Δ_∞)| ≤ C M^{−2}, |α| ≤ 2, uniform to K = 0, odd L [proved+verified] (U3_VERIFY, U3_REPAIRS_VERIFY). Numerically |Δ_M − Δ_∞| = 1.007, 0.129, 0.0147 at M = 3, 9, 27.
- O6: ‖𝔅_j(K)^{−1}‖ ≤ b(L) for all j, K, one-step constraint, trivial background [proved+verified]. Crude constant (b(3) ≈ 7.5·10^{33}); measured corner values 103.5, 176.7, 193.0, 195.3 (j = 0, 1, 2, ∞, L = 3) use a surrogate Λ (U3_REPAIRS_VERIFY §5).
- Theorem 6.1: β_{j+1}(0) = Φ(𝒟_j) is Lipschitz in the level data [proved+verified, conditional on V1]. The norm is the Taylor-data norm (U3_VERIFY P8 correction).
- Lemma 5.1 (convergence of σ_j^{(1)}, σ_j^{(2)} in C², |α| ≤ 2):
  - neutral sector, rate L^{−4j} [proved+verified for the value bound; the K-derivative paragraph is proved, unverified];
  - (W) [proved+verified] (U3_AW Theorem W); it removes the marginal direction of the f¹ recursion;
  - (A) qualitative and Theorem A3 [proved+verified]; (A) in full (strip/C³ for m = 1, all of m = 2) ⇐ (H″) [open]; the route via (HS) is [refuted] at L = 3;
  - σ^{(1)} convergence at rate jL^{−2j} [sketch in U3_AW §4.7, unverified]; σ^{(2)} convergence [open, needs (A) in full];
  - the single-block-constraint version of Lemma 5.1 is false for m = 2 in d = 4 [proved+verified]; Balaban's composed constraint is not affected.
- Prop. 3.6: |β_{j+1}(0) − β_∞| ≤ C(1 + j)²L^{−2j} [proved, unverified as an assembly; conditional on V1, (A) in full]. (v1 wrote C j²L^{−2j}, which is 0 at j = 0; corrected.) The identification of σ-Taylor data with the data of (6.1) is cited from U3_VERIFY §7, not re-shown. (N) (clean rate L^{−2j}) is not needed and is judged plausibly false.
- Value of the limit. Given convergence, Theorem K or Theorem B gives β_∞ = c log L at once: S_k/k → β_∞ by Cesàro and S_k/k = c log L + O(1/k) [proved+verified as an implication: THEOREM2_PROOF_VERIFY Point 4; BETA_FP_PW Theorem 3.2(iii)]. Older routes to the value: BETA_FP_H Theorem 3.1′ with (H) restated at the constant field, which given (W) reduces to Lemma 5.1 (1.2) alone (BETA_FP_H_VERIFY items (1)–(4)), plus (PI), (F), (M) [conditional; (M) argued]; and BETA_FP_PW Theorem 3.1 (limit form) given (U), (Cθ), LW (5.7) [proved, unverified]. The original (H) with IR weights (BETA_FP_LEMMA43 (4.2)) was graded UNSUPPORTED and is not used.
- Rate of 𝒞(Λ): O(Λ^{−2} log Λ) given Lemma 5.1 with rates, via U3_AW §3.4(b) slaving [argued, BETA_FP_H_VERIFY §5].

### 7.2 Early steps and j_*
Under Prop. 3.6 and β_∞ = c log L, β_{j+1}(0) ≥ (c log L)/2 for j ≥ j_* := min{J : C(1 + j)²L^{−2j} ≤ (c log L)/2 for j ≥ J}. Heuristic size [argued]: C ~ b³ gives j_* ≈ 110 (L = 3), ≈ 70 (L = 13); C ~ b⁶ (one-step inverses inside C_data) gives ≈ 218, ≈ 138 (THEOREM2_PROOF_VERIFY Point 5(e)). With the measured ‖𝔅^{−1}‖ ≈ 195: j_* ≈ 10 (L = 3), ≈ 4 (L = 13). Certifying β_1(0), …, β_{j_*}(0) > 0 needs interval arithmetic at odd L ≥ 13 (blocks ≈ 3.4·10⁵ rows per momentum by dense methods; the umklapp code reduces this to 12×12 blocks at L⁴ momenta). It is needed only for (L2), not for Theorem 1.

## §8 Numerics

SU(2), infinite volume, Balaban's normalized-trace units. None of this is certified. Only odd L is inside the proofs; L = 2, 4 use corner blocks and are outside them.

### 8.1 First increment β_1(0) (NUMERICS §6–§7; UMK_BETA1.md)
| L | β_1(0) | how | b = c log L | β_1 − b | status |
|---|---|---|---|---|---|
| 2 | 0.630 | Ng = 12, p → 0 fit | 0.2575 | +0.372 | [numerical, reproduced] (KAPPA_BOUNDED_VERIFY §4: 0.6296) |
| 3 | 0.664 | Ng = 8, p → 0 fit (0.6625–0.6661) | 0.4082 | +0.256 | [numerical, reproduced]; Ng 6 → 8 shift ≈ 0.015 |
| 4 | 0.757 | Ng = 6, single p = 0.2; O((Lp)²) bias ≈ 0.01 | 0.5150 | +0.242 | [numerical] |
| 5 | 0.749 (Ng = 12, p = 0.1); fit 0.743 | umklapp code | 0.5979 | +0.145 | [numerical] |
| 7 | 0.803 | umklapp code, Ng = 8, Lp = 0.5 | 0.7229 | +0.080 | [numerical] |
The first-step scheme constant β_1 − b decreases with L. The umklapp code was validated against ym_momentum to 10^{−12} per K by its author; no independent verifier. Queue continues to L = 15 on Windows. No value at L > 11 exists yet.

### 8.2 Later increments (L = 2 only)
| quantity | value | status |
|---|---|---|
| β_1 + β_2 (composed, Ng = 4/6/8) | 1.148 / 0.967 / 0.953 | [numerical]; single p = 0.2, Lp bias label |
| β_2(0) | ≈ 0.32 (0.953 − 0.630); per-level recursion 0.317–0.341 (N = 8–12, single p = 0.2); 0.333 (verifier, symmetric Nyquist, N = 8) | [numerical]; per-level recursion reproduced in BETA_FP_VERIFY §7 |
| β_3(0) | 0.40 (N = 8), 0.286 (N = 12), 0.261 (verifier, symmetric Nyquist, N = 8) | unconverged; not usable |
| abelian sector S_k^{ab} | (1 − L^{−4k})/4, matched to all digits | [proved+verified] |
All computed increments are positive.

### 8.3 Quantities of the Route K proof
| quantity | value | status |
|---|---|---|
| d_1 = b − β_1, L = 3 | −0.256 ± 0.01 (fits −0.254 … −0.258) | [numerical, reproduced] |
| d_1, κ_1, L = 2 | −0.372, 1.114 | [numerical, reproduced] |
| d_2, d_3, L = 2 | ≈ −0.44, ≈ −0.45 (d_3 uses unconverged β_3) | [numerical]; bounded-looking, not a test |
| max_K ‖H_j(K)‖/L, L = 3, j = 1, 2, 3, ∞ | 1.652, 1.736, 1.757, 1.760 | [numerical, run by the verifier, U3_AW_VERIFY §6]; refutes (HS); h²/L⁴ ≈ 0.34 < 1 |
| (H″), n = 2, L = 3 | 2.056 < 2.828 | [numerical, run by the verifier], coarse grid, one level pair |
| σ_j^{(1)}(0) J-part, j = 0, 1, 2 (d = 2 proxy) | 0.750000, 0.75015, 0.75051 vs 0.75 | [numerical, run by the verifier] supports Theorem W |
| σ_j^{(2)}(K) scan | not run: no d = 4 constant-field per-momentum code | — |

## §9 Ledger (tags match the verifier files)

[Lean] (no sorry; axioms propext, Classical.choice, Quot.sound)
- Lemma D′ (a)–(d) (`YmLean.lemma_DPrime`), Step 8 (`lemma_DPrime_step8`), Lemma D, Lemma E (Cg² form), Lemma D+E (lean/YmLean/LemmaDPrime.lean, LemmaDE.lean). One-argument β only.
- The Lean folder also has Telescoping, DetIdentities, AbelianCount, and LemmaH files (THEOREM2_PROOF_v2_VERIFY §M item 8); this chapter does not use them.

[proved+verified]
- Lemma D′ (a)–(d), K_0, Remark 4 (LEMMA_DPRIME_VERIFY grades 1, 2, 5).
- Lemma D (corrected interval), Lemma E (Cg² form), nested-interval variant of Lemma D (LEMMAS_DE_VERIFY). Lemma E C¹ form: trivial variant, same proof.
- Lemma D″ (tail-sum form, no J) (KAPPA_BOUNDED_VERIFY §6).
- Telescoping S_k = Σβ_j(0) for the p → 0 coefficient (BETA_FP_VERIFY item 1, corrected scope).
- Prop. 2.1 anchor-free identity; exact at the constant field (BETA_FP_LEMMA43_VERIFY item 1; BETA_FP_H_VERIFY item 1).
- c = 11N²/(12π²), normalization chain; (F) source (Savvidy eq. (1.4)) (BETA_FP_LEMMA43_VERIFY item 2; BETA_FP_H_VERIFY §4).
- KAPPA Prop. 1.1 as an identity given its fixed-level inputs; Lemma 2.1 (integration by parts); Prop. 2.2; level-independence of the degree −4 part; Theorem K and Theorem 2w as conditional reductions (KAPPA_BOUNDED_VERIFY (i)–(v)).
- sup_j |σ_j^{(2)}(0)| < ∞; Prop. 4.1 algebra (KAPPA_BOUNDED_VERIFY (vi), reason for A4 failure corrected).
- Prop. E evenness, Theorem W0/W, Theorem A3, Lemma A4, A0, Prop. A2 (U3_AW_VERIFY grades 1–4).
- U3 Theorem 4.1 + O5, Prop. A, Prop. B, O6, Theorem 6.1 (given V1; Taylor-data norm), Lemma 5.1 neutral value bound, single-block m = 2 failure in d = 4, one-step recursion, R2 midpoint identity (U3_VERIFY, U3_REPAIRS_VERIFY, U3_LEMMA51_VERIFY, U3_LEMMA51_R23_VERIFY).
- Cesàro: given convergence, κ_k = o(k) ⇔ β_∞ = c log L (equivalence, not a weaker form) (THEOREM2_PROOF_VERIFY Point 4).

[proved, unverified]
- Theorem B and Lemma 1.3 of BETA_FP_PW (BETA_FP_PW_VERIFY has no grade; its checks of Lemma 1.3, Lemma 2.3, and Prop. 2.2 are correct; it adds θ_* < 1 and the uniform-in-k β identification).
- LEMMA_DPRIME_SWEEP: 19 cross-scale uses covered by (b) + (c′) + (S) (4 of 19 table rows, 11, 12, 16, 18, verified on page images by LEMMA_DPRIME_VERIFY comparisons A–E).
- Step "Theorem 2w ⇒ Balaban's Theorem 1" (depends on the sweep and on L5 in the sharpened form of §2.4).
- Prop. 3.6 assembly with C(1 + j)²L^{−2j}; neutral-sector K-derivative paragraph; σ^{(1)} convergence sketch jL^{−2j}.
- Necessity of individual positivity for literal (0.31) at every K (elementary).
- BETA_FP_M Prop. 4.3 (log|det| bound in the N–O window, given (S1)–(S3)); no verifier file.
- B2_TWOSTEP (H2) ⇒ (C1σ) ⇒ (B2) (candidate; no verifier file).

[argued]
- (PI); (M_j) (Prop. 4.4 of BETA_FP_M); (U); 𝔡_Y, 𝔡_gf bounds; plane-wave vs constrained-minimizer expansion point (uniform in k); (H″) ⇒ (A) in full ⇒ (B2) (U3_AW §4.7 sketch); j_* size; the rate O(Λ^{−2} log Λ).

[open]
- (B2), reduced here to (C1σ) + (h) [verified reduction], or (H″) [argued reduction]. (Bθ) and (U) for Route B. V1. (S1)–(S3). L5 (domain of β; nested-interval D″ [not written]). K-independence of β_j(g). (A) in full. Lemma D″ in Lean. See §10.

[refuted]
- (HS) sup‖H_j‖ < L√(L − 1) at L = 3.
- U3_LEMMA51 Theorem 4.1 for m = 2 with a single block-M constraint in d = 4.
- v1 claims withdrawn: "every early step must be certified for Theorem 1" (false: Lemma D′/D″); "(H′) is weaker than β_∞ = c log L" (it is equivalent); "the whole log Λ sits in the fine piece" as a fact (it is equivalent to the open statement); "one-loop parts hold for SU(N)" (Lemma 5.1's charged/neutral split is the SU(2) Cartan split); (3.2) with C j²L^{−2j} (0 at j = 0); the (M) resolvent bound ‖𝒦_t^{−1}‖ ≤ C/|f| (Nielsen–Olesen zero); (H) with IR weights as stated (UNSUPPORTED).

[Balaban]
- (H0) smoothness and uniform bounds of β_{j+1} in g (CMP 109 (1.22), pp. 263–264), at odd L > 11 only; Theorem 1 and the inductive bounds of CMP 109, 116, 119, 122 and the propagator papers CMP 95, 96, 98, 99, 102. Uniform level bounds partly cited from CMP 95/96/99 (O6 replaced the main citation).

[verified quote]
- Theorem 2 and Theorem 1 wording, "separate paper", p. 298 history sentence, (0.1) with 1/g_k² and χ_k, (1.3)–(1.5) (print misprint E^{(j+k)} read as E^{(j+1)}), (2.6)–(2.9) of CMP 119, items A–E of CMP 122 (BALABAN_EXCERPTS_CHECK; LEMMA_DPRIME_VERIFY; LEMMA_DPRIME_SWEEP page images).

[numerical] see §8.

## §10 Open list (complete for Theorem 2w ⇒ Theorem 1)

Route K hypothesis set (all must hold):
1. (B2) sup_j sup_K |σ_j^{(2)}| < ∞ (or (B2w)). Precise remaining form: (C1σ) sup_{j,K} |∂_Kσ_j^{(1)}| < ∞ and (h) sup_{j,K} ‖H_j(K)‖ < L² [reduction proved+verified]; or (H″) [reduction argued]. (h) holds numerically at L = 3 (h²/L⁴ ≈ 0.34); (HS) is refuted. B2_TWOSTEP.md is an unverified candidate proof of (C1σ) from a two-step norm condition (H2); it has no verifier file.
2. (PI) probe independence, at each fixed level [argued].
3. (F) lattice = continuum log coefficient at constant field [cited source checked; lattice transfer standard, not proved here].
4. (M_j) formal = true f² coefficient at each fixed level: (S1) 𝒦_t(f) ≥ −C_1|f|, (S2) density of states ≤ C_2|f| near 0, (S3) relative bound of the level difference, all on the lattice [open]; Prop. 4.4 [argued].
5. V1 order-g⁰ completeness of CMP 109 (1.3)–(1.5): β_{j+1}(0) is the Maxwell coefficient of the per-step Gaussian determinant [open; supported at order p²].
6. (G2) per-cell infinite-volume densities [formal].

Route B hypothesis set (alternative to 1–4; still needs 5–6 and the common items):
B1. (U) |β_{j+1}(p) − β_{j+1}(0)| ≤ C_U p², uniform in j, 0 < p ≤ p_* [hypothesis; argued from uniform analyticity in p of the one-step data; plausibly needs uniform p-smoothness of the a¹ vertex, the same kind of input as (C1σ)].
B2′. (Bθ) sup_k |Γ^{ex}(θ_*; L^k)| < ∞ at one θ_* > 0; it needs fixed-θ vertex bounds ((Dθ) in bounded form) and bounded defects 𝔡_Y, 𝔡_gf [hypothesis/argued].
B3. Lüscher–Weisz (5.7) [cited].
B4. Identification of the plane-wave increment with Balaban's β up to the expansion point [argued]. This is a uniform-in-k input, not a fixed-level input.
B5. θ_* < 1, so that c_2 ln(1/θ_*²) ≥ 0 in C_B [trivial condition on the choice of θ_*].
B6. Independent verification of BETA_FP_PW (BETA_FP_PW_VERIFY has §1–§5, no grade).

Common to both routes:
7. (H0) Balaban's smoothness in g with uniform bounds, |β_j(g) − β_j(0)| ≤ C_1 g uniform in j and history [Balaban; CMP 109 inductive assumption at odd L > 11; no explicit proof of the g-derivative bound located in CMP 116].
8. L5 history dependence [open]. (a) The clamp proof of Lemmas D′/D″ is valid only if β_{k+1}(g_0, …, g_k) is defined and continuous on the whole cube ]0, γ]^{k+1}; Balaban does not supply this. (b) Balaban's β_{k+1} exists only on histories where his induction has run; that domain must carry (c′) + (S), not only g_i ∈ ]0, γ]. Clamped histories can violate the growth side of (c′). (c) True trajectories with all u_i ≥ γ^{−2} inherit (c′) from (a″). A nested-interval variant of Lemma D″ on these trajectories would avoid the gap [not written]; the variant is written only for Lemma D (LEMMAS_DE_VERIFY §1.5). Lean covers one-argument β only.
9. K-independence of β_j(g) [open]. The shooting treats β_j(g) as one function for all K. Balaban constructs it on a finite volume that depends on K. That the increments are K-independent (the infinite-volume identification) is not proved (LEMMAS_DE_VERIFY §2 item 2; THEOREM2_PROOF_VERIFY Point 7). It is used implicitly through (G2) and (H0).
10. Balaban readings: the sweep (§2.3) is grep plus page images, not line-by-line, with 4 of 19 rows checked by a second reader; "Similar inequalities hold for other constants, which will be introduced later" (CMP 119 p. 256) not located; β_0 must be fixed before γ, while Balaban says β_0 "can be chosen arbitrarily small, if g is sufficiently small" (not checked line by line); BALABAN_EXCERPTS_CHECK item 11 lists unchecked readings (Π (4.37)/(5.1), CMP 119 (2.42), (2.12)/(2.23), the "L odd" page, Sect. 3 estimates, 1989 bound lists); Theorem 1 itself rests on Balaban's published proofs.
11. Odd L. All one-loop proofs need odd L ≥ 3 (centered blocks: U3 Lemma 1.2, O5/Prop. A, evenness, Lemma 4.1 of LEMMA43). Balaban assumes L odd > 11 throughout CMP 109, so (H0) and β_j(g) at g > 0 exist only there. Theorem 2w is stated for odd L > 11, or with (H0) at this L as a hypothesis. No numerics exist at L > 11 (umklapp queue to L = 15 running); (h) and (H″) are tested at L = 3 only, outside the range of Theorem 2w, so they are supportive only.
12. SU(2) only. The charged/neutral split of Lemma 5.1 and (W) are SU(2) statements; c = 11N²/(12π²) is general but the chain is not checked for N > 2.
13. Lean formalization of Lemma D″ and of the history form [open, small].

Not needed for Theorem 1, open for the stronger statements: (A) in full and Lemma 5.1 for m = 2 (convergence, rate); certified β_1(0), …, β_{j_*}(0) > 0 at odd L > 11 (literal (0.31) at every K); explicit j_*; (N).

Hypothesis table (from THEOREM2_PROOF_v2_VERIFY §K, with the v3 status).
| hypothesis | introduced | verified / checked in | status | §10 item |
|---|---|---|---|---|
| (B2) / (B2w) | KAPPA §2, Rem. 2.3 | KAPPA_VERIFY §7–§9 | open | 1 |
| (C1σ) + (h) ⇒ (B2) | KAPPA Prop. 4.1 | KAPPA_VERIFY §7 | implication verified; (C1σ) open; (h) numerical L = 3 | 1 |
| (H″) ⇒ (A) ⇒ (B2) | U3_AW §4.7 | none (U3_AW_VERIFY grade 5 covers (H′) only) | implication argued; (H″) numerical n = 2 only | 1 |
| (HS) | U3_AW (H′) | U3_AW_VERIFY §6 | refuted L = 3 | §5.2 |
| B2_TWOSTEP (H2) ⇒ (C1σ) | B2_TWOSTEP §2–§3 | none | proved, unverified (candidate) | 1 |
| (PI) | BETA_FP_H §3.1 | H_VERIFY §5 | argued | 2 |
| (F) | BETA_FP_LEMMA43 | H_VERIFY §4 | cited, source checked | 3 |
| (M_j): (S1)–(S3), Prop. 4.4 | BETA_FP_M §4 | none for BETA_FP_M; H_VERIFY §5 refuted old step | open / argued | 4 |
| V1 | R2 | U3_VERIFY C4 (order p²) | open | 5 |
| (G2) | BETA_FP_LEMMA43 | — | formal | 6 |
| β_j(g) independent of K | LEMMAS_DE_VERIFY §2 item 2 | v1 verifier Point 7 | open | 9 |
| (H0), uniform in j and history | CMP 109 (1.22) | BALABAN_CHECK item 10 | [Balaban], odd L > 11 | 7 |
| L5 history form and domain | LEMMA_DPRIME Rem. 3; LEMMAS_DE_VERIFY §2.1; v2_VERIFY §F | — | open | 8 |
| sweep reading | SWEEP §7 | LEMMA_DPRIME_VERIFY Steps 4–5 (rows 11, 12, 16, 18) | proved, unverified | 10 |
| odd L; L > 11 in Balaban | CMP 109 pp. 251–252 | v1 verifier Step 6 | input | 11 |
| SU(2) | — | — | scope | 12 |
| Lean D″, history | — | — | open | 13 |
| Route B: (U) | BETA_FP_PW §1.2 | PW_VERIFY §3 | hypothesis | B1 |
| Route B: (Bθ), 𝔡_Y, 𝔡_gf | BETA_FP_PW §3.3, §4.3 | PW_VERIFY (no grade) | hypothesis / argued | B2′ |
| Route B: β identification, uniform in k | SOURCES_D1_VERIFY 8; PW_VERIFY §3 | — | argued | B4 |
| Route B: θ_* < 1 | PW_VERIFY §3 | — | trivial condition | B5 |
| LW (5.7) | cited | PW_VERIFY §3 (regime correct) | cited | B3 |
| BALABAN_CHECK item 11 readings | BALABAN_EXCERPTS | — | unchecked | 10 |
