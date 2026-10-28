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
## V3. d(ω,y,y′) in CMP 99 [V, txt l. 1069 (3.93), l. 1221]
- (3.93): d(ω,y,y′) = inf over points y_i ∈ (domain i) of d(y,y_1) + d(y_1,y_2) + … + d(y_n,y′). This is a PATH through all domains of ω from y to y′, not a tree. CMP 116 p. 5 calls d(ω) "a shortest tree graph intersecting all localization domains" (Balaban's own loosening; path ≥ tree).
- Consequence for §3 (ii): with the path form, a walk with y, y′ ∈ Z_0 that visits X, dist(X,Z_0) > (2/3)M, has d ≥ dist(y,X) + dist(X,y′) > (4/3)M − O(M_1), and d ≥ r. The author's tree bound max{r, (2/3)M + ½r} is weaker, so it is valid. The round-trip claim is CONFIRMED (and the true margin is larger).
## V4. Case (a) compression and the s-construction [V, CMP 116 pp. 12–13 images]
- (2.5) quoted: "The integrals above are represented in a similar way to (2.28) [6], namely as conditioning on Z_0^c." The Gaussian of precision C*Δ_kC (normalizer (Z^{(k)})^{−1}∫dB exp(−½⟨B,C*Δ_kCB⟩)) is split as ∫dμ_{C^{(k)}}(B′) exp(−½⟨Z_0^cB′, C*Δ_kC C^{(k)}(Z_0) C*Δ_kC Z_0^cB′⟩) ∫dμ_{C^{(k)}(Z_0)}(B) exp(−⟨Z_0^cB′, C*Δ_kCZ_0B⟩)F. The B|_{Z_0}-quadratic form is ½⟨Z_0B, C*Δ_kCZ_0B⟩. So C^{(k)}(Z_0) = (Z_0AZ_0)^{−1} on Z_0, A = C*Δ_kC. Also (2.7) gives C^{(k)} = (C*Δ_kC)^{−1}. CONFIRMED: C(1) = A_Z^{−1} exactly at real U; the complex extension by the identity theorem is sound (both sides analytic on a connected domain that contains the real space).
- p. 13: σ_0 = LM-cubes "disjoint with the interior of Z̃_0, or with the interior of Z′_0"; "parameters s(Δ) … introduced into the operators as before" (= p. 3 rule: multiply walk term by s(Δ_1)···s(Δ_m) over σ_0 cubes intersecting X̃_0^5 ∪ … ∪ X̃_n^5); domains: X_0 with X̃_0^5 = Z̃_0, others with dist(X, Z_0) > (2/3)M; construction "discussed in [13] for all operators determining Δ_k, and for C^{(k)}(Z_0), but not for (C^{(k)})^{1/2}". CONFIRMED (S-rule), (G).
- [I] kept: σ_0 cubes touching Z̃_0 (or Z′_0) only on the boundary must not count as "intersecting" X̃_0^5. If they counted, the X_0-only walk (the leading O(1) term) would carry s-weights and C(1) − C(σ) would be O(1), so printed (2.16) would also fail. So this reading is forced by Balaban's own claim; it is not a new gap of the author.
- Note on [13]: it is CMP 99 (V1). Whether CMP 99 really treats "C^{(k)}(Z_0)" (a CMP 116-era object) is Balaban's assertion [R]; the brief's CMP 109 attribution is wrong.
