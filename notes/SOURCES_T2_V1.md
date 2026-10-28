# SOURCES_T2_V1: order-g⁰ completeness of CMP 109 (1.3) — β_{j+1}(0) is the Maxwell coefficient of the per-step Gaussian determinant

Date: 2026-10-28. Item V1, DERIVE. Author: Claude (headless session).
Status: in progress.

Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). ONLINE_SWEEP §2 not read.

Read list. THEOREM2_PROOF_v4.md l. 117–176, 301–362, 420–488; R2_TELESCOPING.md l. 94–230, 291–320; SOURCES_D1.md (full); SOURCES_D1_VERIFY.md (full); U3_VERIFY.md l. 74–100 (§6), §7–§8 and grades; KAPPA_BOUNDED.md l. 26–41; numerics/NUMERICS.md (full, 79 lines); TRUST_LEDGER.md l. 20–40, 62–70 (rows A5–A18, B2–B10). Balaban: CMP 109 text layer l. 1–1120; page images PDF 12, 13, 16, 19, 20 (journal pp. 260, 261, 264, 267, 268); further pages listed where used. Code read (not modified): numerics/ym_momentum.py l. 195–300, numerics/ym_oneloop.py l. 138–200 (averaging).

Tags: [P] proved here; [R] reduced to a named input; [I] inference not checked line by line; [V] checked against a Balaban page image (PDF page given) or text layer (said).

## Plan
1. Balaban's definitions, verbatim: (1.3), (1.6), (1.20), (1.22), (2.10)–(2.15). The two meanings of the symbol E^{(j+1)}.
2. Theorem V1 and its proof: E^{(k+1)} of (2.13) vanishes identically at g_k = 0; hence Π^{(k+1)}(0) and β_{k+1}(0) come from log Z^{(k)} alone.
3. From log Z^{(k)} (Balaban's exponential gauge fixing, his variables) to the computed object (bordered Hessian + ghost, NUMERICS §1, §5): gauge-fixing independence, constraint Jacobian, expansion point, normalization of (1.22) against β = 4w/(L⁴(1 − cos p)).
4. A scheme caveat found here: the numerics use averaging (0.4); Balaban's transformation uses (0.12). What V1 identifies and what it does not.
5. Consistency with the numerical facts (positivity, abelian values, β_1 + β_2 composition vs per-level recursion).
6. Scope in L: odd L > 11 (Balaban) and odd L ≥ 3.
7. Ledger.

---

## 1. Balaban's definitions, verbatim

All quotes in this section are checked on the page images [V, PDF pages given]. The text layer garbles every displayed formula on these pages.

1.1 The action after k steps, CMP 109 p. 260 (PDF 12), (1.3)–(1.4):

  A_k(U_k) = −(1/g_k²) A(U_k) + Σ_{j=0}^{k−1} { −β_{j+1}(g_j) A(U_k) + [log Z^{(j)}(U_k) − log Z^{(j)}(1)] + [E^{(j+1)}(g_j, U_k) − E^{(j+k)}(g_j, 1)] }.   (1.3)

(The upper index "j+k" in the last term is printed so; it is a misprint for j+1.) Then: "We have written explicitly terms of the order 0 in the coupling constants. Let us recall that the factor Z^{(j)}(U_k) is given by the Gaussian integral normalizing the Gaussian measure for a fluctuation field in j-th step integration

  Z^{(j)}(U_k) = ∫ dB δ(Q̃B) exp[−½⟨B, Δ^{(j)}(U_k)B⟩]."   (1.4)

1.2 The quadratic form, p. 261 (PDF 13), (1.5):

  ⟨B, Δ^{(j)}(U_k)B⟩ = ⟨H_{1,j}(U_k)B, Δ_1(U_k)H_{1,j}(U_k)B⟩ − 2⟨H_{1,j}(U_k)hC̃^{(2)}(Ū_k^j, B), J⟩ + G^{(2)}(B),   (1.5)

"where the operators H_{1,j}, Δ_1 are defined in Sect. D [13], and C̃^{(2)}(Ū_k^j, B) is the second order polynomial in the expansion of Q̃(Ū_k^j, B)."

1.3 The second form, p. 261 (PDF 13), (1.6): "In many considerations it is not necessary to separate the terms of zeroth order from the remaining terms in the interaction, and then we write

  A_k(U_k) = −(1/g_k²) A(U_k) + Σ_{j=0}^{k−1} { −β_{j+1}(g_j) A(U_k) + [E^{(j+1)}(g_j, U_k) − E^{(j+1)}(g_j, 1)] }."   (1.6)

Comparing (1.3) and (1.6) term by term: the symbol E^{(j+1)} has two meanings. Write E_{(1.3)}^{(j+1)} for the function in (1.3) and E_{(1.6)}^{(j+1)} for the function in (1.6). Then, as functions of U,

  E_{(1.6)}^{(j+1)}(g_j, U) − E_{(1.6)}^{(j+1)}(g_j, 1) = [log Z^{(j)}(U) − log Z^{(j)}(1)] + [E_{(1.3)}^{(j+1)}(g_j, U) − E_{(1.3)}^{(j+1)}(g_j, 1)].   (1.7′)

Balaban states this reading himself on p. 261: "We can assume that this representation [(1.7)] holds for the functions E^{(j)} in (1.3) and (1.6), because the expansion of the log Z^{(j−1)}(U_j) constructed in [16], implies, that we can represent this term in the form (1.7)." [V, PDF 13] So the (1.6) function contains log Z. (1.7′) is [P] (subtract (1.3) from (1.6); the identity holds for every k, and the j-th summands are separately defined objects of step j+1, so they match summand by summand).

1.4 The β-function, p. 264 (PDF 16), (1.20)–(1.22): "Now we describe the most important expressions in (1.3), (1.6), the β-functions β_{j+1}(g_j). They are determined by the functions E^{(j+1)}(g_j, U_{j+1}) in (1.6). Let us denote E^{(j+1)}(g_j, B) = E^{(j+1)}(g_j, U_{j+1}(exp iB)). We define

  Π^{ab}_{j+1,μν}(g_j, x, x′) = (δ²/δB^a_μ(x)δB^b_ν(x′) E^{(j+1)})(g_j, 0).   (1.20)

This is the vacuum polarization tensor of the theory defined by the j-th fluctuation field integral." After (1.21) (Π^{ab} = δ^{ab}Π_{j+1,μν}(g_j, x − x′), Euclidean covariance): "Now we take a limit of these functions as T^{(j+1)} ↗ Z^d. This limit exists by the localized representation (1.7). The function β_{j+1}(g_j) is defined by

  β_{j+1}(g_j) = −(∂²/∂p_1∂p_2 Π̃_{j+1,12})(g_j, 0) = −(∂²/∂p_μ∂p_ν Π̃_{j+1,μν})(g_j, 0) = Σ_x Π_{j+1,μν}(g_j, x) x_μ x_ν   (1.22)

for μ, ν arbitrary, μ ≠ ν". Then: "It is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives."

So β_{j+1} is defined from E_{(1.6)}^{(j+1)}, which includes log Z^{(j)}. This is the reading on which V1 rests. [V, PDF 16]

1.5 The fluctuation integral of step k+1, pp. 266–268 (PDF 18–20). The cut, (2.9): "χ_k = Π_{b∈T^{(k)}∖{b_0(c): c∈T^{(k+1)}}} χ({|B′(b)| < ε_1}). Another possibility is to take g_k/γ_k ε_1 instead of ε_1, where γ_k = C log(L^kε)^{−1} with C sufficiently large." [V, PDF 18]

After the change of variables that linearizes Q̃ and the scaling B = g_kB′, p. 267: "Hence the only term with a negative power of g_k is the action evaluated at the configuration U_{k+1}. Terms of the order 0 in g_k are

  ⟨H_1hC̃^{(2)}(B′), J⟩ − ½G^{(2)}(B′) − ½⟨H_1B′, Δ_1H_1B′⟩.   (2.11)

The quadratic form in B′ above is equal to −1/2⟨B′, Δ^{(k)}B′⟩, see the definition (3.156) [13] with the δ-function gauge fixing term replaced by the exponential one. This quadratic form defines the k-th normalization factor Z^{(k)}(U_{k+1}) given by the formula (1.4) with j = k." [V, PDF 19]

p. 268 (PDF 20), after eliminating B′(b_0(c)) by δ(Q̃B′) (B′ = CB, covariance C^{(k)} = (C*Δ^{(k)}C)^{−1}), (2.12) reads

  A_{k+1}(U_{k+1}) = −(1/g_k²)A(U_{k+1}) + E_k(U_{k+1}) + [log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1)]
    + log N_k″^{−1} ∫ dμ_{C^{(k)}}(B) χ_k exp[ Tr log(I − h(δ/δB)D̃(g_kCB)) + log σ(g_kCB − hD̃(g_kCB))
    + (1/g_k)⟨H_1hD̃_3(g_kCB), J⟩ − (1/g_k²)G_3(g_kB) + (1/g_k²)⟨H_1g_kCB, Δ_1H_1hD̃(g_kCB)⟩
    − (1/(2g_k²))⟨H_1hD̃(g_kCB), Δ_1H_1hD̃(g_kCB)⟩ − (1/g_k²)V(H_1(g_kCB − hD̃(g_kCB)))
    + {E_k(U_k(exp i[g_kCB − hD̃(g_kCB)]V^{(k)})) − E_k(U_k(V^{(k)}))} ].   (2.12)

Then, verbatim: "The integral in (2.12) defines the new term E^{(k+1)} in the inductive definition of the action A_{k+1} by the formula

  E^{(k+1)}(g_k, U_{k+1}) = log ∫ dμ_{C^{(k)}}(B) χ_k exp[P^{(k)}(g_k, U_{k+1}, B) + {…}].   (2.13)

Let us remark that the expression under the exponential above vanishes at g_k = 0, and

  log N_k″ = E^{(k+1)}(g_k, 1).   (2.14)

Finally we perform the coupling constant renormalization

  1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k)   (2.15)

with the β-function defined by the formulas (1.20), (1.22) for j = k. The equalities (2.12), (2.14) together with the definitions (2.13), (2.15) imply that the action A_{k+1} is given by (1.3) with k+1 instead of k." [V, PDF 20]

Two remarks.
(a) (2.13) defines E_{(1.3)}^{(k+1)}: (2.12) has log Z^{(k)} written separately, and Balaban says (2.12)–(2.15) give (1.3). [V]
(b) (2.15) fixes the sign question V2 of R2 §6: 1/g_{k+1}² = 1/g_k² − β_{k+1}(g_k), as in (0.18) second form and (0.23). The printed (0.20) "1/g_{k+1}² = 1/g_k² + β_{k+1}(g_k)" (text layer l. 489, garbled; page image not opened for (0.20)) disagrees with (2.15) [I for (0.20); V for (2.15)].

---

## 2. Theorem V1 and proof

### 2.1 Statement

Setting. Balaban's construction of CMP 109 with the cut (2.9) (not the alternative cut g_k/γ_k ε_1; see 2.5). Fix k ≥ 0, a finite torus, and a history g_0, …, g_{k−1} along which Balaban's induction has run to step k (so E_k exists with the properties of CMP 109 Sect. 1). Let U range over the regular configurations on which (2.13) is defined (U_{k+1}(W) ∈ U_{k+1}(ε_0), p. 265).

Theorem V1.
(i) E_{(1.3)}^{(k+1)}(0, U) = 0 for every such U. The same value is the limit g_k → 0+ of (2.13).
(ii) E_{(1.6)}^{(k+1)}(0, U) − E_{(1.6)}^{(k+1)}(0, 1) = log Z^{(k)}(U) − log Z^{(k)}(1) for every such U.
(iii) Π^{(k+1)}_{μν}(0; x − x′) of (1.20)/(5.1) is the second variation at B = 0 of B ↦ log Z^{(k)}(U_{k+1}(exp iB)), on every torus T^{(k+1)} and hence in the limit T^{(k+1)} ↗ Z⁴.
(iv) β_{k+1}(0) = −(∂²/∂p_1∂p_2)Π̃^{Z,(k)}_{12}(0) = Σ_x Π^{Z,(k)}_{μν}(x)x_μx_ν (μ ≠ ν), where Π^{Z,(k)} is the infinite-volume vacuum polarization of the Gaussian log Z^{(k)} alone. In words: β_{k+1}(0) is the Maxwell (F²) coefficient, per coarse cell of T^{(k+1)}, of the one-step Gaussian log-determinant (1.4)–(1.5) with j = k.
(v) β_{k+1}(0) does not depend on g_0, …, g_{k−1}: Z^{(k)} contains only the Wilson action, the averaging, and the gauge fixing.

Tags: (i) [P] given Balaban's formula (2.12)–(2.13) and two bounds named in 2.3; (ii)–(v) [P] from (i) and the definitions quoted in §1.

### 2.2 Proof of (i): order counting term by term

Write the exponent of (2.13) as Φ(g_k, B) := P^{(k)}(g_k, U, B) + {…}. Its terms are listed in (2.12). Let B denote the retained fluctuation variables and B′ := g_kCB − hD̃(g_kCB) (CMP 109 (3.2)). Facts used:
- D̃ is analytic with expansion beginning at second order, D̃^{(2)} = C̃^{(2)} (p. 267, "D̃(B) has an expansion beginning with quadratic terms" [V, PDF 19]); D̃_3 := D̃ − D̃^{(2)} begins at third order (p. 266 [V, PDF 18]).
- G_3 is analytic and begins at third order ((2.5), p. 266 [V]).
- V(H_1B′) denotes "terms of at least third order in H_1B′" ((2.8), p. 266 [V]).
- σ is the Haar density in the coordinates B′, normalized so that its value at B′ = 0 is pulled into N′_k ("the factors σ_0 are included into the normalization factor N′_k", p. 267 [V]); so log σ(0) = 0 [I: reading of "σ_0"].
- E_k is analytic on the regular domain (inductive assumption, CMP 109 p. 263: "We assume that the function E^{(j)}(X, g_{j−1}, U, J) is defined and analytic on the space U^c_j(X, α_0, α_1) … It is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic)" [V, PDF 15]).

Term by term, for fixed B, as g_k → 0 (each term is an analytic function of g_k near 0 after the indicated cancellation of powers):
1. Tr log(I − h(δ/δB)D̃(g_kCB)): δD̃/δB at g_kCB is O(g_k); the term is O(g_k).
2. log σ(g_kCB − hD̃(g_kCB)) = log σ(O(g_k)) = O(g_k) (σ smooth, log σ(0) = 0).
3. (1/g_k)⟨H_1hD̃_3(g_kCB), J⟩: D̃_3 is O(g_k³); the term is O(g_k²).
4. −(1/g_k²)G_3(g_kCB): O(g_k³)/g_k² = O(g_k).
5. (1/g_k²)⟨H_1g_kCB, Δ_1H_1hD̃(g_kCB)⟩: g_k · O(g_k²)/g_k² = O(g_k).
6. −(1/(2g_k²))⟨H_1hD̃(g_kCB), Δ_1H_1hD̃(g_kCB)⟩: O(g_k⁴)/g_k² = O(g_k²).
7. −(1/g_k²)V(H_1(g_kCB − hD̃(g_kCB))): O(g_k³)/g_k² = O(g_k).
8. {E_k(U_k(exp i[B′]V^{(k)})) − E_k(U_k(V^{(k)}))} with B′ = O(g_k): a difference of an analytic function at two points distance O(g_k) apart; O(g_k). This holds for the whole E_k, including the counterterms −Σ_{j<k}β_{j+1}(g_j)A and the old log Z^{(j)}, j < k: they sit inside E_k and only see a shifted argument.
So Φ(0, B) = 0 for every B. This is Balaban's sentence "the expression under the exponential above vanishes at g_k = 0" (p. 268 [V, PDF 20]), now checked term by term [P].

The cut. On bonds b ∉ {b_0(c)}, h vanishes (h is supported on {b_0(c)}, p. 267 [V]), so B′(b) = g_k(CB)(b). The retained variables are B′ on exactly these bonds (p. 268: "using the δ-functions δ(Q̃B′) we eliminate the variables B′(b_0(c)) … Denoting the remaining variables by B we have B′ = CB" [V, PDF 20]). So χ_k = Π_b χ(|g_kB(b)| < ε_1). At g_k = 0, χ_k ≡ 1 [P].

Hence at g_k = 0 the integrand of (2.13) is identically 1, and dμ_{C^{(k)}} is a normalized Gaussian probability measure. So E^{(k+1)}(0, U) = log 1 = 0 for every U [P].

### 2.3 The limit g_k → 0+ (finite torus)

Balaban's inductive assumption asserts C^∞ dependence on g_k ∈ [0, γ] (p. 263; TRUST_LEDGER A5), so the value at 0 is the limit. Independent check at a fixed finite torus [P given two inputs]:
- Input (B-P): P^{(k)} "is an analytic function of the fluctuation field B defined on the unit lattice T_1^{(k)}. It is bounded by a second order polynomial in B, with coefficients of the order O(ε_1), hence it can be treated as a small perturbation of the basic quadratic form in the Gaussian measure dμ_{C^{(k)}}." (CMP 109 p. 269 [V, PDF 21]; the text layer garbles "O(ε_1)" as "O ^ )". The bound is O(ε_1), not O(g_k); it is uniform in g_k on supp χ_k.)
- Input (B-E): on supp χ_k, |B′| ≤ (1 + ‖C‖)ε_1 + O(ε_1²), and E_k is analytic and bounded on the regular domain at fixed torus (finite sum (0.26) of terms bounded by (1.18), CMP 109 p. 263 [V, PDF 15]). Then |{…}| ≤ c_T on supp χ_k, with c_T depending on the torus and the history.
On supp χ_k the integrand is bounded by exp(c ε_1(1 + |B|²) + c_T). The covariance C^{(k)} = (C*Δ^{(k)}C)^{−1} is positive definite (finite dimension; uniformly so by CMP 99 p. 428, ledger A3). For ε_1 small, c ε_1 < ½ λ_min(C*Δ^{(k)}C) (this is the content of Balaban's "small perturbation of the basic quadratic form"), so the bound is integrable against dμ_{C^{(k)}}, uniformly in g_k ∈ (0, γ]. The integrand tends to 1 pointwise (each term of 2.2 → 0, χ_k → 1). Dominated convergence gives ∫ → 1, so E^{(k+1)}(g_k, U) → 0. The localized terms E^{(k+1)}(X, g_k, U, J) are finitely many on a finite torus and sum to (2.13), so their g_k → 0 limits also sum to 0 [P].

### 2.4 Proof of (ii)–(v)

(ii) Insert (i) into (1.7′) [P].
(iii) On a finite torus T^{(k+1)}, B ↦ E_{(1.3)}^{(k+1)}(0, U_{k+1}(exp iB)) is the zero function, so its second variation at B = 0 is zero. By (1.7′) and (1.20), Π^{(k+1)}(0) on T^{(k+1)} equals the second variation of log Z^{(k)}(U_{k+1}(exp iB)). The limit T^{(k+1)} ↗ Z⁴ of (1.20)/(5.1) is then the limit of the Gaussian part alone [P]. Existence of that limit: Balaban says "This limit exists by the localized representation (1.7)" (p. 264 [V]); for the Gaussian part it is the statement that the torus kernel of the massive one-step covariance converges to the infinite-lattice kernel. In momentum space the torus sum over discrete momenta converges to the Brillouin-zone integral with an error exponentially small in the torus side, because the integrand is analytic in a strip (the gap of C*Δ^{(k)}C, ledger A3; THEOREM2_PROOF_v4 §7.1 O6 at the trivial background). [I: standard; this is (G2) for the Gaussian part, and the numerics compute the BZ integral directly.]
(iv) (1.22) at g_k = 0 with Π^{(k+1)}(0) = Π^{Z,(k)} [P]. If β_{k+1}(0) is read as lim_{g_k→0+} β_{k+1}(g_k): the moment Σ_xΠ(g; x)x_μx_ν is continuous at g = 0 when Π(g; x) → Π(0; x) pointwise with an exponential decay bound uniform in g. Balaban's bound (1.18), |E^{(j)}(X, g_{j−1}, U, J)| ≤ E_0 exp(−κd_j(X)), has one constant E_0 for all g_{j−1} in the interval (p. 263 [V, PDF 15]; uniformity in g is my reading of the single constant, [I]), and (5.44) gives the decay of Π′. So the two readings agree [R to (1.18) and the smoothness assumption A5].
(v) (1.4)–(1.5): H_{1,k}, Δ_1, J, C̃^{(2)}, G^{(2)}, Q̃ are built from the Wilson action A, the variational problem (1.1), the averaging and the gauge-fixing function. None contains g_j or E_j. (2.11) confirms that the order-g_k⁰ quadratic form comes only from (1/g_k²)G and (1/g_k²)A(U_k(V)) [V, PDF 19] [P]. So the order-g⁰ value is history-free. This removes the history question (L5, ledger B7) at g = 0 only; for g > 0 it stays open.

### 2.5 What the proof does not cover

(a) Alternative cut. With "g_k/γ_k ε_1 instead of ε_1" (p. 266) the cut on the scaled variable B does not tend to 1 as g_k → 0 under the reading |B′| < (g_k/γ_k)ε_1, i.e. |B| < ε_1/γ_k. Then E^{(k+1)}(0, U) = log ∫dμ_{C^{(k)}(U)} χ_k, which depends on U through C^{(k)}(U). V1 would fail by this cut term. The printed γ_k is already known to be defective (SOURCES_G3_VERIFY §2, cited in TRUST_LEDGER A6). The theorem is stated for the cut (2.9) [P for the scope statement; I for the parse].
(b) Large-field terms. In CMP 119 the β-subtraction acts on E^{(k+1)} only, not on the R-terms: "The coupling constant renormalization is performed by subtracting β_{k+1}(g_k)A(φ_{k+1}, U_{k+1}) from E^{(k+1)} − E^{(k+1)}(1)" (CMP 119 p. 278 region, text layer l. 1893–1895 [text layer]). For the first step, CMP 119 p. 254: "Here we have combined the term log Z^{(0)}(Λ_1) with the part of the previous function E^{(1)} in (1.26), to define the new function E^{(1)} above. It coincides with the corresponding function constructed in [I], if the last is suitably restricted to the domain Λ_1. This is the reason why we can renormalize it by the same counterterm as in [I], only localized properly." [V, CMP 119 PDF 12] So β_j in the full construction is CMP 109's β_j, and the R-terms do not enter its definition. V1 is a statement about that definition; the R-terms are outside it [V for the quotes; I for "R-terms never feed β" beyond these two passages].
(c) The CMP 119 reference "β_1(g_0) was defined in [I] by the formulas (1.41)–(1.43)" (CMP 119 p. 253 [V, PDF 11]) does not match CMP 109, whose Sect. 1 ends at (1.22). The defining equality in CMP 109 is (1.22), restated as (5.41)–(5.42) ("This is the fundamental equality defining the β-function", p. 297 [V, PDF 49]). I read "(1.41)–(1.43)" as a misprint for (5.41)–(5.43) [I].

---

## 3. From log Z^{(k)} to the computed object

Theorem V1 identifies β_{k+1}(0) with the Maxwell coefficient of Balaban's own Gaussian (1.4)–(1.5): exponential gauge fixing G^{(2)}, his coordinates B′, his J-term. The numerics compute log Z = const + log det(DᵀD) − ½ log|det Bord| with a Feynman-type term DDᵀ (NUMERICS §1). This section shows that the two have the same background dependence. Fixed level k; write V^{(k)} for the background on T^{(k)} (CMP 109 (2.3)), W := ker Q̃ ⊂ R^n (fluctuations on bonds of T^{(k)}), N := im D.

### 3.1 The order-g⁰ quadratic form is intrinsic

Claim 3.1 [P]. Let f := A∘U_k + G on level-k configurations near V^{(k)}, restricted to the surface S := {V : Ū(V) = W} (one-step constraint). Then (a) V^{(k)} is a critical point of f|_S; (b) the order-g_k⁰ quadratic form (2.11), restricted to W, is −½ times the Hessian of f|_S at V^{(k)} in exponential coordinates; (c) this Hessian equals Hess(ℒ)|_W + G^{(2)}|_W with ℒ := A∘U_k − ⟨J, Q(·)⟩ and J the multiplier, ∇(A∘U_k)(V^{(k)}) = Q̃ᵀJ.
Proof. (a) V^{(k)} minimizes A∘U_k on S (CMP 109 (2.2)–(2.3): "This critical configuration, which is a minimum of the function (2.2)" [text layer l. 840–845]) and G ≥ 0 with G(V^{(k)}) = 0, because V^{(k)} satisfies "the axial gauge conditions G(V) = 0" (p. 265) and 1 − Re tr U ≥ 0 with equality iff U = 1. (b)–(c) Take a curve B′(t) = tB_1 + t²B_2 + O(t³) in S, Q̃B_1 = 0. From Q(B′(t)) = 0: Q̃B_2 = −C̃^{(2)}(B_1). Then (A∘U_k)(B′(t)) = const + t²[⟨Q̃ᵀJ, B_2⟩ + ½⟨B_1, Hess(A∘U_k)B_1⟩] + O(t³) = const + t²·½[⟨B_1, Hess(A∘U_k)B_1⟩ − 2⟨J, C̃^{(2)}(B_1)⟩] + O(t³), and G(B′(t)) = t²·½G^{(2)}(B_1) + O(t³) by (2.5). The t² coefficient depends only on B_1, so it is the intrinsic Hessian of f|_S, and it equals ½(Hess ℒ + G^{(2)})[B_1]. ∎
Balaban's (2.11) has exactly these three pieces (−½⟨H_1B′, Δ_1H_1B′⟩ = −½ Hess(A∘U_k), the J-term, −½G^{(2)}), with his normalization LQ̃h = I in the J-term [I: matching of his h-normalization; the intrinsic statement (b) does not depend on it]. The measure: δ(Q(B′))σ(B′)dB′ becomes δ(Q̃B)dB times the Jacobian det(I − h δD̃/δB), which is 1 + O(g_k) (term 1 of §2.2). So, up to a U-independent constant,

  Z^{(k)}(U) = ∫_{R^n} dB δ(Q̃B) exp(−½⟨B, (K + G^{(2)})B⟩),   K := Hess ℒ at V^{(k)}.   (3.1)

### 3.2 Gauge-fixing exchange

Residual gauge group: level-k gauge transformations u = e^{iλ} with λ = 0 on T^{(k+1)} (p. 254: "invariant with respect to the gauge transformations u satisfying u(y) = 1 for y ∈ T^{(1)}" [text layer]). Linearized action on B′: (Dλ)(b) = λ(b_−) − Ad_{V^{(k)}(b)}λ(b_+). D is injective and N ⊂ W (R2 §2.5(a), R2_VERIFY CONFIRMED; NUMERICS §4 tests Q̃D = 0).

Fact K. KD = 0 [P]. ℒ is invariant under the residual group (A∘U_k is gauge invariant; Q is invariant because Ū is covariant and u = 1 at the coarse sites). V^{(k)} is a critical point of ℒ (∇(A∘U_k) = Q̃ᵀJ). For an invariant function at a critical point, differentiating ℒ(e^{tλ}·V) = ℒ(V) in V and then in t gives Hess ℒ · Dλ = −(∂(Dλ))ᵀ∇ℒ = 0. ∎

Lemma 3.2 (linear Faddeev–Popov) [P]. Let K ≥ 0 on W with KD = 0 and K > 0 on W ⊖ N. Let Γ: R^n → R^{dim N} be linear with ΓD invertible. Then
  ∫_W e^{−½⟨B,KB⟩ − ½|ΓB|²} dσ_W(B) = (2π)^{dim W/2} det(DᵀD)^{1/2} |det ΓD|^{−1} det(K|_{W⊖N})^{−1/2}.
Proof. Write B = Dλ + b, b ∈ W ⊖ N; dσ_W = det(DᵀD)^{1/2} dλ db. K(Dλ + b) = Kb. Shift λ → λ − (ΓD)^{−1}Γb; the λ-integral is (2π)^{dim N/2}|det ΓD|^{−1}, independent of b. The b-integral is (2π)^{dim(W⊖N)/2} det(K|_{W⊖N})^{−1/2}. ∎

Balaban's choice. By (2.5), ½G^{(2)}(B′) = Σ_{y∈T^{(k+1)}} Σ_{x∈B(y),x≠y} ½|B̃′(y,x)|², with Ṽ′(y,x) = (V′V^{(k)})(y,x)(V^{(k)}(y,x))^{−1} = 1 + iB̃′(y,x) + … So ΓB′ = (B̃′(y(x), x))_{x∈T^{(k)}∖T^{(k+1)}}: one g-component per non-center site, the dimension of the residual group. Compute ΓD: by covariance of the group average ((0.6), CMP 109 p. 253), V(y,x) → u(y)V(y,x)u(x)^{−1}, with u(y) = 1. Since V^{(k)}(y,x) = 1 (axial gauge), Ṽ′(y,x) at B′ = 0 moves to u(x)^{−1}, so B̃′(y,x)[Dλ] = −λ(x). Hence ΓD = −I and |det ΓD| = 1, for every background [P, given the axial-gauge choice of V^{(k)} and (0.6)].

Feynman choice: Γ = Dᵀ gives |det ΓD|^{−1} = det(DᵀD)^{−1}; the ghost factor det(DᵀD) restores it.

Result [P]. With the coarea factor det(Q̃Q̃ᵀ)^{−1/2} of δ(Q̃B):
  log Z^{(k)}_{Balaban} = c + ½ log det(DᵀD) − ½ log det(Q̃Q̃ᵀ) − ½ log det(K|_{W⊖N}) = log Z_{NUMERICS} + c′,
with c, c′ independent of the background. The second equality is NUMERICS §1 (iii)–(v) (verified in R2_VERIFY). So the background dependence, hence Π and β, is the same. This replaces the compact-group argument of R2 §2.5(c) by an exact finite-dimensional identity. Note: K must be the Lagrangian Hessian (with the J-term). At a background with J = 0 (constant abelian field: R2 §2.3(i), exact) K is the plain Hessian, which is what the code uses. Fact K is load-bearing; with the plain Hessian at J ≠ 0, KD ≠ 0 and Lemma 3.2 fails (BETA_FP_LEMMA43 "ΔD = 0 is load-bearing").

### 3.3 Normalization of (1.22) against β = 4w/(L⁴(1 − cos p))

Transversality [P]. B ↦ log Z^{(k)}(U_{k+1}(e^{iB})) is invariant under coarse gauge transformations of B (U_{k+1}(V^v) lies on the orbit of U_{k+1}(V), and log Z^{(k)} is gauge invariant: "an easily verifiable statement for all explicitly defined terms in the action (1.3)", p. 263 [V, PDF 15]). Its first variation at B = 0 is a color-invariant vector, hence 0 (U3_VERIFY §6(a)). So the second variation annihilates linearized gauge directions: Σ_ν Π̃_{μν}(p)∂_ν(p) = 0. The kernel is analytic at p = 0 (massive one-step covariance), even under reflections, and hypercubic covariant. The general hypercubic quadratic tensor is aδ_{μν}|p|² + b p_μp_ν + c δ_{μν}p_μ². Transversality at order p³ gives c = 0, b = −a; at order p it gives Π̃(0) = 0. So Π̃_{μν}(p) = a(δ_{μν}|p|² − p_μp_ν) + O(|p|⁴). Hence β_{k+1}(0) = −∂_{p_1}∂_{p_2}Π̃_{12}(0) = a = lim_{p→0} Π̃_{22}(pe_1)/|p|². This reproduces (5.37)–(5.38) for the Gaussian part without Sect. 5.

Units [P to leading order in p]. Balaban's counterterm is β A(U), and (5.43) is the first variation of β·½Σ_p tr(∂B)_p² (normalized trace; R2 §4(ii) checked this). With B = Bᵃσ_a/2 and the transverse wave B_2 = b cos(Px_1)σ_3/2, A(e^{iB}) per site is ½·tr̂((∂B)_{12}²) averaged = b²(1 − cos P)/8 + O(b⁴), so d²A/db² per site = (1 − cos P)/4 (the NUMERICS §6 normalization note). So β = response of log Z divided by response of the Wilson action of the background, per cell. NUMERICS divides w(p) = d²/da² log Z per coarse cell by d²/da² of the fine Wilson action of the background per coarse cell, L⁴(1 − cos p)/4. The two denominators agree as p → 0: the Maxwell coefficient of the level-(k+1) tree action A(U_{k+1}(e^{iB})) in coarse units is exactly 1 (CMP 109 (4.41), "Δ_{j,μν}(p′) = Δ_0(p′)δ_{μν} − ∂̄_μ(p′)∂_ν(p′) + (terms of higher order in p′)" [text layer l. 2120–2122]; THEOREM2_PROOF_v4 §3.5 Lemma M). So the fine Wilson action of the background and ½Σ tr(∂B)² agree at order p² [R to (4.41)/Lemma M].

### 3.4 Expansion point

The code expands around the fine plane wave, not around U_{k+1}(V_a), and drops the J-term. U3_VERIFY §6 shows w_true(p) − w_code(p) = O(p⁴) (tadpole zero, Ward identity on the umklapp displacement, J = O(ap²) paired with an O(p) vertex), with the scale Lp (SOURCES_D1_VERIFY V4). So β_{k+1}(0), the p → 0 limit, is unaffected. Reused, not redone [R to U3_VERIFY §6, CONFIRMED there as C4 at order p²].
