# SOURCES_T2_S123_VERIFY — independent check of SOURCES_T2_S123.md (spectral inputs (S1)–(S3) for (M_j))

Date: 2026-10-28. Status: in progress (sections appended one at a time).
Author: headless Claude session, brief S123 (VERIFY).
Read: SOURCES_T2_S123.md (all, 285 lines); BETA_FP_M.md (all); KAPPA_BOUNDED.md l. 1–41, 105–174; BETA_FP_H.md l. 13–90; U3_LEMMA51.md l. 1–140; THEOREM2_PROOF_v4.md l. 420–488; numerics/NUMERICS.md l. 53–78; numerics/t2_s123_gap2d.py, numerics/t2_s123_phys2d.py (read and rerun). Balaban CMP 99 (propagators) p. 395 (PDF p. 7), page image.
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md; reports/ONLINE_SWEEP.md not opened).
No existing file edited. No new script written (the two cited scripts were rerun as they are; outputs went to /tmp only, see §8).

Tags: [P] proved here; [R] reduced to a named input; [I] inference or reading not checked line by line; [V] checked against a Balaban page image or text layer (stated which), or against a rerun script (stated).
Grades: CONFIRMED, CORRECTED (correction stated), UNSUPPORTED (missing piece stated).

## Plan
1. Check (1): the operator 𝒦_t against KAPPA_BOUNDED.
2. Toolkit, claims 1–4 (Lemmas 1.1–1.4).
3. Check (2): well-posedness and (S1), claims 5–11 (constants, Gårding/commutator step, use of Theorem A3).
4. Check (4): (S3), claims 12–14, subdivision and the smallness condition on n.
5. Check (3): (S2), weak form, claims 15–23, and what BETA_FP_M Prop. 4.3 needs.
6. Check (5): Corollary (M_j), Lemma 7.2, no uniformity in j; claims 25–27.
7. Check (6): rational flux / continuity in f.
8. Check (7): numerics rerun and NUMERICS.md l. 53–78; claim 24. Balaban quote.
9. Status of THEOREM2_PROOF_v4 §10 item 4.
10. Grades.
