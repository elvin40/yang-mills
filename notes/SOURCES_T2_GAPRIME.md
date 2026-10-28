IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_GAPRIME — the 2D gap (G_A′) for the charged SU(2) Wilson Hessian at constant flux

Date: 2026-10-28. Item GAPRIME, DERIVE.
Status: in progress.
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). reports/ONLINE_SWEEP.md not opened.

Read: SOURCES_T2_S123.md l. 120–215, 270–285; SOURCES_T2_S123_VERIFY.md l. 95–140, 160–172; BETA_FP_M.md l. 64–101; BETA_FP_H.md l. 13–90; BETA_FP_H_VERIFY.md l. 33–39; U3_LEMMA51.md l. 70–140; numerics/t2_s123_gap2d.py, numerics/t2_s123_phys2d.py and numerics/t2_s123_gap2d.json (read only). No Balaban page is used: the statement concerns only the 2D Wilson Hessian.

Plan of sections.
1. Set-up: covariant shifts, the flux phase q, and an explicit formula for A′ = H′ + D′D′^† (Lemma 1.1), with an exact check H′D′ = 0.
2. Algebra of the covariant shifts; a second-difference bound (Lemma 2.1) and a commutator bound (Lemma 2.2).
3. Scalar Landau gap (Prop. 3.1): spec 𝔏^{01}_f has no points in [(1+θ)|α|, (3−θ)|α|]. Proof by a lattice supersymmetry (Π^†Π versus ΠΠ^†) and approximate eigenvectors.
4. Reduction of A′ to 𝔏 ⊗ 1 + κ_α σ_y (Lemma 4.1), with a norm remainder O(α² + |α|‖∇Ψ‖).
5. Main theorem: (G_A) and (G_A′) for every c < 1; consequences for S123 Prop. 5.6, (Z_j), O1.
6. Numerical check (new script numerics/t2_gapprime_check.py).
7. What is not proved; remarks.
8. Ledger.

Notation used throughout: α := the phase of the charge-2 plaquette holonomy, so |α| = |ef| = 2|f| in S123 units (e = 2, coarse 2D lattice, ε = 1). All statements hold for every real α with 0 < |α| ≤ α_0; no rational flux is used.
