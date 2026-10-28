# SOURCES_WG verification (independent)

Date 2026-10-28. Firewall kept: no sa_repo, SUSSMAN_ALPOGE_MAP, ONLINE_SWEEP.

## 1. Identity and (3.130) [V images pp. 419, 421 at 300 dpi]
- (3.120) p. 419: ⟨A,Δ_πA⟩ = ⟨A,ΔA⟩ − ⟨i[(G′RD*A)(b_−),A(b)] − i[A(b),R_b(G′RD*A)(b_+)] − i[(G′RD*A)(b_−),(DG′RD*A)(b)], J⟩ = ⟨A,ΔA⟩ − ⟨A,Δ′_πA⟩. Matches SOURCES_WG 1.2.
- (3.122) p. 420 (text, OCR): G^{−1} = Δ_π + DRD* + Q*aQ. p. 421: G_0 = (Δ + DRD* + Q*aQ)^{−1}; (3.130) G = G_0(I − Δ′_πG_0)^{−1} = Σ_{n≥0} G_0(Δ′_πG_0)^n. Sign check: G^{−1} = G_0^{−1} − Δ′_π ⇒ G = G_0(I − Δ′_πG_0)^{−1}. Correct.
- Notation caution: in (3.120) R_b is the parallel transport along b; R in RD* is the projection. SOURCES_WG 1.2 copies R_b correctly but 2.2 lumps "R = I − P" in; harmless, but R_b is a local factor, not P.
- Non-locality: Δ′_π contains G′RD* (twice in the third term). So V is non-local; it contains G′ and R. CONFIRMED.
- p. 421 says Δ′_π is estimated "using Theorem 3.1 and the inequality (3.49)", i.e. via the global G′ kernel bounds, not walks.

## 2. pp. 422–423 [V images 300 dpi]
- (3.131) printed with factor O(1)Mα_0 and e^{−½δ_0 d(y,y′)}; D* on A_1. Matches 1.4.
- p. 422: "This inequality and Theorem 3.3 for G_0 imply a convergence of the series (3.130), for α_0 sufficiently small" (global norms). "Of course Theorem 3.10 holds also because we replace each operator in (3.130) by its random walk expansion … each operator Δ′_π provides the small factor α_0." So the walk expansion of G is an ASSERTION in one sentence. (3.132) for (QGQ*)^{−1}, (QG_1Q*)^{−1}: "We will not repeat these considerations here, let us write only bounds."
- (3.134)–(3.136) as quoted in SOURCES_WG 1.7. Algebra: (I − DRG′D*)Δ^{(2)}(I − DG′RD*) expands to exactly the four terms of (3.135). CONFIRMED.
- (3.136): |(H*J)(b)| ≤ O(1)Mα_0(L^jη)^{−3} "from (3.36) and (3.133)". (3.133) for H rests on (3.132), which is unprinted.
- p. 423 printed first-factor estimate: Σ_{y_1,y_2} e^{−δ_0 d(y,y_1)} e^{−δ_0 d(y_1,y_2)} … ≤ … e^{−(1−α)δ_0 d(y,y′)} O(1)Mα_0. This is Balaban's own junction split: part of the exponent pays the y_1, y_2 sums, rate loss (1 − α). It supports SOURCES_WG 2.3(c) in form. Note it is a GLOBAL kernel bound, not a walk bound.
- p. 423: "the series (3.138) is convergent for α_0 restricted by a small, absolute constant"; "Replacing the operators in (3.138) by their random walk expansions we get a random walk expansion for G_1." Thm 3.12 as quoted. Last para: "common, best possible, decay rate … δ_0" [V].
- p. 423 uses G_0 (not G) in (3.138); the H inside Δ^{(2)} is H = GQ*(QGQ*)^{−1}, i.e. it uses G and (QGQ*)^{−1}. So Balaban's own order is also G → (QGQ*)^{−1} → H → G_1. No loop. SOURCES_WG 3.3 consistent.

## 3. pp. 426–427 [V images 300 dpi]
- Citation fix: "after adjusting a definition of δ_0" is on p. 427 (Thm 3.14 proof), not p. 426. SOURCES_WG 4.3 cites p. 426. Content correct.
- p. 426 NEW FACT: Thm 3.13 is introduced with "Especially for 𝔊 we have, assuming (3.132)". So Balaban himself marks (3.132), the (QGQ*)^{−1}, (QG_1Q*)^{−1} bound, as an assumption. This supports SOURCES_WG 5.3: the G_1 clause needs an extra input (A1-W) beyond printed sketches.
- p. 427 tree paragraph matches SOURCES_WG 3.2 verbatim in content: three chains of type (3.107) meet in the C^{(2)}(A) localization domain (left operator, right operator, expansion of H); "main line and at some vertices additional lines spring off"; "estimates are the same as in (3.108), d(ω,y,y′) is now a length of a shortest tree intersecting all domains X_i". CONFIRMED.
- Minor: SOURCES_WG 3.4 orders the branch as G, Q, (QGQ*)^{−1}. With H* = (QGQ*)^{−1}QG, read from b the order is (QGQ*)^{−1}, Q, G, then J(b′). Same domains, same bound. Harmless.
- Balaban states no new smallness condition for G_1 beyond "α_0 sufficiently small"; the branch's α_0 comes from J inside H*J (p. 422).
