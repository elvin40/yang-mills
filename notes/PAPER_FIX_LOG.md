# PAPER_FIX_LOG.md (2026-10-27)
- started; read PAPER_INTRO_VERIFY + PLAN tail
- main.tex: F1, F2, F3 applied verbatim.
- intro.tex: F4, F6, F27 (two legend items, placed after the interval-enclosure item), F28 applied.
- F7 decision: YES. Lemma D (theorem2.tex lem:D) assumes b <= beta_j(g) <= b' with b > 0 for every j (all increments positive); Theorem 2w's trajectory comes from Lemma D'' (window sums only; eventual positivity open). So the shooting solution must cite D''. Fixed in assembly.tex (Thm 4.x), ASSEMBLY.md (l. 13 notation + l. 40 theorem), and setup.tex l. 9 (same wrong citation; not in the F-list, deviation).
