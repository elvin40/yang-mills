# SOURCES_B10_SWEEP — verification sweep of TRUST_LEDGER row B10 (2026-10-28)

Scope: the four "proved, unverified" items of row B10: (i) CMP 119 (2.6)–(2.9) sweep; (ii) BETA_FP_M Prop. 4.3; (iii) Prop. 3.6 assembly; (iv) D″ form of N3 Step 3. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP.

## (i) Sweep of CMP 119 (2.6)–(2.9): Theorem 2w ⇒ hypotheses of Theorem 1

Claim (v4 §1.2, §2.3; LEMMA_DPRIME_SWEEP §7). The 19 cross-scale uses of (g_j) in CMP 119 and CMP 122 I–II follow from (b) + (P-up) + (P-low) + (S), with c_sw = max(2, 1/(1 − (1+β_0)^{−2})).

Recomputed [P, this file].
- (2.6) l.1 ⟺ u_m ≤ u_n(1 + g_n²B′(n−m)) = u_n + B′(n−m): exactly (P-up). 1 + aN ≤ (1+a)N for N ≥ 1; (1+γ²B′)^{1/2} ≤ 1+β_0 ⟺ γ²B′ ≤ (1+β_0)² − 1 (S1).
- (2.6) l.2: (P-low) gives u_m ≥ u_n − D′; g_m/g_n ≤ (u_n/(u_n − D′))^{1/2} ≤ 1+β_0 ⟺ u_n ≥ D′/(1 − (1+β_0)^{−2}). At β_0 = 1/7: 1 − 49/64 = 15/64, c = 64/15 = 4.267. CONFIRMED.
- (2.46): u_n ≥ 2D′ ⇒ u_j ≥ u_n/2 + β(n−j); Σ_j u_j^{−κ_0/2} ≤ (u_n/2)^{−κ_0/2} + (u_n/2)^{1−κ_0/2}/(β(κ_0/2 − 1)) = O(g_n^{κ_0−2}). CONFIRMED (agrees with A11_CONST_VERIFY S8).

Page images read here (130 dpi; CMP 122 I p = pdf + 174, II p = pdf + 354).
- Row 9, I p. 187 (1.52): factor ((1+β_0)(1+αβ)L_0²/L² + 2αβ/(2−β)) from ε_{j+1} ≤ (1+β_0)ε_j. Slack at β_0 = β = 1/2, L_0 = L/2, α = 1/8: 0.398 + 0.083 = 0.48 < 1. CONFIRMED. Correction: with the monotonicity of gℓ^{p_0} (A11_CONST_VERIFY §8), the one-step ε bound needs only (P-up), not "both".
- Row 10, I p. 188 (1.57): ε_k exp(−δ10M(R_{j+1}+…+R_{k−1}) − δMR_k) ≤ (1+β_0)e^{−R_j}ε_j. Uses ε_k ≤ (1+β_0)(k−j)^{1/2}ε_j (upper) and R_j ≤ LR_{j+1} (A11 rederivation 3); needs δM ≥ L-type lower bound on M (up-set, M chosen late). CONFIRMED, upper side, D-free.
- Row 13, I p. 199: L1 δ′_k ≤ (1+β_0)N^{1/2}δ′_h (upper); L2 ε_h ≤ (1+β_0)²(1 + (j−h)^{β_0})ε_j (lower; printed "1 + (j−h)^{β_0}", harmless); L3 δ′_k ≤ (1+β_0)(1+(k−j)^{1/2})δ′_j (upper); L4 (1+β_0)(k−j)^{1/2}L^{−2(k−j)} ≤ L^{−(k−j)} (L > 11). CONFIRMED as in the table.
- Row 14, I p. 200: L_0^{−2(N_0−1)} = R_{k−N_0+1}^{−α_0}, α_0 = log L_0²/log L, so the printed step needs R_k ≤ L_0^{2/α_0}R_{k−N_0+1} = L·R_{k−N_0+1}, i.e. (2.9) l.1 (later by earlier). Via (2.7) l.1 (lower side, ℓ_n ≤ ℓ_m + 2log(1+β_0)) and integer powers of L: R_k/R_m ≤ L(1+β_0) < L² ⇒ ≤ L. CONFIRMED, lower side.
- Row 15, II p. 362 (1.23): 11d²ε_h ≤ 11d²(1+β_0)²N^{β_0}ε_k ≤ 11d²(1+β_0)²R_k^{β_0}ε_k, h < k. (2.8) l.2, lower side. CONFIRMED.
- Row 17, II p. 382 (and (1.78) p. 383): R_{j−N+1} ≤ (L+1)N^{β_0}R_j. (2.9) l.2 with n − m = N − 1; uses only u_m ≤ u_n + B′(n−m). CONFIRMED, upper side.

Row table (second-read status).
| # | Place | Second read by |
|---|---|---|
| 0 | CMP 119 p. 262 Thm 1 | A11_CONST_VERIFY §6 (p. 262 image) |
| 1–4 | CMP 119 pp. 255–256 (2.6)–(2.9) | A11_CONST_VERIFY §3, §8 (T1–T3, monotonicity fix); recomputed here |
| 5 | CMP 119 (2.31) p. 260, (2.46) p. 263 | A11_CONST_VERIFY §5, §7, S8; recomputed here |
| 6 | CMP 119 (3.7), (3.8), (3.12), (3.13) | A11_CONST_VERIFY §8, §9 |
| 7 | CMP 119 p. 270 (k_1) | A11_CONST_VERIFY §10 |
| 8 | CMP 119 p. 284 (3.68), sketch | A11_CONST_VERIFY §14 |
| 9 | CMP 122 I p. 187 (1.52) | this file |
| 10 | CMP 122 I p. 188 (1.57) | this file |
| 11 | CMP 122 I p. 192 (A) | LEMMA_DPRIME_VERIFY Steps 4–5 |
| 12 | CMP 122 I p. 198 (1.94) (E) | LEMMA_DPRIME_VERIFY |
| 13 | CMP 122 I p. 199 L1–L4 | this file |
| 14 | CMP 122 I p. 200 (M) | this file |
| 15 | CMP 122 II p. 362 (1.23) | this file |
| 16 | CMP 122 II p. 381 (C, D) | LEMMA_DPRIME_VERIFY |
| 17 | CMP 122 II pp. 382–383 (O) | this file |
| 18 | CMP 122 II p. 386 (B) | LEMMA_DPRIME_VERIFY |
All 19 rows are now second-read (was 4). A11_CONST_VERIFY also added uses outside the 19 (CMP 119 p. 268 after (3.17); p. 277 g_k^{−2}(·) − g_k^{−2} at general n − m; p_0³(g_k) p. 278); all class (b), covered.

What remains. Completeness of the list for CMP 122 I–II. CMP 119 Sect. 2–3 is now read page by page on images (A11_CONST_VERIFY pp. 245, 255–284). CMP 122 I–II were only grepped, and the OCR is poor: "β_0" appears as "β 0", "/?o", "ß0" (grep here finds 7 garbled hits in 2 files). So a use that the OCR mangled can be missing. Fix: page-image read of CMP 122 I Sect. 1 and II Sect. 1 for cross-scale factors, as A11_CONST_VERIFY did for CMP 119.

Grade (i): CORRECTED (minor). Every row holds as stated; rows 6 and 9 need only (P-up) once the gℓ^p monotonicity step is used. Residual: CMP 122 completeness [I, grep on poor OCR].

## (ii) BETA_FP_M Prop. 4.3 (direct log|det| bound for the N–O window)

Claim. Given (S1) 𝒦_s ≥ −C_1|f|, (S2) |N_s(λ′) − N_s(λ)| ≤ C_2|f||λ′ − λ| on W = [−μ, 3Rμ], (S3) ±V ≤ εC_3[(𝒦_0 + μ)² + f²], μ = 2C_1|f|: |II(f)| ≤ Cε|f|³ log(1/(ε|f|)), II = −½[τg̃(𝒦_1) − τg̃(𝒦_0)]. No BETA_FP_M_VERIFY exists; this is the first second read.

Line-by-line check [P, this file].
- Support. χ(2R) = 0 and spec 𝒦_s ≥ −μ/2 (S1), so II = −½∫_{[−μ/2, 2Rμ]} g̃ d(N_1 − N_0). τg̃ is finite because g̃ has only a log singularity and dN_s ≤ C_2|f|dλ on W (S2 excludes atoms). OK.
- Lemma 4.1 (Kaplansky). τ(P ∧ Q) ≥ τ(P) + τ(Q) − 1 > 0; a unit vector in P ∧ Q gives ⟨v, Yv⟩ ≤ λ < ⟨v, Xv⟩. OK.
- Lemma 4.2, lower side. g_+(x) = x + εC_3[(x+μ)² + f²] is increasing for x > −μ, so N_{g_+(𝒦_0)}(λ) = N_0(g_+^{−1}(λ)) ≥ N_0(λ − η_*). OK. Upper side. g_−(x) = x − εC_3[…] decreases for x ≳ 1/(2εC_3), so {g_−(x) ≤ λ} also contains large x. The file's own end-of-§4 correction (ε ≤ c/(C_3(‖𝒦_0‖ + 1)), i.e. j ≥ j_1; (S3w) [open] for j < j_1) is right and is load-bearing for Prop. 4.3. Both λ ± η_* stay in W: −μ/2 − η_* ≥ −μ and 2Rμ + η_* ≤ 3Rμ. Then |N_1 − N_0| ≤ C_2|f|η_* (the file writes 2C_2|f|η_*; conservative).
- (a) |λ| ≤ η_*. |g̃| ≤ |log|λ|| + |log μ| + log 2; ∫_{−η_*}^{η_*}|log|λ||dλ = 2η_*(log(1/η_*) + 1). |log μ| ≤ log(1/η_*) needs η_* ≤ μ ≤ 1. η_* = c_*εf², c_* = C_3[4(3R+2)²C_1² + 1], so η_* ≤ μ holds for ε|f| ≤ 2C_1/c_*. Implicit condition; harmless as f → 0. OK.
- (b) Integration by parts on [−μ/2, −η_*] and [η_*, 2Rμ]. Boundary term at −μ/2 is 0 (N_s(−μ/2) = 0 by (S1) + no atom), at 2Rμ is 0 (g̃ = 0), at ±η_* ≤ (log(1/η_*) + C)C_2|f|η_*. Derivative: g̃′ = [1/λ − 1/(λ+μ)]χ + log(|λ|/(λ+μ))χ′(λ/μ)/μ; first term ≤ 1/|λ| + 2/μ; second term lives on [Rμ, 2Rμ], where |log| ≤ 1/R, so ≤ ‖χ′‖/(Rμ). So |g̃′| ≤ 1/|λ| + C_R/μ. Bulk ≤ C_2|f|η_*[log(μ/(2η_*)) + log(2Rμ/η_*) + (2R + ½)C_R]. Matches the file.
- Final form. Sum ≤ C|f|η_* log(1/η_*) = Cc_*ε|f|³ log(1/(c_*εf²)). Since log(1/(εf²)) = log(1/(ε|f|)) + log(1/|f|) ≤ 2 log(1/(ε|f|)) for ε ≤ 1, the stated form holds with C doubled. OK.

Grade (ii): CONFIRMED, with scope made explicit: (1) valid for ε_j ≤ ε_0 (j ≥ j_1) through Lemma 4.2's upper side; for j < j_1 it needs (S3w) [open]; (2) implicit smallness η_* ≤ μ ≤ 1, ε ≤ 1 (f → 0 at fixed j, which is the only use, Cor. 4.5). Inputs (S1)–(S3) stay [open]; Prop. 4.4 stays [argued]. So Prop. 4.3 leaves B10 as "proved+verified given (S1)–(S3)"; (M) itself is still open.

## (iii) Prop. 3.6 assembly (THEOREM2_PROOF.md §3.6; v4 §7.1)

Claim. Given (H3) = V1, (A), (W), L odd ≥ 3: β_∞ := Φ(𝒟_∞) exists and |β_{j+1}(0) − β_∞| ≤ C(1+j)²L^{−2j} ≤ C_ρρ^j for every ρ ∈ (L^{−2}, 1).

Check of the five assembly steps [P, this file].
- (i) O5: |∂_K^α(Δ_M − Δ_∞)| ≤ CM^{−2}, |α| ≤ 2, M = L^j ⇒ rate L^{−2j} in C². OK.
- (ii) Sector rates (inputs, conditional): σ^{(1)} jL^{−2j}, σ^{(2)} j²L^{−2j} (Jordan chain, eigenvalue L^{−2}; R23_VERIFY items 5–6), neutral L^{−4j}. max(L^{−2j}, jL^{−2j}, j²L^{−2j}, L^{−4j}) ≤ (1+j)²L^{−2j}. OK.
- (iii) Identification of σ-Taylor data with the (6.1) data: cited (U3_VERIFY §7), not re-shown. Input.
- (iv) A convergent sequence in the (6.2) norm is bounded, so sup_j‖𝒟_j‖ ≤ a, and ‖𝒟_∞‖ ≤ a. O6 gives ‖𝔅_j^{−1}‖ ≤ b for all j; if 𝔅_j → 𝔅_∞ in norm, then 𝔅_∞ is invertible with ‖𝔅_∞^{−1}‖ ≤ b (the bound passes to the limit). Ghost ‖G^{−1}‖ ≤ L⁶/4. So 𝒟_j, 𝒟_∞ ∈ 𝒟_{a,b}. OK.
- (v) Theorem 6.1 Lipschitz on 𝒟_{a,b} (two-point resolvent identity, no convexity needed) gives |Φ(𝒟_j) − Φ(𝒟_∞)| ≤ C(a,b,L)C(1+j)²L^{−2j}. (1+j)²L^{−2j}ρ^{−j} is bounded for ρ > L^{−2}. OK.

Prior verification. THEOREM2_PROOF_VERIFY Step 4 and Point 3 already graded the assembly "CONFIRMED with the j = 0 fix" (C j² → C(1+j)²). v4 §7.1 and TRUST_LEDGER B10 still say "unverified as an assembly". That tag is stale.

Grade (iii): CONFIRMED (second confirmation). The assembly is verified; its inputs are not: (A) in full [open], the σ^{(1)} rate (U3_AW §4.7 sketch, unverified), σ^{(2)} convergence [open], the neutral-sector K-derivative paragraph [proved, unverified], and the identification step [cited]. Prop. 3.6 is on the convergence route (v4 §7), which v4 states is not needed for Theorem 1; so it should leave B10 and be booked under §7's inputs.

