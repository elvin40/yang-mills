IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_D3 — the sourced large-field step (task D3)

Status: complete draft (2026-10-27), verified with corrections (SOURCES_D3_VERIFY, D3R, D3W8). Summary: §3.1.

## 0. Scope and inputs

Status: draft by Claude (Opus 5.5), unverified, 2026-10-27. Tags as in SOURCES_D2: [V] read in balaban/*.txt this session (OCR text, PDF image not re-read unless stated); [proved] complete argument here; [reduced] reduced to a quoted Balaban estimate with the change stated; [open] not done.

Inputs read: SOURCES.md §2, SOURCES_VERIFY.md §6, §9; SOURCES_D2.md §1, §5–§8; SOURCES_D2_VERIFY.md V7 and grades; SOURCES_D2C.md §2, §5–§6; SOURCES_HBETA.md; CMP 119 pp. 257–262 ((2.17)–(2.42)); CMP 122 I pp. 175–181, 193–200; CMP 122 II pp. 355–369, 379–381.

Balaban anchors used below [V, text file]:
 - (B1) CMP 119 (2.23): A_k = −A(1/g_k²(·), U_k) + E_k(U_k) + R_k(U_k) + B_k(U_k, A) − E_k (the last E_k is a constant that depends on the domain sequences).
 - (B2) CMP 119 (2.24) (sign fixed in SOURCES_VERIFY §6(a), PDF image): 1/g_j²(x) = 1/g_{j−1}²(x) − β_j(g_{j−1})φ_j(x), φ_j ∈ C_0^∞(Λ_j), φ_j = 1 on Λ_j^{~−1}. "Thus g_j(x) = g_j on the last domain."
 - (B3) CMP 119 (2.25) (PDF image, SOURCES_VERIFY §6(b)): E_k = Σ_j [E^{(j)}(Λ_j, g_{j−1}, U_k) − E^{(j)}(Λ_j, g_{j−1}, 1) − β_j(g_{j−1})A(φ_j, U_k)], with E^{(j)}(Λ_j, ·) = Σ_{X ∈ D_j, X ⊂ Λ_j^{(j)}} E^{(j)}(X, ·) by (2.26)–(2.27).
 - (B4) CMP 119 (2.30)–(2.31): R_k = Σ_j [R^{(j)}(Λ_j, U_k) − R^{(j)}(Λ_j, 1)], |R^{(j)}(X, (U,J))| ≤ g_j^{κ_0} e^{−κd_j(X)} (OCR of the exponent garbled; read from the next sentence "terms with bounds O(1)(L^jη)^4 g_j^{κ_0} exp(−κd_j(X)) … The sum over j is controlled by g_j^{κ_0}"). "This explains why coupling constant renormalization counterterms are not needed in (2.30)."
 - (B5) CMP 119 p. 262: "The constant E_k … is obtained by subtracting one-step vacuum energy expressions, generated in small field regions, from the initial constant E. This initial constant is defined in fact as a sum of all such expressions for all the lattices T^{(k)} as the small field regions."
 - (B6) CMP 119 (2.41)–(2.42): B-terms are localized on X ∈ D_j with X ∩ Ω_j ≠ ∅ and X ∩ Z̃_j ≠ ∅ (Z_j plus one layer), analytic on Ũ_j^c(X, α̃_0, α̃_1), bounded by B_0 e^{−κd_j(X)}; "it does not need any renormalization".
 - (B7) CMP 122 I p. 176: "We will prove that the densities are positive, and the integration domains … are nonempty, hence the denominators are positive, and the operation R is well defined." p. 177: the denominators are "the parts localized in neighborhoods of the domains Z′ … determined by small field effective actions only". Components of Z have size ≤ 100 MR_k (condition (i), p. 177).
 - (B8) CMP 122 I p. 194: Proposition 1, the background V_Λ minimizes the UNWEIGHTED A(U_{k,Z}(V_k)) over a gauge orbit; p. 196: gauge fixed by a tree graph T_0 with δ_{T_0}(V) (Faddeev–Popov, no weight).
 - (B9) CMP 122 II p. 356–357: denominators (1.2) with V = exp(ig_kB′); the Wilson terms "are multiplied by g_k^{−2}, so they are potentially dangerous"; (1.4)–(1.5): J_0 = 0 on Λ for the minimizer U_0, so the linear term reduces to a boundary term bounded in (1.6).
 - (B10) CMP 122 II p. 365, after (1.35) (OCR, superscripts lost; my reading): "We define also the new function 1/g_k(·)² = 1/g_k(·)² Z^c + 1/g_k² Z." The R operation resets the local coupling to the constant g_k on the renormalized region Z.
 - (B11) CMP 122 II p. 379–380, (1.73)–(1.75): for the large-field operation T_k(X) with a small complex term σ in the exponent, |T_k(X,(U,J))F| ≤ e^{3 sup|σ|} sup|F| · T_k(X,(U,0))1, because "All the expressions … for the configuration U are real, and the exponential density in the integral is positive." p. 380: normalization constants contribute "O(1) log g_j^{−2}|Z_j|" per large-field domain, and the large-field characteristic functions give factors exp(−γ_0 (ε_j²/g_j²)…|·|) "by the same positivity bound for the quadratic form".
 - (B12) CMP 122 II Theorem 1 (p. 355): "If the sequence of the effective coupling constants is contained in an interval ]0, γ] with a sufficiently small positive γ, then the effective densities ρ_k have the form, and satisfy all the conditions and bounds, described in Sect. 2 [III]." Consequence (0.1): χ exp(−A(U_k) − E_−|T_η|) ≤ ρ_k ≤ exp(E_+|T_η|).

## 1. Sourced inductive hypothesis with large-field regions

Coordinator update absorbed (SOURCES_D2C_VERIFY §1, line 27): (a) (I) is exact only with the ADAPTED gauge-fixing weight, because χ_k restricts the gauge components of B′ too; with the reference weight the error is O(exp(−cε_1²/g_k²)). (b) Freezing points S_X := points of X nearest to the barycentre b_X. D3 adopts (a) as the adapted LOCAL weight w_k(y) in every exponential gauge-fixing factor (items (vi), (viii)). D3 does not use S_X directly.

### 1.1 Data

Notation of SOURCES_D2 §1.1. Sequences {Ω_j}, {Λ_j}, {S_j}, large-field regions Z_j, operations T_k = Π T^{(j)} as in CMP 119 (2.17)–(2.22) [V]. Reference couplings g_j (f = 0 trajectory) fix ALL thresholds: ε_j, α_{0,j}, α_{1,j} of (2.28), δ_{Λ,j}, R_j, the sizes 100 MR_k of CMP 122 I, and the cube partitions. Constant-source trajectories u_j(c), B_j(c) as in D2 §1.1, with the adapted gauge-fixing weight (§2 item (vi)).

Local coupling (sourced (B2) + (B10)). w_0(x) := 1/g_0² − f(x), and
  w_j(x) := w_{j−1}(x) − B_j(f(x)) φ_j(x),   (1.a)
except that an R operation at step k on a region Z resets w_k(x) := u_k(f(x)) for x ∈ Z (sourced form of (B10); Balaban resets to the constant 1/g_k², which is u_k(0)). Consequence: on the last domain, where φ_j(x) = 1 for all j since the last reset or since j = 1, w_k(x) = u_k(f(x)) = Φ_k(1/g_0² − f(x)): the pointwise flow of D2C (5.1). Outside, w_k(x) is the flow stopped at the step when x left the small-field region: w_k(x) = u_{m(x)}(f(x)) up to the smooth interpolation by φ_j in the boundary layers.

### 1.2 Hypothesis H_k^{LF}

  ρ_k^f(V) = exp(−W_k[f]) Σ_{{Ω_j},{Λ_j},{S_j}} T_k^f ( χ_k exp A_k^f(V, U_k) ),   (1.b)
  A_k^f = −A(w_k, U_k) + E_k^f(U_k) + R_k^f(U_k) + B_k^f(U_k, A) − e_k^f.   (1.c)

 (L0) T_k^f is Balaban's T_k with two changes: the exponential gauge-fixing factors (CMP 122 I (1.6)) carry the weight w_j(y) instead of 1/g_j², and the Wilson weights in the large-field integrals are the w_j of (1.a). All characteristic functions (CMP 122 I (1.3)–(1.9), CMP 119 (2.17)) are Balaban's, with reference thresholds. So the source never enters a characteristic function.
 (L1) E_k^f = Σ_j [E^{(j)}(Λ_j, U_k; f) − E^{(j)}(Λ_j, 1; f) − A(B_j(f) φ_j, U_k)], localized as (2.26)–(2.27) on X ⊂ Λ_j^{(j)}, each term satisfying D2 (H2)(i)–(vii) (full radius r, freezing property (vii)).
 (L2) R_k^f = Σ_j [R^{(j)}(Λ_j, U_k; f) − R^{(j)}(Λ_j, 1; f)], localized on X ⊂ Λ_j^{~−1}, each term: depends on (U, J, f)|_X; analytic on U_j(X, α_0, α_1); G^c gauge invariant; holomorphic in f|_X on S_{τ(X)}(X) with τ(X) := c_τ r/(E_0 n(X)), n(X) the largest number of k-scale cubes in an R-denominator domain that built the term (≤ (100 MR_m)^4 at the scale m where it was built); bound |R^{(j)}(X, ·; f)| ≤ g_j^{κ_0} e^{−κd_j(X)} on that set. No freezing property is required (item (iii)).
 (L3) B_k^f: Balaban's (2.40)–(2.42) (X ∩ Z̃_j ≠ ∅, space Ũ_j^c) with f|_X added to the arguments, holomorphic on S_{τ(X)}(X), bound B_0 e^{−κd_j(X)}. No freezing property.
 (L4) e_k^f: the region-dependent constant (sourced (B5)): e_k^f = e_k^0 + Σ_j Σ_{X ∈ D_j, X ⊄ Λ_j^{(j)}} (−w^{(j)}(X; f)) + Σ_j R^{(j)}(Λ_j, 1; f) − (Balaban's analogue at f = 0). Each summand is localized, holomorphic on S_{τ(X)}(X), and bounded by E_0 e^{−κd_j(X)}; it is a large-field activity (items (v), (vii)).
 (L5) W_k[f] = Σ_{j ≤ k} Σ_{ALL X ∈ D_j} w^{(j)}(X; f), w^{(j)}(X; f) the step-j vacuum value of the ALL-SMALL-FIELD sourced construction (D2 §5.1 applied with Λ_i = whole torus for all i). Field independent and region independent (item (vii)).
 (L6) Positivity: for real f with ‖f‖_∞ ≤ r every term above is real on G-valued configurations, and the densities inside T_k^f are positive (item (ix)).
 (L7) Coupling condition: 0 < g_k ≤ γ and sup_x |g_k² f_k(x)| ≤ 3γ² r, with f_k := g_k^{−2} − w_k.

### 1.3 Target

Theorem D3 (target; sourced CMP 122 II Theorem 1). If the reference couplings lie in ]0, γ] with γ small, f ∈ F_r with r ≤ r_0, and (Hβ), (U) and (H-thr) (item (viii)) hold, then ρ_k^f has the form H_k^{LF} for all k ≤ K, with constants independent of k, K, f; and
  χ exp(−A(w_k, U_k) − E_−|T_η|) ≤ e^{W_k[f]} ρ_k^f ≤ exp(E_+|T_η|)   (sourced (0.1) of CMP 122 II).
The proof plan: rerun CMP 119 Sect. 3 and CMP 122 I–II with the changes of §2. Nothing in this file proves the target; §2 lists what is proved, reduced, and open.

## 2. The eleven items (D2 §8 nine items + two additions)

Map: (i) = D2 §8.1; (ii) = §8.3; (iii) = §8.4; (iv) = §8.5; (v) = §8.7; (vi) = §8.8; (vii) = D2_VERIFY addition 1 (field-dependent Λ_j in W); (viii) = addition 2 ((Hβ) inside the extraction); (ix) = §8.6; (x) = §8.2 (reference coupling); (xi) = §8.9 (inherited hypotheses).

### (i) (2.24) with B_j(f(x)) [reduced; list of places proved complete for the pages read]

Change: (B2) → (1.a); (B3) counterterm −β_j(g_{j−1})A(φ_j, U_k) → −A(B_j(f)φ_j, U_k).
Places where Balaban uses a constant coupling outside the small-field extraction (the CMP 119 / CMP 122 list asked for by D2 §8.1):
 (P1) (2.24): β_j(g_{j−1})φ_j → B_j(f(x))φ_j(x). In the boundary layer 0 < φ_j < 1 the counterterm is A(B_j(f)φ_j, ·). Its x-dependence through φ_j is Balaban's; the extra x-dependence through f(x) is O(ρ_1λ_j) per layer cube and goes into B-terms, which carry no renormalization (B6). [proved: the layer terms are localized near Z_j, so (B6) applies; size O(β′) per cube as in Balaban]
 (P2) (2.25): the extraction on X ⊂ Λ_j^{(j)} is D2C. Nothing new.
 (P3) (B10) reset after R: Balaban resets to 1/g_k²; the sourced reset is u_k(f(x)). The reset changes the Wilson weight on Z by Δ(x) := u_k(f(x)) − w_k^{old}(x) = −Σ_{j ≤ k} B_j(f(x))(1 − φ_j(x)) over the missed steps j. Balaban's analogue is Σ β_j(1 − φ_j) over the same steps. Difference: |B_j(c) − β_j| ≤ |c| sup|B_j′| (Lemma H, real c), so Δ = Δ_Bal(1 + O(r)) pointwise. Balaban absorbs ΔA(U) on Z into the numerator/denominator cancellation of II (1.1)–(1.37); the same algebra holds with Δ(x) in place of a constant, because it is done plaquette by plaquette (II (1.36)–(1.37) expand "the last Wilson action term" locally on the support of 1 − ζ_0). [reduced: II (1.36)–(1.37) with a plaquette-dependent coefficient; PDF of p. 365 not read, (B10) is an OCR reading]
 (P4) The denominator of R ((B9), II (1.2)): it is a small-field density, so after the change its Wilson weight is w_k = u_k(f(x)) (the D2 density). The dangerous g_k^{−2} part is unchanged. The source part f_k(x)P_p is O(r) per plaquette, not O(g_k^{−2}), so the numerator/denominator mismatch of the source part is ≤ 2·3r Σ_p |P_p(U_num) − P_p(U_den)|. On small-field supports this is O(rε_k²) per plaquette, smaller than Balaban's own mismatch by the factor O(rg_k²). [proved]
 (P5) II (1.4)–(1.6): the minimizer U_0 is unweighted (B8), so J_0 = 0 on Λ is unchanged. The source adds the linear term −Σ_p f_k(p) ⟨P_p^{(1)}(U_0), g_kB′⟩, which is O(rg_k) per plaquette times |B′|, i.e. a P^{(k)}-type vertex as in D2 §2.3 (SOURCES_VERIFY §6(d)). A crude sup bound over the denominator domain is O(r)·(100MR_k)^4 (|B′| ≤ M_0g_k^{−1}·(small) on the domain of (1.2)), which would force r ≤ c(100MR_k)^{−4}, an R_k- and hence ε-dependent condition. So do not bound it by sup: book it as one more vertex in the Gaussian expansion of (1.2), as Balaban books his cubic term g_k𝒱. It is linear in B′ with coefficient O(rg_k) per plaquette, so its Gaussian contribution is O(r²g_k²) per cube, with no R_k-dependent condition. [reduced to II (1.2) with one P^{(k)}-type linear vertex]
 (P6) Large-field factors (B11): exp(−γ_0(ε_j²/g_j²)|·|) come from the positivity of the weighted Wilson action / quadratic form. With weight w_j ≥ g_j^{−2}(1 − 3γ²r) the factor becomes exp(−γ_0(1 − 3γ²r)(ε_j²/g_j²)|·|). [proved: γ_0 → γ_0/2 for 3γ²r ≤ ½]
 (P7) Gauge-fixing exponentials (CMP 122 I (1.6)): item (vi).
Conclusion: (P1)–(P7) is the full list on the pages read (CMP 119 pp. 257–262; CMP 122 I pp. 175–200; II pp. 355–381). II pp. 381–392 (combinatorics) contain no coupling constant beyond the per-cube factors of (P6) and log g_j^{−2} counts; not reread line by line. [reduced]

### (ii) Family (A) through R: real c with a C¹ bound [reduced]

Key fact: B_j(c) never sees the R operation. By (B4), R-terms take no coupling counterterm, and by (B6) B-terms take none. B_j(c) is extracted from E-class terms only, and E-class terms are built only by small-field steps (D2, D2C). So the definition and the bounds of B_j(c), u_j(c) are those of D2 §6.1 and SOURCES_HBETA, unchanged by D3. [reduced: requires Balaban's class bookkeeping — an output of a small-field step with an R- or B-input is booked as R or B. CMP 119 (2.23) and the text after it [V] state the classes and that R, B need no coupling renormalization; the routing rule itself is CMP 119 Sect. 3, not reread here.]
What D3 needs from (A) is the constant-c R-, B- and e-terms, for the comparison in (iii) only if freezing were needed there (it is not, see (iii)), and for (Hβ) only through (H-thr) (item (viii)). For these terms: real c, and the C¹ bound in c follows from item (iv): a localized term on Y depends on c through f|_Y ≡ c only, so it is holomorphic in c on |Im c| < τ(Y) and |∂_c| ≤ τ(Y)^{−1} × (its bound). No global complex c is used, so D2 §8.3's worry (extensive perturbation of a global denominator) does not arise. [proved, given (iv)]

### (iii) Freezing property through R [proved, given the class bookkeeping of (ii)]

The freezing property (vii) of D2 (H2) is used in one place: D2C §3, the marginal extraction of E-class step terms. R-, B-, C- and e-terms are never extracted ((B4), (B6), II (1.49): the C_k terms "are boundary terms … they do not need renormalization"). Hence (vii) is required only for the E-class, and E-class terms are not produced by R. The R operation acts on an E-term on X in two ways: (a) X ∩ Z = ∅: the term is unchanged (it is still evaluated at U_k, which is unchanged off Z by (1.33)–(1.35) of II); (b) X ∩ Z ≠ ∅: the term is re-expanded around the new background and booked into C_k/B_k (II (1.49)). In case (a) (vii) is inherited; in case (b) the term leaves the E-class. So (vii) propagates through R trivially. D2 §8.4's request is withdrawn. Cost: none. Caveat: in case (a) the D2 §6.3 propagation through the NEXT small-field step must allow R/B inputs; those outputs are routed to R/B (bookkeeping of (ii)), so §6.3 runs with E-inputs only.

## 3. Ledger and work plan

### 3.1 Ledger

Proved in this file:
 - The list (P1)–(P7) of places where Balaban uses a constant coupling in the large-field step, on the pages read (item (i)); new find: the reset of the local coupling after R, (B10), whose sourced form is u_k(f(x)) on Z.
 - (P4) numerator/denominator mismatch of the source part is O(rg_k²) relative to Balaban's; (P6) large-field factors survive with γ_0 → γ_0/2.
 - Lemma D3.1 (complex perturbation of one positive denominator) and the local radius τ(Y) = c_τ r/(E_0|Y|) (item (iv)).
 - Gevrey order 2 for disjoint-support cumulants, with constants C(g, δ, r) uniform in ε; fine-scale radius loss (log g^{−2} powers) killed by e^{−κd} (item (iv)(G1)).
 - Freezing is needed only for the E-class; R does not create E-class terms; the D2 §8.4 request is withdrawn (item (iii), given the class bookkeeping).
 - R-vacuum subtractions and the w-terms on X ⊄ Λ_j cannot go into W; they are region-dependent constants e^f, large-field activities, absorbed by Balaban's own budget (items (v), (vii)). W is redefined as the all-small-field vacuum sum (L5); D2 §5.2 holds for it.
 - Adapted local gauge-fixing weight: holomorphic, positive, normalization local, large-field factor kept (item (vi)). Thresholds must stay at reference values.
 - (Hβ) from (H-hist) + (H-thr) + (E), without (I) (item (viii)); correction of SOURCES_HBETA §4(d) (threshold error is exp(−O((log g^{−2})^{2p_0})), not exp(−κ/g²); still summable).
 - Positivity and reality for real f (item (ix)).

Reduced to Balaban with the change stated:
 - CMP 122 II (1.36)–(1.37) with a plaquette-dependent reset coefficient (P3); PDF of p. 365 not read; (B10) is an OCR reading.
 - CMP 122 II (1.2) with one extra linear P^{(k)}-type vertex (P5).
 - Class bookkeeping: small-field outputs with R- or B-inputs are booked R/B (items (ii), (iii)). CMP 119 Sect. 3 not reread for the routing rule.
 - Analyticity of each step (and of R) in its input activities: propagation of the local radius (item (iv)); same assumption as D2 §6.3.
 - Consistency of the all-small-field w with the actual step term on X ⊂ Λ_j^{(j)} (item (vii)(a)); Balaban's (B5) uses the same fact.
 - CMP 122 II pp. 381–392 (combinatorics) assumed to contain no further coupling use (item (i)).

Open:
 - (H-thr): sup|Δ_j′(c)| ≤ C exp(−c(log g_j^{−2})^{2p_0}) (item (viii)). New, from the reference thresholds.
 - (H-hist) for i < j−1 (SOURCES_HBETA), unchanged.
 - Holomorphy of u_k(c) on a thin complex strip around [−2r, 2r] with |u_k′| ≤ 3/2 (SOURCES_HBETA §3(c)); used in (iv) for σ_W. Fallback: replace u_k(f(x)) by its real Taylor data and prove real Gevrey bounds for σ_W directly (σ_W is the only place where complex f meets u_k).
 - Balaban's unpublished CMP 109 Theorem 2 (THEOREM2.md), inherited.
 - Not done at all: a line-by-line rerun of CMP 122 I Sect. 1 and II Sect. 1–3 with the sourced action. This file identifies the changes; it does not check that every one of Balaban's ~150 estimates absorbs them.

Corrections to earlier files:
 - D2 §8.3: global complex c is not needed; B_j never sees R; real c with local holomorphy suffices.
 - D2 §8.4: freezing through R is not needed.
 - D2 §8.7 / task item (v): R-vacuum subtractions go into e^f, not W.
 - SOURCES_HBETA §4(d): error size, see item (viii).
 - D2C §2.2 residual option (i) "adapted thresholds" is ruled out (non-holomorphic in f); adapted weight + reference thresholds is the choice.

### 3.2 Work plan (sized; one "session" ≈ one D-file of this size, with one verifier)

 W1. Verify this file against CMP 122 II PDF pp. 356–369 and 379–381 (images), esp. (B10) and the (1.36)–(1.37) algebra with a plaquette-dependent coefficient. 1 session + verifier. Highest value: (P3) is the only place where the source changes the structure of R.
 W2. (H-thr): read CMP 109 pp. 263–266 and CMP 119 Sect. 3 for how thresholds enter E^{(j)} and β_j; prove the shell bound. 1–2 sessions. If Balaban's β_j already includes threshold dependence through g_{j−1}, (H-thr) becomes part of (H-hist).
 W3. Class bookkeeping (R/B routing) from CMP 119 Sect. 3 and CMP 122 II (1.49): confirm that E-class terms are never produced from R/B inputs. 1 session. If it fails, freezing must be propagated through R after all (D2 §6.3 argument with Lemma D3.1 replacing positivity); estimate +1 session.
 W4. Analyticity of a step in its input activities, stated as a lemma for Balaban's cluster expansion (CMP 116) and for R. 1–2 sessions. Shared by D2 §6.3 and D3 (iv).
 W5. Thin-strip holomorphy of u_k(c) (SOURCES_HBETA §3(c)) or the real-Gevrey fallback for σ_W. 1 session.
 W6. Line-by-line rerun of CMP 122 I Sect. 1 (pp. 177–202) with the sourced action: every g-dependent estimate, checked for the factor (1 ± O(γ²r)). 2–3 sessions; mechanical; can be split by page ranges across parallel workers.
 W7. (H-hist) for i < j−1 (from SOURCES_HBETA). Size unknown; it is the analogue of the unpublished Theorem 2 content. Not attempted.
Total for D3 to reach "reduced everywhere, no open item except (H-hist) and Balaban's Theorem 2": W1–W6, about 7–10 sessions.

### (iv) Local holomorphy in f, radius ∝ r/|Y|, Gevrey bounds [proved for one denominator; propagation reduced]

Lemma D3.1 (one denominator). Let μ be a positive measure, and σ a measurable complex function with |σ| ≤ s ≤ ½ on supp μ. Then |∫e^σ dμ| ≥ Re ∫e^σ dμ ≥ e^{−s} cos s ∫dμ ≥ ½∫dμ.
Proof. Re e^σ = e^{Re σ} cos(Im σ) ≥ e^{−s} cos s pointwise, and e^{−1/2}cos(1/2) > 0.5. ∎
Application. A denominator of R is D(f) = ∫ χ_sf e^{A_k^f} over a domain Y (≤ (100MR_k)^4 cubes of scale k, (B7)), with the small-field characteristic functions χ_sf. Take f real and a complex perturbation f + ζ, ζ supported in Y, ‖ζ‖_∞ ≤ τ, ‖∇ζ‖ ≤ ρ_1/2. The exponent changes by σ = σ_W + σ_E with
 - σ_W = Σ_{p ⊂ Y} δw_k(p) P_p(U), |δw_k| ≤ (3/2)τ (needs u_k holomorphic with |u_k′| ≤ 3/2 on a strip |Im c| ≤ τ: SOURCES_HBETA §3(c), [open, shared]). On supp χ_sf, Σ_{p ⊂ Y} P_p ≤ O(1)ε_k²|Y| (|Y| in k-cubes). So |σ_W| ≤ O(1)τ ε_k²|Y|.
 - σ_E = Σ_{X ∩ Y ≠ ∅} [V(X; f + ζ) − V(X; f)] over E-, R-, B-terms. By Cauchy on S_r(X) (E-terms) or S_{τ(X)}(X) (others) and the per-cube summability of D2 §6.4 (Σ_j(L^jη)^α ≤ O(1)): |σ_E| ≤ O(1)E_0 (τ/r)|Y| for τ ≤ min(r, τ(X))/2.
So |σ| ≤ ½ when τ ≤ τ(Y) := c_τ r/(E_0|Y|) (r ≤ 1, ε_k² ≤ E_0/r). Lemma D3.1 gives |D(f + ζ)| ≥ ½D(f), and the quotient numerator/denominator is holomorphic in ζ with modulus ≤ 2e^{1/2}× its real-f bound (numerator modulus by |e^σ| ≤ e^{|σ|}). This is (B11) with σ enlarged by the source perturbation; Balaban's inequality (1.73)–(1.75) is the same estimate for his own small complex σ. [proved]
Propagation. Every later operation (cluster expansion, Cauchy in auxiliary t, further R) is holomorphic in its inputs; the radius of an output term is the minimum of its inputs' radii, so it is ≥ c_τ r/(E_0 (100MR_m)^4) with m the scale of the R operation that built it. This is (L2)–(L4). [reduced: same assumption as D2 §6.3, analyticity of the step in its activities (SOURCES_D2_VERIFY V7 flags it as an assumption)]
Derivative bounds and Gevrey order. For an R-, B- or e-term on X built at scale m: |∂^a_t term(f + Σt_iφ_i)| ≤ a! (C E_0 (100MR_m)^4/r)^{|a|} × (bound). R_m grows like a power of log g_m^{−2}, so the radius degenerates at fine scales (g_m → 0 as ε → 0). Two cases.
 (G1) Disjoint supports at distance ≥ δ (the case of off-diagonal Schwinger functions). A term contributes to a mixed derivative only if X meets ≥ 2 supports, so its physical diameter is ≥ δ, i.e. d_m(X) ≥ δ/(Mλ_m) − 1. The factor e^{−κd_m(X)/2} beats any power of R_m: (log g_m^{−2})^{Pn} e^{−κδ/(2Mλ_m)} is super-exponentially small for Mλ_m ≪ δ. Only scales with Mλ_m ≳ δ R_m^{−1} matter; there g_m ≤ C(g, δ) is bounded below away from 0, so R_m ≤ R(g, δ). With the |X|^n count of D2 §8.5: |cumulant| ≤ C(g, δ, r)^n (n!)² — Gevrey order 2, allowed by OS regularity (N5). [proved, given the per-term bounds]
 (G2) Coincident or touching supports: the fine-scale terms enter with (log g_m^{−2})^{Pn} g_m^{κ_0} (R-terms) or with Balaban's large-field factors. sup_x x^{Pn} e^{−κ_0x/2} ≤ (2Pn/κ_0)^{Pn}, so the order becomes (n!)^{P}, P = 4p_R (p_R the power in R_m). Still a fixed finite order, and sums over m converge for κ_0 > 2. This case is not needed for OS0–OS4 at non-coincident points; it matters only for diagonal (contact) terms, which diverge anyway. [derived, not needed]
Alternative (real Gevrey by direct differentiation of the cluster expansion): not needed; rejected.

### (v) Vacuum subtractions of R (CMP 119 (2.30)) [proved: they are NOT put into W]

The task asks to put R^{(j)}(Λ_j, 1; f) into W. This is not possible and not needed. Reason: R-terms exist only on domains X built by an R operation, i.e. near regions Z that were large and were renormalized (B7, (0.5) of CMP 122 I: the sum is over X meeting the renormalized regions). The index set of R^{(j)}(Λ_j, 1; f) = Σ_X R^{(j)}(X, 1; f) therefore depends on the field through the large-field regions. Unlike E-terms, R-terms have no "all-small-field" version, so there is no field-independent sum to split off. Balaban's own treatment: the subtracted constants go into the region-dependent constant E_k of (B1), (B5). D3 does the same: they enter e_k^f ((L4)), a large-field activity. Bound: |R^{(j)}(X, 1; f)| ≤ g_j^{κ_0} e^{−κd_j(X)} by (B4) with f added; holomorphic on S_{τ(X)}(X) by (iv). They are field independent in U (evaluated at U = 1), which is all that D2 §8.7 required; they are field dependent only through the regions, and the regions are summed inside T_k^f. Cost in the large-field budget: Σ_X g_j^{κ_0} e^{−κd} ≤ O(g_j^{κ_0})|Z_j| per region, ≪ Balaban's O(1) log g_j^{−2}|Z_j| (B11). [proved]
Consequence for D2 §5.2: the cumulant contribution of e^f is a large-field activity and obeys (iv) (G1). W contains only (L5).

### (vi) Gauge-fixing weight and the large-field cutoffs [proved compatible; choice made]

Choice (coordinator update): use the ADAPTED local weight w_j(y) in every exponential gauge-fixing factor: CMP 109 (0.17)/(0.19) small-field gauge fixing, and CMP 122 I (1.6) exp[−w_j(y)(1 − Re tr V_j(y,x))] in Ω_j^c-layers. The tree-graph gauge of R (B8) is a δ-function, weight-free, and stays.
Compatibility checks.
 (a) Holomorphy in f: the weight sits in an exponent, so it is holomorphic in f(y) (through u_j, see (iv) for the strip). Contrast: a threshold depending on f would make a characteristic function non-smooth in f; that is why thresholds stay at reference values. [proved]
 (b) Positivity: w_j(y) > 0 for real f (item (ix)), so the factor is positive. [proved]
 (c) Normalization: each factor is divided by z(w_j(y)) = ∫du exp[−w(1 − Re tr u)]χ(|u − 1| < ε_j), a one-link integral, positive and holomorphic in w on |w − g_j^{−2}| ≤ 3r; log z(w) − log z(g_j^{−2}) is a local, field-independent function of f(y): it goes to W (small-field sites) or e^f (large-field sites). [proved]
 (d) Large-field factor from (1.5)–(1.6) (gauge links with |V_j − 1| ≥ ε_j): Balaban gets exp(−γ_0 ε_j²/g_j²) per such link from the weight; with w_j ≥ g_j^{−2}(1 − 3γ²r) this is exp(−γ_0(1 − 3γ²r)ε_j²/g_j²). [proved]
 (e) Fluctuation covariance: the adapted weight changes the gauge-fixing part of the fluctuation operator by a factor 1 + O(g_j²f_j); SOURCES_D2 Lemma 3.1 (weighted Neumann series) gives Balaban's propagator bounds. [reduced to D2 Lemma 3.1, CONFIRMED in D2_VERIFY]
 (f) Small-field cutoff χ(|B′| < ε_1) on the UNSCALED field, coupling independent (CMP 109 (2.9) first version). With (a)–(e), (I) is exact for the small-field integral at constant c (D2C §2.2 plus D2C_VERIFY §1). The only remaining source of inexactness in (I) is the reference plaquette and link thresholds of the large-field decomposition: item (viii).

### (vii) Field-dependent domains Λ_j in W [proved]

Problem (D2_VERIFY V7). D2 §5.1 puts Σ_{X ∈ D_{k+1}} w^{(k+1)}(X; f) into W. With large fields Balaban subtracts only E^{(j)}(Λ_j, 1) = Σ_{X ⊂ Λ_j^{(j)}} E^{(j)}(X, 1) (B3), and Λ_j depends on the field. So the D2 sum is field dependent.
Resolution: Balaban's (B5) device with f. Define w^{(j)}(X; f) for EVERY X ∈ D_j as the step-j vacuum value of the all-small-field construction ((L5)). This is well defined: at U = 1 and with all Λ_i = torus, the construction is D2's, and D2's bounds hold. Write
  Σ_{X ⊂ Λ_j^{(j)}} w^{(j)}(X; f) = Σ_{all X} w^{(j)}(X; f) − Σ_{X ⊄ Λ_j^{(j)}} w^{(j)}(X; f).
The first sum is region independent: it goes to W_k[f] and factors out of every later integral exactly (D2 §5.1(i)). The second sum is localized on X meeting Λ_j^c, i.e. within distance d_j(X) of a large-field region; it goes to e_k^f ((L4)) and is part of the large-field activity, exactly as Balaban's E_k of (B5).
Two checks.
 (a) Consistency of the two definitions on X ⊂ Λ_j^{(j)}: there the actual step term at U = 1 equals the all-small-field one only if E^{(j)}(X, ·) depends on the history only through data on X, which are small-field there. By (2.26)–(2.27) and locality (H2)(i) this holds for X ⊂ Λ_j^{(j)} (one layer removed). Balaban's B5 rests on the same fact. [reduced to (2.26)–(2.27), same as Balaban]
 (b) Size in the large-field budget: |Σ_{X ⊄ Λ_j} w^{(j)}(X; f)| ≤ O(1)E_0|Λ_j^c|_{MR_j-cubes}·(MR_j)^4, dominated by the per-cube factor exp(−γ_0(1 − 3γ²r)ε_j²/g_j²) of (vi)(d), exactly as Balaban's normalization constants O(1) log g_j^{−2}|Z_j| (B11) are. Moreover w^{(j)}(X; 0) = 0, so the f-dependent part is O(r) by Schwarz's lemma. [proved]
 (c) Holomorphy: w^{(j)}(X; f) is holomorphic on S_r(X) (D2 (H3)); no radius loss. [proved]
Effect on D2 §5.2: (P1)–(P3) apply to W_k as defined in (L5). The e^f part obeys (iv)(G1).

### (viii) (Hβ) inside the extraction with large-field cutoffs; (I) with coupling-dependent thresholds [reduced to one new hypothesis (H-thr)]

With (vi), the constant-c theory differs from Balaban's theory at 1/g_0² − c only in the reference thresholds of the large-field decomposition: ε_j(g_j), α_{0,j}, α_{1,j} (2.28), δ_{Λ,j}, R_j, versus Balaban's thresholds evaluated at g_j(c) = u_j(c)^{−1/2}. Thresholds cannot be adapted (vi)(a). So write
  B_j(c) = β_j(u_0 − c, u_1(c), …, u_{j−1}(c)) + Δ_j(c),
where β_j is Balaban's history-dependent β-function and Δ_j(c) collects the effect of the threshold mismatch on the E-class step terms of the constant-c theory.
Why Δ_j is small. A threshold enters an E-class term only through the small-field characteristic function on the domain. Changing a threshold from ε to ε(1 + O(γ²r)) changes the integral by the Gaussian mass of the shell between the two thresholds, which is O(γ²r) × exp(−c ε_j²/g_j²) per cube, with ε_j²/g_j² = p(g_j)² ~ A_0²(log g_j^{−2})^{2p_0} ((B11); CMP 122 I (0.1)). The shell contribution to the marginal coefficient is of the same order. So the natural form is
 (H-thr) sup_{|c| ≤ 2r} |Δ_j′(c)| ≤ C_thr exp(−c_thr (log g_j^{−2})^{2p_0}). [open; plausible by the shell argument; not in Balaban]
Summability. g_j^{−2} ≥ γ^{−2} + β(K − j) (HBETA (2.2)), so Σ_j exp(−c_thr(log(γ^{−2} + βm))^{2p_0}) converges for p_0 ≥ 1 (the terms are ≤ m^{−c_thr log m} eventually), uniformly in K, and is ≤ C exp(−c_thr(log γ^{−2})^{2p_0}) up to a constant. Then Lemma H, Step 1, holds with ε_j replaced by ε_j + |Δ_j′|, and Σ_j|B_j′| ≤ e^{x + x_thr} − 1 with x_thr := Σ_j sup|Δ_j′| → 0 as γ → 0. So (Hβ) holds under (I)-free hypotheses (H-hist) + (H-thr). [proved given (H-hist), (H-thr), (E)]
This corrects SOURCES_HBETA §4(d): the guessed error O(exp(−κu_{j−1}(c))) = O(exp(−κ/g_{j−1}²)) is too optimistic. The threshold error is exp(−O((log g^{−2})^{2p_0})), smaller than any power of g but larger than exp(−κ/g²). It is still summable.
(Hβ) inside the extraction (D2C §5.2 uses (1)–(3)). Uses (1) and (2) need only Lemma H on real c, now with (H-thr). Use (3), the history comparison on X, is pointwise in c and inherits the same bound. The large-field steps do not add a further use: B_j is defined from E-class terms only ((ii)). Complex c: not needed anywhere in D3 except the thin strip of (iv) (SOURCES_HBETA §3(c), open).
What would remove (H-thr): a proof that Balaban's β_j is the β-function of the all-small-field theory, independent of the large-field thresholds. Balaban's statement that β_j is a function of the couplings only (CMP 109 p. 263, "C^∞-function of g_{j−1}") suggests his β_j is defined with thresholds that are themselves functions of g_{j−1}; then Δ_j is the derivative of that dependence and (H-thr) is a statement about his β_j. Not checked.

### (ix) Positivity of the large-field weights with real f [proved]

Claim. For real f ∈ F_r and G-valued configurations: (a) w_k(x) > 0 for all x, k; (b) every exponential density inside T_k^f is positive; (c) every term E^f, R^f, B^f, e^f, W is real.
(a) Bare level: w_0 = 1/g_0² − f > 0 since ‖f‖_∞ ≤ r < 1/g_0². Later: w_k(x) is either u_m(f(x)) for some m ≤ k or a φ-interpolation between two such values; by Lemma H, u_m(c) ≥ g_m^{−2} − (3/2)|c| ≥ γ^{−2} − 3r > 0. Stronger, w_k ≥ g_k^{−2}(1 − 3γ²r) is what (i)(P6) and (vi)(d) use.
(b) The Wilson part −Σ_p w_k(p)P_p(U) ≤ 0 with P_p ≥ 0; the gauge-fixing factors are positive ((vi)(b)); the characteristic functions are 0/1; the Gaussian factors are positive definite (Balaban's quadratic forms; the source changes them by 1 + O(g²r), D2 Lemma 3.1).
(c) Each term is built from integrals of real densities and logarithms of positive quantities, and is symmetric under complex conjugation: T(Ū, J̄; f̄) = conj T(U, J; f). This symmetry holds at k = 0 and every operation (integration against a real measure, products, logs of positive integrals, cluster expansions with real coefficients) preserves it. For real f and G-valued U the arguments are self-conjugate, so the terms are real. This is the sourced form of the sentence quoted in (B11). [proved]
So Balaban's positivity argument for the R denominators (B7) and his inequality (1.73)–(1.75) (B11) apply verbatim for real f. Complex f enters only through Lemma D3.1 in (iv). The condition ‖f‖_∞ < 1/g_0² of the task is implied by r < γ^{−2}; the binding condition is 3γ²r ≤ ½ (for (P6)).

### (x) Reference coupling (D2 §8.2) [proved]

All thresholds, cube sizes, the scaling B′ = g_kB, and the analyticity spaces use the reference g_j ((L0)). The local coupling enters only through Wilson weights, gauge-fixing weights, and the E-class marginal terms. Per plaquette, w_k/g_k^{−2} = 1 + O(γ²r). Each place where Balaban uses a large-field factor gets the factor (1 − 3γ²r) in the exponent ((P6), (vi)(d)). Done.

### (xi) Inherited hypotheses (D2 §8.9) [carried]

(Hβ) is now reduced to (H-hist) + (H-thr) + Lemma E (item (viii)). (U) is unchanged. Balaban's condition sup g_k ≤ γ on the reference trajectory is the hypothesis of (B12); with the source, sup_x of the local coupling is ≤ γ(1 + O(γ²r)) by (ix)(a), and Balaban's Theorem 1 is used with γ slightly larger. Theorem 2 of CMP 109 (running coupling bounds) is unpublished (THEOREM2.md); D3 inherits Balaban's assumption, as Balaban does.

Addendum under (i)(P4)–(P6) (2026-10-28). NEW-4 (SOURCES_D3_NEW4 + _VERIFY): the source enters R only as the plaquette factor ω, |ω − 1| ≤ θ ≤ 5γ²r; U_0, (1.12), (1.40) unweighted; (1.21), (1.77) source-free by (1.14); denominator (1.9) → γ_0/(4d(100M)^5) by the split CMP 99 (3.10); (1.37)'s weighted ζ_1-term via D3R §1.4; no condition beyond canon B32 (5γ²r ≤ ½, ρ_1 ≤ r/(4C_hM)).
