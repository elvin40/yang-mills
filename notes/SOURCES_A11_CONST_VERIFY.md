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
## §9 pp. 267–268 images [V]
p. 267: (3.12)–(3.14) factors 2B_3L²(1 + β_0), (4dL)²(1 + β_0)B_3; log g_kd(g)|B(Γ_{k+1})*|, σ_0, z(L⁴ − 1), z^{(k)}, P^{(k)}(g_k, …). d(g) depends on the coupling sequence; it enters one step only (from [I]); the author lists it as (–). No cross-scale ratio is taken. Agree.
p. 268: (3.15) contains 1/g_k²(·) − 1/g_k² (the (2.24) function; covered). (3.16) δ_k reused. After (3.17): "B_3exp(−δLM_2R_{k+1})44d²B_3ε_{k+1} ≤ 44d²B_3²(1 + β_0)exp(−R_k)ε_k": needs ε_{k+1} ≤ (1 + β_0)ε_k and δLM_2R_{k+1} ≥ R_k. With R_k ≤ LR_{k+1} (§8 rederivation 3), δM_2 ≥ 1 suffices. S4 CONFIRMED as a needed, unprinted lower bound on M_2. (3.19): O(1)44d²B_3²(1 + β_0)(A_0/A_1)e^{−R_k} < 1: upper bound on γ after A_0/A_1 (S6). Agree.
## §10 pp. 269–270 images [V]
p. 269: (3.19) "for g_k, or γ sufficiently small"; 100LMR_{k+1} rule; H^{(k)} "bounded on S_{k+1} by O(1)ε_kexp(−R_k), hence by any positive power of g_k". Check [P]: g^N = e^{−Nℓ/2}, e^{−R_k} ≤ e^{−ℓ^r}. If r > 1, ℓ^r ≥ Nℓ/2 for ℓ ≥ (N/2)^{1/(r−1)}: any power. If r = 1, ε_ke^{−R_k} ≤ A_0ℓ^{p_0}g³: only about g³, not any power. So the sentence needs r > 1 (or N ≤ 3 − 0). Author's S7 CONFIRMED.
p. 270: E_0^{(k)} (3.25); z^{(k)}; k_1 "largest integer satisfying L^{−(k−k_1)}MR_j ≤ L" with "j ≤ k_1" — printed with R_j, as the author says. Monotonicity: {j : L^{−(k−j)}MR_j ≤ L} is an initial segment iff L^{−(k−j)}R_j is nondecreasing iff R_j ≤ LR_{j+1}: the same one-step fact as §8 rederivation 3. CONFIRMED.
## §11 r and M_2 in Sect. 1 (CMP 119 p. 245, image [V])
p. 245: "The first is a partition into cubes of the size MR_0, where R_0 is the smallest power of L such that R_0 ≥ (log g_0^{−2})^r, r ≥ 2, and M = L^m is sufficiently large. The second is a partition into cubes of the size LM_2R_0, where M_2 = L^{m_2}, and M_1 < M_2 < M. … We fix M_2 not too much larger that M_1, e.g., we can take M_2 = L²M_1, and M will be chosen much larger than M_2."
Consequences:
(a) r ≥ 2 IS printed in CMP 119 (p. 245). Author residue 3 ("r > 1 not printed on pp. 255–284") is closed: S7 holds. The author did not read p. 245.
(b) "smallest power of L" confirms the integer-power reading of (2.5) used in R_k ≤ LR_{k+1} and k_1 monotonicity.
(c) M_2 has a printed upper bound M_2 < M and a printed order: M_1 < M_2, M_2 fixed before M, M ≫ M_2. The author's order line "M_1 → M → M_2" and "no upper bound on M_2 found on pp. 257–280" are therefore incomplete. Correct slot: … → M_1 → M_2 → M. S4 (M_2 ≥ 1/δ) is still admissible: δ (decay rate of (190) [15]) is fixed before M_1, S4 is an up-set in M_2, and M_2 < M is an up-set in M (M chosen later). Balaban's example M_2 = L²M_1 satisfies S4 only if L²M_1 ≥ 1/δ; otherwise raise m_2. Add to HIGHER_M1 §B1 also "M > M_2" (printed, p. 245) as a lower bound on M.
## §12 p. 278 image [V]
"The terms of the sum above satisfy the bounds (2.42), with the constant B_0 replaced by O(p_0³(g_k)) … the multiplication by g_k yields small bounds." Image reads p_0³ (superscript 3, subscript 0). Author's OCR-slip note (§3 said p_1; §7 corrects to p_0³) CONFIRMED. p_0³(g_k) = A_0³ℓ_k^{3p_0} is a new scale-indexed number; the author has it (§7 #38) but omitted it from the claim-(2) list. It needs no cross-scale ratio (single-step bound g_kO(p_0³(g_k)) small, S9); if a ratio were needed, (2.7) with p = 3p_0 gives it. Minor list omission.
## §13 pp. 281–282 images [V] (author read OCR only)
p. 281: E^{(s)}, E^{(a)}, λ(x), F_{κμ}, Π^{(j)}_{μν,κλ}; "irrelevant terms" O((L^jL^{−n})^{5−β})exp(−κd_j(X)), "β is a positive number". p. 282: (3.58)–(3.60) r = Euclidean transformation / rotation matrix (third use of the letter r; none is the (2.5) exponent); (3.61) β′_j = Π^{(j)}_{22,11}, "a possible definition of the β-function", shown equal to (I.1.22).
β′_j is a scale-indexed number (the j-th β-function coefficient). The author's §7 names only "β_j" from OCR. It is the same object as β_j in (2.24); Balaban here only identifies it; no cross-scale ratio is formed. Its cross-scale content is (P-up)/(P-low) of v4 §1.2 (outside A11). Not an omission that needs a "similar inequality". Agree with author's OCR summary for these pages.
## §14 pp. 283–284 images [V]
p. 283: (3.64) β′_j = β_j; h_z, h(t); (3.67) O((L^jL^{−n})^{5−β}), β > 0; R^{(j)} terms bounded by O(1)(L^jL^{−n})⁴g_j^{κ_0}exp(−κd_j(X)) (g_j^{κ_0} again, covered). Second proof: 2E_0exp(−½κ(n−j)) and "exp(−½κ(n−j)) < (L^jL^{−n})⁵" needs κ > 10 log L: a lower bound on κ after L. Not scale-indexed, outside A11; admissible (κ is fixed after L). Not in the author's tables; sketch only.
p. 284: (3.68) 11d²ε_n(L^jL^{−n})² + dM(n − j + 2)ε_n(…)² < 3dM(1 + log L^jL^{−n})ε_n(…)²: as printed the log is negative for n > j; read as log L^{n−j}. Sketch, not load-bearing; uses only ε_n. No new f(g_j) on pp. 281–284 beyond β′_j = β_j. Author's OCR conclusion holds.
## §15 pp. 271–273 images [V]
p. 271: R′_k = Σ_{j≤k_1}R^{(j)}, R″_k; s, t; 1/g_k²(·) − 1/g_k² again. p. 272: P^{(k)}(g_k, …), tg_k (interpolation), E_0^{(k)}. p. 273: contour γ, R large, "Re z = r, r positive and small", λ_0 > r small. This r (spectral contour) is a fourth use of the letter, with r small; it is not the (2.5) exponent. No new f(g_j) that enters a cross-scale ratio. Agree with author §6 #32–#33.
## §16 pp. 274–277 images [V]
p. 274: λ_0, E_0^{(k+1)}, (3.39) r = Euclidean transformation again. p. 275: h_z, h(t) (3.40)–(3.42); cubes 2ML^jη. p. 276: (3.43) Ũ^c_{k+1}(Y, (1 + β)α̃_0, (1 + β)α̃_1) × {A : |A| < C_1p_1(g_k)}: author's quote CONFIRMED (C_1 here clashes with C_1 of (2.28)). p. 277: "additional factor O(ε_k)"; "supp(g_k^{−2}(·) − g_k^{−2}) ⊂ Z_k … the large values of the function g_k^{−2}(·) − g_k^{−2} are suppressed by the exponential decay of H_k".
Correction to author §2 #4 / §8 row g_j(x). p. 277 shows the use of g_k(x) is multi-scale: at x in an old layer Ω_j \ Ω_{j+1}, u_k(x) ≈ u_j, so g_k^{−2}(x) − g_k^{−2} ≈ u_j − u_k with k − j unbounded ("large values"). The author's derivation uses only the one-step case n − m = 1 of (2.6). The needed bound is the general-(n − m) form: (2.6) line 1 squared is u_m ≤ u_n + β′(n − m) (linear growth, printed), plus (P-low) for the other sign; the linear growth is then beaten by the exponential decay of H_k. So the row is still class (b), but via (2.6) at general n − m, not one step. The author's list omits this specific use.
No other new f(g_j) on pp. 271–277.
## §17 pp. 279–280 images [V]; S1–S11 audit; grades
p. 279: β_{k+1}(g_k)A(φ_{k+1}, U_{k+1}); g_{k+1}^{−2}(·) by (2.24); −E_k + E^{(k)} = −E_{k+1}. p. 280: (3.48) E_0; exp(−κ(L^jL^{−n})^{−1}) ≤ O(1)(L^jL^{−n})⁵ (O(1) depends on κ, L). No new f(g_j).
S1 γ²B′ ≤ (1 + β_0)² − 1: upper bound on γ. Admissible.
S2 ℓ ≥ 2p, ℓ ≥ p/β_0: upper bounds on γ. Admissible. Add p = 3p_0 (p. 278) to the list. ℓ ≥ 2p also gives the monotonicity used in §8.
S3 β_0 ≤ 1/2: upper bound on β_0, which Balaban lets be "arbitrarily small" and which is fixed first. Admissible.
S4 M_2 ≥ 1/δ: lower bound on M_2. M_2 has a printed upper bound M_2 < M (p. 245), but M is chosen after M_2 and is unbounded above. Admissible; order slot must be M_1 → M_2 → M (author had M → M_2).
S5 A_1/A_0 ≤ 1/(80B_3): down-set in A_1 (or up-set in A_0). B_3 fixed early. Admissible.
S6 e^{−R_k}-smallness: upper bounds on γ via R_k ≥ ℓ^r. Admissible.
S7 needs r > 1: r ≥ 2 printed (p. 245). Admissible and now closed.
S8 C(β, κ_0)R_1γ⁴ < 1 (include R_1, p. 263) and γ^{−2} ≥ 2D′: upper bounds on γ. Admissible. Author's (2.46) re-proof rechecked: correct.
S9 g_kO(p_0³(g_k)) small: upper bound on γ. Admissible.
S10 2(1 + β_0)L^{−2} + 0.4 < 1: holds for L > 11. Admissible.
S11 (1 + β_0)^{κ_0}: fixed number; g_m^{κ_0} ≤ (1 + β_0)^{κ_0}g_n^{κ_0} rechecked from (2.6). No condition. Admissible.
Extra (not in author's table, outside A11): κ > 10 log L (p. 283 sketch), M > M_2 (p. 245). Both up-sets after their arguments.
Acyclicity: with the corrected order d, L → κ, κ_0, β, δ, B_3 → walk constants → M_1 → M_2 → M → α's → ε_1 → ρ_0 → A_0, p_0 → A_1, p_1 → γ → g (β_0, B′ before γ), every condition bounds a later parameter by earlier ones. No cycle. CONFIRMED after the M_2 slot fix.
Grades:
(1) CONFIRMED. p. 262 calls ε_j, α_{0,j}, α_{1,j} "constants"; the reading of p. 256 is an inference, but the only consistent one.
(2) CORRECTED. Class (b) conclusion holds, but: (i) the list omits p_0³(g_k) (p. 278; in author's §7 but not in §8/§10), β_j(g_{j−1}) = β′_j (pp. 259, 282; no ratio needed), and the multi-scale use of g_k^{−2}(·) − g_k^{−2} on p. 277 (needs (2.6) at general n − m, not one step); (ii) "(2.8) multiplies (2.6) and (2.7)" gives (1 + β_0)² in line 1, not the printed (1 + β_0); a monotonicity step (gℓ^q increasing for ℓ > 2q) is needed, same for α and for ε_{k+1} ≤ (1 + β_0)ε_k; (iii) the g_j(x) convex-combination formula has φ and 1 − φ swapped. R_k ≤ LR_{k+1} and k_1 monotonicity rederived: CONFIRMED.
(3) CORRECTED. All S1–S11 admissible and acyclic, but M_2's slot is M_1 → M_2 → M (p. 245 prints M_1 < M_2 < M, M ≫ M_2), not after M. The two HIGHER_M1 §B additions stand (M_2 ≥ 1/δ; A_1/A_0 ≤ 1/(80B_3)); add also M > M_2. S7 residue closed by r ≥ 2 (p. 245). Strictness nit in (3.7) split.
(4) CONFIRMED. Integrality not needed; (1 + β_0)^{κ_0} factor correct; p. 278 reads p_0³ on the image.
A11: CLOSED as a list, now with a second reader, with the corrections above. Remaining [I] item: the form p_1(g) = (log g^{−2})^{p_1} (CMP 122), not on a CMP 119 page.
Cleanup: /tmp/a11v deleted after this section.
