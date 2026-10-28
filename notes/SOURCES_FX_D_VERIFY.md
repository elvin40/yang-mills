# SOURCES_FX_D verification (independent)

Date 2026-10-28. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP.

## 1. Identification (claim 1) [checked against SOURCES_FX.md, TRUST_LEDGER]
- FX §6.3(b) ends "[R: open item (FX-D) = 'CMP 116 §2 applies to the R-denominators with sources']". FX §7 lists "O2 (FX-D)". FX §6.4 "Step D" is the ε-uniformity count. Quotes in SOURCES_FX_D §1 match the file verbatim.
- B19 row: "O2 verified … O3 conditional on B18; O4 avoided by C13. Remaining: B18." Matches SOURCES_FX_D §2.
- Note: FX §6.3(b) labels the item under "Step C", so IV12_VERIFY's "FX Step C(b) = (FX-D)" is correct; "Step D" in the brief is the misnaming. Claim (1) first half CONFIRMED.

## 2. FX_O23 §3–§4 and its VERIFY [read]
- FX_O23 §4(a)–(e) is the closure of O2 = (FX-D). SOURCES_FX_D §2 quotes it correctly. FX_O23_VERIFY item 1: "O2 closed: CONFIRMED", with N3 open for choice B and the moved term "plausible, not checked".
- N2 source chain (VERIFY §2–§3): |U(∂p) − 1| ≤ O(1)B_3B_5M^5ε_kη² on FINE plaquettes (I (1.98)); "the fine-lattice η-powers cancel against the fine plaquette count". So Step 3's "(100MR_m)^4 scale-m plaquettes" is the right count only in the η-weighted sense: Σ_p P_p ≤ O(1)ε_k²·#(scale-k cubes in X_i). Same product. The author's Step 2 "P_p ≤ O(1)g_m²p_0²" per plaquette is loose wording (fine plaquettes carry an extra η⁴), not an error in the sum.
- ε_j = g_jA_0(log g_j^{−2})^{p_0} (LEMMA_DPRIME_SWEEP, CMP 119 (2.4)–(2.5)). R_j = least L^r ≥ (log g_j^{−2})^r, so R_j ≤ L(log g_j^{−2})^{p_R}: the C_R of the author is L. Fine.
- Same sweep: "m < n means m is finer (closer to bare), so (0.31) gives g_m < g_n." Supports claim (2).
