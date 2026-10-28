IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
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

## 5. FABLE §2.2/§2.4 constituent list [read]
- FABLE §2.2: Δ(f, V) has four constituent types: (b1) coupling term −Σ_p[w_K^f − w_K^0]A_p(V); (b2) unit-scale E-terms; (b3) Step-A polymers R_fin; (b4) fine-origin R-, B-, e-terms at scales m < K KEPT IN A_K^f, density (Mλ_m)^{−4} per unit volume.
- (b4) is controlled only through vacuum subtraction: F2′(ii) gives |E_R^{(m)}(X, U) − E_R^{(m)}(X, 1)| ≤ C(L^mη)⁴g_m^{κ_0}e^{−κ′d}, and FABLE needs its sourced form (S1-pt, L6, unverified), stated for the first derivative and for osc_V only.
- m = 0: B21_S l. 49 "the source is a local perturbation of the bare action only at m = 0"; D3W8 l. 112 base case "a_m = 0 before the first R-operation".

## 6. CMP 122 I p. 201 page image (PDF p. 27, 130 dpi) [V]
- (1.100) denominator: ∫dV′[Λ_i δ_{G_i}(V′)χ(Λ_i) exp[−(1/g_k²)A(ζ_i, U_{k,X_i}(V′V_{Λ_i}))]. Bare Wilson action only. No E-, R-, B-terms. (1.101) χ(Λ_i) = χ({|(1/i)log V′(b)| < M_0ε_k, b ∈ Λ_i}). (1.102) normalization. ζ_i ∈ C_0^∞(X_i) is Balaban's cutoff, not the source. CONFIRMED.
- Notation note: SOURCES_FX_D §4 Step 4 uses ζ for both Balaban's cutoff ζ_i(p) ∈ [0, 1] and the source perturbation (‖ζ‖_∞). The bound is right (|ζ_i(p)| ≤ 1); the clash should be removed.

## 7. Lemma FX-D redone (task c)
- Origin of ε_m². NOT the δ cut. It comes from the small-field cuts: (1.101) |V′ − 1| < M_0ε_k on Λ_i, χ_k (|∂V_k − 1| < 2ε_k, II p. 378), and I (1.98) for the background U″ (FX_O23_VERIFY §2–§3). ε_k = g_kA_0(log g_k^{−2})^{p_0} (CMP 119 (2.4)). The δ_j cuts (Q_j, R_j factors) are large-field, numerator side only. The link from the V′ cut to fine plaquettes of U_{k,X_i}(V′V_Λ) passes through Balaban's background map; FX_O23_VERIFY calls it "still O(ε_k)" with "the U_{k,X} map constant". [I, as before.]
- Count. Fine plaquettes have |U(∂p) − 1| ≤ Cε_kη², so P_p ≤ Cε_k²η⁴; there are ~η^{−4} fine plaquettes per scale-k cube. Σ_{p ⊂ X_i}P_p ≤ Cε_k²(100MR_k)⁴. The product in Step 4 is right; Step 2's per-plaquette wording "P_p ≤ O(1)g_m²p_0²" is loose (true for unit-scale plaquettes only). CORRECTED (wording).
- Φ. g²p_0(g)² = A_0²e^{−y}y^{2p_0}, R⁴ ≤ L⁴y^{4p_R}, y = log g^{−2}. d/dy(e^{−y}y^q) = e^{−y}y^{q−1}(q − y). Decreasing in y for y > q ⇔ g < e^{−q/2} = e^{−(p_0+2p_R)}. Threshold CONFIRMED. Monotonicity is not even needed: sup_{y ≥ log γ^{−2}} C′e^{−y}y^q → 0. C(M) = (3/2)·O(1)M_0²A_0²L⁴(100M)⁴, M_0 = O(1)B_5M^6 (II p. 378); depends on M, L, A_0 only. Note: γ_Φ ≤ e^{−(p_0+2p_R)} is extremely small (p_0 ≥ 16/(γ_0A_1²)); allowed if γ is chosen after p_0, p_R, M, L [I: order not re-checked in SOURCES_ORDER_CANON]; γ ≤ γ_Φ must be added to the γ list.
- R_j is a power of L (CMP 119 (2.5)), a step function of g; the author bounds it by L·y^{p_R}, which is what Φ uses. Fine.
- N2 at m = 0. At k = 0, U_{0,X_i}(V′V_Λ) is the bare configuration; each bare plaquette is a product of 4 links with |V′ − 1| < M_0ε_0 and the frozen V_Λ links small by χ_0. So P_p ≤ O(1)ε_0² directly, without the background map. N2 is EASIER at m = 0, not harder. If no R-operation acts at k = 0 (D3W8 base case), the item is vacuous. The only m = 0 subtlety is the name clash ε_0 (CMP 109 Thm 3 constant) vs ε_k|_{k=0} = g_0p_0(g_0); the (1.101) cut uses the latter.
- Schwarz telescope. g(s) = F_X(t_<j, s, 0) − F_X(t_<j, 0, 0); |g| ≤ 2M_X on the unit disc, g(0) = 0 ⇒ |g(s)| ≤ 2M_X|s|. Sum over j ≤ |I(X)|, then over X: 2Σ_i|t_i|·C_κ(1 + |supp f_i|_1)e^{−p_0(γ)}. With |t_i| = |z_i|N(f_i)/(c_*r): C_0 = 2e^{−p_0(γ)}C_κ/c_*. Arithmetic CONFIRMED. C_κ < ∞ needs κ′ > c_0 (FX4). Free of ε, K, ℓ, V given M_X is a sup over small-field V (FX §6.1 R1). One condition left implicit: f(t) ∈ P_* needs N(f_i) ≥ ‖f_i‖_∞ and N(f_i) ≥ (2c_*r/ρ_1)‖∇f_i‖_∞; true for Lemma C's N (it carries ρ_1^{−1}max(1, ρ_1/r)), but should be stated.

## 8. §5.2 constituent list vs FABLE (task d)
- §5.2 lists the constituents of R_fin = FABLE (b3) only (plus E-terms, which FABLE files as (b2)). §5.3 covers (b2) + (b3). Not covered: (b1) the coupling term (trivial: |∂_t| ≤ 2B_K‖f‖_∞·#plaquettes, sup bound immediate), and (b4) fine-origin R-, B-, e-terms kept in A_K^f.
- (b4) is the constituent class where (FX-D) matters most for (L1). Lemma FX-D gives each of them radius c·r (via FX §6.3(b) "R-, B-terms get radius c·r", given O3). But the Schwarz telescope with M_X = E_0e^{−κd} fails for (b4): density (Mλ_m)^{−4}, so Σ_m L^{4(K−m)}·E_0 diverges. The needed input is FABLE's (S1-pt) in POLYDISC form: |a(Γ; f, V) − a(Γ; f, 1)| ≤ C(L^mη)⁴g_m^{κ_0}e^{−κ′d} for all f ∈ P_*, plus extraction of a(Γ; f, 1) into W_K. FABLE states (S1-pt) for the first derivative and for osc_V only. So (L1) as a sup_V bound needs a stronger, unverified form of L6.
- B-terms in A_K^f. Exponentiated B-terms are Balaban's (1.104) form, which needs O4 (division by T′_k(Y_i)1; positivity route refuted, FX_O23_VERIFY item 5). Under C13 (main form) B-terms stay under T′ and belong to (b3). FABLE (b4)'s "B-terms kept in A_K^f" and §5.2's reliance on C13 are inconsistent; one of them must change. Under C13, (b4) = fine R- and e-terms only.
- Answer: the list is complete for R_fin under C13. It is not a list for Δ_f; the missing classes are (b1) (trivial) and (b4) (real).

## 9. §5.4 reasons (task e)
- (i) A_K^f − A_K^0 part: REAL gap. It contains (b4); see §8. Not bookkeeping.
- (ii) V-large regions mixing with supp f in the last R-operation: mostly BOOKKEEPING once Step A (Z″ = ∅) is accepted, because every final large-field component touching supp f is inside an R_fin polymer, and §5.3 bounds those with M_X uniformly in small-field V. Residual risk sits in FX Step A (B19), not in (L1).
- (iii) fine single-support polymers outside unit-scale activities: the SAME object as (b4), so a duplicate of (i). The author's divergence estimate Σ_mL^{4(K−m)}e^{−p_0(g_m)} is the bare bound; the λ_m⁴g_m^{κ_0} vacuum-subtracted bound (FABLE L6) is the known repair. IV12's claim that centring (L3) cancels them is too strong: centring removes only the V-independent linear part.
- So (L1) stays [I] for one real reason (the (b4) polydisc form of S1-pt + (Reg)), not three.

## 10. Grades
(1) CORRECTED (minor). (FX-D) = FX §6.3(b) = O2, closed by FX_O23 §4 (verified, given N3/B18; choice A moved term plausible): CONFIRMED. IV12_VERIFY's R̄_m^{−4} claim rests on the D3 denominator model, refuted by the p. 201 image: CONFIRMED. Correction: IV12_VERIFY named it "FX Step C(b)", which is right; only the brief's "Step D" is a misnaming.
(2) CONFIRMED. v4 (c′) with n = K: g_m smallest at small m. α_{i,j} field radii; ρ_0 = 0.1 fixed. Side note: HHOL_LF l. 15 states the flow direction reversed (harmless there).
(3) CORRECTED (minor). Mechanism and arithmetic hold. Fixes: ε_m² comes from the small-field cuts (1.101), χ_k, I (1.98), not δ; per-plaquette wording needs the η⁴ weight; add γ ≤ γ_Φ(M) to the γ list; state N(f) ≥ ‖f‖_∞, (2c_*r/ρ_1)‖∇f‖_∞; ζ notation clash. N2 at m = 0 holds, more directly than at m ≥ 1.
(4) CONFIRMED as a radius statement (FX-D proved rel. B18, N2 [I], S1(c), O3, C13, choice-A bookkeeping). (L1) stays [I]; of the three §5.4 reasons, one is real ((b4) fine-origin terms need (S1-pt) on the full polydisc, sup over V, plus vacuum extraction into W_K), one is a duplicate, one is Step-A bookkeeping. FABLE (b4) lists B-terms in A_K^f; this conflicts with C13.
Status: (FX-D) CLOSED relative to B18 (no new open item). (L1) OPEN [I], residue = polydisc form of FABLE L6 (S1-pt) + (Reg), and C13/FABLE (b4) consistency.
