# Generic lemmas for a lattice-to-continuum Yang–Mills construction

Status: drafted 2026-10-27 by Claude (Fable); verified by an independent Fable pass (LEMMAS_VERIFY.md). Verdicts: A correct; B geometry/B1/B3 correct, B2 correct with fix (applied below); C corrected (conjugation closure). The ledger was amended after the verifier found a structural gap (rotation invariance needs the R⁴ limit). Each lemma states what it needs from the heavy construction (Balaban-type RG) as hypotheses, so the generic part is separated from the open part.

Setting throughout: d = 4, compact gauge group G ⊂ U(N) (e.g. SU(N)), fine lattice Λ_ε = εZ⁴ (or a periodic torus), link variables U(b) ∈ G on oriented bonds b = (x, x+εe_μ), U(−b) = U(b)⁻¹. Transporter along a lattice path Γ = (b_1,…,b_m): U(Γ) = U(b_1)⋯U(b_m).

---

## Lemma A (dense rotations in four dimensions)

**Hypotheses.** Let (S_n)_{n≥1} be a family of tempered distributions, S_n ∈ S'((R⁴)^n), such that

(A1) each S_n is invariant under the hyperoctahedral group B_4 (signed coordinate permutations), acting diagonally on (R⁴)^n;

(A2) each S_n is invariant under one rotation ρ ∈ SO(4) acting in the (x_1,x_2)-plane by angle α with α/π ∉ Q;

(A3) (continuity) for each n and F ∈ S((R⁴)^n), the map O(4) ∋ g ↦ S_n(F∘g) is continuous.

**Conclusion.** Each S_n is invariant under all of O(4).

**Proof.** Let H ⊂ O(4) be the set of g with S_n(F∘g) = S_n(F) for all n and all F. H is a subgroup. By (A3) H is closed: if g_k → g with g_k ∈ H then S_n(F∘g) = lim S_n(F∘g_k) = S_n(F). By (A2) ρ ∈ H, hence ρ^k ∈ H for all k ∈ Z. Since α/π ∉ Q, the angles kα mod 2π are dense in R/2πZ, so the closure of {ρ^k} is the full circle of rotations in the (1,2)-plane; thus H ⊇ SO(2)_{12}. For any coordinate plane (i,j), pick a signed permutation σ ∈ B_4 ⊂ H (by (A1)) mapping e_1 ↦ e_i, e_2 ↦ e_j; then σ SO(2)_{12} σ⁻¹ = SO(2)_{ij} ⊂ H. Planar rotations in coordinate planes generate SO(4): every element of SO(n) is a product of Givens rotations (reduce an orthogonal matrix to the identity column by column by Givens rotations; the determinant condition makes the last diagonal entry +1). Hence SO(4) ⊂ H. B_4 contains a reflection, so H ⊄ SO(4) and H = O(4). ∎

**Remarks.** (i) For the Pythagorean rotation with cos θ = 3/5, sin θ = 4/5 the O(3) template obtains invariance under angle α = 2θ. Irrationality: if 2θ/π ∈ Q then e^{2iθ} is a root of unity, so 2cos 2θ = −14/25 is an algebraic integer in Q, hence an integer; contradiction. Same argument for θ itself (2cos θ = 6/5). (ii) (A3) follows from a bound of the form |S_n(F)| ≤ C_n sup_x (1+|x|²)^{m_n}|F(x)| plus the continuity of g ↦ F∘g in the Schwartz topology; the template's bound (10.9) is of this form. (iii) Only (A2) requires an inclined construction; (A1) comes from lattice symmetries passed to the limit. (iv) Nothing here is specific to gauge theory; the same lemma works in any dimension d ≥ 2 with B_d.

---

## Lemma B (inclined, gauge-covariant block averaging)

**Geometry.** Let R = R_θ be the rotation in the (1,2)-plane with cos θ = 3/5, sin θ = 4/5, extended by the identity on (x_3,x_4). Then 5R has integer entries: 5R e_1 = (3,4,0,0), 5R e_2 = (−4,3,0,0), 5R e_3 = 5e_3, 5R e_4 = 5e_4. Hence

(B-geo-1) Λ' := 5R Z⁴ is a sublattice of Z⁴ of index 5⁴ = 625.

(B-geo-2) 5R Z⁴ ⊂ R_{2θ} Z⁴ as well: 5R Z⁴ = R_{2θ}(5R_{−θ}Z⁴) and 5R_{−θ} = (5R)^T has integer entries. So the same coarse lattice Λ' sits inside both the standard fine lattice Z⁴ and the rotated fine lattice R_{2θ}Z⁴.

(B-geo-3) The reflection s: x_2 ↦ −x_2 satisfies s R_θ s = R_{−θ}, preserves Z⁴ and maps monotone (ℓ¹-geodesic) lattice paths to monotone lattice paths.

**Averaging operation.** For a coarse bond b' = (y, y + 5Re_μ), y ∈ Λ', let B(y) ⊂ Z⁴ be a fundamental cell of Λ' at y (625 fine sites), and for fine sites x, z let P(x,z) be the (nonempty, finite) set of ℓ¹-geodesic lattice paths from x to z, with uniform weights. Define the averaged transporter

  M(b') := (1/|B(y)|) Σ_{x∈B(y)} ⟨U(Γ_1)⟩_{Γ_1∈P(y,x)} · ⟨U(Γ_2)⟩_{Γ_2∈P(x, x+5Re_μ)} · ⟨U(Γ_3)⟩_{Γ_3∈P(x+5Re_μ, y+5Re_μ)}

(⟨·⟩ = uniform average over the path set; this is the Balaban–Dimock form "average over rectilinear paths y→x, then the parallel bond, then back", with monotone paths replacing axis-parallel ones because the coarse bond is inclined). Define the inclined averaging

  (Q_R U)(b') := π(M(b')),  π(M) := M (M*M)^{−1/2} for M ∈ GL(N,C),

composed with the det-normalization M ↦ M·(det M)^{−1/N} when G = SU(N), with the branch of the N-th root fixed by a rule depending on det M alone (e.g. principal branch; it is discontinuous on {det π(M) = −1}, which is a null set). Any such rule is equivariant because the scalar factor commutes. For N ≥ 3 this map differs from the Frobenius nearest point in SU(N) (verifier sample: dist² 1.257 vs 1.189); for SU(2) they coincide. Balaban's nearest-point definition is also equivariant, so B1 holds for either choice. Q_R U is defined on the open dense set where M(b') is invertible (for general compact G one replaces π by nearest-point projection where unique; the gauge argument below only uses equivariance).

**Claim B1 (gauge covariance).** For a fine gauge transformation g: Z⁴ → G, U^g(x,z) = g(x)U(x,z)g(z)⁻¹, one has (Q_R U^g)(b') = g(y)(Q_R U)(b')g(y+5Re_μ)⁻¹. That is, Q_R intertwines fine gauge transformations with the coarse gauge transformation g|_{Λ'}.

Proof. Every path transporter from a to c transforms as g(a)U(Γ)g(c)⁻¹; the intermediate g(x)⁻¹g(x) factors cancel inside the product Γ_1Γ_2Γ_3, so M^g(b') = g(y)M(b')g(y+5Re_μ)⁻¹. Polar projection is equivariant under unitaries: for g,h ∈ U(N), (gMh)*(gMh) = h*M*Mh, so ((gMh)*(gMh))^{−1/2} = h*(M*M)^{−1/2}h and π(gMh) = gMh·h*(M*M)^{−1/2}h = gπ(M)h. The det-normalization is also equivariant for g,h ∈ SU(N) since det(gMh) = det M. ∎

**Claim B2 (reflection covariance).** Fix the cell B(y) := y + 5R(−½,½)⁴ ∩ Z⁴ (no boundary sites since 25/2 is a half-integer; nearest-neighbour connected; quarter-turn symmetric; s maps θ-cells to −θ-cells; every ℓ¹-geodesic from the centre stays inside the cell). With U^s(b) := U(s b) and the reflection s of (B-geo-3), (Q_{R_θ} U^s)(b') = (Q_{R_{−θ}} U)(s b'), where for μ = 2 the image s b' is a reversed bond and one uses the bond-reversal identity M(−b') = M(b')* (reverse every path and invert every link; π commutes with adjoint).

Proof. s maps Λ'_θ = 5R_θZ⁴ onto 5R_{−θ}Z⁴, fundamental cells to fundamental cells, ℓ¹-geodesic path sets bijectively onto ℓ¹-geodesic path sets (s preserves ℓ¹ length and the lattice), so M_θ(U^s)(b') = M_{−θ}(U)(s b'); π commutes with relabeling. ∎

**Claim B3 (common coarse frame).** Let regulator 1 be the standard fine lattice with first step Q_{R_θ}, and regulator 2 the rotated fine lattice R_{2θ}Z⁴ with first step Q_{R_{−θ}} applied in its own axes. Both produce coarse link variables on the same lattice Λ' = 5R_θZ⁴ (by B-geo-2), with the same bond directions. Subsequent ordinary (axis-parallel in the rotated frame) L-blockings are therefore literally the same operation for both regulators.

Proof. Immediate from (B-geo-2) and R_{2θ}·R_{−θ} = R_θ. ∎

**Balaban's actual definition (anchored 2026-10-27 from CMP 98 (1985) p. 19, eq. (15), file balaban/1985_cmp98_averaging_operations.pdf).** For a block bond c = ⟨c−, c+⟩ with c+ = c− + L e_μ (block side L, dimension d), block B(c−), x(c) := x + L e_μ, and contour Γ_{c,x} := Γ_{c−,x} ∪ [x, x(c)] ∪ Γ_{x(c),c+} (c− → x inside the block, then the bond-parallel segment, then back to c+):

  Ū_c = exp[ i Σ_{x∈B(c−)} L^{−d} (1/i) log( U(Γ_{c,x}) U(c)^{−1} ) ] · U(c),     (Balaban (15))

where U(c) is the transporter along the straight block-axis contour from c− to c+. The two conditions Balaban imposes (p. 19, eqs. (11) and (14)): gauge covariance (Ū^u)(y,y') = u(y)Ū(y,y')u(y')^{−1}, and agreement with the linear average Ā_c = Σ_x L^{−(d+1)}(A(Γ_{c−,x}) + A([x,x(c)]) + A(Γ_{x(c),c+})) to first order in A for U = e^{iA}. He also states (p. 20) that his propositions "can be easily extended to other definitions of averaging operations satisfying the requirements postulated in this introduction."

**Lemma B restated for Balaban's definition.** Replace M ↦ π(M) by Balaban's (15) with L^{−d} replaced by the inclined cell weight 1/625, the block-axis contour U(c) replaced by a fixed canonical ℓ¹-geodesic from y to y + 5Re_μ (e.g. for 5Re_1 = (3,4,0,0): three steps in x_1 then four in x_2), and Γ_{c−,x}, Γ_{x(c),c+} replaced by fixed canonical geodesics chosen s-equivariantly (the mirror rule: s maps the canonical path for R_θ to the canonical path for R_{−θ}). Then: B1 holds because U(Γ_{c,x})U(c)^{−1} transforms by conjugation with u(c−), log and exp commute with conjugation, and the outer U(c) carries u(c−)(·)u(c+)^{−1}. B2 holds by the s-equivariant canonical-path choice. The first-order condition (14) holds with the same linear average over the inclined contours. This removes the verifier's modeling flag (one path per site, as in Balaban, so block axial gauge still applies) and the SU(N) branch issue (no projection is used; the log is the principal matrix logarithm on a neighbourhood of the identity, which is the only regime where Balaban's operation is used).

**What Lemma B does NOT give (the open, Balaban-level step B4).** That the density obtained after the inclined first step belongs to the same class of effective densities (small-field/large-field decomposition, locality norms, background-field minimizers) as after an ordinary first step, with the difference contracted away by the subsequent ordinary steps. In the O(3) template this is §15.1 "Two descriptions of one cutoff" together with the per-step contraction (§5) and the source renormalization (§9). For Yang–Mills this requires the full Balaban machinery with observables. This is the step that no public human or AI text supplies.

---

## Lemma C (uniqueness by moments for bounded gauge-invariant observables)

Let O_1,…,O_r be REAL gauge-invariant observables with |O_i| ≤ 1 pointwise (e.g. Re and Im of normalized Wilson-loop traces (1/N) tr U(γ); the family must be closed under complex conjugation, i.e. include reversed loops, because holomorphic moments alone do not determine a law on the disc for N ≥ 3: uniform-on-circle and δ₀ share all moments E[z^k], k ≥ 1). Suppose that for every monomial, the lattice expectations E_ε[O_1^{k_1}⋯O_r^{k_r}] converge as ε → 0. Then the joint laws of (O_1,…,O_r) under E_ε converge weakly to a unique limit law, which is determined by the limiting moments.

Proof. The joint law is supported in [−1,1]^r; the family is tight. Any subsequential limit has the limiting moments (bounded continuous functions). A law on a compact set is determined by its moments (Weierstrass density of polynomials in C([−1,1]^r)). So all subsequential limits coincide. ∎

**Remark.** For the unbounded local field (e.g. tr F²) the template's route is factorial moment bounds ⇒ analytic moment generating function. Lemma C has no content for a fixed lattice loop in 4D: its expectation tends to 0 as ε → 0 (perimeter divergence), and renormalized loops are unbounded. So uniqueness is not free even for loops; the content is convergence of moments of RENORMALIZED observables, i.e. convergence of the RG trajectory with sources (step B4).

---

## What remains open after A–C (honest ledger)

1. (Heavy) Balaban's effective-action bounds with gauge-invariant SOURCES carried through the RG (Jaffe–Witten: "need to be extended to the study of expectations of gauge-invariant functions").
2. (Heavy) Convergence, not just bounds, of the trajectory: a per-step contraction of the non-canonical remainder plus a summable-sensitivity estimate for the marginal coupling (template Lemma 12.2 analogue), giving uniqueness of the limit.
3. (Heavy) Step B4: the inclined first step lands in the same density class.
4. (Medium) Nontriviality: a connected four-point function of a gauge-invariant local density that survives the limit (template §11.3 analogue).
5. (Structural, found by the verifier) Lemma A needs the R⁴ limit. On the common tilted torus the inclined comparison gives only the tilted-axis reflection symmetry R_{2θ}s, never a rotation; the template reaches rotations only after the torus → plane limit, which it controls with the mass-gap decay (10.8). Without a gap (not claimed for YM) there is no public mechanism for T⁴ → R⁴, hence none for full Euclidean invariance. A finite-volume theorem can claim hypercubic symmetry and reflection positivity only.
6. (Medium) OS reconstruction on a cylinder (spatial torus × time); stress tensor and OPE (Jaffe–Witten §4) are extra requirements beyond the axioms.
7. (Missing, per verifier) continuity of loop observables in the loop (A3 for loops); perimeter/corner renormalization of loop sources; gauge fixing inside inclined cells (template §4, §13.5); topological sectors/holonomies on T⁴; no reflection positivity on tilted tori (chessboard substitute needed); YM analogue of the incommensurable-period uniqueness lemma (§15.2).
8. (Open, not claimed by OpenAI) infinite volume T⁴ → R⁴ and the mass gap.

---

## Lemma D (shooting; part (T2-b) of THEOREM2.md) — corrected after verification (LEMMAS_DE_VERIFY.md)

**Hypotheses.** Fix K ≥ 1, γ > 0, 0 < β ≤ β′. For k = 0,…,K−1 let β_{k+1}: [0,γ]^{k+1} → [β, β′] be continuous (as a function of the whole history (g_0,…,g_k)). Define the flow by u_0 = 1/g_0² and u_{k+1} = u_k − β_{k+1}(g_0,…,g_k), g_k = u_k^{−1/2}, as long as all g_i ≤ γ.

**Conclusion.** For every g ∈ ]0,γ] there is g_0 ∈ ]0,γ] whose trajectory has all g_k ∈ ]0,γ] and g_K = g, and along it, for all k,
  1/g² + β(K−k) ≤ 1/g_k² ≤ 1/g² + β′(K−k).
With ε = L^{−K} this is Balaban's (0.31) with his constants equal to β/log L and β′/log L.

**Proof.** Write t := 1/g² ≥ 1/γ². Clamped flow: put ĝ(u) := (max(u, 1/γ²))^{−1/2} ∈ ]0,γ] for u ∈ R and define û_0 = u_0, û_{k+1} = û_k − β_{k+1}(ĝ(û_0),…,ĝ(û_k)). This is defined and continuous on all of R (composition of continuous maps), and F(u_0) := û_K satisfies u_0 − β′K ≤ F(u_0) ≤ u_0 − βK. Hence F(t + βK) ≤ t and F(t + β′K) ≥ t, and by the intermediate value theorem there is u_0 ∈ [t + βK, t + β′K] with F(u_0) = t. Along this trajectory û_k − û_K = Σ_{i=k+1}^{K} β_i ≥ 0, so û_k ≥ û_K = t ≥ 1/γ² for every k: the clamp is never active, the clamped trajectory is a genuine trajectory with all g_k = û_k^{−1/2} ∈ ]0,γ] and g_K = g. The displayed inequality is û_k − û_K = Σ_{i=k+1}^{K} β_i ∈ [β(K−k), β′(K−k)]. ∎

**Remarks.** (i) The earlier draft's interval [t+β′K, t+β′K+(β′−β)K] was wrong: F ≥ t on it (verifier's counterexample β_i ≡ 3/2, K = 1). (ii) Only continuity of the β's on the closed cube and the two-sided bound are used; Balaban's (p. 264) "smooth on [0,γ] ... uniformly bounded together with all derivatives" supplies continuity in the last argument; continuity in the earlier arguments is a hidden hypothesis to be extracted from his inductive construction. (iii) The bound is needed only for partial sums: Σ_{i=k+1}^{K} β_i ∈ [β(K−k), β′(K−k)] for all k suffices (THEOREM2.md (R1)). (iv) β_j must be the infinite-volume β-function, independent of K (Balaban's (1.22) takes T^{(j+1)} ↗ Z^d).

## Lemma E (one-loop bound + uniform remainder ⇒ uniform bounds) — corrected after verification

**Hypotheses.** There are γ_0 > 0, C ≥ 0 and 0 < β_0 ≤ β_0′ such that for all j, all admissible histories, and all g ∈ [0,γ_0]: β_0 ≤ β_j^{(0)} ≤ β_0′ and |β_j(g) − β_j^{(0)}| ≤ C g², where β_j^{(0)} is the step-j one-loop coefficient (defined directly by the Gaussian integral (1.4)–(1.5) of CMP 109, hence history-independent), not an off-flow limit.

**Conclusion.** With γ := min(γ_0, sqrt(β_0/(2C))) (γ := γ_0 if C = 0): β_0/2 ≤ β_j(g) ≤ β_0′ + β_0/2 for all j and g ∈ ]0,γ]. Hence (T2-a) with β = β_0/2, β′ = β_0′ + β_0/2.

**Proof.** C g² ≤ C γ² ≤ β_0/2. ∎

**Remarks.** (i) The analytic-disc version in the first draft had a wrong constant and an unattainable hypothesis: Balaban's β_j contain large-field contributions of order exp(−c/g²), which are not analytic at g = 0. The real C^2 (or even C^1, with C g in place of C g²) bound is what his inductive assumption on p. 264 provides. (ii) Everything therefore rests on the one-loop statement (T2-a1′)/(T2-a1″) in THEOREM2.md.
