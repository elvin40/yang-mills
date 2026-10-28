IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# LEMMA_DPRIME.md: Lemma D′ (shooting with early negative one-loop increments)

Date 2026-10-27. Status: proved here, not yet independently verified. Sources: THEOREM2_PROOF_VERIFY.md §5 (Point 5(b)–(c)), LEMMAS.md Lemma D, LEMMAS_DE_VERIFY.md §1.4, THEOREM2.md §1, §3, §7 (R1), THEOREM2_PROOF.md §2, §6.

Notation: u_k := 1/g_k², t := 1/g². Tail sum T(k,K) := Σ_{i=k+1}^{K} β_i, evaluated along the trajectory in question.

## §1 Statement

**Hypotheses.** Fix γ_0 > 0, C_1 ≥ 0, B ≥ 0.
- (i) Recursion. 1/g_{k+1}² = 1/g_k² − β_{k+1}(g_k), with every β_{k+1} ∈ C¹([0, γ_0]) and |β_{k+1}(g) − β_{k+1}(0)| ≤ C_1 g for g ∈ [0, γ_0]. The functions β_j do not depend on K, and C_1 does not depend on j or K (Lemma E form; Balaban's (H0)).
- (ii) sup_j |β_j(0)| ≤ B.
- (iii) β_j(0) → β_∞ > 0 as j → ∞. No rate is assumed.

**Constants.** All are fixed by (i)–(iii) and an external cap γ_Bal > 0 (Theorem 1's "sufficiently small γ").
- J := the least integer ≥ 0 with β_j(0) ≥ β_∞/2 for all j > J. It exists by (iii). J is not computable from (i)–(iii) without a rate.
- γ := min(γ_0, γ_Bal, β_∞/(4C_1)) (read β_∞/(4C_1) = ∞ if C_1 = 0).
- B′ := B + β_∞/4.
- D := J·B′.
- D′ := J·(B′ + β_∞/4) = J·(B + β_∞/2).
- g_1 := (1/γ² + D)^{−1/2}. So g_1 ≤ γ, and g_1 = γ if J = 0.
- β := β_∞/4, β′ := B′.
- K_0 := J + ⌈8D′/β_∞⌉.

**Conclusions.**
- (a) Tail sums. Σ_{i=k+1}^{K} β_i(0) ≥ −J·B ≥ −D for all 0 ≤ k < K and all K. Along any trajectory with g_0, …, g_{K−1} ∈ ]0, γ], also T(k,K) = Σ_{i=k+1}^{K} β_i(g_{i−1}) ≥ −D.
- (b) Shooting. For every g ∈ ]0, g_1] and every K ≥ 1 there is g_0 = g_0(K, g) ∈ ]0, γ] with g_k ∈ ]0, γ] for all 0 ≤ k ≤ K and g_K = g.
- (c) Two-sided bound. Along every trajectory from (b), for 0 ≤ k ≤ K:
  1/g² + β(K−k) − D′ ≤ 1/g_k² ≤ 1/g² + β′(K−k).
  The upper bound needs no additive constant. With ε = L^{−K}, (K−k) = log(L^k ε)^{−1}/log L, so this is (0.31) with constants β/log L, β′/log L, up to the additive constant D′ on the lower side.
- (d) Literal (0.31). For every K ≥ K_0, every k ≤ K, and every trajectory from (b):
  1/g² + (β_∞/8)(K−k) ≤ 1/g_k² ≤ 1/g² + β′(K−k).
  For K ≥ K_0 the shooting in (b) also works for every g ∈ ]0, γ], not only g ≤ g_1. If in addition every β_j(0) > 0, then literal (0.31) holds for all K ≥ 1 and all g ∈ ]0, γ″], with β_0 := min(min_{j≤J} β_j(0), β_∞/2) > 0, γ″ := min(γ_0, γ_Bal, β_0/(2C_1)), and constants β_0/2, B + β_0/2 (this is Lemma E + Lemma D).

**Scope note.** Balaban's β_j depends on the whole history (g_0, …, g_{j−1}) (CMP 109 p. 298). Hypothesis (i) uses only g_{j−1}, as the task specifies. §3 Remark 3 states the history version; the proof is the same word for word.

## §2 Proof

**Step 0 (pointwise bounds).** Let g ∈ ]0, γ]. Then C_1 g ≤ C_1 γ ≤ β_∞/4, so by (i) |β_j(g) − β_j(0)| ≤ β_∞/4 for every j. With (ii) and the definition of J:
- (P1) β_j(g) ≤ B + β_∞/4 = B′ for all j;
- (P2) β_j(g) ≥ −B′ for all j;
- (P3) β_j(g) ≥ β_∞/2 − β_∞/4 = β_∞/4 for all j > J.
The same holds at g = 0 with the sharper constants −B and β_∞/2.

**Step 1 (conclusion (a)).** Fix 0 ≤ k < K and any couplings g_0, …, g_{K−1} ∈ [0, γ]. Split the window {k+1, …, K} into early indices i ≤ J and late indices i > J. There are at most min(J, K−k) early indices; each contributes ≥ −B′ by (P2). Each late index contributes ≥ β_∞/4 ≥ 0 by (P3). So
  T(k,K) ≥ −B′·#{early} + (β_∞/4)·#{late} ≥ −J·B′ = −D.   (1.1)
At g = 0 the same count gives Σ_{i=k+1}^{K} β_i(0) ≥ −J·B. The bound is uniform in k and K because J is fixed. Also, by (P1), T(k,K) ≤ B′(K−k).   (1.2)

**Step 2 (the clamped map).** Put φ(u) := (max(u, 1/γ²))^{−1/2}. φ is continuous from R to ]0, γ], and φ(u) = u^{−1/2} for u ≥ 1/γ². Fix K ≥ 1. For u_0 ∈ R define
  ũ_0 := u_0,  ũ_{k+1} := ũ_k − β_{k+1}(φ(ũ_k)),  k = 0, …, K−1.
Each step is continuous: β_{k+1} is C¹, hence continuous, on ]0, γ] ⊆ [0, γ_0], and φ is continuous. By induction each ũ_k is a continuous function of u_0 on all of R. Define F̃(u_0) := ũ_K. F̃ is continuous on R.

**Step 3 (bracket).** The clamped couplings φ(ũ_k) always lie in ]0, γ]. So (1.1)–(1.2) apply to the clamped increments β̃_i := β_i(φ(ũ_{i−1})), for every u_0 ∈ R:
  ũ_k − ũ_K = T̃(k,K) := Σ_{i=k+1}^{K} β̃_i ∈ [−D, B′(K−k)].   (2.1)
At k = 0: F̃(u_0) = u_0 − T̃(0,K) ∈ [u_0 − B′K, u_0 + D]. Let t := 1/g². Then
  F̃(t − D) ≤ (t − D) + D = t,   F̃(t + B′K) ≥ (t + B′K) − B′K = t.
The interval I := [t − D, t + B′K] is nonempty because D ≥ 0 and B′K ≥ 0.

**Step 4 (IVT).** F̃ is continuous on I, F̃ ≤ t at the left end, and F̃ ≥ t at the right end. By the intermediate value theorem there is u_0* ∈ I with F̃(u_0*) = t.

**Step 5 (the clamp is inactive on the solution).** Take the clamped trajectory from u_0*. By (2.1) and ũ_K = t,
  ũ_k = t + T̃(k,K) ≥ t − D   for all 0 ≤ k ≤ K.
Now g ≤ g_1 means t ≥ 1/g_1² = 1/γ² + D. Hence ũ_k ≥ 1/γ² for every k, and φ(ũ_k) = ũ_k^{−1/2}. So the clamped recursion and the true recursion (i) agree at every step. The argument is not circular: (2.1) holds for every clamped trajectory, because clamped couplings are always in ]0, γ]; the conclusion ũ_k ≥ 1/γ² is derived from it afterwards. Set g_k := ũ_k^{−1/2}. Then g_k ∈ ]0, γ] for all 0 ≤ k ≤ K, g_0 = (u_0*)^{−1/2}, and g_K = t^{−1/2} = g. This is (b). Note that g_0 > g is possible when early increments are negative; u_0* may lie below t.

**Step 6 (conclusion (c)).** Along the solution u_k − u_K = T(k,K) and u_K = t. The upper bound is (1.2). For the lower bound, split two cases.
- k ≥ J: every index in the window is late, so T(k,K) ≥ (β_∞/4)(K−k) by (P3).
- k < J: the window has at most J−k early indices (each ≥ −B′) and at least (K−J)^+ late indices (each ≥ β_∞/4). Write e := #{early} ≤ J−k ≤ J. Then
  T(k,K) ≥ −B′e + (β_∞/4)(K−k−e) = (β_∞/4)(K−k) − (B′ + β_∞/4)e ≥ (β_∞/4)(K−k) − D′.
In both cases u_k ≥ t + β(K−k) − D′ with β = β_∞/4. This is (c). ∎(a)–(c)

**Step 7 (conclusion (d), K ≥ K_0).** Let K ≥ K_0 = J + ⌈8D′/β_∞⌉ and k < K, along any trajectory with couplings in ]0, γ].
- k ≥ J: T(k,K) ≥ (β_∞/4)(K−k) ≥ (β_∞/8)(K−k).
- k < J: K−k > K−J ≥ 8D′/β_∞, so D′ ≤ (β_∞/8)(K−k), and Step 6 gives T(k,K) ≥ (β_∞/4)(K−k) − (β_∞/8)(K−k) = (β_∞/8)(K−k).
So T(k,K) ∈ [(β_∞/8)(K−k), B′(K−k)] for all k < K. This is literal (0.31) with constants (β_∞/8)/log L and B′/log L. It also holds for every clamped trajectory, so for K ≥ K_0 the bracket of Step 3 sharpens to F̃(u_0) ∈ [u_0 − B′K, u_0 − (β_∞/8)K]. The IVT on [t + (β_∞/8)K, t + B′K] then gives a solution for every g ∈ ]0, γ], and on it ũ_k ≥ ũ_K = t ≥ 1/γ². This is LEMMAS.md Lemma D in its partial-sum form (THEOREM2.md (R1)).

**Step 8 (conclusion (d), all K, all β_j(0) > 0).** Then β_0 := min(min_{j≤J} β_j(0), β_∞/2) > 0 is a minimum of finitely many positive numbers and β_∞/2. Also β_j(0) ≥ β_0 for every j. Lemma E (C¹ form) with γ″ := min(γ_0, γ_Bal, β_0/(2C_1)) gives β_0/2 ≤ β_j(g) ≤ B + β_0/2 for all j and g ∈ ]0, γ″]. Lemma D (LEMMAS.md, verified in LEMMAS_DE_VERIFY.md §1.4) gives the shooting and literal (0.31) for every K ≥ 1 and every g ∈ ]0, γ″]. ∎

## §3 Remarks

**Remark 1 (Theorem 1's hypothesis is exactly (b)).** THEOREM2.md §1 quotes CMP 122 II p. 355: "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective densities ρ_k have the form, and satisfy all the conditions and bounds, described in Sect. 2 [III]." For ε = L^{−K} the effective coupling constants are g_0, …, g_K (scales k = 0, …, K; k = K is the unit lattice, CMP 109 p. 256). Let γ_Bal be the "sufficiently small" γ of Theorem 1. Our γ ≤ γ_Bal by definition. Conclusion (b) says: for every K and every g ∈ ]0, g_1] there is a bare coupling g_0(K, g) whose sequence g_0, …, g_K lies in ]0, γ] ⊆ ]0, γ_Bal]. That is the hypothesis word for word, for the bare coupling g_0(K, g). Hence, given (i)–(iii) and Balaban's published proofs, Theorem 1's conclusion holds for these bare couplings without any further assumption on the couplings. Three points of fit:
- Theorem 1 is stated for "a sufficiently small positive γ", and Theorem 2 (CMP 109 p. 259) for "a sufficiently small positive g". Our g ≤ g_1 fits that wording. g_1 depends on J, which (iii) gives but does not quantify.
- (b) does not give (0.31) itself; Theorem 1 does not use (0.31) as an input according to its quoted statement. Balaban (p. 355) says the coupling assumption "follows from the basic inequality (0.31)"; (b) gives the assumption directly.
- Theorem 1 then becomes unconditional given (i)–(iii), (H0′)-type continuity (here supplied by the C¹ hypothesis in (i)), and the other open inputs of THEOREM2_PROOF.md §6 that produce (iii) (Prop. 3.6 without its rate, β_∞ = c log L > 0). Hypothesis (E) (positivity of the early increments) and the explicit j_* are not needed.

**Remark 2 (caveat: only g_k ≤ γ is assumed to matter).** Remark 1 assumes that Theorem 1's proof uses the couplings only through g_k ∈ ]0, γ]. Under Lemma D′ the couplings need not be monotone: for i < k, u_i = u_k + T(i,k) ≥ u_k − D, so g_i can exceed g_k, by the bounded amount g_i² ≤ g_k²/(1 − D g_k²). If Balaban's induction uses exact monotonicity g_i ≤ g_k anywhere, Remark 1 fails at that point. §5 reports a grep of CMP 122.

**Remark 3 (history-dependent β).** Balaban's β_j depends on (g_0, …, g_{j−1}). Replace (i) by: β_{k+1} is continuous on ]0, γ_0]^{k+1}, and |β_{k+1}(h) − β_{k+1}(0)| ≤ C_1 max_i h_i, with β_{k+1}(0) history independent (THEOREM2_PROOF.md §2.2). Then Steps 0–8 hold unchanged, with φ applied to every entry of the history in Step 2. If β_{k+1} is defined only on admissible histories, the nested-interval proof of LEMMAS_DE_VERIFY.md §1.5 is the natural route; THEOREM2_PROOF_VERIFY.md Point 5(b) says it "works the same way". I did not write that variant out here (ledger item L5).

**Remark 4 (g_1 is needed for small K).** Without g ≤ g_1, (b) can fail. Example: β_1 = β_2 = β_3 ≡ −0.8 (C_1 = 0), K = 3, g = γ. Any true trajectory has u_2 = u_3 + β_3 < u_3 = 1/γ², so g_2 > γ. No bare coupling works. For K ≥ K_0 the restriction disappears (Step 7).

## §4 Numerical sanity check [numerical, toy model]

Toy model (not Balaban's β): β_j(0) = −0.8 for j ≤ 3, β_j(0) = 0.4 + 0.6(−1)^j/j for j ≥ 4 (slow oscillating convergence, β_∞ = 0.4); β_j(g) = β_j(0) + 0.3 g sin(7j + 13g), so C_1 = 0.3; γ_0 = 0.5. Shooting = bisection on the clamped map F̃ over I = [t − D, t + B′K], keeping F̃(lo) ≤ t ≤ F̃(hi); 200 halvings. Script run as a python heredoc in /tmp (seconds); not kept as a file. Core lines:

```python
phi=lambda u:max(u,1/gam**2)**-0.5
def traj(u0,K):
    u=[u0]
    for k in range(K): u.append(u[-1]-beta(k+1,phi(u[-1])))
    return u
# bisection on F(x)=traj(x,K)[-1]-1/g**2 over [t-D, t+B'K]; then check min(u)>=1/gam**2, g_K=g, (c), (d)
```

Computed constants: B = 0.8, J = 3, γ = min(0.5, 0.4/(4·0.3)) = 0.3333, B′ = 0.9, D = 2.7, D′ = 3.0, g_1 = 0.2924, K_0 = 3 + ⌈8·3/0.4⌉ = 63.

Results. K ∈ {1, 2, 3, 4, 5, 8, 20, 63, 73, 200} × g/g_1 ∈ {1.0, 0.7, 0.2}: 30/30 cases have the clamp inactive (min_k u_k ≥ 1/γ²), g_K = g to 1e−9, bound (c) holds at every k, and literal bound (d) with β_∞/8 holds for all K ≥ K_0. Early negative steps show up as g_0 > g at small K (e.g. K = 3, g = g_1 = 0.2924: g_0 = 0.3311 ≤ γ). For K = 63 = K_0, g = γ and g = 0.9γ (both > g_1) also shoot successfully with the Lemma D interval, as Step 7 says. Negative control: g = γ, K = 3 gives min_k u_k·γ² = 0.72 < 1, so the clamp is active and no admissible trajectory exists (Remark 4). FAILURES: 0.

## §5 CMP 122: how g_k enters the inductive hypotheses (grep, OCR text)

Method: grep of balaban/1989_cmp122_large_field_renormalization_I.txt and _II.txt for g_k / g_j / p_0(g / δ′_j / "monoton" / "increas" / "(0.31)" / "(1 + β_0)", then reading the hits in context. OCR is noisy; formula readings below are mine. This is not a full audit of Theorem 1's proof, and it does not cover the other papers of the series ([III], [IV], CMP 116, CMP 119).

Findings.
1. No occurrence of "monoton", and no explicit inequality g_j ≤ g_k, in either file. (0.31) appears only in the Theorem 1 paragraph (II, line 37).
2. Most uses are single-scale: p_0(g_k) = A_0 (log g_k^{−2})^{p_0} (I, p. 175), δ′_j = g_j^{1/4} p_1(g_j) with p_1(g) = (log g^{−2})^{p_1}, p_1 < p_0 (I, p. 183, (1.27)), field restrictions |B| < g_k^{−1}δ r_k (II, p. 361), and many "for g_k sufficiently small" / "in stronger restrictions on g_k, or γ" (II, p. 359). These need only g_k ≤ γ, which (b) supplies.
3. Cross-scale comparison A (I, p. 192, near (1.64)): "δ′_j ≤ (1 + β_0)^{2(k−j)β_0} δ′_k ≤ (1 + β_0)^{2N_0β_0} δ′_k", for the at most N_0 earlier scales j < k whose terms cumulate. Here an earlier-scale quantity is bounded by the current one, with a multiplicative slack ≥ 1 (β_0 is Balaban's small constant, e.g. 1/7, not our β_0). If δ′_j is the coupling-dependent quantity above, this is a quasi-monotonicity use: it needs g_j not much larger than g_k.
4. Cross-scale comparison B (II, p. 386, (1.86)–(1.87), induction for κ_{j+1}(Z)): "2p_0(g_{j(X)}) + 2p_0(g_{j(Y)}) − 2p_0(g_{j(Z)}) ≥ 2(1 + β_0)^{−1} p_0(g_{j+1})", where j(X), j(Y), j(Z) ≤ j+1 are the scales at which large-field regions were created and j(Z) ∈ {j(X), j(Y)}. This needs p_0(g_i) ≥ (1 + β_0)^{−1} p_0(g_{j+1}) for i ≤ j+1. Since p_0 decreases in g, exact monotonicity g_i ≤ g_{j+1} gives it with room; it is a quasi-monotonicity use with slack (1 + β_0)^{−1} < 1.

Consequence for Remark 1. Both comparisons have a fixed multiplicative slack. Lemma D′ gives the one-sided control u_i ≥ u_k − D for i < k (Remark 2), with D independent of γ. Shrinking γ (only γ, not D) restores both:
- If γ^{−2} ≥ 2D, the case u_k < 2D is empty, because u_k ≥ 1/γ² on admissible trajectories.
- If u_k ≥ 2D, then g_i²/g_k² ≤ u_k/(u_k − D) ≤ 2, and log g_i^{−2} ≥ log g_k^{−2} − log 2. So p_0(g_i)/p_0(g_k) ≥ (1 − log 2/log γ^{−2})^{p_0}, which is ≥ (1 + β_0)^{−1} for γ small in terms of p_0, β_0. For A, (g_i/g_k)^{1/4} ≤ (u_k/(u_k − D))^{1/8} ≤ (1 + β_0)^{2β_0} once u_k ≥ D/(1 − (1 + β_0)^{−16β_0}) (≈ 3.8D for β_0 = 1/7), which γ^{−2} ≥ 3.8D ensures; the p_1 factor only helps since g_i ≥ g_k in this case.
So the two comparisons found survive with γ_D′ := min(γ, c(β_0, p_0)·D^{−1/2}, γ_3(β_0, p_0)), and g_1 recomputed from γ_D′. This is a sketch [proved, unverified, conditional on my OCR reading of A and B]. A comparison with zero slack (exact g_i ≤ g_k) elsewhere in the series would not survive this way; I found none in CMP 122 I–II, but the search was a grep, not a line-by-line read.

## §6 Ledger

| Item | Status |
|---|---|
| L1 (a) tail-sum bound Σ β_i ≥ −D, uniform in k, K | proved here, unverified |
| L2 (b) clamped-map shooting, IVT on [t − D, t + B′K], clamp inactive for g ≤ g_1 | proved here, unverified; matches THEOREM2_PROOF_VERIFY Point 5(b) |
| L3 (c) two-sided bound with D′ = J(B + β_∞/2), upper side without constant | proved here, unverified |
| L4 (d) literal (0.31) for K ≥ K_0 = J + ⌈8D′/β_∞⌉ with constant β_∞/8; all g ≤ γ for such K; all K if every β_j(0) > 0 | proved here, unverified (last part = Lemmas D + E, verified) |
| L5 history-dependent β (cube continuity) | stated, same proof; nested-interval variant for admissible-only histories NOT written out |
| L6 Remark 1: Theorem 1 hypothesis = (b) | proved, given the quoted statement and γ ≤ γ_Bal |
| L7 Remark 2 / §5: CMP 122 uses only g_k ≤ γ | NOT established. Two quasi-monotone comparisons found (I p. 192; II p. 386 (1.86)–(1.87)); fix by shrinking γ sketched, depends on OCR reading; other papers of the series not searched |
| L8 numerics §4 | toy model only, 30/30 pass + negative control; says nothing about Balaban's β |
| L9 J, hence g_1, D, K_0 | finite but not computable from (iii) without a rate; (iii) itself rests on Prop. 3.6 and Prop. 4.3 (THEOREM2_PROOF.md, reduced, open inputs (A), (W), (H3), (H′)) |
