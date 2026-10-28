# SOURCES_HHIST — proof attempt of (H-hist), column-sum form

Status 2026-10-27 (Claude, Opus; unverified). Result: (H-hist) reduced to (B2) + (SM), §6–7; rate λ^m, λ = L^{−α} + θ.

## 1. Quoted inputs, CMP 109 Sect. 0 (read from page image, printed p. 258 = PDF p. 10)

Verbatim, p. 258: "We define the function β_j(g_{j−1}) to be equal to the coefficient β. Thus we obtain
  −β_j(g_{j−1}) A^η(U_k) + E^{(j)}(U_k) = Σ_{X∈D_j} V^{(j)}(X, U_k),   (0.28)
where the functions V^{(j)} satisfy the inequalities
  |V^{(j)}(X, U_k)| ≤ O(1)(L^jη)^{4+α} exp(−κ d_j(X)),  α > 0,   (0.29)
instead of (0.25). These inequalities yield a uniform bound of the sum (0.23) on the lattice T_η, i.e. the only dependence on k is through the volume |T_η| = |T_1^{(k)}|." Then (0.30): |E_k(U_k)| ≤ Σ_{j=1}^k O(1)(L^jη)^α M^{−4}|T_1^{(k)}| ≤ O(1)(1 − L^{−α})^{−1} M^{−4}|T_1^{(k)}|.

Reading. In (0.30) the sum Σ_{j≤k}(L^jη)^α is bounded by (1 − L^{−α})^{−1}. This forces L^kη ≤ 1, so η = L^{−k} in the k-th action (confirmed by (1.2), §2: U_k is smooth at scale η, |U(∂p) − 1| < ε_0η²). Hence (L^jη)^α = L^{−α(k−j)}. This is the suppression of a step-j remainder evaluated on the step-k background, per unit volume of T_1^{(k)}.

Mechanism (p. 258, verbatim): E^{(j)}(X, U_k) = E^{(j)}(X, exp iηH), expanded in H "up to the fifth order. The fifth order term can be bounded by E_0 O((L^jη)^5) exp(−κd_j(X)). The sum of lower order terms is analyzed with a help of Ward-Takahashi identities." So the factor comes from the SMOOTHNESS OF THE ARGUMENT U_k on the scale of X, not from any property of the coupling. The function V^{(j)} is fixed at step j; "in the old only a background field is changed" (p. 256).

Note on (0.27): large domains give exp(−κ(L^jη)^{−1}), also bounded by (5!/κ^5)(L^jη)^5.

## 2. Quoted inputs, CMP 109 Sect. 1 (page image, printed p. 260 = PDF p. 12; p. 263–264 from OCR, checked against THEOREM2 §3a)

(1.2), p. 260: the k-th action lives on U with |U(∂p) − 1| < ε_0η², **η = L^{−k}**, p ∈ T. This confirms the reading of §1: (L^jη)^α = L^{−α(k−j)}.

(1.3), p. 260, verbatim: "The action has the following form
  A_k(U_k) = −(1/g_k²) A(U_k) + Σ_{j=0}^{k−1} {−β_{j+1}(g_j) A(U_k) + [log Z^{(j)}(U_k) − log Z^{(j)}(1)] + [E^{(j+1)}(g_j, U_k) − E^{(j+1)}(g_j, 1)]}.   (1.3)
We have written explicitly terms of the order 0 in the coupling constants." (1.4): "Z^{(j)}(U_k) = ∫ dB δ(Q̃B) exp[−½⟨B, Δ^{(j)}(U_k)B⟩]".

p. 261 (OCR): "The function E^{(j)}(g_{j−1}, U_j) is a result of an integration in the j-th step, after a subtraction of the previous action evaluated at U_j."

p. 263 (OCR, = THEOREM2 §3a): E^{(j)}(X, g_{j−1}, U, J) "is a C^∞-function of g_{j−1} ∈ [0, γ], (or analytic), with a positive, absolute γ", with |E^{(j)}(X, g_{j−1}, U, J)| ≤ E_0 exp(−κ d_j(X))  (1.18) on the complex space U^c_j(X, α_0, α_1).

p. 264 (OCR): "the β-functions β_{j+1}(g_j). They are determined by the functions E^{(j+1)}(g_j, U_{j+1}) in (1.6). Let us denote E^{(j+1)}(g_j, B) = E^{(j+1)}(g_j, U_{j+1}(exp iB))." Π_{j+1} is the second B-derivative (1.20), and (1.22): β_{j+1}(g_j) = −(∂²Π̂_{j+1,μν}/∂p_μ∂p_ν)(g_j, 0) = Σ_x Π_{j+1,μν}(g_j, x) x_μ x_ν, μ ≠ ν. "It is a smooth function defined on the interval [0, γ], (or analytic), uniformly bounded on this interval together with all derivatives."

Two structural facts from (1.3):
 (a) The Gaussian terms log Z^{(j)} carry no coupling at all (order 0).
 (b) Each step-(j+1) summand depends EXPLICITLY on g_j only. The function E^{(j+1)}(g_j, ·) itself is a functional of the previous action A_j, i.e. of E^{(1)}(g_0, ·), …, E^{(j)}(g_{j−1}, ·). This is the "also depends on all preceding coupling constants" of p. 298. Balaban never gives a symbol for this dependence.

## 3. Quoted input, CMP 109 Sect. 2 (page image, printed p. 268 = PDF p. 20): how earlier steps enter step k+1

(2.12), p. 268, verbatim up to layout: "A_{k+1}(U_{k+1}) = −(1/g_k²) A(U_{k+1}) + E_k(U_{k+1}) + [log Z^{(k)}(U_{k+1}) − log Z^{(k)}(1)] + log N_k″^{−1} ∫ dμ_{C^{(k)}}(B) χ_k exp[ Tr log(I − h(δ/δB D̃)(g_kCB)) + log σ(g_kCB − hD̃(g_kCB)) + (1/g_k²)⟨H_1 hD̃_3(g_kCB), J⟩ − (1/g_k²) G_3(g_kB) + (1/g_k²)⟨H_1 g_kCB, Δ_1 H_1 hD̃(g_kCB)⟩ − (1/g_k²)⟨H_1 hD̃(g_kCB), Δ_1 H_1 hD̃(g_kCB)⟩ − (1/g_k²) V(H_1(g_kCB − hD̃(g_kCB))) + {E_k(U_k(exp i[g_kCB − hD̃(g_kCB)] V^{(k)})) − E_k(U_k(V^{(k)}))} ]."

"The expression under the exponential is clearly a sum of two terms, one is connected with the expansion of the action −(1/g_k²)A(U_k(V)) and the measure in (2.1), and we denote it by P^{(k)}(g_k, U_{k+1}, B), another is the expression in the curly bracket {...}. The integral in (2.12) defines the new term E^{(k+1)} …
  E^{(k+1)}(g_k, U_{k+1}) = log ∫ dμ_{C^{(k)}}(B) χ_k exp[P^{(k)}(g_k, U_{k+1}, B) + {...}].   (2.13)
Let us remark that the expression under the exponential above vanishes at g_k = 0". Then (2.15): 1/g_k² = 1/g_{k+1}² + β_{k+1}(g_k).

Consequences.
 (C1) The ONLY channel from the past into E^{(k+1)} is the curly bracket {E_k(fluctuated) − E_k(background)}. P^{(k)} depends on g_k and on the background U_{k+1}, not on g_0, …, g_{k−1}. The Gaussian measure dμ_{C^{(k)}} and χ_k carry no coupling.
 (C2) E_k here is the total accumulated term of (0.22)/(0.23): E_k = Σ_{j≤k}[−β_j(g_{j−1})A + E^{(j)}] (plus the coupling-free log Z terms of (1.3)). By (0.28) each bracket equals Σ_X V^{(j)}(X, ·). So the curly bracket is Σ_{j≤k} Σ_X [V^{(j)}(X, fluctuated) − V^{(j)}(X, U_k)]: the past enters ONLY through irrelevant remainders V^{(j)}, with the marginal parts −β_jA already absorbed. This is the structural fact the proof needs.
 (C3) The past couplings g_0, …, g_{k−1} enter V^{(j)} in two ways: explicitly (V^{(j)} contains β_j(g_{j−1}) and E^{(j)}(g_{j−1}, ·)), and through the functional form of E^{(j)}, which by (C1) is built from V^{(1)}, …, V^{(j−1)}. So the chain is multi-hop: g_i → V^{(i+1)} → E^{(i+2)} → V^{(i+2)} → … → E^{(j+1)} → β_{j+1}. The one-hop picture (g_i → V^{(i+1)} → transported to level j → β_{j+1}) is incomplete. §5 handles all hops.

## 4. Quoted inputs, CMP 109 Sect. 3–5 (OCR, readable at these lines)

p. 270 (Sect. 3 opening): "The problem we consider in this section is connected with terms in the curly bracket in (2.12). We want to represent them as a sum of localized, irrelevant terms, i.e. terms satisfying the bound (0.28)." The expansion (3.3)–(3.4) is written "for the function E^{(j)}", term by term in j and X: LINEAR in each earlier E^{(j)}.

p. 271–272: for domains X far from the cube □ or large, "either the exponential decay of propagators corresponding to ξ-scale, or the exponential bound (1.18) should give a small factor O((L^jη)^N) with an arbitrary power N". "Thus in both cases we have irrelevant terms."

p. 280: "Eventually we have to recover the constant E_0 in the inductive assumption (1.18), and the mechanism for it is provided by the differentiation with respect to t_□, at t_□ = 0. This differentiation yields a factor O(1)α_2^{−1}ε_1, and taking ε_1 sufficiently small we can get the required constant." Here ε_1 bounds the small-field size of the fluctuation B′ = g_kCB − hD̃(g_kCB) (3.2). This is the CONTRACTION of the past-to-present map: an input of size E_0 in the curly bracket produces new terms of size O(1)α_2^{−1}ε_1 × (big constant) × E_0.

p. 281: "The remaining terms are irrelevant according to our terminology, i.e. they satisfy bounds of the form (0.28) on their domains of analyticity."

p. 298 (after (5.43)): "Defining the function β_j as equal to the coefficient β in (5.43), we see that the first expression there is cancelled by the first expression in (4.42)." So inside step k+1, the marginal part of the fluctuation of an earlier E^{(j)} is cancelled by the fluctuation of the counterterm −β_jA. This confirms (C2): only irrelevant remainders of earlier steps feed step k+1.

p. 298, caveat: "In the next paper we will construct such localizations and prove the bounds. They are used to construct a cluster expansion of the integral in (2.13), and to finish the proof of the inductive assumptions for the term E^{(k+1)}". So the inductive bound (1.18) for E^{(k+1)} is completed in CMP 116 (paper II), not in CMP 109. Not read here.

p. 298: "We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants. The dependence on g_{j−1} is important and it determines main properties of the renormalization group equations."

## 5. Definition of the partials (item iv) and the marginal term (item iii)

**Slot representation.** Treat (g_0, …, g_k) ∈ [0, γ]^{k+1} as independent slots. Define inductively, for each slot vector h_k = (g_0, …, g_k):
 - A_k(h_k; U) by formula (1.3), with −(1/g_k²)A(U) as marginal term and the j-th summand built from slot g_j;
 - E^{(k+1)}(h_k; X, U, J) by (2.12)–(2.13) applied to A_k(h_k; ·): the explicit slot g_k enters through P^{(k)}(g_k, ·), B′ = g_kCB − …, and χ_k; slots g_0, …, g_{k−1} enter only through E_k inside the curly bracket;
 - β_{k+1}(h_k) by (1.20)–(1.22) from E^{(k+1)}(h_k; ·), and V^{(k+1)}(h_k; ·) := −β_{k+1}(h_k)A + E^{(k+1)}(h_k; ·) (plus the coupling-free log Z^{(k)} term in the (1.6) convention).
Then ∂β_j/∂g_i, i < j, means the partial in slot i at fixed other slots. This is well defined as soon as each step map is C¹ in its inputs (§6, input (SM)). On the RG trajectory, (2.15) fixes g_{k+1} = g_{k+1}(h_k), and Balaban's β_{k+1} is β_{k+1}(h_k) evaluated on that history. Off the trajectory, A_k(h_k) is the RG image of A_{k−1}(h_{k−1}) plus the marginal shift (1/g_{k−1}² − β_k(h_{k−1}) − 1/g_k²)A. The shift is in the marginal term, i.e. in slot k only. So the slot functions agree with Balaban's construction on the trajectory, and are the natural C¹ extension off it.

**Link to SOURCES_HBETA.** The variational equation there, v_j = v_{j−1} − Σ_{i<j}(∂β_j/∂u_i)v_i, is the chain rule for c ↦ β_j(u_0(c), …, u_{j−1}(c)). It needs exactly these slot partials. Hypothesis (I) of SOURCES_HBETA is the statement that the c-trajectory's B_j equals the slot function on the c-history.

**Marginal term (item iii).** In the slot representation, 1/g_k² appears only as the coefficient of the marginal term of A_k, and it is slot k. Along the trajectory, 1/g_k² = 1/g_i² − Σ_{l=i+1}^{k} β_l(h_{l−1}), so 1/g_k² depends on g_i. That dependence is the chain-rule factor dg_k/dg_i (in u-variables, v_k/v_i). In Lemma H it is carried by v_k, not by ∂β_{k+1}/∂g_i. Writing the marginal coefficient as 1/g_i² − Σβ and differentiating it inside ∂β_{k+1}/∂g_i would count it twice. Also, the counterterms −β_l A for l ≤ k are not marginal inputs to step k+1: by (0.28) they are combined with E^{(l)} into V^{(l)}, and by p. 298 their fluctuation cancels the marginal fluctuation of E^{(l)}. So (H-hist) concerns only the remainder path: slots i < k enter E^{(k+1)} only through V^{(i+1)}, …, V^{(k)}.

## 6. The chain (item i) and the proof of (H-hist) in column-sum form

**Norm.** For a family W = {W(X, ·)}_{X∈D_l} of localized, gauge- and Euclidean-invariant functions created at step l, let ‖W‖_l be the least σ with |W(X, U)| ≤ σ (L^lη)^{4+α} e^{−κ′d_l(X)} for every later level k ≥ l, η = L^{−k}, and every U in the level-k small-field domain (complex extension included), κ′ ≤ κ fixed. By (0.29), ‖V^{(l)}‖_l ≤ O(1).

**Counting fact [proved from (0.29)–(0.30)].** A π_k cube contains L^{4(k−l)} π_l cubes. So an input with ‖W‖_l ≤ w contributes at most O(1) w (L^{l−k})^{4+α} L^{4(k−l)} = O(1) w L^{−α(k−l)} per π_k cube at level k. This is the term-by-term content of (0.30).

**The chain (item i).** Fix a slot i. Then:
 1. g_i enters E^{(i+1)}(g_i, ·) and β_{i+1}(g_i) explicitly (own slot), hence V^{(i+1)}.
 2. For each k ≥ i+1, V^{(i+1)}, …, V^{(k)} enter step k+1 only through the curly bracket of (2.12), as V^{(l)}(U_k(exp iB′ V^{(k)})) − V^{(l)}(U_k(V^{(k)})) (by (C1), (C2), p. 298).
 3. Step k+1 produces E^{(k+1)}, then β_{k+1} (linear extraction (1.20)–(1.22)) and V^{(k+1)} (remainder (0.28)).
 4. V^{(k+1)} feeds step k+2 by item 2. So g_i reaches β_{j+1} along every path i+1 = l_0 < l_1 < … < l_r = j+1, one hop per new step.

**Inputs.**
 (B1) [quoted, (0.29), p. 258] ‖V^{(l)}‖_l ≤ O(1) for all l.
 (B2) [Balaban states C^∞ in g_{l−1} (p. 263) but gives the bound (1.18) only for E^{(l)} itself; uniform derivative bound NOT stated] ‖∂_{g_{l−1}}V^{(l)}‖_l ≤ S_0 and |∂β_l/∂g_{l−1}| ≤ C_β, uniformly in l. The second is p. 264 ("uniformly bounded … together with all derivatives"). The first needs the same for E^{(l)}, then the linear extraction of (SM-c).
 (SM) [step-map Lipschitz bound; reduced, not quoted] If the inputs V^{(l)}, l ≤ k, of step k+1 are changed by W^{(l)} with ‖W^{(l)}‖_l ≤ w_l, at fixed slot g_k, then
   (a) the change of E^{(k+1)} obeys (1.18)-form bounds with constant θ_0 Σ_{l≤k} L^{−α(k−l)} w_l;
   (b) |δβ_{k+1}| ≤ C_Π θ_0 Σ_l L^{−α(k−l)} w_l;
   (c) ‖δV^{(k+1)}‖_{k+1} ≤ θ Σ_l L^{−α(k−l)} w_l, θ := C_V θ_0.
  Support: the curly bracket is linear in the inputs (p. 270, (3.3)–(3.4)); the counting fact gives the L^{−α(k−l)}; the t_□-derivative gives the factor O(1)α_2^{−1}ε_1 (p. 280), so θ_0 = (big constant) × O(1)α_2^{−1}ε_1, small when ε_1 is small; log∫exp is analytic in the insertions where the cluster expansion converges (CMP 116, not read), so apply the estimates to V + tW, |t| ≤ 1, and use Cauchy in t; (b) holds because the second moment of the second B-derivative is a bounded linear functional on functions obeying (1.18) (Cauchy in B on the analyticity domain plus exponential localization for the x² moment); (c) holds because the extraction E ↦ (β, V) of Sect. 4–5 is linear and uses only gauge invariance, Euclidean invariance, and analyticity, which ∂_{g_i} and δ preserve.

**Lemma HH.** Assume (B1), (B2), (SM), and θ < 1 − L^{−α}. Put λ := L^{−α} + θ < 1. Then for all j and all i ≤ j−2,
  |∂β_j/∂g_i| ≤ (C_Π/C_V) S_0 λ^{j−1−i},
and |∂β_j/∂g_{j−1}| ≤ C_β. So (H-hist) holds with C_1 := max(C_β, C_Π S_0/C_V), a_m = λ^m, A = 1/(1 − λ), and the column sum is sup_i Σ_{j>i} |∂β_j/∂g_i| ≤ C_β + (C_Π/C_V) S_0 λ/(1 − λ). Constants are independent of j, K, i, and the volume.

**Proof.** Fix i. Put s_l := ‖∂_{g_i}V^{(l)}‖_l for l ≥ i+1; s_l = 0 for l ≤ i (slot i does not enter earlier steps). Differentiate the slot construction in g_i: for k ≥ i+1, slot g_k is fixed, and the inputs of step k+1 change by W^{(l)} = ∂_{g_i}V^{(l)}, l = i+1, …, k. By (SM):
  s_{k+1} ≤ θ Σ_{l=i+1}^{k} L^{−α(k−l)} s_l,   |∂_{g_i}β_{k+1}| ≤ C_Π θ_0 Σ_{l=i+1}^{k} L^{−α(k−l)} s_l,
and s_{i+1} ≤ S_0 by (B2). Claim s_l ≤ S_0 λ^{l−i−1}. True for l = i+1. If true up to k, then
  Σ_{l=i+1}^{k} L^{−α(k−l)} λ^{l−i−1} = λ^{k−i−1} Σ_{n=0}^{k−i−1} (L^{−α}/λ)^n ≤ λ^{k−i−1} · λ/(λ − L^{−α}) = λ^{k−i}/θ,
so s_{k+1} ≤ S_0 λ^{k−i}. The same sum gives |∂_{g_i}β_{k+1}| ≤ C_Π θ_0 S_0 λ^{k−i}/θ = (C_Π/C_V) S_0 λ^{k−i}. Set j = k+1. ∎

**Remarks.**
 (a) The task's guess a_m = L^{−αm} is the one-hop term only. Multi-hop paths (item 4) raise the rate to λ = L^{−α} + θ. As ε_1 → 0, θ → 0 and A → 1/(1 − L^{−α}), the predicted value. For L > 11 (p. 256) and any α > 0 the margin 1 − L^{−α} is fixed, so θ < 1 − L^{−α} is a smallness condition of Balaban's own kind (ε_1 small, then γ small).
 (b) If the hop factor also carries g_k (B′ = g_kCB, so the curly bracket vanishes at g_k = 0, p. 268), then θ = O(γ)·(…) and the bound improves to |∂β_j/∂g_i| ≤ C g_{j−1} λ^{j−1−i}. Not needed for SOURCES_HBETA Lemma H.
 (c) The weaker forms of SOURCES_HBETA_VERIFY §5 (column sum ≤ C g_i^{−1+δ}) are not needed: the column sum is bounded.

Check [num]: the recursion s_0 = 1, s_{k+1} = θ Σ_{l≤k} L^{−α(k−l)} s_l was iterated 60 steps for (L, α, θ) = (13, 0.5, 0.1), (13, 0.1, 0.5), (3, 1, 0.3). In all cases s_n = λ^n to rounding (ratio 1.0). So the bound of Lemma HH is sharp for the recursion, and with θ ≥ 1 − L^{−α} (second case, λ = 1.27) the rate is not summable. Run inline (python -I heredoc, no file kept).

## 7. Ledger

Proved here (given the inputs):
 - Lemma HH: (B1) + (B2) + (SM) + θ < 1 − L^{−α} ⇒ |∂β_j/∂g_i| ≤ C_1 λ^{j−1−i}, λ = L^{−α} + θ, A = 1/(1 − λ); column sum bounded uniformly in i, j, K. This is (H-hist) in the full Toeplitz form, so a fortiori the column-sum form.
 - Precise meaning of the partials (§5): slot representation built from (1.3) and (2.12)–(2.13); it agrees with Balaban's construction on the trajectory, and it is what the variational equation of SOURCES_HBETA uses.
 - Marginal term (§5): the g_i-dependence of 1/g_j² along the trajectory is the chain-rule factor v_j of Lemma H. It is not part of ∂β_{j+1}/∂g_i. Counting it inside ∂β would double count.
 - Structural: the past enters step k+1 only through the curly bracket of (2.12), and only through irrelevant remainders V^{(l)} (marginal parts cancel, p. 298). The chain is multi-hop; one-hop alone gives L^{−αm}, all hops give λ^m.
 - Counting fact: a step-l remainder costs L^{−α(k−l)} per π_k cube at level k (from (0.29)–(0.30), η = L^{−k} by (1.2)).

Reduced to quoted bounds (quoted verbatim, page given):
 - (B1) = (0.29), p. 258; η = L^{−k} from (1.2), p. 260.
 - |∂β_l/∂g_{l−1}| ≤ C_β: p. 264, "uniformly bounded on this interval together with all derivatives".
 - Contraction factor of the past-to-present map: p. 280, "a factor O(1)α_2^{−1}ε_1".
 - Linearity of the curly-bracket expansion in each E^{(j)}: p. 270, (3.3)–(3.4). Marginal cancellation: p. 298.

Open (not in CMP 109, not proved here):
 - (B2) for E: a uniform bound |∂_g E^{(l)}(X, g, U, J)| ≤ E_1 e^{−κd_l(X)} on U^c_l. Balaban says only "C^∞-function of g_{j−1} … (or analytic)" (p. 263). Analyticity in g on a uniform complex disc would give it by Cauchy. LEMMAS Lemma E remark (i) warns that large-field terms are not analytic at g = 0; CMP 109 is small-field only, so this may hold there, but it is unchecked.
 - (SM) as a quantitative Lipschitz statement. Balaban proves a BOUND map (inputs ≤ E_0 ⇒ outputs ≤ E_0), not a Lipschitz map. The Cauchy-in-t argument converts one into the other only if the step is analytic in the insertions on a disc of fixed radius in the inductive class. That requires the cluster expansion of CMP 116 (p. 298: "In the next paper we will construct such localizations and prove the bounds"), which was not read. The value of θ_0 (and hence whether θ < 1 − L^{−α}) depends on the "big constant" of (3.54), which Balaban does not make explicit.
 - (0.29) on complex fluctuated configurations. Balaban does not use (0.29) this way; Sect. 3 re-expands E^{(j)} with (1.18). (SM-a) in the form stated relies on the per-cube irrelevance of each input on the complex fluctuation domain.
 - Large-field contributions (CMP 122) and the gauge-fixing weight (SOURCES_HBETA §4(d)): not covered. They may add history dependence outside the small-field chain.
 - Hypothesis (I) of SOURCES_HBETA remains a separate input.

Verdict: (H-hist) is reduced to two statements about Balaban's step map that he does not state: a uniform C¹ bound in the own coupling for E^{(l)} (B2), and a Lipschitz form (SM) of his inductive bound, with contraction constant θ < 1 − L^{−α}. Both are of the same type as his stated assumptions and are expected to follow from the CMP 116 cluster expansion, but neither is proved. The predicted rate L^{−αm} is corrected to (L^{−α} + θ)^m.
