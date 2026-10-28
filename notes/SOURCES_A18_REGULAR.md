# SOURCES_A18_REGULAR — regular-class identification (TRUST_LEDGER row A18)

Date: 2026-10-28. Ledger tags: [P] printed (page cited), [V] verified by us on the page image, [I] interpretation/reading, [R] relied on (printed sketch or assertion, not checked line by line).
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.

## 0. Target (row A18, verbatim content)
Backgrounds of CMP 109/116/122 lie in the regular class of CMP 99 (3.35)–(3.36) / CMP 102 (3.35)–(3.38) where A1, A3, A4 are stated; Q(U) = Q_free(1 + O(α_0)); ‖C(U)‖² ≤ L^{d+1}(1 + O(α_0)); CMP 109 C-map = CMP 99 C-map; J-term O(Mα_0); σ-localized operators covered. Ledger status before this file: implicit; several pieces UNSUPPORTED on the read pages; k-uniformity of CMP 102 constants C_2, C_4, B_0 [I].
Consumers (grep A18 in TRUST_LEDGER): A2 (WC_FULL I4: A3-R2 = A18 piece), A4 (reduction input), A5 (N6, N8: k-uniformity of CMP 102 constants), A7 (via A3-R4 and I3), A13 (inside Balaban), B13, B17 (via (M-A)/(H−) background matching), C7 (CMP 109 → CMP 99 C-map transfer), §4 binding sets.

## 1. The CMP 99 regular class, exactly [V: CMP 99 "Propagators…" p. 396, pdf page 8, 300 dpi image; top of p. 397]
Page correction: the brief says pp. 398–399. The definition is on p. 396. Pp. 398–399 hold Thms 3.2–3.3 and the sentence "the constants … do not depend on the sequence {Ω_j} if (2.1), (2.2) are satisfied" (p. 399 [V text]).
1.1 Cube class 𝒦. Each cube □ has a unique index j, 0 ≤ j ≤ k, with □ ⊂ B^j(Λ_j) ∪ B^{j+1}(Λ_{j+1}), □ ∩ B^j(Λ_j) ≠ ∅, and □ a union of several big (M-)blocks of T_{L^{−j}}. Its size in T_η is O(1)ML^jη, "O(1) will mean a number ≥ 10". Λ_0 = Ω_0 \ Ω_1, Ω_0 = union of big blocks of T_1 at distance ≤ RM from Ω_1.
1.2 (3.35). For every □ ∈ 𝒦 there is a gauge transformation u on □ with U^u = e^{iηA} and, if □ has index j:
 |A| < O(1)Mα_0(L^jη)^{−1}, |∇^ηA| < O(1)Mα_0(L^jη)^{−2} on □, where O(1)M is the size of □ in T_{L^{−j}}.
1.3 (3.36). |∂^{η*}∂^ηA| < O(1)Mα_0(L^jη)^{−3} on □ (same gauge, same cube).
1.4 Remarks printed on the page. "We will need α_0 so small that O(1)Mα_0 is still a sufficiently small number." The conditions impose nothing on U outside Ω_0. The operators up to (3.34) need (3.35) only; (3.36) is assumed later (it enters the J-term, SOURCES_WG 4.1).
1.5 Complex class (3.37)–(3.38). U′U with U G-valued, U′ = e^{iηA′}, A′ ∈ 𝔤^c, pair (α_0, α_1):
 (3.37) U satisfies (3.35), and |A′| < α_1(L^jη)^{−1}, |∇^η_U A′| < α_1(L^jη)^{−2} on Ω_j, j = 0, …, k;
 (3.38) U satisfies (3.35), (3.36), A′ satisfies (3.37), and |D^{η*}_U D^η_U A′| < α_1(L^jη)^{−3} on Ω_j.
 Top of p. 397 [V]: "We will prove in another paper that if U′U satisfies (3.37), (3.38), then it satisfies also (3.35), (3.36) with α_0 replaced by O(1)(α_0 + α_1), but we will not use this fact here." [P-claim, not proved in CMP 99.]
1.6 Observations [P].
 (a) The constants O(1) in (3.35)–(3.36) are unnamed; the only printed constraint is O(1) ≥ 10 for the cube size. The bound constant is free. So "U is regular with (M, α_0)" means: for some fixed c_reg(d, L), the bounds hold with O(1) = c_reg. Every theorem of CMP 99 then holds for Mα_0 ≤ a_0(d, L) with a_0 depending on c_reg [I: this is how "O(1)" is used throughout CMP 99].
 (b) The bounds are on the potential A in a local gauge, not on the plaquette field. On T_η, ∇^ηA bounds ∂^ηA, so the curvature in the gauge satisfies |∂A| ≤ O(1)Mα_0(L^jη)^{−2} and the plaquette angle ≤ η²·O(1)Mα_0(L^jη)^{−2}. The converse (plaquette bound ⇒ a gauge with (3.35)) needs an axial/tree gauge construction on □; that is the content of the CMP 99 "Regular gauge configurations" paper [to read, §3 below].
 (c) The bounds hold at the scale of the cube's own index j, in the scaled units of (L^jη). In units L^kη = 1 near Λ_k (index k), (3.35) reads |A| < O(1)Mα_0, |∇A| < O(1)Mα_0 (unit lattice, after the scaling A ↦ L^kηA).
