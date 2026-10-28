# MASS_GAP_VERIFY (independent check, 2026-10-27)

Firewall: did not read /tmp/sa_repo or SUSSMAN_ALPOGE_MAP.md.

## T3 grep of balaban/*.txt (local)
- "mass gap": 1 hit, CMP 109 bibliography ref. 30 (Feldman–Osterwalder). "confine": 3 hits, all Wilson 1974 title in bibliographies (CMP 98, 102, 109). "infrared": 2 hits in CMP 109 (line 63 history of φ⁴₄; line 2572 FMRS bibliography title). Word "gap": only the ref-30 line.
- Survey says "infrared occurs once"; it occurs twice (second is a bibliography title). Conclusion unchanged: no gap/confinement remark. CONFIRMED (minor count fix).

## T6 CMP 122 II p. 389 (text layer lines 1745–1750)
- Printed: "We assume that g_k is so small that −2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k) (for example, take β_0 = 1/7, then this means that −(1/4)p_0(g_k) + 1 + 2κ(100R_k)^d ≤ 0 ...)". OCR shows "- f po"; the 3/2 is fixed by the printed β_0 = 1/7 rewrite: −7/4 + 3/2 = −1/4.
- Arithmetic, d = 4, R_k ≥ 1: β_0 = 1/7 gives p_0 ≥ 4 + 8κ·10⁸. β_0 → 0 gives (−2 + 3/2)p_0 = −p_0/2, so p_0 ≥ 2 + 4κ·10⁸. The factor 2 is the β_0 choice, not an error. Report reading CONFIRMED.

## T7 ε_K and R_K (CMP 119 p. 255, rendered page image)
- Printed (2.4): "ε_j = g_j A_0 (log g_j^{−2})^{p_0} = g_j p_0(g_j)". p_0 (exponent) is "a positive integer" (CMP 119 line 70).
- Printed (2.5): "R_j is the smallest number of the form L^r such that R_j ≥ (log g_j^{−2})^r." [OCR exponent letter; image shows r on both]
- No printed "ε < 2". It is an inference: ‖U − 1‖ ≤ 2 for unitary U, so ε ≥ 2 makes the small-field condition vacuous (every field small), not "empty". The construction needs the small-field expansion to hold for all U, which fails. Inference is sound as a necessary condition; wording "cut is empty" is wrong.
- Tightening the report missed: R_K ≥ (log g_K^{−2})^r, not just R_K ≥ 1. Self-consistent solve of g·(4κ(100R(g))⁴+2) < 2, κ = 1: r = 1 gives g ≤ 1.8e−16 (R ≈ 73, no L-rounding) or 6.1e−18 (L = 13, R = 169). r = 2 gives ~1e−25. So γ_max ≤ 5e−9/κ is valid but loose by ≥ 7 decades.
- Normalization chain (report §0): Balaban (1/g_B²)Σ(1 − Re tr̂U), tr̂ = tr/N. Wilson (β_W/N)Σ Re Tr U ⇒ β_W/N = 1/(N g_B²)… see T1 for the explicit check.

## T1 SZZ 2204.12737 (arXiv HTML)
- Action (HTML eq. 1.2, survey says 1.1; label only): "Nβ Re Σ_{p∈P⁺} Tr(Q_p)". Abstract: SU(N) |β| < 1/(16(d−1)); SO(N) |β| < (N−2)/(32(d−1)N); "the infinite volume measure has a strictly positive mass gap". Intro: "the existence of a mass gap (exponential clustering) follows from convergence of the cluster expansion". CONFIRMED.
- Conventions. (W) Wilson: S = (β_W/N) Σ Re Tr U_p, β_W = 2N/g². (SZZ): S = Nβ Σ Re Tr. Match coefficients: β_W/N = Nβ ⇒ β_W = N²β.
- d = 4: β < 1/48. SU(2): β_W < 4/48 = 1/12 = 0.0833, g² > 2N/β_W = 48. SU(3): β_W < 9/48 = 3/16 = 0.1875, g² > 6/(3/16) = 32. Survey arithmetic CONFIRMED.
- Balaban: (1/g_B²) Σ [1 − Re tr̂ U], tr̂ = Tr/N (the "1 −" forces normalized trace, CMP 119 line 71). Coefficient of Re Tr: 1/(N g_B²) = β_W/N ⇒ β_W = 1/g_B², g_std² = 2N g_B². SU(2): g_std = 2g_B. Unit-scale report §0 CONFIRMED.

## T2 CNS 2509.04688 (abstract page + PDF pp. 1–3)
- Def. 1.4: β*_SU(N) = β*_U(N) = 1/(8(d−1)); β*_SO(N) = 1/(16(d−1)) − 1/(8N(d−1)). Remark 1.5: SZZ threshold "is half the threshold in the current paper", because they "apply Bakry-Emery theory to a spin system defined on vertices" while SZZ apply it to edges. Thm 1.6: area law |⟨W_ℓ⟩| ≤ C exp(−c area) for β < β*_G. Abstract: main step is "the mass gap condition from [DF80]".
- So the doubled threshold applies to the DF80 (d−1)-dim vertex σ-model gap, hence area law. It is not a YM mass-gap theorem. Survey CONFIRMED.

## T3b MRS 1993 (web search + mp_arc 92-38 TeX)
- Exact: J. Magnen, V. Rivasseau, R. Sénéor, "Construction of YM₄ with an infrared cutoff", Commun. Math. Phys. 155 (1993) 325–383, DOI 10.1007/BF02097397 (Project Euclid). The brief's "infinite volume cutoff" title is wrong; the survey's title is right.
- Both quotes ("we do not try to lift the infrared cutoff ... no easy solvable model of these phenomenons around which to expand"; "we cannot study the complete set of Osterwalder-Schrader's axioms, also because we do not lift our fixed infrared cutoff") found verbatim in the TeX. CONFIRMED.

## T4 spot-check of two [mem] items
- Osterwalder–Seiler, Ann. Phys. 110 no. 2 (1978) 440–471: confirmed in local chatterjee.txt ref. [72]. Tag can be [sec].
- Chatterjee SO(N) large N (arXiv 1502.07719 abstract): "rigorous computation of Wilson loop expectations in strongly coupled SO(N) lattice gauge theory in the large N limit, in any dimension ... explicit gauge-string duality". Content confirmed; volume "CMP 366 (2019)" not confirmed (local ref says "To appear in Comm. Math. Phys.").

## T5 Chatterjee papers (arXiv API abstracts)
- 1811.09770 "Wilson loops in Ising lattice gauge theory": 4D Z₂, "computed to leading order in the weak coupling regime". Weak coupling: survey CONFIRMED.
- 2006.16229 "A probabilistic mechanism for quark confinement": unbroken center symmetry ⇒ confinement; sufficient condition: "center of the gauge group is nontrivial, and correlations decay exponentially under arbitrary boundary conditions". Survey states the hypothesis as "exponential decay of correlations (a lattice mass gap)". CORRECTED: the hypothesis is decay uniform over arbitrary boundary conditions, stronger than a lattice mass gap. Table D4 should say the same.
- Neither is 3D-specific. Survey's 3D bottom line stands.

## T6b Clay quotes (local clay_ym.txt): problem statement, gap definition, and "uniform gap for finite-volume approximations" found verbatim. §6 CONFIRMED.

## T8 window ratio (SU(2), Wilson β_W = 4/g_std² = 1/g_B²)
- β_c (proved-gap edge) = 1/12 = 0.0833, SZZ 2204.12737 (T1). This is a sufficient radius, not the true convergence radius.
- Balaban γ is in g_B units (report §0). So β_eff ≥ 1/γ², NOT 2N/γ²; 2N/γ² double-counts the factor 2N.
- γ_max = 5e−9 (κ = 1, R_K ≥ 1): β_eff ≥ 4.0e16. Ratio = 4.0e16 × 12 = 4.8e17.
- Tightened by R_K ≥ log g^{−2} (r = 1, L = 13, κ = 1): γ_max ≤ 6.1e−18, β_eff ≥ 2.7e34, ratio 3.2e35.
- Unit-scale report used β_c ≈ 0.04 (memory) and stated ratio ≥ 1e18; sourced value gives 4.8e17 at the same γ. CORRECTED by a factor ~2.
- Survey §7.2 uses β_eff = 2N/γ² with γ = 1 ⇒ 4 (SU(2)), 6 (SU(3)). With g_B units it is 1/γ² = 1, so window factor ≥ 12 (SU(2)), ≥ 5.3 (SU(3)), not 48 and 32. Survey's own [INF] caveat applies. CORRECTED.

## T9 inference links
- (C) CMP 116 line 986: "We assume that (LM)⁴α_0, (LM)⁴α_1, (LM)⁴α_4, (LM)⁴γ_2 are bounded by a constant independent of M, for example by 1." So α_0 ≤ c(LM)^{−4} with c a free O(1) constant. In CMP 116, α_0 is a radius of the analyticity domain U_{k+1}(·, α_0, α_1) of the small-field quantities. ε_K ≤ α_0 requires that every ε-small-field configuration lie in that domain. Plausible; not shown line by line. UNSUPPORTED (order (LM)^{−4} plausible, constant free).
- (D) Sets unprinted C_2, E_0, C_1 to 1 and calls this "most favourable". That is not shown: if C_2 < 1 is allowed, e^{−C_2κ_1} is larger. κ_1 = 8κ + 1 ignores δ in ⅛(κ_1 − 1) ≥ (1 − 3δ)κ. At κ = 1 most of the 1e−60 comes from printed M-powers (13^{−48} ≈ 1e−53.5), so the order is robust there; at κ ≥ 4 the e^{−5κ−C_2κ_1} factor dominates and is unprinted. UNSUPPORTED as a number; I did not read SOURCES_W4/GGAIN.

## Grades
Survey: §1 CONFIRMED (eq. label 1.2 not 1.1). §2 CONFIRMED ("infrared" 2 hits, not 1). §3 CORRECTED (Chatterjee 2021 hypothesis). §4 CONFIRMED for DF80 only; rest not checked. §5 CONFIRMED for MRS quotes; Tomboulis/Faizal not checked. §6 CONFIRMED. §7 CORRECTED (2N/γ² vs 1/γ²).
Unit-scale: §0 CONFIRMED. §1 (A)+(B) CORRECTED (reading right; ε < 2 is inference, "vacuous" not "empty"; R_K ≥ (log g^{−2})^r tightens to ~6e−18); (C), (D) UNSUPPORTED. §2 CORRECTED (β_c sourced = 1/12; Münster cite conflicts with survey: B180 (1981) 23 vs B190 (1981) 439). §3 CORRECTED (ratio 4.8e17). §4 CORRECTED (minor: R_K is a power of L by (2.5), so (A) depends on L once R_K > 1).
Searches used: 1 of 10. Downloads in /tmp/mgv deleted.
