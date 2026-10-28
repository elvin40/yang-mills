# IDEAS_FABLE.md — proof routes proposed by the coordinator for Opus to execute and verify (2026-10-28)

Rule: each idea is a precise proposition, a mechanism, and a kill test. Opus agents attempt; verifiers grade. Nothing here is a claim.

## I1. A3 (γ_0 for general U) via a lattice Kato inequality  [REFUTED 2026-10-28: M_1's leading form is the covariant curl, not a gradient; Kato fails for the curl (SOURCES_A3_GAMMA0 §1). Replaced by the covariant two-step mechanism of SOURCES_A3_GAMMA0, reduced to R1–R5.]
Proposition: λ_min(C*Δ_k(U)C) ≥ γ_0^{free} for every unitary background U, no regularity needed.
Mechanism: adjoint transports are orthogonal ⇒ |U_b A(x+e) − A(x)| ≥ ||A(x+e)| − |A(x)|| (Kato/diamagnetic, pointwise) ⇒ ⟨A, M_1(U)A⟩ ≥ ⟨|A|, M_1(1)|A|⟩; the gauge-fixing term D R D* ≥ 0 only adds; Balaban's averaging has equal positive weights (CMP 98 (124)–(125)) ⇒ |Q(U)A| ≤ Q(1)|A| pointwise; the min-energy extension cost min{⟨A, M_1(U)A⟩ : Q(U)A = B} ≥ min{⟨|A|, M_1(1)|A|⟩ : Q(1)|A| ≥ |B|} ≥ γ_0^{free}‖B‖² (free Poincaré, monotone under enlarging the average). By Woodbury (SOURCES_CDC) the leading term of Δ_k is N_1^{−1} = (QM_1^{−1}Q*)^{−1}, whose quadratic form IS that min-energy cost.
Kill test (cheap, L = 3, Mac): compute λ_min(C*Δ_k(U)C) for 50 random regular U (and 50 random arbitrary U) and compare with U = 1. If any U gives a smaller λ_min than the free value, I1 is dead as stated. If none does, I1 is supported.

## I2. A1 (uniform kernel bound (3.132)) via Demko–Moss–Smith  [REFUTED 2026-10-28: the KKT operator is not banded (exponentially decaying kernels) and the DMS rate depends on the condition number ≈ η^{−2}, so the decay vanishes in the continuum limit (SOURCES_A1_KERNEL §3). Replaced by a block-level Combes–Thomas lemma on the normalized operator, reduced to printed CMP 99 Thms 3.3/3.12 + a bump lower bound (C).]
Proposition: |(QGQ*)^{−1}(y, y′)| ≤ C e^{−δ_1 d(y,y′)} with C, δ_1 depending only on L, d, and the condition number of the KKT operator, hence uniform in U and j.
Mechanism: the KKT operator T = [[M_1(U), Q(U)*],[Q(U), 0]] is finite-range in fine-lattice units (M_1 nearest-neighbour; Q local within a block) and the block of T^{−1} on the constraint slot equals N_1^{−1}. Demko–Moss–Smith (Math. Comp. 43 (1984) 491–499; Jaffard 1990 for infinite matrices): a finite-range (banded) operator with ‖T^{−1}‖ ≤ κ has |T^{−1}(x,y)| ≤ C(κ, range) e^{−δ(κ, range) d(x,y)}. The uniform bound ‖T^{−1}‖ ≤ κ follows from (a) the lower bound γ_0 (A3, idea I1) and (b) a FINITE upper bound on the extension cost (E_U with ANY constant K). Scale uniformity: in block units T is scale-covariant, so the rate in block units is uniform in j; the printed powers of L^jη come from the units.
Note on (E_U): a FINITE uniform K is already available — the one-slice extension (SOURCES_EU §3) has energy ≤ c·L³‖B‖² with L fixed = 13; only the sharp constant K_0(1 + O(α_0)) needs the dressing argument. For A1 the crude K suffices.
Kill test: none needed (textbook theorem); the verifier checks finite range in the right units, the Schur-complement identification, and the "same for G_1" clause. Constants will be worse than Balaban's δ_1; that is acceptable (the ledger wants uniformity, not sharpness).

## I3. A2 (CMP 116 (2.16) for R_2) via the resolvent identity  [after I2]
Proposition: the localized covariance C^{(k)}(Z_0, 0) differs from the compression Z_0C^{(k)}Z_0 by a term whose kernel is O(e^{−δ_1 M/3}) + O(α_0 + α_1), as (2.16) states.
Mechanism: with I2's kernel decay, the difference between the inverse of a compression and the compression of the inverse is controlled by the kernel mass across the boundary layer at distance ~M (resolvent identity + Schur test with weight e^{δd}). The O(α) part is the perturbative σ-dependence Balaban treats on p. 15.
Kill test: numerical at L = 3 with a small Z_0 (compare both operators; the difference should fall exponentially in the layer width).

## I4. A4 (CMP 102 (189) local second-derivative decay of the minimizer map) via IFT + Demko–Moss–Smith  [launched; NOTE: DMS is not usable for the same reason as I2 — the agent must use a block-level Combes–Thomas argument (as in SOURCES_A1_KERNEL Lemma CT) for the Hessian inverse, or Balaban's walk expansion]
Proposition: D²U_k[h, h′](x) decays exponentially in the distance between supp h, supp h′, and x, uniformly in k, volume, regular V.
Mechanism: the minimizer solves the stationarity equation F(U, V) = 0 with F finite-range; the implicit function theorem gives DU = −(D_UF)^{−1}D_VF and D²U = −(D_UF)^{−1}[D²F terms]; D_UF is the Hessian of the action at the minimizer — finite-range and bounded below on the small-field domain (CMP 102 Theorem 1 gives a unique minimum; the quantitative lower bound is A3-type) — so (D_UF)^{−1} has an exponentially decaying kernel by Demko–Moss–Smith, and the composition of decaying kernels decays. (187)'s O(ε_1) bound on the second-order term supplies the smallness; (189) is the localized version.
Kill test: none (structural); the verifier checks the Hessian lower bound source and the range of F.

## I5. B22 (κ → κ/2 decay recovery) via rescaling  [launch]
Proposition: a loss of half the decay rate at the sourced step is recovered at the next step by the L-fold rescaling of distances, since L ≥ 13 > 2.
Mechanism: e^{−(κ/2)d_k(X)} = e^{−(κ/2)L d_{k+1}(X)} ≤ e^{−6κ d_{k+1}(X)} for L = 13; Balaban's own (1.93) decay-recovery charge (1+β)κ per step is the same mechanism with a smaller gain. The only case needing care is a loss at the LAST step (no further rescaling): there the final cluster expansion runs at rate κ/2, which is fine if κ_final ≤ κ/2 (SOURCES_FX_R2's M-condition with κ → κ/2).
Kill test: read SOURCES_D2 to see at which step(s) the loss occurs; if the loss is per step (not once), the net rate per step is L/2 > 1 and still recovers.

## I6. K-independence of β_j(g) (v4 §10 item 9) is the wrong statement  [DONE 2026-10-28: SOURCES_T2_KUNIF — item 9 is a volume statement; closed via C_β; I6 over-asked]
Proposition: β_j is NOT a function of g_j alone (it depends on the history), so "K-independence" is false as an identity; what Theorem 2w uses is K-UNIFORM bounds, which real (H-hist) gives: two histories with the same g_j differ in β_j by ≤ Σ_i λ^{j−i}|Δg_i|.
Task: reformulate item 9 as uniformity, check every use in THEOREM2_PROOF_v4 and KAPPA_BOUNDED, and close it from (H-hist) [verified reduction] — or show a use that needs the identity.

## I7. (M-C) closes from the printed (C1)–(C5) with the 1.235 margins  [credited loop]
Proposition: Balaban's convergence conditions are open conditions ("γ small enough"); the complex-coupling perturbation changes every constant by a factor ≤ 1.235 (HHOL) and is absorbed by shrinking γ. So (M-C) = [R to printed (C1)–(C5)] with no new analytic input.
Task: list each condition, show it is strict/open, and record the γ shrink.

## I8. Fixed-level inputs by certification  [credited loop, numerics]
Proposition: (S1)–(S3)/(PI) at L = 13 are statements about β_1(13), β_2(13) (positivity, size); certify them with the arb umklapp machinery (an arb port of umk_beta1 for L = 13; the box has the float value).
Task: state exactly what (S1)–(S3) and (PI) require of the first increments; certify by interval arithmetic; the box float value is the cross-check.

## I9. Collapse  [the point]
If I1 holds: A3 is proved for all unitary U with the free constant. Then I2 proves A1 from A3 + crude E_U + a textbook theorem; I3 proves A2 from A1; I4 proves A4 from the same theorem. The two "hard" items and two medium ones collapse onto CMP 96 Lemma 2.4 (published, free case) + Demko–Moss–Smith + Kato. The ledger's Group A would shrink by four. The kill test for the whole collapse is I1's numerical check at L = 3, under one minute.
