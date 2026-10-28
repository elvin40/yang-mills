# SOURCES_FX_O23 — R-denominators (O2) and large-field source bound (O3)

Status: complete (2026-10-27). O2 closed, O3 closed, new O4 open; see §7.

## 1. Inputs read so far [V = read in this session]
- SOURCES_FX §4–§6 [V]: O2 = FX §6.3(b) open item (FX-D); O3 = FX §6.3(a) per-plaquette source bound.
- SOURCES_FX_VERIFY V3, V5, V7 [V]: O3 flagged UNSUPPORTED; suggested argument |e^{−(1+ζ)S}| ≤ e^{−(1−r)S}. Fallback Gevrey loss ≤ (k!)^{2/3} from (1.88).
- SOURCES_D3 l. 130–140 [V]: Lemma D3.1; τ(Y) = c_τ r/(E_0|Y|), |Y| ≤ (100MR_m)^4. This is the only source of the R̄_m^{−4} loss.
- SOURCES_D3W8 §1 [V]: source weight d_S with |d_S| ≤ 2r and |g_k²d_S| ≤ 2γ²r; covariance C_f; positivity domination (1.4) for real and complex f.
- SOURCES_D3R §1.4 [V, found while reading]: this is already the O3 argument for real f. Weight lower bound w″_k ≥ (1 − θ)/(g″_k)², θ = γ²δ_r ≤ 5γ²r; positivity split; γ_0 → γ_0(1 − θ).
- Normalization fact used below: in the D3W8 normalization the source enters ADDITIVELY in the weight, w = g^{−2} + d_B + d_S, |d_S| ≤ 2r. So the per-plaquette change of the action is |d_S|·P_p ≤ 2r·P_p. In absolute size this is O(r) per plaquette, since P_p ≤ O(1). In relative size it is O(γ²r)·(g^{−2}P_p). The VERIFY worry ("O(|ζ|g^{−2}) per plaquette") applies only if the source multiplies the full weight; then the relative route below is the correct one. The relative route works in both normalizations.

## 2. CMP 122 II pp. 377–381 re-read on page images [V]
- p. 377 (1.70) [image]: before the R-operation Balaban "add[s] all the missing terms with localization domains intersecting the domain Z, more exactly we add these terms to complete the effective action, and we subtract them from the remaining expression." The subtracted pieces go into V(Y, U_k) with bounds (1.68) |V(Y)| ≤ α exp(−(1+2β)κd_{k,Z}(Y)) and (1.69). (1.70) has exp A′_k(1/(g_k(·))², U_k) over the whole lattice, and inside the large-field integral the terms "+E_k(Z) + (−½d(g)log g_k^{−2} + log σ_0)|B_0\T_0| − E_k(Λ)".
- p. 378 [image]: "E_k(Z) denotes the sum of normalization terms and vacuum energy terms with localizations intersecting the large field domain Z." The δ-function removal is an "equivalence" (reversed Faddeev–Popov), not a division.
- (1.71)–(1.72) [image p. 378–379]: T′_k(X) = (2^d d!)^{−1} Σ_{{Ω′_j, Z_j}, r} ∫dB … exp[−½⟨DH B, ζDH B⟩ − A((g″_k)^{−2}ζ_1, U″_{k+2}) + V(X^∼) + E_k(X) + (…)|…| − E_k(Λ ∩ X)]. Rρ_k = Σ_{Z_k}Σ_{{Y_i}} χ_k(…)(Σ T″_k(Z_k)) exp A′_k · Π_i χ^c_k(Y_i^{∼−6})χ_{k,Λ_i}χ_iδ_{G_i}T′_k(Y_i) · {Σ_n Σ_{{X_j}} Π_j T′_k(X_j) exp Σ_Y V(Y, U_k)}.
- FINDING (load-bearing for O2): in the implemented R-operation of CMP 122 II there is NO division by an f-dependent integral ∫dV_{Z′}ρ(Z″, V). The "denominator" of the heuristic (0.3) is realized as (a) the small-field action A′_k completed over Z (local terms, added and subtracted), and (b) the subtracted local normalization and vacuum-energy terms E_k(Λ ∩ X) in the exponent of T′_k(X). CMP 122 I p. 177 [V] says the same in words: the denominators are "parts … localized in neighborhoods of the domains Z′ … determined by small field effective actions only." So log(denominator) = Σ local small-field terms holds BY CONSTRUCTION, not by a new cluster expansion.
- p. 380 (1.73)–(1.75) [image]: (1.73) is an upper bound by positivity, valid for any σ. (1.74) is a lower bound |T′(X,(U,J))1| ≥ (T′(X,(U,0))1)e^{−2 sup|σ|}; (1.75) |(T′(X,(U,J))1)^{−1}T′(X,(U,J))F| ≤ e^{3 sup|σ|} sup|F|. Only (1.74)–(1.75) need σ small. "All the expressions in the definition (1.71), for the configuration U, are real, and the exponential density in the integral is positive."
- pp. 380–381 large-field factors [image]: χ^c_j(P_j) → exp(−γ_0(1/(2g_j²))(B_3^{−1}ε_j)²(LM_2R_j)^{−d}|P_j|) ("using Theorem 1 [15] and (71) [16]"; "γ_0 is an absolute positive constant (… we may take γ_0 = 1/2)"); χ^c_j(Q_j) → exp(−½γ_0(1/g_j²)(2δ_j)²(LM_2R_j)^{−2}|Q_j|) "by expanding the Wilson action locally … and using the positivity bound for the resulting quadratic form"; χ^{(j−1)c}(R_j) → exp(−γ_0(1/g_j²)δ_j²(LM_2R_j)^{−d}|R_j|). Combined per component: exp(−γ_0 min{½B_3^{−2}A_0², 2A_1², A_1²}p_0²(g_j)(d′_j(Z_j^{(i)}) + 1)) ≤ exp(−½γ_0A_1²p_0²(g_j)(d′_j + 1) − 2p_0(g_j)). Preparatory factors (p. 381): exp(−(1/4g_m²)B_3^{−2}½ε_m²) ≤ exp(−A_1²p_0²(g_j)); exp(−γ_0(1/g_m²)(2δ′_m)²) ≤ exp(−γ_0A_1²p_1²(g_j)); exp(−(1/4g_j²)(O(1)B_3M²)^{−1}ε_j²) ≤ exp(−A_1²p_0²(g_j)).
- Every large-field factor has the form exp(−c·(threshold)²/g_j² · volume), with the threshold (ε_j, δ_j) fixed by Balaban's g_j. Each comes from the Wilson action (positive, P_p ≥ 0) or from the positive quadratic form of the Gaussian. The per-site normalization budget is "O(1)log g_j^{−2}|Z_j|" with "volume for the L^{−j}-scale" (p. 380).
- (1.92), (1.97), (1.100): taken from SOURCES_FX_VERIFY V3 [V there, not re-imaged here]. (1.92) uses (1.73) only and bounds |σ| by 1 per component.

## 3. CMP 122 I (1.99)–(1.102), page image p. 201 [V] — where the R-denominator actually is
- (1.100) [image]: (R′ρ_k)(V_k) = Σ_{Z_k}(Σ T″_k(Z_k)) {Σ_n Σ_{{X_1,…,X_n}} χ_k(Ω_k^{∼4}) Π_{i=1}^n [ (1/N_i) Σ_{{Ω^c_{i,j}, Z_{i,j}}, G_i, T_i} χ_{k,Λ_i} · ( δ_{G_i}(V′_k)χ(Λ_i) exp[−g_k^{−2}A(ζ_i, U_{k,X_i}(V′_kV_{Λ_i}))] ) / ( ∫dV′_{Λ_i} δ_{G_i}(V′)χ(Λ_i) exp[−g_k^{−2}A(ζ_i, U_{k,X_i}(V′V_{Λ_i}))] ) · ∫dV_h … T_h(Z_{i,h}) ∫dV′ … χ′_i ] exp A″_k }.
- (1.101) [image]: χ(Λ_i) = χ({|(1/i)log V′(b)| < M_0ε_k for b ∈ Λ_i}). (1.102): ∫dV_k(R′ρ_k) = ∫dV_kρ_k. N_i = 1/(2^d d!) (gauge-graph average).
- So the R-denominator is real and explicit. It is one integral per renormalizable component X_i (diameter ≤ 100MR_k), over V′ on Λ_i = Λ ∩ X_i, of a SMALL-FIELD density (cutoff χ(Λ_i)). Its exponent is the bare Wilson action −g_k^{−2}A(ζ_i, ·) with a cutoff function ζ_i ∈ C_0^∞(X_i). It contains NO E-, R-, or B-terms. CMP 122 II's T′_k(X) contains this ratio, since T′_k(X) composes the (1.70) integration with "the integration together with the T_k-operation in (1.100) [IV]" (II p. 378 [V]).
- Correction to SOURCES_D3 l. 136–138: D3 modeled the denominator as D(f) = ∫χ_sf e^{A_k^f} over Y with the FULL effective action. The term σ_E = Σ_X[V(X; f+ζ) − V(X; f)] (E-, R-, B-terms) does not occur in Balaban's denominator. σ_E gave the dominant bound O(1)E_0(τ/r)|Y|. The completed small-field action A′_k and the E-terms sit in the NUMERATOR side (II (1.70)–(1.72), §2 above), where only upper bounds are needed.

## 4. O2 — the R-denominators keep radius c·r [proved for the (1.100) denominator, given two inputs marked below]

Set-up. Sourced weight w_k = g_k^{−2} + d_B + d_S (D3W8 §1.1). Complex perturbation f → f + ζ, ‖ζ‖_∞ ≤ τ, on ANY support (the whole polydisc, not one cube). D3: |δw_k| ≤ (3/2)τ (needs u_k holomorphic on a strip, SOURCES_HBETA §3(c), open and shared with D3).

Two admissible choices of the denominator density. (1.102) holds for any normalized density in V′_k on Λ_i. So the denominator is a choice.
- Choice A (f-independent). Use Balaban's own weight g_k^{−2} in numerator and denominator of the (1.100) ratio. The ratio is then independent of f. No radius condition at all. The difference between this density and the sourced small-field action on Λ_i is exp(−Σ_{p⊂Λ_i}(d_B + d_S)ζ_iP_p). It moves into the terms subtracted in II (1.70) (V(Y) of a component, bound (1.69) type). Size below.
- Choice B (sourced). Use w_k(f)ζ_i in both. Then σ = σ_W only: σ_W = −Σ_{p⊂Λ_i}δw_k(p)ζ_i(p)P_p(U_{k,X_i}).

Bound on σ_W (both choices need the same estimate).
 (a) On supp χ(Λ_i): |log V′(b)| < M_0ε_k. With the regularity of V_Λ, the plaquettes of U_{k,X_i} obey |U_p − 1| ≤ O(1)B_5M^6ε_k (II p. 378 [V], same reasoning). So P_p ≤ O(1)ε_k². [inference: the O(1) contains M_0 = O(1)B_5M^6; constants of [IV] (1.83) not re-read]
 (b) Number of scale-k plaquettes in Λ_i ≤ O(1)(100MR_k)^4, since X_i lies in a cube of side 100MR_k (CMP 122 I §1 (i) [V]).
 (c) ε_k = g_kp_0(g_k) (LEMMA_DPRIME_SWEEP l. 18, Balaban (2.4)–(2.5)). So
   |σ_W| ≤ (3/2)τ · O(1)M_0²g_k²p_0(g_k)² · (100MR_k)^4 =: τ·Φ(g_k).
 (d) Φ(g) = C(M)g²p_0(g)²R(g)^4 with p_0(g) = A_0(log g^{−2})^{p_0}, R ≤ C_R(log g^{−2})^{p_R}. Φ(g) → 0 as g → 0, so sup_{g ≤ γ}Φ(g) ≤ 1 for γ ≤ γ_Φ(M). This is uniform in k and ε, because only g_k ≤ γ is used.
 (e) Hence |σ_W| ≤ τ ≤ ½ for τ ≤ ½ (in particular for τ ≤ c·r with c ≤ ½, r ≤ 1). Lemma D3.1 gives |D_i(f + ζ)| ≥ ½D_i(f) for real f, and the ratio is holomorphic on the full polydisc of radius c·r. Choice A: the moved term has |Σ(d_B + d_S)ζ_iP_p| ≤ (sup|d_B| + 2r + τ)Φ-type bound ≤ O(1)·sup_{g≤γ}Φ(g) ≤ α. It is a small localized term, within (1.68)–(1.69).
Result. The (1.100) denominators are holomorphic and non-vanishing on a polydisc of radius c·r, with c independent of |Λ_i|, k, and ε. The R̄_m^{−4} loss of D3 disappears. Two reasons: σ_E is absent from the true denominator (§3), and the Wilson part is small in total because ε_k²·(100MR_k)^4 → 0 as g_k → 0.

Comparison with the route in the brief. The brief proposed log D = Σ local activities by the CMP 116 §2 cluster expansion. That route is not needed. It also does not apply directly: CMP 116 §2 expands Gaussian fluctuation integrals ∫dμ_C(B) with exponentially decaying C, but the (1.100) denominator is an integral over the scale-k variable V′ in axial gauge with a Wilson action, with no decaying covariance at that scale. [observation, not a proof that the route fails]

What the argument needs (precise list).
 (N1) The denominator integrand is positive for real f: Wilson weight real, χ(Λ_i) ≥ 0, δ_{G_i} ≥ 0 (D3 (ix); for choice B needs w_k(f) real for real f, true).
 (N2) Small field on supp χ(Λ_i): P_p ≤ O(1)ε_k² [inference (a)].
 (N3) |δw_k| ≤ (3/2)τ on the strip (SOURCES_HBETA §3(c), open, shared; under choice A not needed for the ratio, only for the moved term).
 (N4) g²p_0(g)²R(g)^4 → 0 as g → 0 (true for polylog p_0, R).

Remaining division NOT covered: II (1.103) divides by T′_k(Y_i)1 for the fixed non-renormalizable large-field components Y_i (SOURCES_FX_VERIFY V7 [V]). See §6 (new item O4).

Fallback if O2 were to fail (it does not need to, given N2–N4): D3 radius, Gevrey loss ≤ (k!)^{2/3} from (1.88) (SOURCES_FX_VERIFY V5).

## 5. O3 — the source inside the large-field operations T′ [proved for upper bounds; constants explicit]

Setting. Inside T′_k(X) ((1.71)) the configuration U is a regular G-valued configuration; Balaban moves the complex (U, J) dependence into σ (p. 379–380 [V]). So P_p(U) = Re tr(1 − U_p) ≥ 0 and P_p ≤ 2N on the integration domain. The sourced Wilson term is −Σ_p w(p)ζ_1(p)P_p(U) with w = (g″_k)^{−2} + (sourced deviation), and the same at each earlier scale h of the history inside T′ (T_h(Z_h ∩ X)).

Step 1 (pointwise domination, complex f). For f + ζ, ‖ζ‖ ≤ τ, the weight is w + δw, |δw| ≤ (3/2)τ. Since P_p ≥ 0 is real,
  |exp(−Σ_p(w + δw)ζ_1P_p)| = exp(−Σ_p Re(w + δw)ζ_1P_p).
Lower bound on the real weight: w ≥ (1 − θ)(g″)^{−2}, θ = γ²δ_r ≤ 5γ²r (D3R §1.4 [V], Lemma P3(b)). Relative size of δw: |δw|(g″)² ≤ (3/2)τγ² =: θ′ (uses (g″)^{−2} ≥ γ^{−2}, D3R §1.4). So
  Re(w + δw) ≥ (1 − θ_W)(g″)^{−2},  θ_W := θ + θ′ ≤ 5γ²r + (3/2)γ²τ ≤ 6.5γ²r for τ ≤ r.
This is the inequality |e^{−(1+ζ)S}| ≤ e^{−(1−r)S} of the brief, with the relative constant θ_W. It needs S ≥ 0, i.e. real G-valued U. It holds in both normalizations: if the source multiplies the full weight (change O(|ζ|g^{−2}) per plaquette), the relative constant is the same.

Step 2 (positivity split). Write the weight as (1 − θ_W)(g″)^{−2} + [Re(w + δw) − (1 − θ_W)(g″)^{−2}] with the bracket ≥ 0. The second factor has modulus in [0, 1]. Drop it. (1.73) needs only an upper bound by a positive operation. So
  |T′_{f+ζ}(X)F| ≤ T′_{dom}(X)|e^{σ}F|,
where T′_dom is (1.71) with (g″)^{−2} → (1 − θ_W)(g″)^{−2} in the Wilson term, and with the sourced Gaussian quadratic form dominated as in D3W8 §1.4 (factor (1 − τ_C), τ_C ≤ 3c_1c_Hγ²r).

Step 3 (Balaban's factors at the rescaled coupling). Every large-field factor of pp. 380–381 has the form exp(−c·t²/g_j²·|·|) with a threshold t ∈ {B_3^{−1}ε_j, 2δ_j, δ_j, ε_m, δ′_m} fixed by Balaban's g_j. The thresholds do not change. Only the prefactor of the positive action changes. Therefore each factor holds with γ_0 → γ_0′ := γ_0(1 − θ_W)(1 − τ_C) (Wilson-action factors need only (1 − θ_W); quadratic-form factors need both). The constant 1/4 in the preparatory factors (p. 381) changes the same way. p_0(g_j) itself is unchanged (it is a function of Balaban's g_j). Equivalent statement: the factors are those of coupling g_j²/(1 − θ_W), with thresholds kept.
 - Combined per-component factor: exp(−γ_0′ min{…}p_0²(g_j)(d′_j + 1)) ≤ exp(−½γ_0′A_1²p_0²(g_j)(d′_j + 1) − 2p_0(g_j)). Assuming min{…} ≥ A_1² (as Balaban's inequality implies), the last step needs ½γ_0′A_1²p_0(g_j)² ≥ 2p_0(g_j), i.e. p_0(g_j) ≥ 4/(γ_0′A_1²). Balaban needs p_0 ≥ 4/(γ_0A_1²); with γ_0′ ≥ γ_0/4 the sourced case needs p_0 ≥ 16/(γ_0A_1²). True for γ small, uniformly in j.
 - So the per-component factor exp(−½γ_0′A_1²p_0²(d′+1) − 2p_0(g_j)) and the per-cube factors exp(−p_0(g_j)) in (1.79) survive, with p_0 at Balaban's g_j and γ_0 → γ_0′ ≥ γ_0/4 (θ_W, τ_C ≤ ½).
Step 4 (normalizations and volume terms). Gaussian normalizations with the dominating weight change by (1 − θ_W)^{−n/2}(1 − τ_C)^{−n/2} = exp(O(θ_W + τ_C)n). Per L^{−j}-scale site this is O(γ²r) ≤ O(1)log g_j^{−2}, inside the per-site budget of (1.79) ("O(1)log g_j^{−2}|Z_j|", p. 380 [V]). The E-terms, V(X^∼), and normalization terms in the exponent of (1.71) are small-field local terms. Their source change is O(E_0τ/r) per cube, also inside the same budget, as in SOURCES_FX §6.3(a). (1.79) then holds with O(1) → O(1)(1 + O(γ²r) + O(τ/r)).
Step 5 (induction). The induction (1.80)–(1.88) and the condition after (1.94) use the constants only through "p_0 large and γ small enough" (SOURCES_FX_VERIFY V5 [V]). Replacing γ_0 by γ_0′ ≥ γ_0/4 and O(1) by 2·O(1) needs γ ≤ γ_1 for a fixed γ_1 > 0. ε enters nowhere: θ_W, τ_C are bounded by γ²r uniformly in k (inductive bound |g_k²d_S| ≤ 2γ²r, D3W8 §1.1, D3R §2.2(c)).

Conclusion O3: HOLDS for all upper bounds (1.73), (1.79), (1.89), (1.92), (1.97), (1.100), on the full polydisc ‖ζ‖ ≤ τ ≤ r. Constants: γ_0′ = γ_0(1 − θ_W)(1 − τ_C) ≥ γ_0/4, θ_W ≤ 6.5γ²r, τ_C ≤ 3c_1c_Hγ²r; conditions 6.5γ²r ≤ ½, r ≤ r_1 = 1/(6γ²c_1c_H), p_0(g) ≥ 16/(γ_0A_1²), γ ≤ γ_1. The large-field radius is c·r with c = 1 (any τ ≤ r), independent of |X|, k, ε. Note: this route does not use the volume budget for the Wilson-part source at all; FX §6.3(a)'s "O(|ζ|) per plaquette inside O(1)M^dR_j^{d+1}" route is not needed and would fail if the source scaled like g^{−2}.
Not covered by O3: the lower bound (1.74) and the normalized form (1.75). For complex f the phase exp(−iΣ Im(δw)ζ_1P_p) over a large-field region is not small, so T′_{f+ζ}(X)1 may vanish on the full polydisc. (1.92) does not use (1.74)–(1.75). (1.103) does: §6.

## 6. New item O4 — the normalized bracket (1.103) for fixed large-field components Y_i [open; fallback stated]
- (1.103) (SOURCES_FX_VERIFY V7 [V]): Π_i(T′_k(Y_i)1) · [Π_i(T′_k(Y_i)1)^{−1}T′_k(Y_i) exp Σ B′^{(k)}(X)], then a Mayer expansion of the bracket and exponentiation to B-terms near Y_i, which enter the action in (1.104). This divides by T′_k(Y_i)1, a LARGE-field integral over a component of unbounded size.
- For real f the division is safe (positivity). For complex f + ζ the source perturbation inside Y_i is σ_ζ = −Σ_{p⊂Y_i}δw ζ_1P_p with P_p ≤ 2N (not small). Lemma D3.1 then needs (3/2)τ·2N·#plaq(Y_i) ≤ ½. The radius is ∝ 1/|Y_i|: the same type of loss as D3, now with |Y_i| unbounded. The §4 mechanism (ε_k² smallness) does not apply, because Y_i carries large fields.
- What does hold [proved]: for a perturbation tζ_Δ supported in one set Δ, |⟨e^{−tX_Δ}⟩ − 1| ≤ e^{|t|B_Δ} − 1, with X_Δ = Σ_{p⊂Δ}δw ζ_1P_p/τ and B_Δ ≤ 3N·#plaq(Δ). So T′(Y_i)1 ≠ 0 for |t|B_Δ < log 2: the radius depends on |Δ|, not on |Y_i|. For n test directions with supports Δ_1, …, Δ_n, the bracket is holomorphic on Σ_i|t_i|B_{Δ_i} < log 2. Cauchy on this simplex gives |∂_{t_1}⋯∂_{t_n}| ≤ sup·(e/log 2)^n n! Π_i B_{Δ_i}.
- Fallback loss: one extra factor n! for the B-terms produced by (1.103), i.e. Gevrey order +1 on those terms only. Against the target this raises the worst order from 1 + η to 2 + η. Whether 2 + η is OS-admissible is the VERIFY §4 question (FX §6.3(c) already claimed 2 + η admissible; not re-checked here).
- Possible repairs (not attempted): (a) keep the Mayer links of B′ around Y_i un-exponentiated, as FX Step A does at the last scale, and carry them as part of the large-field geometry in later steps (needs a check that later steps accept non-exponentiated links); (b) use real-variable cumulant bounds instead of complex holomorphy (gives the same n!); (c) a decay estimate for the large-field measure inside Y_i (not available in Balaban).

## 7. Ledger
- O2 (R-denominators): CLOSED for the (1.100) denominator [proved given N1–N4; N2 is an inference from II p. 378 and [IV] (1.83), not re-read; N3 is the shared open HBETA §3(c) item, needed only for choice B]. Radius c·r on the full polydisc, independent of |Λ_i|, k, ε. Mechanism differs from the brief: the true denominator has no E/R/B-terms (D3 model corrected), and its Wilson part is O(τ g_k²p_0(g_k)²(100MR_k)^4) → 0. The CMP 116 §2 route is not needed. Choice A (f-independent denominator) removes the question entirely.
- O3 (source inside T′): CLOSED for every upper bound [proved, given D3R §1.4, D3W8 §1.4, and Balaban's factors as printed pp. 380–381]. Constants: γ_0 → γ_0(1 − θ_W)(1 − τ_C) ≥ γ_0/4, θ_W ≤ 6.5γ²r, τ_C ≤ 3c_1c_Hγ²r; p_0 ≥ 16/(γ_0A_1²); per-site normalization O(γ²r) inside O(1)log g_j^{−2}. Uniform in ε. Large-field radius c·r with c = 1.
- O4 (new, from this check): (1.103) divides by the large-field T′_k(Y_i)1. On the full polydisc it is not shown to be non-vanishing. OPEN. Proved substitute: holomorphy on Σ|t_i|B_{Δ_i} < log 2, giving a fallback loss n! (Gevrey +1) on the (1.103) B-terms only.
- Status of (FX2): radius c·r holds for R-terms, E-terms, and large-field numerators. The B-terms from (1.103) are the only exception (O4). The fallback (k!)^{2/3} of D3 is no longer needed for R-terms.
- Not re-read in this session: CMP 122 II (1.92), (1.100), (1.103) images (taken from SOURCES_FX_VERIFY V3, V7); [IV] (1.83) constant; CMP 122 I pp. 177–200 (preparatory steps; their factors are quoted on II p. 381 and are covered by Step 3).
