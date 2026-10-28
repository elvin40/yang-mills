# SOURCES_R3S1_E2 — Lemma E2: Polyakov-loop Cartan frame, lattice monopole charge, flux quantization

Written 2026-10-28 (Claude, Opus 5.5). Derivation file. No existing file edited. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read. Input read: R3S1_GAP.md §1.1, §2.3, §3.1–3.4, §5.0, §5.4 (Fable, unverified). Script: numerics/r3s1_e2_check.py (Mac, 1.3 s).

Grades. [P] proved here. [N] numerical check (this file's script). [I] unchecked input taken from R3S1_GAP.md or from Balaban's construction. [P-sketch] proof given in outline; constants not optimized.

Target (R3S1_GAP §3.4 (E2), §3.3 Remark (2), §5.4). From the unit-scale holonomy Ω, near the center-symmetric element Ω_0, define a Cartan frame (abelian projection), lattice plaquette angles θ_p ∈ (−π, π], and cube charges q_c, and prove Σ_{p∈∂c} θ_p = 2πq_c with q_c in the coroot lattice. State exactly when the frame is defined.

Summary of results.
- The flux identity and integrality are exact algebraic identities. They need only one qualitative condition: every frame overlap on the links used is nonzero (H0). They need no smallness. [P, N]
- The frame is defined at a site when the holonomy is regular. A canonical labeling (no Weyl ambiguity) exists under the "near Ω_0" hypothesis (H1), and also on the whole regular set through the alcove rule. [P]
- Overlaps are nonzero, with a quantitative bound, when the column holonomies of neighbouring sites agree after transport (H2). A ladder lemma bounds this mismatch by the sum of the N_4 (i,4)-plaquette deviations. [P, N]
- The charge lies in the coroot lattice {q ∈ Z^N : Σ_j q^j = 0} under a plaquette condition (H3). For N = 2 this holds with no condition. For N ≥ 3 it can fail without (H3): numerics find such cubes. [P, N]
- Time-like overlaps are exactly unimodular. So the 4d charge is a closed integer 3-cochain (current conservation), and the total charge on a periodic 3-torus slice is zero. [P, N]
- Finding against R3S1_GAP §5.0 (E3c). The inequality "(rotation angle of U_p) ≥ |Cartan angle θ_p|" is false for this projection. A planted hedgehog has flux 2π through a closed surface with every spatial plaquette equal to 1 exactly; its cost sits in the (i,4) plaquettes. §6 gives a corrected crude bound that scales as γ²/N_4³ instead of 2π²/(3N_4). [P-sketch, N]

---

## 1. Setup and notation

Lattice. Work in lattice units of the unit scale a = L/N_4. The slab is Λ = (Z/ℓZ)³ × (Z/N_4Z). Sites z = (x, t). A link b = (z, μ) runs from z to z + μ̂, μ ∈ {1, 2, 3, 4}; direction 4 is the circle. Link variables U_b = U_μ(z) ∈ SU(N); U_{−b} := U_b^{−1}. A plaquette p = (z; μ, ν), μ < ν, has holonomy U_p = U_μ(z) U_ν(z+μ̂) U_μ(z+ν̂)^{−1} U_ν(z)^{−1}. A cube c = (z; μ, ν, λ), μ < ν < λ. Spatial cubes have {μ, ν, λ} = {1, 2, 3}. Cochains and the coboundary d have the standard signs: for a 2-cochain f, (df)_c = f_{νλ}(z+μ̂) − f_{νλ}(z) − f_{μλ}(z+ν̂) + f_{μλ}(z) + f_{μν}(z+λ̂) − f_{μν}(z). Then d∘d = 0 [P: standard].

Gauge transformations. h: Λ → SU(N) acts by U_μ(z) ↦ h(z) U_μ(z) h(z+μ̂)^{−1}.

Holonomy. The Polyakov loop based at z = (x, t) is
  Ω(z) := U_4(x, t) U_4(x, t+1) ⋯ U_4(x, t+N_4−1).
Two exact facts [P: from the definition]:
  (1.1) Ω(z) ↦ h(z) Ω(z) h(z)^{−1} under gauge transformations;
  (1.2) Ω(x, t+1) = U_4(x, t)^{−1} Ω(x, t) U_4(x, t).

Scope. Everything below uses only (1.1), (1.2) and the cell structure. Two instances:
  (A) Theorem A of R3S1_GAP: the slab at fixed spacing a with the Wilson action; Ω is the bare Polyakov loop. No input needed.
  (B′) Theorem B′: U_b are Balaban's unit-scale block links and Ω = Ω_a is their column product. This instance needs Balaban's covariance of the block field under fine gauge transformations, so that (1.1) holds for block gauge transformations [I: R3S1_GAP §2.3(i), recalled there, not checked].
A purely 3d reading also works: fix a slice t; then (Ω(·, t), U_i(·, t)) is an adjoint "Higgs" field plus links on Λ_3 = (Z/ℓZ)³, with the same covariance as in the Georgi–Glashow model.

Center-symmetric reference. Ω_0 := diag(ω_1, …, ω_N), ω_j := exp(2πi (j − (N+1)/2)/N). The ω_j are the N-th roots of (−1)^{N+1}; they are distinct and Σ_j arg ω_j = 0, so Ω_0 ∈ SU(N). The minimum chordal distance is d_0 := min_{j≠k} |ω_j − ω_k| = 2 sin(π/N). Center element ζ := e^{2πi/N}·1: then ζ ω_j = ω_{j+1} (indices mod N), so ζΩ_0 is conjugate to Ω_0. Ω_0 is the barycenter of the Weyl alcove (all affine gaps equal 1/N). [P]

Norms. ‖·‖ is the operator norm. For Ω ∈ U(N) with eigenvalues λ_1, …, λ_N, gap(Ω) := min_{j≠k} |λ_j − λ_k|. Ω is regular iff gap(Ω) > 0. For unitary W, ‖W − 1‖ = max_k |1 − e^{iφ_k}| = max_k 2|sin(φ_k/2)|.

## 2. Hypotheses (complete list)

Each statement in §3 names the hypotheses it uses. No other hypothesis enters.

(H0) Nondegenerate overlaps on a set B of links: m_j(b) ≠ 0 for all j and all b ∈ B (m_j is defined in §2.1 below). Qualitative. It holds on an open dense set of configurations; (H1) + (H2) imply it with a quantitative margin.

(H1)_ρ Holonomy near Ω_0, at a site z. Fix ρ with 0 < ρ < d_0/2 = sin(π/N). For each j, the open disc D(ω_j, ρ) contains exactly one eigenvalue of Ω(z). Then gap(Ω(z)) ≥ γ := d_0 − 2ρ > 0. (H1) is a condition on the spectrum only, so it is gauge invariant. It is the configuration-level form of "center-stabilized". That (H1) holds on the relevant sets with the needed probability is NOT proved here [I: input from the holonomy-field analysis E5 of R3S1_GAP].

(H2)_η Column matching on a spatial link b = (z, i), i ≤ 3:
  η_b := ‖U_b Ω(z+î) U_b^{−1} − Ω(z)‖ ≤ η, with η < γ/4.
(H2) is gauge invariant by (1.1).

(H3) Coroot condition on a plaquette p: Σ_j |θ_p^j| + |(dχ)_p| < 2π, with χ the 1-cochain of §2.1. Gauge invariant (§4.6).

(SF)_ε Small field on a plaquette set P: ‖1 − U_p‖ ≤ ε_p for p ∈ P. Used only for quantitative smallness (§3 (i)) and for the ladder bound of (H2) (§3 (b)).

### 2.1 Definitions

Labeled frame. Under (H1)_ρ at z, let λ_j(z) be the eigenvalue of Ω(z) in D(ω_j, ρ), and P_j(z) the orthogonal projector onto its eigenline. P_j(z) has rank one because the λ_j are distinct and Ω(z) is normal. The family {P_j(z)}_{j=1..N} is the Cartan frame at z: its commutant is the maximal torus T_z = {Σ_j e^{iφ_j} P_j(z) : Σ φ_j ∈ 2πZ}.

Frame vectors. Choose unit vectors e_j(z) with P_j(z) = e_j(z) e_j(z)^†, and let E(z) := (e_1(z), …, e_N(z)). Fix the phase of e_1(z) so that det E(z) = 1. The remaining freedom is e_j ↦ e^{iφ_j} e_j with Σ_j φ_j ∈ 2πZ, that is, right multiplication of E(z) by an element of the diagonal torus T. This freedom is the residual U(1)^{N−1} gauge group.

Overlaps and abelian link angles. For a link b = (z, μ):
  M_b := E(z)^{−1} U_b E(z+μ̂) ∈ SU(N),  m_j(b) := (M_b)_{jj} = ⟨e_j(z), U_b e_j(z+μ̂)⟩.
M_b is U_b in the frame gauge h(z) = E(z)^{−1}. Under (H0) on b write m_j(b) = |m_j(b)| e^{iα_b^j} with α_b^j ∈ (−π, π]. Set s_b^j := (1 − |m_j(b)|²)^{1/2} ∈ [0, 1] (the frame mismatch) and χ_b := Arg Π_j m_j(b) ∈ (−π, π]. For the reversed link, m_j(−b) = conj m_j(b), so α^j and χ are 1-cochains (antisymmetric) up to the branch at π; we always evaluate on positively oriented links and extend by antisymmetry, as real numbers.

Plaquette angles. For a positively oriented plaquette p = (z; μ, ν) with edges b_1 = (z, μ), b_2 = (z+μ̂, ν), b_3 = (z+ν̂, μ), b_4 = (z, ν):
  w_p^j := m_j(b_1) m_j(b_2) conj(m_j(b_3)) conj(m_j(b_4)),  θ_p^j := Arg w_p^j ∈ (−π, π].
Extend by θ_{−p} := −θ_p (as a definition on the oriented cell, so θ is a real 2-cochain even when θ_p = π). Equivalent invariant form, from P_j = e_j e_j^†:
  (2.1) w_p^j = tr( P_j(z) U_μ(z) P_j(z+μ̂) U_ν(z+μ̂) P_j(z+μ̂+ν̂) U_μ(z+ν̂)^{−1} P_j(z+ν̂) U_ν(z)^{−1} ).
Dirac integers. n_p^j := ((dα^j)_p − θ_p^j)/(2π). This is an integer because θ_p^j ≡ (dα^j)_p mod 2π (the argument of a product is the sum of the arguments mod 2π, and conj reverses the sign).

Charges. For an oriented spatial (or 4d) cube c, q_c^j := (1/2π)(dθ^j)_c = (1/2π) Σ_{p∈∂c} θ_p^j. For a closed oriented lattice surface Σ (a 2-cycle: ∂Σ = 0, for example Σ = ∂C with C a union of cubes), the flux is Φ^j(Σ) := (1/2π) Σ_{p∈Σ} θ_p^j. The charge vector is q = (q^1, …, q^N).

Coroot lattice. Q^∨ := {q ∈ Z^N : Σ_j q^j = 0}. With the Cartan subalgebra identified with diagonal traceless matrices, Q^∨ is the coroot lattice of SU(N); SU(N) is simply laced, so Q^∨ is identified with the root lattice under the Killing form (the "root lattice" of R3S1_GAP §3.3). The simple coroots are e_j − e_{j+1}.

## 3. Lemma E2 (statement)

Let N ≥ 2, N_4 ≥ 1, and let U be any SU(N) configuration on the slab Λ (instance (A)), or on the block slab with (1.1) available (instance (B′), [I]).

(a) Frame [P]. Assume (H1)_ρ at z. Then P_j(z) is uniquely defined, real-analytic in Ω(z) on the (H1)_ρ set, and:
  (a1) gauge covariant: P_j(hΩh^{−1}) = h P_j(Ω) h^{−1}, with the same label j;
  (a2) center: if ζΩ also satisfies (H1)_ρ, then P_{j+1}(ζΩ) = P_j(Ω), indices mod N (a cyclic Weyl element);
  (a3) perturbation: if Ω′ is unitary and δ := ‖Ω − Ω′‖ < g/2 with g := gap(Ω), then for each eigenvalue λ_j of Ω the disc D(λ_j, g/2) contains exactly one eigenvalue λ′ of Ω′, |λ′ − λ_j| ≤ δ, and the projectors satisfy ‖P_j(Ω) − P′(Ω′)‖ ≤ 2δ/(g − 2δ);
  (a4) along the circle: P_j(x, t+1) = U_4(x, t)^{−1} P_j(x, t) U_4(x, t), with the same labels. Hence |m_j(b)| = 1 exactly for every time-like link b, and (H1) at one site of a column implies it at all sites of that column.

(b) Overlaps [P]. Assume (H1)_ρ at z and z+î and (H2)_η on b = (z, i). Then labels match across b (the eigenvalue of U_bΩ(z+î)U_b^{−1} nearest λ_j(z) has label j), and for every j
  s_b^j = ‖P_j(z) − U_b P_j(z+î) U_b^{−1}‖ ≤ 2η_b/(γ − 2η_b) < 1,  so |m_j(b)| ≥ (1 − (s_b^j)²)^{1/2} > 0 and (H0) holds on b.
  Ladder bound: for b = (x, t; i), η_b ≤ Σ_{k=0}^{N_4−1} ‖1 − U_{p_k}‖, with p_k the (i,4)-plaquette at (x, t+k). Under (SF)_ε on these N_4 plaquettes, η_b ≤ N_4 ε.
  Without (H2), under (H1) at both ends only: s_b^j ≤ min(1, 4η_b/γ).

(c) Abelianization (frame gauge) [P]. Assume (H1) on all sites of a set of columns. Choose E(x, 0) as in §2.1 and E(x, t+1) := U_4(x, t)^{−1} E(x, t) for 0 ≤ t ≤ N_4 − 2. In the gauge h(z) = E(z)^{−1}:
  (c1) U_4′(x, t) = 1 for t ≤ N_4 − 2 and U_4′(x, N_4−1) = Λ(x) := diag(λ_1(x,0), …, λ_N(x,0)) ∈ T. So the circle carries only Cartan holonomy.
  (c2) Every spatial link becomes U_b′ = M_b = D_b + R_b, with D_b the diagonal part and R_b the off-diagonal part, ‖R_b‖ ≤ (Σ_j (s_b^j)²)^{1/2} ≤ √N max_j s_b^j. With D̂_b := diag(e^{iα_b^j}), ‖M_b − D̂_b‖ ≤ √N max_j s_b^j + max_j (1 − (1 − (s_b^j)²)^{1/2}).
  (c3) With y_b := ‖D_b^{−1} R_b‖ < 1: |χ_b| ≤ N y_b²/(2(1 − y_b)) whenever the right side is < π, and y_b ≤ √N max_j s_b^j / min_j |m_j(b)|. So D̂_b lies within O(s²) of the maximal torus T.
  Under (H1)_ρ, (H2), and (SF)_ε on the (i,4)-plaquettes: the root (off-diagonal) part of every spatial link is ≤ √N·2N_4ε/(γ − 2N_4ε). This is the abelianization claim of R3S1_GAP §3.4 (E2), with the size g p(g) there replaced by C√N N_4 ε_sf/γ.

(d) Flux quantization, exact [P]. Assume (H0) on all links of a closed oriented surface Σ. Then
  Σ_{p∈Σ} θ_p^j = −2π Σ_{p∈Σ} n_p^j ∈ 2πZ, so Φ^j(Σ) ∈ Z.
  In particular, if (H0) holds on the 12 edges of a cube c, then Σ_{p∈∂c} θ_p^j = 2π q_c^j with q_c^j ∈ Z, q_c = −(dn)_c, and |q_c^j| ≤ 3. If (H0) holds on all links of a 3-chain C, then Φ(∂C) = Σ_{c∈C} q_c. The flux Φ(∂C) needs the frame only on the sites of ∂C; the interior of C may violate (H0), (H1), (H2).

(e) Invariance [P]. θ_p^j, n_p^j up to an exact term (see (h)), q_c^j and Φ^j(Σ) are invariant under SU(N) gauge transformations and under the residual torus choice of the e_j phases. A relabeling of the frame by a permutation σ, constant on a region, permutes the components: q^j ↦ q^{σ(j)}. The center transformation U_4(·, t_0) ↦ ζ U_4(·, t_0) on one slice maps q^j to q^{j−1} (cyclic shift), when (H1) holds before and after.

(f) Coroot lattice [P]. If (H0) holds on the edges of c and (H3) holds on its six faces, then Σ_j q_c^j = 0, so q_c ∈ Q^∨. The same holds for Φ(Σ) if (H3) holds on every p ∈ Σ. For N = 2, q_c^2 = −q_c^1 holds under (H0) alone, provided no face has θ_p^1 = π.

(g) Conservation [P]. (g1) On a periodic spatial slice (Z/ℓZ)³ × {t} with (H0) on all spatial links of the slice: Σ_c q_c = 0. (g2) On the periodic slab with (H0) on all spatial links (time-like links satisfy it by (a4)): q is an integer 3-cochain with dq = 0 on every 4-cube. Equivalently, the dual 1-chain of q (monopole current) is closed. (g3) For a spatial 3-chain C, q(C, t+1) − q(C, t) equals the signed sum of q over the lateral cubes p × [t, t+1], p ∈ ∂C. So q(C, t) is independent of t if every lateral cube has charge zero, in particular if every face of every lateral cube satisfies |θ| < π/3.

(h) Dirac strings [P]. q = −dn with n an integer 2-cochain. The dual of n is an integer 1-chain on the dual lattice whose boundary is the dual of −q: Dirac strings end on monopoles and nowhere else. A change of frame phases e_j ↦ e^{iφ_j}e_j or of the branch of α changes α by a real 1-cochain and n by dk with k an integer 1-cochain. So strings move by boundaries; the endpoints q do not change.

(i) Smallness and stability [P]. For any frame (eigen-property not needed): if r_p^j := ‖1 − U_p‖ + s_{b_1}^j + s_{b_2}^j + s_{b_3}^j < 1, then w_p^j ≠ 0 and |θ_p^j| ≤ arcsin r_p^j. Consequences: (i1) if r_p^j < √3/2 on all faces of c, then q_c^j = 0; so on a region where (SF)_ε, (H1), (H2) hold with ε + 3·2η/(γ − 2η) < √3/2, there are no unit-cube monopoles. (i2) Φ(Σ) is locally constant, hence constant on connected components, on the set of configurations with r_p^j < 1 for all p ∈ Σ and all j.

## 4. Proofs

### 4.1 Part (a): the frame
Existence and uniqueness. Under (H1)_ρ the N discs D(ω_j, ρ) are pairwise disjoint (ρ < d_0/2) and each holds exactly one eigenvalue, so the N eigenvalues are distinct and carry distinct labels. A normal matrix with simple eigenvalues has rank-one orthogonal spectral projectors. [P]

Analyticity and (a3), by the Riesz formula. Let g = gap(Ω) and fix λ_j. On the circle Γ = ∂D(λ_j, r), r ∈ (δ, g − δ), every z has dist(z, spec Ω) ≥ min(r, g − r) > δ. Since Ω is normal, ‖(z − Ω)^{−1}‖ = 1/dist(z, spec Ω) < 1/δ. For Ω_s := Ω + s(Ω′ − Ω), s ∈ [0, 1], the Neumann series gives ‖(z − Ω_s)^{−1}‖ ≤ ‖(z−Ω)^{−1}‖/(1 − sδ‖(z−Ω)^{−1}‖) < ∞. So Γ avoids spec Ω_s for every s, and the Riesz projector P_Γ(Ω_s) := (2πi)^{−1}∮_Γ (z − Ω_s)^{−1} dz is continuous in s. Its rank is an integer, hence constant, equal to 1 at s = 0. So D(λ_j, r) holds exactly one eigenvalue of Ω′ for every r ∈ (δ, g − δ); letting r ↓ δ gives |λ′ − λ_j| ≤ δ. For the bound take r = g/2: dist(z, spec Ω) ≥ g/2 and ‖(z − Ω′)^{−1}‖ ≤ (g/2 − δ)^{−1} on Γ (Neumann series at s = 1). The resolvent identity (z−Ω)^{−1} − (z−Ω′)^{−1} = (z−Ω)^{−1}(Ω − Ω′)(z−Ω′)^{−1} gives
  ‖P_j(Ω) − P′‖ ≤ (1/2π)·(2π·g/2)·(2/g)·δ·(g/2 − δ)^{−1} = 2δ/(g − 2δ).
For Ω′ = Ω this is exact, so P_j is given locally by a contour integral of an analytic resolvent, hence real-analytic in Ω. [P]

(a1). hΩh^{−1} has the same spectrum, so the same labels, and its eigenline for λ_j is h·(eigenline of Ω). [P]
(a2). The eigenvalue of ζΩ in D(ω_{j+1}, ρ) is ζλ_j, because |ζλ_j − ω_{j+1}| = |λ_j − ω_j| < ρ. Its eigenline is that of λ_j. [P]
(a4). By (1.2), Ω(x, t+1) is conjugate to Ω(x, t) by U_4(x, t); apply (a1) with h = U_4(x,t)^{−1}. Then e_j(x, t+1) = c·U_4(x, t)^{−1} e_j(x, t) with |c| = 1, so m_j = ⟨e_j(x,t), U_4 e_j(x,t+1)⟩ = c. [P]

### 4.2 Part (b): overlaps and the ladder bound
Let Ω′ := U_b Ω(z+î) U_b^{−1}. Its spectrum equals that of Ω(z+î), with the same labels, and P_j(Ω′) = U_b P_j(z+î) U_b^{−1} by (a1). Apply (a3) to Ω = Ω(z), with δ = η_b < γ/4 < g/2. The eigenvalue λ′ of Ω′ near λ_j(z) satisfies |λ′ − ω_j| < ρ + η_b. If its label were k ≠ j, then d_0 ≤ |ω_j − ω_k| < 2ρ + η_b, which contradicts η_b < γ/4 < d_0 − 2ρ. So labels match, and ‖P_j(z) − U_bP_j(z+î)U_b^{−1}‖ ≤ 2η_b/(g − 2η_b) ≤ 2η_b/(γ − 2η_b) < 1.
For unit vectors e, f: the Hermitian matrix ee† − ff† has eigenvalues ±(1 − |⟨e,f⟩|²)^{1/2} and 0, so ‖ee† − ff†‖ = (1 − |⟨e,f⟩|²)^{1/2}. With e = e_j(z), f = U_b e_j(z+î) this is s_b^j. [P]
General form. If η_b ≤ γ/4, then 2η_b/(γ − 2η_b) ≤ 4η_b/γ. If η_b > γ/4, then 4η_b/γ > 1 ≥ s_b^j. So s_b^j ≤ min(1, 4η_b/γ) under (H1) at both ends, with no condition on η_b. [P]

Ladder. Write b = (x, t; i), y = x + î, T_x(k) := U_4(x,t)U_4(x,t+1)⋯U_4(x,t+k−1), and V_k := U_i(x, t+k). Define W_k := V_0 T_y(k) V_k^{−1} T_x(k)^{−1}; W_0 = 1. Let p_k be the (i,4)-plaquette at (x, t+k), U_{p_k} = V_k U_4(y,t+k) V_{k+1}^{−1} U_4(x,t+k)^{−1}. Direct multiplication gives
  W_{k+1} = W_k · T_x(k) U_{p_k} T_x(k)^{−1}.
Periodicity gives V_{N_4} = V_0, so W_{N_4} = U_b Ω(y,t) U_b^{−1} Ω(x,t)^{−1}. For unitaries, ‖AB − 1‖ ≤ ‖A − 1‖ + ‖B − 1‖ (write AB − 1 = A(B − 1) + (A − 1)) and ‖gAg^{−1} − 1‖ = ‖A − 1‖. Hence η_b = ‖W_{N_4} − 1‖ ≤ Σ_k ‖U_{p_k} − 1‖. [P]

### 4.3 Part (c): frame gauge
(c1). E(x, t) for t ≥ 1 is defined by transport; by (a4) its columns are eigenvectors of Ω(x, t) with the same labels, and det E = 1 is preserved. In the gauge h = E^{−1}, U_4′(x,t) = E(x,t)^{−1}U_4(x,t)E(x,t+1) = 1 for t ≤ N_4 − 2. On the last link, E(x, N_4−1) = T^{−1}E(x,0) with T = U_4(x,0)⋯U_4(x,N_4−2), so U_4′(x, N_4−1) = E(x,0)^{−1} T U_4(x,N_4−1) E(x,0) = E(x,0)^{−1}Ω(x,0)E(x,0) = Λ(x). [P]
(c2). Column j of M_b has squared norm 1 and diagonal entry m_j(b), so its off-diagonal part has norm s_b^j. Hence ‖R_b‖ ≤ ‖R_b‖_F = (Σ_j (s_b^j)²)^{1/2}. Also |m_j − e^{iα^j}| = 1 − |m_j| ≤ 1 − (1 − s²)^{1/2}. [P]
(c3). det M_b = 1 = det D_b · det(1 + Y), Y := D_b^{−1}R_b. So χ_b ≡ Arg det D_b ≡ −Arg det(1 + Y) mod 2π. For ‖Y‖ = y < 1, det(1+Y) = exp tr log(1+Y), and tr Y = 0 because Y has zero diagonal. So |tr log(1+Y)| ≤ Σ_{k≥2} |tr Y^k|/k ≤ N Σ_{k≥2} y^k/k ≤ N y²/(2(1 − y)). If this is < π, the principal argument equals −Im tr log(1+Y), and the bound follows. Finally ‖Y‖ ≤ ‖R_b‖/min_j|m_j(b)|. [P]
The last sentence of (c) combines (b), the ladder bound, and (c2). [P]

### 4.4 Part (d): flux quantization
Lift α_b^j to the real numbers in (−π, π] and extend by antisymmetry. Then θ^j = dα^j − 2πn^j as real 2-cochains, by the definition of n. For a 2-cycle Σ, the cochain Stokes formula gives Σ_{p∈Σ} (dα^j)_p = Σ_{b∈∂Σ} α_b^j = 0, since ∂Σ = 0: each link of Σ occurs in exactly two plaquettes of Σ with opposite induced orientations. So Σ_{p∈Σ} θ_p^j = −2π Σ_{p∈Σ} n_p^j. For Σ = ∂c this reads (dθ^j)_c = (ddα^j)_c − 2π(dn^j)_c = −2π(dn^j)_c. The bound |q_c^j| ≤ 3 follows from |θ| ≤ π on six faces. For a 3-chain C with θ defined on all its plaquettes, Stokes gives Σ_{p∈∂C} θ_p = Σ_{c∈C} (dθ)_c. Only the links of Σ enter Φ(Σ), so the interior of C is not used. [P]

### 4.5 Part (e): invariance
Under a gauge transformation, P_j(z) ↦ h(z)P_j(z)h(z)^{−1} by (a1), and U_b transforms as in §1. Every factor h(·)^{−1}h(·) in (2.1) cancels, so w_p^j is invariant. A change e_j ↦ e^{iφ_j}e_j leaves P_j and hence (2.1) unchanged. A relabeling P_j ↦ P_{σ(j)} replaces w^j by w^{σ(j)}. Center: U_4(·, t_0) ↦ ζU_4(·, t_0) multiplies every Polyakov loop by ζ (each column crosses slice t_0 once and ζ is central) and leaves spatial links unchanged. By (a2), new label j+1 is old label j, so q_new^{j+1} = q_old^j. [P]

### 4.6 Part (f): coroot lattice
Write Σ_j α_b^j = χ_b + 2πk_b with k_b ∈ Z (both sides are arguments of Π_j m_j(b) mod 2π). Then
  Σ_j θ_p^j = Σ_j (dα^j)_p − 2π Σ_j n_p^j = (dχ)_p + 2π[(dk)_p − Σ_j n_p^j] ∈ (dχ)_p + 2πZ.
Under (H3), |Σ_j θ_p^j − (dχ)_p| ≤ Σ_j|θ_p^j| + |(dχ)_p| < 2π, so Σ_j θ_p^j = (dχ)_p exactly. Summing over ∂c: Σ_j q_c^j = (1/2π)(ddχ)_c = 0. For a 2-cycle Σ the same argument uses Σ_{p∈Σ}(dχ)_p = 0.
Gauge invariance of (H3): M_b is invariant under SU(N) gauge transformations (E ↦ hE), and Π_j m_j(b) changes by exp(i Σ_j[φ_j(z+μ̂) − φ_j(z)]) = 1 under torus changes with Σ_jφ_j ∈ 2πZ. So χ_b is invariant.
N = 2. Every M ∈ SU(2) has the form [[a, −b̄], [b, ā]], so m_2(b) = conj m_1(b) on every link, w_p^2 = conj w_p^1, and θ_p^2 = −θ_p^1 unless θ_p^1 = π. Then q^2 = −q^1. [P]
Remark. The equality case is not exotic. If Σ_jθ_p^j − (dχ)_p = 2πk ≠ 0 and the terms have aligned signs, then Σ_j|θ_p^j| + |(dχ)_p| = 2π|k| exactly. So the strict inequality in (H3) is sharp, and a numerical test of (H3) needs a margin (the script uses 10^{−9}). [P, N]

### 4.7 Part (g): conservation
(g1). On a closed 3-torus, Σ_c (dθ)_c = 0 because every plaquette lies in exactly two cubes with opposite induced orientations. (g2). θ is defined on every 4d plaquette: on spatial links by (H0); on time-like links |m| = 1 by (a4). So q = (1/2π)dθ and dq = (1/2π)ddθ = 0. (g3). The boundary of the 4-chain C × [t, t+1] is C×{t+1} − C×{t} plus the lateral cubes (∂C) × [t, t+1] with induced signs. Apply (g2) (Stokes) to this 4-chain. If each face of a lateral cube has |θ| < π/3, the six faces give |Σθ| < 2π, so that cube has charge 0. [P]

### 4.8 Part (h): Dirac strings
q = −dn is (d). Poincaré duality on the cubic lattice maps integer 2-cochains to integer 1-chains on the dual lattice and d to ∂ (up to sign), so ∂(*n) = ±*q. A phase change e_j ↦ e^{iφ_j}e_j changes α^j to α^j + dφ^j mod 2π; the new real lift is α^j + dφ^j + 2πk^j with k^j an integer 1-cochain, and n^j changes to n^j + dk^j because ddφ^j = 0 and θ is unchanged. [P]

### 4.9 Part (i): smallness and stability
Write the plaquette path as z_1 → z_2 → z_3 → z_4 → z_1 with links V_{12}, V_{23}, V_{34}, V_{41}, and e_k := e_j(z_k), Q_k := 1 − e_ke_k^†. Then ⟨e_1, U_p e_1⟩ = ⟨e_1, V_{12}V_{23}V_{34}V_{41} e_1⟩. Insert 1 = e_2e_2^† + Q_2 after V_{12}. The Q_2 term is ⟨Q_2V_{12}^†e_1, X⟩ with ‖X‖ = 1, so its modulus is ≤ ‖Q_2V_{12}^†e_1‖ = s_{12}. The e_2e_2^† term is m_{12}⟨e_2, V_{23}V_{34}V_{41}e_1⟩. Repeat at z_3 and z_4; the last factor is m_{41} exactly. So
  |⟨e_1, U_p e_1⟩ − w_p^j| ≤ s_{12} + s_{23} + s_{34}.
Also |⟨e_1, U_pe_1⟩ − 1| ≤ ‖U_p − 1‖. So |w_p^j − 1| ≤ r_p^j. If r < 1, then w ≠ 0 and |Arg w| ≤ arcsin r (the disc D(1, r) subtends half-angle arcsin r at 0). (i1): arcsin r < π/3 iff r < √3/2; six faces then give |2πq_c^j| < 2π. With (b), s ≤ 2η/(γ − 2η). (i2): under (H1) the frame is analytic in U by (a), so w_p^j from (2.1) is continuous; on the set r < 1 we have |θ_p^j| < π/2, away from the branch point, so θ_p^j and Φ(Σ) are continuous there. An integer-valued continuous function is locally constant. [P]

## 5. When the frame is defined: exact conditions, Weyl ambiguity, cores

### 5.1 Exact conditions (summary of §3)
| object | needs | gauge invariant? |
|---|---|---|
| unlabeled frame {P_j(z)} | Ω(z) regular (gap > 0) | covariant |
| labeled frame P_j(z) | (H1)_ρ at z, or the alcove rule (§5.2) on the regular set | covariant (a1) |
| frame on a whole column | the condition at one site of the column (a4) | — |
| θ_p^j | (H0) on the 4 edges of p | yes (2.1) |
| q_c ∈ Z^N | (H0) on the 12 edges of c | yes |
| Φ(Σ) ∈ Z^N | (H0) on the edges of Σ only | yes |
| q ∈ Q^∨ (coroot lattice) | (H3) on the faces (N ≥ 3); nothing extra for N = 2 | yes |
| quantitative (H0): |m_j| ≥ (1 − s²)^{1/2} | (H1) at both ends + (H2): s ≤ 2η/(γ − 2η) | yes |
| (H2) from small field | ladder: η_b ≤ Σ_k ‖1 − U_{p_k}‖ ≤ N_4 ε | yes |
| no unit-cube monopole; Φ locally constant | (i): r_p < √3/2 on faces; r_p < 1 on Σ | yes |

### 5.2 Weyl ambiguity
At a regular site the frame is a set of N lines; a label is a choice of bijection with {1, …, N}. Two continuous labelings on a connected region differ by one constant permutation σ ∈ S_N = Weyl group, and q changes by q^j ↦ q^{σ(j)} (e).
(i) Disc rule. Under (H1)_ρ the label is fixed by the disc D(ω_j, ρ). The (H1)_ρ set is connected: its eigenphase set is {φ_j ∈ I_j, Σφ_j = 0} with I_j the arcs of D(ω_j, ρ) on the circle (half-width < π/N, so Σφ_j ∈ (−π, π) and only Σ = 0 occurs), which is convex, and conjugation orbits are connected. [P]
(ii) Alcove rule. On the whole regular set, write the eigenvalues as e^{2πia_j} with a_1 > a_2 > … > a_N > a_1 − 1 and Σ_j a_j = 0. This representative exists and is unique: the closed alcove is a fundamental domain for the affine Weyl group S_N ⋉ Q^∨ acting on the diagonal Cartan, and on regular elements all inequalities are strict [I: standard Lie theory, not re-proved here]. The rule is continuous on the regular set, so the regular set carries no Weyl monodromy. The script implements it (sort the phases; move ⌊Σa⌉ of them across the branch). On the (H1) set the alcove label is the disc label reversed (j ↦ N+1−j): both are continuous, the (H1) set is connected, and they differ by the reversal at Ω_0, where a_j = (N+1−2j)/(2N). [P given (ii)]
(iii) Center. The center does not preserve labels; it acts by the cyclic shift (a2), the rotation of the extended Dynkin diagram. Charges transform covariantly (e). A center-averaged statement must sum over the N cyclic relabelings.

### 5.3 What fails as the holonomy approaches the non-regular set
- The perturbation bound (a3) degrades as 2δ/(g − 2δ) and gives nothing for g ≤ 2δ. The ladder requirement N_4ε < γ/4 tightens as γ → 0.
- Overlaps |m_j| can approach 0. θ stays defined (generically) but loses geometric meaning: it is dominated by frame mismatch, not by field strength. Spurious charges appear (§7.3: charged fraction 0 → 0.24 for SU(2), 0 → 0.77 for SU(3), at fixed link noise).
- For N ≥ 3, cubes with Σ_j q^j ≠ 0 appear (q leaves the coroot lattice). All of them violate (H3) (§7.3).
- At exact degeneracy the eigenline is not unique; any choice still gives integer q, but q is then not a function of U.
- What does not fail: integrality (d) and conservation (g). Both are algebraic identities and hold at every tested noise level.

### 5.4 Where a lattice monopole core sits
R3S1_GAP §3.3 Remark (2) says cells where Ω degenerates on ∂c are the large-field cells. This needs a correction. The flux Φ(∂C) needs (H0) only on ∂C, and the core is where (H2) fails, not where Ω degenerates. The planted hedgehog of §7.2 has Ω(z) exactly in the conjugacy class of Ω_0 at every site (gap = d_0 everywhere, never degenerate), all spatial links equal to 1, and flux ±(1, −1) (SU(2)) or (1, 0, −1) (SU(3)) through a closed surface. Its charge sits in one unit cube, where the column mismatch η is large: the (i,4)-plaquettes there have ‖1 − U_p‖ = 0.82 (SU(2)) and 1.00 (SU(3)). In the continuum, π_2(SU(N)/T) = Z^{N−1} forces a degenerate point inside a charged ball; the lattice skips that point. [P for the statement about the configuration; N for the numbers]
So "charged cell ⇒ some (i,4)-plaquette near the core is far from 1" is the correct mechanism. The ladder bound makes it quantitative (§6).

## 6. Consequence for E3c (crude core bound of R3S1_GAP §5.0)

### 6.1 The stated inequality is false for this projection [P, N]
R3S1_GAP §5.0 bounds the action on c × S¹ below by Σ_{p∈∂c} θ_p² through "(rotation angle of U_p) ≥ |Cartan component|", applied to the spatial plaquettes of ∂c. For the projected angle θ_p^j of §2.1 this fails. Counterexample: the planted hedgehog (§7.2, ε = 0). Every spatial plaquette has U_p = 1 exactly (all spatial links are 1), so the spatial Wilson action on ∂C vanishes, yet Φ(∂C) = ±(1, −1) ≠ 0. The flux is the discrete Berry phase of the frame on ∂C (θ_p^j = Arg of a product of frame overlaps), not a field strength. The inequality would hold for angles taken in one fixed frame on all four corners; but a fixed frame on ∂C carries no frame winding, and the winding (degree in π_2(SU(N)/T)) is what makes the charge nonzero.

### 6.2 Corrected crude bound [P-sketch]
Hypotheses: Wilson action S = (2/g²) Σ_p Re tr(1 − U_p) (instance (A)); a spatial 3-chain C; (H1)_ρ at the sites of ∂C (one slice suffices by (a4)); (H0) on the links of ∂C at slice t. No smallness is assumed.
Step 1 (per plaquette). From §4.9, |θ_p^j| ≤ π r_p^j in all cases (arcsin r ≤ πr/2 for r < 1, and |θ| ≤ π ≤ πr for r ≥ 1).
Step 2 (sum over Σ = ∂C at slice t). Each link of Σ lies in exactly two plaquettes of Σ. So 2π|Φ^j| ≤ Σ_{p∈Σ}|θ_p^j| ≤ π[Σ_{p∈Σ} ε_p + 2Σ_{b∈Σ} s_b^j], with ε_p := ‖1 − U_p‖.
Step 3 (mismatch to (i,4)-plaquettes). By (b), s_b^j ≤ min(1, 4η_b/γ) ≤ 4η_b/γ, and η_b ≤ Σ_k ε_{p_k(b)}. Hence
  2|Φ^j| ≤ Σ_{p∈Σ} ε_p + (8/γ) Σ_{b∈Σ} Σ_{k=0}^{N_4−1} ε_{p_k(b)}.
Step 4 (action). For unitary U_p with eigenphases φ_k, ε_p² = max_k 2(1 − cos φ_k) ≤ 2 Re tr(1 − U_p) = g² S_p. So ε_p ≤ g S_p^{1/2}. The spatial plaquettes of Σ (n_s of them) and the lateral plaquettes p_k(b) (n_ℓ = N_4·#links(Σ)) are pairwise distinct. Cauchy–Schwarz gives
  S(∂C × S¹ ∪ ∂C×{t}) ≥ 4‖Φ‖_∞² / (g²(n_s + 64 n_ℓ/γ²)).
For C a cube of side N_4 (one cell of the spacing-L lattice): n_s = 6N_4², #links(Σ) = 12N_4², n_ℓ = 12N_4³, so
  S ≥ 4‖q‖_∞² / (g²(6N_4² + 768N_4³/γ²)) = (γ²/(192 N_4³ + 1.5γ²N_4²))·‖q‖_∞²/g².
For N = 2 and ρ → 0 (γ → 2): S ≳ ‖q‖_∞²/(48 N_4³ g²) for large N_4.
Assessment. C_−(crude) remains positive and independent of ε, so the non-sharp use in R3S1_GAP §5.0 survives. But the constant is γ²/(192N_4³), not 2π²/(3N_4). The loss of N_4² comes from Step 1: frame mismatch enters |θ_p| linearly, while for a smooth frame the Berry phase per plaquette is quadratic in the mismatch. A sharper Step 1 of the form |θ_p^j| ≤ C(ε_p + s²-terms) would restore the 1/N_4 scaling [open; not proved]. The R3S1_GAP item [C4] (C_−/κ_3 ≥ c_0 of Göpfert–Mack) must use the corrected constant.

## 7. Numerics [N]

Script: numerics/r3s1_e2_check.py (numpy + scipy; seed 20261028; total 1.3 s on the Mac). Lattice 4³ × 4 periodic (instance (A)) for §7.1 and §7.3; 10³ × 2 for §7.2. Frames from a complex Schur decomposition of Ω(z) at every site separately (not by transport), so (a4) is tested, not assumed. Configurations: U_i = exp(iε_s H), U_4 = Ω_0^{1/N_4} exp(iε_t H), H Gaussian traceless Hermitian per link; "rough" uses Haar spatial links.

### 7.1 Identities and bounds (disc labels)
| SU(N) | config | charged cube fraction | max |q^j| | integrality err | Σ_c q_c per slice | dq on 4-cubes | ||m_time|−1| | Σ_jq ≠ 0 cubes (with H3) | gauge: max|Δθ|, q equal |
|---|---|---|---|---|---|---|---|---|---|
| 2 | smooth ε = 0.05 | 0 | 0 | 7e−17 | 0 | 0 | 1e−15 | 0 (0) | 7e−16, yes |
| 2 | medium ε_s = 0.4 | 0 | 0 | 1e−16 | 0 | 0 | 1e−15 | 0 (0) | 2e−15, yes |
| 2 | rough (Haar spatial) | 0.457 | 2 | 4e−16 | 0 | 0 | 1e−15 | 0 (0) | 2e−14, yes |
| 3 | smooth ε = 0.05 | 0 | 0 | 7e−17 | 0 | 0 | 3e−15 | 0 (0) | 8e−16, yes |
| 3 | medium ε_s = 0.4 | 0 | 0 | 1e−16 | 0 | 0 | 3e−15 | 0 (0) | 1e−14, yes |
| 3 | rough (Haar spatial) | 0.828 | 2 | 4e−16 | 0 | 0 | 3e−15 | 170 (0) | 4e−14, yes |
Also checked on every configuration, zero violations: the plaquette bound (i) |θ| ≤ arcsin r (max ratio |θ|/arcsin r = 0.78 where r < 1); the Riesz bound (b) s ≤ 2η/(g − 2η); the ladder bound η ≤ Σ_k‖1 − U_{p_k}‖; the χ bound (c3); and the identity Σ_jθ_p^j − (dχ)_p ∈ 2πZ (error ≤ 5e−16). Center test: U_4(·, 0) ↦ e^{2πi/N}U_4(·, 0) maps q^j to q^{j−1} exactly (rough configurations, where q ≠ 0, single shift found), as (e) predicts.
Reading. Integrality holds to 4e−16 (target 1e−10). Total charge per periodic slice is 0 and dq = 0 on all 4-cubes, even for Haar-random spatial links. For SU(3), 170 rough cubes leave the coroot lattice; none of them satisfies (H3). For SU(2), Σ_jq^j = 0 always, as (f) predicts.

### 7.2 Planted monopole (static hedgehog)
Ω(x) = g(x)Ω_0g(x)^{−1} with g(x) the SU(2) rotation taking σ_3 to n̂(x)·σ, n̂ = (x − c)/|x − c|, c = (4.5, 4.5, 4.5); for SU(3) g acts on the (1,3) block. U_4(x, t) = Ω(x)^{1/N_4}, spatial links 1, then link noise ε = 0.02. Cell C = [1, 8)³, away from the periodic seam at 9 → 0.
| SU(N) | boundary flux Φ(∂C, t), t = 0, 1 | int err | Σ of unit-cube q inside C | charged unit cubes in C | total torus charge |
|---|---|---|---|---|---|
| 2 | (−1, 1), (−1, 1) | 3e−16 | (−1, 1) each slice | 1 per slice | 0 (seam carries the opposite charge) |
| 3 | (1, 0, −1), (1, 0, −1) | 2e−16 | (1, 0, −1) each slice | 1 per slice | 0 |
Φ(∂C) uses only plaquettes of ∂C and equals the interior sum, as (d) states; it is the same on both slices, as (g3) states. Charges are roots (coroots), as (f) states. With ε = 0, every spatial plaquette is exactly 1 and the max (i,4)-plaquette deviation in the box is 0.82 (SU(2)), 1.00 (SU(3)): the counterexample of §6.1.

### 7.3 Approach to the non-regular set (alcove labels)
Holonomy eigenphases scaled by s: s = 1 is Ω_0, s = 0 is the identity (fully degenerate). Link noise ε_s = ε_t = ε.
| SU(N), ε | s | min gap | min |m_j| | (H1) fail sites /256 | (H2) fail links /768 | charged fraction | Σ_jq ≠ 0 cubes (with H3) |
|---|---|---|---|---|---|---|---|
| 2, 0.02 | 1.0 / 0.25 / 0.1 / 0.05 / 0.02 / 0 | 1.99 / 0.68 / 0.20 / 0.048 / 0.035 / 0.016 | 0.995 / 0.98 / 0.93 / 0.64 / 0.11 / 0.006 | 0 / 256 / 256 / 256 / 256 / 256 | 0 / 0 / 169 / 512 / 714 / 749 | 0 / 0 / 0 / 0 / 0.039 / 0.242 | 0 at all s |
| 2, 0.08 | 1.0 / 0.25 / 0.1 / 0.05 / 0.02 / 0 | 1.93 / 0.43 / 0.051 / 0.066 / 0.082 / 0.11 | 0.92 / 0.60 / 0.008 / 0.010 / 0.029 / 0.054 | 0 / 200 / 256 / 256 / 256 / 256 | 63 / 501 / 717 / 727 / 747 / 750 | 0 / 0 / 0.039 / 0.086 / 0.195 / 0.258 | 0 at all s |
| 3, 0.02 | 1.0 / 0.25 / 0.1 / 0.05 / 0.02 / 0 | 1.67 / 0.43 / 0.082 / 0.026 / 0.010 / 0.019 | 0.994 / 0.95 / 0.68 / 0.23 / 0.018 / 0.009 | 0 / 256 / 256 / 256 / 256 / 256 | 0 / 294 / 766 / 768 / 768 / 768 | 0 / 0 / 0 / 0 / 0.387 / 0.770 | 0,0,0,0, 71 (0), 161 (0) |
| 3, 0.08 | 1.0 / 0.25 / 0.1 / 0.05 / 0.02 / 0 | 1.37 / 0.091 / 0.038 / 0.068 / 0.028 / 0.070 | 0.87 / 0.069 / 0.005 / 0.019 / 0.021 / 0.016 | 0 / 256 / 256 / 256 / 256 / 256 | 623 / 768 / 768 / 768 / 768 / 768 | 0 / 0 / 0.395 / 0.586 / 0.738 / 0.723 | 0, 0, 76 (0), 121 (0), 159 (0), 154 (0) |
Reading.
- Integrality error ≤ 4.4e−16, total slice charge 0, dq = 0 at every s: the identities never fail.
- No bound violations at any s: (i), (b), ladder and (c3) are theorems and the code agrees.
- As the gap falls to the noise scale, the minimum overlap falls to ~10^{−2}, and spurious charges appear: up to 26% of cubes (SU(2)) and 77% (SU(3)) at s = 0. These charges are frame artefacts, not field strength; they appear only at values of s where (H2) fails on most links (not checked cube by cube).
- For SU(3), up to 161 cubes per configuration leave the coroot lattice; none of them satisfies (H3).
- (H1), (H2) are sufficient, not necessary: at SU(3), ε = 0.08, s = 1, (H2) fails on 623/768 links but there are no charges. The ladder constant N_4 ε < γ/4 is the conservative part.
- (H1) fails at s ≤ 0.25 by construction (eigenvalues leave the ρ-discs around ω_j); the alcove rule still labels consistently there.

## 8. Grades and open items

| item | content | grade |
|---|---|---|
| (a) | labeled frame under (H1); analyticity; gauge and center covariance; Riesz bound 2δ/(g − 2δ); exact column transport, |m_time| = 1 | [P], [N] |
| (b) | label matching; s ≤ 2η/(γ − 2η) under (H2); s ≤ min(1, 4η/γ) in general; ladder η ≤ Σ_k ‖1 − U_{p_k}‖ | [P], [N] |
| (c) | frame gauge: Cartan circle holonomy on one slice; root part of spatial links ≤ √N s; |χ| ≤ Ny²/(2(1−y)) | [P], [N] for (c3) |
| (d) | Σ_{p∈∂c}θ_p = 2πq_c, q_c ∈ Z^N, q = −dn; boundary-only flux Φ(∂C) | [P], [N] |
| (e) | gauge and torus invariance; Weyl permutation; center = cyclic shift | [P], [N] |
| (f) | q ∈ Q^∨ under (H3); automatic for N = 2; (H3) sharp | [P], [N] |
| (g) | Σ_c q_c = 0 on a periodic slice; dq = 0 in 4d; t-independence of q(C, t) | [P], [N] |
| (h) | Dirac strings: ∂(*n) = ±*q; strings gauge dependent, endpoints not | [P] |
| (i) | |θ| ≤ arcsin(ε_p + s_1 + s_2 + s_3); no unit-cube monopoles in small field; local constancy of Φ | [P], [N] |
| §5.2(ii) | alcove labeling is a global continuous labeling on the regular set | [I] (standard Lie theory) |
| §5.4 | lattice cores are (H2)-failures, not degeneracies of Ω | [P] (example), [N] |
| §6.1 | R3S1_GAP §5.0 inequality "(rotation angle) ≥ |Cartan angle|" false for this projection | [P] (counterexample), [N] |
| §6.2 | corrected crude bound S ≥ γ²‖q‖_∞²/((192N_4³ + 1.5γ²N_4²) g²) | [P-sketch] |
| instance (B′) | covariance (1.1) for Balaban's block links and block holonomy | [I] (R3S1_GAP §2.3(i)) |
| (H1) on the measure | center stabilization makes (H1) hold except on a rare set | [I] (E5 / holonomy analysis, not done) |

Open items.
1. Sharper Step 1 of §6.2: show |θ_p^j| ≤ C(ε_p + quadratic mismatch terms) for eigenframes under (H1), (H2). This would restore C_− ∝ 1/N_4 and is the natural next lemma for E3c.
2. The probability of the (H1)/(H2) failure set under the unit-scale measure (the "deformed large-field" set of R3S1_GAP §3.3 Remark (2)). Not addressed here; it is the bridge from this combinatorial lemma to Theorem R.
3. R3S1_GAP §3.4 (E2) states root fluctuations ≤ g p(g). This file gives C√N N_4 ε_sf/γ. The factor N_4/γ is a fixed constant at fixed N_4 but must be carried into E1.
4. Identification of the lattice flux Φ(∂C) with the degree of the frame map ∂C → SU(N)/T for fine surfaces (R3S1_GAP §3.3 Remark (2)) is not proved; it is not needed by any statement above.
5. Verification: this file is unverified. A SOURCES_R3S1_E2_VERIFY.md pass should check §4.1 (Riesz constants), §4.6 (coroot argument), and §6.2 (constant).
