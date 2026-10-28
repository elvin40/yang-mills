# SOURCES_A3_SIGMA_VERIFY

Independent verification of SOURCES_A3_SIGMA.md (2026-10-28). Firewall respected.

## V1. CMP 116 p. 3 [V image 130 dpi + 300 dpi zoom]
- Verbatim: "We start with the original propagators, and we decompose them into generalized random walk expansions. A propagator is represented by the sum (3.107) [13] Σ_ω R_0(X_0)R_{α_1}(X_1)···R_{α_n}(X_n), (1.6)". So the walk sum expands the PROPAGATOR (an inverse operator), not the precision. Author's 1.4 correction CONFIRMED.
- Note: (1.6) = (3.107) of [13] (CMP 109); the bound (1.7) is "as (3.108) [13]". The SOURCES file cites only (3.108); (3.107) is the expansion itself.
- (1.7) verbatim: "O(1)O(M_1^{−1/2})^{|ω|}M_1^{−1/2|ω|}exp(−δ_0d(ω,y,y′)), where Δ(y), Δ(y′) are localization cubes of the term. This bound holds for all operator norms in formulations of theorems in [13], e.g. in Theorem 3.1. The first two factors in (1.7) are used to control the sum over ω, and they determine the constant B_0." Transcription in SOURCES 1.2 is correct.
- s-rule verbatim: "for a random walk ω localized in X̃_0^5 ∪ X̃_1^5 ∪ ··· ∪ X̃_n^5 we take the {Δ_1,…,Δ_m} of all cubes from σ_0 which intersect this localization domain, and we multiply the term in (1.6) corresponding to ω by s(Δ_1)···s(Δ_m). This way the s-dependent propagators H(s), G̃(s), H_0(s) are defined. They coincide with the original ones for s = 1." CONFIRMED: one variable s(Δ) per cube, s^ω multilinear.
- Point to carry: the s-rule uses the ENLARGED domain X̃_j^5, not X_j. The distance argument in SOURCES 2.3 must use X̃_j^5 (checked at p. 13 below).
- p. 3 σ_0 = cubes "of the size M, which are disjoint with the interior of □̃^4" (Sect. 1 example). Sect. 2 version on p. 13.
