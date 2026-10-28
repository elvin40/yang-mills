# SOURCES_QE_KE_HQ verification (2026-10-28)

Independent check of SOURCES_QE_KE_HQ.md §1–§4. One section appended per step.

## 0. Setup
Read SOURCES_QE_KE_HQ.md §1–§4 in full; QE_INV_VERIFY §3, §4, §6, §8; EU_VERIFY §2. Firewall kept (no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP).
Prior state: QE_INV_VERIFY §4 read CMP 96's Q_j as the corridor (1.8) from pdftotext pp. 223–225 only. The author now claims it is the straight line (1.11)/(1.18).

## 1. CMP 95 pp. 19–20 page images (pdf pp. 3–4) [V]
(1.8): B_c = Σ_{x∈B(c_−)} L^{−(d+1)}(A(Γ_{c_−,x}) + A([x,x(c)]) + A(Γ_{x(c),c_+})). This is the gauge-covariant corridor form. (1.9): B^λ = B − (∂λ)(c), so the residual group is λ(y) = 0 at block points; the rest is removed by axial δ_Ax (1.10).
(1.11): (QA)_c = Σ_{x∈B(c_−)} L^{−(d+1)}A([x,x(c)]), δ(B − QA) — straight line. Printed next: "then the renormalization transformation T is DEFINED by (1.12) (Te^{−S})(B) = ∫dA δ(B − QA)δ_Ax(A)e^{−S(A)}". So (1.11) is the definition used in T; (1.8) equals (1.11) on the axial slice. Then (1.13): Q directly, residual group Q′λ = 0; "In the future we will use both points of view."
Page 20, Sect. B: (1.16) composition δ(C − QB)δ(B − QA) → δ(C − Q_2A), "Q_2 is defined as Q only with L replaced by L²". (1.17) δ(B − Q_kA)δ_Ax(Q_{k−1}A)…δ_Ax(A). (1.18) (Q_kA)_b = Σ_{x∈B^k(b_−)} η^{d+1}A([x,x(b)]) — straight line. (1.20) Q_kA^λ = Q_kA − ∂Q′_kλ. Text: "The δ-function δ(B − Q_kA) is invariant with respect to gauge transformations λ satisfying Q′_kλ = 0 and we can look at the integral (1.17) as obtained by removing this gauge freedom by the help of the δ-functions δ_Ax." Sect. C then changes the gauge fixing (Faddeev–Popov) away from axial.
Verdict on the two forms: (1.11)/(1.18) is the operative definition of Q, Q_k; (1.8) is the gauge-invariant form, which agrees with (1.11) only on the axial slice. After Sect. C drops δ_Ax, only δ(B − Q_kA) with the straight-line Q_k remains. Author's §1.1–1.2 CONFIRMED. (Small wording point: the author calls (1.8) "the axial-gauge form"; strictly (1.11) is the form that needs the axial slice to agree with the gauge-covariant (1.8). Not load-bearing.)

