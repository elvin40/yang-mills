# SOURCES_W6_CHECK_119 — image check of the (W6*) place list in CMP 119 outside pp. 263–284

Date 2026-10-28. Checker: Opus subagent. Inputs: OPUS_QUEUE.md l. 1–15; SOURCES_L1_E.md (§1.1, §2, §5–§6). Firewall kept (no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP, no ONLINE_SWEEP).
Method. Page offset: CMP 119 p. N = PDF page N − 242 (p. 243–286 = PDF 1–44). I ran pdftoppm -r 150 on PDF 17–20 (pp. 259–262) into a fresh /tmp folder, read each page as an image, and deleted the folder after use.
Scope. SOURCES_L1_E cites CMP 119 outside pp. 263–284 only at: p. 259 ((2.24)–(2.28), V3), p. 260 ((2.30)–(2.31), B_k sentence, V4), and (2.41)–(2.42) (class (B), §1.1). By the text layer, (2.41)–(2.42) sit on p. 261 and p. 262 repeats them. So the share is pp. 259–262. "Sect. 3.7 [I]" and "(I.1.18)" point to CMP 109, not to CMP 119. pp. 243–258 and 285–286 carry no L1_E citation; I did not read them.

## 1. Table

| page | place | claim in L1_E | image reading | grade |
|---|---|---|---|---|
| 259 | (2.24) | 1/g_{j−1}²(x) = 1/g_j²(x) + β_j(g_{j−1})φ_j(x); φ_j ∈ C_0^∞(Λ_j), φ_j = 1 on Λ_j^{~−1} (V3) | Printed as stated. Next sentence: "Thus g_j²(x) = g_j² on the last domain." The coupling is position-dependent. This is the template that the source's pointwise flow replaces (S-g). | [V] |
| 259 | (2.25) | E_k = Σ_j [E^{(j)}(Λ_j, g_{j−1}, U_k) − E^{(j)}(Λ_j, g_{j−1}, 1) − β_j(g_{j−1})A(φ_j, U_k)] (V3) | Printed as stated, sum j = 1, …, k. The counterterm −β_jA(φ_j, U_k) is where the coupling enters E_k. The vacuum subtraction E^{(j)}(Λ_j, g_{j−1}, 1) is T7. | [V] |
| 259 | after (2.27), (i)–(iv) | (i) depends on U_k on X; (ii) analytic extension E^{(j)}(X, (U, J), z) on U_j^c(X, α_{0,j}, α_{1,j}); (iii) gauge invariance (I.1.10); (iv) inequality (I.1.18) (V3) | Printed as stated. (ii) adds "i.e., the equality (I.1.9) is satisfied" (elided by "…" in L1_E). z is a lattice point from (2.26)–(2.27), not a parameter. No analyticity in g_{j−1} and no complex parameter domain on this page. Fact (a) of §2 holds here. | [V] |
| 259 | (2.28) | α_{0,j} = g_jC_0(log g_j^{−2})^{q_0}, α_{1,j} = g_jC_1(log g_j^{−2})^{q_1} | Printed as stated; q_0, q_1 integers > 1; C_0, C_1 large. f-free (reference g_j). | [V] |
| 260 | (2.30) | R-terms have (i)–(iii) of p. 259 (V4) | Printed: R_k = Σ_j [R^{(j)}(Λ_j, U_k) − R^{(j)}(Λ_j, 1)], localized sum over X ⊂ Λ_j^{~−1}; "properties (i)–(iii) formulated above, after (2.27)". | [V] |
| 260 | (2.31) | \|R^{(j)}(X, (U, J))\| ≤ g_j^{κ_0} exp(−κd_j(X)); "κ_0 can be chosen arbitrarily large" (V4; class (R) of §1.1) | Printed as stated, with "≤". Full sentence: "κ_0 can be chosen arbitrarily large, similarly as κ, if the other parameters are fixed properly, as in [I]." Text after (2.31): after vacuum renormalization the marginal terms have bounds O(1)(L^jη)⁴g_j^{κ_0}exp(−κd_j(X)); no coupling counterterms are needed in (2.30). This agrees with L-164 (F2′) in T6. | [V] |
| 260 | B_k sentence | "The terms of B_k are analytic functions of the variables (U, J) introduced in the same way as in the regular cases before." (V4) | Printed as stated (last line of p. 260, sentence continues on p. 261: "The analyticity domains are spaces defined similarly as in (I.1.11)–(I.1.16)"). | [V] |
| 261 | (2.41)–(2.42), class (B) | B^{(j)}: b_B = B_0 e^{−κd_j(X)}; field domain U_j^c(X) for B (§1.1 lists Ũ only for B′/R′ "at birth") | Bound printed as \|B^{(j)}(X, (U, J), A, {S_i ∩ X})\| < B_0 exp(−κd_j(X)) (strict). Two differences from L1_E. (1) The term has two more arguments: a field A and the sets {S_i ∩ X} ((2.40)–(2.41)). (2) The analyticity domain of every B^{(j)}, not only at birth, is Ũ_j^c(X, α̃_0, α̃_1), defined on p. 261 by (2.34)–(2.39). The page states no domain for A. The sum in (2.41) runs over X ∈ D_j with X ∩ Ω_j ≠ ∅ and X ∩ Z_j^~ ≠ ∅. | CORRECTED |
| 262 | (2.41)–(2.42) repeated | same | Localization remark (no dependence on (U, J), A on components of X ∩ Ω_0 that miss Ω_j). Alternative form with d_j(X\Z_j) in (2.42). Both are geometry, f-free. | [V] |

Correction text for class (B) of §1.1: "(B) B^{(j)}(X, (U, J), A, {S_i ∩ X}): analytic on Ũ_j^c(X, α̃_0, α̃_1) (CMP 119 p. 261 (ii)), with \|·\| < B_0 e^{−κd_j(X)} (2.42). The joint-holomorphy statement S1(c)^J must carry the extra variable A, whose domain is not stated on pp. 260–262." The bound B_0 e^{−κd_j(X)} and the radius c_* r are unaffected. [V for the printed content; the domain of A: I, not located]

## 2. Source-entry places on pp. 259–262 that the list missed

None of these is in the danger class (lower bound, division, or logarithm from positivity, used at complex input). Each is either an upper bound or a structural property.

| page | place | content | class / remark |
|---|---|---|---|
| 260 | (2.29), (2.32)–(2.33) | Euclidean covariance of E^{(j)}(U_j, z) and R^{(j)}(X, U_j) as an inductive property | A non-constant f breaks it. L1_E treats covariance only at pp. 274–275 and 280–284 (D2C freezing, (S-g)). The inductive assumption itself is not listed. Not an estimate. S1(c)^J does not claim it, so no gap, but the list should note that the sourced induction drops this property. |
| 262 | E_k paragraph | The constant E_k is obtained by subtracting one-step vacuum energy expressions, generated in small-field regions, from the initial constant E | T7 (vacuum subtractions; e-terms). L1_E cites no CMP 119 page for it. Upper-bound bookkeeping only. |
| 262 | paragraph before Theorem 1 | New terms E^{(k)}, R^{(k)}, B^{(k)} live on spaces enlarged by β and have decay κ replaced by e.g. (1 + 4β)κ; "Such improved bounds are needed for the R-operation." | Missed by §1.1 and §5.2. The bounds b_T of S1(c)^J use κ only. At complex f the improved (1 + 4β)κ bounds of fresh outputs must also hold, as input to T9. These are upper bounds on a complex domain, so class (S-f)/(W4); not danger. It is still an item the list must name for T8 → T9. |
| 262 | Theorem 1 | ρ_0 = exp[−(1/g_0²)A − E]; couplings from (0.18), (0.20) [I] satisfy (I.0.33) | Base case. L1_E §4.2 uses ρ_0^f without the constant E; E is a constant, so §4.2 is unaffected. The condition (I.0.33) on the coupling sequence is R-040 territory (reference trajectory). |
| 261 | (2.34)–(2.39) | Definition of Ũ_j^c with factors (1 − β(1 − 2^{−(j−n)})) | f-free (N1)–(N2). Needed for the correction in §1. |

## 3. Report (≤80 words)

pp. 259–262 (PDF 17–20) read on 150-dpi images. V3 and V4 (pp. 259–260) are confirmed word for word, including (2.24), (2.25), (2.28), (2.31). Class (B) is CORRECTED: (2.42) is strict, and B^{(j)} lives on Ũ_j^c and carries extra arguments A and {S_i ∩ X}. Missed places, none in the danger class: Euclidean covariance (2.29)/(2.32); E_k vacuum constant; fresh-term (1 + 4β)κ bounds needed by the R-operation (p. 262). No MISSING entries.
