# SOURCES_FX_VERIFY.md — independent check of SOURCES_FX.md §0–7 (2026-10-27)

Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.
Page map: CMP 122 II PDF p. 29 = journal p. 383 ((1.77)–(1.79)), p. 30 = 384 ((1.80)), p. 31–33 = 385–387, p. 34–37 = 388–391 ((1.90)–(1.104)).

## V1. Page images 383–384 (PDF p. 29–30)
- (1.79) image, transcribed: T_k(X)1 ≤ sup exp{Σ_{j=1}^k O(1)M^dR_j^{d+1}d′_j(Z_j)} · Π_{j=1}^k Π_i exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)})+1) − 2p_0(g_j)) Π′exp(−p_0(g_j)). Last product: components of Z_j with (i),(ii) "for which some large fields are created during the preparatory steps". Sup over admissible domains with (1.76). Matches SOURCES_FX §5. CONFIRMED.
- Text before (1.79): "the summations over the admissible sequences can be replaced by the factors exp O(1)(MR_j)^{−d}|Z_j|". CONFIRMED.
- Text after (1.79): "Notice that the above inequality holds for all large field regions, not only for the regions satisfying the conditions (i), (ii). For the last regions we will prove that the expression on the right-hand side can be estimated by exp(−2p_0(g_k))."
- Factor form: "If Z is a component of Z_j, and j(Z) is the index of a first large field region contained in Z, then we write the factor connected with Z in the form exp(−κ_j(Z) − 2p_0(g_{j(Z)}))." CONFIRMED.
- (1.80) image, transcribed: κ_j(Z) ≥ Σ_{n=j+1}^{j+K} O(1)M^dR_n^{d+1}d′_n(S^{n−j}(Z)).
  CORRECTION 1: the power is R_n^{d+1}, not R_n^d (SOURCES_FX §2 and §6.1 write R^d).
  CORRECTION 2: K in (1.80) is NOT the final scale. Verbatim: "The factor exp(−κ_j(Z)) controls K renormalization steps, under the assumption that no large fields are created in these steps, where the number K is the smallest positive integer having the property that the domain S^K(Z), considered as a domain in the lattice of the scale L^{−(j+K)}, satisfies the conditions (i), (ii), with N = R_j." So K = K(Z) = number of steps until the grown domain S^K(Z) becomes small (renormalizable). The sum runs over FUTURE scales n = j+1, …, j+K. The "first term" is n = j+1, not n = K+1.
  S(Z) = Z′^{~10}: cover by LMR_{j+1}-cubes plus ten layers.
- Scaling used in the induction (p. 384, bottom): d′_n(Z^{(n−j)}) ≤ L^{−½(n−j)}d′_j(Z) ≤ 2^{−(n−j)}d′_j(Z). This is an UPPER bound on coarse tree length. (1.80) gives κ as a lower bound by coarse-scale terms, so a lower bound on κ_j(Z) in terms of d′_j(Z) itself needs a reverse inequality d′_{j+1}(S(Z)) ≥ c·L^{−?}d′_j(Z). Not printed here.

## V2. Page images 385–387 (PDF p. 31–33): induction (1.81)–(1.89)
- (1.81): Σ_{n=j+1}^{j+K} O(1)M^dR_n^{d+1}d′_n(S^{n−j}(Z)) ≤ … ≤ O(1)(64)^dM^dL^{d+1}R_j^{d+2}(d′_j(Z)+1), using K ≤ n_0 − j + R_j. So (1.80) sum is bounded ABOVE by d′_j(Z); no lower bound in d′_j(Z) is printed.
- (1.82): κ_1(Z) ≥ ¼γ_0(14)^{−d}A_1²p_0²(g_1)(d′_1(Z)+1) − O(1)M^dR_1^{d+1}d′_1(Z). Base case needs [V] "¼γ_0(14)^{−d}A_1²p_0²(g_1) ≥ O(1)2(64)^dM^dL^{d+1}R_1^{d+2}".
- (1.83) [no new large field]: κ_{j+1}(Z) = κ_j(Z_0) − O(1)M^dR_{j+1}^{d+1}d′_{j+1}(Z). New domain without own large field: "κ_{j+1}(Z) = p_0(g_j) − O(1)M^dR_{j+1}^{d+1}d′_{j+1}(Z)", K = R_{j+1}.
- (1.85) image, transcribed (OCR had lost the squares): κ_{j+1}(Z) = Σ_n(κ_j(Z_j^{(n)}) + 2p_0(g_{j(Z_j^{(n)})})) + Σ_i(γ_0A_1²p_0²(g_{j+1})(d′_{j+1}(Z_{j+1}^{(i)})+1) + 2p_0(g_{j+1})) − O(1)M^dR_{j+1}^{d+1}d′_{j+1}(Z) − 2p_0(g_{j(Z)}).
  CORRECTION 3: SOURCES_FX §2 quotes "γ_0A_1p_0(g_{j+1})(d′+1)" (linear in p_0). The image has A_1²p_0², quadratic, consistent with (1.79). (1.85) prints γ_0, (1.79) prints ½γ_0; immaterial.
- (1.86)–(1.87): merger step, 2p_0(g_{j(X)}) + 2p_0(g_{j(Y)}) − 2p_0(g_{j(Z)}) ≥ 2(1+β_0)^{−1}p_0(g_{j+1}); κ_{j+1}(Z) ≥ κ_{j+1}(X) + κ_{j+1}(Y) + 2(1+β_0)^{−1}p_0(g_{j+1}) − O(1)2dM^dR_{j+1}^{d+1}.
- (1.88) closing condition [V]: "≤ κ_{j+1}(Z) − 2(1+β_0)^{−1}p_0(g_{j+1}) + O(1)3(100M)^dR_{j+1}^{d+2} ≤ κ_{j+1}(Z), for p_0 large and γ small enough."
  So the induction itself needs p_0(g) ≳ R(g)^{d+2} (from (1.88)) and p_0(g)² ≳ R(g)^{d+2} (from (1.82)).
- (1.89) [V]: "the domain X in the definition (1.71) satisfies the assumption of the statement with K = 0, therefore κ_k(X) ≥ 0, and we have the fundamental inequality T′_k(X)1 ≤ exp(−2(1+β_0)^{−1}p_0(g_k))."
- O1-relevant sentence [V, p. 387]: "the inequality (1.79) holds for the T-operation connected with an arbitrary large field region. The inequality (1.80) holds quite generally for such regions, hence also an improved bound (1.89), with the additional term −κ_1d_k(X) in the exponential. This implies the inequality (2.50) [III], hence Corollary 3."
  Reading: Balaban asserts, without the computation, a tree-decay term −κ_1d_k(X) at the current scale for arbitrary large-field regions. This is the statement O1 needs. It is asserted, not derived on these pages.

## V3. Page images 388–390 (PDF p. 34–36): (1.90)–(1.101)
- Text before (1.90) [V]: Mayer expansion of the exponential in the curly bracket of (1.72); terms over {X_1,…,X_n} and subfamilies D ⊂ D_k; localization domain X′_0 = ∪_{Y∈D}Y ∪ ∪X_j. Components of X′_0 \ ∪Y_i "we consider two such components as connected, if they are contained in one localization domain Y of a term in the product. This means that each component has a correct tree graph decay factor, controlling summations over components." CONFIRMED.
- (1.90): {…} = 1 + Σ_{r≥1} Σ_{(X′_1,…,X′_r)} Π_{p=1}^r F(X′_p).
- (1.91): F(X′) = Σ_q Σ′_{{X_{j_1},…,X_{j_q}}} Σ′_D Π_{Y∈D}∫_0^1dt(Y) Π_{h=1}^q T′_k(X_{j_h}) Π_{Y∈D}V(Y) exp Σ_{Y∈D} t(Y)V(Y). "the summation is over {X_{j_1},…,X_{j_q}} and D such that the connected localization domain they determine is equal to X′." So the renormalizable large-field components X_j ARE summed inside the polymer activity. CONFIRMED.
- (1.92): |F(X′)| ≤ Σ_q Σ′ Σ′_D Π_h exp(−2(1+β_0)^{−1}p_0(g_k)+1) · (Π_{Y∈D} α exp(−(1+2β)κd_{k,Z′}(Y))) exp Σ_{Y∈D} α exp(−(1+2β)κd_{k,Z′}(Y)), using (1.68), (1.73), (1.89), "and we have estimated the expression |σ| in (1.73) by 1".
- Smallness condition after (1.94), image [V]: "We assume that g_k is so small that −2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k) (for example, take β_0 = 1/7, this means that −(1/4)p_0(g_k) + 1 + 2κ(100R_k)^d ≤ 0, and before we had stronger restrictions on p_0(g_k))."
  CORRECTION 4: SOURCES_FX §2/§5 quote the right side as "≤ −¼p_0(g_k)". The image has −(3/2)p_0(g_k); the ¼ belongs to the β_0 = 1/7 restatement with right side 0. The consequence p_0(g_k) ≥ 8κ(100R_k)^d + 4 is unchanged. Balaban also states that earlier restrictions are STRONGER: (1.88) needs p_0(g) ≳ 3(100M)^d R^{d+2}.
- (1.95): |F(X′)| ≤ Σ_q Σ′ exp(−q(3/2)p_0(g_k))c_0 · exp(−(1+β)κd_{k,∪Y_i}(X′)) exp(−(1/(6·2^d))βκM^{−d}|X′\∪Y_i|).
- (1.96): Σ_{q≥0}Σ′ exp(−q(3/2)p_0) ≤ exp(exp(−½p_0(g_k))100^d(MR_k)^{−d}|X′\∪Y_i|). The entropy of the X_j is a POSITION count (100^d per MR_k-cube). It works because each X_j has diameter ≤ 100MR_k. No tree decay of the X_j themselves is used.
- (1.97) [V]: |F(X′)| ≤ c_1 exp(−(1+β)κd_{k,∪Y_i}(X′)), "c_1 = exp(−p_0(g_k)) if X′ does not intersect ∪Y_i, and c_1 = α^{1/3} in the remaining cases." CONFIRMED.
- (1.98) [V]: "The estimate (1.97) is sufficient for convergence of the exponentiated cluster expansion, and we have {…} = exp R′^{(k)} = exp Σ R′^{(k)}(X)." Sum over X ∈ D_k "which have nonempty intersections with Z_k^c". CONFIRMED.
- (1.99): |R′^{(k)}(X,(U,J))| ≤ O(1)c_1 exp(−(1+½β)κd_{k,∪Y_i}(X)). Split into B′^{(k)} (X meets Z_k^∼ ∪ ∪Y_i^∼) and R′^{(k)} (disjoint). (1.100): |R′^{(k)}(X,(U,J))| ≤ exp(−p_0(g_k))exp(−κd_k(X)). CONFIRMED.
- (1.101): A_k = A′_k + Σ R′^{(k)} + Σ B′^{(k)}. (1.102): T_k(Y) = χ_k^c(Y^{∼−6})χ_{k,Λ}δ_G(V_kV_Λ^{−1})T′_k(Y) for components Y of Z_k ∪ ∪Y_i.
- Consequence for (FX) Step A: Balaban's per-step exponentiation sums only components X_j of diameter ≤ 100MR_k, by position counting (1.96). The final components Y have unbounded size; summing them needs tree decay at the current scale, i.e. O1. Step A is NOT "the same operation once more" without O1.

## V4. CMP 122 I page images 176–177 (PDF p. 2–3): (0.2)–(0.6)
- (0.2), (0.3), (0.4), (0.5), (0.6) and the two quoted sentences match SOURCES_FX §1 on the image, including "X ∩ Z″^c ≠ ∅". CONFIRMED.
- p. 177 [V]: "in (0.3), (0.5) we take the denominators equal not the integrals of the whole densities ρ(Z″,V), but to the integrals of some parts of these densities … localized in neighborhoods of the domains Z′ … determined by small field effective actions only." CONFIRMED (used in FX §6.3(b)).
- p. 177 [V]: Z′ components are those with "(i) it is contained in a cube of the size 100MR_k, (ii) in the preceding N renormalization steps no new large field regions were created inside this component". So (0.5) sums only SMALL components. Matches FX §1.

## V5. Item (5) and item (4) checks
- p_0(g) = A_0(log g^{−2})^{p_0} and R_m ≤ C_R(log g_m^{−2})^{p_R} (SOURCES_D4D5 l. 75, 87).
- Condition after (1.94) [V4/V3]: p_0(g_k) ≥ 8κ(100R_k)^d + 4 (β_0 = 1/7). In log powers p_0 ≥ d·p_R = 4p_R. The author's inference holds for this condition, with the corrected quote.
- Stronger and more direct: (1.88) needs 2(1+β_0)^{−1}p_0(g) ≥ O(1)3(100M)^dR^{d+2}, so R^4 ≤ C·p_0(g)^{4/(d+2)} = C·p_0(g)^{2/3} in d = 4. Then the fallback loss sup_g (C R̄^4)^k e^{−p_0(g)} ≤ C^k sup_x x^{2k/3}e^{−x} ≤ C^k (k!)^{2/3}. This needs no p_R/p_0 bookkeeping and no lower bound on R's growth. Fallback Gevrey order ≤ 1 + η + 2/3. Item (5) fallback: CONFIRMED and sharpened.
- First half of item (5): D3 l. 136–138 [read]: τ(Y) = c_τ r/(E_0|Y|) comes from |σ_W| + |σ_E| ≤ O(1)(τ/r)|Y| ≤ ½ on ONE denominator domain Y, |Y| ≤ (100MR_m)^4; D3 "Propagation" passes the minimum radius to all outputs. So the R̄_m^{−4} loss enters only there. CONFIRMED (as a reading of D3; whether CMP 116 §2 can replace it is O2, open).
- Item (4): (1.73) on the image (p. 380 per FX §5; not re-imaged here) is an upper bound via positivity of T′(U,0). (1.92) [V3] states "we have estimated the expression |σ| in (1.73) by 1", so Balaban's own σ is bounded by an O(1) per component, and an additional source σ_ζ enters the same sup e^{|σ|}. The author's accounting C|ζ|(MR_j)^d per MR_j-cube vs O(1)M^dR_j^{d+1} per MR_j-cube in (1.79) gives ratio Cr/(O(1)R_j) ≤ 1. Doubling the O(1) affects (1.82), (1.88), and the condition after (1.94) only through "p_0 large and γ small" [V]. CONFIRMED conditional on O3 (the O(1)-per-plaquette source bound inside T′ is from D4D5 §3.2(i), not re-derived; if the source multiplies a 1/g_j² Wilson action on large fields, the per-plaquette change is O(|ζ|g_j^{−2}), and then the right argument is |e^{−(1+ζ)S}| ≤ e^{−(1−r)S}, i.e. a fraction of the action's own suppression, not the volume term).

## V6. Dimock III, arXiv:1304.0705 (pdftotext of the arXiv PDF), §3.5–3.6
- (206)–(207) [V]: the final large-field set Θ = Λ^c_{N+1} gets "≤ exp(−c′_2(−log λ)^{2p_0−3r}|Θ|_M) ≤ λ^{n_0}e^{−κ|Θ|_M}", with the assumption "3r+2 < 2p_0". So in φ⁴₃ the decay of a final component is a VOLUME decay |Θ|_M from the large-field factor at the last scale N (p_{0,N}), not a tree-length budget carried from earlier scales.
- (209)–(211) [V]: Σ_{P_j⊂Θ} exp(−(1/9)c_2p_{0,j}²|P_j|_{L^{(N−j)}M}) = Π(1+e^{−c_2p_{0,j}²/9}) ≤ exp(λ_j^{n_0}|Θ|_{L^{(N−j)}M}); "|Θ|_{L(N−j)M} = L^{3(N−j)}|Θ|_M and λ_j^{n_0} = L^{−(N−j)n_0}λ^{n_0}. Since n_0 ≥ 4 the sum in the exponential is bounded by Σ 3λ^{n_0}|Θ|_M L^{−(N−j)(n_0−3)} ≤ |Θ|_M". Power decay of λ_j is used. Item (3) first half CONFIRMED.
- (212): K′(Θ) ≤ Π_γ λ^{n_0}e^{−κ′|Θ_γ|_M}, factorized over components Θ_γ. (213): sum over {Θ_γ},{Y_σ},{X_α} → U.
- Lemma 16 (214) and its proof (spanning tree of intersecting pieces, connecting lines of length ≤ M) [V]. CONFIRMED.
- Lemma 17 (216): |K(U)| ≤ O(1)λ^{β/2}e^{−(κ′−κ_0−1)d_M(U)}. Theorem 2 (221)–(222), proof via (223) "by a standard theorem (Appendix B, part I) we can exponentiate the sum", (224). CONFIRMED. Item (2) CONFIRMED.
- Difference that matters for O1: Dimock's Θ_γ carry e^{−κ|Θ_γ|_M} from final-scale large fields. Balaban's final non-renormalizable components need not have large fields at scale K in every cube: components grown by S without new large fields pay only through κ_K ((1.83)). So the analogue of (207) in 4D YM is exactly O1.
- Item (3) second half: (1.79) [V1] bounds T_k(X)1 including "the summations over the admissible sequences", so the fine-history sum inside a component is controlled by Balaban's per-region factors exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)})+1) − 2p_0(g_j)) [image], quadratic in p_0 (CORRECTION 3 applies to the (1.85) quote in FX §2 only; FX §5 already has p_0²). CONFIRMED.

## V7. Page image 391 (PDF p. 37), reference [26], O1 decision
- (1.103) image: Π_i(T′_k(Y_i)1)[Π_i(T′_k(Y_i)1)^{−1}T′_k(Y_i) exp Σ B′^{(k)}(X)]. Mayer expansion of the bracket; "in this bound there are no tree decay exponential factors for the domains Y_i … such factors are not needed, because there are no summations over these domains, they are fixed." [V]
- (1.104) image, transcribed: Rρ_k = Σ_{Z_k} Σ_{{Y_1,…,Y_m}} χ_k(Σ_{{Ω″_j,Z_j}} T″_k(Z_k)) Π_{i=1}^m χ_k^c(Y_i^{∼−6})χ_{k,Λ_i}χ_iδ_{G_i}(V_kV_{Λ_i}^{−1})(T′_k(Y_i)1) · exp[A′_k + Σ_X R′^{(k)}(X) + Σ_X B′^{(k)}(X)]. So after each step the sum over Z_k and {Y_i} stays outside the exponential. Item (1) reading CONFIRMED.
- [26]: CMP 122 II's own list has only [I]–[IV]; CMP 122 I's list has only [I]–[III]. CMP 109 list entry 26 [V]: "Cammarota, C.: Decay of correlations for infinite range interactions in unbounded spin systems. Commun. Math. Phys. 85, 517-528 (1982)". Item (7): CONFIRMED as an inference (volume 85 now verified).
- O1 decision from the images:
  (a) (1.80) is proved by induction for EVERY component of Z_j ((1.83) no new large field; (1.85)–(1.88) mergers); p. 383 "holds for all large field regions". So κ_K(Y) ≥ Σ_{n=K+1}^{K+K(Y)} O(1)M^dR_n^{d+1}d′_n(S^{n−K}(Y)) holds for a final non-renormalizable Y, with K(Y) ≥ 1. The terms use formal scales n > K; the inequality is between numbers and needs only R_n defined there.
  (b) The first term is O(1)M^dR_{K+1}^{d+1}d′_{K+1}(S(Y)), in the COARSER scale. A bound κ_K(Y) ≥ c·M^dR_K^{d+1}d′_K(Y) − C needs a reverse scaling inequality d′_{K+1}(S(Y)) ≥ c_L d′_K(Y) − C. Only the forward inequality d′_n(Z^{(n−j)}) ≤ L^{−½(n−j)}d′_j(Z) is printed (p. 384). The reverse one is elementary (S(Y) ⊃ Y, coarse cubes are L times larger, so a spanning tree grows by at most a factor ~L plus O(1) per coarse cube), but it depends on the definition of d′ in [I] (6.31), not read here.
  (c) Balaban asserts the needed statement (p. 387): "(1.80) holds quite generally for such regions, hence also an improved bound (1.89), with the additional term −κ_1d_k(X)". Asserted, not computed.
  Verdict O1: NOT closed by the images. Reduced to (b) plus Balaban's assertion (c). Required decay is available with a large constant (M^dR^{d+1}c_L per MR_K-cube) if (b) holds.
- Note: O1 is load-bearing. In Balaban's per-step exponentiation (1.96) the summed components have diameter ≤ 100MR_k and are counted by position; in Dimock (207) the final components decay in volume from last-scale large fields. Final YM components have neither property, so their sum needs O1.

## V8. Grades and status
1. Exponentiation inside each R step: CORRECTED. (0.5), (1.90)–(1.98), (1.103)–(1.104) confirmed on images; the sum over Z_k and {Y_i} stays outside. But (1.96) sums only components of diameter ≤ 100MR_k by position count. The final step with Z″ = ∅ sums unbounded components, so it is not "the same operation once more"; it needs O1.
2. Dimock III Thm 2, polymers, Lemma 16: CONFIRMED. Dimock's final components decay in VOLUME from last-scale large fields ((206)–(207)); this mechanism is absent for YM components grown by S.
3. (209)–(211) power decay; per-region factor exp(−½γ_0A_1²p_0²(g_j)(d′_j+1) − 2p_0(g_j)) from (1.79): CONFIRMED. FX §2 quote of (1.85) lost the squares (image: γ_0A_1²p_0²).
4. (FX2) large-field radius c·r: CONFIRMED conditional on O3; (1.92) itself bounds |σ| by 1 per component.
5. R̄_m^{−4} only from Lemma D3.1: CONFIRMED. Smallness quote CORRECTED: image reads "≤ −(3/2)p_0(g_k)" (¼ is the β_0 = 1/7 restatement, right side 0). p_0 ≥ 4p_R still follows; (1.88) gives the stronger p_0(g) ≳ R^{d+2}, so the fallback loss is ≤ (k!)^{2/3}.
6. O1: CORRECTED and still open (K in (1.80) is the local number of steps until S^K(Z) is renormalizable, not the final scale; the power is R_n^{d+1}). Reduced to a reverse scaling inequality for d′ plus Balaban's p. 387 assertion. O3: UNSUPPORTED (not checkable on these pages; constants enter only through "p_0 large and γ small", so doubling the O(1) is plausible). O5: CLOSED by this transcription.
7. [26] = Cammarota, CMP 85, 517–528 (1982): CONFIRMED (inference; CMP 122 lists hold only [I]–[IV]).
Status of (FX): REDUCED, not proved. Open: O1(b), O3, O2 (or fallback order 1+η+2/3).
