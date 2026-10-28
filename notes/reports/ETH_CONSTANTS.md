# "The Exponential Time Hypothesis is False" (OpenAI, 25 Oct 2026) — explicit constants and algorithm

Source: /tmp/oai_oct26/eth.txt (pdftotext of eth.pdf, 67 pp.). Page numbers below are the paper's. Lemma and equation numbers are the paper's. Throughout, λ = ⌈log₂ n⌉ and ν = ⌈log₂ λ⌉ as in the paper; "exponent" means the base-2 exponent of the running time unless marked "nat" (natural log).

Headline of the constant tracking (details in §2):

| Route | Exponent (base 2), k = 3, n → ∞ | First n where it beats 1.307ⁿ | Parameter checks pass only for |
|---|---|---|---|
| Theorem 1.1 via Appendix D (tensor contraction) | ≈ 2.3·10⁶ · n·log₂log₂n / √log₂n  (paper: O_k(n log log n/√log n)) | n ≈ 2^(2^57) | n ≥ 2^(2^85) as written (u ≥ λ^{4/5} in (D.5)); n ≥ ~2^(2^33) with the weakest condition the proof really uses |
| Proposition 6.4 via Sections 3–6 (interpolation) | ≈ 1.4·10⁴ · n·(log₂log₂n)² / √log₂n  (paper: O_k(ρ(n))) | n ≈ 2^(2^50) | n ≥ ~2^(2^36) (6R ≤ Q in Lemma 4.8) |
| Floor from the leaf enumeration alone (constant 1) | n·log₂log₂n/√log₂n | n ≈ 2^558 | — |

The paper never states a constant; every constant is "O_k" or "for sufficiently large n". The numbers above are what the proof as written supports after I made every "O" explicit. The main driver is ε = 1/131072 in (D.4): the mode-count bound (D.15) carries a factor 1/√ε ≈ 362.

---

## 1. The algorithm

The paper gives two counting algorithms with the same front end and different cores. Theorem 1.1 (p. 2) is proved by the Appendix D core; Proposition 6.4 (p. 43) is the Sections 3–6 core with a weaker exponent ρ(n) = n(log log n)²/√log n. Both are deterministic and polynomial space.

### 1.1 Front end (shared): k-CNF → sparse F₂ polynomial system on the same n variables

1. **Counting-preserving sparsification** (Lemma 6.3, Appendix A, pp. 43–47). Branch on a shared literal set H that occurs in ≥ M^j clauses (rule (A.1)); the two children F_A = G ∧ H and F_B = G ∧ ⋀P_a ∧ ⋀{¬ℓ} have disjoint solution sets (Lemma A.1). The tree has ≤ (Cn+1)²·2^{σn} nodes; each leaf has ≤ B = 2Σ_{j<k} M^j ≤ 4M^{k−1} occurrences per variable with M = O_k(σ⁻¹ log(2/σ)). The Appendix D proof uses σ = 1/⌈√λ⌉, giving 2^{n/√λ}·poly leaves with B = λ^{O_k(1)}. Technique: [IPZ01] sparsification, [CIP06]/[Cal09] accounting, disjoint version of [DHM+14].
2. **Parity tests replace clauses** (Section 6, pp. 39–43). A leaf G with m_G ≤ Bn clauses is replaced by ≤ 6n equations P_i(x) = Σ_{e∈S_i} v_e(x) = 0 over F₂, where v_e is the clause-violation polynomial (degree ≤ k, ≤ 2^k monomials). (a) Lemma 6.1: an initial 3n-row matrix A⁽⁰⁾ from an edge-based Tanner/expander code (Sipser–Spielman construction on the bipartite double cover of a Cayley graph with ε-biased shifts, found by exhaustive search) rejects every nonzero violation vector of support < m/P, P = 20000B²μ². (b) Lemma 6.2: 3n further rows of list length P chosen greedily; each candidate's common-zero count N(A;h_γ) is computed with the core counter, and the minimizer is appended. Since N(A;h) = #F + D(A;h), the row that minimizes N minimizes the number of surviving nonsolutions, which drops by a factor ≤ 3/4 per round (averaging principle of conditional expectations, [Rag88]); after 3n rounds (27/32)ⁿ·2ⁿ < 1 survive. Cost: ≤ 3n(2m_G)^P + 1 = 2^{λ^{O_k(1)}} counter calls per leaf.
3. **Integer lift with controlled degree** (Section 5.1–5.2, pp. 35–37). Replace the indicator 1{P_i(x) = 0} by the complemented Beigel–Tarui modulus-amplifying polynomial p_ℓ(L_i(x)) with ℓ = n+1 (Lemma 5.1, from [BT94] as used by Chan–Williams [CW21]). Write p_ℓ = Σ_j e_j(Y)h(Y)^j with h(Y) = Y(Y−1) even on integers, deg e_j ≤ 1. Multiply all m_test factors in the ring A_ℓ = Q[V]/(V^ℓ) (or (Z/2^p)[V]/(V^ℓ) in Appendix D), tagging each h with V. Terms with ≥ ℓ copies of h across all tests are divisible by 2^ℓ and are dropped (Lemma 5.2). Consequence: the product has input degree ≤ d = k(m_test + 2(ℓ−1)) = 8kn, linear in n; this is the degree bound the cores need. Then Σ_x Π_i p_ℓ(L_i(x)) ≡ #G (mod 2^ℓ), and 0 ≤ #G ≤ 2ⁿ < 2^ℓ fixes the integer.

### 1.2 Core A — Sections 3–4: shared linear summaries + Taylor/Hermite recovery (Theorem 2.2, Prop. 3.4)

Target: Z = Σ_{x∈{0,1}ⁿ} Π_f Φ_f((x_v)_{v∈I_f}), product degree ≤ d = O(n).

- **Replacement forms.** Each incidence (f, v) gets a row P⃗_{f,v}(T) ∈ Q[T]^{1×n} with P⃗_{f,v}(0) = δ_v and deg ≤ R. H(T) = Σ_x Π_f Φ_f(⟨P⃗_{f,v}(T), x⟩) has H(0) = Z and deg_T H ≤ dR (3.3).
- **(r, τ, D)-design at each t ∈ [Q]** (Def. 2.1/3.1): a partition of [n] into r groups of size ≤ 2n/r; each factor assigned to one group; integer measurement matrices C_{t,g} with Σ_g c_{t,g} ≤ 2τn rows and absolute row sums ≤ D; every form of a factor assigned to group g depends on other groups only through their measurements. Lemma 3.2: once the measurement tuple y⃗ ∈ Π_g[−D, D]^{c_g} is fixed, the sum factorizes group by group, so H(t) costs (2D+1)^{2τn}·r·2^{2n/r} factor evaluations with O(1) accumulators (polynomial space).
- **Taylor coefficients at t.** Q values do not determine a degree-dR polynomial; the algorithm needs J = ⌊dR/Q⌋ + 1 Taylor coefficients at each t. Lemma 3.3 (inclusion–exclusion over pairs U ⊆ E, |E| ≤ q): Σ_x p_x(x) = Σ_{|E|≤q} Σ_{U⊆E} (−1)^{|E|−|U|} Σ_{x: x_E=1} p_x(1_U). The correction ⟨ΔP⃗(z), X⃗⟩ gets its own formal input X⃗; fixing X⃗ = 1_U keeps the design valid, and the restriction x_i = 1 (i ∈ E) is local to groups. Cost C_q = Σ_{s≤q} 2^s·C(n,s) ≤ (Q/R)^q (1+2R/Q)ⁿ (3.15). Hermite interpolation over Q recovers H(0) (Section 3.4, Appendix B.3 by fraction-free Gaussian elimination [Bar68]).
- **Three exponential costs** (3.16): exp{O(n[(R/Q)log(2Q/R) + τ log(2D+1) + 1/r])}.
- **Construction of low-degree forms with R ≪ Q** (Section 4, pp. 26–35; this is the paper's main new device). Auxiliary coordinate set B = ([r]^Q)², D = r^{2Q}; swap matrices Π_s (s ∈ [Q]) exchange the two sequences at position s; V₀ = ΠΠ_s, W₀ = ½Σ(I − Π_s); M₀ = V₀ f_I(W₀) where f_I interpolates (−1)^j on an interval I of R consecutive integers around Qp, p = (r−1)/(2r) (4.7). In the common eigenbasis (products of ±1 eigenvectors of the per-position swaps, a Hadamard-type basis with entries in {0,±1}), M₀ fixes every basis vector whose "−1 count" j lies in I; the exceptional vectors' transposes form the measurement matrix C^B, and Hoeffding gives c_B ≤ 2e^{−R²/(8Q)}·D rows (Lemma 4.1). Because deg f_I ≤ R−1 and Π_s² = I, M₀[u,y] ≠ 0 forces the labels to disagree at ≤ R−1 positions (Lemma 4.2); multiplying each such term by φ_{u,y}(T) = Π_{s∈E_{u,y}}(1 − T/s) (4.9) kills it exactly at the points where y is outside u's assigned group and leaves T = 0 untouched. Rows P⃗_u(T) = δ_u(I − M₀) + Σ M₀[u,y]φ_{u,y}(T)δ_y (4.10). Lemma 4.5 derandomizes random group schedules (a_v, d_f ∈ [r]^Q) by conditional expectations so that each label has multiplicity ≤ 2M/D and each group has ≤ 2n/r variables; Section 4.5 places incidences into h ≤ 2M/D copies of B. Lemma 4.8 fixes r = ⌊√λ/ν²⌋, Q = ⌊λ/(128ν)⌋, R = (β+3)⌈√λ⌉, τ = 1/(rλ), D = r^{2Q} ≤ (2n)^{1/128}, and shows the sum of the three costs is O_β(ν²/√λ).
- **High-incidence branching** (proof of Theorem 2.2, p. 38): fix the ≤ n/√λ variables that occur in more than b₀ = ⌈M/n⌉⌈√λ⌉ scopes (2^{n/√λ} branches), so that b, w ≤ λ^β on every branch.

### 1.3 Core B — Appendix D: recursive Boolean tensor contraction (Theorem D.1)

Encode the lifted product as a bipartite tensor network with M wires. Fixed density (D.2): one vertex per clause, equality trees per variable, each edge subdivided; s = n + m, M = O_k(s). Arbitrary density (Lemma D.2): split tests and variables into J = ⌈n^{1/4}⌉ groups each; enumerate arrays (d_gh) of how many incidences a monomial selects between test group g and variable group h (≤ (K+1)^{J²} = 2^{O(√n log n)} arrays), and index the C(N_gh, d_gh) subsets by ⌈log₂ C(N_gh, d_gh)⌉ wires; (D.3) gives M ≤ J² + K log₂(e(N+K)/K) = O_{k,c}(nν) wires with K = 8kn (D.1). Test-group entries are coefficients of multilinear monomials in Π B̄_i, extracted by subset-sum inversion over ≤ 2^{kλ^c} subsets; variable-group entries are 2^{#{v: b_v = 0}}.

Theorem D.1 contracts a network with ≤ Cs wires, degree ≤ ⌈s^{9/10}⌉, entries in (Z/2^{P₀})[V]/(V^ℓ), in 2^{O(s/√log s)} time and poly space:

- **Coefficient ring**: O = Z_(2)[U]/(f), f monic of degree e = 4λ irreducible mod 2, so O/2 = F_{2^e} supplies ≥ 2^e interpolation points with unit differences (D.4.1).
- **Packets** (Lemma D.3): label vertices by [r]^a, r = 64, a = a_d = 2Σ_{j≤d} u_j, u_d = ⌈ελ/2^d⌉, ε = 1/131072; pack edges into ≤ 3M/L packets of L = 2^a slots by conditional expectations.
- **Cauchy deformation** (D.7): W_{xy}(T) = C(T)/(C′(0)(T − (y − x))) with C(T) = Π_{t∈S}(T − t), S = {−L, …, L−1}; W(0) = I. F(T) = Σ_{X,Y} A(Y)B(X)Π_x l_{Y_x}((W(T)X)_x) (D.8) has F(0) = the contraction and degree ≤ M(2L−1). At the node t with i = v₂(t), only ports whose labels agree in coordinate i interact (W(t) is "local"), so grouping by coordinate i splits the network into r = 64 groups.
- **Modes** (D.4.5): near t, i.e. at T = t + αζ with α = 2^{a+1}, the cross-group terms expand geometrically (D.12) into mode variables Z of weight w_Z = b+1 whose coefficients are divisible by 2^{w_Z}. Modulo 2^{p_t} only exponent tuples with Σ w_Z β_Z < p_t survive (D.14); their number is exp(O(√(M p_t/D))) = exp(O_C(M/√u)) (D.15). Each tuple β and group g gives a child network with ≤ 6M/r = 3M/32 < M/8 wires (D.16).
- **Tapered Hermite recovery** (Lemma D.5): multiplicities q_t = h·max(0, u − v₂(t)), h = ⌈3M/u⌉; the two-adic loss v₂(E_t(0)) ≥ −6D_t h (D.10) is compensated by raising the child precision to p_t = p + 8hD_t + 8M(a+1). Tapering (multiplicities change by h = Θ(M/u) per valuation level instead of Θ(M)) is what makes p_t = O(M D_t/u) rather than Θ(M D_t), hence the 1/√u in the exponent.
- **Recursion**: F(t + αz) mod 2^{p_t} obtained by Lagrange interpolation at M(2L−1)+1 points; leaves (M ≤ H = ⌊s/⌊√λ⌋⌋) by direct summation over 2^H assignments; depth ≤ (log₂λ)/6 + O_C(1). Exponents sum geometrically: Σ_d 8^{−d}·2^{d/2}·Cs/√(ελ) = O(s/√λ).

### 1.4 Why deterministic, why polynomial space

Deterministic: every random choice is replaced by the method of conditional expectations with exactly computable conditional expectations (Lemma 4.5 schedules, Lemma D.3 packings, Lemma 6.2 greedy rows evaluated by exact counts) or by exhaustive search over a polylog-size space (Lemma 6.1 ε-biased shifts and local code, irreducible f in D.4.1). Polynomial space: all exponential enumerations (measurement tuples, group assignments, (E, U) pairs, β tuples, interpolation nodes, sparsification leaves, high-incidence branches) are nested loops with O(1) accumulators; exact arithmetic uses a fixed common denominator Ω = Γ^{m_test} (Appendix B.2, numerators grow only with log of the number of summands) or arithmetic modulo 2^{p} with p ≤ sλ^{O(1)}2^{a_{d−1}} = poly(s) (D.11); the Appendix D recursion has O(log λ) stack levels with poly(s + L) state each (D.4.7); tensor descriptions are immutable and shared by reference, so entry routines do not compose with depth.

### 1.5 Closest prior human techniques (as cited by the paper, plus my reading)

- Fixing shared summaries then multiplying independent group sums: Williams' split-and-list [Wil05] and Koivisto's sum–product [Koi06]; polynomial-valued weights as in Scott–Sorkin [SS09] (pp. 5–6).
- Recovering a count from structured evaluations/Taylor data: Björklund's inclusion–exclusion + interpolation [Bjö16]; Björklund–Kaski–Williams generalized Kakeya sets [BKW19]; Hasse-derivative/Hermite recovery of Bhargava–Ghosh–Kumar–Mohapatra [BGKM23]; multiplicity codes [KSY14], Woodruff–Yekhanin [WY07] (p. 6).
- Interpolating (−1)^j on a short interval to get low-rank/low-degree structure: Alman–Williams probabilistic rank and rigidity [AW15, AW17], Alman–Guan–Padaki [AGP23], Dvir–Liu [DL20] (p. 6). The paper's M₀ = V₀ f_I(W₀) is this trick applied to commuting permutation matrices.
- Modulus amplification / polynomial method (Razborov–Smolensky lineage): Beigel–Tarui [BT94] and its deterministic counting use by Chan–Williams [CW21] (Lemma 5.1). The 2-adic "mode weight" bookkeeping in Appendix D is the same idea pushed into the interpolation itself.
- Sparsification [IPZ01, CIP06, Cal09, DHM+14]; expander/Tanner codes [Tan81, SS96], small-bias sets [NN93, AR94]; conditional expectations [Rag88].
- Algorithms-to-lower-bounds [Wil13] with the local reduction of [JMV13] (Appendix C.1).
- Not cited but clearly adjacent: Lokshtanov–Paturi–Tamaki–Williams–Yu, "Beating brute force for systems of polynomial equations over finite fields" (SODA 2017), which addresses exactly the problem of Theorem 2.2 / Lemma D.2 (counting zeros of degree-k systems over F₂) with a 2^{n(1−1/O(k))} bound. The paper does not cite it. Also adjacent: Björklund–Husfeldt–Kaski–Koivisto Fourier/zeta-transform counting (not cited), and the general "tensor network contraction" viewpoint on #CSP (not cited). The Appendix D combination of Cauchy deformation, 2-adic valuation to select the group coordinate, and tapered Hermite multiplicities has no human precedent that I know of; flag as the paper's own.
- PPSZ/Schöning (branching, local search) are discussed only as prior bounds (p. 3); nothing from them is used.

---

## 2. The main theorem's bound with explicit constants

### 2.1 Statement (Theorem 1.1, p. 2)

Time (n+m)^{O_k(1)} · 2^{O_k(n log log n / √log n)} and space (n+m)^{O_k(1)}; for m ≤ Dn, time (n+m)^{O_{k,D}(1)} · 2^{O_{k,D}(n/√log n)}. The proof is in Appendix D (pp. 53–64). I write the exponent as C_k · n·ν/√λ with ν = log₂log₂ n, λ = log₂ n (both base 2, matching the paper's λ, ν).

### 2.2 Chain of lemmas and the constant, k = 3

Step 1 (number of wires, Lemma D.2, (D.1)–(D.3)). a ≤ 6n equations (Lemma 6.2), ℓ = n+1, so K = k(a + 2(ℓ−1)) = 8kn = 24n. Scope of one equation ≤ k·max(D₀, P) with D₀ = 320000 B²μ³, μ = ⌊log₂ m_G⌋+1 (Lemma 6.1), so N ≤ 6n·k·D₀ and log₂(e(N+K)/K) = log₂(e(0.75 D₀ + 1)). Hence M_wires ≈ 24n·log₂(2.04 D₀) and the Theorem D.1 size parameter is s = nν, i.e. C = C_wires = 24·log₂(2.04 D₀)/ν. With the Appendix A.3 parameter search at σ = 1/⌈√λ⌉ (k = 3: Γ = 16, C_A = 4+12M, M = smallest power of 2 with 16⌈log₂(4C_A M)⌉ ≤ M/⌈√λ⌉, B = 2(1+M+M²)):

| λ = log₂ n | ν | M (sparsif.) | B (occurrences/var) | log₂ D₀ | C_wires |
|---|---|---|---|---|---|
| 2⁶ | 6 | 4096 | 3.4·10⁷ | 87.8 | 355 |
| 2⁸ | 8 | 8192 | 1.3·10⁸ | 96.7 | 293 |
| 2¹⁶ | 16 | 2.6·10⁵ | 1.4·10¹¹ | 140 | 212 |
| 2⁴⁰ | 40 | 2.1·10⁹ | 9.2·10¹⁸ | 264 | 159 |
| 2⁶⁰ | 60 | 2.2·10¹² | 9.7·10²⁴ | 364 | 146 |
| ∞ | — | — | B = Θ(λν²) | (k+2)ν + o(ν) | → 8k(k+2) = 120 |

General k: B ≈ 4M^{k−1} ≈ λ^{(k−1)/2}ν^{k−1}, D₀ ≈ λ^{k+2}ν^{2k−2}, so C_wires → 8k(k+2).

Step 2 (children per call, (D.13)–(D.15)). At most 6M/D_t mode variables of each weight j ≥ 1; the number of tuples with Σw_Zβ_Z < p_t is ≤ exp(θp_t + (6M/D_t)·Σ_j −ln(1−e^{−θj})) ≤ exp(θp_t + π²M/(D_tθ)). Paper's θ = √(M/(D_t p_t)) gives (1+π²)√(Mp_t/D_t); the optimal θ gives 2π√(Mp_t/D_t). Precision: p_t = p + 8hD_t + 8M(a+1) with h = ⌈3M/u⌉ (Lemma D.5), and the proof shows p and 8M(a+1) are o(M D_t/u) (text after (D.11)), so p_t ≈ 24 M D_t/u and √(Mp_t/D_t) ≈ √24·M/√u. Children per call ≈ poly(s)·exp(2π√24·M/√u) = poly(s)·exp(30.78·M/√u).

Step 3 (recursion, (D.4), (D.5), D.4.7). u_d = ⌈ελ/2^d⌉ with ε = 1/(128·1024) = 1/131072; M_d ≤ Cs·8^{−d} (paper) or ≤ Cs·(3/32)^d (Lemma D.3's actual child bound). Total calls = Π_d(children at depth d) = exp(30.78·Cs/√(ελ)·Σ_d 8^{−d}2^{d/2}) = exp(30.78·362.04·1.2148·Cs/√λ) = exp(13,537·Cs/√λ) (nat). Each leaf costs 2^H, H = ⌊s/⌊√λ⌋⌋ (one more unit of s/√λ, base 2). The per-level poly(s) factors give s^{O(log λ)} = 2^{O(λν)}, which is o(s/√λ).

Step 4 (outer factors). Sparsification leaves 2^{n/√λ}·poly, high-incidence branches 2^{n/√λ} (Lemma D.2), incidence arrays 2^{O(√n log n)}, greedy candidates 3n(2m_G)^P + 1 = 2^{λ^{O_k(1)}} per leaf: all additive and lower order in the exponent.

Result, base-2 exponent, Theorem 1.1 route:

    C_k ≈ (2π√24 / √ε) · (1/(1 − 2^{−5/2})) / ln 2 · C_wires(k) ≈ 19,530 · C_wires(k) ≈ 156,000 · k(k+2)   (n → ∞)
    C_3 ≈ 19,530 · 120 ≈ 2.3·10⁶ asymptotically; ≈ 2.9·10⁶ to 6.9·10⁶ for ν ≤ 60 (C_wires 146–355).

Variants: paper's own θ instead of the optimal one multiplies by 1.73 (33,786·C_wires); using 3M/32 instead of M/8 multiplies by 0.949 (18,535·C_wires). The constant 1/√ε ≈ 362 from ε = 1/131072 is the single largest factor; ε is chosen only to make L, D_arr ≤ s^{1/1000} and a ≤ 4ελ hold (D.5), so a careful re-optimization could shrink it, but not the overall shape.

Fixed density (Theorem 1.1 second bound, D.2): s = n+m, C_wires ≈ (edges)/(n+m) ≈ 2(km + n)/(n+m) ≤ 2k, so exponent ≈ 19,530·2k·(n+m)/√log₂(n+m), i.e. ≈ 1.2·10⁵·(n+m)/√log₂(n+m) for k = 3.

"Sufficiently large n" conditions in Theorem D.1 (all must pass or the algorithm falls back to exhaustive search, D.4.2 and proof of Theorem 2.2, p. 39):
- (D.5) u ≥ λ^{4/5}: ελ/2^d ≥ λ^{4/5} needs λ ≥ 2^{85} at d = 0 and λ ≥ 2^{510} at the deepest level d ≈ (log₂λ)/6, i.e. n ≥ 2^(2^85) as written. The proof only uses 2^u ≫ λ^{O(1)} (text after (D.11)); the weakest sufficient condition is u ≳ c·log λ at the deepest level, which needs λ ≳ (131072·cν)^{6/5} ≈ 2^{33}, i.e. n ≳ 2^(2^33).
- (D.6) M ≥ 2D_arr²Δ at the leaf threshold: λ ≥ ~43.
- Lemma D.2 degree bound n^{3/4}λ^{O(1)} ≤ s^{9/10}: λ ≥ ~600.
So the Theorem 1.1 algorithm as written runs its intended branch only for n ≥ 2^(2^85) (or 2^(2^33) with the loosened condition); below that it is exhaustive search.

### 2.3 The Sections 3–6 route (Proposition 6.4), for comparison

Lemma 4.8 with β = 6 (asymptotic; b, w ≤ λ^β needs β ≈ 15 at λ = 64): R/Q = 128(β+3)ν/√λ = 1152ν/√λ, d = 24n, q = 24nR/Q. Taylor cost (nat) ≤ q·ln(Q/R) + 2nR/Q ≈ 27,648·nν/√λ·(0.347ν − 7.1 − ln ν); measurement cost τ·ln(2D+1) ≈ ln r/(64rν) and group cost 1/r = ν²/√λ are negligible. Base-2 exponent ≈ 13,800·n·ν²/√λ. Validity: 6R ≤ Q needs √λ ≥ 6912ν, i.e. λ ≥ 2^{36}, n ≥ 2^(2^36). Because 19,530·120 ≈ 2.3·10⁶ > 13,800·ν for all ν < 170, the "weaker" Proposition 6.4 bound is numerically the better of the two for every n below 2^(2^170).

### 2.4 Polynomial factor

The paper gives only (n+m)^{O_k(1)} and never names a degree. Strictly, the factors outside 2^{C_k nν/√λ} are not polynomial: the recursion contributes s^{O(log λ)} = n^{O(log log n)} (D.4.7, "exp(O_C(λ log λ))"), and the greedy row selection contributes 2^{λ^{O_k(1)}} = n^{λ^{O(1)}} per leaf (Section 6.3); both are absorbed into the exponential term because they are o(n/√λ). What remains per call is poly(s + L) arithmetic: Lagrange interpolation at < s⁴ points, fraction-free elimination O(M_H³) on O(poly)-bit integers (Appendix B.3), packing by conditional expectations with O(M²) edge pairs per vertex label. A fair reading is "degree unspecified, at least ~4 in s per recursion level; effectively quasi-polynomial n^{Θ(log log n)}". At n = 2⁶⁴ the greedy stage alone makes 2^{1.6·10²⁵} counter calls per sparsification leaf (P = 20000B²μ² ≈ 1.8·10²³ with B = 3.4·10⁷, μ = 89).

---

## 3. Crossover sizes (k = 3)

Condition: C_3·ν/√λ + (lower-order terms)/√λ < log₂(base), with n = 2^λ, ν = log₂λ. Lower-order terms included: +ν (leaf 2^H), +1 (branches 2^{n/√λ}), +ν² (sparsification leaves). Solved by bisection in λ.

```python
import math
eps = 1/(128*1024)
F = 2*math.pi*math.sqrt(24)/math.sqrt(eps)/(1-2**-2.5)/math.log(2)   # = 19,530
def sparsification_B(lam, k=3):
    sigma_inv = math.ceil(math.sqrt(lam)); Gamma = 2*(3**(k-1)-1); M = 1
    while M < Gamma: M *= 2
    while True:
        C_A = 4*sum((3*M)**j for j in range(k-1)); h = math.ceil(math.log2(4*C_A*M))
        if Gamma*h*sigma_inv <= M: break
        M *= 2
    return 2*sum(M**j for j in range(k))
def C_wires(lam, k=3):
    nu = math.ceil(math.log2(lam)); B = sparsification_B(lam, k)
    mu = math.floor(lam + math.log2(B)) + 1
    D0 = 320000*B*B*mu**3; P = 20000*B*B*mu**2
    return 8*k*math.log2(math.e*(0.75*max(D0, P)+1))/nu
def exp_per_n(lam, full=True):
    nu = math.log2(lam)
    return ((F*C_wires(lam)*nu + nu + 1 + nu**2) if full else nu)/math.sqrt(lam)
def crossover(base, full=True):
    lo, hi = 4.0, 1e40
    for _ in range(400):
        mid = math.sqrt(lo*hi)
        if exp_per_n(mid, full) < math.log2(base): hi = mid
        else: lo = mid
    return hi
for base in (1.307, 1.6423, 2.0):
    print(base, "log2 n =", crossover(base), "; floor:", crossover(base, False))
```

Output:

| Competitor | log₂(base) | Theorem 1.1 route: first n | Prop. 6.4 route: first n | Floor (leaf term only, constant 1) |
|---|---|---|---|---|
| (a) 1.307ⁿ (PPSZ-type, [JC26]) | 0.3863 | log₂n = 1.80·10¹⁷, n ≈ 2^(2^57.3) | n ≈ 2^(2^50.0) | n ≈ 2^558 |
| (b) 1.6423ⁿ (#3-SAT; note the paper cites Kutzkov as O*(1.637ⁿ) [Kut26], p. 4) | 0.7157 | log₂n = 4.97·10¹⁶, n ≈ 2^(2^55.5) | n ≈ 2^(2^47.7) | n ≈ 2^76 |
| (c) 2ⁿ | 1 | log₂n = 2.44·10¹⁶, n ≈ 2^(2^54.4) | n ≈ 2^(2^46.5) | n ≈ 2^16 |

Hand check for (c): need 19,530·C_wires·ν/√λ ≈ 19,530·146·ν/√λ < 1 → √λ > 2.85·10⁶·ν; with λ = 2^ν, 2^{ν/2} > 2.85·10⁶·ν holds first near ν ≈ 54.4 → λ ≈ 2.4·10¹⁶. The polynomial/quasi-polynomial factors do not move these numbers visibly. For the Theorem 1.1 route the crossover (2^(2^54–57)) lies inside the region where the parameter checks (D.5) fail as written (n < 2^(2^85)), so with the paper's literal parameters the algorithm is exhaustive search at every n where the asymptotic bound would start to win; with the loosened condition (n ≥ 2^(2^33)) the crossover is reachable in principle. Either way, no input that fits in the observable universe is counted faster than by 2ⁿ enumeration.

---

## 4. Circuit lower bound consequence

Exact statements (p. 2 and p. 51):

- Corollary C.1: E^NP ⊄ SIZE(O(n)), where SIZE counts bounded-fan-in AND/OR/NOT gates. Proof: Williams [Wil13, Theorem 6.1] ("if ETH is false then E^NP does not have linear-size circuits") applied to the deterministic 2^{o(n)} 3-SAT algorithm.
- Corollary 1.4: with C_L(n) the minimum number of non-input gates in a fan-in-≤2 circuit over all Boolean gate types, there exist L ∈ E^NP and c > 0 with C_L(n) > c·n·√(log n) for infinitely many n (1.2). Proof: Žák's nondeterministic time hierarchy (unary H ∈ NTIME(2ⁿ) ∖ NTIME(2^{n/2})), the Jahanjou–Miles–Viola local reduction [JMV13] with locality parameter 2 giving an O(n)-gate clause decoder, a witness language W ∈ E^NP (lexicographically first satisfying assignment, dn-bit indices), and the fixed-density bound 2^{AV/√log₂V} on 3-CNFs with V variables and ≤ 5V clauses; threshold s_n = ⌊ηn⌊√log₂n⌋⌋ with η < 1/(12A), any 0 < c < √(η/(d ln 2)). With A ≈ 1.2·10⁵ (Section 2.2, fixed density), η < 7·10⁻⁷ and c is of order 10⁻³/√d; the statement is infinitely-often only, and the paper explicitly disclaims superpolynomial bounds for NP (p. 51: "it does not assert a superpolynomial circuit lower bound for NP").

Is it new? Relative to what I know (no web check possible here):
- Williams 2011 (NEXP ⊄ ACC⁰), Murray–Williams 2018 (NQP ⊄ ACC⁰∘THR), Chen–Lyu–Williams 2020 (almost-everywhere ACC⁰ lower bounds for E^NP, and E^NP requires 3n − o(n)-size... no, the known a.e. results are for restricted classes such as ACC⁰ and ACC⁰∘THR) are all for restricted circuit classes. For unrestricted fan-in-2 circuits, the best known explicit lower bounds are ≈ 3.1n − o(n) (Li–Yang 2022, after Find–Golovnev–Hirsch–Kulikov 2016), for functions in P (affine dispersers). No superlinear lower bound for general circuits was known for any language in E^NP; the known unconditional superpolynomial/fixed-polynomial bounds are for larger classes (Kannan: Σ₂EXP; Cai: S₂^P ⊄ SIZE(n^k); Buhrman–Fortnow–Thierauf: MA_EXP ⊄ P/poly; Santhanam: promise-MA). Williams' Theorem 6.1 was stated as a conditional for exactly this reason.
- So, assuming the paper, Corollary 1.4 is new: the first superlinear (indeed Ω(n√log n), i.o.) lower bound for unrestricted fan-in-2 circuits for a language in E^NP. It is NOT an improvement on NEXP ⊄ ACC⁰ in the ACC⁰ direction (different class, different circuit model), and it does not touch NP ⊄ P/poly. The paper itself claims only "a circuit lower bound for E^NP" and attributes the implication to [Wil13]; it does not claim novelty explicitly. Uncertainty: I am confident E^NP superlinear for general circuits was open as of my knowledge; I cannot rule out a 2025–2026 result I have not seen.

---

## 5. Problems that inherit 2^{n/(log n)^{1/2−o(1)}} via linear-variable reductions to k-SAT

Theorem 1.1 is per fixed width k; the blowup that matters is the number of Boolean variables (clauses only enter polynomially; width must stay bounded). Count-preserving (CP) means a bijection of solution sets, so #-versions inherit too (Corollary 1.3 and C.2 are the paper's own examples; Set Splitting is the paper's example on p. 5).

| # | Problem (input size parameter) | Encoding | Variables | Width k | CP? |
|---|---|---|---|---|---|
| 1 | #Independent Sets / Max Independent Set, v vertices (Cor. 1.3) | one var per vertex, clause ¬x_u ∨ ¬x_w per edge | v | 2 | yes |
| 2 | #Vertex Covers (complement of 1), v vertices | x_u ∨ x_w per edge | v | 2 | yes |
| 3 | #q-Colorings / q-colorability, v vertices (Cor. 1.3) | one var per (vertex, color); exactly-one per vertex; ≠ per edge | q·v | q | yes |
| 4 | #Homomorphisms to a fixed H with q vertices | same as 3 with the allowed-pairs table of H | q·v | q | yes |
| 5 | #Perfect matchings, v vertices, e edges (Cor. 1.3; refutes Curticapean's #ETH-based bound, p. 4) | one var per edge; "exactly one selected edge per vertex" by a linear-size circuit → Tseitin 3-CNF | O(v+e) | 3 | yes (gate values forced) |
| 6 | Set Splitting / NAE-k-SAT / hypergraph 2-coloring, universe N, sets of size ≤ k ([CDL+16, Obs. 3.6], p. 5) | one var per element; two clauses per set | N | k | yes |
| 7 | Hitting Set with sets of size ≤ k, universe N; cardinality ≤ b | one var per element, one clause per set; counter circuit of O(N) gates for "≤ b" → 3-CNF | N (pure) or O(N) (with cardinality) | k or 3 | yes |
| 8 | Dominating Set on max-degree-Δ graphs, v vertices (with size bound via counter) | one var per vertex, clause over N[u] per vertex | v (+O(v) for the counter) | Δ+1 | yes |
| 9 | Boolean k-CSP (arity ≤ k, any constraint types), n variables; Max-k-SAT within εm (Cor. 1.2) | each constraint → ≤ 2^k clauses of width k | n (exact CSP); O_{k,ε}(n) for Max-k-SAT via sampled threshold circuit | k / 3 | yes / no (randomized sampling) |
| 10 | Inversion and #preimages of constant-locality maps G: {0,1}ⁿ → {0,1}^m, locality d (Cor. C.2; Goldreich-type local one-way functions) | forbid each bad local assignment by one clause | n | d | yes |
| 11 | Linear-size Circuit-SAT: n inputs, s = O(n) gates (App. C.1); hence any NP problem whose verifier is a linear-size circuit over a linear-length witness, e.g. Max-Cut ≥ b on graphs with e = O(v) edges, Subset Sum with n items of w-bit weights (O(nw) variables) | Tseitin: one var per gate, ≤ 4 width-3 clauses per gate | n + s | 3 | yes |
| 12 | Exact Cover by k-sets with each element in ≤ f sets (N elements, S = O(N) sets) | one var per set; "exactly one" per element: one f-clause + C(f,2) binary clauses | S | f | yes |

Not inherited (paper, p. 5 and p. 2): anything needing width growing with n (general CNF-SAT, so the lower bounds of [Bri14, RV13, LMS18] stand), Orthogonal Vectors / edit distance / LCS (OVC not refuted; the reduction direction is wrong), Clique and other problems whose natural encodings need ω(n) variables (e.g., permutations cost n log n bits: TSP, Hamiltonicity on dense graphs via permutation encodings), and general NP problems under polynomial-time reductions ("2^{o(n)} do not transfer", p. 2).

---

## 6. Open follow-ups the paper names (near-verbatim, with page numbers)

The paper has no "open problems" section. The forward-looking or limiting statements are:

1. p. 7: "Theorem 1.1 invites a renewed search for algorithms for problems whose known hardness results relied on ETH or SETH. The examples in Section 1.1.3 suggest both immediate consequences and problems for which new algorithmic ideas are needed."
2. p. 5: "Our refutation of ETH and SETH removes one basis for the hardness claims above. Some of the same lower bounds follow from weaker hypotheses that may still hold. For example, the lower bounds for longest common subsequence and regular-expression matching follow from the Orthogonal Vectors Conjecture (OVC)… The lower bounds for Fréchet distance, graph diameter approximation, and the treewidth dependence of Independent Set and Dominating Set also follow from the hypothesis that unrestricted CNF-SAT admits no 2^{(1−δ)n} poly(n, m)-time algorithm for any constant δ > 0. Theorem 1.1 gives a running-time guarantee for each fixed clause width k, while this hypothesis allows the width to grow with n." (Implicit open problem: unbounded-width CNF-SAT and OVC.)
3. p. 5: "To obtain a faster algorithm for a target problem from our SAT algorithm, we need a reduction in the other direction, from that problem to fixed-width SAT, that controls the number of variables."
4. p. 2: "Note that runtime bounds of the form 2^{o(n)} do not transfer under general polynomial-time reductions (2^{n^{o(1)}} would be needed for this), so our result does not imply that general NP problems admit subexponential time algorithms."
5. p. 4: "It does not conflict with unconditional exponential lower bounds for restricted proof systems such as regular resolution [BI13]."
6. p. 51: "The corollary gives a language in E^NP without a linear-size circuit family; it does not assert a superpolynomial circuit lower bound for NP."
7. p. 53: "For polynomially many output bits, it gives a 2^{o(n)}-time inversion algorithm for every output in the image, ruling out 2^{Ω(n)} inversion hardness for these families. This does not rule out one-wayness against polynomial-time algorithms."
8. p. 2 (Theorem 1.1 remark): "The rational interpolation argument in Section 6.4 gives the weaker exponent O_k(ρ(n)) … Appendix D proves both bounds in Theorem 1.1 by tensor contraction." (The paper does not ask whether the exponent n/(log n)^{1/2} can be improved; it also does not discuss practicality or constants anywhere.)
