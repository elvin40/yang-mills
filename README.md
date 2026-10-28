# Yang–Mills on a torus along Balaban's renormalization group

Paths. The notes were written in one flat working folder and copied into notes/ unchanged. Inside notes/, read paths as follows. reports/X is notes/reports/X and resolves. numerics/X is ../numerics/X at the repository root. lean/X is ../lean/X. balaban/X is a scan of Balaban's papers and is not included; the notes give the CMP volume and page. Paths under /tmp/ or /Users/ are scratch locations on the author's machine and are not included. In lean/README.md, ../X.md means notes/X.md.

Working notes, lemmas, verifier reports, and numerics toward (1) Balaban's unpublished Theorem 2 (running-coupling control, CMP 109 (1987) p. 259) and (2) a finite-torus existence theorem for 4D SU(2) lattice Yang–Mills in compactness form.

Every statement in the notes carries a tag (proved / verified / reduced / open). Nothing here is a complete proof of either target. Layout: notes/ holds the working notes (PLAN.md = dated status lines; THEOREM2_PROOF.md and ASSEMBLY.md = assembly documents; *_VERIFY.md = independent verification passes; notes/reports/ = literature and comparison reports), numerics/ the code and results, lean/ the Lean 4 formalizations.

## Status

Source: notes/PLAN.md (dated lines up to 2026-10-28). Tags: proved, verified (an independent *_VERIFY.md pass confirmed it), reduced, open. Both targets are conditional on Balaban's published proofs (CMP 95-122, 1984-1989), which nobody here re-checked line by line. The repository is private.

### Target 1: Balaban's Theorem 2, weak form

- Reduced: Theorem 2 (weak form) is reduced to the single inequality (H2) plus the fixed-level inputs (PI), (F), (M_j), V1, (G2) and (H0)/L5 (notes/THEOREM2_PROOF_v3.md section 10). Both routes, K and B, rest on (H2). The reduction of (B2) to (H2) is verified (B2_TWOSTEP_VERIFY.md). Theorem 2 weak form implies Theorem 1: proved, unverified.
- Open: (H2) itself. Numerically it holds at L = 3 with a 31% margin (rho_2 = 2.01-2.06 against the threshold 3). L >= 5 is in progress. A certified proof needs a computer-assisted project. Also open: (PI), (F), (M_j), V1, (G2), L5; (H0) is Balaban's, so odd L must exceed 11 or (H0) must be explicit at this L.
- Verified: Theorem K and Theorem 2w as conditional reductions (KAPPA_BOUNDED_VERIFY.md); Lemma D'' (THEOREM2_PROOF_v2_VERIFY.md); the Gaussian RG fixed point, the Ward identity (W), and the exact abelian sector (U3, U3_AW, U1 verifiers).
- Lean 4 (lean/): Lemmas D', D, E, H, D'', and the determinant, telescoping and counting identities, with no sorry (standard axioms only). Lemma H needs column sums bounded by c_i with sum c_i finite.
- Numerics (floating point, not certified): first-step beta_1(L) for L = 2..9 is 0.630, 0.664, 0.757, 0.743, 0.803 (L = 7), 0.851 (L = 9), all positive (numerics/NUMERICS.md).

### Target 2: finite-torus existence (compactness form)

- Verified: ASSEMBLY.md (limit points satisfy the torus forms of OS0-OS3 given the uniform bound (H-U); ASSEMBLY_VERIFY.md) and the bridge (B-N1) given the Gevrey bound (S).
- Sources: D1 verified with corrections (Gaussian level). D2 and D3 are reduced to Balaban's estimates, with verifier corrections. W4 is proved for the regular step, unverified. D4 is open.
- Open: (H-hist) via (B2) and (SM); nontriviality (NT). No O(4) invariance, infinite volume, mass gap, or uniqueness. This is not a solution of the Clay problem.

## How the pieces fit

The Theorem 2 chapter (notes/THEOREM2_PROOF_v3.md) reduces Theorem 2 (weak form) to (H2) and the fixed-level inputs. The assembly (notes/ASSEMBLY.md) turns Theorem 2 plus the sourced bounds into the finite-torus compactness theorem. The sources (notes/SOURCES*.md) supply the sourced bounds that the assembly needs. The numerics (numerics/NUMERICS.md) test (H2) and the one-loop increments beta_j(L). Lean (lean/README.md) checks the shooting lemmas and the exact identities. The paper (paper/) is the LaTeX version of the Theorem 2 chapter. notes/INDEX.md lists every file with its state.

## Independence and prior work

Independence note: these notes were written on 2026-10-27 and 2026-10-28 (see commit dates, which equal the files' modification times). On the night of 2026-10-27 a web sweep (notes/reports/ONLINE_SWEEP.md) found the public account by Ethan Sussman and Levent Alpöge, github.com/ethanwsussman/Yang--Mills-LLM-experiment, which follows the same route and reaches the same open one-loop comparison lemma. That account was not read by any derivation here; notes/reports/SUSSMAN_ALPOGE_MAP.md compares the two.

Citation for that account (from notes/reports/SUSSMAN_ALPOGE_MAP.md §5.1):

> E. Sussman and L. Alpöge (with Claude; README: "written largely by LLM ... Novel mathematical ideas should be attributed to Claude (under the guidance of LA)"), "The Yang--Mills continuum limit along Bałaban's renormalization group: a complete account of Theorem 0" (LaTeX, files theorem_0_complete_account_raw_{master,I,II,III}.tex, 424k lines), and "SU(2) Yang–Mills theory in four dimensions via Bałaban's renormalisation group: construction, axioms and non-triviality" (ym4_manuscript_zeroth_draft.pdf, dated 6 October 2026). Repository: https://github.com/ethanwsussman/Yang--Mills-LLM-experiment, commit 1b92bd0347e3b8763cd8ecc1f96dc3c2a92dd310 (2026-10-27T05:45:28-05:00), accessed 2026-10-27. Repository created 2026-10-06. Disclaimer in README: "This repository contains work-in-progress, written largely by LLM. Its content has not been satisfactorily vetted. All claims should be understood as tentative, pending verification."

Their public, timestamped account predates this one. Any writeup from this repository must cite it.

The Balaban papers (Communications in Mathematical Physics, 1984–1989) are not included.

How to cite: use the metadata in CITATION.cff (GitHub shows it under "Cite this repository"), and give the commit hash you used.

License: documents CC BY 4.0 (LICENSE); code in numerics/ MIT (numerics/LICENSE).
