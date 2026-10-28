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
