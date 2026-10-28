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
