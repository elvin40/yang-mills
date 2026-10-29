# SOURCES_H_ALPHA_VERIFY — adversarial check of SOURCES_H_ALPHA ((H-α), (H-α′), Proposition A)

Date 2026-10-29. Verifier: Claude (Opus 5.5). Ids follow IDS.md. No existing file was edited; PLAN.md was not appended; sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Page images read this session (pdftoppm -r 150, fresh /tmp folders, all deleted after use):
- by me: CMP 109 pp. 258–263 (PDF 10–15); CMP 119 pp. 244, 265–269 (PDF 2, 23–27); CMP 116 p. 19 (PDF 19).
- by two image-reading helper agents (Opus, briefed without the claims under test; each read every page as an image and deleted its folder): CMP 109 pp. 264–282 (PDF 16–34; (2.9) also at 300 dpi) and pp. 283–301 (PDF 35–53). Their quotes are used below and are marked [V, helper].
Files read: OPUS_QUEUE.md l. 1–15; SOURCES_H_ALPHA.md (all); SOURCES_L1_F.md §3.3, §5.4–§5.5; SOURCES_L1_F_VERIFY.md (all); SOURCES_HBETA_N3.md (all); SOURCES_GGAIN.md §4.5, §6.1–§6.2; SOURCES_HHIST.md l. 90–110; SOURCES_HHOL.md l. 105–125; SOURCES_MC.md l. 55–61, 87–149; SOURCES_MC_VERIFY.md l. 30; TRUST_LEDGER.md rows R-036–R-043.
Numerics rerun inline (python -I heredoc, no file kept): toy model zero, erf zero, erf sector winding.

## VERDICT

The two failure proofs are CONFIRMED. Route (i) fails for the stated reason. Route (iii) fails: the M_β part of Lemma N3 tolerates the polylog-shrinking domain, but the real derivative input C_β = C_ΠS_0 of R-037 and the constant D of (F1) (R-038/H-120) use the same field-Cauchy extraction, and their u-slot bound ∝ g_j(log u_j)^{−2q} does not sum. The mechanism (ii) is CONFIRMED on the images: CMP 119 p. 268 cuts only the fluctuation field. The toy model is CONFIRMED (zero at 1.1645δ). Proposition A is CONFIRMED as a reduction, with three CORRECTIONS: (1) CMP 109 does not finish the proof of Theorem 3; p. 298 defers the end of the induction to "the next paper" (CMP 116), so the reduction is to CMP 109 Theorem 3 as completed in CMP 116 §2; (2) the ρ_B of §3.3 is not shown to satisfy condition (iii) |J| < γ_0 and the local-gauge condition (1.12); this folds into the [R] constant K_U; (3) "M_β := … = cE_0K_2(6K_U max(1, 2B_3)/min(α_0, α_1))²" is an upper bound, not an equality.
Part 2: (A1) is upgraded to [V] (every ε_1 in CMP 109 is step-local; none is in Sect. 1). (A2) is upgraded to [V] for the definition and the units (CMP 109 (2.9) cuts the unscaled fluctuation; CMP 116 (2.33) has the exponent ε_1²/g_k²); only the identification "CMP 119 (3.16) is the CMP 109 (2.9) cut with ε_1 → δ_k" stays [I], with strong printed support. (A3) is upgraded to [V]: CMP 116 p. 19 prints ε_2 = 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1, linear in ε_1. The residue of (H-α) is: the CMP 116 completion of Theorem 3 at a per-step cut (verified reduction SOURCES_MC), K_U including the J and (1.12) conditions [R], K_2 [P-sketch], and the order of choice of the constants in CMP 116 [I, carried from SOURCES_MC].

## 1. Page facts of SOURCES_H_ALPHA §1

V1. P1 (CMP 109 p. 262). CONFIRMED [V]. (1.11)–(1.16) read as stated: α_0 bounds |∂U − 1| (α_0ξ²) and |J| (γ_0); (1.12) asks a local gauge with |A|, |∇^ξA| < O(1)LMBα_0; α_1 bounds |A′|, |∇^ξ_UA′|.
V2. P2 (CMP 109 p. 263). CONFIRMED [V], word for word: (1.17) |∂U_n(M′(U)) − 1| < 2B_3α′_0ξ², |J_n| < B_3·2α′_0(L^nξ)²; "for α′_0 sufficiently small the above estimates imply the condition (iv)"; the further case needs |J| < α′_0; "the minimal configurations U_j satisfying the bound |∂U_j − 1| < ε_0ξ² with ε_0 sufficiently small, satisfy the above conditions"; "with some positive, absolute constants α_0, α_1 (i.e., constants independent of X and j)"; "C^∞-function of g_{j−1} ∈ [0, γ], (or analytic)".
V3. P3 (CMP 109 p. 264). CONFIRMED [V, helper]: Theorem 3, "The constants ε_0, ε_1, α_0, α_1 depend on M and satisfy numerous restrictions, which will become clear in the proof."
V4. P4, P5 (CMP 119 pp. 259, 261). Not re-read; already [V] in SOURCES_L1_F_VERIFY V23. Accepted.
V5. P6 (CMP 119 p. 267). CONFIRMED [V]: "we perform the scaling transformation A′_k = g_kA_k"; the Gaussian exp[−½⟨A_k, C*Δ^{(k)}CA_k⟩ + P^{(k)}(g_k, U_{k+1}, A_k)]; "The next steps are exactly the same as in Sect. C [16], and in fact the same as in Sect. 2 [I]".
V6. P7 (CMP 119 p. 268). CONFIRMED [V], word for word: "In the above integral the characteristic functions χ′_k depend now on the field V^{(k)}, hence on the new field variables V_{k+1} on the whole set Γ_{k+1}. We want to have characteristic functions depending on the fluctuation field only, hence we introduce another decomposition of unity". (3.16) cuts sup|A_k(b)| < δ_k. The (3.3) cut "is equal to 1, because of the bound on A_k introduced by the second" ((3.19)).
V7. P8 (CMP 119 p. 269). CONFIRMED [V]: "On the domain Λ_{k+1}, in fact on Λ̃_{k+1} also, there are only the small field characteristic functions from (3.16) in the integral, their product is χ^{(k)}(Λ_{k+1})"; H^{(k)} is "an analytic function of the background field U_{k+1} restricted to Λ^c_{k+1} ∩ Λ_k".
V8. Q1. CONFIRMED [V + P]. On the whole lattice Λ_{k+1} is everything, S_{k+1} = ∅, and the only cut is Π_bχ(|A_k(b)| < δ_k). Its support does not depend on U_{k+1}. The background enters only through the integrand.
V9. Q2. CONFIRMED [V] for CMP 109. The CMP 119 p. 277 reason is carried from L1_F_VERIFY V26 and was not re-read.

## 2. Part 1: the three routes

V10. §2.1, route (i), rescaling. CONFIRMED [P]. For h(B′) = f(gB′) on |B′| < ρ/g, Cauchy gives |∂²h(0)| ≤ E(g/ρ)², and ∂²h(0) = g²∂²f(0), so |∂²f(0)| ≤ E/ρ². The constant does not change under a linear change of variables. The conclusion "a better bound needs a better sup bound, not other units" is correct.
V11. §2.2(a), M_β part of N3 on the shrinking domain. CONFIRMED [P], rechecked line by line.
 - Step 0 correction: ½g_r³·√2g_r³|y|·8M_j/(ρ²g_r²) = 4√2|y|g_r⁴M_j/ρ². Correct.
 - The rate: ρ_{B,j} = g_j·min(C_0L^{q_0}, C_1L^{q_1})/(6K_U), L := log u_j ≥ 1, so C_{Π,j} ≤ 36K_U²K_2C_min^{−2}u_jL^{−2q}. The file writes "=", it is "≤". Harmless.
 - The passage u*_j → Re u_j: t ↦ t(log t)^{−2q} is increasing for t ≥ e^{2q}, so u*_j(log u*_j)^{−2q} ≤ 2Re u_j(log Re u_j)^{−2q}. The file states the equivalent monotonicity of (log t)^{2q}/t. Correct.
 - The sum: Σ_{m≥0}f(γ^{−2} + βm/2) ≤ f(γ^{−2}) + (2/β)∫_{γ^{−2}}^∞dt/(t(log t)^{2q}) with f(t) = 1/(t(log t)^{2q}) decreasing; this equals the printed bracket. It is finite and → 0 as γ → 0 because 2q > 1 (q ≥ 2 by CMP 119 (2.28)).
 - History form: M_{2,j}g_i⁴ ∝ g_i²(u_j/u_i)(log u_j)^{−2q} ≤ g_i²(log u_i)^{−2q} for u_i ≥ u_j, by the same monotonicity. Then Σ_jε″_j ≤ (√2/2)YM̂_2A²Σ_iu_i^{−1}(log u_i)^{−2q}. CONFIRMED as [P-sketch].
 - Condition (c): the extra term in |β_j(u) − β_j(x)| is ≤ |y|·4√2Yg_r⁴M_j/ρ² ∝ Y²g_r²(log u_j)^{−2q}, small for γ small. CONFIRMED.
V12. §2.2(b), the real input does not survive. CONFIRMED [P], with a precision on the scope.
 - GGAIN §4.5 [read]: "β_{k+1} = Π(E^{(k+1)}) with Π linear and g-free (… norm C_Π on the (1.18) sup norm)". GGAIN §6.1 states (B2-unif) for (U, J) ∈ U^c_{k+1}(X, α_0, α_1), the CMP 109/116 domain. HHIST (SM)(b) [read]: "Cauchy in B on the analyticity domain plus exponential localization". HHOL l. 105 [read]: D := (C_Π/C_V)·cE_0/(ρ_0 − ρ_1)·max(1, C_V). So C_β, the history constant and D are all linear in C_Π. Confirmed from the files.
 - On the CMP 119 domains C_Π → C_{Π,j} ∝ u_j(log u_j)^{−2q}. Then |∂β_j/∂u_{j−1}| ≤ ½g³C_{Π,j}S_0 ∝ g_j(log u_j)^{−2q}. With u_j ≈ γ^{−2} + βm, Σ_m(γ^{−2} + βm)^{−1/2}(log)^{−2q} = ∞. Lemma H needs Σε_j < ∞. So the available bound does not close Lemma H. Correct.
 - Scope. This is a failure of the available bound, not a proof that R-037 is false. And R-037 as verified (GGAIN §6.1) is stated in the CMP 109/116 layer: absolute α_0, α_1, fixed cut ε_1. The frozen map that N3 uses has the cut δ(x*_k). So the correct reading of "the obstruction reaches R-037, R-038/H-120" is: these rows, applied to the frozen map, need an absolute-radius domain for the frozen-cut chain, i.e. (H-α) or Proposition A. This is a NEW DEPENDENCY, as the file says. It is not a new failure of the rows in their own layer.
V13. §2.3 and the toy model. CONFIRMED [P + num].
 - Z_tot(b) = ∫_{−δ}^{δ}e^{−(y−b)²/(2g²)}dy, so Z_tot(iη) = e^{η²/(2g²)}∫e^{−y²/(2g²)}cos(yη/g²)dy. Correct.
 - Rerun (trapezoid, 20001 nodes, g = 0.1, δ = 0.5, normalized by Z_tot(0)): 1.0000 at η = 0, 1.0038 at 0.45, 1.0221 at 0.580, −1.602 at 0.585; root 0.58226 = 1.1645δ. Matches the file.
 - Precision: this gives an upper bound ≈ 1.16δ on the analyticity radius of log Z_tot; complex zeros closer to 0 are not excluded. The conclusion "the radius is tied to the cut" needs only the upper bound.
 - Z_fl: the first zero of erf is 1.45062 + 1.88094i (rerun, scipy fsolve), arg 52.36°. The winding number of erf(z)/z around the closed sector |arg z| ≤ π/4, |z| ≤ R is 0 for R = 4, 6, 8 (rerun). For |z| large in the sector erf z → 1. So the [I, external] fact is supported numerically. For |b| < 1, Re(1 + b²) ≥ 1 − |b|² > 0, so |arg √a| < π/4. Correct.
 - The identification "the whole-lattice CMP 119 step is of Z_fl type" is V6–V8. CONFIRMED.

## 3. Part 2: the three [I] items on images

V14. (A1) ε_1 enters CMP 109's proof only through the step cut. UPGRADED to [V] for CMP 109, with one CORRECTION on the scope of "CMP 109's proof".
 Every subscripted ε in CMP 109 pp. 258–301 (images):
 - p. 259: ε_0 in "|∂U_k(V) − 1| < ε_0η² on T_η, for ε_0 sufficiently small" (small-field domain; role: background space). Plain ε = lattice spacing.
 - p. 260: ε′_0 in |V(∂p′) − 1| < ε′_0; ε_0 in U_k(ε_0), (1.2) |U(∂p) − 1| < ε_0η², |J| < ε_0, "with ε_0 sufficiently small", 2ε_0, B_3^{−1}ε_0. Role: background space.
 - pp. 261, 262: no ε_0, ε_1. p. 263: ε_0 in "minimal configurations U_j satisfying |∂U_j − 1| < ε_0ξ²"; U_k(ε_0) "contained in all the spaces U^c_j(X, α_0, α_1)". Role: background space.
 - p. 264 [helper]: Theorem 3, "positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1"; "ε_0, ε_1, α_0, α_1 depend on M". Role: statement.
 - p. 265 [helper]: ε_0 four times (U_{k+1}(ε_0); |W(∂p′) − 1| < 2ε_0; the integration domain is restricted to U_k(V) ∈ U_k(ε_0); the inductive assumption holds for A_k(U_k(V))). Role: background space, carried.
 - p. 266 [helper]: (2.9) χ_k = Π_bχ({|B′(b)| < ε_1}), B′ = (1/i)log V′, V′ = V(V^{(k)})^{−1}; and "Another possibility is to take g_k/γ_k ε_1 instead of ε_1, where γ_k = C log(L^kε)^{−1}". Role: the step cut, on the unscaled fluctuation.
 - p. 267 [helper]: the eliminated bonds b_0(c) get the radius O(ε_1). Role: step cut.
 - p. 269 [helper]: P^{(k)} has "coefficients of the order O(ε_1)". Role: inside one step.
 - p. 273 [helper]: "ε_1 is so small that H_j(B(t)) satisfies (3.14) with 1/3α_2". Upper bound.
 - p. 276 [helper]: the (3.31) bounds hold "for ε_1 sufficiently small". Upper bound.
 - p. 280 [helper]: "This differentiation yields a factor O(1)α_2^{−1}ε_1, and taking ε_1 sufficiently small we can get the required constant" (recovery of E_0 in (1.18)). Upper bound, inside one step.
 - pp. 268, 270–272, 274–279, 281–292, 296–301 [helper]: no ε_0, ε_1. pp. 293–295 [helper]: only reflection signs ε_μ = ±1 ((5.7), (5.13), (5.19), (5.22)–(5.26)); the "ε_1" in z^ε = (z_1^{ε_1}, …) on p. 294 is a sign, not the constant.
 Consequences.
 - No ε_1 occurs in Sect. 1 (pp. 260–264), i.e. in (1.1)–(1.22). ε_0 is carried (the space U_k(ε_0)); ε_1 is not. Every condition on ε_1 in CMP 109 is an upper bound inside one step. Step 1 of Proposition A is CONFIRMED for CMP 109.
 - CORRECTION. CMP 109 does not finish the proof of Theorem 3. p. 298 [helper]: "In the next paper we will construct such localizations and prove the bounds. They are used to construct a cluster expansion of the integral in (2.13), and to finish the proof of the inductive assumptions for the term E^{(k+1)}". The rest is CMP 116 §2, where ε_1 enters the conditions B8–B22 of SOURCES_MC (verified). I read CMP 116 p. 19 as an image: there ε_1 enters ε_2 and the factor exp(−(1/10)γ_2ε_1²g_k^{−2}M^{−4}|Z_0\Y_0|) of (2.33), both inside one step. So (A1) holds for the CMP 116 part to the extent that the SOURCES_MC table is complete (it is a verified file; I did not re-read CMP 116 pp. 18, 20, 21).
 - Support for a per-step cut. p. 266 offers the g_k-dependent cut g_kε_1/γ_k as an admitted alternative, and says [helper] "We have formulated the implications of both possibilities in the inductive description". So Balaban himself allows a step-dependent radius of the form g_k × (log factor). The CMP 119 radius δ_k = g_kA_1(log g_k^{−2})^{p_0} has the same form. This supports Step 1 directly.
V15. (A2) units of δ_k. UPGRADED: definition and units [V]; one identification stays [I].
 - CMP 119 p. 265 [V]: "δ_k = g_kA_1/A_0p_0(g_k)", in (3.3) as the radius of |V_k(b)(V^{(k)}_{□′}(b))^{−1} − 1| < 2δ_k, a link deviation. CMP 119 p. 244 [V]: "p_0(g_0) = A_0(log g_0^{−2})^{p_0} with a positive integer p_0". Hence δ_k/g_k = A_1(log g_k^{−2})^{p_0} = θ_k as the file states.
 - CMP 109 p. 266 [helper]: the cut (2.9) acts on B′ = (1/i)log(V(V^{(k)})^{−1}), the unscaled fluctuation, before the scaling B = g_kB′ of p. 267. CMP 116 p. 19 [V]: the cut gives the exponent γ_2ε_1²/g_k², i.e. Gaussian radius ε_1/g_k. So in the CMP 109/116 framework the cut is physical and its Gaussian radius is (cut)/g_k [V].
 - Remaining [I]: CMP 119 (3.16) prints sup|A_k(b)| < δ_k after the scaling A′_k = g_kA_k (pp. 267–268), so a literal reading cuts the unit-variance field. The physical reading follows from (i) the CMP 109 (2.9) form, (ii) p. 267 "the next steps are exactly the same as in … Sect. 2 [I]", (iii) the (3.19) comparison of δ_k with a link deviation, (iv) the absurdity of the literal reading (L1_F_VERIFY V3). The reading is safe but not printed in words. Note also that the literal reading would only make the cut smaller; the upper-bound conditions of Step 2 would still hold, but B11, B13, B14 would fail. So Step 2 needs the physical reading.
V16. (A3) ε_2(ε_1) at most polynomial. UPGRADED to [V]. CMP 116 p. 19: "denoting ε_2 = 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q exp C_2κ_1", and "For simplicity let us assume that exp(−(1/20)γ_2ε_1²/γ²) ≤ ε_2". ε_2 is linear in ε_1, given C_1, C_2, α_4, α_6, M, κ_1, E_0. These are fixed before ε_1 in the order of SOURCES_MC l. 104 [I there, "from the wording"]. With ε_1 → δ(x*_k): ε_2 ≥ c·x*_k, and the left side is ≤ exp(−(γ_2A_1²/20)(log x^{−2})^{2p_0}), smaller than any power of x. So B13 holds for γ small. CONFIRMED.

## 4. Proposition A and its corollary

V17. Statement 3.1 of (H-α). CONFIRMED (same as SOURCES_L1_F_VERIFY §5, with the frozen cut made explicit).
V18. Proposition A, Step 1 (step locality). CONFIRMED [V + P] for CMP 109 (V14). CORRECTED in its citation: the induction is CMP 109 Theorem 3 as completed in CMP 116 §2 (p. 298); the CMP 116 conditions are those of SOURCES_MC, all per step.
V19. Step 2 (cut conditions at r_k = δ(x*_k)). CONFIRMED [P given V15, V16].
 - Upper bounds: CMP 109 adds three (pp. 273, 276, 280: ε_1 small against α_2(α_0)); all are down-sets, so δ(x*_k) → 0 meets them for γ small. CMP 116 adds B8, B12, B15, B16, B22. Same.
 - Lower bounds B10, B11, B13, B14: they use ε_1 only through ε_1/g_k (in (2.33) ε_1²/g_k², then g_k ≤ γ) and ε_2. With the per-step cut the ratio is θ_k = A_1(log x*_k^{−2})^{p_0} ≥ θ_γ → ∞. B11 and B14 hold for γ small; B13 by V16.
 - Complex step: the shrinks ε_1/(4λ_V), γ/(8λ_V) of SOURCES_MC_VERIFY keep the ratio. MC (e4) evaluates the cut at the real reference x, so θ_k uses x*_k. CONFIRMED.
V20. Step 3 (composite configurations). CONFIRMED [P]. A smaller cut gives a smaller real perturbation of the background, so the domain checks that CMP 109 makes at ε_1 hold a fortiori.
V21. Step 4 (identification). CONFIRMED [P given R-036 and V8]. R-036 builds B_j in the CMP 109 framework with frozen characteristic functions; on the whole lattice the frozen function is the fluctuation cut of radius δ(x*_k).
V22. §3.3, ρ_B. CORRECTED (incomplete). The (1.17) step needs 2B_3α′_0 < α_0, and ρ_B = min(α_0/max(1, 2B_3), α_1)/(6K_U) gives it for the real curvature and the complex part. P2 also needs |J| < α′_0 (condition (iii), J = D*ξ^{−2}π Im∂U, a second-derivative object) and the local-gauge bound (1.12). K_U as defined in L1_F §5.4 bounds only |A′|, |∇A′|. So K_U must be enlarged to cover J and (1.12) for the test configurations U_{j+1}(exp i(z_1e_b + z_2e_{b′})). Near U = 1 this is expected (all three quantities are linear in z at first order), but it is not shown. It stays inside K_U [R].
V23. §3.4, Corollary (H-α′) and M_β. CONFIRMED [P given Proposition A, K_U, K_2], with one CORRECTION: K_α = cE_0ρ_B^{−2} and M_β = cE_0K_2ρ_B^{−2} are correct; the closed form cE_0K_2(6K_U max(1, 2B_3)/min(α_0, α_1))² is an upper bound for M_β, not an equal value. The restoration of C_β = C_ΠS_0 and D for the frozen chain with C_Π = K_2ρ_B^{−2} is CONFIRMED in structure; S_0 at the cut δ(x*_k) is [R] (L1_F §3.3), as the file says.
V24. §4, (H-α′) has no separate proof. CONFIRMED. The helper read of p. 293 shows only |Π_{μν}(x − y)| ≤ O(1)E_0exp(−δ_1|x − y|) (5.10) and the definition (5.42) of β; the helper found no printed bound on β_j or on second background derivatives in pp. 283–301 that avoids the domain. The (5.10) bound itself comes from (1.18) on the absolute domain.

## 5. Grades of the claims of SOURCES_H_ALPHA

| Claim | Grade |
|---|---|
| (i) rescaling fails | CONFIRMED [P] |
| (iii)(a) N3's M_β part tolerates u_j(log u_j)^{−2q}, q ≥ 2 | CONFIRMED [P]; history form [P-sketch] |
| (iii)(b) C_β = C_ΠS_0 and D use the same extraction; u-slot bound ∝ g_j/polylog does not sum | CONFIRMED [P]; scope: a new dependency of R-037, R-038/H-120 for the frozen map, not a failure in their own layer |
| (ii) mechanism: whole-lattice CMP 119 cut acts on the fluctuation only | CONFIRMED [V] (p. 268 quote word for word) |
| toy model zero at ≈ 1.16δ | CONFIRMED [num] (1.1645δ); an upper bound on the radius |
| Z_fl zero-free for |b| < 1 | CONFIRMED [P + num] |
| Proposition A | CONFIRMED as a reduction; CORRECTED citation (CMP 109 Thm 3 completed in CMP 116, p. 298) |
| (A1) | [V] for CMP 109; CMP 116 part via SOURCES_MC (verified) |
| (A2) | [V] definition and units in CMP 109/116; [I] only for the CMP 119 (3.16) identification (strong support) |
| (A3) | [V] (ε_2 linear in ε_1, CMP 116 p. 19); order of choice [I] from SOURCES_MC |
| ρ_B, item (e) | CORRECTED: J and (1.12) conditions not covered; folded into K_U [R] |
| (H-α′) as corollary, K_α = cE_0ρ_B^{−2} | CONFIRMED |
| M_β closed form | CORRECTED: ≤, not = |

## 6. Safe ledger statuses (proposed; not written into TRUST_LEDGER.md)

- R-040 (H-hol), small field. Verified reduction (grade unchanged). |β_j| ≤ M_β = cE_0K_2ρ_B^{−2} for the frozen whole-lattice map, relative to Proposition A [R], K_U [R, must include the J and (1.12) conditions], K_2 [P-sketch]. Proposition A rests on CMP 109 Theorem 3 as completed in CMP 116 §2, SOURCES_MC (verified reduction), R-036 (verified). Of the former open items (A1)–(A3): (A1) [V] for CMP 109, (A3) [V], (A2) [V] except the CMP 119 (3.16) identification [I].
- R-037 (H-hist). REDUCED (grade unchanged). NEW DEPENDENCY for the frozen map: its small-field constant C_β = C_ΠS_0 and history constant need C_Π on an absolute domain for the chain with cut δ(x*_k), i.e. Proposition A. On the printed CMP 119 domains the bound does not sum [P].
- R-038 (H-hist2) and H-120 (H2-hist). Verified reduction / reduced (grades unchanged). Same new dependency through D ∝ C_Π of (F1).
- R-042 (N3). Verified reduction (grade unchanged). Its inputs R-037, R-040, H-120 now all route through Proposition A. Route (iii) is no alternative.
- R-043 (FX). Reduced (unchanged); remaining R-042, which now carries Proposition A.
- H-116 (H-U). Unchanged; inherits Proposition A through R-043 → R-045.

Exact remaining residue of (H-α):
 (R1) CMP 109 Theorem 3 as completed in CMP 116 §2 (Balaban's printed proof, the base of the project), run with the per-step cut δ(x*_k) through SOURCES_MC (verified reduction, B-list complete as read there);
 (R2) the order of choice of constants in CMP 116 (C_1, C_2, α_4, α_6, κ_1 fixed before ε_1) [I, from SOURCES_MC l. 104 "from the wording"];
 (R3) the reading that CMP 119 (3.16) cuts the physical fluctuation g_kA_k at δ_k [I, strongly supported: CMP 109 (2.9), CMP 116 (2.33), CMP 119 p. 267, (3.19)];
 (R4) K_U for the β test configurations, now including |J| < α′_0 and (1.12) [R]; K_2 entropy constant [P-sketch].
No other [I] item remains in the chain (H-α) ⇒ (H-α′) ⇒ M_β, C_β, D.

## 7. Report (≤120 words)

Routes (i) and (iii) fail as claimed: linear rescaling leaves the Cauchy constant unchanged; N3's M_β part sums at q ≥ 2, but C_β = C_ΠS_0 and D give an unsummable g_j/polylog. This is a new dependency of R-037, R-038/H-120 for the frozen map. Mechanism (ii) is confirmed on CMP 119 p. 268. The toy zero is at 1.1645δ. Proposition A is confirmed as a reduction, with corrections: CMP 109 p. 298 defers the end of Theorem 3's proof to CMP 116; ρ_B does not cover J and (1.12); the M_β closed form is "≤". Images: ε_1 is step-local in CMP 109 (A1 [V]); δ_k units [V] except the (3.16) identification; ε_2 is linear in ε_1 (A3 [V]). Grades unchanged.
