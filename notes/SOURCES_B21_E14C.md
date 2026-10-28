# SOURCES_B21_E14C — the C^∞ real-source form of (E14-c) (TRUST_LEDGER B21, open clause)

Date: 2026-10-28. Ledger: [P] proved here, [V] verified elsewhere, [I] reading/interpretation, [R] reduction.
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## 1. (E14-c) as stated, and what the consumer needs

### 1.1 The clause, quoted [read]
SOURCES.md l. 144: "(E14-c) Derivative bounds in f (for (N1)). Either complex f in a polydisc |f| ≤ r (then analyticity in f follows from analyticity in the coupling, but the positivity used in (E14-b) is lost and the denominators need |·| ≥ ½ of the real value by perturbation), or real f with explicit n!-type bounds on ∂_f^n from the cluster expansion with n insertions [...]. Recommendation: real f and the uniform C^∞ bounds, matching Balaban's own "C^∞ (or analytic)" in the coupling; then moment convergence follows from generating-function convergence by interpolation [...], with no Cauchy formula and no complex coupling."
ASSEMBLY.md l. 90: "(E14-c) derivative bounds in f (real sources, interpolation). NEEDED." l. 116 (the (B-N1) route): "What must be checked: [...] the C^∞ (real-source) form of (E14-c) with n-th derivatives for all n". l. 205: D4 row, "interpolation lemma confirmed; rest NOT STARTED".
TRUST_LEDGER B21: "open: the (E14-c) clause (map to Lemma C or mark unread)". SOURCES_B21_S §4 last paragraph: "(E14-c) was not read." SOURCES_B21_S_VERIFY item 4: "add one sentence mapping (E14-c) to D4D5 Lemma C, or keep that clause marked [unread]."

### 1.2 Why the clause was written as a separate item [read]
Two reasons, both in SOURCES.md l. 144. (a) Complex f breaks the positivity of the R-operation denominators (CMP 122 I p. 176), so a global complexification was suspect. (b) The planned (N1) route was generating-function convergence plus the interpolation Lemma 7.1 (SOURCES_D2 §7.2), which needs uniform real C^{m+1} bounds in f for every m.

### 1.3 What the current consumer takes from it [read + derived]
The T2 chain no longer uses the interpolation route. It is (S) ⇒ (H-U) (ASSEMBLY_N1) ⇒ (B-C) compactness (ASSEMBLY §2.4: separability + Bolzano–Weierstrass + (H-U), no derivative in f). Lemma 7.1 is used only for (N2) = full-sequence convergence via E13, which ASSEMBLY marks NOT NEEDED (l. 91, l. 213).
In ASSEMBLY_N1 the only source-derivative object is
  κ_n(f_1,…,f_n) = ∂_{t_1}⋯∂_{t_n} log Z_ε[Σ_i t_i f_i] |_{t=0}   (D4D5 l. 15; ASSEMBLY_N1 §0),
with REAL f_i (ASSEMBLY_N1 §4.2 splits complex modes into 2^n real moments), base point t = 0 (the unsourced μ_ε), and multi-index (1,…,1):
- §4.1: each block i carries one bump g_{i,k_i}; the n bumps have distinct indices.
- §4.3: moments = Lah sum over partitions π of {1,…,n}; each block B gives κ_{|B|}(f_B) with pairwise distinct, σ-separated arguments. No repeated argument occurs. κ_1 = 0 (centred).
So the consumed content of "(E14-c), C^∞ real-source form, n-th derivatives for all n" is exactly: for every n ≥ 2, a bound on the mixed derivative ∂_{t_1}⋯∂_{t_n} at the real point t = 0, for real separated f_i, uniform in K (ε), in bump position, and in bump size h ∈ [ε, ℓ/512] at σ = 16h. Repeated derivatives ∂_{t_i}^k (k ≥ 2), derivatives at a nonzero real base point, and C^{m+1}-in-f norms on an interval are not consumed. [derived; from the reads above]

## 2. Mapping to D4D5 Lemma C

### 2.1 Statement (E14-c, R) — the real-source form actually consumed
For every η > 0 and a > 0 there is C_S = C_S(η, a) < ∞, independent of K, such that for all K ≥ K_0, n ≥ 2, σ ∈ [16ε, ℓ/8], and real f_1, …, f_n ∈ C¹(T⁴) with pairwise dist(supp f_i, supp f_j) ≥ σ and min_i diam(supp f_i) ≤ σ:
  |∂_{t_1}⋯∂_{t_n} F_ε(t)|_{t=0}| ≤ (C_S σ^{−a})^n (n!)^{1+η} Π_i N_U(f_i),   F_ε(t) := log Z_ε[Σ_i t_i f_i],  t ∈ R^n,
with N_U(f) = max(‖f‖_∞/r, ‖∇f‖_∞/ρ_1). The left side is κ_n(f_1, …, f_n). So (E14-c, R) is (S) of SOURCES_B21_S §1 / D4D5 §5.1, read as a statement about real derivatives at a real point.

### 2.2 The standard step: real derivative = Cauchy estimate on the complex source polydisc [P]
P1. F_ε is real-analytic on R^n. Reason: Z_ε is entire in the finitely many f_p and Z_ε > 0 for real f (D4D5 l. 13–14 [proved there]). So the real derivatives of F_ε at t = 0 exist to all orders. This is the C^∞ property; it holds at each fixed ε with no RG input.
P2. Local representation. For real t, Lemma C Step 1 (S1(a) + (FX)) gives F_ε(t) − F_ε(0) = −W_K[f(t)] + Σ_m Σ_{Γ∈P_m} [a_m(Γ; f(t)) − a_m(Γ; 0)], f(t) = Σ t_i f_i. At fixed K the polymer sets are finite (finite lattices T^{(m)}), so this is a finite sum of real functions of t. So ∂_{t_1}⋯∂_{t_n}F_ε(0) is the finite sum of the same derivative of each term.
P3. Each term a_m(Γ; f(t)) on real t is the restriction of a function holomorphic on the polydisc |t_i| ≤ ρ_Γ := min(½, τ_m(Γ)/r): Step 0 (σ > ε, supports disjoint) gives ‖f(t)‖_∞ ≤ r max|t_i| ≤ τ_m(Γ) and ‖∇f(t)‖_∞ ≤ ρ_1 max|t_i| ≤ ρ_1/2 for N_U(f_i) = 1, which is the (FX2) domain around the real point f = 0. The real partial derivatives of a real-analytic restriction equal the complex partial derivatives of the holomorphic function. The Cauchy estimate for the multi-index (1,…,1) on the torus |t_i| = ρ_Γ gives
  |∂_{t_1}⋯∂_{t_n} a_m(Γ; f(t))|_{t=0}| ≤ ρ_Γ^{−n} sup_{|t_i|≤ρ_Γ} |a_m(Γ; f(t))| ≤ E_0 e^{−κ d_m(Γ)} (C_4 R̄_m⁴ |Γ|_m)^n,  C_4 = max(2, E_0/c_τ),
by (FX3). No n! arises here (Lemma C Step 3 [V, D4D5_VERIFY §4]). W-terms: same with radius ½, factor 2^n E_0 e^{−κ d_j(X)}.
P4. No global complexification is used. Only each local activity is continued, inside its own (FX2) polydisc. The R-operation denominators appear inside these activities; their holomorphy at radius c·r is FX_O23 O2 [verified, FX_O23_VERIFY]. So the positivity concern of §1.2(a) is discharged by (FX2), not by a perturbation of a global denominator. D2 §7.1 [proved there] gives the general fact behind this: real α!ρ^{−|α|} bounds on a real box ⇔ holomorphic extension to the ρ-polystrip; "real f with n!-type bounds" and "complex f in a polydisc" are one statement.
P5. Steps 2, 4–9 of Lemma C [V] sum P3 over polymers that meet all n supports. Result (D4D5 §4.1):
  |κ_n| ≤ C_A (1 + D/σ)⁴ (1 + log_L(2M/σ)) (C_B Λ_1(σ)⁴)^n C_η^n (n!)^{1+η} Π N(f_i).

### 2.3 Constants [derived from D4D5 §5.1]
Use D ≤ σ ⇒ (1 + D/σ)⁴ ≤ 16. For σ ≤ ℓ/8 and a > 0: Λ_1(σ)⁴ ≤ C_{a,1} σ^{−a/2} and 1 + log_L(2M/σ) ≤ C_{a,2} σ^{−a/2} ≤ (C_{a,2} σ^{−a/2})^n (n ≥ 1, C_{a,2} ≥ 1). For n ≥ 2, 16 C_A ≤ (4 C_A^{1/2})^n (C_A ≥ 1). The rescaling λ_i = 2N_U(f_i) of ASSEMBLY_N1 §1 item 3 costs 2^n. So one admissible choice is
  C_S(η, a) := 2 · 4C_A^{1/2} · C_B · C_{a,1} · C_{a,2} · C_η,
with C_A, C_B depending on (E_0, κ, c_0, c_τ, M, C_R, p_R, L) and C_η on (η, p_R, C_β, L) only (Lemma C statement [V]). None depends on K, on the f_i, on h, or on the support positions.

### 2.4 Uniformities the consumer needs [V / R]
- In ε (K): every constant above is K-independent (Lemma C statement; D4D5_VERIFY §4, §7).
- In bump position: Lemma C Step 4, Q_m ≤ (2 + D/(Mλ_m))⁴ "for every position of the support relative to the grid"; D4D5 Lemma D4.4 (transport by lattice symmetries, same constants).
- In bump size h ∈ [ε, ℓ/512]: SOURCES_B21_S §2b–§3 [R, verified in SOURCES_B21_S_VERIFY]: no h-dependent factor; the only size factor (1 + D/σ)⁴ ≤ 16.
- Derivative count in the source: one t-derivative per bump (multi-index (1,…,1)); the spatial regularity of each bump enters only through N_U (C¹).

### 2.5 What the mapping does NOT give (not consumed) [derived]
Repeated derivatives ∂_{t_i}^k, k ≥ 2, or general multi-indices α at one source: Step 0 then gives a sum, not a max, so the radius shrinks and the bound becomes α! ρ^{−|α|} with Gevrey order 2 + η (D2 §8.5, D3R §4.1). Uniform C^{m+1} bounds on an interval for Lemma 7.1 (the E13/(N2) route) are of this type. Neither is used by (S) ⇒ (H-U) ⇒ (B-C) ⇒ T2 (§1.3).

## 3. Consistency with the cutoff-derivative clause and with σ = 16ε

### 3.1 Cutoff-derivative count [read + derived]
- The cutoff bound (D) (ASSEMBLY_N1 §3.1, CONFIRMED in HHIST_N1_VERIFY Part 2) is on spatial x-derivatives of Φ_m, Θ_m, χ_c, with |β_i| ≤ 10 (6 used: M(G) in §3.4, L_i³ in §4.1). These are derivatives of the test function F. They give the Fourier decay of γ_k. They are never derivatives in the source t.
- The source side uses one t-derivative per bump (§1.3). So the two counts are independent: (D) does not change the multi-index (1,…,1), and (E14-c, R) does not need any F-derivative. No double counting.
- Bump regularity: N_U is C¹, and ψ_i needs |∂^α ψ_i| ≤ C_ψ h^{−|α|} only for |α| ≤ 1 (§4.1). Then N_U(ψ_i cos/sin) ≤ C′(1 + |q|) h^{−1}/ρ_1-weighted, the value used in §4.4. Σ_k Π_i (1 + |k_i|)(1 + |k_i|²)^{−3} converges in Z⁴ (exponent 5 > 4), as §4.4 needs.
- Editorial inconsistency found (not a gap). ASSEMBLY_N1 §4.2 still writes N(g^{R,I}) ≤ C_ψ′(1 + |q|)^5 h^{−5}, a C⁵-era string not caught by the F9 alignment. It is a true upper bound (h ≤ 1) but it is not the value §4.4 uses; with (1 + |q|)^5 the Fourier sum against (1 + |k|²)^{−3} would diverge in Z⁴ (5 − 6 = −1 > −4). §4.4 uses (1 + |k_i|) h^{−1}, which is the correct C¹ value. Suggested fix (not applied; this task edits no existing file): in §4.2 replace "(1 + |q|)^5 h^{−5}" by "(1 + |q|) h^{−1}".

### 3.2 σ = 16ε [read + derived]
- (E14-c, R) needs σ > ε at one place only: Step 0, so that every lattice difference of Σ t_i f_i involves one f_i and the polydisc |t_i| ≤ ρ_Γ stays in the (FX2) domain. The bridge has σ_m = δ_m/4 ≥ 16ε (ASSEMBLY_N1 §3.3, δ_{m_1} ≥ 64ε). Margin 16.
- The Cauchy radius ρ_Γ = min(½, τ_m(Γ)/r) depends on Γ only, not on σ, h, or n. So the real-point derivative bound does not degrade as σ → 16ε. The σ-dependence is only Λ_1(σ)⁴ and the scale count, both ≤ C σ^{−a/2} (D4D5 §4.2 at σ = 16ε, CONFIRMED in D4D5_VERIFY §7).
- min diam ≤ σ: D/σ_m = 3/8 (ASSEMBLY_N1 §4.1). Consistent with §2.3.
- Fallback unchanged: if (S) held only for σ ≥ ε^θ, the bridge closes with s = max(s_0, ⌈4/θ⌉ + 1) (SOURCES_B21_S §1). The mapping adds no threshold.

