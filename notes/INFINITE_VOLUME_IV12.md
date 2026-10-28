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
