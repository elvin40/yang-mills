IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_MA verification (independent)

Started 2026-10-27. Firewall kept: no /tmp/sa_repo, no SUSSMAN_ALPOGE_MAP.

## 1. Page checks [V]
- CMP 122 I p. 201 (PDF p. 27): (1.100) exponent is −g_k^{−2}A(ζ_i, U_{k,X_i}(V′_kV_{Λ_i})); measure dV′ δ_{G_i}(V′)χ(Λ_i); G_i fixes the axial gauge; (1.101) cutoff |(1/i)log V′(b)| < M_0ε_k for b ⊂ Λ_i. Matches SOURCES_MA §2.
- CMP 122 I p. 194 (PDF p. 20): Prop. 1, V_Λ = unique critical orbit, a minimum, of V_k|Λ ↦ A(U_{k,Z}(V_k)); (1.78) |V_Λ(∂p′) − 1| < B_5M^5ε. Matches. The minimized function has no ζ_i and domain Z, so V′ = 1 need not minimize the (1.100) exponent: the author's centring at the true minimizer X* is the right choice.
- CMP 122 II p. 380 (text): (1.73)–(1.75) sup rule e^{3 sup|σ|}; budget "O(1) log g_j^{−2}|Z_j| ≤ O(1)M^dR_j^{d+1}d′_j(Z_j)". Matches.
- HHOL_LF §3.4(c) and VERIFY V5 both write the mismatch factor with the full A. So (M-A′) is a real gap in the record.

## 2. SU(2) toy reproduced [num, /tmp/ma_toy.py, python -I]
- Setup: X = a·σ/2, W = exp(i b·σ/2), b = (0.5, 0.1, 0), F = 1 − ½Re tr(W e^{iX}), Haar j = (sin(|a|/2)/(|a|/2))², G = F − min_B F.
- Cutoff |a| < 0.3 (minimizer on ∂B, |a*| = 0.299): u⟨G⟩ = 1.10 (u=10²), 1.858 (u=10³), 1.915 (u=10⁴). Reproduces 1.87 at u = 10³ to grid error. Limit → 2 = 1 (normal, linear) + 2·½ (tangential).
- Cutoff ‖X‖_op < 0.3, i.e. |a| < 0.6 (minimizer interior, |a*| = 0.51): u⟨G⟩ = 1.36 (u=10³), 1.498 (u=10⁴) → n/2 = 1.5.
- Caveat: the author's 1.87 needs the cutoff on |a| (= 2‖X‖_op), not the operator norm of (1.101). With the operator norm and this W the minimizer is interior and ½ holds. The toy is a valid boundary-minimizer example, but SOURCES_MA does not say which norm it used.

## 3. Derivations rechecked [P]
- Virial. div((X−X*)φ) = φ[n_i − u(X−X*)·∇G + (X−X*)·∇log J], φ = e^{−uG}J. Boundary flux ∫φ(X−X*)·ν ≥ 0 because B̄ is convex and X* ∈ B̄. So u⟨(X−X*)·∇G⟩ ≤ n_i + sup|(X−X*)·∇log J|. Sign chain correct.
- Lemma S. f(t) = G(X*+t(X−X*)), f(0)=0, f″ ≥ −m: f′(1) − f(1) = ∫_0^1 t f″ dt ≥ −m/2. Correct. Gives u⟨G⟩ ≤ n_i + J-term + u·sup m/2.
- C = 1 vs ½. The proof gives C = 1. C = ½ needs (X−X*)·∇G ≈ 2G, true only for an interior minimizer and near-quadratic G. For a minimizer on ∂B the normal direction is linear and contributes 1/u, not 1/(2u). Toy (§2) confirms: limit 2 > 1.5. So C = 1 is the proved constant and is sharp up to O(1) over the class "X* ∈ B̄". Whether X* is interior in the real (1.100) problem is not settled; if it is, C = ½ + o(1) would follow with a third-derivative bound. Cost of the factor 2: 0.19 vs 0.095 per mode. Not load-bearing.
- Lemma J. ψ′(s) = cot(s/2) − 2/s; max |ψ′(s)/s| on (0,1] = 0.16951 [num]. |α(X)| ≤ 2r, |α(Ph)| ≤ 2‖h‖ ≤ 4r, N(N−1)/2 roots: 0.68N(N−1)r². Correct; needs r ≤ ½. Haar density Π(sin(α/2)/(α/2))² is standard.
- η arithmetic. r² = M_0²x²p_0², uεr² ≤ M_0²x p_0³ at u ≤ x^{−2}; N(N−1)/(N²−1) ≤ 1, N/(N²−1) ≤ 1 for N ≥ 2. η_x correct.
- Corollary. 2 ln 1.1 = 0.19062; 1 − 1.1^{−2} = 0.1736 (= θ). ⟨e^{θx^{−2}G}⟩_frozen = D^G((1−θ)x^{−2})/D^G(x^{−2}) exactly. Per unit cube 4·0.1906 = 0.762 ≤ 0.77; SU(2) 2.29, SU(3) 6.10. Correct, assuming V′ lives on the scale-k unit lattice (4 links per site), which matches the p. 380 budget in unit cubes.
- Mode count. Bound holds for any n_i ≥ number of real coordinates; flat directions do not break it. No separate zero-mode count needed. Correct.
- (M-A′). With the full A the average equals e^{θx^{−2}A_min}·(G-ratio); A_min = O(ε²) per block gives e^{O(p_0²)} per block. Gap is real. Likely resolution: e^{−(Re u − x^{−2})A_min} is the background action at Re u vs x^{−2}, the same kind of term the §4.4 modulus domination carries; not checked here.
- (H−). Leading-order argument (a) is right: Re tr second derivative has no O(‖X_p‖) term. (b) is a scaling estimate. c_H will depend on M_0 and on B_5M^5 (field size of fluctuation plus background), not only on k. Not proved; correctly tagged [R].

## 4. Grades
1. Full-A bound fails, G = A − A_min is right, (M-A′) open: CONFIRMED.
2. Theorem with C = 1 + η_x: CONFIRMED given (H−). Toy 1.87 CONFIRMED but needs the cutoff on |a| = 2‖X‖_op (author did not state the norm).
3. Corollary arithmetic and per-cube constant: CONFIRMED.
4. (H−): UNSUPPORTED as a statement (honestly an [R] input); heuristic sound; c_H depends on M_0, M.
