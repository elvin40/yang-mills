IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_HHOL_VERIFY — independent check of SOURCES_HHOL.md

Started 2026-10-27. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.

## 1. Read SOURCES_HHOL §0–§7 [done]
Targets: 1.3 disc facts, 2.2 Lemma D, 2.3 majorant, 3.2 conditions, 3.5 single-valuedness, 5.1–5.3 history.

## 2. Disc facts, hand check [P]
w = (1+s)^{-2}, |s|<ρ. arg w = −2 arg(1+s), sin|arg(1+s)| < ρ ⇒ Re w/|w| = cos 2φ > 1−2ρ². Correct.
Re w > 0 on the OPEN disc iff ρ ≤ 1/√2 (at ρ = 1/√2, φ < π/4 strictly). Author's "iff ρ < 1/√2" is off at the endpoint only. Cosmetic.
|w−1| = |s||2+s|/|1+s|²; sup = (1−ρ)^{-2} − 1 (at s = −ρ): 0.2346 at 0.1, 1.25 at 1/3. Correct.
The constant 1.235: (1+ρ)(1−2ρ²)^{-1/2} at ρ = 0.1 is 1.1112, NOT 1.235. 1.235 = (1−ρ)^{-2} = 1.2346 ≈ (1+ρ)²/(1−2ρ²) = 1.2347 (= square of the coupling factor). So 1.235 bounds |w| and 1/Re w (covariance scale), and 1.111 bounds x′/x (coupling scale). The author uses them consistently: x′ factor never written as 1.235.

## 3. CMP 116 pp. 7–8, 15–17 read (pdftotext -layout; OCR lossy) [V]
p. 15 quote confirmed verbatim in substance. Context: the complexity Balaban treats is U = U'U'' with A', J SMALL complex (|A'|, |J| < α's) and complex σ, τ. His "perturbative argument" compares with (U,0) and errors R_1–R_3 bounded by (O(1)e^{−δ_0M/3} + O(α_0+α_1)) e^{−δ_0|b−b'|} (2.16). It is NOT a complex-coupling argument; |w−1| ≤ 0.235 is not of size α. The author does not claim it is: he handles w exactly (phase + Re w), and only the U-perturbation is Balaban's. Brief item "(2.14) already treats a complex Gaussian perturbatively" = true as a quote, true only for small complex deformations.
Counting: (2.25) ∏_{b∈Z}(1−O(α_5))^{1/2} ≤ exp(O(α_5)|Z|), and (2.26) has (LM)^{−4}|Z\Z'_0|. So |Z| counts unit-lattice volume (sites), bonds per unit volume = O(1) (4 in d = 4). So N_0 ≤ 4n|Z_0| = (4 bonds/site)·(n = dim su(N) real components/bond) is the right count if |Z_0| = number of sites. Not cubes.
The X-integral ∫dμ_0(X) in (2.23)–(2.25) runs over bonds of Z, not Z_0. See §4.

## 4. Lemma D, majorant, conditions [P/num]
num (python -I, 20k points on |s| = ρ): max |w|/Re w = 1.00503, 1.02041, 1.28571 at ρ = 0.05, 0.1, 1/3, equal to (1−2ρ²)^{−1}. min Re w = 0.907, 0.826, 0.5625. At ρ = 0.1: (1+ρ)(1−2ρ²)^{−1/2} = 1.1112; (1−ρ)^{−2} = 1.23457; (1+ρ)²/(1−2ρ²) = 1.23469. All three as used.
Lemma D: correct. Marginal of the normalized Gaussian, modulus of the density = (|w|/Re w)^{N_Z/2} × real density at Re w. Per real mode (1−2ρ²)^{−1/2} ≤ e^{2ρ²} (−log(1−t) ≤ 2t, t = 2ρ² ≤ ½). Times 4n modes/site gives e^{8nρ²} per site. Correct for the B-modes on Z_0.
GAP (correction): the author also infers (2.1 [I]) that w divides the covariance of dμ_0(X). Then Lemma D charges the X-modes too, and (2.23)–(2.25) show X lives on bonds of Z, not Z_0. Cost becomes e^{8nρ²(|Z_0|+|Z|)} ≤ e^{16nρ²|Z|}. Same type as Balaban's own exp O(α_5)|Z| in (2.26); fix: ρ_0 → ρ_0/√2 (16nρ_0²(LM)^4 ≤ 1). If instead X stays unit white noise, w^{−1/2} enters Γ_kX as a complex factor and Lemma D does not apply as written. Either way 2.1 needs a line.
Majorant coupling x′ = x/√Re w ≤ x(1+ρ)(1−2ρ²)^{−1/2}: correct. It is the Gaussian part only; cut stays at x, vertex uses |w| ≤ (1−ρ)^{−2}. "Real integrand at larger coupling" is shorthand, not literal.
Conditions: pp. 15–17 print no labels (C1)–(C5). Printed constraints: e^{−δ_0M/3}e^{16κ_1} < 1; (2.18) τ-circle with α_4; ½(κ_1−1) ≥ (1−3δ)κ, C_3 ≥ E_0C_1, q ≥ 8; α_5 = O(1)e^{−δ_0M/3}+O(α_0+α_1)+O(1)α_4+γ_2; α_5‖C^{(k)}(Z_0,0)‖ < ½. (2.24′) 1.53 = 1.235² = 1.525: correct, modifies the last one. (C1′) ↔ (2.18): consistent. (C2′)–(C5) are W4 labels, not checkable on these pages. Note C_3 ≥ E_0C_1 means C_3 scales with E_0; (C5) "unchanged" holds only if C_3 is rescaled with E_0 → 1.235cE_0; then the H(Z) bound "1.235cC_3ε_1" double counts. Minor.
(C4″) arithmetic: ρ_0 ≤ (LM)^{−2}(8n)^{−1/2} ⇒ 8nρ_0²(LM)^4 ≤ 1. Correct. Notation clash: M = Balaban cube size in ρ_0, and M = sup|β_j| in 3.4. Rename one.

## 5. Single-valuedness, history, N3, large field
3.5: no identity theorem needed. In B̃ units Balaban's cut g|B| < ε_1 is |B̃| < ε_1, g-free; the B̃ formula at real u > 0 IS Balaban's step at g = u^{−1/2}. So the restriction to the reals equals Balaban's β_j by construction, and real-analyticity is a consequence, not an extra assumption. Overlaps agree because the formula is x-free. Caveat: holds only while every g-dependence is via g|B| and u. Any threshold p(g_k) of another form (CMP 119/122 large-field) breaks it; that sits in the open §6.
5.1: correct as a statement about this route. Cauchy radius ∝ x_i forces 1/x_i; Taylor step gives (M/(ρx_i)²)(ρx_i/2) ~ M/(ρx_i). Not a proof that uniform (H-hist_C) is false.
5.2: algebra correct. Circle of radius ρ_1x_l/2 around z ∈ P_{ρ_1/2}(x) stays in P_{ρ_1}(x) (use radius slightly less). Symmetry + min(a,b) ≤ √(ab) gives a′_m = λ_C^{m/2}, M_2 = 2D/ρ_1; diagonal included. Correction: N3 §5 states (H2-hist) "with the same a_m as (H-hist)". The derived a′_m = λ_C^{m/2} ≠ real a_m. N3 §5's Cauchy–Schwarz step needs only Σa′ < ∞, so restate (H2-hist) with its own sequence a′ and A_2 = (1−λ_C^{1/2})^{−1}. Harmless.
N3 with fixed ρ: inputs allow ρ ∈ ]0, 1/3]; ρ_0 ≤ 0.1 is inside. Every ρ-dependent term carries γ, γ², or γ³: C_1′ = C_1 + 12MγY/ρ², (c) γ³C_1′Y ≤ β, (d) 2√2γ²Y ≤ ρ_1, extra x_C term √2YM_2A_2²γ²/β with M_2 ∝ ρ_0^{−2}. ρ_0, ε_1, λ_C, D do not depend on γ; Balaban fixes γ after M, κ ((2.31) via GGAIN). Accepted, provided C_1 of real (H-hist) is γ-independent (status per HHIST/GGAIN).
§6: open, as the author says. (100MR_k)^{−4} radius is from W4 §6.2 via Lemma D3.1 (checked in W4 text). "R_k grows with k" is [I], not checked; obstruction diagnosis unsupported.

## 6. Grades
(1) CORRECTED: disc facts, Lemma D, majorant correct; per-polymer cost misses X-modes on Z (e^{8nρ²(|Z_0|+|Z|)}, ρ_0 → ρ_0/√2) or 2.1 must say how X is scaled; endpoint ρ = 1/√2 cosmetic.
(2) CORRECTED (as a reduction): (2.24′) and (C4″) arithmetic right; C1–C5 not Balaban labels; C_3 scaling and M-clash minor; single-valuedness CONFIRMED without an extra real-analyticity assumption.
(3) CONFIRMED with one restatement: (H-hist_C) negative right for this route; (H2-hist) algebra right but with its own a′_m = λ_C^{m/2}; N3 accepts fixed ρ_0 with γ chosen after.
(4) CONFIRMED as open; R_k growth and the k-nonuniformity diagnosis UNSUPPORTED ([I]).
