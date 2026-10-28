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

## 1. Proper-time form of the massive bracket [P rel. LLL Lemma 2.1]

Inputs [V]. LLL Lemma 2.1: for every m² ≥ 0, W(φ; m²) = −∫dF_⊥(κ)[τ log|A′_α + κ + m²| − τ log(A′_0 + κ + m²)], A′_0 = 𝔏_0⊗1 ((F1)). LLL Lemma V0(b): A′_α ≥ −3|α| for |α| ≤ 10^{−4}. LLL §3: ∫dF_⊥(κ)e^{−tκ} = p_t(0)², and p_t(0)² ≤ C_p(1 + t)^{−1}.
Lemma 1.1. Let 0 < |α| ≤ 10^{−4} and m² ≥ 6|α|. Then
  W(φ; m²) = ∫_0^∞ (dt/t) e^{−tm²} p_t(0)² D_α(t).   (1.1)
Proof. X := A′_α + κ + m² ≥ m² − 3|α| ≥ m²/2 > 0 and X_0 := A′_0 + κ + m² ≥ m². For bounded X, X_0 ≥ c > 0, log X − log X_0 = −∫_0^∞(dt/t)(e^{−tX} − e^{−tX_0}) (Frullani, spectral theorem). Apply τ and Fubini: the integrand is bounded by e^{−tm²/2}·e^{−tκ}|D_α(t)|, and |D_α(t)| ≤ Cα²t for t ≤ 1/|α| (LLL Lemma V1) and ≤ 4 e^{3|α|t} always (τ1 = 2), so it is integrable in (t, κ). The κ-integral gives p_t(0)². Sign: W = −∫dF_⊥ τ(log X − log X_0) = +∫(dt/t)e^{−tm²}p_t(0)²D_α(t). ∎
Remark. Positivity of A′_α + m² is the only place the mass is used. The threshold 6|α| = 12|φ| is μ ≥ 12 in STEPB's m² = μ|φ|. STEPB §2.1's constant C_0 is replaced by LLL V0(b) (C_0 = 6 in φ units).
