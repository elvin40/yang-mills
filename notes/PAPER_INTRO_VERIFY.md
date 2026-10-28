# PAPER_INTRO_VERIFY.md

Second-pass verification of paper intro/remains/appendix B/assembly table vs ground truth. Started 2026-10-27.

## 1. Independence statement (task 5)

Sources compared: paper/intro.tex l. 57-75; ~/git/yang_mills/README.md l. 40-48 (repo README; no README.md in the working folder); THEOREM2_PROOF_v4.md §11.
- Paper vs v4 §11: verbatim up to LaTeX markup, the added \cite keys, and §3.5/§5 -> \ref{sec:symbols}/\ref{sec:H2}. Paper adds a lead paragraph (l. 59). MATCH to v4 §11.
- Paper vs README.md: NOT verbatim. README has a different, shorter note (l. 42) plus the citation block (l. 46) and "Their public, timestamped account predates this one. Any writeup from this repository must cite it." (l. 48). The citation block in the paper (l. 61) equals README l. 46 plus "\cite{...}" and "Suggested keys: ...". The README sentence "predates this one" is absent from the paper.
- Content conflict: README l. 42 and l. 34 say the S-A account "was not read by any derivation here". Paper item 3 (l. 69) says the bounded-kappa idea entered KAPPA_BOUNDED through the map. The paper is the more exact record; the README claim is OVERSTATED (README fix, not .tex).
- Paper item 1 says "This chapter"; in the merged article it should say "The Theorem 2 chapter (Section 3)" or "This paper". Minor.

## 2. Theorem A/B hypothesis lists (task 4)

Theorem A (intro.tex l. 21-28) vs v4 §1.3 + §10.
- L condition, SU(2), d = 4, conclusions (b), (c'), (S): MATCH v4 §1.3.
- (i) hypothesis list (H2), (PI), (F), (M_j), V1, (G2), L5: MATCH v4 §10 items H, 2-6, 8; (H0) (item 7) covered by the L > 11 clause.
- MISSING: v4 §10 item 9 (K-independence of beta_j(g), [open]). The dependency table row B-T2 carries it; Theorem A(i), the §4 (B-T2) status paragraph (assembly.tex l. 56), and the abstract do not.
- (ii) "proved, unverified (sweep)": MATCH v4 §1.4/§10 item 10 and README.
- "Route B also gives (i)": Route B needs (T1), (DF), A6, LW (5.7), theta_* < 1 and drops (PI), (M_j), V1 (v4 §10 B1-B7). Theorem A does not say Route B has a different hypothesis set. Minor; add "under its own inputs (Section 6)".
- Nothing extra.

Theorem B (intro.tex l. 30-32; Theorem 4.x in assembly.tex l. 24-25) vs ASSEMBLY §1.3 + §3.
- SU(2), d = 4, L odd large, ell even, shooting solution with g_k in ]0, gamma], g_K = g, (H-U): MATCH.
- intro omits "K >= K_0" and "gamma = Balaban's small constant, g small"; Theorem 4.x keeps them. Minor.
- Global conditions GC1-GC3 are not in the statement; given (H-U) they are not needed for the proved part, so not missing.
- Theorem 4.x cites Lemma D for the shooting solution; Theorem 2w uses Lemma D'' (Lemma D needs positive increments). PLAN.md flag "queue B5". STILL OPEN in the .tex.
- Status tag "proved modulo named blocks" is not a tag in the §1.4 legend. ASSEMBLY_VERIFY confirms the in-chapter proofs (assembly.tex l. 230). Minor legend gap.

