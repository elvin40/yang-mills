# ALT_ROUTES — two nonperturbative routes (Chatterjee center symmetry; stochastic quantization) against the project's wall

Date: 2026-10-28 (Fable 5.1). Status: IN PROGRESS, one section per tool call. Edits: this file only. No existing file touched.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Grades: [P] proved here; [V] verified reading of a source (arXiv HTML/abstract page read this session); [I] recalled or interpreted, not re-read; [R] published theorem taken as input.
Honesty rule: every obstruction names the exact failing inequality or the missing theorem. No softening.

## 0. What the project has, and what "the wall" is (orientation, from project files read this session)

- Available [V, project files]: Balaban's UV construction on the finite torus T⁴_ℓ, SU(2), d = 4, spacing ε = L^{−K}, bare coupling g_0(K, g) with unit-scale coupling g ∈ ]0, γ] (TRUST_LEDGER §0; THEOREM2_PROOF_v4 via Theorem 2w). Output after the last RG step and FX Step A: a probability measure ν_{K,ℓ} on small-field unit-scale fields V ∈ SU(2)^{unit links of T⁴_ℓ}, density χ(V) exp(A_K^0(V) + Σ_X R_fin(X, V)) / I_K[0], with A_K^0 a Wilson-type action at coupling g and R_fin a convergent sum of local unit-scale activities (IV12 §4.4 (L1)–(L2); FABLE §2, (3.1)–(3.2)). Everything ℓ-dependent beyond e^{−cℓ} sits in ν_{K,ℓ} (FABLE §3.2).
- Theorem IV (FABLE §7.1), conditional: subsequential (ε, ℓ) → (0, ∞) limits of the centred plaquette-density Schwinger functions with OS0, OS1-T, OS1-H (B_4 only), OS2, OS3. Not given: uniqueness, O(4), OS4 clustering, mass gap, Wilson loops (ASSEMBLY §4 class C3 excluded).
- The wall [V, IV12 §4.2, VERIFY main finding]: FX Step B = "log of the unit-scale integral ∫dV χ e^{A_K^0 + ΣR_fin} is a convergent sum of local terms with ℓ-free constants". It is expected FALSE, not merely unproved: Lemma C keeps a decay e^{−κσ/(4M)} in the separation σ, so an ℓ-uniform Step B would give a unit-scale mass gap of order one at every g ≤ γ, against asymptotic freedom's ξ_g ≈ exp(1/(2b_0 g²)) unit cells. The unit-scale Gaussian part is the massless lattice gauge propagator on T⁴_ℓ (no block constraint left), so no Kotecký–Preiss criterion holds uniformly in ℓ (IV12 (B-i), (B-ii)).
- So the wall is: control of a weakly coupled 4D lattice gauge theory on the unit lattice at distances between 1 and ξ_g ~ e^{c/g²} and beyond; equivalently the infrared problem of the unit-scale measure ν_∞ (FABLE L15, L17).

Both routes asked about relocate this wall. Sections: §1 Chatterjee source; §2 the quantitative inequality; §3 area law vs gap; §4 extractable short-distance Wilson-loop theorem; §5 SPDE sources; §6 criticality in d = 4; §7 3d global existence gap; §8 gap ⇔ spectral gap ⇔ Step B; §9 extractable at unit scale; §10 one-page summary.
