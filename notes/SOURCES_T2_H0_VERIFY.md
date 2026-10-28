IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_H0_VERIFY — item H0, VERIFY

Date: 2026-10-28. Author: Claude (headless verifier session). Status: complete.
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). reports/ONLINE_SWEEP.md not read.

Read list (filled in as read): SOURCES_T2_H0.md (full); see §0 for the rest.

## Plan
0. Read list and method.
1. Check (1): printed wording of the inductive assumption, CMP 109 pp. 263–264 (page images).
2. Check (2): j-uniformity and history-uniformity, constant by constant, against GGAIN §4, GGAIN_LF §7, NONMONO §3.
3. Check (3): "first-derivative covered" not silently extended to g = 0 or higher derivatives.
4. Check (4): residue list N1–N9: completeness and tags.
5. Check (5): consequence for T1; which A5 parts T1 still needs; can A5 be rewritten "[reduced, residue X]".
6. Grades (one line per numbered claim of SOURCES_T2_H0.md) and SUMMARY.

## 0. Read list and method

Read in this session.
- SOURCES_T2_H0.md (full, 205 lines).
- SOURCES_GGAIN.md §1–§7 (full); SOURCES_GGAIN_VERIFY.md (full).
- SOURCES_GGAIN_LF.md §1, §2, §6, §7, §8 statement, §10; SOURCES_GGAIN_LF_VERIFY.md (full).
- SOURCES_GGAIN_NONMONO.md (full); SOURCES_GGAIN_NONMONO_VERIFY.md (full).
- SOURCES_SM.md l. 55 (C_Π), l. 95 (§5.1), by grep.
- TRUST_LEDGER.md rows A2, A3, A1w, A5, A7, A8, A10, A14, A15, A17, A18, B7, C19; l. 125–136 (DAG, minimal sets). R2_VERIFY.md row 12 (grep).
- SOURCES_T2_G2_VERIFY.md SUMMARY line only (for the A15 status).
- Balaban page images read here: CMP 109 p. 256 (PDF 8), p. 257 (PDF 9), p. 259 (PDF 11), p. 263 (PDF 15), p. 264 (PDF 16); CMP 116 p. 9 (PDF 9), pp. 20–22 (PDF 20–22); CMP 119 p. 259 (PDF 17), p. 278 (PDF 36), p. 279 (PDF 37).
- Balaban text layers: CMP 109 l. 340–380 (p. 256), l. 525–560 (p. 259), l. 1125–1135 (p. 271–272, (3.7)–(3.8)), l. 2485–2500 (p. 298).
Not read: CMP 122 II p. 390 image (H0 §5.3 quotes it; I check it only through GGAIN_LF_VERIFY V1, which read it). KUNIF files not re-read; their cited results are taken from KUNIF_VERIFY as cited by H0 and the ledger.

Method. I rederive each H0 claim from the sources above. Each claim gets a grade in §6. I number H0's claims by its own labels: 1.1–1.4, 2.1–2.6, C1–C15, 3.16, 4.1–4.5, 5.1–5.5, Steps 1–5 of Proposition H0-red, R1–R4, N1–N9, and the three closing paragraphs of H0 §7 (NR = "not in residue", ET = "effect on T1", FB = "fallback"). No numerics were needed; no script was written.

## 1. Check (1): the printed wording of the inductive assumption

1.1 CMP 109 p. 263 [V, page image PDF 15]. Verbatim: "We assume that the function E^{(j)}(X, g_{j−1}, U, J) is defined and analytic on the space U^c_j(X, α_0, α_1), with some positive, absolute constants α_0, α_1 (i.e., constants independent of X and j). It depends on the configurations restricted to X, i.e. on (U, J)|_X. It is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic), with a positive, absolute γ. There exists a constant E_0 such that |E^{(j)}(X, g_{j−1}, U, J)| ≤ E_0 exp(−κd_j(X)) (1.18) for M ≥ M(κ), γ sufficiently small, and for all configurations (U, J) ∈ U^c_j(X, α_0, α_1)."
What is said about j.
- The gloss "absolute = independent of X and j" is printed. It is attached to α_0, α_1. The word "absolute" is also applied to γ.
- E_0 is "a constant". It has no index j. It is NOT called "absolute". The sentence does not say "independent of j" for E_0. The absence of an index is the only printed evidence.
- No bound on any g-derivative of E^{(j)} is stated. Only "C^∞ … (or analytic)".
What is said about the history.
- Nothing. The arguments list shows only g_{j−1}. The page does not mention g_0, …, g_{j−2}.
- Two other pages state the history dependence. CMP 109 p. 256 [V, image PDF 8]: "The function E_k depends also on the effective coupling constants g_0, …, g_{k−1}." CMP 109 p. 298 [V, text layer l. 2496–2498]: "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants."
- So the C^∞ clause is a statement about the own slot at a fixed (unnamed) past. No uniformity over pasts is printed.
What is said about g = 0. The interval is the closed [0, γ] for both E^{(j)} and β_{j+1}.

1.2 CMP 109 p. 264 [V, page image PDF 16]. Verbatim: "It is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives. We will investigate other properties in a separate paper." β_{j+1}(g_j) is defined by (1.20)–(1.22) from E^{(j+1)}(g_j, B) and a limit "as T^{(j+1)} ↗ Z^d. This limit exists by the localized representation (1.7)."
- No constant is named. "Independent of j" is not printed. The history is not mentioned.
- The word "uniformly" is grammatically ambiguous. H0 reads it as attached to "on this interval". That is the natural reading, but it is a reading [I], not a page fact. The page fact is the negative one: no j-uniformity is printed. R2_VERIFY row 12 ("Not stated explicitly on p. 264") is right.

1.3 Theorem 3, CMP 109 p. 264 [V, image]. "There exist positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1 such, that if κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ for k = 0, 1, …, K, then the sequence of actions A_k, defined inductively by the small field renormalization transformations (0.17)–(0.20), satisfy all the inductive assumptions described between (1.1)–(1.22). The constants ε_0, ε_1, α_0, α_1 depend on M and satisfy numerous restrictions, which will become clear in the proof. The constant γ depends on all other constants."
- The seven constants are chosen before K and before the sequence. So they are free of K, j, and the sequence. H0 2.2 states this correctly.
- E_0 is not in the list. H0 2.2 states this correctly.
- The hypothesis is 0 < g_k (open at 0), while the conclusion includes C^∞ on the closed [0, γ]. H0 notes the open endpoint correctly.
- The theorem covers only sequences generated by (0.17)–(0.20). (0.20) is the coupling recursion 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k) [V, CMP 109 p. 256 image]. So Theorem 3 says nothing about pasts that violate (0.20). H0 4.3 makes this point (B7).
- Addition not in H0. CMP 109 p. 259 [V, image PDF 11], right after Theorem 1: "It is interesting to notice that we do not assume any special asymptotic behavior of the coupling constants, like asymptotic freedom. Hence in principle arguments could be applied to models with different behavior of running coupling constants". This is Balaban's printed statement that his small-field induction uses only g_k ∈ ]0, γ]. It supports H0 4.2 better than the text-layer grep H0 uses. It is still a statement about sequences generated by some recursion, not about arbitrary slot vectors; B7 remains.

1.4 Verdict on check (1). H0 1.1, 2.1, 2.2 quote the pages correctly. Every quote I checked matches the image. One tag is too strong: the attachment of "uniformly" is [I], not [V]. H0 says correctly that E_0 is unindexed and that it is not in Theorem 3's list. H0 does not claim that Balaban calls E_0 "absolute". Good.

## 2. Check (2): j-uniformity and history-uniformity, constant by constant

2.1 The formula audited. GGAIN §4.4 [read]: S_0 = O(1)C_3[K_1α_4^{−1/2}(1−r)^{−1} + O(1)‖χ̂′‖_∞γ_2^{−1/2}], C_3 = 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1}; GGAIN §4.5: C_β = C_ΠS_0. CMP 116 p. 20 [V, image]: "We define the constant C_3 = 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1." H0 copies both formulas correctly. GGAIN_VERIFY grade 2 confirms S_0 has no 1/g_k and no ε_1. I re-checked: ε_1 enters ρ̄_V and ρ̄_χ as ε_1^{−1} and is cancelled by the prefactor C_3ε_1 [P, arithmetic].

2.2 E_0 (H0 C1, 2.4). CMP 116 p. 21 [V, image]: "Next, we assume that O(1)C_3ε_1 ≤ ½E_0. In fact this assumption is unessential, because the constant C_3ε_1 is small anyway, and we can take E_0 such that the assumption is satisfied." Then, for the term log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1): "The expression localized in X satisfies the bound (I.1.18) with κ replaced by δ_0M, and with an absolute constant instead of E_0. We define ½E_0 as equal to this constant, and we take M sufficiently large, so that δ_0M ≥ κ."
- C_3 is proportional to E_0. So the closure condition divides to O(1)·4(L+2)^4C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1}·ε_1 ≤ ½. It contains no k. H0's division is right [P]. (Balaban's sentence "we can take E_0 such that" is loose, since E_0 cancels; the operative condition is on ε_1.)
- E_0 itself is fixed by the log Z^{(k)} term: ½E_0 := "an absolute constant". So E_0 is j-free if that constant is. That constant comes from the random walk expansion of Z^{(k)} ([16] (63)), i.e. from the uniform-in-k covariance bounds. H0 C1 cites the sentence; H0 C8 cites A7/A1 for δ_0. The link "the log Z constant is j-free because A7/A1 are uniform in k" is not written in H0 C1 explicitly, but C1 + C8 together cover it. CONFIRMED.
- H0 calls the closure "[P from the quoted text]". More exactly: it is [V] that the printed condition has no k; that the induction then closes is Balaban's printed proof, which rests on its own inputs (see §4, N6). H0 says this in N6. CONFIRMED.

2.3 C_1, C_2, q (H0 C2). CMP 116 p. 9 [V, image]: "There exist absolute constants C_1, C_2, q, for which |V′_k(Y, U, J, B)| ≤ E_0ε_1C_1M^q exp C_2κ_1 exp(−(1−2δ)κd_k(Y)). (1.36)". The word "absolute" is printed. The gloss "independent of X and j" is printed in CMP 109, not in CMP 116. Using it in CMP 116 is a reading [I]. H0 tags it "[V + I]". CONFIRMED.
Caveat H0 omits. Lemma 1 summarizes CMP 109 §3 and CMP 116 §1. Those use the background-field bounds of CMP 99/102. TRUST_LEDGER A18 records: "k-uniformity of the CMP 102 constants C_2, C_4, B_0 [I] (SOURCES_MA2_VERIFY l. 41)". CMP 109 (3.7)–(3.8) cite "Proposition 9, (190) [15]" (= A4) [V, text layer l. 1129–1130]. So the "absolute" of (1.36) hides the k-uniformity of A4/A18 constants. Under N8(i) this is covered by Balaban's word. But it is one more place where j-uniformity is Balaban's word, not a checked fact. It belongs in the residue (§4).

2.4 The sum over earlier scales (H0 C3). CMP 116 p. 9 [V, image]: "The first term under the exponential gives also the factor L^jη, which controls the sum over j", with (1.31) "d_j(X) ≥ (L^jη)^{−1}d_k(X_0)". So the input sup in (1.36) is a geometric sum over earlier scales, free of k. CONFIRMED. H0's [I] on "the geometric constant is the one absorbed into C_1M^q e^{C_2κ_1}" is honest; the [I] item is not carried into the residue list N8 (see §4).

2.5 κ, κ_1, M, δ, L (C4). δ = (1/10)(1 − 2L^{−1}) [V, CMP 116 p. 21 image: "(1 − 10δ)½L = 1, or δ = 1/10(1 − 2L^{−1})"]. κ, M: Theorem 3 [V]. CONFIRMED.

2.6 α_0, α_1 (C5). CMP 109 p. 263 [V]. CONFIRMED.

2.7 α_4, α_6, γ_2, α_5 (C6). CMP 116 p. 20 [V, image]: "α_5 = O(1)e^{−1/3δ_0M} + O(α_0 + α_1) + O(1)α_4 + γ_2. We assume that (LM)^4α_0, (LM)^4α_1, (LM)^4α_4, (LM)^4γ_2 are bounded by a constant independent of M, for example by 1." So α_4, γ_2 ≤ (LM)^{−4}: M-dependent, j-free. Lemma 3 (same page): "Under all the above restrictions on the constants M, κ, κ_1, α_0, α_1, α_4, α_6, γ_2, γ, ε_1" — the list has no k. CONFIRMED.

2.8 Gaussian condition and δ_0 (C7, C8). These need ‖C^{(k)}‖ and the decay rate δ_0 uniform in k. TRUST_LEDGER A3: FULL PROOF, verified, uniform in k. A7: "asserted (Balaban), used as premise; reduced by us [R] to A1 + A18". A1: verified reduction (ledger l. 9). H0's tags match the ledger. CONFIRMED. Note: the A7 reduction runs through A18, which carries the [I] on k-uniformity of the CMP 102 constants (2.3 above). H0 does not say this.

2.9 C_Π (C9). Definition: SOURCES_SM l. 55 [read]: "C_Π := the norm of E ↦ β (1.20)–(1.22) on the (1.18) sup norm: Cauchy in B for the second derivative (radius set by α_0) times Σ_x x² e^{−κ′d}." H0 calls j-freeness [I] by scale invariance. Upgrade available: CMP 109 p. 257 [V, image PDF 9]: "Domains from different classes, i.e. classes corresponding to different indices j, are connected by scaling transformations", and d_j(X) is measured after rescaling "so that cubes from π_j become unit cubes". So the localization geometry is scale-invariant [V]. The Cauchy radius in B uses α_0, which is j-free [V]. What remains [I]: that the conditions (i)–(iii) of U^c_{j+1} give a B-ball of j-free radius after rescaling. CONFIRMED, with the partial upgrade.
Missing step in H0 (fillable). β_{j+1} is an infinite-volume limit (CMP 109 p. 264, "as T^{(j+1)} ↗ Z^d"). GGAIN's derivative bound is for finite volume. A uniform Lipschitz bound |β^T(g) − β^T(s)| ≤ C_β|g − s|, with C_β free of T, passes to the pointwise limit β = lim β^T [P, elementary]. So the interchange costs nothing, provided GGAIN's constants are volume-free. They are: all of S_0's ingredients are volume-free (Balaban's bounds are per localization domain). H0 does not state this step. It should. No change in the conclusion.

2.10 O(1)'s, K_1, C_P, a_1 (C10, C11). Balaban's convention; unindexed. [I] as H0 says. CONFIRMED.

2.11 r, χ̂ (C12). Fixed choices [P]. CONFIRMED. Addition: GGAIN_LF §6 shows that if the β-relevant integral used Balaban's later running small-field cut ε_k = g_kp_0(g_k) (CMP 119 (2.4)) and the cuts χ′_j, χ′, the surface term would have profile g^{−1}·polylog·e^{−c p_0(g)} instead of e^{−cε_1²/g²}. GGAIN_LF §6.2 shows this is still bounded uniformly on (0, γ] (condition U3, pointwise in x). GGAIN_LF_VERIFY V2: if E^{(k+1)} equals the [I] terms, those cuts are not inside the β-relevant integral, and §6 is "a harmless over-cover". H0 does not mention this; its silence is correct under A15 (N9), but the dependence on A15 should be stated here too.

2.12 ε_1 (C13). Cancels; in Theorem 3's list [V]. CONFIRMED.

2.13 KP derivative step (C14). GGAIN §4.4 (ii) [read]: the margin conditions "α_6 → α_6/2, α_5 → α_5 + O(α_4), δ → δ + δ′" and "No new smallness condition on ε_1 or γ". These are step-free. [R, standard] as H0 says. CONFIRMED.

2.14 log Z^{(k)} term (C15). In B variables the Gaussian measure and normalization are g-free (GGAIN §3.3, citing SM §4.1 and N1_VERIFY Part 1 claim (2)). So ∂_g of this term is 0. [I] as H0 says. CONFIRMED. This term is also the whole of β_{k+1}(h, 0+): at g = 0 the exponent vanishes (K1), so only log Z^{(k)} remains; it is history-free because the covariance is. This supports H0 Step 4.

2.15 History-uniformity, per constant (H0 §4). GGAIN §4 (G1–G3, B2-unif, §4.5) uses only g_k, ε_1, the input sup E_0 (via v and C_3), and fixed constants (NONMONO_VERIFY V2, CONFIRMED there; I re-read GGAIN §4 and agree). No g_j, j < k, appears. So the only history question is whether the input sup holds on the given past. H0 4.1 is right. CONFIRMED.
- Input sup on an arbitrary past (H0 4.2). The CMP 116 step uses only g_k (and γ). I add the printed support of 1.3: CMP 109 p. 259, "we do not assume any special asymptotic behavior of the coupling constants". Together with the text-layer grep this makes "the sup induction uses only the own coupling" [V + I]. The remaining gap is definitional: off-trajectory pasts violate (0.20), so the chain must be defined (B7). H0 says this. CONFIRMED.
- One point H0 does not mention. The step input E_k contains the counterterms −β_j(g_{j−1})A(·) (CMP 109 (0.23) [V, p. 256 image]; CMP 119 (2.25) [V]). On an arbitrary past their coefficients are the slot values β_j(h). Their sizes are bounded by sup|β_j| ≤ C_ΠE_0 (H0 2.5), so no history dependence enters the constants. How these counterterms and the plaquette coefficient are booked off the trajectory is part of B7's definition. No change in the conclusion.
- NONMONO §3 cross-check. Lemma C_β-NM gives C_β′ = C_β for every past on the literal reading, with the side condition 4γ^{κ_0} ≤ E_0 and E_0 + 4γ^{κ_0} ≤ 2E_0 (NONMONO_VERIFY V3 correction). H0 uses the pure-chain reading (A15) and keeps the literal reading as fallback. Both readings give the same constant. CONFIRMED.

2.16 GGAIN_LF §7 cross-check (H0 5.3). H0 says GGAIN_LF §7's conditions U1–U4 are pointwise in x*_k ≤ γ, hence uniform in k. That matches GGAIN_LF §7. But H0 omits two restrictions of GGAIN_LF that matter for history:
- GGAIN_LF §7, last sentence: the earlier-scale factors "carry p_0(x*_h) ≥ p_0(x*_k) (x*_h ≤ x*_k), which only helps". This uses the trajectory order x*_h ≤ x*_k. It is a monotonicity use.
- GGAIN_LF §8 is stated only for |g_k − x*_k| ≤ ρ_0x*_k/2, around a frozen point, with thresholds frozen at x*.
So GGAIN_LF could NOT replace the small-field route for (7′) on arbitrary pasts and arbitrary g ∈ (0, γ]. H0's conclusion "GGAIN_LF is not needed for (7′)" holds under A15. Without A15, the large-field route would fail to give history-uniformity as written. So A15 is load-bearing a third time (after H0's two uses in N9). CORRECTED (sharpened): H0 5.3 is right in its conclusion but should state that GGAIN_LF is not history-free and is local in g, so it is no fallback.

2.17 Verdict on check (2). No constant grows with j. No constant depends on the past, given the input sup. I found no counterexample. The j-audit rests on Balaban's word "absolute" in four places (C_1, C_2, q; the (1.39) constant; the log Z constant defining E_0; the O(1)'s), and on A3/A7/A1/A18 for the covariance. H0 lists the first group under N8 and the second under N4, but omits A18's own [I] on the k-uniformity of CMP 102 constants, and A4.

## 3. Check (3): "first-derivative covered" is not extended silently to g = 0 or to higher derivatives

3.1 Higher derivatives. H0 never claims a bound on ∂_g²β or higher. It says so four times: §3.16 ("What (a) does NOT give: a j-uniform bound on higher g-derivatives"), R1, §5.5 bullet "Balaban's C^∞ and 'all derivatives': not needed", Ledger "Open". GGAIN §4.5 and §7 say the same ("Higher derivatives … are not proved here"). No silent extension. CONFIRMED.

3.2 The endpoint g = 0. H0's target (7′) is stated for g ∈ ]0, γ] with the comparison value β_{k+1}(0) (1.2). The proof handles g = 0 only through a limit:
- Step 3 gives a Lipschitz bound on (0, γ] from the derivative bound and the mean-value theorem [P given N3]. Correct: C¹ on (0, γ] with |∂_g| ≤ C_β gives the Lipschitz bound on every [s, g] ⊂ (0, γ].
- Step 4 deduces that β_{k+1}(h, 0+) exists, by the Cauchy criterion [P]. Correct: a Lipschitz function on (0, γ] is uniformly continuous and extends continuously to 0.
- Step 4 then identifies β_{k+1}(h, 0+) with the one-loop value by continuity at 0 (N5, [R]) and (K1) (CMP 109 p. 268). This is tagged [R], not [P]. Correct.
- H0 does not claim C¹ at 0 (R1; Ledger "Open": "C¹ at g = 0"). CONFIRMED.
One point to make explicit. Step 4 actually needs less than N5. The Lipschitz bound alone gives |β(h, g) − β(h, 0+)| ≤ C_βg. N5 is needed only to say that β(h, 0+) equals the value β(h, 0) of the g = 0 step (the Gaussian, one-loop quantity), and then (K1)/C15 make it history-free. If β_{k+1}(h, 0) is DEFINED as the limit (the option recorded in NONMONO §4 and LEMMAS_DE_VERIFY §3 item 3), N5 reduces to the identification of that limit with the one-loop number, i.e. to V1/B5, which H0 R2 already places outside A5. H0 states both pieces; it does not merge them silently. CONFIRMED.

3.3 The small-field restriction. GGAIN_VERIFY §7 (ii): GGAIN covers the small-field step only. H0 removes the large-field part by A15 (β sees only [I] E-terms). It says so (N9, §5.2–5.4). Not silent. CONFIRMED, with the sharpening of 2.16.

3.4 The open endpoint in Balaban. Theorem 3 assumes 0 < g_k; A5 claims smoothness on [0, γ]. H0 notes the open hypothesis (2.2) and claims nothing at 0 beyond the limit. CONFIRMED.

3.5 Verdict on check (3). No silent extension. The first-derivative bound is used on (0, γ] only; the endpoint is a limit plus a named [R] input; higher derivatives are declared unproved and unneeded.

## 4. Check (4): the residue list N1–N9

4.1 Item by item.
- N1 (GGAIN G1, G2, B2-unif minus G3). Tag [P in SOURCES_GGAIN; CONFIRMED in GGAIN_VERIFY grades 1, 2] is right. GGAIN_VERIFY grade 2 adds that (M_r) is needed for the P^{(k)}-part as well; that sits in N3. Label: χ_k is CMP 109 (2.9) (GGAIN_VERIFY §3). Correctly tagged.
- N2 (G3). Tag [R], open as a rigor item: right. The sharp-cut constant O(γ_2^{−(n_b+1)/2})ε_1^{−1} matches GGAIN_VERIFY grade 6. GGAIN_LF §6.3 records the coarea input as (Q) with c_−, reduced to ‖C*Δ_kC‖ ≤ γ_1 (A7). H0 does not name (Q); it should, since (Q) is the concrete content of "the one-bond marginal". Correctly tagged; content slightly underspecified.
- N3 ((M_r); KP derivative step; dominated differentiation). Tags [R]: right. Omission: (M_r) is the margin version of TRUST_LEDGER A17 ("supp χ_k ⊂ {g_k|B|_Y < ε_1} … implicit"), and shrinking the threshold is ledger choice C9 ("CHANGES THE CONSTRUCTION (A13 must hold for the changed construction)"). H0 should cite A17 and C9. Same for the smooth χ̂ route of N2 (also a construction change).
- N4 (A3, A7, A1). Tags match the ledger. Omission: A7's reduction runs through A18, and A18 carries "k-uniformity of the CMP 102 constants C_2, C_4, B_0 [I]". That [I] is a j-uniformity item. It should be listed (here or in N8).
- N5 (continuity at g = 0; (K1)). Tags right ([R]; (K1) [V via KUNIF_VERIFY S8]).
- N6 (off-trajectory sup induction). Tag [R] with grep [I]: right in kind. Two corrections. (i) The printed support is stronger than a grep: CMP 109 p. 259 [V], "we do not assume any special asymptotic behavior of the coupling constants". (ii) The list of Balaban's own inputs of the sup induction is incomplete. H0 lists "A1, A1w, A2, A3, A7, A8, A10 (TRUST_LEDGER l. 136)". The ledger l. 136 lists, inside A13, also A4, A14, A17, A18. The small-field sup induction itself uses: A4 (CMP 109 (3.7)–(3.8), "Proposition 9, (190) [15]" [V, text layer l. 1129–1130]); A14 (CMP 109 p. 280, the closure that recovers E_0 in the CMP 109 §3 part, constant unprinted); A17 (CMP 116 Lemma 1 (1.34)); A18 (regular-class identification, across CMP 109/116). So N6 should read "A1, A1w, A2, A3, A4, A7, A8, A10, A14, A17, A18".
- N7 (B7). Open, definitional, already in T1: right.
- N8 (readings). Tag [I]: right. Incomplete: H0's own [I] items C3 (geometric constant of the earlier-scale sum absorbed into C_1M^q e^{C_2κ_1}) and C15 (log Z^{(k)} term g-free in B variables) are not listed in N8 or anywhere in §7. Add them. Also add A18's k-uniformity [I] (see N4). C9 can be partly upgraded to [V] by CMP 109 p. 257 (scaling between classes D_j).
- N9 (A15). Tag "printed by Balaban without proof; already in T1": partly out of date and incomplete. The ledger row A15 now reads "asserted (Balaban), printed for the small-field terms without proof …; the R-term part is not covered and cannot hold literally for terms built from merged R′ inputs (→ B8) [reduced (R): SOURCES_T2_G2 + VERIFY — Q̃ surjectivity, (Gap_f), averaging analyticity]". H0 uses exactly the printed small-field part (CMP 119 p. 278 [V, image here]: the terms for X ⊂ Λ_{k+1} "do not depend on Λ_{k+1}, and coincide with the corresponding terms arising from the expressions defined on the whole lattice, i.e. in the framework of [I]"). That use is legitimate. But H0 should quote the ledger caveat, because H0 §4.4 needs "β's chain has only [I] (pure) inputs", and the caveat says the identification cannot hold literally if merged R′ inputs feed the E-terms. H0's claim therefore rests on Balaban's p. 278–279 booking (R-induced pieces go to R″/R, p. 279 [V]) being the whole story. Load-bearing count: three uses, not two (2.16 adds: without A15, GGAIN_LF is not a history-free fallback).

4.2 Completeness. Beyond the omissions above, I checked whether any step of Proposition H0-red uses an input not in N1–N9:
- Step 2, K-freeness "by KUNIF": KUNIF item 9 is closed and verified (ledger l. 129); it rests on A15 = N9. Not a new input, but it should be named in the residue as "closed".
- Step 2, infinite-volume limit: needs volume-free constants (true of N1's constants) and the elementary fact that Lipschitz bounds pass to pointwise limits [P]. Not a new input.
- Step 1, base case "Wilson action (no E-terms)": CMP 109 p. 256 [V]: "In the first step the integral (0.17) yields the action A_1 = −(1/g_0²)A^{L^{−1}} + E^{(1)}". Correct.
- Step 5, γ: CMP 109 Theorem 3, "The constant γ depends on all other constants" [V] supports choosing γ last. No new input.
- R2 identification V1/B5: outside A5, correctly excluded.
No further missing input found.

4.3 Corrected residue list (for the supervisor). N1; N2 (+ (Q) with c_−, construction change C9 if smooth χ̂); N3 (+ A17, C9); N4 (A3, A7 → A1 + A18; A18's k-uniformity [I]); N5; N6 (CMP 116 §1–§2 and CMP 109 §2–§3 sup induction; its inputs A1, A1w, A2, A3, A4, A7, A8, A10, A14, A17, A18; printed support CMP 109 p. 259); N7 = B7; N8 (i) "absolute" ⇒ j-free, (ii) C9 scale invariance (partly [V] by CMP 109 p. 257), (iii) C3, (iv) C15; N9 = A15 small-field part, with the ledger caveat on merged R′ inputs, used three times. Closed inputs used: KUNIF item 9.

## 5. Check (5): consequence for T1, and the A5 row

5.1 What T1 uses. TRUST_LEDGER l. 129 [read]: T1 uses "item 7′ (C_β on every past …)" plus (K1), (K2) C_β, (K3) of Theorem K; C19: "the C¹ statement at g = 0 of A5 is not used; T1 uses the Lipschitz form on (0, γ]". So T1 needs from A5 only:
 (T-a) |∂_gβ_{k+1}(h, g)| ≤ C_β, or the Lipschitz form, on (0, γ];
 (T-b) C_β free of k, K and the past h;
 (T-c) β_{k+1}(h, 0+) equal to the one-loop value β_{k+1}(0), history-free.
(T-c)'s identification with Theorem K's β_j(0) is V1/B5, outside A5 (H0 R2; ledger A5 note).

5.2 What printed A5 gives. A5 (CMP 109 pp. 263–264) gives (T-a) and continuity at 0, on Balaban trajectories only (Theorem 3 covers sequences generated by (0.17)–(0.20)). It does NOT print (T-b): neither j-uniformity (§1.2) nor history-uniformity (§1.1). So printed A5 never supplied 7′ by itself. The ledger already says "Uniform in j is our reading". This is a fact about the source, not a new gap [V].

5.3 Which A5 parts T1 still needs after H0 (given Proposition H0-red with the corrected residue of §4.3).
- C^∞ (or analyticity) of E^{(j)} in g_{j−1}: not needed. GGAIN proves the first derivative of E^{(k+1)} directly; C¹ on (0, γ] comes from dominated differentiation (N3).
- Smoothness of β on [0, γ], "all derivatives": not needed (T1 uses no second derivative; C19).
- Uniform boundedness of β' on the interval: replaced by GGAIN's C_ΠS_0 with the j- and history-audit of H0. A5 does not supply the uniformity anyway.
- Continuity at g = 0: needed as (T-c). H0 gets it from N5 (dominated convergence, [R]) or by defining the g = 0 value as the limit. A5 would give it only on trajectories, so A5 cannot replace N5 on arbitrary pasts.
Result: T1 needs NO part of A5 once Proposition H0-red is accepted. A5 can be kept as an alternative source for (T-a) and continuity at 0 on trajectories, with (T-b) as "our reading" (as NONMONO §5 and NONMONO_VERIFY V7 recommend).

5.4 Can row A5 be rewritten as "[reduced, residue X]"? Yes, for the use T1 makes of it (7′), not for Balaban's full assertion. The C^∞, "all derivatives", and closed-interval smoothness are not reduced; they become unused. Suggested status text:
 "A5 (Balaban, as printed): asserted; not used by T1. T1's use, 7′ (first derivative on (0, γ], uniform in j, K, past; endpoint by limit): [reduced (R): SOURCES_T2_H0 + VERIFY], residue X."
 X = G3 (N2: the g-derivative of the sharp small-field cut χ_k, CMP 109 (2.9), via a coarea bound needing (Q) with c_−, or a smooth χ̂ that changes the construction). This is the only open analytic item in X.
 The rest of the residue is: standard but unwritten steps N3 ((M_r) = margin form of A17; KP derivative step; dominated differentiation) and N5 (continuity at 0); Balaban's published sup induction N6 with its inputs A1, A1w, A2, A3, A4, A7, A8, A10, A14, A17, A18; the readings N8 (absolute ⇒ j-free; C9; C3; C15; A18's k-uniformity of CMP 102 constants); and B7, A15, already in T1.
So the precise rewrite is "[reduced, residue G3 (N2); with N3, N5 standard, N6/N8 Balaban-internal, B7 and A15 already in T1]".

5.5 Effect on T1's trust base (correcting H0 "Effect on T1"). Switching T1 from A5 to Proposition H0-red adds to T1's minimal set: N2 (G3, open), N3 (A17 and the C9 construction change), N5, and the sup-induction inputs A1, A1w, A2, A3, A4, A7, A8, A10, A14, A17, A18, plus the N8 readings. H0 lists A1, A1w, A2, A3, A7, A8, A10 only; it omits A4, A14, A17, A18. H0's statement that the trust base "becomes visible, not larger in substance" is a fair [I] judgment: these items are inputs of the proof of Theorem 3 that A5 cites, and all of them already sit inside A13 (Theorem 1). But formally T1's minimal set ({A5, A15} + B1–B7 + X5, ledger l. 135) grows, and G3 is a genuinely open rigor item that printed A5 hid. Both routes should be recorded.

## 6. Ledger of this verification

[V] page images read here: CMP 109 pp. 256, 257, 259, 263, 264; CMP 116 pp. 9, 20, 21, 22; CMP 119 pp. 259, 278, 279. [V, text layer]: CMP 109 p. 298 (history dependence of β_j), pp. 271–272 (3.7)–(3.8) (use of CMP 102 (190)).
[P] here: closure condition free of k after dividing by E_0 (2.2); Lipschitz bounds pass to infinite-volume limits (2.9); Lipschitz on (0, γ] ⇒ limit at 0 exists (3.2).
[I] here: the attachment of "uniformly" on p. 264 (1.2); the extension of the CMP 109 gloss of "absolute" to CMP 116 (2.3).
New findings, all of the "omission" kind; no counterexample, no constant growing with j or with the past:
 F1. GGAIN_LF is not history-free (uses x*_h ≤ x*_k) and is local in g (|g − x*| ≤ ρ_0x*/2); so A15 is load-bearing a third time (2.16).
 F2. N6's list of Balaban inputs omits A4, A14, A17, A18 (4.1).
 F3. N8 omits H0's own [I] items C3, C15, and A18's k-uniformity [I] (4.1).
 F4. N9 should quote the ledger's A15 caveat (merged R′ inputs) and its current [R] status (4.1).
 F5. Step 2 should state the infinite-volume limit step (2.9).
 F6. Printed support for history-free sup induction: CMP 109 p. 259 (1.3); scale invariance of D_j: CMP 109 p. 257 (2.9).

## Grades

1.1 CONFIRMED — quotes of CMP 109 pp. 263–264 match the images.
1.2 CONFIRMED — 7′ matches NONMONO §5 (H0 states it on ]0, γ] with the one-loop comparison value; equivalent given N5).
1.3 CONFIRMED — coverage list matches GGAIN/NONMONO/KUNIF verify files.
1.4 CONFIRMED — R2_VERIFY row 12 and the two gaps are stated correctly.
2.1 CONFIRMED — gloss "independent of X and j" printed for α_0, α_1; γ "absolute"; E_0 unindexed, not called absolute.
2.2 CORRECTED — page facts right; the attachment of "uniformly" to "on this interval" is [I], not [V].
2.3 CONFIRMED — CMP 116 p. 9 Lemma 1 and the L^jη sentence match the image.
2.4 CONFIRMED — closure free of k; E_0 itself fixed by the "absolute" log Z constant (should be said with C1).
2.5 CONFIRMED — sup of β free of k given C_Π.
2.6 CONFIRMED — sup gives no derivative bound.
C1 CONFIRMED.
C2 CONFIRMED — [V + I]; the "absolute" also covers A4/A18 constants (see N4, N8).
C3 CONFIRMED — [I] part honest, but not carried to N8.
C4 CONFIRMED.
C5 CONFIRMED.
C6 CONFIRMED.
C7 CONFIRMED.
C8 CONFIRMED.
C9 CONFIRMED — partly upgradable to [V] by CMP 109 p. 257.
C10 CONFIRMED.
C11 CONFIRMED.
C12 CONFIRMED — GGAIN_LF §6 running-cut surface terms are void only under A15.
C13 CONFIRMED.
C14 CONFIRMED.
C15 CONFIRMED — [I]; not carried to N8.
3.16 CORRECTED — conclusion holds, but the [I] set is C2, C3, C9, C10, C11, C15 and A18's k-uniformity, not only C9, C10.
4.1 CONFIRMED.
4.2 CONFIRMED — stronger printed support: CMP 109 p. 259.
4.3 CONFIRMED — add: off-trajectory booking of the −β_jA counterterms is part of B7.
4.4 CONFIRMED — as [I]; rests on A15's printed small-field part.
4.5 CONFIRMED.
5.1 CONFIRMED — CMP 119 (2.28) radii shrink with g_j; dichotomy correct.
5.2 CONFIRMED — CMP 119 p. 279 image.
5.3 CORRECTED — conclusion right under A15, but GGAIN_LF uses x*_h ≤ x*_k and is local in g, so it is no history-free fallback.
5.4 CONFIRMED — as [I].
5.5 CONFIRMED — CMP 122 II p. 390 checked only through GGAIN_LF_VERIFY V1.
Step 1 CONFIRMED — given N6, N7; base case matches CMP 109 p. 256.
Step 2 CORRECTED — needs the infinite-volume limit step (Lipschitz passes to limits; volume-free constants); otherwise right.
Step 3 CONFIRMED.
Step 4 CONFIRMED — limit [P], identification [R] to N5, no C¹ at 0 claimed.
Step 5 CONFIRMED — Theorem 3 "γ depends on all other constants".
R1 CONFIRMED.
R2 CONFIRMED.
R3 CONFIRMED.
R4 CONFIRMED.
N1 CONFIRMED.
N2 CONFIRMED — should name (Q) with c_− as the coarea input.
N3 CORRECTED — cite TRUST_LEDGER A17 and construction change C9.
N4 CORRECTED — add A18's [I] on k-uniformity of CMP 102 constants.
N5 CONFIRMED.
N6 CORRECTED — input list must be A1, A1w, A2, A3, A4, A7, A8, A10, A14, A17, A18; printed support CMP 109 p. 259.
N7 CONFIRMED.
N8 CORRECTED — add C3, C15, A18 readings.
N9 CORRECTED — status is now [R] via SOURCES_T2_G2 for the torus part; quote the merged-R′ caveat; three load-bearing uses.
NR CONFIRMED — under A15.
ET CORRECTED — omits A4, A14, A17, A18; G3 becomes a new open item in T1's minimal set.
FB CONFIRMED — arithmetic only, unused.
SUMMARY: 47 CONFIRMED, 10 CORRECTED, 0 UNSUPPORTED; verdict: Proposition H0-red holds as a reduction (no constant found depending on j or the past), so row A5 can be rewritten for T1's use as "[reduced, residue G3 (N2)]" with N3, N5 standard, N6/N8 Balaban-internal (input list enlarged by A4, A14, A17, A18), and B7, A15 already in T1, while Balaban's C^∞ and all-derivative claims become unused rather than reduced.
STATUS: COMPLETE
