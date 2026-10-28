# SOURCES_T2_VOL — the volume hypothesis (Vol) in the Theorem 2 setting

Date: 2026-10-28. Edits: THEOREM2_PROOF_v4.md §1.1 (one paragraph) and its change log; this file. No other file edited.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags: [V] read on a page image or in a verified project file; [P] proved here; [I] inference, not printed.
Inputs read: THEOREM2_PROOF_v4 §1, §2 headers, §10; SOURCES_A15_BDRY §3.4 + VERIFY items (e), (4); TRUST_LEDGER C31, §4.2; SOURCES_T2_KUNIF (full); SOURCES_T2_G2 (grep: torus, N → ∞); SOURCES_BOOKKEEPING (grep); ASSEMBLY §0–§1.3 (grep); CMP 109 pp. 251, 257 (page images, 200 dpi).

## 1. Task 1: are CMP 109's torus exponent and cube exponent the same m?

- p. 251 [V, image]: "a torus T obtained by the usual identification of boundary points of the cube {x ∈ R^d : −L_μ ≤ x_μ ≤ L_μ, μ = 1, …, d}. We take L_μ = L^m, where L is an odd, positive integer > 11, and m is a positive integer." Then (0.1) with "ε = L^{−K}".
- p. 257 [V, image]: "We decompose the space T into the lattice of closed cubes of a size M, where M = L^m, with centers at points of the lattice T_M^{(j+m)}. … In this paper we choose the size M much bigger than the previously fixed scales."
- Glyph: both are the same italic lower-case m. Balaban neither identifies the two nor distinguishes them. The p. 257 m is introduced as new ("we choose the size M much bigger"), with no reference back to p. 251.
- Verdict [V for the print, I for the intent]: the print uses the SAME SYMBOL m for both. Read literally, m_T = m_M, so the final-scale torus side is ℓ = 2L_μ = 2L^m = 2M. The text gives no sign that Balaban means this: p. 251 fixes the torus before any M exists, and p. 257 chooses M by a largeness condition that does not mention the torus. Most likely a reused letter. The project must not rely on either reading and must fix m_T and m_M separately.
- Consequence of the literal reading [P]: ℓ = 2M < 22M, so (Vol) fails at k = K. N_k = 2M·L^{K−k} > 22M iff L^{K−k} > 11 iff K − k ≥ 1 (L ≥ 13). So only the last step k = K fails, i.e. ⌈log_L(22M/2M)⌉ = ⌈log_L 11⌉ = 1 step.
- Tiling side remark [I]: decomposing the scale-K torus into M-cubes needs M | ℓ. With ℓ = 2L^{m_T} and L odd this holds iff m_T ≥ m_M. So the literal reading m_T = m_M is the smallest torus on which the p. 257 tiling exists at the last scale.

## 2. Task 2: (Vol) and every place where the volume or K enters

Statement. (Vol): the final-scale (unit-lattice, k = K) torus has ℓ > 22M cells per side, M = L^{m_M}. Project L-power form (A15_WHOLE §5): side L^N in scale-0 cells, ℓ = L^{N−K}; then N ≥ K + m_M + 2 is sufficient for every odd L > 11 (L² ≥ 169 > 22), and necessary for L ≤ 21. For odd L ≥ 23, N ≥ K + m_M + 1 suffices. CMP 109 form: ℓ = 2L^{m_T}, sufficient m_T ≥ m_M + 1 (2L ≥ 26 > 22) [P, arithmetic].
Reason for 22M [V: SOURCES_A15_BDRY_VERIFY item (e)]: □_0 = □̃^5 has side 11M and must lie in a box of side < N_k/2. N_k = ℓL^{K−k} decreases in k, so k = K is the binding step.

Place-by-place check.

| # | place | how volume or K enters | compatible with (Vol)? |
|---|---|---|---|
| 1 | v4 §1.1 setting, ε = L^{−K} | K = number of RG steps; the torus side is not stated (before this amendment) | yes; (Vol) is a K-free lower bound on ℓ. For fixed physical torus ℓ the pair (N, K) moves together: N = K + log_L ℓ |
| 2 | Theorem 2w (§1.3), "for every K ≥ 1" | shooting over K steps | yes, unchanged: for each K take the torus of side ℓ (N = K + log_L ℓ). (Vol) does not restrict K at fixed ℓ |
| 3 | Lemmas D′/D″ (§2.1–2.2; KUNIF §2, §5.1) | run at one fixed K on β_1, …, β_K; β_j = whole-lattice function (CMP 119 (2.24), p. 249) | yes; no N appears. D′/D″ need no relation N ≥ K + … at all. Their constants (γ, b, R, C_β) are volume-free by KUNIF (K-unif) |
| 4 | Theorem K / (G2) (§3.2, §4.1) | per-cell infinite-volume one-loop densities | yes; volume-free by definition |
| 5 | SOURCES_T2_G2 (torus limits at fixed j) | N_{K,j} := level-j cells per side → ∞ at fixed j; needs N_{K,j}Λ > 4R_j; G2 assumes N_{K,j} ≥ L^{K−j} [I there] | yes. Under (Vol) N_{K,j} = ℓL^{K−j} > 22M·L^{K−j}, which is the G2 assumption with margin; ℓ fixed and K → ∞ gives N_{K,j} → ∞ at fixed j. G2's result is used only by the fallback, which KUNIF §5.1 marks as not needed |
| 6 | §10 item 9 (K-independence) | "a finite volume brings K-dependence back" | yes; KUNIF §5.1 closes the shooting side by definition; the finite-volume part moved to B8, whose replacement (B8-c) is exactly where (Vol) is used |
| 7 | B8 replacement (A15_BDRY §3.4; TRUST_LEDGER B8) | irrelevance threshold N_k > 22M for all k ≤ K | this is the source of (Vol) |
| 8 | TRUST_LEDGER A1/(C) torus-side hypothesis (side ≥ c·RM coarsest blocks) | separate lower bound on the torus for the propagator chain | yes; both are lower bounds on ℓ; the setting takes the larger. Their relative size is not compared here [I] |
| 9 | ASSEMBLY §0, §1.3 (Target 2) | physical side ℓ ∈ 2N fixed, K ≥ K_0, ε → 0 | yes, with one point: the L-power form gives ℓ = L^{N−K} ODD, which contradicts ASSEMBLY's ℓ even (needed for the two reflection link planes, ASSEMBLY §2.7). So for Target 2 the hypothesis must be read in the side-ℓ form: ℓ ∈ 2N, ℓ > 22M (and M | ℓ [I]), e.g. ℓ = 2L^{m_T}, m_T ≥ m_M + 1, as in CMP 109 [P] |
| 10 | SOURCES_BOOKKEEPING | quotes p. 251 (L_μ = L^m, ε = L^{−K}) and p. 259 (k = K unit lattice) only | no N–K relation; consistent |

## 3. Does (Vol) restrict the theorem, and does K = N − m_M − 2 lose anything?

- At fixed physical torus ℓ (Balaban's and ASSEMBLY's setting): (Vol) is a condition on ℓ only. Every K ≥ 1 stays covered. The continuum limit ε = L^{−K} → 0 at fixed ℓ is unaffected [P].
- At fixed scale-0 torus L^N (the L-power reading): (Vol) caps K at N − m_M − 2 for L ≤ 21. This drops only the last m_M + 2 coarse-graining steps, which would take the torus from L^{m_M+2} cells to one cell. Neither Balaban nor the project runs those steps: Balaban's RG ends at the unit lattice, where the torus still has ℓ = 2L^{m_T} cells per side, and the final integral there is a finite-dimensional integral, not an RG step. Theorem 2w, Lemmas D′/D″, and the shooting quantity g_K = g concern k ≤ K only. So the choice K = N − m_M − 2 loses nothing that Theorem 2 or Target 2 states [P, by inspection of the statements].
- What (Vol) excludes: tori with ℓ ≤ 22M final-scale cells per side. On those the last ⌈log_L(22M/ℓ)⌉ steps are outside Balaban's printed scheme and outside the A15_BDRY argument; whether a bounded number of such terminal steps (O(1) mismatch per cell on ≤ (22M)^4 cells) can be absorbed into constants is not shown [I; A15_BDRY_VERIFY item (e)]. M is fixed before γ and is scale-free (CMP 122 I p. 186: "the conditions on M, γ, A_0, and A_1 … do not depend on any scale" [V: SOURCES_BOOKKEEPING]), so the excluded set is a fixed range of small tori, independent of K.
- Infinite-volume direction (ℓ → ∞): (Vol) is a lower bound, so compatible.

## 4. Conclusion

(Vol) is ADMISSIBLE. It is a K-free lower bound on the fixed torus, ℓ > 22M final-scale cells per side; N ≥ K + m_M + 2 is a sufficient L-power form for all odd L > 11. It restricts the theorem only to tori of side > 22M (in final-scale cells); it does not restrict K at fixed physical torus, and it does not enter the proof of Theorem 2w (Lemmas D′/D″ use the whole-lattice β_j). It enters where Theorem 2w is applied on the torus: Theorem 1 via B8 (replaced form (c)), and Target 2.
Two cautions: (1) CMP 109 prints the torus exponent and the cube exponent with the same letter m [V, images pp. 251, 257]; the literal reading gives ℓ = 2M and fails (Vol) at the last step; the project fixes m_T ≥ m_M + 1 independently. (2) For Target 2 use the side-ℓ form (ℓ even); the L-power form L^{N−K} is odd and is incompatible with ASSEMBLY's ℓ ∈ 2N.

Ledger. [V] CMP 109 p. 251 and p. 257 text, read on page images this session. [P] arithmetic thresholds (§1, §2 statement), the place-by-place table entries 1–7, 9–10, §3 bullets 1–2. [I] intent of the reused m; M | ℓ for the tiling; relative size of the A1 torus-side bound; absorption of terminal steps.

STATUS: COMPLETE (unverified).
