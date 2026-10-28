# SOURCES_3D_GAP_LIT — literature check of R3S1_GAP.md: Ünsal–Yaffe statements and "no rigorous gap for the 3d / reduced theory"

Written 2026-10-28 (Claude Opus 5.5). New file; no existing file edited. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read. Downloads in /tmp/gaplit_dl, deleted at the end.

Grades. [V] I read the source text myself (arXiv TeX source, grep plus context). [V-abs] I read the abstract only. [I] abstract via a search summary, a review, or recollection; not read by me. Verdicts: CONFIRMED / CORRECTED / UNSUPPORTED.

Claim under test (R3S1_GAP.md lines 47, 167, 178, 187). The mass gap of the 3d theory (Georgi–Glashow / Polyakov model) and of the dimensionally reduced center-stabilized theory on R³ × S¹ has no rigorous proof. Line 178 states it in this form: Theorem A "would be, to my knowledge, the first rigorous Polyakov-mechanism confinement result for a non-abelian lattice gauge theory at weak coupling (the 3d Georgi–Glashow case is also open [I])".

## 1. Ünsal–Yaffe 2008 [V: arXiv TeX source deform.tex, v2]

Bibliographic [V-abs]. M. Ünsal, L. G. Yaffe, "Center-stabilized Yang-Mills theory: confinement and large N volume independence", arXiv:0803.0344 [hep-th], v1 3 Mar 2008, v2 22 Mar 2008; Phys. Rev. D 78, 065035 (2008). The citation in R3S1_GAP.md line 10 is correct.

What the paper states [V].
- Deformation (eq. "Delta S"): ΔS = ∫_{R³} L^{−3} P[Ω(x)] in the continuum, and ΔS = N_t^{−3} Σ_{x∈Λ_3} P[Ω(x)] on the lattice, with N_t = L/a. Here Ω is "the Wilson line (or Polyakov loop) operator", the path-ordered holonomy of A_4. P[Ω] = Σ_{n=1}^{⌊N/2⌋} a_n |tr Ω^n|², "with positive coefficients {a_n}", held fixed as N → ∞.
- One-loop potential: 𝒱[Ω] = −(2/π²) Σ_{n≥1} |tr Ω^n|²/n⁴, entering as a density L^{−4}𝒱.
- Stabilization condition: claim (i), "For suitable choices of the deformation parameters a_n (i.e., each coefficient sufficiently large and positive)" P prevents breaking of Z_N to any subgroup. A single |tr Ω|² term is not sufficient for N > 3 (it allows Z_N → Z_2 with tr Ω² as order parameter); this is why terms up to n = ⌊N/2⌋ are kept. A "simple specific choice ... in the continuum limit and for sufficiently large N" is a_n = 4/(π²n⁴).
- Monopole fugacity: ζ = A m_W³ (g²N)^{−2} e^{−ΔS} e^{−8π²/(Ng²(m_W))}, with m_W = 2π/(NL), A an N-independent O(1) number, and ΔS here the deformation evaluated on the monopole background: "an O(1) number ... whose explicit value depends, of course, on the deformation parameters {a_n}".
- Dual photon mass: m_γ² = A m_W² (2π/(g²N))³ e^{−ΔS} e^{−8π²/(Ng²(m_W))}; the N photon masses are m_p = m_γ sin(πp/N). In terms of Λ (two-loop definition, b_0 = 11/3, b_1 = 17/3): m_γ = Ã Λ (ΛNL)^{5/6} |ln NΛL|^{9/11}. "Relative corrections suppressed by powers of g²(m_W) ∼ 1/|ln NΛL| have, of course, been neglected."
- Regime: the analysis "is reliable provided there is a parametrically large separation of scales" m_W ≫ m_γ, i.e. LNΛ ≪ 1; "the monopole gas is highly dilute and a semiclassical analysis is justified".
- Rigor: the gap and confinement are derived by "a semiclassical analysis (closely related to Polyakov's ...)". The paper says "rigorous" once, for the large-N equivalence argument ("for a rigorous treatment it is appropriate ... to work with lattice regulated formulations"). It does not claim a rigorous proof of the mass gap. The paper does not discuss renormalization of the double-trace operator; the only renormalization discussion concerns the coupling and the Pauli–Villars scale in the monopole measure.

Consequence for the claim: Ünsal–Yaffe give a physics derivation, not a theorem. They do not supply a rigorous gap for the center-stabilized theory.

## 2. Statements R3S1_GAP.md attributes to Ünsal–Yaffe [V against deform.tex]

| # | R3S1_GAP line | Statement | Verdict | Note |
|---|---|---|---|---|
| U1 | 10 | Ünsal–Yaffe 2008, arXiv:0803.0344 | CONFIRMED | Title, authors, year, id correct; PRD 78, 065035. |
| U2 | 28–30 | Double-trace deformation Σ_n a_n|tr Ω^n|², lattice factor (ε/L)³ per spatial site | CONFIRMED | UY lattice form is N_t^{−3} Σ_x P[Ω(x)], N_t = L/a, i.e. exactly (ε/L)³. R3S1 does not state the range n ≤ ⌊N/2⌋; UY need all these terms (see U6). |
| U3 | 30 | One-loop (GPY) potential −(2/(π²L³)) Σ_n |tr Ω^n|²/n⁴ per unit 3-volume | CONFIRMED | UY: 𝒱 = −(2/π²) Σ |tr Ω^n|²/n⁴ with density L^{−4}; the L-integral gives R3S1's form. R3S1 grades it [I]; it can be upgraded to [V]. |
| U4 | 30 | "Ünsal–Yaffe give the condition" for center symmetry at small L | CORRECTED | UY give no sharp threshold. They require "each coefficient sufficiently large and positive", and give one sufficient choice a_n = 4/(π²n⁴), stated "in the continuum limit and for sufficiently large N". At finite N the condition is qualitative. a_n = O(1) (R3S1) is consistent with UY. |
| U5 | 75 | "Ünsal–Yaffe write it for the classical holonomy, which is the renormalized object [I]" | UNSUPPORTED | UY define Ω as the Wilson-line operator and give the lattice deformation in terms of the bare lattice Polyakov loop. They do not discuss renormalization of |tr Ω^n|². Their lattice form is the one R3S1 §2.2 calls strict Theorem B. So UY neither state nor address R3S1's perimeter-renormalization issue (§2.2). That issue is R3S1's own claim [P modulo I], not checked here. |
| U6 | 81 | "Ünsal–Yaffe's argument is insensitive to the form of P[Ω] beyond the GPY threshold [I]" | CORRECTED | No such sentence in UY. The qualitative mechanism needs only claim (i): all a_n, n ≤ ⌊N/2⌋, positive and large enough. A P with only |tr Ω|² fails for N > 3 (UY, explicit). The quantitative output depends on {a_n} through e^{−ΔS} in ζ and m_γ ("whose explicit value depends, of course, on the deformation parameters"). For the non-sharp theorems of R3S1 the corrected statement suffices. |
| U7 | 47, 138 | Gap exponent 4π²/(g²N) = S_0/2, prefactor (g²N)^{−3/2} | CONFIRMED | UY: m_γ² ∝ m_W²(g²N)^{−3}e^{−8π²/(Ng²(m_W))}, so m_γ ∝ m_W (g²N)^{−3/2} e^{−4π²/(Ng²)}. UY take g at m_W = 2π/(NL), not at 1/L; the difference is an O(1) factor at one loop. ζ ∝ (g²N)^{−2} ∝ S_0² matches R3S1's "S_0² e^{−S_0}". |
| U8 | 138 | "consistent with my recollection of Ünsal–Yaffe's Λ(ΛNL)^{5/6}" | CONFIRMED | UY eq. (mgamma): m_γ = Ã Λ (ΛNL)^{5/6} |ln NΛL|^{9/11}. The power 5/6 can be upgraded from [I] to [V]. |
| U9 | 138 | R3S1's own form m_σ ∼ Λ(ΛL)^{5/6}(log)^{3/2} | CORRECTED (not an attribution) | UY print the log power 9/11, not 3/2. UY define Λ with the two-loop factor (Ng²)^{−b_1/b_0}; R3S1's one-loop conversion omits it. My own check: m_γ ∝ m_W (g²N)^{−3/2} e^{−4π²/(Ng²)} with UY's Λ gives (g²N)^{−3/2 + b_1/(2b_0)} = (g²N)^{−8/11}, i.e. |ln|^{8/11}, not 9/11. I do not resolve this 1/11 difference [open; it may come from the e^{−ΔS} or measure factors]. Exponent and power 5/6 agree in all three versions. |
| U10 | 198 | Abstract confirms deformation, center symmetry at small L, mass gap, linear confinement | CONFIRMED [V-abs] | Abstract: for small N on R³ × S¹ at small L "an analytic treatment ... is possible" and "we show that the deformed Yang-Mills theory has a mass gap and exhibits linear confinement". "Show" here means a semiclassical derivation (§1). |
| U11 | 187 | Small parameter g²(1/L); nothing for L ≳ 1/Λ | CONFIRMED | UY regime LNΛ ≪ 1. Note the factor N: UY's condition is on NL, not L. |

## 3. Rigorous literature on the 3d abelian, Polyakov, and Georgi–Glashow models

For each work: what is proved, hypotheses, and whether it gives a gap for the non-abelian Georgi–Glashow (GG) model or for center-stabilized YM (csYM).

| Work | Proved | Hypotheses | GG gap? | csYM gap? | Grade |
|---|---|---|---|---|---|
| Göpfert–Mack, "Proof of confinement of static quarks in 3-dimensional U(1) lattice gauge theory for all values of the coupling constant", CMP 82 (1981/82) 545–606 | String tension > 0 at every coupling; at small coupling an explicit lower bound that decays exponentially in the inverse coupling. Per the abstract (as reported by two search summaries and by hep-lat/0307029), a continuum limit exists and is a free scalar field of mass m_D. | Pure U(1), Villain action, Z³; exact duality to the 3d Z-ferromagnet and to a lattice Coulomb gas. | No (abelian, one charge species, no Higgs, no W bosons). | No. | [I] (abstract via search summaries; full text not reached: Project Euclid served HTML, Springer redirected to login). |
| Glimm–Jaffe, Phys. Lett. B (1977), "quark trapping" for lattice U(1) | Confinement in 3d U(1) with a logarithmically growing potential. | U(1), 3d lattice. | No. | No. | [I] (as described in Chatterjee 2602.00436 §3) |
| Fröhlich, Phys. Lett. B (1979), title as cited by Chatterjee ends "...SU(n) lattice Higgs theories" | Via a comparison inequality (Messager–Miracle-Sole–Pfister), "U(n) lattice gauge theory confines whenever the corresponding U(1) theory does". | Gauge groups with a central U(1); pure gauge in Chatterjee's account. | No: SU(N) has only Z_N center; adjoint Higgs not treated. | No. | [I] |
| Chatterjee, "A short proof of confinement in three-dimensional lattice gauge theories with a central U(1)", arXiv:2602.00436 (Jan 2026, v2 Jun 2026) | |⟨W⟩| ≤ n·exp{−c(1+nβ)^{−1} T log(R+1)} for R × T loops: logarithmic confinement, all β. Calls itself a short proof of a known result. States that non-abelian rigorous confinement results "are comparatively scarce". | 3d Wilson action, pure gauge, G ⊆ U(n) containing all scalars zI. | No (excludes SU(N); no Higgs; log potential, not area law; no mass gap). | No. | [V-abs] + intro via WebFetch summary |
| Brydges, "A rigorous approach to Debye screening in dilute classical Coulomb systems", CMP 58 (1978) 313–350 | Existence and exponential clustering of correlations. | Classical Coulomb gas, dilute (low density); sine-Gordon transform + Glimm–Jaffe–Spencer expansion. | No (a gas of point charges, not a gauge theory). Needed as an input to any Polyakov-mechanism proof. | No. | [I] |
| Brydges–Federbush, "Debye screening", CMP 73 (1980) 197–246 | "Existence and exponential clustering of correlation functions for a classical Coulomb system at low density or high temperature". | Continuum classical Coulomb systems with a broad class of short-range forces. | No (same remark). | No. | [V-abs] (U. Michigan Deep Blue record, via search summary) |
| Imbrie, "Debye screening for jellium and other Coulomb systems", CMP 87 (1982/83) | Debye screening for jellium and related systems. | Classical Coulomb systems. | No. | No. | [I] (title only) |
| Fröhlich–Spencer, "Massless phases and symmetry restoration in abelian gauge theories and spin systems", CMP 83 (1982) 411–454 | Deconfining transition to a massless (QED) phase in 4d U(1); intermediate phase in 4d Z_N, N large; phase transition in d ≥ 3 XY and in 3d/4d abelian Higgs models. | Abelian groups only. | No. Abelian; and 3d U(1) has no massless phase (Göpfert–Mack). | No. | [V-abs] via search summary |
| Fröhlich–Spencer, "The Kosterlitz–Thouless transition in two-dimensional abelian spin systems and the Coulomb gas", CMP 81 (1981) 527 | KT transition in 2d. | 2d abelian. | No. | No. | [I] (recollection) |
| Balaban–Brydges–Imbrie–Jaffe, "The mass gap for Higgs models on a unit lattice", Ann. Phys. 158 (1984) 281–319 | Mass gap of the Higgs mechanism at weak coupling (exponential decay of gauge-invariant correlations). | ABELIAN Higgs model, unit lattice; compact/noncompact isomorphism. | No: abelian, Higgs (not confining) phase. | No. | [V-abs] via search summary |
| Osterwalder–Seiler, Ann. Phys. 110 (1978) 440–471; Fradkin–Shenker (1979) | Convergent cluster expansion (gap) at strong coupling and in a region of the Higgs phase; complementarity. | Higgs field in a representation that breaks the gauge group completely (e.g. fundamental). | No: an adjoint Higgs breaks SU(2) only to U(1); the unbroken U(1) carries the photon, so the Higgs-region expansion does not apply. | No. | [I] (the representation condition is my recollection; the search confirmed only the fundamental-representation case) |
| Nair, "Towards a proof of mass gap in 3d Yang–Mills theory", arXiv:2608.10133 (Aug 2026) | "Outlines of a proof" via an eigenvalue inequality for the Laplacian on the gauge-invariant configuration space. | Pure 3d YM, Hamiltonian. | No (pure YM; outline only; no claim of a complete proof). | No. | [V-abs] |

Searches with no positive hit (2026-10-28): "rigorous proof mass gap confinement three-dimensional Georgi-Glashow model adjoint Higgs lattice"; "rigorous Debye screening dual photon mass Polyakov model compact QED3"; "rigorous center-stabilized Yang-Mills R^3 x S^1 mass gap proof". The hits were physics papers (Polyakov's semiclassics, lattice Monte Carlo, Gribov-horizon studies, e.g. hep-lat/0110154, arXiv:1210.4734) and unrefereed claims (OSF / Zenodo / PhilArchive "solutions"), none a rigorous GG or csYM result.

## 4. Verdict on the claim

Claim: no rigorous proof exists of the mass gap of the 3d Georgi–Glashow / Polyakov model, nor of center-stabilized YM on R³ × S¹ (or its dimensionally reduced theory).

Verdict: CONFIRMED [I], with one correction of scope.
- Center-stabilized YM: CONFIRMED. The source paper (Ünsal–Yaffe) is semiclassical by its own description, with neglected O(g²(m_W)) corrections [V]. No rigorous follow-up was found [I: search-based].
- Non-abelian 3d Georgi–Glashow: CONFIRMED [I]. No rigorous gap or area law was found. The existing non-abelian 3d results (Fröhlich 1979; Chatterjee 2602.00436) need a central U(1), give only a logarithmic potential, and treat pure gauge theory. Higgs-phase cluster expansions (Osterwalder–Seiler) need complete breaking, which the adjoint Higgs does not give. Debye-screening theorems (Brydges, Brydges–Federbush, Imbrie) concern Coulomb gases, not the gauge theory.
- Scope correction (CORRECTED). "The 3d theory" must mean the non-abelian model. The abelian Polyakov model has rigorous results: Göpfert–Mack prove confinement for 3d U(1) Villain at all couplings, and per their abstract a continuum limit that is a free scalar of mass m_D [I]. This is a rigorous form of the Polyakov mechanism (dual Coulomb gas plus Debye screening) for the abelian lattice model. R3S1 line 178 states this correctly ("non-abelian"), and R3S1 §4.1 uses Göpfert–Mack as input.
- An absence claim can only be graded by search. Three targeted searches and the literature reviews in Chatterjee 2602.00436 found no counterexample. The grade stays [I].

Side findings for R3S1_GAP.md.
- R3S1 §4.1 says it "cannot confirm" whether Göpfert–Mack state the dual-field mass. The abstract, as reported by search summaries, says the continuum limit is a free scalar of mass m_D. This supports input [C5] at the level [I]. A full-text check is still open.
- Upgrades available: U3 and U8 from [I] to [V].
- Corrections: U4, U6 (the condition is "each a_n sufficiently large and positive, n ≤ ⌊N/2⌋", not a printed threshold or an insensitivity statement), U5 (UY do not address operator renormalization), U9 (log power).

Open items.
1. Göpfert–Mack full text: confirm the mass-gap / m_D statement and the constants c_0 needed in R3S1 [C4].
2. The 9/11 vs 8/11 log power (U9).
3. Osterwalder–Seiler: confirm from the text that the Higgs-region expansion needs complete breaking.

Download folder /tmp/gaplit_dl deleted at the end of the session.
