IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_HBETA — the summability hypothesis (Hβ) of SOURCES_D2

Status 2026-10-27 (Claude, Opus; unverified). Inputs: SOURCES_D2.md §0, §4.4, §6.1, §8; SOURCES_VERIFY.md §8(b)–(c); LEMMAS.md Lemmas D and E (corrected); THEOREM2.md §3a; SOURCES_D1.md §2.1–2.2.

## 0. Result

(Hβ) holds, uniformly in K, under two stated hypotheses: (I) B_j(c) depends on c only through the coupling history of the trajectory started at u_0 − c; (H-hist) a summable C¹ bound on the dependence of β_j on earlier couplings. No two-loop structure is needed. A C¹ bound on β_j in g suffices.

The feared divergence Σ_j g_j² does not occur. c shifts u = 1/g², and du = −2 g^{−3} dg, so ∂β_j/∂u = −½ g³ ∂β_j/∂g. With only |∂β_j/∂g| ≤ C_1 this gives O(g³) per step, and Σ_k g_k³ ≤ 2γ/β along the trajectory. With evenness (β_j′(0) = 0) the factor improves to O(g⁴). The task statement's "|β_j′(g)| ≤ C g gives Σ g_j²" omits the factor ½g³ from dg/du.

Explicit conditions (§3): γ ≤ ln(3/2) · β_0 / (2 C_1 A), plus Lemma E's γ ≤ min(γ_0, sqrt(β_0/(2C))); and 3r < g^{−2} − γ^{−2}, where g = g_K is the final (shot) coupling. Both are independent of K.

SOURCES_D2's use is consistent: its B_j′ is d/dc with c a shift of 1/g_0², and its claimed rate |B_j′| ≤ C g_{j−1}³ is exactly the chain-rule rate. But D2 states that it does NOT use identification (I). Without (I), the proof below does not apply (§4).

## 1. Setting and hypotheses

Notation. u = 1/g², g = u^{−1/2}. Reference trajectory (c = 0): Lemma D's shot trajectory with g_K = g ∈ ]0, γ[. For constant c, u_0(c) := u_0 − c and u_j(c) := u_{j−1}(c) − B_j(c) (SOURCES_D2 §4.2). Write v_j(c) := du_j/dc, so v_0 = −1 and v_j = −1 − Σ_{l ≤ j} B_l′(c).

(I) Identification [hypothesis; D2 §1.2 calls it true up to large-field gauge-fixing effects, assigned to D3]. B_j(c) = β_j(u_0(c), …, u_{j−1}(c)), where β_j is Balaban's step-j β-function as a function of the whole history (CMP 109 p. 298 [V]: β_j "depends also on all preceding coupling constants").

(E) Lemma E [LEMMAS.md, corrected]. For g_0, …, g_{j−1} ∈ ]0, γ]: β ≤ β_j ≤ β′ with β = β_0/2, β′ = β_0′ + β_0/2.

(H-hist) History bound [hypothesis = SOURCES_VERIFY §8(c)(ii) made quantitative]. β_j is C¹ on [0, γ]^j and
  |∂β_j/∂g_i| ≤ C_1 a_{j−1−i},  0 ≤ i ≤ j−1,  with a_0 = 1 and A := Σ_{m ≥ 0} a_m < ∞,
with C_1, a_m independent of j, K, and the history. For i = j−1 this is Balaban's own inductive assumption (THEOREM2.md §3a: β_j ∈ C^∞([0, γ]) with sup_j sup |β_j^{(m)}| ≤ C_m). For i < j−1 it is new. The natural source is that earlier couplings enter E^{(j)} only through irrelevant terms, which suggests a_m ≤ L^{−αm} and A ≤ (1 − L^{−α})^{−1}. Balaban states no such bound. If Balaban's literal one-argument form holds (β_j depends on g_{j−1} only), then A = 1.

Chain rule in the u-variables. ∂β_j/∂u_i = (∂β_j/∂g_i)(dg_i/du_i) = −½ g_i³ ∂β_j/∂g_i. So
  |∂β_j/∂u_i| ≤ ½ C_1 g_i³ a_{j−1−i}.   (1.1)
For i = j−1 this is SOURCES_VERIFY §8(b): c_j − 1 = ½ g³ β_j′. One-loop check: β_j^{(0)} does not depend on any coupling (D1 §2.1, c_1 = 1 exactly), so its contribution to (1.1) is zero. Only β_j − β_j^{(0)} contributes.

## 2. Lemma H (Hβ) and proof [proved, given (I), (E), (H-hist)]

**Lemma H.** Assume (I), (E), (H-hist). Let x := C_1 A γ / β and assume x ≤ ln(3/2). Let 3r < g^{−2} − γ^{−2}, with g = g_K the final coupling of the reference trajectory. Then for every K and every real c with |c| ≤ 2r, all g_k(c) ∈ ]0, γ], and
  Σ_{j=1}^{K} |B_j′(c)| ≤ e^x − 1 ≤ ½,   1/2 ≤ |v_k(c)| ≤ 3/2 for all k ≤ K.

**Step 1 (variational equation).** Where all g_i(c) ≤ γ, differentiate u_j = u_{j−1} − β_j(u_0, …, u_{j−1}):
  v_j = v_{j−1} − B_j′,  B_j′ = Σ_{i<j} (∂β_j/∂u_i) v_i.
Put ε_j := ½ C_1 Σ_{i<j} g_i³ a_{j−1−i} and V_j := max_{i ≤ j} |v_i|, V_0 = 1. By (1.1), |B_j′| ≤ ε_j V_{j−1}. So |v_j| ≤ (1 + ε_j) V_{j−1}, hence V_j ≤ (1 + ε_j) V_{j−1} and V_{j−1} ≤ Π_{l<j}(1 + ε_l). Then
  Σ_{j ≤ K} |B_j′| ≤ Σ_j ε_j Π_{l<j}(1 + ε_l) = Π_{j ≤ K}(1 + ε_j) − 1 ≤ exp(Σ_j ε_j) − 1.   (2.1)
(The middle equality is the telescoping identity Π(1+ε_j) − 1 = Σ_j ε_j Π_{l<j}(1+ε_l).) This is the product Π(1 + O(g⁴)) of the task, with O(g³) in the C¹ case.

**Step 2 (summability along the trajectory).** Exchange the sums: Σ_{j ≤ K} ε_j = ½ C_1 Σ_{i<K} g_i³ Σ_{j>i} a_{j−1−i} ≤ ½ C_1 A S_3, S_3 := Σ_{i=0}^{K−1} g_i(c)³. Suppose all g_k(c) ≤ γ. Then (E) gives B_k(c) ≥ β, so u_k(c) ≥ u_K(c) + β(K−k) ≥ γ^{−2} + β(K−k). With m = K − k ≥ 1 and a decreasing integrand,
  S_3 ≤ Σ_{m ≥ 1} (γ^{−2} + βm)^{−3/2} ≤ ∫_0^∞ (γ^{−2} + βt)^{−3/2} dt = 2γ/β.   (2.2)
So Σ_j ε_j ≤ C_1 A γ/β = x, uniformly in K and c. With (2.1): Σ|B_j′| ≤ e^x − 1 ≤ ½ when x ≤ ln(3/2) ≈ 0.405. Also |v_k + 1| ≤ Σ|B_j′| ≤ ½.
Note: the bound uses only the lower bound β and the floor u_K(c) ≥ γ^{−2}. It does not use Lemma D's upper bound or the value of g.

**Step 3 (bootstrap: the c-trajectory stays in the small-coupling region).** Use Lemma D's clamped flow ĝ(u) = max(u, γ^{−2})^{−1/2}, so û_j(c) is defined and C¹ in c for all c (C¹ needs a smooth clamp; any smooth monotone clamp equal to the identity on u ≥ γ^{−2} works, and only the unclamped region is used below). Let J be the connected component of {c ∈ [−2r, 2r] : û_K(c) > γ^{−2}} containing 0; 0 ∈ J because û_K(0) = g^{−2} > γ^{−2}. On J, û_k ≥ û_K > γ^{−2} for all k (all increments are ≥ β > 0 by (E)), so the clamp is inactive and Steps 1–2 apply: |v_K| ≤ 3/2. Hence on J, u_K(c) ≥ g^{−2} − (3/2)|c| ≥ g^{−2} − 3r > γ^{−2}. So J is relatively closed and open in [−2r, 2r], and J = [−2r, 2r]. ∎

Explicit form with Lemma E's constants: β = β_0/2, so x = 2 C_1 A γ / β_0 and the condition is
  γ ≤ ln(3/2) · β_0 / (2 C_1 A) ≈ 0.20 β_0/(C_1 A),  together with γ ≤ min(γ_0, sqrt(β_0/(2C))).   (2.3)
The condition on r is 3r < g^{−2} − γ^{−2}. D2's condition 2r ≤ ½(g_K^{−2} − γ^{−2}) (D2 §1.2) gives 3r ≤ ¾(g^{−2} − γ^{−2}), so it implies ours when g < γ.

## 3. Remarks

(a) Variable. The derivative in (Hβ) is with respect to c, a shift of u_0 = 1/g_0². It is not a derivative with respect to g. In u-variables each step contributes ∂β_j/∂u = −½ g³ ∂β_j/∂g. The divergent sum Σ_k g_k² ~ β^{−1} log K arises only if one drops the factor dg/du = −½ g³. It does not occur.

(b) Rates. C¹ in g (Balaban's assumption, no evenness): per-step O(g³), Σ_k g_k³ ≤ 2γ/β. With β_j′(0) = 0 (evenness, THEOREM2 (T2-a2), not in Balaban's assumptions) and a C² bound C_2: |∂β_j/∂g_i| ≤ C_2 g_i a_{j−1−i}, per-step O(g⁴), Σ_k g_k⁴ ≤ Σ_{m≥1}(γ^{−2} + βm)^{−2} ≤ γ²/β, and x = ½ C_2 A γ²/β. Either rate suffices. The two-loop coefficient β^{(2)} is relevant only for the sharper rate, not for summability.

(c) Complex c. D2 §6.1 wants (Hβ) on the complex disc |c| < 2r. Steps 1–2 hold verbatim for complex c if β_j extends holomorphically in (u_0, …, u_{j−1}) to the strip |Im u_i| ≤ 3r with the bounds (E) on |β_j| replaced by Re β_j ≥ β, |β_j| ≤ β′ and (1.1) unchanged. Balaban's large-field terms are O(exp(−κ u)) and are analytic in u for Re u ≥ γ^{−2}, so this is not refuted by Lemma E remark (i). But it is not proved here. D2 §8 item 3 already allows restricting (A) to real c with C^∞ bounds; Lemma H covers that restricted version.

(d) Toy check [num]. A history-dependent toy flow β_j = β_j^{(0)} + C_1 Σ_i (geometric a_m, A = ½) · (±½ g_i), with β_j^{(0)} ∈ [1, 1.5], γ = 0.3, C_1 = 1, K ∈ {50, 400, 2000}: finite-difference Σ_j|B_j′| = 0.013, 0.0074, 0.0035, below the bound e^x − 1 (x = ½ C_1 A S_3 from the computed S_3) = 0.039, 0.022, 0.011. Run inline (python -I heredoc, no file kept). This checks the algebra of Steps 1–2 only, not any Yang–Mills input.

## 4. Consistency with SOURCES_D2

(a) D2 §4.4 claims "(Hβ) follows from |B_j′(c)| ≤ C g_{j−1}³, because Σ_j g_j³ = O(γ)". Under (I) and (H-hist) with A = 1 this is Step 1 with ε_j = ½ C_1 g_{j−1}³, except that D2 omits the factor V_{j−1} = |v_{j−1}|, which needs the Gronwall product (2.1). The product is bounded by e^x ≤ 3/2, so D2's conclusion stands. D2's O(γ) is 2γ/β exactly.

(b) D2 uses the c-derivative (shift of 1/g_0²) throughout: u_0(c) = g_0^{−2} − c, f_k(c) = g_k^{−2} − u_k(c), f_k′ = −v_k. Lemma H gives |f_k′| ≤ 3/2, |f_k| ≤ 3r on |c| ≤ 2r (D2 states 3r/2 on |c| ≤ r), matching D2 §4.4. Consistent.

(c) Inconsistency of radius inside D2: §0 states (Hβ) on |c| ≤ 2r, §4.4 on |c| ≤ r. Lemma H covers 2r. Minor.

(d) Gap. D2 §1.2 says "D2 does not use this identification" (I). But D2's only argument for the rate O(g³) is the chain rule through couplings, which needs (I). In D2's own bookkeeping, c enters through the vertex coefficient g_k² f_k(c) with the unsourced reference coupling g_k. In that bookkeeping a direct estimate gives only Cauchy, |B_j′| ≤ 2 sup|B_j|/r per step (D2 §4.4), which is not summable. So either D2 uses (I), or (Hβ) has no proof. The extra c-dependence that (I) neglects is the gauge-fixing weight in the large-field cutoffs. If its contribution to ∂_c B_j is bounded by C exp(−κ u_{j−1}(c)), it adds Σ_j C exp(−κ(γ^{−2} + βm)) ≤ C e^{−κ/γ²}/(1 − e^{−κβ}) to Σ_j ε_j, which is harmless for small γ. This bound is a D3 item, not proved.

## 5. Ledger

Proved here:
 - Lemma H: (I) + (E) + (H-hist) ⇒ sup_{|c| ≤ 2r} Σ_{j ≤ K} |B_j′(c)| ≤ e^x − 1 ≤ ½ uniformly in K, real c, with x = 2 C_1 A γ/β_0 ≤ ln(3/2) and 3r < g^{−2} − γ^{−2}.
 - The trajectory sum S_3 ≤ 2γ/β (from (E) and the floor u_K ≥ γ^{−2} only), and the bootstrap that keeps every c-trajectory in g ≤ γ.
 - The divergence concern (Σ g_j²) is refuted: the c-derivative acts on u = 1/g², which gives O(g³) per step from a C¹ bound alone.

Hypotheses, not proved:
 - (I) B_j(c) = Balaban's β_j along the trajectory from u_0 − c. D2 explicitly does not claim it; Lemma H needs it, or a bound on the extra direct c-dependence (§4(d)). D3.
 - (H-hist) |∂β_j/∂g_i| ≤ C_1 a_{j−1−i} with Σ a_m = A < ∞. The i = j−1 part is Balaban's inductive assumption (CMP 109 p. 264, quoted in THEOREM2 §3a). The i < j−1 part is the stated form of SOURCES_VERIFY §8(c)(ii); Balaban gives no such bound. Plausible decay a_m ~ L^{−αm} from irrelevance; unproved.
 - (E) Lemma E, which itself rests on (T2-a1′): uniform positivity of the one-loop β_j(0) (THEOREM2 §3a). If (T2-a1′) fails, β is not available and S_3 has no uniform bound.
 - C_1 independent of γ as γ is lowered to meet (2.3). Balaban's bounds are stated for "γ sufficiently small", so this is consistent with his assumptions but not checked.

Not done:
 - Complex c (§3(c)).
 - The large-field gauge-fixing contribution to ∂_c B_j (§4(d)).

Verdict: (Hβ) holds in D2's form (derivative in c = shift of 1/g_0²), with explicit smallness γ ≤ ln(3/2) β_0/(2 C_1 A) and 3r < g^{−2} − γ^{−2}, conditional on (I) and (H-hist). D2's status for (Hβ) moves from "open" to "reduced to (I) + (H-hist)". The one new estimate needed from Balaban's construction is (H-hist) for i < j−1.
