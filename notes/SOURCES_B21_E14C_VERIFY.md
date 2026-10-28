# SOURCES_B21_E14C verification

Independent check, 2026-10-28. Firewall kept.

## 0. Read of the target
Read SOURCES_B21_E14C.md in full. Claims (1)–(4) located: (1) §1.3, (2) §2.2–§2.4 + §3.2, (3) §2.5, (4) §3.1.

## 1. Claim (1): what the consumer takes (ASSEMBLY_N1 §4 read, l. 85–126)
- §4.1: G = Σ_k γ_k Π_i g_{i,k_i}, one bump g_{i,k_i} per block i, supported in c″_i. The n cells are distinct and σ_m-separated (§3.3).
- §4.2: each complex mode splits into g^R + i g^I; multilinearity gives 2^n real moments ⟨Π_i ϕ(g_i^{ω_i})⟩. Each moment still has exactly one source per block. No source repeats.
- §4.3: moment = Σ_π Π_B κ_{|B|}(f_B). Each κ_{|B|} has pairwise distinct, separated, real arguments. κ_1 = 0. By n-linearity of κ_n (§0 l. 14), κ_n(f_1,…,f_n) = ∂_{t_1}⋯∂_{t_n} log Z[Σ t_i f_i] at t = 0. So the multi-index is (1,…,1), base point t = 0.
- §4.4: uses (S) only through §4.3. §4.5 (lattice region) uses no (S), only |φ| ≤ 1 bounds.
- §3: x-derivatives of Φ_m, Θ_m, χ_c, F only. No t-derivative.
- No step uses a repeated source, a derivative at t ≠ 0, or Lemma 7.1. ASSEMBLY l. 91/213 status for E13/(N2) was not re-read by me; I take it from the target's quote.
Grade (1): CONFIRMED.

## 2. Claim (4): ASSEMBLY_N1 §4.2 vs §4.4
- §4.2 (l. 100): N(g^{R,I}) ≤ C_ψ′(1+|q|)^5 h^{−5}. §4.4 (l. 111): factor C_ψ′ρ_1^{−1}(1+|k_i|)h_m^{−1}. They differ. §4.1 assumes |∂^αψ_i| ≤ C_ψ h^{−|α|} for |α| ≤ 1 only, so the C¹ value is the one the hypotheses support.
- Direct check: ∇(ψ e_q) = (∇ψ)e_q + ψ·2πi q/(4h), so ‖∇g‖_∞ ≤ (C_ψ + π|q|/2)h^{−1}; ‖g‖_∞ ≤ 1 ≤ h^{−1} for h ≤ 1. So N(g) ≤ C(1+|q|)h^{−1} with C = C(r, ρ_1, C_ψ). §4.4 is right.
- With the ^5 value: Σ_q (1+|q|)^5(1+|q|²)^{−3} has terms ~ |q|^{−1}; in Z⁴ this needs exponent < −4, so it diverges. The target's phrase "5 − 6 = −1 > −4" is terse but the conclusion is right. §4.4's exponent count δ^{−n} (bump derivative) and N = 6n also match the C¹ value, not h^{−5}.
- Is ^5 load-bearing anywhere? In ASSEMBLY_N1: no. §4.4, §4.5, §5 use the C¹ value. Two more stale strings exist that the target did not flag: ASSEMBLY_N1 l. 159 ("N(g) carries max(1, h^{−5})"; should be max(1, h^{−1})), and ASSEMBLY.md l. 112 ("δ^{−5n} ... C⁵ count kept as upper bound"). Neither is used by ASSEMBLY_N1's sum; both are editorial.
Grade (4): CONFIRMED, with two extra stale strings added (CORRECTED in scope only).

## 3. Claim (2), part A: the factorial and the constants (D4D5 §4.1 read, l. 102–125, §5.1 l. 142–146)
- Step 3: Cauchy at multi-index (1,…,1) on |t_i| ≤ ρ_Γ gives ρ_Γ^{−n} sup|a_m|, with α! = 1. Check: ρ_Γ^{−1} = max(2, r/τ_m(Γ)) = max(2, E_0R̄_m⁴|Γ|_m/c_τ) ≤ C_4R̄_m⁴|Γ|_m, C_4 = max(2, E_0/c_τ), since R̄_m⁴|Γ|_m ≥ 1. Correct. No n! here.
- Origin of n!: the radius shrinks with polymer size, so the Cauchy factor is |Γ|_m^n. Step 4 sums it against the tree decay: Σ_{s≥1} s^n e^{−3κs/8} ≤ C n! (8/(3κ))^n. D4D5 l. 117: "This is the only n! in the proof." So the n! is the polymer-size moment, not a derivative-count factorial. Step 8 gives the (n!)^η from ℓ_2(n)^{4p_Rn} (log-log of the fine-scale coupling growth). The target says P5 "Steps 2, 4–9 sum P3"; this is right, but the target does not say in §2.2 where the n! enters. Its §4 and B21_S table row "n! | Σ_s s^n e^{−3κs/8} [Step 4]" do. Editorial gap only.
- C_S product. 16C_A ≤ (4C_A^{1/2})^n for n ≥ 2, C_A ≥ 1: (4C_A^{1/2})² = 16C_A. Correct. (1 + log_L(2M/σ)) ≤ C_{a,2}σ^{−a/2}; the right side is ≥ 1 because the left side is, so the n-th power bound holds also when σ > 1 (ℓ > 8). Λ_1⁴ ≤ C_{a,1}σ^{−a/2}. Powers: σ^{−an/2}·σ^{−an/2} = σ^{−an}. Correct.
- The factor 2 (rescaling λ_i = 2N) is already inside Lemma C: ρ_Γ ≤ ½ keeps ‖∇f(t)‖ ≤ ρ_1/2 for N(f_i) = 1. So the extra 2 in C_S is a double count. It is conservative, not wrong. (ASSEMBLY.md l. 112 defines N_U with 2‖∇f‖/ρ_1; the target uses ‖∇f‖/ρ_1. Either way the factor 2 covers it.)
- Uniformity: Lemma C constants depend on (E_0, κ, c_0, c_τ, M, C_R, p_R, L) and (η, p_R, C_β, L) only (l. 105). No K, f, h, or position. Position: Step 4 count holds "for every position of the support relative to the grid".

## 4. Claim (2), part B: radius, O2, σ-window, h (FX_O23 §4, O23_VERIFY §5–6, D4D5 §3.3, ledger B19/B21/C13 read)
- Radius. (FX2) domain: ‖ζ‖_∞ ≤ τ_m(Γ), ‖∇ζ‖_∞ ≤ ρ_1/2, around real f ∈ F_{r/2}. With N(f_i) = 1 and disjoint supports (Step 0), |t_i| ≤ min(½, τ_m/r) gives ‖f(t)‖ ≤ τ_m and ‖∇f(t)‖ ≤ ρ_1/2. Base point f = 0 is real. CONFIRMED.
- P2 finiteness. At fixed K the lattice is finite, so each P_m is finite and the (FX) sum is finite. This matters: ρ_Γ → 0 as |Γ| grows, so there is no common polydisc for an infinite family. Term-by-term real differentiation of a finite sum of real-analytic functions is valid. K-uniformity comes after, from the Step 4 bounds. CONFIRMED (target's verifier item (a)).
- O2. FX_O23 §4: the (1.100) denominators are holomorphic and non-vanishing on a polydisc of radius c·r in ζ, c independent of |Λ_i|, k, ε. O23_VERIFY §6 item 1: CONFIRMED, with N2 an inference and choice B conditional on N3 (open HBETA strip); choice A (f-independent denominator) needs no radius. Since τ_m(Γ) ≤ c·r once c_τ/E_0 ≤ c, the Cauchy polydisc sits inside O2's polydisc. At real t the denominators are also positive (N1). The other division, (1.103) T′_k(Y_i)1, is O4: open, avoided only by C13 (main (1.98) form). The target lists C13 as an input. CONFIRMED, conditional on C13 and (choice A, or N3).
- σ-window. Lemma C needs σ > ε only (Step 0; D4D5 §4.2: σ ≥ 2ε safe). (S) takes σ ∈ [16ε, ℓ/8]; ℓ/8 is used for the log bounds. The bridge uses σ_m = δ_m/4 from δ_3 = ℓ/8 (σ = ℓ/32) down to δ_{m_1} ≥ 64ε (σ ≥ 16ε) (N1 §3.3). Inside the window. D/σ_m = 3/8 ≤ 1. CONFIRMED.
- h-uniformity. Lemma C constants have no f-dependence; h enters only through Π N(f_i) ~ h^{−n}, which ASSEMBLY_N1 §4.4 pays with flatness (δ^{−n} in the exponent count). Q_m depends on D but is bounded through D/σ ≤ 1 (B21_S_VERIFY §1). CONFIRMED.
- (D) acts only on x-derivatives (N1 §3.1 l. 11–15: ∂^β on Φ_m, Θ_m; χ_c, F). No t-derivative. CONFIRMED.
- Wording issue. Target §4 says "PROVED ... relative to verified inputs". The inputs are S1 (OPEN, ASSEMBLY B-S), (FX) (B19: reduced, B18 open), C13 (a choice), and the coarsest-scale (FX2) radius. They are not all verified. The correct wording: "(E14-c, R) is (S) read at the real point; it holds exactly when (S) holds, with the same inputs." The target's own input list in §4 is correct; only the word "verified" overstates.
Grade (2): CONFIRMED (math), CORRECTED (status wording; also note n! enters at Step 4, not Step 3).

## 5. Claim (3)
D4D5 §4.3 l. 136: general multi-indices give a!(|X|/r)^{|a|} and Gevrey 2 + η; only distinct separated sources give (1,…,1). ASSEMBLY l. 90–91, 213: E13/(E14-d) NOT NEEDED. ASSEMBLY l. 205 ("Lemma 7.1: yes") is the Verified column, not a use. grep: ASSEMBLY_N1 never cites Lemma 7.1 or interpolation. Stale: ASSEMBLY l. 90 "(real sources, interpolation)" and the D4 row "rest NOT STARTED" describe the old route. Grade (3): CONFIRMED.

## 6. Grades and status
(1) CONFIRMED. (2) CONFIRMED in substance; CORRECTED in wording ("verified inputs" → "the inputs of (S), not all verified"; n! from Step 4 polymer-size sum Σ s^n e^{−3κs/8}; extra factor 2 in C_S is a harmless double count). (3) CONFIRMED. (4) CONFIRMED; add two more stale C⁵ strings: ASSEMBLY_N1 l. 159 (max(1, h^{−5}) → max(1, h^{−1})) and ASSEMBLY.md l. 112 (δ^{−5n}); neither load-bearing.
(E14-c) status: the consumed real-source form is equivalent to (S) at t = 0 and adds no input. B21's (E14-c) clause can close as REDUCED to (S) [verified]. It is not an unconditional proof: it carries S1, (FX)/B18, C13, the coarsest-scale (FX2) radius, and O2's N2/N3 (or choice A).
