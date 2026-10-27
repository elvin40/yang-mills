# Verification of LEMMAS.md (Lemmas A, B, C and the open ledger)

Verifier: Claude (Fable), 2026-10-27. Adversarial read of `~/claude_code/yang_mills/LEMMAS.md` against the template `/tmp/oai_oct26/o3_continuum.txt` (§1.4, §4.1 Lemma 4.1, §10.2, §10.3, §15). All algebra and geometry below was also checked numerically (4D cell enumeration, SU(3) equivariance, Frobenius nearest-point comparison). No web search.

Verdict scale: CORRECT / CORRECT WITH FIX / WRONG.

---

## Lemma A (dense rotations in four dimensions)

| Claim | Verdict | Notes |
|---|---|---|
| H is a subgroup of O(4) | CORRECT | Composition: S(F∘gh) = S((F∘g)∘h) = S(F∘g) = S(F). Inverse: apply the defining identity to F∘g⁻¹. Uses only that F∘g ∈ S for g linear. |
| H is closed, by (A3) | CORRECT | Pointwise limit of constants S(F) is S(F). |
| Powers of ρ dense in SO(2)₁₂ when α/π ∉ Q | CORRECT | kα mod 2π dense iff α/(2π) ∉ Q iff α/π ∉ Q. |
| B₄-conjugation gives SO(2)_{ij} ⊂ H | CORRECT | Pick σ the unsigned permutation with σe₁ = e_i, σe₂ = e_j (exists for any i ≠ j). Then σ R₁₂(φ) σ⁻¹ = R_{ij}(φ) exactly. Orientation does not matter in any case: with σe₂ = −e_j one gets R_{ij}(−φ), and since the whole circle {R₁₂(φ)} ⊂ H is conjugated, the image is the whole circle SO(2)_{ij} either way. A one-sentence remark would make this explicit. |
| Planar rotations generate SO(4) (Givens) | CORRECT | Standard. For Q ∈ SO(n): Givens rotations in planes (1,k), k = 2..n, send column 1 to (r,0,…,0) with r = ‖col‖ = +1 (the Givens choice c = a/r, s = b/r always yields r ≥ 0; for a = −1, b = 0 it is the rotation by π in that plane). Then Q becomes diag(1, Q′), Q′ ∈ SO(n−1); induct. At the end diag(1,…,1,±1) with det +1 forces +1. Uses at most n(n−1)/2 planar rotations, all in coordinate planes, so all in H. |
| H ⊄ SO(4) because B₄ contains a reflection; hence H = O(4) | CORRECT | e₁ ↦ −e₁ has det −1; SO(4) has index 2 in O(4). |
| Remark (i): 2θ/π ∉ Q for cos θ = 3/5 | CORRECT | cos 2θ = 2·(9/25) − 1 = −7/25, so 2cos 2θ = −14/25 (checked). If 2θ/π ∈ Q then e^{2iθ} is a root of unity, hence an algebraic integer, hence 2cos 2θ ∈ Q is an algebraic integer, hence in Z. Contradiction. Same for θ with 2cos θ = 6/5. Matches template §10.3 and Lemma 15.2. |
| Remark (ii): (A3) follows from a bound \|S_n(F)\| ≤ C sup (1+\|x\|²)^m \|F\| | CORRECT | g ↦ F∘g is continuous O(4) → S(R^{4n}) (in fact locally Lipschitz in every Schwartz seminorm). For the weighted sup-norm alone: \|F(gx) − F(g′x)\| ≤ ‖g−g′‖·\|x\|·sup_{ξ ∈ [gx,g′x]} \|∇F(ξ)\|; for ‖g−g′‖ ≤ 1/2 one has \|ξ\| ≥ \|x\|/2, so (1+\|x\|²)^m \|x\| \|∇F(ξ)\| ≤ C sup_ξ (1+\|ξ\|²)^{m+1} \|∇F(ξ)\| < ∞. Derivative seminorms: ∂^β(F∘g) = Σ (polynomial in entries of g)·(∂F)∘g, same argument. Template (10.9) has exactly this form with m = 2n. The bound must hold for the *limit* S_n; in the template it does. |
| Remark (iii), (iv) | CORRECT | (iv): in d = 2, B₂ plus one dense circle gives O(2) directly; d ≥ 3 by Givens. |

**Applicability caveat (not an error in the lemma, but load-bearing for the ledger).** Lemma A is stated for point-indexed tempered distributions S_n ∈ S′((R⁴)^n). For Yang–Mills the natural observables are Wilson loops, indexed by loops, or unbounded local densities (tr F²). The closed-subgroup argument is index-set agnostic, but then (A3) becomes "g ↦ E[∏ W(gγ_i)] is continuous in g for smooth loops γ_i", which is a loop-space regularity statement that no (10.9)-type bound supplies. For the local-density route one needs factorial-moment bounds of (10.9) type for an unbounded gauge-invariant density. Either way (A3) is an *open input* for YM, not a free consequence. See ledger section.

---

## Lemma B (inclined, gauge-covariant block averaging)

### Geometry

| Claim | Verdict | Notes |
|---|---|---|
| 5R e₁ = (3,4,0,0), 5R e₂ = (−4,3,0,0), 5R e₃ = 5e₃, 5R e₄ = 5e₄ | CORRECT | Checked. |
| (B-geo-1) index of 5RZ⁴ in Z⁴ is 625 | CORRECT | 5R is an integer matrix with det 5⁴ = 625; the index of AZ⁴ in Z⁴ is \|det A\|. Cell enumeration gives exactly 625 sites in 5R(−½,½)⁴ ∩ Z⁴. |
| (B-geo-2) 5R_θZ⁴ ⊂ R_{2θ}Z⁴ | CORRECT | R_{2θ}⁻¹·5R_θ = 5R_{−θ} = [[3,4,0,0],[−4,3,0,0],[0,0,5,0],[0,0,0,5]] (integer, checked). Index 625 in both fine lattices. |
| (B-geo-3) sR_θs = R_{−θ}, s preserves Z⁴ and ℓ¹-geodesic paths | CORRECT | sRs computed: equals Rᵀ. s is an ℓ¹-isometry of Z⁴ mapping nearest-neighbour steps to nearest-neighbour steps, so it maps P(a,c) bijectively onto P(sa,sc). |

**Facts the lemma does not state but B2/B3 rely on (all verified numerically for the centered cell B(y) = y + 5R(−½,½)⁴ ∩ Z⁴, y ∈ Λ′):**
- No fine site lies on a cell boundary: boundaries are 3x₁+4x₂ = ±25/2, −4x₁+3x₂ = ±25/2, x₃ = ±5/2, x₄ = ±5/2, none solvable in integers. So the half-integer offset c = (½,½) of the template (needed there because L_* = 5L with L even) is not needed at spacing 5.
- The cell is nearest-neighbour connected, is invariant under the quarter turn (x₁,x₂) ↦ (−x₂,x₁) about its center, and s maps B_θ(y) onto B_{−θ}(sy) (so B2's "fundamental cells to fundamental cells" holds for this choice).
- Every ℓ¹-geodesic from the center y to any x ∈ B(y) stays inside B(y) (0 of 625 sites have any monotone path leaving the cell). So Γ₁ and Γ₃ are block-local; Γ₂ necessarily crosses into the neighbouring cell.
- **FIX needed in the text:** "Let B(y) be a fundamental cell" is underdetermined; B2 requires sB_θ(y) = B_{−θ}(sy). State the centered cell explicitly.

### Averaging operation and claims

| Claim | Verdict | Notes |
|---|---|---|
| Definition of M(b′) and consistency with bond reversal | CORRECT WITH FIX | Not stated, but needed for B2 at μ = 2 (where sb′ is a *reversed* coarse bond) and for the coarse variables to be a gauge field at all: M(−b′) = M(b′)*. Proof: reversing all three path segments and substituting x′ = x + 5Re_μ ∈ B(y′) maps the summand set for b′ bijectively onto that for −b′; path averages satisfy ⟨U(Γ⁻¹)⟩ = ⟨U(Γ)⟩*. Then π(M*) = π(M)⁻¹ and det-normalization respects inversion. Add this one line. |
| M invertible on an open dense set | CORRECT | det M is real-analytic on the compact manifold G^{bonds}, not identically zero (M = 1 at U ≡ 1), so its zero set is a proper analytic subset: closed, measure zero. The set is gauge invariant since gMh invertible iff M invertible. |
| B1: M^g(b′) = g(y) M(b′) g(y+5Re_μ)⁻¹ | CORRECT | All paths in P(a,c) share endpoints, so averaging commutes with the endpoint factors; intermediate g(x)⁻¹g(x) and g(x′)⁻¹g(x′) cancel; the outer factors do not depend on x. |
| B1: π(gMh) = gπ(M)h for g,h ∈ U(N) | CORRECT | (h*Ah)^{−1/2} = h*A^{−1/2}h for A > 0, h unitary (functional calculus commutes with unitary conjugation). Checked numerically for SU(3). |
| B1: det-normalization equivariant for g,h ∈ SU(N) | CORRECT WITH FIX | det(gπ(M)h) = det π(M), so any branch rule that is a function of det alone gives the *same scalar* on both sides; scalars commute; equivariance holds for every branch choice. Order does not matter either: π(M·(det M)^{−1/N}) = π(M)·(det π(M))^{−1/N} with the same branch of the phase. FIX: say which branch (principal branch = Frobenius nearest point of π(M) in the coset π(M)·U(1)∩SU(N)). The map is then discontinuous on the measure-zero set {det π(M) = −1}. This is harmless for covariance but must be remembered when continuity/smoothness of Q_R is used in B4. The alternative "nearest-point projection onto SU(N)" is continuous where unique and also equivariant (bi-unitary invariance of the Frobenius norm plus G·SU(N)·G = SU(N)). |
| "For general compact G replace π by nearest-point projection" | CORRECT | Equivariant where unique, by the same bi-invariance argument. |
| B2: (Q_{R_θ}U^s)(b′) = (Q_{R_{−θ}}U)(sb′) | CORRECT WITH FIX | Holds with the centered cell (s maps cells to cells, geodesic sets to geodesic sets, M_θ(U^s)(b′) = M_{−θ}(U)(sb′), and π, det-normalization commute with relabeling). The fix is the cell specification plus the bond-reversal identity above (needed when sb′ is reversed). Since the Wilson measure is s-invariant, the law of Q_{R_θ}U equals the s-pushforward of the law of Q_{R_{−θ}}U; this is the YM analogue of template Lemma 4.1 "reflection interchanges the two inclined types". |
| B3: common coarse lattice and bond directions | CORRECT | In regulator 2's own axes the coarse lattice is 5R_{−θ}Z⁴ with bond vectors 5R_{−θ}e_μ; mapped by R_{2θ} these become 5R_θZ⁴ and 5R_θe_μ. Both coarse gauge fields live on the same abstract lattice with the same embedding, so any later blocking defined in terms of coarse data is the same map. The lemma correctly limits this to the *operation*; the *densities* differ (B4). |

### Modeling notes (not correctness issues)

1. **Uniform average over all ℓ¹-geodesics vs. Balaban's one path per site.** My recollection of Balaban (CMP 98, 1985) is: one fixed rectilinear path y → x per block site, then a nonlinear mean defined by a variational problem (nearest point in G, equivalently argmax Re tr(g*A)). Both prescriptions are gauge-equivariant, so B1 survives either way. But the one-path-per-site version has a property the lemma's version loses: in the block axial gauge (U = 1 on the spanning tree of chosen paths) the average becomes a plain arithmetic mean of the central transporters. With *all* geodesics averaged, no gauge trivializes every path, so Balaban's gauge-fixing step must be reworked. For an inclined cell one wants a spanning tree of in-cell geodesics that is quarter-turn covariant and s-equivariant between the two inclinations; the cell enumeration shows such in-cell geodesics exist for every site. This is part of B4, and the lemma's choice makes it harder, not easier.
2. **SU(N) projection ≠ nearest point for N ≥ 3.** Numerical sample (N = 3, M = mean of three Haar SU(3) elements): dist²(M, lemma map) = 1.257, dist²(M, Frobenius nearest point in SU(3)) = 1.189, ‖difference‖ = 0.47. For N = 2 the two coincide (the mean of unit quaternions is a positive multiple of a unit quaternion). If Balaban's definition is the nearest point, B1 still holds for his definition; only the formula differs.
3. **Spacing 5 vs 5L.** The template's inclined cell has side L_* = 5L with L large (needed for its sampling bump and estimates). The lemma uses side 5. Since L·(5R) is also integer, an inclined first step of side 5L is available with the same geometry; the "subsequent ordinary L-blockings" in B3 would then start one level later. Harmless, but B4 at spacing 5 is not what the template does.

---

## Lemma C (uniqueness by moments)

| Claim | Verdict | Notes |
|---|---|---|
| Lemma C for real-valued observables with \|O_i\| ≤ 1 | CORRECT | Tightness on [−1,1]^r; monomials are bounded continuous there, so moments pass to subsequential limits; polynomials are dense in C([−1,1]^r) (Weierstrass), so a finite measure on the compact set is determined by its moments; all subsequential limits agree; convergence follows. |
| Example "(1/N) tr U(γ)" | WRONG as stated for N ≥ 3 | (1/N) tr U(γ) is complex for SU(N), N ≥ 3 (real only for SU(2)). The law then lives in the closed unit disc D^r ⊂ C^r, and *holomorphic* moments E[O₁^{k₁}⋯O_r^{k_r}] do not determine it. Counterexample: the uniform law on the unit circle and the point mass at 0 have E[z^k] = 0 for all k ≥ 1 (checked). FIX: close the family under complex conjugation (W(γ⁻¹) = conj W(γ), so include reversed loops), or take real and imaginary parts; then Stone–Weierstrass in z, z̄ applies and the proof goes through unchanged. |
| Remark: "for gauge theory the entire content of uniqueness is convergence of moments" | FAIR AS LOGIC, MISLEADING AS A PLAN | True that the lemma is trivial given moment convergence. But for a fixed smooth physical loop γ the lattice expectation obeys a perimeter law ⟨W_ε(γ)⟩ ≈ exp(−c g²(ε) \|γ\|/ε) with g²(ε) ~ 1/log(1/ε), so it tends to 0, and all moments converge to 0: Lemma C's conclusion holds and is empty. Nontrivial loop observables require the multiplicative perimeter (and corner) renormalization, after which they are no longer bounded by 1 and Lemma C no longer applies; one is back to factorial-moment bounds as for tr F². The remark should say that bounded Wilson loops are the wrong example and that the unbounded route is the only one with content. |

---

## The open ledger

### Is anything claimed as done that is not?

No lemma is overclaimed. But the ledger's framing "A–C done, B4 + heavy items remain" hides one structural dependency that changes the picture:

**Euclidean invariance via Lemma A needs the R⁴ limit, and the template gets to R⁴ through the mass gap (10.8), which the ledger lists as "open, not claimed" (item 6).** Details: the two-regulator comparison lives on a common *tilted* torus T_θ (side 5M in axes R_θ; a quotient of both Z⁴ and R_{2θ}Z⁴ by B-geo-2; template §13.5). On that torus, B4 gives law₁(T_θ) = law₂(T_θ) = (R_{2θ})_* law₁(T_{−θ}) = (R_{2θ}s)_* law₁(T_θ), where the last step uses reflection symmetry of regulator 1. R_{2θ}s is the reflection across the tilted axis, a symmetry of T_θ. So on a fixed torus the comparison yields only a tilted-axis *reflection* symmetry, never a rotation; a square torus has no rotation by 2θ. The template converts this to rotation invariance by passing to the plane with exponential decay: "First take their fixed-size continuum limit … then send the doubling index to infinity. The resulting plane characteristic functions agree" (§10.2), which is (10.8). Without a mass gap, or at least a proof that the infinite-volume limit of the continuum theory exists and does not depend on torus shape and orientation, hypothesis (A2) cannot be verified for YM. Ledger item 5 ("OS reconstruction on a torus") compounds this: O(4) invariance is not a meaningful statement on T⁴, and Jaffe–Witten is stated on R⁴. The ledger must add: **"Item 6 (or a torus-shape-independence substitute) is a prerequisite for (A2), hence for Euclidean invariance."**

### Is anything in the ledger actually easy?

Nothing listed is easy. Item 4 (nontriviality) is labeled Medium; for YM a free limit would have no mass gap, so item 6 subsumes it, and a direct surviving-cumulant proof is as heavy as the template's §11.3. Item 5 as written ("on a torus") is the wrong statement; on R⁴ OS reconstruction is standard once E0–E4 hold, and the real cost is in E0 (growth bounds) and E1 (invariance), which are items 1, 2, 6.

Items that are easy and *missing* from the ledger (each should be one line in the lemmas, not in the ledger):

- **Translation invariance at non-lattice displacements.** Same mechanism as Lemma A: approximate t by t_ε ∈ εZ⁴, use lattice invariance plus a (10.9)-type bound *uniform in ε* for the lattice distributions. Easy given the uniform bound; the uniform bound is part of item 1. Template §10.3 does this in one sentence.
- **Hypercubic invariance (A1) of the R⁴ limit.** Easy only if the R⁴ limit is taken through axis tori or is shape-independent (again item 6).
- **Reflection positivity.** Blocking changes integration variables, not the measure, so RP of the fine Wilson theory about fine-lattice hyperplanes passes to any limit of fine-lattice observables on axis tori or R⁴. No "RP of the inclined blocking" is needed. Caveat: on the *tilted* torus there is no lattice reflection compatible with the periods, so no RP there; the template replaces it by a "trace-with-shift" estimate (§8). Any YM finite-volume comparison on tilted tori needs a substitute for chessboard bounds. This belongs in B4.
- **Bond-reversal consistency M(−b′) = M(b′)*** and the explicit cell choice (above).

### Missing open steps (not easy)

1. **(A3) for the actual YM observables.** Loop-space continuity for Wilson loops, or factorial-moment bounds for an unbounded gauge-invariant density. Neither is implied by items 1–3 as phrased.
2. **Perimeter/corner renormalization of loop observables** if loops are the carried sources (see Lemma C remark). The template's source machinery (§9) is for a bounded spin field; the YM analogue must handle a multiplicatively divergent observable.
3. **Gauge fixing inside inclined cells and across the inclined step.** Balaban's block axial gauge, the background-field (Landau-type) gauge, the Faddeev–Popov factors, and the fluctuation-propagator bounds are all built on axis-parallel blocks; the inclined cell needs new trees (in-cell geodesics exist, verified), new momentum-lattice Parseval identities (template §4 does this for the inclined cell in 2D), and the covariance estimates with rotated cells. This is inside B4 but is not visible in the ledger's one-line description of B4 as "§15.1 + §5 + §9"; the template's inclined work is mostly §4 and §13.5.
4. **Topological sectors and holonomies on T⁴.** The small-field expansion is around a trivial background; on a torus the lattice measure includes all instanton sectors and the toron/holonomy zero modes. Balaban's large-field treatment is meant to absorb these, but any statement about the torus limit must say so; and a tilted torus has different holonomy geometry from the axis torus.
5. **The §15.2 uniqueness mechanism has no stated YM counterpart.** Item 2 cites Lemma 12.2 (summable sensitivity) but not the two-incommensurable-periods argument (5 vs L) that removes the bare-offset dependence in the template. In YM the "offset" is the dimensional-transmutation scale; "canonical normalization" would mean fixing a physical scale (string tension or gap), which again needs item 6. The ledger should either claim a YM analogue of §15.2 or list it.
6. **Large-volume shape independence** (weaker than the mass gap but still open): the minimum needed to turn the tilted-torus reflection symmetry into a rotation.

---

## Overall assessment

- Lemma A: correct in full; the Givens, conjugation, closure, and irrationality steps all hold, and (A3) does follow from a (10.9)-type bound. It is a clean abstraction of template §10.3/Lemma 15.2 in d = 4.
- Lemma B: geometry correct (all six integer/index/inclusion/reflection facts verified, plus four unstated cell properties that the claims need). B1 correct, including the SU(N) normalization with any det-only branch rule; one should state the branch and note the discontinuity at det = −1. B2 correct once the cell is fixed and bond reversal is handled. B3 correct as a statement about operations. The uniform-geodesic average and polar-plus-det map are legitimate but differ from Balaban's definitions and remove the tree-gauge simplification; this is a cost inside B4.
- Lemma C: correct for real bounded observables; wrong as stated for complex Wilson loops with N ≥ 3 (holomorphic moments do not determine a law on the disc); the fix is to close under conjugation. The remark hides that bounded Wilson loops converge to 0 in 4D, so the "trivial" lemma has no content for the example given.
- Ledger: nothing done is overclaimed, but the chain A + B ⇒ Euclidean invariance is broken as presented: (A2) requires the R⁴ limit, which the template reaches via the mass gap (10.8), listed here as open and not claimed. On a fixed torus the two-regulator comparison yields only a tilted-axis reflection. This dependency, plus the (A3)-for-loops input, the perimeter renormalization of loop sources, inclined gauge fixing, topological sectors, and a YM analogue of §15.2, should be added to the ledger. Nothing in the ledger is easy; the easy items (translation invariance, RP inheritance, bond-reversal identity, cell choice) are missing and should be absorbed into the lemmas.
