# UMK_BETA1: β_1(0) for arbitrary L by umklapp sums (2026-10-27)

Code: `numerics/umk_beta1.py`. Box launcher: `numerics/umk_launch.sh`. Quantity, background, and normalization are those of NUMERICS.md §1, §5, §6: SU(2), U = 1, background U_0(a) = exp(i a A σ_3/2) with A a plane wave of fine momentum p e_0, w(p) = per coarse cell d²/da² [log det G − ½ log |det Bord|] at a = 0, β_1(0) = 4w/(L⁴(1 − cos p)).

## 1. Sectors and conventions

Fine momenta of coarse sector K: k_l = K + 2πl/L, l ∈ (Z/L)⁴. Fine Bloch field B(x) = L^{−2} Σ_l e^{ik_l x} B̂_l, B̂_l ∈ C^{12} (direction-major, colour-minor; x = base site of the link). Coarse Bloch field V(y_m) = e^{iK y_m} v, y_m = h(1,1,1,1) + Lm, h = (L−1)/2 (anchors). Both maps are unitary per sector.

Symbols (transfer q ∈ {0, +p e_0, −p e_0}):
- fine → fine: M e^{ikx}ε = e^{i(k+q)x} m̂(k)ε.
- fine → coarse, kernel q(x − y) e^{iq·y} on the bond anchored at y: q̂(k) := Σ_z q(z) e^{ikz}; then v = L^{−2} Σ_l ω_l q̂(k_l) B̂_l in sector K + q, ω_l := e^{2πi(Σ_ν l_ν)h/L}.
- anchor constraint of the ghost domain (λ = 0 on anchors): in sector K it is u^†λ̂ = 0 with u_l = L^{−2} ω̄_l (unit vector, one per colour).

The unitary B̂_l → ω_l B̂_l (same l in sectors K and K + p, since transfer p keeps l when K is not reduced mod 2π/L) removes every ω_l. All formulas below are after this removal.

## 2. Exact bordered forms per sector

Ghost: G_r = compression of G = D^†D to u^⊥. log det G_r = log |det 𝔊| with 𝔊 = [[G, U],[U^†, 0]], U_l = L^{−2} 1_3.

Bord: D restricted to the ghost domain gives D_r D_r^† = D(1 − UU^†)D^† = DD^† − WW^†, W := DU. Introduce three auxiliary rows:

  𝔅 = [[A, C^†, W],[C, 0, 0],[W^†, 0, 1]],  A := Δ + DD^† (fine-translation invariant, 12×12 per l).

The Schur complement of the last block is Bord, so log |det 𝔅| = log |det Bord| for every a (exact, all orders). Write 𝔅 = [[A, E^†],[E, J]], E = [C; W^†] (r = 15 rows), J = diag(0_{12}, 1_3). Per sector: A = ⊕_l A_l, E_l = L^{−2}[q̂_0(k_l); d̂_0(k_l)^†] (15 × 12).

Same form for 𝔊: A_l = ĝ_0(k_l) (3×3), E_l = L^{−2} 1_3, J = 0.

Note: A − WW^† alone is singular (3 zero modes per K: B = D(D^†D)^{−1}u), so Woodbury on it fails; the auxiliary rows avoid that. A_l is invertible for k_l ≠ 0 (A = ¼|k̂|²P_T ⊕ |k̂|² on the longitudinal line at U = 1); the shifted grid never hits k = 0.

## 3. Inverse

S := J − Σ_l E_l A_l^{−1} E_l^† (r×r), Y_l := A_l^{−1} E_l^† (12×r). Then 𝔅^{−1} = diag(A^{−1}, 0) + Z S^{−1} Z^†, Z = [−Y; 1_r]. Cost per sector: L⁴ inversions of 12×12 and O(L⁴·12²·r) products.

## 4. Second derivative

d²/da² log det 𝔅 = tr(𝔅^{−1}𝔅'') − tr(𝔅^{−1}𝔅'𝔅^{−1}𝔅'). 𝔅' = T + T^† with T: sector K → K + p. Per cell:

  w_𝔅 = ⟨ τ_1(K) − 2 τ_2(K) ⟩_K.

τ_1 (only the zero-transfer part 𝔅''_0 = [[A'', E''^†],[E'', 0]] contributes):

  τ_1 = Σ_l tr(A_l^{−1} A''_l) + tr(S^{−1} Σ_l Y_l^† A''_l Y_l) − 2 Re tr(S^{−1} Σ_l E''_l Y_l).

τ_2 = tr(𝔅(K+p)^{−1} T 𝔅(K)^{−1} T^†), T = [[a, b],[c, 0]] with l-diagonal blocks (index 1 = sector K, 2 = sector K + p):

  τ_2 = Σ_l tr(A_{2,l}^{−1} a_l A_{1,l}^{−1} a_l^†) + tr(S_1^{−1} Σ_l V_l^† A_{2,l}^{−1} V_l) + tr(S_2^{−1} Σ_l R_l^† A_{1,l}^{−1} R_l) + tr(S_2^{−1} X S_1^{−1} X^†),
  V_l = b_l − a_l Y_{1,l},  R_l = c_l^† − a_l^† Y_{2,l},  X = Σ_l (Y_{2,l}^† a_l Y_{1,l} − Y_{2,l}^† b_l − c_l Y_{1,l}).

Blocks (A_e(z, ν) = c_ν e^{ipz_0} the complex background profile, A_± = ½A_e, ½Ā_e; trans: c = e_pol; pure gauge: c = (1 − e^{ip}) e_0):
- a_l = Δ̂'_+(k_l) + d̂'_+(k_l) d̂_0(k_l)^† + d̂_0(k_l+p) d̂'_−(k_l+p)^†.
- c_l = L^{−2}[q̂'_+(k_l); d̂'_−(k_l+p)^†] (the +p part of E': C'_+ and (W'_−)^†).
- b_l = L^{−2}[q̂'_−(k_l+p); d̂'_+(k_l)^†]^† (the adjoint of the −p part of E' from sector K + p).
- A''_l = Δ̂''_0(k_l) + d̂''_0 d̂_0^† + d̂_0 d̂''_0^† + 2[d̂'_+(k_l−p) d̂'_+(k_l−p)^† + d̂'_−(k_l+p) d̂'_−(k_l+p)^†].
- E''_l = L^{−2}[q̂''_0(k_l); d̂''_0(k_l)^†].
Ghost: a_l = d̂'_−(k_l+p)^† d̂_0(k_l) + d̂_0(k_l+p)^† d̂'_+(k_l), b = c = 0, E'' = 0, A''_l = d̂''_0^†d̂_0 + d̂_0^†d̂''_0 + 2[d̂'_+(k_l)^†d̂'_+(k_l) + d̂'_−(k_l)^†d̂'_−(k_l)].

w = w_𝔊 − ½ w_𝔅. ⟨·⟩_K = average over the shifted coarse grid K = (m + ½)2π/(L Ng), as in ym_momentum.

## 5. Local symbols

D: d̂_0(k)_μ = (1 − e^{ik_μ}) 1_3; d̂'_±(k)_μ = −½ c^±_μ e^{ik_μ} 𝒢; d̂''_0(k)_μ = −½|c_μ|² e^{ik_μ} 𝒢_2, with c^+ = c, c^− = c̄, 𝒢 = R'(0), 𝒢_2 = R''(0), R(θ) = Ad exp(iθσ_3/2).

Wilson Hessian: plaquette (μ<ν) slots j = 1..4 with offsets o = (0, e_μ, e_ν, 0), directions (μ, ν, μ, ν), per-plaquette Taylor tensors H_0, H_1^{(j)}, T_{jj'} (from JAX on plaq_action, H(aA) = H_0 + a Σ_j A_j H_1^{(j)} + ½a² Σ_{jj'} A_jA_{j'} T_{jj'}):
  m̂(k) = Σ_planes Σ_{jj'} e^{−i(k+q)·o_j} h_{jj'} e^{ik·o_{j'}},
  h = H_0 (q = 0); h = Σ_j ½A_j H_1^{(j)} (q = +p, A_j = c_{dir j} e^{ip(o_j)_0}); h = ½ Σ_{jj'} Re(A_j Ā_{j'}) T_{jj'} (q = 0, second order).

Averaging (Balaban (0.4) as coded in ym_oneloop: mean over contour pairs of log of the loop holonomy, then exp(abar)·U(c)). At an abelian background every loop holonomy is exp(iΦσ_3/2), and to first order in B

  ∂f/∂B_t = E(Ψ) Σ_{loops ∋ t} w_loop s_t J(Φ_loop) R(θ_t) + R(Ψ + θ^c_t)·[t ∈ c],

with θ_t the background angle before link t (including the link itself if s_t = −1), Φ_loop the loop flux, Ψ = Σ_loops w Φ_loop, J(Φ) = ∂_Y log(e^{iY}e^{iΦσ_3/2}), E(Ψ) = ∂_δ log(e^{i(Ψσ_3/2+δ)} e^{−iΨσ_3/2}). Every angle is linear in a, so the Taylor coefficients are polynomials in (Φ, θ, Ψ) with the constant 3×3 matrices J_1, J_2, E_1, E_2, 𝒢, 𝒢_2. Per link, with the six accumulators S_0 = Σ ws, S_Φ = Σ wsΦ_e, S_θ = Σ wsθ_e, S_ΦΦ = Σ ws|Φ_e|², S_Φθ = Σ ws Re(Φ_e θ̄_e), S_θθ = Σ ws|θ_e|² (Φ_e, θ_e, Ψ_e computed with A_e):
- order 0: S_0 + [t ∈ c].
- +p: ½[Ψ_e S_0 E_1 + S_Φ J_1 + S_θ 𝒢 + (Ψ_e + θ^c_e)[t∈c] 𝒢]; −p: the same with all of Ψ_e, S_Φ, S_θ, θ^c_e conjugated.
- zero-transfer second order: ½[|Ψ_e|² S_0 E_2 + 2Re(Ψ_e S̄_Φ) E_1J_1 + 2Re(Ψ_e S̄_θ) E_1𝒢 + S_ΦΦ J_2 + 2S_Φθ J_1𝒢 + S_θθ 𝒢_2 + |Ψ_e + θ^c_e|²[t∈c] 𝒢_2].
(For a real background the zero-transfer part of ½(F''[cos] + F''[sin]) replaces x·y by Re(x_e ȳ_e).) The profile is a sum over contour pairs; it costs O(Σ_d |G(d)|²·|loop|) once per p and coarse direction (≈ 2.5·10⁹ link visits per direction at L = 15). q̂(k_l) for all l: fold e^{iKz}q(z) mod L, then one L⁴ FFT per field.

## 6. Status

Formulas derived in this session (not independently re-derived). They pass every numerical check below. The averaging Taylor profile (§5) equals the JAX Jacobian of ym_oneloop.make_avg_fn with taylor2 to 5·10^{−14} (L = 3, all four directions, orders 0, 1, 2).

Per-K integrand differs from ym_momentum. With the auxiliary rows the anchor part of 2D'PD'^† moves from the τ_1 of sector K into the τ_2 of sectors K ± p. A dense per-K check with the explicit projector P (same symbols) reproduces ym_momentum per K to 1e−12. So the two integrands differ by a p-shift that integrates to zero over the BZ. On the grid the difference is a quadrature error. It is exactly zero for commensurate p, and it falls with Ng (L = 3, p = 0.2: Δw = 2.9e−5 at Ng = 6, 2.8e−6 at Ng = 8). That is 10–100× below the grid error of w itself.

Speed-ups: the trace kernel is JAX-jitted. The shifted K grid is reduced by the reflections K_1, K_2, K_3 → −K and the 2↔3 swap (16-fold, odd L only). This reduction is exact per K to all printed digits at L = 3, 5. The grid sum equals the full grid to 1e−15 at L = 3. The reduction is wrong for even L (corner anchors), and the code turns it off there.

## 7. Validation and results (Mac, 2026-10-27)

| check | umk | reference |
|---|---|---|
| L=2, Ng=12, β at p = 0.1/0.2/0.4 | 0.629883 / 0.630711 / 0.634038 → p→0 fit 0.6296 | 0.6299/0.6307/0.6340, 0.630 (w agrees to 1e−8 rel.) |
| L=3, Ng=8, β at p = 0.1/0.2/0.4 | 0.666761 / 0.669172 / 0.689300 | 0.6667/0.6692/0.6893 (w rel. diff 1e−5, quadrature, §6) |
| L=4, Ng=6, p=0.2 | 0.757507 | 0.757475 |
| abelian (σ_3 only), L=3 / L=5 | 0.246913580 = 20/81 / 0.249600000 = 624/2500 | (1 − L^{−4})/4 |
| pure gauge, commensurate p (L=3 Ng=8 p=2π/24; L=4 Ng=3 p=π/6) | w = 3e−16; 1.5e−14 | 0 |
| pure gauge, L=3 Ng=8 p=0.2 (incommensurate) | w = −4.2e−6 (quadrature error, same size as §6) | 0 |

New: L = 5 (shifted grid, symmetry-reduced):

| L=5 | p = 0.1 (Lp = 0.5) | p = 0.2 (Lp = 1) |
|---|---|---|
| Ng = 8 | 0.75318 | 0.77028 |
| Ng = 12 | 0.74898 | 0.76817 |

Quadratic p → 0 extrapolation from p = 0.1, 0.2 (Ng = 12): β_1(L=5) ≈ 0.743 (grid error ≈ 0.4% at p = 0.1 between Ng = 8 and 12). Universal part c log 5 = 0.598. Successive first-step values: 0.630 (L=2), 0.664 (3), 0.757 (4, p = 0.2 only), 0.743 (5). The rise from L = 3 to 5 is 0.079, against c log(5/3) = 0.190. The L = 4 point is even L at a single p with Lp = 0.8, so it is not directly comparable.

Caveat for large L: the plane-wave bias is O((Lp)²). At L = 15, p = 0.2 means Lp = 3, close to the coarse zone edge, so a fit in fine p at p = 0.1, 0.2 does not give β_1(0). The box launcher therefore also runs fixed coarse momentum Lp = 1 and 0.5. Use those values for the p → 0 fit and for the comparison with c log L + const.

Timing (Mac): ~40 µs per (K, umklapp) block; L = 5: Ng = 8 in 10–18 s, Ng = 12 in 40 s per p. Box runs (L = 5…15, Ng = 8, 12): `numerics/umk_launch.sh`, not launched.

## 8. Certified port (python-flint arb, 2026-10-28)

Code: `numerics/umk_beta1_arb.py`, usage `python umk_beta1_arb.py L Ng P Q --workers 4` (p = P/Q exactly). It computes the same finite sum as `umk_beta1.py`: the symmetry-reduced shifted K grid at fixed Ng and p, transverse wave e_1 e^{ipx_0}, all three colours. Every step but the averaging profile runs in arb balls (64-bit, outward rounded).

- Constants G, G_2, J_1, J_2, E_1, E_2, H_0, H_1, T are exact rationals. They come from truncated Taylor polynomials of qexp/qlog/rot/plaq_action (Fraction coefficients, bigraded truncation, series exact to the orders used). They equal the JAX values to ≤ 3e−17.
- Profile (§5): the combinatorial sum is too large for arb, so it runs in x87 long double (unit roundoff u = 2⁻⁶⁴), with leaves e^{ips} from a 128-bit arb table. The code adds a rigorous a priori bound |fl − exact| ≤ 2γ_{2D}·M. Here M is the same loop with every leaf replaced by its modulus and every subtraction by an addition, so all its terms are ≥ 0; it runs in long double, and M_exact ≤ M/(1 − γ). D = (max per-link bin count + flushes) + 576 (pair sums) + 10L + 60 (term depth). The factors 2 cover complex arithmetic. Bin sums use sort + reduceat (sequential). Long double is converted to arb exactly by a hi/lo double split. At L = 13: D = 96 956, so radius ≤ 2.1e−14·M.
- Colour reduction: A, E, S are colour-scalar (H_0 colour structure checked exactly; profile order 0 is ∝ 1_3; D ∝ 1_3). The 12×12/15×15 algebra of §3–§4 therefore runs on 4×4 and 5×5 colour blocks. With y = a^{−1}ε^†, s = j − Σ_l εy (5×5), traces against A'' and E'' only need colour partial traces. The perturbation blocks a, b, c (colours (0,1), (1,0)) enter τ_2 blockwise. Fine symbols are trigonometric polynomials with arb coefficients. Coarse symbols are separable contractions of the profile with e^{i(K_a + 2πl/L)(z_a − h)} (acb_mat products; contractions over axes 1–3 are shared by the 8 values of K_0).
- Validation, per K against `umk_beta1.Umk.terms`: midpoints agree to ≤ 3e−13 (L = 3, 5). Full grid L = 3, Ng = 8, p = 1/5: β = 0.669171732899704 ± 6.7e−10, contains the float 0.6691717328997289. L = 5, Ng = 4, p = 1/5: β = 0.920192161405682 ± 4.1e−9, contains 0.9201921614056929.
- Grid reduction check at L = 13 (K = (2,1,0,3) and its images under K_1 → −K_1, K_3 → −K_3, 2↔3): all four balls overlap (ghost 9.39130248769 ± 8e−12, bord −85.0929 ± 5e−5). This is a check, not a proof of the symmetry.
- Cost at L = 13: profile 17 min, setup 30 s, ~27–37 s per K, 1.7 GB per worker. On 4 CPU cores Ng = 8 takes 45 min.

**Result, L = 13, Ng = 8, p = 1/26 (Lp = 0.5):** w = 4.52702203 ± 7.7e−5 (ghost 0.44695007315 ± 7e−12, bord −8.160 ± 3e−4). β_1 = 0.85729328 ± 1.5e−5. β_1 − 0.3715 log 13 = −0.095585 ± 1.5e−5. The float run (`results/umk_L13_Ng8_p0.038461538461538464_trans.json`) gives 0.8572932797, inside the interval. The interval width comes from a few K near the zone corner (bord radius up to 8e−3).

Same, p = 1/13 (Lp = 1): β_1 = 0.8757528 ± 3.1e−6, β_1 − 0.3715 log 13 = −0.0771259 ± 3.1e−6. A quadratic Lp → 0 fit through the two certified points gives β_1(13) ≈ 0.85114 (uncertified extrapolation). The rise from L = 11 to 13 at Lp = 0.5 is 0.8573 − 0.8496 = 0.0077, against c log(13/11) = 0.062.

What "certified" covers: rounding of this finite sum only. Not covered: (i) the Ng → ∞ quadrature error (Ng = 8; grid adequacy at L ≥ 11 unchecked); (ii) the p → 0 limit (plane-wave bias O((Lp)²)); (iii) the 16-fold grid reduction (numerical symmetry checks only); (iv) the formulas of §2–§5 themselves (validated against ym_momentum, not independently re-derived).
