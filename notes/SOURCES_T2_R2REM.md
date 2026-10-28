SUPERSEDED, see PLAN.md
STATUS: COMPLETE

## 2. Objects and named inputs

2.1 Objects.
- Λ_0: the set of bonds carrying the variable B on Z_0 (finite; the volume is finite). Fields are functions on Λ_0 with values in g (real) or g^c. Kernels K(b,b′) are n×n blocks, n = dim g; |K(b,b′)| is the block operator norm. Distance |b − b′| := |b_− − b′_−| as in (2.16).
- A := C*Δ_kC at the real pair (U, 0) and s ≡ 1. P := Z_0AZ_0 restricted to fields on Λ_0.
- For a walk ω of the Sect. 2 expansion of C^{(k)}(Z_0): σ_0(ω) := cubes of σ_0 that intersect the localization domain of ω; m(ω) := |σ_0(ω)|; σ^ω := Π_{Δ∈σ_0(ω)} σ(Δ) (= 1 if m(ω) = 0).
- C(σ; **U**, **J**) := Σ_ω σ^ω R_ω(**U**, **J**) (p. 3 s-rule "as before", p. 13). C_1 := C(1; U, 0). C_0 := C(0; U, 0). C(σ) := C(σ; **U**, **J**).
- S(t) := sup_b Σ_{b′∈Λ_0} e^{−t|b−b′|}, t > 0. Finite and volume-independent; S(t) ≤ d·coth(t/(4√d))^d in d dimensions with Euclidean |·| (SOURCES_LOC_VERIFY §5).

2.2 Inputs. Each is named; none is proved here.
(Id) C_1 = P^{−1}. [V] p. 3, verbatim: "This way the s-dependent propagators H(s), G̃(s), H_0(s) are defined. They coincide with the original ones for s = 1." p. 12 (2.5) is conditioning on Z_0^c with Z_0-precision Z_0AZ_0 (SOURCES_LOC §1.1, CONFIRMED in SOURCES_LOC_VERIFY §2). So C^{(k)}(Z_0) = P^{−1} at s ≡ 1. [R: that the Sect. 2 walk sum of C^{(k)}(Z_0) converges to C^{(k)}(Z_0) at s ≡ 1 is the statement of [13], not read.]
(W) Walk bound. For every (**U**, **J**) in the α′-domain of (H-an), C^{(k)}(Z_0) = Σ_ω R_ω with |R_ω(y,y′)| ≤ c_ω exp(−δ_0 d(ω,y,y′)), sup_y Σ_{ω∋y} c_ω ≤ B_0, uniformly in the configuration, k and the volume. Source [V p. 3]: "The term corresponding to a walk ω in (1.6) can be bounded, as (3.108) [13], by O(1)O(M_1^{−1/2})^{|ω|}M_1^{−1/2|ω|}exp(−δ_0d(ω,y,y′)), (1.7) where Δ(y), Δ(y′) are localization cubes of the term. ... The first two factors in (1.7) are used to control the sum over ω, and they determine the constant B_0." I drop M_1^{−½|ω|} ≤ 1. [R: (1.7) is printed for the Sect. 1 propagators; p. 13 says the construction "was discussed in [13] ... for C^{(k)}(Z_0)" with the Sect. 2 domains; CMP 109 Sect. C not read.]
(G) Geometry. For y, y′ ∈ Λ_0 and every walk ω contributing to the kernel at (y,y′):
 (G-a) d(ω,y,y′) ≥ |y − y′|;
 (G-b) if m(ω) ≥ 1, then d(ω,y,y′) ≥ (2/3)M;
 (G-c) if m(ω) > 16, then δ_0 d(ω,y,y′) ≥ δ_1 m(ω) M, with δ_1 = δ_1(δ_0) > 0.
 Sources. (G-c) [V p. 5, Sect. 1]: "If m is big enough, for example m > 2^4, then δ_0d(ω) ≥ δ_1mM, for a positive constant δ_1 depending on δ_0 only". (G-b) [V p. 13]: "We define σ_0 as the family of such cubes Δ disjoint with the interior of Z̃_0, or with the interior of Z̃′_0 ... we take a domain X_0 such, that X̃_0^5 = Z̃_0 ... Other localization domains X ... we assume that dist(X, Z_0) > ⅔M." A walk with m(ω) ≥ 1 must contain a domain X_i ≠ X_0 [I: X̃_0^5 = Z̃_0 meets σ_0 cubes only on boundaries; "intersect" read as sharing interior points, SOURCES_LOC §2.4]. The tree of d(ω,y,y′) meets Δ(y) and X_i, so its length is at least dist(Z_0, X_i) > (2/3)M [I: up to O(M_1) from the size of Δ(y), ignored as Balaban does]. (G-a) [I]: the tree meets Δ(y) and Δ(y′). Supporting evidence for (G-b): the printed coefficient e^{−(1/3)δ_0M} equals e^{−½δ_0·(2/3)M}, and the printed rate is ½δ_0. This is exactly the split of §4.1.
(H-an) Analyticity in (U, J). [V p. 15]: "The quadratic forms and covariances in H(Z) are analytic functions on the space of configurations (U, J) satisfying the conditions I.(i)–(iii) on the domain Z, with constants α′_0, α′_1 much bigger than α_0, α_1". [V p. 6]: "all the considered functions and operators are analytic functions of the configurations U, J in a domain given by the conditions I.(i)–(iii) with some α′_0, α′_1, and all the bounds above are uniform on the domain." I use: each R_ω(y,y′) is analytic in (**U**, **J**) on the α′-domain, and (W) holds there uniformly.
(H-sc) Scaling. Write **U** = exp(iL^{−1}ηA′)U as on p. 15. For |z| ≤ ρ, ρ := min(α′_0/α_0, α′_1/α_1) > 1, the configuration (**U**_z, **J**_z) := (exp(izL^{−1}ηA′)U, z**J**) lies in the α′-domain. [I: p. 15 quotes the smallness conditions as "|A″|, |∇_U^{L^{−1}η}A′| < α_1, |**J**| < α_0", which are homogeneous of degree one in (A′, **J**) at fixed real U; conditions I.(i)–(iii) of CMP 109 not reread.]
(N) γ_0 ≤ A ≤ γ_1 on real fields. Lower [V image CMP 99 p. 428, prose after (3.158)]: "It is more convenient to work with the operator C̃^{(k)}(Λ), because it is defined by a positive definite operator C*Δ_kC with a lower bound γ_0 > 0 independent of k and U. We have proved it in [4], Lemma 2.4, for operators with U = 1. Localizing the operators in Δ_k and using the methods of Sect. B we can prove it for C*Δ_kC with an arbitrary configuration U satisfying (3.35), (3.36) with Mα_0 sufficiently small." Upper: ‖C*Δ_kC‖ ≤ γ_1 [R: SOURCES_Q §1, CMP 116 (2.7) needs it]. A is real symmetric.
(A-dec) Optional. |A(b,b′)| ≤ K_A e^{−δ_A|b−b′|} with δ_A > ½δ_0. [V CMP 99 p. 428]: "This property, together with a uniform exponential decay of C*Δ_kC implies bounds and uniform exponential decay for C̃^{(k)}(Λ), hence for C^{(k)}(Λ), by the theorem of Sect. 5 in [2]." Balaban asserts a uniform exponential decay of A. He gives no rate. So "δ_A > ½δ_0" is NOT printed [R, rate open]. The main theorem does not use (A-dec).

## 3. Two operator lemmas

3.1 Weighted Schur norm. For a ≥ 0 and a kernel K on Λ_0 × Λ_0 put
  ‖K‖_a := max( sup_b Σ_{b′}|K(b,b′)|e^{a|b−b′|}, sup_{b′} Σ_b |K(b,b′)|e^{a|b−b′|} ).

Lemma 1 [P]. For kernels K, L and 0 ≤ a < t:
 (i) ‖KL‖_a ≤ ‖K‖_a‖L‖_a, and ‖I‖_a = 1.
 (ii) ‖K‖_op ≤ ‖K‖_0 ≤ ‖K‖_a.
 (iii) |K(b,b′)| ≤ ‖K‖_a e^{−a|b−b′|}.
 (iv) If |K(b,b′)| ≤ ε e^{−t|b−b′|} for all b, b′, then ‖K‖_a ≤ ε S(t − a).
 (v) If ‖K‖_a ≤ ½, then I + K is invertible and ‖(I + K)^{−1}‖_a ≤ 2.
 (vi) ‖Re K‖_a ≤ ‖K‖_a.
Proof. (i) |(KL)(b,b″)| ≤ Σ_{b′}|K(b,b′)||L(b′,b″)| and e^{a|b−b″|} ≤ e^{a|b−b′|}e^{a|b′−b″|} (triangle inequality). Sum over b″, then over b′; the row sup of KL is at most (row sup of K)(row sup of L). Columns alike. (ii) Schur test: ‖K‖_op² ≤ (row sup)(column sup) at a = 0; and e^{a|·|} ≥ 1. (iii) One term of the row sum. (iv) Row sum ≤ ε Σ_{b′}e^{−(t−a)|b−b′|} ≤ εS(t − a); |b − b′| is symmetric, so columns alike. (v) Neumann series Σ_n(−K)^n converges in ‖·‖_a by (i), with sum of norms ≤ 2; in finite volume it is the matrix inverse. (vi) Blockwise |Re K(b,b′)| ≤ |K(b,b′)| (§1.5). ∎

3.2 Combes–Thomas for P = C_1^{−1}.

Lemma 2 [P]. Let T be a real symmetric operator on real fields on Λ_0 with T ≥ m_− > 0 and |T(b,b′)| ≤ B e^{−δ|b−b′|}. For 0 ≤ a < δ put h(a) := sup_b Σ_{b′} e^{−δ|b−b′|}(e^{a|b−b′|} − 1). Then h is continuous, increasing, h(0) = 0. If B·h(a) ≤ m_−/2, then
  |T^{−1}(b,b′)| ≤ (2/m_−) e^{−a|b−b′|}  for all b, b′.
Proof. Fix b_0. Let W be multiplication by e^{aφ}, φ(b) := |b − b_0|. The kernel of WTW^{−1} is e^{a(φ(b)−φ(b′))}T(b,b′). Since |φ(b) − φ(b′)| ≤ |b − b′| and |e^x − 1| ≤ e^{|x|} − 1, the kernel E := WTW^{−1} − T obeys |E(b,b′)| ≤ Be^{−δ|b−b′|}(e^{a|b−b′|} − 1). Its row and column sums are ≤ Bh(a), so ‖E‖_op ≤ Bh(a) ≤ m_−/2 (Schur). For real v, ⟨v, (T + E)v⟩ ≥ (m_− − m_−/2)‖v‖² = (m_−/2)‖v‖². A real matrix M with ⟨v, Mv⟩ ≥ c‖v‖² has ‖M^{−1}‖ ≤ 1/c (from c‖v‖² ≤ ‖v‖‖Mv‖). So ‖WT^{−1}W^{−1}‖ ≤ 2/m_−. Its (b, b_0) block is e^{aφ(b)}T^{−1}(b,b_0), and a block is bounded by the operator norm. So |T^{−1}(b,b_0)| ≤ (2/m_−)e^{−a|b−b_0|}. b_0 was arbitrary. ∎

Corollary 2′ [P given (Id), (W), (G-a), (N)]. Put T := C_1. At s ≡ 1 every walk weight σ^ω equals 1, so by (W) and (G-a), |C_1(b,b′)| ≤ B_0 e^{−δ_0|b−b′|}. By (N), for real v supported on Λ_0, ⟨v, Pv⟩ = ⟨v, Av⟩ ∈ [γ_0, γ_1]‖v‖², so γ_0 ≤ P ≤ γ_1, and C_1 = P^{−1} is real symmetric with C_1 ≥ γ_1^{−1}. Lemma 2 with m_− = γ_1^{−1}, B = B_0, δ = δ_0 gives
  |P(b,b′)| ≤ 2γ_1 e^{−a_CT|b−b′|},  a_CT > 0 defined by B_0 h(a_CT) = 1/(2γ_1).  (3.1)
(If B_0 h(a) < 1/(2γ_1) for all a < δ_0, take any a_CT < δ_0.) Size [I]: h(a) ≈ a Σ_x |x|e^{−δ_0|x|} for small a, so a_CT ≈ (2γ_1B_0Σ_x|x|e^{−δ_0|x|})^{−1}. With explicit constants of the size in numerics/NUMERICS.md l. 79 (Λ ≤ 1.43e8, c_− ≥ 1.37e−8) this rate is astronomically small. Only a_CT > 0 matters below.
Under (A-dec): P(b,b′) = A(b,b′) for b, b′ ∈ Λ_0 (compression keeps the kernel), so |P(b,b′)| ≤ K_A e^{−δ_A|b−b′|} directly [P given (A-dec)].
