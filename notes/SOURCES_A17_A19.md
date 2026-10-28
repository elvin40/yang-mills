# SOURCES_A17_A19 — derivations for TRUST_LEDGER rows A17 and A19

Date: 2026-10-28. Ledger tags: [P] printed (page cited), [V] verified here by computation or reading, [I] inferred / reading choice, [R] relied on (cited result, not re-proved).
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## 0. Status
Complete, unverified (Claude Opus). A17 PROVED with r = 1 by an exact identity (B′ = g_kB on every cut bond); r < 1 needs C9 or the new C9′ (domain enlargement, χ_k unchanged). A19 PROVED by tracing CMP 102 pp. 307–308: every input is printed on complex sets; (190) holds on the complex ball with the printed constants. Fallback (two-constants) and one Cauchy-radius correction to MA2 in §4.2, §5.2.

## 1. A17 — the printed objects (page images, 300 dpi)

1.1 The cut [P, CMP 109 p. 266, (2.9), image read]:
  χ_k = Π_{b ∈ T^{(k)} \ {b_0(c): c ∈ T^{(k+1)}}} χ({|B′(b)| < ε_1}).
The product runs over all bonds of T^{(k)} EXCEPT the bonds b_0(c). This index set is load-bearing below.
1.2 The variables [P, CMP 109 pp. 267–268, image read]:
 - h maps functions on bonds of T^{(k+1)} to functions on bonds of T^{(k)}. "The function hB is equal to 0 everywhere, except the set {b_0(c): c ∈ T^{(k+1)}}." (p. 267)
 - Change of variables B′ = B − hD(B) (linearizes Q), then scaling "B = g_kB′" (p. 267, bottom).
 - "using δ(Q̃B′) we eliminate the variables B′(b_0(c)), c ∈ T^{(k+1)}. Denoting the remaining variables by B we have B′ = CB, C is the operator determined by the configuration V^{(k)}, and the measure becomes a Gaussian measure in variables B, with the covariance C^{(k)} = (C*Δ^{(k)}C)^{−1}." (p. 268)
1.3 The composite map [P, CMP 116 p. 6, (1.19)–(1.20), image read]:
  B′ = g_kCB − hD̃(g_kCB),   (1.19)
  |B′| ≤ O(1)g_k|B| + 4C_2(O(1)g_k|B|)² ≤ C_1g_k|B| < C_1ε_1,   (1.20)
 "where C_1 is an absolute constant, and g_k|B| < ε_1."
1.4 The analyticity domain [P, CMP 116 p. 9, Lemma 1, (1.34), image-checked text]:
  U_{k+1}(Y,(1+β)α_0,(1+β)α_1,α_0) × {B: |B| < ε_1g_k^{−1} on Y}.
Lemma 2 (p. 11) uses the same space (1.34) for the full vertex V_k(Y,·).
1.5 How CMP 116 itself writes the cut [P, CMP 116 p. 12, (2.1)–(2.3), image read]:
  ∫dμ_{C^{(k)}}(B)χ_k exp[Σ_{Y∈D_k}V_k(Y,B)] = Σ_{D⊂D_k} Π_{Y∈D}∫_0^1dt(Y) ∫dμ_{C^{(k)}}(B)χ_k exp[Σ_{Y∈D}t(Y)V_k(Y,B)] Π_{Y∈D}V_k(Y,B),   (2.1)
  Y_0^{c*} = {b ∈ T^{(k)}: b ⊂ Y_0^c} \ {b_0(c): c ∈ T^{(k+1)}},
  χ_k = χ_{k,Y_0}χ_{k,Y_0^c} = Σ_{P⊂Y_0^{c*}}(−1)^{|P|}χ_{k,Y_0}χ^c_{k,P},  χ^c_{k,P} = Π_{b∈P}χ({|B(b)| ≥ ε_1/g_k}).   (2.3)
So in CMP 116 §2 Balaban writes the complement cut directly in B, at threshold ε_1/g_k, on bonds outside {b_0(c)}. He uses, without comment, the identity of §2 below.

## 2. A17 — the inclusion

2.1 The route in the brief does not work as stated [P]. (1.20) bounds B′ by B: g_k|B| < ε_1 ⇒ |B′| < C_1ε_1. This is the inclusion {g_k|B| < ε_1} ⊂ {|B′| < C_1ε_1}, the WRONG direction. An upper bound on |B′| in terms of g_k|B| gives no upper bound on g_k|B| from a cut on B′. Inverting (1.19) as a map would give g_k|B| ≤ C′ε_1 with some C′ ≥ 1 (C′ = ‖(linear part)^{−1}‖ times a near-1 factor), and then the inclusion in a domain of radius ε_1 would FAIL unless C′ ≤ 1. No such inversion is needed: on the cut bonds the map is the identity times g_k.

2.2 Lemma A17 (exact coincidence on the cut bonds) [P from §1.1–1.3]. For every bond b ∈ T^{(k)} \ {b_0(c): c ∈ T^{(k+1)}} and every B:
  B′(b) = g_kB(b).
Proof. (i) h vanishes off {b_0(c)} (CMP 109 p. 267), so (hD̃(g_kCB))(b) = 0. (ii) B is the vector of the variables B′(b) for b ∉ {b_0(c)} that remain after the δ-function eliminates B′(b_0(c)) (p. 268). C reconstructs the eliminated components and keeps the remaining ones, so (CB)(b) = B(b) for b ∉ {b_0(c)}. (iii) Hence by (1.19), B′(b) = g_k(CB)(b) − 0 = g_kB(b). ∎
[I, one reading]: step (ii) reads "denoting the remaining variables by B, B′ = CB" as "C restricted to the remaining bonds is the identity". This is the only consistent reading: B and B′ restricted to the remaining bonds are the same variables (before the scaling). CMP 116 (2.3) confirms it: Balaban writes the complement cut on the same bonds directly as |B(b)| ≥ ε_1/g_k.

2.3 Corollary (A17) [P given 2.2 and reading R1 below]. On supp χ_k, |B(b)| < ε_1/g_k for every B-bond b of T^{(k)}. The variable B lives only on these bonds (§1.2). So
  supp χ_k ⊂ {B real: g_k|B(b)| < ε_1 for all b} ⊂ {B: |B| < ε_1g_k^{−1} on Y} for every Y ∈ D_k,
which is the B-factor of the domain (1.34). The inclusion is exact, with ratio r = 1 and a STRICT inequality (χ cuts the open set |B′(b)| < ε_1).
Reading R1 [I]: "|B| on Y" in (1.34) is max_{b ⊂ Y}|B(b)| over the B-bonds of Y (sup norm, Lie-algebra norm per bond). This matches (1.20)–(1.22), where |B| enters as a single number with g_k|B| < ε_1, and (2.3), where the cut is per bond. If (1.34) meant a norm with derivative terms ("admissible norms"), the cut would not control it; nothing on pp. 5–11 indicates this for the B-domain.
Local form used in §2 of CMP 116 [P]: in a term of (2.3) only χ_{k,Y_0} survives as a small-field factor. The vertices in that term are V_k(Y,·) with Y ∈ D, Y ⊂ Y_0 (2.2), and they depend on B in the interior of Y only (Lemma 1). χ_{k,Y_0} = Π over B-bonds b ⊂ Y_0. So 2.2 gives g_k|B|_Y < ε_1 for every Y ∈ D on supp χ_{k,Y_0}. The inclusion is needed only there, and it holds there.

2.4 Explicit margin. With Balaban's own construction, r = 1. There is NO slack: B with g_k|B(b)| → ε_1 lies in supp χ_k. The Cauchy step of GGAIN Lemma G1(a) needs r < 1 (radius (1−r)ε_1/|B|_Y). Two ways to get it:
 (C9) shrink the cut: χ({|B′(b)| < rε_1}). By 2.2, supp ⊂ {g_k|B(b)| < rε_1}. This is (M_r) exactly, with no loss: the cut constant and the margin constant are the same number r. It changes χ_k, so A13 must hold for the changed construction (as the ledger says).
 (C9′, new) keep the cut at ε_1; enlarge the DOMAIN. Run CMP 116 §1 with the domain constant ε̂_1 := ε_1/r. The functions V_k(Y,·) do not change: (1.10) is an expansion in the parameters t, s, and the t_□-circle (1.22) is chosen pointwise in g_k|B|, so ε_1 sets only the domain on which analyticity and (1.36) are asserted [I, from the text of pp. 7–9]. The §1 conditions that contain ε_1 are all upper bounds: C_1ε_1 ≤ ε_3 (needed for |B′| < ε_3 in (1.15)–(1.18) via (1.20)), e^{32κ_1}ε_1 < absolute constant (p. 7), 4B_0C_1e^{16κ_1}ε_1 ≤ ½α_2 (p. 7) [P, CMP 116 pp. 6–7 text]. They hold at ε̂_1 if ε_1 is chosen r times smaller than Balaban's admissible maximum. On the larger domain, (1.36) reads |V′_k| ≤ E_0ε̂_1C_1M^qe^{C_2κ_1}e^{−(1−2δ)κd_k(Y)}. Lemma G1(a) then gives, with f analytic on |x| < ε̂_1 and |x| < ε_1 on the support:
  |∂_gV″_k(Y,B)| ≤ (E_0ε̂_1C_1M^qe^{C_2κ_1})·|B|_Y/(ε̂_1 − ε_1) · e^{−(1−2δ)κd_k(Y)} = E_0C_1M^qe^{C_2κ_1}(1−r)^{−1}|B|_Y e^{−(1−2δ)κd_k(Y)},
 the SAME constant as GGAIN §4.1(a). χ_k and the effective action are unchanged; only ε_1 is placed lower inside Balaban's admitted range. [I]: that every other ε_1-condition in CMP 116–122 is either an upper bound or a lower bound of the form γ ≪ ε_1 (g_k ≤ γ); a lower bound γ ≤ f(ε_1) still holds after γ is chosen smaller, because γ is fixed after ε_1 in Theorem 1 (g_k ∈ ]0, γ], γ small). This reading needs a check against the full condition list of CMP 116 §2 and CMP 119/122.
Recommendation: C9′ removes the "construction changes" caveat of C9. With C9′, A13 is used as printed, at a parameter value inside its range. Take r = ½: margin factor (1−r)^{−1} = 2.
 P^{(k)}-part [P]: GGAIN §4.1(b) needs supp χ_k ⊂ {e^{16κ_1}C_1g_k|B|_Y ≤ a_1/3}. By 2.3 and (1.20), on supp χ_k: e^{16κ_1}|B′| < e^{16κ_1}C_1ε_1, and Balaban states this use himself ("Taking B′ as in (1.19) we obtain the above bound with |B′| replaced by C_1ε_1", p. 10–11). Condition: 3e^{16κ_1}C_1ε_1 ≤ a_1 [I that it is among Balaban's assumptions; it is implied by 4B_0C_1e^{16κ_1}ε_1 ≤ ½α_2 if α_2 ≤ a_1 and B_0 ≥ 1 — not checked].

## 3. A19 — the printed objects (CMP 102 "Variational problem", pp. 277–309; page images at 300 dpi)

3.1 (172) [P, p. 305, image read]: "Now let us take V = V′V_0, V_0 satisfies the condition (7), V′ satisfies
  |V′ − 1| < C_1ε_1, hence V′ = e^{iB′}, |B′| < 2C_1ε_1 on 𝔅_k,   (172)
for ε_1 sufficiently small." (173): ℋ satisfies (19)–(21) with ε_2 = B_1(B_3(1 + 4C_1)ε_1 + C_1ε_1) ≤ 6B_1B_3C_1ε_1 = B_5ε_1. "We assume that C_1 is an absolute constant, hence B_5 is such a constant also."
3.2 Complex domain [P, pp. 306–307]: "the function ℋ(B) is an analytic function of g^c-valued configurations B defined on 𝔅_k and satisfying (172)." So the complex set is the polydisc {B ∈ g^c on 𝔅_k: |B(b)| < 2C_1ε_1 for all b} (sup norm per bond; [I] that |B′| in (172) is per bond, as in "on 𝔅_k").
3.3 The derivative chain [P, pp. 307–308, images read]:
  δℋ/δB = δ𝒜_0/δB + H_0 − H⟨𝔇(𝒜_0 + H_0B), δ𝒜_0/δB + H_0⟩,   (182)
  (I + G̃(δ²V/δA′²)(𝒜_0 + H_0B))𝔄_0 = G̃Δ^{(2)}H_0 − G̃(δ²V/δA′²)(𝒜_0 + H_0B)H_0,   (184)
  (δ²V/δA′²)(A′)𝔄 = (1/2πi)∮_{|τ|=r} dτ τ^{−2}(δV/δA′)(A′ + τ𝔄),  r = max{|A′|_{(−1)}, |∇A′|_{(−2)}}·(max{|𝔄|_{(−1)}, |∇𝔄|_{(−2)}})^{−1},   (185)
  |(δ²V/δA′²)(A′)𝔄|_{(−3)} ≤ 4C_4ε_3 max{|𝔄|_{(−1)}, |∇𝔄|_{(−2)}} ("from Proposition 4"),   (186)
  |G̃(δ²V/δA′²)(𝒜_0 + H_0B)𝔄|_{(−1)}, |∇G̃(…)𝔄|_{(−2)} ≤ O(1)B_0C_4B_5ε_1 max{|𝔄|_{(−1)}, |∇𝔄|_{(−2)}} "for ε_1 sufficiently small",   (187)
  𝔄_0 = (I + G̃(δ²V/δA′²)(𝒜_0 + H_0B))^{−1}(G̃Δ^{(2)}H_0 − G̃(δ²V/δA′²)(𝒜_0 + H_0B)H_0)  (Neumann series),   (188)
  |Δ(y)(δ²V/δA′²)(A′)𝔄| ≤ O(1)ε_3(L^jη)^{−3}exp(−¼δ_0d(y,y′))max{|𝔄|_{(−1)}, |∇𝔄|_{(−2)}}, supp 𝔄 ⊂ Δ̃(y′), A′ satisfying (77), y ∈ Λ_j   (189, announced: "We do not perform these calculations here")
  "This inequality, the formula (188) and Lemma 2.1, and finally Proposition 2 and (181), yield"
  |δℋ_μ(B,x)/δB_ν(y′)|, |∇_x δℋ_μ(B,x)/δB_ν(y′)|, ‖ζ∇ δℋ(B)/δB(y′)‖_β, |D*D δℋ_μ/δB_ν(y′)|, |Δ δℋ_μ/δB_ν(y′)|
   ≤ O(1)[(L^jη)^{−1}, (L^jη)^{−2}, (‖ζ‖^ξ_β + |ζ|)(L^jη)^{−2−β}, (L^jη)^{−3}, (L^jη)^{−3}]·(L^{j′}η)^{−d}exp(−⅛δ_0d(y,y′))   (190)
  for x ∈ Δ(y), or supp ζ ⊂ Δ̃(y), y ∈ Λ_j, y′ ∈ Λ_{j′}.
3.4 Prop. 9 [P, p. 309]: ℋ(B) "is an analytic function of B, and also of the external gauge field configuration U satisfying the regularity conditions (3.35)–(3.38) [5], or (1.7)–(1.9) [6]. It satisfies the conditions (19)–(21) with ε_2 = B_5ε_1 (see (173)), and its functional derivative (182) satisfies the inequalities (190)." No domain qualifier on the last clause: it does not say "for real B", nor "on (172)".
3.5 The complex inputs that ARE printed [P]:
 - (77) [p. 290]: |A′| < B_3(L^jη)^{−1}, |∇A′| < ε_3(L^jη)^{−2} on Ω_j. V(A′) (80) "is analytic in A′ for A′ with values in the complexified algebra and satisfying (77)" (p. 290).
 - Prop. 4 [pp. 292–293]: "the functional V(A′) on the space of configurations A′ with values in the complexified Lie algebra g^c, and satisfying (77), i.e. max{|A′|_{(−1)}, |∇A′|_{(−2)}} < ε_3 or a_3 … The functional derivative of V(A′) is an analytic function on this space, and satisfies the estimate" (97) |δV/δA′|_{(−3)} ≤ C_4ε_3²(L^jη)^{−3}, (98) the quadratic form of it.
 - Prop. 6 [pp. 295–296]: "if we replace the configuration H_1B by an arbitrary configuration 𝔄_1 with values in the complexified Lie algebra, and satisfying the same bounds as H_1B, then the above statement is again true and the solution is an analytic function of 𝔄_1." The bound is (115) with ε_4 = 3B_0C_1B_3ε_1. Proof: "the solution can be constructed as a uniform limit of a sequence of successive approximations."
So Balaban's existence and size bounds for the fixed point are proved on the COMPLEX set, with the real constants. Only the derivative bound (190) lacks the word "complex".

## 4. A19 — (190) at complex B: proof by tracing (route ii)

Notation. R := 2C_1ε_1. Ball_R := {B ∈ g^c on 𝔅_k: |B(b)| < R for all b}, the set (172) at complex B (3.2).

4.1 Proposition A19. For every B ∈ Ball_R, the five bounds (190) hold with the SAME constants O(1), δ_0, (L^jη)-powers as printed. The smallness condition is the one already used at real B ("ε_1 sufficiently small", (187)), unchanged.
Proof. The proof on p. 308 has six inputs. Each is either B-independent or printed on a complex set that contains the complex arguments that occur.
 (a) A′(B) := 𝒜_0(B) + H_0B obeys (77) on Ball_R with the real-B bounds. H_0 is a linear operator of the real background U_0 = U_k(V_0); its kernel bound (130) bounds |H_0B| for complex B by the same kernel sum of |B(b)| [P, linearity]. 𝒜_0(B) solves (180), "an equation of the same type as (175), and it has the same analyticity properties" (p. 306) [P]. Prop. 6 (p. 295–296) proves existence, uniqueness, and the bounds (115) with ε_4 = 3B_0C_1B_3ε_1 for COMPLEX inputs "satisfying the same bounds as H_1B" [P]. [I]: that the (180)/(175) solution in Sect. G is covered by Prop. 6's complex clause; p. 306 says so in words ("the same analyticity properties"), and the contraction argument (116)–(121) uses only norms.
 (b) (185)–(186). (185) is Cauchy's formula in τ. Even at REAL A′ the circle |τ| = r is complex, so the printed proof of (186) already evaluates δV/δA′ at complex points A′ + τ𝔄, with |·| ≤ 2 max{|A′|_{(−1)}, |∇A′|_{(−2)}}. At complex A′ the circle points have the same size bound. Prop. 4 holds on the complexified space (77) [P]. So (186) holds at complex A′ with 4C_4ε_3, verbatim [P].
 (c) (187). G̃ = (Δ_a − Δ^{(2)})^{−1} is an operator of the real background, B-free [P, p. 306 definition]. (187) is (186) composed with the bound of G̃ and the size of A′(B) from (a). Same constant O(1)B_0C_4B_5ε_1 [P].
 (d) (188). The Neumann series converges in operator norm when (187) < 1. No positivity or reality is used [P].
 (e) (189), the kernel decay. Announced for "A′ satisfying (77)". In Prop. 4 and (80), (77) is the complexified condition (3.5). (189) is a bound on the second derivative of the same analytic functional V, of the same type as (186), which is obtained by Cauchy from Prop. 4 [I: the announced (189) is read on the same complex set as (186); this adds nothing to A4's existing [R] status, because a real-only (189) proof would also pass through complex τ-circles as in (185)].
 (f) Lemma 2.1, Prop. 2, (181), and 𝔇. Lemma 2.1 and Prop. 2 are decay bounds of the background propagators H, H_0, G̃; they do not involve B [I: B enters (182)–(184) only through the argument 𝒜_0 + H_0B of δ²V/δA′² and 𝔇, as MA2_VERIFY l. 33 already records]. 𝔇 = δD/δA′: D is constructed on complexified configurations (p. 287: "We consider configurations A′, X with values in the complexified Lie algebra g^c"), with (55) |D(A′)| ≤ 4C_2|A′|²_{(−1)} and the derivative bound (73) on that space [P for (55) on the complex set; (73) read as on the same space, I]. (181) is gauge covariance; p. 307 extends it to the complex set "by analyticity" [P].
With (a)–(f), the chain "(189), (188), Lemma 2.1, Prop. 2, (181) ⇒ (190)" runs verbatim at complex B ∈ Ball_R. ∎
Resulting constant: (190) at complex B with the printed O(1); no shrink of the ball; no extra factor.

4.2 Why route (i) alone does not work, and the fallback it gives [P].
 - The maximum principle cannot bound an analytic function on a complex set from its values on the real set alone. Example: f(z) = ε sin(z/ε²) is bounded by ε on R and of size ε·e^{R/ε²} at z = iR. Route (i) therefore needs SOME sup on the complex ball.
 - A sup without decay is printed: (187) at complex B gives |K_1(B)| = O(1)B_0C_4B_5ε_1 in operator norm (by (a)–(d) only, without (189)); and (19) at complex B gives |ℋ| = O(B_5ε_1) (Prop. 6). Cauchy from |ℋ| at radius ~C_1ε_1 gives |δℋ/δB| = O(B_5/C_1) = O(B_1B_3), with NO decay in d(y,y′). Decay is what (H−) needs (Schur test, MA2 §4.5).
 - Fallback (two-constants theorem). Let F be analytic on Ball_R, |F| ≤ M on Ball_R (no decay), and |F| ≤ m at real B (with decay). Fix B = X + iY ∈ Ball_{ρR}, ρ < ½, Y ≠ 0, Ŷ := Y/‖Y‖_∞. g(ζ) := F(X + ζŶ) is analytic on the disc |ζ| < (1−ρ)R (since |X(b)| < ρR), and real ζ gives real arguments. Two-constants on the upper half-disc: |g(ζ)| ≤ m^{1−ω}M^{ω}, ω(ζ) = harmonic measure of the semicircle. Map z = ζ/((1−ρ)R), w = ((1+z)/(1−z))²: half-disc → upper half-plane, diameter → (0,∞), semicircle → (−∞,0). At z = is: ω = arg(w)/π = (4/π)arctan s. Target s = ‖Y‖_∞/((1−ρ)R) ≤ ρ/(1−ρ).
  For ρ = ¼: s ≤ ⅓, ω ≤ (4/π)·0.32175 = 0.4097.
  With m = c ε_1e^{−⅛δ_0d}, M = c′ε_1: |F| ≤ c^{0.59}c′^{0.41}ε_1·e^{−0.59·⅛δ_0d} on Ball_{R/4}.
  So route (i) gives (190)-type bounds on Ball_{R/4} with the decay rate multiplied by 0.59 and the constant c^{0.59}c′^{0.41}. It needs only the REAL (190) and the printed complex operator bound (187). It is a fallback if reading (e) is refused for (189) but the real (190) is granted. Then the K_1 kernel bound is not O(ε_1)·(real decay) but O(ε_1)·(decay at 0.59 of the rate) — enough for the Schur test, with K(δ_0, d) evaluated at 0.59·δ_0/16.
 (num check, python -I inline, no file kept: (4/π)·atan(1/3) = 0.40966.)

## 5. What (H−) ⇒ (M-A) receives

5.1 The input used by SOURCES_MA2 §4.4 is (4.2): |K_1(B)(x,y)| ≤ c_Nε_1e^{−⅛δ_0d(x,y)} on the complex ball |B| < 2C_1ε_1, with K_1(B) = δℋ/δB(B) − δℋ/δB(0). By 4.1, (190) and its ε-small part (187)+(189) hold on Ball_R with the printed constants. So (4.2) holds on Ball_R with c_N = O(1)(B_0C_4 + C_2)B_5 (MA2_VERIFY correction) [P given 4.1].
5.2 A small correction to the MA2 Cauchy step [P]. MA2 §4.4 uses real |B| ≤ C_1ε_1 and a Cauchy circle of radius C_1ε_1 in B(y′). The circle then reaches |B(y′)| = 2C_1ε_1, the boundary of the OPEN ball (172). The Cauchy estimate needs the closed disc inside the domain. Use radius θC_1ε_1 with θ < 1; θ = ½ gives
  |δ²ℋ(x)/δB(y)δB(y′)| ≤ (2c_N/C_1)e^{−⅛δ_0d(x,y)}  at real |B| ≤ C_1ε_1.
So c_H gains a factor 2: c_H = O_{M,M_0}(1)·c_X·(c_1² + 2c_N/C_1)·K(δ_0,d)². The factor is absorbed in O(1). (C1) of MA2 is unchanged: M_0ε_k ≤ C_1ε_1.
5.3 Under the fallback 4.2 only (real (190) granted, reading 4.1(e) refused): the kernel bound holds on Ball_{R/4} = {|B| < ½C_1ε_1} with decay rate 0.59·⅛δ_0. Then: real points |B| ≤ ¼C_1ε_1, Cauchy radius ¼C_1ε_1, constant 4c′_N/C_1 with c′_N := c_N^{0.59}(O(1)B_0C_4B_5)^{0.41}; decay rate in (H−) becomes 0.59·δ_0/16; and (C1) tightens to M_0ε_k ≤ ¼C_1ε_1. C_1 is free (p. 305), so this is still satisfiable if MA2 (C1) is satisfiable [I, same caveat as MA2_VERIFY on C_1 freedom].
5.4 Chain after this file: B17 ⇐ (M-A) ⇐ (H−) ⇐ A4 (announced (189)) + A18 + (C1), (C2) of MA2. A19 is no longer an implicit input: it is PROVED rel. CMP 102 Prop. 4, Prop. 6, (55), (130), (182)–(188) [all printed on complex sets], plus the reading 4.1(e) of (189) [which only re-uses A4] and the B-independence 4.1(f) of the propagator lemmas [I].

## 6. A17 consumers

6.1 GGAIN (M_r), V-part: holds with r = 1 for Balaban's construction (Corollary 2.3), strict. Lemma G1(a) needs r < 1. Use C9′ (§2.4, domain constant ε̂_1 = 2ε_1, r = ½): same constant as GGAIN §4.1(a) with (1−r)^{−1} = 2, and χ_k unchanged. Or use C9 (cut at ε_1/2): same constant, changed χ_k.
6.2 GGAIN (M_r), P^{(k)}-part: needs only supp ⊂ {3e^{16κ_1}C_1g_k|B|_Y ≤ a_1}; holds by 2.3 + (1.20) under 3e^{16κ_1}C_1ε_1 ≤ a_1 [I that this is among Balaban's conditions].
6.3 Downstream: (M_r) ⇒ C_β, S_0 ⇒ (H-hist) as in GGAIN; no constant changes beyond (1−r)^{−1} = 2 already in GGAIN's formula.

## 7. Ledger (authoritative)

| item | claim | tag | basis |
|---|---|---|---|
| L1 | χ_k = Π over b ∈ T^{(k)} \ {b_0(c)} of χ(|B′(b)| < ε_1) | [P] | CMP 109 p. 266 (2.9), image |
| L2 | h vanishes off {b_0(c)}; B = remaining variables after eliminating B′(b_0(c)); B′ = CB | [P] | CMP 109 pp. 267–268, images |
| L3 | B′(b) = g_kB(b) on every cut bond (Lemma 2.2) | [P] given L1, L2 + reading "C = identity on remaining bonds" [I, confirmed by CMP 116 (2.3)] | §2.2 |
| L4 | CMP 116 writes χ^c_{k,P} as |B(b)| ≥ ε_1/g_k on the same bond set | [P] | CMP 116 p. 12 (2.3), image |
| L5 | A17: supp χ_k ⊂ {g_k|B|_Y < ε_1} for all Y; locally supp χ_{k,Y_0} gives it for all Y ∈ D | PROVED, r = 1, strict | L3 + reading R1 (sup norm per bond) [I] |
| L6 | The brief's route (bound on B′ by g_kB, (1.20)) proves the converse inclusion only | [P] | §2.1 |
| L7 | r < 1 for GGAIN by C9′ (domain ε_1/r, cut fixed, V_k unchanged) with the same G1 constant | [I] | §2.4; needs check that all ε_1-conditions of CMP 116–122 are upper bounds or γ ≪ ε_1 type |
| L8 | r < 1 by C9 (cut rε_1) | [P] as an inclusion; A13 for the changed χ_k still [R] | §2.4 |
| L9 | (172), (173), (182)–(190), Prop. 9 as quoted | [P] | CMP 102 pp. 305–309, images |
| L10 | Prop. 4, Prop. 6, (55), (80) are stated on complexified configurations | [P] | CMP 102 pp. 287, 290, 292–296 text |
| L11 | A19: (190) at complex B on |B| < 2C_1ε_1, printed constants, no shrink | PROVED rel. L10, (130), (182)–(188) [R CMP 102], reading 4.1(e) of (189) [I; adds nothing beyond A4], 4.1(f) B-independence [I] | §4.1 |
| L12 | Fallback without 4.1(e): kernel bounds on |B| < ½C_1ε_1, decay ×0.59, from real (190) + complex (187) | [P] two-constants, num 0.4097 | §4.2 |
| L13 | MA2 Cauchy radius must be < C_1ε_1 (open ball); θ = ½ gives c_N/C_1 → 2c_N/C_1 | [P] | §5.2 |

Not done: the full ε_1-condition audit for L7 (CMP 116 §2, CMP 119, CMP 122); the (C1), (C2) items of MA2 (HMINUSC brief, still undelivered); (189) itself (A4).
