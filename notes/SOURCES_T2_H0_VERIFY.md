# SOURCES_T2_H0_VERIFY — item H0, VERIFY

Date: 2026-10-28. Author: Claude (headless verifier session). Status: in progress.
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
