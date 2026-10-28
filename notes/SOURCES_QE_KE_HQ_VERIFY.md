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

## 2. CMP 96 page images pp. 224, 226, 243, 248, 249 (pdf 2, 4, 21, 26, 27) [V]
p. 224: (2.3) Λ_j = Ω_j^{(j)} ∖ Ω_{j+1}^{(j)}, Λ_0 = Ω_1^c; bond sets = bonds with at least one endpoint in the set. (2.6) A = B_0 on Λ_0, Q_jA = B_j on Λ_j. (2.7) "The functional and the conditions are invariant with respect to gauge transformations λ … such that λ = 0 on Λ_0, Q′_jλ = 0 on Λ_j." (2.8) gauge orbit minimum with the same group.
Discriminating check [P]: invariance of Q_jA = B_j under all λ with Q′_jλ = 0 holds iff Q_j(∂λ) = ∂Q′_jλ, which is CMP 95 (1.20) for the straight line. For the corridor (1.8), Q_C(∂λ) = L^{−j}∂(λ at block points), which is not 0 for generic λ with Q′_jλ = 0. So (2.7) is consistent only with the straight-line Q_j.
p. 226: (2.20) "(QA)(b) = (Q_jA)(b) for b ∈ Λ_j, (Q_0A)(b) = A(b)" — the Λ_0 rows are part of the same Q. (2.24) δ(Q′λ) again. (2.35) A = HB = GQ*(QGQ*)^{−1}B, the unique critical point of (2.5) under (2.6), (2.12). So QH = I holds on every row of 𝔅, Λ_0 rows included (Q_0 = identity).
p. 243: (2.112)–(2.119) use δ(Q_jA − B)·Π δ_Ax(y)(B)·|(Q_1B)(c)|² — the CMP 95 (1.17) pattern (straight-line Q + axial δ on the intermediate field). No corridor form appears.
p. 248: (2.144)–(2.146). "This expression is gauge-invariant with respect to gauge transformations given by λ satisfying Q′λ = 0." (2.146) text: "From the definition of H_j we have Q_jH_j = I". Same Q′ group, same Q.
p. 249: (2.150) (HB)(b) = Σ_{c∈𝔅}(L^{j(c)}η)^dH(b,c)B(c); (2.151) |H|, |∇H|, ‖ζ∇H‖_α ≤ O(1)[1, (L^jη)^{−1}, …](L^{j′}η)^{−d}e^{−δ_5d(y,c_−)}. Text above Cor. 2.8 (p. 248): "this theorem holds for the operators G(Ω) with Dirichlet boundary conditions on Ω^c, Ω ⊃ Ω_1."
Verdict: the H of Cor. 2.8 is H = GQ*(QGQ*)^{−1} with Q = (Q_0 = 1 on Λ_0; straight-line Q_j on Λ_j). No switch to (1.8) on any page read. Interfaces and the Λ_0 rows are inside the SAME operator Q and the same identity QH = I.
Side remark [R, not load-bearing for (KE′)]: at an interface bond c ∈ Λ_j with c_+ ∈ Ω_{j+1}^{(j)}, the group (2.7) constrains only Q′_{j+1}λ at c_+, not Q′_jλ(c_+). So invariance of that row is not obvious as printed. This affects Balaban's orbit argument, not the identity QH = I, which follows from (2.35) directly.

## 3. CMP 98 pp. 27, 31 page images (pdf 11, 15) [V]
p. 27, quoted: "we make a gauge transformation λ satisfying (Q′λ)(y) = Σ_{x∈B(y)}L^{−d}λ(x) = 0. Such a transformation does not change the average given by (1.11) in [2], and this is very important because the explicit representations of propagators, and other formulas, hold for this specific form of the averaging operation." Reference [2] = Balaban, CMP 95, 17–40 (1984) (reference list, p. 51). Author's §1.7 CONFIRMED verbatim.
(55)–(58): V = V′V_0, R(X)Y = XYX^{−1}; axial condition (R_{0,y}V′)(Γ_{y,x}) = Π_{b⊂Γ_{y,x}}R(V_0(Γ_{y,b_−}))V′_b = 1, x ∈ B(y).
p. 31: (89) (R̄(V_0)V_1)_c = (R̄_{0,c_−}V_1)^{−1}Ṽ_1R̄_{0,c}R̄_{0,c_+}V_1, Ṽ_1 := (V_1V_0)‾_c(V̄_0)_c^{−1} (the (59) object). (90)–(91): Ū_1 = R̄(U_0)U_1, Ū_1^{j+1} = R̄(Ū_0^j)Ū_1^j — composition of one-step operations with background V_0 = Ū_0^j. (92) the k-th order operation equals this composition. The background sequence Ū_0^j itself is the j-fold one-step average (63) of U_0.
Note: (89) is a statement about V_1 (fluctuation) relative to V_0; for (iii) the relevant object is the background average Ū_0^{j+1} = (Ū_0^j)‾ via (63). Reading (61)–(63) next.

