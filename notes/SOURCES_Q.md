# SOURCES_Q — input (Q): lower bound on fluctuation covariance

Status: in progress (2026-10-27).

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
