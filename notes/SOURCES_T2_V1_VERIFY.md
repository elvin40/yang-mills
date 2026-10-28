IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_T2_V1_VERIFY: independent verification of SOURCES_T2_V1.md (order-g⁰ completeness of CMP 109 (1.3))

Date: 2026-10-28. Item V1, VERIFY. Author: Claude (headless session).
Status: complete.

Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). ONLINE_SWEEP §2 not read.

Read list. SOURCES_T2_V1.md (full); R2_TELESCOPING.md l. 94–230, 291–320; SOURCES_D1.md §0–§2 (l. 1–139); U3_VERIFY.md l. 74–100. Balaban page images listed in §1.

Tags: [P] proved here; [R] reduced to a named input; [I] inference not checked line by line; [V] checked against a Balaban page image (PDF page given) or the text layer (said).

## Plan
1. Quotes and equation numbers on the page images.
2. Order counting of the term classes of (1.3)/(1.6) and (2.12); polymer and R-terms at g = 0; marginal g⁰ terms after localization.
3. log Z^{(j)} versus the numerics' per-step Gaussian (constraint, gauge fixing, ghost domain, normalization).
4. Scope in L.
5. Consistency with the listed numbers; the averaging-scheme finding.
6. Status of §10 item 5.
7. Grades.


Page images opened (this session): CMP 109 PDF 3, 5–8, 12–13, 15–21, 44, 49 (journal pp. 251, 253–256, 260–261, 263–269, 292, 297); CMP 119 PDF 1, 11–12, 18, 37 (journal pp. 243, 253–254, 260, 279). Text layer used for CMP 109 l. 2095–2160 ((4.37)–(4.45)), l. 2460–2490, and CMP 119 l. 30–95, 1885–1900. Numerics: read numerics/t2_v1_avg012.py, t2_v1_avg012b.py, all results/t2_v1_*.json, results/mom_L3_Ng6_p0.2_trans.json, numerics/NUMERICS.md; THEOREM2_PROOF_v4.md §3.1–3.3, §8, §10. No new script was run; no numerics file written.

---

## 1. Quotes and equation numbers on the page images

I opened every page that carries a step. Results, in the order of SOURCES_T2_V1 (cited below as "the file").

1.1 CMP 109 p. 260 (PDF 12), (1.3)–(1.4). Verbatim match, including "We have written explicitly terms of the order 0 in the coupling constants" and the (1.4) quote. The last term is printed "E^{(j+k)}(g_j, 1)". Reading it as a misprint for E^{(j+1)} is correct: (1.6) on the next page prints E^{(j+1)}(g_j, 1) in the same slot. [V, PDF 12]

1.2 p. 261 (PDF 13), (1.5), (1.6), and the (1.7) remark. Verbatim match. The sentence before (1.6) reads in full: "In many considerations it is not necessary to separate the terms of zeroth order from the remaining terms in the interaction, and then we write". This sentence alone says that the (1.6) function absorbs the zeroth-order terms, i.e. log Z^{(j)}. The file inserts "[(1.7)]" as an editorial gloss; it is marked as such. [V, PDF 13]

1.3 p. 263 (PDF 15). The inductive-assumption quote and (1.18), |E^{(j)}(X, g_{j−1}, U, J)| ≤ E_0 exp(−κ d_j(X)), match. The gauge-invariance phrase "an easily verifiable statement for all explicitly defined terms in the action (1.3)" matches. (1.18) is stated "for M ≥ M(κ), γ sufficiently small, and for all configurations"; one constant E_0 appears, with no g-dependence written. [V, PDF 15]

1.4 p. 264 (PDF 16), (1.20)–(1.22). Verbatim match, including "They are determined by the functions E^{(j+1)}(g_j, U_{j+1}) in (1.6)", "This limit exists by the localized representation (1.7)", and "It is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives." [V, PDF 16]

1.5 p. 266 (PDF 18), (2.5), (2.8), (2.9) and the alternative cut. Match. Two small points. (a) The decomposition on p. 266 is of D, not D̃: "we decompose the function D into the sum D^{(2)} + D_3". D̃_3 in (2.12) is not defined on the read pages; reading it as D̃ − D̃^{(2)} is natural and is what the order count needs. (b) "G_3(B') is an analytic function of B', with an expansion beginning with third order terms" and "Denoting terms of at least third order in H_1B' by V(H_1B')" match. [V, PDF 18]

1.6 p. 267 (PDF 19), (2.10), (2.11). Match, including "where the factors σ_0 are included into the normalization factor N′_k", "D̃(B) has an expansion beginning with quadratic terms, and D̃^{(2)}(B) = C̃^{(2)}(B)", the remark that the linear J-term "vanishes now", and the (2.11) paragraph. [V, PDF 19]

1.7 p. 268 (PDF 20), (2.12)–(2.15). The quoted sentences match verbatim: "The integral in (2.12) defines the new term E^{(k+1)} …", "Let us remark that the expression under the exponential above vanishes at g_k = 0", (2.14), (2.15), and "The equalities (2.12), (2.14) together with the definitions (2.13), (2.15) imply that the action A_{k+1} is given by (1.3) with k+1 instead of k." One transcription error in the file's display of (2.12): the J-term is printed with prefactor 1/g_k², not 1/g_k. The page image is low-resolution, but the prefactor is forced by (2.10): there the J-term is −(1/g_k²)⟨H_1B′, J⟩ with unscaled B′; after B′ = B − hD̃(B) and B = g_kB″ it becomes (1/g_k²)⟨H_1hD̃(g_kCB), J⟩, whose quadratic part is the J-term of (2.11) and whose remainder is (1/g_k²)⟨H_1hD̃_3(g_kCB), J⟩. Consequence for the order count: this term is O(g_k), not O(g_k²). The conclusion (it vanishes at g_k = 0) is unchanged. [V, PDF 20; derivation P]

1.8 p. 269 (PDF 21). "It is bounded by a second order polynomial in B, with coefficients of the order O(ε_1), hence it can be treated as a small perturbation of the basic quadratic form in the Gaussian measure dμ_{C^{(k)}}." Verbatim match. [V, PDF 21]

1.9 p. 297 (PDF 49), (5.37)–(5.44). (5.42) and "This is the fundamental equality defining the β-function" match. (5.44) prints exp(½δ_1|x − y|) with a positive exponent; this is the known sign misprint. [V, PDF 49]

1.10 CMP 119 p. 253–254 (PDF 11–12). "β_1(g_0) was defined in [I] by the formulas (1.41)–(1.43)" matches, and the p. 254 paragraph ("Here we have combined the term log Z^{(0)}(Λ_1) … only localized properly") matches verbatim. [I] is CMP 109: CMP 119 p. 243 says "In the previous papers, referred to as [I, II]" and p. 253 refers to "(I.0.20)", which is CMP 109 (0.20). CMP 109 has no (1.41)–(1.43) of its own (Sect. 1 ends at (1.22); the text layer shows (1.43)–(1.54) only as citations of [14]). So the file's misprint reading is plausible; I did not settle it. [V, CMP 119 PDF 11–12; I for the misprint]

1.11 CMP 119 β-subtraction quote. The sentence is on journal p. 279 (PDF 37), not "p. 278 region". It matches on the page image: "The coupling constant renormalization is performed by subtracting β_{k+1}(g_k)A(φ_{k+1}, U_{k+1}) from E^{(k+1)} − E^{(k+1)}(1)". [V, CMP 119 PDF 37]

1.12 Sign of (0.20). The file says the printed (0.20) reads "1/g_{k+1}² = 1/g_k² + β_{k+1}(g_k)" and disagrees with (2.15). This is wrong. The page image (CMP 109 p. 256, PDF 8) prints (0.20) as 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k). That is identical to (2.15) and to the first form of (0.18) on p. 255 (PDF 7): "1/g_0² = 1/g_1² + β_1(g_0), or 1/g_1² = 1/g_0² − β_1(g_0)". The disagreement came from the garbled text layer. So R2's item V2 is void: there is no sign conflict in CMP 109. [V, PDF 7–8]

1.13 L-range. CMP 109 p. 251 (PDF 3): "We take L_μ = L^m, where L is an odd, positive integer > 11, and m is a positive integer." Match. [V, PDF 3]

1.14 Averaging. CMP 109 p. 253–254 (PDF 5–6): (0.4), (0.5)–(0.11), (0.12), "The considerations and results of this, and previous papers, do not depend on any particular averaging operation used; they are valid universally for all averages satisfying the above properties", and "Let us stress that both definitions are equally good for our purposes, in fact we may use many other definitions" all match. The file tags these [text layer]; they are now [V]. A stronger statement exists that the file did not use: CMP 119 p. 243 (PDF 1): "The averaging operation is defined by the formula (0.4), or (0.12) in [I], but we may take any averaging operation satisfying several general properties, analogous to the properties (0.5)–(0.9) [I]." So Balaban explicitly allows (0.4) as the averaging of the full construction. [V, CMP 119 PDF 1]

1.15 An independent support for the (1.6) reading, from Sect. 4. CMP 109 p. 291–292 analyses the terms "E^{(j)}(U_k(exp iB V^{(k)})) − E^{(j)}(U_k(V^{(k)})) in the fluctuation field action", i.e. the curly bracket of (2.12), together with the counterterm (4.38). It ends (p. 292, PDF 44): "We define the β-function β_j(g_{j−1}) equal to this coefficient. The corresponding terms from (4.34) are equal to (4.42), (4.44) also, hence both groups of terms cancel, because (4.38) appears with the minus sign in the effective action (1.6)." [V, PDF 44] So the E^{(j)} whose marginal part β_j must cancel is the summand of E_k in (0.22)–(0.23), and (0.23) for k = 1 reads "A_1 = −(1/g_0²)A + E^{(1)}" with E^{(1)} the whole logarithm of the first fluctuation integral (p. 256, PDF 8). This is the (1.6) function, which contains log Z^{(j−1)}. If β_j omitted the marginal part of log Z^{(j−1)}, that part would stay in E_k unrenormalized and the cancellation stated on p. 292 would fail. [P from the quoted structure]

## 2. Order counting of the term classes

### 2.1 The terms of (2.12), recounted from the page image

Notation as on p. 268: B is the retained (scaled) fluctuation, B′ := g_kCB − hD̃(g_kCB). At fixed B, B′ = O(g_k). I recount each term in the exponent of (2.13) from the inputs on pp. 266–267 (orders of D̃, D̃^{(2)} = C̃^{(2)}, G_3, V).

| term in (2.12) | order at fixed B | file |
|---|---|---|
| Tr log(I − h(δ/δB)D̃)(g_kCB) | δD̃ at g_kCB is O(g_k); O(g_k) | agrees |
| log σ(B′) | log σ(0) + O(g_k) | agrees (see 2.2) |
| (1/g_k²)⟨H_1hD̃_3(g_kCB), J⟩ | O(g_k³)/g_k² = O(g_k) | file says (1/g_k), O(g_k²); corrected, see 1.7 |
| −(1/g_k²)G_3(g_kB) | O(g_k) | agrees |
| (1/g_k²)⟨H_1g_kCB, Δ_1H_1hD̃(g_kCB)⟩ | g_k·g_k²/g_k² = O(g_k) | agrees |
| −(1/(2g_k²))⟨H_1hD̃, Δ_1H_1hD̃⟩ | O(g_k²) | agrees |
| −(1/g_k²)V(H_1B′) | O(g_k) | agrees |
| {E_k(U_k(exp iB′ V^{(k)})) − E_k(U_k(V^{(k)}))} | O(g_k) at fixed torus (E_k analytic, B′ = O(g_k)) | agrees |
| χ_k = Π_{b∉{b_0(c)}} χ(|g_kB(b)| < ε_1) | → 1 pointwise | agrees |

Check of the cut. h is supported on {b_0(c)} (p. 267: "The function hB is equal to 0 everywhere, except the set {b_0(c)}"), and the eliminated variables are exactly B′(b_0(c)) (p. 268). So on the bonds where χ_k acts, B′(b) = g_kB(b). [V, PDF 19–20; P]

Check of the order-g⁰ quadratic form. The only g_k⁰ terms produced by the scaling are the three terms of (2.11). They are removed from the exponent of (2.13) because Balaban writes them as the Gaussian measure dμ_{C^{(k)}} and the factor Z^{(k)}. I rederived where the J-term of (2.11) comes from: the linear term −(1/g_k²)⟨H_1B′, J⟩ of (2.10) vanishes on ker Q̃ (p. 267), and its remainder after B′ = B − hD̃(B) is (1/g_k²)⟨H_1hD̃(B), J⟩. At B = g_kCB the quadratic part is the (2.11) J-term, and the rest is the D̃_3 term of (2.12). No other g_k⁰ term arises. [P]

So the exponent Φ(g_k, B) of (2.13) satisfies Φ(0, B) = 0 for every B, and the integrand of (2.13) is identically 1 at g_k = 0. Since dμ_{C^{(k)}} is a normalized Gaussian measure, E^{(k+1)}(0, U) = 0 in the sense of (2.13). This is Balaban's own remark on p. 268, now checked term by term. [P, given the orders stated on pp. 266–267]

### 2.2 Two inputs the file marks [I] that are not load-bearing

(a) log σ(0) = 0. σ is the density of Haar measure in the coordinates B′ (V = e^{iB′}V^{(k)}, left translation). By left invariance it depends on B′ only, not on the background. So log σ(0) is a U-independent constant. It cancels in E^{(k+1)}(g, U) − E^{(k+1)}(g, 1), which is the only combination entering (1.3), (1.6), (1.20). The file's [I] reading of "σ_0" is therefore not needed. [P]

(b) The history. The file's setting fixes g_0, …, g_{k−1} and varies g_k. Balaban says "The function E_k depends also on the effective coupling constants g_0, …, g_{k−1}" (p. 256, PDF 8), and on a true trajectory these are tied to g_k by (2.15). The conclusion does not depend on which reading is taken: Φ(g_k, B) → 0 needs only that E_k is analytic on a fixed neighbourhood with a bound independent of the history, and (1.18) gives one constant E_0 for all histories in the induction. On a finite torus the finite sum of terms bounded by E_0 gives a uniform Cauchy bound for the curly bracket. So β_{k+1}(0) has the same value under both readings, and it does not depend on the history. [P on a finite torus, given (1.18) as stated]

### 2.3 Localization: polymer terms at g = 0

The file shows that the sum Σ_X E^{(k+1)}_{(1.3)}(X, 0, U) is zero on every finite torus. That is enough for Π and β: (1.20) uses the sum, and on each torus T^{(k+1)} the (1.3)-part of the second variation is zero, so the infinite-volume limit of (1.20) at g = 0 is the limit of the log Z part alone. Whether each polymer activity vanishes separately at g = 0 is not needed. (My reading: in a cluster expansion with interpolated, normalized Gaussian measures dμ_{C(s)} and an integrand equal to 1, every s-derivative of ∫dμ_{C(s)} 1 = 1 vanishes, so each activity is zero. This is [I]; CMP 116's expansion was not opened.)

The log Z^{(j)} terms are localized separately ("the expansion of the log Z^{(j−1)}(U_j) constructed in [16]", p. 261). These localized pieces are g-independent and nonzero. Their marginal part is exactly what β_{j+1}(0) removes. After the counterterm −β_{j+1}(0)A, the remainder of the (1.6) function at g = 0 is the irrelevant part of log Z^{(j)} (Π′ of (5.38), which has at least three derivatives). So no marginal g⁰ term survives localization in the small-field description of CMP 109. [P for "no g⁰ term outside log Z"; R to (5.37)–(5.38) for "the rest of log Z is irrelevant"]

### 2.4 R-terms and boundary terms of CMP 119 at g = 0

R-terms. CMP 119 (2.31), p. 260 (PDF 18): "|R^{(j)}(X, (U, J))| ≤ g_j^{κ_0} exp(−κd_j(X))", with "κ_0 … chosen arbitrarily large", and "It explains why coupling constant renormalization counterterms are not needed in (2.30)." So every R-term vanishes at g = 0 to order g^{κ_0}. No g⁰ term, and no marginal term, comes from R. [V, CMP 119 PDF 18] The R″^{(k+1)} terms of p. 279 receive only the vacuum-energy subtraction; I read them as of the same kind (large-field origin) but did not check their bound [I].

Boundary terms. CMP 119 p. 253: the clusters near Λ_1^c, including the part of log Z^{(0)} localized there, go into the boundary term B^{(1)}, which "can be bounded by O(1)|Λ_1 ∩ Λ_1^c|; therefore it is controlled by the large field estimates, and does not need to be renormalized" (PDF 11; the printed set is as quoted). p. 260: "The term B_k is the simplest term from the point of view of the renormalization, it does not need any renormalization". So B-terms do carry g⁰ pieces, including marginal pieces of log Z near large-field regions. They are not renormalized and do not enter the definition of β. [V, CMP 119 PDF 11, 18]

Consequence. The β_j of the full construction is CMP 109's β_j ("the same counterterm as in [I], only localized properly", p. 254; subtraction from E^{(k+1)} only, p. 279). V1 is a statement about this β_j. The g⁰ content of B-terms is a fact about the large-field bookkeeping, not about β. The file's C15 is correct; it is now supported also by (2.31). [V for quotes; I for "R″ is of the same kind"]

### 2.5 The dominated-convergence limit (file §2.3)

On supp χ_k, |g_kB(b)| < ε_1, so terms such as (1/g_k²)G_3(g_kB) ≤ C g_k|B|³ ≤ Cε_1|B|². This makes the O(ε_1) quadratic bound of p. 269 uniform in g_k ∈ (0, γ], as the file says. With ε_1 below a fixed fraction of the lower bound of C*Δ^{(k)}C (CMP 99 p. 428, ledger A3) and the curly bracket bounded by c_T at fixed torus, dominated convergence gives E^{(k+1)}(g_k, U) → 0. [P, given the p. 269 bound, which Balaban states without proof in that passage, and A3]

## 3. log Z^{(j)} versus the per-step Gaussian of the numerics

The numerics compute, per step, log Z = const + log det(DᵀD) − ½ log|det Bord|, Bord = [[Δ + DDᵀ, Q̃ᵀ], [Q̃, 0]] (NUMERICS §1, §5). I check the four items of the brief, then the file's Claim 3.1, Fact K, Lemma 3.2 and ΓD.

### 3.1 Same constraint

Balaban: δ(Q̃B) with Q̃ the linearization of (2.4), M(V′V^{(k)})M(V^{(k)})^{−1} = exp iQ̃(B′), coordinates V = e^{iB′}V^{(k)} (left translation). Numerics: δ_Haar(Ū(U)V^{−1}) with U = e^{iB}U_0, the same left-translation coordinates, Q̃ the linearization of Ū at U_0. Writing the constraint as Ū V^{−1} or V^{−1}Ū changes Q̃ by Ad_V, an isometry with Jacobian 1 (R2 §2.4, which I read). The coarea factor det(Q̃Q̃ᵀ)^{−1/2} is background dependent but appears in both and cancels exactly in the bordered form (R2 (2.2)–(2.3), which I rederived: det(K|_{ker C}) = (−1)^m det Bord / det(CCᵀ)). The averaging is a separate issue: the numerics use (0.4); see §5. [P]

### 3.2 Gauge fixing: Claim 3.1, Fact K, Lemma 3.2, ΓD = −I

Claim 3.1 (order-g⁰ form = intrinsic constrained Hessian). Rederived. On a curve B′(t) = tB_1 + t²B_2 + O(t³) in the constraint surface, Balaban's constraint reads LQ̃B′ + C̃(B′) = 0 (p. 267), so Q̃B_2 = −L^{−1}C̃^{(2)}(B_1). The linear term ⟨H_1B′, J⟩ vanishes on ker Q̃, so H_1ᵀJ = Q̃ᵀJ̃ for some J̃. Then ⟨H_1B_2, J⟩ = ⟨J̃, Q̃B_2⟩ = −L^{−1}⟨J̃, C̃^{(2)}(B_1)⟩, and LQ̃h = I gives ⟨H_1hX, J⟩ = ⟨J̃, Q̃hX⟩ = L^{−1}⟨J̃, X⟩. Hence ⟨H_1B_2, J⟩ = −⟨H_1hC̃^{(2)}(B_1), J⟩. So the t² coefficient of A∘U_k + G on the surface is ½[⟨H_1B_1, Δ_1H_1B_1⟩ − 2⟨H_1hC̃^{(2)}(B_1), J⟩ + G^{(2)}(B_1)] = ½⟨B_1, Δ^{(k)}B_1⟩ of (1.5). The factors L cancel. This settles the file's [I] on the h-normalization: it matches. [P]

Fact K (Hess ℒ annihilates residual gauge directions). ℒ := A∘U_k − ⟨J̃, Q(·)⟩ is invariant under level-k gauge transformations with u = 1 on T^{(k+1)}: A∘U_k is gauge invariant, and Q is invariant because M is covariant ((0.6), p. 253) and u(c_±) = 1. ∇ℒ = 0 at V^{(k)}. Differentiating ℒ(e^{tλ}·V) = ℒ(V) once in V and once in t at a critical point gives Hess ℒ · Dλ = 0. [P]

Lemma 3.2 (linear Faddeev–Popov). Rederived: B = Dλ + b on W = N ⊕ (W ⊖ N), dσ_W = det(DᵀD)^{1/2}dλ db, ⟨B, KB⟩ = ⟨b, Kb⟩ by KD = 0, shift λ by −(ΓD)^{−1}Γb, Gaussian in λ gives (2π)^{dim N/2}|det ΓD|^{−1}. Correct as stated, given K > 0 on W ⊖ N. [P]

ΓD = −I for Balaban's G^{(2)}. (2.5): G(B′) = Σ_y Σ_{x∈B(y),x≠y} ½|B̃′(y,x)|² + G_3, with Ṽ′(y,x) = (V′V^{(k)})(y,x)(V^{(k)}(y,x))^{−1}. The number of components is 3(L⁴ − 1) per coarse site, equal to the dimension of the residual group (λ vanishing at the block centres, p. 255: "u(y) = 1 for y ∈ T^{(1)}"). V^{(k)} satisfies the axial conditions G(V^{(k)}) = 0 (p. 265), and for SU(2) 1 − Re tr̂ U = 0 iff U = 1, so V^{(k)}(y,x) = 1. Under u = e^{iλ} with u(y) = 1, (0.6) and (0.11) give U(y,x) → u(y)U(y,x)u(x)^{−1}, so B̃′(y,x)[Dλ] = −λ(x). Hence ΓD = −I in every block, for every background. [P]

Combining: log Z^{(k)}_{Balaban} = c + ½ log det(DᵀD) − ½ log det(Q̃Q̃ᵀ) − ½ log det(K|_{W⊖N}), and the numerics' formula has the same background dependence by NUMERICS §1 (iii)–(v). Both are evaluated at gauge-equivalent backgrounds (Balaban's V^{(k)} is in axial gauge; the numerics' U_0 is not), and the numerics' formula is invariant under full gauge transformations (NUMERICS §4: to 10⁻¹²). So the background dependences agree. This is an exact finite-dimensional identity at a critical background; it replaces R2 §2.5(c). [P]

Weight of the gauge-fixing term. Balaban (0.17), (0.19): gauge fixing with weight 1/g_k², the same as the action (p. 255, PDF 7). After B′ = g_kB it is order g⁰ with weight 1. The numerics use the Feynman term DDᵀ with weight 1. By Lemma 3.2 the weight and shape enter only through |det ΓD|, which is background independent in both cases. [P]

### 3.3 Ghost domain

Per step: λ vanishes on T^{(k+1)}, the block centres (p. 255). Numerics: "λ vanishing at anchors", anchors at (L − 1)/2 mod L, which are the block centres for odd L (NUMERICS §1). Match. For even L the anchor is off-centre; this is one reason L = 2, 4 are outside the proofs. [P for odd L]

### 3.4 Normalization 1/g_B² = 2N/g² and the β formula

Balaban's action is (1/g²)Σ_p[1 − Re tr U(∂p)] with a normalized trace (otherwise 1 − Re tr U < 0 at U = 1 for SU(2)); the standard Wilson action (2N/g²)Σ[1 − (1/N)Re Tr U] gives 1/g_B² = 2N/g² (R2 P2, verified in R2_VERIFY). The numerics use exactly Balaban's form with weight 1 (NUMERICS §1: exp[−A(U)/g²], A with tr̂). So the computed β is in Balaban's units; 2N/g² matters only when comparing with the continuum c = 11N²/(12π²), not for V1. [P]

β = 4w/(L⁴(1 − cos p)). With B = Bᵃσ_a/2, d²A/da² per fine site for the transverse wave is (1 − cos p)/4 (NUMERICS §6). So β = w / (d²A_fine/da² per coarse cell): the ratio of the log Z response to the Wilson-action response. Balaban's counterterm is β·A(U_{k+1}(V)), the Wilson action of the background minimizer, i.e. the tree action. The numerics use the fine plane wave instead. Both are L⁴a²p²/8 per coarse cell at order p² (coarse amplitude La, coarse momentum Lp, d = 4 scale invariance), provided the tree action has Maxwell coefficient 1 in coarse units, which is (4.41): "Δ_{j,μν}(p′) = Δ_0(p′)δ_{μν} − ∂̄_μ(p′)∂_ν(p′) + (terms of higher order in p′)" [text layer l. 2120–2122; the same expansion is used on p. 292, PDF 44, which I read]. File C10 is correctly tagged [R].

### 3.5 Transversality (file C9)

The conclusion is right; one step needs a small correction. The file assumes the kernel is "even under reflections". With Balaban's bond convention Π_{μν}(x, y) = Π(⟨x, x+e_μ⟩, ⟨y, y+e_ν⟩) the Fourier kernel carries half-bond phases, and Balaban's own form (5.37)–(5.38) contains a remainder Π′ that is "a third order polynomial in the derivatives ∂̄(p), ∂(p)", i.e. O(|p|³), not O(|p|⁴). The correct statement is Π̃_{μν}(p) = β(δ_{μν}Δ(p) − ∂̄_μ(p)∂_ν(p)) + O(|p|³). This does not change anything: an O(|p|³) term has zero second derivative at 0, and Π′_{22}(pe_1)/p² → 0. So −∂_1∂_2Π̃_{12}(0) = lim Π̃_{22}(pe_1)/|p|² (with Δ(pe_1) = 2(1 − cos p)), as claimed. For the Gaussian part the structure follows from gauge invariance and hypercubic symmetry as the file argues; zero at p = 0 follows from transversality at order p. [P, corrected]

### 3.6 Expansion point (file C11)

I read U3_VERIFY §6: tadpole zero by invariance, umklapp displacement O(p³) paired with an O(p) vertex by the Ward identity, J = O(ap²) paired with an O(p) vertex. Conclusion there: w_true − w_code = O(p⁴). The file reuses it and tags [R]. Correct. [R to U3_VERIFY §6]

## 4. Scope in L

4.1 Odd L > 11. Balaban's construction is stated for "L … an odd, positive integer > 11" (CMP 109 p. 251, PDF 3). Inside it, Theorem V1 holds at every level k on every history on which the induction has run, with β_{k+1} the smooth function of p. 264. The file's §6.1 is correct. [V; P]

4.2 Odd L ≥ 3. The order count of §2 is algebra on (2.12)–(2.13) and uses no property of L. The file lists what it needs at a fixed torus: a regular background, C*Δ^{(k)}C > 0, and the formal expression (2.13) with the cut (2.9). That list is right. Two additions.
(a) For the first step (k = 0) the statement is fully rigorous at every odd L ≥ 3: A_0 = −(1/g_0²)A, so E_0 = 0 and the curly bracket of (2.12) is absent; (2.13) is a finite-dimensional integral on a finite torus, and §2.1, §2.5 apply as written (the p. 269 bound is then a direct estimate of explicit terms). What does not exist below L = 13 is a constructed function β_1(g) on [0, γ] with Balaban's bounds. So for L ≤ 11 V1 identifies the numerics with the g → 0 limit of the one-step expression, as the file says. [P for k = 0; I that the p. 269 bound is elementary at k = 0, not written out]
(b) For k ≥ 1 and L ≤ 11, E_k is not constructed. By §2.2(b) the value at g_k = 0 does not depend on E_k, so the g = 0 object "Maxwell coefficient of the level-k one-step Gaussian" is defined without E_k; but calling it Balaban's β_{k+1}(0) has no content there. The file says the same. [P]

4.3 Even L (2, 4). Balaban's coarse sites are centres of fine blocks only for odd L (CMP 109 p. 251: the lattices L^{−n}Z^d + Σ ½L^{−n}e_μ). For even L the numerics use off-centre anchors, a different scheme. The file's §6.3 is correct that the even-L numbers are outside the proofs. Its remark that §3.2 "does not use parity" is true for the algebra, but ΓD = −I uses the block centre y ∈ B(y), which exists as a lattice site only for odd L. [P]

## 5. Consistency with the listed numbers; the averaging finding

5.1 Numbers checked against the sources.

| number in the file | source checked | result |
|---|---|---|
| β_1(0) = 0.630, 0.664, 0.757, 0.749/0.743, 0.803, 0.833–0.851, 0.850–0.868 (L = 2, 3, 4, 5, 7, 9, 11) | THEOREM2_PROOF_v4 §8.1; NUMERICS §6–§7 | match |
| β_1 + β_2 = 0.953 (L = 2, Ng = 8, p = 0.2); β_2 ≈ 0.323 | v4 §8.2; NUMERICS §6 | match (0.953 − 0.630 = 0.323) |
| per-level β_2 = 0.317–0.341; Nyquist 0.333, 0.317, 0.323 | v4 §8.2 | match (NUMERICS §6 gives the older range 0.317–0.337) |
| abelian 15/64, 20/81; 240/1024 and 15/1024 | NUMERICS §6; S_k^{ab} = (1 − L^{−4k})/4 | match (255/1024 − 240/1024 = 15/1024) |
| pure gauge w = −2·10⁻¹⁵, −4·10⁻¹⁵ | NUMERICS §5 | match |
| dim(W ∩ N^⊥) = 9L⁴ − 9 per cell | SOURCES_D1 §2.1 | match (12L⁴ − 12 − 3(L⁴ − 1)) |
| Δβ table (§4.2 of the file) | results/t2_v1_avg012*.json, t2_v1_avg012b*.json | all entries match the JSON files to the digits shown |
| L = 3, Ng = 6 (0.4) value 0.68392 | results/mom_L3_Ng6_p0.2_trans.json: stored β = 0.17098 in the old normalization; 4 × 0.17098 = 0.68392; recomputed 4w/(81(1 − cos 0.2)) = 0.68393 | match |
| Δw ratio 4.04 (Ng = 2) | Δw = 0.008551 (p = 0.4), 0.002115 (p = 0.2) | match |

5.2 What these numbers test. Positivity, the abelian values, the pure-gauge zero, c_1 = 1 and the β_1 + β_2 composition are all properties of the Gaussian determinant. The composition test checks R2 Prop. 3.1 (Gaussian telescoping), which holds independently of V1. None of them can detect a failure of V1, because V1 is about whether Balaban's β_{j+1}(0) equals the Gaussian's coefficient; a failure would be a non-Gaussian g⁰ term in (2.13), which no Gaussian computation sees. So "consistent" is the right word, and the evidence for V1 is the order count of §2, not the numbers. [I, reading]

5.3 The averaging finding (file §4). I checked the (0.12) implementation in t2_v1_avg012.py against the page image of (0.12): the loop is M(G(c_−,x))·U([x,x′])·M(G(c_+,x′))^{−1}·U(−c), log taken per x, weight L^{−4}, times U(c); M is the Federbush average solving Σ_j log(M^{−1}H_j) = 0, which is equivalent to (0.10), Σ_j log(H_jM^{−1}) = 0, by conjugation. This matches (0.12) and (0.10)–(0.11). [read; P for the equivalence]
Limits of the test: the two built-in checks (Jacobian at U = 1, abelian sector) are cases where (0.4) and (0.12) agree by construction. A bug in the non-abelian second-order Taylor data of the (0.12) code would not be caught by them. The file's L = 2 exact agreement (10⁻¹⁴) is unexplained. So Δβ_1(0) ≈ +0.0067 at L = 3 is [numerical, one implementation, not independently reproduced]. I did not rerun it.
Consequence. The finding does not affect V1, which is scheme-internal (the file's §4.3(a) is right: §2–§3 use only covariance (0.6) and the first-order property (0.8)). It affects which construction the numbers belong to. CMP 119 p. 243 (PDF 1) settles the permission: "The averaging operation is defined by the formula (0.4), or (0.12) in [I], but we may take any averaging operation satisfying several general properties". So the project can declare that the construction uses (0.4), and the computed numbers are then the β_j(0) of that construction. The file's open item (a) reduces to a one-line declaration. [V, CMP 119 PDF 1]

## 6. Status of THEOREM2_PROOF_v4 §10 item 5

Item 5 reads: "V1 order-g⁰ completeness of CMP 109 (1.3)–(1.5): β_{j+1}(0) is the Maxwell coefficient of the per-step Gaussian determinant [open; supported at order p²]."

Verdict: item 5 can move from [open] to [proved+verified], stated as follows.

Statement. Odd L > 11, Balaban's construction with the cut (2.9) and a fixed averaging (0.4) or (0.12). At each level k and on every history on which the induction has run, β_{k+1}(0) equals the Maxwell coefficient, per coarse cell, of the one-step Gaussian log-determinant (1.4)–(1.5) with j = k, built with the same averaging. Up to a background-independent constant, this log-determinant equals the bordered-Hessian-plus-ghost formula of NUMERICS §1, and β_{k+1}(0) does not depend on the history.

Conditions that remain. None is new; each is already a separate item or a declaration.
(i) (G2), item 6: the infinite-volume limit of the per-cell Gaussian densities (the file's [I] in C5).
(ii) Balaban's inductive bounds, which are part of the construction: the p. 269 bound on P^{(k)}, (1.18), and the gap A3 (CMP 99 p. 428). These are used only for the limit g_k → 0+; at g_k = 0 itself the integrand is 1 and nothing is needed.
(iii) If β_{k+1}(0) is read as lim_{g→0+} β_{k+1}(g) instead of the value at 0 of Balaban's function on [0, γ]: smoothness (H0)/A5, item 7. Balaban defines β_{j+1} on the closed interval [0, γ] (p. 264), so the value at 0 is his object.
(iv) For the numbers to be values of β_j(0): Lemma M (v4 §3.5, proved+verified) for the normalization, U3_VERIFY §6 (CONFIRMED) for the plane-wave expansion point, and a declaration that the construction uses averaging (0.4), allowed by CMP 109 p. 254 and CMP 119 p. 243.
(v) The cut (2.9). With Balaban's alternative cut "g_k/γ_k ε_1", V1 fails by a U-dependent cut term (file C14). The project must use (2.9).

For odd L ≤ 11 the item holds only as a statement about the g → 0 value of the formal one-step expression (rigorous at the first step, k = 0); there is no constructed β there.

Side result for the ledger. R2's item V2 (sign of (0.20)) is void: the page image of (0.20) agrees with (0.18) and (2.15) (§1.12).

## 7. Grades

Ledger tags for this file: §1 [V] throughout (pages listed); §2.1 [P given Balaban's stated orders]; §2.2 [P]; §2.3 [P/R/I as marked]; §2.4 [V/I as marked]; §2.5 [P given p. 269 and A3]; §3 [P] except 3.4 [R to (4.41)/Lemma M] and 3.6 [R to U3_VERIFY §6]; §4 [P/I as marked]; §5 [read/numerical/I as marked]; §6 [P as a summary of §1–§5].

## Grades

C1. CONFIRMED. Quotes on PDF 12–13, 16 match; additional support from CMP 109 p. 292 (PDF 44), "(4.38) appears with the minus sign in the effective action (1.6)", and from (0.23) (PDF 8).
C2. CORRECTED. (2.13) is the (1.3) function: confirmed. Sign: the printed (0.20) (PDF 8) is 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k), identical to (2.15) and (0.18); there is no disagreement, and R2's V2 is void (the file's reading came from the garbled text layer).
C3. CORRECTED. Conclusion holds (exponent of (2.13) vanishes at g_k = 0; cut → 1). Correction: the J-term of (2.12) has prefactor 1/g_k² (forced by (2.10)), so it is O(g_k), not O(g_k²). The [I] input log σ(0) = 0 is not needed: log σ(0) is a U-independent constant that cancels in E(U) − E(1).
C4. CONFIRMED. The O(ε_1) bound is uniform in g_k on supp χ_k; dominated convergence is correct given the p. 269 bound and A3.
C5. CONFIRMED. With the tags as stated: torus → Z⁴ limit [I] = (G2); value at 0 versus limit [R] to A5 and (1.18).
C6. CONFIRMED. Strengthened: the g = 0 value is the same whether the history is held fixed or tied to g_k by (2.15), given the history-uniform constant E_0 of (1.18).
C7. CONFIRMED. The h-normalization of the J-term, marked [I] in the file, checks: LQ̃h = I and LQ̃B′ + C̃(B′) = 0 make the factors L cancel (§3.2).
C8. CONFIRMED. Fact K, Lemma 3.2 and ΓD = −I rederived; the identity is exact at a critical background.
C9. CORRECTED. The remainder is O(|p|³) (Balaban's Π′ is cubic in ∂̄, ∂; the half-bond phases break the assumed evenness), not O(|p|⁴). Both −∂_1∂_2Π̃_{12}(0) and lim Π̃_{22}(pe_1)/p² are unaffected, so the conclusion stands.
C10. CONFIRMED. As [R] to (4.41)/Lemma M; the order-p² match of fine plane-wave and tree action per coarse cell checked.
C11. CONFIRMED. As [R] to U3_VERIFY §6.
C12. CONFIRMED. All table entries match the JSON files; the (0.12) code matches the page image of (0.12) and (0.10). Caveat: one implementation, its built-in checks cannot detect non-abelian second-order errors, not rerun here; the L = 2 coincidence is unexplained.
C13. CONFIRMED. Upgraded from [I] to [V]: CMP 119 p. 243 (PDF 1) states that the averaging is defined by "(0.4), or (0.12) in [I]".
C14. CONFIRMED. As a scope statement; the parse of the alternative cut remains [I].
C15. CONFIRMED. Quotes match (CMP 119 PDF 11–12, 37); the subtraction sentence is on journal p. 279, not p. 278. Further support: R-terms obey |R| ≤ g^{κ_0}e^{−κd} ((2.31), PDF 18), so they have no g⁰ part; B-terms carry g⁰ pieces but are not renormalized and do not enter β. The "(1.41)–(1.43)" misprint reading stays [I].
C16. CONFIRMED. All numbers match their sources. None of them can test V1 (they are Gaussian facts; the composition test checks R2 Prop. 3.1); "consistent" is the correct strength.
C17. CONFIRMED. Addition: at the first step (k = 0, E_0 = 0) the odd-L ≥ 3 statement is rigorous for the one-step expression; ΓD = −I needs block centres, i.e. odd L.

SUMMARY: 14 CONFIRMED, 3 CORRECTED, 0 UNSUPPORTED; verdict: V1 holds at fixed level inside Balaban's construction with cut (2.9) (β_{k+1}(0) is the Maxwell coefficient of the one-step Gaussian, history-free, equal to the numerics' determinant up to a constant), and §10 item 5 can move to [proved+verified] conditional only on (G2), Balaban's own inductive bounds, and a declaration that the averaging is (0.4).
STATUS: COMPLETE
