# SOURCES_CDC verification (independent)

Started 2026-10-27. Firewall: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.

## 1. CMP 99 pp. 419–422 (pdftotext, PDF p = journal p − 388) [V]
(3.122) verbatim: minimize "½⟨A,G^{−1}A⟩ − ½⟨B,aB⟩" on QA = B, "G^{−1} = Δ_π + DRD* + Q*aQ". Lagrange: A = GQ*(QGQ*)^{−1}B.
(3.128): ⟨A,G_1^{−1}A⟩ = ⟨A−DG′RD*A, Δ(A−DG′RD*A)⟩ − 2⟨HC^{(2)}(A−DG′RD*A), J⟩ + ‖RD*A‖² + a‖QA‖². (3.129) H_1B = G_1Q*(QG_1Q*)^{−1}B. (3.130) G_0 = (Δ + DRD* + Q*aQ)^{−1}.
So G_1^{−1} = M_1 + Q*aQ with M_1 = (Δ_π-part) + (J-part) + ‖RD*·‖² form. The author's split is the printed one. CONFIRMED.
(3.132) verbatim: "The operators (QGQ*)^{−1}, or (QG_1Q*)^{−1}, can be analyzed in the same way as ... We will not repeat these considerations here ... |(QGQ*)^{−1}(y,y′)| ≤ O(1)(L^jη)^{−2}(L^jη)^{−d}e^{−δ_1 d(y,y′)} ... and the same for the operator with G_1". On Λ ⊂ Λ_k, L^kη = 1, so the kernel is O(1)e^{−δ_1 d}. Schur gives ‖(QG_1Q*)^{−1}‖ ≤ O(1)(d, δ_1), uniform in k and regular U. SOURCES_CDC does not cite (3.132). It is the printed [R] form of the bound that SOURCES_CDC reduces to (E_U).

## 2. CMP 99 pp. 427–428 [V text]
(3.155) display is garbled in text; the prose confirms: Dirichlet outside Λ, dist(Λ, Λ_k^c) > RM, U with (3.35), (3.36), D̃^{(2)} a quadratic polynomial. (3.156) verbatim: "⟨B,(QG_1Q*)^{−1}B⟩ − a⟨B,B⟩ − 2⟨H_1D̃^{(2)}(B), J⟩ = ⟨B, Δ_kB⟩" on {B = 0 on Λ^c, B = 0 on ∪A_x(y), Q_1B = 0}. C quote and (3.157)–(3.158) match SOURCES_CDC §1. CONFIRMED.
Woodbury check [P]. Write G_1^{−1} = M_1 + Q*aQ (a may be a diagonal scale weight on 𝔅; on Λ it is the scalar a). Put N_1 = QM_1^{−1}Q*. Woodbury: G_1 = M_1^{−1} − M_1^{−1}Q*(a^{−1} + N_1)^{−1}QM_1^{−1}. So QG_1Q* = N_1 − N_1(a^{−1} + N_1)^{−1}N_1 = N_1(I + aN_1)^{−1}. Inverse: (I + aN_1)N_1^{−1} = N_1^{−1} + a. Sign: (3.156) subtracts a⟨B,B⟩, so Δ_k = N_1^{−1} − (J-term), exact cancellation of a on B supported in Λ. CONFIRMED.
Better route [P]: no invertibility of M_1 is needed. On {QA = B}, ⟨A,G_1^{−1}A⟩ = ⟨A,M_1A⟩ + ⟨B,aB⟩, so min{⟨A,G_1^{−1}A⟩ : QA = B} − ⟨B,aB⟩ = min{⟨A,M_1A⟩ : QA = B}. Conditions: G_1 > 0 (so the left min is finite and equals ⟨B,(QG_1Q*)^{−1}B⟩ by the Lagrange computation of p. 420) and Q onto (so QG_1Q* is invertible). M_1 need only be > 0 on ker Q, which follows from G_1 > 0. The §2.1 "[check: M_1 > 0]" is not needed.

## 3. CMP 99 pp. 396–397 [V text]
(3.35), (3.36) as SOURCES_CDC §4 quotes. In unit units (j = k, L^kη = 1): |A|, |∇A|, |∂*∂A| all ≤ O(1)Mα_0. CONFIRMED.
Small correction to §5.2: J = D*η^{−2}Im∂U is D* of the curvature, i.e. a SECOND derivative of A, not a third. (3.36) bounds exactly this second derivative. The conclusion |J| = O(Mα_0) in unit units stands.
