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

## 4. The two perturbation lemmas

Standing condition (M1): M ≥ 2κ_1/δ_1. Put θ := κ_1/(δ_1M) ∈ (0, ½], t_1 := (1 − θ)½δ_0, t_2 := (1 − θ)δ_0, c_1 := 16 + δ_0/(3δ_1). Note θδ_0M/3 = κ_1δ_0/(3δ_1), independent of M.

4.1 Walk weight lemma [P given (G)]. For y, y′ ∈ Λ_0, a walk ω contributing at (y,y′), and |σ(Δ)| ≤ e^{κ_1}, put Φ(ω) := e^{m(ω)κ_1}e^{−δ_0d(ω,y,y′)}. Then
 (a) Φ(ω) ≤ e^{16κ_1}e^{−(1−θ)δ_0d(ω,y,y′)} ≤ e^{16κ_1}e^{−t_2|y−y′|};
 (b) if m(ω) ≥ 1: Φ(ω) ≤ e^{c_1κ_1}e^{−δ_0M/3}e^{−t_1|y−y′|};
 (c) if m(ω) ≥ 1: e^{−δ_0d(ω,y,y′)} ≤ e^{−δ_0M/3}e^{−½δ_0|y−y′|}.
Proof. (a) If m ≤ 16, then e^{mκ_1} ≤ e^{16κ_1} and e^{−δ_0d} ≤ e^{−(1−θ)δ_0d}. If m > 16, (G-c) gives θδ_0d ≥ θδ_1mM = mκ_1, so Φ ≤ e^{−(1−θ)δ_0d}. The second inequality is (G-a). (b) By (a), (G-a) and (G-b), (1 − θ)δ_0d ≥ (1 − θ)δ_0[½·(2/3)M + ½|y − y′|]. So Φ ≤ e^{16κ_1}e^{−(1−θ)δ_0M/3}e^{−t_1|y−y′|}, and e^{θδ_0M/3} = e^{κ_1δ_0/(3δ_1)}. (c) d ≥ ½(2/3)M + ½|y − y′| by (G-a), (G-b). ∎
Remark. (c) is the mechanism behind the printed form of (2.16): half of the walk decay pays e^{−½δ_0(2/3)M} = e^{−(1/3)δ_0M}; the other half is the printed rate ½δ_0. The extra e^{16κ_1} in (b) is the factor that Balaban's side condition "e^{−1/3δ_0M}e^{16κ_1} < 1" controls [I: reading of his side condition].

4.2 Lemma 3 (σ-change) [P given (W), (G)]. At the real pair (U, 0) put E_s(σ) := C(σ; U, 0) − C_1 = Σ_{ω: m(ω)≥1}(σ^ω − 1)R_ω(U, 0). For all σ in the closed polydisc |σ(Δ)| ≤ e^{κ_1}:
  |E_s(σ)(y,y′)| ≤ 2B_0 e^{c_1κ_1}e^{−δ_0M/3}e^{−t_1|y−y′|},  (4.1)
and at σ ≡ 0 (also for all real σ ∈ [0,1]^{σ_0}):
  |E_s(0)(y,y′)| ≤ B_0 e^{−δ_0M/3}e^{−½δ_0|y−y′|}.  (4.2)
Proof. Walks with m(ω) = 0 have σ^ω = 1 and cancel. For m ≥ 1, |σ^ω − 1| ≤ e^{mκ_1} + 1 ≤ 2e^{mκ_1}. So |E_s(σ)(y,y′)| ≤ Σ_{ω∋y, m≥1} c_ω·2Φ(ω) ≤ 2B_0 sup_{m≥1}Φ(ω), and 4.1(b) gives (4.1). For σ ∈ [0,1]^{σ_0}, |σ^ω − 1| ≤ 1; use 4.1(c) and Σc_ω ≤ B_0 to get (4.2). ∎
Note. (4.2) has no κ_1 and no α: at σ ≡ 0 the deleted walks enter with weight exactly −1.

4.3 Lemma 4 ((U, J)-change) [P given (W), (G), (H-an), (H-sc)]. For σ in the closed polydisc put E_α(σ) := C(σ; **U**, **J**) − C(σ; U, 0). Then
  |E_α(σ)(y,y′)| ≤ (2B_0e^{16κ_1}/α′_min)(α_0 + α_1) e^{−t_2|y−y′|},  α′_min := min(α′_0, α′_1).  (4.3)
Proof. Fix σ, y, y′ and unit vectors u, v ∈ C^n. Put f(z) := ⟨u, [C(σ; **U**_z, **J**_z) − C(σ; U, 0)](y,y′)v⟩ for |z| < ρ, with the family of (H-sc). Each walk term is analytic in z by (H-an) and (H-sc). By (W) and 4.1(a), Σ_ω c_ω|σ^ω|e^{−δ_0d} ≤ B_0e^{16κ_1}e^{−t_2|y−y′|} uniformly in z. So the walk sum converges uniformly, f is analytic (Weierstrass), and |f| ≤ 2B_0e^{16κ_1}e^{−t_2|y−y′|} =: S_f. At z = 0 the configuration is (U, 0), so f(0) = 0. Schwarz's lemma on the disc of radius ρ gives |f(z)| ≤ S_f|z|/ρ. At z = 1: |f(1)| ≤ S_f/ρ, and 1/ρ = max(α_0/α′_0, α_1/α′_1) ≤ (α_0 + α_1)/α′_min. Take the sup over u, v. ∎
Remark. (4.3) is the O(α_0 + α_1) term of (2.16). Its constant carries e^{16κ_1} and 1/α′_min. Balaban's "O(α_0 + α_1)" hides both [I]. Its decay rate t_2 ≈ δ_0 is better than ½δ_0.

## 5. Theorem R2

5.1 Rate and constants. Let a_P be a decay rate of P: a_P := a_CT of (3.1) (always available), or a_P := δ_A under (A-dec). Fix a with 0 < a < min(t_1, a_P). Put
 K_P(a) := 2γ_1 S(a_CT − a) (from (3.1)), or K_A S(δ_A − a) (under (A-dec)); then ‖P‖_a ≤ K_P(a) by Lemma 1(iv).
 η̄ := 2B_0 S(t_1 − a)·[e^{c_1κ_1}e^{−δ_0M/3} + e^{16κ_1}(α_0 + α_1)/α′_min].
Smallness condition (M2): K_P(a)·η̄ ≤ ½.

Theorem R2 [P given (Id), (W), (G), (H-an), (H-sc), (N, upper half only); (A-dec) optional]. Assume (M1) and (M2). Then for every σ in the closed polydisc |σ(Δ)| ≤ e^{κ_1}, Δ ∈ σ_0 ∩ Z, and every (**U**, **J**) in U^c_{k+1}(X, α_0, α_1):
 (i) C(σ) and C_0 are invertible on fields on Λ_0;
 (ii) for all b, b′ ∈ Λ_0,
  |R_2(b,b′)| ≤ 8K_P(a)²η̄ e^{−a|b−b′|}
   = 16B_0K_P(a)²S(t_1 − a)·[e^{c_1κ_1}e^{−δ_0M/3} + e^{16κ_1}(α_0 + α_1)/α′_min]·e^{−a|b_−−b′_−|}.
The constant depends on B_0, δ_0, δ_1, κ_1, γ_1, α′_min, d, a (and on K_A, δ_A under (A-dec)). It does not depend on k, the volume, σ, or (**U**, **J**) in the domain. It does not depend on M, provided B_0 and a_CT do not [I: Balaban treats B_0 as a constant, p. 5 "B_0e^{16κ_1}"; its M_1, M dependence is in [13], not read].

Proof. Put E := C(σ) − C_1 = E_α(σ) + E_s(σ) and E_0 := C_0 − C_1 = E_s(0).
Step 1 (norms). By (4.1), (4.3) and Lemma 1(iv), and since S(t_2 − a) ≤ S(t_1 − a) (t_2 ≥ t_1):
 ‖E‖_a ≤ 2B_0S(t_1 − a)e^{c_1κ_1}e^{−δ_0M/3} + S(t_1 − a)(2B_0e^{16κ_1}/α′_min)(α_0 + α_1) = η̄.
By (4.2), ‖E_0‖_a ≤ B_0S(½δ_0 − a)e^{−δ_0M/3} ≤ η̄ (½δ_0 ≥ t_1 and c_1κ_1 ≥ 0). So ‖E_0 − E‖_a ≤ 2η̄.
Step 2 (inverses). C_1P = I by (Id). So C(σ) = C_1 + E = C_1(I + PE). By Lemma 1(i) and (M2), ‖PE‖_a ≤ K_P η̄ ≤ ½. By Lemma 1(v), I + PE is invertible with ‖(I + PE)^{−1}‖_a ≤ 2. Hence C(σ) is invertible and C(σ)^{−1} = (I + PE)^{−1}P. Likewise C_0^{−1} = (I + PE_0)^{−1}P with ‖(I + PE_0)^{−1}‖_a ≤ 2. This is (i).
Step 3 (difference). With X := I + PE, Y := I + PE_0, X^{−1} − Y^{−1} = X^{−1}(Y − X)Y^{−1} and Y − X = P(E_0 − E). So
 C(σ)^{−1} − C_0^{−1} = (I + PE)^{−1}P(E_0 − E)(I + PE_0)^{−1}P.
By Lemma 1(i): ‖C(σ)^{−1} − C_0^{−1}‖_a ≤ 2·K_P·2η̄·2·K_P = 8K_P²η̄.
Step 4 (kernel). Lemma 1(iii) gives |(C(σ)^{−1} − C_0^{−1})(b,b′)| ≤ 8K_P²η̄e^{−a|b−b′|}. (1.5) transfers it to R_2. ∎

5.2 Balaban's form. Write O_1 := 16B_0K_P²S(t_1 − a)e^{c_1κ_1} and O_2 := 16B_0K_P²S(t_1 − a)e^{16κ_1}/α′_min. Then
 |R_2(b,b′)| ≤ (O_1e^{−(1/3)δ_0M} + O_2(α_0 + α_1)) e^{−a|b_−−b′_−|}.
This is (2.16) for R_2 with two changes. (1) The rate is a < min(t_1, a_P) in place of ½δ_0. (2) The "O(1)" carries e^{c_1κ_1}, c_1 = 16 + δ_0/(3δ_1). If one wants an O(1) free of κ_1: for ν ∈ (0,1) and M ≥ 3c_1κ_1/(νδ_0), e^{c_1κ_1}e^{−δ_0M/3} ≤ e^{−(1−ν)δ_0M/3}. Balaban's order "M much bigger than κ_1" (p. 16) allows this choice [I].
5.3 Rate ½δ_0 exactly (variant) [P given the same inputs and (A-dec) with δ_A > ½δ_0]. Repeat 4.1(b) with weights λ, 1 − λ in place of ½, ½: prefactor e^{−(1−θ)λ(2/3)δ_0M}, rate (1 − θ)(1 − λ)δ_0. Choose λ < ½ and M so large that (1 − θ)(1 − λ)δ_0 > ½δ_0 and also δ_A > ½δ_0. Then a = ½δ_0 is admissible, at the cost of the prefactor e^{−(1−θ)λ(2/3)δ_0M} = e^{−(1/3)(1−ν′)δ_0M} with ν′ := 1 − 2λ(1 − θ) > 0. So the printed pair (e^{−δ_0M/3}, ½δ_0) is reached up to an arbitrarily small loss ν′ in one of the two exponents, never both exactly. The rate δ_0 of the brief is not reached by this method.
5.4 Which inputs are used where. (N) enters only as P ≤ γ_1 in Corollary 2′ (to get C_1 ≥ γ_1^{−1} for Combes–Thomas). γ_0 is not used in Theorem R2. Under (A-dec), (N) is not used at all in Theorem R2. (Id) is used once (C_1P = I). Symmetry of C(σ) or C_0 is not used.

## 6. Corollary (E) at σ ≡ 1, and side results

6.1 What (E) says. SOURCES_LOC §4: "(E) C_0^{−1} = Z_0AZ_0 − R with ‖R‖ ≤ ε_M", A at the real pair (U, 0), s ≡ 1. So R := P − C_0^{−1}. At σ ≡ 1 and (**U**, **J**) = (U, 0), C(σ) = C_1 and Re C(σ)^{−1} = P, so R = −R_2(σ ≡ 1, U, 0). Theorem R2 then gives ‖R‖_op ≤ ‖R_2‖_a ≤ 8K_P²η̄ (Lemma 1(ii)), with the α-term absent since E_α = 0 at the real pair. A direct argument gives a sharper and cheaper bound.

Corollary E [P given (Id), (W), (G-a), (G-b), and P ≤ γ_1 from (N)]. Put
 e_M := B_0 S(½δ_0) e^{−δ_0M/3},  and assume γ_1e_M ≤ ½.
Then C_0 is invertible and
 C_0^{−1} = Z_0AZ_0 − R,  ‖R‖_op ≤ ε_M := 2γ_1²e_M = 2γ_1²B_0S(½δ_0)e^{−δ_0M/3}.
Proof. E_0 = C_0 − C_1 obeys (4.2), so ‖E_0‖_op ≤ ‖E_0‖_0 ≤ e_M (Lemma 1(ii), (iv) with a = 0). ‖P‖_op ≤ γ_1. So ‖PE_0‖_op ≤ ½, and C_0 = C_1(I + PE_0) is invertible with C_0^{−1} = (I + PE_0)^{−1}P and ‖(I + PE_0)^{−1}‖_op ≤ 2. Then
 R = P − C_0^{−1} = [I − (I + PE_0)^{−1}]P = (I + PE_0)^{−1}PE_0P,
so ‖R‖_op ≤ 2·γ_1·e_M·γ_1. ∎
What Corollary E does not need: (G-c), κ_1, the Cauchy polydisc, (H-an), (H-sc), α_0, α_1, any decay of P, γ_0, symmetry (S). Reason: (E) is a statement at the real point σ ≡ 0, (U, 0), where every deleted walk enters with weight exactly −1 (4.2).
Correction to SOURCES_LOC §3.3 and SOURCES_LOC_VERIFY §5 [P]: ε_M has no O(α_0 + α_1) term. So the caveat "ε_M ≤ γ_0/2 needs α_0, α_1 small after M" is not needed for (E). The condition of Lemma LOC becomes 2γ_1²B_0S(½δ_0)e^{−δ_0M/3} ≤ γ_0/2, a condition on M alone (given B_0, γ_0, γ_1 independent of M [I]).

6.2 Lower bound on C_0 without inverses [P given the same inputs and (N)]. For real v on Λ_0: ⟨v, C_0v⟩ = ⟨v, C_1v⟩ + ⟨v, E_0v⟩ ≥ (γ_1^{−1} − e_M)‖v‖², since C_1 = P^{−1} ≥ γ_1^{−1}. And ‖C_0‖_op ≤ ‖C_1‖ + e_M ≤ γ_0^{−1} + e_M. So
 c_− := γ_1^{−1} − e_M ≥ (2γ_1)^{−1},  Λ := γ_0^{−1} + e_M,
for the input of Lemma G3 (SOURCES_LOC §0). This is the "backup route" of SOURCES_LOC §4, now with the walk bound made explicit by (4.2). It does not use the symmetry (S) of C_0: the form ⟨v, C_0v⟩ only sees the symmetric part. It is slightly sharper than SOURCES_LOC Lemma LOC (ii), which gives (γ_1 + ε_M)^{−1}.
6.3 The condition α_5‖C^{(k)}(Z_0,0)‖ < ½ of p. 17 [P given 6.2]. It holds if α_5(γ_0^{−1} + e_M) < ½.
6.4 The measure in (2.15) is a genuine Gaussian [P given Theorem R2, Corollary E, (N)]. For real v: ⟨v, C_0^{−1}v⟩ = ⟨v, Pv⟩ − ⟨v, Rv⟩ ≥ (γ_0 − ε_M)‖v‖². Re C(σ)^{−1} = C_0^{−1} − R_2, so ⟨v, Re C(σ)^{−1}v⟩ ≥ (γ_0 − ε_M − 8K_P²η̄)‖v‖². This is positive if ε_M + 8K_P²η̄ < γ_0. Then dμ_{(Re C(σ)^{−1})^{−1}} in (2.15) is a positive Gaussian for every σ in the polydisc and every (**U**, **J**) in the domain.
6.5 Not done here. The quotient of determinants on p. 16 ("which can be estimated by (2.17)") is not derived. R_1 and R_3 are not derived; R_3 = Re Γ_k(σ) − Γ_k(0) and R_1 involve (C^{(k)})^{1/2}(σ) and Δ_k(σ), whose expansions (p. 13, (2.7)) are separate inputs. The same Lemma 3/Lemma 4 pattern applies to each walk-expanded operator; the inverse step of §5 is specific to R_2.

## 7. Constants, scope, and what is not claimed

7.1 Hierarchy of choices [I, consistent with p. 16 and CMP 99 p. 428]. Fix δ_0, δ_1, B_0, γ_0, γ_1 (walk and norm constants, assumed independent of M, κ_1, k, volume). Fix κ_1. Choose M with (M1) M ≥ 2κ_1/δ_1, and M so large that the e^{−δ_0M/3} parts of (M2), of γ_1e_M ≤ ½, and of ε_M ≤ γ_0/2 hold. Fix α′_0, α′_1 (the analyticity domain of (H-an)). Then choose α_0, α_1 small so that the α-part of (M2) holds. This matches Balaban's order: "M is much bigger than κ_1" (p. 16) and "Mα_0 sufficiently small" (CMP 99 p. 428).
7.2 Size. All constants are existential in Balaban's constants B_0, δ_0, δ_1, γ_0, γ_1, α′. None is computed. With the explicit γ-type constants of numerics/NUMERICS.md l. 79 (c_− ≥ 1.37e−8, Λ ≤ 1.43e8 at L = 13) the Combes–Thomas rate a_CT of (3.1) and the required M are astronomically small/large. I claim nothing better. No numerical check was run for this item; nothing here is numerical.
7.3 Where the open weight now sits. The proof replaces Balaban's one word "similarly" by a complete argument, conditional on five named inputs. Ranked by risk:
 (G-b) [I] the geometric claim that a walk meeting σ_0 has tree length ≥ (2/3)M from Z_0. It rests on the p. 13 choice dist(X, Z_0) > ⅔M and on "intersect" excluding boundary contact with Z̃_0. If Δ(y) sticks out of Z_0 by O(M_1), the prefactor becomes e^{−δ_0(M/3 − O(M_1))}, still small if M_1 ≪ M [I].
 (W) [R] the walk bound (1.7) for the Sect. 2 expansion of C^{(k)}(Z_0), uniformly on the α′-domain. Printed for the Sect. 1 propagators; asserted for C^{(k)}(Z_0) on p. 13 by reference to [13] (CMP 109 Sect. C), not read.
 (H-sc) [I] the scaling of the complex configuration into the α′-domain.
 (G-c) [V for Sect. 1, I for Sect. 2] the m > 16 tree-length bound.
 (Id) [V + R] s ≡ 1 recovers C^{(k)}(Z_0) = P^{−1}.
 (N) upper half [R] via SOURCES_Q. γ_0 (lower half) enters only Corollary E's use in Lemma LOC and 6.4, not Theorem R2.
7.4 Effect on the ledger rows named in the brief [I: my reading of those rows].
 - SOURCES_LOC (E): now [R] to (Id), (W), (G-a), (G-b), P ≤ γ_1 (Corollary E), with ε_M free of α. Previously [R] to Balaban's unproved "similarly".
 - SOURCES_HHOL 2.3(ii) (R_2 multiplied by w or 1/w): Theorem R2 bounds R_2 at w = 1. Multiplying the precision by w multiplies R_2 by w; the coefficient grows by |w| ≤ 1.235. This needs nothing new for R_2.
 - SOURCES_GGAIN, TRUST_LEDGER B13 and B16: they quote (2.16)–(2.26) and use R_2 only through (2.16)/(2.21) (Schur norm). Theorem R2 gives the Schur norm bound ‖R_2‖_0 ≤ ‖R_2‖_a ≤ 8K_P²η̄ (Step 3 of §5.1, Lemma 1(ii), (vi)), which is what (2.21) needs, with constant changes as in 5.2. R_1 and R_3 remain Balaban's unproved assertions in the same rows.
7.5 What is not claimed. The rate δ_0 of the brief (1.6). Any explicit value of an O(1). The determinant quotient. R_1, R_3. The positivity/symmetry statement (S) of p. 15 (not needed here, 5.4, 6.2). The definition of C^{(k)}(Z_0, s) beyond the p. 3 s-rule "as before".

## 8. Ledger

Claims, numbered for the verifier.
1. R_2 = C_0^{−1} − Re C(σ)^{−1}, and |R_2(b,b′)| ≤ |(C(σ)^{−1} − C_0^{−1})(b,b′)| (§1.4–1.5). [P]
2. The printed decay rate of (2.16) is ½δ_0, not δ_0 as in the brief (§1.6). [V image CMP 116 p. 16]
3. Lemma 1, weighted Schur algebra (§3.1). [P]
4. Lemma 2, Combes–Thomas, and Corollary 2′: |P(b,b′)| ≤ 2γ_1e^{−a_CT|b−b′|} (§3.2). [P] for Lemma 2; [R] for 2′ to (Id), (W), (G-a), P ≤ γ_1.
5. Walk weight lemma 4.1 (a)–(c). [R] to (G); the algebra is [P].
6. Lemma 3, σ-change bounds (4.1) and (4.2). [R] to (W), (G).
7. Lemma 4, (U, J)-change bound (4.3) via Schwarz's lemma. [R] to (W), (G), (H-an), (H-sc).
8. Theorem R2: on the whole closed polydisc |σ| ≤ e^{κ_1}, uniformly in k and volume, |R_2(b,b′)| ≤ 16B_0K_P²S(t_1 − a)[e^{c_1κ_1}e^{−δ_0M/3} + e^{16κ_1}(α_0 + α_1)/α′_min]e^{−a|b−b′|}, for 0 < a < min(t_1, a_P), under (M1), (M2) (§5.1). [R] to (Id), (W), (G), (H-an), (H-sc), P ≤ γ_1; the operator argument is [P].
9. Balaban's form (2.16) for R_2 holds with rate a in place of ½δ_0 and with κ_1-dependent O(1) (or prefactor e^{−(1−ν)δ_0M/3}) (§5.2). [R] as 8; [I] that this matches Balaban's intended O(1).
10. Variant: rate exactly ½δ_0 with prefactor e^{−(1−ν′)δ_0M/3}, under (A-dec) with δ_A > ½δ_0 (§5.3). [R] to the inputs of 8 plus (A-dec) (rate not printed).
11. Theorem R2 does not use γ_0 or symmetry (S) (§5.4). [P]
12. Corollary E: C_0^{−1} = Z_0AZ_0 − R with ‖R‖ ≤ ε_M = 2γ_1²B_0S(½δ_0)e^{−δ_0M/3}, if γ_1B_0S(½δ_0)e^{−δ_0M/3} ≤ ½; no α, κ_1, polydisc, or analyticity needed (§6.1). [R] to (Id), (W), (G-a), (G-b), P ≤ γ_1.
13. Correction to SOURCES_LOC §3.3 / LOC_VERIFY §5: ε_M carries no O(α_0 + α_1) term; Lemma LOC's condition is a condition on M alone (§6.1). [P given 12]
14. c_− = γ_1^{−1} − e_M ≥ (2γ_1)^{−1}, ‖C_0‖ ≤ γ_0^{−1} + e_M, without (S) (§6.2). [R] as 12 plus (N).
15. α_5‖C_0‖ < ½ holds if α_5(γ_0^{−1} + e_M) < ½ (§6.3). [P given 14]
16. Re C(σ)^{−1} ≥ γ_0 − ε_M − 8K_P²η̄ on real fields (§6.4). [R] as 8, 12, (N).
17. Hierarchy (M1), (M2) fits Balaban's order κ_1 → M → α (§7.1). [I]

Verified against Balaban [V, page images]: CMP 116 p. 3 (1.6)–(1.7) and s-rule; p. 5 (1.11), m > 2^4 rule, |s(Δ)| ≤ e^{κ_1}; p. 6 uniform analyticity sentence; p. 12 (2.5); p. 13 σ_0, X_0, dist(X, Z_0) > ⅔M, (2.7); p. 15 (2.14)–(2.15), analyticity on α′-domain, replacement point; p. 16 (2.16), R_2 sentence, e^{−δ_0M/3}e^{16κ_1} < 1; p. 17 (2.23)–(2.25), α_5‖C^{(k)}(Z_0,0)‖ < ½. CMP 99 p. 428 (3.157)–(3.158) and the γ_0 and "uniform exponential decay of C*Δ_kC" prose. CMP 99 (3.132) read on the text layer only (p. 422; it is a kernel bound for (QGQ*)^{−1}-type operators; not used).
Named inputs [R]: (Id), (W), (G-a), (G-b), (G-c), (H-an), (H-sc), (N), optional (A-dec); stated in §2.2 with sources.
Inferences [I]: (G-a), (G-b) geometry (incl. the "intersect" reading and O(M_1) corrections); (G-c) transferred from Sect. 1 to Sect. 2; (H-sc); M-independence of B_0, a_CT, γ_0, γ_1; the polydisc of Sect. 1 used in Sect. 2; reading of Balaban's O(1) as κ_1-dependent.
Open: (W) for the Sect. 2 expansion of C^{(k)}(Z_0) (CMP 109 Sect. C not read); a rate δ_A for (A-dec); R_1, R_3 and the determinant quotient; the rate δ_0 requested by the brief (not reachable by this method, and not what Balaban prints).
Numerics: none run.
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md).
STATUS: COMPLETE
