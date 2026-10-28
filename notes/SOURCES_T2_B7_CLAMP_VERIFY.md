IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_T2_B7_CLAMP verification

Verifier: independent, firewall kept (no sa_repo, no SA map, no online sweep).

## V1. Task (a): envelope arithmetic of D″-nest (§4.2) — redone by hand

Flow u_{k+1} = u_k − β_{k+1}(h_k). T_0(k,K) = β_{k+1}(0) + T_0(k+1,K), T_0(K,K) = 0.
Single-step bound from (i-tr)/7′: β_{k+1}(h_k) ∈ [β_{k+1}(0) − C_1g_k, β_{k+1}(0) + C_1g_k] ⊂ β_{k+1}(0) ± b/4, since g_k ≤ γ ≤ b/(4C_1).
Recursion: p_{k+1} = t + T_0(k,K) − β_{k+1}(0) − (b/4)(K−k) + b/4 = p_k − β_{k+1}(0) + b/4. Same for q with −b/4. Checked.
Invariance: u_k = p_k ⇒ u_{k+1} ≤ p_k − β_{k+1}(0) + b/4 = p_{k+1}; u_k = q_k ⇒ u_{k+1} ≥ q_{k+1}. So the image of I_k under u_{k+1} covers [p_{k+1}, q_{k+1}]. The sign of β_{k+1}(0) never enters: the envelopes subtract β_{k+1}(0) exactly, and the slack (b/4)(K−k) shrinks by exactly b/4 per step, which equals the worst-case error C_1γ. So negative increments are absorbed. CONFIRMED.
IVT selection (c_{k+1} = first hit of q_{k+1}, a_{k+1} = last hit of p_{k+1} before c_{k+1}): correct; values on ]a_{k+1}, c_{k+1}[ lie strictly between p_{k+1} and q_{k+1}. Note: I_0 = [p_0, q_0] with a_0 < c_0, and a_{k+1} ≤ c_{k+1} by construction, so the "c_k < a_k symmetric case" never occurs (harmless remark). I_{k+1} ⊆ I_k, so the bounds for i ≤ k are inherited.
(e1): p_k ≥ t + (b(K−k) − 2R) − (b/4)(K−k) ≥ t − 2R ≥ γ^{−2} for t ≥ γ^{−2} + 2R, i.e. g ≤ g_1 = (γ^{−2} + 2R)^{−1/2} = v4's g_1 with D = 2R. Checked.
Domain step: u_m − u_n = T(m,n) ∈ T_0(m,n) ± (b/4)(n−m). This needs (5.1) for every endpoint n ≤ K, not only n = K. v4 §2.2 states (5.1) for all K (and "K → n"), so this holds; the file should say it uses (5.1) at endpoint n. Then T(m,n) ∈ [(3b/4)(n−m) − 2R, (5b/4)(n−m) + 2R]: lower side of (c′) with β = 3b/4, D′ = 2R; upper ≤ (5b/4 + 2R)(n−m) for n−m ≥ 1 = B′(n−m). These equal v4 §2.2 constants exactly.
Induction order: (i-tr) at step i needs h_i ∈ Dom_i, which needs (c′) for pairs ≤ i, which uses (i-tr) at steps < i on prefixes. Well founded. Checked.
Minor: §4.2 says "(S) is g_i ≤ γ". In v4 §1.2, (S) is a condition on the constants (γ^{−2} ≥ c_sw D′, γ ≤ γ_*), not on the history. It is met by the choice of γ (v4 §6 order), so Dom_k needs only u_i ≥ γ^{−2} plus (c′). Wording fix, no gap.
D′-nest (§4.3): p_k − t = Σ_{i>k}(β_i(0) − β_∞/4) ≥ −J(B + β_∞/4) = −J·B′ = −D (v4 D). Domain step gives T(m,n) ≥ (β_∞/4)(n−m) − J(B + β_∞/2) (v4 D′) and ≤ B′(n−m). Matches v4 §2.1 (c) constants, with C_1γ ≤ β_∞/4 (v4 γ). CONFIRMED; the file's "rest unchanged" should name the D′ constants (slope β_∞/4, D′ = J(B+β_∞/2)) for the domain step.
(4.4) (c′) on every admissible trajectory: correct by the same domain step.
Result (a): envelope arithmetic CONFIRMED; constants equal v4's (b), (c′) for both D″ and D′.

## V2. Tasks (c), (d): Path A and the new γ condition

Read: SM §2.4, §3.1, §5.1 (+ SM_VERIFY grades 1–5); HHOL §1–§3 (+ VERIFY (1)–(4)); ORDER_CANON B30, l. 144.
(c) Path A, rederived. Write F = F_l(g, I), 𝔅 = W4 ball (c = 2). Two facts:
 (A1) SM §2.4/§3.1(a): at fixed real own slot, ‖D_I F[W]‖_{l+1} ≤ θ_0 Σ_m L^{−α_*(l−m)}‖W^{(m)}‖_m, constants free of the past and of g (θ_0 = 2K_HK_Vε_1; SM §5.1). Holomorphy holds on an I-ball of radius ∝ 1/ε_1 ⊃ 𝔅, and 𝔅 is convex, so the mean-value inequality gives the Lipschitz form with Θ_{lm} = θ_0L^{−α_*(l−m)} ≤ θ_0. CONFIRMED (SM is a verified reduction to (C1)–(C5) + Facts A/B; SM_VERIFY grade 1 caveat on the Q-part norm carries over).
 (A2) HHOL 3.3: for x ∈ ]0, γ] real and I ∈ 𝔅, g ↦ F(g, I)(X, U) is holomorphic on |g − x| < ρ_0x, weighted sup ≤ 0.62cE_0 ≤ cE_0, uniform in I ∈ 𝔅 and volume. The weight e^{−κ′d(X)} and the field domain are g-free (cut χ g-free in B̃ units, SM_VERIFY l. 41). Cauchy at distance ≥ ρ_0x/2 from the circle: |∂_gF| ≤ 2cE_0/(ρ_0x) on |g − x| ≤ ρ_0x/2. Arithmetic CONFIRMED. Same 1/g form as SM §4.2 (2C_uE_0/(z_0g_k)), an independent check.
 Joint bound (written out). For real g, g′ ∈ ]0, γ], |g − g′| ≤ ρ_0g/2, I, I′ ∈ 𝔅:
  ‖F(g,I) − F(g′,I′)‖ ≤ ‖F(g,I) − F(g′,I)‖ + ‖F(g′,I) − F(g′,I′)‖ ≤ (2cE_0/(ρ_0g))|g − g′| + θ_0 Σ_m L^{−α_*(l−m)}‖V^{(m)} − V′^{(m)}‖_m.
 The middle point (g′, I) needs only: F(g′, ·) defined on 𝔅 (single CMP 116 step, own slot ≤ γ) and the SM bound at own slot g′. Both are history-free.
 Recursion for local Lipschitz constants (sup norm on slots, neighbourhood |g_i − g_i′| ≤ ρ_0g_i/2): with Λ_l := Lip(h_{l−1} ↦ V^{(l)}),
  Lip(E^{(l+1)}) ≤ 2cE_0/(ρ_0 g_l) + θ_0 Σ_{m≤l} L^{−α_*(l−m)} Λ_m,  Λ_{l+1} ≤ C_V·Lip(E^{(l+1)}),  Lip(β_{l+1}) ≤ C_Π·Lip(E^{(l+1)}),
 C_V = 1 + C_Π‖A‖ (SM §3.1(c)). Finite for each k, of size ≲ (C_V)^k·max_i(1/g_i). So joint local Lipschitz: CONFIRMED. No Hartogs/Osgood needed: CONFIRMED.
 W4-ball uniformity: (A2) is uniform on 𝔅 (HHOL 3.2 (C1′) with cE_0; 3.3 output 0.62cE_0 < cE_0); (A1) holds on a larger ball. Membership of the inputs in 𝔅 is Balaban's sup induction (on trajectories) or N6 (off). One caveat the file does not state: 𝔅 is defined on V^{(l)} = −β_lA + E^{(l)}, while HHOL/SM close the induction on the E-terms; the passage E ↦ V costs C_V and is Balaban's own booking (p. 280 recovery of E_0). Inherited, not new to B7.
 HHOL VERIFY (1) (X-modes: ρ_0 → ρ_0/√2) only shrinks the radius; (A2) holds with ρ_0/√2. The file mentions it; fine.

(d) New γ condition (1 + ρ_0)γ(1 − 2ρ_0²)^{−1/2} ≤ γ_hol.
 Source: HHOL K3 / 2.3: the dominating Gaussian is the real one at x′ = x/√Re w ≤ x(1+ρ)(1−2ρ²)^{−1/2} (1.111x at ρ = 0.1). The author asks x′ ≤ γ_hol for x ≤ γ.
 Check: HHOL_VERIFY l. 23 says "real integrand at larger coupling" is shorthand: the cut and (2.31) stay at the real x (HHOL 2.3(v), 3.2), and the wider Gaussian is absorbed by the 1.235 slack in α_5, ε_1 ((2.24′), (C2′)–(C4′)), not by a coupling condition. So HHOL needs no γ condition beyond x ≤ γ (CMP 116 (2.31) at real x). The new condition is not derived from HHOL; it is a redundant safety margin. "γ_hol" is defined nowhere in the sources I read; the file must define it (natural reading: the B30 γ without this item).
 Canon placement: it is an upper bound on γ with arguments ρ_0 (B-order: ρ_0 before γ, ORDER_CANON l. 173) and γ_hol (B30 list: (2.31) etc., fixed after M, κ). Add to B30. Upper bound only: YES. Cycle with γ_hol: NONE, provided γ_hol is the B30 bound computed without this item (otherwise γ_hol would depend on γ). Harmless either way.
 Grade of the γ part: CORRECTED (unneeded; if kept, define γ_hol and file it in B30).

## V3. Tasks (b), (e) and grades

(b) (C-tr) input list. The step at index l along the curve u_0 ↦ h_l(u_0) needs continuity of E^{(l+1)} jointly in (own slot, inputs V^{(1..l)}). Path A supplies it via the mixed point (g_l′, I(h)): needs F_l(g′, ·) defined on 𝔅 for any real g′ ≤ γ (CMP 116 single step, history-free), SM at own slot g′, HHOL disc at centre g_l with input I(h) ∈ 𝔅. All present at the mixed point: CONFIRMED. Omissions in the §7.1 list:
 - Inputs of non-monotone trajectories lie in 𝔅: §5.1 cites NONMONO for (i-tr), but §7.1's (C-tr) list omits it. Under A15 F2′ is not used (H0 l. 155), so A15 covers it; the list should say "NONMONO or A15".
 - N6's corrected Balaban input list (H0_VERIFY: + A4, A14, A17, A18) applies to the single-step content too; cite it.
 - HHOL_VERIFY (1) radius ρ_0/√2; SM_VERIFY grade 1 caveat (Q-part norm); C_V = 1 + C_Π‖A‖ < ∞ (SM §3.1(c)). Cosmetic.
 - Continuity of u_0 ↦ g_l(u_0) is the induction itself; no extra input.
 No omission changes the conclusion.

(e) CMP 109 p. 298, PDF p. 50, rendered at 300 dpi this session. Both quotes match the image verbatim: "Defining the function β_j as equal to the coefficient β in (5.43), we see that the first expression there is cancelled by the first expression in (4.42)." and "In fact we should write the superscript (j) at the tensor in the formula (5.42) defining the function β_j. We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants." The page contains no domain statement ("only on the trajectory" is absent). Nuance: the page defines β_j through the tensor Π^{(j)} of the second-order function E^{(2)} = Π ((5.42)–(5.43)); the representation of higher E^{(n)} by marginal operators is described as an alternative method not carried out. So "β_j = linear coefficient functional of the step-j activity" is a reading [I] that combines p. 298 with (1.20)–(1.22); it is consistent with the page. CONFIRMED as [I].

Grades.
(1) Route 2 (D″-nest, D′-nest): CONFIRMED. Arithmetic and constants equal v4 (V1). Wording fixes: (S) is a constant condition, not "g_i ≤ γ"; state that (5.1) is used at every endpoint n ≤ K; name D′'s domain constants. "Every β evaluation on a true trajectory" holds for β; the step map is evaluated once per step off trajectory inside the (C-tr) proof (5.2′, self-corrected). Causality of Dom_k stays [I].
(2) Route 1 (slot cube): CORRECTED. Well-definedness (R1-a) and joint local Lipschitz (Path A) CONFIRMED rel. N6, A15, NONMONO, SM, HHOL §2–§3. Osgood cross-check sound (finite-dim scalar, locally bounded); it rests on HHOL §4.1, a corrected reduction. The new γ condition is not derived from HHOL (no coupling condition there beyond x ≤ γ); γ_hol is undefined. If kept: upper bound only, file under B30 after ρ_0, no cycle.
(3) Both need A15; Route 2 uses one mixed point per step: CONFIRMED. "Need" means no written alternative (large-field input continuity unwritten, §5.3), not impossibility. Add "NONMONO or A15" to the (C-tr) list.
(4) p. 298 reading: CONFIRMED [I], with the Π^{(j)}/E^{(2)} nuance.

B7 status: PROVED relative to listed inputs [verified], by Route 2. Ledger should cite Route 2 (Lemmas D″-nest/D′-nest + (C-tr) via Path A) for T1; Route 1 only for the HHIST/B13 slot chain, with the γ item dropped or defined.
