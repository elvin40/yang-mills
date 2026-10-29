# SOURCES_SWEEP_E.md — page evidence for the [I] readings of OPEN_ITEMS_SWEEP class (a) group E. 2026-10-28.

Ids follow IDS.md. Item group: S-55 (R-009), S-45 (R-001), S-65 (R-018), S-86 (R-032), S-98 (R-041), S-81 (R-028), S-82 (R-030).
Method: for each [I] reading in the TRUST_LEDGER status text, we rendered the Balaban page with pdftoppm -r 150 and read the image. Page numbers are journal pages, with the PDF page in brackets where it was recorded.
Grades: [V] = printed line seen on the page image; [P] = short proof checked here; [P-sketch] = proof outline, not every step checked; convention (cost: …) = a choice that the printed text does not fix; [I] = still unresolved.
Firewall: this sweep did not read /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, or reports/ONLINE_SWEEP.md. This sweep edited no existing file. Ledger texts below are PROPOSALS only.
Rows appear in the order in which the sweep agents returned them. Section order does not carry meaning.

---

## S-86 (R-032)

### Reading 1: Λ_j nesting (Λ_{k+1} ⊂ Λ_j for j ≤ k+1)
- **Source:** SOURCES_A15_BDRY l. 54 marked it "[I: … CMP 119 Sect. 2, not re-read]".
- **Evidence:** CMP 119 p. 254 [PDF 12], (2.1): "We consider sequences of localization domains {Ω_j}, … such that Ω_1 ⊃ Ω_2 ⊃ … ⊃ Ω_k. For such a sequence we consider sequences of localization domains {Λ_j}, Λ_j ∈ D_j, such that Ω_1 ⊃ Λ_1 ⊃ Ω_2 ⊃ Λ_2 ⊃ … ⊃ Ω_j ⊃ Λ_j ⊃ … ⊃ Ω_k ⊃ Λ_k. (2.1)"
- **Caveat:** p. 255 [PDF 13] says "we admit the possibility that Λ_j = Ω_j for some indices j. Such a situation may arise as a result of an R-operation." Equality is allowed. The order of the inclusions does not reverse, so the nesting holds.
- **Grade:** [V].

### Reading 2: H-091 (Conv_Λ)
The reading: inside Λ_{k+1}, three objects at step k+1 are the restrictions of the whole-lattice objects of [I] = CMP 109/116. The three objects are the cube cover, the partition of unity ζ_□, and the σ_0-cubes. We split the reading into three parts.

**(a) Cube cover.**
- **Evidence:** CMP 119 p. 275 [PDF 33]: "In [I] we have constructed the family of cubes {□} covering the space T, and the corresponding partition of unity {ζ_□}. Now we take the family of these cubes covering the domain Ω_k, and for each layer Ω_j\Ω_{j+1} we construct its cover by cubes □, which are unions of 2^d neighboring cubes from π_j …"
- **Conclusion:** on Ω_k, the cubes are the [I] cubes. By (2.1), Λ_{k+1} ⊂ Ω_{k+1} ⊂ Ω_k.
- **Grade:** [V].

**(b) σ_0-cubes.**
- **Evidence:** CMP 116 p. 10 [PDF 10]: "For a fixed cube □ we take σ_0 as the family of all cubes Δ disjoint with the interior of □."
- **Conclusion:** σ_0(□) depends only on □ and on the partition into cubes Δ. Where these are the [I] cubes, σ_0(□) restricted to Ω_k equals the whole-lattice σ_0(□).
- **Grade:** [V] for the rule. [P] for the restriction.

**(c) Partition of unity ζ_□.**
- **Evidence, step k+1:** CMP 119 p. 275 continues: "For the union of these families, which is a cover of Ω_1, we construct the corresponding partition of unity. Such covers and partitions were constructed and used in [11, 13]." The paper does not print the construction of the new partition. So the printed text does not say that ζ_□ keeps its [I] value inside Ω_k.
- **Evidence, [I]:** CMP 109 p. 270 [PDF 22] defines the [I] partition in product form, with no global normalization: "if y is a center of the cube □, then ζ_□(x) = ∏_μ ζ(M^{−1}(x_μ − y_μ)), where ζ ∈ C_0^∞(R^1), ζ(t) = 1 for |t| ≤ 1/3, ζ(t) = 0 for |t| ≥ 2/3, ζ has derivatives up to the second order bounded by 5." So each [I] function ζ_□ depends only on its own cube.
- **Admissible choice [P-sketch]:**
  - Keep the [I] function ζ_□ for every [I] cube whose closed neighbourhood lies in Ω_k. Let S be the sum of these functions.
  - Define the junction functions as (1 − S)·h_{□′}/Σh. Here the h_{□′} are bumps on the layer cubes and on the boundary fine cubes. Together they cover the set {S < 1}.
  - The derivative bounds at a junction are then at the scale of the smaller cube.
- **Margin [P-sketch]:** Λ_{k+1} must lie at least one [I]-cube side from Ω_k^c.
  - CMP 119 p. 265 [PDF 23], (3.5): "Ω_{k+1} = (Q′^{~2}_{k+1} ∪ (B^{k+1}(P^1_{k+1})^c)^{~3})^c".
  - The construction on that page has already removed the domain Z′^{~6}_k, with Z_k = Λ_k^c ⊇ Ω_k^c.
  - So Ω_{k+1} lies several LMR_{k+1}-cube layers away from Ω_k^c, and so does Λ_{k+1}.
  - We did not compare the cube sides on the page (LMR_{k+1} at level k+1 against 2M at level k). A margin of one layer is enough.
- **Grade:** convention (cost: zero for any bound). The convention: the step-(k+1) partition of unity keeps the [I] functions ζ_□ on cubes away from ∂Ω_k. The paper does not print this construction, and this choice is always available. The convention also needs Λ_{k+1} to lie at least one [I]-cube side inside Ω_k. That margin is [P-sketch] from (3.5); the cube-size comparison is not checked. The convention fits the proposed K-050.

### Proposed ledger status text (R-032)
"PROVED [verified, round 6, 2026-10-28] (SOURCES_A15_BDRY + VERIFY), relative to these inputs:
- the LOC inputs (K-033–K-037);
- the BDRY inputs:
  - K-038 (Enl);
  - (Dom);
  - Λ_j nesting: [V], CMP 119 p. 254 (2.1), Ω_1 ⊃ Λ_1 ⊃ … ⊃ Ω_k ⊃ Λ_k;
  - H-091 (Conv_Λ), in three parts:
    - the cubes inside Ω_k are the [I] cubes: [V], CMP 119 p. 275;
    - the σ_0 rule depends only on □: [V], CMP 116 p. 10;
    - away from ∂Ω_k, ζ_□ equals the [I] product-form functions (CMP 109 p. 270): convention K-050, admissible, zero cost. Its margin (Λ_{k+1} at least one cube inside Ω_k) is [P-sketch] from CMP 119 (3.5) p. 265;
- the F2′ inputs (R-044);
- Balaban's (1.18), (3.48), (4.36);
- K-032 (Vol).

An input of Target 1 ⇒ Theorem 1, not of L-001 (Theorem 2w). SOURCES_SWEEP_E §S-86."

---

## S-81 (R-028)

### Reading: the b_{t,m} of KAPPA (1.1) are the b̂_m of SOURCES_T2_MJ_REST §3.1 at σ = 0
This is a project-internal convention, so no Balaban page applies. We compared the two definitions line by line.

**Sources compared:**
- KAPPA_BOUNDED l. 22 defines b_{t,m} as "the Moyal inverse coefficients (U3_LEMMA51 (3.2)–(3.3))".
- U3_LEMMA51 l. 84–106:
  - Lemma 3.2 builds the twisted product from W(x,y)W(y,z) = W(x,z)e^{i(ef/2)(x−y)∧(y−z)}.
  - (3.1): â⋆b̂ = âb̂ − (ief/2){â,b̂} − (e²f²/8)P_2(â,b̂) + O(f³), with P_2 = ∂_0²a∂_1²b − 2∂_0∂_1a∂_0∂_1b + ∂_1²a∂_0²b.
  - (3.2): b_1 = −b_0𝔨_1b_0 + (ie/2)b_0{𝔨_0,b_0}.
  - (3.3): b_2 = −b_0[𝔨_1b_1 + 𝔨_2b_0 − (ie/2)({𝔨_0,b_1} + {𝔨_1,b_0}) − (e²/8)P_2(𝔨_0,b_0)].
- SOURCES_T2_MJ_REST l. 61–62:
  - The product uses the same phase: P_p(a,b)(x,y) = Σ_z a(x,z)b(z,y)(ie/2)^p((x−z)∧(z−y))^p/p!.
  - The recursion: b̂_0 = (𝔨_0+σ)^{−1} and b̂_m = −b̂_0 Σ_{j+q+p=m, q<m} P̂_p(𝔨_j, b̂_q).

**Check [P]:**
- Each factor w_μ becomes i∂_{K_μ} on the symbol (U3_LEMMA51 proof of Lemma 3.2; SOURCES_T2_S123 Lemma 1.1(e)).
- So P̂_1(a,b) = (ie/2)(i∂′∧i∂″)âb̂ = −(ie/2){â,b̂}.
- P̂_2(a,b) = (ie/2)²(i∂′∧i∂″)²âb̂/2 = −(e²/8)(∂′∧∂″)²âb̂ = −(e²/8)P_2(â,b̂). The flux lies in the (0,1) plane, so (∂′∧∂″)² expands to exactly the printed P_2.
- At σ = 0:
  - m = 1: b̂_1 = −b̂_0(𝔨_1b̂_0 + P̂_1(𝔨_0,b̂_0)). This is U3_LEMMA51 (3.2).
  - m = 2: b̂_2 = −b̂_0(𝔨_1b̂_1 + 𝔨_2b̂_0 + P̂_1(𝔨_0,b̂_1) + P̂_1(𝔨_1,b̂_0) + P̂_2(𝔨_0,b̂_0)). This is U3_LEMMA51 (3.3), term by term.
- SOURCES_T2_MJ_REST_VERIFY l. 22 lists the same n = 2 terms.
- The sign of the Fourier convention (e ↔ −e) does not change d_j, because (1.1) sums both charged sectors (SOURCES_T2_MJ_REST_VERIFY l. 50).

**Grade:** [P]. The two definitions use the same twisted product, so their agreement is an algebraic identity. It is no longer a convention.

### Proposed ledger status text (R-028)
"PROVED+VERIFIED at fixed j ≥ 1, L odd ≥ 3 [round 7, 2026-10-28] (SOURCES_T2_MJ_REST + VERIFY: all four claims confirmed), relative to these inputs:
- (G_A′) (SOURCES_T2_GAPRIME2 + VERIFY);
- (I3) [P] (SOURCES_T2_I3 + VERIFY);
- the confirmed S123 results (SOURCES_T2_S123);
- U3_LEMMA51 Prop. 2.2.

The former [I] convention is now [P]. The convention said that the b_{t,m} of KAPPA (1.1) are the §3.1 Moyal coefficients at σ = 0. At σ = 0 the §3.1 recursion reproduces U3_LEMMA51 (3.2)–(3.3) term by term, with P̂_1 = −(ie/2){·,·} and P̂_2 = −(e²/8)P_2. Both follow from the shared phase e^{i(ef/2)w∧u} (SOURCES_SWEEP_E §S-81).

Region 1 and the neutral sector (N2) are proved. Only the o(f²) form of BETA_FP_M Prop. 4.4 is proved. Its printed rate O(|f|³ log) is unproved and unused. R-028 (M_j) is a limit f → 0 at fixed j, so the (G_A′) range |ef| ≤ 1e−4 is enough (SOURCES_T2_FRANGE).

The chain S123 → R-028 (M_j) → KAPPA_BOUNDED Prop. 1.1 is closed relative to the listed inputs."

---

## S-82 (R-030)

### Reading 1: Q̃ surjectivity, Q̃Q̃^T ≥ q_j > 0 on ℓ²(Z⁴), at the base background (T) U_0 = 1
- **Source:** SOURCES_T2_G2 l. 54–58. This is the first half of (Gap). The reading is needed only at U_0 = 1. The bound at background (F) belongs to (Gap_f), which is a separate open input and is not part of this item.
- **Evidence:**
  - CMP 96 p. 228 [PDF 6], (2.35): "A = HB = GQ*(QGQ*)^{−1}B." The text above it says: "The operator G is positive, hence QGQ* is positive also and an inverse is a well-defined and positive operator." So QH = I.
  - CMP 96 p. 249 [PDF 27], Corollary 2.8: "(HB)(b) = Σ_{c∈𝔅}(L^{j(c)}η)^d H(b,c)B(c), (2.150) satisfies the inequality |H(b,c)|, … ≤ O(1)[1, …](L^{j′}η)^{−d}e^{−δ_5 d(y,c_−)} (1.151)." The page prints the equation number as "(1.151)". In sequence it is (2.151).
  - SOURCES_QE_KE_HQ §1 identifies this Q_j with CMP 95 (1.18) ([V], from images of CMP 95 pp. 19–20, CMP 96 p. 224, CMP 98 pp. 27, 36). That operator is the straight-line average composed j times, which is CMP 98 (125) at V_0 = 1. So it is the Q̃ of SOURCES_T2_G2 at U_0 = 1.
- **Proof [P]:**
  - Take the single-scale case: one level j on the whole lattice.
  - Schur bound in Balaban's weighted ℓ² norms:
    - sup_b Σ_c (L^jη)^d|H(b,c)| ≤ O(1)Σ_c e^{−δ_5 d} = O(1);
    - sup_c Σ_b η^d|H(b,c)| ≤ O(1)(L^jη)^{−d}·Σ_b η^d e^{−δ_5 d} = O(1);
    - so ‖H‖ ≤ C, uniformly in k and in the volume.
  - From QH = I: ‖x‖ = ‖H^TQ^Tx‖ ≤ C‖Q^Tx‖. So QQ^T ≥ C^{−2} on the torus, uniformly in N.
  - On Z⁴, Q̃ at U_0 = 1 is translation invariant. The bound holds on each Bloch fiber, from the torus bound at each rational momentum and the continuity of the symbol.
  - So q_j ≥ C^{−2}. The constant C comes from Cor. 2.8 and is uniform in j.
- **Grade:** [P], relative to CMP 96 (2.35) and Cor. 2.8 [V]. Cor. 2.8 is a multiscale statement. Its specialization to one scale (take Λ_j = the whole lattice) is [P].
- **Note:** for regular U ≠ 1 the same bound follows from L-252 (Theorem QE): ‖Q(U)𝓔_U − I‖ ≤ ½ gives a bounded right inverse. SOURCES_T2_G2 does not need this at (T).

### Reading 2: averaging analyticity
The reading: near regular configurations, the entries of the linearized composed averaging Q̃(a), or of Q̃ at V_f, are analytic in the background, with bounds uniform in p. SOURCES_T2_G2 Thm 3.2 and Lemma 4.2 use this reading. SOURCES_T2_G2_VERIFY graded the quote [V] and the application [I].
- **Evidence:** CMP 99 p. 406 [PDF 18]:
  - (3.78): "Q_j(U′U) = Q(Ū′^{j−1}Ū^{j−1})⋯Q(Ū′Ū)Q(U′U)." This is a composition of one-step linearized averages at averaged backgrounds. It has the same structure as the Q̃ of SOURCES_T2_G2.
  - "By Proposition 6 [5] the averages Ū′ⁿ, n = j−1, …, 0, are analytic functions of A on configurations satisfying the first inequality in (3.37), i.e. |A| < α_1(L^jη)^{−1} on B^j(Λ_j). … It follows from the explicit formula (124) [5] that the averaging operator Q(exp iBV) is an analytic function of B, for B sufficiently small."
  - "From (3.78) it follows that Q_j(U′U) depends analytically on A in the above domain."
  - (3.80)–(3.81): Q_j(U′U) = Q_j(U) + F_{2,j}(A), with |F_{2,j}(A)A′| ≤ O(1)α_1Q_j″|A′|. "The constant O(1) above depends only on d and L."
- **Application [P-sketch]:**
  - Plane wave U_0(a): take U = 1 and U′ = exp(iA_a). The field A_a is bounded by C|a| at every link, and C does not depend on p. So for |a| ≤ a_1(α_1) the condition of (3.37) holds on the whole lattice. Then Q̃(a) is analytic in a. Its bounds depend only on sup|A_a|, so they are uniform in p.
  - Constant field V_f: by CMP 95 (1.18) and CMP 98 (125), (Q̃B)(c) depends only on the links in B^j(c_−) ∪ B^j(c_+). Q̃ is gauge covariant. So we can compute each matrix entry in the symmetric gauge centered at its block pair, where |A| ≤ C|f|. Then (3.78)–(3.80) apply entry by entry for |f| ≤ f_0(α_1). This is the gauge-per-cell step of SOURCES_T2_G2 Lemma 4.2, which SOURCES_T2_G2_VERIFY §4.4 confirmed.
  - One step was not read on an image: the gauge covariance of the linearized average. It follows from the covariance of the nonlinear average (CMP 98), but we did not check it on a page.
- **Grade:** [P-sketch], relative to CMP 99 (3.78)–(3.81) [V].

### Proposed ledger status text (R-030)
"reduced [R, verified 2026-10-28] (SOURCES_T2_G2 + VERIFY: 21 CONFIRMED, 6 CORRECTED): torus-limit theorems and commutation of the p²/f² coefficient extraction with N → ∞ at fixed j. The only remaining open input is (Gap_f).
- Q̃ surjectivity at (T) is now [P]: Q̃Q̃^T ≥ ‖H‖^{−2}. QH = I by CMP 96 (2.35) p. 228 [V]. ‖H‖ ≤ O(1) by a Schur bound from CMP 96 Cor. 2.8 p. 249 [V]. The proof uses the straight-line identification of SOURCES_QE_KE_HQ §1 [V].
- The averaging-analyticity reading is now [P-sketch]. CMP 99 (3.78)–(3.81) p. 406 [V] gives analyticity of Q_j(U′U) in A for |A| < α_1(L^jη)^{−1}. This applies to U_0(a) uniformly in p, and to V_f entry by entry by locality and gauge covariance. The gauge covariance of the linearized average is not checked on an image.

SOURCES_SWEEP_E §S-82."

---

## S-45 (R-001)

Pages read at 150 dpi: CMP 96 p. 231; CMP 99 pp. 391, 392, 393, 397, 399, 422; CMP 95 p. 26.
Not covered here: the WG_FULL regrade fixes (i)–(ii). OPEN_ITEMS_SWEEP l. 179 lists that check as a separate verifier item.

### [I-a1]: CMP 99 Theorems 3.1 and 3.3 are stated at a = 1
**Evidence.**
- CMP 99 p. 397, Thm 3.1: "the operator G′(U) (a = 1) satisfies the inequalities … (3.42)".
- CMP 99 p. 399, Thm 3.3: "the operator G(U) (a = 1) satisfies the inequalities (3.42)–(3.47), with G′(U) replaced by G(U)".
- CMP 95 p. 26: "The operator R given by (1.44) is of course by definition independent of a and we can take arbitrary a in the representation, e.g. a = 1, which is most convenient for bounds."
- For G′ in S2_FORM Π3, λ = G′RD*A does not depend on a [P]. Put f = RD*A = Δ_Uλ_0 with Q′λ_0 = 0. Then (Δ_U + Q′*aQ′)λ_0 = f for every a > 0 (CMP 99 (3.25); SOURCES_S2_FORM l. 35). So Π3 needs Thm 3.1 only at the printed value a = 1.

**Grade.**
- G′: [V] + [P].
- G: convention (cost: none). All consumers set a = 1, as Balaban does. Then K_ext = K_E + 1. A grep of the project .md files found no consumer with a ≠ 1.

### [I-geom]: the cubes Δ(y), y ∈ 𝔅, partition Ω_0
**Evidence.**
- CMP 99 p. 393: "Λ_j = Ω_j^{(j)}∖Ω_{j+1}^{(j)}, j = 0, 1, …, k, Ω_{k+1} = ∅, or Ω_j∖Ω_{j+1} = B^j(Λ_j)".
- CMP 99 p. 397: "if y ∈ Λ_j, then Δ(y) = B^j(y)".
- So Ω_0 = ⊔_j ⊔_{y∈Λ_j} B^j(y). Blocks at one scale are disjoint by the definition of the block lattice. We did not read that definition on an image.

**Grade.** [V]. The disjointness of blocks at one scale comes from the definition of the block lattice. Citation fix: change the source from CMP 96 p. 231 to CMP 99 pp. 393 and 397.

### d-path metric ("one fine step = η/ℓ(b)")
**Evidence.**
- CMP 96 p. 231 (2.46) defines d on 𝔅 by contours on T_η: d(y,y′) = inf Σ_j (L^jη)^{−1}|Γ ∩ B^j(Λ_j)|, with |Γ| = nη. Inside B^j(Λ_j) the contours run along Λ_j bonds. On 𝔅 this is a path metric [V]. The triangle inequality follows by joining contours [P].
- The same page extends d to fine points by d(x,x′) = d(y^j(x), y^{j′}(x′)). This value depends only on the block centres. So one fine step costs 0 or about 1, not η/ℓ(b).
- With the printed d, Lemma T (c) of SOURCES_C_CONDITION gives only |Δχ|/η ≤ 3/(Dη), not 3/(Dℓ(b)).
- Side note [V]: CMP 99 p. 397 cites "(2.36) in [4]" for d. CMP 96 prints the definition as (2.46).

**Grade.**
- On 𝔅: [V].
- On fine bonds: the reading is FALSE for the printed d. The fix is a convention: d_f := infimum over fine paths of Σ_j (L^jη)^{−1}|Γ ∩ B^j(Λ_j)|, with d_f used in χ.
- Cost of the convention: restate L-284 (Lemma T) (a)–(b), D_0 and c_T with d_f. This needs the comparison d(y(x), y) − c ≤ d_f ≤ C·d(y(x), y) + c, with c and C depending on d and L only. This comparison is not proved. It stays [I].

### Δ^{(2)} symmetry [I-conv] (SOURCES_S2_G1_V7 A2.5)
**Evidence.**
- CMP 99 p. 422 (3.134): "⟨A, Δ^{(2)}A⟩ = 2⟨HC^{(2)}(A), J⟩", followed by "it defines the second quadratic form in (3.128)".
- CMP 99 p. 422 (3.136) writes Δ^{(2)}A with the derivative δ/δA.
- Precedent, CMP 99 p. 392: Δ "is a hermitian operator given by the quadratic form" (3.10). The inner product is (3.11).
- If δ/δA is the gradient for ⟨·,·⟩, then (3.134) and (3.136) agree by Euler's identity.

**Grade.** Convention (cost: none). Residual: we did not prove that no other weight agrees with (3.134). If another weight did, the column sums in the A3.1 Schur step would not be controlled.

### Proposed ledger status text (R-001)
Keep the current R-001 status text. Replace the clause "readings [I-a1], [I-geom], the d-path metric (one fine step = η/ℓ(b)), and the Δ^{(2)} symmetry reading [I-conv] (S2_G1 A2.5)" with this text:
"readings resolved 2026-10-28 (SOURCES_SWEEP_E §S-45, images):
- [I-a1]: [V] + [P] for G′ (CMP 99 p. 397; λ and R do not depend on a, CMP 95 p. 26). For G, a = 1 is a convention (cost: none; CMP 99 p. 399).
- [I-geom]: [V] (CMP 99 pp. 393 and 397).
- d-path metric: [V] on 𝔅 (CMP 96 p. 231 (2.46)). The printed extension to fine points depends only on the block centres, so 'one fine step = η/ℓ(b)' is FALSE for the printed d. L-284 (Lemma T) (c) uses a fine metric d_f as a convention. Open [I]: the two-sided comparison of d_f with (2.46), and Lemma T (a)–(b) restated with d_f.
- Δ^{(2)} symmetry: convention (cost: none). Δ^{(2)} is the symmetric operator of the printed form (3.134).
- Citation errors: CMP 99 p. 397 cites (2.36) for d, but CMP 96 prints (2.46). The source of [I-geom] is CMP 99 pp. 393 and 397, not CMP 96 p. 231."

---

## S-55 (R-009)

Pages read at 150 dpi: CMP 116 pp. 3, 13, 15; CMP 109 p. 262; CMP 99 pp. 392, 422.

### I-a: an operator defined by a quadratic form is its symmetric representative
**Evidence.** CMP 99 p. 392 (3.10) and p. 422 (3.134) define operators by forms. The papers print no general rule. We did not check CMP 109 p. 267 (Δ_J) on an image.

**Grade.** Convention (cost: none). The Gaussian (2.5) sees only the form. Where the proof uses the Δ^{(2)} kernel, the cost is the cost of the R-001 [I-conv] convention, which is also none.

### I-b: the σ-weighted walk sum (1.1)
**Evidence.**
- CMP 116 p. 3: "for a random walk ω localized in X̃_0^5 ∪ ⋯ ∪ X̃_n^5 we take the {Δ_1, …, Δ_m} of all cubes from σ_0 which intersect this localization domain, and we multiply the term … by s(Δ_1)⋯s(Δ_m)".
- CMP 116 p. 13: the parameters s(Δ) "are introduced into the operators as before".

**Grade.** The rule is [V]. Its application to the walks of WC_FULL is convention K-046, at the cost given in that row. Correction: (1.1) must use the condition Δ ∩ ∪X̃_i^5 ≠ ∅, not Δ ∩ dom(ω) ≠ ∅.

### I-c: the geometry facts (G1)–(G3)
**(G1)**
- CMP 116 p. 13 defines σ_0 as the cubes disjoint from the interior of Z̃_0. It says "the tilde over Z_0 concerns M-cubes".
- CMP 109 p. 262 shows that the tilde adds one layer of cubes.
- Grade: [V] for the definitions. dist ≥ M is [P]. "One layer = all M-cubes that touch Z_0" is a convention (cost: none). If the layer had only the face-adjacent cubes, a cube that touches Z_0 at a corner would break the bound.

**(G2)**
- Balaban prints only "small, connected families of M_1-cubes".
- The bound diam ≤ c′M_1 is a project result [P] (WC_FULL 5.2(a)). The constant c′ must include the 5M_1 margin from I-b.

**(G3)**
- [P] (our own check): an Euler tour gives at most 2(1 + D/ℓ) pieces.
- The factor 3^d needs diameter < 2ℓ. Otherwise use 4^d. This changes e^{2·3^dκ_1} to e^{2·4^dκ_1}, and it changes (H_κ) to ℓ ≥ 16·4^dκ_1/ε″.

### I-d: W < ∞ at rate ε″/8, symmetric in b, b′
**Evidence.** This is a project statement, not a source reading.
- WC_FULL l. 210–211 and 241–242: each next domain has at most C′_𝒟 choices. The trees are coded by their depth-first sequences of domains. So the walk sum is ≤ 2 when C′_𝒟c_1ρ ≤ ½.
- Then W ≤ 2 sup_b Σ_{b′}e^{−(ε″/8)|b−b′|} < ∞.
- Symmetry in b, b′ follows when the tree code is re-rooted at b′.

**Grade.** [P] (our own argument). No independent verifier has checked it.

### I-e: "Re C^{−1}" in (2.15) is the symmetric real part H(·)
**Evidence.**
- CMP 116 p. 15 (2.15) contains |det(C^{(k)}(Z_0,σ(Z))^{−1}) / det(Re C^{(k)}(Z_0,σ(Z))^{−1})|^{1/2} and the measure dμ_{(Re C^{(k)})^{−1}}. The page prints the equation label as "(7.14)".
- The same page says: "the operators in it are not symmetric, and the second measure is complex … The general case is handled by a perturbative argument."
- Balaban does not define "Re" of an operator.

**Grade.** Convention (cost: none). SOURCES_A8_POS 2.3 proves (2.15) in this reading [P, verified]. For a complex symmetric K, H(K) = Re K. The choice of normalisation changes r_σ only within ‖sym K − H‖ ≤ ‖E‖.

### Proposed ledger status text (R-009)
Keep the current R-009 status text. Replace the clause "Readings I-a–I-e: … 'Re C^{−1}' = symmetric real part." with this text:
"readings I-a–I-e resolved 2026-10-28 (SOURCES_SWEEP_E §S-55, images):
- I-a: convention (cost: none; precedent CMP 99 p. 392 (3.10) and p. 422 (3.134)).
- I-b: the s-rule is [V] (CMP 116 pp. 3, 13). Its use on the WC_FULL walks is K-046. Correction: (1.1) uses ∪X̃_i^5.
- I-c: (G1) [V] (CMP 116 p. 13; CMP 109 p. 262), with 'one layer = all touching M-cubes' a convention (cost: none). (G2) is project [P] (WC_FULL 5.2(a), with c′ including 5M_1). (G3) is [P], with 3^d replaced by 4^d unless the diameter is < 2ℓ.
- I-d: [P] (not verified), from the count in WC_FULL 4.2/5.3. Symmetry follows by re-rooting.
- I-e: convention (cost: none). Re := the symmetric real part in CMP 116 p. 15 (2.15).
No [I] remains among I-a–I-e. I-d and the (G3) constant need a verifier."

---

## S-65 (R-018)

### I2: locality of C̃^{(2)} / D̃^{(2)}, the second-order part of the one-step average
- **Evidence.**
  - CMP 98 p. 38 [PDF 22], Prop. 4: "the function Q_k(U_0, ηA, c) … is an analytic function of the variables A_b, b ⊂ B^k(c_−) ∪ B^k(c_+)". The same page prints (134), Q_k(U_0, ηA) = Q_k(U_0)A + C_k(U_0, A).
  - CMP 98 p. 39 [PDF 23], (136): C_k = C_k^{(2)} + C_k^{(3)} + ….
  - CMP 102 UV p. 260 [PDF 6]: "The function D̃(A, c), similarly as Q(A′, c), depends on A restricted to B(c_−) ∪ B(c_+)."
  - CMP 99 p. 427 [PDF 39]: "D̃^{(2)}(B) is a quadratic polynomial in B with properties similar to C^{(2)}(A), only restricted to unit blocks."
  - CMP 109 p. 267 [PDF 19]: "D̃^{(2)}(B) = C̃^{(2)}(B)".
- **Correction.** The support is the two blocks B(c_−) ∪ B(c_+). So the range at unit scale is 2L, not "≤ L". WC_FULL 4.1(d) already uses 2L.
- **Grade:** [V]. The step "a Taylor coefficient of a local function is local" is a one-line [P].

### I3: Q̃ (CMP 109) = Q_1(U_1) (CMP 99); the corridor blocks are the same; V^{(k)} is the unit-lattice background
- **Evidence.**
  - CMP 109 p. 265 [PDF 17], (2.3): "V^{(k)} = Ū^k_{k+1} = M^k(U_{k+1})".
  - CMP 109 p. 267 [PDF 19] defines the corridor: "the bond b_0(c) … belonging to the corridor B(c) = {b ∈ T^{(k)} : b_− ∈ B(c_−), b_+ ∈ B(c_+)}".
  - CMP 109 p. 267 [PDF 19]: "The quadratic form in B′ above is equal to −1/2⟨B′, Δ^{(k)}B′⟩, see the definition (3.156) [13]". In the reference list of CMP 109, [13] is CMP 99.
  - CMP 109 p. 268 [PDF 20]: "C is the operator determined by the configuration V^{(k)}, … C^{(k)} = C^{(k)}(U_{k+1}) = (C*Δ^{(k)}C)^{−1}".
  - CMP 99 p. 428 has the same definitions of B(c) and b_0. This page was checked on the text layer only. CMP 99 p. 427 [PDF 39], (3.155): the operators are "defined by the sequence {Ω_j} and a configuration U satisfying (3.35), (3.36)".
- **Grade:** [V]. Balaban prints the identification himself. The only reading left is notation: CMP 109 labels the background by U_{k+1}, and (2.3) links that label to V^{(k)}.

### "U_{k,Z} obeys CMP 102 Thm 1"
- **Evidence.**
  - CMP 122 I p. 193 [PDF 19]: "The corresponding configuration U_{k,Z} satisfies the condition |∂U_{k,Z} − 1| < O(1)B_3M²εη²."
  - CMP 122 I p. 191 [PDF 17]: "B = B_3 from Theorem 1 [16]". (1.80) on p. 195 [PDF 21] also contains B_3.
  - B_3 is the constant of Thm 1 in the CMP 102 variational paper, p. 279 [PDF 3]. So Balaban himself applies the Thm 1 bound to U_{k,Z}.
- **Citation slip.** CMP 122 I says that its reference numbers follow the list of CMP 109. In that list, [16] is the UV-stability paper, and its Thm 1 has no B_3. The theorem with B_3 is [15], the variational paper. The slip is in the citation only. The mathematics does not change.
- **Open part: the determining-set hypothesis.**
  - CMP 102 p. 277 [PDF 1], (1), requires dist > RM_1 with R ≥ R_1.
  - CMP 119 p. 256 [PDF 14] gives dist ≥ L^nξM_1. If the two papers use the same M_1, then R = L.
  - CMP 119 p. 245 [PDF 3]: "M_1 is the size of large cubes for which all the theorems of the previous papers, especially those concerning the variational problem, are valid."
- **CONFLICT WITH THE CANON (needs a verifier).** SOURCES_T2_HMINUSC_VERIFY reads this match as "R_1 < L". But CMP 102 p. 277 fixes R_1 "in such a way that all the results of [3, 5, 6] hold". In the canon, the CMP 99 constant R obeys R > 18dL (N-180), which is far larger than L. So under the canon, "R_1 < L" appears to be false.
- **Proposed convention.** Make M_1^{(119)} a multiple of R_1M_1^{(102)}. Then R = L·R_1 ≥ R_1. This follows the intent printed on CMP 119 p. 245 and the rule of Thm 1 that "M is a multiple of R_1M_1" (p. 279). The divisibility assumes that block sizes are powers of L.
- **Grade:** [V] for the printed application. The hypothesis match is a convention (cost: one lower bound M_1^{(119)} ≥ R_1M_1^{(102)} plus divisibility, at N-270, after R at N-180).

### B and B_5 are fixed numbers
- **B.**
  - CMP 122 I p. 191 [PDF 17]: "The constant B is a fixed absolute constant, for example we can take the constant B = B_3 from Theorem 1 [16]."
  - CMP 102 p. 279 [PDF 3]: "The constants a_0, a_1, B_3, depend on d and L only."
  - **Grade:** [V].
- **B_5.**
  - CMP 122 I p. 195 [PDF 21]: "The constant B_5 is determined by the geometry of the problem, more precisely by the condition (i). The power M^5 is not the optimal one".
  - CMP 122 I p. 192 [PDF 18]: Λ is "a rectangular parallelepiped contained in a cube of the size 100M". This geometry is the same at every k. M appears explicitly.
  - No page prints "B_5 depends on d, L only".
  - The only canon users of B_5^{122} are N-440 and N-470. Both come after M (N-310).
  - **Grade:** [V] that the k-independent geometry fixes B_5. The statement "B_5^{122} = B_5(d, L, M)" is a convention (cost: none; move B_5 from its present slot to any slot after N-310).

### Earlier note: C_2, C_4, B_0 do not depend on k and depend on (d, L) only
- **Evidence.**
  - CMP 102 p. 285 [PDF 9]: (44) cites "Proposition 4 of [4]" for C_2, and (46) cites "Theorem 3.12 from [5]" for B_0. Here [4] = CMP 98 and [5] = CMP 99.
  - CMP 98 p. 39 [PDF 23]: "The constants C_2, c_4 are independent of k, C_2 depends on d and c_4 depends on d and L."
  - CMP 102 p. 293 [PDF 17]: "The constants a_3, C_4 depend on d and L only."
  - CMP 99 pp. 423–424 [PDF 35–36]: the B_0 constants "also depend on d and L only".
- **Grade:** [V].

### Proposed ledger status text (R-018)
Keep the current R-018 status text up to "Remaining [R]: …". Replace "Remaining [I]: I2, I3, U_{k,Z} obeys CMP 102 Thm 1, B and B_5 fixed numbers" and the "Earlier note" sentence with this text:
"Sweep E (SOURCES_SWEEP_E §S-65, images) resolved every [I] reading:
- I2 [V]: CMP 98 Prop. 4 p. 38; CMP 102 UV p. 260; CMP 99 p. 427. The support is B(c_−) ∪ B(c_+), so the range is 2L.
- I3 [V]: CMP 109 pp. 265, 267, 268 print the identification with CMP 99 (3.156) at the background V^{(k)}.
- B [V]: CMP 122 I p. 191; CMP 102 p. 279.
- C_2, C_4, B_0 do not depend on k and depend on (d, L) only [V]: CMP 98 p. 39; CMP 102 p. 293; CMP 99 pp. 423–424.
- 'U_{k,Z} obeys CMP 102 Thm 1': the printed use is [V] (CMP 122 I p. 193). The hypothesis match is a new convention: M_1^{(119)} is a multiple of R_1M_1^{(102)} (cost: one lower bound on M_1 at N-270). It replaces the reading 'R_1 < L', which conflicts with N-180.
- B_5^{122}: convention (cost: none; place it after N-310).
- Citation note: 'Theorem 1 [16]' in CMP 122 I means the CMP 102 variational paper, [15].
Remaining [R]: CMP 102 Thm 1; CMP 98 Prop. 2 and (139); CMP 99 (3.133); CMP 109 p. 263. No [I] remains."

---

## S-98 (R-041)

### α_2–α_4 (γ_2) scaling in the large-field layer (SOURCES_T2_IEPS_LF R1)
- **Evidence.** CMP 119 p. 259 [PDF 17], (2.28), prints only α_{0,j} and α_{1,j}. The page has no α_2–α_4 and no γ_2. SOURCES_T2_IEPS_LF_VERIFY (4) did not find them on any page it read as an image. Its text search is weak evidence. SOURCES_T2_IEPS_LF R1 shows that the proof closes for all three possible scalings.
- **Grade:** convention (cost: γ ≤ γ(λ_V), and C_4 → λ_VC_4 if q_4 = p_1). The paper prints nothing on this point, so [V] is not possible.

### q_0 > p_0 vs q_0 = p_0 (SOURCES_T2_IEPS_LF R2)
- **Evidence.** CMP 119 p. 259 [PDF 17]: "where q_0, q_1 are integers greater than 1, C_0, C_1 are sufficiently large positive numbers." So q_0 is a free choice.
- **Grade:** convention: fix q_0 := p_0 + 1. Then γ restores (L1), and the proof does not need the case q_0 = p_0. Cost: q_0 must be fixed after p_0 (N-410). The canon already has this order.

### H-130 (I-lin) and "Haar"
- **Haar.**
  - CMP 109 p. 267 [PDF 19] prints "dB′σ(B′)δ(Q̃(B′))" and "the factors σ_0 are included into the normalization factor N′_k".
  - CMP 102 UV p. 260 [PDF 6] defines σ: "we express the Haar measure dU′ as dU′ = σ(A′)dA′ = σ_0 σ/σ_0(A′)dA′, σ_0 = σ(0)". It also says that σ is "analytic, positive, even" near 0.
  - **Grade:** [V]. The companion paper prints the definition, and CMP 109 uses the same pair σ, σ_0. The link between the two papers is a match of notation.
- **H-130 (I-lin).**
  - SOURCES_MC_IV0_VERIFY found that CMP 116 p. 8 bounds E_k piece by piece, with the inequalities of Part I. Linearity then holds if the input ball is defined per piece. Sweep E did not re-image p. 8.
  - **Grade:** convention (cost: none). State the input ball of H-133 as "each structural piece of E_k obeys its Part I bound times c".

### A_min pairing
- This is project bookkeeping, not a reading of Balaban. If X* ∈ ∂B, A_min can be only piecewise analytic in the background (SOURCES_MA2_VERIFY item 1). No Balaban page applies.
- **Grade:** convention. Cost: the H-143 (M-A) chain may use e^{uA_min} only together with D^G inside the analytic ratio N_x/D_x, or in real bounds. It must not use e^{uA_min} as a separate analytic factor in the polymer localization.

### F2′–α link
- **Evidence.**
  - CMP 122 II p. 377 [PDF 23], image read in this sweep: "|V(Y,(U,J))| ≤ α exp(−(1 + 2β)κd_{k,Z}(Y)) (1.68) for Y∖Z^∼ ≠ ∅, with a constant α, which can be chosen arbitrarily small for γ small enough".
  - SOURCES_MB_VERIFY item 4 found that pp. 377–390 never mention ε′. So a fixed F2′ enlargement (32ε′ → 40ε′) enters only through α. A smaller γ absorbs it.
- **Grade:** [V] for the α line (image of p. 377). [P] for the absorption.
- **Coverage gap.** Sweep E did not check pp. 378–379, 382, 384–386, 388 and 390 on images for ε′. The statement "no ε′ on pp. 377–390" rests on the text layer for those pages.

### The two [I] readings of (C2)
- **(a) m = M^•∘Q_k^{s*} is local and analytic, with O(1) derivatives c_m(d, L).**
  - CMP 122 I p. 192 [PDF 18], (1.74): U_{k,Z} = U(𝔹_k(Z), M^•(Q_k^{s*}V_k)).
  - CMP 119 p. 246 [PDF 4], (1.3): Q^{s*} copies V(c) onto the corridor bonds B(c), so each output bond depends on one input bond. The same page says that the function "depends on the field V restricted to □′^{~4}".
  - CMP 119 p. 256 [PDF 14], (2.11): M_𝔹(U) = M^j(U) on Γ_j.
  - CMP 98 Prop. 4, pp. 38–39 [PDF 22–23], gives analyticity and locality, |C_k| ≤ C_2|A|² with C_2 independent of k, and the bounds (139) and (143) on the linear part.
  - **Grade:** [V] for each part. [P] for the composition.
- **(b) "R_1 < L suffices for condition (1)."** This is the same determining-set match as in §S-65. Under the canon it appears to be false (N-180 gives R > 18dL). Sweep E proposes the same replacement convention: M_1^{(119)} is a multiple of R_1M_1^{(102)} (CMP 119 p. 245).
  - **Grade:** convention (cost: one lower bound on M_1 at N-270).

### Proposed ledger status text (R-041)
"H-146 (M-C) reduced [verified 2026-10-28] to the printed CMP 116 §2 conditions (23 + 4) + Lemma 2 + (1.36) + p. 12 (2.5)–(2.6), with shrinks ε_1/(4λ_V), γ/(8λ_V) (SOURCES_MC + VERIFY). All four H-146 (M-C) items are CLOSED. Sweep E (SOURCES_SWEEP_E §S-98, images) resolved the residues:
- α_2–α_4 (γ_2) scaling: convention; the proof closes on every branch (cost: γ ≤ γ(λ_V); C_4 → λ_VC_4 if q_4 = p_1).
- q_0: convention q_0 := p_0 + 1 (CMP 119 p. 259 prints q_0 as a free integer > 1).
- Haar [V]: CMP 102 UV p. 260 defines σ; CMP 109 p. 267 uses it.
- H-130 (I-lin): convention; the input ball is defined per piece (cost: none).
- A_min pairing: convention; e^{uA_min} appears only inside N_x/D_x or in real bounds.
- F2′–α link: [V] CMP 122 II p. 377 (1.68), plus [P] absorption by γ. The absence of ε′ on pp. 378–390 rests on the text layer.
- (C2)(a): [V] CMP 119 p. 246 (1.3), CMP 122 I p. 192 (1.74), CMP 98 Prop. 4, plus [P] for the composition.
- (C2)(b): 'R_1 < L' is WITHDRAWN because it conflicts with N-180. The convention 'M_1^{(119)} is a multiple of R_1M_1^{(102)}' replaces it (cost: one lower bound on M_1 at N-270).
Round 7 text (chain item 5, (C1) PROVED given R-019, R-018 and the canon fixes; MA2 §4.4 Cauchy radius corrected in the R-019 row) is unchanged. The grade stays 'reduced', because the row rests on R-005, R-018 and R-019."

---

## Report

- **Resolved to [V] (or [V] plus a short [P]):** 16 readings.
  - R-001: [I-a1] for G′, [I-geom], the d metric on 𝔅.
  - R-009: I-b rule, (G1) definitions.
  - R-018: I2, I3, B, C_2/C_4/B_0, the printed use of Thm 1 on U_{k,Z}.
  - R-041: Haar, F2′–α, (C2)(a).
  - R-032: Λ_j nesting, Conv_Λ cubes, σ_0 rule.
- **Resolved to [P] or [P-sketch]:** 5 readings.
  - [P]: R-028 b_{t,m}, R-030 Q̃ surjectivity, R-009 I-d (not yet verified), R-009 (G3) with 4^d.
  - [P-sketch]: R-030 averaging analyticity.
- **Marked as conventions:** 13 readings.
  - Cost none: a = 1 for G, Δ^{(2)} symmetry, I-a, I-e, layer rule, I-lin, ζ_□ (K-050), B_5 slot.
  - Stated cost: d_f fine metric, M_1 match (replaces "R_1 < L"), α_2–α_4 scaling, q_0 := p_0 + 1, A_min pairing.
- **Still [I]:** 1, the comparison of d_f with CMP 96 (2.46) that L-284 (Lemma T) needs.
- **Findings for a verifier:**
  - The printed d does not support "one fine step = η/ℓ(b)".
  - "R_1 < L" conflicts with N-180.
