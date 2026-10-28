IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_A16_REPLACE — independent verification (2026-10-28)

Verifier: Opus 5.5 subagent. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.md, no ONLINE_SWEEP.md.

## V1 (a) License scope — CMP 116 pp. 1–3 (p. 3 image at 300 dpi; pp. 1–2 text layer)
- p. 3 sentence read on the image. Text in the file is verbatim. CONFIRMED.
- "these equations" = (1.3)–(1.4), printed on p. 2 (not p. 3). p. 2 says (1.3)–(1.4) "are determined by local, analytic functions, and nonlocal propagators H, H_0, G̃". (1.5) names exactly H, G̃, H_0. C in (1.3) is the local map. CONFIRMED.
- (1.6)–(1.7) follow the license. They describe "the original propagators" (CMP 99 (3.107)–(3.108)). The phrase "walk bounds behind it" is a fair reading: "same bounds" points to Sect. C, E [15], whose inputs are CMP 99 Thm 3.1 norms. [I], acceptable.
- No measure, covariance, positivity, or determinant appears in the sentence. Claim (1) CONFIRMED.
- p. 1 "quite general" sentence: "more general propagators described in [13]" — the CMP 99 class, plus "integrals conditioned to subdomains". Author's reading is correct; it is a claim of generality, not a license for an arbitrary C_f.
## V2 (c) Source kernel 𝒲_S is NOT finite range — gap in §3.0
- §3.0 says 𝒲_S = C*𝒱_SC is finite range, R_W ≤ c(d)L. This is false.
- D3W8 §1.1 and D2 (2.a) l. 105: 𝒱_S = H_1*(Σ_p d_S(p)H_p)H_1 + (D^{(2)} correction).
- WC_FULL 0.6: H_1 = G_1Q*(QG_1Q*)^{−1}. G_1 is a propagator. H_1 is nonlocal with exponential decay.
- D2 l. 117 says so: "local up to Balaban's exponentially decaying parts of H_1".
- The D^{(2)} correction pairs with H_1*J_S, the same nonlocal branch as Δ_J in WC_FULL §4 (d) (l. 192–193).
- Consequence: 𝒲_□ is not a one-domain block. Each 𝒲 term is a tree with its own H_1 domains (WG-G1 for G_1, A1-W for (QG_1Q*)^{−1}). b_W, R_W, the domain count in 3.2, and the p. 13 claim "all □⁺ meet only Z̃_0" do not hold as written.
- Repair route exists: treat 𝒲_S like Δ_J in WC Prop. W_N (tree expansion via WG + A1-W + Concatenation Lemma), with weight ε_S = O(γ²r) per tree. Then Lemma C concatenates trees, not blocks. (A16-b) must be restated with W_N-type constants. Restriction 1_{Z_0} still only cuts kernels (WC 4.4). Not written in the file.
- Complex domain for H_1: WC_FULL 6.3 notes CMP 99 has no complex statement for H_1; WC §6 (four-level chain) supplies it for A_exp. The repair must use the same chain.
## V3 (c) Neumann ratio, (A16-a), Q7 integral, Lemma P^f — arithmetic checks
- (A16-a) origin: complex Re A_Z ≥ ½γ_exp (WC(iii)) ⇒ ‖A_Z^{−1}‖ ≤ 2/γ_exp; ‖g²𝒲_ZA_Z^{−1}‖ ≤ 2τ_2/γ_exp ≤ ½ iff τ_2 ≤ γ_exp/4. CONFIRMED. Real case also Re A_Z^f ≥ ¼γ_exp. CONFIRMED.
- Operator-norm convergence is not walk-norm convergence. The walk convergence rests on (A16-b) + Lemma C + sum lemma, not on (A16-a). The file keeps the two apart. Correct in structure; the constants depend on the V2 repair.
- Q7: ∫_0^∞x^{−1/2}(γ+x)^{−(n+1)}dx ≤ γ^{−n}·π/√γ. Correct. Neumann ratio for (x + A_Z)^{−1}: τ_2/(x + ½γ_exp) ≤ ½. Correct. Formula π^{−1}∫x^{−1/2}(x + K)^{−1}dx = K^{−1/2} holds for Re K ≥ c > 0 (spectrum in open right half plane; principal root). OK.
- Lemma P^f: with Re A_c^f ≥ ¼γ_exp, (a)–(b) need ‖K − A_c^f‖ ≤ ⅛γ_exp, i.e. (H_η) with γ_exp → γ_exp/2. Matches the file. δ_c^f ≤ δ_c + 2τ_2: correct (difference g²(𝒲(U_c,f) − 𝒲(U,Re f)), each ≤ τ_2). Threshold of M uses τ_2 ≤ γ_exp/4 only, so it does not depend on r. OK.
- Lemma D^f uses A8's corrected step (M − c′M_1 ≥ M/2, rate ε″/8). The file cites the correction. (G2) "□⁺ diameter ≤ 3M_1" fails with nonlocal 𝒲 (V2); in the repair, 𝒲 tree domains are W_N domains of diameter ≤ c_XM_1, so (G2) holds with c′ adjusted.
## V4 (b), (f) Uses of the covariance on CMP 116 pp. 12–17 (text layer) vs Q-list
Each use, with its Q:
- (2.4)–(2.5) whole-volume dμ_{C^{(k)}}(B′), conditioning on Z_0^c → Q1 (whole volume), Q9.
- (2.6) B′ = (C^{(k)})^{1/2}X, dμ_0(X); Γ_k = C*Δ_kCZ_0^c(C^{(k)})^{1/2} → Q7. NOTE: the square root is of the WHOLE-VOLUME C^{(k)}, not of C(Z_0).
- p. 13: walk expansions in the X_0 form (X̃_0 = Z_0, other X at dist > ⅔M) for "all operators determining Δ_k, and for C^{(k)}(Z_0)", and for (C^{(k)})^{1/2} via (2.7) → Q2, Q7, plus a walk form of Δ_k^f itself.
- (2.8) s-decomposition (1.10) → Q2 (s-insertion), Q4 (analyticity in s).
- p. 15: analyticity of "quadratic forms and covariances" in (U, J) on the larger domain → Q4.
- (2.14)–(2.15): non-symmetric operators, complex measure, modulus bound → Q8 (Lemma P).
- (2.16)–(2.17): σ → 0, U_c → U, J → 0 errors R_1, R_2, R_3 and determinant ratio → Q8, Q6. R_3 is a difference of Γ_k, so it needs σ-difference bounds for (C^{(k)})^{1/2}(σ) and Δ_k(σ), not only for C(Z_0, σ).
- (2.23)–(2.24): α_5‖C(Z_0,0)‖ < ½; Gaussian integral; det ratio; zeroth-order cancellation → Q5, Q6, Q9, and symmetry of C(Z_0,0) at the real pair.
- No use of Euclidean covariance on these pages.
Q-list result:
- Listed and used: Q1, Q2, Q4–Q9 on these pages; Q3, Q10, Q11 used by D2/D3W8. Nothing listed is unused.
- Used but not listed / not proved in the file:
 (U-a) Whole-volume C_f and (C_f)^{1/2} with the p. 13 X_0-form. File 3.5 proves the Z_0-compressed root via WC(iv); WC 0.8 requires dist(Z_0, Λ_k^c) > RM, so the whole volume is not literally covered.
 (U-b) σ-difference bounds for (C_f)^{1/2}(σ) and Δ^f(σ) (R_2, R_3 of (2.16)). File 3.6 does Lemma D^f for C_f(Z_0, σ) only.
 (U-c) Walk/tree form of Δ_k^f(σ) = A_exp^f(σ). File 3.5 asserts it with "𝒲 local" — false (V2).
 (U-d) Symmetry of C(Z_0, 0) at the real pair. A8 6.2 leaves it unproved even at f = 0; A8 corrections route around it. Inherited, not new.
- (M1) assessment: pp. 12–17 show no use outside Q1–Q9 + (U-a)–(U-d). CMP 116 Sect. 1, CMP 109 Sect. 3, CMP 119 pp. 270–279, CMP 122 I not swept here. (M1) stays [I].
## V5 (d) Euclidean covariance; (e) admissibility; (g) (W4)
(d) grep "covarian|translation" over D1, D2, D2C, D3, D3R, D3W8, D4D5. Hits:
- D2 (a4) l. 123 and (H2)(vi) l. 64: the step is covariant with the source moved, V(rX, rU; f∘r^{−1}) = V(X, U; f). This is an identity of the integral (change of variables), not a property of C_f with f fixed. It does not need C_f invariance.
- D2 §4/§5, D2C: translation invariance used only for frozen constant-c theories. Consistent with the file.
- D3R l. 15: CMP 119 p. 271 covariance of R′_k — a property of activities, not of C_f.
- No consumer uses fixed-f invariance of C_f. File's claim CONFIRMED. Wording fix: name D2 (a4) as the moved-f covariance, which holds.
(e) Canon (SOURCES_ORDER_CANON B15–B18, B30–B32):
- (A16-a): τ_2 = O(g²r) with g ≤ γ/2 (B31); γ_exp fixed in WC before B15. Imposed at B32. Admissible.
- (A16-b): ρ_*, κ_1, C_𝒟, γ_exp fixed before B15; b_W linear in r. Admissible at B32. Must be restated with tree constants after the V2 repair; still left of B32.
- (H_η)^f: threshold uses τ_2 ≤ γ_exp/4 (worst case) and W^f bounded through (A16-b) as a hypothesis, so it is r-free and fits B18. Use the corrected A8 form M ≥ (8/ε″)[…]. Admissible.
(g) D2 l. 272 cites the p. 3 sentence for "the step is a holomorphic map of its inputs on the E_0 → 2E_0 ball". That is about activities, not propagators. Misattribution CONFIRMED. B20 can drop A16 from the (W4) depends entry (W4 is [R] via Theorem SM). B20 cannot drop A16 entirely: (P8) still depends on the C_f properties, now via this replacement, which is not closed (V2, V4).
## V6 Grades and A16 status
(1) License scope: CONFIRMED (p. 3 image; equations on p. 2; names H, H_0, G̃ only; no measure).
(2) Q-list: CORRECTED. Q7 and Q8 are needed and were missing from D2/D3W8 — confirmed. The list still misses (U-a) whole-volume C_f and (C_f)^{1/2}, (U-b) σ-differences of (C_f)^{1/2} and Δ^f, (U-c) tree form of Δ^f, (U-d) symmetry of C(Z_0,0) (inherited A8 residue). Nothing listed is unused.
(3) Proofs: CORRECTED. Neumann ratio, (A16-a) origin, Q1/Q5 positivity, Q7 x-integral, Lemma P^f arithmetic are correct. But 𝒲_S = C*H_1*(Σd_SH_p)H_1C + D^{(2)} part is NOT finite range (H_1 = G_1Q*(QG_1Q*)^{−1} is nonlocal). So "each 𝒲 term is a one-domain block" is false. The walk-level proofs of Q2, Q6, Q7, Q8 (and b_W, the domain count, the p. 13 claim) must be redone with 𝒲 in the tree form of WC Prop. W_N (as for Δ_J), on the WC §6 complex chain. Repair route is clear; not written. Euclidean-covariance claim: CONFIRMED (fixed-f invariance false and unused; moved-f covariance of D2 (a4) is an integral identity).
(4) Conditions: CONFIRMED as admissible (B32 for A16-a/b, B18 for H_η), with (A16-b) to be restated after the repair. (M1) stays [I]; pp. 12–17 add (U-a)–(U-d).
A16 status: OPEN, reduced. Not "PARTLY CLOSED". The analogy is replaced by a correct proof plan, but the proofs depend on a false locality claim and miss (U-a)–(U-c). Suggested ledger text: "A16 | extension to C_f: replacement route SOURCES_A16_REPLACE [P-plan, verify CORRECTED: 𝒲_S nonlocal via H_1, needs W_N tree form; whole-volume (C_f)^{1/2}; σ-differences of (C_f)^{1/2}, Δ^f]; residue (M1) [I]; (W4) no longer depends on A16."
