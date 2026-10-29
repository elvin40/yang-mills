# SOURCES_CTR_RESIDUE_VERIFY — adversarial check of SOURCES_CTR_RESIDUE.md (H-047 estimate causality; E_0 history-free)

Date: 2026-10-28. Verifier: Opus. Ids follow IDS.md.
Grades: CONFIRMED / CORRECTED / UNSUPPORTED, per claim.
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Method. I rendered CMP 109 pp. 260–301 (PDF pages 12–53; PDF page n = journal page 248 + n) and CMP 116 pp. 1–22 with pdftoppm -r 150 into a fresh /tmp folder. I read every page listed below as an image. I deleted the folder after the check. Text layers: I re-ran the g_{k+1} grep on balaban/1987_cmp109_rg_approach_I.txt and a short E_0 / g_{k+1} grep on the CMP 119 and CMP 122 text layers (scope check only).
Pages read as images: CMP 109 pp. 260, 262, 263, 264, 265, 266, 267, 268, and every page 269–301. CMP 116 every page 1–22.

## 0. Verdict

PASS WITH CORRECTIONS.

Both conclusions of SOURCES_CTR_RESIDUE hold. Every quoted sentence and equation matches the printed page. The image reading of the pages that the derivation covered only by text layer finds no g_{k+1} and no coupling of the next step in any estimate. The corrections are below. None of them changes a conclusion.
- C1 (E_0 definition). E_0 is not fixed by "½E_0 = c_Z" alone. CMP 116 p. 16 also requires "C_3 ≤ E_0C_1", with C_3 the absolute constant of CMP 116 (1.39) and C_1 the absolute constant of (1.20). So E_0 is one fixed number with E_0 ≥ 2c_Z and E_0 ≥ C_3/C_1. All of these constants are coupling-free. The conclusion "E_0 is history-free" stands.
- C2 (what the step proves). The step proves the properties of the term (2.13) and also the localized bound of log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1) (CMP 116 p. 21). The second object is coupling-free. So the causality conclusion stands. The derivation missed four stronger printed anchors: CMP 109 p. 269, CMP 109 p. 298, CMP 116 p. 14, CMP 116 p. 20 (quoted in §3).
- C3 (label of R-013). TRUST_LEDGER row R-013 is CMP 122 II Theorem 1, with its proof across CMP 116, 119, 122 I–II. The derivation calls R-013 "CMP 109 Theorem 3 and its proof chain, CMP 116". The check here covers the small-field step of CMP 109/116 only. CMP 119 also uses an E_0 (text l. 1917, (3.48)). I did not read CMP 119 or CMP 122. For L5 this is enough, because β_{k+1} and the (1.18) bound on E^{(k+1)} are small-field objects defined and proved in CMP 109/116.
- C4 (minor). The gloss "absolute = independent of X and j" (CMP 109 p. 263) is printed for α_0, α_1, not for c_Z. Applying it to c_Z is a reading. The derivation does not need it.

## 0.1 Resulting status

- L5 (R-031): PROVED relative to listed inputs. H-047 (estimate causality) and the on-trajectory uniformity of E_0 are closed relative to R-013, read as including the small-field step CMP 109 Sects. 2–5 + CMP 116 [verified here]. No [I] item of L5 is left. Residue as listed in SOURCES_CTR_RESIDUE 3.2, with the R-013 label corrected per C3.
- H-047: closed [P-sketch relative to R-013, verified]. The text-layer caveat of SOURCES_CTR_RESIDUE row 7 is removed: all pages are now read as images.
- N6: stays REDUCED. Its E_0 component is closed in value: E_0 is one coupling-free number, on and off the trajectory. What remains open is the off-trajectory sup induction: N7 (= B7 slot definition) and H-040. H-040 is upgraded from a text-layer grep to an image reading: in CMP 116 pp. 1–22 the only coupling symbol is g_k; in CMP 109 pp. 265–298 the older couplings enter only through the input E_k (terms E^{(j)}, β_j(g_{j−1}), j ≤ k).

## 1. Image log: occurrences of the next coupling

I recorded every symbol with index k+1 (or an index j that could equal k+1) and every γ condition. The question for each: is it a coupling of the next step, and does it enter an estimate of E^{(k+1)}?

1.1 CMP 109, cited pages 260–268.
- p. 260 (1.3): E^{(j+1)}(g_j, U_k), β_{j+1}(g_j), j = 0, …, k−1. Index convention: E^{(j+1)} carries g_j. No g_{k+1}.
- p. 263 (1.18): E^{(j)}(X, g_{j−1}, U, J). Same convention.
- p. 264 (1.20)–(1.22): Π_{j+1}(g_j), β_{j+1}(g_j). Theorem 3 hypothesis "0 < g_k ≤ γ for k = 0, 1, …, K". No coupling of a next step in the definitions.
- p. 265–267: only g_k ((2.1), (2.10), "B = g_kB′"). k+1 appears on T^{(k+1)}, U_{k+1}, J_{k+1}: lattices and configurations, not couplings. p. 266 (2.9) alternative cutoff "g_k/γ_k ε_1": g_k only.
- p. 268: g_k in (2.12)–(2.14). g_{k+1} appears once, in (2.15) "1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k)". The sentence after (2.15) uses (2.15) only to write A_{k+1} in the form (1.3). It does not enter a bound on (2.13).

1.2 CMP 109, pages 269–301 (text-layer only in the derivation; now read as images).
- No g_{k+1} on any page. No coupling other than g_k and the old couplings g_{j−1}, j ≤ k.
- k+1 indices that occur, none a coupling: U_{k+1}, J_{k+1} (pp. 269–280), U′_{k+1}, Ū^j_{k+1} (pp. 270–274), U_{k+1}(□_0, ·), H_{k+1}, u_{k+1}, ū_{k+1} (pp. 275–280), U^c_{k+1}, U′^c_{k+1} (pp. 273–280), T^{(k+1)} (p. 275).
- p. 273 (3.16): the space for "j = k+1" is a configuration space (conditions (i)–(iii)), not a coupling condition.
- p. 279: "Let us notice that j ≤ k" (Sect. 3, the E^{(j)} are the input terms).
- pp. 291–292, 298: β_j(g_{j−1}) in (4.38)–(4.45) and "We define the β-function β_j(g_{j−1}) equal to this coefficient". Here j runs over the input terms of E_k, so j ≤ k. p. 298: "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants." Preceding couplings only.
- pp. 299–301: references.
- γ conditions on pp. 269–301: none.
- E_0 on pp. 269–301: (3.17) p. 273, (3.54) and the remark p. 280, (4.5) p. 282, (4.36) p. 290, (5.10) p. 293, (5.44) p. 297. Each uses E_0 as the given input constant. None redefines it.

1.3 CMP 116, pages 1–22 (all read as images).
- No g_{k+1} on any page. Coupling symbol is g_k only: (1.19)–(1.22) pp. 6–7, (1.34) p. 9 "{B: |B| < ε_1g_k^{−1} on Y}", p. 10 "1/g_k²", (2.3) p. 12 "|B(b)| ≥ ε_1/g_k", (2.22) p. 16, (2.26) p. 17, (2.31)–(2.32) p. 18, (2.33)–(2.34) p. 19.
- k+1 indices, none a coupling: U_{k+1}, J_{k+1}, U^c_{k+1}, D_{k+1}, π_{k+1}, d_{k+1}, T^{(k+1)}, E^{(k+1)}, A_{k+1}.
- γ conditions: (2.31) p. 18 "for g_k², i.e. γ² sufficiently small, depending on M and κ"; p. 18 "(1/20)γ_2ε_1²/g_k² ≥ (1/20)γ_2ε_1²/γ² ≥ 4κ"; p. 19 (2.33)–(2.34) and "exp(−(1/20)γ_2ε_1²/γ²) ≤ ε_2"; p. 20 Lemma 3 "Under all the above restrictions on the constants M, κ, κ_1, α_0, α_1, α_4, α_6, γ_2, γ, ε_1". In every case γ enters through g_k ≤ γ. No γ condition is placed on the next coupling.
- E_0 on pp. 1–22: (1.24), (1.29) pp. 7–8; (1.30) p. 8; (1.36) p. 9; (2.18) and "C_3 ≤ E_0C_1" p. 16; (2.26) p. 17; (2.28) p. 18; ε_2 p. 19; C_3 p. 20; p. 21. None defines E_0 through a coupling.

1.4 Text-layer cross-check. The CMP 109 grep for g_{k+1} returns l. 366 ("constant gk+1 is determined from the equation", (0.20)) and l. 998 ((2.15)), as the derivation says. The image reading of pp. 260–301 agrees: (2.15) is the only occurrence there (pp. 249–259, which hold (0.20), were not image-read; they precede the step). The p. 19 condition "exp(−(1/20)γ_2ε_1²/γ²) ≤ ε_2" uses γ as a constant, after g_k ≤ γ was applied in (2.33).

## 2. Grades: §1 of the derivation (H-047)

| Item | Claim | Grade | Note |
|---|---|---|---|
| 1.2 | Theorem 3 text (p. 264) quoted verbatim; with K = k it reaches A_0, …, A_k only | CONFIRMED | Quote matches the image. (1.3) p. 260 sums j = 0, …, k−1. |
| 1.3 | p. 265 quote; (2.1) has only g_k; "E_k … equal to (1/g_k²)A + A_k" | CONFIRMED | Image matches. |
| 1.3 | CMP 116 p. 22 "The above remark completes the proof of the inductive assumptions for the action A_{k+1}, hence the proof of Theorem I.3." | CONFIRMED | Image matches. |
| 1.4(a) | (2.12), (2.13) contain only g_k and level-k data; C^{(k)} = (C*Δ^{(k)}C)^{−1} has no coupling | CONFIRMED | p. 268 image. (2.14) log N″_k = E^{(k+1)}(g_k, 1) also g_k only. |
| 1.4(b) | g_{k+1} enters only in (2.15), after (2.13); β_{k+1} defined by (1.20), (1.22) for j = k | CONFIRMED | p. 268 image. |
| 1.4(c) | "all terms … satisfy the required properties, except possibly the last term (2.13)"; the rest proves the properties of (2.13) | CORRECTED (C2) | Quote matches. The rest of the step also proves the localized bound of log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1) (CMP 116 p. 21). That object has no coupling, so the conclusion holds. Stronger anchors the derivation missed: CMP 109 p. 269 "Thus the proof of Theorem 3 is reduced to proving the remaining properties of (2.13), i.e. to a construction of the representation (1.7) with terms having the analytic extensions satisfying the bound (1.18)"; p. 298 "… to finish the proof of the inductive assumptions for the term E^{(k+1)} defined by (2.13)"; CMP 116 p. 14 "To end the proof of the first part of Theorem 3 we have to prove the bounds (I.1.18)"; p. 20 "We want to prove the inequality (I.1.18) for E^{(k+1)}(X)". |
| 1.4(d) | (2.31) bracket and "for g_k², i.e. γ² sufficiently small, depending on M and κ"; below (2.32) the 4κ chain; (2.33)–(2.34) use ε_1²/g_k² via g_k ≤ γ; p. 267 "B = g_kB′" | CONFIRMED | All four on the images. Add: CMP 116 (1.20) p. 6 "C_1g_k\|B\| < C_1ε_1", (1.34) p. 9, (2.3) p. 12, (2.22) p. 16. All g_k. |
| 1.4(e) | (4.38) quote p. 291; p. 292 "We define the β-function β_j(g_{j−1}) equal to this coefficient … cancel, because (4.38) appears with the minus sign in the effective action (1.6)"; j ≤ k | CONFIRMED | Quotes match. j ≤ k because (4.38) is "the second term under the sum over j" of E_k. p. 298 confirms that β_j depends on "all preceding coupling constants". |
| 1.5 | Text-layer absence of g_{k+1}: CMP 109 l. 366, l. 998 only; CMP 116 none | CONFIRMED, and upgraded | Grep re-run matches. Image reading of CMP 109 pp. 269–301 and CMP 116 pp. 1–17 finds no g_{k+1} (§1). The [V-text] grade becomes [V]. |
| 1.6 | H-047: (1.18) and analyticity of E^{(k+1)} need only g_0, …, g_k ≤ γ | CONFIRMED [P-sketch relative to R-013, small-field step] | The step's inputs are the level-k assumptions, the fixed constants and g_k ≤ γ. g_{k+1} appears only in (2.15), which rewrites A_{k+1} into the form (1.3). No estimate uses it. For u_{k+1} ≤ 0 the form (1.3) at level k+1 is formal; the bounds on E^{(k+1)} do not depend on it. |
| 1.6 | (2.E) holds before (2.15) (SOURCES_CTR_VERIFY V3.4) | not re-checked | Cited from a verified file. Not load-bearing for H-047. |
| 1.7 | Consequence for H-141 (Loc), conditional on K-033–K-037 being step-(k+1) properties | CONFIRMED as a conditional | The condition is stated. I did not check K-033–K-037. |
| 1.8 | Without 1.6 no cheap repair (restrict hcont; shrink γ_L) | not re-checked | Depends on SOURCES_CTR 1.3 and the Lean lemma. Not needed once 1.6 holds. |
| 3.1 row 7 | "g_{k+1} appears nowhere else in the step" | CONFIRMED [V] | Now image-read on all step pages. |

## 3. Grades: §2 of the derivation (E_0)

| Item | Claim | Grade | Note |
|---|---|---|---|
| 2.1 | p. 263 (1.18) quote; E_0 absent from the Theorem 3 constant list (p. 264) | CONFIRMED | Both images match. |
| 2.2 | p. 21 quotes: "Next, we assume that O(1)C_3ε_1 ≤ ½E_0. In fact this assumption is unessential …"; "… with an absolute constant instead of E_0. We define ½E_0 as equal to this constant, and we take M sufficiently large, so that δ_0M ≥ κ." "This constant" is the bound constant of the localized log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1) | CONFIRMED | Verbatim on the image. The antecedent of "this constant" is the absolute constant in the bound for "the expression localized in X" of [log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1)]. |
| 2.2 | E_0 := 2c_Z | CORRECTED (C1) | CMP 116 p. 16, after (2.18): "We assume that (1/8)(κ_1 − 1) ≥ (1 − 3δ)κ, C_3 ≤ E_0C_1, and q ≥ 8." This C_3 is the absolute constant of (1.39) p. 10 (the symbol C_3 is reused on p. 20 for a different constant). So E_0 must also obey E_0 ≥ C_3^{(1.39)}/C_1. The p. 21 sentence "we can take E_0 such, that the assumption is satisfied" also treats E_0 as adjustable upward. Correct form: E_0 is one fixed number, E_0 ≥ max(2c_Z, C_3^{(1.39)}/C_1). Every bound that uses E_0 is an upper bound, so a larger E_0 is valid. All constants in the max are absolute and coupling-free. |
| 2.3 | (1.4) p. 260 has no coupling; p. 267 "This quadratic form defines the k-th normalization factor Z^{(k)}(U_{k+1}) given by the formula (1.4) with j = k"; (2.11) is the order-0 term in g_k | CONFIRMED | Images match. CMP 116 (2.5) p. 12 writes Z^{(k)} again as a Gaussian integral of ⟨B, C*Δ_kCB⟩, coupling-free. |
| 2.3 | c_Z has no coupling; the domain U^c_{k+1}(X, α_0, α_1) is coupling-free | CONFIRMED | Conditions (i)–(iv), p. 262 (1.11)–(1.16), contain no coupling (image). c_Z bounds a coupling-free function on a coupling-free domain. |
| 2.3 | "absolute" = free of k, via the p. 263 gloss | CORRECTED (C4) | The gloss is printed for α_0, α_1. For c_Z it is a reading. Not needed at fixed k. |
| 2.4(i) | (2.28) p. 18 "Assuming 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1 exp 5κ ≤ 1": a condition on ε_1 | CONFIRMED | Quote matches. This condition is linear in E_0, not homogeneous. With E_0 fixed it bounds ε_1 from above. The derivation does not claim homogeneity here. |
| 2.4(ii) | p. 20 "C_3 = 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1"; O(1)C_3ε_1 ≤ ½E_0 is homogeneous in E_0 and constrains ε_1 alone | CONFIRMED | C_3 = E_0·K with K = 4(L+2)^4O(1)C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1}, coupling-free. The condition is equivalent to O(1)Kε_1 ≤ ½. E_0 cancels. |
| 2.4(iii) | p. 280 "Eventually we have to recover the constant E_0 … taking ε_1 sufficiently small we can get the required constant." | CONFIRMED | Quote matches. A condition on ε_1 with E_0 as target. |
| 2.4(iv) | (2.31) γ small "depending on M and κ"; p. 264 "The constant γ depends on all other constants." | CONFIRMED | Add p. 19 "exp(−(1/20)γ_2ε_1²/γ²) ≤ ε_2", ε_2 = 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1: a γ condition that takes E_0 as given. Consistent with the order E_0 before ε_1 before γ. |
| 2.4 | No later step redefines E_0 as a function of the couplings | CONFIRMED (CMP 109 pp. 260–301, CMP 116 pp. 1–22) | Every E_0 occurrence (§1.2, §1.3) is an input or a target. Scope per C3: CMP 119 and CMP 122 not read. |
| 2.4 | Remark: the p. 21 homogeneous condition cannot choose E_0 | CONFIRMED | See 2.4(ii). |
| 2.5 | One E_0 for all h ∈ T_k; output obeys (1.18) with ½E_0 + ½E_0 = E_0 | CONFIRMED [P-sketch relative to R-013 and H-047] | p. 21: (2.41) gives ½E_0 for E^{(k+1)}; the log Z terms give ½E_0. Both are pieces of the representation (1.6) at level k+1, so a term localized in X obeys (1.18) with E_0. |
| 2.6 | E_0 value history-free off trajectories too | CONFIRMED | Follows from 2.2 (corrected) and 2.3. Off-trajectory applicability of the step is not claimed. |
| 3.2 | L5 PROVED relative to listed inputs, no [I] left | CONFIRMED with C3 | R-013 label to be read as in C3. |
| 3.3 | N6 REDUCED, narrowed; E_0 value closed; off-trajectory sup induction open (N7, H-040) | CONFIRMED | H-040 now has image support (§0.1). |

## 4. Proposed ledger text (for the runner; not applied here)

R-031: "L5 PROVED relative to listed inputs [verified, 2026-10-28]: H-047 and on-trajectory E_0 uniformity closed relative to the small-field step of R-013 (CMP 109 Sects. 2–5, CMP 116) by SOURCES_CTR_RESIDUE + VERIFY (PASS WITH CORRECTIONS). E_0 is one coupling-free number ≥ max(2c_Z, C_3^{(1.39)}/C_1) (CMP 116 pp. 16, 21); g_{k+1} occurs in the step only in (2.15), image-checked on CMP 109 pp. 260–301 and CMP 116 pp. 1–22. Residue: R-013, R-018, CMP 102 Sect. G, L-024 + H-141, R-015 (definition only)."
N6 / R-006: "E_0 value closed (coupling-free, on and off trajectory); off-trajectory sup induction still reduced to N7 and H-040 (H-040 now image-supported)."

## 5. Report (≤120 words)

PASS WITH CORRECTIONS. I read CMP 109 pp. 260–301 and CMP 116 pp. 1–22 as images. g_{k+1} occurs only in (2.15), p. 268, after E^{(k+1)} is defined. No estimate uses it. Every γ condition goes through g_k ≤ γ. All quotes match. H-047 is CONFIRMED relative to the small-field step. Corrections: (C1) E_0 also obeys "C_3 ≤ E_0C_1" (CMP 116 p. 16), so E_0 ≥ max(2c_Z, C_3/C_1); it is still coupling-free. (C2) The step also bounds the log Z^{(k)} term, which is coupling-free. (C3) R-013 is CMP 122 II Theorem 1; CMP 119/122 were not read. The p. 21 condition is homogeneous in E_0. L5 (R-031): PROVED relative to listed inputs. N6: still reduced; E_0 value closed.
