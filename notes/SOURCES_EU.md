# SOURCES_EU — the extension lemma (E_U) of SOURCES_CDC §4 (2026-10-27)
Tags: [V] read on the page (pdftotext or image), [P] proved here, [N] numerics, [R] reasoned from Balaban's text without a page-level check, [I] gap.
Goal: K_0(d) numerically (free case), then an explicit covariant extension for regular U with K ≤ K_0(1 + c·Mα_0).

## 1. Where Q(U) is defined: CMP 99 Sect. A defers to CMP 98 [V pdftotext CMP 99 pp. 392–394, 396]
[V] CMP 99 p. 392: "the definition is quite long and complicated we refer the reader to that paper [5]. ... the averaging operation used here is the operation U_j defined by the formulas (89)–(92) of that paper. We replace U_0 by U". p. 393: Q_j(U) = Q(U)···Q(U) (3.15), "a composition of j one-step averaging operators ... where Q(U) is given by the explicit formula (124) in [5]." [5] = CMP 98 "Averaging operations for lattice gauge theories" (balaban/1985_cmp98_*).
[V] CMP 99 p. 393 (3.19), gauge-transformation average: (Q′(U)λ)(y) = Σ_{x∈B^j(y)} L^{−jd} R(U(Γ_{y,x}))λ(x); "The contours Γ_{y,x}, x ∈ B_j(y), and the contour variables U(Γ_{y,x}) were defined by (52), (53) in [5]." R(·) = adjoint action. So the scalar average is an equal-weight block average of adjoint-transported values along fixed contours Γ_{y,x}.
[V] (3.16): ⟨A, Q*aQ A⟩ = Σ_j a Σ_{b∈Λ_j} (L^jη)^{d−2}|(Q_j(U)A)(b)|².
[V] CMP 99 p. 396 (3.35): on each cube □ of the class (size O(1)M in T_{L^{−j}η}, "O(1) will mean a number ≤ 10") there is a gauge u with U^u = e^{iηA}, |A| < O(1)Mα_0(L^jη)^{−1}, |∇^ηA| < O(1)Mα_0(L^jη)^{−2}; (3.36) |∂^{η*}∂^ηA| < O(1)Mα_0(L^jη)^{−3}. "We will need α_0 so small that O(1)Mα_0 is still a sufficiently small number." p. 396: "For the operators introduced until now we need only the condition (3.35)".
Consequence: the bond-average Q(U) itself is NOT printed in CMP 99; it must be read from CMP 98 (124). §2 does that.

