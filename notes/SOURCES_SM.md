IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_SM — the step-map Lipschitz bound (SM) for Lemma HH, from (W4)

Status 2026-10-27 (Claude, Opus; unverified). Inputs: SOURCES_HHIST §6–7, SOURCES_HHIST_N1_VERIFY Part 1, SOURCES_W4 §1–8, SOURCES_D3W8 §2.2–2.3 (F2′) + VERIFY S5/S8, CMP 109 pp. 270–280, CMP 116 Sect. 1–2. Firewall kept.
Sections are appended in order of work; the ledger (last section) is authoritative.

## 1. New quoted input: the per-input fluctuation-difference bound, CMP 116 (1.21)–(1.24), p. 7 [V, page image]

Verbatim (1.22): "1/|t_□| = 8B_0C_1e^{16κ_1}α_2^{−1}g_k|B| < 8B_0C_1e^{16κ_1}α_2^{−1}ε_1."
Verbatim (1.24), the bound of one term (1.23) of the curly-bracket expansion, built from ONE input E^{(j)}(X, ·):
  |(1.23)| ≤ 8B_0C_1e^{16κ_1}α_2^{−1}g_k|B| E_0 (α_1/α_3)^5 (L^jη)^5 · exp(−(κ_1−1)M^{−4}|Y_0∖□^4|) exp(−κd_j(X)).
Context (p. 7): "We were doing all the considerations for the last term in (I.3.34), hence we estimate the above expression using (I.3.54)." The term is the t_□-derivative at t_□ = 0, by Cauchy on the circle (1.22).
p. 8, verbatim: "To bound the first sum, over □′ ⊂ □_2, we use the factor (L^jη)^5 in (1.24). This yields (6L)^4L^jη, and the sum over j is bounded by 2(6L)^4." Result (1.29): "|Σ(1.23)| ≤ E_0ε_1O(M^4) exp O(1)κ_1 exp(−⅛κ_1d_k(Y))".
For the other bracket terms ((I.3.7)/(I.3.15)), p. 8: "The first term under the exponential gives also the factor L^jη, which controls the sum over j."

Reading. (1.24) is a per-slot statement. One input term E^{(j)}(X) enters the bracket with three separate factors:
 (i) its own size (E_0 = its sup on the analyticity domain, CMP 109 (1.18));
 (ii) the fluctuation factor α_2^{−1}g_k|B| ≤ α_2^{−1}ε_1 (Cauchy in t_□; this is the p. 280 mechanism);
 (iii) the scale factor (L^jη)^5, η = L^{−k}, which after the count of L^{4(k−j)} scale-j cubes □′ in a scale-k cube leaves (6L)^4 L^{−(k−j)}.
So the map I ↦ V′_k is linear, and its restriction to label j has norm ≤ K_V α_2^{−1}ε_1 L^{−(k−j)}, with K_V := 8B_0C_1e^{16κ_1}(α_1/α_3)^5(6L)^4·O(M^4)e^{O(1)κ_1} (constants of (1.24)–(1.29)). This is the decomposition the task asks for: "size of δI relative to I" = α_2^{−1}ε_1 (ii), and the per-label suppression = L^{−(k−j)} (iii). Note the exponent: the bracket gives decay L^{−1} per scale (from (L^jη)^5 against L^{4(k−j)} cubes), i.e. α_bracket = 1, not the α of (0.29).
Caveat [check]. The (L^jη)^5 in (I.3.54) is the fifth-order Taylor remainder in the field (CMP 109 p. 258: "The fifth order term can be bounded by E_0O((L^jη)^5)"); orders ≤ 4 are treated by the cancellations of Sect. I.4–5 (p. 298). For the derivative ∂_{g_i}, the lower-order parts are also linear in the input and cancel in the same way (HHIST §4, p. 298), so the per-slot factor applies to the remainder path only. This is the same restriction HHIST already uses.

Also quoted, CMP 109 (3.54), p. 280 [V, page image]: the fifth-order Taylor remainder of one input is bounded by Cauchy in the field:
  "≤ sup_{τ∈[0,1]} |∮_{|σ|=r} dσ (1/σ^6) E^{(j)}(X, U_j(□_0, exp i(τB + σB)))| ≤ E_0 α_3^{−5}|B|^5 exp(−κd_j(X))", then "Because |B| < O(1)L^jη, e.g. |B| < α_1L^jη, hence we have the required bound."
So (L^jη)^5 comes from the smallness of the fluctuation on the scale-j cube, and E_0 enters only as sup|E^{(j)}| on its analyticity domain. The bound is linear in that sup. It uses no irrelevance property of the input. [proved from the quote]

## 2. Derivation of (SM) from (W4) plus the linear-stage bound

2.1 Factorization [proved from W4 §1.1, §2.3, §4.2]. G(I) = Ĝ(𝓛I). Here 𝓛: I ↦ V′_k = {V′_k(Y, ·, B)}_{Y∈D_k} is the complex-linear map of CMP 116 Lemma 1, and Ĝ(V) := log ∫dμ_{C^{(k)}}(B) χ_k exp[P^{(k)}(g_k, U_{k+1}, B) + Σ_Y V(Y, B)], minus the input-free subtractions. Ĝ is defined for any family V of functions analytic on (1.34). Norm on such families: ‖V‖_* := sup_Y sup_{(U,J,B) on (1.34)} |V(Y,U,J,B)| e^{(1−2δ)κd_k(Y)}.
Input norm per label: ‖W^{(l)}‖ := sup_{X∈D_l} sup_{U^c_l(X,α_0,α_1)} |W^{(l)}(X,·)| e^{κd_l(X)} (CMP 109 (1.18) norm). This is the W4 sup norm, split by label. It contains no (L^lη) factor.

2.2 Fact A, per-label bound of the linear stage [proved for the (I.3.54) remainder from §1; reduced for the lower-order part]. For any input change W = {W^{(l)}}_{l≤k}:
  ‖𝓛W‖_* ≤ ε_1 K_V Σ_{l≤k} L^{−α_*(k−l)} ‖W^{(l)}‖.
K_V := 8B_0C_1e^{16κ_1}α_2^{−1}(α_1/α_3)^5(6L)^4·O(M^4)e^{O(1)κ_1}. Proof: (1.24) with E_0 → ‖W^{(l)}‖ (the bound is linear in the sup, §1), g_k|B| < ε_1, the □′-count (1.26)–(1.28) per label l. This gives α_* = 1. For the lower-order terms of (I.3.34) (Sect. I.4, Ward identities) Balaban states only "irrelevant … bounds of the form (0.28)" (p. 281), with (0.29) exponent α. Take α_* := min(1, α) [reduced: per-label linear form not displayed by Balaban; it is the same mechanism as (0.30)]. The marginal parts cancel against the counterterm fluctuation (p. 298). That identity is linear in the input, so it holds for W = ∂_{g_i}V as well (HHIST §4).

2.3 Fact B, the V-radius of Ĝ [reduced to CMP 116 (C1)–(C5), as in W4 §5]. In (C1)–(C4) the inputs enter only through the bound v on |V_k(Y)|e^{(1−2δ)κd_k(Y)}, where Balaban writes v = E_0ε_1C_1M^qe^{C_2κ_1}. (C4) with ε_2 = 2vα_4^{−1}α_6^{−1} reads v ≤ R_V, with
  R_V := α_4α_6e^{−5κ} / (4(L+2)^4·O(1)).
R_V contains neither ε_1 nor E_0. By W4 §4.3–4.4 with E_0ε_1C_1M^qe^{C_2κ_1} → v, Ĝ is holomorphic on {‖V‖_* < R_V} (input-free F-terms included in v), and
  |Ĝ(V)(X,(U,J))| ≤ S_V e^{−κ′d_{k+1}(X)},  S_V := K_H R_V,  K_H := O(1)·4(L+2)^4α_4^{−1}α_6^{−1}
(the (C4)–(C5) output bound O(1)C_3ε_1, with C_3ε_1 linear in v). Order of choice (W4 §5): κ, κ_1, M, the α's, γ_2 before ε_1. So R_V, S_V, K_H do not depend on ε_1. [reduced: assumes α_4, α_6 are fixed before ε_1, as W4 §5 reads Balaban]

2.4 Theorem SM [proved, given Facts A, B]. Let I_0 satisfy ‖𝓛I_0‖_* + v_F ≤ R_V/2 (v_F = bound of the input-free F-terms). Then for every W and every output slot:
  |DG(I_0)[W](X,(U,J))| ≤ θ_0 Σ_{l≤k} L^{−α_*(k−l)} ‖W^{(l)}‖ · e^{−κ′d_{k+1}(X)},  θ_0 := 2K_H K_V ε_1.
Proof. Chain rule: DG(I_0)[W] = DĜ(𝓛I_0)[𝓛W] (𝓛 linear). Fix the slot. z ↦ Ĝ(𝓛I_0 + z𝓛W) is holomorphic for |z|·‖𝓛W‖_* < R_V/2. Cauchy (W4 §7(a), now in V-space): |DĜ(V_0)[V_1]| ≤ S_V e^{−κ′d}‖V_1‖_*/(R_V − ‖V_0‖_*) ≤ 2K_H‖V_1‖_* e^{−κ′d}. Insert Fact A. ∎
The hypothesis holds for all ‖I_0‖ ≤ 2E_0 once 2E_0ε_1K_V(1 − L^{−α_*})^{−1} + v_F ≤ R_V/2. This is one more "ε_1 small" condition, same direction as (C2)–(C4).

2.5 Why the W4 Cauchy estimate gave O(1), and where θ comes from. W4 applied Cauchy in I-space on B_ρ, ρ = cE_0, with sup (c/2)E_0. The ratio is O(1). But G = Ĝ∘𝓛 and ‖𝓛‖ ≤ ε_1K_V′, K_V′ := K_V(1 − L^{−α_*})^{−1}. So G is holomorphic on the much larger I-ball of radius ρ_* := R_V/(2ε_1K_V′) ∝ 1/ε_1, with sup ≤ S_V there. Cauchy at radius ρ_* gives S_V/ρ_* = 2K_HK_V′ε_1, the same θ_0 up to the label sum. So the contraction is a statement about the SIZE of the holomorphy domain in the input variable, not about the sup. The domain is large because each input enters only through the fluctuation difference, which carries α_2^{−1}g_k|B| ≤ α_2^{−1}ε_1 ((1.22), (1.24)). In the decomposition the task asks for:
  θ_hop = (Lipschitz constant of Ĝ in the difference variable V = δI-image: 2K_H) × (size of the difference relative to the input: ε_1K_V, carrying α_2^{−1}ε_1, with label weight L^{−α_*(k−l)}).
So θ_0 = O(α_2^{−1}ε_1) × K, K := 2K_H·8B_0C_1e^{16κ_1}(α_1/α_3)^5(6L)^4O(M^4)e^{O(1)κ_1}. This is the form of p. 280 ("factor O(1)α_2^{−1}ε_1" against a constant "much bigger than E_0") and of the corrected (Eps) of D3W8_VERIFY S5 (ε′ = K·O(1)α_2^{−1}ε_1).
Corollary (Eps) [proved, given Facts A, B]. Integrate Theorem SM along the segment from 0 to I, ‖I‖ ≤ 2E_0: |G(I) − G(0)| ≤ θ_0(1 − L^{−α_*})^{−1}·2E_0·e^{−κ′d}. So D3W8's (Eps) holds with 2ε′ := 2θ_0(1 − L^{−α_*})^{−1}. (Eps) moves from [reduced, quote-reading] to [proved given (C1)–(C5) at V-radius R_V and Fact A].

## 3. (SM) in the HHIST form, and Lemma HH with explicit λ

3.1 (SM-a,b,c) [proved, given Theorem SM]. Slot g_k fixed. Inputs V^{(l)}, l ≤ k, changed by W^{(l)}. Then
 (a) |δE^{(k+1)}(X,(U,J))| ≤ θ_0 Σ_{l≤k} L^{−α_*(k−l)}‖W^{(l)}‖ e^{−κ′d_{k+1}(X)}, κ′ = (1−10δ)½Lκ ≥ κ for L ≥ 3 (so the output sits in the same norm);
 (b) |δβ_{k+1}| ≤ C_Π θ_0 Σ_l L^{−α_*(k−l)}‖W^{(l)}‖. C_Π := the norm of E ↦ β (1.20)–(1.22) on the (1.18) sup norm: Cauchy in B for the second derivative (radius set by α_0) times Σ_x x² e^{−κ′d}. A finite constant; this is HHIST §6 (SM-b) unchanged;
 (c) ‖δV^{(k+1)}‖ ≤ θ Σ_l L^{−α_*(k−l)}‖W^{(l)}‖, θ := C_Vθ_0, C_V := 1 + C_Π‖A‖ (‖A‖ = norm of the plaquette action in the label-(k+1) sup norm).
Change against HHIST §6: the norm is now the plain (1.18) sup norm per label. The label decay L^{−α_*(k−l)} comes from the bracket ((1.24), (I.3.54)), not from the norm. So HHIST's open item "(0.29) on complex fluctuated configurations" is no longer needed for (SM).
Linearization step used by Lemma HH [proved]. ∂_{g_i}E^{(k+1)} = DG(I(g))[∂_{g_i}I] at fixed g_k needs I(g) differentiable into the sup-norm space. By induction this follows from (SM) itself and from (B2) at the own slot.

3.2 Lemma HH, explicit [proved, given (B2) and Theorem SM]. Put
  θ = C_V·2K_HK_V·ε_1,  λ := L^{−α_*} + θ,  α_* = min(1, α).
Condition: θ < 1 − L^{−α_*}, i.e.
  ε_1 < (1 − L^{−α_*}) / (2C_VK_HK_V).
Then for i ≤ j−2: |∂β_j/∂g_i| ≤ (C_Π/C_V)S_0λ^{j−1−i}, and |∂β_j/∂g_{j−1}| ≤ C_β. The proof is HHIST §6 verbatim with α → α_*. With the exact solution of the recursion (N1_VERIFY Part 1) the constant improves by θ/λ: |∂β_j/∂g_i| ≤ (C_Π/C_V)S_0(θ/λ)λ^{j−1−i}. Column sum:
  sup_i Σ_{j>i}|∂β_j/∂g_i| ≤ C_β + C_Πθ_0S_0/(λ(1 − λ))·λ = C_β + C_Π θ_0 S_0/(1 − λ).
Read: the history part of the column sum is O(ε_1)·S_0, small when ε_1 is small. As ε_1 → 0, λ → L^{−α_*}.
On "θ_hop ≤ O(α_2^{−1}ε_1) + L^{−α}". In the recursion the per-step growth factor is λ = L^{−α_*} + θ. The first term is the direct feed of an old input (label decay, no ε_1); the second is one generation through G (ε_1 factor). So the task's θ_hop is λ, and θ_hop < 1 is the condition above. Both terms are now sourced: L^{−α_*} from (1.24)/(I.3.54) (+ p. 281 for lower orders), θ from (1.22)/(1.24) + (C4)–(C5).
Size of the margin. L > 11 in Balaban (CMP 109 p. 256). For the (I.3.54) part α_* = 1, so 1 − L^{−1} > 0.9. For the lower-order part α_* = α (not given numerically by Balaban). The condition is one more smallness condition on ε_1, in the same direction as Balaban's own; K_V contains e^{16κ_1}, e^{O(1)κ_1}, (6L)^4, M^4 and α_2^{−1}, so the required ε_1 is small but fixed, chosen after κ, κ_1, M, L, the α's.
u-slots (what SOURCES_HBETA (1.1) uses). |∂β_j/∂u_i| = ½g_i³|∂β_j/∂g_i|. So everything above transfers with S_0 → ½g_i³S_0.

## 4. (B2): the own-slot derivative ∂_{g_k}E^{(k+1)}

4.1 Structure of the g_k-dependence [proved from (2.12), one reading marked]. Change variables B̃ := g_kB. In (2.12) every g_k appears in one of three ways:
 - inside g_kCB = CB̃, hence inside B′ = CB̃ − hD̃(CB̃). B′ is g-free in B̃. So χ_k = Π_bχ(|B′(b)| < ε_1) (2.9), log σ(B′), the gauge-fixing term G(B′) (2.5), and the curly bracket {E_k(U_k(exp iB′V)) − E_k(U_k(V))} are all g-free in B̃;
 - Tr log(I − h(δ/δB D̃)(g_kCB)) is the Jacobian of the g-free map B̃ ↦ B′, so it is g-free [check: reading of Balaban's notation (δ/δB D̃) as the derivative of D̃ at the point g_kCB];
 - as the prefactor 1/g_k² = u_k of the terms ⟨H_1hD̃_3(·), J⟩, G_3(·), ⟨H_1·, Δ_1H_1hD̃(·)⟩, V(H_1(·)), each evaluated at a g-free function of B̃.
The measure dμ_{C^{(k)}}(B) becomes the Gaussian in B̃ with covariance C^{(k)}/u_k. Its normalization factor u_k^{n/2} is U-independent and cancels in E(U) − E(1).
Result: E^{(k+1)}(u_k) = log ∫ dμ_{C^{(k)}/u_k}(B̃) χ(B̃) exp[u_kΦ_1(B̃) + Φ_0(B̃) + {…}(B̃)], with Φ_0, Φ_1, χ, {…} independent of u_k. The u_k-dependence sits only in exp(−u_k[½⟨B̃, C^{(k)−1}B̃⟩ − Φ_1(B̃)]), which is entire in u_k. No boundary term from χ_k arises in these variables. In the B variables the same fact appears as a χ_k-boundary term with Gaussian weight e^{−O(ε_1²/g_k²)}.

4.2 Relative-disc holomorphy [reduced]. Write the u-shift as a vertex: exp(−(u − u_k)Q/2 + (u − u_k)Φ_1), Q := ⟨B̃, C^{(k)−1}B̃⟩, z := (u − u_k)/u_k. In the B variables this vertex is z·(−½⟨B, C^{(k)−1}B⟩ + u_kΦ_1(g_kB)): a quasi-local quadratic form plus z times Balaban's own cubic-and-higher vertices. For |z| ≤ z_0, z_0 a small field constant (z_0 ≤ α_4-type), the CMP 116 Sect. 2 chain runs with these vertices added, by the same domination as W4 §4.3 (vertex caveat W4 §7(d)). So E^{(k+1)} is holomorphic in u on |u − u_k| ≤ z_0u_k with sup ≤ C_uE_0e^{−κ′d}. [reduced: quadratic vertex of relative size z_0 inside Balaban's cluster expansion; same type as D3W8 §1 complex covariance; not run line by line]
Cauchy: |∂_{u_k}E^{(k+1)}(X)| ≤ (C_uE_0/z_0)g_k² e^{−κ′d}. In the g-slot: ∂_g = −2g^{−3}∂_u, so
  |∂_{g_k}E^{(k+1)}(X)| ≤ (2C_uE_0/z_0)·g_k^{−1} e^{−κ′d}.
So the holomorphy argument gives (B2) with S_0 = S_0′/g_k, S_0′ := 2C_uE_0/z_0. It does NOT give the uniform (B2) of HHIST. The loss is structural: the available sup bound E_0 does not scale with g_k, and any disc on which the bounds survive has radius ∝ u_k (or ∝ g_k in g).

4.3 What closes the gap. Two candidate inputs, either one suffices.
 (G-gain) The hop factor carries g_k: use g_k|B| instead of ε_1 in (1.22)–(1.24). CMP 116 p. 8, verbatim: "Another possibility is to use the expression g_k|B| instead of ε_1. It gives a better bound, but the above is simpler." With a B-weighted norm (|V(Y,B)| ≤ v·g_k(1 + |B|)^p e^{−(1−2δ)κd}), Fact B runs with the polynomial weight absorbed by the Gaussian, and θ_0 → θ_g g_k, θ_g := 2K_HK_V^{(g)} (no ε_1). [reduced: Balaban states the option and does not run it]
 (B2-unif) Balaban's p. 263–264 C^∞-in-g assumption, extended from β to E^{(l)} with uniform constants. This is an inductive assumption in CMP 109, not a proved bound (N1_VERIFY Part 1).
With (G-gain) the first hop already cancels the 1/g_i: s_{i+2} ≤ θ_g g_{i+1}·S_0′/g_i ≤ θ_gS_0′C_g Here C_g := sup_{i,m} L^{−α_*m/2}g_{i+m}/g_i < ∞: by (2.15), g_{i+m}² ≈ g_i²/(1 − β_0mg_i²), so g_{i+m}/g_i = O(1) unless m ≳ 1/(β_0g_i²), where L^{−α_*m/2} ≤ e^{−c/g_i²} ≪ g_i/γ. Later hops contract with λ_g := L^{−α_*/2} + θ_gγ (half the label decay is spent on g_{i+m}/g_i). Then for i ≤ j−2:
  |∂β_j/∂g_i| ≤ C_Πθ_gS_0′C_g·λ_g^{j−2−i}  (HHIST §6 induction started at s_{i+1} = S_0′/g_i, every hop factor θ_gg_k ≤ θ_gγ, the first one θ_gg_{i+1} cancelling 1/g_i),
column sum ≤ C_β + C_Πθ_gS_0′C_g/(1 − λ_g), uniform in i, j, K, provided θ_gγ < 1 − L^{−α_*/2}.
Without either input (only §4.2 and Theorem SM): column sum in g ≤ C_β + C_Πθ_0S_0′/(g_i(1 − λ)). In u-slots (SOURCES_HBETA (1.1)): ≤ ½C_βg_i³ + ½C_Πθ_0S_0′g_i²/(1 − λ). Then Σ_i over the trajectory has the term ε_1·Σ_ig_i² ~ ε_1β^{−1}log K. This is exactly the failing case of HBETA_VERIFY §5 ("column sum of order g_i^{−1} … gives Σg_i² ~ β^{−1}log K and fails"), with a small prefactor O(ε_1). Not uniform in K.

## 5. Final status of (H-hist), and ledger

5.1 Off-trajectory evaluation (I)/L3 [reduced, small-field chain]. Theorem SM and Fact B are history-free: their constants depend on ‖I‖ ≤ 2E_0 and on g_k only, not on g_0, …, g_{k−1}. So Balaban's small-field induction (‖I‖ ≤ E_0 ⇒ output ≤ E_0, recovered by ε_1) runs for every slot vector h_k ∈ [0, γ]^{k+1}, not only on the trajectory. This settles N1_VERIFY's caveat for the small-field chain. Two limits: (a) D3W8 F2′ (R-induced terms) uses g_j ≤ g_{j+1}; off-trajectory histories need not be monotone, so the slot cube must be restricted to monotone histories (enough for SOURCES_HBETA, whose c-histories are RG trajectories); (b) the identification "c-trajectory B_j = slot function on the c-history" is hypothesis (I) of SOURCES_HBETA and stays a separate convention.

5.2 Status of (H-hist).
 - Summable form needed by SOURCES_HBETA (column sum in u-slots ≤ C g_i^{2+δ}, or in g-slots ≤ C g_i^{−1+δ}): PROVED given (W4) for G [proved, W4 file], Fact A [proved for the (I.3.54) remainder; reduced for lower orders], Fact B [reduced to (C1)–(C5) at V-radius R_V], the ε_1 condition θ < 1 − L^{−α_*}, convention (I)/L3 (5.1), AND one of (G-gain) or (B2-unif) (§4.3). Rate λ = L^{−α_*} + θ (or λ_g with (G-gain)).
 - Without (G-gain)/(B2-unif): the history column sum is O(ε_1)/g_i in g-slots. This misses the HBETA threshold by exactly one power of g: Σ_i ε_1g_i² ~ ε_1β^{−1}log K. NOT uniform in K. (Eps) is not the bottleneck any more; the own-slot bound (B2) is.
 - The task's framing "(H-hist) proved given (W4), (Eps), (I)/L3" is therefore CORRECTED: (Eps) is now a corollary of Theorem SM (§2.5), and the missing input is the g-scaling of the own-slot derivative, not ε_1.

5.3 Ledger.
Proved here (given the stated inputs):
 - Factorization G = Ĝ∘𝓛 with 𝓛 linear; Theorem SM: |DG(I_0)[W]| ≤ θ_0Σ_lL^{−α_*(k−l)}‖W^{(l)}‖e^{−κ′d}, θ_0 = 2K_HK_Vε_1 (§2.4). The per-hop contraction comes from the size of the holomorphy domain in I (∝ 1/ε_1), not from the sup; W4's Cauchy at radius cE_0 is O(1), as the task expected (§2.5).
 - (Eps) of D3W8 as a corollary, ε′ = θ_0(1 − L^{−α_*})^{−1} (§2.5).
 - (SM-a,b,c) in the plain (1.18) sup norm per label; the label decay comes from the bracket. HHIST's open item "(0.29) on complex fluctuated configurations" is no longer needed (§3.1).
 - Lemma HH with λ = L^{−α_*} + C_V·2K_HK_Vε_1 and condition ε_1 < (1 − L^{−α_*})/(2C_VK_HK_V); column sum C_β + C_Πθ_0S_0/(1 − λ) (§3.2).
 - The g_k-dependence of one step is affine in u_k = 1/g_k² at fixed B̃ = g_kB, except for the Gaussian weight; no χ_k-boundary term in these variables (§4.1, one notation reading marked [check]).
 - With (G-gain): uniform column sum C_β + C_Πθ_gS_0′C_g/(1 − λ_g) (§4.3).
Quoted [V, page images]: CMP 116 (1.21)–(1.24) p. 7, p. 8 sums ("(6L)^4L^jη", "g_k|B| instead of ε_1"), (1.29); CMP 109 (3.54) and the p. 280 remark.
Reduced:
 - Fact A for the lower-order (Ward-identity) terms: per-label linear form with exponent α (p. 281 states irrelevance only).
 - Fact B: R_V = α_4α_6e^{−5κ}/(4(L+2)^4O(1)) independent of ε_1; rests on (C1)–(C5) with E_0ε_1C_1M^qe^{C_2κ_1} → v and on α_4, α_6 fixed before ε_1. The O(1) and the "big constant" K_V are not numerical in Balaban.
 - §4.2 relative u-disc: quadratic vertex z·Q of relative size z_0 inside the CMP 116 cluster expansion.
Open:
 - (G-gain): CMP 116 Sect. 2 run with the weighted bound g_k|B| instead of ε_1. Balaban says it "gives a better bound" and does not do it. This is now the single load-bearing open input for the summable (H-hist).
 - (B2-unif) as an alternative: uniform ∂_gE^{(l)}; only Balaban's inductive C^∞ assumption supports it.
 - Large-field (CMP 119/122) history dependence and the R operation (local radius only, W4 §6.2): not covered.
 - Numerical size of θ: K_H, K_V contain unstated O(1)'s; θ < 1 − L^{−α_*} is a smallness condition on ε_1 of Balaban's type, not checkable numerically.

## Correction 2026-10-28 (from SOURCES_A10_LOWER §5–§8 and SOURCES_A10_LOWER_VERIFY §1–§3; text above left unchanged)
C1 §1 transcription of CMP 116 (1.29). The 300 dpi image reads |Σ(1.23)| ≤ E_0ε_1O(M^q) exp O(1)κ_1 exp(−(1/16)κ_1d_k(Y)), "q is a small, nonnegative integer". "O(M^4)" and "⅛" in §1 are text-layer misreadings. Every O(M^4) in §1–§3 reads O(M^q). The norm ‖V‖_* with weight e^{(1−2δ)κd_k(Y)} needs Balaban's own assumption (1/16)κ_1 ≥ (1−2δ)κ (CMP 116 p. 9).
C2 Fact A exponent (§2.2). Replace α_* := min(1, α) by α_* := β_H, the Hölder exponent of CMP 109 (I.3.31)/(4.18). Balaban uses the letter β; it is renamed β_H here because β also names the (5.43) coefficient that defines β_j and the domain parameter (1+2β)α_0 of CMP 116 p. 7. Status: β_H is unprinted. CMP 109 prints only 0 ≤ β ≤ β_0 < 1; p. 288 needs "a positive β". So 0 < β_H ≤ β_0 < 1 is a parameter choice, fixed before L and ε_1. (This β_0 is the (I.3.31) bound, not the coefficient β_0 of (2.15) used in §4.3.) Source of the exponent: the (4+β_H)-type lower-order terms (p. 288; Π′ terms of (5.43)). The (I.3.54) remainder and the (4.22)-type terms decay as L^{−(k−l)} ≤ L^{−β_H(k−l)}; tails, F, R decay faster. The marginal parts cancel exactly by the definition of β_j; Π′, "(irrelevant terms)" of (4.42), and resummation errors are bounded separately (A10 §4). Fact A for the lower orders moves from [reduced] to [P given A10′].
C3 Constants that depended on min(1, α), recomputed with α_* = β_H:
 - K_V (§2.2): K_V := Σ_T C_T + (F, R, C constants), C_T := 16B_0C_1e^{16κ_1}α_2^{−1}K_T(6L)^4O(1)e (A10 §5, per label before the j-sum; factor 16 = 2·8 from the Cauchy route). For the (I.3.54) remainder K_T = (α_1/α_3)^5. The O(M^4) becomes O(M^q); for the (4.22)-type, K_T = (32B_3(α_1/α_2)c_0(δ_1)c_1(δ_1))^4 with δ_1 = O(M^{−1}) can carry a larger power of M. All K_T are fixed before ε_1; the (4+β_H)-type K_T are unprinted (A10 R1).
 - θ_0 = 2K_HK_Vε_1 (§2.4): unchanged in form, with the new K_V.
 - §2.4 hypothesis: 2E_0ε_1K_V(1 − L^{−β_H})^{−1} + v_F ≤ R_V/2.
 - §2.5: K_V′ := K_V(1 − L^{−β_H})^{−1}; K := 2K_H·α_2K_V (K_V without its α_2^{−1}).
 - (Eps) (§2.5): 2ε′ := 2θ_0(1 − L^{−β_H})^{−1}. For small β_H, (1 − L^{−β_H})^{−1} ≈ (β_H log L)^{−1}; at L = 13 it is 4.42 (β_H = 0.1), 1.38 (β_H = 0.5).
 - §3.1 (a)–(c): L^{−α_*(k−l)} = L^{−β_H(k−l)}.
 - §3.2 Lemma HH: θ = 2C_VK_HK_Vε_1, λ = L^{−β_H} + θ, condition θ < 1 − L^{−β_H}, i.e. ε_1 < (1 − L^{−β_H})/(2C_VK_HK_V). θ is symbolic, so the condition holds by taking ε_1 small after β_H and L. Column sum: C_β + C_Πθ_0S_0/(1 − λ); with θ ≤ ½(1 − L^{−β_H}) this is ≤ C_β + 2C_Πθ_0S_0(1 − L^{−β_H})^{−1}.
 - §3.2 "Size of the margin": "1 − L^{−1} > 0.9" holds only for the (I.3.54) part. The margin of the lemma is 1 − L^{−β_H}. At L = 13 it exceeds 0.9 only if β_H ≥ 0.898; it is 0.226 at β_H = 0.1 and 0.723 at β_H = 0.5, and < 0.923 for every β_H < 1. For general β_H the margin enters as the factor (1 − L^{−β_H})^{−1} in (Eps) and the HH column sum.
 - §4.3 (G-gain): λ_g := L^{−β_H/2} + θ_gγ, condition θ_gγ < 1 − L^{−β_H/2} (0.120 at L = 13, β_H = 0.1); C_g with L^{−β_Hm/2}; the C_g argument holds with c ∝ β_H log L. Column sum C_β + C_Πθ_gS_0′C_g/(1 − λ_g).
 - §5.3 ledger: read α_* = β_H throughout; the "reduced" item "Fact A for the lower-order terms" becomes [P given A10′, residue A10 R1–R4].
Downstream files that quote these constants (not edited here): PLAN.md, TRUST_LEDGER.md, SOURCES_SM_VERIFY.md, SOURCES_HHIST.md, SOURCES_HHIST_N1_VERIFY.md, SOURCES_HHIST2.md, SOURCES_GGAIN.md, SOURCES_GGAIN_VERIFY.md, SOURCES_GGAIN_LF.md, SOURCES_GGAIN_NONMONO.md, SOURCES_G4.md, SOURCES_HHOL.md, SOURCES_HHOL_LF.md, SOURCES_HIGHER_M1.md, SOURCES_HBETA_N3_VERIFY.md, SOURCES_T2_KUNIF.md, and paper/sources.tex.
