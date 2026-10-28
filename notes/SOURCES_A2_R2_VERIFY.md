# SOURCES_A2_R2 verification (independent)

Date 2026-10-28. Verifier: Opus. Firewall kept (no sa_repo, no SA map, no online sweep).

## V1. Citation of (W) [V]
- CMP 116 p. 2: "We also refer the reader to the list of references at the end of that paper" (paper I = CMP 109).
- CMP 109 reference list: [13] = Balaban, "Propagators for lattice gauge theories in a background field", CMP 99, 389–434 (1985). [15] = CMP 102, 277–309.
- CMP 116 p. 3 cites "the sum (3.107) [13]", "as (3.108) [13]", "Sect. C [13]". So (3.107)–(3.108) are in CMP 99 Sect. C ("Generalized Random Walk Expansions"), txt l. 951–1372. They are NOT in CMP 109.
- CORRECTION to SOURCES_A2_R2 §2 (W) and §7 [R]: the source is CMP 99 (3.107)–(3.108), not CMP 109. Same for the brief.
## V2. What (3.107)–(3.108) bound [V, CMP 99 p. 416 image; CMP 116 p. 3 image]
- CMP 99 Thm 3.10 (3.107): G = Σ_ω R_0(X_0)R_{α1}(X_1)···R_{αn}(X_n), walks with X_{i−1}∩X_i ≠ ∅. Term depends on U restricted to X̃_0^5 ∪ … ∪ X̃_n^5.
- (3.108): |(R_0(X_0)···R_{αn}(X_n)J)(x)| ≤ O(1)(L^jη)^2 O(M^{−1/2})^{|ω|} M^{−1/2|ω|} e^{−(1/2)δ_0 d(ω,y,y′)} |J|, x∈Δ(y), supp J ⊂ Δ(y′); "and the corresponding inequalities for norms on the left-hand sides of (3.42)–(3.47)". O(1) depends on d, L only.
- CMP 116 (1.7) restates it as O(1)O(M_1^{−1/2})^{|ω|} M_1^{−1/2|ω|} exp(−δ_0 d(ω,y,y′)). So CMP 116's δ_0 = half of CMP 99's δ_0 (a renaming; harmless). The (L^jη)^2 scale factor is dropped in (1.7) (normalization).
- So (W) is a localized operator-norm bound per walk, not a pointwise kernel bound. Pointwise kernel bounds follow at lattice scale (J = point source); this is the author's [I] item and it is standard. Σ_ω converges by the O(M_1^{−1/2})^{|ω|} factor (counting walks of length n ≤ C^n): this is Balaban's "first two factors determine B_0". CONFIRMED with the reading that d(ω,y,y′) includes Δ(y), Δ(y′).
- Note: (3.107)–(3.108) are stated for G (the CMP 99 propagator). Their use for C^{(k)}(Z_0) is CMP 116 p. 13's claim (V3).
