# SOURCES_T2_MPT_STEPC — (MPT) by proper time, and the gauge-fixing part of Step C

Date 2026-10-28. Target: TRUST_LEDGER row B3, the two inputs left after SOURCES_T2_LLL + VERIFY: (a) (MPT) = SOURCES_T2_F_STEPB Lemma 1; (b) Step C's gauge-fixing part (STEPB §2.3(ii)).
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md §2 not opened.
Read: SOURCES_T2_F_STEPB.md (all) + VERIFY §5.1, §5.3, §8; SOURCES_T2_LLL.md (all) + VERIFY corrections; SOURCES_T2_GAPRIME2.md §1–§2 (Lemma 1.1, (1.a), (1.b)); SOURCES_T2_S123.md §5.1 (Lemma 5.1, Prop. 5.3 statement); BETA_FP_H.md (1.1), (3.1), (F); numerics/t2_gaprime2_check.py (ops).
Ledger tags: [P] proved here; [V] read verbatim in a project file; [I] imported/cited, not checked here; [R] reduction; [N] numerics.
Units: α := 2|φ| (charge-2 holonomy, LLL §1.1). τ = per-site trace on ℓ²(Z²)⊗C² (LLL §1.3). p_t(x) = e^{−2t}I_x(2t). T_α(t) = τ_2e^{−t𝔏_α} (scalar). D(t) = D_α(t) := τe^{−tA′_α} − τe^{−tA′_0}.

## 0. Plan and headline
- §1: proper-time form of the massive bracket W(φ; m²) (exact, from LLL Lemma 2.1).
- §2: Lemma S1′ (fourth moment of the lattice Lévy area, with hops). Note: the correct order is E[A_t⁴; X_t = 0] ≍ t³ for t ≥ 1, not t² (A_t ~ t, P(X_t = 0) ~ 1/t; continuum check: the α⁴ term of αt/sinh(αt)/(4πt) is 7α⁴t³/(1440π)).
- §3: Lemma V1′ (fourth-order heat-trace bound): |D_α(t) − α²c_A(t)| ≤ Cα⁴t(1 + t)² for t ≤ 1/|α|.
- §4: Theorem A = (MPT) in the form §2.6 uses: W(φ; m²) = α²w̃_2(m²) + R, |R| ≤ Cα⁴/m⁴, m² ≥ 6|α|. No Weyl calculus.
- §5: Lemma C: c_A(t)/t → 11/(12π) (from the scaled limit, LLL Lemma V2). Theorem B: (3.1′) follows from Theorem A + Lemma C + (L-LL) with a Frullani argument. This route does not use STEPB Lemma 2 and so does not use Step C.
- §6: Step C gauge-fixing symbols a_0, a_1, a_2 (bond fields, midpoint gauge), evenness. [P]; off the critical path after §5.
- §7: numerics. §8: conclusion and ledger.
