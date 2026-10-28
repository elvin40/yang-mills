# SOURCES_B21_S — uniformity of (S) at small widths and at separation 16ε

Status: in progress (2026-10-28). Firewall respected: no read of /tmp/sa_repo, SUSSMAN_ALPOGE_MAP, ONLINE_SWEEP.

## Ledger

| item | status |
|---|---|
| §1 statement of (S) | done [read ASSEMBLY_N1 §1, UN1 §2.4, UN1_VERIFY items 2, 5, HHIST_N1_VERIFY Part 2] |

## 1. (S) stated precisely [read]

Source: ASSEMBLY_N1 §1, with the norm corrected by SOURCES_UN1 §2.4 and UN1_VERIFY item 2 / item 4.

(S). There are η > 0, a ∈ [0,1[, C_S < ∞, K_0 such that: for K ≥ K_0, n ≥ 2, σ ≥ 16ε, and REAL f_1,…,f_n with dist(supp f_i, supp f_j) ≥ σ (i ≠ j),
  |κ_n(f_1,…,f_n)| ≤ (C_S σ^{−a})^n (n!)^{G} Π_i N(f_i).
- Norm. ASSEMBLY_N1 writes N = C^5 norm. The corrected form (UN1, UN1_VERIFY item 4, D4D5 l. 103/144) is the C¹ norm N_U(f) = max(‖f‖_∞/r, ‖∇f‖_∞/ρ_1), with λ_i = 2N_U(f_i) for the ρ_1/2 gradient radius of (FX2).
- Gevrey order G. ASSEMBLY_N1 as written: G = 2 + η (D3R branch), giving s = 11, D > 2. With the C¹ norm: s = 6 (HHIST_N1_VERIFY claim 6). With the FX branch, G = 1 + η and D > 1 (UN1 §2.4). The brief's "s = 6, D > 1" is the C¹ + FX combination. The question below does not depend on G.
- Range of widths. The bridge feeds (S) only with bumps g = ψ_i cos/sin(2πq·y/4h) supported in a cube of side 3h, h = h_m = δ_m/64, δ_m ∈ [64ε, ℓ/8]. So h ∈ [ε, ℓ/512]. Separation σ_m = δ_m/4 = 16 h_m ≥ 16ε. Note: σ and h are tied, σ = 16h. (S) is never used with σ ≪ h or with h ≪ σ/16.
- Region ρ < 128ε: no source, |⟨Πφ⟩| ≤ 2^n and flatness (N1 §4.5).
- Fallback already proved (N1 ledger item 3, confirmed HHIST_N1_VERIFY claim 5): if (S) holds only for σ ≥ ε^θ, θ ∈ ]0,1], the bridge still closes with s = max(s_0, ⌈4/θ⌉+1). The same fallback applies to h, since h = σ/16. So B21 needs (S) only down to a power ε^θ, not down to ε. Only an ε-independent floor σ_0 would fail.

| §2a Lemma C of D4D5 found | [read] D4D5 §4.1–4.2, §5.1: already proves (S) given S1 + (FX), with σ down to 16ε and an explicit size factor |

## 2a. The existing derivation of (S): D4D5 Lemma C [read, D4D5 §4.1–§5.1]

D4D5 §4.1 Lemma C derives (S) from S1 + (FX). Its statement:
  |κ_n| ≤ C_A (1 + D/σ)⁴ (1 + log_L(2M/σ)) (C_B Λ_1(σ)⁴)^n C_η^n (n!)^{1+η} Π N(f_i),
with D := min_i diam(supp f_i), N = N_U (C¹), and constants "independent of K, the f_i, or the position of the supports relative to the blocks" [V, D4D5 l. ~105].
Where each factor comes from (D4D5 Steps 0–9):
- Step 0: σ > ε makes the lattice gradient of Σ t_i f_i a max, not a sum. This is the only comparison of σ with ε. σ ≥ 2ε suffices.
- Step 3: Cauchy radius ρ_Γ = min(½, τ_m(Γ)/r) on a polydisc in t. It depends on the polymer Γ (its scale m and |Γ|_m), not on the sources. Multi-index (1,…,1): no factorial.
- Step 4: the polymer count uses Q_m ≤ (2 + D/(Mλ_m))⁴ cubes meeting the smallest support. This is monotone increasing in D. As D → 0 it tends to 2⁴. So a small support makes the bound smaller or equal, never larger.
- Steps 5–8: coupling growth R̄_m⁴ at fine scales, killed by e^{−κσ/(4Mλ_m)}; gives Λ_1(σ)⁴ ~ (log log 1/σ)^{4p_R} ≤ C_aσ^{−a}.
- D4D5 §4.2 [read]: at σ = 16ε and M ≥ 8 no scale is "fine", and the bound is C^n Λ_1(16ε)^{4n}(n!)^{1+η}. Uniformity down to 16ε "holds and costs only the log-log factor". "No threshold condition of the form σ ≥ σ_0 or σ ≥ ε^θ arises."
- D4D5 §5.1 [read]: (S) final form adds the condition min diam ≤ σ. N1 meets it: sources sit in cubes of diameter 6δ/64 < σ = δ/4.

Consequence for the brief's question (3). The multilinear constant has no factor that depends on h. The only size dependence is (1 + D/σ)⁴, which is ≤ 16 when D ≤ σ and decreases as h → 0. The h-dependence of the full bound sits entirely in Π N_U(f_i) ~ Π (1+|q|)/(ρ_1 h), which ASSEMBLY_N1 §4.4 pays with flatness (C¹ count: δ^{−4n}·δ^{−n}·δ^{−an}·δ^{N}, N = 6n).

| §2b RG trace of one bump, h ∈ [ε, ℓ/512] | [derived] from D4D5 Lemma C Steps 0–7, D2C (3.3)/(3.5), D3 (iv), FX_O23 §4–6; no h-dependent constant found |

## 2b. One rescaled bump traced through the RG [derived from the quoted blocks]

Setting. g = ψ cos/sin(2πq·y/4h), support in a cube of side 3h. Rescaled source f = g/(2N_U(g)). So ‖f‖_∞ ≤ r/2 and ‖∇f‖_∞ ≤ ρ_1/2. Then also ‖f‖_∞ ≤ min(r/2, ρ_1·3h): the amplitude is ≤ ρ_1h·O(1) ≪ r for small h (UN1 §2.4 remark).

The brief's split "scales below h / scales above h" maps onto Lemma C as follows. Let m_h be the scale with Mλ_{m_h} ~ h.

(i) Scales m < m_h (blocks finer than the bump). Here the bump covers ~(h/(Mλ_m))⁴ m-cubes. This is the Jacobian factor (h/ε)^d the brief asks about (at m = 0 it is (h/(Mε))⁴). Where it appears: Lemma C Step 4, Q_m ≤ (2 + D/(Mλ_m))⁴, D = diam of the smallest support ~ h. Why it does not break uniformity: a polymer counts only if it meets every support (Step 2, from (FX1)), so it reaches distance σ, and its activity carries e^{−κσ/(4Mλ_m)} (Step 7). With σ = 16h ≥ D, Step 7 writes Q_m ≤ (2 + 2D/σ)⁴ u⁴, u = σ/(2Mλ_m), and Σ_i u_i⁴ e^{−3κu_i/8} ≤ C. So the Jacobian is (D/σ)⁴·u⁴, not (h/ε)⁴. It is controlled by the ratio D/σ ≤ 1, which the bridge fixes (N1 §3.3), not by h/ε.
 - Is the source at these scales "a local perturbation of the bare action"? Only at m = 0. At m ≥ 1 it is a perturbation of the sourced effective action, with the freezing error of D2C (3.3)/(3.5): |c_X − f(x)| ≤ ‖∇f‖_∞λ_j ≤ ρ_1λ_j/2. This uses only the gradient. It is h-independent. (For h < λ_j the true error is even smaller, ≤ 2‖f‖_∞ ≤ O(ρ_1h).)
 - Large-field parts: the source enters T′ through σ_ζ with an upper bound only ((1.73)); FX_O23 O3 gives radius c·r, "independent of |X|, k, ε" [read, FX_O23 l. 78, 90]. Only sup|ζ| enters, not the width.
 - R-denominators: FX_O23 O2 gives radius c·r, "independent of |Λ_i|, k, ε" [read, l. 89]. The D3 Lemma D3.1 radius c_τr/(E_0|Y|) depends on the denominator domain Y, not on supp f.

(ii) Scales m ≥ m_h (blocks coarser than the bump). The bump meets ≤ 2⁴ m-cubes (Step 4 with D ≤ Mλ_m). Each contributing polymer is bounded by (FX3) E_0e^{−κd_m(Γ)} on the (FX2) polydisc. The Cauchy radius in t_i is ρ_Γ = min(½, τ_m(Γ)/r) (Step 3). It depends on Γ (scale, size), not on supp f_i. So the bump is a point-like insertion, and its cost is one factor ρ_Γ^{−1}, the same as for a wide bump.

(iii) The width h ~ ε case. With M ≥ 8, Mε ≥ 8ε > 3h for h ≤ 2ε. So m_h ≤ 0: every scale is of type (ii). The bump sits in ≤ 16 fine M-cubes at m = 0. There is no averaging loss: the RG never needs the bump to be resolved, only the polydisc bound for the polymers that contain it.

Candidate h-dependent steps, checked one by one.
1. Jacobian (h/ε)^d: present in Q_m at m < m_h; absorbed by e^{−κσ/(4Mλ_m)} because D ≤ σ (Step 7). Not a uniformity issue for D/σ bounded. [derived, Lemma C as verified, D4D5_VERIFY §4]
2. Gradient ρ_1 ~ r/h (unrescaled bump): paid by N_U (one factor (1+|q|)/(ρ_1h) per bump), absorbed by flatness of F in ASSEMBLY_N1 §4.4. Not by (U). [read, UN1 §2.4, UN1_VERIFY item 2]
3. Lattice gradient for h ~ ε: |f(x+εe) − f(x)|/ε ≤ ‖∇f‖_∞ for any h. Step 0 needs σ > ε only; σ = 16h ≥ 16ε. [read, D4D5_VERIFY §4]
4. Freezing error and (Hβ) gradient |∇f_k| ≤ (3/2)ρ_1: pointwise chain rule (UN1_VERIFY §3). h-independent. [read]
5. O4 fallback (FX_O23 §6): if (FX) used Balaban's optional (1.104) form, the Cauchy factor would be Π_i B_{Δ_i}, B_Δ ≤ 3N·#plaq(Δ). With fine-history plaquettes (FX_O23_VERIFY §5 gap (ii)) #plaq(Δ_i) ~ (h/ε)⁴. This IS an h-dependent factor; it grows with h (wide bumps), up to ε^{−4n} at h ~ ℓ/512. It is NOT on the main route: FX_O23_VERIFY §5 shows (1.103)–(1.104) is an optional "final remark", and the main form (1.98) needs only upper bounds (O3). So B21 requires (FX) in the main (1.98) form. [read; condition named]

