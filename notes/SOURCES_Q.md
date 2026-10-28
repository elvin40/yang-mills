# SOURCES_Q — input (Q): lower bound on fluctuation covariance

Status: done 2026-10-27. Verdict §6: (Q) reduced to ‖C*Δ_kC‖ ≤ γ_1 (CMP 116 (2.7) uses it; CMP 99 p. 428 asserts it); c_− = ‖C*Δ_kC‖^{−1}; B vs B′ closed (same round cut).

## 1. CMP 116 pp. 12–17: what the B-integral is [V images, P]

[V] p. 12 (2.3): χ^c_{k,P} = Π_{b∈P} χ({|B(b)| ≥ ε_1/g_k}). The cut on P is on B.
[V] p. 12 (2.5): dμ_{C^{(k)}(Z_0)}(B) is the Gaussian with weight exp(−½⟨Z_0B, C*Δ_kCZ_0B⟩). So C^{(k)}(Z_0)^{−1} = Z_0 C*Δ_kC Z_0, the Z_0-block of the precision.
[V] p. 13 (2.7): "(C^{(k)})^{1/2} = (C*Δ_kC)^{−1/2} = (1/π)∫_0^∞ dx x^{−1/2}(xI + C*Δ_kC)^{−1}". So C^{(k)} = (C*Δ_kC)^{−1}. The split at γ_1 and the series Σ (−1)^n/(n+½) γ_1^{−n−1/2}(C*Δ_kC)^n converge only if ‖C*Δ_kC‖ < γ_1. So CMP 116 uses an upper bound on C^{(k)−1} itself; "if γ_1 is sufficiently large" [V p. 13].
[V] p. 15 (2.14)–(2.15): B-measure dμ_{(Re C^{(k)}(Z_0,σ(Z))^{−1})^{−1}}(B), tilt exp(−⟨B, Re Γ_k X⟩), Γ_k(Z_0,σ) = C*Δ_k(σ)CZ^c_0(C^{(k)})^{1/2}(σ).
[V] p. 16 (2.16)–(2.22): perturbations R_1, R_2, R_3, the V_k bound (2.20), and (2.22) χ_{k,Y_0}χ^c_{k,P} ≤ exp(−½γ_2(ε_1²/g_k²)|P| + ½γ_2‖PB‖²).
[V] p. 17 (2.23): ∫dμ_0(X)_Z exp(−½⟨Γ_kX, C^{(k)}(Z_0,0)Γ_kX⟩ + ½α_5‖ZX‖²) ∫dμ_{C^{(k)}(Z_0,0)}(B) exp(−⟨B, Γ_kX⟩ + ½α_5‖Z_0B‖²), α_5 = O(1)e^{−δ_0M/3} + O(α_0 + α_1) + O(1)α_4 + γ_2. Then "we have assumed that α_5‖C^{(k)}(Z_0,0)‖ < ½" (before (2.25)). No propagator paper is cited on pp. 15–17 for this norm; the norm is taken as given.

1.1 Joint form [P]. Complete the square in B. With C_0 := C^{(k)}(Z_0,0) and Γ := Γ_k(Z_0,0),
 −½⟨B, C_0^{−1}B⟩ − ⟨B, ΓX⟩ = −½⟨B + C_0ΓX, C_0^{−1}(B + C_0ΓX)⟩ + ½⟨ΓX, C_0ΓX⟩.
The last term cancels the first X-exponent of (2.23). So at α_5 = 0 the joint law Q_0 of (X, B) is: X ~ N(0, I), B = −C_0ΓX + W, W ~ N(0, C_0) independent. Covariance Q_0^{−1} = MM*, M = [[I, 0], [−C_0Γ, C_0^{1/2}]]. Its B-block is C_0 + C_0ΓΓ*C_0 = the Z_0-block of C^{(k)} (Schur complement; this is (2.5) read backwards). This agrees with SOURCES_G3_VERIFY item 3 fix (i).
1.2 Perturbed form [P]. The majorant (2.23) is exp(−½⟨v, Qv⟩), v = (X, B), Q = Q_0 − α_5 diag(Z, Z_0). So Q ≤ Q_0.

## 2. CMP 99 Sect. E "Unit lattice propagators" (pp. 427–432) [V images]

[V] p. 427 (3.155): the covariance C^{(k)}(Λ) is defined by a Gaussian integral over B on the unit lattice with δ(Q_1B) and Dirichlet conditions outside Λ ⊂ Λ_k = Ω_k^{(k)}.
[V] p. 428 (3.156): ⟨B, (QG_1Q*)^{−1}B⟩ − a⟨B, B⟩ − 2⟨H_1D̃^{(2)}(B), J⟩ = ⟨B, Δ_kB⟩, on the subspace {B = 0 on Λ^c, B = 0 on ∪A_x(y), Q_1B = 0}, parametrized as B = CB̃ ("C is almost local").
[V] p. 428 (3.157)–(3.158): C^{(k)}(Λ) = C(C*Δ_kC)^{−1}C*, and (C*Δ_kC)^{−1} = C̃^{(k)}(Λ) = C^{(k)}(Λ)↾_{Λ̃}.
[V] p. 428, verbatim: "It is more convenient to work with the operator C̃^{(k)}(Λ), because it is defined by a positive definite operator C*Δ_kC with a lower bound γ_0 > 0 independent of k and U. We have proved it in [4], Lemma 2.4, for operators with U = 1. Localizing the operators in Δ_k and using the methods of Sect. B we can prove it for C*Δ_kC with an arbitrary configuration U satisfying (3.35), (3.36) with Mα_0 sufficiently small. This property, together with a uniform exponential decay of C*Δ_kC implies bounds and uniform exponential decay for C̃^{(k)}(Λ), hence for C^{(k)}(Λ), by the theorem of Sect. 5 in [2]."
([4] = CMP 96, [2] = CMP 89 "Regularity and decay of lattice Green's functions"; reference list p. 433–434 [V text].)

2.1 Reading [I]. The quoted sentence gives two facts. (a) C*Δ_kC ≥ γ_0 > 0, uniform in k and U (U = 1: CMP 96 Lemma 2.4; regular U: asserted, "we can prove"). This is the UPPER bound on the covariance: ‖C̃^{(k)}‖ ≤ γ_0^{−1}. It is the Λ side, and it is the bound behind CMP 116's α_5‖C^{(k)}(Z_0,0)‖ < ½. (b) "uniform exponential decay of C*Δ_kC": a kernel bound |(C*Δ_kC)(b, b′)| ≤ K e^{−δ|b−b′|}, uniform in k, U, Λ. By the Schur test this gives ‖C*Δ_kC‖ ≤ K Σ_{b′} e^{−δ|b−b′|} =: γ_1′ < ∞. This is the c_− side. Fact (b) is stated, not given a number or a theorem label, on p. 428.

## 3. Free-field versions: CMP 96 and CMP 95 [V images]

[V] CMP 96 p. 244, on the unit-lattice form (2.120) ‖B↾Λ^c‖² + L^{−2}‖(Q_1B)↾Λ′‖² + ⟨B, Δ_jB⟩ (a = 1): "The form is bounded from above, and bounded from below by ‖B↾Λ^c‖²." No constant is printed for the upper bound.
[V] CMP 96 p. 245, Lemma 2.4 (2.128): L^{d−2}Σ_{c∈Λ′}|(Q_1B)(c)|² + Σ_p|(∂_1B)(p)|² ≥ (1/(12d²)) L^{−d−1}‖B‖², for B on Λ = B(Λ′) with B(Γ_{y,x}) = 0 (axial condition (2.121)).
[V] CMP 96 p. 246: "These forms are bounded from below by γ_0‖B‖² with a positive constant γ_0 dependent on d and L only. This implies that a covariance C_j^{(1)} of the Gaussian integral in (2.119) is bounded from above by a positive constant dependent on d and L only, and it has an exponential decay".
[V] CMP 95 p. 34 (1.99)–(1.101): QGQ* = a^{−1}I − a^{−1}φ^{−1} + …, and "a^{−1}(φ − 1)φ^{−1} ≤ QGQ* ≤ a^{−1}I" (1.100); "(φ − 1)/φ … is bounded from below and above by positive constants dependent on d only (for a = 1). The same property holds for QGQ*."

3.1 Reading [P/I]. (1.100) is the free (U = 1) two-sided bound for QGQ*. Its LOWER half gives ‖(QGQ*)^{−1}‖ ≤ a·sup(φ/(φ − 1)) =: a·κ_d < ∞, κ_d depending on d only. (QG_1Q*)^{−1} is the leading term of Δ_k in CMP 99 (3.156) [V]. So in the free case ‖Δ_k‖ ≤ aκ_d (the −a⟨B, B⟩ term only lowers it; J = 0) [P, given (1.100)]. [I] CMP 99's G_1 (3.138) is the background-field analogue of CMP 95's G; the identification of operators across the two papers is by Balaban's own "analogous" remarks, not checked line by line.
3.2 What is NOT printed. No numerical value of κ_d, of γ_0 beyond (2.128), or of ‖C‖ (the almost-local parametrization B = CB̃) appears on the pages read. Every constant is "dependent on d and L only".

## 4. The lower bound c_− from the joint form [P]

4.1 Operator monotonicity. Let Q be the joint precision in (2.23), Q = Q_0 − α_5·diag(Z, Z_0) [V p. 17 form]. Assume Q > 0 (see 4.3). Then Q ≤ Q_0, so Q^{−1} ≥ Q_0^{−1} (inversion is operator-decreasing on positive definite matrices). Compress to the n×n block at bond b (n = dim g):
  Γ_bb := (Q^{−1})_bb ≥ (Q_0^{−1})_bb = C^{(k)}(b, b) ≥ λ_min(C^{(k)})·I_n = ‖C*Δ_kC‖^{−1}·I_n.
The middle equality is §1.1 (the B-block of Q_0^{−1} is the Z_0-block of C^{(k)} = (C*Δ_kC)^{−1}). The last step is the brief's item (2): for C > 0, ⟨v, Cv⟩ ≥ ‖C^{−1}‖^{−1}|v|², so every diagonal block is ≥ ‖C^{−1}‖^{−1}. So
  c_− := ‖C*Δ_kC‖^{−1}.
The α_5-perturbation only helps the lower bound. No separate perturbative step is needed.
4.2 Marginal, not conditional. The surface term at bond b is ∫_{|x|=r} p_b(x) dσ(x) times the Gaussian normalizer of (2.23), which Balaban bounds in (2.24)–(2.25). p_b is the N(0, Γ_bb) density: p_b(x) ≤ (2π)^{−n/2}(det Γ_bb)^{−1/2}e^{−|x|²/(2Λ)} ≤ (2πc_−)^{−n/2}e^{−r²/(2Λ)} on |x| = r, Λ := λ_max(Γ_bb). The joint mean is 0, so no X-dependent shift enters (SOURCES_G3_VERIFY fix (i)).
4.3 Upper side Λ. Q_0^{−1} is positive with X-block I and B-block ≤ ‖C^{(k)}‖ ≤ γ_0^{−1} (CMP 99 p. 428 lower bound γ_0 on C*Δ_kC). For a positive 2×2 block operator the norm is ≤ the sum of the diagonal-block norms, so ‖Q_0^{−1}‖ ≤ 1 + γ_0^{−1} =: Λ_0. Then Q ≥ Q_0 − α_5 ≥ Λ_0^{−1} − α_5 > 0 if α_5Λ_0 < 1, and Λ ≤ ‖Q^{−1}‖ ≤ Λ_0/(1 − α_5Λ_0) ≤ 2Λ_0 for α_5Λ_0 ≤ ½. This is Balaban's α_5‖C^{(k)}(Z_0,0)‖ < ½ with γ_0^{−1} replaced by 1 + γ_0^{−1}; α_5 is a free small parameter, so the change costs nothing.
4.4 Value of c_−. (a) [V-anchored] CMP 116 p. 13 (2.7) expands (C*Δ_kC)^{−1/2} as Σ_n (−1)^n/(n+½)·γ_1^{−n−1/2}(C*Δ_kC)^n for the x > γ_1 part; this series converges only if ‖C*Δ_kC‖ < γ_1. So Balaban's own step already uses ‖C*Δ_kC‖ < γ_1, and c_− ≥ γ_1^{−1}. γ_1 is "sufficiently large" with no value. (b) [P, free case U = 1, J = 0] ‖C*Δ_kC‖ ≤ ‖C‖²‖Δ_k‖. ‖Δ_k‖ ≤ a·κ_d from CMP 95 (1.100) (§3.1). For ‖C‖: CMP 96 (2.125) [V] writes (Q_1B)(c) as an equal-weight average over the L^{d+1} bonds of the corridor B(c); solving (Q_1B)(c) = 0 for B(b_0(c)) gives B(b_0) = −Σ_{b∈B(c)\b_0}B(b), and Cauchy–Schwarz gives ‖C‖² ≤ L^{d+1}. So c_− ≥ (a κ_d L^{d+1})^{−1}, κ_d := sup_p φ/(φ − 1) from (1.101), depending on d only, not printed. [I] the equal-weight form of Q is the free CMP 96 one; CMP 99's Q(U) adds contour transport, a (1 + O(α_0)) change for regular U.
(c) M does not enter: the Dirichlet domain only compresses C*Δ_kC, which cannot raise its norm. So c_− = c_−(d, L, a), uniform in k, volume, and regular U (the U-uniformity is CMP 99's asserted "uniform exponential decay of C*Δ_kC", §2.1(b)).

## 5. B versus B′ on the cut bonds (CMP 109 pp. 266–268 images) [V, P]

[V] p. 266 (2.9): χ_k = Π_{b∈T^{(k)}\{b_0(c): c∈T^{(k+1)}}} χ({|B′(b)| < ε_1}). The b_0 bonds are excluded from the cut.
[V] p. 267 (2.10): the integral is ∫dB′σ(B′)δ(Q̃(B′))χ_k exp[−(1/g_k²)G(B′) − (1/g_k²)A(U_{k+1}) − …]. The explicit 1/g_k² factors show B′ is the UNSCALED fluctuation; the cut |B′| < ε_1 is g-free in B′.
[V] p. 267: "(hB)(b_0(c)) = h(c)B(c)"; "The function hB is equal to 0 everywhere, except the set {b_0(c)}". The linearizing change is B′ = B − hD̃(B). Then "the scaling transformation", and on p. 268 "using the δ-functions δ(Q̃B) we eliminate the variables B′(b_0(c)) … the remaining variables by B we have B′ = CB".
[V] p. 268 (2.12): every term is a function of g_kCB − hD̃(g_kCB). So the original variable is B′_orig = g_kCB − hD̃(g_kCB).
[V] CMP 99 p. 428: "C is an identity operator on almost all bonds, except the bonds b_0 for which a value (CB̃)(b_0) is equal to a solution of the equation (QB)(c) = 0".
[V] p. 267 (top): "restrictions on B′(b_0(c)), with the constant ε_1 replaced by O(ε_1), because these variables can be expressed in terms of the remaining ones".

5.1 Decision [P]. For a cut bond b ∉ {b_0(c)}: (hD̃)(b) = 0 and (CB)(b) = B(b). So B′_orig(b) = g_kB(b) exactly, and |B′_orig(b)| < ε_1 ⟺ |B(b)| < ε_1/g_k. The CMP 109 cut (2.9), written in the final integration variable B of (2.12)–(2.13), is the round-ball cut of CMP 116 (2.3), on every cut bond, Y_0 and P alike. The two papers cut the same set; they only name the variable differently.
5.2 Consequences. (i) No deformed sphere arises. The surface |B(b)| = ε_1/g_k is a round sphere in R^n for Y_0 bonds too. The residual [check] of SOURCES_G3_VERIFY item 3 is closed without a Jacobian. (ii) The Jacobian 1 + O(ε_1) is not needed. It would arise only for b_0 bonds, and those carry no cut factor; their "O(ε_1)" restriction is an implied bound, not a cut. (iii) The measure dμ_{C^{(k)}}(B), C^{(k)} = C^{(k)}(U_{k+1}), does not depend on g_k, so ∂_{g_k} at fixed B acts only on the cut and on the explicit g_k in the integrand. SOURCES_G3 §2.1 stands as written.
[I] residual: the printed "scaling transformation B = g_kB′" on p. 267 reuses the letters; I read the variable map from (2.12), which is unambiguous.

## 6. Conclusion and ledger

Verdict: (Q) is REDUCED, not obstructed, and not reduced to a numbered theorem. The lower bound is c_− = ‖C*Δ_kC‖^{−1} (§4.1), with no perturbative loss. It needs one input: ‖C*Δ_kC‖ ≤ γ_1 < ∞, uniform in k, volume, and regular U. That input is (a) used, unproved, by CMP 116 (2.7) p. 13 itself; (b) asserted in CMP 99 p. 428 as "uniform exponential decay of C*Δ_kC", with no theorem number and no constant; (c) proved in the free case U = 1 from CMP 95 (1.100) and CMP 96 (2.125): c_− ≥ (aκ_dL^{d+1})^{−1}. The Λ side uses CMP 99 p. 428 γ_0 (proved for U = 1 in CMP 96 Lemma 2.4, asserted for regular U). Only existence is proved; no numerical c_− or Λ is printed. M does not enter. The B vs B′ question is closed: same round-sphere cut on all cut bonds, no Jacobian (§5).

[V] CMP 116 p. 12 (2.3), (2.5); p. 13 (2.7); p. 15 (2.14)–(2.15); p. 16 (2.16)–(2.22); p. 17 (2.23)–(2.26) and "α_5‖C^{(k)}(Z_0,0)‖ < ½". CMP 99 p. 427 (3.155); p. 428 (3.156)–(3.158) and the γ_0 / exponential-decay paragraph; p. 398–399 Theorems 3.1–3.3 (text layer; upper bounds on G, G′ only, no lower bound). CMP 96 p. 244 "bounded from above"; p. 245 Lemma 2.4 (2.128); p. 246 γ_0 sentence. CMP 95 p. 34 (1.99)–(1.101). CMP 109 p. 266 (2.9); p. 267 (2.10), h, linearization; p. 268 (2.12)–(2.13), B′ = CB.
[P] §1.1 joint form and B-block = Z_0-block of C^{(k)}; §4.1 c_− by operator monotonicity; §4.2 marginal density bound; §4.3 Λ ≤ 2(1 + γ_0^{−1}) for α_5(1 + γ_0^{−1}) ≤ ½; §4.4(a) convergence of the (2.7) series forces ‖C*Δ_kC‖ < γ_1; §4.4(b) ‖C‖² ≤ L^{d+1} (free Q); §5.1 B′_orig(b) = g_kB(b) off b_0 bonds.
[I] CMP 99 G_1 ↔ CMP 95 G identification (§3.1); CMP 99 Q(U) ≈ free Q up to 1 + O(α_0) (§4.4(b)); (2.20)/(1.42) bounds hold on the closed small-field set, so on the sphere |B(b)| = ε_1/g_k by continuity; the letter reuse on CMP 109 p. 267 (§5.2).
[R] CMP 99 p. 428: uniform-in-U upper bound ‖C*Δ_kC‖ ≤ γ_1 and lower bound C*Δ_kC ≥ γ_0 for regular U ("we can prove", not proved on the page). Same status as CMP 116 (2.7).
Open: numerical κ_d (computable from the CMP 95 (1.101) momentum formula); a page-level proof of the U-uniform norm bound (CMP 99 Sect. B perturbation in A = log U/(iη), Theorem 3.4 style, applied to (QG_1Q*)^{−1}).
