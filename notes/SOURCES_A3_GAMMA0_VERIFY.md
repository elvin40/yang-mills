# SOURCES_A3_GAMMA0_VERIFY — independent check of SOURCES_A3_GAMMA0.md

Status: in progress 2026-10-28 (Opus verifier). Firewall: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## V0 Plan
Check: (a) curl counterexample by hand; (b) (3.10) form; (c) step (i) constant c_* by own argument + own code; (d) §5.2/§6 covariance; (e) absolute vs relative errors; (f) (3.115) step; (g) ‖CB̃‖ ≥ ‖B̃‖; (h) R1–R5 and σ-gap; grades.

## V1 Text reads (CMP 99 pdftotext l. 1445–1535; CMP 95 l. 580–640)
- (3.115) [V text]: Q D λ = D_1 Q′ λ, derived as the linear-in-λ part of the gauge-transformation identity (3.114). Exact linear identity. λ ∈ N(Q′) ⇒ Q D λ = 0. The §5.1 step A′ = A − DG′RD*A, λ = G′RD*A ∈ N(Q′) [G′ maps into N(Q′) per (3.118)–(3.119)] is CONFIRMED: A′ is an extension of the same B.
- R in CMP 95 (1.69)–(1.70): P = Δ^{−1}Q′*(Q′Δ^{−2}Q′*)^{−1}Q′Δ^{−1}, an orthogonal projection onto Ran(Δ^{−1}Q′*); R = I − P projects onto ΔN(Q′) (CMP 99 l. 1505 uses RΔλ = Δλ for λ ∈ N(Q′)).
- CORRECTION to author §4.3(b): the gauge modes Dλ with λ ∈ N(Q′) ARE gauge-fixed (‖RD*Dλ‖² = ‖Δλ‖²). The UNFIXED modes are Dλ with Δλ ∈ Ran P, i.e. λ ∈ Ran(Δ^{−2}Q′*); these change B by D_1Q′λ. The author's conclusion (unit gauge modes B = D_1μ have zero-cost extensions at U = 1, so γ_0 must come from the axial condition) is right; the sentence naming N(Q′) as the unfixed set is wrong.

## V2 (3.10) page image (CMP 99 p. 392, PDF p. 4) [V]
⟨A, ΔA⟩ = ⟨A, D*DA⟩ + ⟨A, Δ′A⟩; D = covariant derivative on bonds → plaquettes, D* its adjoint (3.9) = covariant curl form. Δ′ = Σ_p η^d tr((D_U^1A)(p))² η^{−2}(Re U(∂p) − 1) + tr Σ i[A′(b_1), A′(b_2)] η^{−2} Im U(∂p). Both terms carry the background curvature (η^{−2}(U(∂p) − 1) = O(F_bg)). CONFIRMED: M_1's leading form is the covariant curl², and Δ′ is O(|F_bg|)·‖A‖²-relative (homogeneous quadratic).
R1 identification [V text]: Thm 3.1 = G′(U) kernel bounds (3.42)–(3.47), constants d, L only, M ≥ M_1, Mα_0 ≤ a_0. Thm 3.2 = (Q′G′²Q′*)^{−1} decay. Thm 3.3 = same bounds for G(U). G_1 is NOT in Thms 3.1–3.3: it is Thm 3.12 (p. 423, needs (3.35) AND (3.36), "with one exception" = covariant-Laplace part of (3.42)); positivity of G, G_1 = Thm 3.11/3.12. So R1 = CMP 99 Thms 3.1, 3.3, 3.11, 3.12 (G_1 via (3.138) series, argued in a few lines on pp. 422–423). Kernel decay ⇒ operator norm (Schur). R1 does not use A1 ((QG_1Q*)^{−1} kernel): the variational form needs only G_1 > 0 and ‖G_1‖.
