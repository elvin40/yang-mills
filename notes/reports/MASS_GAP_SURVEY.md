# Mass-gap mechanisms in 4D non-abelian gauge theory: literature survey

Date: 2026-10-27. Side quest to the Theorem 2 work. Firewall kept: I did not read /tmp/sa_repo or SUSSMAN_ALPOGE_MAP.md.

Honesty tags: **[abs]** = read abstract only. **[sec]** = read the relevant section or verbatim text. **[mem]** = known from training, unverified in this session. **[INF]** = my inference.

Normalization used throughout: Wilson action S = (β_W/N) Σ_p Re Tr U_p with β_W = 2N/g². For SU(2), β_W = 4/g². For SU(3), β_W = 6/g².

---

## 1. Strong coupling: character / cluster expansions

### 1.1 Osterwalder–Seiler 1978
- Citation: K. Osterwalder, E. Seiler, "Gauge field theories on a lattice", Ann. Phys. 110 (1978) 440–471. [mem for the journal data; cited as [72] in Chatterjee 1803.01950, read locally]
- Proved: for any compact gauge group and any d, at sufficiently small β, the cluster expansion converges uniformly in volume. This gives (a) a positive self-adjoint transfer matrix (reflection positivity of the Wilson action, valid at all β), (b) exponential clustering of local gauge-invariant observables, that is, a lattice mass gap in lattice units, and (c) the Wilson-loop area law. Source of (a)–(c): Chatterjee 1803.01950 §6 [sec, local reports/chatterjee.txt lines 527–530] and Shen–Zhu–Zhu 2204.12737 introduction ("the existence of a mass gap (exponential clustering) follows from convergence of the cluster expansion") [sec].
- Radius: I found no clean number for the OS78 radius in any source I could access. Cao–Nissim–Sheffield 2505.16585 (Fig. 1 caption) characterize it only as "β ≪_d 1/N", i.e. β ≤ c(d)/N in their normalization (Nβ Re Tr), with c(d) a "small dimensional constant" [sec, PDF pp. 1–3]. [mem] Seiler, LNP 159 (1982), gives the expansion in detail; I did not obtain it and cannot quote a number from it.
- Gap to Clay: the gap is in lattice units at fixed β. Its physical value m_phys = m_lat/a. As a → 0 asymptotic freedom forces β_W → ∞, so the bare coupling leaves the convergence region after finitely many refinements. No continuum statement follows. Chatterjee 1803.01950 §6: "None of the above techniques, however, help in constructing the continuum limit." [sec]

### 1.2 Münster 1981
- Citation: G. Münster, "Strong coupling expansions for the mass gap in lattice gauge theories", Nucl. Phys. B190 (1981) 439–453; addendum B200 (1982) 536; erratum B205 (1982) 648. [abs, via INSPIRE record 164289]
- Content: strong-coupling series for the mass gap in any d, to order g⁻¹⁶, for SU(2), SU(3), Z₂, Z₃. Glueball masses in the continuum are estimated "assuming a sudden crossover from strong to weak coupling behavior" [abs, paraphrase].
- Status: a series computation, not a convergence theorem with a stated radius. The continuum estimate rests on an unproved crossover assumption. This is the "two regimes do not meet" obstruction stated as an assumption (see §5).

### 1.3 Best published explicit radius: Shen–Zhu–Zhu (stochastic analysis / Bakry–Émery)
- Citation: H. Shen, R. Zhu, X. Zhu, "A stochastic analysis approach to lattice Yang–Mills at strong coupling", CMP (2023), arXiv 2204.12737. [sec: abstract and §1.1]
- Normalization: S(Q) = Nβ Re Σ_{p∈P⁺} Tr(Q_p) (eq. 1.1). So β_W = N² β_SZZ and β_SZZ = 2/(N g²).
- Proved: for SU(N), |β_SZZ| < 1/(16(d−1)); for SO(N), |β| < (N−2)/(32(d−1)N): the infinite-volume measure is unique, finite-volume measures converge to it, log-Sobolev and Poincaré inequalities hold, and "correlations of a large class of observables decay exponentially, namely the infinite volume measure has a strictly positive mass gap." The threshold is uniform in N in 't Hooft scaling.
- Numbers in d = 4: β_SZZ < 1/48. In Wilson normalization:
  - **SU(2): β_W = 4/g² < 4/48 = 1/12 ≈ 0.083, i.e. g² > 48.**
  - **SU(3): β_W = 6/g² < 9/48 = 3/16 = 0.1875, i.e. g² > 32.**
- Related: Cao–Nissim–Sheffield, "Dynamical approach to area law for lattice Yang–Mills", arXiv 2509.04688 [sec, Def. 1.4, Remark 1.5, Thm 1.6]. Same normalization. They prove a uniform mass gap for the associated σ-model (Prop. 3.2) at β < β*_SU(N) = 1/(8(d−1)) — twice the SZZ threshold — and deduce the area law via Durhuus–Fröhlich 1980. They state that the doubling comes from applying Bakry–Émery to a vertex spin system. This is a σ-model gap, not a YM mass gap, so it does not enlarge the YM-gap radius. [INF from the text: the YM-gap theorem they cite remains SZZ's.]
- Cao–Nissim–Sheffield 2505.16585 [sec, Thm 1.2]: area law for U(N) for β ≤ β₀(d) uniform in N. β₀(d) is not explicit. Area law only, no mass gap claim.
- Gap to Clay: identical to §1.1. Lattice units, fixed β, no continuum. The radius is about 30 times below the β_W used in lattice scaling studies (SU(2) ≈ 2.3–2.9, SU(3) ≈ 5.7–6.5) [mem for these scaling windows].

---

## 2. The small-coupling (UV) side: Balaban, MRS, Dimock

### 2.1 Balaban, CMP 95–122 (1984–1989)
- Grep of the local text layers balaban/*.txt for "mass gap", "confinement", "infrared" [sec]:
  - "mass gap" occurs only in the bibliography of CMP 109 (ref. 30, Feldman–Osterwalder on weakly coupled P(φ)₂).
  - "confinement" occurs only as the title of Wilson's 1974 paper in the bibliographies of CMP 98, 102, 109.
  - "infrared" occurs once, in CMP 109's history of the phase-space method ("the infrared renormalizable and asymptotically free critical (φ⁴)₄ model").
  - So Balaban makes **no remark on the mass gap or confinement** anywhere in the series.
- Where the RG stops, CMP 109 p. 256 [sec]: "We continue the calculation of the effective actions until we reach the unit lattice, or rather until we reach a scale which we define as the unit scale. Let us denote the corresponding index by K, hence ε = L^{−K}".
- Main theorem, CMP 122 (large field renormalization II), Introduction [sec]: "Theorem 1. If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective densities ρ_k have the form, and satisfy all the conditions and bounds, described in Sect. 2 [III]." The consequence is the UV stability bound exp(−E₋|T_η|) ≤ … ≤ exp(E₊|T_η|) with constants independent of k.
- Balaban's own outlook, same page [sec]: Theorem 1 "is the basis for many other applications, for example, for an analysis of expectation values of physical observables, like loop variables, averaged loop variables, etc. These problems are very important for construction of the four-dimensional gauge field theories, and they deserve detailed analysis and further publication." Also: Theorem 2 of [I] (removal of the coupling assumption) "has not been published yet".
- Proved: UV stability of the partition function of 4D pure lattice YM on a fixed torus, uniform in the lattice spacing, conditional on the effective couplings staying in ]0, γ]. No observables, no infinite volume, no gap.
- Gap to Clay: the construction ends at the unit scale with a small coupling g_K ≤ γ. γ is not given as a number. Nothing in the series addresses scales beyond the unit scale, where the running coupling grows.

### 2.2 Magnen–Rivasseau–Sénéor 1993
- Citation: J. Magnen, V. Rivasseau, R. Sénéor, "Construction of YM₄ with an infrared cutoff", CMP 155 (1993) 325–383; preprint mp_arc 92-38. [sec: TeX source, Introduction and §II.A]
- Proved: Schwinger functions of pure SU(2) YM in d = 4, trivial topological sector, no UV cutoff, with a fixed infrared cutoff, in a regularized axial gauge (axial gauge for large fields, a different gauge for small fields). Slavnov identities are checked non-perturbatively. Non-gauge-invariant field A.
- The cutoff: "This cutoff may be imposed on the propagator, or we could consider the theory on a finite volume with some boundary conditions, or on the sphere S⁴, the torus … The constant fields or the zero mode in Fourier space is deleted in all our functional integrals, hence there is no infrared problem." [sec]
- Why it is not removed, verbatim [sec]: "we do not try to lift the infrared cutoff, since this would lead to large values of the coupling constant, and presumably to so called non-perturbative effects corresponding to confinement. These problems are for the moment still out of the realm of our constructive methods, especially because there is no easy solvable model of these phenomenons around which to expand." Also: "we cannot study the complete set of Osterwalder-Schrader's axioms, also because we do not lift our fixed infrared cutoff."
- Gap to Clay: finite volume / IR-regularized; no gap, no full OS axioms, gauge-variant field, one group.

### 2.3 Dimock's Balaban-method papers
- Dimock, "The renormalization group according to Balaban" I (small fields) arXiv 1108.1335, II (large fields) 1212.5562, III (convergence) 1304.0705. [abs, via local YM_GAPS.md and arXiv listing] Model: scalar φ⁴ in d = 3, not gauge theory. Proved: UV stability / convergence for φ⁴₃ on a finite torus, an expository rebuild of Balaban's method.
- Dimock, QED in d = 3: "Ultraviolet regularity for QED in d=3" arXiv 1512.04373; "Multiscale block averaging for QED in d=3" 1712.10029; "Ultraviolet Stability for QED in d=3" 2009.01156; overview 2204.07201. [abs] Abelian gauge field with fermions, d = 3, superrenormalizable. 2009.01156: "The main result is an ultraviolet stability bound in a fixed finite volume." [sec, quoted in local YM_GAPS.md]
- Also Dimock, "Nonperturbative renormalization of scalar QED in d=3" arXiv 1502.02946 [abs, title only].
- Gap to Clay: no paper in this line treats a non-abelian gauge group, d = 4, infinite volume, or a gap. The arXiv author listing (checked 2026-10-27) shows no Dimock paper on non-abelian YM.

---

## 3. 2+1 dimensions

- Balaban, "Ultraviolet stability of three-dimensional lattice pure gauge field theories", CMP 102 (1985). [sec, local text exists; cited by Jaffe–Witten as [2]] Proved: UV stability for 3D pure lattice gauge theory on a periodic torus, uniform in the spacing. Superrenormalizable. No observables, no infinite volume, no gap.
- Aronow–Lopatto, "The continuum limit of three-dimensional SU(2) lattice Yang–Mills theory on a torus" (GitHub manuscript, 2026-10-17). [abs, via local ONLINE_SWEEP.md §3.2] Machine-written; README says the proof is beyond the authors' own checking. Torus only. No gap claim. Not peer reviewed.
- Chandra–Chevyrev–Hairer–Shen, "Stochastic quantisation of Yang–Mills–Higgs in 3D", arXiv 2201.03487. [abs] Proved: a state space of gauge orbits and local-in-time solutions of the renormalized stochastic YMH flow, gauge covariant in law. No invariant measure is constructed in 3D. No gap.
- Strong-coupling lattice results hold in every d, so also in d = 3: OS78; SZZ 2204.12737 at β_SZZ < 1/(16·2) = 1/32 for SU(N) [sec]. Lattice units only.
- Abelian 3D: Göpfert–Mack, CMP 82 (1982) 545: area law (confinement of static charges) for 3D U(1) Villain lattice gauge theory at all β [mem; the all-β area-law statement is confirmed by Chatterjee 1803.01950 and Cao–Nissim–Sheffield 2505.16585 intro, sec]. Mechanism: Polyakov monopole plasma / Debye screening. It is abelian; the continuum limit at fixed physical scale is expected to be a free photon [mem], so it gives no non-abelian continuum gap.
- Chatterjee's lattice gauge results, stated precisely:
  - "Rigorous solution of strongly coupled SO(N) lattice gauge theory in the large N limit", CMP 366 (2019): Wilson-loop expectations at strong coupling as N → ∞ via a master loop equation, gauge–string duality picture [mem; the strong-coupling large-N content is confirmed in 1803.01950 §6, sec].
  - "Wilson loops in Ising lattice gauge theory", CMP 377 (2020): Z₂ in d = 4 at **weak** coupling (large β), leading-order Wilson-loop asymptotics (perimeter-type behavior) [mem].
  - "A probabilistic mechanism for quark confinement", CMP 385 (2021), arXiv 2006.16229: if a lattice gauge theory with compact connected group with nontrivial center has exponential decay of correlations (a lattice mass gap) at a given β, then it confines at that β [abs, via search summary]. This is a conditional theorem: gap ⇒ confinement, not a gap proof.
  - None of these is a continuum statement and none is 3D-specific. So the task's description is correct for the SO(N) work and needs a correction for the Ising work (which is at weak coupling). [INF]
- Bottom line for 3D: no rigorous mass gap for any non-abelian continuum gauge theory in 2+1 dimensions. Only lattice-unit strong-coupling gaps and an abelian all-β area law.
