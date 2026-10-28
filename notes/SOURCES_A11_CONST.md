IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_A11_CONST — TRUST_LEDGER A11: "Similar inequalities hold for other constants, which will be introduced later" (CMP 119 p. 256)

Tags: [P] proved here; [V] verified on the page image this session; [I] inherited from a named project file.
Firewall: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Source: balaban/1988_cmp119_convergent_renormalization_expansions.pdf. PDF page = journal page − 242 (p. 256 = PDF p. 14) [V].
Inputs read: TRUST_LEDGER row A11; THEOREM2_PROOF_v4 §1.2, §2.3, §10 item 10; SOURCES_HIGHER_M1 §A5, §B1–§B3, ledger, VERIFY corrections.

## §0 What the consumer needs
v4 §1.2: Theorem 1's proof uses the cross-scale comparisons (2.6)–(2.9). In u = g^{−2} they follow from (P-up), (P-low), and (S) [I, v4 §1.2, §2.3]. A11 asks: which further comparisons does "similar inequalities for other constants" add, and are they covered.

## §1 (2.4)–(2.9) exactly (CMP 119 pp. 255–256) [V, page images at 300 dpi]
Definitions (p. 255):
- (2.4) ε_j = g_jA_0(log g_j^{−2})^{p_0} = g_jp_0(g_j).
- (2.5) R_j is the smallest number of the form L^r such that R_j ≥ (log g_j^{−2})^r.
"The coupling constants g_j satisfy the inequalities", for n > m:
- (2.6) g_n ≤ (1 + g_n²β′(n−m))^{1/2}g_m ≤ (1 + g_n²β′)^{1/2}(n−m)^{1/2}g_m ≤ (1 + β_0)(n−m)^{1/2}g_m; g_m ≤ (1 + β_0)g_n.
  "where n > m, and β_0 > 0 can be chosen arbitrarily small, if g is sufficiently small. The inequalities follow from the renormalization group equations (0.20) [I], and from the properties of the β-functions. They imply the following inequalities:"
- (2.7) (log g_n^{−2})^p ≤ (1 + β_0)(log g_m^{−2})^p; (log g_m^{−2})^p ≤ (1 + g_n²β′(n−m))^{β_0}(log g_n^{−2})^p ≤ (1 + β_0)(n−m)^{β_0}(log g_n^{−2})^p, "where p is a positive integer" (p. 256 top).
- (2.8) ε_n ≤ (1 + β_0)(n−m)^{1/2}ε_m; ε_m ≤ (1 + β_0)(1 + g_n²β′(n−m))^{β_0}ε_n ≤ (1 + β_0)²(n−m)^{β_0}ε_n.
- (2.9) R_n ≤ LR_m; R_m ≤ L(1 + g_n²β′(n−m))^{β_0}R_n ≤ (L + 1)(n−m)^{β_0}R_n.
- p. 256: "Similar inequalities hold for other constants, which will be introduced later."

Reading [P]. (2.6)–(2.9) are not threshold conditions on fixed constants. They are cross-scale ratio bounds for four scale-dependent numbers g_j, (log g_j^{−2})^p, ε_j, R_j, each a function of g_j alone. So "other constants" means other scale-indexed numbers X_j = f(g_j) defined later (Balaban calls g_j "constants" too). The task's threshold forms enter only as side conditions that make the chains true. Those side conditions are [P]:
- (T1) g_n²β′ ≤ (1 + β_0)² − 1 (third step of (2.6) line 1). This is the γ²B′ condition of v4 §1.2.
- (T2) for (2.7) line 1, with ℓ = log g^{−2}: (1 + 2log(1 + β_0)/ℓ_m)^p ≤ 1 + β_0. Since (1 + y)^p ≤ e^{py} and y = 2log(1 + β_0)/ℓ_m, it holds if ℓ_m ≥ 2p, i.e. γ² ≤ e^{−2p}. Upper bound on γ given p, β_0.
- (T3) for (2.7) line 2: (1 + log(1 + X)/ℓ_n)^p ≤ (1 + X)^{p/ℓ_n} ≤ (1 + X)^{β_0} if ℓ_n ≥ p/β_0. Upper bound on γ.
- (T4) (1 + X)^{β_0} ≤ (1 + β_0)(n−m)^{β_0} with X = g_n²β′(n−m): from 1 + X ≤ (1 + g_n²β′)(n−m) and (T1) via (1 + g_n²β′)^{β_0} ≤ (1 + β_0)^{2β_0} ≤ 1 + β_0 for β_0 ≤ 1 [P: (1+b)^{2b} ≤ 1+b iff 2b log(1+b) ≤ log(1+b), true for b ≤ 1/2].
- (2.8) multiplies (2.6) and (2.7) with p = p_0 (p_0 a positive integer here [I, the p_0 of (2.4)]); (2.9) applies (2.7) with p = r and rounds to powers of L (factor L).
All of (T1)–(T4) are upper bounds on γ with arguments β_0, β′ (= B′), p ∈ {p_0, r, …}. They sit inside v4 §1.2's γ_*(β_0, β, B′, p_0, p_1, r, ν, κ_0). No cycle: β_0, B′, p_0, r are fixed before γ (SOURCES_ORDER_CANON B6, B25–B31: β_0 first; … exponents p_0 → p_1 → r → q_0 → q_1 → A_1 → A_0 → C_0 → C_1 → γ → g).

## §2 Constants introduced after p. 256: pp. 257–260 [V, page images]
| # | page, display | new constant | printed condition |
|---|---|---|---|
| 1 | p. 257, before (2.16) and (2.17) | M_2 (partition of T_η into LM_2R_k-cubes) | none printed |
| 2 | p. 257, (2.16) | s* in Q_k^{s*} ("as in (1.3)") | none printed (defined in Sect. 1) |
| 3 | p. 257, (2.17) | ε_kη² in χ_k(Ω_k) | none new; ε_k is (2.4) |
| 4 | p. 259, (2.24) | g_j²(x), position-dependent coupling, φ_j ∈ C_0^∞(Λ_j), φ_j = 1 on Λ_j^{~−1} | equals g_j² on the last domain; no cross-scale inequality printed |
| 5 | p. 259, (2.28) | α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1} | "q_0, q_1 are integers greater than 1, C_0, C_1 are sufficiently large positive numbers" |
| 6 | p. 260, (2.31) | κ_0 in \|R^{(j)}(X, (U, J))\| ≤ g_j^{κ_0}exp(−κd_j(X)) | "κ_0 can be chosen arbitrarily large, similarly as κ, if the other parameters are fixed properly, as in [I]" |
| 7 | p. 260, after (2.31) | marginal bound O(1)(L^jη)⁴g_j^{κ_0}exp(−κd_j(X)) | "the sum over j is controlled by g_j^{κ_0}" (made precise in (2.46), §3 below) |

Classification for the "similar inequalities" (cross-scale ratio bounds) [P]:
- #5 α_{i,j}: same form as ε_j in (2.4) with (A_0, p_0) → (C_i, q_i). So (2.8) holds verbatim for α_{i,j} with p = q_i, under (T1)–(T4) with p = q_i: α_{i,n} ≤ (1 + β_0)(n−m)^{1/2}α_{i,m}; α_{i,m} ≤ (1 + β_0)²(n−m)^{β_0}α_{i,n}. Class (b): implied by (2.6) + (2.7). This resolves v4 §2.3 caveat (2): the "other constants" include α_{0,j}, α_{1,j}; they are named at (2.28). Side conditions: γ² ≤ e^{−2q_i} and γ² ≤ e^{−q_i/β_0} (from (T2), (T3)); upper bounds on γ after q_i, β_0.
- #6 g_j^{κ_0}: power of g_j. Ratio: g_m^{κ_0} ≤ (1 + β_0)^{κ_0}g_n^{κ_0} and g_n^{κ_0} ≤ (1 + β_0)^{κ_0}(n−m)^{κ_0/2}g_m^{κ_0}. Class (b) from (2.6). Note: the factor is (1 + β_0)^{κ_0}, not (1 + β_0). It is a fixed number once κ_0, β_0 are fixed (≤ e^{κ_0β_0}; e.g. ≤ e at β_0 ≤ 1/κ_0). No circularity: κ_0 is fixed before γ (HIGHER_M1 §B2.2 lists κ, κ_1 early; κ_0 is "similarly as κ"). If a step needs the slack exactly (1 + β_0), choose β_0′ with (1 + β_0′)^{κ_0} ≤ 1 + β_0; this is a smaller β_0, still fixed before γ (v4 §1.2: β_0 fixed first).
- #1, #2: fixed integers / geometric constants, not scale-indexed. No cross-scale inequality is meaningful. Class: not in scope of A11 (no "similar inequality" exists for a j-independent constant).
- #3: ε_k already covered by (2.8).
- #4: g_j(x) interpolates g_{j−1}, g_j through (2.24) with 0 ≤ φ_j ≤ 1 [I: φ_j cutoff]. 1/g_j²(x) = u_j + β_j(g_{j−1})φ_j(x) = (1 − φ_j)u_j + φ_ju_{j−1}, a convex combination of u_j and u_{j−1} for any sign of β_j. So any cross-scale bound for g_j(x) follows from the bounds for g_{j−1}, g_j: class (b), using the one-step case n − m = 1 of (2.6) [P, given 0 ≤ φ_j ≤ 1, which (2.24) does not print; standard for a C_0^∞ cutoff equal to 1 on a subset, but [I]].

## §3 pp. 261–262 [V, page images]
| # | page, display | new constant | printed condition |
|---|---|---|---|
| 8 | p. 261, (2.34)–(2.37), (2.39) | β in the factor (1 − β(1 − 2^{−(j−n)})) | "β is a small positive constant, but not too small, e.g., we can take β = 1/4" |
| 9 | p. 261, (2.34)–(2.39) | α̃_0, α̃_1 = the sequences α_{0,n}, α_{1,n}, n = 1, …, j, used on X ∩ (Ω_n \ Ω_{n+1}) | none beyond (2.28) |
| 10 | p. 261, (ii), (2.38) | C (cube sizes CML^nξ, CM); B, "an absolute constant" | none printed for C; B absolute |
| 11 | p. 261, (2.42) | B_0 in \|B^{(j)}\| < B_0exp(−κd_j(X)) | none printed |
| 12 | p. 262 | E_k, E_1 (vacuum energies) | defined, no inequality |
| 13 | p. 262 | (1 + 4β)κ: improved decay of newly created terms | "for example"; no inequality |

Key sentence, p. 262, after Theorem 1 [V]: "At first, some of the restrictions on constants, e.g. on constants κ, M, ε_j, α_{0,j}, α_{1,j}, come from the paper [I]. We assume that all of them are satisfied here, and we will introduce some new restrictions also." Theorem 1 [V]: "There exist constants, introduced in the above description, such that if the sequence of coupling constants {g_k} … satisfies the inequalities (I.0.33), then … The constants satisfy numerous restrictions introduced in the proof."
This confirms §1's reading: Balaban calls the scale-indexed ε_j, α_{0,j}, α_{1,j} "constants". So the "other constants, which will be introduced later" of p. 256 are at least α_{0,j}, α_{1,j} (2.28) [I: inference from the word use; Balaban does not link the two sentences].

Cross-scale role [P]. (2.34)–(2.39) bound fields on the scale-n region X ∩ (Ω_n \ Ω_{n+1}) of a scale-j polymer by α_{0,n}, α_{1,n} at the scale n ≤ j where the field lives. They do not compare α_{·,n} with α_{·,j}. The comparison enters when a scale-j bound (e.g. the inductive step k → k+1 shifts j by one, or a field from scale n is fed into a scale-j estimate) is used. Those uses need α_{i,m} ≤ (1 + β_0)²(n−m)^{β_0}α_{i,n} and α_{i,n} ≤ (1 + β_0)(n−m)^{1/2}α_{i,m}, i.e. §2 #5, class (b).
#8 β: a fixed number (1/4), no scale index; out of A11 scope. Note: this β is not v4's growth constant β in (P-low); the symbol clash is Balaban's [P by reading].
#10, #11, #12, #13: fixed constants or j-indexed sums, not functions of g_j alone. Out of A11 scope. B_0 is listed in TRUST_LEDGER/HIGHER_M1 as a walk/kernel constant fixed before M_1 [I, HIGHER_M1 §B2.2]; CMP 119 p. 278 replaces B_0 by O(p_1(g_k)) (OCR hit; checked in §4).

## §4 pp. 263–266 [V, page images]
| # | page, display | new constant | printed condition |
|---|---|---|---|
| 14 | p. 263, Thm 2 (2.43) | E_1; exponent β in (L^{j−n})^β | "for β < 1"; E_1 "grows to ∞ if β → 1" |
| 15 | p. 263, (2.44) | R_1 "an absolute constant" | "R_1 can be taken as equal to 1 for g_j sufficiently small" |
| 16 | p. 263, (2.46) | (κ_0 again) | "for κ_0 ≥ 7 and g sufficiently small" |
| 17 | p. 264, (2.47)–(2.48) | B_1 | none printed |
| 18 | p. 264, (2.50) | E_−, E_+ "depending on g_k" | none printed |
| 19 | p. 265, (3.2), (3.3) | L²M_2R_{k+1}-cubes (M_2 again) | none printed |
| 20 | p. 265, after (3.4) | δ_k = g_kA_1/A_0p_0(g_k) (printed so); A_1 | read with (3.9) "O(1)δ_k = O(1)(A_1/A_0)ε_k": δ_k = (A_1/A_0)ε_k |
| 21 | p. 266, (3.7) | B_3; δ (decay rate of (190) [15]); d | (3.7) closes "for A_1/A_0 and γ sufficiently small" |
| 22 | p. 266, (3.9) | — | "for A_1/A_0 sufficiently small" |

Cross-scale content [P]:
- #20 δ_k = (A_1/A_0)ε_k: constant multiple of ε_k. (2.8) holds verbatim for δ_k. Class (b).
- (3.8) uses ε_{k+1} ≤ (1 + β_0)ε_k (this is (2.8) line 1 at n − m = 1) inside "(1 + (2/10)ε_kη)ε_{k+1}(L^{−1}η)² < 2(1 + β_0)L^{−2}ε_kη²". Then 2(1 + β_0)L^{−2} + 4/10 < 1 needs L² > 2(1 + β_0)/0.6; true for L > 11 and β_0 ≤ 1. Class (a)/(b): already sweep item 6 (v4 §2.3).
- (3.7) threshold side conditions: (i) e^{−δ2M_2R_k} ≤ e^{−R_k} needs 2δM_2 ≥ 1, a lower bound on M_2 [P from the display; not printed as a condition]; (ii) 4B_3A_1/A_0 + 30d²L²B_3²(1 + β_0)e^{−R_k} < 1/10 needs A_1/A_0 ≤ 1/(80B_3) and e^{−R_k} ≤ 1/(600d²L²B_3²(1 + β_0)). (ii-b) is an upper bound on γ through R_k ≥ (log γ^{−2})^r. These are single-scale. Not "similar inequalities" in the A11 sense, but they are constant orderings; see §6.
- #14 β (exponent < 1), #15 R_1, #17 B_1, #18 E_±, #21 B_3, δ, d: fixed constants, out of A11 scope.
- #16: (2.46) Σ_{j≤n} g_j^{κ_0} < g_n^{κ_0−6}: sweep item 5, needs (P-low) and γ^{−2} ≥ 2D′ [I, v4 §2.3]. Re-proof [P]: with (P-low), u_j ≥ u_n + β(n−j) − D′ ≥ u_n/2 + β(n−j) when u_n ≥ 2D′. So Σ_j u_j^{−κ_0/2} ≤ Σ_{t≥0}(u_n/2 + βt)^{−κ_0/2} ≤ (u_n/2)^{−κ_0/2} + (u_n/2)^{1−κ_0/2}/(β(κ_0/2 − 1)) ≤ C(β, κ_0)g_n^{κ_0−2}. This is < g_n^{κ_0−6} once C g_n⁴ < 1: upper bound on γ after β, κ_0. Class (b).

## §5 pp. 267–270 [V, page images]
| # | page, display | new constant | printed condition |
|---|---|---|---|
| 23 | p. 267, (3.12)–(3.14) | (4dL)², 2B_3L²(1 + β_0) factors | none; "= O(1)ε_k" |
| 24 | p. 267, after (3.14) display | σ_0, z, d(g) in log g_kd(g)\|B(Γ_{k+1})*\|, log σ_0, log z(L⁴ − 1) | none printed (from [I]) |
| 25 | p. 268, (3.16) | δ_k reused as small-field threshold for A_k | none new |
| 26 | p. 268, after (3.17) | — | "B_3exp(−δLM_2R_{k+1})44d²B_3ε_{k+1} ≤ 44d²B_3²(1 + β_0)exp(−R_k)ε_k" |
| 27 | p. 268–269, (3.19) | — | "< δ_k for g_k, or γ sufficiently small" |
| 28 | p. 269, (3.20) | 100LMR_{k+1} (parallelepiped rule) | none |
| 29 | p. 269, after (3.22) | H^{(k)} bounded by O(1)ε_kexp(−R_k), "hence by any positive power of g_k" | none |
| 30 | p. 270, (3.25) | E_0^{(k)} | none |
| 31 | p. 270, bottom | k_1 = "the largest integer satisfying L^{−(k−k_1)}MR_j ≤ L" | definition |

Cross-scale content [P]:
- #26 compares scales k and k+1 for two numbers: ε_{k+1} ≤ (1 + β_0)ε_k ((2.8), n − m = 1) and exp(−δLM_2R_{k+1}) ≤ exp(−R_k). The second needs δLM_2R_{k+1} ≥ R_k. By (2.9) with m = k, n = k+1: R_k ≤ L(1 + g_{k+1}²β′)^{β_0}R_{k+1}. Since R_k/R_{k+1} is a power of L and L(1 + g²β′)^{β_0} < L² under (T1), R_k ≤ LR_{k+1}. So δM_2 ≥ 1 suffices: lower bound on M_2 (also covers §4 (3.7)(i), 2δM_2 ≥ 1). Class (b) from (2.9) + (L1): the side condition M_2 ≥ 1/δ.
- #27 (3.19): O(1)44d²B_3²(1 + β_0)(A_0/A_1)e^{−R_k} < 1: upper bound on γ via R_k, after A_0/A_1. Single-scale.
- #29 "any positive power of g_k": e^{−R_k} ≤ e^{−(log g_k^{−2})^r} ≤ g_k^{N} for r > 1 and g_k small depending on N [P: (log x)^r ≥ (N/2)log x for log x ≥ (N/2)^{1/(r−1)}]. Needs r > 1 [I: r is the (2.5) exponent; r > 1 not printed on these pages]. Upper bound on γ after N, r. Single-scale.
- #31 k_1: the defining condition is monotone in j only if L^{−(k−j)}R_j is nondecreasing in j, i.e. R_j ≤ LR_{j+1}. Shown above from (2.9). Class (b). (Balaban prints "MR_j" with k_1; the reading "R_{k_1}" is the consistent one [I].)
- #23, #24, #28, #30: fixed or single-scale. Out of A11 scope.

## §6 pp. 271–277 [V, page images]
| # | page, display | new constant | printed condition |
|---|---|---|---|
| 32 | p. 271 | k_1 split R_k′ = Σ_{j≤k_1}R^{(j)}, R_k″; auxiliary s, t ∈ [0, 1] | none |
| 33 | p. 273, (3.34)–(3.35) | contour radius R, line Re z = r, λ_0 (the contour is called γ: symbol clash with the coupling bound γ) | "R large enough", "r positive and small", "λ_0 > r, but small enough" |
| 34 | p. 275, (3.40) | h(t) = max{1 − L^{−1}\|t\|, 0} | definition |
| 35 | p. 275 | cubes of size 2ML^jη on Ω_j \ Ω_{j+1} | none |
| 36 | p. 276, (3.43) | (1 + β)α̃_0, (1 + β)α̃_1; \|A\| < C_1p_1(g_k) | none printed; p_1 from [I] |
| 37 | p. 277 | "powers of 1/2 in the conditions (2.36)–(2.39)"; domains shrink "exponentially decreasing in the number of steps" | none |

Cross-scale content [P]:
- #33 R, r, λ_0: spectral constants for C*Δ^{(k)}C. They need uniform-in-k spectral bounds of C*Δ^{(k)}C (from [12], [13]), not g-ratios. Out of A11 scope.
- #36 p_1(g_k): a scale-indexed number. Its form is from CMP 109 [I: the project writes δ′_j = g_jA_1p_1(g_j) (v4 §2.3, CMP 122) and lists p_1 among γ_*'s arguments (v4 §1.2); it is a power of log g^{−2} by the same pattern as p_0(g) = A_0(log g^{−2})^{p_0}]. Given that form, ratios follow from (2.7) with p = p_1. Class (b) [conditional on the form of p_1(g), not re-read here on a CMP 109 page].
- #36 (1 + β)α̃_i: the new terms live on spaces enlarged by the fixed factor (1 + β). The next step reads them at scale k+1 with α_{i,k+1}. Matching (1 + β)α_{i,k} to α_{i,k+1}-based spaces needs α_{i,k} ≤ (1 + β_0)²α_{i,k+1} (one-step (2.8) form for α). This is §2 #5. Class (b). Whether (1 + β)(1 + β_0)² fits inside Balaban's (1 − β(1 − 2^{−(j−n)})) budget is a single-step check that Balaban does not print [I: not a ratio of g's; out of A11 scope, but recorded].
- #37: the shrinking factor (1 − β(1 − 2^{−(j−n)})) is bounded below by 1 − β = 3/4 for all j − n. It compares one fixed-scale α_{0,n} at different steps j; no ratio of α_{0,n} to α_{0,j}. No g-inequality needed.

## §7 pp. 278–284 [V: pp. 278–280 page images; pp. 281–284 OCR text only, flagged]
| # | page, display | new constant | printed condition |
|---|---|---|---|
| 38 | p. 278, after (3.47) [V] | B_0 replaced by O(p_0³(g_k)) (the OCR reads "p_1"; the image reads p_0³) | "the multiplication by g_k yields small bounds" |
| 39 | p. 279 [V] | g_{k+1}^{−2}(·) by (2.24) with j = k+1 | = #4 |
| 40 | p. 280, (3.48) [V] | E_0 in \|E^{(j)}(X, z)\| ≤ E_0exp(−κ(L^jL^{−n})^{−1})exp(−½κd_j(X)) | from (I.1.18); none new |
| 41 | p. 281 [OCR] | β > 0 in O((L^jL^{−n})^{5−β}) ("irrelevant terms") | "β is a positive number" |
| 42 | p. 283, (3.67) [OCR] | same β; "(with 1 − β, β > 0, instead of β < 1)" | none |
| 43 | p. 284, (3.68) [OCR] | 11d²ε_n(L^jL^{−n})² + dM(n − j + 2)…, 3dM(1 + log L^jL^{−n})ε_n(L^jL^{−n})² | sketch of a second proof; not load-bearing (sweep item 8) |

Cross-scale content [P]:
- #38: g_kp_0³(g_k) = g_kA_0³(log g_k^{−2})^{3p_0} → 0; single-scale upper bound on γ (g_kO(p_0³(g_k)) ≤ B_0). Not a ratio.
- #40–#42: fixed constants. #43: mixes ε_n with scale j inside a sketch; it needs no g-ratio beyond (2.8).
- pp. 281–284 were read in OCR only. No display there introduces a new g-dependent number (the OCR shows E^{(j)}, Π^{(j)}, β_j, F_{κμ}, h_z). Residual risk: OCR may hide a symbol; it does not affect a load-bearing step (Theorem 2 proof, not Theorem 1's inductive bounds) [I].

## §8 Complete list and classification
"Similar inequality" = cross-scale ratio bound of (2.6)–(2.9) type for a number X_j = f(g_j). Classes: (a) printed later; (b) implied by a printed one; (c) supplied by a project file; (d) missing; (–) not scale-indexed, out of A11 scope.
| X_j | where | class | how |
|---|---|---|---|
| g_j, (log g_j^{−2})^p, ε_j, R_j | (2.4)–(2.9) | printed | §1; follows from (P-up), (P-low), (S) [I, v4 §1.2] plus (T1)–(T4) [P] |
| α_{0,j}, α_{1,j} | (2.28) p. 259 | (b) | §2 #5: (2.8) with (A_0, p_0) → (C_i, q_i) |
| g_j^{κ_0} | (2.31) p. 260 | (b) | §2 #6: factor (1 + β_0)^{κ_0} |
| Σ_{j≤n}g_j^{κ_0} vs g_n^{κ_0−6} | (2.46) p. 263 | (b)+(c) | §4 #16; sweep item 5 (v4 §2.3) |
| g_j(x) | (2.24) p. 259 | (b) | convex combination of u_{j−1}, u_j (§2 #4) |
| δ_k = (A_1/A_0)ε_k | p. 265 | (b) | constant multiple of ε_k |
| p_1(g_k) = (log g_k^{−2})^{p_1} | (3.43) p. 276 | (b) given the form | form from CMP 122 I (1.27) [I, HTHR_VERIFY Step 6]; then (2.7) with p = p_1 |
| e^{−R_k} vs e^{−δLM_2R_{k+1}} | p. 268 | (b) | R_k ≤ LR_{k+1} from (2.9) + δM_2 ≥ 1 |
| L^{−(k−j)}R_j monotone (k_1) | p. 270 | (b) | R_j ≤ LR_{j+1} from (2.9) |
| ε_{k+1} ≤ (1 + β_0)ε_k | (3.8), p. 268 | (a)/(b) | (2.8) at n − m = 1; sweep item 6 |
| (1 + β)α_{i,k} into step k+1 | (3.43) p. 276 | (b) | one-step α form of (2.8) |
| M_2, s*, C, B, B_0, B_1, B_3, β (= 1/4), β (exponents), E_0, E_1, E_±, R_1, δ, d, R, r, λ_0, σ_0, z, k_1-rule constants | various | (–) | fixed constants; no cross-scale inequality is meaningful |
No row of class (d) for the cross-scale reading.

Note: (2.7) is printed for "p a positive integer". (T2), (T3) hold for every real p > 0, so p ∈ {p_0, p_1, q_0, q_1, r, 3p_0, κ_0/2} needs no integrality [P].

## §9 Side conditions (threshold forms) that the list generates, and admissibility
No ratio bound is in class (d) (§8). The derivations in §1–§7 need the following threshold conditions. Some are not printed by Balaban, and two constants (M_2, A_1) are not in HIGHER_M1 §B2.2's order. Each is checked for admissibility: a lower bound on a parameter that is unbounded above, or an upper bound on γ (or on a later constant), placed in the order without a cycle.
| # | condition | printed? | type | order slot | status |
|---|---|---|---|---|---|
| S1 | (T1) γ²B′ ≤ (1 + β_0)² − 1 | implicit in (2.6) | upper bound on γ | after β_0, B′ (R) | in v4 §1.2 γ_* (c) |
| S2 | (T2) log γ^{−2} ≥ 2p, (T3) log γ^{−2} ≥ p/β_0, for p ∈ {p_0, p_1, q_0, q_1, r, κ_0/2} | no | upper bound on γ | after β_0, the exponents | new, admissible [P] |
| S3 | (T4) β_0 ≤ 1/2 | no | upper bound on β_0 | β_0 first | admissible; Balaban uses 1/7 [I, v4 §1.2] |
| S4 | M_2 ≥ 1/δ (covers 2δM_2 ≥ 1 in (3.7) and δLM_2R_{k+1} ≥ R_k on p. 268) | no | M_2 = L²M_1; S4 is the lower bound M_1 ≥ 1/(L²δ_[15]) | after δ (decay rate of [15], depends on d, L), before γ | new; up-set; no upper bound on M_2 found on pp. 257–280 [P]; not in HIGHER_M1 §B (which covers M) |
| S5 | A_1/A_0 ≤ 1/(80B_3) ((3.7)); A_1/A_0 small ((3.9)) | "A_1/A_0 sufficiently small" | lower bound on A_0: A_0 ≥ 80B_3A_1; up-set in A_0 | A_0 after A_1 and B_3; before γ | admissible; project reads A_0 ≫ A_1 [I, SOURCES_D3_VERIFY]; A_1 is not in HIGHER_M1 §B2.2's order line: insert "A_1 → A_0 → γ" (R1) |
| S6 | 30d²L²B_3²(1 + β_0)e^{−R_k} ≤ 1/20; O(1)44d²B_3²(1 + β_0)(A_0/A_1)e^{−R_k} < 1 | "γ sufficiently small" | upper bound on γ via R_k ≥ (log γ^{−2})^r | after A_1, B_3, β_0, r | admissible [P] |
| S7 | e^{−R_k} ≤ g_k^N ("any positive power of g_k", p. 269) | asserted | upper bound on γ; needs r > 1 | after r, N | admissible if r > 1; r > 1 not on the pages read [I] |
| S8 | C(β, κ_0)γ⁴ < 1 for (2.46); γ^{−2} ≥ 2D′ | "κ_0 ≥ 7 and g sufficiently small" | upper bound on γ | after β, D′, κ_0 | (S) of v4 §1.2 covers 2D′ (c_sw ≥ 2) [I] |
| S9 | g_kO(p_0³(g_k)) ≤ B_0 (p. 278) | "multiplication by g_k yields small bounds" | upper bound on γ | after A_0, p_0, B_0 | admissible [P] |
| S10 | 2(1 + β_0)L^{−2} + 4/10 < 1 ((3.8)) | implicit | condition on L | L odd > 11 | holds [P] |
| S11 | (1 + β_0)^{κ_0} is a fixed factor in the g^{κ_0} ratio | no | none (fixed number) | κ_0, β_0 before γ, either order | no cycle: no printed step needs it below 1 + β_0 [P, on pp. 257–280] |
Cycle check [P]: every new condition is an up-set in M_2 (that is, in M_1) or in A_0, or a down-set in γ. All arguments sit left of the constrained parameter in the order d, L → κ, κ_0, β (= 1/4), δ → … → κ_1 → walk, WC, level constants → M_1 → M_2 → M → α's → ε_1 → ρ_0 → exponents (p_0 → p_1 → q_0 → q_1) → A_1 → A_0 → C_0 → C_1 → γ → g (SOURCES_ORDER_CANON B, R1–R3), with β_0 and B′ (through R) fixed before γ (v4 §1.2). M_2 enters no condition on an earlier constant on the pages read. So no cycle.
Limit: β_0 enters S1–S3, S6, S11 only as a fixed number. Balaban's "β_0 can be chosen arbitrarily small, if g is sufficiently small" is consistent with this order (β_0 fixed, then γ); no step on pp. 257–284 needs β_0 → 0 [P, reading].

## §10 Conclusion
A11 CLOSED as a list, single reader, unverified. The "other constants, which will be introduced later" are the scale-indexed numbers α_{0,j}, α_{1,j} ((2.28), p. 259; Balaban names them with ε_j as "constants" on p. 262), g_j^{κ_0} ((2.31)), δ_k ((3.4) line, p. 265), p_1(g_k) ((3.43)), and g_j(x) ((2.24)). Each "similar inequality" follows from (2.6)–(2.9), i.e. from (P-up), (P-low), (S) of v4 §1.2 plus the side conditions S1–S11. None is missing. This also settles v4 §2.3 caveat (2) and §10 item 10's clause "does not name α_0/α_1": the later constants include α_{0,j}, α_{1,j}.
Residue (not blocking A11):
1. p_1(g) = (log g^{−2})^{p_1}, p_1 < p_0 is taken from CMP 122 I (1.27) [I]; CMP 119 (3.43) prints only "C_1p_1(g_k)".
2. pp. 281–284 read in OCR only (Theorem 2 proof; no Theorem 1 inductive bound there).
3. S7 needs r > 1 (exponent in (2.5)); not printed on pp. 255–284.
4. Two order entries to add to HIGHER_M1 §B2.2 / Group C: M_2 ≥ 1/δ (S4) and A_1 before A_0 (S5). Both admissible.
5. The restrictions "from the paper [I]" on κ, M, ε_j, α_{0,j}, α_{1,j} (p. 262) are CMP 109 conditions; the sweep found no cross-scale use in CMP 109 [I, v4 §2.3]; their threshold forms are outside this file.
Suggested TRUST_LEDGER edit (not made): A11 status "the later inequalities not located" → "located and covered: SOURCES_A11_CONST §8 (all class (b)); side conditions S1–S11 admissible; residue items 1–3".

## Ledger
[V] page images 300 dpi: CMP 119 pp. 255–280. [OCR] pp. 281–284.
[P] §1 (T1)–(T4); §2–§7 class (b) derivations; §8 table; §9 cycle check.
[I] v4 §1.2, §2.3 ((P-up), (P-low), (S), sweep items 5, 6); HIGHER_M1 §B2.2 order; p_1 form (CMP 122 I (1.27) via HTHR_VERIFY); A_0 ≫ A_1 (SOURCES_D3_VERIFY).
Firewall kept. No existing file edited. Status: complete 2026-10-28, unverified.

Corrections after verification (SOURCES_A11_CONST_VERIFY, 2026-10-28): list omissions p_0³(g_k) (p. 278), β_j(g_{j−1}) = β′_j (pp. 259, 282; no ratio bound needed), the multi-scale use of g_k^{−2}(·) − g_k^{−2} on p. 277 (needs (2.6) at general n − m); (2.6)×(2.7) gives (1 + β_0)², fixed by monotonicity of gℓ^q in g for ℓ > 2q (same fix for α_{i,j} and ε_{k+1} ≤ (1 + β_0)ε_k); u_j(x) = φ_ju_j + (1 − φ_j)u_{j−1} (φ swapped); order M_1 → M_2 → M (p. 245: M_2 = L²M_1, M ≫ M_2) — add M > M_2 to HIGHER_M1 §B; "r > 1" closed: p. 245 prints r ≥ 2; (3.7) halves need one strict; (2.46) keeps R_1, so R_1g^{κ_0−6} < 1 goes into S8; p. 283 sketch needs κ > 10 log L (outside A11). Inherited: p_1(g) form from CMP 122.

Order-canon fixes (SOURCES_ORDER_CANON Task C, 2026-10-28): C-11a §9 cycle-check order replaced by canon B (κ_1 → walk, WC, level constants → M_1 → M_2 → M → α's → ε_1 → ρ_0 → exponents → A_1 → A_0 → C_0 → C_1 → γ → g); C-11b S5 is a lower bound on A_0 (A_0 ≥ 80B_3A_1), A_0 after A_1 (R1); C-11c residue item 4 "A_1 before A_0"; C-11d S4 row M_2 = L²M_1, S4 = M_1 ≥ 1/(L²δ_[15]).
Order-canon amendment (2026-10-28): §1 order quote (old HIGHER_M1 §B2.2 form) replaced by the canon (SOURCES_ORDER_CANON B6, B25–B31).

## Addendum: CMP 122 I–II Sect. 1 items (from SOURCES_B10_SWEEP_VERIFY Part B, 2026-10-28)
Copied from SOURCES_B10_SWEEP_VERIFY §5–§7; nothing derived here. Rows 9–18 of B10 (i) are not repeated. Marks: "img" = confirmed on page image in VERIFY §6; "reader" = reader reading only, not re-checked on image. Side-condition numbers continue §9 (S12 onward). Classes as in §8; (P-up) and (P-low) windows are class (b).
| # | page | display | inequality as VERIFY states it | class | canon slot | status |
|---|---|---|---|---|---|---|
| X1 | II p. 363 | step after (1.31); "(100MR_{h+1})^{d−1} … ≤ g_k²L^{−(d−1)N}N^{(d−1)β_0}…R_k^{d−1}" | R_{h+1} ≤ cN^{β_0}R_k (upper side, row-17 type) | (b) (P-up), D-free | (P-up) window | [V per B10_SWEEP_VERIFY] img |
| X2 | II p. 364 | after (1.32) | 1/g″_k(·)² − 1/g_k² = O(1)(k − j) on Ω″_j \ Ω″_{j+1}; u_j − u_k ≤ B′(k − j) | (b) (P-up), no constant; covered by (c′) | (P-up) window | [V per B10_SWEEP_VERIFY] img |
| X3 | II p. 366 | top | 1/g″_k(·)² − 1/g_k² = O(N) ≤ O(R_k) (k − j ≤ N, plus N ≤ R_k) | (b) (P-up) | (P-up) window | [V per B10_SWEEP_VERIFY] reader |
| X4 | I p. 185 | (1.38), (1.42) | ε_{j+1} ≤ (1 + β_0)ε_j | (b) (P-up), one step | (P-up) window | [V per B10_SWEEP_VERIFY] reader |
| X5 | I p. 186 | (1.46) | δ′_j ≤ (1 + β_0)(1 + (j − i)^{1/2})(A_1/A_0)(p_1/p_0)ε_i, i ≤ j | (b) (P-up), D-free | (P-up) window | [V per B10_SWEEP_VERIFY] reader |
| X6 | I p. 192 | middle | L^{N_0−1} = R_{k−N_0+1} ≤ (L + 1)(N_0 + 1)^{β_0}R_k; L_0^{2N_0} < L(L + 1)N_0^{−1}R_k; N_0 = O(log g_k^{−2}) assumed | (b) (P-up) | (P-up) window; N_0 bound with X10 | [V per B10_SWEEP_VERIFY] reader |
| X7 | II pp. 384–385 | (1.80)–(1.81) | R_n ≤ cR_j for j < n ≤ j + K (K ≤ n_0 − j + R_j, N = R_j), to bound Σ_{n=j+1}^{j+K} M^dR_n^{d+1}… ≤ …R_j^{d+2}; d′_n(Z^{(n−j)}) ≤ L^{−(n−j)/2}d′_j(Z) | (b) (P-low), needs D′ slack (row-14/18 type) | (P-low) window | [V per B10_SWEEP_VERIFY] img |
| X8 | II p. 368 | (1.47) | Σ_j … (1/g_k² + O(k − j))ε_j ≤ … ε_kN^{1+β_0}(1 + h − j)^{1+β_0}: ε_j vs ε_k with (1 + h − j)^{1+β_0}N^{1+β_0} | (b) (P-low) | (P-low) window | [V per B10_SWEEP_VERIFY] reader, not re-checked |
| X9 | I p. 200 | after (1.98) | Σ L^{−(k−i)}R_i over i > k_0, giving exp(−4δ(m − k_0)M); uses L^{−(k−i)}R_i ≥ const for i > k_0 (from N_0 definition) | (b) (P-low) | (P-low) window | [V per B10_SWEEP_VERIFY] reader |
| X10 | I p. 179 | definition of N_0 | N_0 := least integer with L^{−N_0+1}MR_{k−N_0+1} = M; k_0 = k − N_0 | scale-indexed definition; existence needs R monotone-type behaviour | after (P-up)/(P-low) windows; before γ | [V per B10_SWEEP_VERIFY] reader |
| S12 | I p. 198 | after (1.94) | N ≤ O(1)(log g_k^{−2})^ν ≤ O(1)(1 + β_0)(log g_h^{−2})^ν, ν ≤ 2(p_0 − p_1 − 1) (written ½ν ≤ p_0 − p_1 − 1) | (–) exponent condition, upper bound on ν_I | exponents: p_0 → p_1 → ν_I, before γ | [V per B10_SWEEP_VERIFY] img |
| S13 | II p. 363 | after (1.31) | L^{−N} ≤ (log g_k^{−2})^{−ν}, i.e. N ≥ (ν/log L) log log g_k^{−2}, with ν ≥ 2p_0 + dr_0 | (–) exponent condition, lower bound on ν_II | exponents: p_0, r_0 → ν_II, before γ | [V per B10_SWEEP_VERIFY] img |
| S14 | II p. 361 / p. 384 | after (1.20) / (1.80) | N ≤ R_k (N = number of scales in the transition, h = k − N + 1); p. 384 sets N = R_j; used on p. 382 to turn N^{β_0} into R_j^{β_0} | (–) scale-indexed N rule, single-scale threshold | before γ; compatible with S13 if R_k ≥ (ν/log L) log log g_k^{−2} (VERIFY §4 N3) | [V per B10_SWEEP_VERIFY] reader (p. 361), img (p. 384) |
| S15 | II p. 383 | condition | 2p_1 − (d + 5)r_0 > p_0 (fixed exponents; r_0 = exponent of R_j) | (–) exponent condition | exponents: r_0, p_0, p_1, before γ | [V per B10_SWEEP_VERIFY] reader |
| S16 | II p. 380 | log g_j^{−2}|Z_j| ≤ R_j(…) | log g_j^{−2} ≤ R_j (single scale) | (–) single-scale γ-small threshold | γ | [V per B10_SWEEP_VERIFY] reader |
Also in VERIFY Part B, not new rows: I p. 188 after (1.58) e^{−R_j} smaller than any positive power of g_j = S7 (r > 1; closed by r ≥ 2, §Corrections). I p. 183 after (1.27): δ′_j = g_jA_1p_1(g_j), p_1(g_j) = (log g_j^{−2})^{p_1}, p_1 < p_0 [V per B10_SWEEP_VERIFY] img; this closes residue item 1 of §10 (page is 183, not "(1.27)"). I p. 177 (R_{k+1} vs R_k, cube sizes), I pp. 181–182 (1.22)–(1.24) (χ thresholds, ε_i over i ≤ j), II p. 358 (α_{0,k}, α_{1,k} for ε_k), II p. 376 (geometric d_j vs d_k) are listed in VERIFY §4–§5 without a classified inequality. Exponent order per VERIFY §7: p_0, p_1, r_0 → ν's → γ; no cycle seen. VERIFY correction: Theorem 1 and the "Theorem 2 of [I] … not published yet" remark are on II p. 355, not p. 359.
Count: 10 cross-scale rows (X1–X10) + 5 threshold/exponent rows (S12–S16; N-rule counted as one) added to the §8–§9 list; no class (d) item.

Addendum (2026-10-28, from lean/YmLean/ScaleChain.lean): the chain (2.6)–(2.9), (T1)–(T4), and the (2.46) sum are certified in Lean (ScaleChain.lean, standard axioms). Lean exposed one unprinted side condition for (2.9) line 2: γ²β′ ≤ 1/L (added to the canon at B30), the R_j hypotheses 1 + β_0 < L, and an endpoint continuity step for the gℓ^q monotonicity at g = e^{−p_0}. The (2.46) constant via telescoping is 2^{⌊κ_0/2⌋}(1 + 1/β).
