IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# INFINITE_VOLUME_IV12 — Lemma IV-1 (ℓ-free trajectory) and Lemma IV-2 (ℓ-audit of Target 2's constants)

Date: 2026-10-28 (Opus). Status: derivation + audit, unverified. Edits: this file only.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags: [P] proved here (short, unverified); [V] quoted from a project file or page image read this session; [I] inference, not printed anywhere; [R] standard result, text not re-read this session.
Parent: INFINITE_VOLUME_PLAN.md §3.2 (rows V1–V9), §4.1, §5 (IV-1, IV-2).

## 0. Summary
- IV-1 [P]. The shooting set S(K, g) of Lemma D″ is the same for every torus. Reason: every β_j in Lemmas D′/D″ is Balaban's Z^d number (CMP 109 p. 264, (2.15); CMP 119 (2.24)), and every constant (C_β, b, R, γ_0, γ_Bal) is volume-free. (Vol) is not used in the proof; it gives the output its meaning on the ℓ-torus (B8). Theorem LOC is needed for consistency, not for the identity. Caveat: Lemma D″ gives a set, so the bare coupling must be chosen by an ℓ-free rule (e.g. max S(K, g)).
- IV-2, (b). The normalizations 𝒩_K (Gaussian normalizations, U = 1 values, vacuum constants) cancel exactly in Z[f]/Z[0]. The two-sided bound (0.1) with e^{E_±|T_η|} does NOT cancel (upper and lower bounds are different functions; the log ratio is O(ℓ⁴)). But the current (S) does not use it: (S) comes from D4D5 Lemma C, whose constants contain no ℓ. ASSEMBLY_N1 §1 item 4 ("ℓ⁴ absorbed in C_S") is stale text.
- IV-2, (c). The (12ℓ⁴)^n count and the whole-torus cell count of ASSEMBLY_N1 become support counts for supp F ⊂ B^n (Lemma N1-B): A_B ≤ C(1 + diam B)^q, q ≤ 12 proved (q ≈ 6 sketched).
- IV-2, (d). FX Step B (the cluster expansion of the unit-scale integral on the ℓ⁴ lattice) is the only remaining ℓ-dependence. It enters Target 2 only through D4D5 Lemma C Steps 1–2 (locality of log I_K, needed for cumulants) and the constant in (NT). For moments of observables in a fixed ball, a local version suffices: after Step A, positivity of the unsourced unit-scale integrand plus a sup bound (L1) on the local source exponent gives ℓ-uniform moment bounds, with no Step B (§4.4). (L1) is the plan's IV-3 (CG) and is unproved.
- Conditional statement (§6.2): under the Target 2 binding set and (FX-B∞), |S_{n,ε,ℓ}(F)| ≤ (C_*(1 + diam B)^q)^n (n!)^{1+η} ‖F‖_{6n} for supp F ⊂ B^n, uniformly in K ≥ K_0 and even ℓ > ℓ_0(B) = max(22M, ℓ_{A1}, ℓ_B, 16 max(diam B, 1)).

Inputs read this session: INFINITE_VOLUME_PLAN.md (full); SOURCES_T2_KUNIF.md (full); SOURCES_T2_VOL.md (full); SOURCES_A15_LOC.md + _VERIFY (full); THEOREM2_PROOF_v4.md §1–§2.4; ASSEMBLY.md (full). Further inputs are listed at the head of each section.

## 1. Lemma IV-1: the shooting solution does not depend on ℓ

### 1.1 What the shooting consumes [V, v4 §2.2; KUNIF §2]
Lemma D″ (v4 §2.2) is an abstract statement about one finite sequence of functions β_1, …, β_K. It uses exactly these data:
- (D-a) the functions β_{k+1}(h_k) on admissible histories h_k = (g_0, …, g_k) ∈ ]0, γ]^{k+1} (cube form; or true trajectories in the nested-interval variant of v4 §2.4 L5);
- (D-b) the constants C_1 (= C_β, KUNIF (4.1)), b = c log L, R, and γ := min(γ_0, γ_Bal, b/(4C_1)), g_1 := (1/γ² + 2R)^{−1/2};
- (D-c) the clamp φ(u) = max(u, γ^{−2})^{−1/2}, which depends on γ only;
- (D-d) the clamped recursion ũ_{k+1} = ũ_k − β_{k+1}(φ(ũ_0), …, φ(ũ_k)), ũ_0 = u_0, and the target ũ_K = t := g^{−2}.
The shooting set is S(K, g) := {u_0 ∈ [t − 2R, t + B′K] : ũ_K(u_0) = t}. Lemma D″ proves S(K, g) ≠ ∅ by the IVT [V, v4 §2.1 proof idea]. It does not prove |S(K, g)| = 1. ASSEMBLY §0 [V]: "Lemma D″ gives existence, not uniqueness; any choice works below."

### 1.2 Statement
Lemma IV-1 [P]. Assume (Vol) and the conventions (Conv) of SOURCES_A15_LOC §6.0 for every torus considered. Then the data (D-a)–(D-d) are the same for every even ℓ > 22M. Hence S(K, g) does not depend on ℓ. In particular the canonical choice g_0(K, g) := (max S(K, g))^{−1/2} (the smallest bare coupling; S is closed because u_0 ↦ ũ_K(u_0) is continuous) is one number for all such ℓ, and so is the whole trajectory g_k = φ(ũ_k), 0 ≤ k ≤ K.

### 1.3 Proof (two lines)
(1) Each β_j entering (D-a) is Balaban's whole-lattice number: CMP 109 p. 264 defines β_{j+1} only through the limit T^{(j+1)} ↗ Z^d, and p. 268 (2.15) and CMP 119 (2.24), p. 279 subtract exactly this number in the torus recursion [V: SOURCES_A15_LOC_VERIFY V5, V7(d); SOURCES_D3W8_VERIFY S3 via KUNIF l. 17]. So β_j is a function of (j; g_0, …, g_{j−1}) alone, with no ℓ and no K (KUNIF §3.2 [V]); A15_LOC Lemma S(b) records the consequence that the coupling histories on T_N and on Z^4 coincide [P there, CONFIRMED in VERIFY V7(d)].
(2) The constants in (D-b) are whole-lattice or volume-free by statement: C_β from (H0) (CMP 109 p. 264) and Lemma HH, "independent of j, K, i, and the volume" [V: KUNIF l. 18]; b, R from Theorem K on per-cell infinite-volume one-loop densities [V: v4 §3.2, T2_VOL table row 4]; γ_0 the (H0) interval; γ_Bal the γ of Balaban's Theorem 1, whose statement has no volume dependence (§1.4 (H3)). So (D-a)–(D-d) are ℓ-free, the clamped map u_0 ↦ ũ_K(u_0) is one function, and its level set S(K, g) is one set. ∎

### 1.4 Exactly which hypotheses the proof uses
- (H1) Balaban's definition of β_j as the Z^d coefficient (CMP 109 p. 264, (1.22); p. 268 (2.15)) [V, page images]. This is the load-bearing input. It is a definition, not a theorem.
- (H2) The history domain of β (v4 §2.4, L5). The cube form needs β_{k+1} defined and continuous on ]0, γ]^{k+1}. Under (H1) that domain is the domain of the Z^d small-field construction. It is ℓ-free, but it is the open L5 item in either volume. IV-1 neither closes nor worsens L5. In the nested-interval variant the domain is "true trajectories with (c′) + (S)", again ℓ-free conditions on the history.
- (H3) γ_Bal and the (S)/γ_* constants of v4 §1.2 are ℓ-free. Balaban's Theorem 1 states its constants independent of the volume: (0.1) with "E_−, E_+ independent of k, T_η, U_k" [V: CMP 122 II p. 356, page image, as quoted in INFINITE_VOLUME_PLAN §3.2 V1; re-checked in §2.1 below]. If γ_Bal hid a factor of ℓ, IV-1 would fail; nothing in the read sources suggests it.
- (Vol) is NOT used in the proof of IV-1 (T2_VOL table row 3 [V]: "D′/D″ need no relation N ≥ K + … at all"). (Vol) is used for the MEANING of the output: that on the torus of side ℓ the Z^d β leaves only Balaban's irrelevant class (B8 replaced form, A15_BDRY §3.4), so that Theorem 1 holds on that torus with the trajectory of IV-1. Without (Vol) the same g_0(K, g) exists, but nothing says it renormalizes the ℓ-torus correctly.
- Theorem LOC (A15_LOC §7.5) is NOT needed for the identity of g_0. It is needed for consistency: it shows that the interior torus activities equal their Z^4 lifts exactly, so the Z^d β is the coefficient those activities produce (term level (T), A15_LOC §5.3), with remainders only in wrapping activities, of size ≤ E_0 e^{−κ d_j(X)}, d_j(X) ≳ N/c_k [P there]. LOC's conventions: (Conv) cube sides divide the torus side and partitions are π-images of the Z^4 partitions; so ℓ must be a multiple of every cube side at the last level, e.g. ℓ = 2L^{m_T} with m_T ≥ m_M + 1 [I: T2_VOL §1 tiling remark]. LOC's other inputs (FI), (U), (Det′), (Cube), (Cases), and the Z^4 reading of CMP 109 p. 290 carry over unchanged.
- Not needed: (H-hist) off-diagonal decay, G2, any finite-volume increment β_j^{(N)} (KUNIF §5.1 fallback is not used).

### 1.5 Caveat on "the" shooting solution
Lemma D″ gives a set S(K, g), not a point. IV-1 says the SET is ℓ-free. A double limit (ε_i, ℓ_i) needs one bare coupling per ε. The canonical choice in 1.2 (or any rule that depends only on S(K, g)) gives it. A choice that depends on the torus (for example "the solution nearest to some torus quantity") would break IV-1; ASSEMBLY's "any choice works" must be sharpened to "any ℓ-free choice" for the infinite-volume route [I].

### 1.6 Ledger of §1
[P] Lemma IV-1 and its proof; the closedness of S(K, g); the canonical choice. [V] CMP 109 p. 264, p. 268 (via A15_LOC_VERIFY V5, V7); KUNIF §3.2, l. 17–18; T2_VOL rows 3–4; v4 §2.1–§2.2. [I] (H3) beyond the quoted E_± sentence; the M | ℓ tiling form of (Conv); the sharpening of "any choice".

## 2. Lemma IV-2, part 1: the extensive factor e^{E_±|T_η|} — what cancels and what does not

Inputs: CMP 122 II p. 356 (page image, 130 dpi, rendered this session); SOURCES_D4D5 §3.1–§4.1 (read this session); ASSEMBLY_N1 §1 item 4; SOURCES_B21_S + VERIFY (full).

### 2.1 Page check [V]
CMP 122 II p. 356, first line, on the image: "with the constants E_−, E_+ independent of k, T_η, U_k." The bound it refers to is (0.1), χ exp[−(1/g_k²)A(U_k) − E_−|T_η|] ≤ ρ_k ≤ exp E_+|T_η| (text layer l. 45; reading corrected in BALABAN_EXCERPTS_CHECK item 3 [V via v4 §1.1]). So E_± are ℓ-free numbers. The ℓ-dependence of (0.1) sits only in the explicit |T_η| = (number of unit cells) = ℓ⁴.

### 2.2 Exact cancellation: the normalizations 𝒩_K [P]
S1(a) (D4D5 §3.1 [V]): Z_ε[f] = 𝒩_K · e^{−W_K[f]} · I_K[f], with 𝒩_K > 0 "a product of f-independent normalizations". 𝒩_K contains every extensive constant that Balaban removes step by step: the Gaussian normalizations N_k, the U = 1 values log N″_k = E^{(k+1)}(g_k, 1) (CMP 109 (2.14) [V via A15_LOC_VERIFY V5]), and the vacuum constants E_k, which are "global, volume-dependent, U-independent" and "never enter an activity" (A15_LOC_VERIFY V4 side note [V]). Write 𝒩_K = exp(e_K ℓ⁴ + b_K), with e_K, b_K whatever they are. Then for every source f on the polydisc:
  Z_ε[f]/Z_ε[0] = (𝒩_K e^{−W_K[f]} I_K[f]) / (𝒩_K e^{−W_K[0]} I_K[0]) = e^{−W_K[f]} I_K[f]/I_K[0],   since W_K[0] = 0.
The factor exp(e_K ℓ⁴ + b_K) appears once in the numerator and once in the denominator, as the SAME number. It cancels identically, for every ℓ. Every normalized moment ⟨Π ϕ(f_i)⟩ = ∂_{z_1}⋯∂_{z_n}(Z[Σ z_i f_i]/Z[0])|_{z=0} is free of it. Class (b).

### 2.3 No cancellation: the two-sided bound (0.1) itself [P]
(0.1) is not an identity. It is an upper bound with E_+ and a lower bound with E_−. Used on a ratio, it gives only
  log I_K[f] − log I_K[0] ≤ E_+ℓ⁴ + log ∫dV_K 1 − log ∫dV_K χ e^{−A(w_K, V)} + E_−ℓ⁴ ≤ (E_+ + E_− + c_χ)ℓ⁴,
with c_χ ≥ 0 the per-cell cost of the small-field indicator and the Wilson weight (A(w, V) ≤ 2|w|·6ℓ⁴). The upper bound of the numerator and the lower bound of the denominator are different functions. Nothing cancels. The result is O(ℓ⁴). Through Cauchy on a polydisc of fixed radius, each cumulant inherits one factor ℓ⁴ (not ℓ^{4n}): |κ_n| ≤ n! r^{−n}(E_+ + E_− + c_χ)ℓ⁴ for one support. This is exactly ASSEMBLY_N1 §1 item 4 [V]: "The bound comes from |log Z − W| ≤ E_+|T_η| … with fixed torus volume ℓ⁴ … ℓ⁴ is absorbed in C_S." Class (c) if it were used.

### 2.4 Finding: the current (S) does not use (0.1) [V + P]
- (S) in its verified form is D4D5 §5.1, derived by D4D5 Lemma C "given S1(b), (FX), and the coupling bound of S1's hypotheses" (D4D5 §4.1 heading [V]). Lemma C does not use S1(d) = sourced (0.1).
- Lemma C's constants: "C_A, C_B depending on E_0, κ, c_0, c_τ, M, C_R, p_R, L only, and C_η on η, p_R, C_β, L only. None depends on K, on the f_i, or on the position of the supports" (D4D5 l. 106 [V]). No ℓ. The proof (Steps 0–9) counts only polymers that meet every support (Step 2) and polymers through a cube meeting the smallest support (Step 4). No global volume enters.
- D4D5 §3.2 [V] states that the (0.1) route fails even at fixed ℓ for ε-uniformity ("S1 alone does not give cumulant bounds"), and FX §6.1 [V]: "Balaban's (0.1) alone (Σ ≤ e^{E_+|T|}) is NOT enough".
- So ASSEMBLY_N1 §1 item 4 ("ℓ⁴ is absorbed in C_S") is a stale sentence from the pre-Lemma-C global-Cauchy route. SOURCES_B21_S_VERIFY §5 lists the N1 edits for the C¹ / (n!)^{1+η} form and does not list item 4 [V]; the item survived. It is not a live ℓ-dependence of (S). The ℓ-dependence of (S), if any, is inside the hypothesis (FX): its constants E_0, κ, c_0, c_τ must themselves be ℓ-free. §5 locates the only place where they may not be.
- Consequence for INFINITE_VOLUME_PLAN row V2: reclassify from "NO as written" to "not used by the current chain; stale text in N1 §1 item 4" [P, given the D4D5 reading above].

### 2.5 Ledger of §2
[V] CMP 122 II p. 356 sentence (image); D4D5 §3.1 (a), (d), §3.2, §4.1 heading and l. 106, §5.1; FX §6.1 last bullet; ASSEMBLY_N1 §1 item 4; B21_S_VERIFY §5. [P] the exact cancellation of 𝒩_K (§2.2); the O(ℓ⁴) non-cancellation of the (0.1) ratio (§2.3); the finding that (S) ⇐ Lemma C does not use (0.1) (§2.4). [I] the list of what 𝒩_K contains beyond "f-independent normalizations" (N_k, N″_k, E_k): from A15_LOC_VERIFY V4–V5, not re-derived for the sourced chain.

## 3. Lemma IV-2, part 2: the ℓ-factors of ASSEMBLY_N1, and their replacement by support counts

Input: ASSEMBLY_N1 (full, read this session). Every ℓ in N1, by place:
- (N-a) §1 (S) range σ ∈ [16ε, ℓ/8]; §2.2 Lemma T needs ρ(x) < ℓ/4; §2.3 Lemma P needs δ ≤ ℓ/8. Upper limits only. ℓ-free once ℓ is large compared with the support.
- (N-b) §3.1 scales δ_m = ℓ2^{−m}, m ≥ 3: the dyadic ladder starts at the torus size.
- (N-c) §3.2 count Q_m^n = (64ℓ/δ_m)^{4n} cube tuples: cubes of the whole torus.
- (N-d) §4.4 C_1 contains max(1, ℓ)⁴, and Σ_m δ_m^p ≤ C max(1, ℓ)^n: from (N-b), (N-c).
- (N-e) §4.4 scale m = 3: h_3 = ℓ/512 > 1 for ℓ > 512. N1 §6 "Minor" notes N(g) then carries max(1, h^{−1}). Also M(G_{3,c}) ≤ C_G^n‖F‖_{6n} silently assumes h ≤ 1 (for h > 1 the weights h^{|β|} give up to h^{6n}).
- (N-f) §4.5 region R: (12ℓ⁴)^n ε^{−4n} plaquette tuples.
- (N-g) §1 item 4: ℓ⁴ in C_S. Stale, §2.4.
All of (N-b)–(N-f) come from one fact: N1 lets F live on all of T^{4n}. For supp F ⊂ B^n they are replaced as follows.

### 3.1 Lemma N1-B (support-local bridge) [P, bookkeeping on N1's own proof]
Let B ⊂ T⁴_ℓ be a closed ball of diameter d_B, and ℓ ≥ 16 max(d_B, 1). Assume (S) with constants (η, a, C_S) that do not depend on ℓ (superseded 2026-10-28 by (S′): assume (S′) of SOURCES_D4D5 §5.1, max(1, σ^{−a}) in place of σ^{−a}, constants ℓ-free; the printed (S) has no ℓ-free constant from Lemma C on large σ. The top rung is σ_1 = d_B/4; (S′) has no upper limit on σ. Rungs δ_m > 4 then carry δ_m^n in step (4); q ≤ 12 stands, SOURCES_B21_S_PRIME §3.3, VERIFY §4). Then for all K ≥ K_0, n ≥ 1, and F ∈ D_n with supp F ⊂ B^n:
  |S_{n,ε,ℓ}(F)| ≤ (C_♯ (1 + d_B)^{q})^n (n!)^{1+η} ‖F‖_{6n},   q = 12 (crude count, [P]); q = 6 with the sharper count of step (4) ([I], sketch),
with C_♯ depending on η, a, C_S, θ, χ, ψ, ρ_1, r only. No ℓ.

Proof (changes to N1 only).
(1) Ladder. On supp F every pair distance is ≤ d_B, so ρ(x) ≤ d_B. Put δ_m := 2d_B·2^{−m}, m ≥ 0. Then F·Φ_0 = 0, because Φ_0 = 0 on {ρ ≤ δ_0/2 = d_B}. The exact identity of N1 §3.1 becomes F = Σ_{m=1}^{m_1} F Θ_m + F R (Θ_m = Φ_m − Φ_{m−1}), with δ_{m_1} ∈ [64ε, 128ε[. Lemma T (ρ ≤ d_B < ℓ/4) and Lemma P (δ_m ≤ 2d_B ≤ ℓ/8) apply unchanged.
(2) Cells. Use h_m := δ_m/64 as in N1. Only cells c with c′ ∩ B ≠ ∅ carry a live tuple. Their number is ≤ (d_B/h_m + 3)⁴ ≤ (70 d_B/δ_m)⁴, since δ_m ≤ 2d_B. So the tuple count is ≤ (70 d_B/δ_m)^{4n} in place of (64ℓ/δ_m)^{4n}. Separation (N1 §3.3) is unchanged: σ_m = δ_m/4 ≤ d_B/2 ≤ ℓ/8, inside the (S) range.
(3) Large cells. If δ_m > 64, then h_m > 1. Then N(g_{i,q}) ≤ C_ψ′(1 + |q|) max(1, h_m^{−1}) ρ_1^{−1}·max(1, ρ_1/r), and M(G) ≤ C_G^n max(1, h_m)^{6n} 4^N δ_m^N‖F‖_N (Leibniz with the weights h^{|β|}, |β| ≤ 6n). In the exponent count of N1 §4.4 replace h_m^{−n} by max(1, h_m^{−1})^n and add max(1, h_m)^{6n}. For h_m ≤ 1 nothing changes. For h_m > 1 (at most log_2(d_B/32) scales) the extra factor is ≤ (d_B/32)^{6n}·…; it is polynomial in d_B per factor.
(4) Scale sum. Per scale: ≤ C_1′^n (n!)^{1+η} (70d_B)^{4n} δ_m^{N−(5+a)n} max(1, δ_m)^{6n} ‖F‖_N, with C_1′ = N1's C_1 without the max(1, ℓ)⁴. With N = 6n: Σ_{m≥1} δ_m^{(1−a)n} ≤ (1 − 2^{−(1−a)})^{−1} (2d_B)^{(1−a)n}. Collect: ≤ C^n (1 + d_B)^{(4 + 1 + 6 + 1)n}: cells 4, scale sum 1, M(G) weights 6, and one more from replacing h^{−1} by 1 in N(g) when h > 1 (factor h^n ≤ (2d_B)^n). The crude count gives exponent 12; it is a polynomial per factor, which is all IV-5/E0′ need. Sharper bookkeeping (cap h_m at 1 and use Lemma T only for δ_m ≤ 1; for δ_m > 1 no flatness is needed) gives (1 + d_B)^{6n}: at δ_m > 1 use cells of side 1/64 with σ = δ_m/4 ≥ 1/4, so N(g) ≤ C(1+|q|), cell count (70·64 d_B)^{4n}, no δ-power, and there are ≤ log_2(2d_B) + 1 such scales; at δ_m ≤ 1 N1's count applies with (70 d_B/δ_m)^{4n}·δ_m^{6n−(5+a)n}, summable. Total ≤ C^n (1 + d_B)^{4n} log(2 + d_B) ≤ (C(1 + d_B)^5)^n; with the region-R factor (d_B + 2)^{4n} of step (5) this is within (1 + d_B)^{6n} per factor. Only the crude exponent 12 is claimed as [P].
(5) Region R. All n points lie in B and ρ < 128ε. The number of plaquette tuples is ≤ (6 vol(B_ε) ε^{−4})^n ≤ (6(d_B + 2)⁴ ε^{−4})^n, with B_ε the ε-neighbourhood. With |F R| ≤ (256ε)^N ‖F‖_N, N = 6n: ≤ (6(d_B + 2)⁴ 256⁶)^n ‖F‖_{6n}. This replaces (12ℓ⁴)^n.
(6) Lah sum and moments (N1 §4.3): unchanged; (S) is applied to sources inside cells meeting B.
Add (4) and (5). ∎

### 3.2 Answer to the task's (c) question
Yes. The plaquette count (12ℓ⁴)^n of N1 §4.5 becomes (6(d_B + 2)⁴)^n·256^{6n}, a support-volume count |B_1|^n. The cell count (64ℓ/δ)^{4n} becomes (70 d_B/δ)^{4n}. The ladder starts at 2d_B, not at ℓ/8. Result: A_B ≤ C(1 + diam B)^q with q ≤ 12 proved (q ≈ 6 sketched), which is the polynomial growth that E0′ needs (INFINITE_VOLUME_PLAN §3.1 step 1, §3.3). The lower bound on ℓ is ℓ ≥ 16 max(d_B, 1) (Lemmas T, P and the (S) range), plus (Vol) and the A1 torus-side bound (V5), all lower bounds.
Caveat [I]: Lemma N1-B is a bookkeeping change on an UNVERIFIED file (ASSEMBLY_N1 is "[derived here, unverified]"; its C¹ form is confirmed only through HHIST_N1_VERIFY Part 2 and D4D5_VERIFY §7). The change does not touch the parts that the verifiers checked (Lemma T, Lemma P, Fourier step, Lah sum).

### 3.3 Ledger of §3
[V] N1 §1, §2.2–§2.3, §3.1–§3.4, §4.1–§4.5, §6 "Minor". [P] Lemma N1-B and its six steps; the observation that N1 §3.4 assumes h ≤ 1 at m = 3. [I] the sharper exponent (q = 6) in step (4) is a sketch; q = 12 is the proved crude value. Any finite q suffices for E0′.

## 4. Lemma IV-2, part 3: FX Step B — which statement needs the whole-lattice expansion

Inputs: SOURCES_FX §6 (full, read this session); SOURCES_FX_O1, FX_O23, FX_R2 and their VERIFY files (grep for Step B, volume, unit scale; FX_O23 §2 read in part); TRUST_LEDGER row B19 (read); D4D5 §3.1–§4.1.

### 4.1 The roles of Steps A–D [V, SOURCES_FX §6]
- Step A: final R-operation with Z″ = ∅. Output exp Σ_X R_fin(X, V). Polymers = connected unions of final large-field components with their whole fine histories, Mayer links, boundary terms. Convergence by the Cammarota / CMP 116 (2.38) criterion with per-polymer activity ≤ e^{−p_0(γ)} e^{−κ′d_K(U)}, from (1.79)–(1.80) and FX_O1, FX_R2 (κ_final ≤ 6κ, "depends on (d, κ, β) only: no M, R, p_0, g" [V, FX_R2 l. 36]).
- Step B: "After Step A, I_K[f] = ∫dV_K χ exp(A_K^f + Σ_X R_fin(X)). This is a small-field integral on the unit lattice. Its log is a sum of local terms by the 'final localization by a cluster expansion' of CMP 116 §2 … as Dimock III Thm 2 does for φ⁴₃" [V, FX §6.2].
- Step C: holomorphy radius c·r (large-field parts by (1.73); R-denominators by FX_O23 O2) [V].
- Step D: "All activity bounds are in units of cubes of the polymer's coarsest scale, with constants (p_0(γ), κ, c r) independent of K and ε. Fine histories are summed inside each polymer by (1.79)" [V, FX §6.4].
- Ledger B19 [V]: "(FX): the final Mayer expansion of the sum over large-field geometries plus the unit-scale integral converges … uniform in K, ε". ℓ is not in the uniformity clause.

### 4.2 Classification of A–D in ℓ [I, with reasons]
- Steps A, C, D: per-polymer statements. Their constants are Balaban's per-polymer constants (κ, p_0(γ), E_0, c, r). For a non-wrapping polymer, Theorem LOC (A15_LOC §7.5, CONFIRMED with minor corrections) makes the torus activity EQUAL to its Z⁴ lift; for a wrapping polymer the activity is ≤ E_0 e^{−κd_j(X)} with d_j(X) ≳ N/c_k, which decreases as ℓ grows. A Mayer/cluster expansion whose activities satisfy a Kotecký–Preiss / Cammarota criterion per polymer converges with volume-uniform per-polymer output bounds [R, standard]. So Steps A, C, D are class (a), although Step A is formally an expansion "on the whole lattice". [I: LOC is proved for the small-field CMP 109/116 activities; for the large-field T′_K(Y) activities of Step A its extension is the reading "(1.79)–(1.80) are per-component bounds", not a LOC-type identity.]
- Step B: NOT per-polymer. It is the claim that log of a full lattice-gauge integral on the ℓ⁴ unit lattice, at coupling g ∈ ]0, γ], with no block constraint left, is a convergent sum of local terms with ℓ-free constants. Two facts make this an infrared statement:
  (B-i) CMP 116 §2 expands a Gaussian fluctuation integral ∫dμ_{C^{(k)}}(B) whose covariance C^{(k)} = (C*Δ^{(k)}C)^{−1} decays exponentially because of the block constraint (A15_LOC §2.1, CMP 109 p. 268 [V]). At the unit scale after the last step, the variable V_K has no further averaging constraint. Its Gaussian part is the massless lattice gauge propagator on T⁴_ℓ (in a gauge), which does not decay exponentially. FX_O23 [V, l. 46] makes the same observation for the (1.100) denominator: "CMP 116 §2 expands Gaussian fluctuation integrals ∫dμ_C(B) with exponentially decaying C, but … [the] integral over the scale-k variable V′ in axial gauge with a Wilson action [has] no decaying covariance at that scale."
  (B-ii) INFINITE_VOLUME_PLAN §4.3 (Lemma IV-ξ): continuing the RG past the unit scale keeps g in ]0, γ] only up to ξ_g; beyond, no small parameter exists. A convergent ℓ-uniform expansion of the unit-scale integral would control all scales up to ℓ, so it cannot exist uniformly in ℓ > ξ_g with present tools.
  So Step B is class (d). At FIXED ℓ its justification is also only [R] (B19 lists no separate check of Step B; FX §7 R2 "Unit-scale integral: CMP 116 §2 final localization (Lemma 3) applied at the unit scale, as Dimock III Thm 2"), and (B-i) says the CMP 116 §2 mechanism does not transfer verbatim even at fixed ℓ [I]. At fixed ℓ one can use the finite volume as the infrared cutoff (the whole torus as one polymer); the constants then depend on ℓ.

### 4.3 Exactly which statement needs Step B [P, by inspection of D4D5 §4.1]
Step B enters Target 2 at one place: D4D5 Lemma C, Step 1, "log Z_ε[f(t)] − log Z_ε[0] = −W_K[f(t)] + Σ_m Σ_{Γ∈P_m}[a_m(Γ; f(t)) − a_m(Γ; 0)]", and through it Step 2 ("only polymers meeting every support count"). Step 2 needs log I_K to be a sum of local terms. Steps A, C, D make the INTEGRAND of I_K local (exp of a sum of local unit-scale activities); only Step B makes the LOG of the integral local. Without Step B there is no connectedness, hence no CUMULANT bound (S). Nothing else in ASSEMBLY, ASSEMBLY_N1, or (S) uses Step B.

### 4.4 Does a local version suffice for observables in a fixed ball? [P given (L1)–(L3); the inputs are I]
Yes for MOMENTS, by positivity, without any unit-scale expansion. Statement:
(L1) [Steps A, C, D, from FX §6] After Step A, for complex sources f = Σ_i z_i f_i with disjoint supports at distance ≥ σ ∈ [16ε, 1] and |z_i| ≤ c r/N(f_i):
  I_K[f] = ∫dV_K χ(V) exp(A_K^0(V) + Σ_X R^0_fin(X, V)) · exp(Δ_f(V)),
  Δ_f(V) := (A_K^f − A_K^0)(V) + Σ_{X ∩ supp f ≠ ∅}[R^f_fin(X, V) − R^0_fin(X, V)],
  sup_V |Δ_f(V)| ≤ C_0 Σ_i (|z_i| N(f_i)/r)(1 + |supp f_i|_1),
  with C_0 free of ℓ, K, V. [I: this is the (CG) bound of INFINITE_VOLUME_PLAN §4.2, read AFTER Step A instead of conditionally on V. After Step A all f-dependence of the unit-scale integrand is in unit-scale polymer activities with radius c·r and tree decay, so the sum over X meeting supp f is ≤ C r^{−1}|z|N(f)(1 + |supp f|_1) per support by Step D's count "#{polymers touching a fixed cube, weighted} < ∞". Needs the same checks as (CG): no f-dependent term of the integrand outside unit-scale polymers; the risk of PLAN §4.2 (V-large regions mixing with supp f in the last R-operation).]
(L2) [positivity] For f = 0 the integrand χ exp(A_K^0 + ΣR^0_fin) is ≥ 0: χ ≥ 0, A_K^0 real, and exp ΣR_fin = Σ_{Z′}∫ρ(Z′, V)/∫ρ(∅, V) is a ratio of positive integrals (Balaban's ρ ≥ 0, CMP 122 I p. 176 via SOURCES_D3 (B7) [V in PLAN §4.2]). So ν_0 := (integrand at f = 0)/I_K[0] is a probability measure on SU(2)^{unit links}.
(L3) [W] W_K[f] = Σ_i W_K[z_i f_i] + W_conn[f], with |W_conn| ≤ C Σ_i |z_i|N(f_i)/r·(1 + log_L(2M/σ)) by Lemma C Step 9 restricted to polymers that meet supp f_i and at least one other support (count per support, not per pair) [P sketch]. Each W_K[z_i f_i] is a function of z_i alone. Split it as W^{(1)}_i z_i + W^{(2)}_i(z_i), W^{(2)}_i = O(z_i²). The factor e^{−W^{(2)}_i(z_i)} = 1 + O(z_i²) does not contribute to the multi-index (1, …, 1) derivative at 0. The linear part combines with the centring constant: for the centred field, a_i := −W^{(1)}_i − Σ_p f_i(x_p)c_ε + E_{ν_0}[∂_{z_i}Δ_f|_{z=0}] = ⟨ϕ(f_i)⟩ = 0. So the divergent linear constants (each O(ε^{−4}|supp f_i|)) sum to −E_{ν_0}[∂_{z_i}Δ_f|_0], which is bounded by sup|∂_{z_i}Δ_f| ≤ C_0 N(f_i)(1 + |supp f_i|_1)/r by (L1) and Cauchy. [P]
Then Lemma IV-M of INFINITE_VOLUME_PLAN §4.2 applies with G(z) := exp(−W_conn[f] − Σ_i z_i E_{ν_0}[∂_{z_i}Δ_f|_0]) · E_{ν_0}[e^{Δ_f}]: ⟨e^{ϕ(f)}⟩ = Π_i e^{−W^{(2)}_i(z_i)} · G(z) on the polydisc (identity by Lemma D4.1 and holomorphic continuation), G is holomorphic, |G| ≤ exp(sup|W_conn| + 2 sup|Δ_f|), and Cauchy on radii ρ_i = c r/(N(f_i)(1 + |supp f_i|_1)) gives
  |⟨Π_i ϕ(f_i)⟩_{ε,ℓ}| ≤ e^{C n (1 + log_L(2M/σ))} Π_i (c r)^{−1} N(f_i)(1 + |supp f_i|_1),
uniformly in ε AND ℓ. The σ-factor is in the exponent: e^{Cn(1 + log_L(2M/σ))} = (e^{C}(2M/σ)^{a′})^n with a′ := C/ln L. So it is a power σ^{−a′n}, not σ^{−an} with a < 1. In the N1 exponent count this needs N > (5 + a′)n, i.e. s = ⌈5 + a′⌉ + 1 instead of 6. s stays fixed, which is all OS0/E0′ need. [P]
Use in the bridge: ASSEMBLY_N1 §4.3 (Lah sum over cumulants) is replaced by this direct moment bound, with no n! at all; Lemma N1-B (§3.1) is otherwise unchanged. Added 2026-10-28 (SOURCES_B21_S_PRIME §3.6): the N1-B rungs reach σ_1 = d_B/4 > 1, outside the range σ ∈ [16ε, 1] of (L1). Step: separation ≥ σ implies separation ≥ σ″ := min(σ, 1); apply (L1) and (L3) at σ″. For σ ≥ 1 the bound is e^{Cn(1 + log_L(2M))}Π_i(cr)^{−1}N(f_i)(1 + |supp f_i|_1), i.e. the (S′) shape max(1, σ^{−a′})^n. The cube count (2 + 2D/σ″)⁴ in (L3) stays outside the exponent because the Cauchy radii ρ_i ∝ 1/(1 + |supp f_i|_1) absorb it [sound per SOURCES_B21_S_PRIME_VERIFY §4, not line-checked]. s = ⌈5 + a′⌉ + 1 and A_B polynomial in d_B are unchanged. [P given (L1); (L1) remains I.] Caveat [I]: with crude cells the (1 + |supp f_i|_1) factor adds ≤ 4 to q. So the local version suffices for (H-U∞) of PLAN §3.1 step 1, conditionally on (L1).
What the local version does NOT give: cumulant (connected) bounds with decay in the separation, hence no clustering; and no statement about log I_K. Neither is needed for the weak-sense target.
Status: (L2), (L3), and the Cauchy step are [P] (short). (L1) is [I]; it is the plan's IV-3 (CG), in a slightly simpler form (no conditioning on V is needed once Step A has been done, because Step A already writes the large-field sum as exp of local unit-scale activities). It is the one new item.

### 4.5 Ledger of §4
[V] FX §6.1–§6.4, §7 R2; FX_R2 l. 36; FX_O23 l. 46; TRUST_LEDGER B19; D4D5 §4.1 Steps 1–2, 9. [P] §4.3 (Step B is used only in Lemma C Steps 1–2); the reduction in §4.4 from (L1) to ℓ-uniform moment bounds. [I] the (a) classification of Steps A, C, D (per-polymer + LOC + KP uniformity); (B-i), (B-ii) as reasons Step B is infrared; (L1).

## 5. Lemma IV-2: the classification table

Classes. (a) ℓ-free (or only a lower bound on ℓ, or improves as ℓ grows). (b) ℓ-dependent, cancels exactly in normalized expectations. (c) ℓ-dependent, does not cancel; fix shown. (d) ℓ-dependent through FX Step B. "Used by T2" = on the chain (S) ⇒ N1 ⇒ (H-U) ⇒ ASSEMBLY 1.3, or in 1.4.

| # | bound / constant | file, place | how ℓ enters | class | fix / note |
|---|---|---|---|---|---|
| 1 | β_j, C_β, b, R, γ_0, γ_Bal, clamp; g_0(K, g) | v4 §2.2; KUNIF §3.2, §5.2 | does not | (a) | Lemma IV-1 (§1); needs an ℓ-free selection from S(K, g) |
| 2 | (Vol) ℓ > 22M; A1/(C) torus side; M ∣ ℓ (Conv) | T2_VOL §2–§4; A15_LOC §6.0 | lower bounds, divisibility | (a) | take ℓ = 2L^{m_T}, m_T large |
| 3 | per-polymer UV activities E^{(k)}(X), k ≤ K, non-wrapping X | A15_LOC Thm LOC; HHIST Lemma HH; A1_WALK "uniform in the volume" | torus activity = Z⁴ activity exactly | (a) | LOC [P, CONFIRMED w. minor corr.] relative to (FI), (U), (Det′), (Cube), (Cases), (Conv) |
| 4 | wrapping activities; wrapped loops | A15_LOC §8.5; QE_INV §3.4 | ≤ E_0e^{−κd_j(X)}, d_j ≳ N/c_k; ≤ C_He^{−δ_H·size/2} | (a) | decay improves with ℓ |
| 5 | 𝒩_K (N_k, U = 1 values, vacuum constants E_k) | D4D5 S1(a); CMP 109 (2.14) | e^{e_Kℓ⁴ + b_K}, f-independent | (b) | cancels exactly in Z[f]/Z[0] (§2.2) |
| 6 | sourced (0.1): χe^{−A − E_−\|T\|} ≤ ρ̂_K^f ≤ e^{E_+\|T\|} | D4D5 S1(d); CMP 122 II p. 356 | (E_+ + E_−)ℓ⁴ in log ratio | (c) as a bound | NOT USED by (S) ⇐ Lemma C (§2.4); E_± themselves ℓ-free [V, image] |
| 7 | "ℓ⁴ is absorbed in C_S" | ASSEMBLY_N1 §1 item 4 | from row 6 | stale | delete in the next N1 revision; Lemma C constants have no ℓ (D4D5 l. 106) |
| 8 | W_K local contact polymers, \|w^{(j)}(X)\| ≤ E_0e^{−κd_j(X)} | D4D5 S1(b) | per polymer | (a) | single-support part: W^{(2)}_i drops from (1, …, 1) derivatives; W^{(1)}_i + centring = −E_ν∂Δ (§4.4 (L3)) — (b)-type exact cancellation of the ε^{−4}-divergent linear constants |
| 9 | centring constant c_ε = ⟨P_p⟩_{ε,ℓ} | ASSEMBLY §0 | number depends on ℓ | (b) | enters only through exact identities; ⟨ϕ(f)⟩ = 0 |
| 10 | S1 activities: radius, E_0e^{−κd}; S1 hypotheses r_0, ρ_1, κ, M, γ, (U) | D4D5 §3.1; D3, D3R, D3W8 | per polymer; Balaban constants | (a) | via row 3 for small-field terms; large-field per component (row 13) |
| 11 | Lemma C constants C_A, C_B, C_η | D4D5 §4.1 | none listed | (a) | given ℓ-free (FX) constants |
| 12 | Lemma C Steps 1–2: log I_K = Σ local terms | D4D5 §4.1 | through (FX) Step B | (d) | §4.3; replaceable for moments by §4.4 (L1)–(L3) |
| 13 | FX Step A: final R with Z″ = ∅; κ_final ≤ 6κ; (1.79)–(1.80) per component; budget O(1)log g_j^{−2}\|Z_j\| per domain | FX §6.1; FX_O1; FX_R2; FX_O23 | per component / per domain; KP criterion | (a) [I] | volume-uniform as any small-activity polymer expansion [R, standard]; not checked against II (1.90)–(1.97) line by line |
| 14 | FX Step B: unit-scale small-field integral → Σ_X H(X) | FX §6.2 | expansion of a massless lattice gauge integral on ℓ⁴ | (d) | infrared (§4.2 (B-i), (B-ii)); at fixed ℓ itself only [R]/[I] |
| 15 | FX Step C radius c·r | FX §6.3; FX_O23 O2, O3 | "independent of \|X\|, k, ε"; "of \|Λ_i\|, k, ε" | (a) | O3 conditional on B18 (unchanged) |
| 16 | FX Step D count Σ_s e^{c_0s}e^{−κ′(s−1)} | FX §6.4 | per cube | (a) | — |
| 17 | (S) range σ ∈ [16ε, ℓ/8], min diam ≤ σ | D4D5 §5.1 | upper limit | (a) | needs ℓ ≥ 16 d_B |
| 18 | N1 Lemmas T, P | N1 §2.2–§2.3 | ρ < ℓ/4, δ ≤ ℓ/8 | (a) | ℓ ≥ 16 max(d_B, 1) |
| 19 | N1 ladder δ_m = ℓ2^{−m} | N1 §3.1 | top scale = torus | (c) | start at δ_0 = 2d_B (§3.1 (1)) |
| 20 | N1 cell count (64ℓ/δ)^{4n}; C_1 ∋ max(1, ℓ)⁴; Σδ^p ≤ max(1, ℓ)^n | N1 §3.2, §4.4 | whole-torus cells | (c) | (70d_B/δ)^{4n}; Σδ^p ≤ C(2d_B)^{(1−a)n} (§3.1 (2), (4)) |
| 21 | N1 scale m = 3, h_3 = ℓ/512 > 1 | N1 §4.4, §6 "Minor" | h-weights in M(G), N(g) | (c) | large-cell handling (§3.1 (3)); polynomial in d_B |
| 22 | N1 region R: (12ℓ⁴)^n | N1 §4.5 | all plaquette tuples of T_ε | (c) | (6(d_B + 2)⁴·256⁶)^n (§3.1 (5)) |
| 23 | N1 Fourier C_L, Z, real/imag 2^n, Lah 2^{n−1}, cutoff (D) with Lemma P | N1 §3.1, §4.1–§4.3 | none | (a) | — |
| 24 | (H-U) constant A; B-C, OS0 | ASSEMBLY §1.2, §2.4–§2.5 | via rows 19–22 and (S) | (c) + (d) | after fixes: A_B ≤ C(1 + d_B)^q, q ≤ 12 [P] |
| 25 | translations, B_4, OS3 | ASSEMBLY §2.6, §2.8 | exact lattice symmetries; modulus σ_n·4nε | (a) | inherits row 24 |
| 26 | RP two-seam, ℓ even, T_+ = ]0, ℓ/2[ | ASSEMBLY §2.7 | seam at ℓ/2 | (a) | second seam moves away |
| 27 | B_K = Πc_j bounded | ASSEMBLY §0 | none | (a) | — |
| 28 | (NT): remainder C(g_{k(d)}² + (d/ℓ)²) | ASSEMBLY §2.9 | explicit (d/ℓ)²; C from (E14-f) | (a) for the explicit term; (d) for C | (E14-f) is a fixed-layer expansion; its proof runs through S1 + (FX) |

## 6. Conclusion of IV-2, and the conditional statement

### 6.1 What remains ℓ-dependent after the (b) and (c) fixes [P from the table, given its [I] rows]
- Class (b) rows 5, 8 (single-support part), 9 cancel identically.
- Class (c) row 6 is not used; row 7 is stale text; rows 19–22 are removed by Lemma N1-B (§3.1), at the price A_B ≤ C(1 + diam B)^q.
- Class (a) rows need only lower bounds on ℓ: ℓ even, M ∣ ℓ, ℓ > 22M (Vol), the A1/(C) torus-side bound ℓ_{A1}, and ℓ ≥ 16 max(diam B, 1).
- What remains: row 14 (FX Step B) and the two rows that consume it, row 12 (Lemma C Steps 1–2, hence (S), hence (H-U) through rows 24–25) and row 28 (the constant in (NT)). So: yes, only Step B.
- Two qualifications. (i) Row 13 (Step A) is placed in (a) by the standard volume-uniformity of a small-activity polymer expansion, not by a line-by-line check of CMP 122 II (1.90)–(1.97) [I]. (ii) Row 3 rests on Theorem LOC, which covers the small-field CMP 109/116 activities; the large-field per-component bounds are taken from Balaban's statements, which are "independent of k, T_η, U_k" [V, p. 356] but are not LOC-type identities [I].

### 6.2 The conditional statement
Hypothesis (FX-B∞). The polymer representation of FX Step B (log of the unit-scale small-field integral after Step A as Σ_X [H(X; f) − H(X; 0)]) holds with (FX1)–(FX4) and with constants E_0, κ, c_0, c_τ that do not depend on ℓ, for all even ℓ ≥ ℓ_B.

Theorem IV-2 (ℓ-uniform Target 2 bounds modulo Step B) [P, as an assembly of §1, §3, the table, and the cited files; not independently verified]. Assume the binding set of Target 2 (TRUST_LEDGER §5: Balaban's papers, the A-rows, X2–X5, the B-rows) and (FX-B∞). Fix a ball B ⊂ R⁴ of diameter d_B, identified with its image in one fundamental domain of T⁴_ℓ. Put
  ℓ_0(B) := max(22M, ℓ_{A1}, ℓ_B, 16 max(d_B, 1)),
and let ℓ run over even multiples of every last-level cube side with ℓ > ℓ_0(B). Let g_0(K, g) be the ℓ-free shooting solution of Lemma IV-1 (fixed selection rule). Then there are η > 0, a ∈ [0, 1[, K_0, C_* < ∞ and q ≤ 12, none depending on ℓ, K, n, or F, such that for all K ≥ K_0, all such ℓ, all n ≥ 1, and all F ∈ D_n with supp F ⊂ B^n:
  |S_{n,ε,ℓ}(F)| ≤ (C_*(1 + d_B)^q)^n (n!)^{1+η} ‖F‖_{6n},   ε = L^{−K}.
The constant in (NT) is ℓ-uniform under the same hypothesis plus (E14-f); the explicit (d/ℓ)² term only improves.
In words: Target 2's bounds for observables supported in a ball B are uniform in ℓ > ℓ_0(B), modulo Step B.

### 6.3 Without Step B
Replace (FX-B∞) by (L1) of §4.4 (the post-Step-A form of the plan's (CG)). Then the same conclusion holds for moments, with (n!)^{1+η} replaced by 1 and with s = ⌈5 + a′⌉ + 1 in place of 6 (a′ = C/ln L from the factor e^{Cn log_L(2M/σ)}, §4.4) [P given (L1); §4.4]. In this route no row of the table is class (d), and the result also removes Step B from Target 2 at fixed ℓ (the plan's "side benefit") [I: (L1) is unproved; it is the plan's IV-3].

### 6.4 Corrections to existing files (not applied; this task writes only this file)
1. ASSEMBLY_N1 §1 item 4 and §6 item 5: delete "ℓ⁴ is absorbed in C_S"; (S) comes from D4D5 Lemma C, whose constants contain no ℓ.
2. ASSEMBLY_N1 §3.4: "M(G_{3,c}) ≤ C_G^n ‖F‖_{6n}" holds only for h_3 = ℓ/512 ≤ 1; for ℓ > 512 add max(1, h_3)^{6n} (a constant at fixed ℓ).
3. INFINITE_VOLUME_PLAN §3.2 row V2: "not used by the current chain (stale N1 text)", not "NO as written". Row V3: confirmed; the fix is Lemma N1-B (§3.1), A_B polynomial with q ≤ 12. Row V4: confirmed as the only (d) row; Step B is used only in D4D5 Lemma C Steps 1–2.
4. ASSEMBLY §0 "Lemma D″ gives existence, not uniqueness; any choice works below": for the infinite-volume route, "any ℓ-free choice" (§1.5).
5. TRUST_LEDGER B19 uniformity clause "uniform in K, ε": Step B is uniform in K, ε at fixed ℓ only as a citation [R]; its transfer from CMP 116 §2 to the unit scale (no decaying covariance) is [I] even at fixed ℓ (§4.2 (B-i)).

## 7. Ledger of this file
[P] proved here (short, unverified): Lemma IV-1 and the closedness/selection of S(K, g) (§1); exact cancellation of 𝒩_K and O(ℓ⁴) non-cancellation of (0.1) (§2.2–§2.3); the finding that (S) ⇐ Lemma C does not use (0.1) (§2.4); Lemma N1-B with q ≤ 12 (§3.1); Step B enters only through Lemma C Steps 1–2 (§4.3); the reduction (L1)–(L3) ⇒ ℓ-uniform moments, including the cancellation of the divergent linear constants against the centring (§4.4); the table (§5) and Theorem IV-2 as an assembly (§6.2).
[V] quoted from files or images read this session: CMP 122 II p. 356 (image: "E_−, E_+ independent of k, T_η, U_k"); KUNIF §2–§5; T2_VOL §1–§4; A15_LOC §5–§8 + VERIFY V4, V5, V7, V8; v4 §1.1–§2.4; ASSEMBLY (full); ASSEMBLY_N1 (full); D4D5 §3.1–§5.3; B21_S + VERIFY; FX §6–§7; FX_O23 l. 40–46, 78, 89; FX_R2 l. 36, 53–55; FX_R2_VERIFY l. 9–12; TRUST_LEDGER B19.
[I] inferences: (H3) ℓ-freeness of γ_Bal beyond the quoted E_± sentence; the M ∣ ℓ form of (Conv); class (a) for FX Steps A, C, D (KP volume uniformity; LOC only for small-field activities); (B-i), (B-ii) as the reasons Step B is infrared and its transfer from CMP 116 §2 is unclear even at fixed ℓ; (L1); the sharper q ≈ 6.
[R] standard: volume-uniform output bounds of a polymer expansion under a Kotecký–Preiss / Cammarota criterion.
Not read (firewall): /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md. Not read (scope): SOURCES_FX_O1/O23/R2 in full (grep + parts only); Dimock III; CMP 116 §2 pages.
No other file edited.

STATUS: COMPLETE (unverified). Verifier focus: §1.4 (H3); §2.4 (does any live step still use (0.1)?); Lemma N1-B steps (2)–(4); §4.4 (L3) linear-term cancellation; whether Step A's per-component bounds are ℓ-free as claimed (row 13).

Corrections after verification (INFINITE_VOLUME_IV12_VERIFY, 2026-10-28): IV-1 holds (β defined only as the Z^d limit; Lemma D″ constants volume-free), but "γ_Bal ℓ-free by statement" is an inference (p. 356 prints volume-independence only for E_±); the selection-rule caveat is not needed for uniform bounds (every element of S(K, g) gives the same constants) — it matters only for one lattice measure per ε across all ℓ. NEW: the step Lemma C → (S) (D4D5 §5.1, B21_S §3) hides an ℓ-dependence via "(1 + log_L(2M/σ)), Λ_1(σ)⁴ ≤ C_aσ^{−a}" on σ ≤ ℓ/8 — for σ ≫ 2M the left sides do not decay, so C_S ∝ ℓ^a; the ℓ-free fix (S′) replaces σ^{−a} by max(1, σ^{−a}). Lemma N1-B: cells of side h_m tile T⁴ only if they divide ℓ (use a partition of unity near B); the h-weight term over-counts; the region-R constant is 12 (the 2^n moment bound was dropped); q ≤ 12 holds, recount q ≈ 6. Step B: enters only at D4D5 Lemma C Steps 1–2 and (NT); compactness of SU(2) gives only the extensive O(ℓ⁴) bound (the only compactness-only expansion is strong coupling, g large — not our regime); (L1) also needs the open (FX-D) (a fixed polydisc fails if fine-scale R-terms have holomorphy radius → 0); the |W_conn| bound needs (1 + D_i/σ)⁴. CONDITIONAL STATEMENT CORRECTED: it omits ℓ-free constants for FX Steps A, C, D and (S′); MAIN FINDING: (FX-B∞) is expected FALSE, not merely unproved — Lemma C keeps the decay e^{−κσ/(4M)}, so an ℓ-uniform (FX) would give a mass gap of order one in unit-scale units at g ≤ γ, against asymptotic freedom's correlation length ≈ exp(1/(2b_0g²)) cells. "Uniform in ℓ modulo Step B" holds only as a formal implication; the USABLE form is "uniform in ℓ modulo (L1) + (FX-D)" via the moment route of §4.4.

Change log 2026-10-28: §3.1 hypothesis (S) → (S′) (top rung d_B/4); §4.4 min(σ, 1) step added for rungs σ_m > 1 (SOURCES_B21_S_PRIME §3.3, §3.6, VERIFY §4).
