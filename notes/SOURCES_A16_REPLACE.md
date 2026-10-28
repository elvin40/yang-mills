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

## §2a What D2 uses about C_f (SOURCES_D2.md §3.2–§3.4, §6.2–§6.3)

D2 cites CMP 116 p. 3 at three places. Only the third is the sentence of A16.
- §3.2 (P): cites p. 3 for "(1.7) holds for all operator norms in … Theorem 3.1 [13]". That is the printed walk bound for Balaban's own C_0 = C^{(k)} = (C^*Δ^{(k)}C)^{−1}. It is A1/A1w, not A16.
- §6.2: cites p. 3 for "each factor in (1.6) depends on U restricted to X_j". Locality of Balaban's walk factors. Printed. Not A16.
- §6.3: cites the sentence "we can replace the propagators by arbitrary operators…" for the claim "the step is a holomorphic map of its inputs on the E_0 → 2E_0 ball". This is (W4) of B20. It is a use of A16 for INPUTS (activities), not for C_f. B20 now books (W4) as [R] to printed (C1)–(C5) via Theorem SM. Checked in §2c below.

Properties of C_f that D2 itself states and proves (Lemma 3.1, [proved, given (P)], CONFIRMED in D2_VERIFY):
- (L-i) existence and Neumann series C_f = Σ_n C_0(g_k²𝒲C_0)^n, for τ := g_k²w_0 r c_1 ≤ ½.
- (L-ii) ‖C_f‖_δ ≤ 2c_1, ‖C_f − C_0‖_δ ≤ 2c_1τ; pointwise decay rate δ_0/2.
- (L-iii) the same for ∂_L C_f ∂_R, ∂ ∈ {1, first-order, the special second-order operators of CMP 109 (1.8)}.
- (L-iv) real f: C_f^{−1} ≥ (1 − τ)C_0^{−1} > 0 (positivity, Gaussian measure exists).
- (L-v) holomorphy in (U, J) on Balaban's complex domain and in complex f|_X.
- (L-vi) generalized walk expansion: Balaban's (1.6) for each C_0 factor, 𝒲 = extra local step of weight ≤ g_k²w_0 r.
- (L-vii) normalization det(1 − g_k²C_0^{1/2}𝒲C_0^{1/2})^{−1/2} as a closed-walk series (§3.4).
Input to all of these: (P) for C_0 only, i.e. A1/A1w (and A10 for complex U). No A16.

Where the C_f object is then USED with "Balaban's machinery" (the point of A16): §3.4 says "every bound on the fluctuation propagator that Balaban's Sect. 3–4 and CMP 116 use holds for C_f". The claim that Balaban's cluster expansion then runs with C_f in place of C_0 is the analogy. D2's main route (2.b) does not need it ("Balaban's measure dμ_{C^{(k)}} is untouched", §3); C_f is used in route (b′), in §4 (frozen comparison), §7 (derivative bounds), and in D3R (P8) / D3W8.

## §2b What D3R (P8) and D3W8 use about C_f

D3R §2.3 (P8): the quadratic source part ½g_k²⟨B′, 𝒱_fB′⟩ "changes the covariance by 1 + O(γ²r) and is absorbed by D2 Lemma 3.1"; D3R_VERIFY item 2: this is a covariance change C^{(k)} → C_f^{(k)} in (3.27) at every s, t, not a P^{(k)}-class vertex. D3R needs: Z_{s,t} bounded away from 0, the localized expansion converges uniformly in t, large-field factors survive.
D3W8 §1.1–§1.4 makes it explicit: C_f^{(k)} := (C_0^{−1} − g_k²𝒲_S)^{−1}, 𝒲_S := C^*𝒱_SC, and lists what the cluster expansion of CMP 116 / CMP 119 pp. 275–279 uses: (G1) exponential decay of the covariance and operators built from it, with s(Δ) inserted in the walk expansion (CMP 116 (1.6)–(1.7)); (G2) analyticity in (U, J); (G3) uniform upper bound (moments, χ_k tails); (G4) normalization / determinant as closed walks. §1.3 is tagged [reduced to (P) and the CMP 116 p. 3 replacement principle]. §1.4 (large-field domination) is proved directly and does not cite A16.

## §2c Consolidated list: what the project uses about C_f

Sourced objects (Z_0-localized, as CMP 116 Sect. 2 needs them; the project wrote only the whole-volume form):
 A_Z^f := A_Z − g_k²𝒲_Z, 𝒲_Z := 1_{Z_0}𝒲_S1_{Z_0} on V_red(Z_0); C_f(Z_0) := (A_Z^f)^{−1}. At Z_0 = whole region this is D3W8's C_f^{(k)}, since A_exp = C^*Δ^{(k)}C (WC_FULL 0.7, PF5).
Properties used (each labelled for §3):
 Q1 Existence and positivity at real points: real U, J = 0, real f ⇒ A_Z^f real symmetric, ≥ c > 0 (D2 L-iv; D3W8 1.4).
 Q2 Walk expansion with locality (L1)–(L2) and per-walk bounds of the WC(ii) / CMP 116 (1.6)–(1.7) form, rate halved; s(Δ)-insertion per cube met (D2 L-vi; D3W8 1.2(d), (G1)).
 Q3 Bounds on ∂_L C_f ∂_R for the operators of CMP 109 (1.8) (D2 L-iii; D3W8 1.2(c)).
 Q4 Analyticity in (U, J) on the α′-domain and in complex f|_X, with the same bounds (D2 L-v; D3W8 1.2(e)–(f), (G2)). Derivatives in the background follow by Cauchy from Q4.
 Q5 Uniform norm bound ‖C_f‖ ≤ const (G3), used also as α_5‖C(Z_0,0)‖ < ½ (CMP 116 p. 17).
 Q6 Determinant / normalization ratio as a closed-walk series (D2 §3.4; D3W8 (G4)).
 Q7 Square root (C_f)^{1/2} with a walk expansion: needed by CMP 116 (2.6)–(2.8) (change of variables B′ = (C^{(k)})^{1/2}X, Γ_k contains (C^{(k)})^{1/2}(σ)). Not listed by D2/D3W8. Missing from their lists. [I: read on CMP 116 pp. 12–13]
 Q8 The "perturbative argument" of CMP 116 pp. 15–17 (A8 row): σ-truncation small (Lemma D), modulus bound by a positive Gaussian with precision H(K_σ) and determinant ratio (Lemma P). Not listed by D2/D3W8. Missing from their lists.
 Q9 Gaussian conditioning on Z_0^c, CMP 116 (2.5): exact algebra for the quadratic form ⟨B, A_exp^fB⟩.
 Q10 t-measure facts (D3W8 1.1, 1.3): C_f independent of the interpolation parameters s, t of (3.26); for the (3.30) family τ → t²τ.
 Q11 Large-field domination (D3W8 1.4): (1 + τ)^{−1}C_0 ≤ C_f ≤ (1 − τ)^{−1}C_0, density bound on the marginal region (D3W8_VERIFY S9 fix).
Not a bound, not provided, must not be used: Euclidean (lattice-symmetry) covariance of C_f fails for non-constant f. CMP 119 uses covariance of the effective action ((3.39), (3.58)) for renormalization; the sourced chain handles the relevant terms by frozen constant-c theories (D2 §4, D2C), which are translation invariant. [I: no use of C_f's covariance found in D2/D3R/D3W8]

