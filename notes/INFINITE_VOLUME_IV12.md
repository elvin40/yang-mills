# INFINITE_VOLUME_IV12 — Lemma IV-1 (ℓ-free trajectory) and Lemma IV-2 (ℓ-audit of Target 2's constants)

Date: 2026-10-28 (Opus). Status: derivation + audit, unverified. Edits: this file only.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags: [P] proved here (short, unverified); [V] quoted from a project file or page image read this session; [I] inference, not printed anywhere; [R] standard result, text not re-read this session.
Parent: INFINITE_VOLUME_PLAN.md §3.2 (rows V1–V9), §4.1, §5 (IV-1, IV-2).

## 0. Summary
(pending; written at the end)

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
Let B ⊂ T⁴_ℓ be a closed ball of diameter d_B, and ℓ ≥ 16 max(d_B, 1). Assume (S) with constants (η, a, C_S) that do not depend on ℓ. Then for all K ≥ K_0, n ≥ 1, and F ∈ D_n with supp F ⊂ B^n:
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
(L3) [W] W_K[f] = Σ_i W_K[z_i f_i] + W_conn[f], with |W_conn| ≤ C Σ_i |z_i|N(f_i)/r·(1 + log_L(2M/σ)) by Lemma C Step 9 restricted to polymers that meet supp f_i and at least one other support (count per support, not per pair) [P sketch]. Each W_K[z_i f_i] is a function of z_i alone with zero linear term after centring, so it does not contribute to ∂_{z_1}⋯∂_{z_n} at 0.
Then Lemma IV-M of INFINITE_VOLUME_PLAN §4.2 applies verbatim with Γ := e^{−W_conn}·E_{ν_0}[e^{Δ_f}]: G(z) := e^{−W_conn[f]} E_{ν_0}[e^{Δ_f}] is holomorphic on the polydisc, |G| ≤ exp(sup|W_conn| + sup|Δ_f|), and Cauchy on radii ρ_i = c r/(N(f_i)(1 + |supp f_i|_1)) gives
  |⟨Π_i ϕ(f_i)⟩_{ε,ℓ}| ≤ e^{C n (1 + log_L(2M/σ))} Π_i (c r)^{−1} N(f_i)(1 + |supp f_i|_1),
uniformly in ε AND ℓ. The factor (1 + log_L(2M/σ)) ≤ C_a σ^{−a}, as in D4D5 §5.1.
Use in the bridge: ASSEMBLY_N1 §4.3 (Lah sum over cumulants) is replaced by this direct moment bound, with no n! at all; Lemma N1-B (§3.1) is otherwise unchanged. So the local version suffices for (H-U∞) of PLAN §3.1 step 1, conditionally on (L1).
What the local version does NOT give: cumulant (connected) bounds with decay in the separation, hence no clustering; and no statement about log I_K. Neither is needed for the weak-sense target.
Status: (L2), (L3), and the Cauchy step are [P] (short). (L1) is [I]; it is the plan's IV-3 (CG), in a slightly simpler form (no conditioning on V is needed once Step A has been done, because Step A already writes the large-field sum as exp of local unit-scale activities). It is the one new item.

### 4.5 Ledger of §4
[V] FX §6.1–§6.4, §7 R2; FX_R2 l. 36; FX_O23 l. 46; TRUST_LEDGER B19; D4D5 §4.1 Steps 1–2, 9. [P] §4.3 (Step B is used only in Lemma C Steps 1–2); the reduction in §4.4 from (L1) to ℓ-uniform moment bounds. [I] the (a) classification of Steps A, C, D (per-polymer + LOC + KP uniformity); (B-i), (B-ii) as reasons Step B is infrared; (L1).
