IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_D3_NEW4 — sourced R-operation Wilson Hessian lower bounds (NEW-4)

Date 2026-10-28. Target: NEW-4 of SOURCES_M1_SWEEP (+ VERIFY §(NEW-4)).
Ledger: [P] proved here, [V] verified against a source page or file, [I] inherited from a canon file, [R] open/at risk.
Firewall kept: no reads of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.

## 0. Inputs read

SOURCES_M1_SWEEP §5.1–5.11 (NEW-4 entries) and VERIFY V6; SOURCES_D3 §0 (B8)–(B11), §1.1–1.2 (L0)–(L7), §2 (i)(P4)–(P6), (vi), (ix); SOURCES_D3_VERIFY item 7 (weight bound must be relative to Balaban's local coupling); SOURCES_D3R §1.2–1.4 (Lemma P3, θ := γ²δ_r ≤ 5γ²r); SOURCES_D2 §8 items 3, 5, 6; SOURCES_FX §6.3 (O2 = FX-D). Page images of CMP 122 II: see §2.

## 1. How the source enters the R-operation (settled first)

Answer: the Wilson term IS sourced, through its plaquette weight only. The minimizer, the gauge, the domains, and the thresholds are NOT sourced.

Evidence in the canon [I]:
- D3 (1.c), (L0): the action is −A(w_k, U_k) with the local weight w_k(p) = g_k^{−2} − f_k(p). The large-field integrals in T_k^f carry the Wilson weight w_j. So the source sits inside the Wilson action, not only inside the activities E^f, R^f, B^f, e^f.
- D3 (P4): the R-denominator (II (1.2)) is a small-field density with Wilson weight w_k = u_k(f(x)).
- D3 (L0), (B8), (P5); D3R l. 103: the background U_0 (and U″_{k,Z}, U_k) is the minimizer of the UNWEIGHTED action A(U_{k,Z}(V)) over the gauge orbit, in the δ-function tree gauge δ_{T_0}. Characteristic functions use reference thresholds.
- (L7) and D3R 1.4: per plaquette, w(p) = ω(p)/g²(p), with g²(p) Balaban's local coupling (g_k² on the last domain and on Z after the reset (B10)), and ω(p) := g²(p)w(p) satisfying |ω(p) − 1| ≤ θ, θ := γ²δ_r ≤ 5γ²r (D3R Lemma P3 + 1.4). For complex f on the thin strip of D3 (iv): |ω − 1| ≤ θ + (3/2)γ²τ ≤ 2θ for τ ≤ r [reduced: strip holomorphy of u_k, D3 open item].

Consequence for the R-operation expansion. Write V = exp(ig_kB′) and U = U_0V (Balaban's (1.2)). Then
  A(w, U_0V) = Σ_p w(p) P_p(U_0V),  w = ω g_k^{−2} on Λ (Λ ⊂ Z, last-domain coupling g_k; (B10) reset).
Expand P_p(U_0 exp(ig_kH_{1,k}B′)) to second order in B′ as Balaban does. Each term of his expansion is a sum over plaquettes, so the sourced expansion is his with a plaquette factor ω(p):
  g_k^{−2}A_ω(U_0V) = g_k^{−2}A_ω(U_0) + g_k^{−1}⟨DHB′, ζ_0ω η^{−2}Im ∂U_0⟩ + ½⟨HB′, Δ_1(ζ_0ω)HB′⟩ + g_k^{−2}V(ζ_0ω, g_kHB′),   (1.1)
where Δ_1(χ) denotes the Wilson Hessian at U_0 with plaquette weight χ (Balaban's Δ_1(ζ_0) is the case χ = ζ_0). [P: linearity of A in the weight; Balaban's expansion is plaquette-local, see the images in §2.]
So the Hessian shift is
  Δ_1(ζ_0ω) − Δ_1(ζ_0) = Δ_1(ζ_0(ω − 1)),  |ω − 1| ≤ θ = O(γ²r) per plaquette.
In the task's notation, the shift per plaquette is g_k²·f_k(p) times the plaquette Hessian, i.e. O(g_k²r) (with g_k ≤ γ). [P]

The linear term of (1.1) splits as Balaban's term (with ζ_0) plus g_k^{−1}⟨DHB′, ζ_0(ω − 1)η^{−2}Im ∂U_0⟩ = −g_k⟨…f_k…⟩: this is D3 (P5)'s linear vertex. It does not touch the Hessian. [I, D3 (P5)]

## 2. Page facts used [V, 300 dpi images of CMP 122 II, read this session]

- p. 357 (PDF 3): (1.2) exponent −½⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩ − g_k^{−1}⟨DH_{1,k}B′, ζ_0η^{−2}Im ∂U_0⟩ − g_k^{−2}V(ζ_0, g_kH_{1,k}B′). (1.3)–(1.5): U_0 minimizes U ↦ A(U) (no weight) with the averaging constraint on Z∖Λ; J_0 = 0 on Λ; (1.5) leaves only the (1 − ζ_0) boundary term. Last paragraph: in a proper gauge U_0 = exp(iξA_0) on Z with |A_0|, |∇^ηA_0| < O(1)M^6R_kε_k; the form is expanded to FIRST order in A_0; the leading term is the form at background 1.
- p. 358 (PDF 4): (1.7) ⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩ ≥ γ_0‖∂B′‖² − O(1)(M^6R_kε_k + exp(−R_k))‖B′‖²; (1.8) Σ_b|B′(b)|² ≤ d(100M)^{d+1}Σ_p|(∂B′)(p)|²; (1.9) ≥ γ_0/(2d(100M)^5)‖B′‖² "for g_k sufficiently small"; G^c extension: "all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k})". (1.10): the denominator is ∫dV′δ_{G_0}χ exp[−g_k^{−2}A(ζ_0, U_{k,Z}(V′V_Λ))] = exp[+g_k^{−2}A(ζ_0, U_0) + I(U_0) − E_k(Λ)].
- p. 359 (PDF 5): (1.12) critical-point equation of V′ ↦ A(U_{k,Z}(V′V_k)) "without the powers of g_k, and with ζ_0 = 1"; (1.13) inverse of P_0H*_{1,k}Δ_1H_{1,k}P_0 bounded by γ_0^{−1}2d(100M)^5 "by the inequality (1.9)". (1.14) A(1/(g″_k(·))², U″_k) = g_k^{−2}A(U″_k) + A(1/(g″_k(·))² − g_k^{−2}, U″_k); the second term "we leave in this form … use it to get the bounds for large fields". (1.15) A(U″) = A(ζ_0, U″) + A(1 − ζ_0, U″).
- p. 361 (PDF 7): (1.20) A(ζ, U″_{k,Z}) = A(ζ, U^0_{k,Z}) + g_k⟨DH″B, ζη^{−2}Im ∂U^0⟩ + ½g_k²⟨H″B, Δ_1(ζ)H″B⟩ + V. The quadratic form = (1.21) Σ_p η^dζ(x(p))|(DH″_{1,k,Z}B)(p)|² + small form (bound O(1)B_3^5B_5M^{5+d}A_1²p_1²(g_k)R_k^{d+2}ε_k). "In the effective action we have the form (1.21) with the minus sign, therefore it can be bounded by 0." (Task brief said p. 362; (1.21) is on p. 361. p. 362 carries (1.23)–(1.27).)
- p. 367 (PDF 13): (1.40) is the critical-point equation of the same unweighted variational problem "with ζ_0 = 1 and g_k = 1"; inverse as in (1.13); (1.41) |B′_Λ(B̃′)| ≤ 4d(100M)^5γ_0^{−1}B_3²|B̃′|. (Brief said p. 366; (1.40) is on p. 367.)
- p. 383 (PDF 29): (1.77) ⟨DH″_{1,j,Z}B, ζDH″_{1,j,Z}B⟩ > γ_0Σ_{p′}|(∂B)(p′)|² − O(1)A_0A_1²B_3^4B_5M^{d+6}R_j^{d+3}p_0p_1²g_j "by bound (1.7)"; (1.78) |B(b)|² ≤ 6(d+3)(100M(L+1)N^{β_0}R_j)^{d+2}Σ|∂B|²; factor exp(−½γ_0[6(d+3)(…)^{d+2}]^{−1}A_1²p_1) < exp(−R_j^{−d−5}p_1²). (Brief said p. 380; (1.77) is on p. 383.)

Two structural facts follow [V]:
(F1) Every variational problem in this part (U_0, (1.12), (1.40)) is the UNWEIGHTED Wilson action. The weight enters only the integrands.
(F2) In the numerator Balaban splits the weighted Wilson term as (1.14): a constant-coupling part g_k^{−2}A(U″) plus a remainder A(1/(g″)² − g_k^{−2}, U″) kept as is. The forms (1.20)–(1.21) and (1.77) come from the constant-coupling part only.

## 3. Where the source sits in each NEW-4 item (settles task part (1))

Sourced splits. Sourced numerator weight w″ (D3 (1.a), D3R (B10′)). Sourced (1.14):
  A(w″, U″) = g_k^{−2}A(U″) + A(w″ − g_k^{−2}, U″).   (3.1)
The first term is Balaban's, unchanged. The source sits only in the second term, whose coefficient is Balaban's (1/(g″)² − g_k^{−2}) plus an additive δ_r-piece (D3R Lemma P3: |difference| ≤ δ_r = 4r + 2C_hMρ_1λ_k). D3R §1.3 (sup bound, factor ≤ 2) and §1.4 (positivity split, γ_0 → (1 − θ)γ_0) already treat this term [I, D3R; verified with corrections per its VERIFY].
Sourced denominator. D3 (P4) gives the R-denominator the small-field weight w_k = ω g_k^{−2} on Λ (ω as in §1). So the denominator's Wilson term IS sourced: −g_k^{−2}A(ζ_0ω, U_{k,Z}(V′V_Λ)).

Hence, item by item:
- (1.7)–(1.9): the denominator Hessian is Δ_1(ζ_0ω). SOURCED. Needs §4.
- (1.12)–(1.13), (1.40)–(1.41): unweighted variational problem (F1). NOT sourced. The inverse and its norm γ_0^{−1}2d(100M)^5 (resp. 4d(100M)^5γ_0^{−1}B_3²) are Balaban's verbatim. [V page + I (B8)/(P5)]. Note: the bound "by (1.9)" refers to the UNSOURCED (1.9); the sourced (1.9) of §4 is never needed here.
- (1.20)–(1.21): from g_k^{−2}A(ζ, U″_{k,Z}), the first term of (3.1). NOT sourced. [P from (3.1) + (F2)]
- (1.77): the form ⟨DH″B, ζDH″B⟩ is the (1.21) form at step j. NOT sourced, for the same reason. The large-field factors that the source does touch come from the second term of (3.1) and its analogues: D3R §1.4 / D3 (P6). [P from (F2); reading: p. 382 "the quadratic form in the expansion (1.20)" = this form; p. 382 not re-imaged this session]
- Critical-point identity (1.4)–(1.5): J_0 = 0 on Λ is a property of the unweighted minimizer U_0, so it is UNCHANGED. The sourced denominator's linear term is Balaban's (1.5) term plus
  L_f(B′) := g_k^{−1}⟨DHB′, ζ_0(ω − 1)η^{−2}Im ∂U_0⟩,   (3.2)
  which has no J_0-cancellation. This is D3 (P5)'s linear vertex. Improvement over D3 (P5)'s sup estimate [P given p. 357]: on Z, |Im ∂U_0(p)| ≤ O(1)M^6R_kε_k (curvature of exp(iξA_0) is ∂A_0 + O(A_0²)), and |ω − 1| ≤ θ ≤ 5γ²r. So |L_f| ≤ g_k^{−1}·θ·O(M^6R_kε_k)·Σ_{p∈supp ζ_0}|DHB′(p)| — each coefficient carries ε_k, unlike D3's "O(rg_k) per plaquette". It is absorbed exactly as (P5) says (one linear vertex in the expansion of (1.2)); no new identity is needed.

Alternative route (if a later file prefers to extract the WEIGHTED term A(ζ_0w″, U″) in the numerator, to cancel the weighted denominator exactly): then (1.21) and (1.77) become Σζω|DH″B|². For real f, ω ≥ 1 − θ > 0 per plaquette and each summand is ≥ 0, so
  Σ_p η^dζω|(DH″B)(p)|² ≥ (1 − θ)·(1.21),  and (1.77) holds with γ_0 → (1 − θ)γ_0 and the error ×(1 − θ). [P]
"Bounded by 0" still holds (ω > 0). The (1.77) large-field factor becomes exp(−½(1 − θ)γ_0[6(d+3)(…)^{d+2}]^{−1}A_1²p_1); for θ ≤ ½ it is still < exp(−R_j^{−d−5}p_1²) once R_j^3 ≥ 2·6(d+3)(100M(L+1)N^{β_0})^{d+2}/γ_0 (with Balaban's N ≤ R_k), i.e. for g_j small. [P] So both routes close (1.21), (1.77).

## 4. Sourced (1.7)–(1.9) (task part (2))

Setting. Real f, ‖f‖_∞ ≤ r. ω(p) := g_k²w_k(p) on supp ζ_0, real, |ω(p) − 1| ≤ θ := γ²δ_r ≤ 5γ²r (D3R 1.2/1.4; on Λ ⊂ Z the reference coupling is g_k after the reset (B10)). 0 ≤ ζ_0 ≤ 1 [I: cutoff function, reading]. X := H_{1,k}B′, B′ real, P_0B′ = B′ (axial gauge on G_0). Q_χ(X) := ⟨X, Δ_1(χ)X⟩ = Σ_p χ(p)h_p(X), h_p the second variation of the plaquette term P_p at U_0.

Step 1 (plaquette split) [P given p. 357]. In the gauge of p. 357, U_0 = exp(iξA_0) on Z with |A_0|, |∇A_0| ≤ a := O(1)M^6R_kε_k. At background 1, the second variation of 1 − (1/N)Re tr exp(i(∂X)(p) + commutators) is c_N|(∂X)(p)|² ≥ 0 (the commutator terms are traceless and drop out of Re tr at second order). h_p is a smooth function of A_0 on the bonds of p, so
  h_p(X) = c_N|(∂X)(p)|² + c_p(X),  |c_p(X)| ≤ C_1 a Σ_{b∈p}|X(b)|²,   (4.1)
with C_1 absolute (compact group, |A_0| bounded). This is Balaban's own first-order expansion, written plaquette by plaquette.

Step 2 (multiplicative comparison) [P]. Since ω − (1 − θ) ∈ [0, 2θ] and h_p ≥ −|c_p|,
  Q_{ζ_0ω}(X) − (1 − θ)Q_{ζ_0}(X) = Σ_p ζ_0(p)(ω(p) − 1 + θ)h_p(X) ≥ −2θΣ_pζ_0|c_p(X)| ≥ −2θ·C_1a·2(d−1)‖X‖².
With ‖X‖ ≤ O(1)B_3‖B′‖ (B_3 = Balaban's exponentially decaying kernel bound of H_{1,k}; Schur test) [I, reading of B_3]:
  Q_{ζ_0ω}(H_{1,k}B′) ≥ (1 − θ)Q_{ζ_0}(H_{1,k}B′) − θ·O(1)B_3²M^6R_kε_k‖B′‖².   (4.2)

Sourced (1.7) [P from (4.2) + (1.7)]:
  ⟨H_{1,k}B′, Δ_1(ζ_0ω)H_{1,k}B′⟩ ≥ (1 − θ)γ_0‖∂B′‖² − O(1)((1 + θB_3²)M^6R_kε_k + exp(−R_k))‖B′‖².
Sourced (1.8): unchanged (no weight). 
Sourced (1.9) [P]: (1.8) gives ‖∂B′‖² ≥ ‖B′‖²/(d(100M)^5) (d = 4). For θ ≤ ½,
  ⟨H_{1,k}B′, Δ_1(ζ_0ω)H_{1,k}B′⟩ ≥ γ_0/(4d(100M)^5)‖B′‖²
whenever O(1)((1 + B_3²)M^6R_kε_k + e^{−R_k}) ≤ γ_0/(4d(100M)^5). This is Balaban's own "g_k sufficiently small" condition with the O(1) enlarged by the factor 1 + B_3² (θ ≤ ½); it involves g_k only, not r. Even simpler: (1 − θ)×(Balaban's (1.9)) − (4.2)'s error, which is the same estimate.

G^c extension of U (p. 358) [P given Balaban's sentence]. For U ∈ U_k^c(Z, α_{0,k}, α_{1,k}), ω stays real (f real, ω does not depend on U). Step 2 uses only Re h_p ≥ −|c_p| per plaquette with |c_p| ≤ C_1(a + O(α_{0,k} + α_{1,k}))|X|²_p, which is Balaban's "ε_k replaced by O(α_{0,k} + α_{1,k})" applied to (4.1) [reading: the complex part of X = H(U)B′ is pointwise O(α)·local B′, the same input his own extension uses]. So the sourced (1.9) holds for Re of the form on the extended domain, under the same enlarged g_k-condition.

Complex f. Not done through the Hessian, and not needed: D3 Lemma D3.1 (iv) compares the complex-f denominator with the real-f one directly (|σ| ≤ ½ for τ ≤ τ(Y)), and FX §6.3(b)/(c) (O2 = FX-D, or the fallback radius) carries the radius. The sourced (1.9) is used only at real f. [I]

Smallness condition, exact. θ ≤ ½, i.e. γ²δ_r ≤ ½, sufficient: 5γ²r ≤ ½ (for ρ_1λ_k small, D3R). No γ_0-, M-, or R_k-dependent condition on r arises: the source multiplies a nonnegative leading form plaquette by plaquette, and the non-positive remainder c_p is already ε_k-small. This refutes the M1_SWEEP §5.1 sketch condition "2c_Hg_k²r‖H_{1,k}‖² ≤ γ_0/(4d(100M)^5)" as NECESSARY: that sketch bounded the shift additively by the full plaquette Hessian norm; the multiplicative split (Step 2) avoids it. The task's proposed form "g_k²r ≤ c·γ_0" is also not needed; the condition is γ_0-free.

## 5. Place in the canon (task part (3))

The condition is an UPPER BOUND ON r relative to γ: 5γ²r ≤ ½ (equivalently θ = γ²δ_r ≤ ½). It is the same inequality as D3 (P6)/(ix) ("binding condition 3γ²r ≤ ½", corrected by D3R 1.4 to 5γ²r ≤ ½ relative to the local coupling). So NEW-4 adds NO new condition to the canon. Since γ ≤ 1, r ≤ 1/10 implies it for every γ; D3R 1.3 already needs r ≤ 1/8, so the canon's r_0 becomes r_0 ≤ 1/10 if one wants a γ-free statement. The only other requirement is a larger O(1) inside Balaban's "g_k sufficiently small" (factor 1 + B_3² in the ε_k term of (1.7), and R_j^3 ≥ const/γ_0 for (1.77) on the alternative route): this is a condition on γ alone, of the type Balaban's Theorem 1 already imposes (B12), and it is r-independent.
Other uses of the R-denominator form, for completeness: (1.10)–(1.11) need only an UPPER bound of the form (boundedness); the sourced form is ≤ (1 + θ)×Balaban's + θ·O(B_3²a)‖B′‖² by Step 2 with signs reversed, so |I(U_0)| < O(1)M^5 holds with a doubled O(1). [P] The leading-term cancellation g_k^{−2}A(ζ_0ω, U_0) between denominator and numerator is D3 (P4) (mismatch O(rε_k²) per plaquette) [I].

## 6. Verdict and ledger (task part (4))

NEW-4: CLOSED relative to [D3 (B8), (L0), (P4), (P5); D3R Lemma P3 + §1.3–1.4 (θ ≤ 5γ²r); D3 Lemma D3.1 / FX §6.3 (complex f, O2 open there); Balaban's (1.7)–(1.9), (1.21), (1.77) as printed; the plaquette expansion (4.1) of his p. 357 first-order-in-A_0 argument; reading that ‖H_{1,k}‖ ≤ O(1)B_3 and 0 ≤ ζ_0 ≤ 1].

Ledger.
[V] Page images pp. 357, 358, 359, 361, 362, 367, 383 read this session: unweighted variational problems (F1); split (1.14) (F2); (1.7)–(1.9), (1.13), (1.21), (1.40)–(1.41), (1.77)–(1.78) as quoted in §2. Page corrections to the brief: (1.21) is p. 361, (1.40) p. 367, (1.77) p. 383.
[P] §1: the source enters the R-operation only as a plaquette factor ω on the Wilson weight; Hessian shift Δ_1(ζ_0(ω − 1)), |ω − 1| ≤ θ = O(γ²r).
[P] §3: (1.13), (1.40) source-free (unweighted problem); (1.21), (1.77) source-free by the split (3.1); on the alternative weighted-extraction route, (1.21) ≥ (1 − θ)× and (1.77) with γ_0 → (1 − θ)γ_0, factor still beats exp(−R_j^{−d−5}p_1²) for g_j small.
[P] §3: J_0 = 0 unchanged; the sourced linear term (3.2) is D3 (P5)'s vertex, now with an explicit ε_k factor: coefficient ≤ g_k^{−1}θ·O(M^6R_kε_k) per plaquette.
[P] §4: sourced (1.7) with (1 − θ)γ_0 and error ×(1 + θB_3²); sourced (1.9) with γ_0/(4d(100M)^5) for θ ≤ ½ and g_k small (Balaban's condition, enlarged O(1)); same on the G^c extension.
[I] D3R's θ bound (relative to the local coupling); D3 (P4), (P5); Lemma D3.1 for complex f.
[R] (a) (4.1) is my plaquette-local reading of Balaban's "expand to first order in A_0" (p. 357); the commutator-drop at background 1 is standard but not checked against [13] Sect. B. (b) p. 382 ("the quadratic form in the expansion (1.20)") not re-imaged; the claim that (1.77)'s form is the unweighted (1.21) form rests on p. 383's display, which carries ζ only. (c) The (P5) vertex itself stays [reduced] in D3; this file improves its coefficient but does not redo the Gaussian booking. (d) Complex f inherits FX-D (O2).
Correction for SOURCES_M1_SWEEP §5.1 / §5.3 sketches (this file edits neither): the condition 2c_Hg_k²r‖H_{1,k}‖² ≤ γ_0/(4d(100M)^5) is not needed; the binding condition is θ ≤ ½ (5γ²r ≤ ½), already in D3. The "(1.21) joins the small form" option is not needed either: (1.21) is source-free by (1.14).
Suggested CLOSURE_PLAN line (not written there): "NEW-4: CLOSED rel. D3 (B8)/(P4)/(P5), D3R θ ≤ 5γ²r, Lemma D3.1/FX-D (SOURCES_D3_NEW4); no new condition beyond 5γ²r ≤ ½."

Corrections after verification (SOURCES_D3_NEW4_VERIFY, 2026-10-28, images CMP 122 II pp. 356–361, 365–368, 382–383; CMP 99 p. 392): items 1–6 CONFIRMED. [R](a) discharged: the plaquette split (4.1) is CMP 99 (3.10) exactly (Σ|D_UA|² + curvature-small local Δ′). [R](b) discharged: p. 382 says "the quadratic form in the expansion (1.20)". Closure list corrected: add ρ_1 ≤ r/(4C_hM) (needed for θ ≤ 5γ²r; in canon B32 with 5γ²r ≤ ½, together giving θ ≤ ½); the source-touched large-field factors come from the recombined weighted term −A((g″)^{−2}ζ_1, U″) of (1.37) p. 365, not from the remainder of (1.14) — the positivity of (1.48) and the first-case factor on p. 382 (→ exp(−(1 − θ)A_1²48^{−2}R_j^{−8}p_1²)) depend on it; D3R §1.4 covers it by name, the factor-2 loss absorbed by g_j small; "O2 open" is stale (O2 closed and verified in FX_O23 §4, conditional on N3/B18). Minor: (1.11) uses the lower bound too (result unchanged); alternative route's R_j³ condition is a factor 2 larger unless A_1² ≥ 2. Final: NEW-4 CLOSED rel. D3 (B8)/(P4)/(P5)/(P6), D3R Lemma P3 + §1.3–1.4, canon B32, FX_O23 §4; (P5) Gaussian booking still [reduced] in D3; readings unchecked: ‖H_{1,k}‖ ≤ O(1)B_3, 0 ≤ ζ_0 ≤ 1, the G^c extension.
