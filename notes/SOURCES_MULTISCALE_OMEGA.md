# SOURCES_MULTISCALE_OMEGA — NEW-3: the Q-list in the multiscale Ω-sequence geometry

Target: NEW-3 of SOURCES_M1_SWEEP.md (CMP 119 pp. 275–276). Owner I-37 / C-new-3.
Ledger tags: [P] proved here; [V] verified on source (page image or project file); [I] inference/reading; [R] refuted.
Firewall: no use of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

(Sections are appended in order below.)

## §1 Page facts, CMP 119 pp. 275–276 [V, 300 dpi images, /tmp/msomega]

P1 (p. 275) [V]. "the fluctuation field A is localized in Λ^{(k)*}_{k+1}, and, what is more important, all the operators and the background field configuration U_{k+1} are determined by the sequence of domains {Ω_j}." So the Gaussian variable lives on ONE region at ONE scale (the finest, η = L^{−k}). The multiscale structure is in the background and in the operators built from it.
P2 (p. 275) [V]. "on the domain Ω_j∖Ω_{j+1} the configuration U_{k+1} coincides with a U_j-type configuration, it has the same regularity properties and bounds. Therefore we have to change properly the scales on this domain."
P3 (p. 275) [V]. Cover for the cluster expansion: the [I]-cubes covering Ω_k, and for each layer Ω_j∖Ω_{j+1} cubes "which are unions of 2^d neighboring cubes from π_j, i.e. cubes of the size 2ML^jη (measured in η-scale)". A partition of unity {ζ_□} is built on the union, "a cover of Ω_1". "Such covers and partitions were constructed and used in [11, 13], in connection with the generalized random walk expansions." [11] = CMP 96, [13] = CMP 99.
P4 (p. 276) [V]. If a cube □ is a union of 2^d cubes of π_n, j ≤ n ≤ k, the tilde operation uses π_n-cubes; "In all bounds connected with such a cube we have to replace η = L^{−k} by L^{−n}"; "for terms connected with such a cube □, we obtain all the formulas and bounds of Sects. 3, 4 [I] with η replaced by L^{−n}. In fact we have better bounds, because the fluctuation field is localized in Ω_{k+1}, and the exponential decay of propagators and minimizing functions yields additional small factors."
P5 (p. 276) [V]. Sect. 6 [I] localization: "the random walk expansions we use now are constructed for the sequence {Ω_j}, so we apply Theorems 3.7–3.10 [13] in their full generality. The expansions (6.9) [I] are constructed for families σ_0 = {Δ} of cubes in proper scales, i.e. if Δ ⊂ Ω_j∖Ω_{j+1}, then the size of Δ is equal to ML^jη. Then we resum them in localization domains Y_0 ∈ D_k". Terms with Y ⊂ Λ_{k+1} satisfy "exactly all the conditions" of Lemmas 5, 6 [I]; the rest go to B^{(k+1)} with the analyticity space (3.43).
Reading of P1–P5 [I, strong]. Two different multiscale objects appear. (a) The s-cubes σ_0 and the cluster cover {□} are multiscale: size ML^jη on layer j. (b) The walk expansions "for the sequence {Ω_j}" are those of CMP 99 Thms 3.7–3.10 for the background operators G_k, G_1, H_1, (QG_1Q*)^{−1} with the multiscale U_{k+1}. The fluctuation covariance C^{(k)}(Λ_{k+1}) itself is an operator on V_red(Λ_{k+1}) at scale η only; its walk expansion is single-scale in its variables, but its kernel PIECES (A_exp-trees built from (a)-(b) operators) live on the multiscale lattice.
