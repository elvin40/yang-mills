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

## 4. CMP 95 pp. 33–34 [V text] and K_0 numerics [N]
p. 33: R = I − P, P = Δ^{−1}Q′*(Q′Δ^{−2}Q′*)^{−1}Q′Δ^{−1} = X(X*X)^{−1}X* with X = Δ^{−1}Q′*. So R is an orthogonal projection in the free case. (1.95), (1.97): the extra constraint Rd*A = 0 is automatic, so H_k is the min over QA = B alone. (1.99)–(1.100) as quoted.
K_0 [P]. From (1.99), QGQ* ≥ a^{−1}(φ−1)φ^{−1} (third term ≥ 0). With φ = 1 + aT (KAPPA_D): (QGQ*)^{−1} ≤ a + 1/T. So N_0^{−1} = (QGQ*)^{−1} − a ≤ 1/T and K_0 ≤ 1/inf T = a(κ − 1). This is a-free because T has no a. It is an upper bound (the third term of (1.99) is dropped), not proved equal.
Numbers [N, recomputed, k → ∞ corner sum]: d = 4: 1/inf T = 195.19 (= κ_4 − 1 at a = 1). d = 3: 126.85. Matches KAPPA_D (196.188, 127.853). The "inf at the corner (π,…,π)" and "κ increasing in N" are KAPPA_D numerics [N], not proofs.
Crude bound check [P]: s(q) ≥ (2/π)² on |q| ≤ π and Δ(p′) ≤ dπ², so the l′ = 0 term gives K_0 ≤ dπ²(π/2)^{2(d+1)} = 3610 (d = 4). The author's dπ²(π/2)^{4d} = 54235 is valid (d+1 ≤ 2d sinc factors) but 15× looser than needed; the true value is 195.19.
Multiscale caveat [P/I]. CMP 95 is single-scale (Q = composite k-step average on all of T). CMP 99's Q acts on the multiscale lattice 𝔅. For B supported in Λ the constraint Q_𝔅A = B also forces zero averages in the finer regions Λ_j, j < k. The min-energy is then ≥ the single-scale min, so CMP 95 gives K_0 only after a correction e^{−δ RM} from dist(Λ, Λ_k^c) > RM and exponential decay of the single-scale minimizer [I]. "Free case PROVED" holds for single-scale U = 1; for the multiscale free G_0 it needs this step.

## 5. CMP 116 p. 13 [V text]
(2.7) and "Expanding the operator Δ_k into the generalized random walks, we obtain an expansion of the series above, if γ_1 is sufficiently large" CONFIRMED. The construction is cited to [13] Sect. C "for all operators determining Δ_k". The resolvent part uses G_3(x) with an added nonnegative almost-local term.
Gap carried from SOURCES_Q_VERIFY §1: G3's chain uses the localized operator C^{(k)}(Z_0, 0) (s-parameters at 0). SOURCES_CDC §6 bounds only the bare C*Δ_kC. The norm input must also cover the s-localized Δ_k(s) [I; same random-walk family, not checked].

## 6. Regularity and the counterexample
Upper bound needs regularity: CONFIRMED in substance. Without (3.35), fine fields with block averages B pay covariant-derivative energy at scale η^{−2}; (3.132) carries the factor (L^jη)^{−2}, which is 1 only because the regular class makes unit units the right scale. Constant flux θ per η-plaquette violates (3.35) as k grows (field strength θη^{−2} in unit units). Charged components then cost ~θη^{−2} (lowest Landau level). That branch of §7.2 is plausible [I].
The other branch ("M_1 > 0 fails, Nielsen–Olesen") is not needed and doubtful: (3.119) writes ⟨A,Δ_πA⟩ as ⟨A′,ΔA′⟩ with Δ ≥ 0, so the leading part of M_1 is ≥ 0 for any U. Drop it.
§7.3 "regularity needed for the lower bound γ_0": UNSUPPORTED. Rough U raises covariant energies; it does not obviously lower them. No argument is given.
Norm vs form: ‖N_1^{−1}‖ = sup_B min{⟨A,M_1A⟩ : QA = B}/‖B‖² holds when N_1^{−1} ≥ 0. M_1 has an O(Mα_0) indefinite J-part, so the norm is max(sup, −inf); §5.1 handles this by the comparison with G_0. Fine.

## 7. Grades
(1) CORRECTED: leading term and L^{2k} scaling right; upper-bound regularity right; drop the negative-mode branch; γ_0 claim unsupported.
(2) CONFIRMED: Woodbury algebra and sign exact; variational route needs only G_1 > 0 and Q onto. But (E_U) is not the last open input: CMP 99 (3.132) prints the k-uniform exponential kernel bound on (QG_1Q*)^{−1} [R, "not repeated"].
(3) CORRECTED: ‖C‖² ≤ L^{d+1} (not 1 + L^{d+1}; §3.3 "Better" is worse); K_0 ≤ 1/inf T = a(κ−1), a-free; d = 4: 195.19; crude bound valid, true l′=0 bound 3610; multiscale step [I]; R orthogonal projection confirmed for U = 1 only.
(4) CONFIRMED, with the s-localized operator gap.
(5) CORRECTED: ledger omits (3.132); "free case proved" = single-scale only; J is a second derivative of A.
