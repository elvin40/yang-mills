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

## 2. Lemma S1′: fourth moment of the lattice Lévy area, with hops [P]

Setting. X = (x_0, x_1) is the rate-1-per-direction walk on Z² (LLL §3.1), started at 0, total time t. Insert k ≥ 0 deterministic hops v_1, …, v_k (|v_j|_∞ ≤ r) at times 0 ≤ σ_1 ≤ … ≤ σ_k ≤ t. Put x_1(s) = g(s) + h(s), g the x_1-walk, h(s) = Σ_{σ_j ≤ s}v_{j,1} (|h| ≤ kr). The generalized area of the path is
  𝒜 := Σ_i ε_i x_1(s_i) + Σ_j v_{j,0}x_1(σ_j−)   (sum over the x_0-jumps (s_i, ε_i) and the hops).
Closure event Cl: x_0(t) + Σ_jv_{j,0} = 0 and g(t) + h(t) = 0. For a closed path 𝒜 = Σ x_1(start)Δx_0 over all steps, which is the Landau-gauge line integral; it is invariant under translation of the path (ΣΔx_0 = 0), so it is minus the algebraic enclosed area. For k = 0, 𝒜 = A_t (LLL §3.1).
Lemma S1′. For n = 0, 1, 2, 3, 4 there is C = C(k, r) with
  E[|𝒜|^n; Cl] ≤ C(1 + t)^{n−1}   (all t ≥ 0, all hop times),   and for k = 0:  E_0[A_t⁴; X_t = 0] ≤ C t(1 + t)².
Proof. (i) n = 0. x_0 and g are independent walks; sup_x p_t(x) ≤ C(1 + t)^{−1/2} for each. So P(Cl) ≤ C(1 + t)^{−1}.
(ii) Bell formula. Condition on g. The x_0-jumps are a Poisson random measure on [0, t]×{±1} of intensity ds⊗(δ_+ + δ_−). With A := Σ_iε_ix_1(s_i) and G_q := ∫_0^tx_1(s)^q ds, the exponential formula gives E[e^{λA + iθΣε_i} | g] = exp F(λ), F(λ) = ∫_0^t[2cosh(λx_1(s) + iθ) − 2]ds. So F(0) = −2t(1 − cos θ), F′ = 2i sin θ G_1, F″ = 2cos θ G_2, F‴ = 2i sin θ G_3, F⁗ = 2cos θ G_4, and E[A⁴e^{iθΣε}|g] = Φ(θ)B_4 with Φ = e^{F(0)} and the complete Bell polynomial
  B_4 = 2cos θ G_4 − 16 sin²θ G_1G_3 + 12cos²θ G_2² − 48cos θ sin²θ G_1²G_2 + 16 sin⁴θ G_1⁴.
(Check: the n = 2 analogue B_2 = 2cos θ G_2 − 4sin²θ G_1² is LLL Lemma S1's formula.) Insert 1{Σε_i = −n_0} = ∫dθ/2π e^{iθ(Σε_i + n_0)} and use ∫dθ/2π Φ|sin θ|^{2j} ≤ C(1 + t)^{−1/2−j}. Hölder: G_1² ≤ tG_2, G_2² ≤ tG_4, |G_1G_3| ≤ tG_4, G_1⁴ ≤ t³G_4. Hence
  E[A⁴; x_0 closes | g] ≤ C[(1+t)^{−1/2}(1 + t) + (1+t)^{−3/2}(t + t²) + (1+t)^{−5/2}t³]G_4 ≤ C(1 + t)^{1/2}G_4.
(iii) Average over g with its closure. G_4 ≤ 8∫g⁴ + 8t(kr)⁴. Σ_x x⁴p_s(x)p_{t−s}(x − y) ≤ C_r(1 + t)^{3/2} for |y| ≤ kr, all s ∈ [0, t] (s ≤ t/2: sup p_{t−s} ≤ C(1+t)^{−1/2} times E X_s⁴ = 2s + 12s²; s > t/2: reverse the walk). So E[G_4; g closes] ≤ C t(1 + t)^{3/2} + Ct(1+t)^{−1/2} ≤ Ct(1 + t)^{3/2}. With (ii): E[A⁴; Cl] ≤ Ct(1 + t)². For k = 0 this is the second claim.
(iv) Hop part. |Σ_jv_{j,0}x_1(σ_j−)|⁴ ≤ C(1 + sup_s|g(s)|⁴); E[sup|g|⁴; g(t) = y] ≤ C(1 + t)^{3/2} (split at t/2; Doob's L⁴ inequality on each half, sup p ≤ C(1+t)^{−1/2} on the other); times P(x_0 closes) ≤ C(1+t)^{−1/2}: ≤ C(1 + t). So E[𝒜⁴; Cl] ≤ 8E[A⁴; Cl] + 8C(1 + t) ≤ C(1 + t)³.
(v) n = 1, 2, 3: Hölder, E[|𝒜|^n; Cl] ≤ E[𝒜⁴; Cl]^{n/4}P(Cl)^{1−n/4} ≤ C(1 + t)^{3n/4 − 1 + n/4}. ∎
Order check. The bound t³ (t ≥ 1) is sharp: in the continuum, T_α(t) = (4πt)^{−1}αt/sinh(αt), whose α⁴ coefficient 7t³/(1440π) equals E[A⁴; X = 0]/24 to leading order. The caller's guess "E[A_t⁴; X_t = 0] ≤ Ct²" is one power of t too optimistic; the t³ bound is the right one, and it is exactly what the proper-time integral in §4 can absorb (∫dt·t·e^{−tm²} = m^{−4}).

## 3. Lemma V1′: fourth-order heat-trace bound for A′ [P rel. LLL Lemma V1 (i)–(iii) and Lemma S1′]

Lemma V1′. There are α_1 > 0, C < ∞ and a real function c_A on [0, ∞) with |c_A(t)| ≤ Ct, such that for 0 < |α| ≤ α_1 and 0 ≤ t ≤ 1/|α|:
  |D_α(t) − α²c_A(t)| ≤ Cα⁴t(1 + t)².   (3.1)
c_A(t) = ½∂_α²D_α(t)|_{α=0}. (At fixed t the right side is O(α⁴), so c_A is uniquely determined.)
Proof. Inputs [V, LLL V1(i)–(iii), verified]: A′_α = L + E_α, L = 𝔏_α⊗1, E_α(x, x + v) = e^{iαx_1v_0}η_α(v), |v|_∞ ≤ r, η_α entire, η_0 = 0, so |η_α(v)| ≤ C|α|. The Dyson series τe^{−t(L+E)} = Σ_k (−1)^k ∫_{Σs_j = t}ds τ(e^{−s_0L}E e^{−s_1L}E ⋯ E e^{−s_kL}) has k-th term bounded by (C′|α|t)^k/k!·C(1 + t)^{−1}.
(a) k ≥ 5. Sum ≤ C(|α|t)⁵/(1 + t)·e^{C′}. For |α|t ≤ 1: ≤ Cα⁴t⁴/(1 + t)·|α|t ≤ Cα⁴t(1 + t)².
(b) k = 0. 2T_α(t) = 2E_0[cos(αA_t); X_t = 0] (LLL §3.1). |cos w − 1 + w²/2| ≤ w⁴/24 and Lemma S1′ (k = 0): 2T_α − 2T_0 = −α²E_0[A_t²; X_t = 0] + O(α⁴t(1 + t)²).
(c) 1 ≤ k ≤ 4. Walk representation of each e^{−sL}(x, y) (LLL §3.1, phases e^{±iαx_1} on x_0-jumps) and the hop kernels E_α combine into one closed path with hops v_1, …, v_k. The total phase is e^{iα𝒜} with 𝒜 of §2 (each step contributes x_1(start)Δx_0). So
  term_k = (−1)^k ∫ds Σ_{v_1..v_k} tr[η_α(v_1)⋯η_α(v_k)]·E[e^{iα𝒜}; Cl],
the expectation over the concatenated walk of total time t. Expand Π_jη_α(v_j) = Σ_{a=k}^{3}α^aζ_a(v) + O(α⁴) (entire, η_0 = 0) and e^{iα𝒜} = Σ_{n ≤ 3−k}(iα𝒜)^n/n! + R, |R| ≤ |α𝒜|^{4−k}/(4−k)!. Keep the products with a + n ≤ 3: a polynomial P_k(α; t) of degree ≤ 3 with finite coefficients (Lemma S1′). The rest has three kinds of terms; with ∫ds = t^k/k! and Lemma S1′:
  α^{a+n}ζ_a·E|𝒜|^n with a ≥ k, a + n ≥ 4, n ≤ 3 − k:  ≤ Ct^kα^{a+n}(1 + t)^{n−1};
  α^aζ_a·R:  ≤ Ct^kα^{a+4−k}(1 + t)^{3−k};
  O(α⁴)·E[1; Cl]:  ≤ Ct^kα⁴(1 + t)^{−1}.
Each is ≤ Cα⁴t(1 + t)² when |α|t ≤ 1, |α| ≤ 1: for t ≤ 1 use t^k ≤ t; for t ≥ 1 use |α|^{j} ≤ t^{−j} on the surplus powers (a ≥ k gives total power of t at most 3).
(d) Collect: D_α(t) = P(α; t) + Rem, P of degree ≤ 3 in α, |Rem| ≤ Cα⁴t(1 + t)². D_0 = 0 gives P(0; t) = 0.
(e) Evenness [V, LLL V1(ii), P there; numerically exact]: A′_{−α} = CA′_αC, so D_{−α}(t) = D_α(t). Then the odd part a_1α + a_3α³ of P equals ½[Rem(−α) − Rem(α)] = O(α⁴) as α → 0 at fixed t; dividing by α gives a_1 = 0, then a_3 = 0. So P = α²c_A(t). This is the only place where the α¹ and α³ terms are removed; term by term they do not vanish (LLL_VERIFY on V1).
(f) |c_A(t)| ≤ Ct: from LLL V1, |D_α(t)| ≤ Cα²t; with (3.1), |c_A(t)| ≤ Ct + Cα²t(1 + t)² for every small α; let α → 0. ∎
Constants. α_1 = min(10^{−4}, α_1^{LLL}); C depends on r, the Taylor constants of η_α on |α| ≤ α_1, C′ of LLL V1(iii), and the walk constants of Lemma S1′. No constant depends on t or on the rationality of α.
Remark (what replaced the Weyl calculus). The verifier (STEPB_VERIFY §5.1) asked for magnetic Weyl symbol-class bounds because a resolvent expansion with Combes–Thomas kernels loses powers. The heat kernel does not lose them: the diamagnetic bound |e^{−sL}(x, y)| ≤ p^{2D}_s(x − y) is sharp at every scale, and the phases are controlled by moments of one random area. This is the "diamagnetic route" of the verifier, extended to the matrix operator by the Dyson series around 𝔏_α⊗1 (A′ is not "scalar ⊗ 1 + bounded spin" as an operator inequality, but it is "scalar ⊗ 1 + O(α) finite-range kernel", which is all the Dyson bound needs).

## 4. Theorem A ((MPT) in the form STEPB §2.6 uses) [P rel. §1–§3]

Theorem A. Let 0 < |α| ≤ α_1, 0 < m ≤ 1, m² ≥ 6|α|. Put w̃_2(m²) := ∫_0^∞(dt/t)e^{−tm²}p_t(0)²c_A(t) (finite: |c_A| ≤ Ct). Then
  W(φ; m²) = α²w̃_2(m²) + R,   |R| ≤ C_Aα⁴m^{−4},   C_A := 2C_pC_{V1′} + 8C_∞/e,
with C_p from p_t(0)² ≤ C_p(1 + t)^{−1}, C_{V1′} the constant of (3.1), C_∞ := C_p(4C_d + 1) + C_pC_c (C_d of S123 Lemma 5.2 via LLL V0(d); C_c the constant in |c_A| ≤ C_ct). In φ units (α = 2φ): W(φ; m²) = φ²w_2(m²) + R, w_2 = 4w̃_2, |R| ≤ 16C_Aφ⁴m^{−4}.
Proof. By (1.1), R = ∫_0^∞(dt/t)e^{−tm²}p_t(0)²[D_α(t) − α²c_A(t)]. Split at t = 1/|α|.
(i) t ≤ 1/|α|: by (3.1), |R_<| ≤ C_pC_{V1′}α⁴∫_0^∞e^{−tm²}(1 + t)dt = C_pC_{V1′}α⁴(m^{−2} + m^{−4}) ≤ 2C_pC_{V1′}α⁴m^{−4} (m ≤ 1).
(ii) t > 1/|α|: τe^{−tA′_α} = t∫e^{−tλ}n_{A′}(λ)dλ ≤ 4C_d e^{3|α|t}/t (n_{A′}(λ) ≤ 4C_d(λ + 3|α|), zero below −3|α|; LLL V0(b), (d)); τe^{−tA′_0} = 2T_0(t) ≤ C/t; |α²c_A| ≤ C_cα²t. With m² − 3|α| ≥ m²/2 and x := m²/|α| ≥ 6:
  ∫_{1/|α|}^∞ t^{−3}e^{−tm²/2}dt ≤ |α|³(2/m²)e^{−x/2} = 2α⁴m^{−4}·x e^{−x/2},  α²∫_{1/|α|}^∞ t^{−1}e^{−tm²}dt ≤ α²e^{−x}/x ≤ α⁴m^{−4}·x e^{−x}.
x e^{−x/2} ≤ 2/e. So |R_>| ≤ (8C_∞/e)α⁴m^{−4}. ∎
What this proves of STEPB Lemma 1. Lemma 1 is the statement W = φ²w_2 + R, |R| ≤ Cφ⁴m^{−4} for |φ| ≤ m²/μ. Theorem A proves it for μ ≥ 12, with the explicit constant above, and with w_2 defined by proper time instead of by the Moyal symbol integral. The two definitions agree: both are ½∂_φ²W(0; m²), which exists by Theorem A (Taylor coefficients are unique). So (MPT) is no longer needed as an input [P].
Hypotheses used, exactly: LLL Lemma 2.1 (ghost cancellation, rel. S123 Lemma 5.1), LLL V0(b),(d) (rel. GAPRIME2 Lemma 4.1, S123 Lemma 5.2), LLL V1(i)–(iii) (structure of E_α, Dyson bound), LLL V1(ii) (evenness), Lemma S1′, Bessel bounds on p_t. No symbol classes, no Combes–Thomas, no rational flux.

## 5. The log coefficient without Lemma 2 or Step C

5.1 Lemma C (large-t slope of c_A) [P rel. LLL Lemma V2, i.e. rel. (IP), Laplace continuity, counting monotonicity]. c_A(t)/t → c_∞ := 11/(12π) as t → ∞.
Proof. (a) Scaled heat trace. LLL Lemma V2: the scaled spectral measure ν′_α(de) := α^{−1}dn_{A′}(αe) converges vaguely to ν′_c = (2π)^{−1}Σ_{n≥0}(δ_{2n−1} + δ_{2n+3}). Its support lies in [−3, ∞) (V0(b)), and α^{−1}n_{A′}(αe) ≤ 4C_d(e + 3) (V0(d)) gives a tail bound uniform in α. So for every τ > 0: α^{−1}τe^{−(τ/α)A′_α} → ∫e^{−τe}dν′_c = (2π)^{−1}(e^{τ} + e^{−3τ})/(1 − e^{−2τ}) = cosh 2τ/(2π sinh τ). With α^{−1}2T_0(τ/α) → 1/(2πτ) (LLL §5 (a)):
  α^{−1}D_α(τ/α) → Δ(τ) := (2π)^{−1}[cosh 2τ/sinh τ − 1/τ] = (2π)^{−1}[(11/6)τ + O(τ³)].
(b) Fix τ ∈ (0, 1], let t → ∞ and α := τ/t (so |α|t = τ ≤ 1 and α → 0). By (3.1), |α^{−1}D_α(t) − αc_A(t)| ≤ Cα³t(1 + t)² ≤ 4Cτ³ (t ≥ 1). Since αc_A(t) = τ·c_A(t)/t: limsup_{t→∞}|c_A(t)/t − Δ(τ)/τ| ≤ 4Cτ². Let τ → 0: Δ(τ)/τ → 11/(12π). ∎
Remark. 11/6 = 2 (spin, from cosh 2τ) − 1/6 (orbital, from τ/sinh τ). The same 4 − 1/3 split as LLL §5.3.

5.2 Lemma F (Frullani with a slowly varying weight) [P, elementary]. Let ψ: (0, ∞) → R be bounded with ψ(t) → ψ_∞ as t → ∞. For λ > 0, as m → 0: ∫_0^∞(dt/t)(e^{−tλm²} − e^{−tm²})ψ(t) → ψ_∞ ln(1/λ).
Proof. Substitute t = s/m²: ∫(ds/s)(e^{−λs} − e^{−s})ψ(s/m²). (e^{−λs} − e^{−s})/s is integrable on (0, ∞); ψ(s/m²) → ψ_∞ for every s > 0; dominated convergence; ∫(ds/s)(e^{−λs} − e^{−s}) = ln(1/λ). ∎
Apply with ψ(t) := p_t(0)²c_A(t): bounded (|c_A| ≤ Ct, p_t(0)² ≤ C_p/(1+t)), and ψ(t) → c_∞/(4π) (Lemma C, √(4πt)p_t(0) → 1). So
  w̃_2(λm²) − w̃_2(m²) → (c_∞/4π) ln(1/λ),  i.e.  4[w̃_2(λm²) − w̃_2(m²)] → (11/(12π²)) ln(1/λ) = n_2c_2 ln(1/λ).

5.3 Theorem B ((3.1′), hence (3.1)) [P rel. Theorem A, Lemma C, LLL Theorem 5.1, STEPB §2.0, Step A].
Convention fix. With G(φ) := F_W(φ)/φ² ≈ n_2c_2 ln(1/|φ|) (BETA_FP_H (F)), the correct form is G(λφ) − G(φ) → n_2c_2 ln(1/λ) for each fixed λ > 0. STEPB §1 writes "G(φ) − G(λφ) → n_2c_2 ln(1/λ)" with λ = (Λ/Λ′)^{−2}; that has a sign/convention slip (λ ↔ 1/λ); BETA_FP_H (3.1) itself is consistent with the form here [I: notation only, no content change].
Statement. For every fixed λ > 0: G(λφ) − G(φ) → n_2c_2 ln(1/λ) as φ → 0, n_2c_2 = 11/(12π²).
Proof. Fix μ ≥ 12; m² := μ|φ| = μα/2 ≥ 6|α|. F_W(φ) = W(φ; 0) + N(φ), N the neutral part, analytic and even (STEPB §2.0), so N(φ)/φ² = b_n + O(φ²). Write W(φ; 0)/φ² = H_φ(μ) + W(φ; μ|φ|)/φ² and use Theorem A: W(φ; μ|φ|)/φ² = 4w̃_2(μ|φ|) + R/φ², |R/φ²| ≤ 16C_Aφ⁴/(μ²φ²·φ²) = 16C_A/μ². So
  G(λφ) − G(φ) = 4[w̃_2(λμ|φ|) − w̃_2(μ|φ|)] + [H_{λφ}(μ) − H_φ(μ)] + O(C_A/μ²) + O(φ²).
First bracket → n_2c_2 ln(1/λ) (5.2); second → 0 (LLL Theorem 5.1: both converge to h(μ)). So limsup|G(λφ) − G(φ) − n_2c_2 ln(1/λ)| ≤ 32C_A/μ². μ is arbitrary: the limsup is 0. ∎
What is not used. STEPB Lemma 2 (Moyal symbol integral, degree −4 part I_{−4}), Step C (lattice symbols = continuum × (1 + even O(K²))), and (MPT) in its Weyl form. The proper-time route needs only the α² coefficient's large-t slope (Lemma C), which comes from the same scaled spectral limit (LLL V2) that proves (L-LL). So Step C is off the critical path of (F). It is still proved in §6, as asked, because STEPB Lemma 2 may be used elsewhere.
Consistency [P]. The ln μ coefficient of h(μ) is 11/(12π²) (LLL §5.3); the ln(1/m²) coefficient of 4w̃_2 is 11/(12π²) (here). Their sum makes B μ-independent, as STEPB §2.6 requires. These are two independent computations of the same 11/3.

## 6. Step C, gauge-fixing part: explicit bond-field symbols [P; numerically exact, §7]

6.1 The block [V: GAPRIME2 Lemma 1.1; S123 Lemma 5.1]. In Feynman gauge the gauge-fixing (longitudinal) block on charged bond fields is G = D_φD_φ^† with entries G_{μν} = ∇_μ∇_ν^*, ∇_μ = 1 − T_μ. In the k_⊥ fibre, ∇_2, ∇_3 are the scalars 1 − e^{iK_2}, 1 − e^{iK_3} (no flux in those planes); the only magnetic entries are μ, ν ∈ {0, 1}.
6.2 Midpoint gauge [P]. b_μ(x) sits on the link midpoint X = x + e_μ/2. Put Γ(X→Y) := straight-line integral of x_1dx_0 (Landau gauge; T_μ has phase e^{iαΓ} on its own straight hop, so T_μ is already a pure Peierls translation). Gauge: b̃_μ(X) := e^{iαΓ(X→x)}b_μ(x) (a diagonal unitary; traces and spectra unchanged). Reduced kernel: ã_{μν}(Y − X) := e^{−iαΓ(X→Y)}G̃_{μν}(X, Y). For each word in G_{μν} the phase of ã is e^{iα∮}, ∮ = Σx_1Δx_0 around the closed polygon X → x → (lattice word) → y → Y → X, which is translation invariant; so ã depends on Y − X only.
6.3 Result [P, by enumerating the four words of ∇_μ∇_ν^*; each polygon is a right triangle of area 1/8].
  ã_{μμ}: 2 at d = 0, −1 at d = ±e_μ (no phase).
  ã_{01}: e^{iα/8} at d = ±(e_0 − e_1)/2, −e^{−iα/8} at d = ±(e_0 + e_1)/2.  ã_{10} = conj(ã_{01}) (reflected d).
Symbol σ(K) := Σ_dã(d)e^{iK·d}, K̂_μ := 2 sin(K_μ/2):
  σ_{μμ} = K̂_μ² exactly (a_1 = a_2 = 0, like the ghost);
  σ_{01}(K; α) = 2e^{iα/8}cos((K_0 − K_1)/2) − 2e^{−iα/8}cos((K_0 + K_1)/2)   (exact, all orders in α).
Expansion σ_{01} = a_0 + αa_1 + α²a_2 + O(α³):
  a_0 = K̂_0K̂_1,  a_1 = (i/2)cos(K_0/2)cos(K_1/2),  a_2 = −K̂_0K̂_1/128,  σ_{10} = conj(σ_{01}).
This is the exact twisted product K̂_μ ⋆_α K̂_ν of the midpoint difference symbols (e^{iK·u} ⋆ e^{iK·v} = e^{iα(u∧v)/2}e^{iK·(u+v)}, u∧v = ±1/4 for half-steps).
6.4 Comparison with the continuum [P]. Continuum (D_μD_ν^*) Weyl symbols: a_0^c = K_μK_ν, a_1^c = (i/2)ε_{μν} (the Moyal bracket of two linear symbols), a_2^c = 0 (Moyal products of linear symbols stop at first order). Lattice:
  a_0 = K_0K_1[1 − (K_0² + K_1²)/24 + O(K⁴)],  a_1 = (i/2)[1 − (K_0² + K_1²)/8 + O(K⁴)],  a_2 = −K_0K_1/128·[1 + O(K²)].
So a_0, a_1 equal the continuum symbols times (1 + O(K²)), and a_2 is a degree-2 term where the continuum has 0 (it has 4 more powers of K than the scale-invariant degree −2 of an f²-coefficient, so it is summable in Lemma 2's dyadic count, like any O(K²)-relative correction). The diagonal entries are exact.
6.5 Evenness [P]. Every a_m(K) is a function of cos(K_μ/2) and of the product sin(K_0/2)sin(K_1/2); all are invariant under K → −K. So all O(K²) corrections are even in K. Symmetry reason: point reflection X → −X maps each midpoint polygon to its reflection with the same orientation (area is invariant under x → −x in 2D), so ã(−d) = ã(d); and charge conjugation (α → −α with complex conjugation, LLL V1(ii)) gives σ(K; −α) = conj σ(−K; α)^T, so a_1 is odd under C and a_0, a_2 even, as in the continuum.
6.6 Convention caveat [I]. STEPB Lemma 2 uses one magnetic Weyl convention for the whole operator A_φ. The midpoint gauge of 6.2 must also be the one used for the Wilson-Hessian symbols (U3 Lemma 3.4, not reread here). If Lemma 3.4 uses site-based positions for bond fields, its a_1 has odd O(K) corrections (factor e^{i(K_μ − K_ν)/2}); the diagonal unitary of 6.2 removes them, and traces do not change. I did not check which convention Lemma 3.4 uses.
Verdict on Step C, gauge-fixing part: [P] (explicit symbols, exact in α; corrections even). After §5, Step C is no longer needed for (F).
