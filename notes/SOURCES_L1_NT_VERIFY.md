# SOURCES_L1_NT_VERIFY — adversarial verification of SOURCES_L1_NT.md and numerics/nt_ring.py, numerics/nt_ring_check.py

Status: VERIFICATION, Opus, 2026-10-28. Ids follow IDS.md. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were excluded from every search. No existing file was edited.

## Verdict

CONFIRMED WITH CORRECTIONS. The mathematics of the four main claims holds. (1) The refutation of the order-g⁴ tree route is correct. (2) The ring values 192 and 27648 and the constants 9/π⁴ and (81/4)π^{−8} are correct; an independent Wick enumeration reproduces them. (3) The chirality rule and the vanishing of the free three-point function at separated points are correct. (4) Theorems NT-G, NT-F and NT-IV follow from their hypotheses as written. The corrections are these:
- C1. (NT4) as stated for all d ∈ [L²ε, d_1] is very probably false near d = L²ε. The remainder has no lattice-artifact term (ε/d)², and the lattice ring differs from the continuum ring by such a term. The weak form (NT4)_{d_0} and all three theorems are not affected. The same gap is in ASSEMBLY's (NT) (d ≥ Lε).
- C2. (NT4) is sufficient, not the weakest hypothesis. The theorems use only a relative remainder ≤ ½ (NT-F) or a one-sided lower bound (NT-G). The file's "Exactly one" overstates.
- C3. Prop. NT-0, n = 3: "the first nonzero term needs at least one interaction vertex" is wrong as worded. The commutator (quartic) part of the plaquette gives order-g⁸ Wick terms with no action vertex.
- C4. O4 treats the source transfer as a product Π c_j. SOURCES_VERIFY item 8(c)(ii) already corrected this: β_j depends on all preceding couplings, so the transfer is a sum over chains. The conclusion 1 + O(g_k) needs that summability hypothesis.
- C5. Minor: nt_ring_check.py runs in 11.7 s, not "under one second". The margin ranges "0.32–0.52" and "0.10–0.21" are not reproducible from the seeded script, which gives one value each (0.3211, 0.2069).

## Method

- Read SOURCES_L1_NT.md in full, both scripts, ASSEMBLY.md §0, §1.3, §1.4, §2.9, THEOREM2_PROOF_v4.md §1.3, SOURCES_VERIFY.md §8, TRUST_LEDGER.md rows R-035 and l. 104, INFINITE_VOLUME_FABLE.md §7.1(d), SOURCES.md §2.5, paper/assembly.tex thm:L014 and corr:nt.
- Rendered CMP 109 printed pp. 252, 256, 257, 258, 259 (PDF pp. 4, 8–11) at 150 dpi in /tmp/ntv_pages; read the images; deleted the folder.
- Reran both scripts on the Mac.
- Wrote an independent check (/tmp/ntv_work/indep.py, deleted after use). It does not use the 2^{n−1} cycle formula and does not use the closed-form Hessian. It writes O = Σ_{m<n}(w_mn − w_nm)² in the 16 variables w_mn = ∂_m A_n, takes the Hessian of 1/|x|² by central finite differences, and sums every perfect matching of the 2n legs with no self-contraction and a connected graph.

## 1. Refutation of the tree-level route (§3)

1.1 Lemma NT-0 — CONFIRMED. For SU(2), 1 − ½ Re Tr exp(iθ·σ/2) = 1 − cos(|θ|/2) = |θ|²/8 − |θ|⁴/384 + …, an even function of θ. So P_p has no term linear in A. With θ = gε²F + O(g²ε³), the action g^{−2}Σ_p P_p → (1/8)∫Σ_{μ<ν}|F_{μν}|² = (1/16)∫F·F, and F = 2F′ gives (1/4)∫F′·F′ and P_p = (g²ε⁴/2)Σ_a(F′^a_{μν})² + O(g³). Checked by hand. This needs unoriented plaquettes (ASSEMBLY §0 says "p over unoriented plaquettes"; CMP 109 (0.2) on p. 252 writes "p ∈ T_ε" and does not state the orientation [V, page image]). With oriented plaquettes every constant below changes by a power of 2.

1.2 Prop. NT-0, n = 4, "no order-g⁴ term; leading term is the order-g⁸ ring" — CONFIRMED. Independent count: a composite term with m legs carries g^m; an action vertex with m legs carries g^{m−2}; ghost vertices obey the same rule; the Haar-measure term adds g² to a 2-leg vertex. Four insertions of degree ≥ 2 give at least g⁸, with equality only for four quadratic insertions and no vertex. The only connected Wick graphs of four quadratic forms are 4-cycles. So the order-g⁴ statement fails at a more basic level than the file says: even the full moment S_4 starts at g⁸. Added fact: the leg count is even, so every power of g is even. The formal remainder relative to the ring is O(g²), not O(g). This agrees with the file's O4 remark.

1.3 Prop. NT-0, n = 3 — CORRECTED (C3). The order count g⁶ (ring, zero) then g⁸ is right. The words "needs at least one interaction vertex" are wrong. The plaquette contains the dimension-4 commutator pieces of F^a = dA^a + g f^{abc}A^bA^c: a cubic term of order g³ and a quartic term of order g⁴. The insertion pattern (2, 2, 4) with no action vertex is a connected order-g⁸ Wick graph. Correct wording: "the first possibly nonzero term is of order g⁸ and needs the non-abelian structure (action vertices or the commutator terms of the composite)". The conclusion of O6(b) (a nonzero order-g⁸ S_3 coefficient witnesses interaction) is unchanged, because every such term contains f^{abc}.

1.4 "S^T_4 ≠ 0 proves not Gaussian, not interacting" and the split (G)/(F) — CONFIRMED. Agrees with ASSEMBLY §2.9.

## 2. Exact ring values and constants (§4)

2.1 Script rerun — CONFIRMED. nt_ring.py (0.08 s): κ_2(|x|=1) = 192, κ_2(|x|=2) = 3/4, κ_3 = 0 at three configurations, κ_4(square) = 27648, κ_4(collinear) = 10816/27, κ_4 = 0 at the tetrahedron and at (e_0, …, e_3), κ_4(two pairs at distance 10) = 19589798592/40648594140625 ≈ 4.819·10^{−4}. nt_ring_check.py (11.7 s): brute force = formula for n = 2, 3, 4 to six decimals; 0 nonzero κ_3 among random configurations; κ_4: 7 positive, 0 zero, 33 negative; ⟨F^+F^+⟩ = ⟨F^−F^−⟩ = 0.0, ⟨F^+F^−⟩ ≠ 0; margins 0.7716, 0.3211, 0.2069.

2.2 Code review of nt_ring.py — CONFIRMED. d2G is the Hessian of 1/|x|²: −2δ_{mr}/s² + 8x_m x_r/s³ with s = |x|². D = −[∂_m∂_r G δ_ns − ∂_m∂_s G δ_nr − ∂_n∂_r G δ_ms + ∂_n∂_s G δ_mr] is ⟨F_mn(x)F_rs(0)⟩ for ⟨A_n A_s⟩ = δ_ns G (the minus sign comes from the derivative at the second point). D(−x) = D(x) and D is symmetric, so the orientation of the cycle does not matter.

2.3 Wick/Isserlis combinatorics, checked independently — CONFIRMED. From log E e^{Σt_iQ_i} = −½ log det(1 − 2CΣt_iM_i) = ½Σ_m (2^m/m) tr((CΣt_iM_i)^m), the coefficient of t_1⋯t_n is ½·(2^n/n)·n·Σ_{(n−1)! orderings fixing 1} tr(M_1C⋯) = 2^{n−1}Σ_{orderings} tr(⋯). Only off-diagonal blocks C_ij enter, so the singular coincident-point blocks never appear. The independent enumeration counts 2, 8, 48 connected matchings for n = 2, 3, 4, which equals 2^{n−1}(n−1)!. Its values (finite-difference Hessian, step 10^{−3}): κ_2 = 192.0015, κ_3 = −0.004 and 0.000 (noise level), κ_4(square) = 27648.42, κ_4(collinear) = 400.597 (exact 400.593), κ_4(tetrahedron) = κ_4(e_0..e_3) = 0.000. Agreement is within the finite-difference error (~10^{−5} relative).

2.4 Constants — CONFIRMED. G = 1/(4π²|x|²) is the 4-dimensional Green function. Colors are independent in the free theory, so the joint cumulants of Σ_a O^a are 3κ_n. Smeared field Σ_p f(x_p)φ_p → (g²/2)∫fΣ_aO^a (unoriented plaquettes, six planes, density ε^{−4}; S_{n,ε} has no ε⁴ weight, so the ε powers cancel). S_2: (1/4)·3·192/(16π⁴) = 9/π⁴ = 0.0923938. S^T_4 at the square of side d: (1/16)·3·27648/(256π⁸) = 81/4·π^{−8} = 0.00213416, times g⁸d^{−16}. Both computed numerically to 16 digits. Caveats that stay: Gaussian level only; continuum kernel at separated points; unoriented plaquettes (1.1).

2.5 Corollary NT-3′ — CONFIRMED (continuity of κ_4 off the diagonals; scaling T_4(F_{d,θ}) = d^{−16}T_4(F_{1,θ}) checked by change of variables). Margin numbers — CORRECTED (C5): reproducible values are single numbers; the "ranges" are not produced by the script. They are not used in any proof.

## 3. Chirality rule (Lemma NT-2)

3.1 (a) — CONFIRMED. In Euclidean R⁴, ⋆ is symmetric on Λ² with ⋆² = 1, so Λ^± are orthogonal and F·F = F⁺·F⁺ + F⁻·F⁻.

3.2 (b) — CONFIRMED. T(k) is SO(4)-equivariant and quadratic in k, so it lies in Sym²(1/2,1/2) = (0,0) ⊕ (1,1) (spin labels). The Λ^+ ⊗ Λ^+ symmetric block lies in Sym²(1,0) = (0,0) ⊕ (2,0). Schur's lemma leaves only (0,0): the block is c k²P_+, so ⟨F^+F^+⟩(k) = cP_+, a contact term. Same for Λ^−. The file's labels "(2,0)" and "(1,1)" are spin labels; they are consistent.

3.3 (c) — CONFIRMED. Each propagator flips chirality, each vertex keeps it, so odd rings vanish. The free κ_3 of every color combination vanishes (cross-color cumulants are zero by independence). Exact zeros in nt_ring.py, 0/40 random configurations in nt_ring_check.py (b), and κ_3 ≈ 0 in the independent enumeration. Scope: continuum free field. The lattice free field breaks the rule by lattice artifacts that vanish as ε/d → 0; the file does not say this, but it does not use the lattice statement.

## 4. Hypothesis (NT4) and Theorems NT-G, NT-F, NT-IV (§5)

4.1 Definition of S^T_4 — CONFIRMED. For centred variables the fourth joint cumulant is E[abcd] − E[ab]E[cd] − E[ac]E[bd] − E[ad]E[bc]. f_i⊗f_j ∈ D_2 for disjoint supports.

4.2 Statement of (NT4) — CORRECTED (C1). The leading term uses the continuum kernel κ_4. On the lattice, the free ring and the Riemann sum over plaquette centres differ from the continuum by relative O((ε/d)²) (smooth ρ, support width θ_*d). At d = L²ε this is O(L^{−4}), a fixed number not small in g. The remainder C_4g_k⁸(g_k + (d/ℓ)²) does not contain it. So (NT4) "for all d with L²ε ≤ d ≤ d_1" is very probably false at the lower end, for every C_4, once g_k is small. Repair: either add C_4(ε/d)² inside the bracket, or quantify as "for every d ∈ ]0, d_1] and K ≥ K_0(d)". All three theorems use d fixed and K → ∞, so both repairs leave them intact. ASSEMBLY's (NT) (d ≥ Lε, remainder g² + (d/ℓ)²) has the same gap.

4.3 Comment (ii) of (NT4) — CONFIRMED as [I]. u_{k+1} − u_k = −β_{k+1} with |β| ≤ M_β (R-040), so g_k² changes by a factor 1 + O(g_k²) over a bounded number of layers; pair distances in [3d/4, √2·d] ⊂ [3d/4, 2d].

4.4 Theorem NT-G — CONFIRMED given (NT4)_{d_0}, with one caveat.
- Step (1): 3·(1/16)·(4π²)^{−4}·½·27648 = 41472/(16·256)·π^{−8} = (81/8)π^{−8}. Checked.
- Step (2): g_k ≤ γ by L-001 (b) (THEOREM2_PROOF_v4 §1.3: g_k ∈ ]0, γ] for 0 ≤ k ≤ K, g_K = g [V, file]). Error ≤ (81/16)π^{−8}g_k⁸d_0^{−16} under the stated condition. Checked.
- Step (3): indexing checked. ASSEMBLY §0: g_0 is the bare coupling, g_K = g the unit-scale coupling, ε = L^{−K}. So u_K = 1/g² and (c′) with m = k, n = K gives u_k ≤ 1/g² + B′(K − k). d_0 < L^{k+1−K} gives K − k < 1 + log_L(1/d_0). Checked.
- Step (4): S^T_{4,ε} is a polynomial in four values that converge along the L-013 (a) subsequence. Checked.
- Step (5): Isserlis for a centred Gaussian family. Checked.
- Caveat: the condition C_4(γ + (d_0/ℓ)²) ≤ (81/16)π^{−8} is an extra smallness condition. If C_4 grows when γ shrinks, it may not be attainable. Under the relative form (NT4w) of §6 below the condition disappears.

4.5 Theorem NT-F — CONFIRMED given (NT4) in the repaired form of 4.2. Upper side: |lead| ≤ (3/16)(4π²)^{−4}T_4(F_1)g_k⁸d^{−16}; L^kε ≤ d gives K − k ≥ log_L(1/d); (c′) lower side gives u_k ≥ 1/g² + β log_L(1/d) − D′. Both envelopes decay as (log 1/d)^{−4}, so a d-independent value of d^{16}S^T_4(F_d) is excluded whether it is zero or not. The free composite λΣ_aO^a gives 3λ⁴(4π²)^{−4}T_4(F_1), independent of d. Checked. The scope remark (only scale-covariant composites excluded) is correct and matches L-014 (ii).

4.6 Theorem NT-IV — CONFIRMED as conditional logic. It also rests on INFINITE_VOLUME_IV12 (IV-1, unverified, B106) for the ℓ-free B′, and on L-196 itself, whose status is set by the FABLE verifiers (FABLE_HARD verifier item (2) concerns uniformity in K for Theorem IV). The file states the IV-1 dependence.

4.7 "(NT4) is the weakest hypothesis" / "Exactly one" (§6 last paragraph) — CORRECTED (C2). (NT4) is sufficient, not weakest. NT-G uses only the one-sided bound S^T_{4,ε}(F_{d_0}) ≥ c_0 > 0 for K ≥ K_0. NT-F uses only a two-sided bound with relative error ≤ ½. Neither uses the rate g_k + (d/ℓ)². The rate matters only for the perturbative motivation. See §6 for the weakest statements.

## 5. Obstruction analysis (§2, §6)

5.1 Balaban quotes — CONFIRMED [V, page images]. p. 252 (0.2) verbatim, "tr is the normalized trace, i.e. tr 1 = 1". p. 256 (0.20), (0.22), (0.23) verbatim; K defined by ε = L^{−K}. p. 257 (0.24), (0.25) |E^{(j)}(X,U)| ≤ E_0 exp(−κd_j(X)). p. 258: expansion "in H up to the fifth order", "with a help of Ward-Takahashi identities", (0.28), (0.29) |V^{(j)}(X,U_k)| ≤ O(1)(L^jη)^{4+α}exp(−κd_j(X)), α > 0. p. 259 Theorem 1 verbatim; Theorem 2 (0.31) verbatim; "A proof of this theorem … will be given in a separate paper". Small-field domain on p. 259: |∂U_k(V) − 1| < ε_0η², with ε_0 independent of g.

5.2 O1 (no lower bound in the chain) — CONFIRMED. S_n ≡ 0 (n ≥ 1), S_0 = 1 satisfies OS0–OS3 of L-013 (b); OS2 reduces to |F_0|² ≥ 0.

5.3 O2 ((0.25), (0.29) carry no small factor in g) — CONFIRMED for the printed bounds: E_0 and O(1) have no g-dependence and no sign. The statement that the missing smallness comes from a Cauchy estimate in the fluctuation field (size g_k) inside the ε_0 domain is a reasonable reading [I], not checked.

5.4 O3 (needs R-035 with four sources) — CONFIRMED. TRUST_LEDGER row R-035: "open as a whole". Correlations of φ_p are derivatives of the sourced functional in a local inverse bare coupling (P_p = −∂/∂u_0(p) of the log weight). No verified file gives a leading term with a lower bound.

5.5 O4 (transfer; evenness of β_j) — CORRECTED (C4). The formula c_j = 1 + ½g_j³β′_{j+1}(g_j) and the sums Σ_{j<k}g_j³ = O(g_k), Σ_{j<k}g_j⁴ = O(g_k²) are correct (u_j ≥ u_k + β(k − j) − D′). But SOURCES_VERIFY §8 (c)(ii) [V, file] states that β_j depends on all preceding couplings (CMP 109 p. 298), so ∂u_k/∂u_0 is a sum over chains, not Π c_j. The bound 1 + O(g_k) needs Σ_{i<j}|∂β_j/∂u_i| summable, which must be stated. On evenness: the lattice measure depends on g_0 only through g_0^{−2}, and formal perturbation theory has only even powers (1.2). This does not prove β′_j(g) = O(g), because β_j is defined through Balaban's construction, which contains g-dependent cutoffs. The file's [N] stays.

5.6 O5 (Theorem IV needs a local, ℓ-uniform form of FX Step B) — CONFIRMED as [I]. "Strictly stronger" is not proved; "stronger" is correct by definition.

5.7 O6 — (a) CONFIRMED. (b) CONFIRMED with the wording fix C3. (c) CONFIRMED.

5.8 §1 file citations — CONFIRMED. ASSEMBLY §1.4, §2.9, §3 row B-NT; SOURCES.md §2.5 (l. 151); TRUST_LEDGER l. 104; paper/assembly.tex thm:L014 and corr:nt; INFINITE_VOLUME_FABLE §7.1(d) (l. 193) — each quote matches the file.

## 6. Grade table

| Claim (SOURCES_L1_NT) | Grade |
|---|---|
| §1 file status of (NT) | CONFIRMED |
| §2 Balaban quotes, CMP 109 pp. 252, 256–259 | CONFIRMED |
| §2 (a)–(c) printed inputs give no coefficient-level lower bound | CONFIRMED |
| Lemma NT-0 (no linear term; P_p = (g²ε⁴/2)Σ(F′)² + O(g³)) | CONFIRMED (unoriented plaquettes) |
| Prop. NT-0, n = 4: no order-g⁴ term; leading term is the g⁸ ring | CONFIRMED |
| Prop. NT-0, n = 3: g⁸ term "needs an interaction vertex" | CORRECTED (C3) |
| Lemma NT-1 (2^{n−1} cycle formula) | CONFIRMED (independent enumeration) |
| Lemma NT-2 (chirality rule, free S_3 ≡ 0 off diagonals) | CONFIRMED |
| Lemma NT-3 values (192, 3/4, 27648, 10816/27, zeros, signs 7/33, 4.8·10^{−4}) | CONFIRMED |
| c = 9/π⁴; (81/4)π^{−8}g⁸d^{−16} | CONFIRMED (Gaussian level, unoriented plaquettes) |
| Corollary NT-3′ | CONFIRMED; margin ranges CORRECTED (C5) |
| "under one second each" | CORRECTED: nt_ring_check.py takes 11.7 s |
| (NT4) as stated on [L²ε, d_1] | CORRECTED (C1) |
| (NT4) comment (ii) | CONFIRMED [I] |
| Theorem NT-G given (NT4)_{d_0} | CONFIRMED (smallness-condition caveat 4.4) |
| Theorem NT-F given (NT4) | CONFIRMED given the C1 repair |
| Theorem NT-IV given (NT4-ℓ) | CONFIRMED as conditional logic; also rests on IV-1 (B106) and L-196 |
| "Exactly one" extra hypothesis; (NT4) weakest | CORRECTED (C2) |
| O1, O2, O3 | CONFIRMED (O2 Cauchy-estimate reading [I]) |
| O4 transfer 1 + O(g_k) | CORRECTED (C4): chain sum, needs summability |
| O4 evenness of β_j | UNSUPPORTED either way; stays [N] |
| O5 | CONFIRMED [I]; "strictly" UNSUPPORTED |
| O6 (a)–(c) | CONFIRMED |
| §7 proposed ledger status | CONFIRMED |

## 7. Proposed ledger status and exact statement of (NT4)

Status of (NT) = H-081 (B-NT) / H-101 (E14-f): OPEN, unchanged in kind. Not needed for Target 1 or Target 2; TRUST_LEDGER l. 104 stays true. Additions, verified with corrections:
- c = 9/π⁴ in ASSEMBLY's (NT), Balaban normalization (exp(−g^{−2}A), normalized trace, unoriented plaquettes), Gaussian level.
- ASSEMBLY's (NT) also needs the lattice-artifact repair of C1 (add (ε/d)², or quantify K ≥ K_0(d)).
- New hypothesis (NT4) (next free H- id), owned by H-101 (E14-f) extended to four sources, behind R-035 (B-S): OPEN.
- Theorems NT-G and NT-F: proved given (NT4), verified. Theorem NT-IV: proved given (NT4-ℓ) and IV-1, verified as conditional logic.
- Refutation recorded: S^T_4 has no order-g⁴ term; the leading term is the free order-g⁸ ring; S^T_4 ≠ 0 proves "not Gaussian", not "interacting". Free Maxwell composites have S_3 ≡ 0 at separated points.

Exact statement (repaired). Notation as in SOURCES_L1_NT §5: Q the unit square, ρ, θ_* with T_4(F_{1,θ_*}) ≥ ½·27648, F_d := F_{d,θ_*}, Lead(d) := 3(g_{k(d)}²/2)⁴(4π²)^{−4}T_4(F_d) = 3(g_{k(d)}²/2)⁴(4π²)^{−4}T_4(F_{1,θ_*})d^{−16}.

(NT4). There are C_4 < ∞ and d_1 ∈ ]0, 1], and for each d ∈ ]0, d_1] a K_0(d), such that for all g ∈ ]0, g_1], all d ∈ ]0, d_1] and all K ≥ K_0(d):
  | S^T_{4,ε}(F_d) − Lead(d) | ≤ C_4 g_{k(d)}⁸ (g_{k(d)} + (d/ℓ)²) d^{−16},  ε = L^{−K}.
(Equivalent alternative: all d with L²ε ≤ d ≤ d_1, with (ε/d)² added inside the bracket.) (NT4)_{d_0}: the same at the single d = d_0. (NT4-ℓ): (NT4)_{d_0} with C_4, K_0 independent of the even side ℓ > ℓ_0, along the ℓ-free trajectory of IV-1.

Weakest forms that give the theorems (sufficient, and each is used in full by its proof):
- (NT4w-G) for NT-G: there are d_0 > 0, c_0 > 0, K_0 with S^T_{4,ε}(F_{d_0}) ≥ c_0 for all K ≥ K_0. The explicit bound (81/16)π^{−8}(1/g² + B′(1 + log_L(1/d_0)))^{−4}d_0^{−16} needs S^T_{4,ε}(F_{d_0}) ≥ ½Lead(d_0).
- (NT4w-F) for NT-F: for every d ∈ ]0, d_1] and K ≥ K_0(d), ½Lead(d) ≤ S^T_{4,ε}(F_d) ≤ (3/2)Lead(d). No rate and no smallness condition on γ are needed.

## 8. Report

SOURCES_L1_NT is CONFIRMED WITH CORRECTIONS. Reruns and an independent Wick enumeration (finite-difference Hessian, all matchings) reproduce κ_2 = 192 and κ_4(square) = 27648; c = 9/π⁴ and (81/4)π^{−8}g⁸d^{−16} hold at Gaussian level with unoriented plaquettes. The order-g⁴ refutation and the chirality rule hold. NT-G, NT-F, NT-IV follow from their hypotheses. Corrections: (NT4) on [L²ε, d_1] lacks a lattice-artifact term (ε/d)² (ASSEMBLY's (NT) too); repair by K ≥ K_0(d). (NT4) is sufficient, not weakest; relative error ≤ ½ suffices. The S_3 "interaction vertex" wording is wrong. The O4 transfer is a chain sum (SOURCES_VERIFY 8(c)(ii)). Status of (NT): OPEN; (NT4): new OPEN hypothesis behind R-035.
