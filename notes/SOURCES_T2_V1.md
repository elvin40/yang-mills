IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_V1: order-g⁰ completeness of CMP 109 (1.3) — β_{j+1}(0) is the Maxwell coefficient of the per-step Gaussian determinant

Date: 2026-10-28. Item V1, DERIVE. Author: Claude (headless session).
Status: complete (all seven sections written; unverified).

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

---

## 4. A scheme caveat found here: averaging (0.4) versus (0.12)

### 4.1 The issue

Balaban defines two averagings. (0.4) averages the logs of the loop holonomies U(Γ ∪ [x,x′] ∪ (−Γ′) ∪ (−c)) over contour pairs. (0.12) first forms the group averages U(c_−,x) = M({U(Γ)}_{Γ∈G(c_−,x)}) (0.11), M the Federbush average (0.10), and then takes one log per x. CMP 109 p. 254 introduces (0.12) "to match a bit better the new axial gauge fixing to the definition of the averages", and says: "Let us stress that both definitions are equally good for our purposes, in fact we may use many other definitions." [text layer l. 260, 273–274; R2_VERIFY item checked the (0.12) passage]. The transformation (0.17)/(0.19) uses Ū; which of the two Ū denotes there is not stated on the read pages [I]; R2 §2.1 reads it as (0.12).

The numerics use (0.4): numerics/ym_oneloop.py `loops_for_direction` ("Loops c- -> x -> x' -> c+ -> c-  … per CMP 109 (0.4)") and `make_avg_fn` (weighted sum of qlog over all contour pairs) [read, l. 138–200].

β_{k+1}(0) is a finite one-loop number and depends on the blocking scheme. Theorem V1 identifies β_{k+1}(0) with the Maxwell coefficient of the per-step determinant built with the same averaging as the transformation. So the question is whether (0.4) and (0.12) give the same Maxwell coefficient.

Both linearizations agree at the trivial background ((0.8); U3_VERIFY item on (0.4)/(0.12); measured below to 4·10⁻¹⁵). The values Ū(U) of the two averagings agree exactly at every abelian U (R2_VERIFY §2.3: the Federbush average of commuting elements is the exponential of the mean log); so the background V_F and the plane-wave coarse field are the same in both schemes. The linearizations Q̃(U_0) differ at second order in the background, also at abelian U_0 (measured below), because fluctuations in the charged directions do not commute with the background: the derivative of log at a non-identity holonomy, and the Federbush average of non-commuting elements, carry BCH terms that the two definitions arrange differently.

### 4.2 Numerical test (new; Mac, each run < 5 min)

Scripts: numerics/t2_v1_avg012.py (implements (0.12) with a Federbush average by fixed-point iteration, plugged into the unchanged ym_momentum Step; runs both schemes), numerics/t2_v1_avg012b.py (one scheme per run; Federbush convergence check), numerics/t2_v1_avgjac.py (compares the Jacobians Q̃(U_0)). Output: numerics/results/t2_v1_avg012_*.json, t2_v1_avg012b_*.json (new files).

Checks of the implementation:
- Jacobian at U = 1: max|Q̃_{(0.4)} − Q̃_{(0.12)}| = 3.9·10⁻¹⁵ (L = 2), 2.0·10⁻¹⁴ (L = 3).
- Federbush iteration: 5 versus 12 iterations change the Jacobian by ≤ 3.3·10⁻⁸ at a random background of size 0.2 (L = 2). At the expansion point (all holonomies = 1) the Taylor data needed are exact after 2 iterations.
- Abelian (σ_3) sector, L = 2, Ng = 4, p = 0.4: β = 0.234374999999999 (0.4) and 0.234375000000000 (0.12), both = 15/64.
Jacobians at random backgrounds of size s (L = 2, one coarse bond, directions μ = 0, 1): max|Q̃_{(0.4)} − Q̃_{(0.12)}| = 3.3·10⁻⁴, 1.3·10⁻³, 1.3·10⁻² (abelian, μ = 0, s = 0.05, 0.1, 0.2) and 8.2·10⁻⁴, 3.2·10⁻³, 1.8·10⁻² (non-abelian), against max|Q̃| ≈ 0.30. The difference is O(s²), as expected.

β(p) for SU(2), transverse plane wave, both schemes on the same grid:

| L | Ng | p | β, (0.4) | β, (0.12) | Δβ = (0.12) − (0.4) |
|---|---|---|---|---|---|
| 2 | 4 | 0.4 | 0.6844412463330535 | 0.6844412463330404 | −1.3·10⁻¹⁴ |
| 3 | 2 | 0.4 | 1.48392 | 1.48927 | +0.00535 |
| 3 | 2 | 0.2 | 3.98620 | 3.99144 | +0.00524 |
| 3 | 3 | 0.2 | −0.32514 | −0.31815 | +0.00699 |
| 3 | 4 | 0.2 | 0.91886 | 0.92549 | +0.00664 |
| 3 | 6 | 0.2 | 0.68392 (cached mom_L3_Ng6_p0.2_trans.json, same code, ghost term identical to 15 digits) | 0.69061 | +0.00669 |

Reading.
- The Ng ≤ 4 values of β itself are far from converged (the grid error in w is roughly Ng-dependent and p-independent, so β = 4w/(L⁴(1 − cos p)) carries it amplified by 1/p²). The difference Δβ is a difference of two integrands on the same grid. It is stable: 0.0052–0.0070 for Ng = 2–6, and 0.0067 at Ng = 6.
- Δβ does not scale like p²: at Ng = 2, Δβ = 0.00535 (p = 0.4) and 0.00524 (p = 0.2); equivalently Δw scales like p² (ratio 4.04). So the difference sits in the p² coefficient of w, i.e. in β(0), not in the p⁴ (dimension-6) terms.
- Estimate: β_1(0)_{(0.12)} − β_1(0)_{(0.4)} ≈ +0.007 at L = 3, about 1% of β_1(0) ≈ 0.664 [numerical, one p at Ng = 6; uncertainty from the Ng spread ≈ ±0.001].
- At L = 2 the two schemes agree to 10⁻¹⁴ although their Jacobians differ at O(s²) at random backgrounds. I have no explanation. L = 2 has corner blocks and is outside the proofs; the agreement may come from the small contour families of the corner block [I, not analysed].

### 4.3 Consequence for V1

(a) Theorem V1 is scheme-internal: for either averaging, β_{k+1}(0) of the construction run with that averaging equals the Maxwell coefficient of the per-step determinant built with the same averaging [P, §2–§3 do not use the form of the averaging beyond covariance (0.6) and the first-order property (0.8)].
(b) The NUMERICS values (L ≥ 3) are the β_j(0) of the construction run with (0.4). Balaban allows this ("both definitions are equally good for our purposes", p. 254). If the construction is read with (0.12), the computed L = 3 value shifts by ≈ +0.007; the other L have not been tested.
(c) What depends on this. Prop. 1.1 of KAPPA_BOUNDED and Lemma D″ need an identity S_j = Σβ_i(0) for the β of the construction actually used, plus bounds. Neither needs the numbers. The bounded-window statements are scheme-independent in form (c log L is universal; the scheme enters κ). Positivity of computed increments is not affected at the 1% level. The project should fix the averaging once: either state that Balaban's construction is run with (0.4) (allowed by p. 254), or recompute with (0.12). [I: that every Balaban estimate used elsewhere holds for (0.4); Balaban says so on p. 253: "The considerations and results of this, and previous papers, do not depend on any particular averaging operation used; they are valid universally for all averages satisfying the above properties" (text layer l. 249–251; note (0.4) is not a contour-variable average of the form (0.11), so "the above properties" (0.5)–(0.10) apply to M, not directly to (0.4)).]

---

## 5. Consistency with the numerical facts

V1 is an identification, not a computation. It predicts that every number below is a value, or a sum of values, of Balaban's β_j(0) (in the (0.4) scheme, §4.3(b)), and that relations between them hold exactly.

5.1 Positivity. All computed increments are positive (THEOREM2_PROOF_v4 §8.1–§8.2: β_1(0) = 0.630, 0.664, 0.757, 0.749/0.743, 0.803, 0.833–0.851, 0.850–0.868 for L = 2, 3, 4, 5, 7, 9, 11; β_2 ≈ 0.32 at L = 2). With V1 these are Balaban's β_1(0), β_2(0) at those L (for L ≤ 11 Balaban's construction is not established, §6, so "Balaban's" means the g → 0 value of the formal step (2.13)). V1 says nothing about signs.

5.2 Abelian sector. The σ_3-sector part of the per-step determinant gives 15/64 (L = 2) and 20/81 (L = 3), matched to all digits (NUMERICS §6). V1 acts on the full determinant; the sector values are partial traces of the same object. The new runs (§4.2) reproduce 15/64 to 10⁻¹⁵ in both averaging schemes, as they must: in the abelian sector the fluctuations commute with the background, and the two averagings coincide there. The exact formula S_k^{ab} = (1 − L^{−4k})/4 gives the abelian parts of β_1, β_2 at L = 2 as 240/1024 and 15/1024 [arithmetic].

5.3 Pure-gauge background. w = −2·10⁻¹⁵ (L = 2), −4·10⁻¹⁵ (L = 3) (NUMERICS §5). This is the gauge invariance of B ↦ log Z^{(k)}(U_{k+1}(e^{iB})) used in §3.3. Consistent.

5.4 c_1 = 1 (SOURCES_D1). The source f enters (2.12) only through the weights of the Wilson action, so the term-by-term counting of §2.2 applies unchanged with w_p = 1/g₀² − f_p: every term except the Gaussian is O(g_k) (D1 §1.3 counts the source terms (T1), (T2) as O(g₀²f), O(g₀f)). So the order-g⁰ sourced effective action is again the log of the Gaussian, and D1's exact identity (2.1) (field-independent change ½(9L⁴ − 9)log(1 − g₀²f₀) per cell) is the order-g⁰ statement for Balaban's step too. Consistent.

5.5 β_1 + β_2: direct composition versus per-level recursion (L = 2). R2 Prop. 3.1 [proved+verified in R2_VERIFY] gives, for Gaussians around a common stationary background, log(composed constrained integral) = Σ_{j<k} log(one-step integral with the level-j Schur-complement form). The per-step forms are Balaban's Δ^{(j)}: ⟨H_{1,j}B, Δ_1H_{1,j}B⟩ is the second variation of the level-j tree action A(U_j(·)), i.e. the Schur complement of the fine Hessian under the j-fold constraint (minimizer map H_{1,j}) [I: identification of Balaban's H_{1,j} with the minimizer map, CMP 99 Sect. D not opened]. With Theorem V1 at each level, the F² coefficient of the composed determinant is β_1(0) + β_2(0), and the per-level recursion computes β_2(0) directly. Measured: composed 0.953 (Ng = 8, single p = 0.2, Lp bias ≈ 10⁻²), so β_2 ≈ 0.953 − 0.630 = 0.323; per-level recursion 0.317–0.341 (N = 8–12; symmetric Nyquist 0.333, 0.317, 0.323), level-1 aliasing ±5% (THEOREM2_PROOF_v4 §8.2). Agreement within the stated errors. Consistent. (The telescoping is exact for the p → 0 coefficient, not for w at fixed p: THEOREM2_PROOF_v4 §3.1.)

5.6 What would have refuted V1. An order-g_k⁰ term in (2.12) outside the Gaussian, for example a term (1/g_k²)·(quadratic in g_kB) not included in (2.11), or a cut that does not tend to 1. §2.2 lists every term of (2.12) and finds none. The only order-g⁰ U-dependent contribution found anywhere is the alternative cut of p. 266 (§2.5(a)), which is not the construction.

## 6. Scope in L

6.1 Odd L > 11 (Balaban). CMP 109 p. 251: "We take L_μ = L^m, where L is an odd, positive integer > 11" [text layer l. 123–124]. Theorem V1 (i)–(v) holds inside Balaban's construction for every such L, at every level k along any history on which his induction has run. The value β_{k+1}(0) is then the value at 0 of his smooth function β_{k+1} (inductive assumption A5, asserted by his Theorem 3).

6.2 Odd L ≥ 3. The proof of §2 is algebraic in (2.12)–(2.13) and uses no property of L. What it needs at a fixed finite torus: (a) the background U_{k+1}(W) exists and is regular (CMP 102 variational problem; R2 §2.3 for the constant field at any odd L, exact); (b) C*Δ^{(k)}C > 0 (finite dimension; uniform gap at the trivial background for the one-step constraint: THEOREM2_PROOF_v4 §7.1 O6, all odd L); (c) the formal expression (2.13) with the cut (2.9). Under (a)–(c), the g_k → 0 value of the formal one-step effective action is log Z^{(k)} (§2.2–§2.3), and its Maxwell coefficient is the computed per-step number (§3). What does not survive below L = 13: the existence of Balaban's localized E^{(k+1)}(X, g, ·), its smoothness in g, and hence a function β_{k+1}(g) on [0, γ] whose value at 0 this is. For L ≤ 11, V1 identifies the numerics with the g → 0 limit of a formal object, not with a constructed β-function.

6.3 Even L (2, 4). The order counting of §2 and the gauge-fixing exchange of §3.2 do not use parity. The constant-field stationarity used in R2 §2.3 needs centered (odd) blocks. The numbers at L = 2, 4 are outside the proofs, as before.

---

## 7. Ledger

Numbered claims (for the verifier).

C1. [V, PDF 12–13, 16] Balaban's β_{j+1} is defined by (1.20)–(1.22) from E^{(j+1)} "in (1.6)", and the (1.6) function equals the (1.3) function plus [log Z^{(j)}(U) − log Z^{(j)}(1)] (identity (1.7′)). (1.7′) itself is [P] by subtraction; the reading of the shared symbol is supported verbatim by p. 261 and by CMP 119 p. 254 [V, CMP 119 PDF 12].
C2. [V, PDF 20] E^{(k+1)} of (2.13) is the (1.3) function (log Z^{(k)} written separately in (2.12)); (2.15) gives 1/g_{k+1}² = 1/g_k² − β_{k+1}(g_k), settling R2's sign item V2 in favour of (0.18)/(0.23).
C3. [P] Every term of the exponent of (2.13), listed in (2.12), is O(g_k) at fixed B; the cut (2.9) equals Π_b χ(|g_kB(b)| < ε_1) and is ≡ 1 at g_k = 0. Hence E^{(k+1)}_{(1.3)}(0, U) = 0 for all U. Inputs: the orders of D̃, D̃_3, G_3, V as stated by Balaban on pp. 266–267 [V, PDF 18–19]; log σ(0) = 0 [I: reading of "σ_0"].
C4. [P, given (B-P) [V, PDF 21: coefficients O(ε_1)] and (B-E) [V, PDF 15]] At a fixed finite torus, E^{(k+1)}(g_k, U) → 0 as g_k → 0+, by dominated convergence; the localized terms' limits sum to 0.
C5. [P] Theorem V1 (ii)–(iv): at g = 0 the vacuum polarization of (1.20)/(5.1) is that of log Z^{(k)} alone, on every torus and in the limit; β_{k+1}(0) is its Maxwell coefficient. The torus → Z⁴ limit of the Gaussian part is [I] (standard, needs the one-step gap; this is (G2) for the Gaussian part). The equality "value at 0 = limit g → 0+" of β is [R] to A5 and to the g-uniform constant in (1.18) [I: uniformity read from a single constant E_0].
C6. [P] Theorem V1 (v): β_{k+1}(0) is independent of g_0, …, g_{k−1}. The history question L5 (B7) is therefore void at g = 0 and open for g > 0.
C7. [P] Claim 3.1: the order-g_k⁰ quadratic form on ker Q̃ is the intrinsic Hessian of (A∘U_k + G)|_S at V^{(k)}, equal to Hess ℒ + G^{(2)}. Matching of Balaban's h-normalization in the J-term is [I]; the intrinsic statement does not use it.
C8. [P] Fact K (Hess ℒ annihilates residual gauge directions at the constrained critical point) and Lemma 3.2 (linear Faddeev–Popov); ΓD = −I for Balaban's G^{(2)} in the axial gauge of V^{(k)}. Hence log Z^{(k)}_{Balaban} − log Z_{NUMERICS} is background-independent. This replaces R2 §2.5(c) (compact-group argument) by an exact identity.
C9. [P] Transversality and hypercubic symmetry give Π̃^{Z}_{μν}(p) = a(δ_{μν}|p|² − p_μp_ν) + O(|p|⁴), so −∂_1∂_2Π̃_{12}(0) = lim Π̃_{22}(pe_1)/|p|²: the mixed-derivative definition (1.22) and the transverse plane-wave measurement agree.
C10. [R] Normalization β = 4w/(L⁴(1 − cos p)) matches (1.22) as p → 0, given Maxwell coefficient 1 of the tree action at every level (CMP 109 (4.41) [text layer l. 2122]; THEOREM2_PROOF_v4 §3.5 Lemma M).
C11. [R] The plane-wave expansion point and the dropped J-term change w(p) only at O(p⁴) (scale Lp): U3_VERIFY §6, SOURCES_D1_VERIFY V4. Reused, not redone.
C12. [numerical, new] Averaging scheme: (0.4) and (0.12) give identical abelian-sector values (15/64) and identical β at L = 2 (10⁻¹⁴), but differ at L = 3: Δβ_1(0) = β_{(0.12)} − β_{(0.4)} ≈ +0.0067 (Ng = 6, p = 0.2; 0.0052–0.0070 for Ng = 2–6; p-independent at Ng = 2). NUMERICS uses (0.4). V1 is scheme-internal (C3–C11 hold for either averaging).
C13. [I] Balaban permits (0.4) ("both definitions are equally good for our purposes", p. 254 [text layer]); which averaging Ū denotes in (0.17)/(0.19) is not stated on the pages read.
C14. [P for the scope statement; I for the parse] With the alternative cut "g_k/γ_k ε_1" (p. 266 [V, PDF 18]) V1 fails by the U-dependent cut term log∫dμ_{C(U)}χ_k; the theorem is stated for the cut (2.9).
C15. [V for the quotes; I for completeness] In CMP 119 the β-subtraction acts on E^{(k+1)} only, and β_1 is "the same counterterm as in [I]"; R-terms do not enter the definition of β. CMP 119's citation "(1.41)–(1.43)" of [I] does not exist in CMP 109; read as (5.41)–(5.43) [I].
C16. [I] Consistency (§5): positivity, abelian values, pure-gauge zero, c_1 = 1, and β_1 + β_2 (composed 0.953 − 0.630 = 0.323) against the per-level recursion (0.317–0.341) all agree with V1. The identification of Balaban's H_{1,j} with the minimizer map (needed for "per-level recursion = Balaban's Δ^{(j)}") is from CMP 109 (1.5) and R2 Prop. 3.1, not from CMP 99 Sect. D, which I did not open.
C17. [P/I] Scope: odd L > 11 inside Balaban's construction; for odd L ≥ 3 (and the even-L numerics) V1 holds for the g → 0 value of the formal one-step expression (2.13), not for a constructed β-function.

What is proved. V1 at fixed level, inside Balaban's construction with the cut (2.9): β_{j+1}(0) is the Maxwell coefficient, per coarse cell, of the one-step Gaussian determinant (1.4)–(1.5), and this equals, up to a background-independent constant in log Z, the bordered-Hessian-plus-ghost determinant computed in NUMERICS, with the same p → 0 normalization. Equivalently β_{j+1}(0) = Φ(𝒟_j) of THEOREM2_PROOF_v4 §7.1, for the averaging used in Φ. The proof is order counting on Balaban's own formula (2.12): the integrand of (2.13) is identically 1 at g_k = 0.

What is reduced. The infinite-volume limit of the Gaussian part ((G2)-type, standard); "β(0) = lim_{g→0+} β(g)" to A5 and (1.18); the normalization to Lemma M / (4.41); the expansion point to U3_VERIFY §6.

What is open. (a) The averaging scheme: the project's numbers are β_j(0) of the (0.4) construction; with (0.12) the L = 3 value shifts by ≈ +0.007 (1%). The project must say which averaging the construction uses. (b) Nothing else of V1 at fixed level.

Effect on the trust ledger (for the supervisor; no ledger file edited). Row B5 (V1) can move from "open; supported at order p²" to "proved at fixed level [this file], scheme-internal; numerics are in the (0.4) scheme". THEOREM2_PROOF_v4 §10 item 5 and the hypothesis-table row V1 likewise, pending verification.
STATUS: COMPLETE
