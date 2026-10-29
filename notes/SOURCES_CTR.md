# SOURCES_CTR — H-089 (C-tr): continuity of u₀ ↦ u_{k+1} on D_k along true trajectories

Date: 2026-10-28. Status: derivation, unverified. Ids follow IDS.md.
Grades: [P] proved here; [P-sketch] proof given, some routine measure-theory or bookkeeping steps not written out; [R] relies on a named input; [I] interpretation of a source; [V] verified reading of a source (page image).
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read and excluded from every grep.
Id note: IDS.md maps old A5 → R-006 ("E^{(j)} C^∞ in g_{j−1} … β_{j+1} smooth on [0, γ]") and old A6 → R-007 ("(or analytic)"). The brief calls the C^∞ row "A6 = R-006"; the row text is R-006 (old A5). This file uses R-006 for the C^∞ row and R-007 for the analytic row.

Sources read: lean/YmLean/LemmaDHist.lean (l. 110–340), lean/YmLean/LemmaDHistNested.lean (l. 1–135), lean/VERIFY_LemmaDHist.md, SOURCES_T2_B7_CLAMP.md §1–§7 and its VERIFY, SOURCES_A15_WHOLE.md §5–§6, TRUST_LEDGER.md rows R-006, R-007, R-013, R-015, R-018, R-031. Balaban: CMP 109 pp. 255, 256, 260, 261, 264, 265 (page images at 150 dpi, PDF pp. 7, 8, 12, 13, 16, 17) [V]; CMP 109 p. 263 and p. 266 (text layer, legible) [V]; CMP 119 pp. 258–259 (2.23)–(2.28) (text layer) [V]; CMP 122 II p. 390 (text layer) [V].

## 1. (C-tr) exactly as the Lean theorems use it

1.1 Lean objects [V, LemmaDHist.lean l. 112–121, 230–234].
- `HistInc = (j : ℕ) → (Fin j → ℝ) → ℝ`. `β j h` is β_j(g_0, …, g_{j−1}). β is a total function in Lean.
- `tflow β u₀ k` = u_k of the true flow u_0 = u₀, u_{k+1} = u_k − β_{k+1}(1/√u_0, …, 1/√u_k).
- `hist (tflow β u₀) k` = (1/√u_0, …, 1/√u_k) = h_k(u₀).
- `Adm β γ k = D_k = {u₀ : ∀ i ≤ k, 1/γ² ≤ tflow β u₀ i}`.

1.2 The hypothesis. In `lemma_D_hist_adm` (LemmaDHist.lean l. 244), `lemma_DPrime_hist_adm` (LemmaDHistNested.lean l. 155) and `lemma_DDoublePrime_hist_adm` (l. 225):
  (C-tr)  ∀ k, ContinuousOn (fun u₀ => tflow β u₀ (k + 1)) (Adm β γ k).
`nested_shoot` (l. 55) needs it only for k < K. In words: for every k, the map u₀ ↦ u_{k+1}(u₀) is continuous on D_k for the subspace topology of D_k ⊂ ℝ.

1.3 How the proofs use it [V, LemmaDHist.lean l. 278, 319; LemmaDHistNested.lean l. 85, 123]. The only uses are `(hcont k).mono hsub` with hsub : Set.Icc a c ⊆ Adm β γ k. So the proofs need continuity of u_{k+1} on compact intervals inside D_k. No use needs D_k to be open, closed, or an interval. ContinuousOn on an arbitrary set is the relative topology, so (C-tr) is equivalent to sequential continuity inside D_k: u₀ⁿ → u₀ with all u₀ⁿ, u₀ ∈ D_k implies u_{k+1}(u₀ⁿ) → u_{k+1}(u₀) [P, ℝ is metric].

1.4 Domain facts [P].
(a) D_k does not depend on the values of β off Balaban's domain. Proof by induction on k. D_0 = [γ^{−2}, ∞). If u₀ ∈ D_{k−1}, then u_k(u₀) is computed from β_1, …, β_k at the histories h_0(u₀), …, h_{k−1}(u₀), and h_i(u₀) has all entries in ]0, γ] for i ≤ k − 1. So the test u_k ≥ γ^{−2} uses only β evaluated at histories with couplings in ]0, γ]. Since D_k ⊆ D_{k−1} (`Adm_mono`), membership in D_k uses only such evaluations. ∎
(b) For u₀ ∈ D_k, every evaluation of β inside u_{k+1}(u₀) is at a history h_i(u₀), i ≤ k, with all couplings in ]0, γ]. So (C-tr) is a statement about Balaban's β_{i+1} at true-trajectory histories only. The Lean β may be any extension of Balaban's β off these histories; the hypotheses `hcont`, `hbd` and the conclusion do not see the extension.
(c) Corollary of (C-tr): D_k is closed in ℝ. Induction: D_0 is closed. D_{k+1} = D_k ∩ {u₀ : u_{k+1}(u₀) ≥ γ^{−2}}. By (C-tr), u_{k+1} is continuous on D_k, so this set is relatively closed in D_k, hence closed in ℝ. ∎ The Lean statements do not need (c). D_k need not be an interval.
(d) Constant condition. Lean γ must satisfy γ ≤ γ_Bal, the γ of CMP 109 Theorem 3 (p. 264). Then every history in 1.4(b) has 0 < g_i ≤ γ_Bal, which is the hypothesis of Theorem 3.

## 2. Exact reduction: which continuity the composition needs

Notation. For u₀ ∈ D_k put h_k(u₀) := (u_0^{−1/2}, …, u_k^{−1/2}) ∈ ]0, γ]^{k+1} and T_k := h_k(D_k), the set of true-trajectory histories of length k + 1 with all couplings in ]0, γ]. T_k is the image of a curve, not a cube.

Lemma 2.1 [P]. Fix k. Assume (C-tr) for all steps i < k (that is, u₀ ↦ u_{i+1} continuous on D_i for i < k). Then the following are equivalent:
 (C-tr)_k  u₀ ↦ u_{k+1} is continuous on D_k;
 (C-β)_k   u₀ ↦ β_{k+1}(h_k(u₀)) is continuous on D_k;
 (C-T)_k   β_{k+1} restricted to T_k is continuous for the topology of T_k ⊂ ℝ^{k+1}.
Proof. u_{k+1} = u_k − β_{k+1}(h_k). By hypothesis u_k is continuous on D_{k−1} ⊇ D_k (`Adm_mono`); for k = 0, u_0 = u₀. So (C-tr)_k ⇔ (C-β)_k. Next, h_k : D_k → T_k is continuous: each u_i (i ≤ k) is continuous on D_k by hypothesis, and u_i ≥ γ^{−2} > 0 there, so u_i^{−1/2} is continuous. h_k is a bijection onto T_k, and its inverse is h ↦ h_0^{−2} (the first entry is u₀^{−1/2}), which is continuous on T_k. So h_k is a homeomorphism D_k → T_k, and (C-β)_k ⇔ (C-T)_k. ∎

Consequences [P].
(a) By induction on k, (C-tr) for all k is equivalent to (C-T)_k for all k. So the exact content of (C-tr) is: each β_{k+1} is continuous along the one-parameter family of true trajectories, in the topology of the curve T_k. Continuity on the cube ]0, γ]^{k+1} is sufficient and not necessary. Continuity in the last slot at a fixed past is necessary-type information but is not sufficient (`βce_no_shot`, LemmaDHist.lean l. 563).
(b) A practical form: it suffices to show that for every sequence u₀ⁿ → u₀ in D_k, β_{k+1}(h_k(u₀ⁿ)) → β_{k+1}(h_k(u₀)). Along such a sequence every history is a true trajectory, so every Balaban object used below is evaluated only where Balaban's induction runs.

## 3. What the printed regularity statements give, and why they do not suffice alone

3.1 R-006, CMP 109 p. 263 [V, text layer] and p. 264 [V, image]. p. 263: E^{(j)}(X, g_{j−1}, U, J) "is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic), with a positive, absolute γ". p. 264 after (1.22): β_{j+1} "is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives". Reading [I]: the argument is the own coupling g_j only; the earlier couplings are fixed by the sequence. Balaban says so on p. 298: "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants" (quoted in SOURCES_T2_B7_CLAMP 2.1). Along T_k all k + 1 entries move together. So R-006 gives continuity in the last slot only, and by Consequence 2(a) this does not give (C-T)_k.
3.2 R-007, CMP 109 p. 266 [V, text layer]: "Another possibility is to take g_k/γ_k ε_1 instead of ε_1 … It has the advantage that the functions E^{(j)}, β_j are analytic functions of the effective coupling constants". This is stated for a different cut, with no estimates printed. The project does not use it (ledger row R-007). It is not used here.
3.3 CMP 119 (2.28), p. 259 [V, text layer]: α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1}. These are radii of analyticity in the field variables (U, J), not in the couplings. They give nothing about dependence on (g_0, …, g_k). Not used here; Step 3 below uses only CMP 109's absolute α_0, α_1 (p. 263).
3.4 CMP 122 II p. 390 [V, text layer]: (1.97)–(1.100) bound the R-operation terms R′^{(k)}(X), analytic in (U, J) on U^c_k(X, α_0, α_1). These are large-field terms. By ledger row R-015 (verified reduction to conventions) and CMP 119 (2.24) p. 259 ("the coupling constants g_{j−1} are defined as in (I.0.20)") [V, text layer], β_j is the CMP 109 small-field coefficient (1.20)–(1.22). So no large-field term enters β_{k+1}, and p. 390 is not needed.
3.5 Conclusion of §3 [P]. No printed sentence states continuity of β_{k+1} in the earlier couplings, on the cube or on T_k. The route below does not look for such a sentence. It uses the fact that, on a true trajectory, the whole effective action is a finite-dimensional integral of the bare density (CMP 109 (0.17), (0.19), (2.1)), and that Balaban's E^{(k+1)} is, on a true trajectory, the difference of two such integrals.

## 4. Proof of (C-tr) (Route C: the finite-volume integral, then the volume limit)

Setting. Balaban works on a torus T; β_{k+1} is the T ↗ Z^d limit (1.22). Write T_N for the torus with N_j level-j cells per side (SOURCES_A15_WHOLE §5) and use a superscript N for every torus object. Sign convention of CMP 109: the density is exp(A_k), and A_k ≈ −(1/g_k²)A. The flow (0.20) p. 256 [V, image]: 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k), i.e. u_{k+1} = u_k − β_{k+1}, the Lean `tflow`.

Induction. Assume (C-tr) for the steps i < k. Then u₀ ↦ h_k(u₀) is continuous on D_k (proof of Lemma 2.1). Fix u₀ ∈ D_k and a sequence u₀ⁿ → u₀ in D_k. Write hⁿ := h_k(u₀ⁿ), h := h_k(u₀). Then hⁿ → h in ℝ^{k+1}, and hⁿ, h are true-trajectory histories with all couplings in ]0, γ]. By Lemma 2.1 it suffices to show β_{k+1}(hⁿ) → β_{k+1}(h).

### Step 1 [P-sketch]. On a fixed torus, the integral-defined actions are continuous in all couplings jointly.

Definitions, CMP 109 (0.17), (0.19) p. 255 and (2.1) p. 265 [V, images]:
  exp A_{j+1}(W) = N_j^{−1} ∫ dV δ(V̄W^{−1}) χ_j exp[−(1/g_j²)G(V) + A_j(V)],   exp A_0(U) = exp[−(1/g_0²)A(U)],
with N_j "the integral above with V = 1" (p. 256), G(V) = Σ_{y, x∈B(y), x≠y}[1 − Re tr V(y, x)] ≥ 0 the exponential gauge-fixing sum, and χ_j = Π_b χ({|B′(b)| < ε_1}) (2.9), p. 266 [V, text layer], where V = V′V^{(j)}(W), B′ = (1/i)log V′ (p. 265). V^{(j)}(W) is the critical point of V ↦ G(V) + A(U_j(V)) on the fibre V̄ = W ((2.2)–(2.3)); both terms carry the same factor 1/g_j², so V^{(j)}(W) is coupling-free.
Claim. For each j and each fixed configuration W in the domain, the map (g_0, …, g_j) ∈ ]0, ∞)^{j+1} ↦ A^N_{j+1}(W) is continuous, and exp A^N_{j+1}(W) ≤ C_{j+1}(g_0, …, g_j) with C_{j+1} locally bounded.
Proof. Induction on j. Base: exp A_0(U) = exp(−A(U)/g_0²) ∈ ]0, 1], continuous in g_0. Step: the integration runs over the fibre {V : V̄ = W}, a compact set, with the finite measure dV δ(V̄W^{−1}) (the conditional Haar measure; reading of Balaban's δ notation [I]). This measure and χ_j do not depend on the couplings. The integrand is exp(−G(V)/g_j²)·exp A_j(V): it is continuous in the couplings for each V (induction hypothesis), and bounded by C_j (since G ≥ 0) locally uniformly in the couplings. Dominated convergence gives continuity of the integral I_{j+1}(W) in (g_0, …, g_j). The integrand is > 0 and the χ_j region contains a neighbourhood of V^{(j)}(W) in the fibre, so I_{j+1}(W) > 0; the same holds for N_j = I_{j+1}(1). Hence A_{j+1}(W) = log(I_{j+1}(W)/N_j) is continuous, and exp A_{j+1}(W) ≤ C_j·|fibre|/N_j is locally bounded because N_j is continuous and > 0. ∎
Remarks. (i) The couplings enter only through the factors 1/g_j² (and 1/g_0² at the base). (ii) The domain restriction "U_j(V) ∈ U_j(ε_0)" is enforced by χ_j (p. 265, "We will define the characteristic function χ_k in such a way …"), so A_j is evaluated only where it is defined. (iii) With the alternative cut of p. 266 (threshold g_jε_1/γ_j), χ_j depends on g_j; the indicators converge almost everywhere because the level set {|B′(b)| = r} is a null set of the fibre, so dominated convergence still applies [P-sketch]. (iv) Step 1 uses no estimate of Balaban. It holds on the whole open cube of couplings, not only on trajectories.

### Step 2 [P given the reading of (1.6)]. On a true trajectory, E^{(k+1)} is a difference of two integral-defined actions.

CMP 109 (1.6) p. 261 [V, image]: A_k(U_k) = −(1/g_k²)A(U_k) + Σ_{j=0}^{k−1}{−β_{j+1}(g_j)A(U_k) + [E^{(j+1)}(g_j, U_k) − E^{(j+1)}(g_j, 1)]}. p. 261 [V, image]: "The function E^{(j)}(g_{j−1}, U_j) is a result of an integration in the j-th step, after a subtraction of the previous action evaluated at U_j." p. 256 [V, image]: "In the second step a new expression of this type is created, in the old only a background field is changed."
Subtract (1.6) at level k from (1.6) at level k + 1, both at the configuration U = U_{k+1}(W):
  A_{k+1}(U) − A_k(U) = −(1/g_{k+1}² − 1/g_k²)A(U) − β_{k+1}(g_k)A(U) + E^{(k+1)}(g_k, U) − E^{(k+1)}(g_k, 1).
On a true trajectory (0.20) gives 1/g_{k+1}² − 1/g_k² = −β_{k+1}(g_k), so the two A(U) terms cancel:
  (2.E)  E^{(k+1)}(g_k, U_{k+1}(W)) − E^{(k+1)}(g_k, 1) = A_{k+1}(W) − A_k(V^{(k)}(W)).
Here A_k(U_{k+1}(W)) = A_k(V^{(k)}(W)), because U_k(V^{(k)}(W)) = U_{k+1}(W) up to a gauge transformation (CMP 109 (2.3) and the next lines on p. 265, "U_k(V′V^{(k)}) = U′_k(V′)U_{k+1}" at V′ = 1 [V, image; R: [15] = CMP 102 Sect. G, minimization in stages]) and A_k is gauge invariant (1.19). Both terms on the right of (2.E) are integral-defined (Step 1): CMP 109 Theorem 3 (p. 264) [V, image] states that the actions "defined inductively by the small field renormalization transformations (0.17)–(0.20)" have the form (1.6). This is (2.E) as an exact identity on the real configurations W in the domain. It is the p. 261 sentence written as a formula.
Remarks. (i) The β-terms cancel only on a true trajectory. Off the trajectory the right side of (2.E) has the extra marginal term −(1/g_{k+1}² − 1/g_k² + β_{k+1})A, the "marginal shift in slot k" of SOURCES_T2_B7_CLAMP 2.2. Route C needs only trajectory histories, so the shift never appears. (ii) (2.E) fixes the total E^{(k+1)} as a function on real configurations. The split into polymer terms E^{(k+1)}(X, …) is not fixed by it and is not needed.
Consequence [P]. By Step 1 and hⁿ → h, for every real W in the domain on T_N: Fⁿ(W) := A^N_{k+1}(W; hⁿ) − A^N_k(V^{(k)}(W); hⁿ_{≤k−1}) → F(W), the same expression at h. V^{(k)}(W) is coupling-free, so the second term is Step 1 at the fixed configuration V^{(k)}(W).

### Step 3 [P given R-013 (Theorem 3), the causality reading, and the background-map input]. Second derivatives at B = 0 converge (Vitali).

Put, on T_N, f_h(B) := E^{(k+1)}(g_k, U_{k+1}(exp iB)) − E^{(k+1)}(g_k, 1) = Σ_{X∈D_{k+1}} [E^{(k+1)}(X, g_k, U_{k+1}(exp iB), J_{k+1}) − E^{(k+1)}(X, g_k, 1)], B a g-valued field on the bonds of T_N^{(k+1)}, so B ∈ ℂ^n with n finite.
Inputs.
 (B1) CMP 109 Theorem 3 (p. 264) [V, image] with the inductive assumptions (1.7), (1.9), (1.18) (pp. 261, 263): each E^{(k+1)}(X, g_k, U, J) is analytic on U^c_{k+1}(X, α_0, α_1), and |E^{(k+1)}(X, …)| ≤ E_0 exp(−κd_{k+1}(X)), with κ, α_0, α_1 "absolute" (p. 263) and E_0, γ fixed by Theorem 3. These constants do not depend on the history. [R: R-013 is Balaban's theorem; its proof rests on the inputs listed in ledger row R-013.]
 (B2) Causality [I]. Theorem 3 is stated for sequences with 0 < g_i ≤ γ for i = 0, …, K. For u₀ ∈ D_k only g_0, …, g_k are known to be ≤ γ; g_{k+1} may not be. E^{(k+1)} is produced by the step-(k+1) integral, which uses g_0, …, g_k only ((0.19): the step-(k+1) kernel carries 1/g_k²). Reading: the induction step k → k+1 of Theorem 3 uses g_k ≤ γ and the inductive assumptions at level k, not g_{k+1} ≤ γ. This is the same reading as SOURCES_T2_B7_CLAMP 4.1 [I]. CMP 109 p. 259 supports it: "we do not assume any special asymptotic behavior of the coupling constants" [V, text layer].
 (B3) Background map [R]. There is r > 0, free of the couplings, such that B ∈ ℂ^n, |B| < r, gives (U_{k+1}(exp iB), J_{k+1}) ∈ U^c_{k+1}(X, α_0, α_1) for every X, analytically in B. U_{k+1} is the minimizer (1.1) of the coupling-free Wilson action, so r is coupling-free. This is what (1.20) presupposes when it differentiates E^{(k+1)}(g_j, B) at B = 0; it is the Cauchy step of (Bd) in L-024 (Proposition A15-N) and the regular-class input R-018. CMP 109 p. 263 [V, text layer]: "the minimal configurations U_j satisfying the bound |∂U_j − 1| < ε_0ξ² with ε_0 sufficiently small, satisfy the above conditions".
Argument. By (B1)–(B3), every f_h with h ∈ T_k is holomorphic on the polydisc P_r ⊂ ℂ^n, and |f_h| ≤ 2Σ_X E_0e^{−κd(X)} ≤ M_N, with M_N finite on T_N and free of h (the sum (0.26) is finite on a torus). For real B with |B| < r, exp iB is a real configuration W in the domain, and f_h(B) = F_h(W) by (2.E). So fⁿ := f_{hⁿ} is a uniformly bounded sequence of holomorphic functions on P_r, and fⁿ → f := f_h pointwise on P_r ∩ ℝ^n (Step 2, Consequence). Montel: every subsequence of (fⁿ) has a further subsequence that converges locally uniformly on P_r to a holomorphic g. Then g = f on P_r ∩ ℝ^n. A holomorphic function on the polydisc is determined by its restriction to P_r ∩ ℝ^n (its Taylor coefficients at 0 are real derivatives), so g = f. Hence the whole sequence converges locally uniformly to f (Vitali). Cauchy's estimate on a smaller polydisc gives ∂_{B_μ^a(x)}∂_{B_ν^b(x′)}fⁿ(0) → the same derivative of f. By (1.20) p. 264 [V, image] these derivatives are Π^{ab,(N)}_{k+1,μν}(x, x′); the constant E^{(k+1)}(g_k, 1) drops out. So, for every x, x′ and μ, ν: Π^{(N)}_{k+1,μν}(hⁿ; x, x′) → Π^{(N)}_{k+1,μν}(h; x, x′). ∎
Note. Uniqueness of the analytic extension: (2.E) fixes f_h on real B, and the identity theorem fixes the extension. So Step 3 does not depend on which localized representation Balaban builds.

### Step 4 [P]. The torus coefficient converges.

Use the moment form (D1) of SOURCES_A15_WHOLE 5.1: β^{(N)}_{k+1}(h) := Σ_{x∈F_N} Π^{(N)}_{k+1,μν}(h; 0, x)x̂_μx̂_ν, μ ≠ ν. It is a finite sum of entries from Step 3, so β^{(N)}_{k+1}(hⁿ) → β^{(N)}_{k+1}(h) for every fixed N.

### Step 5 [P given L-024 and H-141 (Loc); constant reading P-sketch]. The volume limit is uniform on T_k.

L-024 (Proposition A15-N) (iii) [verified, SOURCES_A15_WHOLE 6.2 + VERIFY]: |β^{(N)}_j(g) − β_j(g)| ≤ C_jN_j^6e^{−mN_j/2}, m = ½min(δ_H, κ − κ_0). Its inputs are (Loc) = H-141, (Bd) = CMP 109 (1.18), (H) background-map decay at U = 1, (Cnt) polymer counting.
Constant reading [P-sketch, read from the proof in SOURCES_A15_WHOLE 6.2]: C_j and m depend only on E_0, κ, the Cauchy radius α_0 of (Bd), κ_0 = κ_0(d, L) of (Cnt), and C_H, δ_H of (H). (H) is a statement about the coupling-free background map at U = 1. E_0, κ, α_0 are history-free by (B1)–(B2). So for j = k + 1 the bound holds with one constant for every h′ ∈ T_k. L-024 is stated "at fixed j, fixed g"; the proof never uses the earlier couplings except through E_0, so the extension to all h′ ∈ T_k is the same proof.
Then |β_{k+1}(hⁿ) − β_{k+1}(h)| ≤ 2C_{k+1}N_{k+1}^6e^{−mN_{k+1}/2} + |β^{(N)}_{k+1}(hⁿ) − β^{(N)}_{k+1}(h)|. Choose N so that the first term is < ε, then n large by Step 4. ∎

### Step 6 [P]. Conclusion and base case.

Steps 1–5 give (C-β)_k from (C-tr) at the steps i < k. Lemma 2.1 gives (C-tr)_k. Base k = 0: D_0 = [γ^{−2}, ∞), h_0(u₀) = u₀^{−1/2}, and β_1 depends on g_0 only. Here R-006 suffices directly: β_1 is "a smooth function defined on the interval [0, γ]" (p. 264) [R: R-006, own slot = whole history when k = 0]. Steps 1–5 also cover k = 0. Induction on k gives (C-tr) for every k.

Theorem CTR [P-sketch given the inputs of §5]. Let 0 < γ ≤ γ_Bal (CMP 109 Theorem 3). For every k, u₀ ↦ u_{k+1}(u₀) is continuous on D_k = `Adm β γ k`, with β Balaban's β (any extension off true trajectories). This is the hypothesis `hcont` of `lemma_D_hist_adm`, `nested_shoot`, `lemma_DPrime_hist_adm`, `lemma_DDoublePrime_hist_adm`.

## 5. Inputs of Theorem CTR, with grades

| # | Input | Where used | Grade |
|---|---|---|---|
| 1 | Lemma 2.1: (C-tr) ⇔ continuity of β_{k+1} on the trajectory curve T_k; domain facts 1.4 | §2, §1.4 | [P] |
| 2 | Definitions (0.17), (0.19), (0.20), (2.1), (2.9) of CMP 109 pp. 255, 256, 265, 266 | Step 1 | [V] images (p. 266 text layer) |
| 3 | dV δ(V̄W^{−1}) is a finite, coupling-free measure on the compact fibre; χ_k region contains a fibre neighbourhood of V^{(k)}(W) | Step 1 | [I] reading of Balaban's notation |
| 4 | Dominated-convergence continuity of the torus actions in all couplings | Step 1 | [P-sketch] |
| 5 | (1.6) and the p. 261 sentence ("result of an integration … after a subtraction of the previous action evaluated at U_j"); (2.E) by cancellation with (0.20) | Step 2 | [V] images; algebra [P] |
| 6 | U_k(V^{(k)}(W)) = U_{k+1}(W) up to gauge (CMP 109 (2.3), p. 265; [15] = CMP 102 Sect. G) | Step 2 | [R] |
| 7 | CMP 109 Theorem 3 (p. 264): integral-defined actions have the form (1.6) with E^{(k+1)} analytic on U^c(X, α_0, α_1) and bounded by (1.18), constants history-free | Steps 2, 3, 5 | [R: R-013 chain, Balaban's theorem] |
| 8 | Causality: the bound on E^{(k+1)} needs g_0, …, g_k ≤ γ only, not g_{k+1} | Step 3 (B2) | [I] (same as SOURCES_T2_B7_CLAMP 4.1) |
| 9 | Coupling-free polydisc of radius r for B ↦ (U_{k+1}(exp iB), J_{k+1}) into U^c_{k+1} | Step 3 (B3) | [R: R-018; L-024 (Bd) Cauchy step] |
| 10 | Montel/Vitali in ℂ^n, n finite; identity theorem from P_r ∩ ℝ^n | Step 3 | [P] (textbook) |
| 11 | L-024 (Proposition A15-N) (iii) with H-141 (Loc) | Step 5 | [R: verified; (Loc) proved exact relative to K-033–K-037] |
| 12 | Constants C_{k+1}, m of L-024 depend only on E_0, κ, α_0, κ_0, C_H, δ_H, hence are uniform on T_k | Step 5 | [P-sketch] reading of the L-024 proof |
| 13 | β_j is the CMP 109 small-field coefficient (1.20)–(1.22), also in the full theory (CMP 119 (2.24)) | §3.4 | [R: R-015, definition-only use (N9)] |
| 14 | Base case: β_1 smooth in g_0 on [0, γ] | Step 6 | [R: R-006] (Steps 1–5 also cover it) |
| 15 | γ ≤ γ_Bal in the Lean instantiation | §1.4(d) | constant condition |

Not used [P, by inspection of Steps 1–6]: L-281 (Theorem SM); SOURCES_HHOL §2–§3; the CMP 116 single step at an off-trajectory mixed point (g′_l, I(h)) of SOURCES_T2_B7_CLAMP 5.2′; N6 (off-trajectory sup induction); the slot functions of SOURCES_HHIST §5; R-007; the CMP 119 (2.28) radii; CMP 122 II p. 390; any large-field step. Every Balaban object in Steps 1–6 is evaluated at a true-trajectory history in T_k. Step 1 alone is evaluated on the whole cube, but it uses no Balaban estimate.
NONMONO. Trajectories in D_k need not be monotone. The project's only monotonicity use (SOURCES_D3W8 F2′, via SOURCES_SM §5.1(a)) concerns R-induced terms. The CMP 109 small-field chain that defines β (item 13) has no R-terms. So item 7 needs no NONMONO input [I; agrees with SOURCES_T2_B7_CLAMP_VERIFY (b), "Under A15 F2′ is not used"]. If a verifier rejects this reading, add SOURCES_GGAIN_NONMONO [verified] to item 7.
Residual risk [I]. Item 7 says that Balaban's analytic E^{(k+1)} equals the exact remainder (2.E) of the χ-restricted integral, not an approximation of it. Theorem 3 states this ("the sequence of actions A_k, defined inductively by … (0.17)–(0.20), satisfy all the inductive assumptions"). Whether the CMP 116 proof keeps every complement-of-χ term inside E^{(k+1)} was not re-read here. If some term were dropped, (2.E) would hold up to that term, and Step 3 would need its continuity as well.

## 6. Comparison with SOURCES_T2_B7_CLAMP §5.2 (Path A) [P]

- Path A proves joint continuity of the step map F_l(g, I) in (own slot, inputs) and composes it along the curve. Its triangle step passes through the mixed point (g′_l, I(h)), which is on no trajectory (5.2′). Its inputs: CMP 116 single step on the ball 𝔅, L-281 (Theorem SM), HHOL §2–§3, R-015, Z^d activities, NONMONO or R-015 (B7_CLAMP_VERIFY).
- Route C never splits the step into own slot and inputs. It uses the exact fact that, along a true trajectory, A_{k+1} is a finite-dimensional integral whose integrand depends on the couplings only through factors 1/g_j². Joint continuity in the whole history is then elementary in finite volume (Step 1). Balaban's estimates enter only to pass from the action to the coefficient (Step 3: one uniform bound, history-free) and to take the volume limit (Step 5: L-024).
- Net change of the input list for H-089 (C-tr): removed L-281, HHOL §2–§3, the off-trajectory single step, the Z^d-activity input as a separate item (it is inside L-024), and (by the reading above) NONMONO. Added: the Step 1 measure reading [I] (item 3), the (1.6)/p. 261 reading (item 5), and the L-024 constant reading [P-sketch] (item 12). Unchanged: causality [I], R-015 (definition only), (Loc).
- B7_CLAMP §5.3 says (C-tr) is "open without A15", because β might depend on large-field outputs. Route C answers this through R-015's definition-only content: β_j is defined by CMP 109 (1.20)–(1.22) on the small-field chain (CMP 119 (2.24): "g_{j−1} are defined as in (I.0.20)"). So no large-field continuity is needed. The part of R-015 that Route C still uses is L-024 + (Loc) in Step 5, and the definition.

## 7. Status of L5 (R-031) and of H-089 (C-tr)

7.1 H-089 (C-tr). REDUCED [this file, unverified]. Theorem CTR proves `hcont` of the Lean theorems for Balaban's β, relative to: CMP 109 Theorem 3 p. 264 (R-013 chain) with the definitions (0.17)–(0.20), (1.6), (2.1), (2.9); the causality reading [I]; the fibre-measure reading [I]; minimization in stages (CMP 109 (2.3), CMP 102) [R]; the coupling-free background polydisc (R-018) [R]; L-024 + H-141 (Loc) [verified, relative to K-033–K-037] with the history-uniform constant reading [P-sketch]; R-015 as a definition. The printed statements named in the brief (R-006 own-slot smoothness, R-007 "(or analytic)", CMP 119 (2.28), CMP 122 II p. 390) do not give (C-tr) and are not used, except R-006 for the base case k = 0.
7.2 L5 (R-031). Route 2 of SOURCES_T2_B7_CLAMP (nested intervals, Lean `nested_shoot`, `lemma_DPrime_hist_adm`, `lemma_DDoublePrime_hist_adm`, all without `sorry`) needs exactly two Balaban-side hypotheses: `hbd` = (i-tr) (item 7′ on trajectories; SOURCES_T2_B7_CLAMP 5.1 [R], unchanged) and `hcont` = (C-tr) (this file). With this file, L5 is PROVED relative to: (i-tr) [verified reduction, 7′ ⇐ H0-red or GGAIN + NONMONO], the inputs of 7.1, and γ ≤ γ_Bal. No off-trajectory value of β and no off-trajectory evaluation of a step map remains in L5. Ledger text proposal for R-031 (for the runner, not applied here): "L5 PROVED relative to listed inputs: Route 2 (Lean, nested) + (i-tr) + H-089 (C-tr) by SOURCES_CTR Route C (finite-torus integral continuity, (2.E), Vitali, L-024 uniform limit) [unverified]; residue: causality [I], fibre-measure reading [I], (2.E) exactness of Theorem 3 [I], L-024 constant uniformity [P-sketch]".
7.3 What a verifier should check first. (a) Step 2: the cancellation needs (1.6) at levels k and k + 1 with the same functions E^{(j+1)}, j < k (p. 256 "in the old only a background field is changed"), evaluated at the same U. (b) Step 3: that (1.18) gives a bound uniform in the history, and that r in (B3) is coupling-free. (c) Step 5: the constant reading of L-024. (d) The residual risk of §5 (complement-of-χ terms inside E^{(k+1)}).
7.4 What is not proved here. Continuity of β_{k+1} off true trajectories (the cube, Route 1); this file does not need it. Real C¹ or analyticity in the history (needed by the HHIST/R-037 slot chain); Step 3 gives only continuity of the coefficient. j-uniformity of any constant; (C-tr) is a fixed-k statement and the Lean proofs use it at fixed K (SOURCES_T2_KUNIF).

Ledger.
[P] Lemma 2.1 and consequences; domain facts 1.4 (extension independence, relative topology, closedness of D_k given (C-tr)); identity (2.E) on true trajectories; Steps 3, 4, 6; §6 comparison.
[P-sketch] Step 1 (dominated convergence on the fibre); the alternative-cut remark; Step 5 constant uniformity; Theorem CTR as a whole.
[V] CMP 109 pp. 255, 256, 260, 261, 264, 265 (images); pp. 259, 263, 266 (text layer); CMP 119 pp. 258–259 (text layer); CMP 122 II p. 390 (text layer); Lean files LemmaDHist.lean, LemmaDHistNested.lean.
[I] fibre-measure reading of dV δ(V̄W^{−1}); causality (B2); Theorem 3 gives the exact remainder (residual risk §5); NONMONO not needed for the small-field chain.
[R] R-013 (CMP 109 Theorem 3 and its proof chain); CMP 109 (2.3) + CMP 102 Sect. G; R-018 (background polydisc); L-024 + H-141 (Loc); R-015 (definition only); R-006 (base case only).
