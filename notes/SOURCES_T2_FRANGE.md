IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# SOURCES_T2_FRANGE — which flux range (M_j) needs the gap (G_A′) on (brief check)

Date: 2026-10-28. Headless check. No existing file edited.
Firewall respected: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md and reports/ONLINE_SWEEP.md were not opened.
Read: SOURCES_T2_S123.md §1.1, §2, §5–§8; SOURCES_T2_GAPRIME2.md (header, §7, §8, corrections); SOURCES_T2_GAPRIME2_VERIFY.md (via the corrections paragraph); KAPPA_BOUNDED.md §1 (Prop. 1.1); BETA_FP_M.md §4; SOURCES_T2_PI.md and SOURCES_T2_V1.md (grep for the f-limit and gap uses).

## 1. What f is, and which f values (M_j) uses

- f is the plaquette angle of a constant abelian background V_f on the coarse level-j lattice (S123 §1.1: "V_f = constant abelian field, coarse plaquette angle f in the (0,1) plane"). It is an external parameter. It is not a Fourier variable.
- The fibre decomposition of S123 §5.1 is over k_⊥ = (K_2, K_3) at fixed f. It sums over k_⊥, never over f. Prop. 5.6 evaluates the gap at the single flux f of the operator under study.
- (M_j) is a limit statement at fixed j (KAPPA_BOUNDED l. 32; S123 Cor. 7.1): [Γ_c(Λ_j; f) − Γ_c(1; f) − (f = 0 value)]/(n_2 f²) → d_j as f → 0. S123 Cor. 7.1 (iii) and BETA_FP_M Cor. 4.5 state that only the limit is used, not the rate.
- KAPPA_BOUNDED Prop. 1.1 uses (M_j) only as this limit, level by level ("No uniformity in j is asked of them"). (PI) is also a limit identity: plane-wave p² coefficient = constant-field f² coefficient, each as p, f → 0 (PI l. 1, l. 48). V1 defines β_{k+1}(0) as the Maxwell coefficient, a second derivative at zero background (V1 l. 109); V1 uses the trivial-background gap (G2), not (G_A′).
- Precise form of the need. For a limit f → 0 it suffices that the bound |II(f)| = o(f²) holds for all 0 < |f| ≤ f_lim with some f_lim > 0. The value of f_lim is irrelevant. Strictly, the brackets have f² log|f| pieces (PI l. 199), so "f² coefficient" means this limit of the difference, not a Taylor coefficient. This does not change the conclusion.
- The chain already restricts f before (G_A′) enters. Prop. 2.1 (well-posedness of Δ_j(f)) holds only for |f| ≤ f_*(j, L), an existential constant. S123 Thms 3.3–4.3, Props. 5.3–5.6 hold "for |f| small". None of these is explicit, so 1e−4 is not the binding cutoff of the chain.

Answer to task (1): CONFIRMED. (M_j) needs the gap only on some punctured neighbourhood 0 < |f| ≤ f_lim. No fixed window |f| ≤ f_* with f_* > 1e−4 is used anywhere in S123 §5–§7, KAPPA_BOUNDED Prop. 1.1, BETA_FP_M §4, PI, or V1. The only constant-field values above 1e−4 in the campaign are numerical extrapolation points (PI table, f = 0.019 to 0.52), and these are [N] evidence, not proof inputs.

## 2. Prop. 5.6 size condition at small f

- Condition: g_f ≥ 4η_1 + 4C_M²|f|³ (S123 (G_A); Prop. 5.6 Step 1 uses it as r_1² ≥ g_f − 3η_1 ≥ 4C_M²|f|³).
- η_1 is not a finite-size term. S123 Prop. 5.4 defines η_1 := C_3[(3R + 2)²μ² + f²], μ = 2C_1|f|. So η_1 = C_η f² with C_η := C_3[4(3R + 2)²C_1² + 1]. It is the width of the coarse IDS comparison between 𝒦_0 and 𝒦_1. The S123 analysis is on Z⁴ with the per-cell trace (finite von Neumann algebra); no torus size enters it. Torus size N enters only the numerics (S123 §6, GAPRIME2 §6).
- With g_f = 2c|f| (GAPRIME2 Cor. 5.2, valid for 0 < |f| ≤ f_0(c) = ((1 − c)/100)²/2), the condition reads 2c|f| ≥ 4C_η f² + 4C_M²|f|³. Divide by |f|: 2c ≥ 4C_η|f| + 4C_M²f². This holds for all |f| ≤ f_1(j, L) with f_1 > 0 (for example f_1 = min(c/(4C_η), (c/(4C_M²))^{1/2})).
- C_1, C_3, R, C_M are existential and depend on j and L (S123 "Not claimed"). So f_1(j, L) has no explicit value, and one cannot say whether f_1 is above or below 1e−4. This does not matter: the condition holds on 0 < |f| ≤ min(f_0(c), f_1(j, L), f_*(j, L)), which is a nonempty punctured neighbourhood of 0 for each fixed j, L and any fixed c ∈ (0, 1). Example: c = 1/2 gives f_0 = 1.25·10^{−5}, g_f = |f|.
- Order check: the left side is linear in |f|, the right side is O(f²). So the condition can only fail at large f, never as f → 0. [P]

Answer to task (2): the condition holds for all sufficiently small |f| (|f| ≤ f_1(j, L)), at every fixed j, L. It is not a lattice-size condition. Whether it holds at the specific value |f| = 1e−4 is not decidable from the existential constants, and the argument does not need it.

## 3. Conclusion

(G_A′) as proved in GAPRIME2 (0 < |f| ≤ ((1 − c)/100)²/2) SUFFICES for (M_j). Usable range: 0 < |f| ≤ min(f_0(c), f_1(j, L), f_*(j, L)) > 0; (M_j) is a limit f → 0 at fixed j, so the size of this range plays no role. No gap on a larger window is needed. The numerical gap up to α ≈ 3 (ratio ≥ 0.95) is not a proof input; it remains [N] supporting evidence only. Remaining (M_j) inputs are unchanged: (I3) [I/argued], BETA_FP_M Prop. 4.4 region 1 [argued], neutral sector [I] (as listed in GAPRIME2 "Consequences").

Caveat [I]. This check reads the f-dependence of S123 Props. 5.3–5.6 and Cor. 7.1 as stated; it does not re-verify those proofs. It also assumes the f units match: S123 uses e = 2, |ef| = 2|f|, and GAPRIME2's α = 2φ with φ the plaquette angle, so α = |ef| and f_0 = α_0/2, as the GAPRIME2 corrections paragraph states.

STATUS: COMPLETE
