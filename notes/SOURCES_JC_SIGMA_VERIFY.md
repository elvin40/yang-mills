# SOURCES_JC_SIGMA_VERIFY — adversarial verification of SOURCES_JC_SIGMA (Proposition Σ-B, condition (J-σ)) and a decision on the reading (A-σ)

Date 2026-10-29. Author: Claude (Opus 5.5), verifier. Edits: this file only. No existing file was edited. PLAN.md was not touched. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read. No grep touched them (all greps named single files under balaban/ or named project files).
Ids follow IDS.md: R-035 (B-S), H-116 (H-U), R-019 (CMP 102 (172)), Q-050 (NEW-4), L-165 (Lemma FX-D), K-039 (C1*), H-270, canon lines N-060, N-320, N-470, N-490.

## Verdict

PASS WITH CORRECTIONS. Proposition Σ-B is correct as a [P] given its inputs. It proves (T2) of SOURCES_W6_RESOLVE with constant 2e^{1/4}. Under choice B it replaces Lemma TV, (T2) and (J-c′) on the chain. The order-of-choice objection to γ_TV(M, r) is correct. The entry (J-σ) is correct after two corrections: (b) must leave room for the B′ fluctuation inside the CMP 102 radius (K-039 already uses half of it), and the monotonicity exponent of Φ′ must be written out. One claim is CORRECTED in size: without the extraction the naive σ is O(polylog(g^{−1})·M^{O(1)}), not O(g^{−1}·polylog·M⁴). The conclusion (extraction is necessary) stands.
Part 2: (A-σ) does NOT follow from CMP 102 as printed, and it does NOT follow from Proposition A. CMP 102 prints the fixed radius for the whole-lattice minimizer. It does not print it for the Z-localized minimizer of CMP 122 II (1.3). (A-σ) stays [I], narrowed to one reading, (A-σ*) in §3.4.

Grades. [V] read this session on a page image (pdftoppm -r 150, fresh folder /tmp/jcsv.hzbG, deleted after use). [P] checked here. [R] reduced to a named result. [I] reading or inference without image support.
Page images read this session: CMP 122 II pp. 356, 357, 358 (PDF 2–4); CMP 109 p. 262 (PDF 14); CMP 102 pp. 278, 279 (PDF 2–3, (2)–(7), Theorem 1); CMP 102 pp. 305–309 (PDF 29–33, Sect. G, (169)–(190), Proposition 9, reference list).
Text layer only (not [V]): CMP 109 reference list (item 15 = CMP 102 variational paper; this fixes "[15]" in CMP 122 II); CMP 119 l. 70 (p_0(g) = A_0(log g^{−2})^{p_0}).
Files read: OPUS_QUEUE.md l. 1–15; SOURCES_JC_SIGMA.md (whole); SOURCES_W6_RESOLVE.md §2 (whole); SOURCES_H_ALPHA.md (whole); SOURCES_ORDER_CANON.md N-060, N-320, N-440, N-470, N-490 (grep); SOURCES_FX_D.md Steps 4–5 (grep); SOURCES_L1_E_VERIFY.md γ_Φ lines (grep).

## 1. Page checks (images, this session)

| page | what I checked | result |
|---|---|---|
| II 356 | (1.1); denominator ∫dV′↾_Λδ_{G_0}(V′)χ exp[−g_k^{−2}A(ζ_0, U_{k,Z}(V′V_Λ))]; "the term from the denominator is dangerous"; first line of (1.2) with prefactor exp[−g_k^{−2}A(ζ_0, U_0) + (−½d(g)log g_k^{−2} + log σ_0)\|Λ^{(k)}\G_0\|] and ∫dB′↾_Λσ(g_kB′)δ_{G_0}(B′)χ({\|B′\| < M_0g_k^{−1}ε_k}) | matches JC_SIGMA §2. The cut χ acts on B′ only. σ(g_kB′) is Balaban's Haar density, not the σ of (J-c). |
| II 357 | rest of (1.2); "estimated by O(g_k^{1−β})\|Λ\|"; (1.3) (U regular on Z, averages fixed on Z\Λ); (1.4) "By the results of Sect. G [15]"; (1.5); (1.6) with "Λ is contained in a cube of the size 100M"; \|A_0\|, \|∇^ηA_0\| < O(1)M⁶R_kε_k | matches |
| II 358 | (1.7)–(1.9); the extension sentence ("replacing the variables V_k in the function U_0 by the averages M^k(U) for U ∈ U_k^c(Z, α_{0,k}, α_{1,k}) … all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k}) … stronger restrictions on g_k, or γ"); (1.10)–(1.11) | matches. The extension is stated only on the g-dependent domain U_k^c(Z, α_{0,k}, α_{1,k}). No bound on Im of the quadratic form is printed. |
| CMP 109 262 | U_j^c(X, α_0, α_1, γ_0) as a union of G^c orbits; (1.11)–(1.16) | matches JC_SIGMA §2 |
| CMP 102 278–279 | problem (5) on U_k({Ω_j}, ε_0) ∩ 𝔅_k(𝔅_k, V); constraint (3) Ū^j = V on Λ_j for j = 0, …, k; (7) \|(∂V)(p′) − 1\| < ε_1; Theorem 1 with a_0, a_1, B_3 depending on d, L only, and M ≤ M(ε_1) = R_1M_1(a_1/ε_1) | see §3 |
| CMP 102 305–309 | (172) V = V′V_0, \|V′ − 1\| < C_1ε_1, \|B′\| < 2C_1ε_1 on 𝔅_k, "for ε_1 sufficiently small"; (173) ε_2 = B_5ε_1; (174)–(180); p. 307 analyticity in V′ and extension to G^c orbits by (181); (182)–(190) derivative bounds; p. 309 "These functions and operators can be extended to arbitrary, regular configurations U … They are analytic functions of these configurations"; Proposition 9 | see §3 |

## 2. Part 1: claim-by-claim grades

### 2.1 Setup and the reference measure

C1. (J-c) is used only at L1_E (D-iii); J3 does not cover (D-iii) (JC_SIGMA §1.1–1.2). Not re-derived here; it agrees with SOURCES_L1_E_VERIFY §6(d) and W6_RESOLVE §2.5(a). CONFIRMED [R].
C2. Lemma D3.1 numbers: e^{−1/2}cos(1/2) = 0.5323 ≥ ½ (computed). §1.5: any fixed s_* < π/2 gives non-vanishing with a numerical loss. CONFIRMED [P].
C3. Gauge invariance of D under G^c (§3.1). The function g ↦ D(U^g) − D(U) is holomorphic on G^c near 1 and vanishes on G, which is totally real of maximal dimension. So it vanishes near 1, and on the connected group by continuation. U_k^c is a union of G^c orbits [V p. 262]. CONFIRMED [P-sketch].
C4. The reference measure. dμ := e^{Q(B′; U^r)}dμ_0 with dμ_0 = σ(g_kB′)δ_{G_0}(B′)χ({|B′| < M_0g_k^{−1}ε_k})dB′. dμ_0 is positive: σ(·) is a Haar density, δ_{G_0} is a gauge-fixing delta, χ is an indicator [V p. 356]. dμ_0 does not depend on U: the only cut acts on B′ [V p. 356]. Q is real at real U^r. So dμ is a real positive measure. It is "the real positive measure at (U^r, f = 0)" of choice B. CONFIRMED [P].
 Note (not an error): U^r depends on the choice of the orbit representative U = U′U^r. σ_U depends on that choice; the bounds of Lemma Σ do not. So the choice is harmless.
 Note (minor CORRECTION): Lemma Σ(b) says "At U^r the printed (1.6) gives …". U^r has real curvature up to α_{0,k}, which can exceed ε_k. So (1.6) at U^r also needs the p. 358 replacement ε_k → O(α_{0,k}) (Rd2). The third term of S already carries the factor (A_0 + C_0 + C_1), so S does not change. CORRECTED (wording only).

### 2.2 Why σ must be taken after the extraction in (1.2)

C5. "(1.2) pulls g_k^{−2}A(ζ_0, U_0) out of the exponent." At real U this is the printed identity (1.2) [V pp. 356–357]. At complex U both sides are Balaban's extension (p. 358 [V]) and the factorization is pointwise in B′, so it holds for the integrand and for its modulus. CONFIRMED [V + P].
C6. "Without the extraction σ is O(g^{−1}·polylog·M⁴)." CORRECTED. The bound g_k^{−2}·O(α_{1,k})·|Λ| is a valid crude upper bound, but it is not the size. U_0 is near flat on Z (|A_0| < O(1)M⁶R_kε_k [V p. 357]) and the Wilson action is quadratic in the curvature at flat configurations. So the change of A(ζ_0, U_0(·)) from U^r to U is O((ε_k + α_{0,k} + α_{1,k})·α_{1,k}) per plaquette, times M^{O(1)}R_k^{O(1)} from the gauge-fixed field bound. With ε_k, α_{i,k} = g_k·polylog this gives g_k^{−2}·g_k²·polylog·|Λ|·M^{O(1)} = O(polylog(g_k^{−1})·M^{O(1)}). This grows as g_k → 0 and has no small factor. So the conclusion holds: the naive σ is not ≤ ¼ for small γ, and Lemma D3.1 needs σ after the extraction. The conclusion is CONFIRMED; the stated order is CORRECTED. [P]
C7. The stationarity (1.4)–(1.5) removes the large part of the linear term [V p. 357]. CONFIRMED.

### 2.3 Lemma Σ

C8. (a) Schwarz-lemma step. φ(s) := ⟨B′, K(U_s)B′⟩ − ⟨B′, K(U^r)B′⟩ with U_s := exp(iξsA′)U^r. Given (A-σ), φ is holomorphic on |s| < ρ := a_σ/α̂, |φ| ≤ 2C_K‖B′‖² (bilinear pairing with real B′), and φ(0) = 0. Schwarz gives |φ(1)| ≤ 2C_K‖B′‖²/ρ, valid since ρ > 1 by (J-σ)(b). So |σ_2| ≤ C_K(α_{1,k}/a_σ)‖B′‖². On supp χ, ‖B′‖² ≤ N_Λ(M_0ε_k/g_k)². With (Rd1) this is the first term of S with a spare factor 2. CONFIRMED [P given (A-σ), (Rd1)].
 The reason for a fixed radius (radius ratio 1 on the α_{1,k}-domain gives no small factor) is correct. [P]
C9. (Rd1) ε_k/g_k ≤ A_0p_0(g_k). The step from the left to the right side of (1.6) [V p. 357] needs ε_k/g_k ≤ A_0p_0(g_k), together with dist(Ω_k, Λ) ≥ R_k/δ and |Λ| ≤ (100M)⁴. CMP 119 (text layer, l. 70) has the threshold g·p_0(g) with p_0(g) = A_0(log g^{−2})^{p_0}. The two notations differ by a factor A_0. Only constants change. CONFIRMED as to form; the power of A_0 is [I].
C10. (b) Analytic continuation of (1.5). The map U ↦ ⟨DH_{1,k}B′, η^{−2}(U_0 − U_0^{−1})/2i⟩ (fixed real B′) is holomorphic and vanishes on the real configurations. The domain {exp(iξA″)U^r : A″ ∈ g^c small} contains the real slice (A″ ∈ g), which is totally real of maximal dimension, and the domain is connected. So the identity holds at complex U. CONFIRMED [P-sketch]. The bound then follows from (1.6) with (Rd2) and H-270 (e^{−R_k} ≤ g_k²). The sum fits the third term of S if c_1 ≥ 3/2. CONFIRMED [R].
C11. (c) σ_V: printed O(g_k^{1−β})|Λ| [V p. 357] at U^r, and (Rd2) at U. CONFIRMED [R, printed sentence p. 358]. The argument gH_{1,k}B′ has size O(M_0ε_k)·‖H‖, so the third-order bound uses the B′ cut, which the extension does not change.
C12. Monotonicity §4.3. With y = log g^{−2}: d/dg(gy^a) = y^{a−1}(y − 2a) > 0 for g < e^{−a}; d/dg(g²y^b) = 2gy^{b−1}(y − b) > 0 for g < e^{−b/2}. The thresholds needed are e^{−(2p_0+q_1)} and e^{−(2p_0+q_0+q_1)/2}; γ ≤ e^{−(2p_0+q_0+q_1)} covers both. CONFIRMED [P].
C13. §4.4 (CMP 122 I (1.100) denominators, cube 100MR_k). CONFIRMED as [P-sketch]: only the exponent of y in S changes.

### 2.4 Proposition Σ-B

C14. (i) |σ_U + σ_W| ≤ ¼ + ¼ = ½ on supp dμ; Lemma D3.1; nonzero prefactor. CONFIRMED [P given Lemma Σ and (T1)].
C15. (ii) ∫|e^{Q(·;U)}|dμ_0 = ∫e^{Re σ_U}dμ ≤ e^{1/4}∫dμ ≤ 2e^{1/4}|∫e^{σ_U}dμ|. W6_RESOLVE's dμ_U is the integrand of the full denominator; by C5 its total variation is |prefactor|·∫|e^{Q}|dμ_0, and |D(0; U)| = |prefactor|·|∫e^{σ_U}dμ|. The prefactor cancels. So (T2) holds with e^{C_1M⁵} replaced by 2e^{1/4} = 2.568 < 3. CONFIRMED [P].
C16. (iii) |D(f)/D(0) − 1| ≤ 2e^{1/4}(e^{1/4} − 1) = 0.7294 (computed); |Log(1 + w)| ≤ −log(1 − |w|) = 1.307 ≤ 1.4 (computed). D(0; U) ≠ 0 by (i); the ratio is holomorphic and lies in the disc |w| < 0.73, so the principal Log is holomorphic. CONFIRMED [P].
C17. (iv) I_f = I − L − A(δw_fζ_0, U_0). Sign check: (1.10) [V] gives D(0) = exp[−g_k^{−2}A − I + E_k]; D(f) = D(0)e^L; the definition D(f) = exp[−A(w_fζ_0, U_0) − I_f + E_k] then gives the formula. CONFIRMED [P]. The bound |A(δw_fζ_0, U_0)| ≤ 3rΦ′ uses that U_{k,Z}(V′V_Λ) at B′ = 0 is U_0. This follows from (1.2): the exponent vanishes at B′ = 0 and the prefactor is A(ζ_0, U_0). CONFIRMED [P-sketch]. W6_RESOLVE's direct bound through |A_0| [R] is a second route.
C18. "Σ-B proves (T2) with constant 2e^{1/4}, replacing Lemma TV, (T2) and (J-c′)." CONFIRMED, relative to (A-σ). The [I] content moves from (T2) to (A-σ); it does not disappear. Lemma TV stays valid as a [P-sketch] given (T1), (T2); the chain no longer needs it.

### 2.5 Canon order and the entry (J-σ)

C19. Order conflict of γ_TV(M, r). N-490 sets r_0 = min(1/8, r_0^{D2}, r_0^{D3}, r_0^{FX}, γ^{−2}/10, 1/(6γ²c_1c_H)) (canon text, grep this session). So r depends on γ, and a γ condition with r in it points backward. CONFIRMED. Note: the same repair (r → its γ-free cap 1/8) would also fix (J-c′), giving 3(1/8)Φ′(γ) ≤ ¼e^{−C_1M⁵}. So the order objection alone does not decide between TV and Σ-B; the removal of (T2) and of e^{C_1M⁵} does.
C20. (J-σ)(d) Φ′(γ) ≤ 2/3 with r ≤ 1/8 gives 3rΦ′ ≤ ¼. CONFIRMED [P].
C21. (J-σ) implies γ_Φ. Φ(g) = C(M)g²A_0²C_R⁴(log g^{−2})^q, q = 2p_0 + 4p_R (SOURCES_FX_D Step 4). Φ′ is Φ with ε_k → ε_k + O(α_{0,k} + α_{1,k}), and Φ is increasing in ε_k, so Φ ≤ Φ′ pointwise. With γ below the monotonicity threshold e^{−q/2} of Φ, sup_{g≤γ}Φ(g) = Φ(γ) ≤ Φ′(γ) ≤ 2/3 ≤ 1. CONFIRMED [P], provided (a) contains e^{−q/2}; it does.
C22. (J-σ)(a) "raised to cover q_0, q_1 in Φ′". CORRECTED (incomplete, not wrong). Write it out: Φ′(g) ≤ C′(M)g²y^{q′} with q′ := 4p_R + 2max(p_0, q_0, q_1) (from (ε_k + O(α))² ≤ O(g²y^{2max})). The threshold is γ ≤ e^{−q′/2}. The O(1) in "ε_k + O(α)" must be named (it is the p. 358 O(1)); until then Φ′ has an unnamed constant.
C23. (J-σ)(b) C_1γ(log γ^{−2})^{q_1} < a_σ. CORRECTED. The CMP 102 radius must hold the background and the B′ fluctuation at once: the integrand evaluates U_{k,Z}(exp(ig_kB′)V_Λ(U)) with |g_kB′| < M_0ε_k. The canon already spends half of the CMP 102 radius on the fluctuation: K-039 (C1*) c_mM_0g_kp_0(g_k) ≤ ½κ_HC_1^{102}a_*^{102} (N-470). So a_σ must be defined from the other half, e.g. a_σ := ½κ_HC_1^{102}a_*^{102}/K_av, and not as 2C_1ε_1/K_av (JC_SIGMA §4.1). a_*^{102} depends on M through the cube cap at N-320; that is to the left of N-470, so the order claim stands.
C24. Arguments of (J-σ) all left of N-470; no r. CONFIRMED (N-060 lists K_av, B_3, C_1^{102}, B_5^{102}; N-320 lists a_*^{102} and M_0; N-440 lists C_0, C_1; checked by grep). C_K depends on M (through N_Λ or the cube); this is allowed.

## 3. Part 2: is (A-σ) a consequence of CMP 102, of Proposition A, or an [I]?

### 3.1 What CMP 102 prints [V]
- The problem (p. 278): minimize (5) over U_k({Ω_j}, ε_0) ∩ 𝔅_k(𝔅_k, V), with the constraint (3) Ū^j = V on Λ_j for every j = 0, …, k. The averages are fixed on all of 𝔅_k = ∪_jΛ_j, and p. 279 has B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}) = Ω_j\Ω_{j+2}. So the constrained sets cover the domain. There is no region where the averages are released.
- Theorem 1 (p. 279): a_0, a_1, B_3 depend on d, L only. ε_1 ≤ a_1 is a free parameter. No coupling constant appears in CMP 102.
- (172) (p. 305): for V = V′V_0 with V_0 satisfying (7) at level ε_1, U_k is analytic in B = (1/i)log V′ on |B| < 2C_1ε_1 on 𝔅_k, "for ε_1 sufficiently small". (173): ℋ satisfies (19)–(21) with ε_2 = B_5ε_1, B_5 = 6B_1B_3C_1, "C_1 is an absolute constant".
- p. 307: U_k(V′V_0) is analytic in V′ near 1 in G^c and extends to G^c orbits by (181). (190) (p. 308): the derivative δℋ/δB has the decay bounds of the propagator H.
- p. 309: the operators in (174)–(180) "can be extended to arbitrary, regular configurations U … They are analytic functions of these configurations". Proposition 9 restates this.
Consequence: for the whole-lattice minimizer U_k(V), the analyticity radius in the averages is 2C_1ε_1 with ε_1 a fixed number (≤ a_1, and ≤ the cube cap a_*^{102}(M) of N-320). It does not shrink with g_k. This is the fixed radius that (A-σ) needs. [V]

### 3.2 What CMP 122 II needs [V]
The R-denominator uses U_0 of II (1.3): "U → A(U), for U: U defined and regular on Z, M_{B_k}(U) = M_{B_k(Z)}(Q_k^{s*}V_k) on Z\Λ" (p. 357). This is a minimizer on the finite set Z whose averages are fixed only on Z\Λ and are free on Λ. The integrand also uses U_{k,Z}(V′V_Λ), the Z-localized minimizer with averages V′V_Λ on Λ. H_{1,k} is its linearization in B′, and Δ_1(ζ_0) is the Hessian of A(ζ_0, ·) at U_0. II cites "Sect. G [15]" (= CMP 102, by the CMP 109 reference list, text layer) only for the stationarity (1.4). II p. 358 states the extension only on U_k^c(Z, α_{0,k}, α_{1,k}).

### 3.3 Decision
(1) From CMP 102 as printed: NO. The exact obstruction: CMP 102 Theorem 1, (172) and Proposition 9 are stated for the problem (3)–(7), whose averages are fixed on all of 𝔅_k. II (1.3) releases the averages on Λ and restricts to Z. CMP 102 prints no analyticity radius for that localized problem, and II p. 358 prints only the g-dependent domain. Balaban's citation of Sect. G [15] for (1.4) shows that he treats U_0 with the CMP 102 machinery, but it prints no radius for it. This is a reading, not a printed statement.
(2) From Proposition A (SOURCES_H_ALPHA): NO. Proposition A is about the E-class terms E^{(j)}(X) of the frozen CMP 109 chain. Its mechanism is that the whole-lattice step cut acts on the fluctuation only, so the background radius is not tied to the cut. In the R-denominator this mechanism holds trivially: the only cut is χ({|B′| < M_0g_k^{−1}ε_k}), a function of B′ alone [V p. 356]. So the cut is not the obstruction. The obstruction is the analyticity of U_0, U_{k,Z}, H_{1,k} and Δ_1(ζ_0) in the background, which Proposition A does not address (the integrand has no E-term). Also Proposition A is itself unverified, with three [I] items (A1)–(A3).
(3) So (A-σ) stays [I]. Its content becomes smaller: the norm half of (A-σ) follows from its analyticity half (§3.4), and the radius is supplied by CMP 102 [V] once the localized problem is admitted.

### 3.4 The narrowed residue
(A-σ*) [I]. CMP 102 Proposition 9 holds for the Z-localized minimizer of CMP 122 II (1.3) and for U_{k,Z}(V′V_Λ): the map (b, A″) ↦ U_{k,Z}(exp(ib)V_Λ(exp(iξA″)U^r)) is jointly holomorphic and bounded on |b| < ρ_b, |A″|, |∇A″| < a_σ, with ρ_b, a_σ fixed numbers built from C_1^{102}, a_*^{102}(M), K_av (no g_k, no k, no volume), and U^r real and regular at α_{0,k}.
The norm half of (A-σ) then follows [P-sketch]. F(b, A″) := A(ζ_0, U_{k,Z}(exp(ib)V_Λ)) is holomorphic and bounded by O(1)|Λ|·(radius)² on that polydisc (near-flat configurations). By Cauchy in b at b = 0, every entry of the Hessian is bounded by O(1)|Λ|ρ_b^{−2}, and the operator norm on ℓ²(bonds of Λ) by N_Λ times that (Λ is finite, in a cube of size 100M or 100MR_k). Since q_2 = −½g_k^{−2}·(second b-derivative)·g_k² in B′ units, C_K ≤ O(1)N_Λ|Λ|ρ_b^{−2}. This depends on M, and on R_k in the §4.4 case, which only raises the y-exponent of S. It removes the need for the separate Q-050 bound ‖H_{1,k}‖ ≤ O(1)B_3 and for the (190) reading on the complex domain.
The transfer of the radius through M^k (complex averaging constant K_av, N-060) stays [R] to the CMP 98 complex-averaging constants of N-060, which are listed in the canon but not verified in this session.

## 4. Safe statuses

- (J-c), σ half: REDUCED [R]. Proposition Σ-B [P] given (A-σ*) [I], (Rd1) [I, polylog form; constants only], (Rd2) [R, printed p. 358 sentence], (T1) [R: R-042, L-165 Steps 2–4], H-270, under (J-σ) at N-470. The σ that is bounded is the σ of JC_SIGMA (3.2), after the extraction. (T2) leaves the input list. Lemma TV and (J-c′) are not needed on the chain.
- R-035 (B-S): REDUCED [R]. Residues: (W6*) [I] (as restricted by SOURCES_W6_RESOLVE §4) and (A-σ*) [I]. Replace "condition (J-c)" by "(J-σ) at N-470" and "the σ half of (J-c) [I]" by "(A-σ*) [I] (SOURCES_JC_SIGMA + VERIFY)". (T2) is not a residue. Grade unchanged.
- H-116 (H-U): CONDITIONAL. Inputs without a ledger row: (W6*) and (A-σ*). γ ≤ γ_Φ(M) is no longer a separate input once (J-σ) is adopted (C21). Other inputs as in SOURCES_L1_E_VERIFY (B-T2, X-002, the R-035 list, R-043, the coarsest-scale H-191 radius).
- Canon entry (J-σ) at N-470: SAFE TO ADOPT with corrections C22, C23:
 γ ≤ γ_σ(M), the largest γ with (a) γ ≤ min(e^{−(2p_0+q_0+q_1)}, e^{−q′/2}), q′ := 4p_R + 2max(p_0, q_0, q_1); (b) C_1γ(log γ^{−2})^{q_1} < a_σ := ½κ_HC_1^{102}a_*^{102}/K_av (the half of the CMP 102 radius not used by K-039); (c) S(γ) ≤ ¼; (d) Φ′(γ) ≤ 2/3, with the p. 358 O(1) in Φ′ named. It replaces the σ half of (J-c), (J-c′), and γ ≤ γ_Φ(M). Every argument is left of N-470; r does not occur.

## 5. Report (≤100 words)

PASS WITH CORRECTIONS. Proposition Σ-B is correct: the real positive reference measure, the extraction from (1.2), the Schwarz step, (iii) with 0.729 and 1.307, and (T2) with 2e^{1/4}. Corrections: the naive σ is O(polylog·M^{O(1)}), not O(g^{−1}); (J-σ)(b) must use only the half of the CMP 102 radius left after K-039; write out the monotonicity exponent of Φ′. The γ_TV(M, r) order objection holds. (J-σ) implies γ_Φ. (A-σ) does not follow from CMP 102 as printed or from Proposition A: CMP 102 prints the fixed radius only for the whole-lattice minimizer, not for the Z-localized U_0 of II (1.3). Residue (A-σ*) [I].
