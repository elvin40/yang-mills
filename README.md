# Yang–Mills on a torus along Balaban's renormalization group

Paths. The notes were written in one flat working folder and copied into notes/ unchanged. Inside notes/, read paths as follows. reports/X is notes/reports/X and resolves. numerics/X is ../numerics/X at the repository root. lean/X is ../lean/X. balaban/X is a scan of Balaban's papers and is not included; the notes give the CMP volume and page. Paths under /tmp/ or /Users/ are scratch locations on the author's machine and are not included. In lean/README.md, ../X.md means notes/X.md.

Working notes, lemmas, verifier reports, and numerics toward (1) Balaban's unpublished Theorem 2 (running-coupling control, CMP 109 (1987) p. 259) and (2) a finite-torus existence theorem for 4D SU(2) lattice Yang–Mills in compactness form.

Every statement in the notes carries a tag (proved / verified / reduced / open). Nothing here is a complete proof of either target. Layout: notes/ holds the working notes (PLAN.md = dated status lines; THEOREM2_PROOF_v4.md = current Theorem 2 chapter, ASSEMBLY.md = assembly document; *_VERIFY.md = independent verification passes; notes/reports/ = literature and comparison reports), numerics/ the code and results, lean/ the Lean 4 formalizations.

## Status

Source: notes/PLAN.md (dated lines up to 2026-10-28). Tags: proved, verified (an independent *_VERIFY.md pass confirmed it), corrected (the verifier changed a claim), reduced, open. Both targets are conditional on Balaban's published proofs (CMP 95-122, 1984-1989), which nobody here re-checked line by line. The repository is private.

### Target 1: Balaban's Theorem 2, weak form

- Reduced to the single inequality (H2) plus the fixed-level inputs (PI), (F), (M_j), V1, (G2) and (H0)/L5 (THEOREM2_PROOF_v4.md section 10). The reduction of (B2) to (H2) is verified (B2_TWOSTEP_VERIFY.md); Theorem K and Theorem 2w are verified as conditional reductions. Theorem 2 weak form implies Theorem 1: proved, unverified.
- (H2) holds numerically for L = 3..13 (float; rho_2 = 2.063 at L = 3 against the threshold 3). At L >= 5 the one-step condition rho_1^2 < L suffices; at L = 13, sup rho_1^2 = 4.37 < 13.
- Certified: a point enclosure rho_2(inf, K*) in [1.9993, 2.1273] at L = 3 (verified, H2_CERTIFY_VERIFY.md). Premise P4 is proved (H2_CERTIFY_P4.md). Not certified: the full cell certificate. The L = 13 one-step certification is sized at about 1,100 core-hours after fix G1 (H2_CERTIFY_L13_G1.md). Launch is approved and not yet launched.
- Open: (PI), (F), (M_j), V1, (G2), L5. (H0) is Balaban's, so odd L must exceed 11 or (H0) must be explicit at this L. The numerics at L <= 13 are supportive only.

### Target 2: finite-torus existence (compactness form)

- Verified: the assembly (ASSEMBLY_VERIFY.md); limit points satisfy the torus forms of OS0-OS3 given the uniform bound (H-U). The bridge (B-N1) is derived given the Gevrey bound (S).
- The sources block is now a verified reduction with named open inputs. D1 is verified; D2, D2C, D3, D3R and D3W8 are verified with corrections; D4/D5 are verified with (FX) as the gap.
- (H-hist): chain (SM) + (G-gain), both verified; G3 (the chi_k surface term) is proved given (Q); (Q) reduces to (3.132) + (E_U) + LOC (reduced; SOURCES_Q, CDC, EU, LOC).
- (H-thr) follows from (H-hist2) (verified reduction; SOURCES_HTHR2, SOURCES_HHIST2).
- (FX): O1, O2, O3 and R2 are verified. O3 depends on N3. N3 is reduced to (H-hol): the small-field part is a verified reduction (SOURCES_HHOL); the large-field part is reduced to (M-A), (M-B), (M-C). (M-B) is verified with p_0 >= 17/(gamma_0 A_1^2). (M-A') (normalized-ratio bookkeeping) is open (SOURCES_MA, MA2).
- Open: nontriviality (NT); the inputs named above. No O(4) invariance, infinite volume, mass gap, or uniqueness. This is not a solution of the Clay problem.

### Paper, Lean, numerics

- paper/main.pdf is one 51-page article (Theorem 2 chapter + assembly), unverified as a whole.
- lean/ holds 17 files, no sorry (standard axioms only); see lean/README.md.
- Numerics (floating point unless marked): first-step beta_1(L) for L = 2..11 is 0.630, 0.664, 0.757, 0.743, 0.803, 0.851, 0.868 (numerics/NUMERICS.md).
- Competing account: Sussman and Alpoge (citation below) reach the same route and were not read by any derivation here.

## How the pieces fit

The Theorem 2 chapter (notes/THEOREM2_PROOF_v4.md) reduces Theorem 2 (weak form) to (H2) and the fixed-level inputs. The assembly (notes/ASSEMBLY.md) turns Theorem 2 plus the sourced bounds into the finite-torus compactness theorem. The sources (notes/SOURCES*.md) supply the sourced bounds that the assembly needs. The numerics (numerics/NUMERICS.md) test (H2) and the one-loop increments beta_j(L). Lean (lean/README.md) checks the shooting lemmas, exact identities, and certifier bridges. The paper (paper/main.pdf, 51 pages) is the LaTeX article merging the v4 chapter and the assembly. notes/INDEX.md lists every file with its state.

## Independence and prior work

Independence note: these notes were written on 2026-10-27 and 2026-10-28 (see commit dates, which equal the files' modification times). On the night of 2026-10-27 a web sweep (notes/reports/ONLINE_SWEEP.md) found the public account by Ethan Sussman and Levent Alpöge, github.com/ethanwsussman/Yang--Mills-LLM-experiment, which follows the same route and reaches the same open one-loop comparison lemma. That account was not read by any derivation here; notes/reports/SUSSMAN_ALPOGE_MAP.md compares the two.

Citation for that account (from notes/reports/SUSSMAN_ALPOGE_MAP.md §5.1):

> E. Sussman and L. Alpöge (with Claude; README: "written largely by LLM ... Novel mathematical ideas should be attributed to Claude (under the guidance of LA)"), "The Yang--Mills continuum limit along Bałaban's renormalization group: a complete account of Theorem 0" (LaTeX, files theorem_0_complete_account_raw_{master,I,II,III}.tex, 424k lines), and "SU(2) Yang–Mills theory in four dimensions via Bałaban's renormalisation group: construction, axioms and non-triviality" (ym4_manuscript_zeroth_draft.pdf, dated 6 October 2026). Repository: https://github.com/ethanwsussman/Yang--Mills-LLM-experiment, commit 1b92bd0347e3b8763cd8ecc1f96dc3c2a92dd310 (2026-10-27T05:45:28-05:00), accessed 2026-10-27. Repository created 2026-10-06. Disclaimer in README: "This repository contains work-in-progress, written largely by LLM. Its content has not been satisfactorily vetted. All claims should be understood as tentative, pending verification."

Their public, timestamped account predates this one. Any writeup from this repository must cite it.

The Balaban papers (Communications in Mathematical Physics, 1984–1989) are not included.

How to cite: use the metadata in CITATION.cff (GitHub shows it under "Cite this repository"), and give the commit hash you used.

License: documents CC BY 4.0 (LICENSE); code in numerics/ MIT (numerics/LICENSE).
