IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# THEOREM2_PROOF.md independent verification (2026-10-27)

Status: in progress.

## Step 1: read THEOREM2_PROOF.md in full (§1–§8)
Done. First observations, to check against sources:
- §5.1 claims every individual β_j(0) > 0 is necessary, and "no averaging argument avoids the early steps". This is true for literal (0.31) at every K ≥ 1. It is not obviously needed for Theorem 1 (couplings in ]0,γ]) or for (0.31) restricted to K ≥ K_0. To check.
- (3.2) writes C j² L^{−2j}; at j = 0 this gives 0. Should be C(1+j)².
- §4.2: given Prop. 3.6, κ_k/k converges automatically, so (H′) is equivalent to β_∞ = c log L, not only sufficient.

## Step 2: Lemma D, Lemma E, reduction (LEMMAS_DE_VERIFY; THEOREM2.md R1)
- Lemma D [proved+verified]: matches. Verifier refuted the first IVT interval (D3 WRONG) and supplied §1.4 (clamp) and §1.5 (nested intervals). Document §2.1 reproduces the corrected proof. CONFIRMED.
- Lemma E [proved+verified]: the verifier checked the real-variable form |β_j(g) − β_j(0)| ≤ C g² (§2.4(b)). The document uses the C¹ form C_1 g. Same two-line proof; harmless variant, but it was not literally the verified statement.
- §2.3 reduction: verifier §3 judged it complete with three hidden hypotheses (continuity, infinite volume, history-free β_j(0)). Document lists all three. CONFIRMED.
- THEOREM2.md R1 (line 75–79): (T2-a1″) is required "for every k < K", which includes the window k = K−1. So (T2-a1″) as written does contain β_K(0) ≥ β for every K. R1 line 79 itself says "with the finitely many early values positive".
- Lemma D step 3 (clamp inactive) uses only nonnegative tail sums Σ_{i>k} β̃_i ≥ 0, not individual positivity. The individual bound enters only through the conclusion (0.31) at k = K−1.

## Step 3: §3.1–§3.3 against U3_VERIFY, U3_REPAIRS_VERIFY
- Theorem 4.1 + O5 [proved+verified]: U3_VERIFY P6 confirmed m = 0 only; U3_REPAIRS_VERIFY §4 grades O5 CONFIRMED (minor constant slips). Tag matches. "C independent of M and L" matches U3_REPAIRS line 220.
- Lemma 3.1 strip π/2: matches U3_VERIFY P5 correction.
- O6 [proved+verified]: U3_REPAIRS_VERIFY §5 rederived every constant (α = 3624, s, a, ghost L⁶/4). Coverage of 𝒟_∞: U3_REPAIRS line 211 uses a Neumann ball with b → 2b for data near 𝒟_j; fine. Measured corner values 103.5/176.7/193.0/195.3 match the verifier (author's "≤ 177" was refuted there; the document uses the corrected numbers). Verifier note: the numerics use a surrogate Λ, not U3 (1.1); the document does not say this. Minor.
- Theorem 6.1 [proved+verified, given (H3)]: U3_VERIFY P8 "CONFIRMED as conditional; CORRECTED: (6.2) should be the Taylor-data norm". The document still says "norm (6.2) = sup-norms of up to two k- and p-derivatives". This is close to the Taylor-data norm but the document should cite the correction explicitly. Minor mismatch.
- (H3)/C4: U3_VERIFY C4 "CONFIRMED at order p²; V1 unchanged". Document tags (H3) open and supported at p². Matches.

## Step 4: §3.4–§3.6 against U3_LEMMA51_VERIFY, U3_LEMMA51_R23_VERIFY
- Neutral sector: LEMMA51_VERIFY item 1 "CONFIRMED (value bound); derivative part needs one paragraph". Document tag matches.
- Single-block d = 4 failure: R23_VERIFY item 3 CORRECTED (sign of the second bond is +W; refutation of Thm 4.1 m = 2 needs the variational step of §6). Document says "[proved+verified] ... plus the verifier's variational step". Matches.
- One-step recursion, magnetic rescaling, O6 per step, R2 midpoint identity, (3b.3): R23_VERIFY items 1, 4, 5 CONFIRMED. Tags match. Label slip: R23_VERIFY item 4 labels the corner values j = 1, 2, 3, ∞; U3_REPAIRS_VERIFY labels them M = 1, 3, 9, ∞ (j = 0, 1, 2, ∞). The document follows the second. Cosmetic.
- (A), (W) open; (N) plausibly false: matches R23_VERIFY §7.
- Prop. 3.6 rates: R23_VERIFY item 6 confirms jL^{−2j} (σ^{(1)}) and j²L^{−2j} (σ^{(2)}, Jordan chain f⁰ → f¹ → f², all eigenvalue L^{−2}) as conditional on O6 + (A) + (W). The max over sectors is j²L^{−2j}, so the j² factor is right. Defect: at j = 0 the bound C j²L^{−2j} = 0; write C(1+j)²L^{−2j}.
- Prop. 3.6 tag [reduced] / assembly [proved, unverified]: correct. It also depends on the unverified neutral-sector derivative paragraph and on the cited identification of σ-Taylor data with the (6.1) data (LEMMA51_VERIFY item 3). Document lists both. CONFIRMED with the j = 0 fix.

## Step 5: §4 and §5.3 against BETA_FP_VERIFY, BETA_FP_LEMMA43_VERIFY
- Telescoping [proved+verified, corrected form]: BETA_FP_VERIFY item 1 CORRECTED (exact only for the p → 0 coefficient). Document states this scope. Match.
- Prop. 2.1 [proved+verified]: LEMMA43_VERIFY item 1 CONFIRMED (10^{−14}). Match.
- Cor. 3.1 [proved+verified as an identity]: LEMMA43_VERIFY item 2 CORRECTED (scope). Document repeats the caveat, but the next sentence "The whole log Λ sits in the fine piece, taken from Lüscher–Weisz (5.7)" restates as fact what the caveat says is equivalent to the open (H′). Overclaim in wording; delete or mark it [open].
- (ii)–(iii) reduction given (H): LEMMA43_VERIFY item 3 CONFIRMED conditional; (H) UNSUPPORTED. Document tags match.
- (H′) sufficiency: the Cesàro sharpening is already in BETA_FP_VERIFY §6 ("given Step 2, Cesàro gives β_∞ = lim S_k/k; only S_k = c k log L + o(k) is needed"). So "[proved, unverified]" is conservative; the argument was stated by a verifier.
- §5.3 table: β_3 entries follow BETA_FP_VERIFY §7. Gaps: (a) the per-level β_2 values (0.317–0.341, 0.333) are single-p values at p = 0.2, not p → 0 fits (BETA_FP_VERIFY §7 last bullet); the table header says "p → 0 by fit unless stated" and does not state it. (b) BETA_FP_VERIFY item 5 grades the "deviation falls from +0.37 to +0.06" reading UNSUPPORTED; the document keeps the numbers, with the caveat "two points do not fix a rate". Acceptable but weak. (c) Verifier sym β_3 at N = 8 is 0.261; the document cites only the one-sided 0.40 and 0.286.
- Composed β_1+β_2 = 0.953 at Ng = 8: BETA_FP_VERIFY item 11 graded the older Ng = 4/6 composed check UNSUPPORTED (16% Ng drift). Ng = 6 → 8 still drifts 1.5%. Check NUMERICS §6 next.

## Step 6: NUMERICS §6, U1_VERIFY, PLAN.md, CMP 109 OCR
- NUMERICS §6 line 72: composed β_1+β_2 = 0.953 is a single point p = 0.2 with an O((Lp)²) bias label. The document table header says "p → 0 by fit unless stated" and does not state it for this entry or for the per-level β_2. Mismatch (minor).
- U1_VERIFY line 8, 71–72: the split S_k = c k log L + κ_W^F − κ_k is bookkeeping; any c′ gives an exact identity. Boundedness of κ_k is a tautological restatement. This applies to (H′) as well unless κ_k is the coarse-only object ρ(L^k) of Prop. 2.1. See point 4 below.
- CMP 109 OCR line 124: "L is an odd, positive integer > 11". Verbatim confirmed. The document's gloss "for his constants" is THEOREM2.md's interpretation, not shown.
- PLAN.md: BETA_FP_H.md launched, file absent. The document says "not read here". Consistent.

## Step 7: the eight points

### Point 2: chain (T2-a1′) ⇒ (T2-a) ⇒ Theorem 2 ⇒ Theorem 1. CONFIRMED
Lemma E: C_1 g ≤ C_1 γ ≤ β_0/2, so β_0/2 ≤ β_j(g) ≤ β_0′ + β_0/2, uniform in history (β_j(0) history-free). Lemma D with β = β_0/2, β′ = β_0′ + β_0/2: telescoping gives u_k − u_K ∈ [β(K−k), β′(K−k)]; with log(L^kε)^{−1} = (K−k) log L this is (0.31) with β/log L, β′/log L. So (0.31) is obtained from the increments' bounds. Theorem 1 then needs only g_k ∈ ]0,γ] with γ ≤ Balaban's γ (must be added to (H2) explicitly; (H2) names only γ_0 of (H0)). The C¹ form follows from Balaban's "uniformly bounded together with all derivatives" (exp(−c/g²) terms are C^∞ at 0).

### Point 3: Prop. 3.6. CONFIRMED with one fix
Rates Δ: L^{−2j} (O5), σ^{(1)}: jL^{−2j}, σ^{(2)}: j²L^{−2j} (Jordan chain f⁰ → f¹ → f², all eigenvalue L^{−2}; with (W) no marginal component), neutral L^{−4j}. Max is j²L^{−2j}; Lipschitz (6.1) transfers it. j² is right given (A), (W), and (N) false. Fix: C(1+j)²L^{−2j}, since at j = 0 the stated bound is 0. Assembly also uses the unverified neutral derivative paragraph and the cited identification of σ-Taylor data with the (6.1) data; both are listed.

### Point 4: (H′) Cesàro. CONFIRMED, with a clarification
S_k = Σ_{j≤k} β_j(0) (S_0 = 0). β_j(0) → β_∞ ⇒ S_k/k → β_∞ (Cesàro; no rate needed). S_k/k = c log L + κ_W^F/k − κ_k/k with κ_W^F k-independent (fine Wilson piece depends on Λ only through log(Λ/P), absorbed in c log Λ). So lim κ_k/k exists and equals c log L − β_∞. Hence, given Prop. 3.6, (H′) ⇔ β_∞ = c log L: it is equivalent, not weaker. It has content only because κ_k = ρ(L^k) is defined from the coarse Gaussian theory alone (Prop. 2.1). If κ_k is read as the remainder of S_k, (H′) is the U1_VERIFY tautology. The document should say this.

### Point 5: §5 early steps. CORRECTED (most important)
(a) What §5.1 gets right. Literal (0.31) at k = K−1 gives β_K(history) ≥ β_Bal log L. With β_Bal independent of g, letting g → 0 (all g_k ≤ g) and using (H0) gives β_K(0) ≥ β_Bal log L > 0. Since Balaban's ε = L^{−K} ranges over all K ≥ 1, literal (0.31) forces every β_j(0) > 0. (T2-a1″) also contains the window k = K−1. So individual positivity is necessary for literal (0.31) at every K ≥ 1. Lemma D's proof itself uses only tail sums ≥ 0; the individual bound enters only through the conclusion at k = K−1.
(b) What §5.1 gets wrong. "No averaging argument avoids the early steps" and the use of (E) for Theorem 1 overclaim. Lemma D′ (modified shooting): assume (H0), (H0′), sup_j |β_j(0)| ≤ B, β_j(0) → β_∞ > 0. Pick J with β_j(0) ≥ β_∞/2 for j > J. Take γ ≤ min(γ_0, γ_Bal, β_∞/(4C_1)). Then β_j(g) ≥ β_∞/4 for j > J, |β_j(g)| ≤ B′ := B + β_∞/4 for all j. Every tail sum T(k,K) = Σ_{i=k+1}^{K} β_i ≥ −D, D := J·B′, uniformly in K. Set 1/g_1² := 1/γ² + D. For g ≤ g_1, t = 1/g²: the clamped map satisfies F̃(t − D) ≤ t ≤ F̃(t + B′K); IVT gives u_0*; ũ_k = t + T̃(k,K) ≥ t − D ≥ 1/γ², so the clamp is inactive. Result: all g_k ∈ ]0,γ], g_K = g. This is Theorem 1's hypothesis. Balaban's own wording "for a sufficiently small positive g" fits g ≤ g_1. The nested-interval variant works the same way.
(c) Consequences. Theorem 1 unconditional needs no (E), no explicit j_*, and no rate: only convergence (Prop. 3.6 without its rate), β_∞ > 0 (limsup κ_k/k < c log L), and bounded early steps. The bound obtained is 1/g² + β(K−k) − D ≤ 1/g_k² ≤ 1/g² + β′(K−k), i.e. (0.31) up to an additive constant. Literal (0.31) also holds with a smaller β > 0 for every K ≥ K_0(J, D) (windows with k ≥ J are pure tail; windows with k < J have length ≥ K − J and sum ≥ −D + (β_∞/4)(K − J)). So (E) is needed only for literal (0.31) at the finitely many coarse cutoffs K < K_0. Numerical check: β_1..β_3 = −0.8, later 0.4, history-dependent perturbation; shooting succeeds with clamp inactive for K = 1, 2, 3, 4, 8, 20 (scratch, not kept). Caveat: this assumes Balaban's Theorem 1 needs only g_k ∈ ]0,γ], as its quoted statement says; if his induction silently uses monotonicity g_k ≤ g_{k+1}, early negative steps would break it. Not checked in CMP 122.
(d) j_* formula: correct (definition and geometric form, take max with 1). It covers β_{j+1} for j ≥ j_*, so β_1..β_{j_*} are the early steps. Consistent.
(e) j_* ~ 10² from C ~ b³. Arithmetic reproduced: b(3) = 7.5·10^{33} ⇒ j_* ≈ 111; b(13) = 2.7·10^{50} ⇒ ≈ 70; b = 195 ⇒ ≈ 10 (L = 3), ≈ 4 (L = 13). b³ is the right power for C_Φ (w″(0) = tr(𝔅^{−1}∂²𝔅) − tr(𝔅^{−1}∂𝔅𝔅^{−1}∂𝔅); Lipschitz in the inverse costs b² per inverse, leading b³). But the estimate sets C_data = O(1). C_data comes from the Moyal one-step formulas, which contain one-step inverses (b², b³ per step) and the Jordan-chain sums. With C ~ b⁶, j_* ≈ 218 (L = 3), ≈ 138 (L = 13). So "≈ 110 / 70" is a lower estimate. Given (b), this matters only for literal (0.31) at small K.

### Point 1: status tags vs verifier verdicts. CORRECTED
Mismatches:
1. §7 ledger lists "Necessity of positivity of every step (§5.1, elementary)" under [proved+verified]. No verifier checked it. It is [proved, unverified], and true only for literal (0.31) at all K ≥ 1 (Point 5).
2. Lemma E [proved+verified]: verifier checked the C g² form; the document uses C¹ (C_1 g). Trivial variant, but say so.
3. Theorem 6.1 [proved+verified]: U3_VERIFY P8 is "CONFIRMED as conditional; CORRECTED (Taylor-data norm)". The correction is not cited.
4. Cor. 3.1: tag correct, but the following sentence states the open (H′) content as fact (Step 5).
5. "(H′) suffices" [proved, unverified]: the argument is already in BETA_FP_VERIFY §6. Conservative, acceptable.
6. §5.3 table: per-level β_2 (0.317–0.341, 0.333) and composed 0.953 are single-p (p = 0.2) values; header says "p → 0 by fit unless stated". Verifier sym β_3(N = 8) = 0.261 omitted.
7. O6 measured norms use a surrogate Λ (U3_REPAIRS_VERIFY §5). Not stated.
All other tags (O5, O6, Prop. A/B, Lemma 3.1, neutral sector, R2, recursion, single-block failure, telescoping, Prop. 2.1, (H) UNSUPPORTED, (A)/(W) open, (N)) match their verifiers.

### Point 6: odd-L bookkeeping. CONFIRMED (minor gaps)
L odd > 11 verified verbatim (CMP 109 OCR line 124). Odd L enters U3 Lemma 1.2 (centered composition), R2 midpoint parity, O5/Prop. A, and BETA_FP_LEMMA43 Lemma 4.1. (H1) says "three places" but lists Lemma 4.1 inside the O5 bullet; fine. "For his constants" is an interpretation. All constants (O6 b(L)) are explicit in L, so every odd L ≥ 3 is covered. Only L = 3, j = 1 numerics are odd-L. Separate overclaim: §1.2 "one-loop parts hold for SU(N)". The charged/neutral split of Lemma 5.1 is the SU(2) Cartan split; SU(N) is not checked anywhere.

### Point 7: open-hypothesis list (§6). CORRECTED (incomplete)
§6 lists (H0), (H0′), (H3), (A), (W), (H′), (E). Missing from that list (present elsewhere or nowhere):
- (G1), (G2) and Lüscher–Weisz (5.7) [cited], used by Prop. 4.3.
- Infinite-volume identification of Balaban's β_j (LEMMAS_DE_VERIFY §3 item 2) and the Szegő-type per-cell limits (U1_VERIFY gap (a)).
- γ ≤ Balaban's Theorem-1 γ.
- Neutral-sector derivative paragraph; σ-Taylor ↔ (6.1)-data identification (cited from U3_VERIFY §7).
- Uniform level bounds partly cited from CMP 95/96/99 (§7 last block mentions them).
And (E) should move from "needed" to "needed only for literal (0.31) at K < K_0" (Point 5).

### Point 8: overclaims. CORRECTED
- §5.1 and §8 item 5 / bottom line: certified early steps are presented as needed for Theorem 2 ⇒ Theorem 1. They are not (Point 5). This overstates the remaining work, it does not overstate results.
- §4.1(c): "The whole log Λ sits in the fine piece" stated as fact.
- §4.2: (H′) called "weaker"; given Prop. 3.6 it is equivalent to the conclusion.
- §1.2: SU(N) claim.
- (3.2) at j = 0.
- §5.2 heuristic j_* omits the b-dependence of C_data.
- §5.3 "deviation falls from +0.37 to +0.06": BETA_FP_VERIFY item 5 graded this reading UNSUPPORTED; the caveat "two points do not fix a rate" is present.
No overclaim of a proved result found: the document says "It is not proved" and tags (A), (W), (H), (H3), (H0′) as open.

Status: complete.
