# SOURCES_R3S1_GPY_MIN — certified global minimum of the deformed lattice GPY potential (SU(2), SU(3)); dual-photon log power

Written 2026-10-28 (Claude, Opus 5.5). New file. No existing file edited. PLAN.md not touched; sync.sh not run.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read and excluded from every search.
Script: numerics/r3s1_gpy_cert.py (new; pure numpy, about 3–6 min on the Mac). Output reproduced in §1.6.
Inputs read: R3S1_GAP §2 (§2.2 inequality), SOURCES_R3S1_NUMERICS §1, numerics/r3s1_gpy_lattice.py, SOURCES_3D_GAP_LIT rows U4, U6, U9. For Task 2 I re-read Ünsal–Yaffe arXiv:0803.0344v2 deform.tex (downloaded to /tmp/uy_dl_r3, deleted at the end).
Grades: [P] proof given here; [N-cert] numerical statement with rigorous error control (explicit inequalities plus floating slack, see §1.4); [N] plain numerics; [P-sketch] argument with a stated gap; [I] recalled.
Notation as in SOURCES_R3S1_NUMERICS: N colors, N_4 sites on the circle, a_1 the coefficient of |tr Ω|² in L³V, holonomy Ω = diag(e^{iθ_j}), Σθ_j = 0, orthonormal Cartan coordinates (Euclidean metric on θ ∈ R^N, Σθ = 0). The center-symmetric point is c (eigenvalues z·{1, e^{2πi/N}, …}); d(θ, c) is the distance in the torus.

---

## 2. Task 2 — the log power in the dual-photon mass

### 2.1 Inputs [V: deform.tex v2]
- Fugacity (eq. fug): ζ = A m_W³ (g²N)^{−2} e^{−ΔS} e^{−8π²/(Ng²(m_W))}, m_W = 2π/(NL). The appendix measure (eq. Eq:measure) is C μ^{11/3}(NL)^{2/3} S_YM² e^{−S_YM−ΔS} d³a dΩ. So (g²N)^{−2} is S_YM² = (8π²/(g²N))² (Jacobians J_a = S^{3/2}, J_Ω = NL S^{1/2}), and μ^{11/3}(NL)^{2/3} = m_W³·const at μ = m_W. A is "dimensionless and N independent": no power of g.
- Photon mass: m_γ² = (2π)²Lζ/g² = A m_W² (2π/(g²N))³ e^{−ΔS} e^{−8π²/(Ng²(m_W))}.
- Scale (eq. RG): Λ^{b_0} = μ^{b_0} (Ng²(μ))^{−b_1/b_0} e^{−8π²/(Ng²(μ))}, b_0 = 11/3, b_1 = 17/3.
- Printed results: m_γ = Ã Λ (ΛNL)^{5/6} |ln NΛL|^{9/11} (eq. mgamma); T ≡ ζ/m_γ ∼ Λ²(ΛLN)^{−1/6}|log ΛLN|^{−3/11} (eq. Tdef); m_W/m_γ ∼ (LNΛ)^{−11/6}|log LNΛ|^{−9/11}.

### 2.2 Conversion with every power of g² kept [P]
Put λ = Ng²(m_W). Eq. RG at μ = m_W gives exactly e^{−8π²/λ} = (Λ/m_W)^{11/3} λ^{b_1/b_0} = (Λ/m_W)^{11/3} λ^{17/11}. So e^{−4π²/λ} = (Λ/m_W)^{11/6} λ^{17/22}. Then
  m_γ = A^{1/2}(2π)^{3/2} e^{−ΔS/2} · m_W λ^{−3/2} · (Λ/m_W)^{11/6} λ^{17/22} = A^{1/2}(2π)^{3/2} e^{−ΔS/2} · Λ (ΛNL/2π)^{5/6} · λ^{−8/11}.

| source | power of λ in m_γ |
|---|---|
| A (non-zero-mode determinant at μ = m_W) | 0 |
| S_YM² in ζ (four zero modes) | −1 |
| 1/g² in m_γ² = (2π)²Lζ/g² | −1/2 |
| two-loop factor λ^{b_1/b_0} inside e^{−8π²/λ}, square root | +17/22 |
| e^{−ΔS}, if ΔS is g-independent (UY's claim) | 0 (but see §2.4) |
| total | −3/2 + 17/22 = −8/11 |

With λ(m_W) = (8π²/(b_0ℓ))(1 + O(ln ℓ/ℓ)), ℓ = ln(m_W/Λ) = |ln NΛL| + ln 2π, this is λ^{−8/11} ∝ |ln NΛL|^{8/11}(1 + o(1)).

### 2.3 Verdict on 9/11 versus 8/11 [P]
- The right power, given UY's own printed ζ, m_γ² and Λ, is 8/11. SOURCES_3D_GAP_LIT row U9's own check is CONFIRMED.
- UY contradict themselves. From m_γ² = (2π)²Lζ/g² one gets T = ζ/m_γ = g²m_γ/(4π²L) = (λ/(4π²NL))·m_γ ∝ Λ²(ΛNL)^{−1/6}|ln|^{p−1}, where p is the log power of m_γ. UY print p − 1 = −3/11, so their eq. Tdef has p = 8/11. Their eq. mgamma (p = 9/11) and the ratio m_W/m_γ (which repeats p) are the inconsistent entries. UY print no intermediate step, so I cannot point to the line. The value 9/11 needs λ^{−9/11} = λ^{−3/2 + 15/22}, that is λ^{15/22} from Λ in place of λ^{17/22} (as if b_1 = 5), or one extra factor λ^{−1/11}. No factor in UY's printed formulas produces either. I classify it as an arithmetic slip in eq. mgamma, copied into the ratio.
- The 1/11 does not come from the measure. The measure powers are fixed above (S² and m_W³). U9's suggestion "it may come from e^{−ΔS}" is half right: e^{−ΔS} is not O(1), but it gives no power of λ. It gives a larger factor (§2.4).
- R3S1_GAP §4.2(c) wrote |ln|^{3/2}. It used the one-loop identity e^{−4π²/λ} = (ΛL)^{11/6} and so dropped λ^{b_1/(2b_0)} = λ^{17/22}. At one-loop accuracy Λ is fixed only up to a power of the logarithm, so a log power from a one-loop conversion has no meaning. The 3/2 is an artifact of that.

### 2.4 The factor e^{−ΔS} is not O(1): a Yukawa self-energy of order 1/g [P-sketch, new]
UY state that ΔS, "the deformation term evaluated in the background of a fundamental monopole", is "an O(1) number, independent of the coupling g²". This is not right at fixed a_n and fixed N.
- Tail. Take SU(2), φ = θ_1 − θ_2, holonomy kinetic term (1/(2g²L))(∂φ)² (SOURCES_R3S1_NUMERICS §1.1), monopole weight e^{−S_BPS(φ)} with S_BPS = 4πφ/g² (R3S1_GAP §4.2). The monopole is a point source of strength j = ∂S_BPS/∂φ = 4π/g² for φ. The massless propagator is G_0(r) = g²L/(4πr). So the BPS tail is δφ(r) = −jG_0(r) = −L/r, independent of g.
- Divergence. On this unscreened tail the deformation (and the GPY term) gives ∫d³x L^{−3}·(1/2)k·(δφ)² ∝ ∫dr/L, which diverges linearly at large r. So "ΔS on the monopole background" is finite only after the holonomy mass m_φ screens the tail at r ∼ 1/m_φ = L/O(g).
- Value. Integrate φ at Gaussian level around the vacuum with the source at the monopole. Relative to the massless (BPS) value the weight changes by exp((1/2)j²[G_m(0) − G_0(0)]), with G_m(r) = g²L e^{−m_φr}/(4πr), so G_m(0) − G_0(0) = −g²Lm_φ/(4π). Hence
  ΔS = 2π m_φL/g² + O(1).
  SU(2) continuum: m_φL = g√(2a_1 − 1/3), so ΔS = 2π√(2a_1 − 1/3)/g + O(1). SU(3): the center Hessian is isotropic, the source is jα_i with |α_i|² = 2 and kinetic term (1/(g²L))|∂θ|²; the same computation gives ΔS = 2πm_φL/g² with m_φL = g√((3a_1 − 2/3)/2). SU(N): ΔS_i = (πL/g²)·α_i^T M α_i, M = (holonomy mass matrix)^{1/2} in orthonormal Cartan coordinates. Lattice: use m_φL/g = √(μ_c/2) from §1.
- Sign check. The deformed potential is ≥ its value at c (Task 1), so the deformed monopole action is ≥ S_BPS. A trial profile (BPS core, tail cut at R) costs 2πL/(g²R)·O(1) + O(k)·R/L; the best R ∼ L/g gives O(1/g). Both agree with a positive correction of order 1/g.
- Validity and gap in the argument. The m_φ-dependence comes from r ∼ 1/m_φ ≫ L, where |δφ| ∼ L·m_φ ∼ g ≪ 1, so the Gaussian treatment is valid there. The core region r ≲ L contributes O(1) to ΔS; I do not compute it. The same self-energy is the one R3S1_GAP (E5) assigns to the core weight. I have not checked whether later literature records this term.
- Consequence. m_γ = Ã′ Λ(ΛNL)^{5/6} |ln NΛL|^{8/11} · exp(−π m_φL/g²(m_W)) · (1 + o(1)). The exponent π m_φL/g² is ∝ 1/g ∝ |ln NΛL|^{1/2}. The factor exp(−c|ln|^{1/2}) decreases faster than any power of |ln|. So at fixed a_n the log power (8/11 or 9/11) is a sub-leading detail; UY's eq. mgamma misses a factor e^{−c√|ln NΛL|}. The power (ΛNL)^{5/6} is unchanged. The 1/g term vanishes only if m_φL = O(g²), which needs a_1 at the local threshold; Task 1 shows a_1 must exceed the higher global threshold, so this does not happen.

### 2.5 The correct m_σ in R3S1_GAP's normalization [P, with §2.4 as P-sketch]
R3S1_GAP §4.2(c): SU(2), action (1/(2g²))∫tr F², g = g(1/L), four species, m_σ² = 64π²Lζ/g², ζ = cL^{−3}S_0²e^{−S_0}. Add the factor e^{−ΔS} of §2.4 to ζ. Then
  m_σ = 32π³√c · L^{−1} g^{−3} e^{−2π²/g²} e^{−ΔS/2}.
Use UY's two-loop Λ at μ = 1/L, with λ = Ng² = 2g². Exactly, e^{−2π²/g²} = e^{−4π²/λ} = (ΛL)^{11/6} λ^{17/22}. So
  m_σ = 32π³√c · 2^{17/22} · Λ(ΛL)^{5/6} · (g²)^{−8/11} · e^{−π m_φL/g²} · e^{−O(1)}.
With g²(1/L) = (12π²/(11ℓ))(1 + O(ln ℓ/ℓ)), ℓ = |ln ΛL|, and SU(2) continuum m_φL = g√(2a_1 − 1/3):
  m_σ ≍ Λ (ΛL)^{5/6} ℓ^{8/11} exp(−√(11(2a_1 − 1/3)ℓ/12)).
On the N_4-site lattice replace √(2a_1 − 1/3) by m_φL/g = √(μ_c/2) of §1. The choice μ = 1/L instead of μ = m_W changes only the constant and gives O(g) corrections in the exponent. The R3S1_GAP line "m_σ ∼ Λ(ΛL)^{5/6}(log)^{3/2}" must be replaced by this formula. The confinement conclusion does not change: m_σ > 0 for every L with ΛL small.
