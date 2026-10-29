IDs follow IDS.md (new scheme). Balaban's Theorem 1 = R-013; Theorem IV = L-196; IV L2 (UV constants ℓ-free, (U_ℓ)) = L-319; IV L3 (FX-V) = L-320. File-local labels ((A), (A′), (B), (B′), Lemma G, Prop R, Cor G1, Cor G2, (G1)–(G3), (U-W), Lemma ADM, (Rγ1), (Rγ2), (1.80_T)) are not global ids.
# SOURCES_P387_REPAIR — the two unproved steps on CMP 122 II p. 387, a counterexample to the absorption step, and a global repair of the large-field induction (1.80)–(1.88)

Date 2026-10-29 (Opus 5.5). Type: derivation. Edits: this file and numerics/p387_counterexample.py only. No existing file edited. PLAN.md not touched. sync.sh not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not opened and excluded from every search.
Grades: [P] proved here; [P-sketch] argument given, one step as an outline; [V] read this session on a 150 dpi page image (fresh folder /tmp/p387r, deleted after use); [R] reduction to a named source or project file; [I] reading or inference.
Images read by this session: CMP 122 II pp. 380, 381, 382, 383, 384, 385, 386, 387, 388, 389 (PDF pp. 26–35); CMP 122 I p. 177 (PDF p. 3).
Inputs read: OPUS_QUEUE.md l. 1–15; SOURCES_UW_FINAL_VERIFY.md (full); SOURCES_UW_WRAP.md (full); SOURCES_ORDER_CANON.md (entry list, N-030, N-050, N-330, N-410, N-470); SOURCES_FX_O1.md §4; consumer grep over SOURCES_FX*, SOURCES_D4D5*, SOURCES_UW_WRAP, SOURCES_U_ELL*.

## 0. Result

1. (A) (exact subadditivity of d′ on p. 387) is not proved by Balaban's remark. Two trees that meet the same cube can be disjoint (§2.2). The form with a join constant, (A′) d′(X ∪ Y) ≤ d′(X) + d′(Y) + √d, is proved [P]. Exact (A) is neither proved nor refuted here.
2. (B) (absorption "S^{K_1+n_1}(Y) contains S^{K_1+n_1}(X)") is false [P]. §3 gives an explicit family. For every t, a small box X that meets a large box Y keeps a one-cell offset for t + 1 levels. A script checks it for L = 13 and L = 4, with drop steps and a rise step (numerics/p387_counterexample.py). The true statement is (B′): S^m(X) ⊂ S^m(Y)^{~1} for m ≥ K_1 + n_1, n_1 ≤ 2⌈log_L 99⌉ + 2 [P].
3. With (A′) and (B′) the join step of Balaban's induction leaves a defect at every level from K_1 + n_1 to K(Z). For the volume form of the cost this defect is real [P]. Its count of levels is not bounded by a constant. The join constant of (A′) can be absorbed by a per-level margin E inside the induction [P]. The (B′) defect cannot be absorbed by any of the suggested local devices (§4) [P for each device; the general claim is P-sketch].
4. Repair: Lemma G (§5) replaces the join induction by a global charging argument. It tracks the union U_n of the covers of all new large-field regions. Volume is exactly subadditive, so no join constant and no absorption step is needed. A cluster lemma gives decay by ¼ every T levels. A small cluster costs a fixed amount per level, but only for at most T + 2 + L²R levels per "episode", and each source pays for at most 4 episodes. The total is a convergent geometric sum. Its constants depend on d, L only. They contain neither K, k_* − j, ℓ, nor |T| [P relative to the inputs listed in §5.0].
5. Consequences (§6): (1.80) holds in a margin form (Prop R) [P relative]; (1.89) holds as printed; the improved bound with −κ_LF d′_k(X) is now proved, with explicit κ_LF [P relative]. On the torus, the wrapping case of SOURCES_UW_WRAP is covered by the same proof.
6. New canon conditions (§7): T(d, L), Q_*(d, L), C_Φ(d) after L (N-050/N-060); (G1), (G2), (G3) are "p_0 large, γ small" conditions at N-470. No new condition on L (L ≥ 4 suffices; canon has L ≥ 13). The N-330 budget constant C_1^{FX} is no longer needed.
7. Misprint p. 385: "R_{m+1} = LR_m" must read R_{m+1} = L^{−1}R_m [P + V]. Also (1.85) lacks the factor ½ of (1.79) [I].
8. Proposed status (§9): R-013's large-field input moves from "[R], p. 387 unproved, (B) false" to "[P relative to listed inputs], unverified". (U-W) loses the p. 387 R item, pending a verifier. L-319/(U_ℓ): [P relative to listed R inputs], unverified. No headline change.

## 1. Page facts (exact wording, CMP 122 II) [V]

PDF page = journal page − 354.
- p. 380 (F1): "every large field domain Z_j contributes the constant O(1)log g_j^{−2}|Z_j| ≤ O(1)log g_j^{−2}(MR_j)^dd′_j(Z_j) ≤ O(1)M^dR_j^{d+1}d′_j(Z_j), where d′_j is the linear size defined in terms of MR_j-cubes instead of M-cubes." p. 383 adds the factors exp O(1)|Z_j ∩ Ω_j| and exp O(1)(MR_j)^{−d}|Z_j| (volume type).
- p. 381: the level-j large-field factor is exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)}) + 1) − 2p_0(g_j)) per component Z_j^{(i)} of the cover of P_j ∪ Q_j ∪ R_j; and "(1.76) Z_j ⊂ Z′^{~10}_{j−1} ∪ ⋃_i(Z_j^{(i)})^{~2}."
- p. 383, (1.79): T′_k(X)1 ≤ sup exp{Σ_{j=1}^k O(1)M^dR_j^{d+1}d′_j(Z_j)} · Π_{j=1}^kΠ_i exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)}) + 1) − 2p_0(g_j)) Π′exp(−p_0(g_j)). The last product is over components of Z_j that satisfy (i), (ii) and in which large fields are created in the preparatory steps. "the above inequality holds for all large field regions, not only for the regions satisfying the conditions (i), (ii)."
- p. 384: S(Z) := Z′^{~10}, Z′ the cover of Z by LMR_{j+1}-cubes. Statement: "The factor exp(−κ_j(Z)) controls K renormalization steps, under the assumption that no large fields are created in these steps, where the number K is the smallest positive integer having the property that the domain S^K(Z), considered as a domain in the lattice of the scale L^{−(j+K)}, satisfies the conditions (i), (ii), with N = R_j. More precisely this means that
 κ_j(Z) ≥ Σ_{n=j+1}^{j+K} O(1)M^dR_n^{d+1}d′_n(S^{n−j}(Z)). (1.80)"
 Then: S^{n−j}(□) is a cube of L_{n−j}^d MR_n-cubes, L_{n−j} ≤ 42(1 − L^{−(n−j)})/(1 − L^{−1}) < 63; "The MR_n-cube in the center of S^{n−j}(□) contains □"; S^{n−j}(Z) ⊂ ⋃_{□_0⊂Z^{(n−j)}}□_0^{~31}; d′_n(S^{n−j}(Z)) ≤ (63)^d(MR_n)^{−d}|Z^{(n−j)}| ≤ (63)^d3·2^{d−1}d′_n(Z^{(n−j)}) (or ≤ (64)^d if that linear size is 0); "From the scaling property (6.31) [I] we obtain d′_n(Z^{(n−j)}) ≤ L^{−1/2(n−j)}d′_j(Z) ≤ 2^{−(n−j)}d′_j(Z)".
- p. 385: "for n − j > 1. The square root appears here, because for some steps we do not gain the scaling factor L^{−1} (then R_{m+1} = LR_m)." n_0 := the last n with d′_n(Z^{(n−j)}) > 0; "S^{n_0+1−j}(Z) is contained in a cube of the size 64MR_{n_0+1}, hence it satisfies the condition (i), and doing at most R_j further steps we obtain a domain satisfying both conditions (i), (ii). Thus K ≤ n_0 − j + R_j". (1.81): the sum in (1.80) ≤ Σ_{n=j+1}^{n_0}O(1)M^dR_n^{d+1}3(126)^d2^{−(n−j)}d′_j(Z) + Σ_{n=n_0+1}^{n_0+R_j}O(1)M^dR_n^{d+1}(64)^d ≤ O(1)(64)^dM^dL^{d+1}R_j^{d+2}(d′_j(Z) + 1). Base j = 1: d′_1(Z) + 1 ≤ 2(14)^dΣ_i(d′_1(Z_1^{(i)}) + 1); (1.82) κ_1(Z) ≥ ¼γ_0(14)^{−d}A_1²p_0²(g_1)(d′_1(Z) + 1) − O(1)M^dR_1^{d+1}d′_1(Z); condition (C1) ¼γ_0(14)^{−d}A_1²p_0²(g_1) ≥ O(1)2(64)^dM^dL^{d+1}R_1^{d+2}. Case 1: Z = S(Z_0), (1.83) κ_{j+1}(Z) = κ_j(Z_0) − O(1)M^dR_{j+1}^{d+1}d′_{j+1}(Z).
- p. 386: sub-case Z_0 satisfies (i), (ii) and a new large field appears: κ_{j+1}(Z) := p_0(g_j) − O(1)M^dR_{j+1}^{d+1}d′_{j+1}(Z), "K = R_{j+1} for Z". Case 2: (1.84) Z ⊂ ⋃_n(Z_j^{(n)})′^{~10} ∪ ⋃_i(Z_{j+1}^{(i)})^{~2}. (1.85) κ_{j+1}(Z) = Σ_n(κ_j(Z_j^{(n)}) + 2p_0(g_{j(Z_j^{(n)})})) + Σ_i(γ_0A_1²p_0²(g_{j+1})(d′_{j+1}(Z_{j+1}^{(i)}) + 1) + 2p_0(g_{j+1})) − O(1)M^dR_{j+1}^{d+1}d′_{j+1}(Z) − 2p_0(g_{j(Z)}). Tree graph G on the domains of (1.84), end vertex X, rest Y, Z ⊂ X ∪ Y; (1.86) the corresponding split of κ_{j+1}(Z); "2p_0(g_{j(X)}) + 2p_0(g_{j(Y)}) − 2p_0(g_{j(Z)}) ≥ 2(1 + β_0)^{−1}p_0(g_{j+1})"; "The domain Z is connected, and Z ⊂ X ∪ Y, hence d′_{j+1}(X) + d′_{j+1}(Y) + 2d ≥ d′_{j+1}(Z)".
- p. 387: (1.87) κ_{j+1}(Z) ≥ κ_{j+1}(X) + κ_{j+1}(Y) + 2(1 + β_0)^{−1}p_0(g_{j+1}) − O(1)2dM^dR_{j+1}^{d+1}.
 (A) verbatim: "The domains X, Y intersect, or at least touch each other, hence the intersection of S^{n−j−1}(X), S^{n−j−1}(Y), for n > j + 1, contains at least a cube of the size 20MR_n. This implies that d′_n(S^{n−j−1}(Z)) ≤ d′_n(S^{n−j−1}(X)) + d′_n(S^{n−j−1}(Y))."
 (B) verbatim: "The domains X, Y determine the corresponding indices K_1, K_2. Now the situation is symmetric in X, Y, so we may assume that, for example K_1 ≤ K_2. The domain S^{K_1}(X) satisfies the conditions (i), (ii), in particular it is contained in a cube of the size 100MR_{j+1+K_1}, and it intersects the domains S^{K_1}(Y). It is clear that applying n_1 times the operation S to the last domain, where n_1 is a rather small number, e.g., n_1 < 10, we obtain the domain S^{K_1+n_1}(Y) containing S^{K_1+n_1}(X). This implies that S^{n−j−1}(Z) = S^{n−j−1}(Y) for n ≥ j + 1 + K_1 + n_1, and that K ≤ K_2 + n_1 + R_{j+1}."
 (1.88): Σ_{n=j+2}^{j+1+K}O(1)M^dR_{j+1}^{d+1}d′_n(S^{n−j−1}(Z)) ≤ Σ_{n=j+2}^{j+1+K_1+n_1}(… X …) + Σ_{n=j+2}^{j+1+K_2+n_1+R_{j+1}}(… Y …) ≤ κ_{j+1}(X) + κ_{j+1}(Y) + O(1)2(100M)^dR_{j+1}^{d+2} ≤ κ_{j+1}(Z) − 2(1 + β_0)^{−1}p_0(g_{j+1}) + O(1)3(100M)^dR_{j+1}^{d+2} ≤ κ_{j+1}(Z), "for p_0 large and γ small enough."
 (1.89): "the domain X in the definition (1.71) satisfies the assumption of the statement with K = 0, therefore κ_k(X) ≥ 0, and we have the fundamental inequality T′_k(X)1 ≤ exp(−2(1 + β_0)^{−1}p_0(g_k)). (1.89)" Then: "(1.80) holds quite generally for such regions, hence also an improved bound (1.89), with the additional term −κ_1d_k(X) in the exponential. This implies the inequality (2.50) [III], hence Corollary 3."
- pp. 388–389: (1.92) uses (1.68), (1.73), (1.89); p. 389 assumes "−2(1 + β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k)".
- CMP 122 I p. 177: "(i) it is contained in a cube of the size 100MR_k, (ii) in the preceding N renormalization steps no new large field regions were created inside this component, and the previous regions contained in it satisfy the condition (i) on the corresponding scales." Same page: "Passing to the next step it is usually rescaled by L^{−1}, but in some steps the number R_k decreases by the factor L^{−1}".

Small remarks [I]. (1.85) writes γ_0A_1²p_0² where (1.79) has ½γ_0A_1²p_0²; (1.82) uses the ½ (¼(14)^{−d} = ½/(2·14^d)), so (1.85) drops a ½. (1.88) writes R_{j+1} in the summand where (1.80) has R_n (noted in SOURCES_UW_FINAL_VERIFY §3.3). Neither affects the argument below, which does not use (1.85)–(1.88).

### 1.1 The p. 385 misprint [P + V]
Put s_n := L^{n−j}MR_n, the side of a level-n cell in the common L^{−j} scale; then s_{m+1}/s_m = L·R_{m+1}/R_m. The factor in d′_n(Z^{(n−j)}) ≤ (s_j/s_n)d′_j(Z) (Lemma S of SOURCES_UW_WRAP §4) gains L^{−1} in step m exactly when R_{m+1} = R_m, and gains nothing exactly when s_{m+1} = s_m, that is R_{m+1} = L^{−1}R_m. If R_{m+1} = LR_m the step gains L^{−2}. So "we do not gain the scaling factor L^{−1} (then R_{m+1} = LR_m)" must read R_{m+1} = L^{−1}R_m. CMP 122 I p. 177 says the same: "in some steps the number R_k decreases by the factor L^{−1}" [V]. The verifier's reading (SOURCES_UW_FINAL_VERIFY §2) is confirmed.

## 2. Step (A): subadditivity of d′

Definition used (CMP 109 p. 251–252, as quoted in SOURCES_UW_WRAP V6 [R]): for a union W of level-n cells, d′_n(W) is the length, in units of the cell side, of a shortest tree graph contained in W that meets every cell of W. Cells are closed.

### 2.1 (A′) with a join constant [P]
Claim. Let X, Y be unions of level-n cells such that some cell c lies in X ∩ Y. Then d′_n(X ∪ Y) ≤ d′_n(X) + d′_n(Y) + √d. If X, Y only touch (share a point p), then d′_n(X ∪ Y) ≤ d′_n(X) + d′_n(Y) + 2√d.
Proof. Let Γ_X, Γ_Y be shortest trees for X, Y. Both meet c, at points x, y. The segment [x, y] lies in the convex cell c ⊂ X ∪ Y and has length ≤ diam c = √d. Γ_X ∪ [x, y] ∪ Γ_Y is connected, lies in X ∪ Y, and meets every cell of X ∪ Y. It contains a tree with the same property and no larger length. For touching sets, join x ∈ Γ_X ∩ c_X to p and p to y ∈ Γ_Y ∩ c_Y inside the cells c_X ∋ p, c_Y ∋ p; each piece has length ≤ √d. ∎
On p. 387 the intersection contains a cube of 20 cells, so +√d applies. On p. 386 Balaban writes +2d for the touching case; 2√d ≤ 2d. So p. 386 is consistent with (A′), and p. 387 omits the constant.

### 2.2 Why exact (A) does not follow from a common cube [P]
Two shortest trees that meet every cell of the same cube can be disjoint. Example in d = 2, cube [0, 20]²: Γ_X = the vertical segment {0} × [1, 19] plus horizontal teeth [0, 19.5] × {1, 3, …, 19}; Γ_Y = the vertical segment {20} × [2, 18] plus teeth [0.5, 20] × {2, 4, …, 18} and short pieces that reach rows 0 and 19 from Y's side. Each horizontal tooth on the line y = h meets the cells of rows h − 1 and h. The two combs interleave and do not meet. So the union of the two trees is not connected, and a join costs a positive length. Whether a shortest tree for X ∪ Y can still have length ≤ d′(X) + d′(Y) depends on a re-routing that Balaban does not give. Exact (A): not proved, not refuted [I].
Lemma G (§5) does not use (A) or (A′).

## 3. Step (B): the absorption is false; the true form

### 3.1 Coordinates [P]
Fix one coordinate. Number the level-n cells by integers, cell i = [i, i + 1) in level-n units. A step from level n to n + 1 has ratio ρ := s_{n+1}/s_n ∈ {1, L, L²} (§1.1; under (R-seq 2) and the net (R-seq 1) of SOURCES_UW_FINAL_VERIFY §6). With nested partitions (Lemma ADM (b), SOURCES_L2_L3L14 §2.2 [R]), fine cell i lies in coarse cell ⌊i/ρ⌋. So S maps a box ∏[a_ν, b_ν] (inclusive cell indices) to the box ∏[⌊a_ν/ρ⌋ − 10, ⌊b_ν/ρ⌋ + 10]. S maps boxes to boxes, and S(W ∪ W′) = S(W) ∪ S(W′) for all unions of cells (cover and neighbourhood both commute with unions).

### 3.2 The counterexample [P]
Data. d ≥ 2, any L ≥ 2, any depth t ≥ 1, any ratio sequence ρ_1, …, ρ_t ∈ {1, L, L²}. Define b_t := 0 and b_{m−1} := ρ_m(b_m + 10) for m = t, …, 1. Put b := b_0, H := 10b + L^{t+3}, w := 40.
 Y := [b, b + H] × [−H, H]^{d−1} (a large box; it may be part of a wrapping domain on a large torus),
 X := [b − 1, b + w − 2] × [0, w − 1]^{d−1} (a box of side w = 40 < 100, so X satisfies (i)).
X ∩ Y ⊇ [b, b + w − 2] × [0, w − 1]^{d−1} ≠ ∅, so X and Y intersect, as on p. 387.
Claim. For m = 1, …, t: the left end of S^m(X) in coordinate 1 is b_m − 1, the left end of S^m(Y) is b_m, and so S^m(X) ⊄ S^m(Y). In every other direction S^m(X) stays inside S^m(Y).
Proof. By construction b_{m−1} = ρ_m(b_m + 10) is a multiple of ρ_m. So ⌊b_{m−1}/ρ_m⌋ − 10 = b_m, and ⌊(b_{m−1} − 1)/ρ_m⌋ − 10 = b_{m−1}/ρ_m − 1 − 10 = b_m − 1 when ρ_m ≥ 2; when ρ_m = 1 both ends move by −10 and the offset 1 is kept. Induction on m from the left ends b_0 = b, b_0 − 1. In the other coordinates and on the right side, Y extends at least H/L^m − 11 ≥ 10b/L^m beyond X at level m, which is ≥ 1 because H ≥ L^{t+3}. ∎
So the column of cells {b_m − 1} × (projection of S^m(X)) lies in S^m(X) \ S^m(Y) for every m ≤ t, and t is arbitrary. In particular S^{K_1+n_1}(X) ⊄ S^{K_1+n_1}(Y) for every fixed n_1 (take K_1 = 0, X small, t > n_1). (B) is false as printed.
Numerical check [P, script]. numerics/p387_counterexample.py implements S on boxes, checks the box formula against S on explicit cell sets (L = 3, ratios 3, 1, 3, d = 2), and runs the family. Output (Mac, < 1 s): for L = 13 and ratios (13, 13, 13, 13) the offset is 1 for m = 1, …, 5 and 0 at m = 6; for L = 13 and ratios (13, 1, 13, 169, 13, 1, 13) the offset is 1 for m = 1, …, 8; for L = 4 and six ratios 4 the offset is 1 for m = 1, …, 7. In every case S^m(X) ⊂ S^m(Y)^{~1}.
The verifier's outline (SOURCES_UW_FINAL_VERIFY §3.2) chose p ≡ 10L + … + 10L^t; that is b_0 above for constant ρ = L. The outline is correct.

### 3.3 The true statement (B′) [P]
Lemma (one-layer absorption). (a) If A ⊂ B^{~o} (sets of level-n cells, o ≥ 0), then S(A) ⊂ S(B)^{~⌈o/ρ⌉}. (b) Let A_0 := S^{K_1}(X) lie in a cube of side 100 cells and meet B_0 := S^{K_1}(Y). Under "no two consecutive steps with ρ = 1" (§5.0 (I5)), S^m(X) ⊂ S^m(Y)^{~1} for all m ≥ K_1 + n_1, with n_1 := 2⌈log_L 99⌉ + 2 (n_1 ≤ 6 for L ≥ 13; this is Balaban's "n_1 < 10").
Proof. (a) A fine cell within ℓ∞ index distance o of a cell of B lies in a coarse cell within ⌈o/ρ⌉ of a coarse cell of cover(B), because ⌊(x + o)/ρ⌋ − ⌊x/ρ⌋ ≤ ⌈o/ρ⌉. So cover(A) ⊂ cover(B)^{~⌈o/ρ⌉}, and adding 10 layers to both sides keeps the inclusion. (b) A_0 lies within distance 99 of a common cell, so A_0 ⊂ B_0^{~99}. By (a), the offset o evolves by o ↦ ⌈o/ρ⌉: it is unchanged in a ρ = 1 step and becomes ⌈o/L⌉ or smaller otherwise. From 99 it reaches 1 after ⌈log_L 99⌉ + 1 steps with ρ ≥ L, and ⌈1/ρ⌉ = 1 keeps it at 1. Without two consecutive ρ = 1 steps, n_1 steps contain enough steps with ρ ≥ L. ∎
§3.2 shows that the offset 1 cannot be removed in general.

### 3.4 What this does to Balaban's join step [P]
With (A′) and (B′), the X-part of S^m(Z) for m ≥ K_1 + n_1 is a set R_m := S^m(X) \ S^m(Y) of at most 2d·49^{d−1} cells inside the one-layer shell of S^m(Y) (S^m(X) lies in a cube of side ≤ 49 for these m when L ≥ 13; §5.0 (I6)). For the volume form of the cost (§5.0 (I2)), the level-n cost of Z exceeds the cost of S^m(Y) by c_n|R_m| > 0 at every such level in the example of §3.2. These levels run from K_1 + n_1 to K(Z) ≥ K_2. Their number is not bounded by a constant: in §3.2 it is t, and t is free. The X-hypothesis κ_{j+1}(X) pays only up to level j + 1 + K_1. So the inequality "sum for Z ≤ sum for X + sum for Y + constant", which (1.88) needs, is false for the volume form [P]. For the d′ form the excess at one level is ≤ √d|R_m|, but whether it is positive depends on how a shortest tree for S^m(Y) runs along its boundary (§2.2): not decided [I].

## 4. The local repairs: which work, which do not

Notation: c_n := C_cM^dR_n^{d+1}, the per-cell cost at level n (§5.0 (I2)); F_j(Z) := Σ_{n=j+1}^{j+K(Z)}c_nd′_n(S^{n−j}(Z)), the right side of (1.80).
(a) Carry the join constant and absorb it by 2^{−(n−j)} of (1.81). Does not work as stated [P]. In (1.81) the factor 2^{−(n−j)} multiplies d′_j(Z). A join constant √d at each level n ≤ j + 1 + K_1 carries no such factor, and it sums to √dΣ_nc_n, which grows with K_1.
 What works for (A): a per-level margin E [P]. Use the statement (1.80^E) κ_j(Z) ≥ Σ_{n=j+1}^{j+K}c_n(d′_n(S^{n−j}(Z)) + E). Base: the extra Σc_nE ≤ Ec̄K with K ≤ n_0 − j + R_j ≤ log_2(d′_j(Z) + 1) + 1 + R_j ≤ 2R_j(d′_j(Z) + 1), so (C1) holds with its right side times (1 + 2E). Case 1: (1.83) removes one term c_{j+1}(d′ + E); the rest is the hypothesis for Z_0. Case 2 at levels n ≤ j + 1 + K_1: X and Y each supply one E, Z needs one, and the spare E ≥ √d pays the join constant of (A′). So (A) is absorbed inside the induction with E := √d.
(b) Slack in κ. (b1) The margin κ_1 ≥ 16(1 − 2δ)κ (CMP 116 p. 9, quoted in SOURCES_R010_CC_VERIFY V27) relates the decay rates of the small-field polymer expansion. It does not enter κ_j(Z) or (1.80)–(1.88) [I, by the definitions]. (b2) The slack of (1.88), 2(1 + β_0)^{−1}p_0(g_{j+1}) − O(1)3(100M)^dR_{j+1}^{d+2}, is paid once per join. The (B′) defect of §3.4 is c_n|R_m| at each of up to K(Z) − K_1 − n_1 levels, with no bound on the count. So (b2) does not pay it [P].
(c) Enlarge S^{K_1+n_1}(Y) by one cell. This is (B′), which is true. But then the sum for Z is bounded by sums over S^m(Y)^{~1}, which the hypothesis for Y does not control. If the statement itself uses S^m(·)^{~1}, the join gives (S^m(Z))^{~1} ⊂ (S^m(Y))^{~2}, and the problem moves one layer out. Every operation of the form "cover, then add c layers" has the same one-cell alignment defect, because §3.2 only uses x ↦ ⌊x/ρ⌋ − c [P]. A multiplicative bound V(B^{~1}) ≤ C·V(B) holds for B = S^m(Y), but a factor C at each join compounds over the join generations [P-sketch].
(d) Geometric decay of distances. The one-cell defect of one X does not decay. But the union of all defects lies in one layer of the joint image, and the joint image shrinks geometrically. Lemma G uses this collective form.
Why a per-pair induction is the wrong tool [P-sketch]. Let small domains X_1, …, X_N meet one large domain Y in turn. A per-pair induction charges each X_i a defect for about log_L(size of Y) levels: N·log_L(size) in total. The true future volume of the union is at most C(N + size·Σ_m L^{−m/2} + log_L size), because overlapping defects are counted once. A small X_i has a bounded budget (of order p_0²), so it cannot pay log_L(size) levels when the size is large. Lemma G avoids the per-pair split.

## 5. Lemma G: a global charging argument

### 5.0 Setting and inputs
Levels n = 1, …, k with k ≤ k_* (on T_ℓ, k_* is the last level; SOURCES_L2_L3L14 §2.1: k_* depends on ε only [R]). Level-n cells are the MR_n-cubes of scale L^{−n}; ρ_n := s_n/s_{n−1}. For a set W of level-(n−1) cells, cover_n(W) is the union of level-n cells that meet W; W^{~r} adds r layers of cells of the same level; S(W) := cover_n(W)^{~10}; V_n(W) := the number of level-n cells in W. ℓ∞ distances between cells are index distances at the cells' level.
Fix the operation T′_k(X) of (1.71), or the operation of any large-field region (p. 383: (1.79) "holds for all large field regions"), and one admissible history. Z_n is its large-field region at level n; Z_n^{(i)} are the new regions of level n; W_{n,i} := (Z_n^{(i)})^{~2}.
Inputs.
 (I1) [V p. 381] (1.76): Z_n ⊂ S(Z_{n−1}^♮) ∪ ⋃_iW_{n,i}, where Z_{n−1}^♮ is the union of the components of Z_{n−1} that are not renormalized at level n − 1. [I: Balaban writes Z_{n−1}; a renormalized component leaves the history of this operation, since its own T′ is bounded separately by (1.89) at its level; the Π′ components of (1.79) stay in Z^♮ and carry the factor e^{−p_0(g_n)}.]
 (I2) [V p. 380, 383; P] The first exponent of (1.79) is at most Σ_{n≤k}c_nV_n(Z_n), c_n := C_cM^dR_n^{d+1}. Reason: F1's first expression O(1)log g_n^{−2}|Z_n| = O(1)log g_n^{−2}(MR_n)^dV_n(Z_n), plus the volume-type terms exp O(1)|Z_n ∩ Ω_n| and exp O(1)(MR_n)^{−d}|Z_n|, and log g_n^{−2} ≤ R_n (H-270, canon N-470). C_c is the cost constant of canon N-330. This form uses V, not d′, and avoids F1's d′ = 0 defect (SOURCES_UW_FINAL_VERIFY §2).
 (I3) [V p. 381, 383] Budget: each new region (n, i) carries e^{−½γ_0A_1²p_0²(g_n)(d′_n(Z_n^{(i)}) + 1) − 2p_0(g_n)}; each Π′ event at level n carries e^{−p_0(g_n)}. Call both "sources".
 (I4) [V CMP 122 I p. 177; R p. 385] Conditions (i), (ii) as quoted in §1, with N ≤ R_{level} (canon N-460: N ≤ R_k, N = R_j on p. 384). A component that satisfies (i), (ii) is renormalized or is a Π′ event [I, the rule of the construction].
 (I5) [P relative to Theorem 2w, SOURCES_UW_FINAL_VERIFY §6.2–§6.3] Under (Rγ1), (Rγ2): R_n ≤ LR_m for n ≥ m; s_m/s_n ≤ L^{−(n−m)/2} for n − m ≥ 2. Hence no two consecutive steps have ρ = 1, and ρ_n ∈ {1, L, L²}.
 (I6) [P from (I5), L ≥ 4] Radius invariant: if a set lies in U^{~r} with r ≤ 31, its S-image lies in cover(U)^{~(⌈r/ρ⌉+10)} (§3.3 (a)). After a step with ρ ≥ L this radius is ≤ ⌈31/4⌉ + 10 = 18; after a ρ = 1 step (which follows a ρ ≥ L step) it is ≤ 18 + 10 = 28. So r ≤ 31 is kept. Similarly a set in a cube of side ≤ 64 stays in cubes of side ≤ ⌈64/4⌉ + 1 + 20 = 37 after a step with ρ ≥ L, and ≤ 57 after a ρ = 1 step; so it stays in cubes of side ≤ 64 < 100.
 (I7) [R, Lemma ADM (b), (d), SOURCES_L2_L3L14 §2.2] On T_ℓ the partitions are nested, and the torus side at level n ≤ k_* exceeds 200 level-n cells.
Constants (functions of d, L only):
 T := 2⌈log_L(504·2^{d+3})⌉ (so Λ := s_n/s_m ≥ L^{T/2} ≥ 504·2^{d+3} when n − m ≥ T, by (I5)); T = 10 at d = 4, L = 13.
 C_W := 5^d2^{d+1}; C_Φ := C_W + 2^{d+3};
 Q_* := (4/3)·63^dL^{d+1}[T·C_W + 2^{d+2}L^{d+3}(T + 2)].

### 5.1 Statement
Lemma G. Assume (I1)–(I7) and, for every level n ≤ k,
 (G1) ¼γ_0A_1²p_0²(g_n) ≥ Q_*C_cM^dR_n^{d+2},
 (G2) ½p_0(g_n) ≥ Q_*C_cM^dR_n^{d+2}.
Then for every admissible history of the operation,
 Σ_{n=1}^kc_nV_n(Z_n) ≤ ½B, B := Σ_{(n,i)}½γ_0A_1²p_0²(g_n)(d′_n(Z_n^{(i)}) + 1) + Σ_{Π′}p_0(g_n). (G)
No constant in (G1), (G2), (G) depends on k, on K, on the number of remaining levels, on ℓ, or on |T|.

### 5.2 Proof
G-1 (envelope) [P]. Define U_0 := ∅ and U_n := cover_n(U_{n−1}^♮) ∪ ⋃_iW_{n,i}, where U_{n−1}^♮ is the union of the clusters (G-2) of U_{n−1} whose 31-neighbourhood meets Z_{n−1}^♮. Claim: Z_n ⊂ U_n^{~31}, and each component of Z_n lies in C^{~31} for one cluster C of U_n. Proof by induction on n. n = 1: Z_1 ⊂ ⋃_iW_{1,i} = U_1. Step: each component of Z_{n−1}^♮ lies in C^{~31} for an alive cluster C (induction hypothesis and the definition of ♮). By (I6) its S-image lies in cover_n(C)^{~31}. With (I1), Z_n ⊂ cover_n(U_{n−1}^♮)^{~31} ∪ ⋃_iW_{n,i} ⊂ U_n^{~31}. The second part of the claim follows from G-2. ∎ Consequence: V_n(Z_n) ≤ 63^dV_n(U_n).
G-2 (clusters) [P]. Two cells of U_n are adjacent if their ℓ∞ distance is ≤ 63, that is, their 31-neighbourhoods meet or touch. Clusters are the connected components of this graph. A connected subset of U_n^{~31} lies in C^{~31} for one cluster C, because the 31-neighbourhoods of different clusters are separated by at least one cell. Under cover maps a cluster does not split: cells at distance ≤ 63 have covers at distance ≤ ⌈63/ρ⌉ ≤ 63. So clusters only merge (through cover maps or new regions) or are removed (pruning). On T_ℓ the graph is well defined because the torus side exceeds 200 cells (I7).
G-3 (cluster lemma) [P]. Let C be a cluster of U_m with τ cells, and let n ≥ m + T, n ≤ k_*. Then V_n(cover_n(C)) ≤ 2^d if τ < 2^{d+2} ("small"), and ≤ τ/4 if τ ≥ 2^{d+2} ("big").
Proof. Λ := s_n/s_m ≥ 504·2^{d+3} by (I5) and the choice of T; a level-n cell is a cube of Λ^d level-m cells (nested, I7). Let P ⊂ C be maximal with pairwise ℓ∞ distance > Λ/4. Every cell of C is within Λ/4 of P. The cells within Λ/4 of p span ≤ Λ/2 + 1 ≤ Λ indices per coordinate, so they meet ≤ 2 level-n cells per coordinate. Hence V_n(cover_n(C)) ≤ 2^d|P|. If |P| ≥ 2, each p ∈ P has another point of P at distance > Λ/4. A path in C from p to it has steps of length ≤ 63 and distinct cells, so at least Λ/(8·63) of its cells lie within Λ/8 of p. The balls of radius Λ/8 around the points of P are disjoint. So |P|·Λ/504 ≤ τ, and V_n(cover_n(C)) ≤ 2^d·max(1, 504τ/Λ). If τ < 2^{d+2}: 504τ/Λ < 1, so the bound is 2^d. If τ ≥ 2^{d+2}: 2^d ≤ τ/4 and 2^d·504τ/Λ ≤ τ/8. ∎ On T_ℓ the balls have radius < half the torus side at level m (it exceeds 200Λ by I7 at level n), so the argument is the same.
G-4 (recursion and the geometric sum) [P]. Put Φ_n := V_n(U_n), N_m := Σ_iV_m(W_{m,i}), σ_m := the number of small clusters of U_m. Cover maps do not increase volume, pruning removes cells, and cover_n of a union is the union of covers. So for n ≥ T:
 Φ_n ≤ ¼Φ_{n−T} + 2^dσ_{n−T} + Σ_{n−T<m≤n}N_m, and Φ_n ≤ Σ_{m≤n}N_m for n < T.
By induction, Φ_n ≤ Σ_{i≥0}4^{−i}[2^dσ_{n−(i+1)T} + Σ_{n−(i+1)T<m≤n−iT}N_m] (terms with index < 1 are 0). By (I5), c_n ≤ L^{d+1}c_m for n ≥ m. Each σ_m enters Φ_n only for n = m + (i + 1)T, with weight 4^{−i}; each N_m enters for T values of n per i, with weight 4^{−i}. Hence
 Σ_{n≤k}c_nΦ_n ≤ (4/3)L^{d+1}[TΣ_mc_mN_m + 2^dΣ_mc_mσ_m]. (G-4)
The series Σ_i4^{−i} is the only sum over levels. It converges with a constant free of k.
G-5 (episodes) [P relative to I4]. Follow a cluster forward in time: its successor is the cluster that contains its cover. A level is a "fresh event" for a cluster if a new region enters it, two or more clusters merge into it, or a Π′ event occurs in its 31-neighbourhood. An episode is a maximal run of consecutive levels in which one line of successors consists of small clusters and has no fresh event.
 Claim 1: an episode lasts at most T + 2 + N ≤ T + 2 + L²R_s levels, where s is the level of the source charged below. Proof. Let the episode start at level m_0 with a small cluster C (τ < 2^{d+2}). Its ℓ∞ diameter is < 63·2^{d+2} < Λ for every n ≥ m_0 + T, so cover_n(C) lies in a cube of 2^d level-n cells, and by G-1 the Z-part of the cluster lies in a cube of side 2 + 62 = 64. With no fresh event, the Z-part evolves by S only and stays in cubes of side ≤ 64 < 100 (I6): condition (i) holds at every later level. No new region enters, so after N further levels condition (ii) holds. By (I4) every component in the cluster is then renormalized (the cluster is pruned) or is a Π′ event (a fresh event). On T_ℓ, if m_0 + T > k_* the run is cut at k_* earlier. N ≤ R_{m_0+T} ≤ LR_{m_0} ≤ L²R_s by (I5) once the episode is charged to a source at level s ≤ m_0. ∎
 Claim 2: each source is charged at most 4 episodes, each starting at a level ≥ the source's level. Proof. A line of successors starts at a fresh event; an episode starts at a fresh event or at a big-to-small change on a line. A line has at most one big-to-small change, because a small cluster with no fresh event stays small (a cover map does not increase the number of cells). So #episodes ≤ 2·#fresh events. Fresh events: one per new region, one per Π′ event, and merges. The number of clusters grows only by new regions, so up to any level, #merges ≤ #new regions up to that level. A greedy rule then assigns each merge to a distinct new region of no later level. So each new region carries ≤ 2 fresh events and each Π′ event carries 1, which gives ≤ 4 and ≤ 2 episodes. ∎
 Hence Σ_mc_mσ_m ≤ Σ_{episodes}Σ_{m in the episode}c_m ≤ 4Σ_sources(T + 2 + L²R_s)L^{d+1}c_s ≤ 4L^{d+3}(T + 2)Σ_sourcesR_sc_s.
G-6 (sum) [P]. By (I2), G-1, (G-4), G-5 and V_n(W_{n,i}) ≤ 5^d(3·2^{d−1}d′_n(Z_n^{(i)}) + 2^d) ≤ C_W(d′_n(Z_n^{(i)}) + 1) (Balaban's cube count, p. 384 [V]; at d′ = 0 the cubes share a point, so there are ≤ 2^d):
 Σ_nc_nV_n(Z_n) ≤ 63^dΣ_nc_nΦ_n ≤ Σ_{(n,i)}Q_*c_nR_n(d′_n(Z_n^{(i)}) + 1) + Σ_{Π′}Q_*c_nR_n,
with Q_* as in §5.0 (R_n ≥ 1). By (G1) each region term is ≤ ½·½γ_0A_1²p_0²(g_n)(d′ + 1); by (G2) each Π′ term is ≤ ½p_0(g_n). Summing gives (G). ∎
What the proof does not use: (1.80)–(1.88), the join step, (A), (B), the order in which domains join, or the size of any component. Every geometric fact concerns one cluster, one cube of side ≤ Λ, or one set of side ≤ 64, at one level.

## 6. Consequences: (1.80) with a margin, (1.89), the improved bound, the torus

Cor G1 ((1.89)) [P relative to §5.0]. Under (G1), (G2), for the operation of X in (1.71):
 T′_k(X)1 ≤ sup exp{−¼Σ_{(n,i)}γ_0A_1²p_0²(g_n)(d′_n + 1) − ½Σ_{Π′}p_0(g_n) − Σ_{(n,i)}2p_0(g_n)} ≤ exp(−2p_0(g_{j(X)})),
because (G) spends at most half of B, and j(X) is the level of one region. The last step to exp(−2(1 + β_0)^{−1}p_0(g_k)) is Balaban's, unchanged [R: g_{j(X)} vs g_k through CMP 119 (2.6)]. So (1.89) holds as printed, with (C1), (C2) replaced by (G1), (G2).

Cor G2 (the improved bound) [P relative to §5.0]. For every component Y of Z_k (renormalized or not, wrapping or not),
 T′_k(Y)1 ≤ exp(−κ_LF·d′_k(Y) − 2p_0(g_{j(Y)})), κ_LF := min_{n≤k}min(¼γ_0A_1²p_0²(g_n), ½p_0(g_n))/(√d·63^dC_Φ) ≥ min(¼γ_0A_1²p_0²(γ), ½p_0(γ))/(√d·63^dC_Φ).
Proof. Apply G-1 and G-4 at the single level k to the history of Y: each σ_m ≤ #episodes alive at m ≤ 4·#sources, so Φ_k ≤ Σ_mN_m + 2^d(4/3)·4·#sources ≤ C_Φ·Σ_sources(d′ + 1) (d′ := 0 for a Π′ source). A connected union of cells has d′ ≤ √d(V − 1). So d′_k(Y) ≤ √d·63^dΦ_k ≤ √d·63^dC_Φ·Σ_sources(d′ + 1). The unspent quarter of the region budgets and half of the Π′ budgets, ≥ min(…)·Σ_sources(d′ + 1), therefore exceed κ_LFd′_k(Y). p_0(g) = (log g^{−2})^{p_0} increases as g decreases, and g_n ≤ γ. ∎
This proves Balaban's p. 387 sentence ("an improved bound (1.89), with the additional term −κ_1d_k(X)") in the d′ form, which SOURCES_FX_O1 §5 and SOURCES_UW_WRAP §7 (iii) left as [P-sketch]. For the M-cube linear size d_k use d_k(Y) ≤ c_dR_k(d′_k(Y) + 1) [I, cube-count conversion]; the rate in d_k is κ_LF/(c_dR_k), and the +1 is paid by the 2p_0 factor as in SOURCES_FX_O1 §4.

Prop R ((1.80) in margin form) [P relative to §5.0]. Let κ̃_j(Z) be the exponent of the factor that (1.79) assigns to a component Z of Z_j after the first j steps (p. 384: the product "can be factorized in components of Z_j"), written as exp(−κ̃_j(Z) − 2p_0(g_{j(Z)})). With the volume cost (I2),
 κ̃_j(Z) = B(Z) + Σ_{regions of Z}2p_0(g_n) − 2p_0(g_{j(Z)}) − Σ_{n≤j}c_nV_n(Z_n ∩ hist(Z)),
B(Z) the budget of the sources in the history of Z. Then for every j ≤ k_* and every Z (wrapping or not):
 κ̃_j(Z) ≥ Σ_{n=j+1}^{min(j+K(Z), k_*)}c_nV_n(S^{n−j}(Z)) + ½B(Z) ≥ Σ_{n=j+1}^{min(j+K(Z), k_*)}(c_n/√d)d′_n(S^{n−j}(Z)) + ½B(Z).
Proof. Extend the history of Z by the hypothetical levels S^m(Z), 1 ≤ m ≤ K(Z) (cut at k_*), with no new regions. (I1) holds with equality on the extension, and the extension stops when (i), (ii) hold (definition of K), so G-5 applies to it unchanged. Lemma G for the extended history gives (past cost) + (future sum) ≤ ½B(Z). The 2p_0 terms contribute ≥ 0, since j(Z) is one of the regions. ∎
So (1.80) is true, with O(1) := C_c/√d, with the cut at k_* of SOURCES_UW_WRAP (1.80_T), and with a margin ½B(Z). Only Balaban's proof of it (the join step) is invalid.

Torus and wrapping [P relative to §5.0 incl. I7]. Lemma G, Cor G1, Cor G2 and Prop R hold on T_ℓ for every ℓ ∈ 𝓛(g). Wrapping enters only in G-3 (handled by I7) and in G-5: a wrapping cluster at level m with m + T ≤ k_* is big, since its cells span the torus (more than 200Λ level-m cells) with steps ≤ 63, so τ > 200Λ/63 > 2^{d+2}; a small wrapping cluster exists only at levels m > k_* − T, and its episode is cut at k_* after < T levels. No constant gains an ℓ. For a wrapping component Y at k_*, Cor G2 gives exp(−κ_LFd′_{k_*}(Y) − 2p_0(g_{j(Y)})); this replaces SOURCES_UW_WRAP §7 (ii) and proves its §7 (iii).

## 7. New canon conditions and their place in SOURCES_ORDER_CANON order (proposed, not applied)

| item | content | place | why there |
|---|---|---|---|
| T, C_W, C_Φ, Q_* | T := 2⌈log_L(504·2^{d+3})⌉; C_W := 5^d2^{d+1}; C_Φ := C_W + 2^{d+3}; Q_* := (4/3)63^dL^{d+1}[TC_W + 2^{d+2}L^{d+3}(T + 2)] | N-050/N-060 (after L) | functions of d, L only |
| (I5) | (Rγ1), (Rγ2) of SOURCES_UW_FINAL_VERIFY §6 (no two consecutive R-drops; R_n ≤ LR_m) | N-470 | γ-small, after r (N-410) and the Theorem 2w constants B′, D′ |
| (G1) | ¼γ_0A_1²p_0²(g) ≥ Q_*C_cM^dR(g)^{d+2} for all g ≤ γ | N-470 | needs γ_0, A_1 (N-420), p_0 (N-410), M (N-310), C_c (N-330); holds for γ small because 2p_0 > r(d + 2) (implied by N-410's p_0 > (d + 5)r + ν_I + 4) |
| (G2) | ½p_0(g) ≥ Q_*C_cM^dR(g)^{d+2} for all g ≤ γ | N-470 | same; needs p_0 > r(d + 2), implied by N-410 |
| (G3) | κ_LF ≥ c_dR(g)κ_final for all g ≤ γ (the tree rate of Cor G2 in M-cube units meets the rate κ_final that the final polymer expansion needs) | N-470 | replaces the route (a)/(b) of SOURCES_FX_O1 §4 and SOURCES_FX_R2 §4; needs p_0 > r, implied by N-410 |
| N-330 | C_1^{FX} := max(1, C_c) as "the budget constant of (1.80), (1.81), (1.88)" is no longer used. C_c itself stays at N-330 (it may depend on M, L) and enters (G1)–(G3) | N-330 kept | no new edge |
| L | no new condition: the proof needs L ≥ 4 (I6) and uses T(d, L) for the decay; canon N-050 has L ≥ 13 | — | — |
| (C1), (C2) of (1.82), (1.88) | superseded by (G1), (G2); keeping them is harmless | — | — |
No constant on the list depends on k, K, k_* − j, ℓ, or |T|. No edge into M, M_1 or any earlier slot arises: (G1)–(G3) are upper bounds on γ only. The canon cycle check (§9 of SOURCES_ORDER_CANON) is unaffected [P: all new entries sit at N-470 or are (d, L)-functions].
Effect on (1.89): statement unchanged; its hypotheses become (G1), (G2) instead of (C1), (C2); its proof no longer rests on p. 387 (A), (B). The p. 389 condition −2(1 + β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k) (canon N-030, N-470) is unchanged.

## 8. Effect on the consumers (grep: SOURCES_FX*, SOURCES_D4D5*, SOURCES_UW_WRAP, SOURCES_U_ELL*)

- SOURCES_FX_O1 §4 (O1, tree decay at the last scale, "[P, given (1.80) as printed]"): now follows from Cor G2 with rate κ_LF, under (G3). Routes (a) "M large after L" and (b) "raise C_1" are not needed. §5 (the p. 387 improved bound) is proved by Cor G2.
- SOURCES_FX_R2 §2–§4 (route (b), C_1^{FX}): superseded; its "p_0 ≥ F × old right side" conditions become (G1)–(G3). The canon N-310 entries from FX_R2 P2 / H-218 (K3), M ≥ 12L(3κ_final)^{1/d}, are no longer needed for O1. Keeping them is harmless; removing them needs a check that no other consumer uses them [I].
- SOURCES_FX §6.1 R1 and SOURCES_FX_D 5.2 (activity bound through (1.79)–(1.89)): statements unchanged; the [R] to Balaban's (1.80)–(1.88) now resolves to Lemma G, Cor G1, Cor G2.
- SOURCES_FX_O23 Step 5 ("the induction uses the constants only through p_0 large and γ small"): still true. γ_0 → γ_0′ ≥ γ_0/4 and C_c → 2C_c change (G1), (G2) by fixed factors [P].
- SOURCES_D4D5, SOURCES_D4D5_VERIFY: no use of (1.80)–(1.89) (grep). No effect.
- SOURCES_UW_WRAP: Lemma W ((1.80_T)) is replaced by Prop R; §7 (ii) by Cor G2; §7 (iii) moves from [P-sketch] to [P relative]. Lemmas S and W1 stay correct but are not needed by this chain.
- SOURCES_U_ELL §6.1 (U-W), SOURCES_U_ELL_FINAL row "wrapping large-field induction", SOURCES_U_ELL_FINAL_VERIFY S3 (row 25): the item reads "[P relative to the inputs of SOURCES_P387_REPAIR §5.0], unverified". No input contains ℓ.
- SOURCES_UW_FINAL_VERIFY §7, R item (3) (the p. 387 steps): to be removed once this file is verified.

## 9. Proposed status (not applied)

- R-013 (Balaban's Theorem 1), large-field input. Before: "CMP 122 II (1.80)–(1.88) [R]; p. 387 (A) unproved, (B) false". Proposed: "(1.80) (margin form, Prop R), (1.89) and its improved form (Cor G1, Cor G2): [P relative to (I1) [V + I], (I2) [V + P], (I3) [V], (I4) [V + R + I], (I5) [P relative to Theorem 2w], (I6) [P], (I7) [R ADM]], SOURCES_P387_REPAIR, unverified". Balaban's Case 2 proof is invalid as written; his conclusions hold under (G1), (G2).
- (U-W): [V + P relative to R items]. R item (3) of SOURCES_UW_FINAL_VERIFY §7 is replaced by "Lemma G of SOURCES_P387_REPAIR, unverified". No R item contains ℓ.
- L-319 / (U_ℓ): [P relative to listed R inputs], unverified. The p. 387 caveat is resolved at the derivation level. Do not upgrade to [P] before an Opus verifier checks §3.2, §5.2 (G-1, G-3, G-5) and the two [I] readings in (I1) and (I4).
- L-320 (FX-V): unchanged apart from its (U_ℓ) input.
- Theorem IV (L-196): hypothesis list unchanged. Target 1's consequence and Target 2 use the large-field bound only through (1.89) and its improved form, which keep their statements.
- Headline: none.

## 10. Grade table

| item | grade |
|---|---|
| exact statements (1.80)–(1.89), (A), (B), (i), (ii) | [V] |
| p. 385 misprint: R_{m+1} = L^{−1}R_m | [P + V] |
| (1.85) lacks ½ | [I] |
| (A′) d′(X ∪ Y) ≤ d′(X) + d′(Y) + √d (common cell), + 2√d (touching) | [P] |
| exact (A) | open [I]; not needed |
| (B) false: explicit family, all t, all ratio sequences | [P]; script check [P, numerics/p387_counterexample.py] |
| (B′) S^m(X) ⊂ S^m(Y)^{~1}, m ≥ K_1 + n_1, n_1 ≤ 2⌈log_L 99⌉ + 2 | [P given I5] |
| join step: volume-form defect unbounded in the number of levels | [P]; d′ form open [I] |
| E-margin absorbs (A′) inside the induction | [P] |
| local devices (a)–(c) fail for (B′) | [P] each; general per-pair claim [P-sketch] |
| Lemma G | [P relative to (I1)–(I7)] |
| Cor G1 ((1.89)) | [P relative]; last step g_{j(X)} → g_k [R] |
| Cor G2 (improved bound, κ_LF) | [P relative]; d_k conversion [I] |
| Prop R ((1.80) with margin, cut at k_*) | [P relative] |
| torus and wrapping | [P relative, incl. I7] |
| canon placement (§7) | [P] (no new edge, no cycle) |

## 11. Report (≤ 120 words)

Step (B) on p. 387 is false: an explicit box family keeps a one-cell offset for any number of levels; a script confirms it. The true form is S^m(X) ⊂ S^m(Y)^{~1}. Step (A) holds with a join constant √d. The join constant can be absorbed per level, the one-cell defect cannot. Lemma G replaces the join induction by a global count. It tracks the union of region covers, so volume adds exactly. Clusters shrink by ¼ every T(d, L) levels, and small clusters live at most T + 2 + L²R levels. (1.80), (1.89) and the improved bound follow under two "p_0 large, γ small" conditions. No constant contains K or ℓ. Unverified.
