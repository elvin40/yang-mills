# SOURCES_ROP_RESIDUE_VERIFY — adversarial check of SOURCES_ROP_RESIDUE.md

Date 2026-10-29. Verification file. Ids follow IDS.md. This file edits no other file. PLAN.md was not changed. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Page images read in this session (pdftoppm -r 150, fresh folder /tmp/ropv.*, deleted at the end; three 300-dpi crops of pp. 411, 412, 415 in the same folder): CMP 99 Propagators pp. 396, 397, 399, 408, 409, 410, 411, 412, 413, 414, 415, 416, 427; CMP 96 pp. 224, 233, 234, 238; CMP 99 Regular pp. 77, 98; CMP 122 I pp. 177, 179; CMP 119 p. 265. Text-layer greps (no images): CMP 96 and CMP 95 for every "RM"/"R"; CMP 96 p. 239; reference lists of CMP 99 Propagators and CMP 99 Regular.
Project files read: SOURCES_ROP_RESIDUE (all); OPUS_QUEUE ll. 1–15; SOURCES_L1_B §3 (grep "Sep"); SOURCES_ROP_GEOMETRY_VERIFY (grep); SOURCES_ORDER_CANON N-060, N-180, N-270, N-310, N-380 (grep); the five consumers (grep of the cited lines); SOURCES_A1_WALK (grep "3.154").

## Verdict

CONFIRMED WITH CORRECTIONS. No correction changes a result of the file. The main results hold at the grades the file states: (a) M ≥ R_0M_1 is not load-bearing [P-sketch]; (b) the block-M_1 reading of CMP 99 Thms 3.1–3.3 [P-sketch]; (c) W ≥ LM on every R-operation layer [P given (Shell), (Sep)]; (d) (iii) [P-sketch], (ii) inside R-018.
Corrections: (1) one claim is UNSUPPORTED. The file says that the face-adjacency reading makes Balaban's "admissible sequence" sentence false. The argument shows only that the proof fails under that reading. It does not show that the sentence is false. (2) §4.4 bounds the old widths by (Sep) everywhere. Old layers that come from earlier R-operations have only W ≥ LM. This bound comes by induction, not from (Sep). (3) The width at the ~7 step is at least one M-cube, not exactly one. (4) Two page details: "only two scales" is on CMP 96 p. 239, not p. 238. CMP 99 p. 411 prints "e^{−(1/4)δ_0M} ≥ 3!(¼δ_0M)^{−3}" with "≥", which is a third misprint. (5) CMP 89 is not in balaban/. This verifier did not read it either. The gap does not affect (a), for the reason in V-a3.

## (a) R_0 and the global R

| # | claim | grade | evidence |
|---|---|---|---|
| V-a1 | R_0 is unprinted. CMP 96 p. 224 has "R is a big positive integer which will be fixed later". CMP 99 p. 408 has "a pair R_0, M_0 of smallest possible numbers satisfying conditions needed in the proofs". | CONFIRMED | images p. 224 (2.2), p. 408. A text grep of CMP 96 finds no later value of R. |
| V-a2 | In CMP 96 and CMP 95 the global R enters only as the product RM: (2.2), the neighbourhood Ω (p. 228, "distances to Ω_1 ≤ RM"), (2.57)–(2.59). | CONFIRMED | images pp. 233–234; text grep of CMP 96 gives only these lines; CMP 95 has no "RM". |
| V-a3 | The CMP 89 difference estimates enter CMP 99 Thms 3.1–3.3 only through local sequences. | CONFIRMED (CMP 89 not local) | CMP 89 is not in balaban/ (file list checked). This verifier did not read it either. p. 412 [image] says that the CMP 89 estimates "were proved using only the random walk expansions, hence they are valid for all propagators we have considered in [4]". It then applies them only "for propagators defined by sequences {Ω_j} with Ω_0 contained in a cube for which the condition (3.25) is satisfied", i.e. to G′_{□_0}, G′_□. p. 415 uses them only for G′_{□_0} − G′_□ and C_{□_0} − C_□. The proofs of Thms 3.1–3.3 never apply CMP 89 to the global sequence. So the unwritten step ("CMP 89 uses no global R") is not needed for the claim. The local sequences meet the CMP 96 hypotheses by construction. |
| V-a4 | The local □-sequences meet R_0 by construction: spacing 2R_0M_0 at levels n < j, one block M = KR_0M_0 at the top, Ω_0(□) ⊂ □̃⁵. | CONFIRMED | image p. 408. Note: the top spacing must be > R_0M_0 (strict (2.2)), so K ≥ 2 in any case. The file's K ≥ L (for the cube alignment of Ω_{j+1}(□)) is the right condition, and M_1 ≥ 2R_0M_0 with powers of L gives it. |
| V-a5 | The global sequence enters only through W (Lemma 2.1), the cube geometry (B8, B9, B11, B13) and the Sect. E distance. | CONFIRMED at [P-sketch] | pp. 408–416 [images]. Thm 3.7 "follows simply from Corollary 3.6 …, from the bound (3.89) and Lemma 2.1" (p. 410). The other geometric R-use of CMP 96 (the torus □̃³ with "only two scales", p. 239) is the B8 layer count. |
| V-a6 | M ≥ R_0M_1 is not needed. | CONFIRMED at [P-sketch] | follows from V-a2 to V-a5. Outside the scope, but relevant: CMP 99 Thm 3.14 (p. 427 [image], (3.154)) compares two global sequences. Its proof uses only the (3.107) walk expansions, so it adds no R. SOURCES_A1_WALK cites it. |
| V-a7 | 2.2 arithmetic: 8dL = 416 at d = 4, L = 13; the least power of 13 above it is 2197 > 24dL = 1248. | CONFIRMED | 13² = 169 < 416 < 2197. |
| V-a8 | 2.4: the optional entry M > R_0M_1 is acyclic (N-060 → N-270 → N-310, lower bounds only). | CONFIRMED | SOURCES_ORDER_CANON N-060, N-270, N-310 (grep); ROP_VERIFY 5.4 checked that no upper bound on M_1 in terms of M exists. |
| V-a9 | 2.5: canon R_1 needs no change. | CONFIRMED at [P-sketch] | It rests on V-a5. Note: CMP 99 Regular p. 98 [image] has its own producer condition "L^{−1}RM > 2dR_1M_1". The project's producer is CMP 102 (canon N-270, N-380), not the Regular p. 98 proof, so this condition is not on the project path. If a file ever uses Regular p. 98 as the producer, it needs M > 2dR_1M_1, which (RB) does not give. |

## (b) Block M_1 and the 17 uses

| # | claim | grade | evidence |
|---|---|---|---|
| V-b1 | G13: Regular p. 77 (1.4), "Ω_j is a sum of cubes of a size M_1L^jη, (L^jη)^{−1}dist(Ω_j^c, Ω_{j+1}) > RM_1 … fixed in [4] … d and L only … R … so that all the theorems on propagators in [2, 4] hold for RM_1". References [2] = CMP 95 + CMP 96, [4] = CMP 99 Propagators. | CONFIRMED | image p. 77; reference list (text). The phrase "hold for RM_1" also supports V-a2: Balaban states the need as a condition on the product. |
| V-b2 | G14: Regular p. 98, "R_1, M_1 are smallest integers for which all the theorems of the papers [2, 4] are valid … If we are proving the condition (3.35), then M = R_1M_1". | CONFIRMED | image p. 98. |
| V-b3 | B1 class (3.35)–(3.36), O(1) ≥ 10, Ω_0 defined with RM. | CONFIRMED | image p. 396. Note: Ω_0 = {big blocks within RM of Ω_1} is one more W-type layer (layer 0). The producer must supply (H1′) on it. The file puts this under "supply", which is correct, but does not name layer 0. |
| V-b4 | B2 Thm 3.1: "M ≥ M_1 … Mα_0 ≤ a_0"; outputs (3.42)–(3.47) on Δ(y), Δ̃(y). | CONFIRMED | image p. 397. Correction to G5: the bounds use the weighted distance d(y, y′) of CMP 96 (2.36). It depends on the sequence but not on M, so "no big block appears" stays true. |
| V-b5 | B3: Mα_0 enters only as Cor. 3.6's "O(1)Mα_0 ≤ a_1"; Thm 3.11 "α_0 sufficiently small" goes through the same step. | CONFIRMED at [P-sketch] | p. 408 ("α_1 = O(1)Mα_0. Assuming O(1)Mα_0 ≤ a_1"); p. 416 (positivity of G_□ "in the same way as in the proof of Corollary 3.6"). Arithmetic check: with α_0^B := b/(10M_1), Cor. 3.6 needs 12M_1α_0^B = 1.2b ≤ a_1. L²b ≤ a_1 implies this for L ≥ 2. |
| V-b6 | B4 𝒟_j: cubes of 2^d big blocks; □̃^n of side (2 + 2n). | CONFIRMED | image p. 408. |
| V-b7 | B5 (3.89) O(M^{−1}); (3.94) O(M^{−1/2}) per step. | CONFIRMED | images pp. 409, 410. |
| V-b8 | B6, B7: M = KR_0M_0; Ω_0(□) ⊂ □̃⁵ from dist < 2R_0M_0L^jη. | CONFIRMED | image p. 408. |
| V-b9 | B8 dichotomy "□̃³ ⊂ B^j(Λ_j), or intersects also B^{j+1}(Λ_{j+1})"; the B^{j−1} case is not printed. | CONFIRMED | image p. 408. |
| V-b10 | B9 "O(1) … can be taken as equal to 12". | CONFIRMED | image p. 409. |
| V-b11 | B10 𝒟′ with □̃² or □̃_1²; separation ML^jη. | CONFIRMED, quote CORRECTED | image p. 411 (and 300-dpi crop). Balaban prints "e^{−(1/4)δ_0M} ≥ 3!(1/4 δ_0M)^{−3}". The file quotes "≤". The correct inequality is ≤, so this is a misprint in print, and the file silently fixed it. Book it as a third misprint next to (3.25) and (3.95). |
| V-b12 | B11 local sequence of □_0 = □̃² inside □̃⁷ (side 16). | CONFIRMED | pp. 408, 411. |
| V-b13 | B12 (3.97), e^{−2δ_0M}, "distance from □̃ to □̃_0^c is at least M"; ζ margin ⅔M (p. 414); separations ≥ M (p. 415). | CONFIRMED | images pp. 412, 414, 415. |
| V-b14 | B13, Thm 3.10: 𝒟″ replaces □_0 by □̃_0²; "boundary conditions are outside □̃⁸, or □̃_1⁸". | CONFIRMED, with a note | image p. 415 and a 300-dpi crop. The same sentence also says "with the boundary conditions outside □̃_0^5". With □_0 = □̃² (p. 411) this gives □̃_0^5 = □̃⁷ (side 16), not □̃⁸ (side 18). So the print is not consistent with itself. Side 18 is the larger value, so the file's s = 18 and c_H = 18 are safe under either value. "The printed O(1) = 12 does not cover it" holds for both 16 and 18. |
| V-b15 | B14 Lemma 2.1, (2.59). | CONFIRMED | images pp. 233–234. |
| V-b16 | B15 commutators O(M^{−1}), O(M^{−2}); Thm 3.11 "1 − O(M^{−1})". | CONFIRMED | images pp. 414, 416. |
| V-b17 | B16 constants independent of {Ω_j} under (2.1), (2.2). | CONFIRMED | image p. 399. |
| V-b18 | B17 Sect. E "a distance between Λ and Λ_k^c is bigger than RM". | CONFIRMED | image p. 427. |
| V-b19 | Thm 3.10 implies Thm 3.3 ("This implies Theorem 3.3", p. 416). | CONFIRMED | image p. 416. |
| V-b20 | Each of B1–B17 reduces to an M_1-threshold, (RB) via Lemma CC′ with s ∈ {8, 12, 16, 18}, or a W-threshold. | CONFIRMED at the file's grades | 16 of the 17 rows were checked on images (all rows except B3's "nowhere else", which is [P-sketch] by nature). The use of Lemma CC′ at s = 8 (below the stated range 10–22) needs only the layer count. A smaller cube makes that count easier. This is an inference, and it is correct. |
| V-b21 | The five consumers get what they cite (§3.3). | CONFIRMED at [P-sketch] | grep of the cited lines: A1_KERNEL l. 19, 41, 78 (θ = log L/(RM)); C_CONDITION l. 21, 38, 79, 84 (D = RM/(4L²), (T1) as an M-threshold); S2_FORM l. 56, 66, 68 (interface factor L²); A3_GAMMA0_FULL l. 29, 31, 215, 271 ("M ≥ max(M_1, L)", "RM ≥ 4", sets of diameter ≤ 4L); CDC l. 47, 54 ("leaves room"). Each use matches the file's reading. The file's A3 step (a set of diameter ≤ 4L ≤ M_1 lies in a 12M_1 cube, then Lemma CC′ with s = 12) is [P]. |

## (c) Junction layers

| # | claim | grade | evidence |
|---|---|---|---|
| V-c1 | G16: p. 179 text: Ω_j^{~n} are unions of L^{−(k−j)}MR_j-cubes; N_0; (1.10)–(1.12); "separated by one layer of M-cubes … L^{−1}M-cubes"; "The sequence {Ω″_j} is an admissible sequence". | CONFIRMED | image p. 179. |
| V-c2 | G15 / (Comp): "Λ_k^c … is a union of connected components"; Z = the union of a class of components; "Z_k is identified with Z". | CONFIRMED | image p. 177. |
| V-c3 | G17 / (Shell): "we surround the union P′_{k+1} ∪ Z′^{~4}_k by a layer of LMR_{k+1}-cubes. In the complement (P′^~_{k+1} ∪ Z′^{~5}_k)^c". | CONFIRMED as [I, strong] | image p. 265. One "~" is one surrounding layer. The word "surround" supports the shell reading, because a face-only layer leaves the corners open. It does not prove the reading. |
| V-c4 | 4.3(a): W″_j ≥ 3LMR_{j+1} for h ≤ j ≤ k − N_0 − 1. | CONFIRMED [P given (Shell), (Sep)] | The arithmetic 8c_{j+1} − 5c_{j+1} is correct. Ω″_j ⊇ Ω_j is correct from (1.11)–(1.12). The bound ignores the ~5 enlargement of Ω_j itself, so it is conservative. At j = h, (Sep) is needed at the layer whose outer domain Ω_{h+1} was made at step k − N + 1. That is the edge of property (ii) of p. 177, so it rests on the [I-strong] of L1_B 3.2. |
| V-c5 | 4.3(b): the ~7 step at j = k − N_0 gives width ≥ c_{j_0} = M (unit lattice), i.e. L^{N_0}M = LMR_{j_0} ≥ LM in local units. | CONFIRMED; wording CORRECTED | 8c_{j_0} − 7c_{j_0} = c_{j_0} = M by the definition of N_0, and R_{j_0} = L^{N_0−1}. "Leaves exactly one cube" is wrong in one detail: the bound is at least one cube. Ω″_{k−N_0} = Ω^{~5}_{k−N_0}, so by (S2) and additivity of the ℓ^∞ norm along a segment, the width is ≥ M + 5c_{k−N_0}. The margin of the (Sep) constant is exactly one: (Sep) with 7 or less would give nothing. So this step depends on the full 8 of L1_B Lemma Sep under the shell reading. |
| V-c6 | 4.3(c): top block, layers of side Ms_{j+1}, width LM; room 2M ≥ Σ L^{−m}M. | CONFIRMED | image p. 179; arithmetic ML/(L − 1) ≤ 2M for L ≥ 2. N_0 − 1 layers is correct. |
| V-c7 | 4.4: pairs across ∂Z, the ball argument with (Comp). | CONFIRMED; justification CORRECTED | The ball argument is correct (it needs Λ_k ⊂ Ω_k, which is CMP 99's Λ_k = Ω_k^{(k)}). Correction: the last line "With (Sep), W_j ≥ 8LMR_{j+1} ≥ LM" holds only for layers made by RG steps. Old layers outside Z can come from earlier R-operations. L1_B l. 144 says those are one M-cube wide, i.e. W = LM. So the old width bound W_j ≥ LM comes by induction over earlier R-operations (base: RG layers by (Sep); step: this §4). The conclusion W″_j ≥ LM stays true. For j ≤ h − 1 (4.3(d)) the same induction applies. |
| V-c8 | 4.5: every cube side (MR_j, LM, M) is a multiple of M_1. | CONFIRMED | all are powers of L times integers; the partitions are compatible ("The partition is compatible with all the other partitions", CMP 119 p. 265 [image]). |
| V-c9 | 4.6: under face adjacency, "Balaban's sentence … would be false". | UNSUPPORTED | The file sets a lower bound for (Sep) under the face reading (⌊8/d⌋ = 2 cubes in ℓ^∞) against an upper bound for the enlargement (5 cubes in ℓ^∞). The result 2 − 5 < 0 is a negative lower bound, not a counterexample. In a consistent face-graph metric, (Sep) gives 8 steps and ~5 uses 5 steps, a margin of 3 steps. That can still mean zero ℓ^∞ width (cubes that touch at a corner), so the proof fails. But the file gives no configuration that the CMP 119 construction actually produces with width < M. Safe statement: "Under the face reading this proof gives no positive width at d = 4. The shell reading is the one under which Balaban's 'admissible' sentence can be proved." |
| V-c10 | (i) is closed. | CONFIRMED at [P given (Shell) [I-strong], L1_B Lemma Sep (with its property-(ii) [I-strong]), and the induction of V-c7] | |

## (d) Residues (ii), (iii); canon §6; misprints

| # | claim | grade | evidence |
|---|---|---|---|
| V-d1 | 5.2 (iii) sketch steps (1)–(6). | CONFIRMED at [P-sketch] | Checked: (6L + 10) ≤ 8L for L ≥ 5; Y^{(5)} ⊂ B^{i−1} ∪ B^i from W_i ≥ M > 8dM_1 and W_{i−1}s_{i−1} ≥ Ms_i/L > 8dM_1s_i under (RB); 10 ≤ 6L + 10 ≤ 18L; the □-sequence with □ → Y at index i − 1 matches p. 408; Ω_0(Y) ⊂ Y^{(5)}, a class cube, so Cor. 3.6 applies as printed. The open items are as the file states: Lemma D□ at the variant-B interface is not written, and the cover must keep variant-B cubes that meet B^i. |
| V-d2 | 5.1 (ii) = (ii-a) [I] + (ii-b) [R, convention], both inside R-018; the re-basing adds no case. | CONFIRMED | (RB) M > 24dLM_1 gives 18LM_1 < (3/(4d))M. The restriction fact (1) is [P]. |
| V-d3 | §6 item 1 (N-060 text for R_0). | CONFIRMED | text entry only, no new edge. |
| V-d4 | §6 item 2 (N-270, K ≥ L). | CONFIRMED | V-a4. |
| V-d5 | §6 item 3 (N-310: (RB), C7, C8, M_□^{99} := M_1, RM → M; do not book M ≥ R_0M_1 as required; optional M > R_0M_1; net +2, +3 with the optional entry). | CONFIRMED | matches ROP_VERIFY §8 item 4 and its +2 count (ROP_VERIFY l. 15, 112). |
| V-d6 | §6 item 4 (N-370 no change). | CONFIRMED | V-b5. |
| V-d7 | §6 item 5 (N-180, R := 1). | CONFIRMED | Every layer has W ≥ LM ≥ M (V-c10). |
| V-d8 | §6 item 6(a): CMP 99 p. 412 "(3.25)" and p. 415 "(3.95)" are misprints for (3.35). | CONFIRMED; ADD one | images. (3.25) is the projection formula R (p. 394, text layer l. 296). (3.95) is the operator identity of p. 411. Neither is a regularity condition. Add: p. 411 "≥" in "e^{−(1/4)δ_0M} ≥ 3!(¼δ_0M)^{−3}" is a misprint for "≤". Add: p. 415 "□̃_0^5" and "□̃⁸" do not agree (16 vs 18); use 18. |
| V-d9 | §6 item 6(b) (source reason for c_H = 18). | CONFIRMED | V-b14. |
| V-d10 | §6 items 6(c), 6(d), 7 (text notes, ledger line). | CONFIRMED with edits | In item 7, replace "residue (i) closed … given L1_B Lemma Sep and the shell reading" by "… given L1_B Lemma Sep, the shell reading of '~' [I-strong], and induction over earlier R-operations". Remove any wording that says the face reading makes Balaban's sentence false. |
| V-d11 | §7 grade table. | CONFIRMED except rows 4.4 and 4.6 | 4.4: [P given (Comp) and induction (V-c7)]. 4.6's face-reading remark: UNSUPPORTED (V-c9). The 4.3(b) row stays [P given (Shell), (Sep)], with margin 1 in the (Sep) constant. |

## Safe status

(R-op geometry): REDUCED [ROP_GEOMETRY verified; ROP_RESIDUE verified with corrections]. Residue (i) is closed at [P given L1_B Lemma Sep (with its property-(ii) [I-strong]), the shell reading of "~" (CMP 119 p. 265) [I-strong], and induction over earlier R-operations]. Residue (iv), CMP 99 Thms 3.1–3.3 at block M_1, is [P-sketch]. M ≥ R_0M_1 is not load-bearing. CMP 89 was not read (not in balaban/), but CMP 99 p. 412 applies it only to local sequences. Residue (iii), variant-B local propagators, is [P-sketch] and is void under variant A. The only open residue is (ii), which is the existing R-018 item. Headline discipline: no README change. A TRUST_LEDGER change is allowed after the owner applies V-d10.
Canon entries (§6): safe to apply items 1–6 as written. Book M > R_0M_1 at N-310 only as the optional entry. Item 6(a) gets the two additions of V-d8. Item 7 gets the edits of V-d10. No entry creates a cycle.

## Report (≤100 words)

Verdict: CONFIRMED WITH CORRECTIONS. 16 of the 17 block uses were checked on page images. All reduce to M_1 ≥ M_99, (RB) via Lemma CC′, or W-thresholds. M ≥ R_0M_1 is not load-bearing. CMP 89 is not in balaban/, but p. 412 applies it only to local sequences. Junction layers have W ≥ LM. The ~7 step depends on the full constant 8 of Lemma Sep. Corrections: the face-reading claim that Balaban's sentence is "false" is UNSUPPORTED. Old R-operation widths need induction, not (Sep). Add the p. 411 "≥" misprint and the p. 415 □̃⁷/□̃⁸ mismatch. Status: (R-op geometry) REDUCED, residue (ii) only.

STATUS: COMPLETE.
