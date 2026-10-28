# SOURCES_MA — input (M-A): equipartition bound for the cut-off Wilson density

Goal: prove ⟨A⟩_u ≤ C·n/u for the real (1.100)-type density, or state exactly what blocks it.
Inputs: SOURCES_HHOL_LF §3, §6 (M-A); SOURCES_HHOL_LF_VERIFY V3, V5, V7(6); CMP 122 I p. 201 (1.100); CMP 122 II (1.71)–(1.79). Firewall respected.
Tags: [P] proved here; [R] reduced to a named input; [I] inference; [V] verified against a page image or text.

## 1. Inputs read
- HHOL_LF §3.4(c): the cost is the average of e^{θx^{−2}A} against the real ratio density, θ = 0.174 (VERIFY V1). It equals D(x^{−2}(1−θ))/D(x^{−2}).
- HHOL_LF §6 (M-A) sketch: equipartition via log D(u_1) − log D(u_2) = ∫⟨A⟩_u du, plus a star-shaped cutoff and an Euler-type bound "B·∇A ≤ 2(1+O(ε))A". Note now: the virial route needs the Euler bound in the OTHER direction, B·∇A ≥ κA (see §3).
