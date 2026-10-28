# SOURCES_A11_CONST_VERIFY — independent check of SOURCES_A11_CONST.md
Started 2026-10-28. One section per tool call.

## §1 Inputs read
Author file SOURCES_A11_CONST.md read in full (§0–§10). Claims to test: list completeness, class-(b) derivations, S1–S11, r > 1.

## §2 Context
TRUST_LEDGER A11 row (l. 35), v4 §1.2 (P-up, P-low, S; γ_* args), §10 item 10, HIGHER_M1 §B1–§B3 (order line B2.2) read. HIGHER_M1 §B has no M_2 and no A_1 entry: confirmed.

## §3 pp. 255–256 images [V]
(2.4)–(2.9) match the author's transcription. p. 256 also has |∂V_{j−1} − 1| < O(L²)ε_{j−1} (uses ε, no new constant). (2.5): R_j = smallest number of the form L^r with R_j ≥ (log g_j^{−2})^r; the same letter r appears as the exponent of L and of log (print ambiguity; the L-exponent must be an integer variable). No r > 1 on these pages.

## §4 pp. 257–258 images [V]
p. 257: M_2 (LM_2R_k-cubes), s* ((2.16)), ε_kη² in (2.17). LM_2R_k uses R_k: the cube size is scale-indexed through R_k, no new f(g_j). p. 258: E_k in (2.23) (vacuum energy, not f(g_j) alone). No omission on these pages.

## §5 pp. 259–260 images [V]
New scale-indexed items: g_j²(x) (2.24); β_j(g_{j−1}) in (2.24), (2.25); α_{0,j}, α_{1,j} (2.28), "q_0, q_1 integers greater than 1, C_0, C_1 sufficiently large"; g_j^{κ_0} (2.31). (2.29), (2.32), (2.33) use the letter r for Euclidean transformations (symbol clash with the (2.5) exponent r).
Omission check: β_j(g_{j−1}) is a scale-indexed number defined from g and is not in the author's list. It needs no ratio bound: Balaban uses it only through (2.24)/(2.25), and its uniform bounds are (P-up)/(P-low) themselves (u_{j−1} − u_j = β_j). Minor omission, not a gap.
Correction to author §2 #4. (2.24) gives u_j(x) = u_{j−1}(x) − β_jφ_j(x) (recursive in x). With u_{j−1}(x) = u_{j−1} and u_{j−1} = u_j + β_j: u_j(x) = φ_j u_j + (1 − φ_j)u_{j−1}. The author wrote u_j + β_jφ_j = (1 − φ_j)u_j + φ_ju_{j−1}: φ and 1 − φ swapped; it contradicts "g_j²(x) = g_j² on the last domain" (φ_j = 1 there). Also the recursion gives u_k(x) = u_0 − Σ_j β_jφ_j(x); this is a convex combination of two neighbours only where at most one φ_j is fractional at x. That needs disjoint transition layers (p. 256: boundaries ≥ 2MR_j apart) [P, reading]. Otherwise u_k(x) is within Σ|β_j| over the fractional j of the neighbouring u's. Conclusion (class (b)) stands; the formula needs the fix.
## §6 pp. 261–262 images [V]
p. 261: (2.34)–(2.39) use α_{0,n}, α_{1,n} at the field's own scale n ≤ j, times (1 − β(1 − 2^{−(j−n)})); β = 1/4; B absolute; C; (2.42) B_0. No new f(g_j). Author's #8–#11 match.
p. 262: E_k, E_1; (1 + 4β)κ; Theorem 1 text; remark "restrictions on constants, e.g. on constants κ, M, ε_j, α_{0,j}, α_{1,j}, come from the paper [I]" — quote matches the author. Balaban does call ε_j, α_{0,j}, α_{1,j} "constants": supports claim (1).
## §7 pp. 263–264 images [V]
p. 263: E_1, exponent β < 1 (2.43); R_1 absolute, "= 1 for g_j sufficiently small" (2.44); (2.46) Σ_{j=1}^n g_j^{κ_0} < g_n^{κ_0−6} "for κ_0 ≥ 7 and g sufficiently small". Note (2.46) has R_1 dropped in the last step (R_1Σ|Γ_n|g_n^{κ_0−6} < Σ|Γ_n|): needs R_1g_n^{κ_0−6} < 1, an upper bound on γ; covered by S8-type smallness.
p. 264: B_1 (2.47)–(2.48); E_−, E_+ "depending on g_k" (2.50): scale-indexed in the author's sense but used in one corollary at one scale; author lists them as (–). Acceptable; no cross-scale use. |V_{k+1}(∂p′) − 1| < 2L²ε_k: uses ε_k for a scale-(k+1) field; ε only.
## §8 pp. 265–266 images [V], and rederivations [P]
p. 265: L²M_2R_{k+1}-cubes; δ_k printed "g_kA_1/A_0p_0(g_k)"; p. 266 (3.7) step 4B_3δ_k → 4B_3(A_1/A_0)ε_k and (3.9) O(1)δ_k = O(1)(A_1/A_0)ε_k. So δ_k = (A_1/A_0)ε_k: CONFIRMED. A_1 is new; B_3, δ, d new fixed constants.
(3.7) side conditions: e^{−2δM_2R_k} ≤ e^{−R_k} needs 2δM_2 ≥ 1; 4B_3A_1/A_0 + 30d²L²B_3²(1 + β_0)e^{−R_k} < 1/10. Author's split (each ≤ 1/20) gives only ≤ 1/10; take one strict. Nitpick.
(3.8): needs ε_{k+1} ≤ (1 + β_0)ε_k, (1 + 0.2ε_kη) ≤ 2, (1 + 0.4ε_k) ≤ 2, and 2(1 + β_0)L^{−2} + 0.4 < 1. True for L > 11. Agree.
Rederivation 1, δ_k: δ_n/δ_m = ε_n/ε_m (A_1/A_0 cancels). So (2.8) holds verbatim for δ. CONFIRMED.
Rederivation 2, α_{0,j} = C_0 g ℓ^{q_0}, ℓ = log g^{−2}. Line 2: α_m/α_n = (g_m/g_n)(ℓ_m/ℓ_n)^{q_0} ≤ (1 + β_0)·(1 + β_0)(n−m)^{β_0} by (2.6) line 2 and (2.7) line 2 with p = q_0. Matches (2.8) line 2. Line 1: the naive product of (2.6) line 1 and (2.7) line 1 gives (1 + β_0)²(n−m)^{1/2}, NOT the printed (1 + β_0)(n−m)^{1/2}. The author's "(2.8) multiplies (2.6) and (2.7)" therefore does not give (2.8) line 1 as printed (same issue for ε). Fix [P]: f(g) = gℓ^q is increasing in g when ℓ > 2q (d/du of u^{−1/2}(log u)^q ∝ −½log u + q < 0). Case g_n ≤ g_m: α_n ≤ α_m. Case g_n > g_m: ℓ_n < ℓ_m, so α_n/α_m ≤ g_n/g_m ≤ (1 + β_0)(n−m)^{1/2}. Hence α_{0,n} ≤ (1 + β_0)(n−m)^{1/2}α_{0,m} under γ² ≤ e^{−2q_0}, which is the author's (T2) threshold. Same argument gives the printed (2.8) line 1 for ε (γ² ≤ e^{−2p_0}). The class-(b) conclusion holds; the derivation route needs this monotonicity step. Also the factor (1 + β_0)² is harmless (β_0 can be renamed), so this is a correction of the proof, not of the result.
(T2), (T3) rechecked: ℓ_n ≤ ℓ_m + 2log(1 + β_0) ⇒ (ℓ_n/ℓ_m)^p ≤ (1 + β_0)^{2p/ℓ_m} ≤ 1 + β_0 iff ℓ_m ≥ 2p; ℓ_m ≤ ℓ_n + log(1 + X) ⇒ (ℓ_m/ℓ_n)^p ≤ (1 + X)^{p/ℓ_n} ≤ (1 + X)^{β_0} iff ℓ_n ≥ p/β_0. CONFIRMED; real p > 0 suffices (no integrality).
Rederivation 3, R_k ≤ LR_{k+1}: (2.9) line 2 at m = k, n = k+1: R_k ≤ L(1 + g_{k+1}²β′)^{β_0}R_{k+1}. R's are integer powers of L, so R_k/R_{k+1} = L^s, s ∈ ℤ, and L^s ≤ L(1 + β_0)^{2β_0} < L² ⇒ s ≤ 1. CONFIRMED, given the reading of (2.5) "of the form L^r" as an integer power of L (the printed exponent letter clashes with the r of (log g^{−2})^r).
