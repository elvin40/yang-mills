# Paper rewrite spec (shared by three agents)

Goal (from the author): the paper must read like a mathematics paper. Use fewer "proved" and "verified" labels. Do not keep corrections as separate sections: fold every correction into the statement or proof it corrects.

Rules:
1. Mathematical voice. Use Definition, Lemma, Proposition, Theorem, Proof, Remark. State each result with its hypotheses in the statement ("Assume (H2) and the bounds of [Bal89, Thm 1]. Then ..."). Delete status tags (\status{...}, "proved+verified", "[verified, round N]", "CONFIRMED", "verifier", "VERIFY file", "round 12", "apply pass", "agent") from the body text and headings.
2. Never weaken honesty. The mathematical content and the conditional nature of every result stay exactly as they are. A result that rests on an input stays conditional on that input, now written as an explicit hypothesis or as a citation. Do not upgrade any claim. Open items stay open, stated as open problems or as hypotheses.
3. Grades become mathematics:
   - [R] (a printed result of Balaban or others) -> cite it: "By [Bal89b, Theorem 1] ..." or "We use the following result of Balaban [..]." If Balaban only asserts it without proof, say "Balaban states (without proof) [ref, p.]".
   - [I] (a reading of an unclear passage) -> state it as a numbered Convention or Assumption with the competing reading in one sentence, e.g. "Convention 3.4 (reading of ~ in [CMP119, p. 265]). ...".
   - [P-sketch] -> keep the argument; say "we sketch the proof" or "Proof (sketch)".
   - [V] (read on the page image) -> just cite the page.
   - [N] / genuinely open -> "Open Problem" or an explicit hypothesis.
4. Corrections: where the text says "Correction:", "corrected", "the earlier claim ... was wrong", "after verification", "erratum", rewrite the passage so it states the correct version directly. Drop the history. If a correction concerns Balaban's papers (a misprint or an invalid printed step), keep it, because that is mathematics: write it as a Remark ("In [CMP122 II, p. 387] step (B) is false as printed; Lemma G replaces it.").
5. Provenance moves to one appendix table. Each agent writes its rows (result label -> project note file -> verification note file) into its own file paper/prov_X.tex as table rows only: `\ref{label} & NOTE.md & NOTE_VERIFY.md \\`. Agent C adds the appendix section "Provenance of the results" that inputs prov_A, prov_B, prov_C, with one paragraph: every result was derived and then checked by an independent reader (AI agents; no human expert review); the notes are in notes/.
6. \file{...} footnotes that point to project notes may stay but should be sparse; prefer the provenance table.
7. Keep every \label; references must not break. Do not rename labels. If you delete a section, move its \label to where its content now lives.
8. Prose style: short active sentences, about 20 words, one idea each. No idioms or figures of speech. Never use "genuinely" or "honestly".
9. Keep the abstract, intro and README-level claims consistent with the trust ledger: Target 2 is not an existence result; nontriviality is open.
10. Only edit the files you own. Build check: `cd paper && latexmk -pdf -interaction=nonstopmode main.tex` (or the project's build); fix errors in your files only. Agent A owns main.tex.
11. No meta-discussion of the process anywhere in the paper: no "verification debt", no pending or unverified checks, no counts of verified files, no review status, no "returned"/"banked"/"held" items, no rounds, no session history. Exception: the single provenance paragraph of rule 5.
12. A result that has no verification note (an unverified derivation) must not appear as a Lemma/Theorem with a proof claim. Either remove it, or state it as a Remark or Conjecture with the argument offered as "a possible approach" — without saying why (no mention of verification status).
