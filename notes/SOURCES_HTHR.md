IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_HTHR — proof attempt for (H-thr)

Status 2026-10-27 (Claude, Opus; unverified). Inputs: SOURCES_D3.md §(vi), §(viii); SOURCES_D3_VERIFY.md V7 and grade 6; SOURCES_D2C_VERIFY.md §1; SOURCES_HBETA.md §2 (Lemma H); Balaban CMP 122 I p. 175 (0.1), §1; CMP 122 II §1 (1.73)–(1.75). Firewall respected: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

## 0. Source facts read in this session

(S1) CMP 122 I p. 175, PDF page image read [V]. Text: "|U(∂p) − 1| ≥ g_0 p_0(g_0) for a plaquette p ∈ T_1, where p_0(g_0) = A_0(log g_0^{−2})^{p_0} with a positive integer p_0." Display (0.1):
  exp[−(1/g_0²)(1 − Re tr U(∂p))] ≤ exp(−p_0(g_0)) = g_0^{A_0(log g_0^{−2})^{p_0−1}}.
Correction to the brief. Balaban's displayed bound is exp(−p_0(g)), linear in p_0(g), not exp(−p_0(g)²). The quadratic form exp(−c p_0(g)²) = exp(−cA_0²(log g^{−2})^{2p_0}) is true (1 − Re tr U ≥ c|U − 1|² near 1), and it is stronger. Balaban only uses (and only states) the linear form. Below I use the quadratic form where it is derived from the action, and the linear form where I quote a Balaban bound. Both are summable along the trajectory, because p_0 ≥ 1 is an integer (§4).

(S2) CMP 119 p. 248 [text]: first choice ε_0 = g_0 p_0(g_0), p_0(g) = A_0(log g^{−2})^{p_0}, A_0 large. Second choice (not used by Balaban): ε_0 = g_0 A_0(log γ_0^{−2})^{p_0} with a coupling-independent log. CMP 119 p. 251 and (3.4): δ_0 = g_0A_1p_0(g_0) = (A_1/A_0)ε_0, δ_k = g_k(A_1/A_0)p_0(g_k), A_0 ≫ A_1. CMP 122 I (1.3)–(1.9) [text]: the step-j cutoffs are χ(|U(∂p) − 1| < ε_j(L^{k−j}η)²), χ(|V_j(y,x) − 1| < ε_j), the weight factor (1.6) exp[−g_j^{−2}(1 − Re tr V_j(y,x))], and χ(… < 2δ_Λ). So every continuous threshold has the form θ(g) = g·C_θ(log g^{−2})^{p_0} with C_θ ∈ {A_0, A_1, …}, a function of the running coupling of its step.
(S3) CMP 122 II p. 384 [text]: the renormalized large-field factor per region is exp(−2p_0(g_k)) and exp(−κ_j(Z) − 2p_0(g_j(Z))); p. 367: N chosen with L^{−N} ≲ (log g_k^{−2})^{−v}, v ≥ 2p_0 + d r_0. So Balaban also uses integer parameters (N, and R_j via r_0) that depend on g. Not traced to their defining equations in this session.

## 1. Precise definition of Δ_j

Notation as in SOURCES_HBETA: u = 1/g², reference trajectory u_i := u_i(0) = g_i^{−2}, sourced trajectory u_i(c), v_i = du_i/dc, V_j = max_{i≤j}|v_i|.
Step function. For step j, let B_j(w; s) be the coupling increment produced by the E-class terms of step j (D3 item (ii)) when
 - the weights (Wilson weight and adapted gauge-fixing weight) of steps 0, …, j−1 are w = (w_0, …, w_{j−1}), and
 - the continuous thresholds of steps 0, …, j−1 are evaluated at threshold couplings s = (s_0, …, s_{j−1}): ε_i = ε(s_i) := s_i^{−1/2}p_0(s_i), δ_i = (A_1/A_0)ε(s_i), with p_0(s) := A_0(log s)^{p_0}.
 - all integer parameters (M, N, R_i, cube partitions) are frozen at their reference values. (See ledger L3: this is a convention, needed because an integer-valued R(g) makes B_j discontinuous in s.)
Then:
 constant-c theory:  B_j(c) = B_j(u(c); ū),  ū := (u_0, …, u_{j−1}) fixed (reference thresholds, D3 (vi)(a));
 Balaban's β-function on the sourced history:  β_j(u(c)) := B_j(u(c); u(c)) (thresholds at the running coupling, as in (S2)).
 Δ_j(c) := B_j(u(c); ū) − B_j(u(c); u(c)).
This is D3 (viii)'s B_j(c) = β_j(history) + Δ_j(c), with every object now defined. Δ_j(0) = 0.

Shell representation. Put s^t := u(c) + t(ū − u(c)), t ∈ [0,1]. Then
 Δ_j(c) = ∫_0^1 Σ_{i<j} ∂_{s_i}B_j(u(c); s^t)(u_i − u_i(c)) dt.     (1.1)
By the coarea formula, ∂_{s_i} of a restricted integral ∫ Π_b χ(ψ_b < θ(s_i)) ρ is θ′(s_i) times the integral of ρ over the threshold surfaces {ψ_b = θ(s_i)}. So (1.1) is the contribution of the configurations in the shell between the two thresholds ε(u_i) and ε(u_i(c)), exactly as D3 (viii) says. The shell width is |ε(u_i) − ε(u_i(c))| ≤ sup|ε′|·|u_i − u_i(c)|, linear in c.
Derivative. Differentiate the definition (chain rule; B_j is C¹ in (w, s) away from the frozen integer parameters):
 Δ_j′(c) = Σ_{l<j} [∂_{w_l}B_j(u(c); ū) − ∂_{w_l}B_j(u(c); u(c))] v_l − Σ_{i<j} ∂_{s_i}B_j(u(c); u(c)) v_i
and the bracket equals ∫_0^1 Σ_i ∂_{s_i}∂_{w_l}B_j(u(c); s^t)(u_i − u_i(c)) dt. With |u_i − u_i(c)| ≤ V_i|c| ≤ 2rV_i:
 |Δ_j′(c)| ≤ V_{j−1} sup_t [ Σ_i |∂_{s_i}B_j| + 2rV_{j−1} Σ_{i,l} |∂_{s_i}∂_{w_l}B_j| ](u(c); s^t).     (1.2)
So (H-thr) reduces to bounds on the first threshold derivative and the mixed threshold–weight derivative of B_j on the segment s^t. That is §2.

## 2. Shell lemma [proved in the model (M1)–(M4); the model is the open part]

Model assumptions (each is a statement about Balaban's construction; status in §6).
 (M1) Entry. Thresholds of step i enter the step-j E-class terms only through sharp cutoffs χ(ψ_b < θ(s_i)) inside integrals against positive densities ρ (real f, D3 (ix)). Here ψ_b ≥ 0 is a Lipschitz function of one step-i variable (|V_i(y,x) − 1|, scaled |U(∂p) − 1|, …) and θ(s) = C_θ s^{−1/2}(log s)^{p_0}, C_θ ∈ {A_0, A_1} (S2). Domain parameters (α_0, α_1 of U^c(X, α_0, α_1)) only fix where E is analytic; on the common domain the value of E does not depend on them (uniqueness of analytic continuation). So they give no contribution.
 (M2) Density at the threshold. For each b, the conditional density of ψ_b at the value θ, given the other variables and divided by the restricted normalization, is ≤ C_ρ w^{n/2}θ^{n−1}exp(−γ_0wθ²), n = dim G. This is Balaban's per-link large-field factor (CMP 122 I (1.5)–(1.6), D3 (vi)(d)) in density form instead of tail form. It follows from 1 − Re tr V ≥ c|V − 1|² and a bounded interaction of b with its small-field neighbours. Not checked on Balaban's pages.
 (M3) Locality and history. The step-i cutoffs act on B_j with the history weight a_{j−1−i} of (H-hist), and the number of cutoffs per unit volume entering one local coefficient is ≤ C(MR_i)^d ≤ C(log s_i)^{d r_0} (S3).
 (M4) Extraction. B_j is read off a local E-class term by a Cauchy estimate in the background field on its analyticity domain. This costs at most a factor C s_i^{a_1}(log s_i)^{P_1}.

Lemma S. Under (M1)–(M4), for s on the segment s^t, w = u(c), |c| ≤ 2r, r ≤ 1, all s_i ≥ γ^{−2} − 3r ≥ 6r and log s_i ≥ 2p_0:
 Σ_{i<j}|∂_{s_i}B_j| + Σ_{i,l<j}|∂_{s_i}∂_{w_l}B_j| ≤ Σ_{i<j} a_{j−1−i}Φ(s_i),
 Φ(s) := C_S s^{a}(log s)^{P} exp(−κ(log s)^{2p_0}),  κ := (γ_0/2)min(A_0, A_1)² = γ_0A_1²/2,
with a = a_1, P = P_1 + d r_0 + n p_0 + 2p_0, and C_S depending on n, d, M, C_ρ, A_0, A_1.

Proof. (a) First derivative, one cutoff. By coarea,
 ∂_s ∫ Π_b χ(ψ_b < θ(s)) ρ = θ′(s) Σ_b ∫ δ(ψ_b − θ(s)) Π_{b′≠b}χ(ψ_{b′} < θ(s)) ρ.
Divide by the restricted normalization and use (M2) for each b. Here θ′(s) = C_θ s^{−3/2}(log s)^{p_0−1}(p_0 − ½log s), so |θ′(s)| ≤ C_θ s^{−3/2}(log s)^{p_0} for log s ≥ 2p_0. Since |w − s| ≤ |u_i(c) − u_i| ≤ 3r (Lemma H, |v| ≤ 3/2) and s ≥ 6r, wθ² ≥ ½C_θ²(log s)^{2p_0} and w ≤ 2s. Per cutoff:
 |θ′|·C_ρw^{n/2}θ^{n−1}e^{−γ_0wθ²} ≤ C s^{−3/2}(log s)^{p_0}·s^{n/2}·s^{−(n−1)/2}(log s)^{(n−1)p_0}·e^{−(γ_0/2)C_θ²(log s)^{2p_0}} = C s^{−1}(log s)^{np_0}e^{−(γ_0/2)C_θ²(log s)^{2p_0}}.
The shell carries a factor s^{−1} = g² from the threshold width. Log derivatives of polymer activities are sums of such terms localized by the cluster expansion; (M3) multiplies by (log s)^{d r_0} and a_{j−1−i}; (M4) multiplies by s^{a_1}(log s)^{P_1}.
(b) Mixed derivative. Fix the real history and complexify one weight w_l in the local integral. |e^{−w_lP}| = e^{−(Re w_l)P}, and on the polymer support (small field, or the shell) Σ_p P_p ≤ C|X|θ² ≤ C|X|(log s)^{2p_0}/s. As in D3 Lemma D3.1, the restricted normalization keeps modulus ≥ ½ of its real value for |Im w_l| ≤ ρ_w := c s(log s)^{−2p_0}/|X|. Cauchy on this disc gives |∂_{w_l}(shell term)| ≤ 2 sup|shell term|/ρ_w, an extra factor C|X|(log s)^{2p_0}/s ≤ C(log s)^{2p_0} after the |X| sum is absorbed in the polymer decay. Summing over l uses the same history weights. This only complexifies a local weight at fixed real history, so it does not need the open thin-strip holomorphy of u_k(c) (SOURCES_HBETA §3(c)).
(c) Collect: the worst constant is C_θ = A_1, so κ = γ_0A_1²/2. ∎
Remark. If one trusts only Balaban's displayed linear form exp(−p_0(g)) (S1, S3), replace exp(−κ(log s)^{2p_0}) by exp(−κ′A_0(log s)^{p_0}). Everything below holds for p_0 ≥ 2; for p_0 = 1 it needs κ′A_0 > a + 2 (Balaban takes A_0 large, so this is available).

## 3. Pointwise bound: (H-thr) [proved given Lemma S and V_{j−1} ≤ 3/2]

Conditions on γ (all are "γ small enough", independent of j, K, c):
 (G1) y_0 := log(γ^{−2} − 3r) ≥ y_1 := max(2p_0, ((2 + a + P)/(2p_0κ))^{1/(2p_0−1)}), and γ^{−2} ≥ 9r. Then Φ is decreasing on [γ^{−2} − 3r, ∞), and Lemma S applies.
 (G2) 3r(a + P + 2p_0κ(log(s + 3r))^{2p_0−1})/(s − 3r) ≤ ln 2 for all s ≥ γ^{−2}. Since d log Φ/ds = (a + P/log s − 2p_0κ(log s)^{2p_0−1})/s, this gives Φ*(s) := sup_{|s′−s|≤3r}Φ(s′) ≤ 2Φ(s).
Insert Lemma S into (1.2). The segment s^t stays within 3r of ū. With V_{j−1} ≤ 3/2 and r ≤ 1:
 |Δ_j′(c)| ≤ η_j := (3/2)(1 + 3r) Σ_{i<j} a_{j−1−i} Φ*(u_i) ≤ 3(1 + 3r) Σ_{i<j} a_{j−1−i} Φ(g_i^{−2}).     (3.1)
On the reference trajectory u_i ≥ u_{j−1} ≥ u_j for i < j (B > 0, (E)), and Φ is decreasing, so
 sup_{|c|≤2r} |Δ_j′(c)| ≤ 3(1 + 3r) A Φ(g_j^{−2}) = C_thr exp(−κ(log g_j^{−2})^{2p_0}) × g_j^{−2a}(log g_j^{−2})^P,
with C_thr = 3(1 + 3r)AC_S. This is D3's (H-thr) with c_thr = κ = γ_0A_1²/2, up to the polynomial prefactor; the prefactor is absorbed by halving κ for γ small: s^a(log s)^P e^{−κ(log s)^{2p_0}} ≤ e^{−(κ/2)(log s)^{2p_0}} once (κ/2)(log s)^{2p_0} ≥ a log s + P log log s.

## 4. Sum along the trajectory, with the γ^{−2} factor [proved]

By (E) (HBETA (2.2)), u_i ≥ γ^{−2} + βm with m = K − i ≥ 1 for i ≤ K − 1. Exchange sums in (3.1): Σ_j Σ_{i<j} a_{j−1−i}Φ(u_i) ≤ A Σ_{i<K}Φ(u_i). Φ is decreasing, so
 Σ_{m≥1} Φ(γ^{−2} + βm) ≤ (1/β)∫_{γ^{−2}}^∞ Φ(x) dx.
Substitute x = e^y, h(y) := y + log Φ(e^y). Then h′(y) = 1 + a + P/y − 2p_0κy^{2p_0−1} ≤ −1 for y ≥ y_1 (G1), so e^{h(y)} ≤ e^{h(y_0)}e^{−(y−y_0)} and
 ∫_{γ^{−2}}^∞ Φ(x) dx ≤ e^{h(y_0)} = γ^{−2}Φ(γ^{−2})   (y_0 = log γ^{−2} here).
Result:
 x_thr := sup_{|c|≤2r} Σ_{j≤K} |Δ_j′(c)| ≤ 3(1 + 3r) A (γ^{−2}/β) Φ(γ^{−2})
   = 3(1 + 3r) A C_S β^{−1} γ^{−2(1+a)} (log γ^{−2})^P exp(−κ(log γ^{−2})^{2p_0}),     (4.1)
uniformly in K. The factor γ^{−2}/β is the count of the first ~γ^{−2}/β steps where 1/g_j² is still ≈ γ^{−2}; this is the factor SOURCES_D3_VERIFY V7 asked for. Convergence needs only 2p_0 > 1; p_0 is a positive integer (S1), so it always holds. The decay beats every power of γ: x_thr ≤ exp(−(κ/2)(log γ^{−2})^{2p_0}) for γ small.
Numerical check [num] (python -I inline, no file kept; 10^6 terms, truncation tail ≤ e^{−25} relative per term): log Σ_{m≥0}Φ(γ^{−2}+βm) versus log[(1 + γ^{−2}/β)Φ(γ^{−2})] for (κ, p_0, a, P, β) = (1,1,1,2,0.05): −0.85 ≤ 0.68, −7.90 ≤ −5.95, −29.50 ≤ −27.04 at γ^{−2} = 30, 100, 1000; (0.3,2,1,4,0.02): −28.3 ≤ −24.5, −120.4 ≤ −115.7, −663.6 ≤ −657.6. For (0.5,1,2,4,0.05) at γ^{−2} = 30, where (G1) fails, the bound fails (13.07 > 12.31), as expected; it holds again at γ^{−2} = 1000 where (G1) holds. (The check includes the m = 0 term, so it tests a slightly weaker inequality than (4.1)'s m ≥ 1 sum.)

## 5. Lemma H′: the ½ budget split between (H-hist) and (H-thr) [proved given (H-hist), (E), Lemma S, (G1)–(G3)]

Lemma H′. Assume (E), (H-hist) with x := C_1Aγ/β ≤ ln(6/5) ≈ 0.182, Lemma S, (G1), (G2), 3r < g^{−2} − γ^{−2}, r ≤ 1, and
 (G3) 3(1 + 3r) A C_S β^{−1} γ^{−2(1+a)} (log γ^{−2})^P exp(−κ(log γ^{−2})^{2p_0}) ≤ ¼.
Then for every K and real |c| ≤ 2r: all g_k(c) ∈ ]0, γ], Σ_{j≤K}|B_j′(c)| ≤ ½, and ½ ≤ |v_k(c)| ≤ 3/2.
Proof. Induction on j with the hypothesis V_{j−1} ≤ 3/2 and g_i(c) ≤ γ for i < j. Then |u_i(c) − u_i| ≤ 2rV_i ≤ 3r for i < j, which is what Lemma S and §3 use. Write B_j′ = β_j′ + Δ_j′. HBETA Step 1 gives |β_j′| ≤ ε_jV_{j−1}; §3 gives |Δ_j′| ≤ η_j. From v_j = v_{j−1} − B_j′: V_j ≤ (1 + ε_j)V_{j−1} + η_j. Gronwall:
 V_j ≤ Π_{l≤j}(1 + ε_l)·(1 + Σ_{l≤j}η_l) ≤ e^x(1 + x_thr) ≤ (6/5)(5/4) = 3/2.
Sum: Σ_l ε_lV_{l−1} ≤ (1 + x_thr)(Π(1 + ε_l) − 1) ≤ (5/4)(e^x − 1) ≤ (5/4)(1/5) = ¼, and Σ_l η_l ≤ x_thr ≤ ¼ by (4.1) and (G3). So Σ|B_j′| ≤ ½ and |v_j| ≥ 1 − ½. The coupling bound g_j(c) ≤ γ follows as in HBETA: u_j(c) ≥ u_j − 3r ≥ g^{−2} − 3r > γ^{−2}. ∎
Budget. (H-hist) gets ¼ (x ≤ ln(6/5) instead of ln(3/2)); (H-thr) gets ¼ (G3). Both are smallness conditions on γ at fixed β, A, C_1, C_S, κ, r. (G3) is weaker than any power condition, because exp(−κ(log γ^{−2})^{2p_0}) decays faster than every power of γ.
Comparison with D3 (viii)'s "Σ|B_j′| ≤ e^{x + x_thr} − 1". That multiplicative form is also valid, because V_{j−1} ≥ |v_0| = 1 gives η_j ≤ η_jV_{j−1}. It needs x + x_thr ≤ ln(3/2) ≈ 0.405, e.g. x ≤ 0.2 and x_thr ≤ 0.2. The additive split above (x ≤ ln(6/5), x_thr ≤ ¼) is the one the brief asked for. Both give Σ|B_j′| → 0 as γ → 0.

## 6. Honest ledger

 L1 [proved] Definition of Δ_j (§1): B_j(u(c); ū) − B_j(u(c); u(c)) with integer parameters frozen; shell representation (1.1) by coarea; derivative bound (1.2).
 L2 [proved given (M1)–(M4)] Lemma S: threshold derivative and mixed threshold–weight derivative ≤ Σ a_{j−1−i}Φ(s_i). The shell width brings a factor g² = s^{−1}; the threshold surface density brings exp(−(γ_0/2)C_θ²(log s)^{2p_0}). The mixed derivative uses a local Cauchy estimate in one real weight; it does not need the open strip holomorphy of u_k(c).
 L3 [open, new] Integer-valued g-dependent parameters (N via L^{−N} ≲ (log g^{−2})^{−v}, R_j via r_0; CMP 122 II p. 367 text) make "thresholds at the running coupling" discontinuous in the coupling. Then Balaban's β_j(u) cannot be C¹ in u unless these integers are frozen. I froze them at reference values in both theories. This convention must also be imposed on (H-hist) and on Balaban's "C^∞ in g_{j−1}" (CMP 109 p. 263). Not checked how Balaban defines R_j and N.
 L4 [open] (M1) entry mechanism. If Balaban's small-field E-class terms are computed with χ = 1 − (1 − χ) expanded and the (1 − χ) parts moved to large-field terms, then E-class values do not depend on the thresholds and Δ_j ≡ 0, which is stronger. If χ stays inside the integral, Lemma S applies. (H-thr) holds in both cases; which case is Balaban's is not checked.
 L5 [reduced] (M2) density form of the per-link large-field factor. Plausible from 1 − Re tr V ≥ c|V − 1|² and bounded neighbour interaction; not read on Balaban's pages. For the δ-cutoffs (1.7)–(1.9) on axial/averaged fields, the variable is not one link with weight w; there (M2) is a further assumption, and κ may need a smaller constant than γ_0A_1²/2.
 L6 [reduced] (M3) R_i ≤ C(log s_i)^{r_0} (only the text "v ≥ 2p_0 + d r_0" seen) and the history weights a_m of (H-hist) for threshold dependence. Any polynomial in log s or in s is harmless.
 L7 [reduced] (M4) extraction cost polynomial in s. Harmless for the same reason.
 L8 [proved] Summation (4.1) with the explicit γ^{−2}/β factor; convergence for 2p_0 > 1, automatic since p_0 ∈ ℕ; numerical check §4.
 L9 [proved] Lemma H′ with budget ¼ + ¼; condition (G3) on γ. D3's multiplicative form is also valid (V ≥ 1).
 L10 [correction to the brief] CMP 122 I (0.1) displays exp(−p_0(g_0)), linear in p_0(g) = A_0(log g^{−2})^{p_0}, not exp(−p_0(g)²). The quadratic form is the true action bound at the threshold and is what Lemma S derives. If only the linear form is trusted: p_0 ≥ 2 changes nothing; p_0 = 1 needs κ′A_0 > a + 2 + P (A_0 is large in Balaban). CMP 122 II p. 384 also states exp(−2p_0(g_k)), linear.
 L11 [not read] CMP 122 II §1 (1.73)–(1.75) pages were not re-read here; used only through D3 (B11) and D3_VERIFY grade 7 (confirmed on the PDF there).
 Net status. (H-thr) is proved in the form sup_c|Δ_j′| ≤ 3(1+3r)AΦ(g_j^{−2}), Σ_j ≤ (4.1), conditional on (M1)–(M4) and the integer-parameter convention L3. It is not in Balaban.
