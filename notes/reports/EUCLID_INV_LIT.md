IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# Euclidean (rotation) invariance of lattice-regularized constructive QFT: literature check

Date: 2026-10-27. Scope: literature only, no derivations. Tags: [quoted] = verbatim text read from the primary source (or a named secondary source) during this check; [inference] = my reading, not stated in the source; [not found] = searched, no source located.
Local copies of the PDFs and text dumps: /tmp/oai_oct26/euclid_dl/.

## 1. Phi^4_3

### 1a. Gubinelli–Hofmanova, arXiv:1810.01700 (v4, 7 Jan 2021); Comm. Math. Phys. 384 (2021) 1–75
- Approximation: periodic lattice (eps Z / M Z)^3, stochastic quantization on the lattice, limit eps -> 0, M -> infinity along subsequences.
- Theorem 1.1 [quoted]: "Every accumulation point nu is translation invariant, reflection positive and non-Gaussian" (plus a stretched-exponential integrability bound (1.2)).
- Abstract [quoted]: these properties "allow to verify the Osterwalder–Schrader axioms for a Euclidean QFT apart from rotation invariance and clustering."
- Section 5 checks OS axioms. Subsections: 5.1 distribution property, 5.2 translation invariance, 5.3 reflection positivity, 5.4 non-Gaussianity. OS1 is stated with the full group R^3 x O(3) (eq. after (5.1)) but is not proved for O(3). [quoted section titles; inference that O(3) part is not proved follows from the abstract]
- Why the lattice [quoted, Sec. 1]: they "start from finite volume lattice Gibbs measures for which RP can be established by elementary arguments."
- Introduction, comparison with Brydges–Frohlich–Sokal [BFS83, CMP 91 (1983) 141–186] [quoted]: "Both works construct the continuum Phi^4_3 theory as a subsequence limit of lattice theories and the rotational invariance remains unproven."
- Open problem [quoted]: "the main open problem is to establish rotational invariance and to give more information on the limiting measures, in particular to establish uniqueness for small lambda."
- History [quoted]: the OS axioms were verified "for lambda small and using cluster expansion methods, independently by Feldman and Osterwalder [FO76] and by Magnen and Seneor [MS76]"; and "apart from the Glimm–Jaffe–Feldman–Osterwalder–Magnen–Seneor result, none of the additional constructions seems to be as complete and to verify explicitly all the OS axioms."
- They cite "the work of Watanabe on rotation invariance [Wat89] via the renormalization group method of Gawedzki and Kupiainen" [quoted]. Reference: H. Watanabe, "Block spin approach to phi^4_3 field theory", J. Stat. Phys. 54 (1989) 171–190, doi:10.1007/BF01023477. I did not read Watanabe's paper; its mechanism is unknown to me. [not found: full text]

### 1b. Older continuum-cutoff constructions (Glimm–Jaffe, Feldman–Osterwalder, Magnen–Seneor)
- Summers, "A Perspective on Constructive QFT", arXiv:1203.3991, Sec. 3 (secondary) [quoted]: the cutoff covariance is C_kappa(x-y) = (2pi)^-3 ∫ e^{ik(x-y)} eta(k/kappa)/(k^2+m0^2) d^3k, "where eta is a smooth function of compact support taking the value 1 in a neighborhood of the origin"; FO and MS "have independently shown that for sufficiently small lambda/m0^2 the corresponding Schwinger functions converge as kappa -> infinity, Lambda -> R^3, to Schwinger functions satisfying the Osterwalder–Schrader axioms".
- [inference] With a radial eta the cutoff is rotation invariant, so rotation invariance survives in the limit by construction. The price: reflection positivity is not automatic for a momentum cutoff and needs separate work (e.g., Glimm–Jaffe use a lattice or other RP-preserving approximation for positivity, then compare). I did not verify the exact way FO/MS obtained RP.
- Albeverio–Kusuoka, arXiv:2102.08040 (v3) [quoted, Sec. 1]: for the BFS lattice limit, "For the full Euclidean invariance on this weak coupling limit an identification with the construction by cluster expansion methods is needed to be applied, which is obtained in the cases of some approximations". Park's lattice papers do this identification: Y. M. Park, "Lattice approximation of the (lambda phi^4 - mu phi)_3 field theory in a finite volume", J. Math. Phys. 16 (1975) 1065–1075; Park, "Convergence of lattice approximations and infinite volume limit in the (lambda phi^4 - sigma phi^2 - tau phi)_3 field theory", J. Math. Phys. 18 (1977) 354–366. [titles quoted; content not read]

### 1c. Albeverio–Kusuoka, arXiv:2102.08040 (2021/2022)
- Regularization: space cutoff rho_M and momentum cutoff psi_N on the interaction, no lattice, no torus. Theorem 1.2(i) [quoted]: "If the functions psi and rho ... are chosen to be radially symmetric, then mu is rotation and reflection invariant". Proof (Sec. 7.1) [quoted]: "we are able to prove mu_{M,N} is rotation invariant if psi and rho are radial".
- Trade-off [quoted]: "we keep the rotation invariance all the way along, as opposite to Gubinelli and Hofmanova", but "we do not discuss here translation invariance". Identification with the lattice construction is "left for future investigations" [quoted].
- [inference] This shows the symmetric dilemma: a lattice gives RP plus translations, a radial continuum cutoff gives rotations; neither alone gives all of OS1–OS2.

### 1d. Duch–Hairer–Yi–Zhao, arXiv:2508.07776 (Aug 2025), "Ergodicity of infinite volume Phi^4_3 at high temperature"
- This is the first lattice-anchored proof in the stochastic quantization line that gives full Euclidean invariance. Abstract [quoted]: the measure is "the unique invariant measure of the dynamic", and they "prove that it satisfies all Osterwalder–Schrader axioms, including invariance under translations, rotations, and reflections, as well as exponential decay of correlations." Only small coupling lambda in (0, lambda*].
- Lit review [quoted]: "In [GH21, DGR24] the authors proved the tightness of lattice approximation to the Phi^4_3 measure and the OS axioms of every accumulation point except for the rotation invariance and the clustering properties."
- Mechanism, Theorem 2.18 and proof [quoted]:
  - Eq. (2.8): the infinite-volume solution map is equivariant in law, Phi(rho.phi; t) =law rho.Phi(phi; t), "for all elements rho of the Euclidean group R^3 ⋊ O(3)".
  - Remark 2.8: "all subsequential limits of (mu_l) are invariant under P_t" and "the Markov semigroup P_t is covariant under the action of the Euclidean isometry group."
  - Uniqueness: |mu(F) - mu~(F)| ≲ exp(-t/3), "yielding mu = mu~."
  - Conclusion: "since (P_t) is covariant under Euclidean isometries, mu is invariant under these transformations."
  - RP: "By Lemma 2.19 and the convergence of mu_l to mu, mu is also reflection positive." Lemma 2.19: the lattice measures on T^3_{eps,l} converge as eps -> 0 to the continuum torus measure mu_l, which "is reflection positive"; convergence "follows from [HM18a, Proposition 7.8] or [HS22b, Theorem 2.2], but has been known since [Par75]."
- [inference] Architecture: (i) lattice gives RP; (ii) a lattice-to-continuum identification on each finite torus (Park 1975 / Hairer–Matetski) moves RP to a continuum object; (iii) a rotation-covariant continuum characterization (the SPDE) with a uniqueness theorem forces every limit point to be rotation invariant. Rotation invariance comes from uniqueness plus covariance of the limiting equation, not from a lattice estimate.
- Same mechanism for P(Phi)_2: Duch–Dybalski–Jahandideh, Ann. Henri Poincare 26 (2025) 1055–1086, described in DHYZ as "A concise proof of the Euclidean invariance of the P(Phi)_2 measure using stochastic quantisation techniques" [quoted].

## 2. King, The U(1) Higgs model I/II (d = 2, 3)
- Citations: C. King, "The U(1) Higgs model. I. The continuum limit", CMP 102 (1986) 649–677; "II. The infinite volume limit", CMP 103 (1986) 323–349. Primary text not accessible (Springer and Project Euclid blocked the fetch). [not found: primary text]
- Secondary sources disagree on the scope:
  - Summers, arXiv:1203.3991 [quoted]: King "began with the model on a finite volume lattice and controlled the continuum and infinite volume limits using a combination of renormalization group techniques and correlation inequalities. He verified all of Osterwalder–Schrader axioms except ergodicity and the regularity properties which assure that the Wightman functions are tempered distributions."
  - Shen, arXiv:1801.04596, Sec. 1 [quoted]: "King [Kin86a, Theorem 2.1] proved continuum limit of generating functional of the fields F_A and :|Phi|^2: and in [Kin86b] combining with correlation inequalities he proved infinite volume limit and verified some of the Osterwalder-Schrader axioms such as reflection positivity."
  - Driver, CMP 110 (1987), Sec. 1 [quoted]: "the approximating measures that King uses are non-compact versions of the Wilson lattice approximation."
- [inference] Summers' wording implies Euclidean invariance was claimed; Shen's wording does not confirm it. The mechanism (convergence through rotated lattices as in BFS-II, or identification with a continuum object) is unverified. Treat "Euclidean invariance proved for King's Higgs_3 limit" as UNVERIFIED until the CMP 103 text is read.

## 3. Abelian gauge theories: BFS (Higgs_2), Gross (U(1)_3), Driver (U(1)_4)

### 3a. Brydges–Frohlich–Seiler, "On the construction of quantized gauge fields II. Convergence of the lattice approximation", CMP 71 (1980) 159–205 (IHES preprint P/79/299)
- Motivation [quoted, Sec. I]: lattice theories have OS positivity and gauge invariance; "The limit would then share these properties and in addition one would hope to verify that it is Euclidean invariant (unlike the lattice theories)."
- Setup [quoted]: in d = 2 the gauge field is a continuum Gaussian field (with UV cutoff and mass) "conditioned" onto lattice bonds; matter is on the lattice. "Theorem A. Given a sequence of simple cubic lattices whose spacings tend to zero, the lattice measures ... converge in the sense of characteristic functions."
- Euclidean covariance mechanism [quoted, Sec. I]: "The limiting theory obtained in Theorem A is Euclidean covariant. It is not invariant because of the boundary and also the cutoff on the gauge field. In two dimensions it is possible to identify it with a theory constructed directly in the continuum and then Euclidean covariance is obvious. However it is also possible to obtain it directly from our theorems because they are valid when limits are taken through lattices of varying orientation. We have slightly emphasized this point because it may be a superior strategy in more singular theories." And: "Euclidean invariance and Osterwalder-Schrader positivity in one direction combine to yield positivity in all directions."
- Paper III (CMP 79 (1981) 353–399) removes the remaining cutoffs, takes the infinite-volume limit, and verifies the OS axioms (per INSPIRE abstract; not re-read here).
- [inference] Two mechanisms are named: (a) identification with a continuum-regularized theory; (b) orientation independence: the convergence theorem holds for every rotated lattice sequence, and the limit does not depend on the orientation, so the limit is covariant under rotations.

### 3b. Gross, "Convergence of U(1)_3 lattice gauge theory to its continuum limit", CMP 92 (1983) 137–162
- Driver's summary [quoted]: "Gross [3] showed, for d = 3 and G = U(1) and under some natural assumptions on the lattice action, that the 'lattice current' converges (in the sense of Fourier transforms) to the current in the free Euclidean electromagnetic field." Technique: Schwinger–Dyson equations.
- [inference] The limit is an explicit Gaussian (free EM field), which is Euclidean invariant by its covariance formula. Euclidean invariance comes for free from identification with an explicit continuum object. This route is not available for an interacting theory.

### 3c. Driver, "Convergence of the U(1)_4 lattice gauge theory to its continuum limit", CMP 110 (1987) 479–501
- Abstract [quoted]: compact U(1) lattice theory "converges to a renormalized free electromagnetic field on the current sector as the lattice spacing approaches zero, provided the coupling constant is sufficiently large."
- The target is defined directly [quoted, Sec. 1, eq. (1.2)]: ∫ exp(F_A(rho)) dmu(A) = exp[-g^2(Delta^{-1} d*rho, d*rho)/2].
- Remark 4.2 [quoted]: the Gibbs states are "closed under translations and 90° rotations of the lattice ... Hence, the unique Gibbs state (mu) must be invariant under translations and 90° rotations." Theorem 4.2: lattice current Laplace transforms converge to those of the free field with renormalized coupling alpha.
- [inference] Same mechanism as Gross: identification of the limit with an explicit Euclidean-invariant Gaussian. The lattice gives only hypercubic symmetry.

## 4. General techniques for rotation restoration; Balaban, Dimock, MRS, BBS

- Orientation independence: BFS-II (3a above) is the only constructive source found that names it as a strategy [quoted above].
- Uniqueness plus covariant continuum characterization: DHYZ 2025 (1d above). [inference] This is the most general mechanism found: prove that every lattice limit point satisfies a rotation-covariant continuum characterization with a unique solution.
- Identification with a radially regularized continuum construction: Park 1975/1977 for Phi^4_3 (via Albeverio–Kusuoka's remark, 1b), BFS-II in d = 2.
- Identification with an explicit Gaussian: Gross 1983, Driver 1987 (abelian free fields).
- Perturbative: Borji–Kopper, arXiv:2006.15943 (J. Math. Phys. 61 (2020), doi:10.1063/5.0024211), lattice phi^4_4 [quoted]: "The lattice is known to break the Euclidean symmetry of the space-time. Our main result is the proof of the restoration of the Euclidean symmetries using the flow equations." This is to all orders in perturbation theory, not constructive.
- Statistical mechanics (2D, integrable): Duminil-Copin–Kozlowski–Krachun–Manolescu–Oulamara, arXiv:2012.11672, "Rotational invariance in critical planar lattice models" [quoted]: the argument "only relies on the Yang-Baxter equation (or star-triangle transformation)"; models on isoradial lattices L(alpha) "may be related via a series of star-triangle transformations", and Theorem 1.7 gives d_CN(phi_{delta L(alpha)}, phi_{delta L(pi/2)}) < C delta^c. [inference] This is orientation independence with a rate, but it needs exact integrability; it does not transfer to 4D gauge theory.
- Balaban: I found no Balaban text on Euclidean invariance. [not found] MRS 1993 describe Balaban's endpoint [quoted, mp_arc 92-38 intro]: "the resulting effective action on the unit lattice remains bounded. From this result the existence of an ultraviolet limit for gauge invariant observables such as 'smoothed Wilson loops' should follow, at least through a compactness argument using a subsequence of approximations; but the limit is not necessarily unique." Summers [quoted]: "the series of papers came to an end before exact Schwinger functions were constructed and their properties were verified." Chatterjee, arXiv:1803.01950, Sec. 6 [quoted]: "there is yet no construction of a continuum limit of a lattice gauge theory in any dimension higher than two where Wilson loop variables have been shown to have nontrivial behavior."
- Magnen–Rivasseau–Seneor, "Construction of YM4 with an infrared cutoff", CMP 155 (1993) 325–383 (mp_arc 92-38), SU(2), axial gauge, momentum cutoffs, fixed IR cutoff. Quotes:
  - [quoted] "We do not use the lattice cutoff but a momentum cutoff of a certain type which breaks gauge invariance and requires gauge restoring counterterms".
  - [quoted] Euclidean invariance of the gauge-fixed theory: "(II.7) is not Euclidean invariant, and the corresponding correlation functions are therefore not Euclidean invariant. However in principle physical quantities (which are gauge invariant and Euclidean covariant observables) can be recovered from the gauge fixed theory."
  - [quoted] On OS: "we cannot study the complete set of Osterwalder-Schrader's axioms"; proposed fix: "use as a first cutoff a lattice cutoff, then use the momentum cutoffs of this paper for slicing ... We think that in this way OS positivity can be proved."
  - Correction to the brief: MRS did not use a continuum cutoff to keep Euclidean invariance. Their axial gauge already breaks it. They used continuum cutoffs for technical reasons and planned a lattice cutoff to get RP.
- Dimock: no remark on Euclidean invariance found. His action is invariant only under lattice symmetries [quoted, arXiv:1512.04373 Sec. 1.3]: "The action is invariant under lattice symmetries, that is translations, reflections, and rotations by multiples of pi/2."
- Bauerschmidt–Brydges–Slade: in their RG papers "Euclidean invariant" means invariant under lattice automorphisms of Z^d, not under O(d). [quoted, arXiv:1403.7252 Sec. 1]: "The covariances C_j are Euclidean invariant, i.e., C_{j;Ex,Ey} = C_{j;x,y} for any lattice automorphism E : Z^d -> Z^d". Their book (LNM 2242, 2019) was not read. [not found: book text] Terminology hazard: do not cite BBS "Euclidean invariance" as O(d) invariance.

## 5. Fermions in Balaban's framework
- Dimock, QED in d = 3: arXiv:1512.04373 (Ultraviolet regularity, bounded-field approximation), 1712.10029 (Multiscale block averaging), 2009.01156 (Ultraviolet stability), overview 2204.07201.
  - Setting [quoted, 2204.07201]: "The model is formulated on a toroidal lattice with unit volume and variable lattice spacing."
  - Fermions [quoted]: "D_e(A) is the Wilson form of the covariant lattice Dirac operator"; in 1512.04373: "The extra term (1/2) eps Delta_A was added by Wilson to prevent doubling of fermion species."
  - Gauge group: U(1). [inference from "QED" and the abelian action; the scalar-QED paper 1502.02946 states "The gauge group is SO(2)" [quoted]]
  - Main result, Theorem 1 [quoted, 2204.07201]: "(Ultraviolet Stability) Assume m̄ > 0 and e is sufficiently small. Then one can fix the gauge and choose counterterms m_N, eps_N so that for all N K_- ≤ Z_N(e)/Z_N(0) ≤ K_+".
  - Not proved [quoted]: correlation-function bounds are a proposed extension; "The continuum limit N -> infinity for the partition function, generating function, and correlation functions should also be feasible"; "the infinite volume limit would pose new difficulties."
- Dimock, scalar QED d = 3, arXiv:1502.02946: nonperturbative renormalization in a bounded-field approximation. Abstract [quoted]: "We have nothing to say about the infinite volume limit, and for convenience we take unit volume."
- Dimock (and Yuan), Gross–Neveu d = 2: arXiv:2303.07916 (UV stability bound, with the Bauerschmidt–Brydges–Slade method); arXiv:2406.16799 [quoted]: "all correlation functions, treated as distributions, are uniformly bounded in the ultraviolet cutoff" (finite volume; "but not in the volume").
- Balaban–O'Carroll–Schor:
  - "Block renormalization group for Euclidean fermions", CMP 122 (1989) 233–247: free lattice and continuum fermions, block-RG actions with uniform exponential decay (search summary; abstract not read verbatim).
  - "Block averaging renormalization group for lattice and continuum Euclidean fermions: expected and unexpected results", Lett. Math. Phys. 17 (1989) 209–214 (citation only).
  - "Properties of block renormalization group operators for Euclidean fermions in an external gauge field", J. Math. Phys. 32 (1991) 3199–3208 [quoted abstract]: "The basis is laid for a block renormalization analysis of spinor electrodynamics in d=2,3 dimensions in a lattice approximation." The operators "are uniformly bounded analytic functions of complex-valued gauge fields with uniform exponentially decaying kernels."
- Non-abelian gauge field plus Wilson fermions in Balaban's framework: no rigorous work found. [not found] Every Balaban-style fermion result located is abelian (QED_3) or has no gauge field (Gross–Neveu_2, free fermions).

## Implication for a lattice-based Yang–Mills existence proof: what must be shown to get Euclidean invariance and nontriviality

All items below are [inference] from the sources above.

1. The lattice gives reflection positivity and hypercubic symmetry only (Driver Remark 4.2; Dimock Sec. 1.3). No construction found proves O(d) invariance from lattice estimates alone. Balaban-type UV stability gives subsequential limits that MRS note are "not necessarily unique", and a non-unique limit point has no reason to be rotation invariant.
2. Every proven route to full Euclidean invariance from a lattice start uses one of four mechanisms. Each maps to a concrete requirement for YM_4:
   a. Identification with an explicit invariant object (Gross, Driver). Not available: interacting YM has no explicit form.
   b. Identification with a rotation-invariant continuum regularization (Park for Phi^4_3; BFS-II in d = 2). For YM this needs a gauge-invariant, rotation-invariant continuum regularization whose limit is controlled and coincides with the lattice limit, for example Yang–Mills gradient flow smoothing (Charalambous–Gross, Luscher), or a gauge-fixed MRS-type construction plus gauge-invariant composite observables. The MRS construction itself is not Euclidean invariant at the gauge-fixed level, has a fixed IR cutoff, and lacks RP.
   c. Orientation independence (BFS-II; DKKMO with a rate in 2D). Show that the limit of gauge-invariant observables (smoothed Wilson loops, flowed field correlators) is the same for the lattice eps R Z^4 for every R in SO(4). A sufficient form: a quantitative bound |<O>_{eps,R} - <O>_{eps',R'}| -> 0, i.e., a Cauchy property across lattice spacings and orientations. This needs uniqueness of the continuum limit, not only compactness.
   d. Uniqueness for a covariant continuum characterization (DHYZ 2025). Show that every limit point satisfies a rotation-covariant equation, for example the YM Langevin dynamic in the Chandra–Chevyrev–Hairer–Shen line, or Schwinger–Dyson / Makeenko–Migdal-type loop equations, and that this equation has a unique solution (invariant measure) in the relevant class. Then rotation invariance follows from covariance. RP comes separately from the lattice via an identification on each finite volume (the DHYZ Lemma 2.19 pattern).
3. Hence the minimal list for a lattice-based YM_4 existence proof with Euclidean invariance:
   - (UV) uniform bounds and convergence (not only subsequential) of gauge-invariant smeared observables as eps -> 0, in finite and then infinite volume;
   - (Identification or uniqueness) one of 2b, 2c, or 2d above, to remove the orientation dependence;
   - (RP) inherited from the Wilson lattice action through the limit, with RP in one direction plus Euclidean invariance giving RP in all directions (BFS-II remark);
   - (Gauge-invariant observable class) a class rich enough for reconstruction (Wilson loops are not local fields; a smoothed or flowed field algebra is needed).
4. Nontriviality: no source here gives a nontriviality proof for a lattice-based gauge theory in d ≥ 3. Chatterjee states that no continuum limit in d > 2 with nontrivial Wilson-loop behavior exists. Abelian limits (Gross, Driver) are free fields; Driver's d ≥ 5 result is a delta measure (Theorem 4.1, "trivial"). For YM_4, nontriviality needs an explicit lower bound, for example a nonzero connected four-point function of a smoothed field, or a non-Gaussian Wilson-loop law, uniform in eps. The non-Gaussianity arguments for Phi^4_3 (GH Sec. 5.4; Hairer–Steele) use superrenormalizability and do not transfer to the asymptotically free 4D case. A mass gap (cluster property) is also part of OS and is separate from both.
5. Fermions: if the proof must include quarks, no non-abelian Wilson-fermion analysis in Balaban's framework exists. The closest is Dimock's abelian QED_3 UV stability (partition function only) and Balaban–O'Carroll–Schor's external-field fermion operators.

## Sources
- Gubinelli–Hofmanova, arXiv:1810.01700: https://arxiv.org/abs/1810.01700
- Duch–Hairer–Yi–Zhao, arXiv:2508.07776: https://arxiv.org/abs/2508.07776
- Albeverio–Kusuoka, arXiv:2102.08040: https://arxiv.org/abs/2102.08040
- Summers, arXiv:1203.3991: https://arxiv.org/abs/1203.3991
- Shen, arXiv:1801.04596: https://arxiv.org/abs/1801.04596
- Chatterjee, arXiv:1803.01950: https://arxiv.org/abs/1803.01950
- BFS II preprint (IHES P/79/299): https://repo-archives.ihes.fr/FONDS_IHES/I_Prepublications/FROHLICH/1978-1980/P_79_299/P_79_299.pdf
- Driver, CMP 110 (1987): https://mathweb.ucsd.edu/~bdriver/DRIVER/Papers/Drivers_Papers/A1-U(1)_4-Lattice.pdf
- King II, Project Euclid: https://projecteuclid.org/journals/communications-in-mathematical-physics/volume-103/issue-2/The-rm-U1-Higgs-model-II-The-infinite-volume-limit/cmp/1104114710.full
- MRS 1993 preprint: https://web.ma.utexas.edu/mp_arc/e/92-38.tex
- Borji–Kopper, arXiv:2006.15943: https://arxiv.org/abs/2006.15943
- Duminil-Copin et al., arXiv:2012.11672: https://arxiv.org/abs/2012.11672
- Bauerschmidt–Brydges–Slade, arXiv:1403.7252: https://arxiv.org/abs/1403.7252
- Dimock: arXiv:1512.04373, 1712.10029, 2009.01156, 2204.07201, 1502.02946, 2303.07916, 2406.16799
- Balaban–O'Carroll–Schor JMP 1991 (Rutgers record): https://scholarship.libraries.rutgers.edu/esploro/outputs/journalArticle/Properties-of-block-renormalization-group-operators/991031665988504646
