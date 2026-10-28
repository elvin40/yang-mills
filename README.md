# Yang–Mills on a torus along Balaban's renormalization group

Paths. The notes were written in one flat working folder and copied into notes/ unchanged. Inside notes/, read paths as follows. reports/X is notes/reports/X and resolves. numerics/X is ../numerics/X at the repository root. lean/X is ../lean/X. balaban/X is a scan of Balaban's papers and is not included; the notes give the CMP volume and page. Paths under /tmp/ or /Users/ are scratch locations on the author's machine and are not included. In lean/README.md, ../X.md means notes/X.md.

Working notes, lemmas, verifier reports, and numerics toward (1) Balaban's unpublished Theorem 2 (running-coupling control, CMP 109 (1987) p. 259) and (2) a finite-torus existence theorem for 4D SU(2) lattice Yang–Mills in compactness form.

Every statement in the notes carries a tag (proved / verified / reduced / open). Nothing here is a complete proof of either target. Layout: notes/ holds the working notes (PLAN.md = dated status lines; THEOREM2_PROOF_v4.md = current Theorem 2 chapter, ASSEMBLY.md = assembly document; *_VERIFY.md = independent verification passes; notes/reports/ = literature and comparison reports), numerics/ the code and results, lean/ the Lean 4 formalizations.

## Status

Source: notes/PLAN.md (dated lines up to 2026-10-28). Tags: proved, verified (an independent *_VERIFY.md pass confirmed it), reduced, open. Both targets are conditional on Balaban's published proofs (CMP 95-122, 1984-1989), which nobody here re-checked line by line. The repository is private.

### Target 1: Balaban's Theorem 2, weak form

- Reduced: Theorem 2 (weak form) is reduced to the single inequality (H2) plus the fixed-level inputs (PI), (F), (M_j), V1, (G2) and (H0)/L5 (notes/THEOREM2_PROOF_v4.md section 10, item H). Both routes, K and B, rest on (H2). The reduction of (B2) to (H2) is verified (B2_TWOSTEP_VERIFY.md). Theorem 2 weak form implies Theorem 1: proved, unverified. Route B logic (Theorem B) is proved+verified as a conditional (BETA_FP_PW_VERIFY.md); its inputs (U), (DF), (T1) from BETA_FP_U.md are proved, unverified.
- Numerical, certification open: (H2) holds numerically at L = 3, 5, 7, 9 (rho_2 = 2.063 at L = 3 against the threshold 3, margin 31%; 2.108 at L = 5; at least 2.113 at L = 7 on a face; at least 2.114 at L = 9 at one point; H2_LARGE_L_VERIFY.md). At L >= 5 the one-step condition rho_1^2 < L suffices (rho_1^2/L = 0.771 at L = 5). A point enclosure rho_2(inf, K*) in [1.9993, 2.1273] at L = 3 exists, but a full certificate is a computer-assisted project (about 1.5e4 core-hours at L = 3; H2_CERTIFY.md).
- Open: (PI), (F), (M_j), V1, (G2), L5; (H0) is Balaban's, so odd L must exceed 11 or (H0) must be explicit at this L. All numerics are at L <= 11, outside Balaban's range, so they are supportive only.
- Chapter and paper: notes/THEOREM2_PROOF_v4.md is the current chapter; paper/main.pdf is its 32-page LaTeX version.
- Verified: Theorem K and Theorem 2w as conditional reductions (KAPPA_BOUNDED_VERIFY.md); Lemma D'' (THEOREM2_PROOF_v2_VERIFY.md); the Gaussian RG fixed point, the Ward identity (W), and the exact abelian sector (U3, U3_AW, U1 verifiers).
- Lean 4 (lean/, 7 files): Lemmas D', D, E, H, D'', and the determinant, telescoping and counting identities, with no sorry (standard axioms only). Lemma H needs column sums bounded by c_i with sum c_i finite.
- Numerics (floating point, not certified): first-step beta_1(L) for L = 2..11 is 0.630, 0.664, 0.757, 0.743, 0.803 (L = 7), 0.851 (L = 9), 0.868 (L = 11); per-level beta_2 is about 0.32 at L = 2 (numerics/NUMERICS.md).

### Target 2: finite-torus existence (compactness form)

- Verified: ASSEMBLY.md (limit points satisfy the torus forms of OS0-OS3 given the uniform bound (H-U); ASSEMBLY_VERIFY.md; dependency table section 3). The bridge (B-N1) is derived given the Gevrey bound (S) (ASSEMBLY_N1.md; SOURCES_HHIST_N1_VERIFY.md).
- Sources: D1 verified (Gaussian level). D2, D2C, D3, D3R and D3W8 are verified with corrections. D4/D5 (RP and symmetry transfer, assembly of (S)) are proved in part and verified, with (FX) as the new gap.
- (H-hist) is reduced via (SM) and (G-gain): small-field step proved on (0, gamma], one reduced lemma, and the surface term of the sharp cutoff chi_k still open (SOURCES_SM_VERIFY.md, SOURCES_GGAIN_VERIFY.md). Large-field analogue and higher derivatives are open.
- (H-thr) is proved conditional on (H-hist2), a new hypothesis of the (H-hist) kind (SOURCES_HTHR2_VERIFY.md).
- (FX) is reduced to R2, O2 and O3 (the last two proposed closed in SOURCES_FX_O23.md, unverified; new O4 open). The reverse-scaling lemma (O1(b)) is verified (SOURCES_FX_O1_VERIFY.md); R2 (kappa_fin >= kappa_final) is the one point it leaves open (SOURCES_FX_R2.md is a stub).
- Open: nontriviality (NT); (FX), (H-hist) and (H-hist2) as above. No O(4) invariance, infinite volume, mass gap, or uniqueness. This is not a solution of the Clay problem.

## How the pieces fit

The Theorem 2 chapter (notes/THEOREM2_PROOF_v4.md) reduces Theorem 2 (weak form) to (H2) and the fixed-level inputs. The assembly (notes/ASSEMBLY.md) turns Theorem 2 plus the sourced bounds into the finite-torus compactness theorem. The sources (notes/SOURCES*.md) supply the sourced bounds that the assembly needs. The numerics (numerics/NUMERICS.md) test (H2) and the one-loop increments beta_j(L). Lean (lean/README.md) checks the shooting lemmas and the exact identities. The paper (paper/main.pdf, 32 pages) is the LaTeX version of the v4 chapter. notes/INDEX.md lists every file with its state.

## Independence and prior work

Independence note: these notes were written on 2026-10-27 and 2026-10-28 (see commit dates, which equal the files' modification times). On the night of 2026-10-27 a web sweep (notes/reports/ONLINE_SWEEP.md) found the public account by Ethan Sussman and Levent Alpöge, github.com/ethanwsussman/Yang--Mills-LLM-experiment, which follows the same route and reaches the same open one-loop comparison lemma. That account was not read by any derivation here; notes/reports/SUSSMAN_ALPOGE_MAP.md compares the two.

Citation for that account (from notes/reports/SUSSMAN_ALPOGE_MAP.md §5.1):

> E. Sussman and L. Alpöge (with Claude; README: "written largely by LLM ... Novel mathematical ideas should be attributed to Claude (under the guidance of LA)"), "The Yang--Mills continuum limit along Bałaban's renormalization group: a complete account of Theorem 0" (LaTeX, files theorem_0_complete_account_raw_{master,I,II,III}.tex, 424k lines), and "SU(2) Yang–Mills theory in four dimensions via Bałaban's renormalisation group: construction, axioms and non-triviality" (ym4_manuscript_zeroth_draft.pdf, dated 6 October 2026). Repository: https://github.com/ethanwsussman/Yang--Mills-LLM-experiment, commit 1b92bd0347e3b8763cd8ecc1f96dc3c2a92dd310 (2026-10-27T05:45:28-05:00), accessed 2026-10-27. Repository created 2026-10-06. Disclaimer in README: "This repository contains work-in-progress, written largely by LLM. Its content has not been satisfactorily vetted. All claims should be understood as tentative, pending verification."

Their public, timestamped account predates this one. Any writeup from this repository must cite it.

The Balaban papers (Communications in Mathematical Physics, 1984–1989) are not included.

How to cite: use the metadata in CITATION.cff (GitHub shows it under "Cite this repository"), and give the commit hash you used.

License: documents CC BY 4.0 (LICENSE); code in numerics/ MIT (numerics/LICENSE).
