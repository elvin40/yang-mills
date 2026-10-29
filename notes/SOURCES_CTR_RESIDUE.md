# SOURCES_CTR_RESIDUE — the two [I] items left in L5 (R-031): H-047 (estimate causality) and on-trajectory uniformity of E_0

Date: 2026-10-28. Status: derivation, unverified. Ids follow IDS.md.
Grades: [P] proved here; [P-sketch] proof given, routine steps not written out; [V] verified reading of a printed page (image); [R] relies on a named input; [I] interpretation of a source.
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Files read in full: SOURCES_CTR.md, SOURCES_CTR_VERIFY.md. Read in part: TRUST_LEDGER.md rows R-006, R-031 and l. 379, 538; SOURCES_T2_H0.md §1–§5 and N6 (l. 149); SOURCES_T2_H0_VERIFY.md (N6 lines); SOURCES_G3_N2_VERIFY.md l. 41; SOURCES_T2_B7_CLAMP.md (N6 lines); IDS.md rows H-040, H-047.
Pages read as images (pdftoppm -r 200, fresh /tmp folder, deleted after): CMP 109 pp. 259, 260, 263, 264, 265, 267, 268, 280, 291, 292; CMP 116 pp. 18, 19, 20, 21, 22. Text layers grepped: balaban/1987_cmp109_rg_approach_I.txt (all), balaban/1988_cmp116_rg_approach_II_cluster.txt (all).

## 0. Result in brief

(1) H-047, estimate causality. PROVED relative to R-013 [P-sketch from proof structure; every cited sentence [V]]. In Balaban's induction step k → k+1, the object E^{(k+1)} is defined by (2.13) (CMP 109 p. 268) from g_k and the level-k data. Every estimate of this object that the step proves uses the coupling g_k only, through g_k ≤ γ (CMP 116 (2.31), (2.33)). The coupling g_{k+1} first appears in (2.15), after (2.13), and it does not appear again in the step. Theorem 3 lists g_{k+1} ≤ γ because the theorem covers the next step too. The single printed anchor is CMP 109 p. 268: "all terms in this representation satisfy the required properties, except possibly the last term (2.13) in the sum", together with the definition (2.13) itself, which contains no g_{k+1}.

(2) On-trajectory uniformity of E_0. PROVED relative to R-013 [P from printed text, [V]]. Balaban fixes E_0 once, in the proof, before the sequence. CMP 116 p. 21: "We define ½E_0 as equal to this constant", where "this constant" is the "absolute constant" in the bound on the localized expansion of log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1). Z^{(k)} is defined by CMP 109 (1.4) p. 260 and contains no coupling. So E_0 does not depend on any coupling, on any trajectory or off it. All later closure conditions take E_0 as given and constrain ε_1, M, γ only.

Status after this file: L5 (R-031) PROVED relative to listed inputs, with no [I] item of its own left. N6 keeps the status "reduced", but its E_0 component is now closed on trajectories, and the value of E_0 is history-free everywhere. Details in §3.

## 1. H-047: the bound on E^{(k+1)} needs only g_0, …, g_k ≤ γ

1.1 The claim to prove. Fix a true trajectory with u₀ ∈ D_k, so 0 < g_i ≤ γ for i ≤ k. The coupling g_{k+1} may exceed γ, or u_{k+1} may be ≤ 0. Claim: E^{(k+1)}(X, g_k, U, J) is analytic on U^c_{k+1}(X, α_0, α_1) and obeys (1.18) with the same constants as in Theorem 3. SOURCES_CTR Step 3 (B1) and Step 5 use exactly this. SOURCES_CTR_VERIFY V5.1(b) graded it [I].

1.2 What the hypothesis line says [V, CMP 109 p. 264 image]. "There exist positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1 such, that if κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ for k = 0, 1, …, K, then the sequence of actions A_k, defined inductively by the small field renormalization transformations (0.17)–(0.20), satisfy all the inductive assumptions described between (1.1)–(1.22)." Applied with K = k, the theorem covers the assumptions of A_0, …, A_k. Those include E^{(j)} for j ≤ k only (A_k in (1.3), p. 260, has the sum j = 0, …, k−1 of E^{(j+1)}). So the statement alone does not give E^{(k+1)} without g_{k+1} ≤ γ. The task is to read the proof.

1.3 The proof is an induction, and its step has a stated input and output [V].
- CMP 109 p. 265, start of Sect. 2: "We assume that after k steps we have obtained the action A_k described in the previous section, and we apply the next renormalization transformation T_k restricted to a small field region by a characteristic function χ_k". (2.1) on the same page: the integrand carries only −(1/g_k²)G(V) − (1/g_k²)A(U_k(V)) + E_k(U_k(V)), with "E_k … equal to (1/g_k²)A + A_k".
- CMP 116 p. 22: "The above remark completes the proof of the inductive assumptions for the action A_{k+1}, hence the proof of Theorem I.3."
So the step's input is "the inductive assumptions for A_k" plus the choice of constants plus a condition on the coupling of the step. Its output is "the inductive assumptions for A_{k+1}".

1.4 Where the couplings enter the step [V].
(a) Definition. CMP 109 p. 268, (2.12): A_{k+1}(U_{k+1}) = −(1/g_k²)A(U_{k+1}) + E_k(U_{k+1}) + [log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1)] + log N_k″^{−1}∫dμ_{C^{(k)}}(B)χ_k exp[Tr log(I − h(δ/δB D̃)(g_kCB)) + … + {E_k(U_k(exp i[g_kCB − hD̃(g_kCB)]V^{(k)})) − E_k(U_k(V^{(k)}))}]. (2.13): "E^{(k+1)}(g_k, U_{k+1}) = log∫dμ_{C^{(k)}}(B)χ_k exp[P^{(k)}(g_k, U_{k+1}, B) + {…}]". Every coupling in (2.12)–(2.13) is g_k, or sits inside E_k (that is, g_0, …, g_{k−1} and the level-k data). C^{(k)} = (C*Δ^{(k)}C)^{−1} (p. 268, top) has no coupling.
(b) The coupling g_{k+1} enters only here. p. 268: "Finally we perform the coupling constant renormalization 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k) (2.15) with the β-function defined by the formulas (1.20), (1.22) for j = k." β_{k+1} is read off E^{(k+1)} by (1.20)–(1.22) (p. 264). So g_{k+1} is defined after E^{(k+1)} and from it.
(c) The bounds on E^{(k+1)}. p. 268, last sentence of Sect. 2: "By the inductive assumption, and by the properties of the expressions given by explicit formulas, all terms in this representation satisfy the required properties, except possibly the last term (2.13) in the sum." The rest of the proof (CMP 109 Sects. 3–5, CMP 116 Sects. 1–2) proves the properties of the term (2.13). That term is the function E^{(k+1)}(g_k, ·) of (a).
(d) The coupling conditions used to bound (2.13). CMP 116 p. 18, (2.31): the bracket [(1/20)γ_2ε_1²/g_k² − 4M^4exp(−(1/10)γ_2ε_1²/g_k²)] is handled "for g_k², i.e. γ² sufficiently small, depending on M and κ". CMP 116 p. 18, below (2.32): "(1/20)γ_2ε_1²/g_k² ≥ (1/20)γ_2ε_1²/γ² ≥ 4κ". CMP 116 p. 19, (2.33)–(2.34): the same quotient ε_1²/g_k², bounded through g_k ≤ γ. CMP 109 p. 267: "Next we make the scaling transformation B = g_kB′." Each condition is g_k ≤ γ.
(e) The renormalization cancellation inside the step. CMP 109 p. 291, (4.38): "There is the second term under the sum over j, the term β_j(g_{j−1})(A(U_j(exp iB′V^{(k)})) − A(U_k(V^{(k)})))". p. 292: "We define the β-function β_j(g_{j−1}) equal to this coefficient. … hence both groups of terms cancel, because (4.38) appears with the minus sign in the effective action (1.6)." Here j ≤ k (the terms of E_k), so the couplings are g_0, …, g_{k−1}.

1.5 Absence check for g_{k+1} [V on the image pages listed in the header; text layer elsewhere].
- CMP 109 text layer, whole file: the pattern for g_{k+1} (OCR forms "gk+1", "9k+i", and variants with spaces) matches twice: l. 366 (p. 255, "the coupling constant g_{k+1} is determined from the equation", that is (0.20)) and l. 998 ((2.15), p. 268). Neither is inside the estimate part of the step.
- CMP 116 text layer, whole file: no match. The coupling symbols in CMP 116 are g_k only (l. 294–316 (1.19)–(1.22), l. 439 (1.34) "{B: |B| < ε_1g_k^{−1}}", l. 450, 502–512, and (2.31)–(2.34)).
- The OCR finds both printed occurrences in CMP 109, so the pattern is sensitive to this symbol. The pages not read as images (CMP 109 pp. 269–279, 281–290, 293–301; CMP 116 pp. 1–17) are covered by the text layer only. Grade of the absence: [V] on image pages, [V-text] on the others.

1.6 Proof of H-047 [P-sketch, relative to R-013].
Fix a true trajectory with g_0, …, g_k ∈ ]0, γ]. Theorem 3 with K = k gives the inductive assumptions for A_k (they mention only g_0, …, g_k). Run Balaban's induction step k → k+1 on A_k. By 1.4(a), (c), (d), (e), the step constructs E^{(k+1)}(g_k, ·) by (2.13) and proves its analyticity on U^c_{k+1}(X, α_0, α_1) and the bound (1.18), using as inputs only: the assumptions for A_k; the constants fixed in Theorem 3; and g_k ≤ γ. By 1.4(b) and 1.5, the step uses g_{k+1} nowhere before or inside these proofs. So the properties of E^{(k+1)} hold whatever the value of 1/g_k² − β_{k+1}(g_k) is, including values ≤ γ^{−2} or ≤ 0. ∎
What g_{k+1} ≤ γ is for: it is the hypothesis of the next step k+1 → k+2 (the same (2.31), (2.33) with k+1). For u_{k+1} ≤ 0 the form (1.3) at level k+1 has no real g_{k+1}, but no output of step k+1 that SOURCES_CTR uses depends on (1.3) at level k+1: (2.E) holds before (2.15) (SOURCES_CTR_VERIFY V3.4), and Π_{k+1}, β_{k+1} are read from E^{(k+1)} (p. 264 (1.20)).
Grade. [P-sketch]: the step is used as a black box with the input/output stated in 1.3. The sketch status comes from the fact that Balaban's step is itself a long proof with unwritten parts (R-013). The causality reading adds nothing to R-013. It is not an extra [I] item.

1.7 Consequence for SOURCES_CTR Step 5 [P-sketch]. SOURCES_CTR_VERIFY V4.6 says (Loc) = H-141 at h′ ∈ T_k needs the same estimate causality. To the extent H-141's inputs (K-033–K-037) are properties of E^{(k+1)} proved in step k → k+1, 1.6 covers them. I did not re-read K-033–K-037; this sentence is conditional on that.

1.8 If 1.6 is rejected: no cheap repair [P]. Two candidate repairs fail.
(a) Restrict `hcont` to D_{k+1}. `nested_shoot` uses `hcont` at step k on intervals inside D_k (SOURCES_CTR 1.3), and D_k contains points with u_{k+1} < γ^{−2}. So this changes the Lean lemma.
(b) Shrink the Lean γ to γ_L < γ_Bal with γ_L^{−2} − sup|β_{k+1}| ≥ γ_Bal^{−2}, so that every point of D_k has g_{k+1} ≤ γ_Bal. This is circular: the bound on β_{k+1} at such a point is |Π| ≤ C_ΠE_0, which is the bound on E^{(k+1)} in question.
So without 1.6 the item would stay a cited reading. 1.6 removes the need for a repair.

## 2. E_0 in (1.18): fixed once, before the sequence

2.1 The gap as stated (SOURCES_CTR_VERIFY V4.1). CMP 109 p. 263: "There exists a constant E_0 such that |E^{(j)}(X, g_{j−1}, U, J)| ≤ E_0 exp(−κd_j(X)) (1.18) for M ≥ M(κ), γ sufficiently small, and for all configurations (U, J) ∈ U^c_j(X, α_0, α_1)" [V, image]. E_0 is not in the constant list of Theorem 3 (p. 264) [V]. The inductive assumptions are asserted per sequence. So the page alone does not exclude E_0 = E_0(g_0, g_1, …). SOURCES_CTR Steps 3 and 5 need sup_n E_0(hⁿ) < ∞ along hⁿ → h in T_k. The current project reduction is N6 (SOURCES_T2_H0 l. 149, corrected in SOURCES_T2_H0_VERIFY 4.3; TRUST_LEDGER row R-006 "past-uniformity of E_0 reduced, not proved"; l. 379). N6 argues that the CMP 116 step maps "inputs obey (1.18) with E_0" to "outputs obey (1.18) with E_0" under step-free conditions. N6 does not say where the number E_0 comes from.

2.2 Where Balaban fixes E_0 [V, CMP 116 p. 21 image]. After (2.41):
- "Next, we assume that O(1)C_3ε_1 ≤ ½E_0. In fact this assumption is unessential, because the constant C_3ε_1 is small anyway, and we can take E_0 such, that the assumption is satisfied. The assumptions allow finally us to fix all the constants, or rather bounds on these constants."
- "The inequality (2.41) and the assumptions imply the inequality (I.1.18), with ½E_0 instead of E_0, for the terms of the effective action E^{(k+1)} in (I.1.3). The effective action in (I.1.6) is obtained by adding to the above action the expression [log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1)]. … The expression localized in X satisfies the bound (I.1.18) with κ replaced by δ_0M, and with an absolute constant instead of E_0. We define ½E_0 as equal to this constant, and we take M sufficiently large, so that δ_0M ≥ κ. This yields the bounds (I.1.18) for terms of the effective action in the representation (I.1.6) also."
So E_0 := 2c_Z, where c_Z is the "absolute constant" in the bound for the localized terms of log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1) (generalized random walk expansion, "[16], see the formula (63) there").

2.3 c_Z contains no coupling [V + P].
- CMP 109 (1.4), p. 260 [V, image]: "Z^{(j)}(U_k) = ∫dB δ(Q̃B) exp[−½⟨B, Δ^{(j)}(U_k)B⟩]".
- CMP 109 p. 267 [V, image]: "This quadratic form defines the k-th normalization factor Z^{(k)}(U_{k+1}) given by the formula (1.4) with j = k." The quadratic form is (2.11), the "Terms of the order 0 in g_k", equal to −½⟨B′, Δ^{(k)}B′⟩.
- So Z^{(k)}(U_{k+1}) is a function of U_{k+1} (and of L, d, k through Δ^{(k)} and Q̃). It has no coupling argument. Its localized expansion and the constant c_Z of its bound therefore cannot depend on g_0, g_1, … [P]. The domain on which the bound holds, U^c_{k+1}(X, α_0, α_1), is coupling-free (pp. 262–263, (1.11)–(1.16); SOURCES_CTR_VERIFY V4.3) [V].
- The word "absolute" (p. 263 gloss: "independent of X and j") adds that c_Z is also free of k. Steps 3 and 5 work at fixed k and do not need this.

2.4 The order of choices [V + P].
- E_0 = 2c_Z is fixed first. The page calls c_Z "an absolute constant" and lets M enter only through the decay rate (p. 21: "with κ replaced by δ_0M, and with an absolute constant instead of E_0"). I do not re-derive which fixed constants c_Z depends on. By 2.3 none of them is a coupling.
- Every later condition takes E_0 as given and constrains other constants, all free of the couplings:
 (i) CMP 116 p. 18 (2.28): "Assuming 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1 exp 5κ ≤ 1" — a condition on ε_1.
 (ii) CMP 116 p. 20: "We define the constant C_3 = 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1." Then O(1)C_3ε_1 ≤ ½E_0 (p. 21) is, after division by E_0, a condition on ε_1 alone.
 (iii) CMP 109 p. 280: "Eventually we have to recover the constant E_0 in the inductive assumption (1.18), and the mechanism for it is provided by the differentiation with respect to t_□, at t_□ = 0. This differentiation yields a factor O(1)α_2^{−1}ε_1, and taking ε_1 sufficiently small we can get the required constant." Again a condition on ε_1, with E_0 the target.
 (iv) CMP 116 p. 18 (2.31) and below (2.32): γ small "depending on M and κ". Theorem 3, p. 264: "The constant γ depends on all other constants."
- Theorem 3 quantifies γ (and ε_1) before the sequence ("There exist positive constants … such, that if … 0 < g_k ≤ γ …"). E_0 is fixed before ε_1 and γ. So E_0 is fixed before the sequence. It is history-free by construction [P].
- The p. 263 quantifier order agrees: "There exists a constant E_0 such that … for M ≥ M(κ), γ sufficiently small" puts E_0 before γ [V]. Alone this would be a reading [I]; with 2.2 it is not needed.
- One wording point. The p. 21 sentence "we can take E_0 such, that the assumption is satisfied" seems to choose E_0 by the closure. It cannot: C_3 contains the factor E_0, so the condition O(1)C_3ε_1 ≤ ½E_0 is homogeneous in E_0 and constrains ε_1. The later sentence "We define ½E_0 as equal to this constant" is the actual definition. Either reading gives a value of E_0 free of the couplings, because both sentences contain no coupling [P].

2.5 Proof that (1.18) holds with this one E_0 at every history in T_k [P-sketch, relative to R-013 and §1].
Fix k and h ∈ T_k, a true trajectory with g_0, …, g_k ∈ ]0, γ]. Balaban's induction runs along h: the base A_0 is the Wilson action, with no E-terms; at each step j → j+1, j ≤ k, the step uses the level-j assumptions with the fixed E_0, the fixed constants, and g_j ≤ γ (§1 for j = k). Its output obeys (1.18) with ½E_0 + ½E_0 = E_0 (2.2). The number E_0 is the one fixed in 2.4, the same for every h. Hence sup_{h′∈T_k} sup_X |E^{(k+1)}(X, ·; h′)|e^{κd_{k+1}(X)} ≤ E_0. ∎
This gives exactly the input that SOURCES_CTR_VERIFY V4.1 found missing: in Step 3, M_N = 2Σ_X E_0e^{−κd(X)} is free of h; in Step 5, C_{k+1}, m are uniform on T_k (the L-024 constant reading, SOURCES_CTR item 12, was confirmed "given the E_0 input", V4.6).

2.6 Off-trajectory (for N6, not for L5) [P from 2.3–2.4]. The value E_0 = 2c_Z is history-free on every past, not only on trajectories, because c_Z contains no coupling. What remains for N6 off the trajectory is not the value of E_0. It is whether the step applies at an off-trajectory past: the slot definition of the chain (N7 = B7) and the claim that the step "uses only the own coupling g_k" (H-040). §1.4–§1.5 supports H-040 on the image pages read here (CMP 116 pp. 18–22; CMP 109 pp. 265, 267, 268, 280, 291, 292), and by text layer elsewhere. One caution for off-trajectory use: the cancellation of 1.4(e) needs β_j to be the coefficient read from the same chain. On a slot chain this holds by the slot definition of β, which is N7, not this file.

## 3. Grades, resulting status of L5 and N6

3.1 Step grades.
| # | Step | Grade |
|---|---|---|
| 1 | Theorem 3 hypothesis line lists g_{K} ≤ γ; with K = k it does not reach E^{(k+1)} (1.2) | [V] p. 264 |
| 2 | The proof is an induction A_k ⇒ A_{k+1} (1.3) | [V] CMP 109 p. 265, CMP 116 p. 22 |
| 3 | E^{(k+1)} is defined by (2.13) from g_k and level-k data; g_{k+1} first appears in (2.15), after it (1.4(a), (b)) | [V] p. 268 |
| 4 | The step proves the properties of the term (2.13) only (1.4(c)) | [V] p. 268 |
| 5 | The coupling conditions of the estimate are g_k ≤ γ ((2.31), (2.33), B = g_kB′) (1.4(d)) | [V] CMP 116 pp. 18–19; CMP 109 p. 267 |
| 6 | The renormalization cancellation uses β_j(g_{j−1}), j ≤ k (1.4(e)) | [V] CMP 109 pp. 291–292 |
| 7 | g_{k+1} appears nowhere else in the step (1.5) | [V] image pages; [V-text] other pages |
| 8 | H-047: (1.18) and analyticity of E^{(k+1)} hold if g_0, …, g_k ≤ γ (1.6) | [P-sketch] relative to R-013 |
| 9 | E_0 := 2c_Z, defined in the proof (2.2) | [V] CMP 116 p. 21 |
| 10 | Z^{(k)} has no coupling, so c_Z has none (2.3) | [V] CMP 109 pp. 260, 267; deduction [P] |
| 11 | Every closure condition takes E_0 as given and constrains ε_1, γ (2.4) | [V] CMP 116 pp. 18, 20, 21; CMP 109 p. 280 |
| 12 | One E_0 for all h ∈ T_k (2.5) | [P-sketch] relative to R-013 and row 8 |
| 13 | E_0 value history-free off trajectories too (2.6) | [P] |
| 14 | Consequence for (Loc) H-141 at h′ ∈ T_k (1.7) | [P-sketch], conditional on K-033–K-037 being step-(k+1) properties (not re-read) |

No [I] item is introduced. The deductions use R-013 only as "Balaban's induction step is correct with the input and output it states". That is the content R-013 already carries.

3.2 Status of L5 (R-031). PROVED relative to listed inputs [this file unverified]. The two [I] items of SOURCES_CTR_VERIFY V6.6 leave the residue:
- H-047 (estimate causality): now [P-sketch] relative to R-013 (§1).
- On-trajectory uniformity of E_0: now [P-sketch] relative to R-013 (§2), with the definition of E_0 [V].
Remaining residue of L5: R-013 (CMP 109 Theorem 3 and its proof chain, CMP 116); R-018 (B3, coupling-free background polydisc); CMP 109 (2.3) + CMP 102 Sect. G [R]; L-024 + H-141 (Loc) [verified, relative to K-033–K-037]; R-015 (definition only); (i-tr) as in SOURCES_T2_B7_CLAMP 5.1; γ ≤ γ_Bal. Text-layer caveat: the absence of g_{k+1} on pages not read as images (row 7) is [V-text].
Proposed ledger text for R-031 (for the runner; not applied here): "L5 PROVED relative to listed inputs: Route 2 (Lean, nested) + (i-tr) + H-089 (C-tr) by SOURCES_CTR Route C + VERIFY; H-047 and on-trajectory E_0 uniformity closed relative to R-013 by SOURCES_CTR_RESIDUE (E_0 := 2c_Z, CMP 116 p. 21; g_{k+1} absent from the step k → k+1) [unverified]. Residue: R-013, R-018, CMP 102 Sect. G, L-024 + H-141, R-015 (definition only)."

3.3 Status of N6. REDUCED, narrowed [this file unverified].
- The "past-uniformity of E_0" component (TRUST_LEDGER R-006 residue; l. 379) splits in two. (a) The value: E_0 is one number, fixed in the proof before the sequence, with no coupling in its definition. PROVED [P from V, §2.2–§2.4], on and off trajectories. (b) The bound with this E_0 on trajectories: PROVED relative to R-013 (§2.5). 
- Still reduced: the off-trajectory sup induction itself, that is, that the step applies at an off-trajectory past. Inputs: N7 = B7 slot definition; H-040 (the step uses only g_k and the input sup), now supported by images of CMP 116 pp. 18–22 and CMP 109 pp. 265, 267, 268, 280, 291–292 and by the text layer elsewhere; and N6's Balaban inputs (A1, A1w, A2, A3, A4, A7, A8, A10, A14, A17, A18, per SOURCES_T2_H0_VERIFY 4.3).
- L5 no longer uses N6 in any form. G3 (SOURCES_G3_N2_VERIFY l. 41) and H0-red still use N6 off the trajectory.

3.4 What a verifier should check first. (a) The p. 21 sentence "We define ½E_0 as equal to this constant" and that "this constant" refers to the log Z^{(k)} bound. (b) That (2.13) is the only object whose properties the rest of the step proves (p. 268), and that no estimate in CMP 109 Sects. 3–5 uses g_{k+1} (image-read the pages marked [V-text]). (c) That Z^{(k)} of (1.4) has no coupling. (d) The 2.4 remark on the homogeneous condition O(1)C_3ε_1 ≤ ½E_0.

## 4. Report (≤120 words)

Both residual [I] items of L5 are closed relative to R-013. (1) H-047: in Balaban's step k → k+1, E^{(k+1)} is defined by (2.13) (CMP 109 p. 268) from g_k and level-k data. Its bounds use only g_k ≤ γ (CMP 116 (2.31), (2.33)). g_{k+1} first appears in (2.15), after E^{(k+1)}, and nowhere in the estimates (images; text-layer grep for unread pages). (2) E_0: CMP 116 p. 21 "We define ½E_0 as equal to this constant", the absolute bound constant of log Z^{(k)}, and Z^{(k)} ((1.4) p. 260) has no coupling. So E_0 is fixed before the sequence and is history-free. L5: PROVED relative to listed inputs, no [I] left. N6: still reduced off-trajectory; its E_0 value is closed.
