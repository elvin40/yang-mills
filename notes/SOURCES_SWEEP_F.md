# SOURCES_SWEEP_F — class (a) items S-61, S-62, S-90, S-95 of OPEN_ITEMS_SWEEP (2026-10-28)

Written 2026-10-28 by Claude (Opus 5.5). Derivation file; not verified. No existing file was edited, PLAN.md was not appended, sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and reports/ONLINE_SWEEP.md were not read and were excluded from every grep. Ids follow IDS.md. Local names in this file ((Avg), Lemma I36, items T1–T10) are local and get no global id.
Grades: [V] page fact read on an image in this session (page named); [V-file] page fact read on an image by the file named; [P] proved here; [P-sketch] proof outline with a named gap; [I] reading; "convention (cost: …)".
Images rendered this session (120–130 dpi, /tmp/sweepF_img, deleted at the end): CMP 109 pp. 254, 255; CMP 116 p. 13; CMP 119 pp. 260, 275, 282; CMP 122 I pp. 185, 186, 187; CMP 122 II p. 381.
Files read: OPEN_ITEMS_SWEEP §1–§2; TRUST_LEDGER rows R-016, R-036, R-039, K-001, K-011, K-035–K-038; SOURCES_A16_REPLACE2 (+ VERIFY); SOURCES_MULTISCALE_OMEGA §1, §2, §4, §7; SOURCES_MULTISCALE_OMEGA_SOURCED_VERIFY W1, W5; SOURCES_G3_GGAMMA §3; SOURCES_M1_SWEEP (+ VERIFY); SOURCES_SRULE_CONVENTION §3, §6; SOURCES_A15_LOC §4–§7; CLOSURE_PLAN K-035 row; SOURCES_D2 (H2), (a4); SOURCES_D2C §2.2, §3.4 (+ VERIFY §1, §5); SOURCES_D3 (L0)–(L1); SOURCES_HBETA §1–§2; SOURCES_HHOL_LF §4 (+ VERIFY V4); SOURCES_HHOL_LF_SPRIME (+ VERIFY); SOURCES_T2_IEPS_LF §1–§8; SOURCES_A11_CONST §1–§9 and the X-table; SOURCES_ORDER_CANON N-030–N-500.

## 1. S-61 (R-016 residue): H-166 (S_H), the Ω-setting volume convention, the s-version choice for (C_f)^{1/2}

Question. State the three items as conventions. Check that each changes only constants.

### 1.1 H-166 (S_H): scale normalization of D_S and J_S

Objects (SOURCES_A16_REPLACE2 §1, 2.0). D_S := Σ_p d_S(p)H_p(U_{k+1}), with H_p the Hessian of one plaquette term in the Lie-algebra coordinates of the four links of p. J_S(b) := Σ_{p∋b}d_S(p)P_p^{(1)}(b). |d_S| ≤ 2r (D3W8 §1.1).
(S_H) asks for per-block bounds |D̂_S| ≤ c_H sup|d_S| and |Ĵ_S| ≤ c_J^S r in the k-scale block norm between two H_1 factors.

(a) Torus case (CMP 109/116 small field) [P].
- Page fact [V-file, SOURCES_A16_REPLACE2_VERIFY §1, §4, CMP 116 pp. 12–13 images]: the step-k fluctuation lives on the unit lattice T_1^{(k)}. So the k-scale weights are trivial: S = I, μ = 1. I re-read CMP 116 p. 13 [V]: the step-k operators act "on the whole lattice T_η", and the cubes are measured in the scale of T_η.
- Bound. The group G is compact. So every second derivative of Re tr U(∂p) in the link coordinates is bounded by a number c_P(N) on G, and by (1 + O(α″))c_P(N) on the complex domain 𝒰(α″) (as in A16_REPLACE2 2.4). H_p couples only the four bonds of p. A bond lies in 2(d − 1) plaquettes. So the kernel of the unit-block piece D_{S,□} obeys |D_{S,□}(b, b′)| ≤ 2(d − 1)c_P(N)·sup|d_S| ≤ 4(d − 1)c_P(N)r, and it vanishes unless b, b′ lie in one plaquette with base point in □. The same count gives |J_S(b)| ≤ 2(d − 1)c_P^{(1)}(N)·2r.
- Result: (S_H) holds on the torus with c_H := 2(d − 1)c_P(N), c_J^S := 4(d − 1)c_P^{(1)}(N). These are (d, N) numbers. No convention is used. No scale move occurs, so θ_S = 0.
- Grade: [P] from the definitions in SOURCES_D2 (2.a) and the page fact S = I.

(b) Ω-setting (CMP 119/122, outer layers Ω_j∖Ω_{j+1} at scale L^jη < 1) — convention (cost: a factor L^{p_S} on c_H and c_J^S, and one M-threshold that the canon already holds).
- Statement of the convention. On layer j the plaquette Hessian is bounded in the layer's own units, as in (a). The block norm at scale k is reached by the CMP 96 p. 398 scale rule, the same rule as WG_FULL 5.5 (C0). The move costs L^{p_S} with a fixed power p_S = p_S(d), and a rate loss p_Sθ_S inside the θ-part of the rate.
- Constants only [P, given the convention]. (i) c_H → L^{p_S}c_H and c_J^S → L^{p_S}c_J^S. These enter only B_𝒲 (A16_REPLACE2 2.2), so only K_W^T, K_W^{T″} and their Ω-forms (canon N-260). (ii) The r-caps H-060 (A16-a^T), H-062 (A16-b^T) at N-490 are linear in g²r times these constants. r_0^{rad} sits after them. So the caps move by a (d, L) factor, and the order does not change. (iii) The rate loss needs p_Sθ_S ≤ ¼θ_cδ_H″. SOURCES_MULTISCALE_OMEGA_SOURCED_VERIFY W5(b) shows that this is an M-threshold RM ≥ 4p_S log L/(θ_cδ_H″). The canon already holds it as the (S_H^Ω) entry of N-310 (change log of 2026-10-28, Ω pass; p_S [I] at N-060). It uses only θ_c, δ_H″, L, R, which sit before M. So it is admissible.
- What stays open [I]: the value of p_S. A finite p_S(d) is enough for (i)–(iii). In d = 4 the Wilson term is scale-free per plaquette, so p_S comes only from the derivative norms of WG1 at the two ends [P-sketch: dimension count, not written]. SOURCES_MULTISCALE_OMEGA_SOURCED_VERIFY W1 names a route with p_S = 0 (the ω reading, source block = (ω − 1) × Balaban's own layer block) [I, not checked there or here].

### 1.2 The Ω-setting volume convention

Statement. In the Ω-sequence setting the step-k Gaussian variable is B′ on V_red(Λ) for one region Λ = Λ_{k+1} at one scale. B′ = 0 off Λ. No operator acts on Λ^c. The whole-volume operator is the compression A_Λ^f := 1_Λ(A_exp − g²𝒲_S)1_Λ (A16_REPLACE2 4.1).

Status: not a convention. It is printed.
- CMP 119 p. 275 [V]: "the fluctuation field A is localized in Λ^{(k)*}_{k+1}, and, what is more important, all the operators and the background field configuration U_{k+1} are determined by the sequence of domains {Ω_j}."
- CMP 119 p. 251 (1.20) and CMP 122 I p. 182 (1.25) [V-file, SOURCES_MULTISCALE_OMEGA P6, P7]: the integration variable is A restricted to Λ_1, and dA_j restricted to Z_{j+1} ∩ Ω_{j+1}.
- SOURCES_MULTISCALE_OMEGA 2.5 and 7.3 already upgrade A16_REPLACE2 4.1 to [V] on these images. The ledger row R-016 also writes "[V] per SOURCES_MULTISCALE_OMEGA §1".
Constants. A compression changes no constant: put Z_0 := Λ in Theorem WC; (i)–(iv) hold with the same constants (A16_REPLACE2 4.2 [P]). The Ω-geometry changes some (d, L) constants (C′_𝒟 → L^{d−1}C′_𝒟, S(δ) → c_1 of CMP 96 Lemma 2.1; SOURCES_MULTISCALE_OMEGA 7.2). Those changes come from the multiscale kernel pieces, not from the volume rule.
Residue that is not part of this item: (Sep) (Z_0 lies at unit distance ≥ 2M inside the innermost layer) [I]. It belongs to H-167 and row R-024 (class (b), S-75), not to R-016.
Grade: printed rule [V]; "changes no constant" [P].

### 1.3 The s-version choice for (C_f)^{1/2}

Statement of the convention. The s-dependent square root is R^f(s) := Σ_Ωπ_Ω(s)T_Ω^{½}, with the walks Ω of the ∫_0^∞ representation K^{−1/2} = π^{−1}∫_0^∞dx x^{−1/2}(x + K)^{−1} (A16_REPLACE2 3.3). Balaban's (2.7) splits the integral at γ_1 and expands the series piece Σ_n(−1)^n(n + ½)^{−1}γ_1^{−n−1/2}(C*Δ_kC)^n (CMP 116 p. 13 [V]).
Page support for the freedom. CMP 116 p. 13 [V]: "We use the possibility mentioned in Sect. C [13], that the localization domains in expansions can be chosen to a large extent arbitrarily, they have to be only unions of connected families of M_1-cubes." The s are "introduced into the operators as before".
Constants only [P].
- At s ≡ 1 both choices give the same operator (C^{(k)})^{1/2}, because both are absolutely convergent expansions of one operator (A16_REPLACE2 3.3; G3_GGAMMA 3.3).
- The consumers use four properties of R(s): the value at s ≡ 1; the s-rule support (a walk term survives only if every σ_0-cube it meets has s = 1); a bound uniform in s ∈ [0, 1]^{σ_0} and in |s| ≤ e^{κ_1}; analyticity in s (A16_REPLACE2 §4.3, §5; A8 Lemma D, G3_GGAMMA §4). Both choices have all four, with these constants:
  - split at γ_1 (G3_GGAMMA 3.4): K_½ = 8γ_exp^{−1/2}S(½ε) + 4γ_1^{−1/2}S((1 − θ′)δ_A);
  - ∫_0^∞, sourced (A16_REPLACE2 4.3): K_½^f = 16C_𝒟γ_exp^{−1/2}S((1 − θ)½ε″), and e^{2·3^dκ_1}·16C_𝒟γ_exp^{−1/2}S((3/16)ε″) at complex s.
- No consumer uses R(s)² = C(s) at s ≠ 1. Reason: the change of variables B′ = (C^{(k)})^{1/2}X happens at s ≡ 1 (CMP 116 (2.6), p. 12–13 [V on p. 13]); the s enter afterwards, for the localization of G.
- Both K_½ values are (d, L, a, a_0, θ) numbers, free of M, r, g, the volume, k, Z_0 (G3_GGAMMA 3.5; A16_REPLACE2 4.3). The choice enters only G_Γ = Γ_1K_½ and the M-threshold M_Γ (canon N-310). So the choice changes only the value of M_Γ.
Grade: convention (cost: K_½ ↔ K_½^f, hence the value of M_Γ; no change of order). Page support [V].

### 1.4 Proposed ledger status for R-016's residue

Replace "Residue [I]: H-035 (M1) …; H-166 (S_H) …; the CMP 122 Ω-setting volume convention; the s-version choice for (C_f)^{1/2}" by:
"Residue: H-166 (S_H) [P] on the torus (c_H, c_J^S are (d, N) numbers, S = I); in the Ω-setting a convention (cost: L^{p_S} on c_H, c_J^S; the (S_H^Ω) M-threshold already in the canon; p_S [I]); Ω-setting volume rule printed [V, CMP 119 p. 275], no constant changes, (Sep) stays with R-024; s-version of (C_f)^{1/2} a convention licensed by CMP 116 p. 13 [V] (cost: the value of M_Γ only). SOURCES_SWEEP_F §1 [unverified]."

## 2. S-62 (Q-047(c), K-035): translation covariance of the localized terms of CMP 119 (2.29) and (3.62)

Question. Which convention makes the localized terms of CMP 119 (2.29) and (3.62) covariant under unit translations that move the M-cube partition? Is it admissible in the sense of K-035, K-036, K-038? Does it change a constant?

### 2.1 What the pages claim and need

- CMP 119 p. 260 (2.29) [V]: "We have it only for functions E^{(j)}(U_j, z) defined by the equality (2.27) with the unrestricted summation, i.e., with the sum over all X ∈ D_j containing the point z." Then E^{(j)}(rU_j, rz) = E^{(j)}(U_j, z) "for arbitrary Euclidean transformations r of the lattice T^{(j)}". So the claim is about the density z ↦ E^{(j)}(U, z) = Σ_{X∋z}E^{(j)}(X, U, z), not about single terms E^{(j)}(X, ·).
- CMP 119 p. 260 (2.32) [V]: the R-terms are covariant only for maps r "which leave the partition of the lattice T_ξ in MR_j-cubes invariant". So Balaban himself restricts the group where the partition matters.
- CMP 119 p. 282 (3.58)–(3.62) [V]: the point-group step (3.60)–(3.61) and, in (3.62), "Using the translation invariance", the shift Π^{(j)}(x, y, 0) → Π^{(j)}(z − y, 0, −y). CMP 119 p. 281 (text, [V-file, SOURCES_A15_LOC 5.2]): E^{(j)}(U_j, z) on L^{−j}Z^d "is translation invariant, hence Π^{(j)}_{μν,κλ} is independent of z".
- CMP 119 p. 282 (3.63) [V]: Σ_zΠ^{(j)}_{μν}(x, y, z) = Π^{(j)}_{μν}(x − y). With (3.62) this gives β′_j = −½Σ_{x,z}Π_{22}^{(j)}(x, 0, z)x_1² = −½Σ_xΠ^{tot}(x, 0)x_1², where Π^{tot}(x, y) := Σ_zΠ(x, y, z) is the second derivative of the TOTAL action Σ_zE^{(j)}(U, z) at U = 1 [P, algebra of the printed lines].
So the consumers need: (N1) the density E^{(j)}(U, z) covariant under all of G_j (the Euclidean group of T^{(j)}), for (3.57)–(3.61) (z-independence of Π_{μν,κλ}, point group about z); (N2) only the total, for the value of β′_j in (3.62)–(3.63).

### 2.2 No partition rule is translation covariant [P]

Claim. No partition of Z^d (or of T_N) into cubes of side m ≥ 2 is invariant under the unit translation τ_e.
Proof. Let Q = a + [0, m)^d be the cell that contains 0. If τ_eπ = π, then τ_eQ is a cell. τ_eQ ≠ Q, and τ_eQ ∩ Q contains a + [1, m)×[0, m)^{d−1} ≠ ∅ (m ≥ 2). Two different cells of a partition are disjoint. Contradiction. ∎
Consequence. The first option of the question ("a translation-covariant partition rule") does not exist. With one fixed hierarchy π (K-035), the density E_π^{(j)}(U, z) is covariant only under the stabilizer G_j(π) of the hierarchy (shifts by multiples of the largest cube side used at level j, and the point-group maps that fix the hierarchy). Nothing in the construction forces E_π(U, z) to be constant in the position of z inside its cube [I: no proof that it is non-constant; only that no printed step makes it constant].
Why fixed π is not enough for (N1). If Π_π(z) depends on z, the marginal part of E_π is Σ_z Π_π(z)·tr F F(z) with a periodic coefficient. Its mean part is Balaban's β-term. The rest, Σ_z(Π_π(z) − Π̄)tr F F(z), is marginal, not irrelevant. A summation by parts makes it a derivative term, but with a factor of the period P ≈ MR_j, which grows with j through R_j = (log g_j^{−2})^r (canon N-410). So it is not inside Balaban's irrelevant bound with fixed constants [P-sketch: the bound comparison at j = k is written; the growth of R_j is printed, CMP 119 (2.5) via canon N-410].

### 2.3 The convention (Avg): average over the orbit of the partition hierarchy

Definition. Let π be the K-035 hierarchy at level j (all cube sides powers of L, one origin, sides dividing N). Let O_j := G_j·π, the orbit under the Euclidean group of T^{(j)}. O_j is finite: |O_j| ≤ c_j^d·2^d·d!, c_j the largest cube side used at level j (on the torus, and on Z^d modulo the stabilizer). For each g ∈ G_j let E_{gπ} be the construction run with the hierarchy gπ. Define the localized representation with labels (π′, X), π′ ∈ O_j, X ∈ D_j(π′), and weight 1/|O_j|:
 E^{av}(U, z) := |O_j|^{−1}Σ_{π′∈O_j}Σ_{X∋z, X∈D_j(π′)}E_{π′}^{(j)}(X, U, z).
(Avg) carries this representation through the induction (each step: average the step map over O_{j+1}, applied to the averaged input).

Inputs.
- (JC) joint covariance: E_{gπ}(gX, gU, gz) = E_π(X, U, z) for every g ∈ G_j. Source: (FI) of SOURCES_SRULE_CONVENTION 3.1 / SOURCES_A15_LOC 6.1 (each walk factor is the same formula of local data) [R/I, as carried by A15_LOC], K-035 (partitions are images of Z^4 partitions, so g maps the rule to the rule), and every domain rule stated through the partition geometry only. K-038 (Enl) is of this kind (∪X_i^5 of the walk's own domains). K-036 (Det′) is a rule that Balaban does not print; (Avg) needs it in a covariant form, for example "assign a closed-walk term to the union of the domains of the cyclic walk" (root-free). A rule that roots a closed walk at the lexicographically first point is not covariant under reflections. [P: the listed rules commute with g; I: (FI)]
- (T0) partition-free totals in the whole-space small-field framework (Ω_j = Λ_j = T, the setting of (2.29) and (3.39)). CMP 109 (0.17), (0.19) [V, p. 255]: A_{k+1} = log N_k^{−1}∫dUΠ_cδ(Ū(c)V^{−1}(c))χ_k exp[−g_k^{−2}Σ(1 − Re tr U(y, x)) + A_k(g_k, U)]. The block constraint and the gauge-fixing factors are attached to L-blocks (G_{k+1}-covariant). χ_k is a product over bonds (CMP 109 (2.9) as read in SOURCES_D2C_VERIFY §1 [V-file]). No M-cube enters the integrand. The localized expansion is a convergent rewriting of this logarithm. So Σ_zE_π^{(j)}(U, z) = E^{tot,(j)}(U) does not depend on π, and E^{tot} is G_j-invariant [P by induction on k, given (0.19) and the bond-product form of χ_k (I-weak: the χ_k form is read in a file, not re-imaged here)].

Results.
(R1) Covariance [P given (JC)]. For h ∈ G_j: E^{av}(hU, hz) = |O_j|^{−1}Σ_{π′}E_{π′}(hU, hz) = |O_j|^{−1}Σ_{π′}E_{h^{−1}π′}(U, z) = E^{av}(U, z), since π′ ↦ h^{−1}π′ is a bijection of O_j. So (2.29) holds as printed for all Euclidean maps of T^{(j)}, and (3.58)–(3.62) hold for Π^{av}.
(R2) Same total, same β [P given (T0)]. Σ_zE^{av}(U, z) = |O_j|^{−1}Σ_{π′}E^{tot} = E^{tot}. So Π^{av,tot} = Π^{tot}, and β′_j from (3.62)–(3.63) is the same number for (Avg) and for every fixed π′. No coupling constant changes.
(R3) Bounds [P]. Per label: the term E_{π′}(X) keeps its bound E_0 exp(−κd_j(X)) (CMP 109 (1.18)); the weight is 1/|O_j| ≤ 1. Every sum over labels that meet a point or a set is the average over π′ of the same sum for one partition: Σ_{(π′,X)∋z}|O_j|^{−1}|E_{π′}(X)|e^{κ′d_j(X)} = avg_{π′}Σ_{X∈D_j(π′), X∋z}|E_{π′}(X)|e^{κ′d_j(X)}. So every Kotecký–Preiss or Schur-type sum keeps its constant. The factor |O_j| never appears. A consumer that counts unweighted domains would see |O_j| (M- and R_j-dependent); such counting must use the weighted form above. [P: the identity; I: that every consumer can be written in the weighted form — Balaban's uses are per-X bounds times domain counts, which is this form]
(R4) The step accepts the averaged input [P-sketch]. Balaban's step uses the input terms only through their sets X (attachment to the cubes that X meets, CMP 109 Sect. 3 as read in SOURCES_A15_LOC 2.3, 4.4) and their bounds. A set X ∈ D_j(π′) is a union of π′-cubes; the next step attaches it to the cubes of its own partition that X meets. The cost of a misaligned X is at most one cube layer in the attachment, the same margin as K-038's Λ-restricted alternative. Gap: this attachment step is not written for misaligned input domains.
(R5) Large-field setting [P-sketch]. CMP 119 p. 278–279 (via SOURCES_A15_LOC 5.1) imports the E-terms with X ⊂ Λ_{k+1} from the whole-space construction and moves the other terms, as whole terms, into B^{(k+1)}. Under (Avg) the same rule applies label by label: (π′, X) with X ⊂ Λ_{k+1} and at least one π-cube layer from ∂Λ_{k+1} stays in E; the rest goes to B. The R-terms keep the fixed π, as (2.32) prints. CMP 119 pp. 270–271 (text [V-file, SOURCES_M1_SWEEP]) already notes that R_j for j < k_1 is covariant under G_{k+1}, since its cubes lie inside L-blocks. Gap: the (Loc) proof of SOURCES_A15_LOC §6–§7 is written for one partition; for a label (π′, X) with π′ ≠ π inside a π-aligned Λ_{k+1} it needs the collar condition for π′-cubes. The proof is partition-agnostic in form (walk localization plus s-rule), so I expect no change.

### 2.4 Admissibility in the sense of K-035, K-036, K-038

K-035, K-036, K-038 are graded "convention on an unprinted part of the construction, admissible": the rule fills a part that Balaban does not print, contradicts no printed line, and changes no constant order.
- Unprinted part: Balaban prints no rule that makes (2.29) hold for maps that move the partition. (Avg) fills that gap. [V: pp. 260, 281–282 state the property, not a mechanism]
- No contradiction: (2.29), (3.39)–(3.42), (3.57)–(3.63) hold as printed (R1, R2); (2.32) is kept with the fixed π for R-terms; K-035 holds for every member of O_j; K-038 is covariant; K-036 must be chosen covariant (2.3, (JC)). [P given (JC), (T0)]
- Constants: none changes (R2, R3). The domain-count bookkeeping changes from "per partition" to "weighted over O_j" with the same constants. [P, with the R3 [I] on consumer form]
Verdict: (Avg) is admissible in the same sense as K-035–K-038, with two named gaps, R4 and R5, both [P-sketch], and one requirement on K-036 (covariant form).
Link to S-90. D2C Lemma U (§3.4) identifies B_j(c) with Balaban's β_j through (5.9), (5.10), (5.37) of CMP 109, the CMP 109 analogue of (3.57)–(3.63). By (R2) the value of β_j does not depend on the convention. So R-036 does not depend on (Avg).

### 2.5 Proposed ledger status

K-035, round-11 sentence on Q-047(c): replace "pending the next convention pass" by:
"Q-047(c): no translation-covariant cube partition exists [P]. Convention (Avg): carry the localized representation averaged over the finite orbit of the partition hierarchy under G_j (labels (π′, X), weight 1/|O_j|); then (2.29) and (3.58)–(3.62) hold as printed [P given (FI), (JC)], β_j is unchanged because the totals are partition-free in the whole-space framework (CMP 109 (0.19) [V]; (3.63) [V]) [P], and no constant changes (weighted domain sums) [P]. Requirement: K-036 (Det′) in a covariant (root-free) form. Gaps [P-sketch]: attachment of misaligned input domains in the next step; (Loc) for π′ ≠ π inside π-aligned Λ_{k+1}. SOURCES_SWEEP_F §2 [unverified]."
R-016: in "Open dependencies of H-035 (M1): … K-035 (Q-047(c)) …" replace K-035 (Q-047(c)) by "K-035 (Q-047(c): convention (Avg) proposed, SOURCES_SWEEP_F §2, unverified)".

## 3. S-90 (R-036): (I) as a lemma

Question. Write R-036 (I) as a lemma: with the gauge-fixing weight of K-011 and thresholds frozen at x* (K-001), B_j(c) = F_j(u(c); x*) for constant sources. Cite SOURCES_D2C_VERIFY §1 and SOURCES_HHOL_LF_VERIFY V4.

### 3.1 Definitions

- x* = (x*_0, x*_1, …): Balaban's real coupling trajectory at f = 0; u*_j := (x*_j)^{−2}.
- Frozen parameter list Φ(x*) (K-001; SOURCES_HHOL_LF 4.1; SOURCES_T2_IEPS_LF §8 R3): ε_j, δ_j, δ′_j, R_j, N, N_0, the 100MR_k cubes, all partitions, the R-ratio density weight x*_k^{−2}, and the radii α_{i,j}, each evaluated on x*.
- Frozen-threshold map F_j(u_0, …, u_{j−1}; x*): the β-increment of step j of Balaban's construction (CMP 109/116/119/122) run with the couplings u_0, …, u_{j−1} in every Wilson weight and every gauge-fixing weight, and with every parameter of Φ(x*) in place of its g-dependent value. The increment is read off by Balaban's rule (CMP 109 (5.9), (5.10), (5.37); CMP 119 (3.57)–(3.63)). At u = u* it is Balaban's β_j(x*) (SOURCES_HHOL_LF 4.1 [P]).
- Sourced construction with constant source f ≡ c, |c| ≤ 2r, real: SOURCES_D3 (L0)–(L1) with the source written into the coupling, D2 (H4) (w_k = u_k(c), h_k = 0). Its β-increments are B_j(c), extracted by the rule of SOURCES_D2C §3.3. Its couplings obey u_0(c) = u*_0 − c, u_j(c) = u_{j−1}(c) − B_j(c) (SOURCES_D2C, recursion after Lemma U).
- K-011: the exponential gauge-fixing factors carry u_k(c) in place of Balaban's g_k^{−2}, i.e. Balaban's parameter α = g_k² in (0.14)–(0.16) becomes 1/u_k(c).
- K-001: every characteristic function and every parameter of Φ is taken at x*, not at u(c) (D3 (L0): "the source never enters a characteristic function").

### 3.2 Lemma I36

Lemma I36 (R-036 (I)). Assume K-001 and K-011. Let K ≥ 1, r ≤ r_0 (canon N-490), and c real with |c| ≤ 2r. Then for every j ≤ K,
 B_j(c) = F_j(u_0(c), …, u_{j−1}(c); x*).
Equivalently, the sourced constant-c trajectory u(c) is the trajectory of the frozen map started at u*_0 − c.

Proof. Induction on k. Hypothesis H_k: the sourced step-k density at constant c and the density of the frozen map with history (u_0(c), …, u_{k−1}(c)) are the same function of the step-k field V, and B_i(c) = F_i(…; x*) for i ≤ k.
H_0. Bare level: −u*_0A(·) + cA(·) = −(u*_0 − c)A(·) = −u_0(c)A(·). Exact. [P]
H_k ⇒ H_{k+1}. The step-(k+1) density is log N_k^{−1}∫dU Π_cδ(Ū(c)V^{−1}(c))·(gauge-fixing factors)·(characteristic functions)·exp(step-k action) (CMP 109 (0.19) [V, p. 255]; large-field form CMP 122 I (1.25) [V-file, SOURCES_MULTISCALE_OMEGA P7]). Compare the five factors.
 (a) Block constraint δ(Ū(c)V^{−1}(c)): no coupling enters (CMP 109 (0.17), (0.19) [V, p. 255]). Same in both. [V]
 (b) Gauge-fixing factors exp[−α^{−1}(1 − Re tr U(y, x))]: the sourced construction has α^{−1} = u_k(c) by K-011; the frozen map at history u(c) has α^{−1} = g_k^{−2} = u_k(c) (CMP 109 (0.19): the factor 1/g_k² in front of the gauge-fixing sum [V, p. 255]). Same. [P]
 (c) Characteristic functions (small field χ_k, large field χ, ζ of CMP 122 I (1.3)–(1.9), CMP 119 (2.17)), cube covers, partitions, the R-ratio weight: both take Φ(x*). Same by K-001. [P]
 (d) Step-k action: same function of U by H_k. [P]
 (e) Normalization N_k: the same integral at V = 1 with the same factors (a)–(d). Same. [P]
So the integrands are equal as functions of (U, V), and the step-(k+1) densities are equal. Both constructions extract the marginal coefficient from this one density. SOURCES_D2C Lemma U (§3.4) shows that the sourced rule (§3.3) and Balaban's rule ((5.9), (5.10), (5.37)) give the same coefficient for a constant source: both are the s² coefficient of the energy per site on the abelian constant-curvature configuration. Hence B_{k+1}(c) = F_{k+1}(u_0(c), …, u_k(c); x*), and u_{k+1}(c) agrees in both. The extracted actions agree, which is H_{k+1}. ∎
Grade: [P] relative to K-001, K-011 (conventions) and D2C Lemma U [P given CMP 109 (5.9), (5.10), (5.37); D2C_VERIFY does not grade Lemma U by name].

Why K-011 is needed (SOURCES_D2C_VERIFY §1). The identity (0.15) holds for every α by Haar invariance, and the cutoff ε_0 of (0.16) is coupling-free [V, p. 254: "(1/z)∫du exp[−(1/α)(1 − Re tr U(y, x)u^{−1}(x))]χ(…< ε_0) = 1"]. But after the change U → B′, χ_k = Π_bχ(|B′(b)| < ε_1) restricts the gauge directions of B′ too, so the restricted integral depends on α. With the reference weight g_k^{−2} in place of u_k(c), step (b) fails, and the two integrands differ by the Gaussian tail of the gauge components beyond the cut: B_j(c) = F_j(…) + O(exp(−cε_1²/g_k²)) (K-011 row). [V-file: SOURCES_D2C_VERIFY §1]
Why K-001 is needed (SOURCES_HHOL_LF_VERIFY V4). Without the freeze, step (c) compares Balaban's thresholds at u(c) with the sourced ones at x*; they differ, and the difference is R-039's Δ_j. With the freeze, (I) is exact, and "the identity-theorem transfer of (I) to complex c in N3 is fine for the frozen map" (V4). V4 also notes: F_j(·; x*) equals Balaban's β_j only at x*; its g-derivative differs from Balaban's by the threshold-motion term. That term is R-039 (H-thr), not part of R-036.

Corollary (complex c) [P given R-040/R-041 (H-hol)]. If both sides of Lemma I36 are holomorphic in c on a connected domain that meets the real segment |c| ≤ 2r in a set with an accumulation point, the identity holds on the whole domain (identity theorem). Holomorphy of B_j(c) is the constant-source family (A) of SOURCES_D2 (holomorphic on |c| < 2r); holomorphy of F_j(u(c); x*) is R-040/R-041 (H-hol) on P_{ρ_0}(x*) composed with the holomorphic u(c).

### 3.3 Proposed ledger status

R-036, status cell: replace "holds by construction with the adapted gauge-fixing weight (K-011) and frozen thresholds (K-001) (D2C_VERIFY §1, HHOL_LF_VERIFY V4); not written as a lemma" by:
"PROVED relative to K-001, K-011 and SOURCES_D2C Lemma U [unverified]: Lemma I36 (SOURCES_SWEEP_F §3), induction on the step; integrands equal factor by factor (block constraint, gauge-fixing weight u_k(c), frozen characteristic functions, step action, normalization; CMP 109 (0.14)–(0.19) [V]); the marginal coefficient is the same by Lemma U. Complex c by the identity theorem given R-040/R-041. Without K-011 the error is O(e^{−cε_1²/g_k²}) (D2C_VERIFY §1); without K-001 the difference is R-039's Δ_j (HHOL_LF_VERIFY V4)."

## 4. S-95 (R-039, H-241 (R1′) items (i) and (iii))

Setting (SOURCES_HHOL_LF_SPRIME §2 + VERIFY). The cut thresholds are frozen at a real s′ in the box S = {s′ : |s′_i − ū_i| ≤ ρ_s}, ρ_s = 0.1 min ū, one s′_i per scale. The domains (radii α_{i,j}) stay frozen at x*. A threshold of the form A·u^{−1/2}(log u)^p moves by a factor in [e^{−1/18}, e^{1/18}] (VERIFY l. 60: e^{1/18} = 1.0571, CONFIRMED). The ratio of two thresholds at different scales moves by a factor in [e^{−1/9}, e^{1/9}] = [0.8948, 1.1175].

### 4.1 Item (i): joint scaling of the C_i by λ = 1.06

Which constants. C_0, C_1 are the prefactors of α_{0,j}, α_{1,j} = g_jC_i(log g_j^{−2})^{q_i} (CMP 119 (2.28), [V-file, SOURCES_T2_IEPS_LF §1, p. 259 image]). C_2, C_3, C_4 are the prefactors of the large-field forms of α_{2,j}, α_{3,j}, α_{4,j}. These forms are not printed; C5 forces α_2, α_3 to scale with α_{0,j} (SOURCES_T2_IEPS_LF §3, §8 R1). Name clash: the canon's C_2, C_4 at N-060 are CMP 102 constants, and the canon's C_3 at N-300 is the sourced-covariance constant. Neither is touched by this item.
Finding 1 [P]. The canon has no line for the large-field C_2, C_3, C_4. Their natural slot is with C_0, C_1 (N-440, N-450: after A_0, A_1, the exponents q_i; before γ).
Finding 2 [P]. "C_2–C_4 free upward" is false for C_2 and C_3 one at a time. C5 (CMP 109 pp. 280, 285 via CMP 119 p. 262; T2_IEPS_LF §3) reads α_3 ≲ βL^{−2}α_0 and α_2 + MB_3α_0 ≲ α_1. In the large-field form these are UPPER bounds on C_3 by C_0 and on C_2 by C_1 (up to log powers). The canon's fixed-layer line N-370 carries the same items ("α_3 ≲ α_0, α_1; α_2 ≲ α_3"). So the correct requirement is joint scaling, not individual upward freedom.
Claim. Replace (C_0, …, C_4) by λ(C_0, …, C_4), λ = 1.06, and lower γ once. Then every canon entry stays admissible.
Proof [P relative to the canon text and the T2_IEPS_LF §3 list]. Sort each condition that contains a C_i by its degree in (C_0, …, C_4).
| class | items | effect of λ ≥ 1 |
|---|---|---|
| degree 0 (ratio) | C4: B_3²O(1)Mα_0 < ½α_1 (N-450); C5: α_3 ≲ βL^{−2}α_0, α_2 + MB_3α_0 ≲ α_1 (N-370 in large-field form) | both sides scale by λ; unchanged exactly |
| positive degree, lower | C2 "sufficiently large" (N-440, N-450); C3 = (L1): A_0p_0 ≤ c(B_3)C_0q_0 (N-440); H-065 (A18-3): C_0 ≥ O(1)B_3B_5^{122}M^5A_0/(BC^{122}) (N-440); B-radius ⊃ cut ball 2δ′_j (T2_IEPS_LF l. 58); δ′ ≤ cα_2(α_3/α_1)^5 (degree 1; l. 64, CMP 109 p. 280); δ′_j ≲ α_{4,j} (l. 69) | the C side grows by λ (or λ^1 for the degree-1 item); each holds a fortiori. The three δ′ items need exactly this: λ = 1.06 ≥ e^{1/18} = 1.0571 restores them when δ′ moves with s′ |
| positive degree, upper, through g | C6 absolute items (O(1)Mα ≤ β, (LM)^4α ≤ 1, α_5 budget); C7 (CMP 122 II pp. 366, 379); C8 (p. 368 (1.47)); H-066 (A18-4); "C_iF_i(γ) ≤ ¼·bound" (all at N-470) | each has the form λK·F(g) ≤ a with F(g) = g(log g^{−2})^q. F is increasing for g < e^{−q} and F → 0 (T2_IEPS_LF §3 [P]). So a new γ_λ ≤ γ with F(γ_λ) ≤ F(γ)/λ exists |
| positive degree, upper, not through g | none in the canon; none in the printed list C1–C8 (T2_IEPS_LF §3: "No printed upper bound on C_0 or C_1 in terms of an earlier constant") | — |
Order. The canon check line (after N-500) states that every condition uses only constants on earlier lines. So no line before N-440 contains a C_i, and lines N-010–N-430 are unchanged. After the C_i: N-460 (scale rules) has no C_i. N-470 (γ) is re-chosen as above; γ has only upper bounds ("Group 9 … only upper bounds"). N-480 g ≤ γ/2 follows γ. N-490: the caps γ^{−2}/10 and 1/(6γ²c_1c_H) on τ_0 grow when γ falls, and 5γ²r ≤ ½, H-060, H-062 (linear in g²r) become easier. N-500 K is free. So the change costs one lowering of γ and nothing else. ∎
Residue [I]. (a) Completeness of the C-item list: CMP 119/122 were searched by text layer, and Greek letters may drop in the OCR (T2_IEPS_LF §8 R4). (b) The large-field forms of α_2–α_4 are not printed (R1). Under (a)–(b) the claim covers every item that a reader has found.
Grade: (i) [P] relative to the canon and the T2_IEPS_LF §3 list; individual upward freedom of C_2, C_3 REFUTED [P] (not needed).

### 4.2 Item (iii): inter-step cut-nesting slack on the box S

What moves. Only cut thresholds (ε_j, δ_j, δ′_j) move with s′. R_j, N, N_0, cubes, partitions and α_{i,j} stay at x* (K-001; HHOL_LF 4.1; T2_IEPS_LF §8 R3). Two thresholds at one scale share s′_j; a mixed per-cutoff assignment (SPRIME 2.3) moves a same-scale ratio by at most e^{±1/9} as well. So every cut-vs-cut comparison gains a factor in [e^{−1/9}, e^{1/9}] at most, and a squared threshold gains e^{±2/9} at most.
Inventory and check. Items T1–T10 are every inter-step or cut-vs-cut comparison in SOURCES_A11_CONST (§1–§9 and the X-table X1–X10, S12–S16) and on the pages imaged here. Three types close them: (A) a γ-small or (A_1/A_0)-small coefficient (γ absorbs any fixed factor); (B) a numerical margin that I compute; (C) no threshold ratio.
| # | where | comparison | type | check with the box factor |
|---|---|---|---|---|
| T1 | CMP 119 (3.8); canon N-050 H-264 | ε_{k+1} ≤ (1 + β_0)ε_k inside 2(1 + β_0)L^{−2} + 0.4 < 1 | B | 2·1.1175·1.5/169 + 0.4 = 0.420 < 1 at L = 13, β_0 ≤ ½ [P] |
| T2 | CMP 119 (3.17), (3.19) (A11 #26, #27) | ε_{k+1} vs ε_k under e^{−R_k} | A | γ via R_k ≥ (log γ^{−2})^r [P] |
| T3 | CMP 122 I p. 185 (1.38) [V] | coefficient at δ_j: B_3(4p_1(g_j)/p_0(g_j) + e^{−δMR_{j+1}}44d²(1 + β_0)A_0/A_1), must be small "if γ is sufficiently small" | A | the ε_{j+1}/ε_j factor enters only the second term; ×1.1175 is absorbed by γ [P] |
| T4 | CMP 122 I p. 185 (1.42) [V] | O(1)B_3e^{−δLM_2R_{j+1}}22d²(1 + β_0)(A_0/A_1)δ_j ≤ ½δ_j | A | γ via R_{j+1} [P] |
| T5 | CMP 122 I p. 185 (1.43) [V] | 2δ′_j + ½δ_j < 2δ_j (one scale) | A | needs δ′_j/δ_j < ¾; the ratio is a negative log power ((1.38) text), times ≤ e^{1/9}; γ [P] |
| T6 | CMP 122 I p. 186 (1.46)–(1.48) [V]; A11 X5 | δ′_j vs ε_i, i ≤ j: coefficient 9B_3(A_1/A_0)(p_1(γ)/p_0(γ))(1 + β_0) ≤ αβ; 8B_3L^{−i}δ′_j ≤ αβ | A | Balaban: "can be made arbitrarily small by choosing γ, or A_1/A_0 sufficiently small"; ×1.1175 absorbed [P] |
| T7 | CMP 122 I pp. 186–187 (1.49)–(1.50) [V] | conditions for U^{(n)} and U^{(n+1)} on Z″_{i+1}∖Z″_i | C | both sides use the same ε_i (one threshold, one s′_i); no box factor [P] |
| T8 | CMP 122 I p. 187 (1.51)–(1.52) [V]; A11 X4 | ε_{j+1} ≤ (1 + β_0)ε_j inside the bracket (1 + β_0)(1 + αβ)L_0²/L² + 2αβ/(2 − β) ≤ 1 | B | with L_0 < L/2, α = 1/8, β ≤ ½, β_0 ≤ ½: 1.1175·1.5·1.0625/4 + 0.0833 = 0.529 < 1 [P] |
| T9 | CMP 122 II p. 381 [V] | (a) exp(−⅛B_3^{−2}(1 + β_0)^{−2}A_0²p_0²(g_j)) ≤ exp(−A_1²p_1²(g_j)), m ∈ [j − N, j]; (b) exp(−γ_0g_m^{−2}(2δ′_m)²) ≤ exp(−γ_0·4(1 + β_0)^{−2}A_1²p_1²(g_j)) ≤ exp(−γ_0A_1²p_1²(g_j)) | B | (a) with e^{−1/9} on ε_m²: ratio ≥ (A_0/A_1)²/(8B_3²·2.25·1.118) ≥ 6400/20.1 > 300 by A_0 ≥ 80B_3A_1 (N-430) and p_0 > p_1 [P]; (b) needs 4(1 + β_0)^{−2}e^{−1/9} ≥ 1, i.e. 1 + β_0 ≤ 2e^{−1/18} = 1.892; true for β_0 ≤ ½ [P] |
| T10 | CMP 122 II p. 382 L^{−N} item; p. 368 (1.47) (A11 X8); X1–X3, X6, X7, X9 | p. 382: slack ¼ → ½ covers 1.118 (SPRIME_VERIFY, CORRECTED there); X8: γ-small (C8); X1–X3, X6, X7, X9 compare R_n, N, couplings or distances, no cut threshold | A / C | [V-file] for p. 382; X-rows by the inequality text in A11 [P, C-type] |
Not a cut comparison: (1.76) Z_j ⊂ Z′^{~−10}_{j−1} ∪ ∪_i(Z_j^{(i)})^{~−2} (CMP 122 II p. 381 [V]) is a statement about MR-cube layers (R frozen at x*). Its proof (CMP 122 I Sect. 1, "each renormalization step adds at least ten layers", p. 177 text) was not re-read on images [I].
Result. On the box S every listed cut-nesting item keeps its slack. The numerical items need only β_0 ≤ ½ (the canon cap at N-030/N-050); no new condition. The γ-items add one lowering of γ of the existing kind (the same γ_S lowering as SPRIME §2).
Grade: (iii) [P] for T1–T10 as listed; [I] for completeness of the list (A11 X-table built from OCR text plus image checks; B10_SWEEP_VERIFY marks some rows "reader" only).

### 4.3 Proposed ledger status

R-039, the sentence "(i) C_2–C_4 free upward (joint scaling of the C_i by 1.06 …); … (iii) inter-step cut-nesting slack (unchecked on the box S; …)": replace (i) and (iii) by:
"(i) joint scaling (C_0, …, C_4) → 1.06(C_0, …, C_4) keeps every canon entry admissible [P, SOURCES_SWEEP_F §4.1]: ratio items (C4, C5) are degree 0, lower items gain, upper items pass through g and cost one lowering of γ; C_2, C_3 are not free upward one at a time (C5 bounds them by C_0, C_1), and they need no such freedom; residue: the large-field forms of α_2–α_4 and OCR completeness of the C-list [I]; canon should list C_2–C_4 (large field) next to N-440/N-450. (iii) inter-step cut nesting on the box S: every listed item T1–T10 keeps its slack at factor e^{±1/9} with β_0 ≤ ½ and one lowering of γ [P, SOURCES_SWEEP_F §4.2]; list completeness [I]."
H-241 (R1′) then carries only (ii) (the N/D telescoping of the R-ratio cutoff, or its freeze at x*) as an open [I].

## 5. Summary

| item | answer | grade | proposed status |
|---|---|---|---|
| S-61 (S_H) | torus: per-block bounds from the definitions, S = I; Ω: CMP 96 scale-rule convention | [P] torus; convention (cost: L^{p_S} on c_H, c_J^S; canon (S_H^Ω) M-threshold); p_S [I] | R-016 residue text of §1.4 |
| S-61 Ω volume | printed (CMP 119 p. 275), compression, no constant change | [V] + [P] | leaves the R-016 residue; (Sep) stays with R-024 |
| S-61 s-version | ∫_0^∞ walks vs split at γ_1; same at s ≡ 1; four used properties in both | convention (cost: value of M_Γ) | R-016 residue text of §1.4 |
| S-62 | no covariant partition; convention (Avg) = orbit average; covariance, same β, same constants | [P] + 2 [P-sketch] gaps; K-036 must be root-free | K-035 text of §2.5 |
| S-90 | Lemma I36: B_j(c) = F_j(u(c); x*) | [P] relative to K-001, K-011, Lemma U | R-036 text of §3.3 |
| S-95 (i) | joint scaling admissible; individual freedom of C_2, C_3 false and not needed | [P] + [I] residue | R-039 text of §4.3 |
| S-95 (iii) | T1–T10 keep slack at e^{±1/9} | [P] + [I] completeness | R-039 text of §4.3 |
Nothing here is verified. Each [P] above should get an independent verifier before any ledger status changes (headline discipline, run rules).
