# SOURCES_GGAIN_LF — large-field half of (G-gain): uniform first g-derivative of the large-field step contributions

Status 2026-10-28 (Claude, Opus; unverified). Inputs: SOURCES_GGAIN (+VERIFY item 6), SOURCES_HHIST, SOURCES_HHOL_LF §3–§4 (+VERIFY items 2–3), SOURCES_FX_O23 §3–§4, SOURCES_MA / MA2, CMP 122 II pp. 377–390 page images. Firewall kept (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md, no reports/ONLINE_SWEEP.md).
Sections are appended in order of work; the ledger (last section) is authoritative.

## 1. Quoted inputs [V = page image read in this session]
- CMP 119 p. 255 [V, PDF p. 13]: (2.4) "ε_j = g_jA_0(log g_j^{−2})^{p_0} = g_jp_0(g_j)"; (2.5) "R_j is the smallest number of the form L^r such, that R_j ≥ (log g_j^{−2})^r". (2.6) g_m ≤ (1+β_0)g_n for n > m. The page does not state the value of the exponent p_0 (nor of r); see §3.3.
- CMP 122 II p. 380 [V, PDF p. 26]: (1.73) |T′_k(X,(U,J))F| ≤ (T′_k(X,(U,0))1) sup e^{|σ|}|F|; (1.74) lower bound with e^{−2 sup|σ|}; (1.75) normalized form. "T′_k(X,(U,0))1 is obviously positive, although it may be very small." Per-domain budget: "O(1)log g_j^{−2}|Z_j| ≤ O(1)M^dR_j^{d+1}d′_j(Z_j)". Large-field characteristic functions give exp(−γ_0(1/(2g_j²))(B_3^{−1}ε_j)²(LM_2R_j)^{−d}|P_j|), exp(−½γ_0(1/g_j²)(2δ_j)²(LM_2R_j)^{−2}|Q_j|), exp(−γ_0(1/g_j²)δ_j²(LM_2R_j)^{−d}|R_j|); "γ_0 is an absolute positive constant (… we may take γ_0 = 1/2)".
- CMP 122 II p. 381 [V, PDF p. 27]: per component Z_j^{(i)} of the MR_j-cover, "exp(−γ_0 min{½B_3^{−2}A_0², 2A_1², A_1²}p_0²(g_j)(d′_j(Z_j^{(i)}) + 1)) ≤ exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)}) + 1) − 2p_0(g_j))". Preparatory factors: ≤ exp(−A_1²p_0²(g_j)), ≤ exp(−γ_0A_1²p_1²(g_j)), ≤ exp(−A_1²p_0²(g_j)).
- Form of every large-field factor: exp(−c·(threshold)²/g_j²·|·|) with threshold² /g_j² = p_0(g_j)² or p_1(g_j)² (times A-constants). The suppression is in p_0², not only p_0. This is load-bearing for §3.
