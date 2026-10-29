# SOURCES_CTR_VERIFY — adversarial verification of SOURCES_CTR (H-089 (C-tr), Route C)

Date: 2026-10-28. Ids follow IDS.md. Grades: CONFIRMED / CORRECTED / UNSUPPORTED.
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every grep.
Pages read as images (pdftoppm -r 200, fresh /tmp folder, deleted after): CMP 109 pp. 253, 254, 255, 256, 259, 260, 261, 262, 263, 264, 265, 266, 267, 268, 298; CMP 119 p. 259; CMP 122 II p. 390. Lean read in full: lean/YmLean/LemmaDHistNested.lean; lean/YmLean/LemmaDHist.lean l. 29–45, 100–345, 563.

## Verdict

PASS WITH CORRECTIONS.

- The reduction (Lemma 2.1), the homeomorphism D_k → T_k, and the domain claim are correct.
- Route C Steps 1, 2, 4 and 6 are correct.
- Steps 3 and 5 need one input that SOURCES_CTR calls history-free but that the page does not make history-free: the constant E_0 of (1.18). Theorem 3 (p. 264) does not list E_0 among its constants. This input is the on-trajectory part of the "past-uniformity of E_0" item that TRUST_LEDGER row R-006 already lists under N6 as "reduced, not proved". So the claim "N6 not used" is wrong in this one point.
- Reading (3), "Theorem 3 gives the exact remainder", is CONFIRMED and upgraded to [V]. CMP 109 p. 268 (2.12)–(2.14) defines E^{(k+1)} as the exact log of the χ-restricted integral. The same page also gives (2.E) directly, with no use of (0.20).
- Reading (2), the fibre measure, is CORRECTED. CMP 109 p. 267 (2.10) gives the measure explicitly. The phrase "compact fibre" is wrong; the χ_k cut gives the compactness.
- Reading (1), causality, is CORRECTED by a split. The definitional part (E^{(k+1)} and (2.E) use only g_0, …, g_k) is [V], p. 268. The estimate part ((1.18) and analyticity for E^{(k+1)} when g_{k+1} > γ) stays [I], as H-047.

Resulting status of L5 (R-031; THEOREM2_PROOF_v4 §10 item 8): PROVED relative to listed inputs. Route C is a verified alternative proof of `hcont` = H-089 (C-tr) with no off-trajectory evaluation. Its residue is: R-013 (Theorem 3 and its proof chain); causality of the estimates [I] (H-047); on-trajectory uniformity of E_0 [I] (N6 component); R-018 (B3); CMP 102 Sect. G minimization in stages [R]; L-024 + H-141 (Loc); R-015 (definition only). The text "[open]" in v4 §10 item 8 is stale relative to ledger row R-031.

## 1. Domain claim against the Lean hypotheses (SOURCES_CTR §1)

V1.1 Objects (§1.1). CONFIRMED. `hist u k = fun i => 1/√(u i)` (LemmaDHist.lean l. 32). `tflow β u₀ k = hflow β (fun u => 1/√u) u₀ k` (l. 230). `Adm β γ k = {u₀ | ∀ i ≤ k, 1/γ² ≤ tflow β u₀ i}` (l. 234). `hflow_succ` gives u_{k+1} = u_k − β_{k+1}(hist). β is total (`HistInc`).

V1.2 The hypothesis (§1.2). CONFIRMED in content, CORRECTED in line numbers. The exact form `hcont : ∀ k, ContinuousOn (fun u₀ => tflow β u₀ (k + 1)) (Adm β γ k)` appears in `lemma_D_hist_adm` (statement starts LemmaDHist.lean l. 243, not 244), `lemma_DPrime_hist_adm` (LemmaDHistNested.lean l. 153, not 155) and `lemma_DDoublePrime_hist_adm` (l. 222, not 225). `nested_shoot` (l. 53, not 55) asks only `∀ k < K`. The second use sites are LemmaDHist.lean l. 322 (not 319) and LemmaDHistNested.lean l. 126 (not 123).

V1.3 How the proofs use it (§1.3). CONFIRMED. All four uses are `.mono` onto `Set.Icc a c ⊆ Adm β γ k` (l. 278, 322; Nested l. 85, 126). The last two go through `Adm_mono`, which is still `.mono` onto an interval. No use needs D_k open, closed or an interval.

V1.4 Extra point the derivation does not state. In `lemma_DPrime_hist_adm` and `lemma_DDoublePrime_hist_adm`, `hbd` is conditioned on `Good`, but `hcont` is not. So (C-tr) must hold on all of D_k, including pasts that violate the per-step bounds. Route C does not use `Good`, so this is satisfied. CONFIRMED.

V1.5 Domain facts 1.4(a)–(d). CONFIRMED.
(a) Induction is correct. Membership in D_k uses β only at h_i(u₀), i ≤ k − 1, with entries in ]0, γ].
(b) Correct. For u₀ ∈ D_k, all entries of h_i(u₀), i ≤ k, lie in ]0, γ], and `Real.sqrt` is positive there. So the Lean 1/√ convention never meets u ≤ 0 inside D_k.
(c) Correct. D_0 = [γ^{−2}, ∞) is closed. A relatively closed subset of a closed set is closed.
(d) Correct as a constant condition. Theorem 3 (p. 264) hypothesis is "0 < g_k ≤ γ for k = 0, 1, …, K".

## 2. Reduction (SOURCES_CTR §2) and printed regularity (§3)

V2.1 Lemma 2.1. CONFIRMED.
- (C-tr)_k ⇔ (C-β)_k. u_k is continuous on D_{k−1} ⊇ D_k by (C-tr)_{k−1} (u_0 = u₀ for k = 0), and u_{k+1} = u_k − β_{k+1}(h_k).
- h_k is continuous on D_k. Each u_i (i ≤ k) is continuous on D_{i−1} ⊇ D_k, and u_i ≥ γ^{−2} > 0.
- h_k is injective with continuous inverse h ↦ h_0^{−2} on T_k ⊂ ]0, γ]^{k+1}. So h_k is a homeomorphism D_k → T_k.
- (C-β)_k ⇔ (C-T)_k follows.

V2.2 Consequence (a). CONFIRMED. `βce_no_shot` is at LemmaDHist.lean l. 563. Its docstring (l. 14–16) states that separate continuity plus bounds does not give shooting.
V2.3 Consequence (b). CONFIRMED.

V2.4 §3.1 quotes. CONFIRMED against images. p. 263: "It is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic), with a positive, absolute γ." p. 264: "It is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives." p. 298 (image): "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants." The conclusion "last slot only" is a correct reading.
V2.5 §3.2 (p. 266 alternative cut g_k/γ_k ε_1). CONFIRMED (image). The sentence "It has the advantage that the functions E^{(j)}, β_j are analytic functions of the effective coupling constants" implies that with the fixed ε_1 cut, the page does not assert analyticity in the couplings. This agrees with Route C, which does not need it.
V2.6 §3.3 (CMP 119 (2.28), p. 259). CONFIRMED (image). α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}. These are radii in (U, J). They are not radii in the couplings.
V2.7 §3.4. CONFIRMED (images). CMP 122 II p. 390: R′^{(k)}(X) is analytic on Ũ^c_k(X, α̃_0, α̃_1) with bounds (1.99)–(1.100). These are R-operation terms. CMP 119 p. 259 below (2.24): "Here the coupling constants g_{j−1} are defined as in (I.0.20)".
V2.8 §3.5. CONFIRMED. No printed sentence states continuity of β_{k+1} in the earlier couplings.

## 3. Route C, Steps 1–2

V3.1 Definitions (Step 1). CONFIRMED (images).
- (0.17), p. 255: A_1(V) = log N_0^{−1}∫dU Π_c δ(Ū(c)V^{−1}(c)) χ_0 exp[−(1/g_0²)Σ(1 − Re tr U(y, x)) − (1/g_0²)A(U)]. So exp A_0 = exp(−A/g_0²).
- (0.19), p. 255, and (2.1), p. 265: the step-(k+1) integrand carries only 1/g_k² and A_k. N_k is "the integral above with V = 1" (p. 256).
- (2.2), p. 265: V ↦ G(V) + A(U_k(V)) has no coupling, so V^{(k)}(W) is coupling-free.
- (2.9), p. 266: χ_k = Π_b χ({|B′(b)| < ε_1}) has no coupling.

V3.2 Step 1 claim (joint continuity of the torus actions in (g_0, …, g_j), with a uniform bound). CONFIRMED as [P-sketch]. The dominated-convergence induction is valid. The bound exp A_j(V) ≤ C_j is uniform in V because the next step bounds the integral by C_j·(fibre mass)/N_j. One unwritten step: sup_W of the χ-restricted fibre mass is finite. This follows from the explicit form in V5.2. Remark (ii) is CONFIRMED by p. 265: "We will define the characteristic function χ_k in such a way that the domain of integration in (2.1) is restricted to configurations V for which U_k(V) ∈ U_k(ε_0)". Remark (iii) is not needed. Remark (iv) is CONFIRMED.

V3.3 Step 2 quotes. CONFIRMED (images).
- p. 261: "The function E^{(j)}(g_{j−1}, U_j) is a result of an integration in the j-th step, after a subtraction of the previous action evaluated at U_j."
- p. 256: "In the second step a new expression of this type is created, in the old only a background field is changed."
- (1.6), p. 261: A_k(U_k) = −(1/g_k²)A(U_k) + Σ_{j=0}^{k−1}{−β_{j+1}(g_j)A(U_k) + [E^{(j+1)}(g_j, U_k) − E^{(j+1)}(g_j, 1)]}.
The symbols E^{(j+1)} carry no level index k, so the same functions appear at levels k and k + 1. This answers check 7.3(a) of SOURCES_CTR.

V3.4 Identity (2.E). CONFIRMED, with a stronger source. The subtraction of (1.6) at levels k and k + 1 is correct algebra on a true trajectory. CMP 109 p. 268 gives (2.E) more directly:
- (2.12): A_{k+1}(U_{k+1}) = −(1/g_k²)A(U_{k+1}) + E_k(U_{k+1}) + [log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1)] + log N_k″^{−1}∫dμ_{C^{(k)}}(B)χ_k exp[…].
- (2.13): "The integral in (2.12) defines the new term E^{(k+1)} in the inductive definition of the action A_{k+1} by the formula E^{(k+1)}(g_k, U_{k+1}) = log∫dμ_{C^{(k)}}(B)χ_k exp[P^{(k)}(g_k, U_{k+1}, B) + {…}]". (2.14): log N_k″ = E^{(k+1)}(g_k, 1).
- p. 265: "The meaning of the function E_k is obvious, it is equal to (1/g_k²)A + A_k."
So A_{k+1}(W) − A_k(U_{k+1}(W)) equals [log Z^{(k)} difference] + E^{(k+1)}_{(2.13)}(U_{k+1}) − E^{(k+1)}(g_k, 1). In the (1.6) notation, E^{(k+1)} includes the log Z^{(k)} term (p. 261: "In many considerations it is not necessary to separate the terms of zeroth order from the remaining terms"). p. 264 defines β_{j+1} from "the functions E^{(j+1)}(g_j, U_{j+1}) in (1.6)", so this merged E^{(k+1)} is the one that enters (1.20). This route holds before (2.15) defines g_{k+1}. It uses neither (0.20) nor any condition on g_{k+1}. Step 2 Remark (i) ("the β-terms cancel only on a true trajectory") is therefore not needed. Both routes give the same identity.

V3.5 A_k(U_{k+1}(W)) = A_k(V^{(k)}(W)). CONFIRMED as [R].
- p. 260: "A_k(V) = A_k(U_k(V))". The regular critical orbit is unique.
- (2.3), p. 265: V^{(k)} = Ū^k_{k+1} = M^k(U_{k+1}).
- p. 265: "U_k(V′V^{(k)}) = U′_k(V′)U_{k+1}", with [15] = CMP 102 Sect. G.
At V′ = 1 this gives the claim, provided U′_k(1) = 1. That is the minimization-in-stages input. V^{(k)}(W) is the centre B′ = 0 of the χ_k region, so p. 265 puts it inside A_k's domain U_k(ε_0).

V3.6 Step 2 Consequence. CONFIRMED. F_h(W) → F_{h′}(W) for every real W in the domain, by Step 1 at the fixed configurations W and V^{(k)}(W).

## 4. Route C, Steps 3–6

V4.1 (B1), Theorem 3 and (1.18). CORRECTED.
- p. 264, Theorem 3: "There exist positive constants κ_0, M(κ), γ, ε_0, ε_1, α_0, α_1 such that, if κ ≥ κ_0, M ≥ M(κ), 0 < g_k ≤ γ for k = 0, 1, …, K, then the sequence of actions A_k … satisfy all the inductive assumptions". These constants come before the coupling sequence in the quantifier order, so they are history-free [V].
- p. 263: "with some positive, absolute constants α_0, α_1 (i.e., constants independent of X and j)". The page defines "absolute" as independent of X and j, not as independent of the history. History-freeness of α_0, α_1 comes from the Theorem 3 quantifier order, not from the word "absolute".
- p. 263, before (1.18): "There exists a constant E_0 such that |E^{(j)}(X, g_{j−1}, U, J)| ≤ E_0 exp(−κd_j(X))". E_0 is not in the Theorem 3 list. It sits inside the inductive assumptions, which are asserted per sequence. So "E_0 … do[es] not depend on the history" is UNSUPPORTED by the page.
- Step 3 (Montel needs sup_n |f_{hⁿ}| < ∞) and Step 5 (C_{k+1} must be uniform along hⁿ) both need sup_n E_0(hⁿ) < ∞. The required input is: "E_0 is one of Balaban's fixed constants, at least locally uniform along T_k" [I]. This is the on-trajectory part of TRUST_LEDGER row R-006 residue N6, "past-uniformity of E_0 reduced, not proved". It is weaker than N6's off-trajectory sup. SOURCES_CTR's "Not used: N6" is CORRECTED to "N6's E_0 past-uniformity is used, on trajectories only".

V4.2 (B2) causality. See V5.1.

V4.3 (B3) coupling-free polydisc. CONFIRMED as [R]. U^c_{k+1}(X, α_0, α_1) (pp. 262–263, (1.11)–(1.16)) has no coupling in its definition. p. 263: "In particular the minimal configurations U_j satisfying the bound |∂U_j − 1| < ε_0ξ² with ε_0 sufficiently small, satisfy the above conditions." The complex extension in B is R-018.

V4.4 Vitali argument. CONFIRMED, given V4.1.
- P_r is connected, and P_r ∩ ℝ^n contains a real open set. So the identity theorem fixes the holomorphic limit from real values. Montel plus uniqueness of the limit gives convergence of the whole sequence. Cauchy estimates give convergence of second derivatives at 0.
- (1.20), p. 264: Π^{ab}_{j+1,μν}(g_j, x, x′) = (δ²E^{(j+1)}/δB^a_μ(x)δB^b_ν(x′))(g_j, 0), with E^{(j+1)}(g_j, B) = E^{(j+1)}(g_j, U_{j+1}(exp iB)). So the derivatives are exactly the Π entries.
- M_N < ∞ holds because the torus has finitely many X.
- The Note on independence from the localized representation is correct.

V4.5 Step 4 (moment form (D1)). CONFIRMED. It is a finite sum on T_N.

V4.6 Step 5 (uniform volume limit). CONFIRMED given V4.1. The constant reading of L-024 is correct: C_j and m depend on E_0, the Cauchy radius, κ, κ_0, C_H, δ_H, C_0. The SOURCES_A15_WHOLE_VERIFY corrections (J channel in H, d_j counts Balaban's cubes, first-order term drops by gauge invariance) bring in no coupling dependence. (H) is at U = 1 and coupling-free. Two inputs must hold at every h′ ∈ T_k: (Loc) = H-141, and (Bd) with a common E_0. The first needs the same estimate-causality reading as V5.1(b), because g_{k+1} may exceed γ on D_k. The triangle-inequality conclusion is correct.

V4.7 Step 6 (base case and induction). CONFIRMED. p. 255: "The action A_1 determines a function β_1(g_0) of the bare coupling constant g_0, defined on an interval [0, γ]". This is R-006 at k = 0. Steps 1–5 also cover k = 0.

V4.8 Theorem CTR. CONFIRMED as [P-sketch], relative to the inputs of 7.1 plus the E_0 input of V4.1.

## 5. The three [I] readings, graded against the pages

V5.1 (1) Causality. CORRECTED (split into two parts).
(a) Definitional causality: A_{k+1}, E^{(k+1)}, β_{k+1} and (2.E) are built from g_0, …, g_k only. CONFIRMED, upgraded to [V].
- p. 255, after (0.17): β_1(g_0) is "defined on an interval [0, γ]"; "Now we assume the existence of the first function, and we define the new coupling constant g_1".
- p. 255, before (0.19): "The k-th action A_k determines a coupling constant g_k. The (k+1)-st action A_{k+1} is defined by the generalization of (0.17)".
- p. 265, first paragraph of Sect. 2.
- p. 268, (2.12)–(2.15): E^{(k+1)} is defined by (2.13) before (2.15) introduces g_{k+1}. "The equalities (2.12), (2.14) together with the definitions (2.13), (2.15) imply that the action A_{k+1} is given by (1.3) with k+1 instead of k."
(b) Estimate causality: the analyticity of E^{(k+1)} on U^c_{k+1}(X, α_0, α_1) and the bound (1.18) hold when g_0, …, g_k ≤ γ, even if g_{k+1} > γ or u_{k+1} ≤ 0. UNSUPPORTED as a printed statement, so it stays [I] (= H-047).
- p. 264, Theorem 3, hypothesis line: "0 < g_k ≤ γ for k = 0, 1, …, K". If we apply the theorem with K = k, it covers E^{(j)} only for j ≤ k. E^{(k+1)} needs K ≥ k + 1, and then the hypothesis includes g_{k+1} ≤ γ.
- p. 268, last lines: the properties of (2.13) are proved later ("except possibly the last term (2.13) in the sum"). That proof (CMP 109 Sects. 3–5, CMP 116) was not read here.
- The structure on pp. 265–268 (scaling B = g_kB′ on p. 267, and no g_{k+1} before (2.15)) is consistent with the reading. It does not prove it.

V5.2 (2) Fibre-measure reading. CORRECTED, then upgraded to [V] for the measure and to [P-sketch] for finiteness.
- SOURCES_CTR calls the fibre {V : V̄ = W} "a compact set" carrying the conditional Haar measure. This is not what the page gives. The average Ū (p. 253 (0.4), p. 254 (0.12)) is defined only for "sets with sufficiently small diameters" (p. 253). So the fibre is not a compact subset of G^{bonds} on which the measure is defined globally.
- The page gives the measure explicitly after the change of variables V = V′V^{(k)}(W), B′ = (1/i)log V′. p. 267 (2.10): "(2.1) = log N_k′^{−1}∫dB′σ(B′)δ(Q̃(B′))χ_k exp[…], where the factors σ_0 are included into the normalization factor N_k′". p. 265: "we assume that the characteristic function χ_k and the δ-functions in (2.1) restrict the variables B′ to a sufficiently small neighborhood of 0".
- Corrected reading: the measure is dB′σ(B′)δ(Q̃(B′)) on the bounded set {|B′(b)| < ε_1}. σ is the Haar density. Q̃ is analytic, and p. 267 linearizes it by an analytic change of variables B′ = B − hD̃(B), so the δ becomes δ(Q̃B) with Q̃ linear. Nothing in this measure depends on a coupling [V]. Finiteness, positivity near B′ = 0, and sup_W of the mass < ∞ follow from these facts [P-sketch]. Step 1 needs only these properties, so Step 1 stands.

V5.3 (3) "Theorem 3 gives the exact remainder". CONFIRMED, upgraded to [V].
- p. 268 (2.13) defines E^{(k+1)} as the exact logarithm of the χ_k-restricted fluctuation integral. (2.12) is an equality ("we obtain the following expression for the new action"), not an approximation. (2.14) fixes the normalization.
- p. 264 Theorem 3 then asserts that these A_k satisfy the inductive assumptions. Those assumptions are stated as equalities: (1.3) p. 260 ("The action has the following form"), (1.6), (1.7) and (1.9) p. 261.
- No complement-of-χ term is dropped: χ_k sits inside the integral that defines E^{(k+1)}.
- The residual risk in SOURCES_CTR §5 is therefore closed at the level of the statement and the definition. That the proof delivers the bounds for this exact object is R-013 [R], not a reading.

## 6. Remaining claims, corrections, L5 status

V6.1 §5 input table.
Items 1, 2, 4, 5, 6, 9, 10, 11, 13, 14, 15: CONFIRMED.
Item 3: CORRECTED per V5.2.
Item 7: CORRECTED per V4.1. E_0 is not in Theorem 3's constant list.
Item 8: CORRECTED per V5.1.
Item 12: CONFIRMED given the E_0 input.

V6.2 "NONMONO not needed". CONFIRMED as [I].
- CMP 119 p. 259 (image) separates E_k (with "the same properties as the effective action constructed in [I] for the small field approximation") from the R-term R_k. β_j is the CMP 109 coefficient via (2.24).
- Route C uses no R-term and no monotone-past lift.

V6.3 §6 comparison with Path A. CONFIRMED, with one correction. Route C has no off-trajectory mixed point, and it does not use L-281, HHOL §2–§3, or the CMP 116 single step on the ball 𝔅. The "removed" list must keep the on-trajectory E_0 uniformity (V4.1). The "added" list loses the fibre reading as an [I] item (V5.2) and the (2.E) exactness item (V5.3).

V6.4 Corrections to apply to SOURCES_CTR (for the runner; this file edits nothing):
C1. Steps 3 and 5: add the input "E_0 of (1.18) is locally uniform along T_k" [I; on-trajectory part of R-006 residue N6]. Delete "E_0 … history-free by (B1)–(B2)". Delete N6 from the "Not used" list.
C2. (B2): split into definitional causality [V, p. 255, p. 265, p. 268 (2.12)–(2.15)] and estimate causality [I, H-047].
C3. Step 2: cite p. 268 (2.12)–(2.14) and p. 265 ("E_k … is equal to (1/g_k²)A + A_k") as the direct source of (2.E). Note that E^{(k+1)} of (1.6) includes the log Z^{(k)} term. Remark (i) becomes optional.
C4. Step 1 and item 3: replace "compact fibre, conditional Haar measure" with the p. 267 (2.10) form dB′σ(B′)δ(Q̃(B′))χ_k on |B′| < ε_1.
C5. Residual risk (§5 end, §7.2 residue): exactness of the remainder is [V] (p. 268). Drop it from the residue.
C6. Lean line numbers per V1.2.
C7. "absolute" (p. 263) means independent of X and j. History-freeness of α_0, α_1, κ comes from the Theorem 3 quantifier order (p. 264).

V6.5 Status of H-089 (C-tr). REDUCED [verified with corrections]. `hcont` of `lemma_D_hist_adm`, `nested_shoot`, `lemma_DPrime_hist_adm` and `lemma_DDoublePrime_hist_adm` holds for Balaban's β (any extension off true trajectories) with γ ≤ γ_Bal. It is relative to:
- R-013, with definitions (0.17)–(0.20), (1.6), (2.1), (2.9), (2.12)–(2.14);
- estimate causality [I] (H-047);
- on-trajectory uniformity of E_0 [I] (N6 component);
- CMP 109 (2.3) + CMP 102 Sect. G [R];
- R-018 (B3);
- L-024 + H-141 (Loc) [verified, relative to K-033–K-037];
- R-015 (definition only).

V6.6 Status of L5 (R-031; THEOREM2_PROOF_v4 §10 item 8). PROVED relative to listed inputs. Route 2 (Lean nested intervals, no `sorry`) needs `hbd` = (i-tr) and `hcont` = (C-tr). (i-tr) is unchanged from SOURCES_T2_B7_CLAMP. (C-tr) now has Route C (V6.5), which makes no off-trajectory evaluation. Compared with the round-7 row, the input set loses CMP 116 on 𝔅, L-281, HHOL §2–§3, NONMONO and the mixed point. It keeps causality [I] and N6, but only its on-trajectory E_0 part. The proposed ledger text in SOURCES_CTR §7.2 is acceptable after one change. Its residue list should read: "causality of the estimates [I] (H-047); on-trajectory E_0 uniformity [I] (N6); L-024 constant uniformity [P-sketch, given E_0]". The fibre-measure and (2.E)-exactness items leave the residue. v4 §10 item 8 still says "[open]". That text is stale relative to row R-031.

## 7. Report (≤120 words)

PASS WITH CORRECTIONS. The reduction of (C-tr) to continuity of β_{k+1} on T_k, the homeomorphism D_k → T_k, and the domain claim match the Lean `hcont` exactly (four line numbers are off). Route C is sound. Main correction: Steps 3 and 5 need E_0 of (1.18) to be uniform along trajectories. Theorem 3 (p. 264) does not list E_0, so this is the on-trajectory part of N6 [I]. Readings: (3) exact remainder CONFIRMED [V] (p. 268 (2.12)–(2.14)), which also gives (2.E) without (0.20). (2) fibre measure CORRECTED to the p. 267 (2.10) form, now [V]. (1) causality: the definitional part is [V], the estimate part stays [I]. L5: PROVED relative to listed inputs, with no off-trajectory evaluation.
