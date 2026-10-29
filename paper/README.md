# paper/

One article: "Yang–Mills on a finite torus along Bałaban's route: a verified reduction" (Claude). It merges the Theorem 2 notes (`../THEOREM2_PROOF_v4.md`) and the assembly notes (`../ASSEMBLY.md`) into one document. `main.pdf` is the compiled output (143 pages, paper round 10).

Build:

    cd paper
    pdflatex main && bibtex main && pdflatex main && pdflatex main

Files, in reading order:
- `main.tex`: preamble, title, abstract, and `\input` of the parts below.
- `intro.tex`: §1. The problem, Bałaban's Theorems 1 and 2 (verified quotes), main Theorems A and B, status legend, relation to other work (the independence record, kept verbatim), organization.
- `setup.tex`: §2. Notation for both parts (lattice, range of L, coupling sequence, one-loop symbols, observables and Schwinger functions) and the three renamed labels.
- `theorem2.tex`: §3. The coupling flow: what Theorem 1 needs, L-001 (Theorem 2w), shooting lemmas, one-loop sums, Routes K and B, (B2) and R-025 (H2), conclusion, convergence route.
- `assembly.tex`: §4. Finite-torus existence: meaning of "exists", H-116 (H-U), Theorems 4.x, proofs modulo blocks, the dependency table (the single status table; it also holds the hypothesis rows of v4 §10), non-results, §4.8 infinite volume (L-196 (Theorem IV) in its verified conditional form, outside both targets; Remark on (Gap_U), unverified source), verifier corrections.
- `sources.tex`: §5. The sources block: one paragraph (statement, method, verifier grade, open inputs) per SOURCES_*.md with a verifier file, grouped as in TRUST_LEDGER §4.
- `numerics.tex`: §6. All numerical results: β_1(0), later increments, Route K quantities, R-025 (H2) values, one-step values, the verified point enclosure at L = 3, certification plan.
- `remains.tex`: §7. Open items grouped as certification, fixed-level and structural inputs, sources block, verification debt, stronger statements. Item labels H, 1–13, B1–B8 are those of v4 §10.
- `appendix.tex`: A Lean inventory; B index of results by status (the v4 ledger); C label map; D revision history (v2→v3, v3→v4, the Route B tag decision, assembly correction 5, and this merge).
- `refs.bib`, `refs_check.md`, `refs_check_cloud.md`: bibliography and its check records.
- `drafts/open_problem.tex`: standalone draft section (pending verification; not `\input` from main.tex). Round 10: the second problem is the K-uniform (Gap_U) for joint limits, and Theorem U1 is the one-way form ((U-Lap)_K ⇔ (U-IV⁼)_K), per SOURCES_FH_U1_REPAIR (unverified).

Label map (Appendix C): every numbered environment carries its project name in its title, for example "Theorem 3.8 (L-009 (Theorem K))". Appendix C maps each numbered result to its name and source file, and maps every section number of v4 and ASSEMBLY.md to the new section. Label scheme (IDS.md, checked in paper round 10): a numbered result with an IDS id L-nnn has the label thm:Lnnn, lem:Lnnn, or prop:Lnnn (e.g. thm:L196 = L-196 (Theorem IV)); the definition of H-116 (H-U) is def:H116; remarks without an id keep descriptive labels (rem:4, rem:GAprime, rem:GapU); sections are sec:*, appendices app:*, correction items corr:*. Live project files use the IDS.md ids; frozen files keep the old ids under a banner (IDS.md maps them).

Renamed labels (§2.6): L-088 (Theorem B) of BETA_FP_PW → L-088 (Theorem B_PW) (the main L-003 (Theorem B) is the existence theorem); (G1)–(G3) of the assembly table → H-200 (GC1)–H-201 (GC3); (S) of SOURCES_D4D5 → (S_src).

Conventions:
- `\status{...}` typesets status tags in small caps; the legend is §1.4.
- `\file{...}` typesets project-file references in `\texttt`, with one footnote (notes/ of the repository). Inside the dependency table it breaks at underscores.
- A section sign after a file name refers to a section of that file, not of the paper.
- `\nocite{*}` lists every entry, cited or not.

State: the dependency table, §5 Steps 8′–8⁗, §6.8, and §7.7 follow PLAN.md through round 7 (2026-10-28). Round 7 added Step 8⁗ (($M_j$) proved at fixed j, L5 by nested intervals, R-016 tree form, R-017 identity, R-018/R-019/R-020 verified reductions, R-041 chain item 5, R-034 cleared, canon section F, R-027 reduced [R, unverified]), the H-216 (K1′) fix (13δ, δ = 0.025), §6.8 (H2 certified at L = 15, 17, 21; (G_A′) and neutral-sector numerics; the open β_1 vs c log L tension), trust-table rows K-039–K-043 (counts A 19 / B 22 / C 42 / X 5), and Appendix C rows for the environments of rounds 5–7. Headline unchanged: verified reduction, not a proof.
Round 8 (PLAN.md through the round-8 ledger pass): §5 Step 9 (R-039 with H-241 (R1′); R-044 (W4)-R and Λ_j of R-044; H-098 (E14-c) reduced to R-045 (S); BOOKKEEPING readings verified; R-027 reduction verified; H-057 (C) draft proof and H-137 (L-LL) proof, both verification pending), Step 10 = the old Step 9; §6.9 (NUMERICS §7 rewritten, β_1(13), box GPU run, M1 cross-check, H-137 (L-LL) and H-057 (C) numerics); trust-table rows R-001, R-027, R-039, R-044, R-045, K-009 and the Lean support table; §8–§9 (outlook.tex); Appendix B–D updated. Counts and binding sets unchanged.
Paper round 10 (TRUST_LEDGER round 12): trust table rows R-016 (Q-048 proved, verified), R-022, R-023 (verified reductions with open items), R-024 (new; verified reduction, sourced extension proved and verified), R-027 (proved, verified); counts A 23 / B 22 / C 46 / X 5; Theorem B rests on 21 Group A items; dependency-table rows B-S.A and IV; §4.8 Theorem IV (conditional, paper-grade as a conditional statement); Theorem 2w chain checked against the ledger binding sets (Route K 1 A + 7 B + X-005; 2w ⇒ Theorem 1 4 A + 9 B + X-005); Lean: 45 Lean files, 50 canon lines, 170 edges, no sorry, standard axioms only (CanonOrder axiom-free). FABLE_HARD claims are not in the paper. Headline unchanged: verified reduction, not a proof.

Paper round 10, status pass: the round-7 and round-9 statuses left outside the R-027 chain now carry their ledger round-12 grades (H-035 (M1) closed as a list, verified; THM37 and THM310 write-outs paper-grade; WC_FULL §3.1(2) fixed; H-072 (AL′) verified; R-022, R-023 write-outs done; sweep R-034 and the Prop. 3.6 assembly verified in round 7; R-026 (PI) a verified reduction in the dependency table). The β_1 box run and the L = 13 cell cross-check carry their current run states. 143 pages.
