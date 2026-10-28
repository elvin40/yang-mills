IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_I3_VERIFY: independent verification of SOURCES_T2_I3.md (item I3)

Date: 2026-10-28. Item I3, VERIFY. Status: complete (see Grades).
Firewall respected (no /tmp/sa_repo, no reports/SUSSMAN_ALPOGE_MAP.md). ONLINE_SWEEP §2 not read.

Read list. SOURCES_T2_I3.md (in full); SOURCES_T2_S123.md l. 60–110; BETA_FP_M.md l. 36–56; project definitions of 𝔅_f in U3_AW.md §1, U3_LEMMA51.md §2–3, U3_REPAIRS.md §3.1 (only the passages that define Q̃, D, Π); numerics/t2_i3_qflux_check.py. Balaban page images: CMP 109 PDF 4–6; CMP 98 PDF 6–7, 20; CMP 99 PDF 5, 7, 8; CMP 122 II PDF 26.

Tags: [P] proved here; [R] reduced to a named input; [I] inference not checked line by line; [V] checked on a Balaban page image or text layer (stated which).

Plan.
1. Check (1): the operator analyzed vs. the operator in 𝔅_f (Q̃_f, D_f, Π, normalizations).
2. Check (2): finite range and count of distinct entries.
3. Check (3): analyticity in f entry by entry (incl. g, g^{−1}, Federbush average, invertibility at f = 0).
4. Check (4): magnetic covariance vs CMP 99 (3.32), (3.34).
5. Check (5): one step → each of the j steps.
6. Check (6): the CMP 122 II (1.73)–(1.75) pointer.
7. Check (7): numerics rerun.
8. Grades (claims 1–17), summary, status of (I3).

## 1. Check (1): is the analyzed operator the one in 𝔅_f?

Project definition of 𝔅_f, read independently.
- S123 §2 (I1), l. 66: "𝔅_f = [[A_f, Q̃_f^†], [Q̃_f, 0]], A_f = Δ_{i−1}(fL^{−2}) + D_fΠD_f^*".
- U3_AW §1, l. 25–26: "𝔨_0(K): the O6 matrix 𝔅_{j−1}(K) = [[A, Q̃^†], [Q̃, 0]], A = ⊕_l Δ_{j−1}(k_l) + D_fΠD_f^*" and "fixed one-step vertices: the f^m coefficients of the one-step (0.4) linearization C_f and of the ghost term D_r(f)D_r(f)^†".
- U3_LEMMA51 §2.3, l. 52: "D_r the background-covariant gradient on gauge parameters λ with λ = 0 at the level-j sites (the residual gauge group of the composed averaging)".
- U3_REPAIRS §3.1, l. 145–147: "cv(ν) = L^{−2} Σ_l ν_l = L^{−2}⟨u, ν⟩, u := (1, …, 1)"; "Λ_gh := {ν : ⟨u, ν⟩ = 0} (λ vanishing on the coarse sites …), D := D_f|_{Λ_gh}, and D D^† = D_f Π D_f^*, Π := 1 − uu^†/N"; "Q̃(K) = Q(K) − K̂ Λ(K) … (either sign)".

Findings.
1a. Q̃_f. The project's Q̃_f is "the one-step (0.4) linearization C_f" at the constant-flux background, in midpoint coordinates (U3_AW §1). SOURCES_T2_I3 §3 defines Q̃_f as exactly this: d/dt of the midpoint coordinate of 𝔄(U_t), U_t the midpoint perturbation of U_0^φ. Same object [P: definitions match]. At f = 0, I rederived the reduction of (5.1)/(5.2) to Σ_x L^{−4}B([x,x′]) + λ(c_−) − λ(c_+), λ(y) = L^{−4}Σ_{x∈B(y)} mean_Γ B(Γ_{y,x}); the step uses Σ_ℓ w_ℓ = 1 (the −B(c) in each loop cancels the +B(c) of U(c)) and the bijection x ↦ x + Le_μ of B(c_−) onto B(c_+). This is the form "Q − K̂Λ (either sign)" of U3_REPAIRS §3.1 [P for the arithmetic; I did not reopen U3 (1.1) itself, so "exactly U3 (1.1)" is [I] at the level of that file's normalization of Q_L].
1b. D_f. Rederived: u_t = e^{itν}, U_0^{u_t}(b) = e^{itν(b_−)}U_0(b)e^{−itν(b_+)} = U_0^{1/2}·exp(it[Ad(U_0^{−1/2})ν(b_−) − Ad(U_0^{1/2})ν(b_+)] + O(t²))·U_0^{1/2}. Ad(e^{∓iθσ_3/2}) multiplies the charged (σ_+) component by e^{∓ieθ/2}. This is (3.3) [P]. It is the background-covariant gradient of U3_LEMMA51 §2.3 in midpoint coordinates.
1c. Π. In the umklapp basis ν_l = L^{−2}ν̂(k_l), the coarse-site value is L^{−2}Σ_lν_l. So ⟨u,ν⟩ = 0 iff ν vanishes on the coarse sites, and uu^†/N is the projection onto fields supported on the coarse sites (a delta comb on LZ⁴ has constant ν̂ over the umklapps). Hence Π = 1 − uu^†/N is multiplication by 1 − 1_{LZ⁴} in position space, as SOURCES_T2_I3 §3 states [P].
1d. Normalizations. None of the three sources puts a normalizing factor (no (QQ*)^{−1/2}, no Balaban R(U), no L-power rescaling of Q̃ beyond the unitary per-K map x_l = L^{−2}B̂(k_l)) into 𝔅_f. The per-K L^{−2} factors are a unitary change of coordinates (U3_REPAIRS §3.1: "This map is unitary"); they do not change kernel entries in position space. So SOURCES_T2_I3 §7 is right that the only inverse needed is 𝔅_f^{−1} itself, which is (I2) (O6, U3_REPAIRS §3; S123 l. 67), outside (I3) [P: by inspection of the definitions].
1e. Balaban's own gauge-fixing operator R(U) (CMP 99 (3.25), (3.26)) is not the project's; the derivation file treats it only in a remark tagged [I] and does not use it. Correct.

Verdict on (1): the operator analyzed is the one in 𝔅_f, all three pieces, with no hidden normalization. The [I] tag in SOURCES_T2_I3 claim 15 ("identification of conventions") can be removed for the definitions; what remains unchecked is only the project's umklapp code, which (I3) as a mathematical statement does not need.

## 2. Check (2): finite range and the count of distinct entries

Geometry, checked on CMP 109 p. 252 (PDF 4) [V: page image]: "For a point x ∈ B(y) we take a family G(y, x) of shortest contours with the initial point at y, and the final point at x"; contours of G(y,x) are built by "a permutation {π(1), π(2), …} of indices μ with nonzero numbers n_μ", taking |n_{π(1)}| bonds in direction sign n_{π(1)} e_{π(1)}, and so on; "[x, x′] denote a contour which is obtained by a parallel transport of c to the point x". The printed bound "|n_μ| ≤ L − 1/2" is as SOURCES_T2_I3 quotes it; for centered blocks of odd L it must mean |n_μ| ≤ (L−1)/2 [I: reading of a misprint; the numerics use (L−1)/2].

2a. Support of a row of Q̃_f [P]. A loop of (0.4) is Γ (inside B(c_−), since a monotone path between two points of a lattice box stays in the box), [x, x + Le_μ] (a straight segment from B(c_−) to B(c_+)), −Γ′ (inside B(c_+)), −c. Every bond of every loop has both endpoints in B(c_−) ∪ B(c_+). So the row of c is supported on bonds with both endpoints in the two blocks of c's endpoints. The correction "two adjacent blocks, not one" to S123 §2 (I3) is right.
2b. Count [P, with a remark]. B(c_−) ∪ B(c_+) has 2L⁴ sites. A bond with both endpoints there is determined by its lower endpoint and its direction, so there are at most 4·2L⁴ = 8L⁴ such bonds. SOURCES_T2_I3 writes "at most 2·4L⁴ + L". This is a valid upper bound. Its justification ("b lies in B(c_−) ∪ B(c_+) ∪ c") skips the L³ bonds in direction μ that cross from one block to the other (one per transverse position of x), but the lower-endpoint count covers them, so the stated number is still an upper bound (the "+L" is redundant). Coarse bonds: 4 directions per coarse site. Joint coarse translation invariance of a = Q̃_f/W (§4 below) then gives at most 4(8L⁴ + L) distinct (c, b) pairs per sector. Numerically, d = 4, L = 3: 459 support bonds per coarse bond (bound 651); d = 2, L = 5: 85 (bound 205) [V: numerics this session, t2_i3v_extra.py].
2c. D_f: (D_fν)(b) involves ν(b_−), ν(b_+) only (3.3) [P]. Π: diagonal [P]. D_fΠD_f^*: entries (b, b′) nonzero only if b, b′ share an endpoint that is not a coarse site [P]. Distinct reduced entries: D_f two values (+1, −1, §3 below); Π two values (0, 1), periodic under LZ⁴; D_fΠD_f^* finitely many (x ranges over a fundamental domain of LZ⁴ and its neighbours) [P].

Verdict on (2): confirmed, with the two-block correction already made by the derivation file and a cosmetic remark on the bond count.

## 3. Check (3): analyticity in f of every entry

3a. Background [P]. θ_b = (φ/2)(b_−∧e_μ). Plaquette (0,1) at x: θ_{x,0} + θ_{x+e_0,1} − θ_{x+e_1,0} − θ_{x,1} = −φx_1/2 + φ(x_0+1)/2 + φ(x_1+1)/2 − φx_0/2 = φ. Other plaquettes: 0. Link angles linear in φ = fL^{−2}.

3b. Loop-angle bound (3.1) [P]. Θ_ℓ = φA(ℓ) by abelian lattice Stokes. Each of the four pieces Γ, [x,x′], −Γ′, −c is monotone in each coordinate, so it crosses a horizontal ray {x_1 = h + 1/2} at most once; |winding| ≤ 4 on each unit square; winding vanishes outside the bounding rectangle of the projected two blocks, which has < 2L² unit squares. So |A| ≤ 8L², |Θ_ℓ| ≤ 8|f|. The bound is far from sharp: numerically max|A|/L² = 0.444 (L = 3, d = 2, 3, 4, μ in the flux plane), 0.111 (μ = 2), 0.560 (L = 5, d = 2) [V: numerics, t2_i3v_extra.py]. Only "≤ C|f|, C independent of L" matters.

3c. Lemma 5.1 (holonomy to first order) [P]. Rederived: U_t(b)^s = U_0^{s/2}e^{itsB}U_0^{s/2} (for s = −1 invert); e^{iY}T = Te^{iAd(T^{−1})Y}; T = e^{iβ_{ℓ,k}σ_3}; Ad(e^{−iβσ_3}) gives e^{−ieβ} on the charged component. Matches.

3d. Lemma 5.2 [P; V: page image]. CMP 98 p. 23 (PDF 7), (36): "∂Z(u,v)/∂v = g^{−1}(ad_{Z(u,v)})Y", for "Z(u,v) = log e^{uX}e^{vY}. (28)" (p. 22). (33): "g(z) = Σ_{n=0}^∞ (−1)^n/(n+1)! z^n = (e^{−z} − 1)/(−z) for z ≠ 0, g(0) = 1". (34): "g^{−1}(z) = 1/g(z) is an analytic function in a neighborhood of 0, more exactly for z ≠ 2kπi, k = ±1, ±2, …". I also rederived (36) at v = 0 from e^{−Z}∂_v e^{Z} = g(ad_Z)∂_vZ and e^{−Z}∂_v(e^{uX}e^{vY}) = Y. With uX = iΘσ_3: ad_{iΘσ_3}σ_+ = 2iΘσ_+, so the charged factor is g^{−1}(ieΘ) = ieΘ/(1 − e^{−ieΘ}), analytic for |eΘ| < 2π. The identity g^{−1}(−z)e^z = g^{−1}(z) is correct: g^{−1}(−z)e^z = z e^z/(e^z − 1) = z/(1 − e^{−z}).

3e. Prop. 5.3, closed form (5.1) [P]. Rederived step 3 from d/dt e^{A+tB}|_0 = [(e^{ad_A} − 1)/ad_A](B)e^A with A = iΘ̄σ_3, B = iY: factor (e^z − 1)/z = g(−z) at z = i ad_{Θ̄σ_3}, i.e. g(−ieΘ̄) on the charged component. This agrees with CMP 98 p. 23 (41) [V: page image]: "(1/i) log e^{iX+iY}e^{−iY} = g(−i ad_Y)X + O(|X|²)". Steps 5–6 (multiply by U_t(c) = e^{iθ^{tot}σ_3}e^{itX_c}, pass to midpoint form with Ad(e^{−iΦσ_3/2})) give e^{−ieΦ/2}[g(−ieΘ̄)Σ_ℓ w_ℓ g^{−1}(ieΘ_ℓ)X_ℓ + e^{ieΦ}X_c] on the charged component. This is (5.1). The structure matches Balaban's own linear form CMP 98 p. 36 (124) [V: page image], whose correction terms carry "g(−i ad_Y)g^{−1}(−i ad_{Y_x}) − 1", "g(−i ad_Y)g^{−1}(i ad_{Y_x})e^{−i ad_Y} − 1", "e^{i ad_Y} − g(−i ad_Y) Σ L^{−d}g^{−1}(i ad_{Y_x})", with the comment "the functions g(−z), g^{−1}(z), e^{iz} are equal to 1 for z = 0". All operators are functions of ad of torus elements, hence diagonal on (σ_+, σ_−, σ_3): no sector mixing; neutral entries f-independent. Independently confirmed numerically beyond the derivation file's range: other coarse-bond directions μ = 1 (d = 2, 3, 4), μ = 2 (d = 3, 4), L = 5 (d = 2), and f up to 0.3: max |FD − (5.1)| ≤ 1.2·10^{−14} [V: numerics, t2_i3v_extra.py].

3f. Prop. 5.4, analyticity of Q̃_f and a_f [P]. f enters (5.1) through: phases e^{−ieβ}, e^{±ieΦ/2} (entire); g(−ieΘ̄) (g entire); g^{−1}(ieΘ_ℓ) (analytic for |eΘ_ℓ| < 2π, guaranteed by 16|f| < 2π, i.e. |f| < π/8); W (entire, nowhere zero). Each entry is a finite sum. Cauchy estimates on |f| ≤ 3f_0/4 give the C³ bounds on |f| ≤ f_0/2. For complex f the principal-log language should be read as "the analytic continuation given by the closed form"; this is what Prop. 5.4 does in effect. Confirmed.

3g. Prop. 5.5, Federbush average (0.12) [P]. CMP 109 p. 253 (PDF 5) [V: page image]: "Σ_{j=1}^n (1/i) log U_jU^{−1} = 0. (0.10)". I rederived the linearized equation at a torus set: U_j(t)U(t)^{−1} = e^{iδ_jσ_3}e^{it(Ad(e^{iθ̄σ_3})X_j − Y) + O(t²)}, so Σ_j g^{−1}(i ad_{δ_jσ_3})(Ad(e^{iθ̄σ_3})X_j − Y) = 0; with g^{−1}(z) = g^{−1}(−z)e^z this is the displayed equation of SOURCES_T2_I3. The coefficient of Y in the charged sector is Σ_j g^{−1}(ieδ_j), which equals n ≠ 0 at f = 0 (invertibility at f = 0, the base point of the implicit function theorem). The bound Σ_{p≥1}|B_{2p}|/(2p)! ≤ 2ζ(2)/(4π² − 1) = 0.0855 < 0.09 checks, so |g^{−1}(z) − 1| ≤ |z| for |z| ≤ 1, and Re Σ_j g^{−1}(ieδ_j) ≥ n(1 − 4|f|) > 0 for |f| < 1/4 (with |δ_j| ≤ 2|f| from two monotone contours inside one block). Confirmed. The general axiomatic average is [R: CMP 109 (0.5)–(0.9)], whose analyticity is Balaban's assumption, quoted on the page image: "we assume that it is an analytic function having the following properties".

3h. Prop. 6.1, D_f, Π, D_fΠD_f^* [P]. Rederived: a_D(b, b_−) = e^{−ieθ_b/2}e^{−i(eφ/2)m_b∧b_−}, m_b∧b_− = −(1/2)b_−∧e_μ, θ_b = (φ/2)b_−∧e_μ: the exponent is −ieφ(b_−∧e_μ)/4 + ieφ(b_−∧e_μ)/4 = 0. Same for b_+. So the reduced kernel of D_f is ±1 for all f. Π: f-independent. Ghost term: phase identity W(x,y)W(y,z)/W(x,z) = exp(i(eφ/2)(x − y)∧(y − z)), checked by expanding (x − y)∧(y − z) = x∧y − x∧z + y∧z; for adjacent orthogonal bonds in the flux plane the factor is e^{±ieφ/8}; entire in f. For complex f, D_f^* should be read as the transpose with complex conjugation applied only to the f-independent reduced data (the Schwarz-reflection remark after Prop. 5.4 covers this). Confirmed.

3i. Invertibility at f = 0 of every normalization. There are no normalizations in 𝔅_f (§1d). The only denominators in the entries are g(z) in g^{−1}(z) = 1/g(z), with g(0) = 1 (CMP 98 (33)), and Σ_j g^{−1}(ieδ_j) = n at f = 0 for Federbush's average (3g). Both are sourced and nonzero at f = 0 [P]. Invertibility of 𝔅_0 itself is (I2), sourced to O6 (U3_REPAIRS §3; S123 l. 67); it is not part of (I3). Balaban's R(U) would need an f = 0 lower bound ("Assuming some regularity of the configuration U it can be easily shown that the operator Δ′_a is positive. This implies positivity of the operators G′, Q′G′²Q′*, hence the existence of the operator R", CMP 99 p. 395 [V: page image]); it is not used, as the derivation file says.

Verdict on (3): confirmed, every entry, radius π/8 for (0.4)/(42) and min(π/8, 1/8) for (0.12) with Federbush's average.

## 4. Check (4): magnetic-translation covariance vs CMP 99 (3.32), (3.34)

Balaban, checked on the page images [V: page image]. CMP 99 p. 395 (PDF 7): "The matrices in the definitions (3.19) transform as follows R(U^u(Γ^{(j)}_{y,x})) = R(u(y))R(U(Γ^{(j)}_{y,x}))R(u^{−1}(x)), hence (Q′_j(U^u)R(u)λ)(y) = R(u(y))(Q′_j(U)λ)(y), (3.32)". CMP 99 p. 396 (PDF 8): "Finally inspecting the definitions of the averaging operators Q_j(U) for gauge fields we can see that the equalities (3.32) hold again. This implies the transformation laws for the operators Δ_a and G: Δ_a(U^u) = R(u)Δ_a(U)R(u^{−1}), G(U^u) = R(u)G(U)R(u^{−1}). (3.34)". The (3.34)-on-p.-396 correction stands.

What (3.32)/(3.34) give and do not give. They are gauge covariance only, and (3.32) as printed is for Q′_j on gauge parameters (0-forms); for gauge fields Balaban states covariance by "inspecting the definitions", without a displayed formula. They say nothing about translations. Magnetic covariance needs both. The derivation file does not lean on (3.32)/(3.34) as a proof. It proves the nonlinear covariance directly from (0.4), (0.6), (0.12) in Lemma 4.1 and cites (3.32)/(3.34) only as the analogue. This is the right structure.

4a. Lemma 4.0 [P]. Rederived: θ_{b−a} = θ_b − (φ/2)(a∧e_μ); the gauge function α_a(x) = −(φ/2)(a∧x) adds α_a(b_−) − α_a(b_+) = (φ/2)(a∧e_μ). So 𝔐_aU_0 = U_0. The fluctuation phase β = (α_a(b_−) + α_a(b_+))/2 = α_a(m_b) by linearity. Confirmed.
4b. Lemma 4.1 [P]. (i) Translations by LZ⁴ map blocks, contour families and transported segments to themselves (CMP 109 p. 252 definitions are relative). (ii) Every loop of (0.4) starts and ends at c_−, so U^u(ℓ) = u(c_−)U(ℓ)u(c_−)^{−1}; the principal log commutes with conjugation; exp(iAd(u)Z)u(c_−)U(c)u(c_+)^{−1} = u(c_−)e^{iZ}U(c)u(c_+)^{−1}. For (0.12), (0.6) "M({uU_jv}) = uM({U_j})v" [V: page image, CMP 109 p. 253] gives U^u(y,x) = u(y)U(y,x)u(x)^{−1}, and the loop is again based at c_−. Confirmed. (iii) For the coarse lattice I checked that Lemma 4.0's computation needs only that Ū_0 is torus-valued and 𝔐^c_a-invariant (left angle + right angle = Φ_c by invariance, left − right = 2α_a(m_c)); both hold by (iii). In fact Ū_0 is exactly the coarse symmetric-gauge field (§5a below), so Lemma 4.0 applies verbatim.
4c. Corollary 4.2 [P]. Differentiating 𝔄(𝔐_aU_t) = 𝔐^c_a𝔄(U_t) at t = 0 gives Q̃_f𝔪_a = 𝔪^c_aQ̃_f. Confirmed.
4d. Canonical form [P, rechecked here]. From Q̃_f𝔪_a = 𝔪^c_aQ̃_f, comparing kernels: Q̃_f(c + a, b + a) = exp(−i(eφ/2)a∧(m_c − m_b))Q̃_f(c, b) (I used α_a(m_b + a) = α_a(m_b) since a∧a = 0). And W(x + a, y + a)/W(x, y) = exp(i(eφ/2)(x∧a + a∧y)) = exp(−i(eφ/2)a∧(x − y)). So a = Q̃_f/W is invariant under joint coarse translations. This is U3_LEMMA51 Lemma 3.1's conclusion; the derivation file's tag [R + P] is accurate, and the step it needs is proved. Numerically the defect is ≤ 7.6·10^{−16} (d = 4) and ≤ 1.9·10^{−16} (d = 2) [V: rerun this session, §7].
4e. D_f commutes with fine magnetic translations, Π only with coarse ones (Π singles out LZ⁴) [P].

Verdict on (4): confirmed. The covariance is proved from the definition of the averaging, not from (3.32)/(3.34); the citation of (3.32)/(3.34) is accurate as an analogue.

## 5. Check (5): from one step to each of the j steps

Balaban: CMP 99 p. 393 (PDF 5) [V: page image]: "They are compositions of j one-step averaging operators Q_j(U) = Q(Ū^{j−1})·…·Q(Ū)Q(U), (3.15) where Q(V) is given by the explicit formula (124) in [5]." So the j-step linearization is the composition of one-step linearizations at the successive averaged backgrounds. The quote is accurate.

The point to check. Corollary 7.2 applies Theorem 7.1 at step i with fine background "the constant-flux field V_{f_{i−1}} up to a gauge", and cites (I1) (BETA_FP_H Fact 1.1) for this. Theorem 7.1 is proved only for the symmetric-gauge background U_0^φ. So one needs: the background of step i + 1 (the averaged field Ū_0 of step i) is the symmetric-gauge constant-flux field of the next level, up to a gauge that does not spoil the reduced kernels. I prove this directly; it removes that part of the reliance on (I1).

5a. Lemma V1 (the averaged background is exactly symmetric-gauge) [P for (0.4) and for (0.12) with Federbush's average]. Let Ū_0 = 𝔄(U_0^φ), φ = fL^{−2}. Then Ū_0(c) = exp(iΦ_cσ_3) with Φ_c = (f/2)(c′_−∧e_μ), c′_− := c_−/L. That is, Ū_0 is the symmetric-gauge field with flux f per coarse plaquette, in coarse units, with no gauge transformation.
Proof. All loop holonomies are torus elements, so Z_c is the weighted mean of loop angles, and Φ_c = Σ_ℓ w_ℓΘ_ℓ + θ(c), where θ(path) := Σ_k s_kθ_{b_k}. Abelian: Θ_ℓ = θ(Γ) + θ([x,x′]) − θ(Γ′) − θ(c). With Σw_ℓ = 1 the θ(c) terms cancel and Φ_c = L^{−4}Σ_n [m(c_−, n) + θ([c_− + n, c_− + n + Le_μ]) − m(c_+, n)], where n runs over the centered offsets |n_ν| ≤ (L−1)/2 and m(z, n) := mean_{Γ∈G(z,z+n)} θ(Γ). For a path from z with steps s_ke_{ν_k} starting at z + p_k, θ = Σ_k (φ/2)s_k(z + p_k)∧e_{ν_k} = (φ/2)z∧n + κ_Γ, κ_Γ independent of z (the family G(z, z+n) is a translate of G(0, n)). So m(z, n) = (φ/2)z∧n + κ(n). Summing over the centered offsets, Σ_n z∧n = 0. Hence L^{−4}Σ_n m(z, n) = L^{−4}Σ_nκ(n) does not depend on z, and the m-terms cancel between c_− and c_+. The segment term is Σ_{k=0}^{L−1}(φ/2)(c_− + n + ke_μ)∧e_μ = L(φ/2)(c_− + n)∧e_μ, whose block mean is L(φ/2)c_−∧e_μ = (φL²/2)c′_−∧e_μ = (f/2)c′_−∧e_μ. For (0.12) with Federbush's average, M of a torus set is the torus element with the mean angle (SOURCES_T2_I3 Prop. 5.5 proof, rechecked: Σ_j(θ_j − θ̄) = 0), so the same computation applies. ∎
Numerical check: max |Φ_c − (f/2)(c′_−∧e_μ)| and the off-torus part of Ū_0 are ≤ 5.6·10^{−17} over 3^d coarse sites × d directions, f = 0.37, (d, L) = (2, 3), (2, 5), (3, 3) [V: numerics this session, numerics/t2_i3v_bgcheck.py].

5b. Consequence. Start at level 0 with U_0^φ, φ = fL^{−2j} per fine plaquette. By induction with Lemma V1, the fine background of step i is exactly U_0^{φ_i} in level-(i−1) units with φ_i = f_iL^{−2}, f_i = fL^{−2(j−i)} [P]. So Theorem 7.1 applies verbatim at every step; the "up to a gauge" clause and the gauge-invariance argument in the proof of Corollary 7.2 are not needed (they are correct but superfluous). The constants: Theorem 7.1(d) bounds hold for |f_i| ≤ f_0/2 with C_m(L, θ, k) a sup over that disc, and |f_i| ≤ |f|; so they hold for every i ≤ j with the same constants [P]. The rescaling to level-i units relabels sites and changes no entry [P].
5c. What still rests on (I1). Only the exactness of the recursion Δ_i(f) = T_f[Δ_{i−1}(fL^{−2})] (the composition structure of CMP 99 (3.15) in the project's stationary-value form). That is part of S123 Prop. 2.1, not of (I3). For (I3) as a statement about the fixed vertices at each step, no input beyond the definitions is needed.

Verdict on (5): confirmed, and strengthened: Corollary 7.2 holds as [P] for the fixed vertices of every step, without (I1).

## 6. Check (6): the CMP 122 II (1.73)–(1.75) pointer

CMP 122 II p. 380 (PDF 26), read on the page image [V: page image]: "|T′_k(X,(U,J))F| = |T′_k(X,(U,0))e^σF| ≤ T′_k(X,(U,0))|e^σF| ≤ (T′_k(X,(U,0))1) sup e^{|σ|}|F|, (1.73)"; "|T′_k(X,(U,J))1| = |T′_k(X,(U,0))e^σ| ≥ T′_k(X,(U,0))e^{−2|σ|} ≥ (T′_k(X,(U,0))1)e^{−2 sup|σ|}, (1.74)"; "where σ is the small term of the first order in A′, J, and F is a function of the integration variables in the integral (1.71)"; "|(T′_k(X,(U,J))1)^{−1}T′_k(X,(U,J))F| ≤ e^{3 sup|σ|} sup|F|. (1.75)". The surrounding text continues with large-field characteristic functions χ_j(P_j), χ_j^c(Q_j) and Wilson-action bounds.

These are positivity bounds for the large-field integration operation T′_k: a normalized expectation is bounded by sup|F|. They contain no averaging operator, no background, and no kernel entry. The derivation file's quotes match the image (its (1.74) quote elides the middle term with "…", which is harmless). The judgment that the pointer carries no information on the f-dependence of Q̃_f is correct [V: page image]. The answer to the pointer: irrelevant to (I3); (I3) rests on CMP 109 (0.4)/(0.12), CMP 98 (33), (34), (36), (41), and the constant-flux background.

## 7. Check (7): numerics

Rerun. numerics/t2_i3_qflux_check.py was rerun unchanged on the Mac, from a scratch directory /tmp/i3v_rerun so that the existing JSON files were not overwritten. d = 2, L = 3: 1.1 s. d = 4, L = 3, 40 of 459 bonds: 82.8 s.
Code review [I: read line by line, not formally tested]. The script builds the loops of (0.4) as g1 + [x, x + Le_μ] + rev(g2) + (−c) with weight L^{−d}/(|G||G′|), takes the principal SU(2) log of each holonomy, forms exp(iZ)U(c), and reads off the midpoint coordinate by conjugating with Ū_0^{−1/2}. This is (0.4) as printed (CMP 109 p. 253). The closed form is coded independently of the FD path. The FD-vs-closed-form comparison is therefore a genuine test of (5.1).

Results of the rerun [V: numerics this session].
- (i) max |FD − (5.1)|: d = 2: ≤ 1.63·10^{−15}; d = 4: ≤ 4.16·10^{−15} (at f = 0). Matches the file (≤ 1.7·10^{−15}, ≤ 4.2·10^{−15}).
- (ii) sector mixing 0; neutral drift ≤ 1.3·10^{−13} (d = 2, f = 0.1), ≤ 6.8·10^{−14} (d = 4). Antilinear part: d = 4 exactly 0; d = 2 up to 2.8·10^{−17} (at f = 0 and f = 0.1). The file reports "≤ 4.3·10^{−19}"; the correct maximum over both runs is 2.8·10^{−17}. The difference is cosmetic (rounding level either way). Also, the file reports neutral entries "constant in f to ≤ 6.8·10^{−14}"; in d = 2 the rerun gives 1.3·10^{−13}. Also cosmetic.
- (iii) covariance defect: d = 2 ≤ 1.94·10^{−16}; d = 4 ≤ 7.63·10^{−16}. Matches.
- (iv) d = 4: first difference 3.0864·10^{−2}, second difference 3.4315·10^{−3} at h = 0.01 and 0.02; d = 2: 5.5556·10^{−2}, 5.1212·10^{−2}. Matches.
New checks (numerics/t2_i3v_extra.py, 47.9 s; numerics/t2_i3v_bgcheck.py, < 1 min).
- Closed form (5.1) vs FD for coarse directions not covered by the file: μ = 1 (d = 2, L = 3; d = 2, L = 5; d = 3, L = 3; d = 4, L = 3, 12 bonds), μ = 2 (d = 3; d = 4, 12 bonds), μ = 0 at L = 5 (d = 2), f ∈ {0.05, −0.1, 0.3}: max error ≤ 1.16·10^{−14}.
- Loop areas: max|A(ℓ)|/L² ≤ 0.56 in all cases (bound used: 8).
- Support sizes: 459 (d = 4, L = 3), 117 (d = 3, L = 3), 85 (d = 2, L = 5), all below 8L^d + L.
- Averaged background equals the coarse symmetric-gauge field to ≤ 5.6·10^{−17} (§5a).
Scope. Numerics cover (0.4) only, L ∈ {3, 5}, d ≤ 4, a subset of bonds in d = 4. They test the closed form and covariance, not the radius of analyticity.

## 8. Status of (I3) and ledger of this file

Can (I3) move from [I]? Yes, to [P] for the averaging the project uses (CMP 109 (0.4)) and for (0.12) with Federbush's average (0.10). Suggested tag for S123 §2 (I3): "[P: SOURCES_T2_I3 Thm 7.1, Cor. 7.2; SOURCES_T2_I3_VERIFY Lemma V1]", with "finite range (one block)" replaced by "finite range (two adjacent blocks)". For a general average with Balaban's axioms: [R: CMP 109 (0.5)–(0.9), analyticity of M is Balaban's assumption]. For the single-loop average (42) of CMP 98, Lemma V1 is not proved here; Corollary 7.2 then needs the derivation file's gauge-invariance argument and the background part of (I1) [R: S123 (I1)]. The project does not use (42).
What (I3) does not cover (unchanged): the input block Δ_{i−1}(f_{i−1}), the exactness of the recursion (I1), invertibility (I2), the base (I4). None of these was part of the brief.

Ledger of this file.
- V-a. 𝔅_f in S123/U3_AW/U3_LEMMA51/U3_REPAIRS is [[Δ_{i−1} + D_fΠD_f^*, Q̃_f^†],[Q̃_f, 0]] with Q̃_f the linearized (0.4), D_f the midpoint covariant gradient, Π = 1 − 1_{LZ⁴}; no normalizing factors [P, §1].
- V-b. Rows of Q̃_f lie on bonds with both endpoints in B(c_−) ∪ B(c_+); ≤ 8L⁴ bonds [P, §2].
- V-c. (5.1), (5.2) rederived; all entries analytic on |f| < π/8 ((0.4)), min(π/8, 1/8) ((0.12), Federbush) [P, §3; V: CMP 98 (33), (34), (36), (41), (124) and CMP 109 (0.4), (0.6), (0.10) on page images].
- V-d. Magnetic covariance proved from the definitions; (3.32)/(3.34) quoted correctly, used only as analogue [P, §4; V: CMP 99 pp. 395–396 page images].
- V-e. Lemma V1: the averaged background of (0.4) is exactly the coarse symmetric-gauge field with flux f [P, §5a; V: numerics t2_i3v_bgcheck.py]. Hence (I3) at each step needs no input [P, §5b].
- V-f. CMP 122 II (1.73)–(1.75) irrelevant to (I3) [V: page image, §6].
- V-g. Numerics reproduced; extended to μ = 1, 2, L = 5, d = 3, f = 0.3 [V: numerics this session, §7].
- V-h. The misprint "|n_μ| ≤ L − 1/2" read as (L−1)/2 [I].
- V-i. "At f = 0 equals U3 (1.1) exactly": arithmetic [P]; the normalization of U3 (1.1) itself not reopened [I].

## Grades

1. CMP 122 II (1.73)–(1.75) carry no f-information: CONFIRMED (page image PDF 26).
2. Balaban quotes: CONFIRMED (CMP 109 PDF 4–6, CMP 98 PDF 6–7 and 20, CMP 99 PDF 5, 7, 8 on page images; (114), (117) not reopened, as the file states).
3. Symmetric-gauge background, angles linear in f, plaquette angle φ: CONFIRMED.
4. |Θ_ℓ| ≤ 8|f|: CONFIRMED (numerically max|A|/L² ≤ 0.56, so the bound is loose).
5. Lemma 4.0: CONFIRMED.
6. Lemma 4.1: CONFIRMED (proved from (0.4), (0.6), (0.12); (3.32)/(3.34) only as analogue).
7. Corollary 4.2: CONFIRMED.
8. Canonical form A = W·a: CONFIRMED (phase identity rederived, §4d).
9. Finite range, two blocks: CONFIRMED.
10. Lemmas 5.1, 5.2: CONFIRMED.
11. Prop. 5.3, closed form (5.1)/(5.2): CONFIRMED (rederived; numerics extended to μ = 1, 2, L = 5, f = 0.3).
12. Prop. 5.4: CORRECTED. Analyticity and C³ bounds hold as stated. The count justification "b lies in B(c_−) ∪ B(c_+) ∪ c, at most 2·4L⁴ + L bonds" omits the L³ inter-block bonds; correct justification: bonds with both endpoints in the 2L⁴-site union, ≤ 8L⁴. The stated number 4(8L⁴ + L) remains a valid upper bound.
13. Prop. 5.5: CONFIRMED (linearized Federbush equation rederived; general average R: CMP 109 (0.5)–(0.9)).
14. Prop. 6.1: CONFIRMED (phase cancellation for D_f and e^{±ieφ/8} for the ghost term rederived).
15. Theorem 7.1, Corollary 7.2: CONFIRMED, and strengthened: the [I] on conventions can be dropped (§1), and Corollary 7.2 does not need (I1) for (0.4)/(0.12) by Lemma V1 (§5).
16. Numerics: CORRECTED. Reproduced except two cosmetic figures: the antilinear residue reaches 2.8·10^{−17} (d = 2), not ≤ 4.3·10^{−19}; the neutral drift reaches 1.3·10^{−13} (d = 2, f = 0.1), not ≤ 6.8·10^{−14}. Both are rounding level, so no conclusion changes.
17. No conflict with d_1 = −0.256: CONFIRMED (I3 changes no f = 0 object; the ym_oneloop.py link stays [I], as the file says).

SUMMARY: 15 CONFIRMED, 2 CORRECTED, 0 UNSUPPORTED; verdict: (I3) holds as stated (two-block range) and moves from [I] to [P] for Balaban's (0.4) and for (0.12) with Federbush's average, at every step i ≤ j with i- and j-independent radius and constants, and with no reliance on (I1) for the fixed vertices.

STATUS: COMPLETE
