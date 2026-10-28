# SOURCES_G3 — Lemma G3: the g-derivative of the small-field cut χ_k

Date: 2026-10-27. Status: complete when §7 is present; unverified (Claude Opus).
Inputs: SOURCES_GGAIN §6–§7; SOURCES_GGAIN_VERIFY item 6; SOURCES_HHOL §0–§2; SOURCES_SM §4; CMP 109 (2.9); CMP 116 (2.22), (2.31). Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md were not read.
Tags: [P] proved here; [R] reduced to a named input; [I] inferred; [V] verified on the pages.

## 1. What the cut is, on the page

1.1 CMP 109 (2.9), p. 266 [V, pdftotext; page image check in §1.3]: χ_k = Π_b χ({|B′(b)| < ε_1}). The variable B′ is the group-angle fluctuation (U = e^{iB′}V up to the gauge map). By SOURCES_SM §4.1, B′ is a g-free function of B̃ = g_kB. So χ_k is g-free in B̃ (equivalently in B′), and equals 1{|B′(g_kB)| < ε_1} in the Gaussian variable B. This matches GGAIN_VERIFY item 6.
1.2 Verbatim, directly after (2.9), p. 266 [V, pdftotext]: "Another possibility is to take g_k/γ_k ε_1 instead of ε_1, where γ_k = C log(L^kε)^{−1} with C sufficiently large. It has the advantage that the functions E^{(j)}, β_j are analytic functions of the effective coupling constants, but it has some disadvantages in perturbative calculations also. We have formulated the implications of both possibilities in the inductive description."
Reading [I, to be checked on the image]: with the cut |B′| < g_kε_1/γ_k, the cut in the Gaussian variable B is |B| ≲ ε_1/γ_k (B′ ≈ g_kB to first order). That domain is FREE of g_k. So Balaban himself names the reference cut (Route 1), with a scale-dependent but g-free radius.
