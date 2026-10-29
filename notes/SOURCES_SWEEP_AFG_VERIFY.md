# SOURCES_SWEEP_AFG_VERIFY — adversarial verification of SOURCES_SWEEP_F, SOURCES_SWEEP_G, and the [P]/[P-sketch] claims of SOURCES_SWEEP_A

Date 2026-10-28. Verifier: Claude (Opus 5.5). No existing file was edited. PLAN.md was not changed. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Ids follow IDS.md. S-xx labels are those of OPEN_ITEMS_SWEEP.md. Grades: CONFIRMED / CORRECTED / UNSUPPORTED.
Page images read this session (pdftoppm -r 150, fresh /tmp folders, deleted after use):
- CMP 116 pp. 8, 14, 18, 19, 20, 21.
- CMP 119 pp. 272, 277, 278.
- CMP 122 II pp. 381, 388, 389, 390 (p. 388 also at 300 dpi for the α condition).
- CMP 109 pp. 252–255 (SWEEP_A part).
The SWEEP_F and SWEEP_A parts were checked by two sub-verifiers (Opus) under the same rules. I read their reports and kept their grades unless a note says otherwise.

## 0. Verdicts

| file | verdict |
|---|---|
| SOURCES_SWEEP_G.md | Sound in substance, with corrections. Lemma KP-D is CONFIRMED line by line. Four claims are CORRECTED: the entropy citation, the printed α condition (κ2d, not κ2^d), a missing κ lower bound (r − r′ − 24 ≥ s_0 must be a canon entry, and "true for κ ≥ 1536" is UNSUPPORTED while s_0 has no value), and the p. 389 β_0 condition (it needs β_0 < 1/3, not β_0 ≤ ½). One piece of S-102 evidence is wrong (CMP 119 p. 272 cites CMP 109's own (2.12)–(2.13)), but the identification (7.13) = CMP 116 (2.13) survives on the other evidence. |
| SOURCES_SWEEP_F.md | Sound after corrections. One supporting argument of S-62 is UNSUPPORTED ("fixed π is not enough because the period grows like MR_j"); (Avg) stays admissible but is not forced. The S-62 claim "changes no constant" is too strong (R4 attachment margin). Lemma I36 (S-90) misses one hypothesis ((Hβ) trajectory). One page transcription in S-95 is wrong (p_1² for p_0²). All four proposed ledger texts are safe after the edits of §7. |
| SOURCES_SWEEP_A.md ([P]/[P-sketch] claims) | Sound. No claim is UNSUPPORTED. One scope statement in S-77 (iii) is CORRECTED. All other items are CONFIRMED. |

## 1. SWEEP_G §1, S-91: Lemma KP-D

### 1.1 Canon and source claims (SWEEP_G 1.1–1.3)
- G1. "The canon has no displayed KP inequality." CONFIRMED. A grep of SOURCES_ORDER_CANON.md for Kotec, polydisc, Cammarota, cluster, Ursell, Mayer, polymer, KP finds nothing.
- G2. N-400 content. CONFIRMED with a wording note. The canon line lists κ_1, B_0, C_i^{116}, α_2, α_4, Latin a_1, M^q, E_0, L. It does not name C_3. C_3 = 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1} (CMP 116 p. 20 [image]) is built from constants that sit before ε_1, so the slot is correct.
- G3. CMP 116 p. 21 quote and "O(1)C_3ε_1 ≤ ½E_0". CONFIRMED [image p. 21].
- G4. (2.11): ζ(Z, Z′) = 0 if Z ∩ Z′ contains a cube or a wall of a cube. CONFIRMED [image p. 14]. So Y ≁ X implies that Y contains a cube of N(X), with N(X) = X plus its wall neighbours. |N(X)| ≤ (2d + 1)|X|_□ ≤ 3^d|X|_□.
- G5. (T1) from (2.30). CONFIRMED [image p. 18], with two notes.
  - (2.30) is printed for Y ∈ D_k with M-cubes. The lemma uses it for D_{k+1} with LM-cubes. The scaled form (LM)^{−4}|Y| ≤ 24d_{k+1}(Y) is a reading [I]. Balaban uses (LM)^{−4}|Z| in the same way on p. 21.
  - The "+1" is not only a safe addition. As printed, (2.30) fails for a single cube: it gives 1/24 ≤ d_k ≤ 0. The form |Y|_□ ≤ 24d(Y) + 1 is the correct one to use. The same lower bound is printed again in (1.28) [image p. 8].
- G6. (T2) from (2.27). CONFIRMED [image p. 18] for a family with connected union. The KP clusters contain overlapping polymers. (2.27) is stated for the D-sums, and Balaban derives it from "the definition of d_k". For overlapping polymers the tree for the union is no longer than the joined trees, so (T2) still holds. This is a reading of the definition of d_k [I], at the same level as SWEEP_G's own tag.
- G7. (T3) entropy, cited as "(1.28) with κ replaced by δκ" and (2.29). CORRECTED. The entropy bound is CMP 116 (1.26), Σ_{X∈D_j, X⊃□′} exp(−κd_j(X)) ≤ O(1) for κ sufficiently large [image p. 8]. (1.28) is the volume bound. Balaban's own text on p. 19 says "(1.28), with κ replaced by δκ" [image p. 19]; this is his misreference for (1.26). (2.29) is the product form [image p. 18]. The threshold s_0 has no value in any source or project file.
- G8. KP theorem statement (1.3). CONFIRMED as the standard form of Kotecký–Preiss, CMP 103 (1986), including the weight b(·) on clusters. Not fetched here either [I, external]. The test-set device (add {□} with activity 0 and define Y ≁ {□} iff Y meets N({□})) is correct.

### 1.2 Proof of Lemma KP-D, line by line
- Step 1. CONFIRMED. A cluster is connected in the ≁ graph. By G4 its union is connected. (T2) then gives r′d(∪C) ≤ r′Σ(d(Y) + 5) = b(C), also when a polymer repeats.
- Step 2. CONFIRMED. F has nonnegative coefficients, and every monomial has total degree ≥ 1.
- Step 3. CONFIRMED. With z(Y) = T(|H| + R|∂_gH|) ≤ T(η + ρ̄^{−1}ηρ̄)e^{−rd} = 2Tηe^{−rd}:
  Σ_{Y≁X} z e^{a+b} ≤ Σ_{□′∈N(X)} Σ_{Y∋□′} 2Tη e^{−(r − r′ − 24)d(Y)} e^{1+5r′} ≤ 3^d|X|_□·2Tηe^{1+5r′}S(r − r′ − 24) = |X|_□·T·K_KPη = a(X).
  The identity T·K_KPη = 1 holds by the definition of T. T ≥ 1 is exactly (KP-D). With X = {□}, a = 1, so F(T, TR) ≤ 1.
- Step 4. CONFIRMED. For T ≥ 1 and degree n ≥ 1, c·1^n ≤ c·T^n/T. So F(1, 0) ≤ T^{−1}F(T, 0) ≤ T^{−1}F(T, TR) ≤ K_KPη.
- Step 5. CONFIRMED. Let A(t) be the sum of the s-linear coefficients at t. A(1) ≤ A(T), since all t-degrees are ≥ 0 and T ≥ 1. F(T, TR) ≥ A(T)·TR. So ∂_sF(1, 0) = A(1) ≤ 1/(TR) = ρ̄K_KPη.
- Step 6. CONFIRMED with one wording fix. The ordered sum with 1/n! and ρ^T of (2.12)–(2.13) [image p. 14] is the KP cluster sum Σ_C Φ^T(C)z^C. A cluster with ∪C = X ∋ □ is ≁ {□}. Fix: the Weierstrass test needs a g-independent majorant. F(1, 0) as written uses |H(Y; g)|, which depends on g. Replace |H| and |∂_gH| by the majorants ηe^{−rd} and ηρ̄e^{−rd} in F. Step 3 already used these majorants, so every bound stays the same.
- Holomorphic case. CONFIRMED. KP uses only |z|, and a locally uniform limit of holomorphic functions is holomorphic with termwise derivatives.
- Constant claims. CONFIRMED: K_KP = 2·3^d e^{1+5r′}S(r − r′ − 24); the derivative constant is ρ̄ times the value constant; no other factor enters. The factor 2 in K_KP plays the role of GGAIN's "doubled polydisc".
Grade: Lemma KP-D CONFIRMED [P] relative to the KP theorem [I, external], (T1) [V for d_k, I for the scaled d_{k+1} form], (T2) [V + reading of the definition of d_k], (T3) = CMP 116 (1.26) [V, threshold s_0 not valued].

### 1.3 Does the KP condition match what N3 (GGAIN §4.4(ii)) and GGAIN_LF I8 use?
- GGAIN §4.4 (read here, SOURCES_GGAIN.md l. 66–75). Inputs: value (2.38) at (1 − 8δ)ρ, derivative 4.4(i) at (1 − 9δ)ρ with prefactor C_3ε_1(ρ̄_V + ρ̄_χ). Output: (1 − 10δ)ρ with S_0 = O(1)C_3ε_1(ρ̄_V + ρ̄_χ), "independent of g_k and of ε_1". Instance 1.5 takes r = (1 − 9δ)ρ, r′ = (1 − 10δ)ρ, η = C_3ε_1, ρ̄ = ρ̄_V + ρ̄_χ. The value bound at (1 − 8δ) is weaker than needed, so the common majorant at (1 − 9δ) is valid. The output has the same rate and the same form, with O(1) = K_KP. MATCH, CONFIRMED.
- GGAIN's own condition is "the activities lie in the KP polydisc used in (2.39)–(2.41) with a margin (C5)". SWEEP_G replaces this unstated polydisc by the explicit (KP-116). This is a strengthening, not a mismatch: Balaban's printed prefactor in (2.39) is exp 5κ [image p. 21]. The tree bound (2.27) at rate (1 − 9δ)½Lκ gives exp(5(1 − 9δ)½Lκ) per factor. So Balaban's exp 5κ is not what (2.27) gives at the d_{k+1} rate. SWEEP_G's side remark (1.5) is CONFIRMED. Both forms are fixed before ε_1.
- S_0 and C_β stay ε_1-free and g-free. CONFIRMED: ρ̄_V, ρ̄_χ ∝ ε_1^{−1} (SOURCES_GGAIN l. 69). K_KP depends on d, κ, L, δ and s_0 only. Note: K_KP is not an absolute O(1). It contains e^{5(1−10δ)½Lκ} ≈ e^{37440} at κ = 1536, L = 13, δ = 0.025. Every consumer of S_0, C_β or c_2 that I found uses them in γ-small conditions (G3_N2 4.3: S_χ ≤ C_pγ^p; R-010: θ < 1 − L^{−β_H} "holds by ε_1 small"; Theorem K: existential constants). None puts S_0 into a condition that sits before ε_1. So the large constant is harmless in the order. [P, grep of canon and ledger for C_β, S_0]
- GGAIN_LF I8 (SOURCES_GGAIN_LF.md l. 38–40, 86). GGAIN_LF applies the Cauchy step to one activity at a time, including R′^{(k)}(X), and needs a disc bound for R′(X) on D. Instance 1.6 supplies this bound by the holomorphic form of KP-D on D. The loss is Balaban's printed (1 + β)κ → (1 + ½β)κ ((1.97) → (1.99) [images pp. 389–390]), not GGAIN_LF's "one δ-unit". The (1.99) loss is the one GGAIN_LF's downstream text uses. MATCH, CONFIRMED.

### 1.4 Instance 1.5 (small field)
- Numbers. CONFIRMED: ρ = ½·13·1536 = 9984; δρ = 249.6; r − r′ − 24 = 225.6.
- Missing canon entry. CORRECTED. The lemma needs r − r′ − 24 ≥ s_0, i.e. δLκ/2 ≥ 24 + s_0. SWEEP_G puts this "in the N-070 slot" in its text (1.5), but its proposed canon change (1.7, §5) lists only (KP-116) for N-400. The κ condition must be a separate N-070 entry. s_0 = s_0(d) is the threshold of CMP 116 (1.26) and has no value. At canon values it needs s_0 ≤ 225.6. This is plausible (polymer counts in d = 4 grow like e^{O(1)n}), but no file proves it [I].
- (KP-116) in N-400. CONFIRMED as admissible: it uses d, κ, L, δ, C_3, s_0, all before ε_1. Note: it needs ε_1 ≲ e^{−37441}/(162·S·C_3) at canon values. That is consistent with "ε_1 small after κ, L"; the canon has no lower bound on ε_1 that it could break (K-027's (Hγ) is a γ condition).
- c_2 of SOURCES_G3_N2 4.3 = K_KP(r, r′). CONFIRMED.

### 1.5 Instance 1.6 (large field)
- Numbers. CONFIRMED: r − r′ − 24 = ½βκ − 24 = 192 − 24 = 168 at κ = 1536, β = ¼.
- Missing canon entry. CORRECTED, as in 1.4. The large field needs ½βκ ≥ 24 + s_0, i.e. κ ≥ 2(24 + s_0)/β = 8(24 + s_0) at β = ¼. At κ = 1536 this needs s_0 ≤ 168. This case binds, not the small-field one.
- (a), c_1 = α^{1/3}. CORRECTED. The printed condition after (1.93) is "α^{1/3} ≤ exp(−(1 + β)κ2d)" with 2d, not 2^d [image p. 388 at 150 and 300 dpi; text layer l. 1718 agrees]. At d = 4, β = ¼ it gives c_1 ≤ e^{−10κ}, not e^{−20κ}. The need is c_1 ≤ (162e·S(168))^{−1}e^{−5.625κ}. e^{−10κ} still suffices: e^{−4.375κ} ≤ (162e·S(168))^{−1} for κ ≥ 1536 once S(168) is finite. The same 2^d transcription is in SOURCES_MB L21 (l. 33, 57); it should read 2d. Balaban writes "e.g.", so α can be chosen smaller in any case (α is fixed after κ).
- (b), c_1 = e^{−p_0}. CONFIRMED with a correction to the derivation. The p. 389 condition at β_0 = 1/7 is −¼p_0 + 1 + 2κ(100R_k)^d ≤ 0, so p_0 ≥ 4 + 8κ(100R_k)^d [image p. 389]. "≥ 8κ" is a large understatement, since (100R_k)^d ≥ 10^8. The need p_0 ≥ 5.625κ + log(162eS) holds.
- Two-valued c_1. CORRECTED (gap). (1.97) has c_1 = e^{−p_0} for X′ disjoint from ∪Y_i and c_1 = α^{1/3} otherwise [images pp. 389–390]. Lemma KP-D has one η. To get (1.99) with c_1 = e^{−p_0} for X disjoint from ∪Y_i, apply KP-D to the sub-gas of polymers disjoint from ∪Y_i, with η = e^{−p_0}. E(X) for such X involves only that sub-gas (hard core). Apply KP-D to the full gas with η = max(e^{−p_0}, α^{1/3}) for the other X. One added sentence closes this.
- Absorption of K′_KP (last item of 1.6). CORRECTED in its reasoning; grade stays [P-sketch]. SWEEP_G says K′_KP is absorbed "by the slack 8κ(100R_k)^d + 4 − 5.625κ in p_0". That number is a condition on p_0, not a slack in (1.100). (1.100) uses the same e^{−p_0(g_k)} as c_1. The real slack is in (1.95): every term with q ≥ 1 carries exp(−q(3/2)p_0) [image p. 389], while (1.97) keeps only e^{−p_0}. The spare factor e^{−½p_0} ≤ e^{−2−4κ(100R_k)^d} absorbs K′_KP ≤ 162e^{1+5.625κ}S(168). For the α^{1/3} terms, α is chosen after κ. Downstream uses of (1.99) were not traced, as SWEEP_G says.
- (1.99) prints R′^{(k)} [image p. 390]; SOURCES_GGAIN_LF l. 15 writes R″. Notation only.

### 1.6 Grade for S-91
CONFIRMED: Lemma KP-D [P] with its constants, and both instances, with the corrections G7, 1.4 (κ entry), 1.5 (κ entry, 2d, two-valued c_1, absorption reasoning), and the Step 6 wording fix. The proposed R-037 I8 text is safe after two edits: cite "(1.26) entropy" instead of "(1.28) entropy", and add "with κ ≥ 2(24 + s_0)/β and δLκ/2 ≥ 24 + s_0 (N-070), s_0 = s_0(d) of CMP 116 (1.26), not valued [I]".

## 2. SWEEP_G §2, S-93: H-145 (M-B) with K-002's margin

- K-002 transcription. CONFIRMED against TRUST_LEDGER.md l. 123: g* = 0.82645 − θ_W − τ_C, θ_W + τ_C ≤ 0.2 (strict limit 0.2088), p_0 ≥ 17/(γ_0A_1²). 0.82645 = 1.1^{−2}, the minimum of Re g^{−2}/x^{−2} on |g − x| < 0.1x.
- Numbers. CONFIRMED by hand: 2/(0.62645 − ½) = 15.82; 2/(0.82645 − ½) = 6.127; 0.82645 − (½ + 2/17) = 0.2088; (g*)^{−1/2} = 1.2635; 2√g* − 1 = 0.5830; 4g*(1 + 1/7)^{−2} = 1.9185; (1 − 2·0.01)^{−1/2} = 1.01015; −½log 0.98 = 0.0101; −log 0.9 = 0.1054.
- L5–L8 transcriptions. CONFIRMED [image p. 381]: the min{½B_3^{−2}A_0², 2A_1², A_1²} display with its right side; exp(−¼g_m^{−2}B_3^{−2}½ε_m²) ≤ exp(−⅛B_3^{−2}(1+β_0)^{−2}A_0²p_0²) ≤ exp(−A_1²p_0²); exp(−γ_0g_m^{−2}(2δ′_m)²) ≤ exp(−γ_04(1+β_0)^{−2}A_1²p_1²) ≤ exp(−γ_0A_1²p_1²); the (O(1)B_3M²)^{−1}ε_j² line.
- L5 option B. CONFIRMED: (g* − ½)γ_0A_1²p_0²(d′ + 1) ≥ 2p_0 at worst d′ = 0 gives the stated p_0 bound.
- L6 alternative "use the factor only as e^{−p_0} per cube". CORRECTED (scope). The step "17/γ_0 ≥ 17" needs γ_0 ≤ 1, which no cited file states. The first option (raise A_0 by (g*)^{−1/2} ≤ 1.264; A_0 is a lower-bounded constant after A_1) needs no such input and should be the one recorded.
- L22 / (MB5) / (MB6). CORRECTED. The p. 389 condition −2(1+β_0)^{−1}p_0 + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0 [image p. 389] is equivalent to p_0(2/(1+β_0) − 3/2) ≥ 1 + 2κ(100R_k)^d. It can hold only if 2/(1+β_0) > 3/2, i.e. β_0 < 1/3. The canon cap β_0 ≤ ½ (N-030) does not imply it. So the summary "β_0 ≤ ½ suffices" (SWEEP_G §2.6, §5) is wrong. The (MB6) bound β_0 ≤ 0.583 for L7 is correct but not the binding one. This is a pre-existing gap of the canon, not created by SWEEP_G: Balaban's example β_0 = 1/7 satisfies it, and K-018 already evaluates c_sw at β_0 = 1/7. No file needs β_0 ≥ 1/3 (grep for lower bounds on β_0: only "any fixed β_0 > 0", LEMMA_DPRIME_SWEEP l. 29). For general β_0 < 1/3 the condition reads p_0 ≥ (1 + 2κ(100R_k)^d)/(2/(1+β_0) − 3/2) ≥ 2 + 4κ(100R_k)^d, still a γ-small condition.
- C_N "≤ e^{0.01n}". CORRECTED (rounding): (1.0204)^{n/2} = e^{0.0101n}. No effect.
- L9–L18 rows. Not re-imaged by SWEEP_G or here; they rest on the SOURCES_MB_VERIFY transcriptions, as SWEEP_G says (2.5). The bookkeeping logic (C_c → C_c′, C_1′ = max(1, C_c′), factor F absorbed by p_0 large) is CONFIRMED as arithmetic.
- L20–L21. CORRECTED: the printed α condition is κ2d, not κ2^d (see 1.5 above). The F2′–α link stays [I], as SWEEP_G says.
- (KP-122) "for κ ≥ 1536". UNSUPPORTED as a numeric claim while s_0 has no value; true under κ ≥ 2(24 + s_0)/β.
Grade for S-93: CONFIRMED [P] relative to (M-A), (M-C), the F2′–α link [I] and the MB_VERIFY transcriptions, after the corrections above. The proposed R-037 text is safe after replacing "β_0 ≤ 0.583 (implied by the canon cap β_0 ≤ ½)" by "β_0 < 1/3 (needed by p. 389 itself; Balaban takes β_0 = 1/7; not implied by the canon cap β_0 ≤ ½); L7 needs only β_0 ≤ 0.583", and the L6 option by "A_0 → (g*)^{−1/2}A_0".

## 3. SWEEP_G §3, S-102: "(7.13) [I]" = CMP 116 (2.13)

- (a) CMP 122 II p. 390 quote. CONFIRMED [image p. 390]: "given by the convergent series (7.13) [I] (with proper notational changes), and it satisfies the inequality (1.99)". Reference [I] = CMP 109, 249–301 (1987) [text layer l. 1901–1902].
- (b) CMP 109 has Sects. 0–5 only. CONFIRMED [text layer, contents l. 29–35].
- (c) CMP 116 has Sects. 1–2 and calls Part I "I". CONFIRMED [text layer l. 52–56, 532]. "The first step is the Mayer expansion" is at text layer l. 540.
- (d) first bullet, CMP 119 p. 272. CORRECTED: this is not evidence for the offset. The page says "formally given by the same formula as the term E^{(k+1)} in [I] [see (2.12), (2.13)]" [image p. 272]. CMP 109 (2.12)–(2.13) is the definition E^{(k+1)} = log ∫dμ χ_k exp[…] (text layer l. 981–990). So the p. 272 citation fits CMP 109's own numbering. SWEEP_G's sentence "This is CMP 116's own numbering" is wrong.
- (d) other bullets. CONFIRMED [images pp. 277, 278]: "exponentiated cluster expansion of Sect. 7 [I]"; "(I.7.12), with terms given by (I.7.13)"; "Mayer expansion (I.7.1)"; "between (7.2) and (7.10)"; "(7.11)". p. 278 adds a strong content match: the remaining sum "has the form (I.7.11), with the additional condition that the domains Z_i do not intersect Z_0 along a cube, or a wall of a cube". That is the ζ rule of CMP 116 (2.11) [image p. 14]. CMP 122 II "(6.10) [I]" and "(6.31) [I]" match CMP 116 (1.10) and the scaling inequality (1.31) [text layer]. CMP 109 has no Sect. 6 or 7, so the offset rule is the only reading that fits.
- (e) the bound (2.38)–(2.41). CONFIRMED [images pp. 20–21].
- 3.3 (i)–(iii). CONFIRMED given §1 and its corrections. The constant K′_KP is not absolute; the correction to B20_W4R (S5) is right.
Grade for S-102: identification CONFIRMED [V on pp. 277, 278, 390 and CMP 116 p. 14; P for the offset rule]. Correct SWEEP_G 3.4: "four matching citations checked on images" → "the p. 277–278 citations (I.7.1), (7.2)–(7.10), (I.7.11), (I.7.12), (I.7.13) checked on images, two more on the text layer; the p. 272 citation is CMP 109's own (2.12)–(2.13) and is not evidence". The proposed R-044 text is safe after the §1 corrections (add the κ entry).

## 4. SWEEP_G §4, S-67: the R1 count

- Structure of (3.44)–(3.47). CONFIRMED [images pp. 277–278]. One input note: p. 277 says the localization domains are "Z_i ∈ D_k, X ∈ D_{k+1}". So H′(Z_0) is a D_k-domain activity, and the R3 bound "in d_{k+1}(Z_0)" needs a closure reading. SWEEP_G covers this case in its weakened counts (4.3), so the decision is not affected.
- Steps 1–4. CONFIRMED. (2.27) gives d(X) ≤ d(Z_0) + Σ(d(Y_i) + 5). The H′ factor keeps 3δ, each Ẽ factor keeps 1δ with prefactor e^{5(1−11δ)ρ}. The Y-sum is ≤ exp(3^d|Z_0|_□η_1e^{5ρ}S(δρ)). (R1-a) turns e^{λ|Z_0|_□} into e^{λ}e^{δρd(Z_0)}.
- Step 5. CORRECTED (wording). The sum Σ_{Z_0∋b} e^{−2δρd(Z_0)} ≤ 2^dS(2δρ) uses both remaining δ of Z_0 as the entropy weight. The sentence "1δ of Z_0's slack is unused" contradicts the formula. Either sum with S(δρ) and keep 1δ unused, or keep S(2δρ) and drop the sentence. The bound is right in both forms.
- (N4-b). CORRECTED (constant): with Lemma KP-D, η_1 = K_KPη, not O(1)η with an absolute O(1). (R1-a) then reads 24·3^dK_KPη e^{5ρ}S(δρ) ≤ δρ; still an ε_1 condition in N-400.
- Claim: unprinted cost 1δ, c_LF = 11. CONFIRMED given R3 in the d_{k+1} form and no closure step.
- (K1′) numbers. CONFIRMED: δ ≤ (1/c)(1 − 8/13) = 0.03497, 0.03205, 0.02959 for c = 11, 12, 13; left sides 3.25(1 − cδ) = 2.356, 2.275, 2.194 at δ = 0.025; 2.1775, 2.08, 1.9825 at δ = 0.03. They match canon N-060 and the canon B5 note "0.03 fails: 1.9825 < 2".
- Decision "keep 13δ, δ = 0.025". CONFIRMED.
Grade for S-67: CONFIRMED [P] relative to R3 [I] and the D_k/D_{k+1} reading, with the two corrections. The proposed R-020 text is safe. Add "η_1 = K_KPη" to the (R1-a) clause.

## 5. SOURCES_SWEEP_F.md (sub-verifier report, reviewed)
Pages read by the sub-verifier: CMP 109 pp. 254–255; CMP 116 p. 13; CMP 119 pp. 260, 275, 281–282; CMP 122 I pp. 185–187; CMP 122 II p. 381. I cross-checked the p. 381 claim on my own image: the χ_{j,Λ} line ends in exp(−A_1²p_0²(g_j)), so the T9(a) correction is right.

### 5.1 S-62 (orbit averaging over partition shifts)
- Page facts and the (3.62)/(3.63) algebra. CONFIRMED. CMP 119 p. 275 (3.41)–(3.42) gives the total log as Σ_z E_0 + const; the partition enters only at the later localized expansion.
- "No translation-covariant cube partition exists". CONFIRMED [P].
- "Fixed π is not enough, because the period grows like MR_j". UNSUPPORTED. E-term domains are unions of M-cubes, and M = KR_0M_0 is fixed (K-035). MR_j-cubes enter only R-terms. A fixed-π route that books the periodic remainder at cost O(M) is not excluded. (Avg) is admissible, not forced.
- R1 (covariance) and R2 (same total, so the same β_j). CONFIRMED. R2 uses CMP 109 (0.19): the integrand contains no M-cube. The bond-product form of χ_k stays [V-file].
- Restores (2.29) and (3.62). CONFIRMED, given R4–R5 at [P-sketch].
- Sketch gap R4. CORRECTED in scope: it is not a corner case. The L-blocks and the step's own π_{j+1} cubes cannot be shifted, so misaligned input domains occur in every step. O_j must shift only the level-j cubes.
- Sketch gap R5. Stays [P-sketch]; the root-free K-036 requirement stays.
- "Changes no constant". CORRECTED: the R4 attachment margin (at most one M-cube layer) is a constant cost, as in K-038's alternative.

### 5.2 S-90 (Lemma I36)
CONFIRMED [P] relative to K-001, K-011 and D2C Lemma U. CMP 109 (0.19) has gauge-fixing coefficient 1/g_k²; the block δ-functions carry no coupling; (0.15) is exact for every α. Two CORRECTED hypotheses: (1) both constructions must be defined at each step, so the trajectory must stay in Balaban's region, which needs (Hβ); (2) the complex-c corollary also needs family (A), which SOURCES_D2 §6.1 grades reduced, conditional on (Hβ) on the complex disc.

### 5.3 S-95 (R-039 items (i), (iii))
- (i) Joint 1.06 scaling admissible against SOURCES_ORDER_CANON.md. CONFIRMED [P]. C5 bounds C_3 by C_0 and C_2 by C_1, so C_2 and C_3 are not free upward one at a time, as SWEEP_F says. Canon N-370 prints "α_2 ≲ α_3" and C5 prints "α_2 + MB_3α_0 ≲ α_1"; both are ratios, so the result holds.
- (iii) Cut nesting on the box S. CONFIRMED. Recomputed: T1 = 0.420, T8 = 0.529, T9(b) bound 1.892, T9(a) ratio ≈ 318 (stated "> 300").
- T9(a) transcription. CORRECTED: CMP 122 II p. 381 prints exp(−A_1²p_0²), not p_1² [image, both verifiers]. The check still holds.
- Omission. The p. 381 χ_{j,Λ} factor is not in T1–T10. It closes because A_0 is large (N-430).

### 5.4 S-61 (R-016 residue)
- (S_H) on the torus. CONFIRMED [P], with a minor correction: the bound 2(d − 1)c_P(N)·sup|d_S| bounds kernel entries; (S_H) asks for a block norm, which adds a Schur neighbour count (a d-number). The p. 13 paraphrase is loose: the page says the expression "depends yet on the external gauge field configurations on the whole lattice T_η". So S = I rests on SOURCES_A16_REPLACE2_VERIFY, not on that sentence.
- (S_H) in the Ω-setting. CONFIRMED as a convention. CMP 119 p. 275 prints "we have to change properly the scales on this domain". Only the CMP 96 rule and p_S are convention. The canon already holds (S_H^Ω) at N-310, with inputs before M.
- Volume rule. CONFIRMED (p. 275 quote matches the image).
- s-version of (C_f)^{1/2}. CORRECTED: the quote and (2.7) are exact, but p. 13 licenses free choice of localization domains, not the choice of square-root representation. The convention is still admissible: both forms are equal at s ≡ 1, and the change of variables (2.6) comes before s.

## 6. SOURCES_SWEEP_A.md, [P]/[P-sketch] claims (sub-verifier report, reviewed)
Pages read by the sub-verifier: CMP 109 pp. 252–255.
- S-78 (P4 check). CONFIRMED: code reading of numerics/umk_beta1.py l. 69–143 and numerics/h2_scan.py l. 35–49 (path permutation, return path, weight 1/(L⁴n²), part 4 sign, "0" profile = S0 + ind); no wrap in the array; Fourier step (Σ_y e^{iky}div F^μ = e^{iLk_μ} − 1 = K̂_μ at k = k_l); Lemma S against P4 ((E_qk̂)_μ = K̂_μ, H1_ANALYTIC l. 25–31); C1–C4 and the qsym fold. The §4 numerics were not rerun.
- S-77 printed text ((0.3), (0.4)–(0.12), "both definitions are equally good", u(y) = 1 on T^{(1)}, (0.14)–(0.19)). CONFIRMED [images pp. 252–255].
- S-77 (0.4)/(0.12) equal-profile claim [P]. CONFIRMED. By (0.8) each averaged contour variable of (0.11) linearizes to the average of A over its contours, so the linear part of (0.12) equals that of (0.4). U(x′, c_+) is undefined on p. 254; the reading U(c_+, x′)^{−1} agrees with (0.5) at first order; SWEEP_A's [I] flag is right.
- S-77 (ii) gauge-fixing term is a project convention, not Balaban's. CONFIRMED (U3_AW bordered matrix; H1_ANALYTIC_VERIFY2 §2 independent hard-constraint build matches production to about 1e−8; R2_VERIFY (a): same exact Z).
- S-77 (iii) minimum-norm ρ_1 [P]. Argument CONFIRMED, scope CORRECTED. With B = B⊥ + D_rλ, D_r^†B⊥ = 0: the action does not depend on λ (Δ_{j−1}D = 0), the constraint does not see D_rλ, and the penalty |D_r^†B|² vanishes only at λ = 0. So the minimizer is the orbit point with D_r^†B = 0, the minimum-norm one. The comparison holds only against gauge fixings that select one point of each residual orbit. A general penalty (e.g. ε‖B‖²) moves the minimizer off the orbit and can give a smaller norm. Balaban's linearized axial (0.14) does select one point per orbit.
- S-77 downstream gauge independence (only H, the bordered symbol and the individual (1.1) terms depend on the gauge, not Δ_j(f)). CONFIRMED. R23_VERIFY §5 was not reread; that item stays open, as SWEEP_A says.
- S-79 ((1.1) not needed). CONFIRMED. (1.1) is KAPPA_BOUNDED (1.1) (SOURCES_T2_PI §8.3, T2_PI_VERIFY item 27). Theorem K bounds the integrand with existential constants ("Constants are existential; κ_* is not evaluated", THEOREM2_PROOF_v4 l. 165–171). Lemma D″ accepts any finite R (γ after R, l. 295; lean lemma_DDoublePrime_hist_adm takes R as a parameter). The L = 3 value is an optional cross-check (l. 144).
- SWEEP_A proposes no canon change.

## 7. Exact changes that are safe to apply

### 7.1 Ledger (TRUST_LEDGER.md)
1. R-037, I8. Replace "I8 (KP derivative, standard; SOURCES_GGAIN_LF_VERIFY)" by: "I8 (KP derivative): PROVED relative to the KP theorem [I, external] and the tree geometry (CMP 116 (2.27), (2.30) [V]; (1.26) entropy with threshold s_0(d) not valued, and the d_{k+1}, d_{k,∪Y_i} versions [I]); Lemma KP-D, constant K_KP = 2·3^d e^{1+5r′}S(r − r′ − 24), derivative constant = ρ̄ × value constant; needs δLκ/2 ≥ 24 + s_0 and κ ≥ 2(24 + s_0)/β (SOURCES_SWEEP_G §1, verified with corrections in SOURCES_SWEEP_AFG_VERIFY §1)".
2. R-037, H-145 (M-B). Replace "H-145 (M-B) bookkeeping" in the open-input list by: "H-145 (M-B): written out with K-002's margin g* = 0.82645 − θ_W − τ_C ≥ 0.62645, option B, p_0 ≥ 17/(γ_0A_1²), A_0 → (g*)^{−1/2}A_0 for the p. 381 1 − χ^{(n)} factor, C_1′ = max(1, C_c′), κ → κ′ at p. 389; p. 389 needs β_0 < 1/3 (Balaban: β_0 = 1/7; not implied by β_0 ≤ ½), L7 needs β_0 ≤ 0.583; [P] relative to H-143 (M-A), H-146 (M-C), the F2′–α link [I] and the SOURCES_MB_VERIFY transcriptions of pp. 380, 383, 387 (SOURCES_SWEEP_G §2; verified with corrections, SOURCES_SWEEP_AFG_VERIFY §2)". The large-field open-input list then reads: coarea Jacobian on non-round level sets, CMP 102 (189), F2′–α link [I].
3. R-044. Replace "Ursell (7.13) [I]" (both places) by: "Ursell (7.13) = CMP 116 (2.13) [V, images CMP 119 pp. 277–278, CMP 122 II p. 390, CMP 116 p. 14; Balaban counts CMP 116 Sects. 1–2 as Part I Sects. 6–7]; the bound under (1.97) is PROVED by Lemma KP-D with K′_KP = 2·3^d e^{1+5(1+½β)κ}S(½βκ − 24) under (KP-122), which follows from the printed α condition (κ2d) and p. 389 once κ ≥ 2(24 + s_0)/β; c_1 two-valued by the sub-gas argument; residue: KP theorem [I, external], tree geometry of d_{k,∪Y_i} [I], s_0 not valued (SOURCES_SWEEP_G §3; SOURCES_SWEEP_AFG_VERIFY §3)".
4. R-020. Replace "Open: R1 count sketch, R3 the H′(Z_0) assertion" by: "R1: count written out [P] (SOURCES_SWEEP_G §4; verified, SOURCES_SWEEP_AFG_VERIFY §4): unprinted cost 1δ under R3 in d_{k+1} form, 2δ if H′ obeys only the (2.41) level, 3δ with a one-δ D_{k+1}-closure (p. 277 prints Z_i ∈ D_k); the ledger's 13δ and δ = 0.025 stay; new ε_1 condition (R1-a) 24·3^dK_KPη e^{5ρ}S(δρ) ≤ δρ in N-400. Open: R3 the H′(Z_0) assertion". Replace "(verifier counts 2δ; 13δ is a safe upper bound)" by "(counts: 1δ under R3, 2δ verifier, 3δ ledger; all valid; 13δ kept)".
5. R-016 (SWEEP_F §1.4 text) with "licensed by CMP 116 p. 13" → "consistent with CMP 116 p. 13 (free localization domains)".
6. K-035 (SWEEP_F §2.5 text) with: (Avg) called "an admissible convention", not forced; "no constant changes beyond the R4 attachment margin (≤ one M-cube layer)"; O_j shifts only the level-j cubes; R4, R5 kept [P-sketch]; root-free K-036 requirement kept. Do not record "fixed π is insufficient because the period grows with R_j". The R-016 pointer edit of SWEEP_F is safe.
7. R-036 (SWEEP_F §3.3 text) with the hypothesis "trajectory in Balaban's region ((Hβ))" added, and "family (A) [reduced, conditional on (Hβ) on the complex disc]" added to the complex-c clause.
8. R-039 (SWEEP_F §4.3 text) with a note: T9(a) reads exp(−A_1²p_0²) (p. 381); the χ_{j,Λ} factor is closed by A_0 large (N-430).
9. R-025, premise P4: SWEEP_A §1.4 text as written.
10. R-025 residue: SWEEP_A §2.3 text with "it gives the minimum-norm one-step minimizer" → "it gives the minimum-norm one-step minimizer among gauge fixings on this domain that select one point of each residual orbit (including Balaban's linearized axial (0.14))"; keep "R23_VERIFY §5 not reread".
11. R-026, last clause: SWEEP_A §3 text as written.

### 7.2 Canon (SOURCES_ORDER_CANON.md)
1. N-070 (κ), add: "κ ≥ 2(24 + s_0)/β and δLκ/2 ≥ 24 + s_0, s_0 = s_0(d) the entropy threshold of CMP 116 (1.26) [I, not valued]; at canon values this needs s_0 ≤ 168 (large field binds). — SOURCES_SWEEP_G §1.5–1.6 + SOURCES_SWEEP_AFG_VERIFY §1.4–1.5". Lower bound on κ; uses d, L, δ, β only; admissible.
2. N-400 (ε_1), add: "(KP-116) 2·3^d e^{1+5(1−10δ)½Lκ}S(δLκ/2 − 24)·C_3ε_1 ≤ 1; (R1-a) 24·3^dK_KPC_3ε_1e^{5·½Lκ}S(δ½Lκ) ≤ δ½Lκ. — SOURCES_SWEEP_G §1.5, §4.1". Upper bounds on ε_1 using constants before ε_1; admissible.
3. N-030 (β_0), add: "β_0 < 1/3, needed by CMP 122 II p. 389 (−2(1+β_0)^{−1}p_0 + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0 has no solution for β_0 ≥ 1/3); Balaban takes β_0 = 1/7. — SOURCES_SWEEP_AFG_VERIFY §2". No consumer needs β_0 ≥ 1/3 (grep). This is a new finding of this verification, so a coordinator should confirm the page once more before applying it.
4. N-470 (γ), add as a remark: "(KP-122) follows from the printed (1.93) α condition (κ2d) and the p. 389 condition, given N-070's s_0 entry." No value changes.
5. From SWEEP_F: a line for the large-field C_2–C_4 next to N-440/N-450 is safe; it changes no value.
6. Source-file erratum (not a canon change): SOURCES_MB L21 (l. 33, 57) should read exp(−(1+β)κ2d), not 2^d.
No canon value, no Lean statement and no binding set changes.

## 8. Report
SWEEP_G: Lemma KP-D is CONFIRMED line by line. Its KP condition matches GGAIN §4.4(ii) and GGAIN_LF I8. Corrections: entropy source is (1.26); the missing κ ≥ 2(24 + s_0)/β entry; the α condition prints κ2d; c_1 is two-valued; p. 389 needs β_0 < 1/3 (new canon gap). S-102 holds, but the p. 272 citation is not evidence. S-67 1δ CONFIRMED; 13δ kept. SWEEP_F: S-62 "fixed π is not enough" is UNSUPPORTED; "no constant changes" CORRECTED; I36 needs (Hβ); S-95 T9(a) is p_0². SWEEP_A: CONFIRMED, with the minimum-norm scope narrowed.
