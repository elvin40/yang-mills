# SOURCES_R024_ISTRONG_VERIFY — adversarial verification of SOURCES_R024_ISTRONG.md

Opus, 2026-10-29. Saved by the coordinator from the verifier's report (the disk was full). Firewall kept. Images read (150 dpi): CMP 122 I pp. 177–186, 192, 193; CMP 119 pp. 248, 255–257, 264, 267, 268, 285 (references); CMP 102 variational pp. 277–279; CMP 109 p. 299 (references). Text grep only: CMP 102 3D UV.

VERDICT: CONFIRMED WITH CORRECTIONS. No correction changes Theorem R.

## Grades
- G1/(2.12) p. 256: "U_B(V)" is defined as the CMP 102 minimal configuration ("see [15] … we will use all the results of [15]"). CONFIRMED.
- (1.16)–(1.20) p. 180: U^{(n)}_{k,Z} = U(𝔹_k^{(n)}(Z), (M·(Q^{s*}V_k)|_{Z∩Ω_k}, V|_{Z∩Ω_k^c})), with 𝔹^{(n)}(Z) = 𝔹^{(n)} ∪ 𝔹_k(Z) "according to (2.14) [III]". CONFIRMED. §2.1 (identification of the mixed sequence) CONFIRMED.
- CMP 102 Theorem 1 (p. 279): hypothesis (7) on the data V only, with ε_1 ≤ a_1. Conclusion: a minimal orbit in U_k({Ω_j}, B_3ε_1). "a_0, a_1, B_3 depend on d and L only"; M(ε_1) = R_1M_1(a_1/ε_1). CONFIRMED. Class cubes have side 2ML^jη, with M a multiple of R_1M_1, and □~ must lie in B^j ∪ B^{j+1}.
- Step order: (3.12) p. 267 ("restrictions on V_k, V_{k+1} … and Theorem 1 … imply") precedes (3.17)–(3.19) p. 268. Not circular. CONFIRMED. Side note: p. 268 restates the bound as 2B_3ε_{k+1}, dropping the factor L²(1+β_0) of (3.12); misprint, not load-bearing.
- Lemma E (extension of (1.46) to i > j): CONFIRMED. (1.45) holds for y in any component. The first line of (1.46) is algebra and holds for every p. (2.8) second line gives ε_j ≤ (1+β_0)²(i−j)^{β_0}ε_i (p. 256 image). p. 192 uses the same direction for δ′.
- Theorem R(a): CORRECTED in grade. The arithmetic c(1−β/2+2αβ) < c is correct. The χ^{(n+1)} input (line Ω_j∖Ω_{j+2}, c = 3 only when j+1 = k) comes from (1.24), printed only for j > k_0. For j = h the input is (1.23). For h < j ≤ k_0 Balaban prints only "generalizations of (1.22),(1.23)" (p. 181), so that range is [I]. (a1) still holds: the last line of the (1.23) pattern covers (Ω_{j+1}∖Ω_{j+2})∩Z with c = 1. For j > k_0, (a2) is printed directly by the last line of χ^{(n)}, so the (1.48) route is redundant there. Grade: [P] for j ≥ k_0 and j = h; [P given the (1.23) pattern [I]] for h < j < k_0.
- Theorem R(b) and Lemma G: CONFIRMED at [R to R-018]. Wording CORRECTED: the units are those of the mixed sequence, not the native ones. They agree on Ω_{j+1}∩Z; for j > k_0 they differ on Ω″_j∖Ω_{j+1}, which contains the original layers k_0+1 … j−1. The M in the class bound is CMP 102's class parameter, not the project M.
- Lemma A(iii): CONFIRMED. For j ≥ k_0+1: Z″_j ⊂ Z″_k = (Ω^{~5}_{k_0+1})^c; the cube side is M by the definition of N_0; width ≥ 5M (= 5ML^{k−j} local units). For j ≤ k_0: Z″_j ⊂ Ω_j^c; width ≥ the RG width (2MR_j from F6; Sep gives 8LMR_{j+1}).
- Lemma A(ii): grade CORRECTED. The mixed-sequence layers of index ≤ j−1 are exactly the final {Ω″} layers, so SOURCES_ROP_RESIDUE_VERIFY V-c10 settles them at [P given (Sep), (Shell) [I-strong], induction], not [I].
- Lemma A(iv), (v): CONFIRMED at [R] (ROP 4.5; the R-018 M_1 convention).
- Lemma D: stays [P-sketch]; the gap is RELOCATED. The averaging step is not needed. Written out: (1.27): χ′_j bounds V_j on all of (Ω^c_{j+1}∖Z″_{j+1})^{(j)}, which includes Ω_j^c∖Z″_{j+1}. On (Z″_{j+1}∖Z″_j)∩Ω^c_{j+1}, Γ″_j is a component of 𝔹^{(n+1)}, so V_j = M^j(U^{(n+1)}_{k,Z}) = V_Z^{(j)} (1.26). Likewise the data on Γ″_i (i ≤ j−1) and on Γ_{j+1} are averages of U^{(n+1)}. Then |∂V_j−1| ≤ |∂V_Z^{(j)}−1| + 8δ′_j, and χ^{(n+1)} bounds U^{(n+1)} there. Open: a local form of CMP 99 Proposition 2, and the plaquettes in (7) that cross two components. (D1), (D2) CONFIRMED; (D2) is not circular, since χ^{(n)} sits in the integrand of (1.25).
- Lemma R7: CONFIRMED (verified earlier); needs only L_0 < L/2.
- L_0^{2N_0} remark: CORRECTED. p. 192 (not read by the derivation) prints L_0² ≤ L/3; p. 182 prints 2 ≤ L_0 < L/2 with example L_0 = (L−1)/2. These conflict. The p. 193 bound L_0^{2N_0} < L(L+1)N_0^{−1}R_k holds only under L_0² ≤ L/3; at L = 13 that forces L_0 = 2. R7 and 6.3 hold under both. Canon N-460 quotes the p. 193 bound: flag it with the p. 192 hypothesis.
- Constants: no dependence on j, k, n or volume. CONFIRMED.
- Readings (R-a)/(R-b): both covered. CONFIRMED. Under (R-a) the bound is (3.12) at step j directly.
- 6.2 and 6.4: CONFIRMED as [P-sketch]; not load-bearing. In 6.2 the ratio omits a harmless factor (log γ^{−2})^{p_0+2r}.
- §7.1: CORRECTED. U_{k,Z} is defined by (1.74) p. 192 as U(𝔹_k(Z), M·(Q^{s*}V_k)), with 𝔹_k(Z) the localized set of CMP 119 (2.13); it is not (1.20) at n = 0, which is U(𝔹_k ∪ 𝔹_k(Z), ·). The identity [V] still holds.
- "[16]" misprint on CMP 119 p. 267: CONFIRMED, stronger than [I]. CMP 119's reference list (p. 285) has only I and II "and references therein". CMP 109's list (p. 299) has [15] = variational paper, [16] = 3D UV paper. Theorem 1 of the 3D UV paper is UV stability, and that paper cites a_1 as "the constant in Theorem 1" of the variational paper.

## Safe status
R-024 stays REDUCED. The [I-strong] of SOURCES_L1_B §6.4 is replaced by Theorem R, verified with corrections: (a) [P; (1.23)-pattern [I] for h < j ≤ k_0]; (b) [R to R-018] + Lemma A [P given Sep, Shell [I-strong], induction] + Lemma D [P-sketch: local Prop. 2, crossing plaquettes] + R7 [P].
Residue (ii-a) of (R-op geometry) is REDUCED: the identity is [V] (CMP 119 (2.12)–(2.13); CMP 122 I (1.74)); [R] to the R-018 M_1 convention plus data condition (7). Not closed.

## Report
CONFIRMED WITH CORRECTIONS. U^{(n)}_{k,Z} is the CMP 102 minimizer, and Theorem 1 takes only data regularity, with constants depending on d and L only. The (3.12)→(3.17) order makes the route non-circular; Lemma E is correct. Corrections: (1.24) is printed only for j > k_0; Lemma D's averaging step is not needed, but local Prop. 2 and crossing plaquettes stay open; Lemma A(ii) is settled by ROP_RESIDUE_VERIFY; U_{k,Z} is (1.74), not (1.20); p. 192's L_0² ≤ L/3 conflicts with p. 182; "[16]" is a misprint. R-024 and (ii-a) stay REDUCED.
