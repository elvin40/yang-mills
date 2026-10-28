# SOURCES_CDC verification (independent)

Started 2026-10-27. Firewall: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.

## 1. CMP 99 pp. 419–422 (pdftotext, PDF p = journal p − 388) [V]
(3.122) verbatim: minimize "½⟨A,G^{−1}A⟩ − ½⟨B,aB⟩" on QA = B, "G^{−1} = Δ_π + DRD* + Q*aQ". Lagrange: A = GQ*(QGQ*)^{−1}B.
(3.128): ⟨A,G_1^{−1}A⟩ = ⟨A−DG′RD*A, Δ(A−DG′RD*A)⟩ − 2⟨HC^{(2)}(A−DG′RD*A), J⟩ + ‖RD*A‖² + a‖QA‖². (3.129) H_1B = G_1Q*(QG_1Q*)^{−1}B. (3.130) G_0 = (Δ + DRD* + Q*aQ)^{−1}.
So G_1^{−1} = M_1 + Q*aQ with M_1 = (Δ_π-part) + (J-part) + ‖RD*·‖² form. The author's split is the printed one. CONFIRMED.
(3.132) verbatim: "The operators (QGQ*)^{−1}, or (QG_1Q*)^{−1}, can be analyzed in the same way as ... We will not repeat these considerations here ... |(QGQ*)^{−1}(y,y′)| ≤ O(1)(L^jη)^{−2}(L^jη)^{−d}e^{−δ_1 d(y,y′)} ... and the same for the operator with G_1". On Λ ⊂ Λ_k, L^kη = 1, so the kernel is O(1)e^{−δ_1 d}. Schur gives ‖(QG_1Q*)^{−1}‖ ≤ O(1)(d, δ_1), uniform in k and regular U. SOURCES_CDC does not cite (3.132). It is the printed [R] form of the bound that SOURCES_CDC reduces to (E_U).
