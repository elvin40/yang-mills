# paper/

One article: "Yang–Mills on a finite torus along Bałaban's route: a verified reduction" (Claude). It merges the Theorem 2 notes (`../THEOREM2_PROOF_v4.md`) and the assembly notes (`../ASSEMBLY.md`) into one document. `main.pdf` is the compiled output (87 pages).

Build:

    cd paper
    pdflatex main && bibtex main && pdflatex main && pdflatex main

Files, in reading order:
- `main.tex`: preamble, title, abstract, and `\input` of the parts below.
- `intro.tex`: §1. The problem, Bałaban's Theorems 1 and 2 (verified quotes), main Theorems A and B, status legend, relation to other work (the independence record, kept verbatim), organization.
- `setup.tex`: §2. Notation for both parts (lattice, range of L, coupling sequence, one-loop symbols, observables and Schwinger functions) and the three renamed labels.
- `theorem2.tex`: §3. The coupling flow: what Theorem 1 needs, Theorem 2w, shooting lemmas, one-loop sums, Routes K and B, (B2) and (H2), conclusion, convergence route.
- `assembly.tex`: §4. Finite-torus existence: meaning of "exists", (H-U), Theorems 4.x, proofs modulo blocks, the dependency table (the single status table; it also holds the hypothesis rows of v4 §10), non-results, verifier corrections.
- `sources.tex`: §5. The sources block: one paragraph (statement, method, verifier grade, open inputs) per SOURCES_*.md with a verifier file, grouped as in TRUST_LEDGER §4.
- `numerics.tex`: §6. All numerical results: β_1(0), later increments, Route K quantities, (H2) values, one-step values, the verified point enclosure at L = 3, certification plan.
- `remains.tex`: §7. Open items grouped as certification, fixed-level and structural inputs, sources block, verification debt, stronger statements. Item labels H, 1–13, B1–B8 are those of v4 §10.
- `appendix.tex`: A Lean inventory; B index of results by status (the v4 ledger); C label map; D revision history (v2→v3, v3→v4, the Route B tag decision, assembly correction 5, and this merge).
- `refs.bib`, `refs_check.md`, `refs_check_cloud.md`: bibliography and its check records.

Label map (Appendix C): every numbered environment carries its project name in its title, for example "Theorem 3.8 (Theorem K)". Appendix C maps each numbered result to its name and source file, and maps every section number of v4 and ASSEMBLY.md to the new section. Project files still use the old numbers.

Renamed labels (§2.6): Theorem B of BETA_FP_PW → Theorem B_PW (the main Theorem B is the existence theorem); (G1)–(G3) of the assembly table → (GC1)–(GC3); (S) of SOURCES_D4D5 → (S_src).

Conventions:
- `\status{...}` typesets status tags in small caps; the legend is §1.4.
- `\file{...}` typesets project-file references in `\texttt`, with one footnote (notes/ of the repository). Inside the dependency table it breaks at underscores.
- A section sign after a file name refers to a section of that file, not of the paper.
- `\nocite{*}` lists every entry, cited or not.

State: the dependency table and §6 follow PLAN.md through SOURCES_FX_R2_VERIFY.md ((FX) reduced to N3; (H2) point enclosure verified). No theorem, lemma, or proof text changed in the merge.
