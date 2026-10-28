# SOURCES_UN1 verification (independent)

Date 2026-10-27. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.md.

## 1. Units and the reading of (U) (D2, D2C, D4D5)

- D2 l. 27 [read]: "Convention (U): the last RG scale must be ≤ c_* r/(M^a ρ_1) relative to the test-function scale".
- D2 l. 40 [read]: "λ_j := εL^j = L^{j−K} the physical spacing of T^{(j)} (torus side 1)". So λ_K = 1 in D2 itself.
- D4D5 l. 75 [read]: "λ_m = εL^m (λ_K = 1)"; l. 77: T^{(K)} has "ℓ⁴ sites". So torus side ℓ with last spacing 1. "Torus side 1" in D2 l. 40 contradicts D2's own λ_K = 1 (one site). It is a slip. CONFIRMED.
- D2 l. 217 [read]: "M^aρ_1 ≤ c_* r … with ρ_1 measured in units of the last RG scale. … put the unit scale at a fixed number N_0 of L-steps below the physical scale of the test functions". With λ_K = 1 the first sentence is a constant inequality in physical units. The N_0 sentence is a second, different reading (scale-matched).
- D2C (3.3), (3.5) [read l. 79, 91–92]: errors carry Mλ_jρ_1/r with λ_j ≤ λ_k ≤ 1. r is the Cauchy margin in the constant c (sup over |c| < 2r of family (A)). It is not the amplitude of the specific f; f needs only |f| ≤ r so that c_X is in the disc. CONFIRMED.
- D4D5 l. 77 hypotheses list both ρ_1 ≤ r/(4C_hM) and (U) separately. Both are upper bounds on ρ_1 at fixed r. Consistent with "constant choice".
- Side finding: (FX2) at D4D5 l. 95 has sup radius τ_m(Γ) = c_τ r/(E_0 R̄_m⁴|Γ|_m), NOT r. UN1 §2.2 writes the domain as {N_U ≤ 1} with sup radius r. That is wrong in detail: the sup radius of the activity polydisc is τ_m(Γ) ≤ r, and it shrinks at fine scales. This does not touch the gradient question, but UN1's "N_U(f_i/λ_i) = 1 ⇒ inside the domain" must use the radius that the cumulant bound (S) actually uses, i.e. whatever D5 §4 delivers. Flag.

## 2. n-linear rescaling, polydisc, overlapping supports, cost (ASSEMBLY §1.2, §2.2–2.5; ASSEMBLY_N1 §1, §4.2–4.5, §5.2)

- (S) (N1 §1) is stated only for REAL f_i with pairwise support distance ≥ σ ≥ 16ε. N1 §4.3: moments are sums over partitions of cumulants of sub-blocks, and every sub-block keeps the separation. N1 §4.2 splits each complex mode ψ_i e_q into ψ_i cos and ψ_i sin; each of the 2^n real moments has one real function per cell. N1 §4.5 treats ρ < 128ε with |⟨Πφ⟩| ≤ 2^n and no source at all.
- So the bridge NEVER evaluates a cumulant on overlapping supports. Overlap near diagonals is paid by flatness of F (Lemma T) and by the source-free lattice bound. The n^n = O(e^n n!) concern does not arise. No extra n! enters s or D. CONFIRMED (and UN1 is right not to discuss it; it should state this in one line).
- Polydisc with disjoint supports [checked]: for separated closed supports each point x has at most one i with f_i(x) ≠ 0 and, since supports are separated by σ > 0, at most one i with ∇f_i(x) ≠ 0. So ‖Σ z_i f_i/λ_i‖_∞ = max_i |z_i|‖f_i/λ_i‖_∞ and the same for the gradient. The domain condition holds iff it holds for each term. CONFIRMED. The locality (FX1) of the activities makes this per-polymer as well: on Γ the sum is still pointwise a single term.
- Constant factor: (FX2) needs a perturbation of the real base point with ‖∇ζ‖ ≤ ρ_1/2 (not ρ_1). So λ_i must be 2N_U(f_i) (or N_U with ρ_1/2). This adds 2^n. Harmless, but UN1 §2.4's "N_U(g_i/λ_i) = 1 ⇒ inside" is off by this factor 2. CORRECTED (cosmetic).
- Cost: N_U(g) ≤ (1/ρ_1)·max(‖g‖_∞, ‖∇g‖_∞) when ρ_1 ≤ r. This gives ρ_1^{−n}, a K-independent and h-independent C^n. It enters C_S^n of (S). Exponent counts in N1 §4.4 (δ^{−4n} cells, δ^{−(derivatives in N)n}, δ^{−an}, δ^N flatness) are unchanged. D = 2 + 2η unchanged. CONFIRMED. Note: N1 §4.4 as written uses N(f) with 5 derivatives (h^{−5}); the C¹ form (h^{−1}) only lowers s. UN1's "s = 6 on the C¹ count" is quoted from HHIST_N1_VERIFY; not re-derived here. The minimum s on N1's own count is 10 (C^5 form), so whichever N is used, (U) does not change s.
- OS side (ASSEMBLY §2.4–2.5): the target is |S_n(F)| ≤ A(n!)^D ‖F‖_{sn} on T^{4n}, a C^{sn} norm. ‖·‖_{sn} with sn ≥ 1 dominates sup and gradient. The per-bump N_U enters only inside the bridge via Fourier coefficients and Leibniz, and those are already bounded by ‖F‖_N with N ≥ 10n. The gradient weight 1/ρ_1 is a constant. CONFIRMED. OS regularity never needs the generating functional at a large-gradient source.
- Defect in ASSEMBLY §2.2 [confirmed by reading]: F_r is "|∂^m f| ≤ r for m ≤ 5". With r fixed and gradient bound r, (U) ρ_1 ≤ c_* r/M^a fails when M^a > c_*. The edit "gradient ≤ ρ_1" is needed. Also ASSEMBLY §2.3 step 2 ("a ≤ c r δ⁵") and N1 §1 item 3 ("λ_i = N(f_i)/min(r, C_m)") must use the ρ_1-weighted norm. CONFIRMED.

## 3. (Hβ) gradient, lower-bound grep, ledger

- Lemma H (HBETA l. 33–34): given (I), (E), (H-hist), for real |c| ≤ 2r, 1/2 ≤ |v_k(c)| ≤ 3/2 for all k ≤ K, uniformly in K. It gives the derivative in c, not a gradient in x directly.
- Gradient: with h ≡ 0 the recursion is pointwise, w_k(x) = u_k(f(x)) (D2C l. 135, l. 154). So f_k(x) = g_k^{−2} − u_k(f(x)) and ∇f_k = −v_k(f(x))∇f(x). Hence |∇f_k| ≤ (3/2)ρ_1 by the chain rule. This is D2C l. 148. So the gradient bound is a verified reduction to (I), (E), (H-hist) for REAL c. It is not bare-open. Complex c (needed if the D2C Cauchy bounds use the complex disc |c| < 2r) is open (HBETA §3(c)); D2 §8 item 3 allows the real-c C^∞ fallback. UN1's "[O, unchanged]" is CORRECTED to "reduced; complex-c strip open".
- Lower bound on ρ_1 [grep of SOURCES_D2*, D3*, D4D5*, FX*, N3*, HBETA* for "ρ_1 ≥", "ρ_1 >", "/ρ_1", "ρ_1^{−"]: no lower bound found. Hits are D2 l. 79 ("there are r_0 > 0, ρ_1 > 0"), D3R_VERIFY item 1 (ρ_1 ≤ r/(2C_hM)), D3R l. 45 ("ρ_1λ_k small"), D3W8 l. 78, D4D5 l. 76. All are upper bounds. CONFIRMED at grep level (not a line-by-line reread).
- Supporting evidence UN1 did not cite: D4D5 l. 103 and l. 144 already define N(f) := max(‖f‖_∞/r, ‖∇f‖_∞/ρ_1) (C¹ only) in the D5 cumulant bound. So the N_U norm of UN1 is already the norm of the D5 target. ASSEMBLY_N1 §1 item 3 and ASSEMBLY §2.2 are the out-of-date places.
- Ledger B21/B22 (TRUST_LEDGER l. 82–83) [read]: B22 says "(U) is a hypothesis in disguise for T2". B21 says "must be reconciled with (U) of B22". UN1's reconciliation answers B21's note. The κ → κ/2 part of B22 is untouched.
- Order of constants: r_0 (N3A l. 42) = min of block radii; none of the listed terms names ρ_1. Then ρ_1 := min(c_* r_0/M^a, r_0/(4C_hM)). No circularity found. Caveat: r_0^{D2} comes from Theorem D2 l. 79, which states r_0 and ρ_1 together; if r_0^{D2} depended on ρ_1 the order would need a check. Grep shows no such dependence.

## 4. Grades

1. Units and reading of (U): CONFIRMED. λ_K = 1 (D2 l. 40, D4D5 l. 75). D2 l. 40 "torus side 1" is a slip (should be side ℓ). r is the Cauchy margin of family (A), bounded by r_0. Correction: UN1 §2.2 states the (FX2) domain with sup radius r; the printed radius is τ_m(Γ) ≤ r and the gradient radius is ρ_1/2.
2. Rescaling: CONFIRMED with a cosmetic correction. Disjoint supports ⇒ max, not sum, for sup and gradient. Overlapping supports never reach (S): (S) is stated for σ-separated real sources, moments are partition sums over separated blocks, and ρ < 128ε uses no source. No n^n, no extra n!; s and D unchanged. Cost ρ_1^{−n} (times 2^n for the ρ_1/2 radius) is a K- and h-independent C^n. C^{sn} dominates N_U.
3. Drop D2 l. 217 scale-matched reading; F7 refuted: CONFIRMED for the (U) part. The κ → κ/2 recovery of B22 stays open; F7's reclassification must not touch it.
4. Edit list: CORRECTED (add items). Add: ASSEMBLY §2.3 step 2 ("a ≤ c r δ⁵" → ρ_1-weighted C¹ norm); ASSEMBLY_N1 §4.2/§4.4 N(g) bound with the 1/ρ_1 weight; λ_i = 2N_U for the ρ_1/2 radius; cite D4D5 l. 103/144 as the existing N_U; TRUST_LEDGER B21 note "must be reconciled" → resolved by UN1.
5. Open items: CORRECTED. (Hβ) gradient bound is a verified reduction (Lemma H + chain rule with h ≡ 0), real c only; complex strip open. Lower-bound grep: confirmed clean. κ → κ/2 and B21 uniformity of (S): unchanged, not checked here.

Verdict: UN1's conclusion STANDS. (U) is a constant choice ρ_1 ≤ c_* r_0/M^a at λ_K = 1, compatible with (B-N1), conditional on (Hβ) inputs (I), (E), (H-hist), and the open κ → κ/2 recovery.
