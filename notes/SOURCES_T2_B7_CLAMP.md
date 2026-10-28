# SOURCES_T2_B7_CLAMP — TRUST_LEDGER row B7 (L5): β_{k+1} on the clamped cube, or D″ on true trajectories

Date: 2026-10-28. Status: in progress. Ledger: [P] proved here, [V] verified reading of a source, [I] interpretation, [R] relies on a named input.
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## 0. Row B7 as stated in TRUST_LEDGER.md (l. 67) [V]

"L5: β_{k+1}(g_0,…,g_k) defined and continuous on the clamped cube ]0, γ]^{k+1}, or a nested-interval Lemma D″ on true trajectories; slot functions valid off Balaban's trajectory." Source column: "Balaban defines β_j only along his trajectory (CMP 109 p. 298)". Consumers: "Lemma D′/D″ clamp ⇒ T1; slot definitions of HHIST (H-hist)". Status before this file: "open; variant written only for Lemma D (LEMMAS_DE_VERIFY §1.5)".

## 1. L5 stated exactly; the two routes

1.1 Where L5 is invoked [V, THEOREM2_PROOF_v4]. §2 header (l. 65): Lemmas D′, D″ applied to Balaban's β "need ... L5". §2.1 proof idea (l. 78): the clamped flow ũ_{k+1} = ũ_k − β_{k+1}(φ(ũ_k)), φ(u) = max(u, γ^{−2})^{−1/2}; "for history-dependent β this proof needs β_{k+1} defined and continuous on the whole cube ]0, γ]^{k+1}". §2.2 (l. 91): D″ is "the clamped-flow proof of 2.1". §2.4 (l. 113–117) and §10 item 8 (l. 449) sharpen the gap into two parts:
- (G-dom) Balaban's β_{k+1} exists only on histories where his induction has run; by the sweep (§2.3) that induction uses (c′) + (S) on the history. A clamped history g̃_i = φ(ũ_i) can violate the growth side of (c′). So the clamp proof evaluates β outside Balaban's domain.
- (G-cont) The clamp proof needs continuity of β_{k+1} in the history (IVT in u_0).
§9 (l. 292): "Theorem 2w ⇒ Theorem 1" needs L5 in the sharpened form: "β must exist on every history the shooting visits".

1.2 L5 (exact). Either
- (L5-cube) for every k, h_k = (g_0, …, g_k) ↦ β_{k+1}(h_k) is defined on ]0, γ]^{k+1}, agrees with Balaban's β_{k+1} on his trajectories, is continuous there, and obeys hypothesis (i) of D′/D″ on the whole cube (|β_{k+1}(h, g) − β_{k+1}(0)| ≤ C_1g = item 7′); or
- (L5-traj) a version of Lemma D″ (and D′) whose proof evaluates β only on true trajectories that satisfy (c′) + (S) up to the evaluated step, and which needs only continuity of u_0 ↦ β_{k+1}(h_k(u_0)) along such trajectories.

1.3 The two routes.
- Route 1 (cube): define β_{k+1} off the trajectory by the slot construction of SOURCES_HHIST §5 (= N7 of SOURCES_T2_H0); show it is defined (needs the inputs' bound E_0 on every past = N6, and A15 = N9 for "β from the small-field chain"), and continuous (step-map continuity).
- Route 2 (true trajectories): replace the clamp by nested intervals with envelopes built from T_0; then every β evaluation is on a true trajectory inside Balaban's domain, and only one-variable continuity in u_0 is needed.
Both routes need some continuity of the step map in the history. Route 2 needs it only on trajectory inputs (§4 below).

## 2. Sources read (readings used below)

2.1 CMP 109 p. 298 [V, page image at 300 dpi, PDF p. 50; text layer agrees]. "Defining the function β_j as equal to the coefficient β in (5.43), we see that the first expression there is cancelled by the first expression in (4.42)." End of §5: "In fact we should write the superscript (j) at the tensor in the formula (5.42) defining the function β_j. We write β_j as explicitly dependent on g_{j−1}, although it depends also on all preceding coupling constants." Reading [I]: p. 298 defines β_j as a linear functional (the coefficient of the marginal operator, via the tensor Π^{(j)} of (5.42)) of the step-j activity. The text does not say "only on the trajectory"; the trajectory restriction comes from the fact that the step-j activity is built by the inductive construction, which runs on sequences produced by (0.20) (SOURCES_T2_H0_VERIFY l. 54). Row B7's source column is therefore a reading, and a correct one.
2.2 SOURCES_HHIST §5 (slot representation) [V, this session]: slots h_k ∈ [0, γ]^{k+1}; A_k(h_k) by (1.3) with marginal coefficient 1/g_k² (slot k); E^{(k+1)}(h_k) by (2.12)–(2.13); β_{k+1}(h_k) by (1.20)–(1.22); V^{(k+1)} := −β_{k+1}(h_k)A + E^{(k+1)}(h_k). Slots i < k enter step k+1 only through the inputs V^{(i+1)}, …, V^{(k)}. On the trajectory, the slot functions agree with Balaban's construction (the off-trajectory difference is a marginal shift in slot k only).
2.3 SOURCES_T2_H0 §4.2–§4.5, Prop. H0-red Step 1, N6, N7, N9 (+ VERIFY, 47 CONFIRMED / 10 CORRECTED): the CMP 116 small-field step uses only the own coupling g_k and the input sup E_0, so with the slot definition the inputs obey (1.18) with one E_0 on every past [R: N6]; printed support CMP 109 p. 259 "we do not assume any special asymptotic behavior of the coupling constants" (H0_VERIFY l. 55). β is taken from the small-field [I] chain (A15 = N9). H0_VERIFY l. 96, l. 214: booking of the counterterms −β_jA off the trajectory is part of B7.
2.4 SOURCES_SM §5.1: Theorem SM and Fact B are history-free; the small-field induction "runs for every slot vector h_k ∈ [0, γ]^{k+1}" [reduced], with the monotone restriction from D3W8 F2′. SOURCES_GGAIN_NONMONO (+ VERIFY V1–V3) removes the monotone restriction by the running maximum.
2.5 SOURCES_HHOL §1–§4 (+ VERIFY: (1) CORRECTED, X-modes cost ρ_0 → ρ_0/√2; (2) CORRECTED as a reduction; (3) CONFIRMED; (4) CONFIRMED as open): in B̃ = g_kB units the cut χ is coupling-free and g_k enters only via w = u_kx² in the Gaussian scale and the coefficient of Φ_1 (1.1–1.2); each term is holomorphic in g on |g − x| < ρ_0x with a majorant uniform on the W4 input ball (2.3–2.4); the small-field chain: inputs holomorphic in (g_0, …, g_{l−1}) on the polydisc P_{ρ_0}(x), output sup ≤ cE_0, β_j holomorphic there with |β_j| ≤ M uniform in j, k, volume (§3.4, §4.1) [R]; one holomorphic function for all reference points, equal to Balaban's real β_j on the real axis (3.5, CONFIRMED). Large-field holomorphy is OPEN (§6).
2.6 SOURCES_T2_V1 (+ VERIFY) and KUNIF l. 150: the order-g⁰ quadratic form is history-free, so β_{k+1}(h, 0) = β_{k+1}(0) [V]. This settles L5 at g = 0 only. The cube in L5 is ]0, γ], so the g = 0 face is not needed (C19).
2.7 SOURCES_T2_KUNIF [V]: D′/D″ run at one fixed K; the functions may depend on K; only the constants must not. §4.3 there: during the clamped IVT, β is evaluated on clamped histories; (4.1) gives the bracket pointwise on each. KUNIF l. 69: "Continuity of β in the history ... is L5/B7, unchanged".
2.8 LEMMAS_DE_VERIFY §1.5 [V]: the nested-interval proof of Lemma D (envelopes m_k = t + β(K − k), M_k = t + β′(K − k), all increments positive). §3 item 1 (l. 113): the nested proof needs, for every k ≤ K − 1, continuity of u_0 ↦ u_{k+1} on D_k = {u_0, …, u_k ≥ γ^{−2}}; "finite-volume steps are analytic in the parameters, but (4.37) takes an infinite-volume limit and the uniformity of that limit in g is a separate claim".
