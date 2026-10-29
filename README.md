# Yang–Mills on a torus along Balaban's renormalization group

Working notes, lemmas, verifier reports, and numerics toward (1) Balaban's unpublished Theorem 2 (running-coupling control, CMP 109 (1987) p. 259) and (2) a finite-torus existence theorem for 4D SU(2) lattice Yang–Mills in compactness form.

Every statement in the notes carries a tag (proved / verified / reduced / open). Nothing here is a complete proof of either target. Layout: notes/ holds the working notes (PLAN.md = dated status lines; THEOREM2_PROOF_v4.md = current Theorem 2 chapter, ASSEMBLY.md = assembly document; *_VERIFY.md = independent verification passes; notes/reports/ = literature and comparison reports), numerics/ the code and results, lean/ the Lean 4 formalizations.

## Summary (the abstract of paper/main.pdf)

Bałaban's renormalization-group construction of four-dimensional SU(2) lattice Yang–Mills theory depends on control of the running coupling, his Theorem 2, whose proof was never published. We prove that a weak form of Theorem 2, namely two-sided bounds on 1/g_k² with an additive constant, follows from one uniform inequality (H2) on a two-step minimizer map together with named fixed-level and history inputs; this weak form is enough for Bałaban's Theorem 1. At L = 13, inside Bałaban's range L > 11, the inequality (H2) is a certified theorem: an explicit majorant and an outward-rounded interval branch-and-bound give ρ_1(j, K)² ≤ 10 < 13 for every level j, including j = ∞, and every momentum K, so ρ_2 ≤ 10 < 13. This certificate uses our reading of Bałaban's averaging operator. The shooting lemmas, the arithmetic of Theorem K and the bridge lemmas of the certifier are formalized in Lean 4. Second, on a fixed torus, we prove that a uniform moment bound (H-U) gives compactness of the lattice Schwinger functions of the centred plaquette density, and that every limit point satisfies the torus forms of the Osterwalder–Schrader axioms OS0–OS3. The bound (H-U) is reduced, not proved. It rests on sourced versions of Bałaban's bounds; on a hypothesis (FX), which we reduce to a holomorphy bound (H-hol) for Bałaban's increments, history bounds and three named inputs of the large-field step; and on a bridge from the source form to (H-U). A dependency table records the status of each block.

## Status

Source: notes/TRUST_LEDGER.md (round 12, 2026-10-28) and notes/PLAN.md (dated lines up to 2026-10-28). Identifiers follow notes/IDS.md and are cited as "ID (label)". Tags: proved, verified (an independent *_VERIFY.md pass confirmed it), corrected (the verifier changed a claim), reduced, open. Both targets are conditional on Balaban's published proofs (CMP 95-122, 1984-1989), which nobody here re-checked line by line. All derivations and verification passes were written by AI agents (Claude models) under the author's direction. No human expert has checked them.

### Target 1: Balaban's Theorem 2 in weak form (Theorem 2w, L-001)

- Status: proved+verified, conditional, by Route K (L-009 (Theorem K) + L-005 (Lemma D″)), at odd L > 11.
- Binding set (ledger §5, round 12): R-006 + R-025–R-031 + X-005 (1 Group A row, 7 Group B rows, 1 external). Grades:
  - R-025 (H2): certified at L = 13 (interval arithmetic, outward rounding; verified), by L-046 (Theorem (H2) at L = 13) and rho2_le (Lean). Also certified at L = 15, 17, 21. Residue: the reading of Balaban's (0.4), the gauge choice, Prop. A at M >= 27, L-169 (Lemma G) beyond point checks, numerics/h1analytic/bb_arb.py audited only. At L = 3, 5, 9, R-025 (H2) is numerical only.
  - R-026 (PI): verified reduction at fixed level.
  - R-027 (F): proved, verified (round 11).
  - R-028 (M_j): proved relative to listed inputs, verified, at fixed j.
  - R-029 (V1): proved+verified at fixed level, conditional on R-030 (G2), Balaban's inductive bounds, and the averaging (0.4).
  - R-030 (G2): verified reduction at fixed level.
  - R-031 (L5): proved relative to listed inputs, verified (round 7).
  - R-006 (Balaban's inductive assumption, H-202 (H0)): taken from Balaban; its use in L-001 (Theorem 2w) is a verified reduction.
- L-001 (Theorem 2w) ⇒ Balaban's Theorem 1 (ledger §5): 4 Group A rows (R-006, R-012, R-013, R-015) + 9 Group B rows (R-025–R-032, R-034) + X-005. R-034 (the cross-scale sweep) is cleared and verified (round 7). R-012 is a verified list; R-015 is a verified reduction to conventions; R-032 is proved relative to listed inputs, verified.

### Target 2: finite-torus existence in compactness form (Theorem B, L-003)

- Status: proved modulo named blocks. Given H-116 (H-U), limit points exist and satisfy the torus forms of OS0–OS3 (verified, ASSEMBLY_VERIFY.md). H-116 (H-U) is reduced, not proved.
- Binding set (ledger §5, round 12): 21 Group A rows + X-002–X-005 + 21 Group B rows (R-025–R-032, R-034–R-046).
- Group A rows without a verified proof or reduction: R-021 (printed CMP 99 inputs of the H-057 (C) proof) only. R-022 (CMP 109 p. 253 "valid universally"), R-023 (CMP 109 p. 275 regularity), and R-024 (Q-049, the walk expansions in the multiscale Ω-geometry) are verified reductions whose open items are unproved lemmas. Under the stricter rule "open items are readings or printed statements only", the list is R-021–R-024.
- Group B rows without a proof or a verified reduction: none. R-035 (B-S), the sourced Theorem 1, is open as a whole; its parts are R-036–R-044 and R-046. R-043 (FX) is reduced to R-042 (N3), and R-042 (N3) is a verified reduction to R-040/R-041 (H-hol), the real uniform R-037 (H-hist), and H-120 (H2-hist). R-045 (B-N1), the bridge to H-116 (H-U), is derived given R-045 (S); its H-098 (E14-c) clause is reduced to R-045 (S), verified.
- Open: nontriviality H-081 (B-NT); the named inputs above.
- Counts (round 12): Group A 23, Group B 22, Group C 46, externals 5.

### Outside both targets

- Infinite volume: L-196 (Theorem IV) is a verified conditional statement for the joint limit (ε, ℓ) → (0, ∞) (paper §4.8; two verifier passes). Its lemmas L-320 and L-331 are reductions with no verifier; L-323 is proved relative to listed inputs and verified with corrections (notes/FABLE_HARD_VERIFY.md); L-332–L-334 are blocked.
- No O(4) invariance, infinite volume (unconditional), mass gap, or uniqueness.

### Paper, Lean, numerics

- paper/main.pdf is one 143-page article (Theorem 2 chapter + assembly), unverified as a whole.
- lean/: 45 Lean files, 50 canon lines, 170 edges, no sorry, standard axioms only (CanonOrder axiom-free); see lean/README.md.
- Numerics (floating point unless marked): single-step beta_1(0)(L) = 0.74233, 0.79024, 0.8267, 0.8436, 0.8511 for L = 5, 7, 9, 11, 13 (numerics/NUMERICS.md §7). L = 5 and 7 are grid-converged; L = 9, 11, 13 use Ng = 8. At L = 13 the Lp = 0.5 and Lp = 1 values are arb-certified for rounding only; the Lp → 0 fit is not certified. The local slopes 0.142, 0.119, 0.084, 0.045 fall away from c = 0.3715. The tension between beta_1 and c log L is open [N]. It concerns a different family from R-027 (F), so it does not refute or support it. A converged-grid run at L = 9 and 11 is the decisive test (NUMERICS §7(f)).
- Related account: Sussman and Alpoge (citation below) follow the same route. Only a web-sweep agent and a mapping agent read it; derivation agents were firewalled, but one idea (the bounded-kappa route) reached the derivations through the mapping report (see Independence).

## How the pieces fit

Paths. The notes were written in one flat working folder and copied into notes/ unchanged. Inside notes/, read paths as follows. reports/X is notes/reports/X and resolves. numerics/X is ../numerics/X at the repository root. lean/X is ../lean/X. balaban/X is a scan of Balaban's papers and is not included; the notes give the CMP volume and page. Paths under /tmp/ or /Users/ are scratch locations on the author's machine and are not included. In lean/README.md, ../X.md means notes/X.md.

The Theorem 2 chapter (notes/THEOREM2_PROOF_v4.md) reduces Theorem 2 (weak form) to R-025 (H2) and the fixed-level inputs. The assembly (notes/ASSEMBLY.md) turns Theorem 2 plus the sourced bounds into the finite-torus compactness theorem. The sources (notes/SOURCES*.md) supply the sourced bounds that the assembly needs. The numerics (numerics/NUMERICS.md) test R-025 (H2) and the one-loop increments beta_j(L). Lean (lean/README.md) checks the shooting lemmas, exact identities, certifier bridges, and the order of constants. The paper (paper/main.pdf, 143 pages) is the LaTeX article merging the v4 chapter and the assembly. notes/TRUST_LEDGER.md grades every trust item, notes/IDS.md lists the identifiers, and notes/INDEX.md indexes the files of the first campaign; later files are indexed by notes/TRUST_LEDGER.md and the dated lines of notes/PLAN.md.

## Independence and prior work

Independence note: these notes were written between 2026-10-27 and 2026-10-29 (see commit dates, which equal the files' modification times). On the night of 2026-10-27 a web sweep (notes/reports/ONLINE_SWEEP.md §2) found the public account by Ethan Sussman and Levent Alpöge, github.com/ethanwsussman/Yang--Mills-LLM-experiment, which follows the same route and reaches the same open one-loop comparison lemma. Two agents read that account, and neither wrote a derivation: the web sweep and a separate mapping agent (notes/reports/SUSSMAN_ALPOGE_MAP.md). The derivation agents were firewalled: their read lists exclude the account, the map, and ONLINE_SWEEP §2. One idea crossed the firewall. The bounded-kappa route (the weak Theorem 2 needs only kappa_k bounded, not convergence) reached KAPPA_BOUNDED.md through its prompt, from the mapping report (THEOREM2_PROOF_v4.md §11 item 3). Lemma D′ and the cross-scale sweep predate any Sussman–Alpöge content in the project files. The paper (Section 1.5) gives the full record.

Citation for that account (from notes/reports/SUSSMAN_ALPOGE_MAP.md §5.1):

> E. Sussman and L. Alpöge (with Claude; README: "written largely by LLM ... Novel mathematical ideas should be attributed to Claude (under the guidance of LA)"), "The Yang--Mills continuum limit along Bałaban's renormalization group: a complete account of Theorem 0" (LaTeX, files theorem_0_complete_account_raw_{master,I,II,III}.tex, 424k lines), and "SU(2) Yang–Mills theory in four dimensions via Bałaban's renormalisation group: construction, axioms and non-triviality" (ym4_manuscript_zeroth_draft.pdf, dated 6 October 2026). Repository: https://github.com/ethanwsussman/Yang--Mills-LLM-experiment, commit 1b92bd0347e3b8763cd8ecc1f96dc3c2a92dd310 (2026-10-27T05:45:28-05:00), accessed 2026-10-27. Repository created 2026-10-06. Disclaimer in README: "This repository contains work-in-progress, written largely by LLM. Its content has not been satisfactorily vetted. All claims should be understood as tentative, pending verification."

Their public, timestamped account predates this one. Any writeup from this repository must cite it.

The Balaban papers (Communications in Mathematical Physics, 1984–1989) are not included.

How to cite: use the metadata in CITATION.cff (GitHub shows it under "Cite this repository"), and give the commit hash you used.

License: documents CC BY 4.0 (LICENSE); code in numerics/ MIT (numerics/LICENSE). Exception: quoted passages and formulas from Balaban's papers (notes/reports/BALABAN_EXCERPTS.md, and short quotations elsewhere) remain under the publisher's copyright and are not covered by CC BY 4.0.
