# VERIFY_Tower.md — statement check of `YmLean/Tower.lean`

Sources: `../H1_ANALYTIC.md` §1 (1.1), §2 (tower identity (2.2), consequence (I1)), §3 Lemma T (a)–(c), (5.3); `../H1_ANALYTIC_VERIFY.md` V1 (inequalities (i)–(vii)), V2, V3. Build: `lake build` (whole project, 18 files) succeeds. `Tower.lean` has 167 lines and no `sorry`. `λ_max(G) ≤ c` is written in Rayleigh form: `∀ x, rq G x ≤ c ‖x‖²`, `rq G x = re⟪x, Gx⟫` (CertBridge.lean). For Hermitian G the two forms are equivalent. The field is any `RCLike 𝕜`, so ℂ is one instance.

## Correspondence

| Markdown | Lean |
|---|---|
| Probability average lies in [min, max] (the brief's form of the tower bounds) | `weighted_tower w d`: w ≥ 0, Σw = 1 ⇒ `inf' d ≤ Σ w_i d_i ≤ sup' d`. Nonemptiness of ι is derived from Σw = 1. |
| §3 (b), V1 (iv): c_m = Π_ρσ²·σ_μ² ≤ Π_ρσ², Σ_mΠ_ρσ² = 1 (Fejér) ⇒ d^M_μ(k) ≤ 1/min_m\|q̃_m\|² | `weighted_tower_le w s d b`: w ≥ 0, Σw = 1, 0 ≤ s ≤ 1, 0 ≤ d ≤ b ⇒ `0 ≤ Σ w s d ≤ Σ w b ≤ max b`. Instance: w = Π_ρσ², s = σ_μ², d = b = 1/\|q̃_m\|². |
| (2.2): d^{ML}_μ(K) = L^{−2}Σ_l Π_ρa_{l,ρ}²·a_{l,μ}²·d^M_μ(k_l) | `towerSym L p aμ2 dM := (L²)⁻¹ Σ_l p_l aμ2_l dM_l` (a definition; p_l = Π_ρa_{l,ρ}², aμ2_l = a_{l,μ}²). |
| Bounds on (2.2) used by the majorant (Σ_lΠ_ρa² = 1, per-term d^M(k_l) ≤ 1/\|q̃_0(k_l)\|²) | `tower_bounds`: Σp = 1, 0 ≤ aμ2 ≤ 1, 0 ≤ dM ≤ b ⇒ `0 ≤ towerSym ≤ L^{−2} max_l b_l`. |
| §2 Consequences, (I1): P_⊥E_lP_l = P_⊥E⁰_l, E⁰_l diagonal ⇒ P_⊥TP_⊥ = P_⊥diag(s²Σ_l\|E⁰_{l,μμ}\|²d^M_μ(k_l))P_⊥ | `I1_compress`: P_⊥ and P_l Hermitian, D_l = diag(d_l), P_⊥E_lP_l = P_⊥diag(e_l) ⇒ P_⊥(s²Σ_lE_lP_lD_lP_lE_lᴴ)P_⊥ = P_⊥diag_μ(s²Σ_l e_{l,μ}d_{l,μ}conj e_{l,μ})P_⊥. The note writes P_lD_lP_l in T; D_l need not be real or positive here. |
| V1 (i): λ_max(A + B) ≤ λ_max A + λ_max B | `rayleigh_sum_bound`. Hermiticity and PSD are not needed in Rayleigh form. |
| Brief (3): λ_max(ZᴴTZ) ≤ ‖Z‖²λ_max(T) | `conj_rayleigh_bound` (t ≥ 0 needed; ‖Z‖ = spectral norm). Helper `rq_conj`: rq(ZᴴTZ)x = rq T (Zx). |
| Brief (4): λ_max(γwwᴴ) ≤ γ‖w‖² | `rank_one_bound` (γ ≥ 0, w a column `Matrix n Unit 𝕜`, ‖w‖ its spectral = Euclidean norm). |
| (1.1): ρ_1²L² = λ_max(ZT2Z + cc^†/(σ\|K̂\|⁴)) ≤ ‖Z‖²λ_max(T2) + γ‖c‖² | `majorant_core` with w = c, γ = 1/(σ\|K̂\|⁴). |
| §3 (a) + (c): T2 ≤ d_max T, ZTZ = Z ⇒ ZT2Z ≤ d_max Z, so λ_max(ZT2Z) ≤ d_max‖Z‖ | `lemmaT_core`: `∀ y, rq T2 y ≤ d_max rq T y`, `ZᴴTZ = Z`, d_max ≥ 0 ⇒ λ_max(ZᴴT2Z) ≤ d_max‖Z‖. |

## Remark on the form of the majorant

H1_ANALYTIC does not use the brief's form ‖Z‖²λ_max(T2) + γ‖w‖² as stated. Lemma T bounds the transverse part by d_max‖Z‖ (one power of ‖Z‖), through T2 ≤ d_max T and ZTZ = Z. That form is `lemmaT_core`. The brief's form (`majorant_core`) is also a valid upper bound, but it is a different inequality. I did not prove that either form implies the other. Both are formalized. The gauge part of (5.3) is also not γ‖w‖² directly: Lemma Gauge bounds ‖c‖ by \|K̂\|(1 + τ), and that bound is not formalized. Combine `lemmaT_core` and `rank_one_bound` through `rayleigh_sum_bound` to get the (5.3) structure with abstract inputs d_max, ‖Z‖, ‖c‖.

## Not formalized

1. The Fourier/umklapp derivation of (2.2) from the lattice definitions: n = l + Lm, σ^{ML}_{n,ρ}(K) = a_{l,ρ}σ^M_{m,ρ}(k_l), q̃^{ML}_n = Lq̃^M_m(k_l), and the sum over m. `towerSym` is a definition, not a derived identity.
2. The specific symbols a_ρ, σ, q̃, the Fejér identity Σ_lΠ_ρa_{l,ρ}² = 1, and \|S_L(k_μ)\|·\|A(k)\| = L\|a_μ\|Π_ρ\|a_ρ\|. These are hypotheses (Σp = 1, 0 ≤ aμ2 ≤ 1, 0 ≤ dM ≤ b) or abstract inputs (e_l).
3. Lemma S (2.1), Lemma G (4.1), and the hypothesis P_⊥E_lP_l = P_⊥E⁰_l of `I1_compress`.
4. The pseudo-inverse facts: ZTZ = Z and ‖Z‖ ≤ 1/min_μ d^{ML}_μ (§3 (c), compression). Also T2 ≤ d_max T (§3 (a), (PDP)² ≤ ‖PDP‖PDP). These are hypotheses of `lemmaT_core`.
5. §3 (b) monotonicity of 2M sin(x/2M) and the sinc bound; §3 (d) termwise σ^N ≥ σ^∞; Lemma Gauge (5.2); F_CS (6.1); the branch-and-bound (bb.py, bb_arb.py) and its arb enclosures.
6. The identification ρ_1²L² = λ_max of (1.1) (H2_CERTIFY_L13 (2.1), P4).

## Axioms

```
'YmLean.weighted_tower' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.weighted_tower_le' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.tower_bounds' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.I1_compress' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.rq_conj' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.rayleigh_sum_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.conj_rayleigh_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.rank_one_bound' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.majorant_core' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.lemmaT_core' depends on axioms: [propext, Classical.choice, Quot.sound]
```
