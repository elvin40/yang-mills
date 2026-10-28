IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_FX_O1 verification (independent)

## 1. Definitions (text layers)
- CMP 109 p. 257 text: d_j(X) = shortest tree graph "contained in X and intersecting all the cubes in X", length divided by M; cubes rescaled to unit cubes; continuous space. Domains wall-connected. Matches claim 1.1.
- CMP 122 II p. 380 text: d′_j "defined in terms of MR_j-cubes instead of M-cubes". Matches 1.2.
- p. 384 text: S(Z) = Z′^{∼10}, smallest cover by LMR_{j+1}-cubes plus ten layers; "no large fields are created ... in S(Z)\Z". Matches 1.4.
- p. 384 text: "(6.31) [I]" cited for scaling property. CMP 109 index not re-checked; not load-bearing.
- p. 384-385 text: "for some steps we do not gain the scaling factor L^{-1} (then R_{m+1} = L R_m)". So ρ = L R_{j+1}/R_j can equal L^2 at some steps. Only constants change.
- p. 384 text: K = "the smallest POSITIVE integer" with S^K(Z) satisfying (i), (ii). So K ≥ 1 by definition; the n = j+1 term always exists as printed.

## 2. Page images p. 384, p. 387 (CMP 122 II, PDF pp. 30, 33) and (1.81)-(1.88) text
- (1.80) on image: κ_j(Z) ≥ Σ_{n=j+1}^{j+K} O(1) M^d R_n^{d+1} d′_n(S^{n−j}(Z)). Matches claim 1.5.
- p. 384 image: "S^{n−j}(□) is a cube, a union of L^d_{n−j} MR_n-cubes"; "the MR_n-cube in the center of S^{n−j}(□) contains □". Balaban treats the grids as nested. Supports R1.
- p. 387 image: "the domain X in (1.71) satisfies the assumption of the statement with K = 0, therefore κ_k(X) ≥ 0". So Balaban uses K = 0 for (i),(ii) domains, despite "smallest positive integer" on p. 384. The author's split (K ≥ 1 non-renormalizable, K = 0 renormalizable) matches his usage.
- p. 387 image: "The inequality (1.80) holds quite generally for such regions, hence also an improved bound (1.89), with the additional term −κ_1 d_k(X) in the exponential." Confirmed verbatim. No computation given.
- (1.83) text: κ_{j+1}(Z) = κ_j(Z_0) − O(1)M^dR_{j+1}^{d+1}d′_{j+1}(Z). So the (1.80) sum is a reserved credit for future per-step costs. With no future step, the n = K+1 term is unused credit. Option (b) (larger C_1 in (1.80)) closes (1.83) if C_1 ≥ the (1.83) cost constant; it moves the burden to p_0 in (1.82), (1.85)-(1.88). Plausible, not re-derived.
- (1.86)→(1.87) text: Balaban uses 2p_0(g_{j(X)}) + 2p_0(g_{j(Y)}) − 2p_0(g_{j(Z)}) ≥ 2(1+β_0)^{−1}p_0(g_{j+1}), for arbitrary earlier indices j(X), j(Y) ≤ j+1. This is the same comparison R3 needs. R3 is therefore an assumption Balaban already uses, not a new one.
- "(6.31)" appears in no text layer except the citation in CMP 122 II. CMP 109 contents: §0-§5. Misprint confirmed (text layers only).

## 3. Rederivation of Lemma [P]
- Fact B (tree of length ℓ meets ≤ 4^d(1+2ℓ) closed unit cubes): proof is correct. Maximal 1-separated P; disjoint balls B(p,1/2) each carry length ≥ 1/2 when |P| ≥ 2; |P| ≤ max(1, 2ℓ); each closed unit ball meets ≤ 4^d closed unit cubes (an interval of length 2 meets ≤ 4 closed unit intervals; equality at integer centers). A sharper 3^d-type constant may hold but is not needed. Containment of the tree in S(Y) is not used.
- 21^d step: N ≥ 21^d > 4^d gives N(1 − (4/21)^d) ≤ 2·4^dℓ, so N ≤ (42/17)4^dℓ ≤ 3·4^dℓ. Correct; also forces ℓ > 0.
- Fact A: "contained in X" (p. 257) does force the tree into Y. The center→common point→center construction stays in Y (each half-segment lies in one convex cube), length ≤ √d per edge, so d′_j(Y) ≤ √d(n_f − 1) for any union of closed cubes connected through common points. Correct.
- Fact C: a closed interval of length ρ meets ≤ ⌊ρ⌋+2 ≤ ρ+2 closed unit intervals. Every fine cube of Y lies in Y′. n_f ≤ (ρ+2)^d N(Y′) ≤ (ρ+2)^d N. Correct.
- Chain: d′_j(Y) ≤ √d n_f ≤ √d(ρ+2)^d N ≤ 3√d·4^d(ρ+2)^d ℓ. So BOTH the c_* d′_j form and the n_f form follow. No additive constant. Directions correct.
- (O1-M): needs Y to be a union of R_j^d M-cubes per MR_j-cube (R_j integer, nested grids). Then d_j(Y) ≤ √d R_j^d n_f and the d_j form follows. Without nesting d_j(Y) is not defined, so nesting is implicit in Balaban's use of d_k on large-field regions.
- ρ = LR_{j+1}/R_j can be L^2 at steps with R_{j+1} = LR_j (p. 385). Constants only.

## 4. Remarks and O1
- Remark 1 counterexample: any filled block of ρ^d fine cubes works (Fact B gives d′_j ≥ ρ^d/(2·4^d) − 1/2 for a full block; no snake needed). The "1/L + constant" form fails only when L^{d−1} ≫ 2·4^d(C + √d·21^d), i.e. for d ≥ 2 and C independent of L. "False" is right in that reading; it is not false for every fixed (L, C).
- Remark 2: p. 384 states no large fields are created in S(Z)\Z. Confirmed.
- O1: all (1.80) terms are ≥ 0 (O(1) > 0, d′ ≥ 0). Dropping n ≥ K+2 is legitimate. n = K+1 term has coefficient M^dR_{K+1}^{d+1} and argument d′_{K+1}(S(Y)), as printed. κ_fin formula follows from (O1-M) with j = K. CONFIRMED given (1.80) holds at j = K for final components (Balaban's "quite generally").

## 5. Verdict
1 CONFIRMED. 2 CONFIRMED. 3 CORRECTED (minor: counterexample needs d ≥ 2, C independent of L, L large; snake not needed). 4 CONFIRMED. 5 CONFIRMED (κ_1 = κ_fin).
R1: supported by p. 384 image (nested cubes); constants only; not load-bearing. R3: discharged, Balaban uses the same p_0 comparison in (1.86)→(1.87). R2: open; the only item load-bearing for (FX). Route (a) needs κ_final fixed before M; route (b) is plausible from (1.83) but not re-derived.
