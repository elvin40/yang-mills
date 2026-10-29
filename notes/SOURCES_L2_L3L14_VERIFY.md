IDs follow IDS.md (new scheme). Map: Theorem IV = L-196; IV L2 = L-319; IV L3 (FX-V) = L-320 / H-106; IV L6 = L-323; IV L14 (Loc-f) = L-331 / H-142; Target 2 torus form = K-032 (Vol), K-019 (ℓ even). File-local labels ((U_ℓ), (U_ℓ^poly), Lemma ADM, (FI_f), (FI_LF), F1–F9) are those of SOURCES_L2_L3L14.md, not global ids.
# SOURCES_L2_L3L14_VERIFY — adversarial verification of SOURCES_L2_L3L14.md, and the (U_ℓ) page search

Date: 2026-10-28 (Opus 5.5). Type: verification. Edits: this file only. No existing file edited, PLAN.md not touched, sync.sh not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not opened and excluded from every grep.
Method: every Balaban page cited below was rendered at 150 dpi into a fresh folder (/tmp/l2v_LUGV), read as an image, and the folder was deleted after use. Text files in balaban/ were used only to locate pages. PDF page = journal page − 354 (CMP 122 II), − 174 (CMP 122 I), − 242 (CMP 119), − 248 (CMP 109), − 0 (CMP 116), − 388 (CMP 99 propagators), − 74 (CMP 99 regular), − 276 (CMP 102 variational), − 254 (CMP 102 UV); every offset was checked on the rendered header.
Grades: CONFIRMED / CORRECTED / UNSUPPORTED. Tags [V] (page image read this session), [P] (checked by argument here), [I] (reading, not printed).

## 0. Verdict

CONFIRMED WITH CORRECTIONS. The two reductions stand: L-320 (FX-V) is proved relative to Target 2 on the admissible tori, the Kotecký–Preiss theorem, and (U_ℓ); L-331 (Loc-f) is proved relative to construction readings, with the Step-A part a P-sketch. Five corrections apply.
1. Step 2 cites the wrong sentence. On CMP 122 II p. 383, "The supremum is taken over all admissible domains" is a supremum over large-field geometries, not over the field V. The pointwise-in-V statement is still true. Its printed support is (1.73)–(1.75) on p. 380, which hold for each (U, J), and the right side of (1.79), which has no U.
2. Lemma ADM is too wide. Balaban's torus has side 2L^m only (CMP 109 p. 251: "We take L_μ = L^m"). K-032 already uses ℓ = 2L^{m_T}. So 𝓛(g) must be {2L^m : 2L^m ≥ ℓ_0(g)}. With this set, the gap condition of (U_ℓ^poly) is proved (ratio L), and the power-of-L divisibility holds by construction.
3. (U_ℓ) is not "unprinted". Balaban prints torus independence for the derived constants E_1, R_1, E_± and for the base constants β, γ_0, q_0, q_1, B_3, B_5, δ_0, B_0, B_1, B_2, the R-formula and p_0 (§2). The residue is narrower than the file says: κ_0 (so κ), M(κ), ε_0, ε_1, α_0, α_1, A_0, A_1, C_0, C_1, the function p_1, and every S1 constant 𝔖. E_0 is covered only through the word "absolute". So (U_ℓ) is NOT [V]. It is [V-partial].
4. (U_ℓ^poly) is a valid implication, but its κ budget must be re-split, and the OS0 exponent 1 + 2η + p is UNSUPPORTED as an exact value. Balaban's γ "depends on all other constants" (CMP 109 p. 264). So a fixed γ with E_0(ℓ) → ∞ has no printed source. No known route proves (U_ℓ^poly) without (U_ℓ).
5. The §0 grep claim "one hit only" is false. SOURCES_D3 l. 24 and l. 55 also match. The l. 55 hit is the global sourced (0.1) bound with E_±|T_η|. It enters no per-polymer constant. Theorem D3 states its constants are "independent of k, K, f", not of ℓ. This is the 𝔖 part of the residue.

## 1. Part 1 — the file's §6.3 checklist, row by row

| item | file grade | verdict | evidence |
|---|---|---|---|
| F1 | [V] | CONFIRMED | CMP 122 II p. 355 image: Theorem 1 text matches; no quantifier on T_η. |
| F2 | [V] | CORRECTED | Quote matches (p. 356 l. 1: "with the constants E_−, E_+ independent of k, T_η, U_k"). The gloss "Volume independence is printed for E_± only" is false: see §2 (CMP 119 p. 263 E_1 "independent of … T", R_1 "absolute"; CMP 119 p. 264 E_± "independent of η and T"; CMP 102 p. 303 B_3 "depends on d and L only"; others). |
| F3 | [V] | CONFIRMED | CMP 122 I p. 176 image: (0.3)–(0.6) and "X ∩ Z″^c ≠ ∅" match. |
| F4 | [V] | CONFIRMED | CMP 122 I p. 177 image: denominators "localized in neighborhoods of the domains Z′ … determined by small field effective actions only"; "(i) it is contained in a cube of the size 100MR_k"; "in some steps the number R_k decreases by the factor L^{−1}"; (1.1) matches. |
| F5 | [V] | CORRECTED | Quotes of (1.77)–(1.79) match the p. 383 image. The use is wrong: "The supremum is taken over all admissible domains, satisfying all the conditions described in the previous sections, in particular the conditions (1.76)" is a supremum over domain sequences, not over V. See row §3.3. The claim "every volume in F5 is a large-field volume inside X" is CONFIRMED (p. 383: "|Z_j ∩ Ω_j|, where the volume is for the corresponding scale"; p. 380: every large-field domain Z_j contributes "O(1) log g_j^{−2}|Z_j|"). |
| F6 | [V] | CONFIRMED | CMP 122 II p. 390 image: (1.98)–(1.101), "depends on the background field U_k restricted to X", Ũ_k^c(X, α̃_0, α̃_1), (1.99), (1.100), "Euclidean covariant" all match. "(7.13) [I]" is Balaban's own reference to paper I, not a project grade. |
| F7 | [V] | CONFIRMED | CMP 119 p. 259 image: (2.24)–(2.28), properties (i)–(iv), α_{0,j} = g_jC_0(log g_j^{−2})^{q_0} match. |
| F8 | [V] | CONFIRMED | CMP 119 p. 278 image: "The important remark is that the terms E_0^{(k+1)}(Λ_{k+1}, X, z) … for X ⊂ Λ_{k+1}, do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice, i.e. in the framework of [I]." |
| F9 | [V] | CONFIRMED | CMP 119 p. 280 image: (3.48) and "an admissible error" match. |
| §2.1 no rescaling, E10 not applicable | [P] | CONFIRMED | E10 / C-48(ii) (FABLE_HARD_VERIFY l. 80, l. 196) concerns Theorem FD, which runs K + k(ℓ) steps. L-320 and L-331 run K steps; the unit scale is fixed. No constant is read in rescaled units. |
| Lemma ADM | [P given (c′); I] | CORRECTED | (1) Balaban's torus is the cube −L_μ ≤ x_μ ≤ L_μ with "L_μ = L^m" (CMP 109 p. 251 [V]); K-032 prescribes ℓ = 2L^{m_T}. The file's 𝓛(g) ⊂ 2L^{n_0}N contains sides (e.g. 2L^{n_0}·3) on which Balaban's Theorem 1 is not printed. Replace by 𝓛(g) := {2L^m : m ∈ N, 2L^m ≥ ℓ_0(g)}. Then every cube side (a power of L, at most c_*) divides ℓ when L^m ≥ c_*, and the n_0 device is not needed. (2) The proof of K-freeness is CONFIRMED: c_kλ_k ≤ CMC_R(log(g^{−2} + B′n))^{p_R}L^{−n} is bounded in n. (3) The condition ℓ ≥ 4D + 12c_* of §5 depends on the observable, so it is correctly kept out of ℓ_0(g). (4) Condition (d) "200MR_K" stays [I]: Balaban states no torus-size condition; the 100MR_k cube is a choice of the class of components renormalized (p. 177), and liftability is needed for L-331, not for Balaban. |
| §3.2 Step 1 | [P given R-043 A, R-035] | CONFIRMED, one wording fix | "This vanishes at f = 0, so it changes no difference in Δ" is wrong as written: a_K(p; f) − a_K(p; 0) = a_K(p; f), which does contribute to Δ. The intended statement is that no subtraction term arises. The bound 2C_Br is CONFIRMED (|A_p| ≤ 2). |
| §3.3 Step 2 | [V F5 + P] | CORRECTED | The conclusion (Step A's activity bound holds for every fixed V ∈ supp χ_K) is CONFIRMED. The support is CMP 122 II p. 380 (1.73)–(1.75) [V], which hold for each (U, J) with "sup|σ|" over integration variables only, and the right side of (1.79) [V], which contains no background field. The p. 383 sentence about "all admissible domains" supports uniformity over large-field geometries, a different statement. The ledger text of §6.2 must cite (1.73)–(1.75) and (1.79), not the "supremum" sentence. |
| §3.4 Step 3 | [P] | CONFIRMED | Injective tree lift, A15_BDRY §3.4(ii) as corrected by A15_BDRY_VERIFY (c). |
| §3.5 Step 4 | [P given files] | CORRECTED (grep claim only) | The formula list is CONFIRMED: no listed constant contains ℓ. The repeated grep (same pattern, same files) gives three hits, not one: SOURCES_D3 l. 24, l. 55 and SOURCES_FX l. 50. D3 l. 55 is the sourced (0.1), "χ exp(−A − E_−|T_η|) ≤ e^{W_k[f]}ρ_k^f ≤ exp(E_+|T_η|)", a global bound with T-free E_±; no per-polymer constant uses it. D3's Theorem D3 says "constants independent of k, K, f": ℓ is not named. |
| §3.6 (U_ℓ) obstruction | [I] | CORRECTED | "not printed … no single page settles it" is too strong. §2 below gives printed torus independence for most constants. The obstruction is real for the residue of §2.3 only. Item (ii) "R-004 and R-008 say uniform in … volume" CONFIRMED (both rows contain "volume"). Item (i) CONFIRMED: L-196 fixes g ∈ ]0, γ] and assumes Target 2 at every admissible ℓ with that g. |
| §3.6 (U_ℓ^poly) | [P-sketch; gap I] | CORRECTED | See §1.1. |
| §4.1 Lemma DEF | [P given L-331] | CONFIRMED | Independence of ℓ′ is exactly (Loc-f) for the pair (ℓ′, ℓ″). |
| §4.2 (b1) | [P] | CONFIRMED | Φ_K is built from whole-lattice β_j; CMP 109 p. 264 (1.21)–(1.22) [V] defines β_{j+1} through "a limit of these functions as T^{(j+1)} ↗ Z^d". |
| §4.3 (b2), (b4-E/F) | [P given LOC + (FI_f) I] | CONFIRMED as a reduction | (FI_f) stays [I]; not upgradable from the pages read. |
| §4.4 (b4-R) | [P given L_G, (FI_LF) I, R-024, (U)] | CONFIRMED as a reduction | F4 and F6 re-read [V]. CMP 122 II p. 356 (1.1) [V] shows a volume term (−½d(g)log g_k^{−2} + log σ_0)|Λ^{(k)}∖G_0| inside the localized ratio; it is the volume of a local domain, not of T_η, so it is consistent with "(i) has no global factor". (FI_LF) stays [I]. |
| §4.5 (b3) | [P-sketch] | CONFIRMED as P-sketch | The scale-by-scale history check is not written; I did not write it either. |
| §4.6 | [P] | CONFIRMED | Holonomy argument and the normalization cancellation are correct. |
| §5.1 Lemma WRAP | [P given L-320] | CONFIRMED | Checked: diameter ≥ ℓ/2 − 3c_* ≥ ℓ/4 + D needs ℓ ≥ 4D + 12c_* (stated). d_m ≥ ℓL^n/(4M) − 1 with λ_m = L^{−n}. The count Σ_{s} e^{c_0s}e^{−κ max(s, s_0)} ≤ Ce^{−(κ−c_0)s_0}. The n ≥ 1 terms are super-geometric because (1 + DL^n/M)⁴ grows polynomially in L^n. Rate (κ − c_0)/(4M) per physical unit, ℓ-free and K-free. |
| §5.2 (5.1) | [P given L-320, L-331] | CONFIRMED | Uniqueness of the lift needs D < ℓ/4 and box side < ℓ/2: both hold under ℓ ≥ 4D + 12c_*. The large-Z⁴-polymer tail uses Lemma DEF on a larger admissible torus; with the corrected 𝓛(g) such a torus exists (ratio L). |
| §5.3 | [P-sketch; margin I] | CONFIRMED as P-sketch | — |
| §6.1 Theorem IV | — | CORRECTED | See §3. |
| §6.2 statuses | — | CORRECTED | See §4. |

### 1.1 (U_ℓ^poly): the repair and its Gevrey cost

- Implication (U_ℓ^poly) ⇒ ℓ-free (FX3) for non-wrapping and wrapping polymers: CONFIRMED [P]. The transfer to the least ℓ′ ∈ 𝓛′ with ℓ′ ≥ 2D + 6c_* is correct. With the corrected 𝓛(g) = {2L^m}, ℓ′ ≤ L(2D + 6c_*), so the gap condition is proved, not [I].
- κ budget: CORRECTED. As written, the E_0-absorption uses κ_*/2 and the radius absorption uses a further κ_*/4. That leaves κ_*/4, which is below the Lemma C requirement 8c_0 + 8 (IV12_VERIFY §13 [file]) when κ_* = 2(8c_0 + 8). Fix: a polynomial factor is absorbed by any positive fraction of the decay. Use κ_*/8 for each absorption. Then 3κ_*/4 ≥ 1.5(8c_0 + 8) remains, and the threshold κ_* ≥ 2(8c_0 + 8) stands, with constants that depend on (M, p, κ_*).
- Cauchy-step bound: CONFIRMED. sup_D (1 + D)^{p|S|}e^{−bD} = (p|S|/(be))^{p|S|} up to the shift, so ≤ (C|S|)^{p|S|}. This is a factor (|S|!)^p, so Lemma C's order becomes 1 + η + p [P-sketch].
- OS0 exponent 1 + 2η + p (§6.1 Variant): UNSUPPORTED as an exact value. INFINITE_VOLUME_FABLE §2.4 gives (S∞) at order 1 + η and (H-U∞) at order 1 + 2η. I did not trace where the second η enters. If it enters by repeating the cumulant excess, the shift is 2p, not p. Any fixed finite order satisfies the OS linear growth condition. So the qualitative claim "OS0 holds with a larger fixed Gevrey order" is CONFIRMED; the value is not.
- "Strictly weaker than (U_ℓ)": CONFIRMED as logic. Value: limited. CMP 109 p. 264 Theorem 3 [V] says "The constant γ depends on all other constants." If E_0(ℓ) grows with ℓ, nothing printed lets γ stay fixed. So (U_ℓ^poly) needs a fixed γ for growing E_0, and no source supports that. I know no route to (U_ℓ^poly) that does not also give (U_ℓ).
- "Without R-042, fallback order ≤ 1 + η + 4p_R/p_0": not re-checked; it is quoted from FX §6.3(c) and is outside this file's new content.

## 2. Part 2 — printed torus independence in Balaban's papers

### 2.1 Search
grep -n -i over balaban/*.txt of CMP 99 (both), 102 (both), 109, 116, 119, 122 I, 122 II for "independent", "uniform", "absolute constant", "not depend", "volume", "torus". Every hit that concerns a constant was located on its PDF page and read on the image. Torus notation: CMP 109 p. 251 [V], "a torus T obtained by the usual identification of boundary points of the cube {x ∈ R^d : −L_μ ≤ x_μ ≤ L_μ} … We take L_μ = L^m"; T_η is its η-lattice. So "independent of T" and "independent of T_η" both mean independent of the torus side.

### 2.2 Printed sentences [V, each read on the page image]
- S1. CMP 122 II p. 356: "with the constants E_−, E_+ independent of k, T_η, U_k."
- S2. CMP 119 p. 264, Corollary 3: "there exist constants E_−, E_+ independent of η and T, but depending on g_k".
- S3. CMP 119 p. 263, Theorem 2: "there exists a constant E_1 independent of j, k, Ω, {Ω_j}, {Λ_j}, T (but dependent on the other constants occurring in the formulation of this theorem)"; and "there exists an absolute constant R_1".
- S4. CMP 109 p. 264, Theorem 3: "There exist positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1 such, that if κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ for k = 0, 1, …, K, then … The constants ε_0, ε_1, α_0, α_1 depend on M … The constant γ depends on all other constants." The torus is not named.
- S5. CMP 109 p. 264, after (1.21): "Now we take a limit of these functions as T^{(j+1)} ↗ Z^d. This limit exists by the localized representation (1.7)." Balaban uses the step-(j+1) localized bounds along a sequence of growing tori. This presupposes T-uniform (1.18) constants at fixed j. It is a use, not a statement.
- S6. CMP 109 p. 263: "with some positive, absolute constants α_0, α_1 (i.e., constants independent of X and j)."
- S7. CMP 109 p. 258, after (0.29): "These inequalities yield a uniform bound of the sum (0.23) on the lattice T_η, i.e. the only dependence on k is through the volume |T_η| = |T_1^{(k)}|", with (0.30) |E_k(U_k)| ≤ O(1)(1 − L^{−α})^{−1}M^{−4}|T_1^{(k)}|. Sketch-level: the per-unit-volume constant carries no torus factor.
- S8. CMP 116 p. 21: "The expression localized in X satisfies the bound (I.1.18) with κ replaced by δ_0M, and with an absolute constant instead of E_0. We define ½E_0 as equal to this constant, and we take M sufficiently large, so that δ_0M ≥ κ."
- S9. CMP 99 (propagators) p. 423: "constants O(1) we get depend only on B_0(ε) … so they are absolute constants depending on d and L only"; "δ_0. It is a positive, absolute constant depending on d and L only."
- S10. CMP 99 (regular) p. 83: "we want to prove that the constants B_1, B_2(β_0) in (1.36), (1.39) are absolute constants depending on d and L only, B_2(β_0) on β_0 also."
- S11. CMP 102 (variational) p. 303: "It follows from the inequalities (2.47)–(2.51) of [3] that B_3 depends on d and L only."
- S12. CMP 102 (variational) p. 305: "We assume that C_1 is an absolute constant, hence B_5 is such a constant also."
- S13. CMP 122 II p. 380: "γ_0 is an absolute positive constant (in this factor we may take γ_0 = 1/2)."
- S14. CMP 119 p. 261: "The number β is a small positive constant, but not too small, e.g., we can take β = 1/4."
- S15. CMP 119 p. 244: "p_0(g_0) = A_0(log g_0^{−2})^{p_0} with a positive integer p_0."
- S16. CMP 119 p. 245: "R_0 is the smallest power of L such that R_0 ≥ (log g_0^{−2})^r, r ≥ 2, and M = L^m is sufficiently large."
- S17. CMP 119 p. 259, after (2.28): "q_0, q_1 are integers greater than 1, C_0, C_1 are sufficiently large positive numbers."
- S18. CMP 122 I p. 186: "Notice, that the conditions on M, γ, A_0, and A_1 introduced above do not depend on any scale, i.e., on i, j, k, and so on. This applies also to other conditions introduced before."
- S19 (3D analogue, convention only). CMP 102 (UV stability) p. 256: UV stability bounds (3) hold "with a constant O(1) depending on g and ε_0 only".
Not found: no sentence of the form "independent of the volume", "uniform in Λ", or "for every torus" attached to a base constant. The word "absolute" has two glosses: "depending on d and L only" (S9, S10) and "independent of X and j" (S6).

### 2.3 Constant-by-constant table for (U_ℓ)

The list is the file's 𝔅 (§3.5) plus the Theorem 3 constants it depends on, and 𝔖.

| constant | torus-independence sentence | status |
|---|---|---|
| γ (Balaban's coupling window) | S4: "depends on all other constants" | reduces to the others; the γ-part is inside L-196's hypotheses (g fixed for all ℓ) |
| E_0 | S8: ½E_0 := "an absolute constant"; S5 (use) | covered only through the word "absolute" (two glosses, §2.2); [V + I] |
| κ | free choice subject to κ ≥ κ_0 (S4); S8 makes the new decay δ_0M with δ_0 d, L only (S9) | κ_0 remains: S4 names no dependence and does not exclude T |
| β | S14: β = 1/4 | covered [V] (a number) |
| p_0(·) | S15: A_0(log g^{−2})^{p_0}, p_0 an integer | covered given A_0 |
| p_1(·) | formula not located on a page | remains |
| C_R, p_R | S16: R smallest power of L ≥ (log g^{−2})^r, r ≥ 2 | covered [V] (a formula) |
| γ_0 | S13: absolute, may take 1/2 | covered [V] |
| A_0, A_1 | S18: conditions "do not depend on any scale" | remains (scale-free, T not named) |
| B_3 | S11: d and L only | covered [V] |
| B_5 | S12: absolute, given C_1 absolute | covered [V] |
| C_0, C_1 | S17: "sufficiently large positive numbers" | remains (no dependency printed) |
| q_0, q_1 | S17: integers > 1 | covered [V] (numbers) |
| α_0, α_1 (CMP 109) | S6: "independent of X and j"; S4: "depend on M" | remains (T not named) |
| ε_0, ε_1, M(κ) | S4: ε's depend on M | remain (T not named) |
| propagator constants δ_0, B_0, B_1, B_2 | S9, S10 | covered [V] |
| derived outputs E_1, R_1, E_± | S1, S2, S3 | covered [V] |
| 𝔖 = (r, ρ_1, c_τ, θ, c, C_B) | project constants; Theorem D3 (SOURCES_D3 l. 55) says "independent of k, K, f" | remain: no Balaban page can cover them; the project files never name ℓ |

Reading of S3 [I]. "E_1 independent of … T (but dependent on the other constants occurring in the formulation of this theorem)" lists T beside k, j and the domain sequences. The sentence has content only if the "other constants" are themselves fixed before T is chosen. This is the best printed evidence that Balaban treats every base constant as torus-free. It is not a statement about them.

### 2.4 L-319 and its audit grade
- IDS.md l. 929: L-319 = IV L2, result proved here, file INFINITE_VOLUME_FABLE.md.
- INFINITE_VOLUME_FABLE l. 200: "every per-polymer constant of scales k < K (small field, large field, R-operation, FX Steps A, C, D) is independent of ℓ; Balaban's E_± 'independent of k, T_η, U_k'", grade "[V for the rows that say so; I as a complete audit — one row hiding a factor |T| would refute it]".
- TRUST_LEDGER §4.3 l. 219: "L-319 (UV constants ℓ-free) [audit, I]".
- INFINITE_VOLUME_PLAN l. 81 (V7) lists the project rows that state volume uniformity (A1-W "uniform in the volume", Lemma HH "independent of j, K, i, and the volume", A15_WHOLE "The torus size does not appear", HHOL per-polymer majorant).
- Check: the grep for "L-319", "IV L2" and "UV constants" over *.md and reports/*.md (firewalled files excluded) finds no file that records a page search of Balaban for torus-independence sentences. The current grade [audit, I] is CONFIRMED as accurate for the state before this file.

### 2.5 Grade of (U_ℓ)
NOT [V]. Grade: [V-partial]. Covered on printed pages: β, γ_0, q_0, q_1, B_3, B_5, δ_0, B_0, B_1, B_2, the R-formula (C_R, p_R), p_0 given A_0, and the outputs E_1, R_1, E_±; E_0 through "absolute". Remaining, exactly: κ_0 (hence κ), M(κ), ε_0, ε_1, α_0, α_1 (CMP 109 Theorem 3 names no torus dependence but does not exclude one), A_0, A_1 (only scale independence printed), C_0, C_1 (no dependency printed), p_1 (formula not located), and all six S1 constants 𝔖 (project constants, stated free of k, K, f only). The weakest honest form of (H-U) is: "the constants κ_0, M(κ), ε_0, ε_1, α_0, α_1, A_0, A_1, C_0, C_1, p_1 of CMP 109/119/122 and the S1 constants 𝔖 can be chosen independent of the torus side; the remaining constants are torus-free on the cited pages."

## 3. Theorem IV (L-196) after this file — exact hypothesis list

Setting: G = SU(2), d = 4, L odd > 11 fixed, g ∈ ]0, γ] with γ as in L-001 (Theorem 2w), g_0(K, g) in the Lemma D″ set, and
  𝓛(g) := {2L^m : m ∈ N, 2L^m ≥ ℓ_0(g)},  ℓ_0(g) := max(22M, 200MR_K(g) + 2c_*, ℓ_{A1})   (corrected Lemma ADM).
Hypotheses of (a)–(b):
1. (H-T2) the hypotheses of Target 2 (ASSEMBLY §1.3: L-001, Balaban's Theorem 1, R-035 (S1), R-043 Steps A, C, D, with R-042 via Q-061) on T_ℓ for every ℓ ∈ 𝓛(g), or for every ℓ in one infinite subset of 𝓛(g).
2. (H-U) the narrowed (U_ℓ) of §2.5: κ_0 (hence κ), M(κ), ε_0, ε_1, α_0, α_1, A_0, A_1, C_0, C_1, p_1 and the S1 constants 𝔖 = (r, ρ_1, c_τ, θ, c, C_B) can be chosen independent of ℓ ∈ 𝓛(g). [I]
3. (H-L6) the inputs of L-323 beyond (H-T2): (D), including (D) on Ũ^c [I]; (Reg) [R, no ledger row]; I8 [I].
4. The Kotecký–Preiss theorem [R, standard] (used inside L-320).
Named among them, unchanged: K-014 (C13); (1.103)–(1.104) and Q-062 not used.
L-320 is not a hypothesis; it follows from 1 + 2 + 4 (CONFIRMED, with the Step-2 citation of §1).
Conclusions (a)–(b) unchanged (OS0 with (n!)^{1+2η}, s = 20; OS1-T; OS1-H (B_4); OS2; OS3), with ℓ_i ∈ 𝓛(g).
Hypotheses added for (c): Theorem LOC's (FI), (U), (Det′), (Cube), (Cases), (Conv); Theorem BDRY's (L2_Λ) (→ R-024), (Enl) [convention], (Dom), (Conv_Λ) [I], Λ_j nesting [I]; Claim L_G; (FI_f) [I]; (FI_LF) [I]; the §4.5 Step-A P-sketch. Then (3.2) holds, and the torus-to-Z⁴ error is ≤ 2C_W(S)(1 + D/M)⁴e^{−(κ−c_0)ℓ/(4M)} for ℓ ≥ 4D + 12c_* (CONFIRMED).
Variant under (U_ℓ^poly): (a)–(b) hold with a larger fixed Gevrey order (exact exponent UNSUPPORTED, §1.1), and the (c) inputs are then needed already for (a)–(b). The κ threshold κ_* ≥ 2(8c_0 + 8) holds only with the re-split of §1.1.
(d) Not asserted, unchanged: L-332, L-333, L-334, nontriviality. Weak existence only; not a Clay solution.

## 4. Proposed ledger statuses (not applied)

- L-320 H-106 (FX-V): "PROVED relative to listed inputs: Target 2 hypotheses on T_ℓ for every ℓ ∈ 𝓛(g) = {2L^m ≥ ℓ_0(g)} (incl. R-042 via Q-061); (H-U) = narrowed (U_ℓ) [I]; Kotecký–Preiss [R]. Pointwise-in-V Step A is printed: CMP 122 II (1.73)–(1.75) p. 380 and the U-free right side of (1.79) p. 383 [V]. Verified with corrections (SOURCES_L2_L3L14_VERIFY)." The SOURCES_L2_L3L14 §6.2 text that cites "The supremum is taken over all admissible domains" as the pointwise reading must not be used.
- L-331 H-142 (Loc-f): "PROVED relative to construction-reading inputs (Theorem LOC inputs; Theorem BDRY inputs; Claim L_G; (FI_f), (FI_LF) [I]); Step-A large-field part P-sketch. Wrapping bound at rate (κ − c_0)/(4M) per physical unit, via L-320. Verified (SOURCES_L2_L3L14_VERIFY); no change of content."
- L-319 / (U_ℓ): narrow L-319 to (H-U) of §3; grade [audit, I] → [V-partial]: torus independence printed for β, γ_0, q_0, q_1, B_3, B_5, δ_0, B_0, B_1, B_2, the R-formula, p_0 given A_0, and the outputs E_1, R_1, E_± (CMP 99 p. 423, CMP 99 reg. p. 83, CMP 102 pp. 303, 305, CMP 119 pp. 244, 245, 261, 263, 264, CMP 122 II pp. 356, 380); E_0 through "absolute" (CMP 116 p. 21); residue κ_0, M(κ), ε_0, ε_1, α_0, α_1, A_0, A_1, C_0, C_1, p_1, 𝔖 [I]. Named as hypothesis (H-U) of L-196. (U_ℓ^poly) recorded as a formally weaker variant with no known independent route.
- TRUST_LEDGER §4.3: replace "every even torus side ℓ > 22M" by "every ℓ ∈ 𝓛(g) = {2L^m : 2L^m ≥ ℓ_0(g)}" (not the file's 2L^{n_0}N); replace item (ii) L-320 by (H-U); in "Distance to unconditional", delete "a one-paragraph pointwise reading of Step A" (settled by CMP 122 II (1.73)–(1.75), (1.79)) and add the (H-U) residue list.

STATUS: COMPLETE. Page images rendered to /tmp/l2v_LUGV and deleted. Firewall kept. Only this file written.
