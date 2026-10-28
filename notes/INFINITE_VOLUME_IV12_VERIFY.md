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
