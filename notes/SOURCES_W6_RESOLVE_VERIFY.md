# SOURCES_W6_RESOLVE_VERIFY — adversarial check of SOURCES_W6_RESOLVE.md

Date 2026-10-29. Verifier: Claude (Opus 5.5). Edits: this file only. No existing file was edited. PLAN.md was not touched. sync.sh was not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not read and were not in any grep.
Ids follow IDS.md (K-011, R-042, L-165, Q-050, Q-061, L-245, R-039, K-014; H-220/H-222 as in the checked file).

## VERDICT: PASS WITH CORRECTIONS

The three main conclusions hold. (1) Lemma G is correct. Balaban does not print a per-link factor from (1.6), and D3 does not need one. (2) Choice B is the live construction. Lemma TV is correct in its steps. I settle the input (T2) to [P-sketch] from the printed (1.2)–(1.11), with one remaining [I] reading. (3) The (1.70) bound and the "(4.6)" misprint are confirmed on images.
Corrections. (a) The file gives the wrong page for the mechanism of the 1 − χ′_j factor. II p. 382 "first case" is the χ′ of (1.82) [IV]. The 1 − χ′_m factor of (1.27) [IV] is printed on p. 381, and its mechanism is not printed. (b) The Consequence of Lemma TV has a sign error in I. (c) s = 3rΦ′ omits the imaginary part τ of the source. (d) "γ ≤ γ_TV(M, r)" is out of canon order, because r is fixed after γ. Use the r-cap 1/8 instead. (e) The constant 1/(2N) of Lemma G is not Balaban's γ_0. (f) The (1.70) bound is on p. 192, not p. 191. (g) The L1_E edit list misses four places that cite (J-c) or the J3 "second proof".

Inputs read. OPUS_QUEUE.md l. 1–15; SOURCES_W6_RESOLVE (whole); SOURCES_D3 (B11), (1.a), (P3)–(P7), (vi), (vii), (ix), (x), addendum; SOURCES_D3_VERIFY V8; SOURCES_HTHR (M2) l. 41, 99; SOURCES_HTHR_VERIFY Steps 7–10; SOURCES_L1_E §4.1, §5.2 rows T8–T9, §5.3, §6.3, §6.4, §7, §8 (grep); SOURCES_L1_E_VERIFY §6 and the ledger block; SOURCES_FX_D §1, §4, conclusion; SOURCES_FX_O23 §3–§4 (grep); SOURCES_D3_NEW4 §1, §4–§6 (grep); SOURCES_HBETA_N3_VERIFY l. 54; SOURCES_B20_W4R l. 23, 38, 89; FABLE_O3_ALC §A3–§A5 (grep); SOURCES_W6_CHECK_122 header, M3, M4, M8, §5; TRUST_LEDGER row R-042; SOURCES_ORDER_CANON N-060, N-310–N-330, N-440, N-470, N-490; IDS.md lookups.
Page images [V], read this session (pdftoppm -r 150, fresh folder /tmp/w6v.*, deleted after use). CMP 122 I pp. 178, 182, 184, 187, 189, 191, 192, 193, 201 (PDF 4, 8, 10, 13, 15, 17, 18, 19, 27). CMP 122 II pp. 356, 357, 358, 380, 381, 382 (PDF 2, 3, 4, 26, 27, 28). CMP 109 p. 252 (PDF 4), for the trace convention.

## 1. Point 1: Lemma G and the D3 (vi)(d) factor

### 1.1 Page facts (§1.1 of the checked file)
| claim | image reading | grade |
|---|---|---|
| p. 178: (1.5) = χ(\|V_j(y,x) − 1\| < ε_j) for y ∈ (Ω̃³_{j+1}\Ω̃_{j+1})^{(j+1)} ∩ Z; (1.6) = (1/z)exp[−g_j^{−2}[1 − Re tr V_j(y,x)]] for y ∈ (Ω̃³_{j+1}\Ω_{j+1})^{(j+1)} ∩ Z; reference g_j; no z formula | As stated. | CONFIRMED |
| The two y-regions differ | As stated. Addition: p. 192 defines Λ = (Ω̃⁴_{k_0+1})^c ∩ Z as Z″_k = (Ω̃⁵_{k_0+1})^c ∩ Z "with one layer of M-cubes added". So each tilde ENLARGES the set, and Ω̃_{j+1} ⊃ Ω_{j+1}. Hence the (1.5)-region is contained in the (1.6)-region. The difference is the layer (Ω̃_{j+1}\Ω_{j+1}). On the (1.5)-region a link with \|V_j − 1\| ≥ ε_j has weight 0 (hard χ), not a small exponential. Only on that layer is the (1.6) exponential the only control of such a link. [V p. 192 for the convention; the inclusion is my inference] | CONFIRMED, with addition |
| p. 182: "Using the Faddeev–Popov procedure we introduce the gauge fixing terms (1.5), (1.6) on this set" | Verbatim. Also: "the gauge fixing terms (1.6) were introduced on the domain Ω̃³_{j+1}\Ω_{j+1}". | CONFIRMED |
| p. 184: (1.5) equal 1 via (3.9) [III] and O(1)δ′_j < ε_j | Verbatim. | CONFIRMED |
| p. 187: "(4.6)" printed; read as (1.6) [I] | Printed "There are also the gauge fixing terms (4.6) on the last domain." CMP 122 I has only Sect. 1 (text-layer section list), so it has no (4.6). CMP 119 [III] has no Sect. 4. CMP 109 (4.6) is a Ward-identity sum (text layer l. 1684), not a gauge-fixing term. So (4.6) is a misprint, and (1.6) is the only gauge-fixing exponential that fits "on the last domain". [V p. 187; the rest from the text layer] | CONFIRMED, reading strengthened, still [I] |
| No page takes a small factor from (1.6) for a link with \|V_j − 1\| ≥ ε_j; the II pp. 380–382 large-field factors come from the Wilson action, positive quadratic forms and χ^c-functions | II pp. 380–382 read: χ^c(P_j), χ′^c(Q_j), χ^{(j−1)c}(R_j) on p. 380 ("in the usual way", "expanding the Wilson action", "same positivity bound for the quadratic form"); fundamental factor p. 381; 1 − χ_j^{(n)}, 1 − χ′_m, 1 − χ_{j,Λ} on p. 381; 1 − χ′ of (1.82) [IV], two cases, pp. 381–382. None names (1.6). BUT the 1 − χ′_m factor, exp(−γ_0g_m^{−2}(2δ′_m)²) ≤ exp(−γ_0A_1²p_1²(g_j)), is printed with no mechanism. It has the form of a one-link Gaussian. Whether the (1.6) exponential contributes to it is not printed. | CONFIRMED in the narrow sense "no printed use of (1.6)"; "does not use" is [I] |

### 1.2 Lemma G (§1.2) — CONFIRMED [P]
- Step 1. CMP 109 p. 252 [V]: "tr is the normalized trace, i.e. tr 1 = 1", and G ⊂ U(N). For u ∈ U(N), 1 − Re tr u = (1/N)Σ2sin²(φ_k/2) and |u − 1|²_HS = Σ4sin²(φ_k/2). So 1 − Re tr u = |u − 1|²_HS/(2N). Correct. Balaban does not name the norm in (1.5). The bound holds for the operator norm too, because |·|_HS ≥ |·|_op. So the lemma does not depend on the norm.
- Step 2. On |u − 1| ≤ ρ = w_r^{−1/2} ≤ ε_j, χ = 1 and w_r(1 − Re tr u) ≤ 1/(2N). The Haar ball volume is ≥ cρ^n with n = dim G. Correct.
- Step 3, χ-version. |e^{−(w − w_r)x} − 1| ≤ e^{3rε_j²/(2N)} − 1. Correct. The scale |w − w_r| ≤ 3r is absolute. This matches D3 (vi)(c) ("holomorphic in w on |w − g_j^{−2}| ≤ 3r") and R-042. Under this scale the hypothesis Re w ≥ (1 − θ)w_r holds with θ = 3rw_r^{−1} ≤ 3γ²r.
- Step 3, χ-free version. The outer deviation |e^{−(w−w_r)x} − 1| is ≤ e^{6r} + 1, not e^{6r}. This changes nothing, because the outer mass is ≤ C_Gw_r^{n/2}e^{−w_rε_j²/(2N)} → 0. CONFIRMED with this minor fix.
- Corollary. It needs ε_j²/g_j² ≫ log g_j^{−2}. CMP 119 p. 246 (HTHR_VERIFY Step 7, image) gives ε = gp_0(g), p_0(g) = A_0(log g^{−2})^{p_0}, so ε_j²/g_j² = A_0²(log g_j^{−2})^{2p_0}. The canon takes p_0 > (d + 5)r_0 + ν_I + 4 > ½. So the condition holds for g_j small. CONFIRMED.
- CORRECTION (notation). The constant of Lemma G is any number below 1/(2N) (1/4 for SU(2)). Balaban's γ_0 is a different absolute constant (II p. 380: "γ_0 is an absolute positive constant (in this factor we may take γ_0 = 1/2)"). D3 (vi)(d) writes "γ_0" for both. The replacement text must use a separate name, for example γ_G < 1/(2N).

### 1.3 Decisions of §1.3 and the consumers of §1.4
| claim | grade | reason |
|---|---|---|
| (vi)(d) is true as an inequality (Lemma G) | CONFIRMED | §1.2 above. It applies in the (1.6)-only layer; in the (1.5)-region the link weight is 0. |
| The D3 attribution "Balaban gets exp(−γ_0ε_j²/g_j²) per such link from the weight" is false | CONFIRMED | §1.1. |
| "on the components with 1 − χ′_j, the large-field factor comes from the Wilson action (II p. 382, first case)" | CORRECTED | p. 382 "first case" treats 1 − χ′ of (1.82) [IV] (bond variables B′(b), b ∈ B_0, in Ω″^{~2}_{h+1}\Ω″_{h+1}). The function 1 − χ′_m of (1.27) [IV] gets the factor exp(−γ_0g_m^{−2}(2δ′_m)²) ≤ exp(−γ_0A_1²p_1²(g_j)) on p. 381, with no mechanism printed. Correct text: "the factor for 1 − χ′_j is printed on II p. 381; Balaban does not state its source". |
| D3 does not need (vi)(d); (vi)(a)–(c), (e) do not use a large-link factor | CONFIRMED | D3 (vi)(a)–(c), (e) read; none uses (d). On supp χ′_j every link of the (1.6)-region is near V_Z^{(j)} (p. 184, p. 187 (1.54)), and 1 − χ′_j has its own p. 381 factor. |
| (F2) holds for z with or without χ | CONFIRMED | Lemma G Step 3. |
| D3 (vii)(b): replace (vi)(d) by the II p. 381 fundamental factor exp(−½γ_0A_1²p_0²(g_j)(d′_j(Z_j^{(i)}) + 1) − 2p_0(g_j)), which pays the p. 380 budget O(1)M^dR_j^{d+1}d′_j(Z_j) | CONFIRMED [P-sketch] | Both displays read on images this session. p. 380 prints \|Z_j\| ≤ (MR_j)^d d′_j(Z_j). So the w-sum O(E_0)\|Λ_j^c\|_{MR_j}(MR_j)^d is O(E_0)M^dR_j^d d′_j, below the budget by a factor R_j, provided \|Λ_j^c\|_{MR_j} ≤ O(1)d′_j(Z_j). That count is the remaining [I] (the file says so). The budget constant grows by O(E_0). |
| D3 (ix)(a) last sentence and (x): drop "(vi)(d)" | CONFIRMED | D3 l. 189 and l. 196 cite (vi)(d) next to (P6). (P6) stays in the D3R §1.4 form. |
| D3 §3.1 ledger line, D3R §5 l. 161 | CONFIRMED | Wording changes only. |
| HTHR (M2): the citation "(CMP 122 I (1.5)–(1.6), D3 (vi)(d))" has no printed basis; HTHR_VERIFY Step 7 and item 6 already grade (M2) UNSUPPORTED and reduce (H-thr) to M2′; R-039 unchanged | CONFIRMED | HTHR_VERIFY l. 34–35, 44, 60 read. Lemma G is a tail bound for one gauge-fixing link. It is not a density bound, and it does not apply to the fluctuation variables, which carry no one-link weight. |
| W6_CHECK M3 "only the equation label changes" is withdrawn; "(1.5), (1.6)" is Balaban's own label | CONFIRMED | p. 182 verbatim. |

## 2. Point 2: the R-denominator

### 2.1 "Activity-free" against "weight-free" (§2.1–§2.2)
| claim | grade | reason |
|---|---|---|
| (s1) activity-free is the sense of B20_W4R §1.3, FX_O23 §3, L1_E (D-iii); printed in II (1.1) and I (1.100) | CONFIRMED | B20_W4R l. 23 "It contains NO activity E, R, or B" read. II (1.1) p. 356 and I (1.100) p. 201 read: Wilson action, χ, δ_{G_0}, Γ_Λ only. |
| (s2) weight-free = choice A of FX_O23 §4; choice B = sourced weight in both | CONFIRMED | FX_O23 l. 34–36. |
| Balaban's pages cannot decide (s2) | CONFIRMED | His f = 0 makes the two choices equal. |
| L1_E (D-iii) is choice B in substance (it uses σ_W) | CONFIRMED | L1_E l. 101: "σ_W the source perturbation with \|σ_W\| ≤ ‖ζ‖_∞Φ(γ) ≤ c_*r (L-165 Step 4–5)". A weight-free denominator has no σ_W. |
| (1.102) holds for either weight | CONFIRMED | p. 201: the front factor and the denominator integrand have the same form; any common positive weight gives ∫dV′ of the ratio = 1. |

### 2.2 Choice B is live (§2.3)
| claim | grade | reason |
|---|---|---|
| Reason 1: II p. 356 quote | CONFIRMED [V] | Verbatim: "A part of this term from the nominator has to be combined with the term in the first exponential, to give the Wilson term of the new action. The remaining part has to be cancelled, or approximately cancelled, with the term from the denominator." With D3 (1.a) and (P3) (reset w_k := u_k(f(x)) on Z, read), choice A leaves −Σ_{p⊂Z}(u_k(f(p)) − g_k^{−2})ζP_p as a bulk marginal activity (Q-061). The argument is correct given D3 (1.a). |
| Reason 2: every proved lemma uses choice B | CONFIRMED | L-165 Step 1 (FX_D l. 34: "The source enters only through the weight w_m"); NEW-4 §1 (Δ_1(ζ_0ω), l. 25–28); L1_E σ_W (l. 101); FABLE_O3_ALC Lemma O3-den (D_k(ω; U), l. 30, 53). Note: L-165 is stated for both choices (FX_D l. 32); its Step 1 is the choice-B computation. |
| Reason 3: choice A still needs R-042 | CONFIRMED | HBETA_N3_VERIFY l. 54: "choice A moves N3; it does not remove it". |
| §2.4 table: TRUST_LEDGER R-042 consumer column lists the choice-A consumer | CONFIRMED | Row read: "moved term of the f-independent denominator". |
| §2.4 table: L-165 live input list carries "on choice A only — the moved-term bookkeeping" | CONFIRMED | FX_D l. 63. |
| §2.4 table: B20_W4R verifier block keeps I(U_0), E_k(Λ) as input-free terms | CONFIRMED | B20_W4R l. 89. The file writes I_ω; this is its own extension, not B20's notation. |
| W6_CHECK §5 "(1.10)–(1.11) safe in both constructions … NEW-4 l. 95 [P]" is too strong for complex source | CONFIRMED | NEW-4 l. 88: "The sourced (1.9) is used only at real f. [I]". l. 95 uses θ real and positive. |
| L1_E §6.3 "(D-iii) again" is wrong | CONFIRMED | Already graded UNSUPPORTED by SOURCES_L1_E_VERIFY §6(d), which the checked file does not cite. p. 358 [V] prints a direct lower bound "from the boundedness of the quadratic form", not a series. |
| L1_E (J-c) cites the σ of T′_k (II (1.71)–(1.75)), not of the (1.2) integral | CONFIRMED | II p. 380 [V]: σ is "the small term of the first order in A′, J" of T′_k(X, (U, J)). Same finding as L1_E_VERIFY §6(a). |

### 2.3 Lemma TV (§2.5(a)), step by step
Page facts re-read [V]: p. 356 (1.1) and the first line of (1.2); p. 357 (1.2)–(1.6); p. 358 (1.7)–(1.11) and the G^c sentence. All quotes in the checked file match.
- Setting. D(f; U) = ∫dμ_U e^{σ_W} with σ_W = −Σ_pδw_f(p)ζ_0(p)P_p. Correct, because A is linear in the weight and w_f = g_k^{−2} + δw_f on supp ζ_0. CONFIRMED.
- (T1). CORRECTED (constant). R-042 bounds the shift from the imaginary part: |δw_k| ≤ (3/2)τ on Q = {|Re c| ≤ 2r, |Im c| ≤ τ}. The file uses δw_f relative to f = 0, so it needs |u_k′| ≤ 3/2 on all of Q (D3 l. 110, HBETA §3(c)). Then |δw_f| ≤ (3/2)(2r + τ), and s := (3r + (3/2)τ)Φ′(g_k) ≤ 4rΦ′(g_k) for τ ≤ (2/3)r. The file's s = 3rΦ′ is correct only at τ = 0. Φ′ = Φ of L-165 Step 4 with ε_k → ε_k + O(α_{0,k} + α_{1,k}): correct by the p. 358 sentence; Φ′ → 0 because α_{i,k} = g_kC_i(log g_k^{−2})^{q_i} is of the same polylog type.
- Main inequality. |D(f) − D(0)| ≤ ∫|dμ_U|(e^s − 1); divide by |D(0)|; use (T2); e^s − 1 ≤ 2s for s ≤ 1; then |ratio − 1| ≤ ½. Then L = log(1 + z), |z| ≤ ½, |L| ≤ |z|/(1 − |z|) ≤ 1. Joint holomorphy follows from (O3), (O5). CONFIRMED.
- Consequence. CORRECTED (sign). (1.10) [V] reads (∫…)^{−1} = exp[+g_k^{−2}A(ζ_0, U_0) + I(U_0) − E_k(Λ)]. So D(0; U) = exp[−g_k^{−2}A(ζ_0, U_0) − I(U_0) + E_k(Λ)]. With the file's definition D(f; U) = exp[−A(w_fζ_0, U_0) + I_f + E_k], one gets I_f = −I + L + A(δw_fζ_0, U_0), not I + L + A(…). Cleaner: define I_f in Balaban's form, D(f; U)^{−1} = exp[A(w_fζ_0, U_0) + I_f − E_k(Λ)]; then I_f = I − L − A(δw_fζ_0, U_0). The bound |I_f| < O(1)M^5 + 2 is unchanged. The bound |A(δw_fζ_0, U_0)| ≤ sΦ′-type ≤ 1 holds because V′ = 1 lies in supp χ, so U_0 obeys the same plaquette bound as the integrand (the |A_0| citation of p. 357 is not needed). CONFIRMED after the sign fix.

### 2.4 Settling (T2) [P-sketch, one [I] reading]
Claim (T2): ∫|dμ_U| ≤ e^{C_TV M^5}|D(0; U)| for U ∈ U_k^c(Z, α_{0,k}, α_{1,k}). (I write C_TV, not C_1, to avoid a clash with canon C_1 (N-450) and C_1^{FX} (N-330).)
Proof. By (1.2) [V p. 356–357], dμ_U = P(U)·σ(g_kB′)δ_{G_0}(B′)χ(|B′| < M_0g_k^{−1}ε_k)·exp[−½Q_U(B′) − ℓ_U(B′) − g_k^{−2}V_U(g_kH_{1,k}B′)]dB′, with P(U) = exp[−g_k^{−2}A(ζ_0, U_0) + E_k(Λ)], Q_U(B′) = ⟨H_{1,k}B′, Δ_1(ζ_0)H_{1,k}B′⟩, ℓ_U the linear term. P(U) is common to ∫|dμ_U| and |D(0; U)|, so it cancels.
 (i) Linear term. (1.4)–(1.5) [V p. 357] reduce ℓ_U to the (1 − ζ_0)-part, and (1.6) bounds it on supp χ by 3B_3M_0A_0²p_0²(g_k)e^{−R_k}(100M)^4, "it is enough to have an absolute bound, e.g. the number 1". So |Re ℓ_U| ≤ 1.
 (ii) Cubic term. "V is at least of third order … estimated by O(g_k^{1−β})|Λ|" [V p. 357]. So |Re g_k^{−2}V_U| ≤ O(g_k^{1−β})|Λ| ≤ 1 for g_k small given M.
 (iii) Quadratic term. (1.9) [V p. 358]: Q ≥ γ_0/(2d(100M)^5)‖B′‖² =: c_M‖B′‖² at real U. At U ∈ U_k^c, Balaban says "all the bounds above hold with ε_k replaced by O(α_{0,k} + α_{1,k})". The p. 357 proof of (1.7) is a first-order expansion in A_0 around the background 1, with the correction bounded in modulus by O(1)(M^6R_kε_k + e^{−R_k})‖B′‖². With complex A_0 the same modulus bound gives Re Q_U ≥ c_M‖B′‖². [I: this reads Balaban's sentence as a bound on Re Q_U; FABLE_O3_ALC (A3.2), unverified, derives the same bound.]
 (iv) Haar factor. σ(g_kB′) is real, U-independent, and 1 + O(ε_k²) per bond on supp χ.
 Hence ∫|dμ_U| ≤ |P(U)|·e^{2 + O(ε_k²)n_Λ}·(2π/c_M)^{n_Λ/2}, n_Λ := dim G·|Λ^{(k)}\G_0| ≤ O(M^4), because Λ lies in a cube of size 100M (p. 357, (1.6)). The printed (1.10)–(1.11) at complex U give |D(0; U)| = |P(U)|e^{−Re I(U_0)} ≥ |P(U)|e^{−O(1)log M|Λ|}. So ∫|dμ_U|/|D(0; U)| ≤ exp[O(1)M^4 log M] ≤ e^{C_TV M^5}. ∎
So (T2) is no longer an [I] input. It is [P-sketch] relative to the printed (1.2)–(1.11) [V] and one [I] reading: (1.9) at complex U holds for Re Q_U. The same reading underlies the printed (1.11) at complex U, so (T2) adds no new trust beyond what Balaban's complex lower bound already needs. Grade of the checked file's (T2) [I]: CORRECTED (upgraded).
Remark. The Gaussian identity ∫|dμ|/|∫dμ| = Π(1 + μ_i²)^{1/4} of FABLE_O3_ALC §A3 is correct (|det(A + iB)|^{1/2}/det(A)^{1/2} with μ_i the eigenvalues of A^{−1/2}BA^{−1/2}). It gives a sharper constant. The proof above does not need it.

### 2.5 Condition (J-c′) — CORRECTED (canon order)
The file writes (J-c′) as 3rΦ′(γ) ≤ ¼e^{−C_1M^5}, "γ ≤ γ_TV(M, r)". In the canon, γ is fixed at N-470 and r at N-490, after γ (N-490 contains γ^{−2}/10 and 5γ²r ≤ ½). A γ condition that depends on r is out of order. Fix: use the r-cap r ≤ 1/8 of N-490 and s ≤ 4rΦ′ ≤ ½Φ′. The condition becomes Φ′(γ) ≤ ½e^{−C_TV M^5}, a condition on γ given M, M_0, A_0, p_0, C_0, C_1, q_0, q_1, R_k. For sup over g_k ≤ γ use either the L-165 Step 5 monotonicity (γ ≤ e^{−q′/2}, q′ = 2max(p_0, q_0, q_1) + 4p_R) or sup_{g≤γ}Φ′(g) directly; FX_D_VERIFY says monotonicity is not needed.
Relation to L1_E_VERIFY. L1_E_VERIFY §6 split (J-c) into a c_*r half (implied by N-490) and a σ half (J-c-σ) to be placed at N-470 as an [I] reading. (J-c′) replaces (J-c-σ). Its c_*r half stays implied by N-490.

### 2.6 I (1.62) by Lemma J3 (§2.5(b)) — CONFIRMED [R]
p. 187 and p. 189 quotes read verbatim. p. 189: "The integral in (1.60) is of the same type as the integral studied in Sect. 3 [III], therefore we can apply the results of this section and write the term C_k^{(n+1)} as a sum of localized terms with the corresponding exponential decay and analyticity properties." p. 192 [V] then states that each C_k^{(n)}(X, U_k^{(n)}) "can be extended to an analytic function defined on the space Ũ_k^{(n)c}(X, α̃_0, α̃_1) and satisfying the bound (1.70) |C_k^{(n)}(X, (U, J))| ≤ C_0exp(−(1 + 3β)κd_m(X))". So the log is a convergent localized series, and Lemma J3 applies. (1.62) contains no R-denominator, so it is independent of the A/B choice. CONFIRMED, [R] to T3/T8.
(c) of §2.5: I (1.6) 1/z → (F2); II (1.74)–(1.75) → K-014. CONFIRMED (p. 380 (1.74)–(1.75) read; K-014 avoids the (1.103) division).

## 3. Point 3: the image readings of §3

I re-read pp. 178, 182, 184, 187, 189, 201 of CMP 122 I and II pp. 356, 358. Every row of the checked file's §3 table on these pages matches my reading. CONFIRMED.
| item | my image reading | grade |
|---|---|---|
| p. 189 row "M4: (1.63), (1.70) bound \|C_k^{(n)}(X)\| ≤ C_0exp(−(1 + 3β)κd_m(X))" — "not checked" in the file | p. 192 (PDF 18): "each term C_k^{(n)}(X, U_k^{(n)}) can be extended to an analytic function defined on the space Ũ_k^{(n)c}(X, α̃_0, α̃_1) and satisfying the bound \|C_k^{(n)}(X, (U, J))\| ≤ C_0exp(−(1 + 3β)κd_m(X)) (1.70) for X ∈ D_m in the representation (1.63)". The W6_CHECK constant is exact. The display is on p. 192, not on p. 191. | W6_CHECK M4 CONFIRMED; page CORRECTED to 192 |
| pp. 191–193, other content | p. 191: (1.68)–(1.69), the spaces Ũ_k^{(n)c} with reference α_{0,m}, α_{1,m}, C ≤ 2, B = B_3; "All the expressions in the exponential in this integral can be uniformly bounded in the usual way, except possibly expressions connected with B_k^{(n)}". p. 192: N_0 accumulation, δ′_j ≤ (1 + β_0)²N_0^{β_0}δ′_k; L_0 powers "make only unessential logarithmic contributions"; (1.71)–(1.74); Λ = (Ω̃⁴_{k_0+1})^c ∩ Z "contained in a cube of the size 100M". p. 193: (1.75) χ_{k,Λ} and the 1 − χ_{k,Λ} argument ("This condition is enough to get the exponential small factor, estimating in the usual way the Wilson action"). All f-free (reference couplings and thresholds only). No division, lower bound or logarithm at complex input on these pages, apart from the (1.70) output bound of the (1.62) logarithm, which is §2.6. | no danger-class entry |
| p. 187 "(4.6)" | §1.1 above. | CONFIRMED |
| p. 178 regions of (1.5), (1.6) | §1.1 above, with the inclusion (1.5)-region ⊂ (1.6)-region. | CONFIRMED, addition |

## 4. Status of (W6*) for CMP 122

- CMP 122 II pp. 355–392: [V]. pp. 356–358 and 380–382 now read by three readers (W6_CHECK or L1_E, the checked file or B20_W4R, this file).
- CMP 122 I, two or more independent image readers: pp. 176–179, 182–184, 187–193, 201. One reader (the W6_CHECK subagent): pp. 175, 180–181, 185–186, 194–200, 202.
- Danger-class places on CMP 122 and their routes:
 - I (0.3)/(1.100) and II (1.1), (1.10)–(1.11) (M8): choice B + Lemma TV [P-sketch], with (T2) now [P-sketch] (§2.4; one [I] reading: (1.9) for Re Q_U at complex U) and condition (J-c′) at N-470. Alternative: FABLE_O3_ALC Lemma O3-den [unverified].
 - I (1.60)–(1.62) (M4): Lemma J3 [R to T3/T8], with the (1.70) output bound read on p. 192 [V].
 - I (1.6) 1/z: (F2), for z with or without χ [P].
 - II (1.74)–(1.75): avoided by K-014 [R].
- Status. (W6*) on CMP 122: every danger-class place on the read pages has a route; no route rests on an [I] input except the single (1.9)-at-complex-U reading, which Balaban's own printed (1.11) at complex U also needs. Residue on CMP 122: image completeness on the one-reader pages of I (17 pages). (W6*) stays OPEN for CMP 109 Sects. 3–5 and CMP 116 pp. 1–22 (not in scope).

## 5. Final L1_E edit list (E1–E8 as corrected, plus missed places)

(E1) §4.1 (D-iii). Use the checked file's text with three changes: "(T2) [I]" → "(T2) [P-sketch] (SOURCES_W6_RESOLVE_VERIFY §2.4; one [I] reading: (1.9) holds for Re Q_U at complex U)"; "|I_f(U_0)| < O(1)M^5 + 2" with I_f defined by D(f; U)^{−1} = exp[A(w_fζ_0, U_0) + I_f − E_k(Λ)]; "under condition (J-c′)" → "under condition (J-c′) of N-470: Φ′(γ) ≤ ½e^{−C_TV M^5}". The grade becomes "[P-sketch given R-042 (with |u_k′| ≤ 3/2 on Q), L-165 Steps 2–4, (T2), (J-c′)]".
(E2) §4.1 (F2). As proposed. CONFIRMED.
(E3) §5.2 row T8. As proposed, and append: "the output bound of (1.62) is (1.70), p. 192 [V]".
(E4) §6.3 "(D-iii) again". As proposed, and cite SOURCES_L1_E_VERIFY §6(d), which refuted the J3 second proof first.
(E5) §6.4. Replace the page list by: "CMP 122 I pp. 176–179, 182–184, 187–193, 201 (two or more readers: SOURCES_W6_CHECK_122 §3, SOURCES_W6_RESOLVE §3, SOURCES_W6_RESOLVE_VERIFY §3); pp. 175, 180–181, 185–186, 194–200, 202 (one reader); CMP 122 II pp. 355–380 (SOURCES_W6_CHECK_122 §1)". The routes as proposed (M8 Lemma TV; M4 Lemma J3 with (1.70) p. 192; (1.6) 1/z (F2); (1.74)–(1.75) K-014). The deletion in "What is NOT checked" as proposed (the quoted phrase is present at L1_E l. 193).
(E6) §7 input list (l. 213). Replace by: "condition (J-c′) (N-470): Φ′(γ) ≤ ½e^{−C_TV M^5}, i.e. γ ≤ γ_TV(M); input (T2) [P-sketch] (SOURCES_W6_RESOLVE §2.5(a), VERIFY §2.4); alternative FABLE_O3_ALC Lemma O3-den after its verifier". Drop "not needed if Lemma J3 is used for (D-iii)". The (W6*) residue replacement as proposed, with "(and the 17 one-reader pages of CMP 122 I)".
(E7) §8 R-035 text. Apply to the L1_E_VERIFY version of the R-035 text (l. 112), which supersedes L1_E §8: replace "condition (J-c)" by "condition (J-c′)"; replace the residue "the σ half of (J-c) [I] (CMP 122 II p. 358)" by "the (1.9)-at-complex-U reading inside (T2) [I]"; in the (W6*) clause, as proposed.
(E8) §6.3 last paragraph. No change. CONFIRMED.
Missed by the checked file:
(E9) §5.3 Proposition B (l. 140): "condition (J-c) of §4.1" → "condition (J-c′) (N-470)".
(E10) §5.1 (S-b) (l. 117): "[P given L-165, Lemma D3.1]" → "[P-sketch given L-165, Lemma TV]".
(E11) §4.3 Corollary J (l. 109): "L-165 (for (D-iii))" → "L-165 and Lemma TV (for (D-iii))".
(E12) §7 proof structure and grade (l. 201–202): delete "and a second proof for (D-iii)"; grade (D-iii) [P-sketch], not [P].
Other files (§5.2 of the checked file): CONFIRMED, with two text fixes. D3 (vi)(d): write γ_G < 1/(2N), not γ_0. The 1 − χ′_j mechanism: cite II p. 381, not p. 382.

## 6. Canon entry for (J-c′)

N-470 (append): "(J-c′) Φ′(γ) ≤ ½e^{−C_TV M^5}, i.e. γ ≤ γ_TV(M). Φ′ := the Φ of L-165 Step 4 with ε_k → ε_k + O(α_{0,k} + α_{1,k}); C_TV := the (T2) constant, ∫|dμ_U| ≤ e^{C_TV M^5}|D(0; U)| on U_k^c(Z, α_{0,k}, α_{1,k}) (O(1)M^4 log M ≤ C_TV M^5; not canon C_1 (N-450), not C_1^{FX} (N-330)). Uses M (N-310), M_0 (N-320), A_0, p_0, C_i, q_i (N-440); r enters only through the cap r ≤ 1/8 of N-490, so no r-edge to the left. Replaces (J-c-σ) of SOURCES_L1_E_VERIFY; the c_*r half of (J-c) stays implied by N-490. — SOURCES_W6_RESOLVE §2.5(a) + VERIFY §2.4–§2.5."

## 7. Grade table
| claim of SOURCES_W6_RESOLVE | grade |
|---|---|
| §1.1 page facts | CONFIRMED (addition: (1.5)-region ⊂ (1.6)-region) |
| Lemma G, Corollary | CONFIRMED [P] (minor: e^{6r} + 1; γ_G ≠ Balaban's γ_0) |
| Balaban neither prints nor uses (vi)(d); p. 184 | CONFIRMED (prints: yes; uses: no printed use) |
| 1 − χ′_j factor from "II p. 382 first case" | CORRECTED (p. 381, mechanism not printed) |
| D3 does not need (vi)(d) | CONFIRMED |
| D3 (vii)(b) fix via II p. 381 | CONFIRMED [P-sketch], [I] count of Λ_j^c |
| D3 (ix)(a), (x); HTHR (M2) | CONFIRMED |
| (s1)/(s2) split; (1.102) for both | CONFIRMED |
| Choice B live; Reasons 1–3; used by L-165, NEW-4, L1_E σ_W, FABLE_O3_ALC | CONFIRMED |
| §2.4 file table | CONFIRMED |
| Lemma TV main inequality | CONFIRMED |
| Lemma TV (T1) constant s = 3rΦ′ | CORRECTED (s ≤ (3r + (3/2)τ)Φ′ ≤ 4rΦ′) |
| Lemma TV Consequence, I_f formula | CORRECTED (sign of I) |
| (T2) [I] | CORRECTED: upgraded to [P-sketch], one [I] reading |
| (J-c′) as γ ≤ γ_TV(M, r) | CORRECTED (r → cap 1/8; γ ≤ γ_TV(M); at N-470) |
| I (1.62) by Lemma J3 | CONFIRMED [R] |
| §3 readings; (1.70) "not checked" | CONFIRMED; (1.70) CONFIRMED on p. 192 |
| "(4.6)" misprint | CONFIRMED [I], strengthened |
| §4 (W6*) status | CONFIRMED, page sets updated (§4 above) |
| E1–E8 | E2, E3, E4, E5, E8 CONFIRMED with additions; E1, E6, E7 CORRECTED; E9–E12 missing |

## 8. Report
Verdict PASS WITH CORRECTIONS. Lemma G is correct (normalized tr confirmed, CMP 109 p. 252). Its constant is not Balaban's γ_0. Balaban prints no (1.6) factor, and D3 does not need one. The 1 − χ′_j factor is on II p. 381, not p. 382. Choice B is live. Lemma TV is correct after two fixes: the sign of I and s ≤ 4rΦ′. (T2) now follows from the printed (1.2)–(1.11) [P-sketch]. One [I] reading remains: (1.9) for Re Q at complex U. (J-c′) goes to N-470 as Φ′(γ) ≤ ½e^{−C_TV M^5}, with r replaced by its cap. (1.70) is confirmed on p. 192, and "(4.6)" is a misprint. L1_E needs E1–E8 as corrected, plus E9–E12.
