# SOURCES_SRULE_CONVENTION — C-new-2 (s-rule on the WC_FULL walk expansion) and A16 (M1) scan

Date: 2026-10-28. CLOSURE_PLAN top-5 item 4 (I-22, I-35). Ledger: [P] proved here, [V] verified against page image, [I] inherited from a cited project file, [R] reading (interpretation of Balaban's text).
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## 0. Status
In progress. Sections are appended one per step.

## 1. Task A(1): the convention C-new-2, stated

Sources read for this section: CLOSURE_PLAN Table 2 I-22, I-35, Table 3 C-new-2; WC_FULL §0, §4, §5; SOURCES_A8_POS §1–§4; SOURCES_G3_GGAMMA_VERIFY (full); SOURCES_A16_REPLACE2 §1, §3.3, §5.0, §7 and VERIFY; SOURCES_A15_LOC §3, §6–§7.

1.1 Data. σ_0 is a finite set of cubes Δ (side LM; CMP 116 pp. 3, 13). s = (s(Δ))_{Δ∈σ_0} ∈ ℂ^{σ_0}. An expanded operator is an absolutely convergent sum O = Σ_λ O_λ over labels λ (walks, trees, or composite chains). Each λ carries a finite list of localization domains dom(λ) = (X_0, …, X_n), all branch domains included. Put loc(λ) := ∪_i X_i^5 as a set in the whole lattice (A15_BDRY (Enl), C37). Put σ_0(λ) := {Δ ∈ σ_0 : int Δ ∩ loc(λ) contains an M_1-cube} (the "intersect" reading of S2_G1_V7 B2.3, [P-forced] there). Put m(λ) := |σ_0(λ)| and π_λ(s) := Π_{Δ∈σ_0(λ)} s(Δ).

1.2 Definition (C-new-2). The s-version of O is O(s) := Σ_λ π_λ(s)O_λ, where Σ_λ O_λ is the PROJECT expansion of O listed below. It is not Balaban's expansion (CMP 99 (3.107) [13], or (3.185) [13] with G̃_3(x) for the resolvents of CMP 116 p. 13).
 (a) Δ_k(s), A_exp(s) = C*Δ_k(s)C: the trees ω of WC_FULL Prop. W_N (4.2), the outer C, C* counted as local factors of the term.
 (b) A_Z(s) = 1_{Z_0}A_exp(s)1_{Z_0}: the same trees, compressed (WC 4.4).
 (c) C^{(k)}(Z_0, s): the walks ω of WC 5.3. A walk contains A-tree blocks inside its F-factors; dom(ω) lists all their domains (WC 5.3 "Domains are the □⁺ … and the domains of the A-trees").
 (d) (C^{(k)}(Z_0))^{1/2}(s) and the whole-volume (C^{(k)})^{1/2}(s): the x-resolvent walks of WC 5.5, T_ω^{½} := π^{−1}∫_0^∞x^{−1/2}T_ω(x)dx. The walk set and the domains do not depend on x (WC 5.5(iv)), so π_ω(s) is x-independent and the weight passes through the x-integral. Whole volume: A16_REPLACE2 §4 (U-a).
 (e) G, G_1, H_1, (QG_1Q*)^{−1}: the trees of WG-G1 and A1-W.
 (f) Sourced objects C_f, A_Z^f, (C_f)^{1/2}, Δ_k^f: the composite labels Ω of A16_REPLACE2 §3.1, §3.3, §6; dom(Ω) = all domains of all blocks in Ω.
 (g) Products of s-versions, e.g. Γ_k(Z_0, σ) = C*Δ_k(σ)C·Z_0^c·(C^{(k)})^{1/2}(σ): the product of the separate s-versions, exactly as CMP 116 p. 15 writes it. Products are not re-weighted.
1.3 Two remarks on the definition.
 (i) Weight per DISTINCT cube. In (a)–(f) each Δ appears once in π_λ even if several domains of λ meet it. So every term is multi-affine in s (degree ≤ 1 in each s(Δ)). In (g) powers s(Δ)² can occur (two factors). Consumers that need multi-affinity (A3_SIGMA corner decomposition) use only (a)–(f) objects.
 (ii) Regrouping commutes with the weight. In the WC 5.4 regrouping every merged near domain X lies in X_0, and X̃_0^5 = Z̃_0. A σ_0-cube is disjoint from int Z̃_0 (CMP 116 p. 13 [V via A8 1.2]). So near domains meet no σ_0-cube, and π_ω = π_ω̄. The s-version is the same on the raw 5.3 walks and on the p. 13 regrouped walks. [P]
1.4 Properties the definition supplies (used in §2).
 (S1) Normalization. O(1) = O: all weights are 1 and the sum is the absolutely convergent expansion of O (WC(ii), (iv); W_N; A1-W; WG-G1). [P]
 (S2) Locality. If s(Δ) = 0 for every Δ ∈ σ_0 not contained in a set Y, every surviving term has loc(λ) ⊂ Y ∪ (complement of ∪σ_0). By (L1) its kernel and by (L2) its U-, J-, f-dependence lie there. (A15_LOC Lemma W; A1_WALK_FULL §1.4.) [P given (L1)–(L2)]
 (S3) Bounds. For s ∈ [0, 1]^{σ_0}, |π_λ(s)| ≤ 1, so every absolute bound of O holds for O(s). For |s(Δ)| ≤ e^{κ_1}, |π_λ(s)| ≤ e^{κ_1m(λ)} and m(λ) ≤ 2·3^d(1 + d(λ, b, b′)/LM) (A8 (G3)), so the per-term bound loses e^{2·3^dκ_1}e^{(ε″/16)d(λ)} and keeps a rate ≥ ε″/16 under (H_κ) LM ≥ 16·3^dκ_1/ε″ (A8 4.3). [P given (G2)–(G3)]
 (S4) Analyticity. Each π_λ is a polynomial. Each O_λ is analytic on 𝒰(α′) (WC(iii); WC 6; A16 Q4). By (S3) the series converges uniformly on 𝒰(α′) × {|s(Δ)| ≤ e^{κ_1}}. So O(s) is jointly analytic there. [P]
 (S5) Anchored difference. O(σ) − O(0) = Σ_{λ: m(λ)≥1}π_λ(σ)O_λ and O(1) − O(σ) = Σ_{m(λ)≥1}(1 − π_λ(σ))O_λ. Each term meets σ_0; if one end lies in Z_0, d(λ) ≥ M/2 (A8 corrected Step 1). [P]
 (S6) Corner form. For (a)–(f) and s ∈ [0, 1]^{σ_0}, O(s) = Σ_τ w_τ(s)O_τ, a convex combination of the 0/1 corners (A3_SIGMA 1.3). This uses only multi-affinity (1.3(i)). [P]
