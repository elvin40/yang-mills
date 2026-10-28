# paper/

LaTeX conversion of `../THEOREM2_PROOF_v3.md`. Sources: `main.tex` (wrapper), `theorem2.tex` (chapter, appendix change log), `refs.bib`.

Build:

    cd paper
    pdflatex main && bibtex main && pdflatex main && pdflatex main

Notes:
- `\status{...}` typesets the status tags in small caps. `\file{...}` typesets project-file references in `\texttt` with one footnote (notes/ of the repository).
- `refs.bib` entries were written from memory, except the Sussman-Alpoge block (from `reports/SUSSMAN_ALPOGE_MAP.md` section 5.1). Check volume and page data before circulating. The Savvidy 2019 arXiv paper (1910.00654) named in section 3.3 has no entry; only Savvidy 1977 is listed.
- `\nocite{*}` lists every entry, cited or not.
