# UNIT_SCALE_COUPLING — how large can g_K be under Balaban's construction?

Status 2026-10-27 (Claude, Opus; unverified). Firewall kept: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read. No existing file edited.
Tags: [V] read on source or ledger this session; [P] arithmetic here; [I] inference; [U] unprinted constant.

## 0. Normalization
- Balaban's action: (1/g_B²)Σ_p[1 − Re tr̂ U_p], tr̂ = (1/N)tr (THEOREM2 §0). For SU(2) this is β_W Σ(1 − ½tr U) with β_W = 4/g_std². So u := 1/g_B² = β_W (PLAN.md correction (i): 1/g_B² = 2N/g²). [V]
- So every bound "g_B ≤ γ" below is "β_W ≥ γ^{−2}". Per-step increment b = c log L, c = 11N²/(12π²) = 0.3715; b = 0.953 at L = 13. [V, P]
- g_K = g is the LARGEST coupling of the trajectory (u_k decreases in k). The threshold binds at k = K (SOURCES_N3A §2). [V]

## 1. Part 1 — every explicit constraint on γ, converted to a number where possible
Order of constants (FX_R2 §1, N3A §1): L → κ ≥ κ_0 → κ_1 → M = L^m → α's, γ_2, ε_1 → E_0 → p_0, A_0, A_1 → γ → g → (r_0, τ_0) → K.
Inputs used: L = 13; M = L³ = 2197 is the least power of 13 with M ≥ 12L(18κ)^{1/4} (FX_R2 §3: 454 at κ = 4, 1202 at κ = 196); LM = 13⁴. [P]
Note on κ. The brief's "κ_4 = 196" is the CMP 95 free-covariance constant of numerics/KAPPA_D.md, NOT Balaban's decay rate κ ≥ κ_0 in exp(−κd_k). That κ is [U]. Below it stays a parameter; values κ = 1, 4 (≥ lattice-animal entropy, ln(2d·e) ≈ 3.1), and 196 (brief) are shown.

### 1.1 Conditions that cost only O(0.1)–O(1) in γ (not binding)
| source | condition | bound on γ (g_B units) |
| Lemma E / D″ (THEOREM2_PROOF_v4, KAPPA_BOUNDED §5) | C_1γ ≤ b/4 | γ ≤ 0.24/C_1 [U: C_1] |
| v4 §1.2 (S) | γ^{−2} ≥ (64/15)·2κ_* | κ_* ≈ 0.4 (L = 2 numerics only) ⇒ γ ≲ 0.54 |
| v4 §1.2 | γ²B′ ≤ (1+β_0)² − 1, B′ = 5b/4 + 2κ_* | β_0 = 1/7: γ ≤ 0.38 |
| HBETA_N3 (b) | 2C_1′Aγ/β ≤ ln(3/2), β = 3b/4 | γ ≤ 0.145/(C_1′A) [U] |
| HBETA_N3 (c) | γ³C_1′·2τ ≤ β | slack for τ ≤ 1/8 |
| HBETA_N3 (a), N3A | 3r + 1.5τ < g^{−2} − γ^{−2}; g ≤ γ/2, γ ≤ 1 | settled, slack > 5× |
| HHOL (d) with ρ_0 = (LM)^{−2}(8n)^{−1/2}, n = 3 | 2√2γ²·2τ ≤ ρ_0 = 2.50e−10 | at τ = r_0 = 1/8: γ ≤ 1.9e−5. Shrinking τ removes it: it bounds τγ², not γ. |
| HHOL (C4″) | 8nρ_0²(LM)⁴ ≤ 1 | fixes ρ_0, not γ |
| MB §4 | p_0 ≥ 17/(γ_0A_1²), θ_W + τ_C ≤ ¼ | lower bound on p_0 = A_0(log g^{−2})^{p_0}; met by A_1, A_0 large; with A_1 ≤ A_0 ≤ p_0(g): p_0 ≥ (17/γ_0)^{1/3} = 1066 at γ_0 = (12d²)^{−1}L^{−5} = 1.40e−8 |
| CMP 122 II (1.82), j = 1 | ¼γ_0 14^{−4}A_1²p_0² ≥ 2C_1 64⁴M⁴L⁵R_1⁶ | p_0 ≥ X^{1/4}: 1e8 (γ_0 = ½) to 7.6e9 (γ_0 = 1.4e−8), C_1 = R = 1 |
None of these, alone, forces γ below ~1e−5. The p_0 conditions are lower bounds on p_0(g); they bind γ only through the threshold ε = g·p_0(g) (§1.2).

### 1.2 The binding mechanism: threshold ε_k = g_k p_0(g_k) must stay small while p_0(g_k) must be huge [P from printed lines]
- (A) CMP 122 II p. 389 [V text layer, "(100R_k)^d" legible]: "We assume that g_k is so small that −2(1+β_0)^{−1}p_0(g_k) + 1 + 2κ(100R_k)^d ≤ −(3/2)p_0(g_k)". With β_0 → 0 (most favourable) and R_k ≥ 1: p_0(g_k) ≥ 4κ·10⁸ + 2. (β_0 = 1/7: 8κ·10⁸ + 4.) Applied at k = K.
- (B) ε_K = g_K p_0(g_K) is the small-field threshold on |U(∂p) − 1| (CMP 119 (2.4)). It must be < 2 (else the cut is empty). So γ·(4κ·10⁸) < 2:
    γ ≤ 5×10⁻⁹/κ.   [P; printed constants only]
  κ = 1: 5.0e−9; κ = 4: 1.25e−9; κ = 196: 2.6e−11.
- (C) [I] The small-field set must be regular in the sense of CMP 99 (|U(∂p) − 1| < α_0, "α_0 sufficiently small"), and CMP 116 p. 20 fixes (LM)⁴α_0 ≤ 1 ("for example by 1"). Then ε_K ≤ (LM)^{−4} = 1.5e−18 and
    γ ≤ (LM)^{−4}/(4κ·10⁸) = 3.8×10⁻²⁷/κ  (κ = 4: 9.4e−28).
  Inference: that CMP 116's α_0 is the same as CMP 99's α_0 and caps ε_j. Same author, same notation; not checked line by line.
- (D) CMP 116 cluster chain [V via SOURCES_W4 §5, SOURCES_GGAIN §1]:
    (C2)–(C4): 2E_0ε_1C_1α_4^{−1}α_6^{−1}M^q e^{C_2κ_1}e^{5κ} ≤ 1, q ≥ 8, (LM)⁴α_4 ≤ 1, ⅛(κ_1 − 1) ≥ (1 − 3δ)κ;
    (2.31): γ_2ε_1²/g_k² large, (LM)⁴γ_2 ≤ 1 ("γ sufficiently small, depending on M and κ").
  So ε_1 ≤ (LM)^{−4}M^{−8}e^{−5κ−C_2κ_1}/(2E_0C_1) (α_6 ≤ 1), and γ ≤ ε_1(LM)^{−2}/√(2c_P), c_P ≥ 1:
    γ ≤ (LM)^{−6}M^{−8}e^{−5κ−C_2κ_1}/(2√2E_0C_1).
  With C_2 = E_0 = C_1 = 1, κ_1 = 8κ + 1 (all [U], set to their most favourable values): log₁₀γ ≤ −60.0 (κ = 1), −76.9 (κ = 4), −1161 (κ = 196). W4/HHOL add ε_1 → ε_1/(1.235c), c = 2–3: one more factor ≈ 4.
- Binding constraint. (D) is the binding one, and it is set by e^{−5κ−C_2κ_1}. (A)+(B) is the binding one among bounds that use ONLY printed constants.

### 1.3 Result of Part 1
- γ_max (printed constants only, rigorous given the reading): γ ≤ 5×10⁻⁹/κ ≤ 5×10⁻⁹. In Wilson units: β_W ≥ 4×10¹⁶.
- γ_max (full chain, most favourable unprinted constants): γ ≲ 10⁻⁶⁰ (κ = 1) to 10⁻⁷⁷ (κ = 4); 10⁻¹¹⁶¹ if κ = 196.
- Order of magnitude to carry: γ_max ≲ 5×10⁻⁹ certain; ~10⁻⁷⁰ realistic.

## 2. Part 2 — convergence radius of the strong-coupling expansion, d = 4 SU(2) Wilson action
- Search budget: one web search, run 2026-10-27. It did NOT return Münster 1981 or a quote of its constant. So no printed value of β_c is verified in this file. [V: search failed]
- What is known without the printed constant [I, training memory, not checked against the papers]:
  - Osterwalder–Seiler (Ann. Phys. 110 (1978) 440) prove convergence of the cluster (character) expansion, area law and mass gap for β small enough, with non-sharp constants. Münster (Nucl. Phys. B180 (1981) 23) and Seiler (LNP 159, 1982) give explicit but conservative domains.
  - The expansion variable is u(β) = I_2(β)/I_1(β) ≈ β/4 for SU(2) (β = 4/g_std²). Polymer convergence needs u times a 4D plaquette-animal entropy constant (order 10–30) below 1. That gives β_c of order 10⁻² (≈ 0.01–0.05). I can not certify a sharper printed value.
- Working value: β_c ≈ 0.04 (upper end of the range; a lower β_c only widens the window).
- Conversion, β = 4/g_std² = 1/g_B²: g_B,c = β_c^{−1/2} ≈ 5 (range 4.5–10); g_std,c = 2g_B,c ≈ 10.
- Context: Monte Carlo shows the SU(2) crossover at β ≈ 2.2 (g_B ≈ 0.67, g_std ≈ 1.35). Strong-coupling series for the string tension stop matching numerics near there (roughening, β_R ≈ 1.9, also [I]).

## 3. Part 3 — the window, same normalization (g_B = β_W^{−1/2})
| quantity | g_B | β_W = 1/g_B² |
| strong-coupling radius g_c [I] | ≈ 5 | ≈ 0.04 |
| physical crossover | ≈ 0.67 | ≈ 2.2 |
| Balaban γ_max, printed constants only (§1.3) | ≤ 5×10⁻⁹ | ≥ 4×10¹⁶ |
| Balaban γ_max, full chain, κ = 4 | ≲ 10⁻⁷⁷ | ≳ 10¹⁵⁴ |
- Ratio g_c/γ_max ≥ 10⁹ (printed constants only); ≈ 10⁷⁷ (full chain, κ = 4); in β_W the gap is the square: ≥ 10¹⁸, ≈ 10¹⁵⁴.
- Even the crossover alone is ≥ 1.3×10⁸ above γ_max in g_B. The window [γ_max, g_c] is not small: it spans every physically relevant coupling.

## 4. Part 4 — L-dependence, and conclusion
- Bound (A)+(B) (γ ≤ 5×10⁻⁹/κ) does not depend on L: the 100 and the 2κ(100R)^d term are printed, and R ≥ 1.
- γ_0 = (12d²)^{−1}L^{−d−1} gets smaller as L grows, but γ_0 enters only lower bounds on p_0 (MB §4, (1.82)). These are not binding (§1.1), so γ_0 does not move γ_max.
- M carries the L-dependence of (C) and (D). M = L^m is the least power with M ≥ 12L(18κ)^{1/4}. log₁₀ of (C) (LM)^{−4}/(4κ·10⁸) and of the M-part of (D) (LM)^{−6}M^{−8}/(2√2), κ = 4 [P, script inline]:
  | L | m | (C) | (D) M-part |
  | 13 | 3 | −27.0 | −53.9 |
  | 15 | 3 | −28.0 | −56.9 |
  | 25 | 3 | −31.6 | −67.6 |
  | 35 | 2 | −27.7 | −52.9 |
  | 37 | 2 | −28.0 | −53.8 |
  | 61 | 2 | −30.6 | −61.2 |
  At κ = 196, m = 3 for every L ≤ 79 and both columns get worse monotonically in L (L = 79: −41.3, −91.5).
- So larger L makes the bound worse at fixed m. The only gain is at the step where m drops by one (L ≈ 35 for κ = 4), and it is one order of magnitude in (D), none in (C). L = 13 is optimal or within one decade of optimal. The e^{−5κ−C_2κ_1} factor, which dominates (D), does not depend on L.
- Conclusion. No admissible L closes or narrows the window in a useful way. Balaban's construction controls only g_B ≤ 5×10⁻⁹ at best (printed constants), realistically ~10⁻⁷⁰. The proved strong-coupling region starts at g_B of order 5. The gap is ≥ 9 orders of magnitude in g and ≥ 18 in β. A bridge between the two expansions is not a constants problem: improving Balaban's constants by any fixed factor leaves the gap open. The crossover at β ≈ 2.2 lies inside the gap, far from both ends. Caveat: the Part 2 number is from memory (search failed); a smaller printed β_c only widens the gap.
