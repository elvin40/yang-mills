# SOURCES_T2_HMINUSC — conditions (C1), (C2) of SOURCES_MA2 for (H−)

Status: in progress (Claude Opus, 2026-10-28). Ledger at the end is authoritative.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md §2 not read. No existing file edited.
Tags: [P] proved here; [V] checked against a page image or text layer; [I] inference; [R] reduced to a named input; [R-A19] uses (190) on the complex ball as read in SOURCES_A17_A19.

## 0. Inputs read so far
- api_runs/BRIEFS_SUB.md "## ITEM HMINUSC" (full).
- SOURCES_MA2.md (full), SOURCES_MA2_VERIFY.md (full).
- TRUST_LEDGER rows A4 (l. 29), A18 (l. 41), A19 (l. 42), B17 (l. 77), chain item 5 (l. 158).
- SOURCES_A17_A19.md §3–§7 and SOURCES_A17_A19_VERIFY.md (full).
- Text layers: CMP 102 variational l. 1–232 (pp. 277–281); CMP 122 I l. 925–1075 (pp. 192–195), l. 290–320 (p. 180), l. 1300–1395 (pp. 200–202); CMP 119 l. 655–672 (p. 255).

## 1. The conditions as SOURCES_MA2 uses them

Notation (MA2 §4). Block units of scale k, L^kη = 1. V_0 := Balaban's background V_{Λ_i} on Λ_i, extended by V_k off Λ_i (CMP 122 I (1.79) with Λ = Λ_i). V = V′V_0, V′ = e^{iB}, B = (1/i)log V′ = MA's X. 𝓗(B): the Landau-gauge angle of U_{k,X_i}(V′V_0)U_0^{−1} (CMP 102 p. 305). K_1(B) := δ𝓗/δB(B) − δ𝓗/δB(0).

(C1), exact form used by MA2 §4.4 [P, read off MA2 §4.4 and §4.7]. Let r_K be a radius such that the kernel bound (4.2)
  |K_1(B)(x,y)| ≤ c_Nε_1e^{−ϑd(x,y)}   (ϑ = ⅛δ_0 at full rate)
holds for every complex B with sup_b|B(b)| < r_K. (C1) asks that the real cutoff ball of CMP 122 I (1.101), sup_b|B(b)| < M_0ε_k, sit inside {|B| < r_K} with a Cauchy margin:
  (C1)  M_0ε_k ≤ (1 − θ)r_K for a fixed θ ∈ (0, 1).
Then Cauchy in one variable B(y′), radius ρ = θr_K, gives |δ²𝓗(x)/δB(y)δB(y′)| ≤ c_Nε_1/(θr_K)·e^{−ϑd(x,y)} at every real point of the cutoff ball. MA2 takes r_K = 2C_1ε_1 and θ = ½ (with ρ ↑ C_1ε_1, A17_A19_VERIFY V6), so that c_Nε_1/ρ = c_N/C_1. The brief's form "M_0ε_k ≤ C_1ε_1" is the case θ = ½, r_K = 2C_1ε_1.

(C2), exact form used by MA2 §4.3–§4.6 [P, read off MA2]. The map V′ ↦ U_{k,X_i}(V′V_0) in the exponent of (1.100) has, with constants uniform in X_i, k, and volume:
  (C2a) the Landau representation U_{k,X_i}(V′V_0)U_0^{−1} = exp iη𝓗(B), 𝓗 analytic on the complex set (172) ((172)–(173), Prop. 9);
  (C2b) the derivative chain (182)–(188) with (55), (186)–(187) at the printed constants;
  (C2c) the kernel decay (189) and its consequence (190) (rows A4, A19);
  (C2d) the background bound (1.80) for U_0 = U_{k,X_i}(V_0), and V_0 in the regular class of Prop. 9 (row A18).
MA2 §4.7 phrases (C2) as "CMP 102 treats U_k on the full lattice; (1.100) uses the localized U_{k,X_i}". §3 below shows that this premise is false: CMP 102 is set on general nested domains, and U_{k,X} is an instance of CMP 102's map.

What (C1), (C2) do NOT include. (C3) = (189) is row A4 (out of scope). The complex-B validity of (190) is row A19 (input, tag [R-A19]). The regular-class constants are row A18 (input).
- Page images read in this session (300 dpi): CMP 102 p. 280 (PDF 4: (12)–(18)), p. 305 (PDF 29: (169)–(175)); CMP 122 I p. 180 (PDF 6: (1.15)–(1.20)), p. 192 (PDF 18: (1.70)–(1.74)). Rendered also, not re-read: CMP 102 p. 279, p. 309; CMP 119 p. 255 (A18_REGULAR and A17_A19 read them on images).

## 2. The three ε's [V unless tagged]

2.1 CMP 102's ε_1 is a free regularity parameter of the external field, not a fixed constant.
 - p. 278 (text): "we assume that |(∂V)(p′) − 1| < ε_1 for p′ ∈ 𝔅, (7) for ε_1 sufficiently small … if the space (6) is non-empty and ε_0 is sufficiently small, then by Proposition 2 [4] the configuration V satisfies (7) with ε_1 = O(ε_0). Hence our assumption has a meaning only for ε_1 smaller than ε_0."
 - p. 279 Theorem 1 (text; image in A18_REGULAR §4.1): "for an arbitrary configuration V satisfying (7) with ε_1 ≤ a_1 there exists a minimal orbit … unique critical orbit in the space (6) if B_3ε_1 ≤ ε_0 and ε_0 ≤ a_0. … The constants a_0, a_1, B_3 depend on d and L only."
 - p. 280 (image): "(14) U_0 ∈ 𝔘_k({Ω_j}, C_1B_3ε_1), |Ū_0^j − V| < C_1ε_1 on Λ_j, for some absolute constant C_1. The configuration U_0 constructed above satisfies (14) with C_1 = L³." And: "satisfy the assumptions (1.33)–(1.35) of this theorem with α_0 = ε_0, α_1 = C_1ε_1".
 - p. 281 (text): "for ε_0 + C_1ε_1 ≤ c_1"; (19) with "ε_2 ≤ B_1(ε_0 + C_1ε_1)".
 - p. 305 (image): "V = V′V_0, V_0 satisfies the condition (7), V′ satisfies |V′ − 1| < C_1ε_1, hence V′ = e^{iB′}, |B′| < 2C_1ε_1 on 𝔅_k, (172) for ε_1 sufficiently small. We take U_0 = U_k(V_0) … We repeat the whole procedure of Sects. A–E for this pair." (173) ε_2 = B_1(B_3(1 + 4C_1)ε_1 + C_1ε_1) ≤ 6B_1B_3C_1ε_1 = B_5ε_1. "We assume that C_1 is an absolute constant, hence B_5 is such a constant also."
 Reading [P from these quotes]: Sect. G re-runs Sects. A–E with V′V_0 in place of V. The C_1 of (172) is the C_1 of (14): the averages of U_0 = U_k(V_0) equal V_0, so |Ū_0 − V′V_0| = |V′ − 1| < C_1ε_1 is exactly (14). Every smallness condition on the pages read is an UPPER bound on ε_1 or on C_1ε_1: ε_1 ≤ a_1; C_1B_3ε_1 ≤ ε_0 ≤ a_0; ε_0 + C_1ε_1 ≤ c_1; ε_2 = B_5ε_1 = 6B_1B_3·(C_1ε_1) small for Sects. B–E; (187) O(1)B_0C_4B_5ε_1 < 1 for (188). Denote by a_*(C_1) the largest ε_1 for which all of them hold at the given C_1. Balaban prints no number for a_* [R: unprinted constants, same status as a_0, a_1].
 Monotonicity [P]: (7) is a strict upper bound. If V_0 satisfies (7) with ε_1′, it satisfies (7) with every ε_1 ∈ [ε_1′, a_1]. Theorem 1's minimal orbit is the unique critical orbit in (6) once B_3ε_1 ≤ ε_0 ≤ a_0, so U_k(V) is the SAME function for every admissible ε_1. Hence ε_1 may be chosen after V_0 is given, anywhere in [ε_1′, a_*].
2.2 CMP 116's ε_1 is a different object: the fixed analyticity cut of the small-field characteristic function, χ_k = Π χ(|B′(b)| < ε_1) (CMP 109 (2.9), CMP 116 (1.34); row A17, SOURCES_A17_A19 L1–L5). It is an absolute constant fixed once in the constant order. It is NOT the CMP 102 ε_1 at scale k. Balaban reuses the symbol.
2.3 ε_k is the running small-field cut: ε_j = g_jA_0(log g_j^{−2})^{p_0} = g_jp_0(g_j) (CMP 119 (2.4), p. 255; quoted [V] in LEMMA_DPRIME_SWEEP l. 18; the text layer here is garbled). CMP 122 I states its small-field bounds in ε_k: (1.80) "|U_0(∂p) − 1| < 2ε_kη² + O(1)B_3B_5M^5exp(−δ dist(p,Λ))ε_kη²"; (1.101) "|(1/i)log V′(b)| < M_0ε_k for b ⊂ Λ_i"; p. 193 (text): "the functions χ_k(Ω_k), χ_k restrict the field variables V_k on Ω_k, e.g. |∂V_k − 1| < 2L²N_0ε_k < 2L(L+1)N_0R_kε_k"; "ε = sup|V_k(∂p′) − 1| … Of course ε < L²R_kε_k"; Prop. 1 (1.78): "|V_Λ(∂p′) − 1| < B_5M^5ε for p′ ⊂ Λ".
2.4 Which ε_1 CMP 122 I uses at scale k. Balaban never names it. CMP 122 I applies CMP 102 to U_{k,Z} at the background V_0 (Prop. 1, (1.79), p. 195 "U_0 belongs to … the analyticity domains"). The CMP 102 parameter of V_0 is therefore any ε_1′ with (7) for V_0. On the scale-k part of Λ and Z ∩ Λ^c, 2.3 gives
  ε_1′ ≤ ε_1^{(0)} := max{B_5^{(122)}M^5, 1}·L²R_kε_k,
 where B_5^{(122)} is the CMP 122 I constant of (1.78) ("determined by the geometry of the problem", p. 195), NOT CMP 102's B_5 = 6B_1B_3C_1 (symbol clash). The coarser-scale parts of the determining set carry Balaban's own regularity (CMP 119 p. 256: "|∂V_{j−1} − 1| < O(L²)ε_{j−1}"); that V_0 satisfies (7) there with ε_1′ ≤ a_* is Balaban's own use of CMP 102 (row A18, item "U_{k,Z} obeys CMP 102 Thm 1") [R-A18]. Nothing below needs the explicit value of ε_1^{(0)}: it needs only ε_1^{(0)} ≤ a_*, which Balaban's own construction already requires.

## 3. (C1): proof

3.1 The kernel radius r_K = κC_1ε_1. Four cases, by which reading of A19 is granted.
 (K1) A19 as read in SOURCES_A17_A19 §4.1 [R-A19], with "(172) = ball |B| < 2C_1ε_1" (ball reading): (4.2) holds at full rate ϑ = ⅛δ_0 on |B| < 2C_1ε_1. κ = 2.
 (K2) A19 [R-A19], narrow reading of (172) (B = (1/i)log V′, |V′ − 1| < C_1ε_1; A17_A19_VERIFY V5): κ = ½ by Lemma 3.2. Rate ⅛δ_0.
 (K3) Fallback (A17_A19 §4.2, L12): real (190) plus the complex operator sup from (187), (55); ball reading. Kernel bound on |B| < ½C_1ε_1 at rate 0.59·⅛δ_0, constant c′_N := c_N^{0.59}(O(1)B_0C_4B_5)^{0.41}. κ = ½.
 (K4) Fallback, narrow reading: the slice argument of A17_A19 §4.2 with analyticity radius R′ = ½C_1ε_1 (Lemma 3.2) and ρ = ¼ gives the bound on |B| < R′/4 = ⅛C_1ε_1, same rate factor 0.59, same ω = 0.4097. κ = ⅛.
3.2 Lemma (narrow set contains a ball) [P]. Let C_1ε_1 ≤ 1. If B ∈ g^c has per-bond operator norm |B| ≤ ½C_1ε_1, then |e^{iB} − 1| ≤ e^{|B|} − 1 ≤ |B|e^{|B|} ≤ ½C_1ε_1·e^{1/2} = 0.8244·C_1ε_1 < C_1ε_1, and B is the principal logarithm of e^{iB} since |B| ≤ ½ < π. So {|B| < ½C_1ε_1} lies in the narrow set. ∎ (Power series: |e^{iB} − 1| ≤ Σ_{n≥1}|B|^n/n! = e^{|B|} − 1. num: e^{0.5}/2 = 0.8244.)
3.3 Proposition C1. Fix θ ∈ (0, 1) (take θ = ½) and the case κ ∈ {2, ½, ½, ⅛} of 3.1. Set
  ε_1 := max{ε_1^{(0)}, M_0ε_k/((1 − θ)κC_1)}.   (3.1)
If ε_1 ≤ a_*(C_1), then:
 (a) V_0 satisfies (7) with ε_1, all CMP 102 smallness conditions of 2.1 hold, and U_{k,X_i} is the same map as at ε_1^{(0)} (2.1 monotonicity) [P];
 (b) every real B in the closed cutoff ball, |B(b)| ≤ M_0ε_k, satisfies |V′ − 1| ≤ |B| < C_1ε_1 (so V′ obeys (172)) and lies in {|B| < r_K} at distance ≥ θr_K from its boundary [P: M_0ε_k ≤ (1 − θ)κC_1ε_1 by (3.1)];
 (c) Cauchy in B(y′) on the disc of radius ρ < r_K − |B(y′)|, then ρ ↑ r_K − M_0ε_k ≥ θκC_1ε_1, gives at every real point of the cutoff ball
  |δ²𝓗(x)/δB(y)δB(y′)| ≤ c_N^{(κ)}/(θκC_1)·e^{−ϑ_κ(d(x,y)+d(x,y′))/2},   (3.2)
 with c_N^{(κ)} = c_N, ϑ_κ = ⅛δ_0 in (K1), (K2), and c_N^{(κ)} = c′_N, ϑ_κ = 0.59·⅛δ_0 in (K3), (K4). The ε_1 of (4.2) cancels against the ε_1 in ρ, so (3.2) does not depend on the choice (3.1). The two-sided decay is MA2's symmetrization step (MA2_VERIFY §3, confirmed). [P given the kernel bound of the case]
 Constants at θ = ½: c_N/C_1 (K1, = MA2 exactly), 4c_N/C_1 (K2), 4c′_N/C_1 (K3, = A17_A19 5.3), 16c′_N/C_1 (K4). By MA2_VERIFY §3, c_N/C_1 = O(1)(B_0C_4 + C_2)·6B_1B_3 is C_1-free; the same holds for c′_N/C_1 up to the factor (B_0C_4B_5/c_N)^{0.41}, also C_1-free.
3.4 The only new condition. The hypothesis ε_1 ≤ a_* of 3.3 splits in two:
 (i) ε_1^{(0)} ≤ a_*: Balaban's own (he applies CMP 102 at V_0); no new content [R-A18].
 (ii) M_0ε_k ≤ (1 − θ)κC_1a_*(C_1). At θ = ½:
  (C1*)  M_0·g_kp_0(g_k) ≤ ½κC_1a_*(C_1),  i.e.  M_0ε_k ≤ C_1a_* (K1), ≤ ¼C_1a_* (K2, K3), ≤ (1/16)C_1a_* (K4).
 C_1 stays Balaban's absolute constant (L³ suffices). Raising C_1 instead (the brief's route "C_1 ≥ M_0ε_k/ε_1") is equivalent: every condition of 2.1 sees only ε_1 and the product C_1ε_1, and (C1*) is a condition on C_1ε_1. So nothing is gained by moving C_1; the binding quantity is C_1ε_1 ∈ [M_0ε_k/((1−θ)κ), C_1a_*].
3.5 Regime and uniformity [P]. f(g) := gA_0(log g^{−2})^{p_0} is increasing on ]0, g_f], g_f = e^{−p_0} (f′(g) = u^{p_0−1}(u − 2p_0)A_0, u = log g^{−2}) and f(g) → 0 as g → 0. So (C1*) holds for every k once all g_k ∈ ]0, γ] with
  γ ≤ γ_{C1} := sup{γ′ ≤ g_f : M_0f(γ′) ≤ ½κC_1a_*}.
 This is uniform in k, X_i, and volume (none of M_0, κ, C_1, a_* depends on them; a_* depends on d, L by Theorem 1 [V] and on C_2, C_4, B_0, whose k-freeness is the A18 item [I]). The same holds for 3.4(i): R_k is at most L times a fixed power of log g_k^{−2} (CMP 119 (2.5), as read in LEMMA_DPRIME_SWEEP l. 18), so L²R_kε_k is g_k times a polylog in g_k and still → 0 as g_k → 0.
 Order: M_0 and the CMP 102 constants are fixed first; then γ. (C1*) is an upper bound on γ, the same type as Balaban's "γ sufficiently small" and as (A18-4) in slot B30 of SOURCES_ORDER_CANON. It adds no back edge [I: the slot of M_0 precedes B30; not re-read in the canon].
 Answer to the brief's question "M_0ε_k/ε_1 → 0 as g_k → 0?": with ε_1 chosen by (3.1) the ratio M_0ε_k/ε_1 is ≤ (1 − θ)κC_1 by construction, for every g_k. With a fixed ε_1 (e.g. ε_1 = a_*) it tends to 0 as g_k → 0. Both choices give the same (3.2).
3.6 Verdict (C1): PROVED [P] given the kernel bound of the chosen case (K1–K4), under the one new smallness condition (C1*) on γ. MA2's form "M_0ε_k ≤ C_1ε_1" is (K1) at θ = ½.
