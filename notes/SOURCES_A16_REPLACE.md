# SOURCES_A16_REPLACE — TRUST_LEDGER row A16 (propagator replacement, CMP 116 p. 3)

Date 2026-10-28. Ledger tags: [P] proved here, [V] verified elsewhere (file named), [I] reading/interpretation, [R] reduction to a printed Balaban statement or sketch.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

Plan: §1 Balaban's sentence (page image). §2 what D2/D3R/D3W8 use about C_f. §3 property-by-property discharge. §4 verdict.

## §1 What Balaban's sentence licenses (CMP 116 pp. 2–3, page image read at 300 dpi)

Source: CMP 116 p. 2 (1.2)–(1.4) and p. 3 first paragraph, (1.5)–(1.7). [15] = CMP 102 "The variational problem and background fields…" (CMP 109 ref. list 15); [13] = CMP 99 "Propagators for lattice gauge theories in a background field".

Verbatim (p. 3): "In these equations we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds. Only these bounds were important in the analysis of Sect. C, E [15], hence the solutions D, A_0 can be considered as functionals of these operators, having all the properties proved in [15]: D(A′) = D(H, A′), A_0 = A_0(H, G̃, H_0 B′). (1.5)"

The equations ("these equations") are, p. 2:
- (1.2) H_k(B′) = H_0 B′ + A_0 − H D(H_0 B′ + A_0) — the background field (minimizer) as a function of B′.
- (1.3) D(A′) = C(A′ − H D(A′)) — the linearizing transformation. C here is a LOCAL analytic map (the text says (1.3)–(1.4) "are determined by local, analytic functions, and nonlocal propagators H, H_0, G̃"). So C in (1.3) is NOT a covariance and NOT replaced.
- (1.4) A_0 + G̃((δ/δA′)V)(H_0 B′ + A_0) = 0 — the minimizer correction; V from (80) [15], nonlinear, nonlocal through H and D.

(a) Which operators. Exactly three: H, H_0, G̃ (the "nonlocal propagators" of (1.3)–(1.4)). [P: read]
(b) Which bounds. Balaban does not list them on p. 3. He points to "the analysis of Sect. C, E [15]" and then (p. 3, (1.6)–(1.7)) to the walk expansion (3.107) [13] with the bound (3.108) [13]: each walk term is O(1)·O(M_1^{-1/2})^{|ω|}·M_1^{-1/2|ω|}·exp(−δ_0 d(ω,y,y′)), "for all operator norms in formulations of theorems in [13], e.g. in Theorem 3.1"; each factor depends on U restricted to X̃_j^5 and has kernel vanishing in a (1/3)M_1-neighbourhood of ∂X_j. Reading [I]: "same regularity" = analytic dependence on (U, J) in the same complex domain; "same bounds" = the operator-norm / exponential-decay bounds of CMP 99 Thm 3.1 used as inputs in CMP 102 Sects. C, E (the contraction-mapping estimates for (1.3), (1.4)).
(c) Where used. Immediately below (p. 3): s-dependent propagators H(s), G̃(s), H_0(s) are formed by multiplying each walk term by Π s(Δ) over cubes Δ ∈ σ_0 met by the walk; they coincide with the originals at s = 1. The replacement license is what makes D(H(s), ·), A_0(H(s), G̃(s), ·) well defined and bounded for complex s, which feeds the decoupling / cluster expansion of CMP 116 Sect. 1 (bounds (1.8) ff.). [P: read]

Scope limits (load-bearing for §3):
- The license is for solutions of DETERMINISTIC fixed-point equations (Sect. C, E [15]): contraction arguments using norm bounds only.
- It says nothing about Gaussian measures, covariances, positivity, or determinants. A replaced operator need not be positive or symmetric. The s-interpolated H(s) at complex s is neither.
- So a use of the license for "dμ_{C}" with C replaced is NOT covered by the printed text. That is the content of A16's [I] extension.

