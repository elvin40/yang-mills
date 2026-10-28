IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_GGAIN — carrying out (G-gain): CMP 116 §2 with g_k|B| in place of ε_1

Status 2026-10-27 (Claude, Opus; unverified). Inputs: SOURCES_SM §4–§6, SOURCES_HHIST, SOURCES_HHIST_N1_VERIFY Part 1, SOURCES_W4, CMP 116 §1–§2 (balaban/1988_cmp116_rg_approach_II_cluster.*). Firewall kept (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md).
Sections are appended in order of work; the ledger (last section) is authoritative.

## 1. Quoted inputs from CMP 116 §1–§2 [V, page images pp. 7–8, 10–11, 16–17; OCR pp. 18–21]

Notation: x := g_kB (the only way g_k enters the B-integrand, SOURCES_SM §4.1). |B|_Y := sup of |B(b)| over bonds b in Y.
 (1.19)–(1.20): "B′ = g_kCB − hD(g_kCB)", "|B′| ≤ … ≤ C_1g_k|B| < C_1ε_1, … and g_k|B| < ε_1."
 (1.22): 1/|t_□| = 8B_0C_1e^{16κ_1}α_2^{−1}g_k|B| < 8B_0C_1e^{16κ_1}α_2^{−1}ε_1. (1.24) carries the factor α_2^{−1}g_k|B| pointwise in B.
 p. 8: "Another possibility is to use the expression g_k|B| instead of ε_1. It gives a better bound, but the above is simpler."
 Lemma 1, (1.34)–(1.36): V′_k(Y,·,B) analytic on {|B| < ε_1g_k^{−1} on Y}, |V′_k| ≤ E_0ε_1C_1M^q e^{C_2κ_1} e^{−(1−2δ)κd_k(Y)}.
 p. 10: the P^{(k)} terms carry 1/g_k²; "this implies that we can get a bounded polynomial in B only". (1.39) |(1.38)| ≤ C_3(e^{16κ_1}|B′|)³M^4 e^{−(κ_1−1)M^{−4}|Y∖□|}, analytic for e^{16κ_1}|B′| ≤ a_1. (1.40): the second B′-derivative is ≤ ½C_3 3³e^{7·8κ_1}|B′|·(decay), "if e^{16κ_1}|B′| ≤ ⅓a_1". So the P^{(k)} density is cubic and higher in B′.
 Lemma 2, (1.42)–(1.43): V_k(Y,B) = ½⟨Q(Y,B)B,B⟩ + V″_k(Y,B), |Q(Y,B,b,b′)| ≤ C_3ε_1M^4 e^{C_2κ_1}·(decay); V″_k obeys (1.36).
 (2.18) (= W4 (C1)): 1/|τ(Y)| = E_0ε_1C_1α_4^{−1}M^q e^{C_2κ_1} e^{−(1−3δ)κd_k(Y)}.
 (2.19)–(2.20): |τ(Y)|·(quadratic form) ≤ ½Σα_4M^{−4}(decay)|B(b)||B(b′)|; summed: Σ_{Y∈D}|τ(Y)||V_k(Y,B)| ≤ ½O(1)α_4Σ_{b⊂Y_0}|B(b)|² + O(1)α_4M^{−4}|Y_0|. So Balaban ALREADY absorbs a quadratic weight in B into the Gaussian, at strength α_4.
 (2.22): χ_{k,Y_0}(B)χ^c_{k,P}(B) ≤ exp(−½γ_2(ε_1²/g_k²)|P| + ½γ_2‖PB‖²).
 (2.23)–(2.25): Gaussian with the extra forms ½α_5‖ZX‖², ½α_5‖Z_0B‖², α_5 = O(1)e^{−δ_0M/3} + O(α_0+α_1) + O(1)α_4 + γ_2; result ≤ exp(O(α_5)|Z|).
 (2.26): |(2.14)| ≤ e^{−(κ_1−1)(LM)^{−4}|Z∖Z′_0|}·[Π_{Y∈D}2E_0ε_1C_1α_4^{−1}M^q e^{C_2κ_1}e^{−(1−3δ)κd_k(Y)}]·exp(−½γ_2(ε_1²/g_k²)|P|)·e^{O(1)α_5|Z|}.
 (C2)–(C4) (W4 §5): 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1}e^{5κ} ≤ 1; ε_2 := 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1} ≤ 1; 2(L+2)^4O(1)ε_2e^{5κ} ≤ 1; C_3 := 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1}.
 (2.38) Lemma 3: |H(Z)| ≤ C_3ε_1 exp(−(1−8δ)½Lκd_{k+1}(Z)). (2.41): |E^{(k+1)}(X)| ≤ O(1)C_3ε_1 exp(−(1−10δ)½Lκd_{k+1}(X)).
 (2.31): the sum over P needs γ_2ε_1²/g_k² large, "for g_k², i.e. γ sufficiently small, depending on M and κ". So g_k ≤ γ ≪ ε_1 in Balaban's order of constants.

## 2. Where ε_1 enters §2: sup needed vs Gaussian average sufficient

 (S1) Lemma 1 domain (1.34) and Lemma 2: the integrand must be analytic in x = g_kB. This needs the integration support inside {g_k|B| < ε_1}. NEEDS THE CUT (χ_k). Not replaceable by an average.
 (S2) (2.18)/(C1)–(C4): the Mayer circle radius τ(Y) and the convergence of the sums over D, P, Z_0 use the sup v := E_0ε_1C_1M^q e^{C_2κ_1} of (1.36) on (1.34). These are the convergence conditions. With the sup they hold; a Gaussian average can REPLACE ε_1 by g_k here only after a weight absorption (§5), never remove the cut (S1).
 (S3) (1.43)→(2.19)–(2.20): the Q-coefficient uses |B′| ≤ C_1ε_1. Pointwise it is C_1g_k|B|. Balaban already bounds the Q-part by a Gaussian quadratic form, so here the Gaussian average is what he uses.
 (S4) (2.22), (2.31): the large-field complements χ^c give e^{−γ_2ε_1²/g_k²} per bond. NEEDS THE CUT; it is a gain, uniform in g_k.
 (S5) Vertex insertions (one marked vertex, e.g. a derivative): only a single polynomial weight in B appears. The Gaussian average suffices (§4).

## 3. Correction to the task's inference, and the method used

3.1 CORRECTION [proved, elementary]. "Output bounds carry g_k per input occurrence, so the g-dependence is polynomial and ∂_g is bounded" does not follow. A bound |f(g)| ≤ Cg^n on a real interval says nothing about f′ (example f(g) = g sin(g^{−2})·g^n has |f| ≤ g^{n+1} and unbounded f′ for n = 0). The output is not a polynomial in g_k: g_k enters through exp(ΣV), χ_k, and analytic functions of g_kB. A derivative bound needs either (a) holomorphy in g on a disc of g-INDEPENDENT radius, or (b) a direct bound on the real derivative.
3.2 Why (a) fails in the B variables, and the SM §4.2 loss. On the support of χ_k, |B| reaches ε_1/g_k. A complex shift g → g(1+z) keeps the integrand in (1.34) only for |z| ≲ 1. So the disc radius is ∝ g_k, whatever the sup. Route (a) gives ∂_g ≤ sup/(c g_k). With the G-gain sup (∝ g_k) it gives O(1): this is the SM_VERIFY §7 repair. It needs the G-gain sup on a COMPLEX u-disc, i.e. §2 rerun with a complex Gaussian covariance C^{(k)}/u. Route (b) avoids complex g entirely and is used here.
3.3 Route (b): pointwise Cauchy in x = g_kB. In the B variables the measure dμ_{C^{(k)}}(B) and the normalization are g-free (SOURCES_SM §4.1, N1_VERIFY Part 1 claim (2)). So ∂_{g_k} at fixed B acts only on (i) the vertices V_k(Y,B;g_k) and (ii) χ_k. For fixed B the radius of analyticity of g ↦ V(Y,B;g) is ε_1/|B|_Y. This radius is large exactly where the Gaussian weight is large. The Cauchy cost is |B|_Y/ε_1 POINTWISE, and its Gaussian average is O(1)/ε_1, not 1/g_k. This is (G-gain) in its derivative form: the sup ε_1/g_k of |B| is replaced by the Gaussian average of |B|.

## 4. The own-slot bound (B2), including C_β

4.1 Lemma G1 (vertex derivatives, pointwise in B) [proved from (1.34)–(1.36), (1.39)–(1.43), one margin assumption].
Margin assumption (M_r): on supp χ_k, g_k|B|_Y ≤ rε_1 for all Y, with a fixed r < 1. [check: Balaban's χ_k (2.9) cuts B′, while (1.34) is stated in B; he uses (1.36) on supp χ_k, so the inclusion with r = 1 is his own; r < 1 is a shrink of the χ_k threshold by a fixed factor, the same type of change as W4's ε_1 → ε_1/c.]
 (a) Input part V″_k(Y,B) = f_Y(x), f_Y analytic on |x|_Y < ε_1, |f_Y| ≤ v_Y := v e^{−(1−2δ)κd_k(Y)}, v = E_0ε_1C_1M^q e^{C_2κ_1}. Cauchy in s for s ↦ f_Y((g+s)B) on |s| = (1−r)ε_1/|B|_Y:
  |∂_gV″_k(Y,B)| ≤ v_Y|B|_Y/((1−r)ε_1) = E_0C_1M^q e^{C_2κ_1}(1−r)^{−1}|B|_Y e^{−(1−2δ)κd_k(Y)}.
  ε_1 cancels. No smallness is used; this is a single-insertion bound.
 (b) Input-free part P^{(k)}: each term is g^{−2m}ψ(x), m ∈ {0,1}. For m = 1, ψ = O(|x|³) on the disc e^{16κ_1}C_1|x| ≤ a_1/3 ((1.39)–(1.40); the second-order term vanishes, (1.40) is ∝ |B′|). Then ∂_g[g^{−2}ψ(gB)] = g^{−3}(xψ′(x) − 2ψ(x)), and Cauchy on the ψ-disc gives |xψ′ − 2ψ| ≤ C_ψ|x|³, so
  |∂_g(P-part of V_k(Y))| ≤ C_P|B|_Y³ (decay), C_P := O(1)C_3 3³e^{(7·8+48)κ_1}M^4 a_1^{−1}-type constant [constant not tracked beyond this form].
  The disc a_1e^{−16κ_1} is much larger than ε_1 (a_1 ≫ ε_1), so (M_r) is not needed here. Terms with m = 0 (Tr log, log σ) give |B|_Y·O(1) the same way. This is the "g-scaling sup for P^{(k)}" asked for by SM_VERIFY §7, in pointwise-derivative form. (SM_VERIFY's "u_kV(H_1B′) = O(g²|B|⁴)" should read O(g|B|³): (1.40) shows a cubic term. No effect on uniformity.)
4.2 Lemma G2 (Gaussian absorption of one insertion) [proved from (2.19)–(2.25)].
 For a := α_4: |B|_Y ≤ (2α_4)^{−1/2}exp(α_4‖B_Y‖²), |B|_Y³ ≤ (3/(2eα_4))^{3/2}exp(α_4‖B_Y‖²) (max of t^pe^{−at²}).
 The added form α_4‖B_{Y_1}‖² (Y_1 ⊂ Y_0) has the same type and size as the ½O(1)α_4Σ_{b⊂Y_0}|B(b)|² of (2.20). It changes α_5 → α_5 + O(1)α_4, which α_5 already contains. (2.23)–(2.25) run verbatim; the bound stays exp(O(α_5)|Z|).
 Per-insertion cost relative to Balaban's term bound (2.26), using |τ(Y_1)|·v ≤ α_4e^{(1−3δ)κd}·(1/ε_1)…: the inserted factor τ(Y_1)∂_gV(Y_1) is bounded by
  ρ_V := α_4(2α_4)^{−1/2}(1−r)^{−1}ε_1^{−1} e^{−δκd_k(Y_1)} + α_4(3/(2eα_4))^{3/2}(C_P/(C_3M^4e^{C_2κ_1}))ε_1^{−1}e^{−δκd_k(Y_1)} ≤ K_1 α_4^{−1/2}(1−r)^{−1}ε_1^{−1}e^{−δκd_k(Y_1)}.
 (The τ-circle has 1/|τ| ∝ ε_1, so each derivative insertion costs 1/ε_1 relative to the term bound. Since g_k ≤ γ ≪ ε_1, this is a gain by g_k/ε_1 over SM §4.2.)
 The choice of Y_1 ∈ D gives a factor |D| ≤ 2^{|D|}; absorb by α_6 → α_6/2 in (2.28)–(2.29) (C2 with a factor 2).
4.3 Lemma G3 (the χ_k term) [reduced; this is where the sup is structurally needed].
 χ_k = Π_bχ({|B′(b)| < ε_1}) is a sharp indicator of B′ = g_kCB − hD(g_kCB). ∂_{g_k}χ_k is a surface measure on {|B′(b)| = ε_1}. Balaban never differentiates χ_k, and no estimate of such a surface term (with the complex measure dμ_0 and the complex forms of (2.14)) is in CMP 116.
 Route G3-smooth: replace χ by a smooth χ̂(|B′|/ε_1) with 0 ≤ χ̂ ≤ 1, χ̂ = 1 on [0, ½], χ̂ = 0 on [1, ∞). Then 1 − χ̂ is supported on |B′| ≥ ε_1/2, and (2.22) holds with ε_1 → ε_1/2. The derivative ∂_gχ̂_b = χ̂′·∂_g|B′(b)|/ε_1, and on supp χ̂′ one has |∂_gB′(b)| ≤ O(1)|B′(b)|/g_k ≤ O(1)ε_1/g_k (B′ is analytic in x with B′ = Cx + O(x²)). So, as in (2.22),
  |∂_gχ̂_b| ≤ O(1)‖χ̂′‖_∞ g_k^{−1}·exp(−⅛γ_2ε_1²/g_k² + ½γ_2|B(b)|²_{loc}).
 The prefactor obeys sup_{g>0} g^{−1}e^{−γ_2ε_1²/(16g²)} = (8/(eγ_2))^{1/2}ε_1^{−1}; the other half of the exponential keeps the (2.31) sum over P. So the χ̂-insertion costs
  ρ_χ := O(1)‖χ̂′‖_∞(8/(eγ_2))^{1/2}ε_1^{−1}·exp(−γ_2ε_1²/(16g_k²)) per marked bond, uniformly in g_k, and it is a large-field-type bond (a P-bond) in Balaban's sums.
 Route G3-sharp: keep Balaban's χ_k and bound the surface term by the coarea formula for the (real, α_5-perturbed) Gaussian majorant. The same g_k^{−1}(ε_1/g_k)^{n_b}e^{−cε_1²/g_k²} profile results. [reduced, not run: needs a majorant of the complex integrand on the surface and smoothness of {|B′(b)| = ε_1}]
 Either route needs a change or an addition to Balaban's small-field construction (smooth χ̂ in all of CMP 116/119/122, or a surface estimate). This is the REMAINING GAP the task anticipated. Its size is uniform in g_k (in fact exponentially small as g_k → 0); the gap is one of rigor, not of scaling.
 Note: in the B̃ = g_kB variables (SOURCES_SM §4.1) the same term is hidden. There χ is g-free, but ∂_u inserts the extensive form −½⟨B̃,C^{(k)−1}B̃⟩ + n/(2u_k). Its connected expectation is O(1)/u_k per site only after a Gaussian integration by parts, and that integration by parts produces exactly the χ-surface term and the B·∇V terms of Lemma G1. So the u-disc picture removes the gap only if one avoids the real derivative and uses holomorphy in u (route (a), §5.3), which needs the full G-gain sup on a complex u-disc.

4.4 Theorem B2-unif [proved given Lemma G1, G2, (M_r), Balaban's (C1)–(C5), and Lemma G3 (reduced)].
 For g_k ∈ (0, γ], all (U,J) ∈ U^c_{k+1}(X, α_0, α_1), and every X ∈ D_{k+1}:
  |∂_{g_k}E^{(k+1)}(X,(U,J))| ≤ S_0 exp(−(1−10δ)½Lκd_{k+1}(X)),  S_0 := O(1)C_3ε_1·(ρ̄_V + ρ̄_χ),
 ρ̄_V := K_1α_4^{−1/2}(1−r)^{−1}ε_1^{−1}, ρ̄_χ := O(1)‖χ̂′‖_∞γ_2^{−1/2}ε_1^{−1}. So
  S_0 = O(1)C_3[K_1α_4^{−1/2}(1−r)^{−1} + O(1)‖χ̂′‖_∞γ_2^{−1/2}],
 independent of g_k and of ε_1 (C_3 does not contain ε_1; C_3 = 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1}).
 Proof. (i) Activities: ∂_gH(Z) = Σ over D, P, Z_0 of (2.14) with one marked factor: τ(Y_1)∂_gV(Y_1), Y_1 ∈ D (Lemma G1 + G2), or ∂_gχ̂_b, b ∈ Y_0 or b ∈ P (Lemma G3). Each marked term obeys (2.26) times ρ_V or ρ_χ. The choice of the mark costs ≤ 2^{|D|}·|Z|; 2^{|D|} → α_6/2 in (2.28), |Z| ≤ C_δ e^{δ′(LM)^{−4}|Z|} absorbed in the e^{−(κ_1−1)(LM)^{−4}|Z∖Z′_0|} and d_{k+1} decay with δ → δ + δ′. The resummation (2.27)–(2.37) is unchanged. Result: |∂_gH(Z)| ≤ C_3ε_1(ρ̄_V + ρ̄_χ)exp(−(1−9δ)½Lκd_{k+1}(Z)).
 (ii) Polymer series: by (2.38) the activities lie in the Kotecký–Preiss polydisc used in (2.39)–(2.41) with a margin (C5). The log (2.13) is analytic in the activities there, so its derivative along ∂_gH is bounded by (sup of the series on the doubled polydisc)/(radius)·‖∂_gH‖. The chain rule ∂_gE = DΨ[∂_gH] is valid since H(Z) is C¹ in g (dominated differentiation under ∫dμ, with the majorants of (i)). Hence the bound, with one δ-unit of decay spent. ∎
 Constants. Same decay and combinatorial constants as (2.38)–(2.41), with α_6 → α_6/2, α_5 → α_5 + O(α_4), δ → δ + δ′, χ_k threshold ε_1 → ε_1/2 (route G3-smooth) or rε_1 (margin). No new smallness condition on ε_1 or γ.

4.5 C_β becomes uniform [proved given 4.4]. β_{k+1} = Π(E^{(k+1)}) with Π linear and g-free (SOURCES_SM §3.1(b), norm C_Π on the (1.18) sup norm). ∂_g commutes with Π. So
  |∂β_{k+1}/∂g_k| ≤ C_ΠS_0 =: C_β, uniform in g_k ∈ (0, γ].
 This is the first-derivative part of Balaban's p. 264 inductive assumption, now proved in the small-field step from route (b). Higher derivatives (Balaban's "all derivatives") are not proved here; HHIST needs only the first.

## 5. The full (G-gain): every vertex weighted; both uses (hop and own-slot u-disc)

5.1 Lemma G4 (all vertices weighted) [reduced: Balaban's mechanism (2.19)–(2.20), run at the level of the majorant, not line by line].
 Pointwise forms. From (1.22)–(1.24) without the last inequality: |V″_k(Y,B)| ≤ (v/ε_1)g_k|B|_Y e^{−(1−2δ)κd_k(Y)}. (Same by Schwarz's lemma in x, if V″_k(Y,0) = 0 [check: each (1.23) is a t_□-derivative at t_□ = 0 of a function that is t_□-independent at B = 0].) From (1.40): |Q(Y,B)| ≤ C_3C_1g_k|B|_Y M^4e^{C_2κ_1}(decay). The P^{(k)} density is O(g_k|B|³).
 Absorption per vertex. Take a_Y := α_4e^{−δκd_k(Y)}. Then |B|_Y ≤ (2a_Y)^{−1/2}exp(a_Y‖B_Y‖²) and |B|_Y³ ≤ (3/(2ea_Y))^{3/2}exp(a_Y‖B_Y‖²). Summed over Y ∈ D, Σ a_Y‖B_Y‖² ≤ O(1)α_4Σ_{b⊂Y_0}|B(b)|², by the same resummation over Y ∋ b as (2.20). So α_5 → α_5 + O(1)α_4 again.
 Cost per vertex: (2α_4)^{−1/2}e^{½δκd_k(Y)} (or the cubic analogue). Pay it from the (1−3δ) decay of (2.18): δ → 2δ in the bookkeeping.
 Result: (2.26)–(2.41) hold with ε_1 replaced IN THE VERTEX FACTORS by
  ε_g := K_2 g_k α_4^{−1/2},  K_2 := O(1)max(2^{−1/2}, (3/(2e))^{3/2}),
 while (2.22) and (2.31) keep ε_1 (they need the cut, §2 (S4)). (C2)–(C4) become 2E_0ε_gC_1α_4^{−1}α_6^{−1}M^qe^{C_2κ_1}e^{5κ} ≤ 1 etc.; these are weaker than Balaban's as soon as g_k ≤ γ ≤ α_4^{1/2}ε_1/K_2. Lemma 3 becomes
  |H(Z)| ≤ C_3ε_g e^{−(1−8δ′)½Lκd_{k+1}(Z)} for activities with D ≠ ∅; activities with D = ∅, P ≠ ∅ carry exp(−¼γ_2ε_1²/g_k²) ≤ O(γ_2^{−1/2}ε_1^{−1})g_k.
 So every output activity carries a factor g_k (as a BOUND, §3.1). The decay and combinatorial constants are Balaban's with δ → 2δ, α_5 → α_5 + O(α_4).
 What Lemma G4 cannot do: drop the cut. The weight |B|_Y is only absorbed because B lives in the analyticity domain (1.34) (S1); the Gaussian average replaces ε_1 by g_kα_4^{−1/2} in the size, not in the domain.

5.2 Use 1: the hop (inputs) [reduced as 5.1; Fact A lower-order terms as in SOURCES_SM §2.2].
 DG(I_0)[W] = DĜ(𝓛I_0)[𝓛W] is a single-insertion quantity: one marked vertex 𝓛W(Y_1). With the pointwise (1.24) form |𝓛W(Y,B)| ≤ (K_V/ε_1)g_k|B|_Y Σ_lL^{−α_*(k−l)}‖W^{(l)}‖e^{−(1−2δ)κd_k(Y)} and Lemma G2 (one insertion only), Theorem SM holds with
  θ_0 = 2K_HK_Vε_1 → θ_g g_k, θ_g := 2K_HK_V(2α_4)^{−1/2}.
 Only one weight is absorbed here, so Lemma G4 is not needed for Use 1; the background V_0 = 𝓛I_0 keeps Balaban's sup bound. This matches SOURCES_SM §4.3 and replaces its weighted V-norm by a single insertion. The lower-order (Sect. I.4, Ward-identity) terms: Balaban says they are "bounded similarly as in (1.24)" (p. 8); the per-input g_k|B| factor there is [reduced].

5.3 Use 2: the own-slot u-disc sup (route (a), SM_VERIFY §7 repair) [reduced: Lemma G4 + SOURCES_SM §4.2 complex covariance].
 In B̃ = g_kB variables χ_k is g-free (SM §4.1), so no surface term arises. On |u − u_k| ≤ z_0u_k, run Lemma G4 with the complex Gaussian (SM §4.2: the shift is a quadratic vertex of relative size z_0; Re u ≥ (1−z_0)u_k keeps (2.22)). The g-dependent part E^{(k+1)} − E^{(k+1)}_{u-free} (u-free = log Z^{(k)}-type terms) has sup ≤ C_G E_0 g_k on the disc, with g varying by ≤ (1−z_0)^{−1/2}. Cauchy: |∂_uE| ≤ C_GE_0g_k/(z_0u_k), so |∂_gE| = 2g_k^{−3}|∂_uE| ≤ 2C_GE_0/z_0. C_G := O(1)C_3K_2α_4^{−1/2}/E_0 (from ε_g), plus the D = ∅ term. Uniform in g_k. Same for β via C_Π.
 Comparison. Route (a) (§5.3) needs Lemma G4 on a complex u-disc and SM §4.2's complex-covariance step, but no χ derivative. Route (b) (§4) needs one insertion only and a real Gaussian, but needs the χ-step (Lemma G3: smooth χ̂ or a surface estimate). Both give uniform S_0 and C_β, with constants of the same form O(1)C_3α_4^{−1/2}×(route constant).

## 6. Resulting uniform (B2) of HHIST, and consequences

6.1 Statement (B2-unif). For every step k, g_k ∈ (0, γ], every monotone slot history (SOURCES_SM §5.1), and (U,J) ∈ U^c_{k+1}(X,α_0,α_1):
  ‖∂_{g_k}V^{(k+1)}‖ ≤ C_V S_0,  |∂β_{k+1}/∂g_k| ≤ C_β := C_ΠS_0,
  S_0 = O(1)C_3[K_1α_4^{−1/2}(1−r)^{−1} + O(1)‖χ̂′‖_∞γ_2^{−1/2}]   (route (b)),
  or S_0 = 2C_G E_0/z_0 = O(1)C_3K_2α_4^{−1/2}/z_0 + (D = ∅ term)   (route (a)).
 C_3 = 2(L+2)^4O(1)2E_0C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1} (CMP 116 p. 20). No factor 1/g_k, no ε_1 in S_0. The O(1)'s are Balaban's unstated constants.
6.2 Lemma HH (SOURCES_SM §3.2) now runs with uniform S_0 and C_β. Column sum in g-slots:
  sup_i Σ_{j>i}|∂β_j/∂g_i| ≤ C_β + C_Πθ_0S_0/(1−λ), λ = L^{−α_*} + θ, uniform in i, j, K.
 In u-slots (SOURCES_HBETA (1.1)): |∂β_j/∂u_i| = ½g_i³|∂β_j/∂g_i|, so the column sum is ≤ ½g_i³[C_β + C_Πθ_0S_0/(1−λ)] = O(g_i³). This meets the HBETA threshold Cg_i^{2+δ} with δ = 1. Σ_ig_i³ over the trajectory converges (g_i² ~ 1/(β_0 i)), uniform in K.
6.3 The hop gain (§5.2) is then a refinement, not a requirement: λ_g = L^{−α_*} + C_Vθ_g g_k → L^{−α_*} as g_k → 0. SOURCES_SM §4.3's C_g device is no longer needed.
6.4 What changes against SOURCES_SM §5.2 and SM_VERIFY items 5–6. The two same-type gaps (own-slot S_0 and C_β) close by one argument (§4), because β_{k+1} is a g-free linear functional of E^{(k+1)}. The single remaining load-bearing item is now the χ_k step (route (b)) or the complex-disc G-gain run (route (a)); see the ledger.

## 7. Ledger (authoritative)

Proved here (given the stated inputs):
 - §3.1: "bounds with explicit g_k factors ⇒ uniform ∂_g" is false as an inference; a derivative bound needs holomorphy on a g-independent disc or a direct real-derivative bound. The task's framing is CORRECTED.
 - §3.2: in B variables any complex g-disc keeping the integrand in (1.34) has radius ∝ g_k; this is the source of SOURCES_SM §4.2's 1/g_k.
 - Lemma G1: pointwise in B, |∂_gV″_k(Y,B)| ≤ E_0C_1M^qe^{C_2κ_1}(1−r)^{−1}|B|_Y e^{−(1−2δ)κd_k(Y)} and |∂_g(P-part)| ≤ C_P|B|_Y³(decay); ε_1 cancels. Given (M_r).
 - Lemma G2: one polynomial insertion is absorbed by the Gaussian at strength α_4, α_5 → α_5 + O(α_4), cost K_1α_4^{−1/2}(1−r)^{−1}ε_1^{−1} relative to (2.26).
 - Theorem B2-unif (§4.4) and C_β = C_ΠS_0 (§4.5), uniform in g_k, given Lemma G3. First derivative only.
 - §6.2: Lemma HH column sum uniform; u-slot column sum O(g_i³); HBETA threshold met.
 - Where the sup ε_1 is needed (§2): analyticity domain (S1), Mayer radius/convergence (S2), large-field complements (S4). Where the Gaussian average suffices: Q-forms (S3, Balaban's own), any single insertion (S5), and vertex SIZES (§5.1, after absorption).
Quoted [V, page images]: CMP 116 (1.19)–(1.24), p. 8 "better bound" sentence, (1.39)–(1.43), (2.16)–(2.26); OCR: (2.27)–(2.41), C_3 definition.
Reduced:
 - Lemma G3 (χ_k step), the REMAINING GAP of route (b): sharp χ_k has a surface derivative that Balaban never estimates. Closure by a smooth χ̂ (changes Balaban's construction; (2.22) with ε_1 → ε_1/2; compatibility with CMP 119/122 not checked) or by a coarea surface estimate (not run). The term is uniformly bounded (≤ O(γ_2^{−1/2}ε_1^{−1})·e^{−γ_2ε_1²/(16g_k²)} per bond); the gap is rigor, not scaling.
 - Margin (M_r): supp χ_k ⊂ {g_k|B|_Y ≤ rε_1}, r < 1. Balaban's own inclusion (r = 1) is implicit ((2.9) cuts B′, (1.34) is in B) [check].
 - Lemma G4 (all vertices weighted): ε_1 → ε_g = K_2g_kα_4^{−1/2} in vertex factors; run at majorant level; V″_k(Y,0) = 0 reading [check]; Balaban's "better bound" (p. 8) is thereby carried out at the level of (2.18)–(2.41) bookkeeping, not line by line.
 - Route (a) (§5.3): Lemma G4 on a complex u-disc with SOURCES_SM §4.2's complex-covariance step.
 - Hop gain (§5.2) for the Sect. I.4 lower-order terms: per-input g_k|B| factor not displayed by Balaban.
 - Kotecký–Preiss derivative step (§4.4 (ii)) and dominated differentiation of H(Z) in g: standard, not written out.
Open:
 - Higher g-derivatives (Balaban's p. 264 "all derivatives") — not needed for HHIST, not proved.
 - Large-field (CMP 119/122) analogue of route (b): the χ̂ or surface step there.
 - Numerical size of S_0: O(1)'s and K_1, K_2 not numerical in Balaban.
