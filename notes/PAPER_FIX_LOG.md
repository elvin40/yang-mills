# PAPER_FIX_LOG.md (2026-10-27)
- started; read PAPER_INTRO_VERIFY + PLAN tail
- main.tex: F1, F2, F3 applied verbatim.
- intro.tex: F4, F6, F27 (two legend items, placed after the interval-enclosure item), F28 applied.
- F7 decision: YES. Lemma D (theorem2.tex lem:D) assumes b <= beta_j(g) <= b' with b > 0 for every j (all increments positive); Theorem 2w's trajectory comes from Lemma D'' (window sums only; eventual positivity open). So the shooting solution must cite D''. Fixed in assembly.tex (Thm 4.x), ASSEMBLY.md (l. 13 notation + l. 40 theorem), and setup.tex l. 9 (same wrong citation; not in the F-list, deviation).
- assembly.tex: F5, F7, F8-F16 applied; F8 'launch approved' -> 'launch approved with conditions' (PLAN 2026-10-28 line lists three conditions; deviation). F12: tag replaced by verified reduction (legend item added via F27). New rows: B-T2.H1 (L=13 one-step, P4, G1 sizing), B-S.G3, B-S.Q (+CDC), B-S.EU, B-S.LOC, B-S.hist2, B-S.N3, B-S.N3A, B-S.hol, B-S.holLF, M-A, M-B, M-C, M-D.
- remains.tex: F17-F23 applied ('with conditions' added in F17, same deviation as F8).
