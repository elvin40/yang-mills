# SOURCES_D3R — revision of D3 on four points (P3), (P8), freezing through R, Gevrey order

Status: draft by Claude (Opus 5.5), 2026-10-27, unverified. Revises SOURCES_D3.md after SOURCES_D3_VERIFY.md (V1–V9). D3 is not edited; this file supersedes D3 items (i)(P3), (i) "full list", (iii), (iv)(G1) and the ledger lines that cite them.

## 0. Inputs and sources read

Tags as in D3: [V-img] read on the PDF page image this session; [proved] complete argument here; [reduced] reduced to a quoted Balaban estimate with the change stated; [open] not done.

Read in full: SOURCES_D3.md; SOURCES_D3_VERIFY.md V1–V9. Read in part: SOURCES_D2C.md §3 (Lemma A, freezing error, assembly, Lemma U); SOURCES_D2.md §1.2 ((H1)–(H4), freezing property (vii), family (A)) and §6.1–§6.4; ASSEMBLY.md §1.1–§1.3, §2.3, §2.5; reports/o3_continuum.txt lines 383–390 and 4985–5005.

Balaban pages read on the image:
 - (B10′) CMP 122 II p. 365 (PDF p. 11) [V-img]: "1/(g_k(·))² = 1/(g″_k(·))² Z^c + 1/(g_k²) Z." (1.37): the reset produces the term −A((1/(g″_k(·))² − 1/g_k²)ζ, U″_{k,Z}); the third term −A((1/(g″_k(·))²)ζ_1, U″_{k,Z}) is the one that gives the large-field factors.
 - (B13) CMP 122 II p. 366 (PDF p. 12) [V-img]: "The second term is in fact a small term, because 1/(g″_k(·))² − 1/g_k² = O(N) ≤ O(R_k) on the support of ζ, so it can be bounded by O(1)N^{2+4p_0}(100MR_k)^4(O(1)B_3B_5M^5ε_k + O(1)B_3δ′_k)² ≤ O(1)B_3²B_5²M^9R_k^7ε_k², and the bound is small for g_k small enough." Same page: the third term "gives the small factors connected with large plaquette variables"; its G^c extension "can be written as a small perturbation of a positive Wilson action".
 - (B11′) CMP 122 II p. 380 (PDF p. 26) [text; image read by V4]: (1.73)–(1.75); normalization constants O(log g_j^{−2}) per site; χ^c_j factors with γ_0 (γ_0 = 1/2 allowed).
 - (B14) CMP 119 p. 270–271 (PDF pp. 28–29) [V-img]: (3.25) contains A_k(1/g_k², U_{k+1}) and P^{(k)}(g_k, (A_k, A)). p. 271: R′_k = Σ_{j ≤ k_1} R^{(j)} is Euclidean covariant for T^{(k+1)} and "we include it into E_k"; R″_k = Σ_{j > k_1} R^{(j)} "is treated separately". "Introduce now auxiliary parameters s, t, the parameter t multiplying the expressions B_k, A((1/g_k²(·)) − (1/g_k²), …), V^{(k)}, s multiplying R″_k." (3.26): the t-integrand is ⟨B_k(U_k(…)) − B_k(U_{k+1}) + A(1/g_k²(·) − 1/g_k², U_k(…)) − A(1/g_k²(·) − 1/g_k², U_{k+1}) + V^{(k)}(S_{k+1})⟩_{s=1,t}; the measure (3.27) is Z_{s,t}^{−1} dμ_{C^{(k)}(Λ_{k+1})}(A) χ_k exp[−⟨A, C*Δ^{(k)}CA_k⟩ + P^{(k)} + {…}_{s,t} + tV^{(k)}(S_k)]. The t-part "contributes to B^{(k+1)} only".
 - (B15) CMP 119 p. 279 (PDF p. 37) [V-img]: vacuum energy subtraction from E^{(k+1)} and R″^{(k+1)}; the coupling counterterm β_{k+1}(g_k)A(φ_{k+1}, U_{k+1}) is subtracted "from E^{(k+1)} − E^{(k+1)}(1)" only, and g_k^{−2}(·) is replaced by g_{k+1}^{−2}(·) of (2.24).

Notation from D3 §1: w_k is the sourced local coupling (1.a) with reset; f_k := g_k^{−2} − w_k; Lemma H (SOURCES_HBETA): |u_m(c) − g_m^{−2}| ≤ (3/2)|c|, Σ_j sup_{|c|≤2r}|B_j′(c)| ≤ e^x − 1 ≤ ½ for γ small; D2 (H1): |h_k| ≤ 2C_hMρ_1λ_k. B_j(0) = β_j(g_{j−1}) on the reference trajectory (D2C Lemma U at c = 0).


## 1. (P3) The reset term: Balaban's sup bound

Replaces D3 (i)(P3). D3's "numerator/denominator cancellation, plaquette by plaquette" is withdrawn. Balaban bounds the reset term by a sup bound (B13). The sourced term fits the same bound.

### 1.1 The sourced reset term

Sourced (B10′): w_k := w″_k on Z^c and w_k := u_k(f(·)) on Z, with w″_k the local coupling before the R operation. The sourced (1.37) is (1.37) with 1/(g″_k(·))² → w″_k and 1/g_k² → u_k(f(·)) on Z. Its second term is
  T_reset^f := −A((w″_k − u_k∘f)ζ, U″_{k,Z}).
Balaban's term is T_reset^0 := −A((1/(g″_k(·))² − 1/g_k²)ζ, U″_{k,Z}).

### 1.2 Lemma P3 (pointwise coefficient bound) [proved, given Lemma H and (H1)]

For real f with ‖f‖_∞ ≤ r and every x ∈ supp ζ:
  |(w″_k(x) − u_k(f(x))) − (1/(g″_k(x))² − 1/g_k²)| ≤ 4r + 2C_hMρ_1λ_k =: δ_r.
Proof. Write the coefficient difference as [w″_k(x) − 1/(g″_k(x))²] − [u_k(f(x)) − g_k^{−2}].
 (a) Second bracket: |u_k(c) − g_k^{−2}| ≤ (3/2)|c| ≤ (3/2)r (Lemma H, u_k(0) = g_k^{−2}).
 (b) First bracket. By (1.a) and (B2), from the last reset (or from j = 0) both local couplings run the same φ-weighted recursion: w″_k(x) = w_m(x) − Σ_{m<j≤k} B_j(f(x))φ_j(x), 1/(g″_k(x))² = 1/g_m(x)² − Σ_{m<j≤k} β_j φ_j(x). At the reset step m (or at j = 0) the difference is u_m(f(x)) − g_m^{−2} (or −f(x)), of modulus ≤ (3/2)r. Each later term differs by |B_j(c) − B_j(0)|φ_j ≤ |c| sup|B_j′|. Sum: ≤ (3/2)r + r(e^x − 1) ≤ (3/2)r + r/2. The h_k correction of (H1) adds ≤ 2C_hMρ_1λ_k.
 Total ≤ (3/2)r + 2r + 2C_hMρ_1λ_k ≤ δ_r. ∎
The bound is additive, not multiplicative (V1). This is all a sup bound needs.

### 1.3 The sup bound [reduced to (B13) with one changed constant]

Balaban's estimate on p. 366 has two factors: the sup of the coefficient on supp ζ, O(N) ≤ O(R_k), and the rest, V_k := O(1)N^{2+4p_0}(100MR_k)^4(O(1)B_3B_5M^5ε_k + O(1)B_3δ′_k)² (volume of supp ζ times the squared field bound in the boundary layer). The sourced coefficient has sup ≤ O(N) + δ_r. So
  |T_reset^f| ≤ (O(N) + δ_r)·V_k/O(N) ≤ (1 + δ_r)·O(1)B_3²B_5²M^9R_k^7ε_k²   (N ≥ 1).
The factor (1 + δ_r) ≤ 2 for r ≤ 1/8 and ρ_1λ_k small. The final bound is Balaban's up to a factor 2. It is small for g_k small; there is no condition linking r to R_k. The coefficient of the extra part, δ_r, is O(r) against a Wilson weight of order g_k^{−2}: relative size O(rg_k²), as in D3 (P4).
Caveat. N ≥ 1 is my reading (N counts the steps since the region was created; it enters as N^{2+4p_0}). If N could be < 1, use δ_r·V_k directly: δ_r·V_k ≤ O(r)B_3²B_5²M^9R_k^7ε_k² by the same arithmetic, also small. Either way the conclusion holds.
Analyticity. T_reset^f is a polynomial in the coefficient times Balaban's G^c-analytic function of U″. For complex f on the thin strip of D3 (iv), the coefficient stays within δ_r + (3/2)τ of Balaban's, given the open strip holomorphy of u_k (SOURCES_HBETA §3(c)). So the term is holomorphic in f|_Z with the same bound. [reduced; strip holomorphy open, as in D3]

The second entry of the same type (CMP 122 II p. 364, text; V5): (1/(g″_k(·))²) − 1/g_k² ≤ O(1)(k − j) on Ω′_j \ Ω′_{j+1}, suppressed by the decay of H. Sourced bound: O(1)(k − j) + δ_r ≤ O(1)(k − j)(1 + δ_r) for k − j ≥ 1. Same conclusion. [reduced; p. 364 not read on the image]

### 1.4 Large-field factors survive with γ_0 → γ_0/2 [proved, modulo normalization constants]

The large-field factors come from the third term of (1.37), −A(w″_kζ_1, U″_{k,Z}), and its analogues in (B11′).
Lower bound on the weight. 1/(g″_k(x))² lies between consecutive reference values 1/g_m² (it is a φ-interpolated partial sum of the β-flow), so 1/(g″_k(x))² ≥ min_m g_m^{−2} ≥ γ^{−2}. By Lemma P3(b), w″_k(x) ≥ 1/(g″_k(x))² − δ_r ≥ (1 − θ)/(g″_k(x))², θ := γ²δ_r ≤ 5γ²r.
This is the corrected form of D3 (ix)(a) asked for by V8: the bound is relative to Balaban's local coupling, not to g_k^{−2}.
Positivity split. For real f and G-valued U, P_p ≥ 0. Write
  exp(−A(w″_kζ_1, U)) = exp(−(1 − θ)A(ζ_1/(g″_k)², U)) · exp(−A((w″_k − (1 − θ)/(g″_k)²)ζ_1, U)).
The second factor is in [0, 1]. Balaban needs only an upper bound of the positive integral T′_k(X)1 ((1.73)). So drop the second factor and run his argument with the weight (1 − θ)/(g″_k)², i.e. with g″² → g″²/(1 − θ). His factors exp(−γ_0(ε_j²/g_j²)(…)|·|) become exp(−γ_0(1 − θ)(ε_j²/g_j²)(…)|·|), and γ_0(1 − θ) ≥ γ_0/2 for θ ≤ ½, i.e. 5γ²r ≤ ½.
Normalization constants. Balaban's Gaussian normalizations are computed with his weight. With the sourced weight the per-site constants change by log(w/w_Bal) = O(θ). This is O(γ²r) per site, inside the O(1)log g_j^{−2}|Z_j| budget of (B11′). [reduced: per-site comparison, not checked against each normalization in CMP 122 I]
The G^c extension (B13, "small perturbation of a positive Wilson action") is unchanged: the extension acts on U, not on the weight; the weight is real for real f.


## 2. (P8) The t-parameter term: split of w_k − g_k^{−2}

New item of the D3 (i) list (V5). D3's claim that (P1)–(P7) is the full list is withdrawn; the list is (P1)–(P8), with (P3) as in §1.

### 2.1 Balaban's mechanism (B14)

In (3.25) the action is A_k(1/g_k², U_{k+1}) plus the deviation A(1/g_k²(·) − 1/g_k², ·). The fluctuation-dependent part of the deviation, A(1/g_k²(·) − 1/g_k², U_k(…)) − A(1/g_k²(·) − 1/g_k², U_{k+1}), is multiplied by t together with B_k and V^{(k)}. The t-integral contributes to B^{(k+1)} only. This works because 1/g_k²(x) = 1/g_k² on the last domain ((B2): φ_j = 1 there for all j), so the deviation is supported within distance O(MR_j) of the large-field regions, where B-terms live.

### 2.2 The split [proved]

Sourced deviation: w_k(x) − g_k^{−2} = −f_k(x). It is nonzero on the whole torus, so it cannot go into B. Split
  w_k − g_k^{−2} = [w_k − u_k∘f] + [u_k∘f − g_k^{−2}] =: d_B + d_S.
 (a) Support of d_B. On the last domain w_k(x) = u_k(f(x)) + h_k(x) (D3 §1.1 and D2 (H1)). Book h_k with d_S (it is a D2 small-field datum). Then d_B(x) = 0 wherever φ_j(x) = 1 for all j since the last reset, i.e. d_B has the support of Balaban's deviation 1/g_k²(·) − 1/g_k². [proved from (1.a)]
 (b) Size of d_B. By Lemma P3 (same algebra, with the reset value u_k(f) in place of 1/g_k²): |d_B(x) − (1/g_k²(x) − 1/g_k²)| ≤ δ_r. So sup|d_B| ≤ sup|Balaban's deviation| + δ_r on its support. [proved]
 (c) d_S = −(f_k − h_k) in the notation of D2: |d_S| ≤ (3/2)r + 2C_hMρ_1λ_k ≤ 2r, so |g_k²d_S| ≤ 2γ²r. This is the D2 source weight. [proved]
Routing. d_B goes into the t-part with Balaban's term: t multiplies A(d_B, U_k(…)) − A(d_B, U_{k+1}). Its output goes to B^{(k+1)} as in (B14). d_S stays in the action of every fluctuation integral: A(u_k∘f + h_k, U_k(…)) is expanded around U_{k+1} exactly as in D2 §2.3. Its fluctuation-dependent part is the source vertex P_f^{(k)} − P^{(k)} (linear tangential term J_f, quadratic term ½g_k²⟨B′, 𝒱_fB′⟩, cubic and higher g_k³R_3). It enters the measure (3.27) through P^{(k)} → P_f^{(k)}, at every s, t.

### 2.3 The interpolation with the extra vertex [reduced to (3.26)–(3.27) with P^{(k)} → P_f^{(k)}]

What the t-argument needs. Balaban takes ∫_0^1 dt ⟨…⟩_{s=1,t}. Each expectation is a ratio of two integrals against the measure (3.27); the normalization Z_{s,t} must be bounded away from 0, and the integrand's localized expansion must converge, uniformly in t ∈ [0, 1] (and in a complex neighbourhood if he takes Cauchy estimates in t). He gets this from the cluster expansion with the small vertices P^{(k)}, {…}_{s,t}, tV^{(k)}.
What changes. (1) The t-term coefficient: d_B instead of 1/g_k²(·) − 1/g_k²; sup larger by δ_r ≤ 5r (2.2(b)). In the cluster expansion this coefficient multiplies the difference A(·, U_k(…)) − A(·, U_{k+1}), which is O(fluctuation) per plaquette in the boundary layer. The term is bounded as in §1.3: Balaban's bound times (1 + δ_r). (2) The extra vertex d_S, present at all t.
Bound on the extra vertex. For real f and G-valued configurations, pointwise per plaquette:
  |d_S(p)|·|P_p(U_k(…)) − P_p(U_{k+1})| ≤ 2r·|P_p(U_k(…)) − P_p(U_{k+1})|,   and   |d_S(p)P_p(U)| ≤ 2r·P_p(U).
So the extra action is bounded by O(r)·(plaquette action), uniformly in x, k, t. Relative to the Wilson weight g_k^{−2} of the dangerous term it is O(γ²r). In Balaban's rescaled variables B′ = g_k^{−1}(…) the vertex is g_k²d_S × (his Wilson vertices): the quadratic part ½g_k²d_S⟨B′, 𝒱B′⟩ changes the covariance by 1 + O(γ²r) and is absorbed by D2 Lemma 3.1 (weighted Neumann series, CONFIRMED in D2_VERIFY); the cubic and higher parts are of his P^{(k)} class with an extra factor O(γ²r); the linear tangential part J_f is O(ρ_1λ_k) per cube (D2 §2.3 (a2)).
Large-field side. On the parts of the t-integrand that meet Ω_{k+1} \ Λ_{k+1} (the parts that go to B^{(k+1)}), the d_S vertex is a real perturbation of the Wilson weight of relative size ≤ 2γ²r. The positivity split of §1.4 applies: the positive density keeps the factor exp(−(1 − 2γ²r)·(Balaban's Wilson action)). So Balaban's large-field factors in the t-measure survive with γ_0 → γ_0(1 − 2γ²r).
Conclusion. The t-integrand with P_f^{(k)} has the same localized expansion as Balaban's; each vertex bound changes by a factor 1 + O(r) (and 1 + O(γ²r) for the quadratic part); the normalization Z_{s,t} stays bounded away from 0 by Lemma D3.1 for complex perturbations and by positivity for real f. So the t-part output is Balaban's B^{(k+1)} contribution with constants changed by 1 + O(r). The s = t = 0 regular integral contains d_S through P_f^{(k)}; that is D2's step with large-field cutoffs, i.e. D3 itself. [reduced: Balaban's cluster expansion for (3.26)–(3.27) with one more vertex of his P^{(k)} class; same assumption as D2 §6.1–§6.2 that his expansion tolerates vertex constants 1 + O(r)]
Holomorphy in f. d_B and d_S are holomorphic in f(x) on the thin strip (via u_k; SOURCES_HBETA §3(c), open). The t-part output is then holomorphic in f|_X on S_{τ(X)}(X), as (L3) requires.


## 3. Freezing through R

Replaces D3 (iii). D3's claim "R does not create E-class terms" is false for Balaban's bookkeeping (V3, (B14)): old R-terms R′_k = Σ_{j ≤ k_1} R^{(j)} are merged into E_k and enter the regular integral of step k+1, whose output is E^{(k+1)}. D2C §3 applies the freezing property (vii) to E^{(k+1)}. So (vii), or a substitute, is needed for the part of E^{(k+1)} that comes from merged R-inputs.

### 3.1 What the R operation does to the f-dependence [stated; reduced to D3 (L0)–(L4)]

The R operation at step k on a region Z (CMP 122 II (1.1)–(1.49)) is a map from data to data. Its f-dependent inputs are:
 (R1) the localized activities E^f, R^f, B^f, each depending on f|_X only (D2 (H2)(i), D3 (L2)–(L3));
 (R2) the weighted Wilson action A(w_k, ·) in the numerator and the small-field denominators;
 (R3) the reset coefficient u_k∘f on Z (§1);
 (R4) the adapted gauge-fixing weights w_j(y) and their one-link normalizations z(w_j(y)) (D3 (vi)).
Everything else is f-independent: the regions Z, Ω_j, Λ_j, the characteristic functions, the thresholds, the tree gauge (B8), and the unweighted background U_k (D3 (L0), (P5)). The outputs are: new R-terms (logarithms of numerator/denominator ratios and their cluster expansions), C/B boundary terms (II (1.49)), and the reset weight. An E-term on X with X ∩ Z = ∅ is unchanged; an E-term with X ∩ Z ≠ ∅ is re-expanded and booked into C/B (D3 (iii) cases (a), (b); case (a) relies on U_k being unchanged off Z by (1.33)–(1.35), not rechecked on the image beyond p. 365). So R itself never writes an E-term. The only path from R to E is the merge (B14) followed by the next regular integral.

### 3.2 Modified bookkeeping: split the regular output by an auxiliary parameter s′ [proved, given D2 §6.3 and the ε_1-mechanism below]

Definition. In the regular integral of step k+1 (the s = t = 0 term of (3.26)), multiply every R-induced input by an auxiliary parameter s′. R-induced inputs are: the merged R′_k, and every E_R-term of earlier steps (defined recursively by this construction). Put
  E^{(k+1)}_pure := E^{(k+1)}|_{s′=0},   E^{(k+1)}_R := E^{(k+1)}|_{s′=1} − E^{(k+1)}|_{s′=0}.
Both are localized as Balaban's E^{(k+1)} (the localization does not depend on s′), gauge invariant, and vacuum subtracted (p. 279 subtracts E^{(k+1)}(1) from the full term; do the same for each part).

Lemma F1 (pure part). E_pure satisfies D2 (H2)(i)–(vii), with the freezing property (vii). Proof. By construction the inputs of E_pure are pure E-terms, the D2 vertices with weight d_S (§2.2), and the reference geometry. R writes no E-term (3.1). So the pure part at step k+1 is the D2 step with large-field cutoffs, and D2 §6.3 (interpolation of the inputs in an auxiliary t, Cauchy in t) applies verbatim: its inputs have (vii) by induction. The frozen counterpart at c = f(y) is the pure part of the constant-c theory; on X ⊂ Λ_j^{(j)} it equals the all-small-field term by locality (same fact as D3 (vii)(a)). [proved, given D2 §6.3 (analyticity of the step in its inputs, the W4 assumption)]

Lemma F2 (R-induced part). For X ∈ D_{k+1} and U in Balaban's analyticity domain,
  |E^{(k+1)}_R(X, U)| ≤ C (L^{k+1}η)^4 g_{k+1}^{κ_0} e^{−κ′d_{k+1}(X)},   κ′ < κ fixed,
which is Balaban's bound for marginal R-terms ((B4), (2.31) text: "O(1)(L^jη)^4 g_j^{κ_0} exp(−κd_j(X))"). No freezing property is claimed or needed.
Proof. (a) Size. Let ρ_R(X) be the R-norm of the R-induced inputs near X. By (B4) and the induction, ρ_R ≤ C g_{k}^{κ_0}e^{−κd} (g_j ≤ g_k for j ≤ k, asymptotic freedom). The regular integral is holomorphic in its inputs on the set where they obey the inductive bounds with E_0 → 2E_0 (D2 §6.3, CMP 116 p. 3). The input E_pure + s′·(R-induced) is admissible for |s′| ≤ S := E_0/ρ_R ≫ 1. Cauchy in s′ for the function s′ ↦ out(s′) − out(0), which vanishes at 0: |E_R| ≤ S^{−1} sup_{|s′|≤S}|out(s′) − out(0)| ≤ S^{−1}·4E_0e^{−κd} ≤ 4ρ_R. Balaban's one-step factor applies too: the new term is the fluctuation correction of its inputs, and the t_□-differentiation gives a factor O(1)α_2^{−1}ε_1 (CMP 109 p. 280, quoted in D2 §6.2). So the R-induced part generated at each step is ≤ O(α_2^{−1}ε_1)ρ_R, and the chain of generations is a geometric series in O(α_2^{−1}ε_1) < 1. No compounding over steps. (b) The (L^{k+1}η)^4 factor. E_R vanishes at U = 1 (both parts are vacuum subtracted) and has zero first derivative at U = 1 (global colour rotations: every term is G^c gauge invariant, and an Ad-invariant element of su(N) is 0; D2C §3.1). Lemma A(a) of D2C §3.1 with Γ = 4ρ_R gives the factor (τ_X/α_2)² ≤ C M²(1 + d)²(L^{k+1}η)^4; the (1 + d)² is absorbed by κ → κ′. ∎ [reduced: the ε_1-mechanism of CMP 109 p. 280 is applied to the R-induced inputs; Balaban states it for his E-inputs]

Extraction with the split. The sourced step-(k+1) term is
  E^{(k+1)} − A(B_{k+1}∘f, ·) = [E_pure − A(B_{k+1}∘f, ·)] + E_R.
The first bracket is a sum of irrelevant terms by D2C §3 (uses (vii) for E_pure only, Lemma F1). The second is not extracted. It is a marginal term with the coupling factor g^{κ_0}, as Balaban's merged R-terms are; this is his reason why R-terms need no coupling counterterm ((B4), (B15)). Its sum over steps per unit physical volume is ≤ C Σ_j g_j^{κ_0} < ∞ uniformly in K for κ_0 > 2 (1/g_j² ≥ γ^{−2} + β(K − j)). B_{k+1}(c) is defined from the pure part only; this matches Balaban, whose β_{k+1}(g_k) is the small-field function (V3).
Holomorphy of E_R in f: on S_{τ(X)}(X), the radius of its R-inputs (D3 (L2)); E_R enters the Gevrey count (§4) as an R-term.

### 3.3 Fallback, not needed: freezing for R-terms directly [sketch]

If one prefers to prove (vii) for every R-term, interpolate all inputs (R1)–(R4) between f and the constant c = f(y) by a complex parameter t, as in D2 §6.3. Two new points: (1) denominators: Lemma D3.1 needs |σ| ≤ ½, where σ includes t·Σ_p δw(p)P_p with |δw| ≤ (3/2)|f − c| ≤ O(Mλ_kρ_1R_k) on the domain; this gives a t-radius ≥ c/(ρ_1λ_kM^aR_k^5ε_k²) ≥ 2 for ρ_1 ≤ ρ_1(γ, M); (2) numerators: the positivity split of §1.4 with θ = |t|·sup|δw|·g_k² ≤ ½. The result would be |R(f) − R(f(x))| ≤ C(M, γ)(λ_jρ_1/r)(1 + d_j(X)) g_j^{κ_0/2} e^{−κ′d_j(X)}: the D2 (vii) form with E_0(L^jη)^{4+α} replaced by g_j^{κ_0/2} (powers of R_j absorbed by g_j^{κ_0/2}). This costs a ρ_1-condition depending on γ and one more induction; §3.2 avoids both.

### 3.4 Status of V3's options

V3 listed (a) no merge and (b) freezing for R. This file adopts (c): keep Balaban's merge, split the regular output by s′, extract only the pure part. Option (b) is the fallback §3.3. D2 §8.4 (freezing through R) is answered: the frozen-centre decomposition is needed and holds for E_pure; the R-induced part carries the R-type marginal bound with no freezing, at the same order as Balaban's merged R-terms.


## 4. Gevrey order 2 + ε and OS regularity

Replaces D3 (iv)(G1) "Gevrey order 2" by the corrected count of V6, and checks it against the regularity condition used by the project.

### 4.1 The corrected cumulant bound [proved, given the per-term bounds of D3 (iv)]

V6: the scale cutoff in (G1) depends on n. With g_m^{−2} ~ log(1/λ_m), sup_λ (log g_m^{−2})^{Pn} e^{−κδ/(2Mλ)} ~ exp(Pn·log log log n) for large n. So the disjoint-support cumulants obey
  |cumulant_n| ≤ C(g, δ, r)^n (n!)² e^{O(n log log log n)} ≤ C_ε(g, δ, r)^n (n!)^{2+ε}   for every fixed ε > 0,
uniformly in the lattice cutoff. The last step: n log log log n ≤ ε n log n + C_ε n, and (n!)^ε ≥ (n/e)^{εn}. The E_R-terms of §3.2 enter as R-terms (radius τ(X)); they are covered by the same count.

### 4.2 The condition to meet [V, quoted]

Template, reports/o3_continuum.txt lines 4987–4995 [V]: "We apply the Osterwalder–Schrader reconstruction theorem under the linear growth condition [30, Section IV.1]. … The linear growth condition requires a bound |Sn (F )| ≤ σn |F |sn with fixed s and σn ≤ A(n!)D for fixed A, D." The template meets it with σ_n = C^n n! and writes "C^n n! ≤ A(n!)^D after increasing A, D". ASSEMBLY.md §1.2 (H-U) [V]: "|S_{n,ε}(F)| ≤ σ_n ‖F‖_{sn}, σ_n := A (n!)^D", with the remark that the OS linear growth condition admits this. OS II itself is not re-read [cited through the template, as in ASSEMBLY §0].
So the condition is: some fixed D < ∞ and fixed A, s. It does not fix D = 1 or D = 2.

### 4.3 D = 2 + ε is admissible [proved, as a count; the bridge (B-N1) is still open]

 (a) Cumulants to moments. S_n is a sum over set partitions π of products of cumulants. With |cumulant_m| ≤ C^m (m!)^{2+ε}: Σ_π Π_{B∈π} C^{|B|}(|B|!)^{2+ε} ≤ C^n (n!)^{1+ε} Σ_π Π_B |B|! ≤ C^n (n!)^{1+ε}·2^{n−1} n! = (2C)^n (n!)^{2+ε}. (Π_B |B|! ≤ n!; Σ_π Π_B |B|! is the number of partitions of [n] into ordered lists, the Lah sum, ≤ 2^{n−1}n!.) So moments keep the order 2 + ε.
 (b) Constants into the form A(n!)^D. C^n ≤ A_ε (n!)^ε for any ε > 0. So C_ε^n (n!)^{2+ε} ≤ A (n!)^{2+2ε}. Any fixed D > 2 is reached; D = 3 is a convenient choice.
 (c) The bridge (B-N1) of ASSEMBLY §2.3 turns source-derivative bounds into |S_n(F)| ≤ σ_n‖F‖_{sn} and adds its own factors (n!)^{c} (cutoff derivatives, Whitney count). These raise D by a fixed amount; D stays finite.
 (d) δ-dependence. The Whitney sum in (B-N1) runs over dyadic δ ∈ [ε, 1], so C(g, δ, r) must grow at most polynomially in 1/δ per factor. From D3 (iv)(G1), C(g, δ, r) comes from the radius loss (100MR_m)^4/r at the scale Mλ_m ~ δ, with R_m ~ (log g_m^{−2})^{p} and g_m^{−2} ~ g^{−2} + β log(1/δ). So C(g, δ, r)^n ≤ C^n (log log(1/δ))^{O(n)}, and sup_δ (log log(1/δ))^{O(n)} δ^{n/2} ≤ C′^n. The gain δ^{≥ n} of ASSEMBLY §2.3 step 4 absorbs it. [proved as a count; R_m ~ (log g_m^{−2})^p is Balaban's R-growth as used in D3]
Conclusion. Gevrey order 2 + ε (any ε > 0) is admissible for the OS linear growth condition in the form the project uses. (H-U) holds with some fixed D (D = 3 from the cumulant count, plus the fixed (B-N1) increment), if (B-N1) and the per-term bounds hold. The ε-loss of V6 costs nothing. The diagonal case (G2) of D3, order (n!)^P with fixed P, is also of the admissible form, but it is not needed: the test class is flat on the coincidence diagonals (template line 4997–4998).


## 5. Ledger

Proved here:
 - Lemma P3: the sourced reset coefficient differs from Balaban's by δ_r = 4r + 2C_hMρ_1λ_k, additively, pointwise (§1.2).
 - Large-field factors survive with γ_0 → γ_0(1 − θ) ≥ γ_0/2, θ = γ²δ_r ≤ 5γ²r ≤ ½, by a positivity split against Balaban's LOCAL coupling (§1.4). This is the corrected D3 (ix)(a) / (vi)(d) bound (V8).
 - The (P8) split d_B + d_S: d_B has the support of Balaban's deviation and sup larger by δ_r; d_S is the D2 source weight, |d_S| ≤ 2r (§2.2). The extra vertex is ≤ 2r·P_p per plaquette, uniformly (§2.3).
 - Lemma F1: the pure E-part keeps the freezing property (given D2 §6.3).
 - The corrected Gevrey count (n!)^{2+ε} for cumulants and for moments, and its admissibility for the OS linear growth condition with fixed D (D = 3 before the (B-N1) increment); the δ-dependence is (log log 1/δ)^{O(n)}, absorbed (§4).

Reduced to Balaban with the change stated:
 - (P3) sup bound: (B13) with sup coefficient O(N) + δ_r; final bound ≤ (1 + δ_r) × Balaban's (§1.3). Uses N ≥ 1 (my reading; the other case is also covered). p. 364 entry: same, from the text.
 - Normalization constants of the large-field Gaussians: per-site change O(γ²r) (§1.4), not checked against each normalization.
 - (P8) t-interpolation: Balaban's cluster expansion for (3.26)–(3.27) with P^{(k)} → P_f^{(k)} and vertex constants 1 + O(r) (§2.3); same assumption as D2 §6.1–§6.2.
 - Lemma F2: R-induced part E_R obeys Balaban's marginal R-bound (L^jη)^4 g_j^{κ_0} e^{−κ′d}; uses the ε_1-mechanism of CMP 109 p. 280 for R-induced inputs, which Balaban states for E-inputs (§3.2).
 - D3 (iii) case (a): U_k unchanged off Z, from (1.33)–(1.35); p. 365 read, the locality of U_{B_k}(V) off Z not traced.

Open (unchanged from D3 unless stated):
 - Thin-strip holomorphy of u_k (SOURCES_HBETA §3(c)); used for complex f in §1.3, §2.3 and D3 (iv).
 - (H-thr), (H-hist), Balaban's Theorem 2 (THEOREM2.md).
 - W4: analyticity of a step and of R in their inputs (used by Lemma F1 via D2 §6.3, Lemma F2, and §3.3).
 - (B-N1) bridge (ASSEMBLY §2.3): Gevrey 2 + ε is admissible only once (B-N1) holds.
 - Line-by-line rerun of CMP 122 I–II with the sourced action (D3 W6).

Corrections to SOURCES_D3.md (D3 is not edited):
 - (i)(P3): the mechanism is a sup bound (B13), not a cancellation; Δ = Δ_Bal(1 + O(r)) is replaced by the additive bound δ_r.
 - (i) "full list": add (P8). The list is (P1)–(P8).
 - (ii): "E-class terms are never produced from R inputs" is false (merge (B14)). The conclusion "B_j(c) never sees R" stands, with B_j(c) defined from the pure part (§3.2).
 - (iii) and ledger line "freezing withdrawn": replaced by §3. Freezing is needed for E_pure and holds (Lemma F1); E_R needs none (Lemma F2). D2 §8.4 is answered, not withdrawn.
 - (iv)(G1): order (n!)^{2+ε}, not (n!)²; admissible (§4).
 - (ix)(a): w_k ≥ g_k^{−2}(1 − 3γ²r) is false off the last domain; use w ≥ (1 − 5γ²r)/(g″_k(·))² (§1.4). Binding condition 5γ²r ≤ ½.

Work plan delta: W1 (verify P3 on the image) is done (V1 + §1). W3 (R/B routing) is answered by §3.2; its cost moves to W4 (analyticity in inputs), which now carries Lemmas F1 and F2. New small item W8: check Balaban's handling of the marginal part of merged R′-terms after the merge (CMP 119 Sect. 3, pp. 272–279) against Lemma F2's bound; 0.5 session.

