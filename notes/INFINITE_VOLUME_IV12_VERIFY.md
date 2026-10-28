# IV-1/IV-2 independent verification (2026-10-28)

Scope: INFINITE_VOLUME_IV12.md claims (1)-(4). Firewall respected.

## 1. Read IV12 in full
Claims located: IV-1 §1.2–1.5; (0.1)/𝒩_K §2.2–2.4; N1-B §3.1; Step B §4.2–4.4; table §5; conditional §6.2. Next: v4 §1–§2.4 constants.

## 2. v4 §1–§2.4 read (D′/D″ constants)
D′ constants: C_1, B = sup|β_j(0)|, β_∞, J, γ_0, γ_Bal → γ, B′, D, D′, g_1, K_0. D″ constants: C_1, b = c log L, R, γ_0, γ_Bal → γ, β = 3b/4, B′ = 5b/4 + 2R, D′ = 2R, g_1. IV12 §1.1 list (C_β, b, R, γ_0, γ_Bal) matches D″ exactly; D′ adds B, β_∞, J (sup/limit of the same β_j(0), so ℓ-free iff β_j is). Shooting interval in IV12 [t − 2R, t + B′K] matches D″ (D = 2R). v4 §1.1: "The proof of Theorem 2w does not use (Vol)" [V]. (S)/γ_* depends on β_0, β, B′, p_0, p_1, r, ν, κ_0: Balaban constants, not listed with ℓ. Next: KUNIF l.17–18, T2_VOL rows 3–4.

## 3. KUNIF §1–§2 read
KUNIF key fact [V]: D′/D″ are applied at one fixed K and need only K-free constants (γ_0, γ_Bal, C_1, B, b, R, J). For IV-1's stronger claim (the SET S(K, g) is the same for all ℓ) bounds are not enough; the identity "β_j = whole-lattice number" is needed. KUNIF quotes D3W8_VERIFY S3 (page images): "β_j(g_{j−1}) is a number from the whole-lattice theory of CMP 109"; Lemma HH constants "independent of j, K, i, and the volume". So (H1) is sourced. Next: CMP 122 II p. 356 page image.

## 4. CMP 122 II pp. 355–356 page images (rendered 110 dpi this session)
p. 356 l. 1 verbatim: "with the constants E_−, E_+ independent of k, T_η, U_k." p. 355: Theorem 1 "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then …"; (0.1) χ_k exp[−(1/g_k²)A(U_k) − E_−|T_η|] ≤ ρ_k ≤ exp E_+|T_η|. CONFIRMED as quoted. Note: the printed volume-independence covers E_± only. Theorem 1 says nothing printed about γ and the volume. So (H3) "γ_Bal is ℓ-free" is [I], not [V]. IV12 §1.6 does tag "(H3) beyond the quoted E_± sentence" as [I]; but §0 and §1.3 step (2) say "volume-free by statement", which overstates. Plausible (Balaban's smallness conditions are per-polymer convergence conditions), not printed.

## 5. T2_VOL table rows 3–4 read
Row 3 [V]: "D′/D″ need no relation N ≥ K + … at all. Their constants (γ, b, R, C_β) are volume-free by KUNIF." Row 4: Theorem K per-cell infinite-volume one-loop densities, "volume-free by definition". Matches IV12. Note row 3 also lists γ as volume-free "by KUNIF"; KUNIF U3 only says γ_Bal must be K-free, not that it is. So γ_Bal ℓ-freeness has no source beyond inference (see §4). Next: ASSEMBLY's use of g_0.

## 6. ASSEMBLY's use of g_0 (l. 13, 40, 141, 192)
ASSEMBLY l. 13 [V]: "any solution of the shooting problem … any choice works below." l. 141: "The coupling g_0(ε) is one number" (within one measure, for translations). Finding: every element of S(K, g) satisfies (b), (c′), (S) with the SAME constants (D″ conclusions hold for every trajectory with couplings in ]0, γ]; v4 §2.2 Lean note). So Target 2's bounds are uniform in ℓ for ANY choice g_0(K, g, ℓ) ∈ S(K, g), torus-dependent or not. The ℓ-free selection rule is NOT needed for uniform bounds or for a diagonal limit (ε_i, ℓ_i). It is needed only if one wants one lattice measure per ε for all ℓ (e.g. an iterated limit ℓ → ∞ at fixed ε, or a monotonicity/consistency argument across ℓ). IV12 §1.5 says "A double limit … needs one bare coupling per ε"; that is too strong for the diagonal route. Caveat CORRECTED (harmless, over-cautious).

## 7. D4D5 §3.1–§5.1 read (S1, (FX), Lemma C, (S))
- 𝒩_K: S1(a) [V] "𝒩_K > 0 a product of f-independent normalizations"; "Consequence: Z_ε[f]/Z_ε[0] = e^{−W_K[f]} I_K[f]/I_K[0], since W_K[0] = 0 and 𝒩_K cancels." Exact cancellation CONFIRMED, by S1's definition (all f-dependent vacuum parts are in W_K, local per polymer). It inherits S1's status (target, not proved).
- (0.1) non-cancellation: §2.3 algebra checked. Upper bound of numerator and lower bound of denominator are different functions; log ratio ≤ (E_+ + E_− + c_χ)ℓ⁴. CONFIRMED. D4D5 §3.2 [V] also: S1 gives only |log I_K| ≤ C|T|.
- Lemma C does not use S1(d): Steps 0–9 use S1(b), (FX1)–(FX4), and g_m^{−2} ≤ g^{−2} + C_β(K − m). CONFIRMED. Lemma C constants (D4D5 l. 106) list no ℓ. CONFIRMED.
- NEW FINDING (missed by IV12 §2.4 and row 11/17). The passage Lemma C ⇒ (S) (D4D5 §5.1) is not ℓ-free. It writes "(1 + log_L(2M/σ)) ≤ C_aσ^{−a} … for σ ≤ ℓ/8" and "Λ_1(σ)⁴ ≤ C_aσ^{−a}". For σ ≥ 2M, Lemma C's bound is a constant per factor (Λ_1 ≥ (log g^{−2})^{p_R} > 0 does not decay), while σ^{−a} → 0. So the printed form (C_S σ^{−a})^n on σ ∈ [16ε, ℓ/8] forces C_S ≳ (ℓ/8)^a·const. Also Λ_1(σ) = (log(g^{−2} + C_β log_L(2M/σ)))^{p_R} is undefined once g^{−2} + C_β log_L(2M/σ) ≤ 1, i.e. for σ ≥ 2M·L^{(g^{−2}−1)/C_β}; Step 7's split log(a + b) ≤ log a + log(1 + b) needs a ≥ 1. Fix (easy, ℓ-free): apply Lemma C at σ′ := min(σ, 2M) (separation ≥ σ implies ≥ σ′) and state (S′): |κ_n| ≤ (C_S max(1, σ^{−a}))^n (n!)^{1+η} Π N(f_i), C_S ℓ-free. In N1-B step (4) the scales with σ_m > 1 then carry δ_m^{N−5n} instead of δ_m^{N−(5+a)n}; the scale sum gives (2d_B)^n instead of (2d_B)^{(1−a)n}. The crude exponent q ≤ 12 already counts this as 1. So the conclusion survives, but N1-B's hypothesis "(S) with ℓ-free constants" must read (S′), not D4D5 §5.1 as printed.

## 8. ASSEMBLY_N1 §1–§4.5 read; Lemma N1-B steps (1)–(5) redone
- N1 §1 item 4 [V]: "The bound comes from |log Z − W| ≤ E_+|T_η| … ℓ⁴ is absorbed in C_S." Item 1 says (S) comes from D4D5 §5.1 (Lemma C). So item 4 is stale. CONFIRMED.
- (1) Ladder: δ_m = 2d_B 2^{−m}; F Φ_0 = 0 since ρ ≤ d_B = δ_0/2 on supp F; Lemma T needs ρ ≤ 2δ_m ≤ 2d_B < ℓ/4, Lemma P needs δ_m ≤ d_B ≤ ℓ/8. CONFIRMED. Small gap: N1 §3.2 tiles T⁴ by cubes of side h_m = δ_m/64, which divides ℓ only because δ_m = ℓ2^{−m}. With δ_m = 2d_B 2^{−m} the tiling of T⁴ fails in general. Fix: the partition of unity only needs Σχ_c = 1 on a neighbourhood of B (F lives on B^n); use an R⁴ grid on B's fundamental-domain image. Or keep δ_m = ℓ2^{−m} from the first m with δ_m ≤ 4d_B (then ℓ ≥ 32 max(d_B, 1)). Either fix is ℓ-free.
- (2) Cells: cubes c of side h with c′ ∩ B ≠ ∅ number ≤ (d_B/h + 2)⁴ ≤ (70d_B/δ)⁴ for δ ≤ 2d_B. CONFIRMED.
- (3) Large cells: N(ψe_q) ≤ C(1 + |q|)ρ_1^{−1} max(1, h^{−1}) max(1, ρ_1/r). CONFIRMED. But the extra max(1, h)^{6n} in M(G) is NOT needed at Taylor-gain scales: in N1 §3.4 the product is 4^{N−|β′|}δ^N (h/δ)^{|β′|+|β″|}C^{|β|} with h/δ = 1/64, so M(G) ≤ C_G^n 4^N δ^N ‖F‖_N for every h. The h ≤ 1 assumption is real only at N1's top scale m = 3 (no Taylor gain), which N1-B removes (F Φ_0 = 0). So IV12's "+6" is a harmless over-count.
- (4) Recount: per scale C^n (70d_B)^{4n} δ^{N−4n} σ-factor · [h^{−n} if h ≤ 1, else 1]. With N = 6n and (S′) of §7: scales δ ≤ 64 give δ^{(1−a)n}; scales δ > 64 give ≤ δ^{2n}. Sum ≤ C^n (1 + d_B)^{(4+2)n}. So q = 6 (+ a if (S) as printed). The crude q = 12 is a valid upper bound. CONFIRMED (q ≤ 12; sharper q ≈ 6 also CONFIRMED by this recount).
- (5) Region R: slip. IV12 drops the moment bound |⟨Πφ_{p_i}⟩| ≤ 2^n that N1 §4.5 has (N1's 12 = 6·2). Correct constant: (12(d_B + 2)⁴ 256⁶)^n. No effect on q.

## 9. SOURCES_T2_F_STEPB checked: it is the (F) Step B (lattice log coefficient), unrelated to FX Step B. No conflict.
