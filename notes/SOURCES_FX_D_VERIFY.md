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

## 3. Direction (claim 2) [v4 §1, IEPS_LF, HHOL_LF]
- v4 l. 49: "(c′) for all 0 ≤ m ≤ n ≤ K: u_n + β(n − m) − D′ ≤ u_m". With n = K, u_K = g^{−2}: u_m ≥ g^{−2} + β(K − m) − D′. So g_m → 0 for K − m → ∞; fine scales (small m) have the smallest coupling. For K − m ≤ D′/β the bound is empty, but Theorem 2w (b) gives g_m ≤ γ at every m. CONFIRMED.
- α_{i,j} = g·C_i·(log g^{−2})^{q_i} (IEPS_LF l. 34): field-space radii, → 0 with g. ρ_0 = 0.1 relative coupling disc, fixed (HHOL_LF §4.4); §5.4 shows ρ_i ∝ x_i² fails. CONFIRMED.
- Side note (not in the author's file): HHOL_LF l. 15 writes "g_k² ≈ (g_0^{−2} + β_0k)^{−1} → 0" and "sup R_k ≤ L(log g_K^{−2})^r". With v4's convention both are reversed (g_k grows with k; R_k is largest at k = 0). The conclusion "sup R_k = ∞ as K → ∞" is unchanged. The author's §3 uses the correct direction.
- Claim (2): CONFIRMED.

## 4. IV12 §4.4 and IV12_VERIFY l. 43, 60, 62 [read]
- IV12_VERIFY l. 43: "(L1) needs the large-field AND R-denominator activities holomorphic at an ε-free radius c·r, i.e. FX Step C(b) = open item (FX-D)/O3 … Cauchy on a fixed polydisc fails if fine-scale R-terms meeting supp f have radius ∝ R̄_m^{−4} → 0." The author's reading of this sentence is accurate. It uses FX §6.3(b)/(c), the pre-FX_O23 state.
- FABLE_VERIFY l. 25 already records SOURCES_FX_D (unverified) and its §5.4 exclusions.
