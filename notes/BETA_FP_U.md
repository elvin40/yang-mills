# BETA_FP_U: the uniform p² bound (U) and boundedness of Γ^{ex}(θ_*; L^k)

Written 2026-10-27 (Claude, Opus 5.5). Read: BETA_FP_PW §0–§7; U3_AW §4.1–4.3; U3_AW_VERIFY §3; U3_REPAIRS (O5, O6, Prop. B); U3_GAUSSIAN_RG §2; U3_LEMMA51_R23 §3c; KAPPA_BOUNDED §2 and its VERIFY; numerics/NUMERICS §5–7. Firewall: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, and ONLINE_SWEEP §2 not read. No existing file edited. No new numerics runs. Tags: [proved here], [cited], [argued], [hypothesis], [open].

(Sections are appended as the work proceeds.)

## 1. Setting, and a correction to the premise

### 1.1 The objects
Level-j plane-wave data (BETA_FP §1.2): D0_j(q) (= Δ_j, trivial background), Tp_j(q; p), Tm_j(q; p) (a¹, transfer ±p), D2_j(q; p) (a², zero transfer). One step is (1.3) of BETA_FP. Let a_j(p) := |v_j(p)| be the level-j amplitude per unit fine amplitude a. For the transverse σ_3 wave, a_{j+1}(p) = L χ(p/L) a_j(p/L)·(1 + longitudinal part) with χ the one-step form factor, χ(0) = 1, entire. Normalized data: T̃_j := Tp_j/a_j, D̃2_j := D2_j/a_j².

Write b(k) := 𝔅_{j}(k)^{−1} (one-step bordered inverse, level j → j+1). Row 2 of b(k) is [H(k)^†, −Δ_{j+1}(K)] with H = H_{j+1} the gauge-fixed one-step minimizer map (U3_AW §1). Then (1.3) reads

  Tp_{j+1}(K; Lp) = H(k + p)^† [W(k + p) diag_l Tp_j(k_l; p) W(k)^†] H(k) + g^T_j(K; p),   (1.1)
  D2_{j+1}(K; Lp) = H(k)^† [W(k) diag_l D2_j(k_l; p) W(k)^†] H(k) + g^D_j(K; p),   (1.2)

where g^T_j collects the one-step vertex terms (Q̃^{(1)}, ghost (DD^T)^{(1)}; finite range, entire in (k, p)) contracted with b(k), b(k + p), and g^D_j collects the 𝔅''_0 vertex terms and the products 𝔅_∓ b(k ± p) 𝔅_± of BETA_FP (1.3) (quadratic in Tp_j, Tm_j). The input data enter (1.1)–(1.2) undifferentiated in q. Only b(·) is evaluated at shifted momenta.

Normalized form. Put 𝒜(k′, k)s := L^{−2} H(k′)^† [W(k′) diag_l s(k_l) W(k)^†] H(k). Then, with ρ_j(p) := L a_j(p/L)/a_{j+1}(p) = 1 + O(p²) (explicit),

  T̃_{j+1}(K; p) = ρ_j L·𝒜(k + p/L, k) T̃_j(·; p/L) + g̃^T_j,   D̃2_{j+1}(K; p) = ρ_j² 𝒜(k, k) D̃2_j(·; p/L) + g̃^D_j.   (1.3)

Check at p = 0: H(0) = L e_{l=0} ⊗ 1 (U3_AW_VERIFY §5), so 𝒜(0, 0)s = s(0): the a¹ data have eigenvalue L (a relevant vertex, dimension 1) and the a² data eigenvalue 1, as the gauge-covariance values below require.

### 1.2 What (A) qualitative gives, and what it does not
The task premise says the vertices T_±(p) and the zero-transfer kernel are "analytic in p with j-uniform bounds by (A) qualitative". This is not what U3_AW proves.
- Proved with j-uniform bounds: A0 (Δ_M analytic on S(δ_0), sup ≤ B_0, all M), Lemma A1 (‖b(K)‖ ≤ 2b(L) on |Im K| ≤ δ_*(L), all j), Theorem A3 (real-K C⁰ bound on σ^{(1)}, all j).
- Proved without j-uniform bounds: Prop. A2 (σ^{(m)}, m ≤ 2, analytic on S(δ_*) at each level; the bound is not uniform in j).
- Reduced, not proved: j-uniform strip bounds for m = 1, 2 ⇐ (H′). (H′) FAILS numerically at L = 3 (max‖H_j‖/L = 1.65, 1.74, 1.76, 1.76 for j = 1, 2, 3, ∞ against the threshold √(L − 1) = 1.41; U3_AW_VERIFY §6).
The plane-wave vertices T̃_j(·; p), D̃2_j(·; p) at p ≠ 0 are level-j background data of the same type as σ_j^{(1)}, σ_j^{(2)}, not f⁰ data. So their j-uniform bounds are not covered by (A) qualitative. The same argument as A2 gives analyticity in (q, p) at each level j (Lemma 2.1 below), with a j-dependent bound. Uniformity in j is the whole content of (U). §2 proves it from one inequality on H, which is weaker than (H′), and states exactly where it holds.
