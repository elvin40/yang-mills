# SOURCES_FX_O23 — R-denominators (O2) and large-field source bound (O3)

Status: in progress (2026-10-27).

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
