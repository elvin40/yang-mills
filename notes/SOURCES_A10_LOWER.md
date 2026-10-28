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

## 2. Task (1): every term of the step expansion, CMP 116 pp. 5–11 with CMP 109 Sect. 3–5 [V unless marked]
The curly bracket {…} = E_k(U_k(exp iB′V)) − E_k(U_k(V)) = Σ_{j≤k} [E^{(j)}-difference] + Σ_j β_j(g_{j−1})-difference (CMP 109 (4.38)). CMP 116 localizes it by the partition ζ_□ and expands each piece by the decoupling expansion (1.10) in s(Y_0), then takes the t_□-derivative by Cauchy on the circle (1.22). The pieces, per scale j, cube □, domain X ∈ D_j:
 F (far): X with X ∩ □̃² ≠ ∅ … i.e. first condition of CMP 109 (3.5) (X not inside □̃²). CMP 109 (3.7)/(3.15)/(3.17); CMP 116 bound (1.30) on image p. 8–9:
   E_0·24B_0²C_1B_3e^{16κ_1}α_2^{−1}ε_1·exp(−½δ_0M(L^jη)^{−1} − ½δ_0dist^{(ξ)}(X,□))·exp(−(κ_1−1)M^{−4}|Y∖X_0|)exp(−κd_j(X)).
 R (localization remainder): second term of CMP 109 (3.21) and the [...] term after it (B localized outside □̃³). CMP 109: "small factor O((L^jη)^N)", treated like (3.7). CMP 116 p. 9: "(I.3.21) … expanded and analyzed in almost the same way as the last term in (I.3.34), so we do not repeat these considerations."
 N (near): X ⊂ □̃². Field expansion CMP 109 (3.34) of E^{(j)}(X, U_j(□_0, exp iB)):
   N0  order 0: field-free; t_□-independent; zero after ∂_{t_□}.
   N1  order 1: zero by gauge invariance, (4.14) δE(1)/δB = 0.
   N≤4-tail  orders 2–4, terms of (4.1) with m < n (one factor of B outside □̃³): bound (4.5), E_0e^{−κd_j(X)}exp(−δ_0M(L^jη)^{−1})|ζB|^{n−m}|(1−ζ)B|^m.
   N≤4-main  orders 2–4 with m = n, after ∂_{t_□}: (4.20) Σ_{n=2}^{4}(1/(n−1)!)⟨E^{(n)}, δB, ⊗^{n−1}B⟩. Ward–Takahashi identities (4.15) and Taylor in position ((4.21)–(4.31)) split it into
     (i) irrelevant terms of type (4.22) (power (L^jη)^5), and of type "(4.22) with the power 4+β instead of 5" (p. 288; second-order differences of B via (4.18));
     (ii) the local polynomial (4.34): first expression ⟨E^{(2)}, δB, B⟩; second expression (∂-weighted moments of E^{(2)}); third expression (zero by Euclidean symmetry);
     (iii) resummation errors: H_j(□_0) → H_j (factor B_0e^{−δ_0M(L^jη)^{−1}}), y-sum to Z^4, X-sum to all of D_j ((4.36)): all "irrelevant".
   Then Sect. 5: the first expression of (4.34) = Σ Π(x−y)trδB_μB_ν = β·½Σtr(∂δB)(∂B) + Π′-terms (5.43); Π′ bounded by (5.44) |Π′(x−y)| ≤ O(1)E_0exp(−½δ_1|x−y|) [sign of the exponent lost in the scan; decay is meant]; Π′-terms are third order in derivatives ⇒ irrelevant (p. 298). The β-part "is cancelled by the first expression in (4.42)", and the second expression of (4.34) "is cancelled by" (4.44); both (4.42), (4.44) come from the counterterm β_j(g_{j−1})-difference (4.38) (p. 298). So the marginal part is not bounded: it cancels exactly, by the definition of β_j.
   N5  order 5 remainder: (3.54) ⇒ CMP 116 (1.24).
 C (counterterm) β_j(g_{j−1})(A(…exp iB′…) − A(…)) (4.38): same procedure; its marginal part cancels as above; the rest is "well controlled" (p. 291).
 P (input-free) F^{(k)} = P^{(k)}(g_k, U_{k+1}, B): CMP 116 (1.37)–(1.40), Lemma 2 (1.41)–(1.43): quadratic form Q + V″ with (1.36). Not part of A10 (no E^{(j)} input), but listed for completeness.
Order in the fluctuation field, summary: N0 (0), N1 (1, vanishes), N≤4 (2–4: tail, irrelevant parts, marginal parts that cancel), N5 (≥5, remainder), F and R (all orders, carried by a superpolynomially small factor e^{−cM(L^jη)^{−1}}), C (counterterm, order ≥ 2).
So A10's "lower-order bracket terms" = N≤4 (after Sect. I.4 transformations) [V: p. 8 "remaining terms on the right-hand side of (I.3.34), or rather … expressions obtained by the transformations described in Sect. I.4"]. A10's "other terms" = F (the explicit (1.30) bound), R, and C. Balaban's "(1.29)" sentence on p. 8 refers to the sum over □_0, Y_0, j, X of N≤4.
Transcription fix [V, 300 dpi crop]: (1.29) reads |Σ(1.23)| ≤ E_0ε_1O(M^q)exp O(1)κ_1 exp(−(1/16)κ_1d_k(Y)), "q a small, nonnegative integer". SOURCES_SM §1 has O(M^4) and ⅛; both are misreadings of the garbled text layer. Effect: none on structure; K_V should read O(M^q).
