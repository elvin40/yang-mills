IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# refs.bib check (cloud, 2026-10-28)

Method. Crossref, arXiv, Springer and doi.org were blocked from the session, so journal entries were checked against web-search records (Project Euclid, MaRDI/zbMATH, Scilit, INSPIRE, APS, EPJC, publisher and library pages). The two GitHub entries were checked by fetching the cited commits with git. Verdict per entry: CONFIRMED (title, authors, year, journal, volume, pages and DOI or locator agree with at least one authoritative record) or CORRECTED (with the fix). No entry needed a correction, so refs.bib is unchanged.

| key | verdict | note | source |
|---|---|---|---|
| balaban95 | CONFIRMED | CMP 95(1) 17–40, 1984, DOI 10.1007/BF01215753. Some later citations write "gauge field theories"; the catalogue title is "gauge theories". | scilit.net/publications/64e0c0f6b4a62ba15f26932589f53248; portal.mardi4nfdi.de/entity/Q1067108 |
| balaban96 | CONFIRMED | CMP 96(2) 223–250, 1984. No search record showed the DOI BF01240221 directly; it was already confirmed via Crossref in refs_check.md. | scilit.net/publications/01b52dd5b8ec3ecbd077c8f5685f40a1; Rutgers repository record |
| balaban98 | CONFIRMED | CMP 98(1) 17–51, 1985, DOI 10.1007/BF01211042. Some arXiv reference lists write "operators"; the published title is "operations". | link.springer.com/doi/10.1007/BF01211042 (search record); Scilit |
| balaban99a | CONFIRMED | CMP 99 75–102, 1985, DOI 10.1007/BF01466594. | projecteuclid.org/euclid.cmp/1103942611 |
| balaban99b | CONFIRMED | CMP 99 389–434, 1985, DOI 10.1007/BF01240355. | portal.mardi4nfdi.de/wiki/Publication:1067113 |
| balaban102a | CONFIRMED | CMP 102(2) 255–275, 1985, DOI 10.1007/BF01229380. | portal.mardi4nfdi.de/wiki/Publication:1077787; Scilit; Deep Blue (UMich) |
| balaban102b | CONFIRMED | CMP 102 277–309, 1985, DOI 10.1007/BF01229381. | Deep Blue (UMich); Rutgers repository record |
| balaban109 | CONFIRMED | CMP 109(2) 249–301, 1987, DOI 10.1007/BF01215223, full title as given. | projecteuclid.org cmp/1104116842; portal.mardi4nfdi.de/wiki/Publication:1087170 |
| balaban116 | CONFIRMED | CMP 116(1) 1–22, 1988, DOI 10.1007/BF01239022. | portal.mardi4nfdi.de/wiki/Item:Q1263825; nLab (Euclid id cmp/1104161193) |
| balaban119 | CONFIRMED | CMP 119 243–285, 1988, DOI 10.1007/BF01217741. | link.springer.com/doi/10.1007/BF01217741 (search record) |
| balaban122a | CONFIRMED | CMP 122(2) 175–202, 1989, DOI 10.1007/BF01257412. | projecteuclid.org cmp/1104178393; portal.mardi4nfdi.de/wiki/Publication:917131 |
| balaban122b | CONFIRMED | CMP 122(3) 355–392, 1989, DOI 10.1007/BF01238433. | portal.mardi4nfdi.de/wiki/Publication:917132; Rutgers repository record |
| luscherweisz1995 | CONFIRMED | Nucl. Phys. B 452 213–233, 1995, DOI 10.1016/0550-3213(95)00346-T; arXiv hep-lat/9504006. Not to be confused with the companion hep-lat/9505011 (NPB 452 234–260). | arxiv.org/abs/hep-lat/9504006; INSPIRE |
| dashengross1981 | CONFIRMED | Phys. Rev. D 23 2340, 1981, DOI 10.1103/PhysRevD.23.2340. The search records gave no end page; 2348 rests on the Crossref check in refs_check.md. | inspirehep.net/literature/9683; link.aps.org/doi/10.1103/PhysRevD.23.2340 |
| savvidy1977 | CONFIRMED | Phys. Lett. B 71 133–134, 1977, DOI 10.1016/0370-2693(77)90759-6. Confirmed only through reference lists of later Savvidy papers; no publisher record came up. | arxiv.org/abs/2401.06728; arxiv.org/abs/2203.14656 |
| osterwalderseiler1978 | CONFIRMED | Ann. Phys. 110(2) 440–471, 1978, DOI 10.1016/0003-4916(78)90039-8. | Scilit; arxiv.org/abs/hep-lat/9511019 (reference list) |
| menottipelissetto1987 | CONFIRMED | CMP 113(3) 369–373, 1987, DOI 10.1007/BF01221251. | projecteuclid.org cmp/1104160284; Scilit |
| jaffewitten | CONFIRMED | In J. Carlson, A. Jaffe, A. Wiles (eds.), *The Millennium Prize Problems*, CMI/AMS 2006, pp. 129–152 (table of contents: chapter at p. 129, next item at p. 153). | claymath.org/library/monographs/MPPc.pdf |
| SA26-T0 | CONFIRMED | Commit 1b92bd0 of ethanwsussman/Yang--Mills-LLM-experiment exists (2026-10-27) and contains theorem_0_complete_account_raw_{master,I,II,III}.tex. The \title in the master file matches the bib title. The file has an empty \author{}, so the author attribution comes from the repository, not the file. | git fetch of that commit |
| SA26-YM4 | CONFIRMED | Same commit contains ym4_manuscript_zeroth_draft.pdf; first page title and date "6 October 2026" match. The PDF prints no author line; attribution as above. | git fetch of that commit |
| OAI26-O3 | CONFIRMED | openai/math (HEAD 7ef5c0c) has preprints/The-canonical-massive-continuum-limit-of-the-two-dimensional-O3-model-October-4-2026/; lean/docs/215.md is titled "Canonical O(3) continuum limit and exact O(4) mass asymptotics", which matches the family-215 locator. | git fetch of openai/math |
| ymrepo | CONFIRMED | Self-reference. The GitHub repository elvin40/yang-mills is private, so "no public remote" is still accurate. | n/a |
| Savvidy2019 | CONFIRMED | EPJC 80 165 (2020, article number), DOI 10.1140/epjc/s10052-020-7711-6, arXiv:1910.00654. | epjc.epj.org article page; arxiv.org/abs/1910.00654 |
| os1973 | CONFIRMED | CMP 31(2) 83–112, 1973, DOI 10.1007/BF01645738. | projecteuclid.org cmp/1103858969; Scilit |
| os1975 | CONFIRMED | CMP 42(3) 281–305, 1975, DOI 10.1007/BF01608978. Project Euclid lists an appendix by S. Summers. | projecteuclid.org euclid.cmp/1103899050; MaRDI |
| shenzhuzhu2023 | CONFIRMED | CMP 400(2) 805–851, 2023, DOI 10.1007/s00220-022-04609-1, arXiv:2204.12737. | arxiv.org/abs/2204.12737; par.nsf.gov/servlets/purl/10414482 |

Weakest points: the DOIs for balaban96 and the end page for dashengross1981 were not seen in this pass and rest on the earlier Crossref check. savvidy1977 is confirmed only through citing papers.
