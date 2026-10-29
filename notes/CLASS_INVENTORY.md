# CLASS_INVENTORY — every non-project input of Target 1, Target 2 and Theorem IV, classified

Written 2026-10-29 (Claude, Opus 5.5). New file; no existing file was edited; PLAN.md not touched; sync.sh not run. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep. No page was rendered; every class comes from page quotes and image readings that are already in the VERIFY files.

Method. The start set is TRUST_LEDGER.md (all rows, §4, all addenda) and the open binding inputs of the 2026-10-29 apply pass (PLAN.md l. 579): Target 1: R-006, R-013, R-018, H-047; Target 2: H-358, R-019, R-018 + (R-op geometry)(ii), R-024, H-361 (W6*), R-038/R-039 sub-items, R-042, R-020, R-014; Theorem IV: (H-T2), (H-L6), Kotecký–Preiss, H-360 (U-W)′, the [R] inputs of L-319. SOURCES_OFFSHELL_INNER_VERIFY §V8 is included. Six parallel readers traced each row family through its SOURCES_* files and their latest VERIFY grades; this file merges and deduplicates their leaf lists. Ids follow IDS.md; file-local labels are qualified by file.

Target tags ("first target" column; the targets are nested, so a T1 item also blocks T2 and IV, and a T2 item also blocks IV):
- T1 — on the direct Target 1 chain (R-006 H0-red, G3 = N2 through R-008/R-009, the R-031 residue, R-018, H-141 (Loc) → L-024).
- T1* — only inside Balaban's own proof of R-013 (R-001–R-005, R-008–R-010, R-014, R-017). Target 1 cites R-013 as a published proof, so a T1* item binds Target 1 only if R-013 is opened. Target 2 lists several T1* items as open (H-358, R-014, R-019).
- T2 — first needed by Target 2.
- IV — first needed by Theorem IV (L-196).

Difficulty: S = a few pages or one image check; M = a section-size write-out or a multi-page image sweep; L = a new argument with no visible route.

Class rules applied. C2 includes statements whose proof is a sketch or a "same way" reference. A project [P-sketch] step that rests on no reading is put in C5 (difficulty S, "write out"), not in C4. Printed assertions that a verified project write-out now replaces are not counted; they are in the "superseded" list at the end.

## Summary

Counts of distinct leaves. Each C2/C3/C5 leaf is counted once, at its first target. Every T1 and T1* leaf also blocks T2 and IV, and every T2 leaf also blocks IV.

| class | T1 | T1* (inside R-013) | T2 | IV | total |
|---|---|---|---|---|---|
| C1 printed with proof | — | — | — | — | 18 groups |
| C2 printed assertion | 4 | 17 | 8 | 3 | 32 |
| C3 reading | 11 | 35 | 28 | 12 | 86 |
| C4 project, proved + verified | — | — | — | — | about 150 ids |
| C5 unproved, no source | 10 | 14 | 14 | 5 | 43 |

Cumulative open leaves (C2 + C3 + C5) that block each target:
- Target 1 with R-013 taken as published: 25.
- Target 1 with R-013 opened: 25 + 66 = 91.
- Target 2: 91 + 50 = 141.
- Theorem IV: 141 + 20 = 161.

By difficulty:
- C2: 14 S, 17 M, 1 L.
- C3: 66 S, 20 M, 0 L.
- C5: 28 S, 14 M, 1 L.

Most C3 S items are constant-level readings. Under either reading only a (d, L) or M constant changes.

Hardest five:
1. C5-25: the R-038 β_j mixed derivative (L). It is probably not load-bearing, because R-039 and N3 no longer use it.
2. C2-30: the CMP 119 p. 262 sentence "numerous restrictions introduced in the proof" (L). It limits every completeness sweep.
3. C3-12: complex CMP 98 Prop. 5 (M). It is the only residue of R-019 and it feeds R-005, R-040, R-041.
4. C3-47: (Sep) property (ii) on R-operation-modified T^{(j)} (M).
5. C5-11: the rate δ_* against ½δ_0 (M).

The next hardest are C5-26 H-361 (W6*), a second-reader sweep of about 70 pages, and C2-01 K-034 (Cases).

Lists are sorted by first target (T1, T1*, T2, IV) and then by difficulty (L, M, S).

## C2 — printed as an assertion, no printed proof

| no | id | statement | source page + words | used by | first target | diff |
|---|---|---|---|---|---|---|
| C2-01 | K-034 (Cases) | The localization that Balaban works out for one "typical term" holds for every other term class. | CMP 116 p. 2: "Instead of trying to cover all possible cases, let us consider one important and typical term, and then discuss necessary changes for other terms"; pp. 11–12 (text l. 503): "it can be done in the same way for all terms in F^{(k)} … possibly with other absolute constants" | H-141 (Loc) ⇒ L-024 ⇒ R-031 residue, R-006 (Z^d limit, N9), R-015, R-032; inside R-013 | T1 | M |
| C2-02 | R-006 N8(i) | The CMP 116 constants C_1, C_2, q, C_3, the (1.39) constant, the log Z constant of E_0 and the O(1)'s depend on d and L only. | CMP 116 l. 443: "There exist absolute constants C_1, C_2, q"; l. 486: "C_3 is an absolute constant"; l. 379 "absolute constants O(1), q". The meaning of "absolute" is [V]; the j-freeness of the content is his claim (SOURCES_SWEEP_DE_VERIFY §4.5) | R-006 (7′ via L-183 H0-red) | T1 | M |
| C2-03 | CMP 99 (3.132)–(3.133), k-step form | Bounds on (QGQ*)^{−1}, (QG_1Q*)^{−1} and the k-step bound Q_kQ_k* ≥ c, as R-018 and R-022 (ii) use them. | CMP 99 p. 422: "can be analyzed in the same way … We will not repeat these considerations here, let us write only bounds" | R-018 [R] residue, R-022 (ii), R-023. (The R-001/R-002 uses are replaced by L-125, L-017.) | T1 | M |
| C2-04 | CMP 109 p. 263 remark | Minimal U_j with \|∂U_j − 1\| < ε_0ξ² lie in U^c_j(X, α_0, α_1), condition (iv) included. | CMP 109 p. 263: "It is obvious that for α′_0 sufficiently small the above estimates imply the condition (iv) … In particular the minimal configurations U_j … satisfy the above conditions" (SOURCES_A18_REGULAR §3.3: [P-claim] via CMP 102 Prop. 9) | R-018 | T1 | S |
| C2-05 | R-014 | The t_□-derivative factor O(1)α_2^{−1}ε_1 beats the (3.54) constant K, "much bigger than E_0"; K has no printed value. | CMP 109 p. 280: "It is much bigger than E_0 … This differentiation yields a factor O(1)α_2^{−1}ε_1, and taking ε_1 sufficiently small we can get the required constant" | R-014, R-013, R-006 N6 input list, (Eps), F2′, R-044, R-035 | T1* | M |
| C2-06 | CMP 99 p. 422, complex U | (3.132)–(3.133) at complex U′U. | CMP 99 p. 422 (same sentence as C2-03) | R-005 (complex U on-shell), H-358 item (1) base | T1* | M |
| C2-07 | CMP 99 p. 422, (QG_0Q*)^{−1} family | Sup and Laplacian kernel bounds of (QG_0Q*)^{−1} (L-125 covers G and G_1 only). | CMP 99 p. 422 (same sentence) | R-005 (SOURCES_R005_DD residue), SOURCES_OFFSHELL_F2 Theorem H | T1* | M |
| C2-08 | CMP 99 complex-U J bound | Regularity of U′U and the J bound at complex U. | CMP 99 pp. 396–397: "We will prove in another paper that if U′U satisfies (3.37), (3.38), then it satisfies also (3.35), (3.36) … but we will not use this fact here" | R-005 (complex U on-shell) | T1* | M |
| C2-09 | CMP 99 Cor. 3.6 (T310-R1) | After Ω_0 is gauged, the local G_□, G′_□, C_□ obey Thms 3.1–3.3 for regular U. | CMP 99 p. 408: V(A) bounded by "(3.77), (3.83), and (3.85)", one-line bounds [R-sketch] (THM310_FULL l. 88) | R-002 (THM37_FULL, THM310_FULL), R-003 R2 | T1* | M |
| C2-10 | H-313 complex (W_G) | The walk form of G continues to complex U′U. | CMP 99 Thm 3.4 p. 400: "quantitative statements … small perturbations", plus the Thm 3.10 sketch; the project write-out covers real U | R-002, R-003 R2 | T1* | M |
| C2-11 | W-G̃ | Walk expansion of G̃ and G_0 with the same bounds. | CMP 99 p. 416 (3.108), p. 410 Cor. 3.8; CMP 116 p. 3: "we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds" | R-010/R-014 off-shell (OFFSHELL_F2 Theorems W, S, H), H-358 | T1* | M |
| C2-12 | CMP 99 pp. 410–411 walk sums | Walk-sum details behind Thms 3.1–3.3 and Thm 3.7. THM37_FULL writes them out for Balaban's domain class (C4); the residue is their use on other domains. | CMP 99 p. 410: "The arguments are exactly the same as in proofs of Proposition 1.2 [3] and Proposition 2.2 [4], so we will not repeat them here" | L-319 [R] list, R-023 (5), R-024 (W_G1^Ω), u_k discharge | T1* | M |
| C2-13 | R-021 (a), (b) | CMP 99 Thm 3.1 (3.46) for G′ at a = 1, and Thm 3.3 (3.46) for G. | Thm 3.1 p. 399, statement only; Thm 3.3 p. 416: "(3.108) … This implies Theorem 3.3" (walk sketch). THM310_FULL's write-out of (3.108) probably covers Thm 3.3; not checked | R-021, H-057 (C), R-001, R-004 R1 | T1* | S |
| C2-14 | CMP 98 (148), complex | Base step of the Prop. 5 bound at complex A. | CMP 98 p. 40: "(148) … following easily from general properties of the function C(V_0, A)"; not stated at complex A | R-005, R-019, R-018 (via CMP 98 [R]) | T1* | S |
| C2-15 | CMP 109 (3.31) | \|A\|, \|∇A\|, ‖A‖_{1,β} < α_2 for (tζ_□ + t_□ζ_□)H_k(B′). | CMP 109 p. 276: "Obviously such bounds are satisfied by the function (tζ_□ + t_□ζ_□)H_k(B′) for ε_1 sufficiently small" | R-010 item (b), R-014 | T1* | S |
| C2-16 | CMP 109 p. 273 assumption | H_j(B(t)) obeys (3.14) with ⅓α_2. | CMP 109 p. 273: "We assume also that ε_1 is so small that H_j(B(t)) satisfies (3.14) with ⅓α_2" | R-010 R2 (R-terms), R-014 | T1* | S |
| C2-17 | CMP 109 p. 274 second removal | The (3.22) bracket term has the bounds of the first. | CMP 109 p. 274: "has a very similar form and the same properties" | R-010 R2 (R′_j) | T1* | S |
| C2-18 | CMP 109 p. 280 decay powers | An arbitrary power of L^jη from exponential decay. | CMP 109 p. 280: "The considerations are similar to those done on several occasions, e.g. (3.6), (3.21), and we do not repeat them" | R-014, R-013 | T1* | S |
| C2-19 | R-010 R1 constants | Unprinted O(1) constants of the CMP 116/109 lower-order bounds. | CMP 116 pp. 8–9: "can be bounded similarly as in (1.24)" | R-010/R-011 | T1* | S |
| C2-20 | CMP 99-Regular p. 98, k = 0 | Prop. 6 covers k = 0 (R-023 item (2)). | CMP 99-Regular p. 98: "Then we have to admit the value k = 0. In this case the reasoning is much simpler and will be covered by our analysis of a general case." | R-023 | T1* | S |
| C2-21 | CMP 116 (2.36) | An iterated scale-comparison inequality. | CMP 116 (2.36), about p. 20: "simple, but awkward", no proof (SOURCES_T2_KAPPA2_VERIFY l. 50); for R-046 the printed CMP 122 II p. 376 inequality replaces it | R-013 only | T1* | S |
| C2-22 | W4-G | The preparatory integrations of CMP 122 I Sect. 1 are holomorphic in the input activities on 𝔄_c, with (1.68)–(1.69). | CMP 122 I p. 179: "we can use the results of the third section"; stated with "only few comments" (SOURCES_B20_W4R l. 53; VERIFY: "[R, Balaban sketch level]") | R-044 (W4)-R ⇒ F2′, R-035, R-043 (Lemma G-1) | T2 | M |
| C2-23 | CMP 119 Sect. 3 large-field T step | The large-field step repeats the small-field step. | CMP 119 pp. 276–278: "we repeat all the considerations of Sect. 3.7 [I], with minor changes" | R-044 (W4), R-020, R-046 | T2 | M |
| C2-24 | (Rd2), CMP 122 II p. 358 | At complex U ∈ U_k^c all bounds hold with ε_k → O(α_{0,k} + α_{1,k}). | CMP 122 II p. 358: "all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k})", no proof | Lemma Σ (b), (c); L-365 (Lemma TV) (T1), (T2); (J-c)-σ; Lemma O3-den; R-035; Q-061 ⇒ R-042 | T2 | M |
| C2-25 | CMP 122 I p. 181 intermediate layers | The χ^{(n)} inputs for h < j ≤ k_0 follow the (1.22)–(1.23) pattern. | CMP 122 I p. 181: only "generalizations of (1.22), (1.23)" are printed (SOURCES_R024_ISTRONG Theorem R(a), tagged [I]) | R-024 | T2 | M |
| C2-26 | CMP 122 II p. 359, complex Prop. 1 | CMP 122 I Prop. 1 holds for g^c-valued fields. | CMP 122 II p. 359: "valid for g^c-valued fields", "the generalization is obvious" (SOURCES_A_SIGMA_STAR_VERIFY §9) | L-363 (Prop. A-σ′) ⇒ (J-c)-σ ⇒ R-035 | T2 | M |
| C2-27 | (O1) | The localized terms O(X_b, ·) of 𝒪_b obey the CMP 116 (1.36) bounds on the (2.14) domain. | CMP 119 p. 277: "expanded and localized in the same way" | R-020 R3 ⇒ R-046 ⇒ R-035 | T2 | S |
| C2-28 | H′ bound | H′(Z_0) obeys the same bound as H (only the rate form is needed). | CMP 119 pp. 277–278: "Although different, it satisfies the same bound as the other factors" | R-020, R-044 | T2 | S |
| C2-29 | CMP 116 (1.6) M → M_1 | Re-localization of the walk expansion from M to M_1. | CMP 116 (1.6), asserted only (SOURCES_OFFSHELL_F2_VERIFY V5.1) | R-010 off-shell (Theorem W) | T2 | S |
| C2-30 | CMP 119 Thm 1 restrictions | The constants obey restrictions that are introduced in the proof and not collected. | CMP 119 p. 262: "the constants satisfy numerous restrictions introduced in the proof"; Sect. 3 is a sketch citing [I], [II], [13]–[16] (SOURCES_UW_SWEEP_119 §3) | H-360 (U-W)′ completeness, L-319; bears on R-013 through every constant | IV | L |
| C2-31 | (Reg) (FABLE_HARD I4) | For V ∈ supp χ_K, U_j(V) is regular at every scale j, with curvature ≤ a_1λ_j². No ledger row. | Implicit inductive setting: CMP 119 (2.28) p. 259, CMP 102 minimizer regularity | L-323 (H-L6), D2C (3.2)–(3.5) pointwise use | IV | M |
| C2-32 | CMP 102 Thm 1 positivity | ⟨A′, Δ_1A′⟩ is positive definite on {QδA′ = 0, RD*δA′ = 0}; on a winding Ω_0 the project has a [P-sketch] with a Riesz–Thorin L² gap. | CMP 102 p. 299: "positive definite", no proof on the page | L-319 [R] list | IV | S |

## C3 — readings and interpretations ([I], [I-reading], [I-strong], [I-minor], [P-sketch] on a reading)

| no | id | statement | source page | competing readings | used by | first target | diff |
|---|---|---|---|---|---|---|---|
| C3-01 | R-006 N8(ii) (H0 C9) | CMP 109 constants are scale-invariant across the classes D_j. | CMP 109 p. 257 (partly [V]); SOURCES_T2_H0_VERIFY §4.3 | (a) the p. 257 scaling covers the item; (b) it covers part, and one step needs a proof | R-006 (7′) | T1 | S |
| C3-02 | R-006 N8(iii) (H0 C3) | The geometric constant of the earlier-scale sum is inside C_1M^qe^{C_2κ_1}. | CMP 116 p. 9 (1.31): "gives also the factor L^jη, which controls the sum over j" | (a) already inside Balaban's constant; (b) an extra k-free factor (constants only) | R-006 | T1 | S |
| C3-03 | R-006 N8(iv) (H0 C15) | log Z^{(k)} does not depend on g in the B variables. | SOURCES_T2_H0_VERIFY §4.1 | (a) depends on U_{k+1} only; (b) depends on g through the cut χ_k | R-006 | T1 | S |
| C3-04 | K-033 caveat | The Ω_0 of CMP 99 [13] equals the Ω_0 of [14] "by construction, not by a printed line". | CMP 109 p. 276; CMP 99 p. 394 | (a) same domain sequence; (b) a larger domain, cost one collar | H-141 (Loc) ⇒ R-031, R-006, R-015, R-032 | T1 | S |
| C3-05 | K-037 | "H_j with free boundary conditions" (p. 290) is the (4.40) Z⁴ operator, "by notation". | CMP 109 pp. 290–292 | (a) the Z⁴ operator; (b) a finite-domain operator with free b.c. | H-141 (Loc) (Lemma S(c)) ⇒ same rows | T1 | S |
| C3-06 | R-017 transfer [I-minor] | "C = identity off the bonds b_0" transfers from CMP 99 p. 428 to CMP 109 pp. 267–268; per-bond sup-norm convention of \|B\|_Y. | CMP 99 p. 428: "an identity operator on almost all bonds, except the bonds b_0" | (a) same operator; (b) a different cut set | R-017 ⇒ N3 (M_r) | T1 | S |
| C3-07 | R-018 M_1 split | M_1^{(119)} is a multiple of R_1M_1^{(102)}; R_1 above 18dL; caps N-320/N-380/N-470 read with M_1^{(102)}. | SOURCES_SWEEP_DE_VERIFY §3.4 | (a) this convention; (b) the withdrawn reading R_1 < L | R-018, R-024 (ii-a) | T1 | S |
| C3-08 | R-018 citation | "Theorem 1 [16]" in CMP 122 I means the CMP 102 variational paper [15]. | CMP 122 I p. 175 (the reference-list convention is stated for one citation only) | (a) [15]; (b) the cited [16] | R-018 | T1 | S |
| C3-09 | R-022 page readings | Dressed structure of CMP 99 (3.113)–(3.114), CMP 98 (78), (81); CMP 109 (2.6)–(2.7) cite CMP 99 (3.127)–(3.128); CMP 109 p. 267 "Q̃Q_kδA′ = 0". | FABLE_A25_A26_H1_VERIFY §2 ("source not checked") | (a) dressed average; (b) undressed k-step average (unproved, unused) | R-022 ⇒ WC_FULL R4 ⇒ R-008, R-009 ⇒ G3 | T1 | S |
| C3-10 | R-012 | "Similar inequalities hold for other constants" means scale-indexed X_j = f(g_j). | CMP 119 p. 256; SOURCES_A11_CONST_VERIFY (1): "an inference, but the only consistent one" | no competing reading found | R-012 ⇒ R-034 ⇒ Theorem 1 | T1 | S |
| C3-11 | V1 C15 (R″) | The R″^{(k+1)} terms of CMP 119 p. 279 are "of the same kind" and put no g⁰ term into β; the "(1.41)–(1.43)" misprint reading. | SOURCES_T2_V1_VERIFY §2.4 | (a) R″ obeys the (2.31) bound g^{κ_0}; (b) R″ needs its own bound (R-032(a) nearly removes the need) | R-029 | T1 | S |
| C3-12 | complex CMP 98 Prop. 5 | CMP 98 Prop. 5 / (157) holds at complex field A. | CMP 98 p. 43: "Similarly, Proposition 5 may be extended to include analyticity and uniformity statements. The formulations are obvious." | (a) covers complex A (precedent: Prop. 4 (135) used at complex A in CMP 102 (52)–(54), (69)); (b) covers only complex background perturbations U′ = e^{iηA′}. Close by writing (149)–(155) at complex A plus (148) | R-005 (Theorem 189 Lemma C2), R-019 (sole residue), R-040 (K_U), R-041 ((H−) Cauchy step), R-018 | T1* | M |
| C3-13 | H-071 complexified CMP 98 Props. 1, 2 | The real proof extends to G^c-valued V. | CMP 98 pp. 24–26 ("[I: source not checked]", FABLE_O3_ALC_VERIFY B-08) | (a) complexifies line by line; (b) one step needs unitarity | R-002 | T1* | M |
| C3-14 | T310-I7 | Local operators depend only on the local sequence; T37 and 3.9-W hold on 𝒟′_□ with one merged cube. | THM310_FULL_VERIFY: "PLAUSIBLE, stays [I]" | (a) locality holds; (b) the merged cube sees non-local data | R-002, R-003 | T1* | M |
| C3-15 | H-358(2) ω-walk | R-002-form walk expansion of ω = (QG_πQ*)^{−1} at variable J. | CMP 116 Sect. 1; CMP 109 p. 273 [R + reading] | (a) R-002/WG_FULL carry over at sup-bounded J (scaled J-cap); (b) a separate proof is needed | R-010, R-014 | T1* | M |
| C3-16 | H-358(4) V-localization | CMP 116 Sect. 1 localizes the extra nonlocal operator of V through ω(s). | CMP 116 pp. 2–4 (silent) [I-reading] | (a) Balaban's walk localization covers the ω piece of V^{(i)}; (b) the ω piece needs its own expansion | R-010, R-014 | T1* | M |
| C3-17 | gauge-fixed V (OFFSHELL_INNER V6) | No later page uses Balaban's literal off-shell V with pointwise kernel bounds. | SOURCES_OFFSHELL_INNER_VERIFY V6, V8: CONFIRMED on CMP 109/116 images; CMP 119 and 122 text layer only | (i) gauge-fixed V^{(i)} (adopted); (ii) V by (3.126); (iii) H as the constrained minimizer of CMP 102 (45). (ii) and (iii) carry the open ∇G′∇*-on-J item | R-005 off-shell, R-010, R-014 | T1* | M |
| C3-18 | H-318(ii) / S-46 | THM37 (H1), the multi-size class (sizes 10M–18LM). | CMP 99 p. 396: "where O(1)M is a size of □" | (A) literal: (H1) is printed; (B) one-size: needs CMP 102 Thm 1 (9) (real route) or A18 5.3(b) [I] + "variational = propagator layers" [I] + a cap 22LMε_0 ≤ R_1M_1a_1 (CMP 122 route) | R-002 (THM37, THM310), R-018 | T1* | M |
| C3-19 | H-072, (15)/(43) reading of U(c) | U(c) is the product of the L finer links of c. | CMP 98 p. 19 (15): "We refer the reader to paper [2] for explanations of symbols"; pp. 19–26 define no U(c) | (a) product of finer links; (b) another contour; (c) a covariant non-contour U(c) | R-002 (THM39, THM310 via (3.83)), H-071, c_N | T1* | M |
| C3-20 | H-358(1) | Thm 3.12 / (3.132)–(3.133) hold at variable J with only a sup bound. | CMP 99 pp. 421–423; J enters via (3.131), (3.137) [R + reading, images] | (a) J enters only through its size; (b) the on-shell structure J = J(U) is used | R-005 off-shell (Theorem 189′), R-010, R-014 | T1* | S |
| C3-21 | H-071 (iii), (iv) | The non-unitary part is linear in b_1; the plaquette defect splits into unitary and non-unitary parts. | SOURCES_F22_VERIFY §7: (iv) "plausible, not shown"; FABLE_O3_ALC claims (iii) by Schwarz | (a) Prop. 2 is linear in its source; (b) it is not, and the split needs a bound | R-002 | T1* | S |
| C3-22 | lasso count A_L | Stokes cone constant and the (d + 1)L conjugator length. | THM39 [P, crude]; SOURCES_F19 A1(c) [I] | (a) the crude count; (b) a larger count (constant only) | R-002, c_N | T1* | S |
| C3-23 | THM39 (3.35) index | c_3 = 12L²; the cube-class index. | CMP 99 p. 396 | (a) index j; (b) index j − 1 | R-002 | T1* | S |
| C3-24 | T37-I1 (I-Ω0) | Cubes meeting ∂Ω_0 use Dirichlet operators on Ω_0(□) ∩ Ω_0. | THM37_FULL 3.2 | (a) outer Dirichlet; (b) another boundary convention | R-002 | T1* | S |
| C3-25 | T37-I3 (G-M1) [I-geo] | □̃^5 of an M_1-cube lies inside an M-scale class cube. | THM37_FULL | (a) inclusion holds; (b) fails at the interface | R-002 | T1* | S |
| C3-26 | T37-I4 | M_th of Thm 3.1 concerns R_0M_0, not the walk-cube size; CMP 96 (2.59) holds for the □-sequence. | CMP 99 p. 408 | (a) local parameters (R_0, M_0); (b) walk-cube size M | R-002 | T1* | S |
| C3-27 | T37-I6 = H-321 | Lemma D□ non-interface admissibility step d ≤ d_□ + c_D [P-sketch]; weak form [P] as fallback. | THM37_FULL | (a) sharp form; (b) weak form (enough; not load-bearing) | R-002 | T1* | S |
| C3-28 | T37-I5 = T310-I8 = WG C0 (c_sc) | Conversion of block norms to μ-kernels; scale bookkeeping constant. | WG_FULL 0.2; OFFSHELL_F2_VERIFY (Theorem W (W1)) | (a) a (d, L) constant; (b) a scale-dependent factor | R-002, R-003, R-010 off-shell | T1* | S |
| C3-29 | T310-I6 | Geometry of the ζ_□ and 𝒟′_□ margins, O(1) = 18. | CMP 99 pp. 411, 414, 415 (printed without margins) | (a) 18; (b) the misprinted 16 (p. 415 □̃_0^5 vs □̃⁸) | R-002, R-003 | T1* | S |
| C3-30 | A-Lip / X-PU corner [I-geo] | Lipschitz bound c_hL/M_1 for Balaban's partition at corners and partial faces (flat faces [P]). | THM37_FULL 3.4; SOURCES_L1_C_VERIFY V2.7 | (a) the corner bound holds with c_hL; (b) a larger corner constant | R-002, R-003 | T1* | S |
| C3-31 | WG_FULL [I] items | ι-domain assignment, C^{(2)} Hessian locality, M_1-cover and band geometry (0.4), set form of (B2-T), A1_WALK_FULL 5.6 □⁺ count. | WG_FULL_VERIFY regrades; the L1_C metric partition probably closes the A1_WALK counts, not stated for WG | (a) as assumed; (b) larger geometric constants | R-002, R-003 | T1* | S |
| C3-32 | H-303 grid anchoring [I-minor] | The metric-partition grid fits the lattice period. | SOURCES_L1_C 2.7 | (a) ½K_1 a power of L; (b) a divisor of the side, K_1 ≥ 12 | R-002 | T1* | S |
| C3-33 | H-305 Q-normalization [P-sketch] | Normalization of Q (locality is [P]). | SOURCES_L1_C §3.1 | (a) CMP 95 normalization; (b) another power of L | R-002 | T1* | S |
| C3-34 | R-Δ2 index range [I-geo] | j(b′) ∈ {j − 1, j, j + 1} near b. | SOURCES_SWEEP_C §S-50 | (a) three levels; (b) more levels (constant) | R-004 | T1* | S |
| C3-35 | R-004 R5 | A_x(y) = T(y). | CMP 99 p. 428 (garbled reference); matches CMP 96 Γ_{y,x} (SOURCES_A3_GAMMA0_FULL_VERIFY l. 80) | (a) T(y) = Γ_{y,x}; (b) another path rule | R-004 | T1* | S |
| C3-36 | K-044 (Cv1), (Cv2) | Contour translation rule for U(c). | CMP 95 p. 19 prints no rule | (a) this rule; (b) another rule (constants only) | R-001 (H-123 (H_Q)(iii)) | T1* | S |
| C3-37 | Δ-version of V | Which V enters (180): Δ_π form (CMP 109 p. 266) or Δ form (CMP 102 p. 297). | SOURCES_OFFSHELL_INNER 3.8 [I-reading]; images make the Δ-version likely | (a) Δ-version: M gains T_1(J)H ∈ 𝒦(−3) [P-sketch]; (b) Δ_π version | R-005 off-shell | T1* | S |
| C3-38 | κ-small [I-minor] | Lower bound on RM_1 for κ in Lemma K′. | SOURCES_R005_189_VERIFY | (a) inside Balaban's M choice; (b) an extra cap | R-005 | T1* | S |
| C3-39 | (C-b) Π-decay | \|Π_{j,μν}(x)\| ≤ O(1)E_0e^{−δ_1\|x\|}. | CMP 109 (5.44) (printed for Π′) and (4.36) [R] | (a) follows from Π′ and (4.36); (b) not printed for Π itself | R-010 C-terms; C_Π in R-040, R-037 | T1* | S |
| C3-40 | Lemma G (I1), (I4) (SOURCES_P387_REPAIR) | (I1) Balaban's Z_{n−1} read as Z^♮_{n−1}; (I4) every component meeting (i), (ii) is processed at that step. | CMP 122 II p. 381 (1.76); CMP 122 I p. 177, II p. 385 | (I1) all of Z_{n−1} vs only non-renormalized components; (I4) rule as stated vs components processed later | R-013 large field; (U-W) item (3); L-319 | T1* | S |
| C3-41 | CMP 119 (2.5) letter r | Reading of the doubled r in the R_k definition. | CMP 119 pp. 255–256 (SOURCES_UW_FINAL_VERIFY §6.4) | (a) one symbol; (b) two exponents | (R-seq 1), (R-seq 2) ⇒ Lemma G (I5) | T1* | S |
| C3-42 | Lemma ADM (d) | The torus side at level k exceeds 200MR_k cells; the 100MR_k cube is a torus cube. | CMP 122 I p. 177; Balaban states no torus size | (a) components must be liftable; (b) any cube, wrapping included | L-319, L-331, Lemma G (I7) | T1* | S |
| C3-43 | (I-W) R-023 | CMP 109 "U_n(V) in the axial gauges" (p. 262) is a representative of the CMP 102 minimal orbit. | CMP 109 p. 262 vs CMP 102 Thm 1 (8), p. 279 | (a) representative; (b) a distinct gauge-fixed object | R-023 | T1* | S |
| C3-44 | R-023 (1.9) variable [I-minor] | Meaning of "∂U" in CMP 99-Regular (1.9). | SOURCES_L1_A_VERIFY l. 98 | two readings; they differ by a (d)-factor | R-023 | T1* | S |
| C3-45 | R-023 cube-class match [I-geo] | For index ≥ 1, CMP 102 (9)–(10) cubes match the CMP 99 class. | CMP 102 p. 279, CMP 99 p. 396 | (a) match; (b) one size shift | R-023 | T1* | S |
| C3-46 | R-023 item (6) M_1 naming | The M_1 of CMP 102 is Balaban's big-block size. | SOURCES_T2_HMINUSC H11 | (a) big block; (b) another block (safe in both) | R-023 | T1* | S |
| C3-47 | H-167 (Sep) property (ii), R-operation case | (Sep) with R′ ≥ 2 holds for T^{(j)} modified by an earlier R-operation; load-bearing. | CMP 122 I p. 178, property (ii): "no large field characteristic functions are included in them" | (A) property (ii) keeps the step-j domains unmodified; (B) earlier R-operations changed them, and (Sep) needs a new argument | R-024; (R-op geometry) residue (i) | T2 | M |
| C3-48 | (R7) background of Δ^{(j)} | Which background the Δ^{(j)} of CMP 122 I (1.25) has. | CMP 122 I (1.25): "written explicitly in (2.21) [III]"; neither reading printed | (R-a) the step-(j+1) background of V_{j+1} (then a background-identity [I] remains); (R-b) U^{(n)}_{k,Z} (needs CMP 102 local-to-global regularity on Ω_{j+1} ∩ Z, [R to R-018]) | R-024, R-016 (Q-048) | T2 | M |
| C3-49 | (Shell), meaning of "~" [I-strong] | One layer means every cube touching the set, corners included. | CMP 119 p. 265: "we surround the union … by a layer of LMR_{k+1}-cubes" | (A) full touching layer; (B) face-adjacency layer: then 4.3(a) gives 2 − 5 < 0 at d = 4 and the p. 179 "admissible sequence" sentence fails | R-024; (R-op geometry) (i), W ≥ LM | T2 | M |
| C3-50 | Q-050 / D3_NEW4 readings | ‖H_{1,k}‖ ≤ O(1)B_3 in local sup form; 0 ≤ ζ_0 ≤ 1; G^c extension of Step 2; n ≤ d(100M)^d; n_p ≤ C_p(100MR_k)^d. | CMP 122 II pp. 356–360 (SOURCES_D3_NEW4_VERIFY (f); FABLE_O3_ALC_VERIFY D.1; SOURCES_L1_G §2) | each: the printed constant vs an M-dependent constant that the canon absorbs | R-016, R-035; Lemma O3-den ⇒ Q-061 ⇒ R-042, R-043 | T2 | M |
| C3-51 | (T2) Re-Q reading (L-365) | (1.9) at complex U bounds Re Q_U from below by c_M‖B′‖². | CMP 122 II p. 358 sentence (C2-24); (1.11) at complex U needs the same reading (SOURCES_W6_RESOLVE_VERIFY §2.4(iii)) | (a) modulus bound on the correction ⇒ Re Q bound; (b) real-U bound only, complex lower bound needs a proof (FABLE_O3_ALC A3.2 derivation, partly checked) | L-365 ⇒ R-denominator ⇒ R-035, Q-061 | T2 | M |
| C3-52 | Lemma T (L-285) shell transfer | The printed large-field factor of (1.79) applies to shell terms inside small-field E-class polymers. | CMP 122 II p. 383 prints it for 1 − χ′ functions only (SOURCES_HTHR2_VERIFY (1): "same mechanism but is not printed. Reduced") | (a) the mechanism transfers to CMP 116 (2.3) signed polymers; (b) the signed expansion breaks the group-integral ≤ 1 step | L-285 ⇒ R-039 | T2 | M |
| C3-53 | H-241 (R1′) residues | (i) C_2–C_4 free upward (joint 1.06 scaling), large-field α_2–α_4, OCR completeness of the C-list; (iii) the T1–T10 nesting list is complete. | SOURCES_HHOL_LF_SPRIME_VERIFY l. 18, 70: "C_4 free upward is itself [I]"; SWEEP_F §4, AFG_VERIFY §5.3 | (a) free parameters chosen large; (b) printed relations fix them | R-039 (H-147 (M-D)) ⇒ R-042 | T2 | M |
| C3-54 | KP tree geometry | The KP tree-graph bound holds with the union metrics d_{k,∪Y_i}, d_{k+1}. | CMP 116 (2.27), (2.30) [V]; union versions [I] (SWEEP_AFG_VERIFY §1, §3) | (a) subadditive on unions, bound transfers; (b) not subadditive, an entropy factor | I8 of R-037, R-044 (W4)-R (Lemma KP-D), R-020 R1 | T2 | M |
| C3-55 | U-A for RG steps | The background of Δ^{(k)} obeys the U_{k+1} bound up to O(ε_ke^{−R_k}). | CMP 109 p. 268, (3.15)–(3.22) (background not named) | (A) U_k(…V^{(k)}), the expansion point; (B) U_{k+1} | R-016, R-024 | T2 | S |
| C3-56 | (R-op geometry) (ii-b) | Convention item inside R-018. | SOURCES_ROP_RESIDUE_VERIFY V-d2 | convention vs the printed silence | R-018, R-024 | T2 | S |
| C3-57 | CMP 122 I p. 192 vs p. 182 | p. 192 assumes L_0² ≤ L/3; p. 182 gives L_0 < L/2 with example (L − 1)/2. | canon N-460 flag | (a) p. 192 (forces L_0 = 2 at L = 13); (b) p. 182. Lemma R7 holds under both | R-024 | T2 | S |
| C3-58 | variant-B local inputs (H-001), residue (iii) | Local propagators on variant-B cubes [P-sketch]. | SOURCES_L1_B_VERIFY §9(a′); SOURCES_ROP_RESIDUE (iii) | (A) variant A: void; (B) variant B: open | R-024 | T2 | S |
| C3-59 | Q-047 | Operator-level Euclidean covariance of C_f, given covariance of G_1, Q, C [P given I]. | SOURCES_M1_SWEEP | (a) covariance holds; (b) the block grid breaks it | R-016 (H-035 (M1)) | T2 | S |
| C3-60 | s-version of (C_f)^{1/2}; H-166 (S_H) normalization | Choice consistent with CMP 116 p. 13. | SOURCES_SWEEP_F §1 | (a) this s-version; (b) another (constants only) | R-016 | T2 | S |
| C3-61 | (H′-def) | H′(Z) is the CMP 116 (2.1)–(2.14) construction with one extra factor O(X_b, B); X_b is one more member of the family covering Y_0. | CMP 119 p. 277; "(2.14)′" not printed (SOURCES_L1_D_VERIFY V29: "CONFIRMED as a reading [I]") | (a) X_b joins the family, χ_{k,Y_0} covers X_b; (b) X_b is outside, a separate cut needed | R-020 ⇒ R-046 ⇒ R-035 | T2 | S |
| C3-62 | (Rd1) | ε_k/g_k ≤ A_0p_0(g_k) on supp χ. | CMP 122 II p. 357 (1.6) vs CMP 119 l. 70 "g·p_0(g)" (SOURCES_JC_SIGMA_VERIFY C9) | (a) factor A_0; (b) factor A_0² (constants only) | (J-c)-σ, R-035 | T2 | S |
| C3-63 | FX_O23 N2 | Plaquettes of U_{k,X_i}(V′V_{Λ_i}) in the R-denominator are O(ε_k). | Inferred from χ_k, CMP 122 I (1.98), M_0 = O(1)B_5M^6 (II p. 378); "[I, verified]" | (a) from χ_k and (1.98) (accepted); (b) from χ(Λ_i) alone (rejected) | Lemma G-1 ⇒ R-043; L-165 (FX-D) | T2 | S |
| C3-64 | FABLE page p. 360 | O3-den uses CMP 122 II p. 360 through one reader only (pp. 356–359, 380–382 now [V]). | FABLE_O3_ALC_VERIFY | (a) as read; (b) a misread constant | Q-061 ⇒ R-042 | T2 | S |
| C3-65 | units θ = δ_k/g_k | The one-bond sphere surface bound uses θ = δ_k/g_k. | CMP 119 p. 269 (3.16), (3.19); support CMP 109 (2.9), CMP 116 (2.33), CMP 119 p. 267 (SOURCES_L1_F_VERIFY §5) | (a) cut on g_kA_k at δ_k; (b) cut on A_k at δ_k | R-037 large field, R-039 | T2 | S |
| C3-66 | (H-α) residue (R3) notation | The "*" bond set; C = identity off {b_0(c)}. | CMP 122 II p. 380 (SOURCES_H_ALPHA_RESIDUE_VERIFY §5.1) | notational alternatives only | R-040, R-037, R-038 (H-120), R-042 | T2 | S |
| C3-67 | K_2 D_j reading ("mild [I]") | D_j consists of connected unions of M-cubes. | CMP 119 definition of D_j | (a) unions of M-cubes; (b) general polymers (larger entropy constant) | R-040 (M_β), R-042 | T2 | S |
| C3-68 | M2′ norm convention | The radial graph for the (1.27) cut uses the operator norm. | SOURCES_B15_M245_VERIFY l. 15: "CONFIRMED up to the [I] norm convention" | (a) operator norm; (b) HS norm (factor √dim) | R-039 M2′ | T2 | S |
| C3-69 | F2′–α link coverage | No ε′ appears on CMP 122 II pp. 377–390. | Images: pp. 377, 380–381, 383, 387, 389; text layer only: pp. 378–379, 382, 384–386, 388, 390 (SWEEP_E §S-98) | (a) none on the unread images; (b) an ε′ on a text-layer page | H-145 (M-B) ⇒ R-041, R-037 | T2 | S |
| C3-70 | W8 route (a) | CMP 119 p. 278 "coincide with the … whole lattice" applies to E-class terms only. | CMP 119 p. 278 bottom (SOURCES_D3W8_VERIFY l. 21: CONFIRMED as a reading) | (a) E-class terms only; (b) literal, all terms (cannot hold for merged R′_k) | F2′ (R-044), R-036, R-037, R-039 | T2 | S |
| C3-71 | R-049 (retired, §6) | R_{K+1} ≥ L for γ < e^{−1/2}, from CMP 119 (2.5). | page reading, no verifier (row R-043) | (a) as read; (b) R_{K+1} < L for some K | R2 of FX ⇒ R-043 | T2 | S |
| C3-72 | R-046 θ reading | κ_eff uses the additive reading (θ = total kept fraction per cycle). | SOURCES_T2_KAPPA2_VERIFY l. 47 | (a) additive: κ_eff stands; (b) ½ per absorption: κ/8, needs a larger κ | R-046 ⇒ R-035 | T2 | S |
| C3-73 | "(4.6)" near CMP 122 I (1.70) | The citation is a misprint. | SOURCES_W6_RESOLVE_VERIFY: "CONFIRMED [I], strengthened" | (a) misprint; (b) a real reference | R-035 | T2 | S |
| C3-74 | σ_0-cover | Covering of the complement of □̃⁴ in OFFSHELL_F2 Theorem S. | OFFSHELL_F2_VERIFY [I] | (a) the printed cover; (b) a project cover | R-010 off-shell | T2 | S |
| C3-75 | I8 (FABLE_HARD l. 77) | No B′-class term survives to the unit scale under K-014. | CMP 122 II pp. 390–391: B′ and the (1.100) restriction printed; absorption not printed (FABLE_HARD_VERIFY §F: UNSUPPORTED as a page fact) | (a) each B′ term of step k is absorbed by the R-operation of step k+1 via (1.101); (b) B′ terms persist and need a unit-scale class | L-323 (H-L6) | IV | M |
| C3-76 | (D) on Ũ^c (FABLE_HARD_VERIFY C-17) | Domain condition (D) holds on the tilde spaces Ũ_k^c(X, α̃_0, α̃_1). | CMP 122 II p. 390 vs CMP 119 p. 260; no file relates the two | (a) same mechanism as (D) on U_j^c (CMP 109 (4.4), p. 263); (b) the tilde spaces need their own analyticity reading | L-323 (b4-R) | IV | M |
| C3-77 | "d and L only" on any domain shape | CMP 99/102 constants hold on large, wrapping and winding domains of the torus. | printed S9–S12 cover Balaban's own domains (SOURCES_L2_L3L14_VERIFY) | (a) cube-local parametrix + walk sum ⇒ any domain (true for u_k, UK_HOLONOMY); (b) the statements cover only the paper's domain class | L-319, H-359 (U-W) item (1) | IV | M |
| C3-78 | (FI_LF) | Walk factors of the R-operation operator of CMP 122 I (1.25) depend only on restrictions to Ỹ^5. | "not written in any project file" | (a) intrinsic; (b) carry global data | L-331 (b4-R) | IV | M |
| C3-79 | (KE′-T*) 8^d inference | Cor. 2.8 needs side > 8M per scale (□̃³ has 8^d blocks), inferred from the 4^d, 6^d pattern. | CMP 96 p. 238: "4^d", "6^d", "next a cube □̃³" (SOURCES_U_ELL_FINAL_VERIFY K7) | (a) 8M suffices; (b) a larger enlargement (still inside 22M by K-032 (Vol)) | (KE′-T*), R-021 (d) | IV | S |
| C3-80 | Cor. 2.8 Q* normalization [P-sketch] | Normalization power of Q*e_{b′} under (2.69). | CMP 96 (1.151), (2.69) | (a) as in (1.151); (b) another power of L^{j′}η (constants only) | (KE′-T*) C_H | IV | S |
| C3-81 | M identification (UK_HOLONOMY_VERIFY rows 11, 14) | The CMP 99 M equals the CMP 109 M of (Vol); □̃^5 is 12M vs 11M. | CMP 99, CMP 109 | (a) same M; (b) different block conventions | u_k discharge, side ℓ > 16M | IV | S |
| C3-82 | "absolute" is torus-free (Lemma U4, S3) | "absolute" = d, L only, hence free of the torus side. | CMP 109 p. 263 "independent of X and j" (omits T); CMP 116 p. 21; CMP 119 p. 263 | (a) torus-free; (b) only X- and j-free | L-319 (supporting) | IV | S |
| C3-83 | Power-of-L reading (Lemma ADM) | M_1 and every R_k are powers of L. | CMP 122 I p. 177: "R_k decreases by the factor L^{−1}" | (a) powers of L; (b) near powers, divisibility fails | Lemma ADM divisibility | IV | S |
| C3-84 | (FI_f) | Sourced walk factors (C_f of H-240, sourced A^f) are one formula on every volume. | SOURCES_D3_NEW4 (1.1); identity "not checked" | (a) local formula; (b) volume-dependent normalization | L-331 (b2), (b4-E/F) | IV | S |
| C3-85 | (Conv_Λ) | Cube cover, ζ_□ and σ_0-cubes inside Λ_{k+1} are restrictions of the whole-lattice ones. | CMP 119 p. 275; "not checked on the [11, 13] construction" | (a) restriction; (b) junction-adjusted normalization | Theorem BDRY ⇒ L-331 | IV | S |
| C3-86 | Λ_j nesting | The Λ_j are nested. | SOURCES_A15_BDRY §2.5 [I] | (a) nested; (b) not nested | Theorem BDRY ⇒ L-331 | IV | S |

## C5 — unproved, not attributable to a source

| no | id | statement | where recorded | used by | first target | diff |
|---|---|---|---|---|---|---|
| C5-01 | K-035 R4 | Attachment of misaligned input domains under the orbit-averaged convention (Avg) [P-sketch]. | SOURCES_SWEEP_F §2; SWEEP_AFG_VERIFY §5.1: "gaps R4 … stay [P-sketch]" | H-141 (Loc) ⇒ R-031, R-006, R-015, R-032 | T1 | M |
| C5-02 | K-035 R5 | (Loc) for π′ ≠ π inside a π-aligned Λ_{k+1} [P-sketch]. | same | same | T1 | M |
| C5-03 | K-035 M_1 | "M_1 not checked [I]" under the (Conv) convention. | ledger row K-035 | same | T1 | S |
| C5-04 | R-006 N3 analytic steps | KP derivative step and dominated differentiation, "standard but unwritten" [R]. | SOURCES_T2_H0_VERIFY §4.3, 5.4 | R-006 (7′) | T1 | S |
| C5-05 | R-006 N5 | Continuity of β_{k+1}(h, ·) at g = 0 by dominated convergence [R]; void if β(h, 0) is defined as the limit (then R-029 carries it). | SOURCES_T2_H0_VERIFY §3–§4, l. 114–116 | R-006 (7′), R-029 (iii) | T1 | S |
| C5-06 | R-032 margin | Λ_{k+1} lies ≥ one cube inside Ω_k [P-sketch]; Z′_k ⊇ Z_k and the cube-size comparison unchecked. | CMP 119 (3.5) p. 265; SWEEP_DE_VERIFY §4.6 | R-032 (Theorem 1 use) | T1 | S |
| C5-07 | R-025 (1.1) exactness | The split (1.1) is exact with the Feynman-type H; checked only numerically (≤ 4e−13; independent H_j agrees to 6e−9). | ledger row R-025; R23_VERIFY §5 "not reread"; H1_ANALYTIC_VERIFY V9 | R-025 | T1 | S |
| C5-08 | R-018 M_1 bookkeeping | Which N-270 entry refers to which M_1. | SOURCES_SWEEP_DE_VERIFY §3.4 | R-018 | T1 | S |
| C5-09 | R-022 (ii) regular-U step | Via A18 Lemma Q in operator-norm form, C_1′ → C_1′(1 + c_M) [P-sketch]. | FABLE_A25_A26_H1 1.4(b) | R-022 | T1 | S |
| C5-10 | R-009 I-d | Count of WC_FULL 4.2/5.3: [P], never verified. | SOURCES_SWEEP_DE_VERIFY §4.10 | R-009 ⇒ G3 | T1 | S |
| C5-11 | H-358(6) rate | Does the input walk rate δ_* = (1 − θ_310)²·¼ε_39 reach the ½δ_0 used by CMP 109 (3.9), (3.17)? Balaban's own s-rule (CMP 116 (1.11)) spends part of δ_0d(ω) and prints no surviving rate. | OFFSHELL_F2_VERIFY V5.5 [I, project-wide] | R-010, R-014 | T1* | M |
| C5-12 | H-358(3) multiscale transfer | s-rule cube count [P relative to (G3)]; the multiscale transfer is [I] (Prop. C remark). | SOURCES_OFFSHELL_F2 Theorem S | R-010, R-014 | T1* | M |
| C5-13 | H-358(7) c_J = L³α_0 | The CMP 99 → CMP 109 J-conversion; a_π and a_F depend on it. | OFFSHELL_H_VERIFY V3.9 [unchecked] | R-005 off-shell, R-010, R-014; canon N-370 | T1* | S |
| C5-14 | H-358(5) unit-lattice V(H_1B′) | Off-shell scalar bounds (1.39)–(1.40) [P-sketch]. | CMP 116 pp. 9–11 | R-010, R-014 | T1* | S |
| C5-15 | Prop. N transfer | Localized H_j^F(B(t)), δH_j^F obey (3.14) and (3.9) [P-sketch]. | SOURCES_OFFSHELL_F2 3.8 | R-010, R-014 | T1* | S |
| C5-16 | B_3^{F,s} placement | Which of N-370, N-380, N-440, N-450 read the localized constant. | OFFSHELL_F2_VERIFY V5.4 [I, not checked] | R-010, R-014 | T1* | S |
| C5-17 | R-010 R2 write-outs | R-terms and C-terms of the CMP 116 lower-order bracket [P-sketch]. | SOURCES_L1_D §2; SOURCES_R010_CC_VERIFY | R-010 | T1* | S |
| C5-18 | R-005 two sketches | The W bound; Δ_{U_k} vs Δ_{U_0} ("likely empty") [P-sketch]. | SOURCES_R005_DD_VERIFY V3.11 | R-005 | T1* | S |
| C5-19 | (G1) of Lemma G (R005_189) | Locality and size of V_0 [P-sketch]. | SOURCES_R005_189_VERIFY | R-005 | T1* | S |
| C5-20 | C′_1(d, L), c_15(d), c_cone(d) | Unprinted (d, L) numbers in c_H (R-047: value of C′_1 unused). | SOURCES_QE_KE_HQ l. 57, 67 | R-001 (H-123 (H_Q)), H-057 (C) | T1* | S |
| C5-21 | C_0^c, c′_2^c | Unprinted slots of the complex CMP 98 Prop. 1. | FABLE_O3_ALC_VERIFY | R-002 (H-071) | T1* | S |
| C5-22 | K_av ≤ 2K′ | Not guaranteed through the slot c_2^c; downstream needs only finite c̄_Γ. | FABLE_O3_ALC_VERIFY corrections | R-002 | T1* | S |
| C5-23 | A1_WALK_FULL 9.1 step 3 | Monotonicity in θ, tagged [I], not shown closed. | A1_WALK_FULL | R-002 | T1* | S |
| C5-24 | (Rγ1), (Rγ2) | Smallness conditions on γ after r, L, B′, D′; "the canon slot of B′, D′ was not located". | SOURCES_P387_REPAIR_VERIFY §8 | Lemma G ⇒ R-013 large field, L-319 | T1* | S |
| C5-25 | R-038 β_j part | Uniform bound on the threshold-history mixed derivative ∂_s∂_wB_j for running-threshold β_j; "Cauchy route not free" (complex w moves sharp thresholds). R-039 and N3 no longer use it; listed open by the ledger. | SOURCES_HTHR2_VERIFY (3) | R-038, H-120 (for running β_j) | T2 | L |
| C5-26 | H-361 (W6*) | Image-level completeness of the danger-class place list (lower bound, division, log of a positive quantity at complex input). CMP 122 II [V]; CMP 122 I has 17 one-reader pages (pp. 175, 180–181, 185–186, 194–200, 202); CMP 109 Sects. 3–5 and CMP 116 pp. 1–22 read once (SOURCES_W6_CHECK_109_116, class empty), no second reader. | SOURCES_W6_RESOLVE_VERIFY §4 | R-035, R-045, H-116; joint with H-360 | T2 | M |
| C5-27 | Lemma D (R024_ISTRONG Theorem R(b)) | Needs a local form of CMP 99 Prop. 2 and a treatment of plaquettes in (7) that cross two components [P-sketch]. | SOURCES_R024_ISTRONG_VERIFY | R-024 | T2 | M |
| C5-28 | (R-op geometry) (ii-a) | Producer cube family and CMP 102 Thm 1 for U_{k,Z}: data condition (7) for the R-operation data not checked. | SOURCES_R024_ISTRONG_VERIFY "Safe status" | R-018, R-024 | T2 | M |
| C5-29 | (R-op geometry) residue (iv) | CMP 99 Thms 3.1–3.3 re-read at block M_1 [P-sketch]. | SOURCES_ROP_RESIDUE_VERIFY | R-024; cited by A1_KERNEL, C_CONDITION, S2_FORM, A3_GAMMA0, CDC | T2 | M |
| C5-30 | W4 §7 vertex interpolation | Interpolated vertices J, 𝒱, R_3 keep Balaban's vertex bounds with constants at most doubled; "Not checked against CMP 109 Sects. 4–5 line by line". | SOURCES_W4 §7 | D2 §6.3 ⇒ F2′ ⇒ R-044 | T2 | M |
| C5-31 | H-001 multiscale A1-W | "Only constants change" on the multiscale cover [P-sketch]. | SOURCES_L1_B_VERIFY §9 | R-024 | T2 | S |
| C5-32 | (S_H^Ω) | p_S ≤ 0 at d = 4 [P-sketch, scaling; value depends on normalization]; any finite p_S is an M-threshold. | SOURCES_L1_B_VERIFY §7 | R-024, R-016 | T2 | S |
| C5-33 | W6_CHECK N2 smallness | (LM)⁴·(source part of α_5) ≤ O(1) and α_5‖C^{(k)}(Z_0)‖ < ½, "which (J-c) does not state"; no canon line. | SOURCES_W6_CHECK_109_116 (CMP 116 pp. 15–17, 20) | R-035 | T2 | S |
| C5-34 | s_0(d) | The (1.26) entropy threshold in Lemma KP-D is not valued. | CMP 116 (1.26) | I8 of R-037, R-044 (W4)-R, R-020 (R1-a) | T2 | S |
| C5-35 | (1.68)–(1.69) moved term | The moved d_Sζ_iP_p term is consistent with later steps: "plausible, not checked". | SOURCES_FX_O23_VERIFY §6 item 1 | Q-061 ⇒ R-042, R-043 | T2 | S |
| C5-36 | O3 re-run at r/2 | Lemma G-1 needs O3 repeated at radius r/2; no file does it. | SOURCES_L1_G_VERIFY §7 | R-043 | T2 | S |
| C5-37 | c_□, c_F | Local BCH constant and (3.11) second-differential constant in C_Π [P-sketch]. | SOURCES_H_ALPHA_RESIDUE_VERIFY §5.1 | R-040, R-037, R-042 | T2 | S |
| C5-38 | canon γ-lines | (J-c′) Φ′(γ) ≤ ½e^{−C_TV M^5}; (C-9), (D1), (D2) of FABLE_O3_ALC A5; 6.5γ²r ≤ ½ at N-490; (C-P5); D.3 edits pending. | FABLE_O3_ALC_VERIFY D.3; SOURCES_A_SIGMA_STAR_VERIFY | R-035, R-042, Q-050 | T2 | S |
| C5-39 | H-360 (U-W)′ sweep | The three image sweeps (SOURCES_UW_SWEEP_109_116, _119, _122) and SOURCES_UW_WRAP: 15 hits spot-checked (11 CONFIRMED, 4 CORRECTED); no sweep verifier. | ledger §4.3; SOURCES_U_ELL_FINAL_VERIFY §7 | Theorem IV hypothesis (4) | IV | M |
| C5-40 | L-319 / (U_ℓ) as a whole | "[P relative to named [R] inputs; returned, not verified as a whole]". | SOURCES_U_ELL_FINAL_VERIFY §7 | L-196 | IV | M |
| C5-41 | L-331 (b3) Step-A large field | "The scale-by-scale history check is not written". | SOURCES_L2_L3L14_VERIFY §4.5 | L-331 ⇒ IV (c) | IV | M |
| C5-42 | (L1) of FX_D_VERIFY | Polydisc form of (S1-pt) plus (Reg); consistency of K-014 with FABLE (b4). | SOURCES_FX_D_VERIFY l. 61 | infinite-volume chain | IV | M |
| C5-43 | (IV-1) ℓ-free trajectory [R] | The input of H-168 (S′) that makes the R-045 constants ℓ-free. | row R-045 | infinite-volume chain (part of L-319) | IV | M |

## C1 — printed with a printed proof (short list)

Balaban:
- C1-01 R-013 = CMP 122 II Theorem 1, p. 355 (proof across CMP 116, 119, 122 I–II), conditional on g_k ∈ ]0, γ]. The Case 2 proof on CMP 122 II p. 387 is invalid as written; SOURCES_P387_REPAIR Lemma G replaces it (C4) and the conclusions stand. The T1* items above sit inside this proof.
- C1-02 CMP 95 Prop. 1.2; (1.66)–(1.67) p. 29 (γ_0, γ_1 "dependent on d only").
- C1-03 CMP 96 Lemma 2.1, (2.2), (2.46), (2.48), (2.59)–(2.61); Lemma 2.4 statement at U = 1 (the (2.126)–(2.127) step is false for L ≥ 10, repaired, Lean SlabCounterexample); Props. 2.5–2.7; Cor. 2.8 (2.149)–(2.151) = H-136 (KE′).
- C1-04 CMP 98 Props. 2, 4, 5 (real), pp. 22–25, 38–42; (64)–(106), (139), (149)–(155), (213)–(214), Prop. 8, Sect. E.
- C1-05 CMP 99 Thm 3.3 (3.42)–(3.47) pp. 397–399 and complex (3.49) p. 403; (3.119)–(3.138) pp. 419–423; Thm 3.11 p. 416; Thm 3.12 (G part) p. 423; sequence independence p. 399; scale-shift rule p. 398. CMP 99-Regular Prop. 6.
- C1-06 CMP 102 (variational) Thm 1 (7)–(10) p. 279 ("a_0, a_1, B_3 depend on d and L only"); (33)–(40), (44)–(46), (55)–(58), (68)–(73), Props. 3–4 (complex clause p. 292), (85)–(96), (130), (137)–(138), (179)–(180), (185)–(188); Sect. G (170)–(172) with CMP 109 (2.3) p. 265, U_k(V′V^{(k)}) = U′_k(V′)U_{k+1} (R-031 residue; one image check advised).
- C1-07 CMP 109 (0.2)–(0.4), (0.14)–(0.19), p. 252 contours, p. 253 (Avg); (1.7), (1.9) (Dom); (1.11) p. 275; (1.22) whole-lattice β; H-040 = (2.12) p. 268; (K1) p. 268; p. 259 coupling sentence; Sects. 3–5 bounds as printed, incl. (4.5), (4.14), the marginal cancellation p. 298, Lemma 4 (3.53) p. 280.
- C1-08 CMP 116 pp. 5–7; (1.36) p. 9 (proof printed; j-uniformity of its constants is C2-02); §2 (B1–B23 + 4), Lemma 2, (2.5)–(2.6) p. 12, (2.13) Ursell, (2.14)–(2.38), (2.27), (2.30); (C1)–(C5) pp. 18–21; CMP 109 Thm 3 as completed in CMP 116 §2.
- C1-09 CMP 119 (2.6)–(2.9) [as printed], (2.12)–(2.13), (3.16), (3.19), (3.32), p. 245.
- C1-10 CMP 122 I p. 183, (1.60)–(1.62), (1.70) p. 192, (1.74); CMP 122 II (1.2)–(1.11), (1.73)–(1.79) pp. 380–383 (U-free right side of (1.79)), (1.77)–(1.78) block bound (p_1 misprint), (1.97), (1.99) p. 390.
- C1-11 Printed torus-independence sentences S1–S18 (CMP 99 p. 423; CMP 102 pp. 303, 305; CMP 119 pp. 244, 245, 261, 263, 264; CMP 122 II pp. 356, 380).

Other authors:
- C1-12 Kotecký–Preiss, CMP 103 (1986) 491–498 (Theorem IV item (3), Lemma KP-D, I8, R-044).
- C1-13 X-004 Cammarota, CMP 85 (1982) (R-043).
- C1-14 X-002 Osterwalder–Schrader II growth condition (H-116, L-329); OS II not re-read.
- C1-15 X-003 reflection positivity of the Wilson action, Osterwalder–Seiler 1978 (L-327); text not fetched.
- C1-16 X-005 Savvidy, Phys. Lett. 71B (1977) 133 (R-027).
- C1-17 R-027 textbook facts (Liggett 1968 invariance principle, Feller XIII.1, Bessel asymptotics, BCH, Feynman–Kac/Mehler, Doob L⁴), SOURCES_T2_MPT_REST_VERIFY §8(7).
- C1-18 CMP 89 Sect. 5 (decay by conjugation with e^{⟨a,·⟩}), cited by CMP 96 p. 237 for δ_1, δ_4; used by (KE′-T*) and L-319. FLAG: CMP 89 is not in balaban/, so the printed proof is not checked here.
- Not binding: X-001 Lüscher–Weisz (5.7) (Route B only).

## C4 — project lemmas proved and verified (ids only)

L-001, L-005, L-009, L-017, L-019, L-024, L-039, L-109, L-111/L-127, L-125, L-130, L-162, L-165, L-174 (G3 = N2), L-182, L-183, L-191, L-207, L-210, L-211, L-219, L-226, L-232, L-242, L-249, L-250, L-252, L-253, L-257, L-261, L-266, L-271, L-281, L-284 (c′), L-285, L-317, L-320, L-321–L-330, L-363, L-365, L-371; R-004 (full proof), R-011, R-012 (closed list), R-015 (f), R-017 (r = 1), R-026, R-030, R-031, R-032 (a)–(c), R-034 (i)–(iv), R-044 (W4)-R; H-002, H-035, H-047, H-057 (C) reduction, H-071, H-072, H-089 (C-tr), H-119, H-123, H-141 (Loc), H-143, H-145, H-168, H-169, H-180 repair, H-216, H-303, H-304, H-306, H-307; Q-048, Q-050, Q-059, Q-060, Q-061; THM37_FULL, THM39_FULL, THM310_FULL, WG-G; Theorem 189, Theorem 189′, R005_DD Theorems Δ/DD, OFFSHELL_H Theorems E, F, OFFSHELL_F2 Theorems W, S, H, Prop. C; P387 Lemma G, Prop R, Cor G1, Cor G2 (volume form), (I5)–(I7), Lemma ADM; Lemmas J1–J3, Prop. J, Prop. Σ-B, Lemmas G-1–G-4, KP-D, I36, O3-den, ND, E, R7, CC′, U1, U3, KE, D6, PB, S, W1, WRAP, DEF, C1(iii′); (R-seq 1) net form, (R-seq 2), Claim L_G, (KE′-T*); N1, N6-off, N7 slot chain (D0)–(D4); D1, D2C Lemma U, M2′, M4, W_j/T_j split, Λ_j item; H2_CERTIFY P4, P5; (I3); (Gap_f); S2 (G, G_1); SOURCES_P254_TRANSFER (R4); SOURCES_A3_SIGMA; R-Δ2 Schur step; HMINUSC K2/K4; H_ALPHA_RESIDUE Lemma 2; K-047.
Verified only at [P-sketch] level relative to listed inputs: H-047, N6-off (both relative to R-013, H-040, N9), L-024 (given E_0), L-363 (glue).
Computer trust for R-025 (H-119): python-flint arb, IEEE rounding, Lean native_decide.

## Conventions (Group C; no hidden claim, not counted)

K-003 (L = 13 inside odd L > 11; loses generality), K-004 (SU(2), d = 4), K-018 (β_0 fixed before γ; R-048 page reading), K-023 (any shooting solution; limit points need not be unique), K-001, K-002, K-011, K-014, K-017, K-024, K-033 (main part), K-035 (Conv/Avg), K-036 (Det′), K-038 (Enl), K-044 (also C3-36), K-045, K-050; the A_min pairing; q_0 := p_0 + 1; H-130 (I-lin); the α_2–α_4 (γ_2) scaling; the cut (2.9) for V1 (Balaban's alternative cut g_k/γ_k ε_1 of CMP 109 p. 266 makes V1 fail); the Feynman-type gauge for R-025.

## Not counted: superseded or not binding

Superseded printed assertions (a verified project write-out replaces each one): CMP 99 p. 422 for R-001 (L-125) and R-002 (L-017); CMP 99 Thm 3.15 p. 432; CMP 116 p. 16 "R_2 satisfying (2.16)" (L-019); CMP 99 p. 428 "we can prove it … with an arbitrary configuration U" (R-004 full proof); CMP 99 Thms 3.7, 3.9, 3.10 sketches on Balaban's domain class (THM37/39/310_FULL); CMP 102 p. 308 (189) on-shell (Theorem 189; off-shell = H-358); CMP 109 p. 271 (3.9) derivatives on-shell; CMP 109 pp. 263–264 Z^d limit and "We will investigate other properties in a separate paper" (L-024); CMP 116 p. 15 "The general case is handled by a perturbative argument" (L-130, L-242); CMP 119 p. 278 "do not depend on Λ_{k+1}" (L-024, H-141, (f)); CMP 109 p. 253 (R-022) and p. 275 (R-023) transfer sentences (verified reductions; their residue is listed above); CMP 109 p. 298 deferral of Thm 3 to CMP 116 §2 (printed there).
Not binding: CMP 119 (2.6) p. 255 "β_0 can be chosen arbitrarily small" (replaced by L-001 + K-018); GGAIN c1 (∂_g on R^{(k)}; alternative source of 7′ only); (R1′) through D3 (viii) (not adopted); (J-s) tilt bound and box constant (backup only); the [N] β_1(L) slope tension of R-027 (L-009 needs only sup_j \|B_c^{comp}(j)\| < ∞); BETA_FP_M Prop. 4.4 printed rate O(\|f\|³ log); R-034 (ii) below j_1 (needs H-248 (S3w), unused); R-033 Route B items; Lemma h_K locality (inert under K-012); γ_1^N ≈ 243(K_E + 648) value; OFFSHELL_INNER repair (1) (h = F everywhere, "not established, not refuted") and reading (ii) ln ℓ growth (reading (i) removes both).
Outside every target: (NT), H-339 (NT4); L-332–L-334 (blocked).
