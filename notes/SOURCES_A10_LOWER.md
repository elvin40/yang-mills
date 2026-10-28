# SOURCES_A10_LOWER — the lower-order bracket terms of the CMP 116 step expansion (TRUST_LEDGER row A10)

Status 2026-10-28 (Claude, Opus; unverified). Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Sections are appended in order of work. The ledger (last section) is authoritative. Tags: [P] proved here, [V] checked on page text or image, [I] inferred/reading.

## 0. Target and first reading of CMP 116 p. 8 [V, text layer]
Row A10: lower-order bracket terms "bounded similarly as in (1.24)"; other terms "yield an expression satisfying (1.29)".
CMP 116 p. 8, verbatim (text layer, clean here): "These considerations and bounds were done on the example of the last term on the right-hand side of (I.3.34), but almost all of them are quite general and can be applied to all terms in the fluctuation field action. ... The simplest situation is for the remaining terms on the right-hand side of (I.3.34), or rather for expressions obtained by the transformations described in Sect. I.4. We apply the expansion (1.10) to them, and the terms in this expansion can be bounded similarly as in (1.24), using the inequalities (I.4.5), (I.4.22), (I.4.36), (I.5.44), and other inequalities mentioned in the previous sections. The summation over all possible choices of □_0, Y_0, j, X yields an expression satisfying (1.29)."
First correction to the ledger wording [V]. The two quotes are ONE sentence pair about the SAME terms. "(1.29)" is not about separate "other terms": it is the result of summing the (1.24)-type bounds of the remaining (I.3.34) terms over □_0, Y_0, j, X. The genuinely "other terms" of the fluctuation action are (I.3.7)/(I.3.15) and further pieces treated on pp. 8–11 (read next).

## 1. The field expansion of E^{(j)}, CMP 109 (3.33)–(3.35), (3.54), Lemma 4 [V, page images pp. 277, 280]
(3.34) on image: E^{(j)}(X, U_j(□_0, exp iB)) = Σ_{n=0}^{4} (1/n!)⟨δ^nE^{(j)}(X, U_j(□_0, 1))/δB^n, ⊗^n B⟩ + ∫_0^1 dτ ((1−τ)^4/4!)⟨δ^5E^{(j)}(X, U_j(□_0, exp iτB))/δB^5, ⊗^5 B⟩.
Here B = Q(ηA) is the fluctuation field pulled back to scale j, A = (tζ_□ + t_□ζ_□)H_k(B′) (p. 276–277), and (3.32) gives |B| < O(1)L^jη on □̃^4 ("By the definition of B and by the inequalities (3.32) we have |B| < O(1)L^jη").
Lemma 4 (p. 280) [V]: for U in U^c_{k+1}(□_0, (1+2β)α_0, (1+2β)α_1), A with (3.31), and |B′| < α_3, the configuration U_j(□_0, exp i(τB + B′)) lies in U^c_j(X, α_0, α_1), the domain on which |E^{(j)}| ≤ E_0e^{−κd_j(X)} (CMP 109 (1.18)). So E^{(j)} composed with this map is holomorphic in the extra field B′ on the ball |B′| < α_3.
(3.54) on image: |∫dτ …⊗^5B| ≤ sup_{τ∈[0,1]} |∮_{|σ|=r} dσ σ^{−6} E^{(j)}(X, U_j(□_0, exp i(τB + σB)))| ≤ E_0α_3^{−5}|B|^5 exp(−κd_j(X)). Cauchy radius r = α_3/|B| in σ (so |σB| = α_3 on the circle, inside Lemma 4). Then |B| < α_1L^jη gives E_0(α_1/α_3)^5(L^jη)^5e^{−κd_j(X)}.
Caveat on image (p. 280): the bound holds "on □̃^4 only"; tails with a factor localized in (□̃^4)^c are bounded "by an arbitrary power of L^jη using the exponential decay properties" ("we do not repeat them"). [V; not rerun here]

Term list of (3.34) by order in the field B [V]:
 - n = 0: E^{(j)}(X, U_j(□_0, 1)): field-free. It does not depend on t, t_□ (A enters only through B), so it is killed by ∂_{t_□} in CMP 116 (1.23). [I: follows from (1.23) being a t_□-derivative; checked on CMP 116 p. 7 text]
 - n = 1, 2, 3, 4: the "sum on the right-hand side of (3.34)". CMP 109 p. 281 [V]: "These terms are connected with the renormalization, and we will analyze them in the next section." Sect. 4 (Ward–Takahashi identities, (4.1) ff.) splits them: localization of B near □̃^3 ((4.1), terms with m < n "exponentially small in L^jη"), gauge-covariance identities (4.2) ff., and the relevant/marginal parts that go into the effective coupling and the counterterms.
 - n = 5 remainder: bounded by (3.54) ⇒ (3.35) form E_0(α_1/α_3)^5(L^jη)^5e^{−κd_j}.
Holomorphy input (b) of the task: the Cauchy radius is α_3 in the field B′ (Lemma 4), measured against |B| ≤ α_1L^jη. This is the CMP 109 radius; the HHOL/HIGHER_M1 radii (u-disc z_0u_k, ρ_0) are coupling radii and do not enter A10 (HIGHER_M1_VERIFY l. 10 says the same: field orders 3–5 are Balaban's field-analyticity bounds, not a project derivative input). [V]
