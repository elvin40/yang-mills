# Theorem 2 — proof chapter, version 4 (shortest route; (H2) as the single uniform hypothesis)

Written 2026-10-28 (Opus). v4 = v3 (THEOREM2_PROOF_v3.md) updated with the verified material that appeared after v3: B2_TWOSTEP.md + B2_TWOSTEP_VERIFY.md, H2_LARGE_L.md + H2_LARGE_L_VERIFY.md, lean/README.md (Lemma D″ in Lean), BETA_FP_U.md (Route B inputs), numerics/NUMERICS.md §7. Main changes: §5 is rewritten around (H2); §8, §9, §10 are updated; small consistency edits elsewhere. It does not edit v1, v2, or v3. It is not itself verified as a whole document. It adds no claim beyond the cited verifier verdicts. The change log is at the end.

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

Status: [proved+verified, conditional on (B2) and the fixed-level inputs of §4] by Route K (Theorem K + Lemma D″). (B2) is reduced to the single inequality (H2) of §5 [proved+verified reduction: B2_TWOSTEP_VERIFY grade 3]. Second route: [proved, unverified, conditional on (U), (Bθ), and the plane-wave defects] by Route B (BETA_FP_PW Theorem 3.2 + Lemma D″). BETA_FP_U reduces (U) to (T1) + (H2) [proved, unverified]. Both routes also need (H0) at this L and L5 (§2.4). See §4.

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

### 2.2 Lemma D″ (tail-sum form; no index J) [proved+verified; Lean]

Source: KAPPA_BOUNDED.md §5.3; KAPPA_BOUNDED_VERIFY §6 (CONFIRMED: "No J needed"); hand rederivation in THEOREM2_PROOF_v2_VERIFY §A.
Hypotheses. (i) as in 2.1, and the window bound
  (5.1) T_0(k, K) := Σ_{i=k+1}^{K} β_i(0) ∈ [b(K − k) − 2R, b(K − k) + 2R] for all 0 ≤ k < K,
with b := c log L > 0 and some R ≥ 0. (Route K gives R = κ_*; Route B gives R = C_B.)
Constants. γ := min(γ_0, γ_Bal, b/(4C_1)); β := 3b/4; B′ := 5b/4 + 2R; D = D′ := 2R; g_1 := (1/γ² + D)^{−1/2}.
Conclusions. (b) of 2.1, and the pairwise bound
  (c′) u_n + β(n − m) − D′ ≤ u_m ≤ u_n + B′(n − m), 0 ≤ m ≤ n ≤ K, upper side without constant.
Proof. |T − T_0| ≤ C_1γ(K − k) ≤ (b/4)(K − k). Add (5.1). Steps 2–5 of Lemma D′ use only continuity and the bracket T̃ ∈ [−D, B′(K − k)]; this bracket now comes from (5.1). The pairwise form is the same window argument with K → n. The proof is the clamped-flow proof of 2.1; for history-dependent β the L5 caveat of §2.4 applies.
Lean: lean/YmLean/LemmaDDoublePrime.lean (`YmLean.lemma_DDoublePrime`, 146 lines, no `sorry`, axioms propext, Classical.choice, Quot.sound; lean/README.md). It proves (a″), (b) with the clamp inactive on the solution, (c′) with β = 3b/4, B′ = 5b/4 + 2R, D′ = 2R, and (d) below. The Lean hypotheses are weaker than the note: continuity instead of C¹; any γ with 0 < γ ≤ γ_0 and C_1γ ≤ b/4; R ≥ 0 derived; K = 0 allowed; (c′) and (d) hold for every trajectory with couplings in ]0, γ]. One-argument β only (L5 not formalized).
(d) [Lean]: for n − m ≥ 8R/b, u_n + (b/2)(n − m) ≤ u_m ≤ u_n + B′(n − m). So literal (0.31) from (5.1) alone holds, with lower constant b/2, only for windows with n − m ≥ 8R/b; short windows near K are not controlled (see §1.4).

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

Both routes give the window bound (5.1) of §2.2, |S_K − S_k − b(K − k)| ≤ 2R, with b = c log L. Lemma D″ then gives Theorem 2w (at odd L > 11, or with (H0) at this L as a hypothesis, and with L5). Neither route uses convergence of β_j(0), a rate, (N), or certified early steps. The two routes have formally distinct named hypotheses. Their mathematical content is not independent: both reduce their uniform-in-level content to the same inequality (H2) on the two-step minimizer map (§5), plus A3-type facts (BETA_FP_U §3.5, §4.3 [proved, unverified]; Route K side: B2_TWOSTEP_VERIFY grade 3 [proved+verified]).

### 4.1 Route K: Theorem K [proved+verified, conditional on (B2) and the fixed-level inputs]

Source: KAPPA_BOUNDED.md; KAPPA_BOUNDED_VERIFY.md (items (i)–(v) and (vii) CONFIRMED; (vi) CORRECTED in reasoning, conclusion unchanged).
Statement. L odd ≥ 3. Assume (B2) (§5; (B2) ⇐ (H2) [proved+verified]) and the fixed-level inputs below. Then sup_k |d_k| ≤ κ_* < ∞, so sup_k |κ_k| ≤ |κ_W^F| + κ_* and |S_k − c k log L| ≤ κ_* for all k. Window sums satisfy (5.1) with R = κ_*. (Theorem K is a statement about one-loop quantities. Its use in Lemma D″ for Balaban's β_j(g) needs L odd > 11 or (H0) at this L.)
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

Source: BETA_FP_PW.md §1–§5 (Theorem 3.2 = Theorem B, Theorem 5.1). BETA_FP_PW_VERIFY.md now has a §6 with grades: items 1–4 CONFIRMED (doubling identity and Lemma 1.3; Prop. 2.2 / Lemma 2.3; Theorems A, B as conditional logic; Lemma 4.1, conditional), items 5 (comparison) and 6 (numerics) CORRECTED. v3 stated that the file had no grade; that is outdated. The tag of Theorem B stays as in v3 in this version; a tag change is left to the next review. It rederives the Lemma 1.3 arithmetic and the Lemma 2.3 / Prop. 2.2 algebra correctly, confirms the Prop. 2.2 determinant identity on a 4⁴ lattice (4e−13), and notes that identity 3.0 is a tautology (Γ^{ex} := Π̂ − S), so all content sits in (Bθ)/(Cθ). The tag stays [proved, unverified].
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
Three points from BETA_FP_PW_VERIFY §3 (item 5 of its §6 grades them CORRECTED):
1. θ_* < 1 is required (above).
2. The β identification (B4) is a uniform-in-k input, not a fixed-level input.
3. (U) is a uniform-in-j analyticity of the level data. It plausibly needs the plane-wave analogue of a uniform C¹ bound on σ^{(1)}: uniform p-smoothness of the a¹ vertex. That is the same uniform first-order vertex smoothness as Route K's open core (C1σ).

### 4.2a Route B inputs after BETA_FP_U [proved, unverified; no verifier file]
Source: BETA_FP_U.md §2–§4. It reduces the two uniform hypotheses of Theorem B.
- (U) ⇐ (T1) + (H2) (Theorem 2.4, odd L ≥ 3, with A0, A1, Lemma 2.2). (T1): sup_j sup_q |c^{(1)}_{T,j}(q)| < ∞, the plane-wave form of Theorem A3 [argued]. (H2) is the inequality of §5 (BETA_FP_U writes it as h̃_{(2)} < L).
- (Bθ): Γ^{ex} = γ_rec + 𝔡_F exactly (Prop. 3.1). γ_rec is bounded in k given Theorem 2.4 (Prop. 3.2). 𝔡_F is bounded under (DF) sup_k |𝔡_F(θ_*; L^k)| < ∞ [hypothesis, argued]. BETA_FP_U corrects BETA_FP_PW §4.3(b): 𝔡_F is O(1) relative at fixed θ, not O(θ²); only boundedness is used.
- Corollary 4.1: given (T1), (H2), (DF), LW (5.7), |S_k − c k log L| ≤ C_B, so (5.1) holds with R = C_B.
- Theorem 2w by Route B then needs in addition A6 (plane-wave β = Balaban's β up to the expansion point, uniform in k) [argued] and (H0) (Lemma D″ (i)).
Route B hypothesis set in v4: (T1), (H2), (DF), LW (5.7), A6, (H0) (plus L5, (G2), odd L, as for Route K). The fixed-level inputs (PI), (M_j), V1 of Route K do not appear; (DF) and A6 replace them.

### 4.3 Comparison
| | Route K | Route B |
|---|---|---|
| uniform-in-level input | (B2): sup_j sup_K |σ_j^{(2)}| < ∞, ⇐ (H2) [proved+verified] | (U), (Bθ), and the β identification and 𝔡_gf bound, both with k-uniform expansion-point bounds; (U) ⇐ (T1) + (H2), (Bθ) ⇐ Theorem 2.4 + (DF) [proved, unverified] |
| single uniform inequality | (H2) | (H2) |
| fixed-level inputs | (PI), (F), (M_j), V1, (G2) | LW (5.7), 𝔡_Y, θ_* < 1 |
| uses (W), Theorem A3 | yes | no; BETA_FP_U uses (T1), the plane-wave analogue of A3 [argued] |
| verification | verified (conditional) | BETA_FP_PW_VERIFY §6 grades Theorem B CONFIRMED as conditional logic; tag kept as in v3; BETA_FP_U has no verifier file |
| common | (H0) at odd L > 11, L5, (G2), V1-type identification, Balaban's proofs, SU(2) | same |
Shared inputs: (H0), L5, (G2), odd L (> 11 for (H0)), and the identification of the computed β_j(0) with Balaban's β_j(0) (V1; in Route B also the expansion point). The uniform-in-level hypotheses ((B2) vs (U) + (Bθ)) are formally distinct as named hypotheses. Their content overlaps: both rest on (H2) (§5). In Route K, (H2) gives (C1σ) (Theorem C1) and then (B2) (Theorem B2). In Route B, (H2) gives (U) with (T1), and the vertex bound behind (Bθ). So a proof of (H2) serves both routes. One closed route suffices for Theorem 2w.

