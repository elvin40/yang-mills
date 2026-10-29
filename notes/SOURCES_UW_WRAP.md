IDs follow IDS.md (new scheme). Map: Theorem IV = L-196; IV L2 (UV constants ℓ-free) = L-319; IV L3 (FX-V) = L-320. File-local labels ((U_ℓ), (U-W), Lemma ADM, (1.80_T), (1.81_T), Lemma S, Lemma W) are not global ids.
# SOURCES_UW_WRAP — the wrapping case of CMP 122 II (1.80)–(1.88), and the scaling inequality "(6.31) [I]"

Date: 2026-10-29 (Opus 5.5). Type: derivation. Edits: this file only. No existing file edited, PLAN.md not touched, sync.sh not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not opened and excluded from every grep.
Grades: [P] proved here; [P-sketch] argument given, one step written as an outline; [V] read this session on a page image rendered at 150 dpi (/tmp/uwwrap_img, deleted after use); [R] reduction to a named source or project file, not re-derived; [I] inference or reading, not printed anywhere.
Inputs read: OPUS_QUEUE.md l. 1–15; SOURCES_UW_SWEEP_122.md (full); SOURCES_L2_L3L14.md §0–§3.6 (incl. Lemma ADM §2.2); SOURCES_U_ELL.md §0, §6.1, §7 (grep). Page images read: CMP 109 p. 249 (contents); CMP 116 pp. 4, 9; CMP 122 II pp. 380, 383, 384, 385, 386, 387.

## 0. Result in five lines

1. CMP 109 has no Sect. 6 and no (6.31). Its contents page lists Sects. 0–5 and the references on p. 298 [V]. The inequality that CMP 122 II p. 384 calls "the scaling property (6.31) [I]" is CMP 116 (1.31), the "fundamental scaling inequality" d_j(X) ≥ (L^jη)^{−1}d_k(X_0) on CMP 116 p. 9 [V]. The identification "(6.x) [I] = CMP 116 (1.x), (7.x) [I] = CMP 116 (2.x)" is [I], with five content matches (§1).
2. Lemma S: the scaling step of CMP 122 II p. 384 holds on the torus with the same constant. The proof is a tree-graph argument inside the domain. It does not use the torus side [P given Lemma ADM (b)].
3. Lemma W: the statement (1.80), with its sum cut at the last level k_*, holds for every component, wrapping or not, with Balaban's printed conditions (1.82) and (1.88) unchanged. No condition contains ℓ or k_* − j [P, given the steps of (1.81)–(1.88) that Balaban prints and two properties of the sequence R_n, §6].
4. Consequence: a wrapping component that reaches the last level carries the factor exp(−κ_{k_*}(Z) − 2p_0(g_{j(Z)})) with κ_{k_*}(Z) ≥ 0. This is the same bound as (1.89) for a renormalized component [P]. The improved form with −κ_1d(Z) is [P-sketch], as it is in Balaban.
5. Status: row 25 of SOURCES_UW_SWEEP_122 goes from [V + P-sketch] to [V + P]. With the three sweeps, (U-W) has no page-level residue; its open items are the [R] reductions to CMP 99 already listed in SOURCES_UW_SWEEP_109_116 §4. L-319/(U_ℓ): proposed [P relative to listed R inputs, unverified]. No headline change until a verifier reports.

## 1. Where "(6.31) [I]" is

PDF page = journal page − 354 (CMP 122 II), − 248 (CMP 109), + 0 (CMP 116).
- V1. CMP 122 II p. 392, references: "[I] Balaban, T.: Renormalization group approach to lattice gauge field theories. I. Commun. Math. Phys. 109, 249–301 (1987)"; "[II] … II. Commun. Math. Phys. 116, 1–22 (1988)" [text layer; same in CMP 122 I p. 202].
- V2. CMP 109 p. 249, contents: "0. Introduction … 249; 1. … 260; 2. … 265; 3. … 269; 4. … 281; 5. The Analysis of the Vacuum Polarization Tensor and the β-Functions … 292; References … 298" [V]. So CMP 109 has no Sect. 6 and no Sect. 7.
- V3. CMP 116 p. 2: "The first paper is referred to as I, so we refer to its sections and formulas by writing I before the corresponding numbers". CMP 116 has Sects. 1 and 2 only [text layer].
- V4. CMP 116 p. 9: "By the definition of the linear size functions they satisfy the following fundamental scaling inequality d_j(X) ≥ (L^jη)^{−1}d_k(X_0). (1.31)" Here X ∈ D_j and X_0 is "the smallest localization domain from D_k containing X" (p. 8–9, text before (1.30)) [V].
- V5. CMP 116 p. 4: (1.9) is the expansion by the fundamental theorem of calculus in the parameters s(Δ); (1.10) is its form as a sum over connected Y_0 ∋ □̃^4 [V].
- V6. CMP 109 p. 251–252 (text layer, l. 425–441): a localization domain X is a connected union of cubes of π_j; "A length of a shortest graph in this class, divided by M, is the linear size of X, and is denoted by d_j(X)"; the graphs are "tree graphs contained in X and intersecting all the cubes in X", in the continuous space.

Content matches between "[I]" citations in CMP 122 II and CMP 116 [I]:
| CMP 122 II cites | what CMP 122 II says it is | CMP 116 equation | content there |
|---|---|---|---|
| (6.9), (6.10) [I] (pp. 372, 374, text layer) | "the expansion (6.9)", "the form of the expansion (6.10)", sum over Y_0 ∈ D_k | (1.9), (1.10) | the s-expansion, sum over Y_0 (V5) |
| (6.24)–(6.29) [I] | bounds "even simpler" | (1.24)–(1.29) | the bounds ending in (1.29) |
| (6.31) [I] (p. 384) | "the scaling property" of the linear size | (1.31) | "fundamental scaling inequality" (V4) |
| (7.1) [I] (p. 387) | "the Mayer expansion of the exponential" | (2.1) | Σ n!∫dμ … exp[Σ t(Y)V_k(Y,B)] |
| (7.13) [I] (p. 390) | "the convergent series (7.13)" | (2.13) | E^{(k+1)} = Σ ρ_T(Z_1,…,Z_n)H(Z_1)…H(Z_n) |
Reading [I]: in CMP 122 II, "[I]" with section numbers 6 and 7 points to CMP 116 Sects. 1 and 2. Citations with section numbers ≤ 5, such as (2.8) [I] and (3.19) [I], point to CMP 109. Balaban does not print this convention. Every other project file that cites "CMP 109 (6.31)" should read "CMP 116 (1.31)".

## 2. Page facts of CMP 122 II used below [V]

- F1. p. 380: "every large field domain Z_j contributes the constant O(1)log g_j^{−2}|Z_j| ≤ O(1)log g_j^{−2}(MR_j)^dd′_j(Z_j) ≤ O(1)M^dR_j^{d+1}d′_j(Z_j), where d′_j is the linear size defined in terms of MR_j-cubes instead of M-cubes."
- F2. p. 383, (1.79): T′_k(X)1 ≤ sup exp{Σ_{j=1}^k O(1)M^dR_j^{d+1}d′_j(Z_j)} · Π_jΠ_i exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)}) + 1) − 2p_0(g_j)) Π′exp(−p_0(g_j)). "Notice that the above inequality holds for all large field regions, not only for the regions satisfying the conditions (i), (ii)."
- F3. p. 384: S(Z) = Z′^{~10}, Z′ the cover by LMR_{j+1}-cubes. "The factor exp(−κ_j(Z)) controls K renormalization steps, under the assumption that no large fields are created in these steps, where the number K is the smallest positive integer having the property that the domain S^K(Z), considered as a domain in the lattice of the scale L^{−(j+K)}, satisfies the conditions (i), (ii), with N = R_j." Then (1.80): κ_j(Z) ≥ Σ_{n=j+1}^{j+K} O(1)M^dR_n^{d+1}d′_n(S^{n−j}(Z)).
- F4. p. 384: S^{n−j}(Z) = ∪_{□⊂Z} S^{n−j}(□); S^{n−j}(□) is a cube of L_{n−j}^d MR_n-cubes with L_{n−j} ≤ 42(1 − L^{−(n−j)})/(1 − L^{−1}) < 63; S^{n−j}(Z) ⊂ ∪_{□_0⊂Z^{(n−j)}} □_0^{~31}; "d′_n(S^{n−j}(Z)) ≤ (63)^d(MR_n)^{−d}|Z^{(n−j)}| ≤ (63)^d3·2^{d−1}d′_n(Z^{(n−j)}) if the linear size on the right-hand side is different from 0, or d′_n(S^{n−j}(Z)) ≤ (64)^d if it is equal to 0. From the scaling property (6.31) [I] we obtain d′_n(Z^{(n−j)}) ≤ L^{−½(n−j)}d′_j(Z) ≤ 2^{−(n−j)}d′_j(Z)".
- F5. p. 385: "for n − j > 1. The square root appears here, because for some steps we do not gain the scaling factor L^{−1} (then R_{m+1} = LR_m). … Let n_0 be the last index n such that d′_n(Z^{(n−j)}) > 0. Then S^{n_0+1−j}(Z) is contained in a cube of the size 64MR_{n_0+1}, hence it satisfies the condition (i), and doing at most R_j further steps we obtain a domain satisfying both conditions (i), (ii). Thus K ≤ n_0 − j + R_j". Then (1.81): Σ_{n=j+1}^{j+K} … ≤ Σ_{n=j+1}^{n_0} O(1)M^dR_n^{d+1}3(126)^d2^{−(n−j)}d′_j(Z) + Σ_{n=n_0+1}^{n_0+R_j} O(1)M^dR_n^{d+1}(64)^d ≤ O(1)3(126)^dM^dL^{d+1}R_j^{d+1}d′_j(Z) + O(1)(64)^dM^dL^{d+1}R_j^{d+2} ≤ O(1)(64)^dM^dL^{d+1}R_j^{d+2}(d′_j(Z) + 1).
- F6. p. 385: base j = 1: d′_1(Z) ≤ Σ_i d′_1((Z_1^{(i)})^{~3}); d′_1((Z_1^{(i)})^{~3}) ≤ 7^d(3·2^{d−1}d′_1(Z_1^{(i)}) + 2^d) ≤ 2(14)^d(d′_1(Z_1^{(i)}) + ½); (1.82) κ_1(Z) ≥ ¼γ_0(14)^{−d}A_1²p_0²(g_1)(d′_1(Z) + 1) − O(1)M^dR_1^{d+1}d′_1(Z); condition "¼γ_0(14)^{−d}A_1²p_0²(g_1) ≥ O(1)2(64)^dM^dL^{d+1}R_1^{d+2}. This condition is satisfied for p_0 large, and g_1 sufficiently small."
- F7. p. 385–386: Case 1, (1.83) κ_{j+1}(Z) = κ_j(Z_0) − O(1)M^dR_{j+1}^{d+1}d′_{j+1}(Z) for Z = S(Z_0). Sub-case: Z_0 satisfies (i), (ii) and a new large field appears; "We define κ_{j+1}(Z) = p_0(g_j) − O(1)M^dR_{j+1}^{d+1}d′_{j+1}(Z). It satisfies (1.80), because Z is a small domain, it is contained in a cube of the size 100MR_{j+1}, hence K = R_{j+1} for Z."
- F8. p. 386–387: Case 2, (1.84)–(1.87), tree graph G on {Z_j^{(n)}, Z_{j+1}^{(i)}}, end vertex X, rest Y, Z ⊂ X ∪ Y; d′_{j+1}(X) + d′_{j+1}(Y) + 2d ≥ d′_{j+1}(Z); (1.87) κ_{j+1}(Z) ≥ κ_{j+1}(X) + κ_{j+1}(Y) + 2(1 + β_0)^{−1}p_0(g_{j+1}) − O(1)2dM^dR_{j+1}^{d+1}.
- F9. p. 387: "the intersection of S^{n−j−1}(X), S^{n−j−1}(Y), for n > j + 1, contains at least a cube of the size 20MR_n. This implies that d′_n(S^{n−j−1}(Z)) ≤ d′_n(S^{n−j−1}(X)) + d′_n(S^{n−j−1}(Y))." Then: K_1 ≤ K_2 by symmetry; "S^{K_1}(X) satisfies the conditions (i), (ii), in particular it is contained in a cube of the size 100MR_{j+1+K_1}, and it intersects the domains S^{K_1}(Y). … applying n_1 times the operation S to the last domain, where n_1 is a rather small number, e.g., n_1 < 10, we obtain the domain S^{K_1+n_1}(Y) containing S^{K_1+n_1}(X). This implies that S^{n−j−1}(Z) = S^{n−j−1}(Y) for n ≥ j + 1 + K_1 + n_1, and that K ≤ K_2 + n_1 + R_{j+1}." (1.88): the sum ≤ κ_{j+1}(X) + κ_{j+1}(Y) + O(1)2(100M)^dR_{j+1}^{d+2} ≤ κ_{j+1}(Z) − 2(1 + β_0)^{−1}p_0(g_{j+1}) + O(1)3(100M)^dR_{j+1}^{d+2} ≤ κ_{j+1}(Z), "for p_0 large and γ small enough."
- F10. p. 387: "the domain X in the definition (1.71) satisfies the assumption of the statement with K = 0, therefore κ_k(X) ≥ 0, and we have the fundamental inequality T′_k(X)1 ≤ exp(−2(1 + β_0)^{−1}p_0(g_k)). (1.89)" Then: "(1.80) holds quite generally for such regions, hence also an improved bound (1.89), with the additional term −κ_1d_k(X) in the exponential."
- F11. CMP 122 I p. 177: "Passing to the next step it is usually rescaled by L^{−1}, but in some steps the number R_k decreases by the factor L^{−1}" [text layer; the page image was read by SOURCES_UW_SWEEP_122].

## 3. Setting on the torus

Notation. T_ℓ is the torus of side ℓ (physical units), ℓ ∈ 𝓛(g) of SOURCES_L2_L3L14 §2.2. Levels are j = 1, …, k_*, where k_* is the last RG level. By SOURCES_L2_L3L14 §2.1, k_* depends on ε only, not on ℓ [R]. At level n the cubes are MR_n-cubes; in the common L^{−j}-scale their side is s_n := L^{n−j}MR_n (F4).
Lemma ADM (SOURCES_L2_L3L14 §2.2) gives, for every n ≤ k_*: (b) the cube partitions of all levels are π-images of nested Z⁴ partitions; (d) the torus side at level n, in level-n units, is > 200MR_n [P given the power-of-L reading [I] of ADM].
Definition. A component Z of Z_j wraps if Z contains a closed path that is not contractible in T_ℓ. A wrapping Z is not contained in any cube of side < ℓ, so no S^m(Z) satisfies condition (i): S only enlarges Z (F3). Then Balaban's K (F3) does not exist. Put K(Z) := +∞ in that case. Put K(Z) := +∞ also when j + K(Z) > k_*; in both cases the cost sum is cut at k_*.
Statement (1.80_T). For every j ≤ k_* and every component Z of Z_j,
  κ_j(Z) ≥ Σ_{n=j+1}^{min(j+K(Z), k_*)} O(1)M^dR_n^{d+1}d′_n(S^{n−j}(Z)),
with the same O(1) as in (1.80). An empty sum is 0.
Why (1.80_T) is the right statement [P]. The factor exp(−κ_j(Z)) must pay the costs O(1)M^dR_n^{d+1}d′_n(Z_n) that F1 assigns to Z at the later levels n until Z is renormalized. No level n > k_* exists. So the costs at levels n ≤ min(j + K, k_*) are all the costs that occur. For a non-wrapping Z with j + K ≤ k_*, (1.80_T) is (1.80).

## 4. Lemma S (the scaling step on the torus) [P given ADM (b)]

Claim. For every Z (wrapping or not) and every n with j < n ≤ k_*,
  d′_n(Z^{(n−j)}) ≤ (s_j/s_n)d′_j(Z),   s_n/s_j = L^{n−j}R_n/R_j.
Proof. Let Γ be a shortest tree graph in Z that meets every MR_j-cube of Z (V6, with MR_j-cubes, F1). Its length is s_jd′_j(Z). By ADM (b) every MR_j-cube of Z lies in exactly one MR_n-cube, and Z^{(n−j)} is the union of these MR_n-cubes. So every MR_n-cube of Z^{(n−j)} contains an MR_j-cube of Z, and Γ meets it. Also Γ ⊂ Z ⊂ Z^{(n−j)}. So Γ is in the class that defines d′_n(Z^{(n−j)}), and d′_n(Z^{(n−j)}) ≤ |Γ|/s_n = (s_j/s_n)d′_j(Z). ∎
The proof uses only the tree Γ and the cubes it meets. The torus enters only through the length metric of Γ. The proof is the same for a wrapping Z. It is the argument behind CMP 116 (1.31) (V4), with MR-cubes in place of M-cubes.
Balaban's factor. F4 states s_j/s_n ≤ L^{−½(n−j)} ≤ 2^{−(n−j)} for n − j > 1 (L ≥ 4). By F11, s_{m+1}/s_m = L·R_{m+1}/R_m is L in a usual step and 1 in a step where R drops by L^{−1}. The bound L^{−½(n−j)} therefore needs: (R-seq 1) in any n − j > 1 consecutive steps, R drops in at most ½(n − j) of them. For n − j = 1, s_j/s_n ≤ 1 ≤ 2·2^{−1}; the factor 2 is inside Balaban's 3(126)^d = 2·(63)^d·3·2^{d−1}·… bookkeeping [I]. (R-seq 1) is a property of the sequence g_n alone (R_n is a function of g_n, SOURCES_L2_L3L14 §2.2 "R_k ≤ C_R(log g_k^{−2})^{p_R}"). It does not contain ℓ. [R to Balaban F4–F5, F11; not re-derived]

## 5. Lemma W1 ((1.81) cut at k_*) [P]

Claim. For every component Z of Z_j on T_ℓ,
  Σ_{n=j+1}^{min(j+K(Z), k_*)} O(1)M^dR_n^{d+1}d′_n(S^{n−j}(Z)) ≤ O(1)(64)^dM^dL^{d+1}R_j^{d+2}(d′_j(Z) + 1),     (1.81_T)
with Balaban's constant from F5.
Proof. Let n_0 be the last n ≤ k_* with d′_n(Z^{(n−j)}) > 0 (n_0 := j if none).
(a) Terms with n ≤ n_0. The first inequality of F4 bounds d′_n(S^{n−j}(Z)) by (63)^d3·2^{d−1}d′_n(Z^{(n−j)}). It uses: S^{n−j}(□) is a cube of < 63 MR_n-cubes per side, and a union of cubes has linear size at most the number of its cubes, which is at most 3·2^{d−1} times the linear size. Each fact is about a set inside a cube of side 63MR_n or about one tree. By ADM (d), 63MR_n < 200MR_n < torus side, so □_0^{~31} is a cube of T_ℓ. The counting does not see the torus [P]. Lemma S gives d′_n(Z^{(n−j)}) ≤ 2^{−(n−j)}d′_j(Z). So the terms with n ≤ n_0 sum to at most Σ_{n=j+1}^{n_0} O(1)M^dR_n^{d+1}3(126)^d2^{−(n−j)}d′_j(Z) ≤ O(1)3(126)^dM^dL^{d+1}R_j^{d+1}d′_j(Z). The last step uses Σ_{m≥1}2^{−m} ≤ 1 and (R-seq 2) R_n ≤ LR_j for n ≥ j, which Balaban uses in F5 [R]. The bound does not depend on n_0 − j, so it does not depend on the number k_* − j of remaining levels.
(b) Terms with n > n_0. Two cases.
 (b1) n_0 < k_*. Then d′_{n_0+1}(Z^{(n_0+1−j)}) = 0. So Z^{(n_0+1−j)} is a set of MR_{n_0+1}-cubes that meet at one point, and S^{n_0+1−j}(Z) is in a cube of side 64MR_{n_0+1} (F5). By ADM (d) this cube is a cube of T_ℓ, and it is inside a cube of side 100MR_{n_0+1}. So S^{n_0+1−j}(Z) satisfies (i). In particular Z does not wrap. Balaban's argument gives K ≤ n_0 − j + R_j (F5). The terms with n_0 < n ≤ min(j + K, k_*) are at most R_j in number, each ≤ O(1)M^dR_n^{d+1}(64)^d. This is Balaban's second sum or a part of it.
 (b2) n_0 = k_*. Then no term has n > n_0, and the second sum is empty.
A wrapping Z is always in case (b2). Proof: at every level n ≤ k_*, Z^{(n−j)} contains a non-contractible closed path, so it meets at least one MR_n-cube in each of > 200 consecutive slabs (ADM (d)). At most 2^d cubes meet at one point. So d′_n(Z^{(n−j)}) > 0 for every n ≤ k_*. ∎
Adding (a) and (b) gives the right side of F5, so (1.81_T) holds with Balaban's constant. ∎
Remark [P]. The sum in (a) runs over up to k_* − j levels. Without the factor 2^{−(n−j)} it would grow like (k_* − j)·d′_j(Z). The factor makes it at most one term's worth. This is the exact place where the number of levels could enter, and it does not.

## 6. Lemma W (the induction (1.82)–(1.88) with the cut at k_*) [P given Balaban's printed steps F6–F9 and (R-seq 1), (R-seq 2)]

Claim. (1.80_T) holds for every j ≤ k_* and every component Z of Z_j, under the two conditions that Balaban prints: (C1) ¼γ_0(14)^{−d}A_1²p_0²(g_1) ≥ O(1)2(64)^dM^dL^{d+1}R_1^{d+2} (F6); (C2) 2(1 + β_0)^{−1}p_0(g_{j+1}) ≥ O(1)3(100M)^dR_{j+1}^{d+2} for every j (F9, "p_0 large and γ small enough").
Proof. Induction in j, as in Balaban. At each step the only change is that each sum stops at k_*. A sum of nonnegative terms that stops earlier is not larger. The work is to check that no step needs K < ∞.

Base j = 1 [P]. F6 gives κ_1(Z) ≥ ¼γ_0(14)^{−d}A_1²p_0²(g_1)(d′_1(Z) + 1) − O(1)M^dR_1^{d+1}d′_1(Z). The two inequalities before (1.82) use d′ of 3-neighbourhoods of the regions Z_1^{(i)}; each region has its own d′, and the bound is a count of cubes in a 7-fold enlargement. Neither uses K or the torus side. Lemma W1 at j = 1 bounds the cut sum by O(1)(64)^dM^dL^{d+1}R_1^{d+2}(d′_1(Z) + 1). Under (C1), ½ of the first term covers it and also the subtracted term, as in Balaban. This holds for wrapping Z, because W1 holds for wrapping Z.

Step j → j + 1, Case 1: Z = S(Z_0), no new large field [P]. (1.83): κ_{j+1}(Z) = κ_j(Z_0) − c_{j+1}d′_{j+1}(Z), c_n := O(1)M^dR_n^{d+1}. If K(Z_0) < ∞ and j + K(Z_0) ≤ k_*, then K(Z) = K(Z_0) − 1, as in Balaban. If K(Z_0) = ∞ (Z_0 wraps, or Z_0 is not renormalized before k_*), then K(Z) = ∞: S^m(Z) = S^{m+1}(Z_0). In both cases min(j + 1 + K(Z), k_*) = min(j + K(Z_0), k_*). The hypothesis for Z_0 gives
  κ_j(Z_0) ≥ c_{j+1}d′_{j+1}(S(Z_0)) + Σ_{n=j+2}^{min(j+K(Z_0), k_*)} c_nd′_n(S^{n−j}(Z_0)).
Subtract the first term and write S^{n−j}(Z_0) = S^{n−j−1}(Z). The result is (1.80_T) for (j + 1, Z). ∎
Sub-case: Z_0 satisfied (i), (ii) and a new large field appeared (F7). Then Z is in a cube of side 100MR_{j+1}, which is a cube of T_ℓ by ADM (d). So Z does not wrap, K(Z) = R_{j+1}, and the cut sum is at most Balaban's sum. Balaban's argument applies without change.

Step j → j + 1, Case 2: Z is joined from several domains (F8) [P]. Induction in the number of domains, with the tree graph G, the end vertex X and the rest Y, as in Balaban. (1.87) uses the subadditivity d′_{j+1}(X) + d′_{j+1}(Y) + 2d ≥ d′_{j+1}(Z) (two trees joined in a common cube) and the index rule for j(Z). Neither uses K or the torus side. So (1.87) holds on T_ℓ. F9 gives, for n > j + 1, d′_n(S^{n−j−1}(Z)) ≤ d′_n(S^{n−j−1}(X)) + d′_n(S^{n−j−1}(Y)), because the two sets overlap in a cube of side 20MR_n; this is local. Put K_X := K(X), K_Y := K(Y), and k′ := min(j + 1 + K(Z), k_*) for the upper limit of the sum for Z. Three cases:
 (2a) K_X ≤ K_Y, K_X < ∞ and j + 1 + K_X ≤ k_* (X becomes small before the last level; Y may wrap). Balaban's absorption step (F9) uses: S^{K_X}(X) is inside a cube of side 100MR_{j+1+K_X}; it meets S^{K_X}(Y); after n_1 < 10 more applications of S the 10 new layers of the larger cubes cover that cube. Every set in this step is inside a cube of side ≤ 100MR_m·L^{n_1} in level-m units at the current level m; the layers are added on T_ℓ. The step needs no property of Y beyond "S^{K_X}(Y) meets S^{K_X}(X)". So S^{K_X+n_1}(Y) ⊃ S^{K_X+n_1}(X), and S^{n−j−1}(Z) = S^{n−j−1}(Y) for n ≥ j + 1 + K_X + n_1, also when Y wraps [P; the covering of a 100MR cube by 10 layers after n_1 steps is Balaban's, (R-seq 1) makes n_1 < 10 enough, R]. Split the sum for Z at j + 1 + K_X + n_1:
  Σ_{n=j+2}^{k′} c_nd′_n(S^{n−j−1}(Z)) ≤ Σ_{n=j+2}^{min(j+1+K_X, k_*)} c_nd′_n(S^{n−j−1}(X)) + [at most n_1 more X-terms] + Σ_{n=j+2}^{min(j+1+K_Y, k_*)} c_nd′_n(S^{n−j−1}(Y)) + [at most n_1 + R_{j+1} more Y-terms, only if K_Y < ∞].
 The extra terms are terms of sets inside a cube of side 100MR_n; each is ≤ c_n(100)^d. Their number is ≤ 2n_1 + R_{j+1}. So they cost ≤ O(1)2(100M)^dR_{j+1}^{d+2} (with (R-seq 2)), which is Balaban's extra term in (1.88). If K_Y = ∞, the Y-sum already runs to k_*, and the Y extra terms do not occur. The hypothesis for X and Y bounds the two main sums by κ_{j+1}(X) + κ_{j+1}(Y). Then (1.87) and (C2) give κ_{j+1}(Z) as in (1.88). ∎
 (2b) Neither X nor Y becomes small before k_* (both wrap, or both have j + 1 + K > k_*). The sum for Z stops at k′ ≤ k_*; a sum that stops earlier is not larger, so it is enough to bound the sum to k_*. No absorption step is needed. Both sums for X and Y run to k_*. Subadditivity at every n gives
  Σ_{n=j+2}^{k_*} c_nd′_n(S^{n−j−1}(Z)) ≤ κ_{j+1}(X) + κ_{j+1}(Y) ≤ κ_{j+1}(Z) − 2(1 + β_0)^{−1}p_0(g_{j+1}) + O(1)2dM^dR_{j+1}^{d+1} ≤ κ_{j+1}(Z),
 by (1.87) and (C2). No extra term occurs, so (2b) needs less than (C2). ∎
 (2c) K_X < ∞ but j + 1 + K_X > k_* (X would become small only after the last level). Then K_X is replaced by ∞ by the definition in §3, and the case is (2b) if K_Y is also replaced by ∞; otherwise exchange X and Y and use (2a). ∎
All cases give (1.80_T) for (j + 1, Z) with the conditions (C1), (C2) and no other condition. ∎

What the induction does not use [P, by inspection of F6–F9]. No step uses the torus side ℓ, the number k_* − j of remaining levels, or the finiteness of K. Every geometric fact is about a set inside a cube of side ≤ 100MR_n (times L^{n_1}), or about one tree graph. ADM (d) makes each such cube a cube of T_ℓ.

## 7. Consequence at the last level

(i) Renormalized components [P]. A component X that satisfies (i), (ii) at level k ≤ k_* has K = 0. (1.80_T) gives κ_k(X) ≥ 0, and F10 gives (1.89) T′_k(X)1 ≤ exp(−2(1 + β_0)^{−1}p_0(g_k)). This is Balaban's statement; ADM (d) makes condition (i) meaningful on T_ℓ.
(ii) Wrapping components [P]. A wrapping component Z is never renormalized. At j = k_* the sum in (1.80_T) is empty, so κ_{k_*}(Z) ≥ 0. Its factor in (1.79) is exp(−κ_{k_*}(Z) − 2p_0(g_{j(Z)})) ≤ exp(−2p_0(g_{j(Z)})). The constant is the same as for a renormalized component. It does not depend on ℓ, on k_*, or on the size of Z.
(iii) Improved bound with −κ_1d(Z) [P-sketch]. F10 claims the extra term −κ_1d_k(X) without proof. The mechanism: under (C1) with a factor 2 margin, κ_1(Z) keeps ⅛γ_0(14)^{−d}A_1²p_0²(g_1)(d′_1(Z) + 1) after it pays the cut sum; by F4 and Lemma S, d′_n(S^{n−j}(Z)) ≤ (63)^d3·2^{d−1}·2^{−(n−j)}d′_j(Z), so a margin m·d′_j(Z) dominates (m/C)·2^{n−j}d′_n at every later level; in Case 2 the margins add by subadditivity. Step not written in full: the bookkeeping of the margin through (1.85)–(1.88). The cut at k_* does not change this mechanism, because it only removes nonnegative costs. For a wrapping Z the margin is large: d′_{k_*}(Z) ≥ 200 − 2 by the slab count of §5 (b2).
(iv) What this does not cover [I]. The final step of the project (SOURCES_L2_L3L14 §3.2, Step A, (0.5) with Z″ = ∅ at the last scale) treats the wrapping large-field polymers as polymers of a Kotecký–Preiss expansion. Their activity bound e^{−p_0(γ)}e^{−κ′d_K(U)} is that file's input. (ii)–(iii) are the Balaban-side bound that this input needs. The step from (iii) to the exponential decay e^{−κ′d_K} of a wrapping polymer is the same as for a non-wrapping one; it is not re-derived here.

## 8. The conditions that fix constants in this argument [V on pages 384–387]

| condition | where | contains ℓ? | contains k_* − j? |
|---|---|---|---|
| L_{n−j} < 63; S^{n−j}(□) a cube | p. 384 | no (needs ADM (d): 63 < 200) | no |
| d′_n(Z^{(n−j)}) ≤ L^{−½(n−j)}d′_j(Z) ≤ 2^{−(n−j)}d′_j(Z), L ≥ 4 | p. 384–385 | no (Lemma S) | no |
| (C1) ¼γ_0(14)^{−d}A_1²p_0²(g_1) ≥ O(1)2(64)^dM^dL^{d+1}R_1^{d+2} | p. 385 | no | no |
| (1.87) 2(1 + β_0)^{−1}p_0(g_{j+1}) vs O(1)2dM^dR_{j+1}^{d+1} | p. 387 | no | no |
| (C2) "p_0 large and γ small": 2(1 + β_0)^{−1}p_0(g_{j+1}) ≥ O(1)3(100M)^dR_{j+1}^{d+2} | p. 387 | no | no |
| n_1 < 10 | p. 387 | no | no |
Every condition is a per-level inequality in g_j, M, L, d and Balaban's base constants. None contains |T_η|, ℓ, or the number of levels.

## 9. Inputs used and not proved here

- [V] F1–F10 on page images (CMP 122 II pp. 380, 383–387), V2, V4, V5 (CMP 109 p. 249; CMP 116 pp. 4, 9).
- [R] (R-seq 1): R drops by L^{−1} in at most half of any n − j > 1 consecutive steps. (R-seq 2): R_n ≤ LR_j for n ≥ j. Both are used by Balaban in F4–F5 without proof; both depend on the sequence g_n only. F11 says R is non-increasing in the step index, which gives (R-seq 2) with factor 1 [I: reading of F11].
- [R] Lemma ADM (b), (d) (SOURCES_L2_L3L14 §2.2), with its own [I] on the power-of-L reading of M_1 and R_k.
- [R] Balaban's local geometric facts that this file uses as printed: subadditivity of d′ for touching domains, the count |Y| ≤ 3·2^{d−1}(MR)^d d′(Y) for d′ > 0, and the absorption after n_1 steps. Each is about one tree or one cube of side ≤ 100MR_n·L^{n_1}, so it holds on T_ℓ when that cube is a cube of T_ℓ (ADM (d)). Balaban omits small additive constants in two of them (e.g. the join cost in F9); this affects O(1) only and is not torus-related.
- [I] The identification "(6.31) [I]" = CMP 116 (1.31) (§1).

## 10. Resulting status (proposed, not applied)

- SOURCES_UW_SWEEP_122 row 25 and §2: from [V] + [P-sketch] to [V] + [P] (this file, Lemmas S, W1, W). The open step "(6.31) of CMP 109 not read" is closed: the inequality is CMP 116 (1.31), read on p. 9; Lemma S proves the form used on p. 384 on the torus. Correct "CMP 109 (6.31)" to "CMP 116 (1.31)" in SOURCES_UW_SWEEP_122 §2 and §4.
- Correction to SOURCES_UW_SWEEP_122 §2: it says the number of levels "grows with ℓ". By SOURCES_L2_L3L14 §2.1 the number of levels k_* depends on ε only. The risk is uniformity in k_* − j and in the size of a wrapping component (which can be of order ℓ). Lemmas W1 and W are uniform in both.
- (U-W) (SOURCES_U_ELL §6.1): the three image sweeps (CMP 109/116, CMP 119, CMP 122 I/II) report no torus-danger-class quantity in any constant-fixing condition, and this file closes the one unprinted case of CMP 122 II. Proposed status: (U-W) holds [V + P], with the [R] items already listed (‖C^{(k)}(Z_0)‖ for large or wrapping Z_0 and the ℓ-free spectral bound of C*Δ_kC, both reduced to CMP 99 [13]; SOURCES_UW_SWEEP_119 H4, H6, H10–H12), plus (R-seq 1), (R-seq 2) of §9. Unverified: no VERIFY file exists for the three sweeps or for this file.
- L-319 / (U_ℓ): from [P-sketch, residue (U-W) I] to [P-sketch → P relative to the [R] inputs of §9 and of the sweeps, unverified]. The [P-sketch] part of SOURCES_U_ELL Lemma U2 (completeness of the channel list Ch1–Ch7) is now checked on every page of CMP 109, 116, 119, 122 I, 122 II by the sweeps. The improved bound §7 (iii) stays [P-sketch]; (U_ℓ) does not need it, since §7 (ii) gives the ℓ-free bound with the same constant.
- L-320 (FX-V): its input (U_ℓ) changes grade as above; nothing else changes.
- Headline: none. A round "returned"; a verifier (Opus, not below this stage) should check §1 (the identification), §5 (b2), and §6 (2a)–(2b) on the page images.

## 11. Grade table

| item | grade |
|---|---|
| CMP 109 has no (6.31) | [V] |
| "(6.31) [I]" = CMP 116 (1.31) | [I] (five content matches, V4–V5) |
| Lemma S (scaling step on T_ℓ) | [P given ADM (b)]; factor L^{−½(n−j)}: [R] (R-seq 1) |
| Lemma W1 ((1.81) cut at k_*) | [P given (R-seq 2), ADM (d)] |
| wrapping ⇒ n_0 = k_* | [P given ADM (d)] |
| Lemma W, base and Case 1 | [P] |
| Lemma W, Case 2 (2a)–(2c) | [P given Balaban's absorption step, R] |
| §7 (ii) bound for a wrapping component | [P] |
| §7 (iii) improved bound | [P-sketch] |
| (U-W) | [V + P], [R] items listed, unverified |
| L-319 / (U_ℓ) | [P relative to listed R inputs], unverified |

## 12. Report (≤ 80 words)

CMP 109 has no (6.31). Balaban's "(6.31) [I]" is CMP 116 (1.31), the scaling inequality on p. 9 [V; identification I]. A tree-graph proof gives it on the torus. With the sum in (1.80) cut at the last level, (1.81) and the induction (1.82)–(1.88) hold for wrapping components. Balaban's conditions do not change, and no condition contains ℓ or the number of levels [P]. (U-W): no page-level residue remains. L-319/(U_ℓ): P relative to listed R inputs, unverified.
