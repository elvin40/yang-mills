# SOURCES_T2_H0 — item H0 (DERIVE): reducing TRUST_LEDGER A5 to the first-derivative form 7′, uniform in j and in the history

Date: 2026-10-28. Author: Claude (headless session). Status: in progress.
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). reports/ONLINE_SWEEP.md not read.

Read list.
- TRUST_LEDGER.md l. 28–32 (A5), l. 68 (B7), l. 113 (C19), l. 125–136, l. 160–180.
- THEOREM2_PROOF_v4.md l. 16, l. 45–60, l. 160–180, l. 440–450 (§10 items 7, 9). "7′" does not occur in v4; its text is in SOURCES_GGAIN_NONMONO §5 and TRUST_LEDGER A5.
- SOURCES_GGAIN.md (full), SOURCES_GGAIN_VERIFY.md (full).
- SOURCES_GGAIN_LF.md l. 1–35, l. 60–108; SOURCES_GGAIN_LF_VERIFY.md (full).
- SOURCES_GGAIN_NONMONO.md l. 1–109 (full); SOURCES_GGAIN_NONMONO_VERIFY.md (full).
- SOURCES_T2_KUNIF.md l. 60–85; SOURCES_T2_KUNIF_VERIFY.md (full).
- R2_VERIFY.md l. 100–140.
- SOURCES_SM.md l. 55 (definition of C_Π), by grep.
- Balaban page images read in this session: CMP 109 pp. 263–264 (PDF 15–16); CMP 116 p. 9 (PDF 9), pp. 20–21 (PDF 20–21); CMP 119 p. 259 (PDF 17), p. 279 (PDF 37); CMP 122 II p. 390 (PDF 36). Text layers: CMP 109 l. 715–810; CMP 116 l. 425–450, l. 985–1075; CMP 119 l. 840–905.

Numerical facts: none measured. No script written. Constants are existential; no explicit γ or C_β is claimed.

## Plan
1. Target, and the exact gap left by GGAIN / GGAIN_LF / NONMONO.
2. What Balaban prints about uniformity in j (CMP 109 pp. 263–264, CMP 116 pp. 9, 20–21) [V].
3. Part (a): audit of every constant in S_0 and C_β for dependence on j.
4. Part (b): audit of every constant for dependence on the past.
5. The large-field papers (CMP 119 (2.24)–(2.28), p. 279; CMP 122 II (1.100)–(1.102)): do they reach β, and are they j-uniform?
6. Assembly: Proposition H0-red (7′ from named inputs), with proof.
7. Residue: the exact list of named inputs, tagged.
8. Ledger.

## 1. Target, and the gap left by the earlier files

1.1 A5 as printed. CMP 109 p. 263 and p. 264 [V, page images PDF 15–16]. On E^{(j)}: "It is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic), with a positive, absolute γ. There exists a constant E_0 such that |E^{(j)}(X, g_{j−1}, U, J)| ≤ E_0 exp(−κd_j(X)) (1.18) for M ≥ M(κ), γ sufficiently small, and for all configurations (U, J) ∈ U^c_j(X, α_0, α_1)." On β_{j+1}, after (1.22): "It is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives. We will investigate other properties in a separate paper."

1.2 Target form 7′ (SOURCES_GGAIN_NONMONO §5; TRUST_LEDGER A5). There are γ > 0 and C_β, free of k, K, and the history, with
  |β_{k+1}(h, g) − β_{k+1}(0)| ≤ C_β g  for every past h ∈ ]0, γ]^k and every g ∈ ]0, γ].   (7′)
Here β_{k+1}(h, g) is the output of step k+1 with own coupling g and past couplings h; β_{k+1}(0) is the one-loop value. T1 uses only (7′); it does not use C^∞, higher derivatives, or C¹ at g = 0 (TRUST_LEDGER C19; KUNIF_VERIFY S6(c)).

1.3 What is already covered (by verified files).
- Own-slot derivative, small-field step, on (0, γ]: GGAIN Theorem B2-unif and §4.5, |∂β_{k+1}/∂g_k| ≤ C_β := C_ΠS_0 (GGAIN_VERIFY grades 1, 2, 5; modulo G3, (M_r)).
- β sees only E-class terms: CMP 119 p. 279 [V, GGAIN_LF_VERIFY V2; re-read in this session, §5].
- Large-field outputs R′, B′, T(Y): own-slot derivative uniform (GGAIN_LF §3–§8 [R]; VERIFY grades 1–5). Not needed for β (§5 below).
- Non-monotone pasts: the only monotonicity use is D3W8 F2′ (u1); the running maximum G_k closes it for every past; C_β′ = C_β (NONMONO §2.4, Lemma C_β-NM; VERIFY V1–V3).
- (K1): β_{k+1}(h, 0) = β_{k+1}(0) for every past (CMP 109 p. 268 [V, KUNIF_VERIFY S8, NONMONO_VERIFY V6]).

1.4 What remains (R2_VERIFY row 12; KUNIF_VERIFY S10 item 3).
- (a) Uniform in j. R2_VERIFY row 12: "V3 uniform-in-j bound | UNSUPPORTED (plausible) | Not stated explicitly on p. 264". GGAIN states "uniform in g_k". It does not audit its constants for j.
- (b) Uniform in the history. NONMONO removes the order restriction. It does not audit whether the input bound E_0 itself holds on an arbitrary past (an off-trajectory past is not a Balaban trajectory).
This file audits both. The question in each case: does any constant in S_0 or C_Π depend on j or on the past, and if so through which Balaban input, and is that input printed as uniform.

## 2. What Balaban prints about uniformity in j

2.1 CMP 109 p. 263 [V, page image PDF 15]. Verbatim: "We assume that the function E^{(j)}(X, g_{j−1}, U, J) is defined and analytic on the space U^c_j(X, α_0, α_1), with some positive, absolute constants α_0, α_1 (i.e., constants independent of X and j)." So Balaban glosses "absolute" as "independent of X and j" [V]. The same page calls γ "a positive, absolute γ" [V]. E_0 is "a constant", with no index j [V]. Reading [I]: by the gloss, every constant Balaban calls "absolute" is j-free. I use this reading only where Balaban writes "absolute" or writes a constant without an index.

2.2 CMP 109 p. 264 [V, page image PDF 16]. The derivative clause is "uniformly bounded on this interval together with all derivatives". The word "uniformly" attaches to "on this interval". The sentence names no constant and does not say "independent of j". So R2_VERIFY row 12 is right: uniformity in j of the β-derivative bound is not printed [V]. Theorem 3 (same page) quantifies "positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1" before "0 < g_k ≤ γ for k = 0, 1, …, K" [V]. So these seven constants are free of K and of the sequence. E_0 and the derivative bounds of β are not in this list [V]. Note also that Theorem 3's hypothesis is 0 < g_k, an open endpoint at 0 [V].

2.3 CMP 116 p. 9, Lemma 1 [V, page image PDF 9]. Verbatim: "For each term in the sum there exists a function V′_k(Y, U, J, B), defined and analytic on the space U^c_{k+1}(Y, (1+β)α_0, (1+β)α_1, α_0) × {B: |B| < ε_1g_k^{−1} on Y}, (1.34) … There exist absolute constants C_1, C_2, q, for which |V′_k(Y, U, J, B)| ≤ E_0ε_1C_1M^q exp C_2κ_1 exp(−(1−2δ)κd_k(Y)). (1.36)". So the input sup used by GGAIN Lemma G1 is printed with absolute (j-free) constants [V]. The same page, before Lemma 1, controls the sum over the earlier scales j inside E_k: "The first term under the exponential gives also the factor L^jη, which controls the sum over j" [V]; this uses the scaling inequality (1.31) d_j(X) ≥ (L^jη)^{−1}d_k(X_0) [V]. So the input E_k = Σ_{j≤k}(…) has a sup bound free of k, because the earlier scales are summed by a geometric factor.

2.4 CMP 116 pp. 20–21 [V, page images PDF 20–21]. p. 20: "the inequality (2.29) is valid for all k" [V]; "(LM)^4α_0, (LM)^4α_1, (LM)^4α_4, (LM)^4γ_2 are bounded by a constant independent of M, for example by 1. Then O(1)(LM)^4α_5 + exp(−½(κ_1 − 1)) is bounded by an absolute constant" [V]; "We define the constant C_3 = 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1" [V]. p. 21, after (2.41) |E^{(k+1)}(X)| ≤ O(1)C_3ε_1 exp(−(1−10δ)½Lκd_{k+1}(X)): "Next, we assume that O(1)C_3ε_1 ≤ ½E_0. … The assumptions allow finally us to fix all the constants, or rather bounds on these constants." and, for the term log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1): "with an absolute constant instead of E_0. We define ½E_0 as equal to this constant" [V].
 Consequence [P from the quoted text]. The closure condition O(1)C_3ε_1 ≤ ½E_0 reads O(1)·2(L+2)^4·2C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1}·ε_1 ≤ ½ after dividing by E_0. It contains no k. So the sup induction (1.18) closes with one E_0 for all steps, under step-free conditions on ε_1. This is the printed j-uniformity of the SUP bound. The printed text proves nothing about g-derivatives: the closing sentence on p. 21–22 is "The above remark completes the proof of the inductive assumptions for the action A_{k+1}, hence the proof of Theorem 1.3" [text layer l. 1072–1074; p. 22 image not read], and no g-derivative estimate appears on pp. 1–22 (GGAIN §4.3: "Balaban never differentiates χ_k"; BALABAN_EXCERPTS_CHECK item 10, as cited in v4 l. 175 [I, not re-read]).

2.5 Sup part of β, j-uniform [P given C_Π]. β_{k+1} = Π(E^{(k+1)}) with Π linear and g-free; C_Π is its norm on the (1.18) sup norm (SOURCES_SM l. 55: "Cauchy in B for the second derivative (radius set by α_0) times Σ_x x²e^{−κ′d}"). Hence sup_g|β_{k+1}(g)| ≤ C_ΠE_0, free of k, by 2.4. Whether C_Π is j-free is audited in §3 (item C9).

2.6 Why the sup does not give 7′ [P, GGAIN §3.1, VERIFY grade 1]. A sup bound on a real interval gives no derivative bound (f(g) = g sin g^{−2}). So (7′) needs the GGAIN derivative argument, and (a) reduces to the j-dependence of GGAIN's constants. §3 does this audit.

## 3. Part (a): every constant in S_0 and C_β, audited for j

Route (b) of GGAIN (§4.4, §6.1): C_β = C_ΠS_0, S_0 = O(1)C_3[K_1α_4^{−1/2}(1−r)^{−1} + O(1)‖χ̂′‖_∞γ_2^{−1/2}], C_3 = 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1}. GGAIN_VERIFY grade 2 confirms that S_0 is free of 1/g_k and of ε_1. Below, each ingredient is traced to its source and graded for j-dependence. "j-free" means: the source gives one value for all steps.

C1. E_0. Source: CMP 109 (1.18) and the closure on CMP 116 p. 21. j-free [V, §2.4]: the closure O(1)C_3ε_1 ≤ ½E_0 and the log Z^{(k)} constant ("an absolute constant … We define ½E_0 as equal to this constant") contain no k. In GGAIN the input enters as the radius 2E_0 inside C_3 (NONMONO_VERIFY V3). j-free.
C2. C_1, C_2, q. Source: CMP 116 Lemma 1, (1.36): "There exist absolute constants C_1, C_2, q" [V, p. 9 image]. j-free by the gloss of §2.1 [V + I].
C3. The input sum over earlier scales. Source: CMP 116 p. 9, the factor L^jη "controls the sum over j", from (1.31) [V]. The sum is geometric, so the sup in (1.36) does not grow with k. j-free [V for the sentence; I that the geometric constant is the one absorbed into C_1M^qe^{C_2κ_1}].
C4. κ, κ_1, M, δ, L. Fixed once in Balaban's order of constants: δ = (1/10)(1 − 2L^{−1}) (p. 21 [V]); κ, M by CMP 109 Theorem 3 [V]. j-free.
C5. α_0, α_1. "absolute … independent of X and j" (CMP 109 p. 263 [V]). j-free.
C6. α_4, α_6, γ_2, α_5. Chosen small once; p. 20 requires "(LM)^4α_4, (LM)^4γ_2 … bounded by a constant independent of M" [V]; (2.22) "γ_2 a small positive constant" (GGAIN_VERIFY §4 [V there]). α_5 = O(1)e^{−δ_0M/3} + O(α_0+α_1) + O(1)α_4 + γ_2 (p. 20 [V]). j-free, given that δ_0 and the O(1)'s are (C8, C10).
C7. Gaussian condition (2.24): α_5‖C^{(k)}‖ < ½ (GGAIN_VERIFY §4 [V there]). This needs ‖C^{(k)}‖ ≤ const uniformly in k. Source: CMP 116 p. 13 (2.7) and CMP 99 p. 428 = TRUST_LEDGER A3 (lower bound γ_0, uniform in k: FULL PROOF, verified, SOURCES_A3_GAMMA0_FULL) and A7 (‖C*Δ_kC‖ ≤ γ_1 and uniform decay: asserted by Balaban, reduced by us to A1 + A18). So C7 is j-free [R to A3 (verified) and A7 (reduced to A1 + A18)].
C8. δ_0 (decay rate of the fluctuation covariance, in α_5 and in all kernel decays). Source: CMP 99 / CMP 116 p. 13; uniform in k as part of A7 and A1 [R to A1, A7]. Printed as uniform in k in the cited statements (A7: "uniform in k, volume, regular U", TRUST_LEDGER l. 31–32).
C9. C_Π. Definition: norm of E ↦ β (1.20)–(1.22) on the (1.18) sup norm (SOURCES_SM l. 55). Ingredients: a Cauchy radius in B set by α_0 (j-free, C5) and Σ_x x²e^{−κ′d(x)} on the lattice obtained in the limit "T^{(j+1)} ↗ Z^d" (CMP 109 p. 264 [V]). After the rescaling to Z^d the localization geometry D_{j+1} is the same at every j. So C_Π is j-free [I: the scale invariance of D_{j+1} and of the U^c_{j+1} radius after rescaling is read from CMP 109 §1, not re-derived line by line].
C10. Balaban's O(1)'s in (2.18)–(2.41). Balaban writes them without an index, and calls the combinations on p. 20 "absolute". j-free [I: Balaban's convention; each O(1) is not re-derived].
C11. K_1 (GGAIN Lemma G2), C_P (Lemma G1(b)), a_1 ((1.39)–(1.40)). Built from α_4, C_1, M, κ_1, and the constants of CMP 116 (1.39)–(1.40) (written C_3 there, a_1). These carry no index in CMP 116 [V via GGAIN_VERIFY §2]. j-free [I, as C10]. Note: CMP 116 uses the symbol C_3 both in (1.39) and on p. 20; GGAIN keeps them apart. Both are index-free.
C12. r (margin (M_r)) and χ̂ (smooth cut, route G3-smooth). Fixed choices made in GGAIN. j-free [P]. The G3 surface constant in the sharp-cut route is O(γ_2^{−(n_b+1)/2})ε_1^{−1} (GGAIN_VERIFY grade 6), again built from j-free constants [P given C6].
C13. ε_1. Cancels in S_0 (GGAIN_VERIFY grade 2). It is one of Theorem 3's K-free constants [V]. j-free.
C14. The Kotecký–Preiss derivative step and the mark-choice factor (GGAIN §4.4 (i)–(ii)): α_6 → α_6/2, δ → δ + δ′, polydisc margin (C5). These use the same step-free smallness conditions as (2.38)–(2.41). j-free [R: KP derivative step, standard, not written out (GGAIN ledger)].
C15. The term log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1). In the B variables the Gaussian measure and its normalization are g-free (SOURCES_SM §4.1; N1_VERIFY Part 1 claim (2), as cited in GGAIN §3.3). So this term has ∂_g = 0. It contributes only the g-independent part of β_{k+1}. [I: taken from SM §4.1 as verified there; not re-derived here.]

3.16 Conclusion of (a) [P given C1–C15]. No ingredient of S_0 or C_Π depends on j. Every ingredient is one of: (i) a constant Balaban calls "absolute" or writes without index (C2, C5, C10, C11) [V + I]; (ii) E_0, whose closure condition is printed step-free (C1) [V]; (iii) a constant fixed once in the order of constants (C4, C6, C12, C13) [V/P]; (iv) the uniform-in-k covariance bounds A3, A7, A1 (C7, C8) [R]; (v) C_Π, j-free by scale invariance (C9) [I]. So C_β = C_ΠS_0 is j-free, under the same inputs GGAIN already uses plus A3/A7/A1 and the two [I] readings C9, C10.
 No negative result. No constant was found that grows with j. In particular the j-dependence that Balaban's large-field papers introduce (R_j, p_0(g_j), α_{0,j} of CMP 119 (2.28)) does not enter S_0; see §5.
 What (a) does NOT give: a j-uniform bound on higher g-derivatives of β (Balaban's "all derivatives"). T1 does not need them.

## 4. Part (b): every constant audited for dependence on the past

4.1 How the past enters step k+1 [P from GGAIN §4, NONMONO §1.1, NONMONO_VERIFY V2]. Step k+1 has own coupling g = g_k and inputs E^{(j)}(·; h_{j−1}), j ≤ k, built from the past h. GGAIN Lemmas G1–G3, Theorem B2-unif and §4.5 use the inputs only through their sup bound (radius 2E_0 inside C_3; (1.36) inside v). No coupling g_j, j < k, appears in any of these constants (NONMONO_VERIFY V2: "only g_k, ε_1, E_0 (input sup), fixed constants. No g_j, j<k"). So C_β depends on the past only through the question: do the inputs obey (1.18) with the same E_0 on this past?

4.2 Does CMP 116 compare couplings? [I, text-layer grep in this session] A grep of the CMP 116 text layer for "coupling" finds only the bibliography (l. 1071) and the word "decoupling". The only coupling symbol in §1–§2 is g_k (e.g. (1.34) "{B: |B| < ε_1g_k^{−1}}", (2.22) ε_1²/g_k², (2.31) "γ sufficiently small"). Line 486 of the text layer: "where C_3 is an absolute constant. To cancel the factor 1/g …" (the (1.39) constant; OCR, not page-checked). So the small-field step of CMP 116 uses the own coupling only, and the input sup E_0. The induction step "inputs obey (1.18) with E_0 ⇒ outputs obey (1.18) with E_0" (p. 21 [V]) therefore holds for any own coupling g_k ∈ (0, γ] and does not look at the earlier couplings. By induction on k, the inputs obey (1.18) with E_0 for every past h ∈ ]0, γ]^k, PROVIDED the chain with arbitrary slots is defined as in 4.3. [R: to CMP 116 §1–§2 (no coupling comparison, grep [I]) and SOURCES_SM §5.1, "runs for every slot vector h_k ∈ [0, γ]^{k+1}" [reduced there].]

4.3 The definitional step (B7/L5). On Balaban's trajectory the coupling recursion (0.20) 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k) puts the action after step k+1 back into the inductive form (1.3) with coefficient 1/g_{k+1}² (CMP 119 p. 279 [V]: "replacing the function g_k^{−2}(·) in the action A(g_k^{−2}(·), U_{k+1}) by g_{k+1}^{−2}(·) defined by the equation (2.24) with j = k+1"). For an arbitrary past, consecutive slots do not satisfy (0.20). Then the step chain must be DEFINED: e.g. "step j+1 uses the plaquette coefficient 1/g_j² with g_j the given slot, and the inputs E^{(i)}, i ≤ j, of the earlier steps". This is TRUST_LEDGER B7 (L5): "β_{k+1}(g_0, …, g_k) defined and continuous on the clamped cube ]0, γ]^{k+1}, … slot functions valid off Balaban's trajectory"; Balaban defines β_j only along his trajectory (CMP 109 p. 298, "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants" [V, KUNIF_VERIFY S8]). This file does not close B7. With B7's slot definition, 4.2 gives the input bound E_0 on every past.

4.4 The R-term route (F2′) does not reach β [I, with page support]. NONMONO §2.4 lifts the order restriction in D3W8 F2′ by the running max G_k. That device concerns R-induced inputs. CMP 119 p. 279 [V, image read here]: "The coupling constant renormalization is performed by subtracting β_{k+1}(g_k)A(φ_{k+1}, U_{k+1}) from E^{(k+1)} − E^{(k+1)}(1)", and the R″^{(k+1)} terms are booked into R^{(k+1)}. CMP 119 p. 278 (KUNIF_VERIFY S7 [V there]): the E^{(k+1)} terms with X ⊂ Λ_{k+1} "coincide with the corresponding terms arising from the expressions defined on the whole lattice, i.e. in the framework of [I]". CMP 119 p. 259 [V, image read here]: "The term E_k is the regular part of the action. It has the same properties as the effective action constructed in [I] for the small field approximation". In the framework of [I] there are no R-operations. So β_{k+1} is the coefficient of a chain whose inputs are [I] E-terms only, and F2′ is not used for β. This is NONMONO §2.5's "pure-part reading", now supported by p. 259, p. 278, p. 279. The identification itself is TRUST_LEDGER A15 (printed by Balaban without proof), already in T1. Consequence: the caveat c1 of NONMONO_VERIFY V7 (∂_g hitting R^{(k)} on the literal reading) is void for β under A15. On the literal reading, NONMONO's running max still gives C_β′ = C_β (NONMONO_VERIFY V1, V3).

4.5 Conclusion of (b) [P given 4.1–4.4]. C_β depends on the past only through the input sup E_0. E_0 holds on every past h ∈ ]0, γ]^k under (i) B7's slot definition of the off-trajectory chain, (ii) the CMP 116 induction step, which uses only the own coupling [R; grep I], and (iii) A15 (β from the [I] chain only), or alternatively the running-max F2′ of NONMONO on the literal reading. No constant depends on the past. No negative result.
 One residual subtlety, not a gap for 7′: CMP 116's closure needs g_k ≤ γ with γ small "depending on M and κ" ((2.31), GGAIN §1). On an arbitrary past every slot is ≤ γ by hypothesis, so this holds slot by slot [P].
