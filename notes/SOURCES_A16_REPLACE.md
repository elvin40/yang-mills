IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_A16_REPLACE — TRUST_LEDGER row A16 (propagator replacement, CMP 116 p. 3)

Date 2026-10-28. Ledger tags: [P] proved here, [V] verified elsewhere (file named), [I] reading/interpretation, [R] reduction to a printed Balaban statement or sketch.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

Plan: §1 Balaban's sentence (page image). §2 what D2/D3R/D3W8 use about C_f. §3 property-by-property discharge. §4 verdict.

## §1 What Balaban's sentence licenses (CMP 116 pp. 2–3, page image read at 300 dpi)

Source: CMP 116 p. 2 (1.2)–(1.4) and p. 3 first paragraph, (1.5)–(1.7). [15] = CMP 102 "The variational problem and background fields…" (CMP 109 ref. list 15); [13] = CMP 99 "Propagators for lattice gauge theories in a background field".

Verbatim (p. 3): "In these equations we can replace the propagators by arbitrary operators having the same regularity properties and satisfying the same bounds. Only these bounds were important in the analysis of Sect. C, E [15], hence the solutions D, A_0 can be considered as functionals of these operators, having all the properties proved in [15]: D(A′) = D(H, A′), A_0 = A_0(H, G̃, H_0 B′). (1.5)"

The equations ("these equations") are, p. 2:
- (1.2) H_k(B′) = H_0 B′ + A_0 − H D(H_0 B′ + A_0) — the background field (minimizer) as a function of B′.
- (1.3) D(A′) = C(A′ − H D(A′)) — the linearizing transformation. C here is a LOCAL analytic map (the text says (1.3)–(1.4) "are determined by local, analytic functions, and nonlocal propagators H, H_0, G̃"). So C in (1.3) is NOT a covariance and NOT replaced.
- (1.4) A_0 + G̃((δ/δA′)V)(H_0 B′ + A_0) = 0 — the minimizer correction; V from (80) [15], nonlinear, nonlocal through H and D.

(a) Which operators. Exactly three: H, H_0, G̃ (the "nonlocal propagators" of (1.3)–(1.4)). [P: read]
(b) Which bounds. Balaban does not list them on p. 3. He points to "the analysis of Sect. C, E [15]" and then (p. 3, (1.6)–(1.7)) to the walk expansion (3.107) [13] with the bound (3.108) [13]: each walk term is O(1)·O(M_1^{-1/2})^{|ω|}·M_1^{-1/2|ω|}·exp(−δ_0 d(ω,y,y′)), "for all operator norms in formulations of theorems in [13], e.g. in Theorem 3.1"; each factor depends on U restricted to X̃_j^5 and has kernel vanishing in a (1/3)M_1-neighbourhood of ∂X_j. Reading [I]: "same regularity" = analytic dependence on (U, J) in the same complex domain; "same bounds" = the operator-norm / exponential-decay bounds of CMP 99 Thm 3.1 used as inputs in CMP 102 Sects. C, E (the contraction-mapping estimates for (1.3), (1.4)).
(c) Where used. Immediately below (p. 3): s-dependent propagators H(s), G̃(s), H_0(s) are formed by multiplying each walk term by Π s(Δ) over cubes Δ ∈ σ_0 met by the walk; they coincide with the originals at s = 1. The replacement license is what makes D(H(s), ·), A_0(H(s), G̃(s), ·) well defined and bounded for complex s, which feeds the decoupling / cluster expansion of CMP 116 Sect. 1 (bounds (1.8) ff.). [P: read]

Scope limits (load-bearing for §3):
- The license is for solutions of DETERMINISTIC fixed-point equations (Sect. C, E [15]): contraction arguments using norm bounds only.
- It says nothing about Gaussian measures, covariances, positivity, or determinants. A replaced operator need not be positive or symmetric. The s-interpolated H(s) at complex s is neither.
- So a use of the license for "dμ_{C}" with C replaced is NOT covered by the printed text. That is the content of A16's [I] extension.

## §2a What D2 uses about C_f (SOURCES_D2.md §3.2–§3.4, §6.2–§6.3)

D2 cites CMP 116 p. 3 at three places. Only the third is the sentence of A16.
- §3.2 (P): cites p. 3 for "(1.7) holds for all operator norms in … Theorem 3.1 [13]". That is the printed walk bound for Balaban's own C_0 = C^{(k)} = (C^*Δ^{(k)}C)^{−1}. It is A1/A1w, not A16.
- §6.2: cites p. 3 for "each factor in (1.6) depends on U restricted to X_j". Locality of Balaban's walk factors. Printed. Not A16.
- §6.3: cites the sentence "we can replace the propagators by arbitrary operators…" for the claim "the step is a holomorphic map of its inputs on the E_0 → 2E_0 ball". This is (W4) of B20. It is a use of A16 for INPUTS (activities), not for C_f. B20 now books (W4) as [R] to printed (C1)–(C5) via Theorem SM. Checked in §2c below.

Properties of C_f that D2 itself states and proves (Lemma 3.1, [proved, given (P)], CONFIRMED in D2_VERIFY):
- (L-i) existence and Neumann series C_f = Σ_n C_0(g_k²𝒲C_0)^n, for τ := g_k²w_0 r c_1 ≤ ½.
- (L-ii) ‖C_f‖_δ ≤ 2c_1, ‖C_f − C_0‖_δ ≤ 2c_1τ; pointwise decay rate δ_0/2.
- (L-iii) the same for ∂_L C_f ∂_R, ∂ ∈ {1, first-order, the special second-order operators of CMP 109 (1.8)}.
- (L-iv) real f: C_f^{−1} ≥ (1 − τ)C_0^{−1} > 0 (positivity, Gaussian measure exists).
- (L-v) holomorphy in (U, J) on Balaban's complex domain and in complex f|_X.
- (L-vi) generalized walk expansion: Balaban's (1.6) for each C_0 factor, 𝒲 = extra local step of weight ≤ g_k²w_0 r.
- (L-vii) normalization det(1 − g_k²C_0^{1/2}𝒲C_0^{1/2})^{−1/2} as a closed-walk series (§3.4).
Input to all of these: (P) for C_0 only, i.e. A1/A1w (and A10 for complex U). No A16.

Where the C_f object is then USED with "Balaban's machinery" (the point of A16): §3.4 says "every bound on the fluctuation propagator that Balaban's Sect. 3–4 and CMP 116 use holds for C_f". The claim that Balaban's cluster expansion then runs with C_f in place of C_0 is the analogy. D2's main route (2.b) does not need it ("Balaban's measure dμ_{C^{(k)}} is untouched", §3); C_f is used in route (b′), in §4 (frozen comparison), §7 (derivative bounds), and in D3R (P8) / D3W8.

## §2b What D3R (P8) and D3W8 use about C_f

D3R §2.3 (P8): the quadratic source part ½g_k²⟨B′, 𝒱_fB′⟩ "changes the covariance by 1 + O(γ²r) and is absorbed by D2 Lemma 3.1"; D3R_VERIFY item 2: this is a covariance change C^{(k)} → C_f^{(k)} in (3.27) at every s, t, not a P^{(k)}-class vertex. D3R needs: Z_{s,t} bounded away from 0, the localized expansion converges uniformly in t, large-field factors survive.
D3W8 §1.1–§1.4 makes it explicit: C_f^{(k)} := (C_0^{−1} − g_k²𝒲_S)^{−1}, 𝒲_S := C^*𝒱_SC, and lists what the cluster expansion of CMP 116 / CMP 119 pp. 275–279 uses: (G1) exponential decay of the covariance and operators built from it, with s(Δ) inserted in the walk expansion (CMP 116 (1.6)–(1.7)); (G2) analyticity in (U, J); (G3) uniform upper bound (moments, χ_k tails); (G4) normalization / determinant as closed walks. §1.3 is tagged [reduced to (P) and the CMP 116 p. 3 replacement principle]. §1.4 (large-field domination) is proved directly and does not cite A16.

## §2c Consolidated list: what the project uses about C_f

Sourced objects (Z_0-localized, as CMP 116 Sect. 2 needs them; the project wrote only the whole-volume form):
 A_Z^f := A_Z − g_k²𝒲_Z, 𝒲_Z := 1_{Z_0}𝒲_S1_{Z_0} on V_red(Z_0); C_f(Z_0) := (A_Z^f)^{−1}. At Z_0 = whole region this is D3W8's C_f^{(k)}, since A_exp = C^*Δ^{(k)}C (WC_FULL 0.7, PF5).
Properties used (each labelled for §3):
 Q1 Existence and positivity at real points: real U, J = 0, real f ⇒ A_Z^f real symmetric, ≥ c > 0 (D2 L-iv; D3W8 1.4).
 Q2 Walk expansion with locality (L1)–(L2) and per-walk bounds of the WC(ii) / CMP 116 (1.6)–(1.7) form, rate halved; s(Δ)-insertion per cube met (D2 L-vi; D3W8 1.2(d), (G1)).
 Q3 Bounds on ∂_L C_f ∂_R for the operators of CMP 109 (1.8) (D2 L-iii; D3W8 1.2(c)).
 Q4 Analyticity in (U, J) on the α′-domain and in complex f|_X, with the same bounds (D2 L-v; D3W8 1.2(e)–(f), (G2)). Derivatives in the background follow by Cauchy from Q4.
 Q5 Uniform norm bound ‖C_f‖ ≤ const (G3), used also as α_5‖C(Z_0,0)‖ < ½ (CMP 116 p. 17).
 Q6 Determinant / normalization ratio as a closed-walk series (D2 §3.4; D3W8 (G4)).
 Q7 Square root (C_f)^{1/2} with a walk expansion: needed by CMP 116 (2.6)–(2.8) (change of variables B′ = (C^{(k)})^{1/2}X, Γ_k contains (C^{(k)})^{1/2}(σ)). Not listed by D2/D3W8. Missing from their lists. [I: read on CMP 116 pp. 12–13]
 Q8 The "perturbative argument" of CMP 116 pp. 15–17 (A8 row): σ-truncation small (Lemma D), modulus bound by a positive Gaussian with precision H(K_σ) and determinant ratio (Lemma P). Not listed by D2/D3W8. Missing from their lists.
 Q9 Gaussian conditioning on Z_0^c, CMP 116 (2.5): exact algebra for the quadratic form ⟨B, A_exp^fB⟩.
 Q10 t-measure facts (D3W8 1.1, 1.3): C_f independent of the interpolation parameters s, t of (3.26); for the (3.30) family τ → t²τ.
 Q11 Large-field domination (D3W8 1.4): (1 + τ)^{−1}C_0 ≤ C_f ≤ (1 − τ)^{−1}C_0, density bound on the marginal region (D3W8_VERIFY S9 fix).
Not a bound, not provided, must not be used: Euclidean (lattice-symmetry) covariance of C_f fails for non-constant f. CMP 119 uses covariance of the effective action ((3.39), (3.58)) for renormalization; the sourced chain handles the relevant terms by frozen constant-c theories (D2 §4, D2C), which are translation invariant. [I: no use of C_f's covariance found in D2/D3R/D3W8]

## §3 Property-by-property discharge

### 3.0 Setting and the smallness conditions [P]
Inputs used: Theorem WC (i)–(iv) (WC_FULL 0.10; [P] relative to its R1–R4, C1–C2, I1–I9); A1_WALK_FULL §1 (L1)–(L2), (B1)–(B2) and the sum lemma (l. 67); WG_FULL §3 Lemma C (concatenation) [P]; SOURCES_A8_POS Lemma S, Lemma D (with its verify correction D ≥ M/2), Lemma P; D2 Lemma 3.1 [P given (P)]; D3W8 §1.1, §1.4.
Source kernel. 𝒲_S = C^*𝒱_SC is a finite-range symmetric kernel (range R_W ≤ c(d)L, C has unit range ≤ 2L, WC 0.6), analytic in (U, f) (D2 §2.3, D2 Lemma 3.1 (v); this is a D2 input, not an A16 item). Split 𝒲_Z = Σ_□ 𝒲_□ over M_1-cubes □ by assigning each plaquette term to the cube of its base point. 𝒲_□ has kernel in □ × □ widened by R_W; with □⁺ the enlarged cube of A1_WALK_FULL §2.1 (margin K_0M_1 ≥ 2M_1, l. 90), 𝒲_□ satisfies (L1) (band ⅓M_1) and (L2) for the domain □⁺. So each 𝒲_□ is a one-domain "local block" in the sense of Lemma C.
Constants. Put τ_2 := sup g_k²‖𝒲_Z‖_{ℓ²→ℓ²} over the complex (U, f) domain, b_W := sup_□ sup_{x,y} g_k²|𝒲_□(x, y)|·(2R_W + 1)^d dim𝔤, and ρ_* := c_1ρ (the per-domain factor of WC(ii)). Conditions:
 (A16-a) τ_2 ≤ γ_exp/4;
 (A16-b) q_W := (8/γ_exp)·c_1(θδ)²·b_W·C_𝒟 ≤ ρ_*² e^{−2·3^dκ_1}.
Both are O(γ²r) ≤ fixed constants. The canon fixes γ at B30 and r_0 at B32 after d, L, κ_1, M_1, M, γ_exp, ρ, c_1, ε (SOURCES_ORDER_CANON B5–B33). So (A16-a), (A16-b) hold by shrinking r_0 at B32. [P; must be added to B32 — see §4]
Define A_Z^f := A_Z − g_k²𝒲_Z and C_f(Z_0) := (A_Z^f)^{−1}.

### 3.1 Q1 positivity, Q5 norm bound [P from WC(i) + Lemma S]
Real U, J = 0, real f: A_Z is real symmetric (A8 Lemma S, modulo A8 I-a) and ≥ γ_exp (WC(i)). 𝒲_Z is real symmetric (𝒱_S is the symmetric representative of a real quadratic form; same convention A8 I-a). So A_Z^f is real symmetric and ⟨u, A_Z^fu⟩ ≥ (γ_exp − τ_2)‖u‖² ≥ ¾γ_exp‖u‖². Hence dμ_{C_f(Z_0)} is a positive normalized Gaussian and ‖C_f(Z_0)‖ ≤ 4/(3γ_exp). Complex (U_c, f) on the α′ × S_r domain: Re⟨u, A_Z^f u⟩ ≥ (½γ_exp − τ_2)‖u‖² ≥ ¼γ_exp‖u‖² by WC(iii). So ‖C_f(Z_0)‖ ≤ 4/γ_exp. This is Q5, and Balaban's p. 17 condition α_5‖C(Z_0,0)‖ < ½ holds for α_5 ≤ γ_exp/8 (after Q8 for σ ≡ 0). Status: (a) for the sentence of D3W8 1.2(a); now (b) directly. Whole volume: Q11's two-sided form bound is the same computation with C_0 = A^{−1} (D3W8_VERIFY S9) — (b).

### 3.2 Q2 walk expansion with s-insertion [P from WC(ii)–(iii) + Lemma C]
Neumann: by (A16-a), ‖g_k²𝒲_ZA_Z^{−1}‖ ≤ τ_2·(2/γ_exp) ≤ ½ (complex) so
 C_f(Z_0) = Σ_{n≥0} A_Z^{−1}(g_k²𝒲_ZA_Z^{−1})^n,
absolutely convergent in operator norm. Expand every A_Z^{−1} by WC(ii)/(iii) and every 𝒲_Z = Σ_□𝒲_□. A composite walk is Ω = (ω_0, □_1, ω_1, …, □_n, ω_n); its term T_Ω = T_{ω_0}g²𝒲_{□_1}T_{ω_1}···T_{ω_n} is an ordered product of blocks. Its domain list is the concatenation; each block has (L1)–(L2) (WC(ii); 3.0 for 𝒲_□). Lemma C gives: T_Ω vanishes unless consecutive domain lists meet; T_Ω depends on U and f only on ∪X̃^5 of its domains; and
 |T_Ω(b, b′)| ≤ (8/γ_exp)^{n+1}(c_1(θδ)²b_W)^n ρ_*^{Σ|ω_i|} m(b, b′) e^{−(1−θ)½ε″d(Ω, b, b′)}.
Each insertion adds two domains (□_i⁺ and X_0 of ω_i) that carry no ρ_* in WC's count. (A16-b) supplies ρ_*² for them, with e^{2·3^dκ_1} to spare for the s-weights. So |T_Ω| ≤ (8/γ_exp)ρ_*^{|Ω|}e^{−2·3^dκ_1·n}·m·e^{−(1−θ)½ε″d(Ω)}: the WC(ii) form with prefactor unchanged, rate ½ε″ → (1−θ)½ε″ (θ = ½: D2's halving), per-domain factor ρ_*. Count (B2): the next pair after a domain X is either a WC pair (≤ C) or a cube □⁺ meeting X (≤ C_𝒟, already inside q_W). So the sum lemma (A1_WALK_FULL l. 67) gives absolute convergence. s-insertion: multiply T_Ω by Π s(Δ) over σ_0-cubes met by dom(Ω), exactly Balaban's p. 3 rule; |Π s(Δ)| ≤ e^{κ_1·#cubes} is paid by ρ_* per domain as for WC walks (each domain of diameter ≤ c′M_1 meets ≤ 3^d cubes of σ_0) and by e^{−2·3^dκ_1} per insertion. CMP 116 p. 13 form: 𝒲_Z lives in Z_0 ⊂ X_0 (X̃_0^5 = Z̃_0, M > 10M_1), so all □⁺ meet only Z̃_0 and no new domain appears at distance > ⅔M from Z_0. Status: D3W8 1.2(d) claimed this via p. 3; now (b) directly.

Constant note to 3.0: Lemma C needs a block bound of the form b·m·e^{−δd}; for 𝒲_□ the kernel vanishes for |x − y| > R_W, so b_W must carry the factor e^{δR_W}. Read b_W with this factor. Still O(γ²r).

### 3.3 Q3 derivative operators, Q4 analyticity [P]
Q3. D2 Lemma 3.1 (iii) proves ‖∂_LC_f∂_R − ∂_LC_0∂_R‖_δ ≤ 2c_1τ given (P) for C_0 only. (P) for C_0: for the local operators of CMP 109 (1.8) (range ≤ c(d), norm ≤ c(d)), apply them to the walks of WC(ii)–(iii); each walk keeps (L1)–(L2) after widening its end domains by the range, and the bound changes by c(d)²e^{2δ c(d)}. For H_1 (also in D2's list) the input is WG_FULL / A1-W, not A16. So Q3 is (b), with the H_1 part routed to rows A1w/A2 (WC 0.9 inputs).
Q4. Every term of the 3.2 series is analytic in (U_c, J) on the α′-domain (WC(iii)) and in f|_X (𝒲_S analytic, D2 input). The series converges uniformly there (3.2 bound). So C_f(Z_0) and every T_Ω are analytic, with the 3.2 bounds. Derivatives in the background (U or f): Cauchy on a fixed fraction of the domain radius; this costs a fixed factor per derivative and is how Balaban uses analyticity. (b).

### 3.4 Q6 determinant / normalization [P]
log det(A_Z^fA_Z^{−1}) = log det(1 − g²𝒲_ZA_Z^{−1}) = −Σ_{n≥1} n^{−1} tr(g²𝒲_ZA_Z^{−1})^n, convergent since ‖g²𝒲_ZA_Z^{−1}‖ ≤ ½ (3.2). Expand as in 3.2: each trace is a sum of closed composite walks with n ≥ 1 insertions; Lemma C localizes each with weight ≤ (q_W)^n. U = 1 value → W_{k+1}, remainder → E^{(k+1)} (D2 §3.4 route). (b). The Z_0-version is what CMP 116 (2.15), (2.17), (2.24) need: |det(C_f(Z_0,σ)^{−1})/det(H(K_σ^f))|^{1/2} is Lemma P (d) with A → A^f (3.6).

### 3.5 Q7 square root [P from WC(iv)]
CMP 116 (2.7): (C^{(k)})^{1/2} = π^{−1}∫_0^∞dx x^{−1/2}(x + C^*Δ_kC)^{−1}, then walk expansion of the resolvent. Sourced: (x + A_Z^f)^{−1} = Σ_n (x + A_Z)^{−1}(g²𝒲_Z(x + A_Z)^{−1})^n. WC(iv): every (x + A_Z)^{−1} has the WC(ii)/(iii) walk form with prefactor 8/(γ_exp + x), uniform in x ≥ 0. Real part: Re(x + A_Z^f) ≥ x + ¼γ_exp, so the Neumann ratio is ≤ τ_2·2/(γ_exp/2 + x)·… ≤ ½ for all x ≥ 0. Run 3.2 for each x: a composite walk with n insertions has prefactor (8/(γ_exp + x))^{n+1}(c_1²b_W)^n. Then
 ∫_0^∞ x^{−1/2}(γ_exp + x)^{−(n+1)}dx ≤ γ_exp^{−n}∫_0^∞x^{−1/2}(γ_exp + x)^{−1}dx = πγ_exp^{−n−1/2}.
So (C_f(Z_0))^{1/2} = Σ_Ω T_Ω^{1/2} with |T_Ω^{1/2}| ≤ 8γ_exp^{−1/2}(q_W/ρ_*²)^n ρ_*^{|Ω|}m e^{−(1−θ)½ε″d(Ω)}: the WC(iv) square-root form, walk by walk, with s-insertion as in 3.2. Also C*Δ_k^f(σ)C = A_exp^f(σ) has the walk form (A_exp: WC 4 Prop. W_N; 𝒲 local). So Γ_k^f(Z_0, σ) = A_exp^f(σ)Z_0^c(C_f)^{1/2}(σ) has the form CMP 116 (2.14) needs. (b). This property was not on D2's or D3W8's list.

### 3.6 Q8 the perturbative argument of CMP 116 pp. 15–17 [P from A8 Lemma D, P]
Lemma D^f. D_σ^f := C_f(Z_0, σ) − C_f(Z_0) = Σ_{Ω meets σ_0}(Π s − 1)T_Ω. A8 (G1)–(G4) hold for composite walks: (G2) □⁺ has diameter ≤ 3M_1 ≤ c′M_1; (G4) the composite count is ≤ 2W by 3.2; the geometric step (A8 corrected: a tree through b ∈ Z_0 and a domain meeting σ_0 has length ≥ M − c′M_1 ≥ M/2) uses only the union of domains, so it holds for Ω. Hence ‖D_σ^f‖ ≤ η_M with η_M as in A8 (constant ×2). [P]
Lemma P^f. Lemma P's hypotheses are WC(i), WC(iii), Lemma S, Lemma D, (H_η), with the real reference A = A_Z(U). Use A^f := A_Z^f(U, Re f) as the real symmetric reference. By 3.1 its lower bound is ¾γ_exp and ‖A^f‖ ≤ Γ_1″ + γ_exp/4. δ_c^f := ‖A_Z^f(U_c, f) − A^f‖ ≤ δ_c + 2τ_2. (H_η) with γ_exp → γ_exp/2, Γ_1″ → Γ_1″ + γ_exp holds for M above a threshold fixed before r (B32), so it can be imposed at M's slot (B15–B18) with the worst-case constants. Then Lemma P (a)–(e) hold for A^f: H(K_σ^f) ≥ c γ_exp, the modulus bound (2.15), and the determinant ratio (2.17) ≤ exp(O(ε_σ^f)|Z_0|), ε_σ^f ≤ ε_σ + 2τ_2. The extra 2τ_2 enters Balaban's α_5 as one more summand of size O(γ²r), the same role as his γ_2 ("a small, positive constant", p. 16). (b). Not on D2's or D3W8's list.

### 3.7 Q9, Q10, Q11 [P]
Q9. CMP 116 (2.5) is Gaussian conditioning of the quadratic form ⟨B, A_exp B⟩ on Z_0^c. For A_exp^f it is the same finite-dimensional identity (completing the square), valid for real symmetric positive A_exp^f (3.1, whole-volume form) and by analytic continuation where Re ≥ c > 0 (3.1). (b).
Q10. D3W8 §1.1 structural fact (d_S not multiplied by t or s), CONFIRMED in D3W8_VERIFY S10 item 1. For (3.30): t ∈ [0, 1] real, τ → t²τ. Already (b) in the project; no A16.
Q11. D3W8 §1.4 domination, proved there; with the S9 fix (marginal region or Anderson). No A16.

Constant notes to 3.5: the Neumann ratio is ‖g²𝒲_Z(x + A_Z)^{−1}‖ ≤ τ_2/(x + ½γ_exp) ≤ 2τ_2/γ_exp ≤ ½. The walk prefactor after the x-integral is 8πγ_exp^{−1/2}((8/γ_exp)c_1²b_W)^n; the factor π was dropped above. Neither changes a condition.

## §4 Verdict

### 4.1 Table
| Property | Used by | Route | Theorems used |
|---|---|---|---|
| Q1 positivity (real) | D2 L-iv; D3W8 1.4; CMP 116 p. 15 | (b) [P] | WC(i), A8 Lemma S |
| Q2 walk expansion + s-rule + p. 13 form | D2 L-vi; D3W8 1.2(d), (G1) | (b) [P] | WC(ii)–(iii), A1-W (L1)–(B2) + sum lemma, WG Lemma C |
| Q3 ∂_L C_f ∂_R | D2 L-iii; D3W8 1.2(c) | (b) [P] (H_1 part → A1w/A2) | D2 Lemma 3.1(iii), WC(ii) |
| Q4 analyticity, background derivatives | D2 L-v; D3W8 (G2) | (b) [P] | WC(iii), Cauchy |
| Q5 norm bound, α_5‖C‖ < ½ | D3W8 (G3); CMP 116 p. 17 | (b) [P] | WC(i), (iii) |
| Q6 determinant | D2 §3.4; D3W8 (G4); CMP 116 (2.17), (2.24) | (b) [P] | 3.2 + Lemma C; A8 Lemma P(d) |
| Q7 square root (C_f)^{1/2}(σ), Γ_k^f | CMP 116 (2.6)–(2.8), (2.14) — not listed by D2/D3W8 | (b) [P] | WC(iv), WC §4 Prop. W_N |
| Q8 σ-truncation + complex modulus bound | CMP 116 (2.15)–(2.25) — not listed by D2/D3W8 | (b) [P] | A8 Lemmas D, P |
| Q9 conditioning on Z_0^c | CMP 116 (2.5) | (b) [P] | algebra + Q1 |
| Q10 t-independence | D3W8 1.1, (3.30) | (b) already | D3W8_VERIFY S10 |
| Q11 large-field domination | D3W8 1.4 | (b) already | D3W8 1.4 + S9 fix |
| Euclidean covariance of C_f | — | not provided; false for non-constant f | consumers must not use it [I: none found] |
No property is route (a). Balaban's printed license covers only H, H_0, G̃ in (1.3)–(1.4) (deterministic equations, no measure). The project's C_f is not one of these operators, so citation is not available for any Q.

### 4.2 What stays open
(M1) Completeness of the list [I]. The claim "Balaban's CMP 116 Sects. 1–2 and CMP 119 pp. 270–279 (and the CMP 122 I large-field bounds) use the fluctuation covariance only through Q1–Q9" is a reading. Evidence: the pages CMP 116 pp. 12–17 ((2.1)–(2.25)), read in this file (text layer) and in A8_POS §1 (300 dpi images), show exactly Q2, Q5, Q6, Q7, Q8, Q9; CMP 116 p. 1 prints a second generality claim ("The two expansions constructed here are quite general … can be, and will be, applied … for the expressions constructed with the help of more general propagators described in [13]"). That sentence names the CMP 99 class, not arbitrary operators, so it supports but does not prove (M1). The CMP 109 Sect. 3 expansion (2.13)–(3.54) and the CMP 122 I uses were not re-read for C^{(k)} occurrences in this file.
(M2) Constant conditions (A16-a), (A16-b), and the (H_η) threshold of M with worst-case constants (3.6) must be added to SOURCES_ORDER_CANON B32 (r_0) and B15–B18 (M). They are satisfiable by the canon order. Not a gap in content; a bookkeeping item.
(M3) Misattribution, not a gap: D2 §6.3 cites the p. 3 sentence for "the step is holomorphic in its inputs on the E_0 → 2E_0 ball" ((W4)). The sentence is about propagators in (1.3)–(1.4), not activities. B20 already routes (W4) through Theorem SM to printed (C1)–(C5); the "(W4) → A16" entry of B20's depends column should drop A16.

### 4.3 Conclusion
A16 (extension to C_f): PARTLY CLOSED. The analogy is replaced by direct proofs [P] of every property the project uses (Q1–Q9), plus Q7 and Q8, which D2/D3W8 omitted but CMP 116 Sect. 2 needs. Theorems used: WC_FULL Theorem WC (i)–(iv) and §4 Prop. W_N; A1_WALK_FULL (L1)–(L2), (B1)–(B2), sum lemma; WG_FULL Lemma C; SOURCES_A8_POS Lemmas S, D, P; D2 Lemma 3.1; D3W8 §1.1, §1.4. All inherit WC's residue (R1–R4, C1–C2, I1–I9) and A8's I-a–I-e. The one missing item is (M1): completeness of the list of covariance properties used by Balaban's expansion, a reading [I]. A16's printed part (H, H_0, G̃ of (1.3)–(1.4)) stays inside A13 as Balaban's own use.
Suggested ledger text (the caller edits the ledger, not this file): "A16 | … | extension to C_f replaced by direct proofs (SOURCES_A16_REPLACE Q1–Q9, [P, unverified]); residue = completeness reading (M1) [I]; constant conditions (A16-a/b) to B32; (W4) no longer depends on A16."
Recommended verify checks, in order: (1) 3.2 domain count — two unweighted domains per insertion and the use of (A16-b); (2) 3.6 — Lemma P with a reference depending on Re f; (3) 3.5 — the x-integral bound walk by walk; (4) (M1) — a C^{(k)} occurrence sweep of CMP 109 Sect. 3 and CMP 122 I.

Corrections after verification (SOURCES_A16_REPLACE_VERIFY, 2026-10-28): (1.3)–(1.4) are on p. 2. The Q-list misses four uses on pp. 12–17: (U-a) the whole-volume C_f and (C_f)^{1/2} ((2.6)'s B′ = (C^{(k)})^{1/2}X is over the whole volume; WC 0.8 needs dist(Z_0, Λ_k^c) > RM); (U-b) σ-difference bounds for (C_f)^{1/2}(σ) and Δ^f(σ) (R_2, R_3 of (2.16)); (U-c) a walk/tree form of Δ^f; (U-d) symmetry of C(Z_0, 0) (A8 residue, inherited). MAIN GAP: §3.0's claim that 𝒲_S = C*𝒱_SC has finite range is FALSE — 𝒱_S = H_1*(Σd_SH_p)H_1 + a D^{(2)} part with H_1 = G_1Q*(QG_1Q*)^{−1} nonlocal (D2 l. 117), so the 𝒲 terms are not one-domain blocks; b_W, the domain count, the p. 13 claim, and the walk-level proofs of Q2, Q6, Q7, Q8 must be redone by putting 𝒲_S in the tree form of WC Prop. W_N (as WC does for Δ_J) on the WC §6 complex chain — not written. Correct parts: the Neumann ratio, (A16-a)'s origin, Q1/Q5 positivity, the Q7 x-integral, Lemma P^f arithmetic, Euclidean covariance finding, (A16-a)/(A16-b)/(H_η)^f placement ((A16-b) to be restated with tree constants). (M1) stays [I]. (W4) misattribution confirmed; B20 may drop A16 from (W4) but (P8) still depends on the C_f properties. STATUS: A16 OPEN, reduced — not partly closed.
