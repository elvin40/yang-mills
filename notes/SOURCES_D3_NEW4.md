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

