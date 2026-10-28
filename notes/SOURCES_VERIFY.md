# Verification of SOURCES.md (E14: sources in Balaban's induction)

Status: independent pass, 2026-10-27, Claude (Fable 5.1). Scope: the 12 summary items of SOURCES.md, checked against balaban/*.txt and *.pdf (CMP 109, 119, 122 I–II, 116), reports/clay_ym.txt, reports/o3_continuum.txt, and the primary literature re-fetched by me (Dimock I–III, QED₃ 2009.01156, overview 2204.07201, scalar QED 1502.02946, Gross–Neveu 2406.16799, BIJ CMP 114 author copy, BBIJ Ann. Phys. 158 author copy, BIJ Cargèse 1983 author copy, INSPIRE author records). The mathematics of items 6, 8, 10 was re-derived by hand. No other file was edited. Temporary downloads were deleted.

Prose: short sentences, plain technical English. Tags: [V] verbatim-checked by me; [derived] my own derivation.

Grades: CONFIRMED / CORRECTED (with correction) / UNSUPPORTED.

---

## Summary table

| # | Item | Grade | One-line reason |
|---|---|---|---|
| 1 | CMP 122 II pp. 355–356 anchors | CONFIRMED | Lines 53–55 of CMP 122 II text; Jaffe–Witten §6.5 lines 544, 563–564; footnote 2 line 619. |
| 2 | Literature (Dimock I–III, QED₃, BIJ) | CONFIRMED | Every quote found verbatim in the primary texts; no BIJ sequel on INSPIRE. |
| 3 | Observable classes C1–C3 | CONFIRMED | Minor: normalization of ε⁻⁴P_p; "perimeter law" is the wrong name for the perimeter divergence. |
| 4 | |x−y|⁻⁸ singularity, test class | CONFIRMED | Counting right; 4-jet subtraction is exactly what makes the remainder integrable (8−5 = 3 < 4). |
| 5 | Properties N1–N7 | CORRECTED | N1: the step from disjoint-support cumulant bounds to F flat on diagonals with a fixed derivative order s is not written; (2.1) conflates moments and cumulants. |
| 6 | Reduction to a local coupling; CMP 119 (2.23)–(2.24) | CORRECTED | Sign of the reconstructed (2.24) is wrong; Balaban's β_j is evaluated at the constant g_{j−1}, and his x-dependence is only the cutoff φ_j. E5 verbatim is right, for a reason the file does not state. |
| 7 | (S-A)–(S-E), W_k[f] | CONFIRMED as a hypothesis list | (S-D) is new relative to Balaban, not a transfer. Unit slip in the (S-C) bound. |
| 8 | Dimension count; c_j; B_K | CORRECTED | c_j formula right. B_K is uniformly bounded, not shown convergent; Π c_j assumes β_j depends on g_{j−1} only, which Balaban denies (p. 298). |
| 9 | Minimal estimates (E14-a)–(E14-g) | CONFIRMED as a list | Quotes verbatim. (E14-b) per-plaquette e^{2r} is beaten by the per-plaquette large-field factor. |
| 10 | D1 at formula level (§2.4) | CONFIRMED with corrections | Determinant algebra right. Missing g_0² in the current term; sign of ∂log Z/∂f; "exact for constant f" only if the gauge fixing is also reweighted. |
| 11 | Work plan | CONFIRMED as a plan | Sizes are guesses, as stated. |
| 12 | Ledger | CONFIRMED, incomplete | Add the five corrections below. |

Most important correction: the reduction's central sentence "Balaban's induction already carries a local coupling g_j(x)" is weaker than it reads. In CMP 119 (2.24)–(2.25) [V] the β-function is evaluated at the constant coupling g_{j−1}, and the local coupling is the constant-coupling counterterm cut off by φ_j near large-field regions. The pointwise flow (S-A)/(S-D) with β_j(g_{j−1}(x)) is new. The reconstructed (2.24) also has the wrong sign.

---

## 1. Anchors (item 1): CONFIRMED

CMP 122 II text lines 53–55 [V]: "physical observables, like loop variables, averaged loop variables, etc. These … theories, and they deserve detailed analysis and further publication." Theorem 1 and the "has not been published yet" sentence are at p. 355 (THEOREM2.md §1, checked there). Jaffe–Witten [V, reports/clay_ym.txt]: line 544 "existence of limits of appropriate expectations of gauge-invariant observables"; lines 563–564 "These results need to be extended to the study of expectations of gauge-invariant functions of the fields" (said of the 3D work [2], as the file's §3.6 states); footnote 2 at line 619 verbatim. Line 270 "existence of a stress tensor and an operator product expansion" [V].

## 2. Literature (item 2): CONFIRMED

All relayed quotes were re-fetched and are verbatim.

- Dimock I (arXiv:1108.1335) abstract [V, arXiv API]: "In this first paper we analyze the small field contribution to the partition function." II (1212.5562) [V]: "In this second paper we control the large field contribution to the partition function." III (1304.0705) [V]: "In this third paper we demonstrate convergence of the expansion and complete the proof of a stability bound." III, text line 4366 [V]: "Remark. The analysis can be adapted to treat correlation functions as well. See particularly [12] for an indication of how this would go." [12] = Balaban–O'Carroll, CMP 199 (1999), N-vector spin models [V].
- Dimock QED₃ (2009.01156) abstract [V]: "ultraviolet stability bound in a fixed finite volume". Concluding remark 3 [V]: "It should be possible to include source terms in the partition function and thereby generate results for correlation functions. See for example [21]. In particular one could expect to show the existence of the continuum limit N → ∞." [21] = BIJ CMP 114 [V].
- Overview (2204.07201) [V]: "The proof should allow one to add local gauge invariant perturbations to the action like ⟨dA, J⟩ or ⟨ψ̄γ_μψ, j_μ⟩. Then the partition function Z_N(e) becomes a generating function Z_N(e, J, j) … The continuum limit N → ∞ for the partition function, generating function, and correlation functions should also be feasible."
- Scalar QED (1502.02946) [V]: "This makes in awkward to extend results beyond the partition function, for example to control the correlation functions. Balaban fixes this in subsequent papers on other models, but it remains undeveloped for scalar QED."
- Gross–Neveu (2406.16799) abstract [V]: "all correlation functions, treated as distributions, are uniformly bounded in the ultraviolet cutoff."
- BIJ CMP 114 (author copy, uva.theopenscholar.com) [V]: §1 "gauge invariant observables such as loop variables … or string variables … These variables must be renormalized appropriately, by multiplying or subtracting ε-dependent terms."; §3 "We wish to give an expansion for the partition function, or for an unnormalized expectation of an observable F … Re(ieε²)⁻¹(u(p)−1). Each such term may need to have an appropriate constant subtracted in order to obtain ε-independent bounds on the full expectation ⟨F⟩ = [F]/[1]. These 'Wick ordering' constants are given by perturbation theory to a low order, and will be discussed carefully in a subsequent paper on the perturbation expansions."; "(For observable terms, irrelevant means bounded independently of ε.)"; last paragraph "will be considered in a subsequent paper."
- Sequel: INSPIRE lists four Balaban–Imbrie(–Jaffe) items (1984 unit lattice, Cargèse 1983, 1985 minimizers, 1988 effective action) and nothing later [V]. Dimock 2015 and 2020 say the same in words. The claim "no sequel" stands.
- Cargèse 1983 (author copy) [V]: "We must consider effective observables as well as effective actions, since the original fields have been integrated out. … except for new vertices coming from the observables on the L^{−k} lattice."
- BBIJ Ann. Phys. 158 (author copy) [V]: "We evaluate derivatives with respect to 'sources' using Cauchy's formula and thereby obtain formulas for truncated correlations which exhibit their exponential decay".
- MRS 1993 abstract (Project Euclid record) [V]: "rigorous construction of the Schwinger functions of the pure SU(2) Yang-Mills field theory in four dimensions (in the trivial topological sector) with a fixed infrared cutoff but no ultraviolet cutoff, in a regularized axial gauge".

Not checked: Federbush I–VI, King 1986 (paywalled, as the file says).

## 3. Observable classes (item 3): CONFIRMED

Minor points. (a) For SU(2) with the normalized trace, P_p ≈ ε⁴·¼ tr F_{μν}² for the single plane of p (no sum); the sum over the six planes at a site gives ⅛ tr F·F. The file's "¼ tr F_{μν}F_{μν}" is ambiguous. Not load-bearing. (b) The vanishing of ⟨W_γ⟩_ε as ε → 0 is the perimeter divergence (Polyakov 1980, Dotsenko–Vergeles 1980), exp(−c g_0²|γ|/ε) with g_0² ~ 1/log(1/ε); "perimeter law" names a different fact (the large-loop behaviour in the deconfined phase). The conclusion (C3 needs a multiplicative line renormalization) stands. (c) 21 components for (C2): 6·7/2 = 21, right.

## 4. Singularity and test class (item 4): CONFIRMED

[derived] ⟨P_p P_{p'}⟩_c ~ ε⁸ g⁴ |x−y|⁻⁸ at tree level (two propagators, each with two derivatives). Var Σ f_p P_p ~ ε⁻⁸·ε⁸ g⁴ ∫∫ f f |x−y|⁻⁸ cut at ε ~ g⁴ ε⁻⁴ ∫ f². Matches §1.3. The 4-jet claim in (S-C) is right for the same reason: Taylor-expanding f(y) about x to order 4 and subtracting leaves |x−y|⁵·|x−y|⁻⁸, integrable in d = 4; the |α| = 4 jet term is log-divergent (marginal), the |α| ≤ 3 terms are power-divergent. The template quote (o3_continuum.txt) is at line 4998, not 4985–4990 [V].

## 5. Properties N1–N7 (item 5): CORRECTED

The list is the right list. Two corrections.

(a) Equation (2.1) of SOURCES.md: ∂_{z_1}…∂_{z_n} log Z[Σ z_i f_i] at z = 0 is the truncated (connected) function, not ⟨Π ϕ(f_i)⟩. The vacuum subtraction does not "cancel in log Z"; it removes the first cumulant. The full S_n are then the moment–cumulant sums, or the derivatives of e^{−ε⁴ v_ε Σf} Z[f]/Z[0]. With disjoint supports every local term of W_K contributes 0 to every mixed derivative of order ≥ 2 [derived: each term of W_K is Σ_x P(jet of f at x); at each x only one f_i is nonzero], so the conclusion (W_K drops out) survives.

(b) N1 as stated gives |S_n^{conn}(f_1,…,f_n)| ≤ Cⁿ n! r⁻ⁿ for f_i ∈ F_r with disjoint supports, where F_r caps |∂^m f| for m ≤ 5. It does not give |S_n(F)| ≤ Cⁿ n! ‖F‖_{s,n} for F flat on diagonals with a fixed s. A test localized on a cell of scale δ near a diagonal has |∂⁵ f| ~ δ⁻⁵‖f‖, so it enters F_r only after a δ⁵ rescaling; a crude partition-of-unity argument then needs s to grow with n. Whether OS II's linear growth condition admits a Schwartz index growing with n must be checked in OS II; the file does not do this step. Mark N1 for general F as a gap, not a consequence of the source form.

N3–N7: as stated. CMP 119 (2.29), (2.32) exist (text lines 889, 915) [V]. The template's Lemma 11.1 argument is at lines 4894–4910 [V]. Osterwalder–Seiler RP for the Wilson action is standard.

## 6. The reduction (item 6): CORRECTED

Checked against the printed page (balaban/1988_cmp119_…pdf, PDF page 17 = printed p. 259), rendered and read.

(a) Printed (2.24) [V]:
  1/g²_{j−1}(x) = 1/g²_j(x) + β_j(g_{j−1}) φ_j(x),
i.e. 1/g²_j(x) = 1/g²_{j−1}(x) − β_j(g_{j−1}) φ_j(x). This agrees with CMP 109 (0.20) as read in THEOREM2.md (1/g²_{k+1} = 1/g²_k − β_{k+1}(g_k)). SOURCES.md's bracketed reconstruction "1/g_j²(x) = 1/g_{j−1}²(x) + β_j(g_{j−1}) φ_j(x)" has the wrong sign. The surrounding words are verbatim: "Here the coupling constants g_{j−1} are defined as in (I.0.20), and φ_j ∈ C_0^∞(Λ_j), φ_j = 1 on Λ_j^{~−1}. Thus g_j²(x) = g_j² on the last domain."

(b) Printed (2.25) [V]: E_k(U_k) = Σ_{j=1}^k [E^{(j)}(Λ_j, g_{j−1}, U_k) − E^{(j)}(Λ_j, g_{j−1}, 1) − β_j(g_{j−1}) A(φ_j, U_k)]. So in Balaban the β-function is evaluated at the CONSTANT coupling g_{j−1}, and the only x-dependence of g_j(x) is the cutoff φ_j, which is 1 on the small-field region. His induction never runs a fluctuation integral with a non-constant coupling in the small-field region. The sentence "Balaban's induction already carries a local coupling g_j(x)" is literally true and materially weaker than the use made of it: the pointwise flow (S-A) and the local β-function (S-D) are new objects. The file half-says this ("E14 asks the same object to carry a slowly varying x-dependence everywhere") but the ledger item 2 should say that (S-D) has no Balaban analogue.

(c) The (C1) source is exactly a local bare coupling: CONFIRMED (trivial algebra).

(d) Background-field split and E5. Balaban's (2.12) [V] minimizes the unweighted A^η(U) under M_B(U) = V, and his (2.23) [V] evaluates the weighted marginal term −A(1/g_k²(·), U_k) at that unweighted minimizer. So "weighted action at the unweighted minimizer" is already Balaban's structure, and E5 (CMP 102 variational problem, Theorem 1) is untouched by a source. CONFIRMED. But the reason the split survives is not stated in SOURCES.md and should be, because Balaban relies on the linear term vanishing. CMP 109 p. 267 [V, text line ~930]: after the scaling B = g_k B′, "the third, linear term in (2.10) vanishes now, −(1/g_k)⟨H_1B′, J⟩ = 0 because ⟨δA′, J⟩ = 0 for all δA′ satisfying the condition Q Q^… δA′ = 0, and H_1B′ satisfies it. Hence the only term with a negative power of g_k is the action evaluated at the configuration U_{k+1}." With the sourced weight w = 1/g_k² − f the linear term is −Σ_p f_p ⟨P_p^{(1)}, g_k B′⟩ = −g_k⟨J_f, B′⟩: it carries g_k^{+1}, not g_k^{−1}, because the source is O(r) while the action is O(1/g_k²). It is therefore a vertex of the same order as Balaban's cubic vertex g_k V(H_1B′), not a term that must vanish. That is why E5 can stay verbatim. [derived]

(e) J_f ∝ ∇f: CONFIRMED [derived]. The constrained stationarity gives J = Q^*λ (λ a Lagrange multiplier on coarse bonds, |λ| = O(|dU_k|)). With f split into its block-constant part and the within-block remainder, the block-constant part gives Σ_c λ_c (f_{c_+} − f_{c_−})·(partial average over B(c_+)), the remainder gives Σ_p (f_p − f_{c(p)}) P_p^{(1)}; both are O((L^kη)|∇f|·|dU_k|) per bond. The file's bound omits the block factor L^k in physical units, which is immaterial for the geometric sum.

## 7. Sourced inductive assumptions (item 7): CONFIRMED as a hypothesis list

(S-A): the scalar flow u ↦ u − β(u^{−1/2}) is the right reading of (0.20) [V]. (S-B): matches CMP 109 p. 263 [V, line 738]. (S-C): unit slip: per cube □ ∈ π_j of side M (in the units of T^{(j)}) the field-independent f² term is O(M⁴ g_{j−1}⁴), which is C (L^jη)⁻⁴ g_{j−1}⁴ per unit physical volume, not per cube. (S-D): new, see §6(b). (S-E): template line 4158 [V]. "Automatic for r ≤ ½(1/g² − 1/γ²)": holds if the linear response B_k ≤ 2 and |h_k| is small, which the file's own bounds give; fine as a statement with constants to fix.

## 8. Dimension count, c_j, B_K (item 8): CORRECTED

(a) Count: a source of dimension Δ = d = 4 has scaling factor L^{d−Δ} = 1 per step: marginal at every degree; field-independent terms gain L⁴ per step. CONFIRMED. Gradient terms: no gauge-invariant local operator of dimension 2 or 3 exists in pure SU(2) lattice gauge theory (the smallest Wilson loop is the plaquette, dimension 4; tr F = 0), so the first field-dependent gradient term is dimension 6, factor L⁻² per step. CONFIRMED.

(b) c_j: with u = 1/g², u_j = u_{j−1} − β_j(u_{j−1}^{−1/2}); du_j/du_{j−1} = 1 − β_j′ · dg/du = 1 + ½ g_{j−1}³ β_j′(g_{j−1}). CONFIRMED. With Balaban's "uniformly bounded together with all derivatives" [V, line 799], c_j − 1 = O(g³); with evenness, O(g⁴). Along (0.31), Σ_j g_j³ ~ Σ_m (1/g² + βm)^{−3/2} < ∞. CONFIRMED.

(c) B_K = Π c_j "converges absolutely": CORRECTED in two ways.
  (i) Σ|c_j − 1| < ∞ uniformly gives 0 < b ≤ B_K ≤ b′ uniformly in K. Convergence of B_K as K → ∞ needs, for each fixed m, convergence of c_{K−m} as K → ∞, i.e. convergence of β_j′ as j → ∞. That is the step-kernel convergence question (U3), which is open. The template settles for two-sided bounds (Prop 9.3, "Convergence of the ratio B_N/B*_N is not required" [V, LEMMA_B4.md S7]). For fixed-layer convergence (E14-d), only Π_{j≤k} c_j with k fixed is needed, and that tends to 1 as K → ∞ because g_{j−1} → 0 for j ≤ k. So the file's claim is stronger than needed and not proved; the needed statement is weaker and holds.
  (ii) B_k = Π c_j uses the chain rule for a one-step recursion. Balaban p. 298 [V, line 2497]: β_j "depends also on all preceding coupling constants". Then ∂u_k/∂u_0 is a sum over chains with factors ∂β_j/∂u_i, i < j−1, not a product. Uniform bounds survive if Σ_{i<j} |∂β_j/∂u_i| is summable (expected, since earlier couplings enter E^{(j)} through terms bounded by (0.29)), but this hypothesis must be stated.

(d) "Physically: … multiplicative renormalization in pure YM is finite at one loop": consistent with (c)(i): the response ∂(1/g_k²)/∂(1/g_0²) → 1 at fixed k.

## 9. Minimal estimates (item 9): CONFIRMED as a list

Quotes [V]: CMP 116 lines 99–100 "In these equations we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds."; CMP 122 I lines 72–75 "We will prove that the densities are positive, and the inegration domains in the integrals above are nonempty, hence the denominators are positive, and the operation R is well defined." and (0.4) "∫dV(Rρ)(V) = ∫dV ρ(V)". (E14-b): the factor e^{2r} is per plaquette; the large-field small factor is also per plaquette and is exp(−O(1)(log g⁻²)^{2q}) by (2.28) [V, printed p. 259], so it dominates. The (E14-c) interpolation lemma is standard (uniform (n+1)-derivative bound ⇒ equicontinuity of n-th derivatives ⇒ convergence). (E14-d) and (E14-g): as stated, both depend on open items (E13, E10).

## 10. D1 at formula level (item 10): CONFIRMED with corrections

(a) Algebra of §2.4(a): CONFIRMED (see §6(d)–(e) above; Balaban's (2.3)–(2.9) read at text lines 836–895 [V]).

(b) Determinant: Δ^{(w)} = g_0⁻²(Δ^{(1)})^{1/2}(1 − g_0²K_f)(Δ^{(1)})^{1/2} with K_f = (Δ^{(1)})^{−1/2}Δ^{(f)}(Δ^{(1)})^{−1/2}; the g_0⁻² and Δ^{(1)} factors cancel in the ratio of Gaussian integrals; −½ log det(1 − g_0²K_f) = ½Σ_a (g_0^{2a}/a) tr K_f^a; ‖K_f‖ ≤ r since d^*M_f d ≤ r d^*d ≤ r Δ^{(1)} (Δ^{(1)} contains the gauge-fixing form, which only raises it). CONFIRMED [derived].

(c) Corrections. (i) The completed-square term is ½⟨J_f, (Δ^{(w)})⁻¹J_f⟩ = O(g_0² ε²|∇f|²|dU_1|²); the file drops the g_0². Harmless. (ii) "∂ log Z/∂f at constant f is −⟨A⟩": the sign is +⟨A⟩ (the exponent is −(1/g_0² − f)A). Harmless. (iii) "For constant f it is exact: −½ log det(1 − g_0²f)": exact only if the gauge-fixing form is reweighted with the action; with Balaban's gauge fixing left at weight 1/g_0², K_f ≠ f·1 and the constant-f response is Balaban's step at the shifted coupling plus an f-dependent gauge-fixing mismatch. Not load-bearing for the counting. (iv) tr K_f^a as the one-loop a-point polygon of the Gaussian part of the plaquette density: CONFIRMED. (v) The identification of the a = 1, 2 field-dependent part with −β_1(g_0) f(x) P(U_1) and c_1 = 1 + ½g_0³β_1′: this is the frozen-coupling heuristic, right at one loop; the file labels it [derived, to be checked numerically], which is the right label. (vi) The Taylor expansion "to fifth order" is at CMP 109 text line 493 [V].

(d) Compatibility question asked by the caller ("the minimizer changes; does E5 stay verbatim?"): answered in §6(d). Yes, because the sourced linear vertex carries g_k^{+1}, and because Balaban's own (2.23) already evaluates a weighted action at the unweighted minimizer.

## 11. Work plan (item 11): CONFIRMED as a plan

The D1 numerical check is well posed: a plane-wave weight f = r cos(q·x) in the one-step momentum-space code gives the O(r) response at momentum q as a two-point function of the weight insertion; q → 0 gives c_1 − 1, and the q², q⁴ coefficients of the O(r²) field-independent response give the 2- and 4-derivative contact coefficients. Sizes are guesses, as stated. D3's "every use of a constant coupling outside Λ_j must be found" is the right reading task given §6(b): in Balaban the coupling is constant on the whole small-field region, so the sourced induction must re-check every small-field estimate too, not only the large-field ones.

## 12. Ledger (item 12): CONFIRMED, incomplete

Add: (1) the sign of (2.24); (2) β_j evaluated at the constant coupling in (2.25), so (S-D) is new; (3) log Z derivatives are cumulants, not moments; (4) B_K uniformly bounded, not convergent, and Π c_j assumes a one-step recursion; (5) N1 for general F flat on diagonals is not derived from the source form.

---

## Verdict

The reduction is structurally sound: the (C1) source is a local bare coupling, Balaban's effective action already has the form "weighted marginal term at the unweighted minimizer", and the sourced linear vertex is small after Balaban's scaling. The dimension counting is right. The file overstates what Balaban already carries (the local coupling is a cutoff, the β-function is constant-coupling) and overstates B_K (bounded, not convergent). Nothing found that refutes the plan; two of its hypotheses ((S-D), the one-step chain rule) are new and must be proved, not inherited.
