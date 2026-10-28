IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_HHIST2_VERIFY — independent check (2026-10-27)

Firewall: /tmp/sa_repo and reports/SUSSMAN_ALPOGE_MAP.md not read.

## Step 1. Read HHIST2 (full), HTHR2 (full), HTHR2_VERIFY (full), HTHR §1 and §5 (Lemma H′)
HTHR2 §3.2 W-Gronwall: v_j′ = v_{j−1}′ − (B_j(c))″, B_j(c) = B_j(u(c); ū) (HTHR line 22: frozen thresholds ū). So W uses ONLY the frozen map, and needs Σε′_j, Σε″_j < ∞ for it. β_j enters only D_j = (9/2)ε″_j + 2ε′_jW through ‖Δ_j″‖ ≤ |B_j(c)″| + |β_j(u(c))″|, and D = sup_j D_j is a constant in (3.3). Claim (1) core point CONFIRMED: L6 over-asks for β_j inside HTHR2.
Caveat found: HTHR §5 Lemma H′ writes B_j′ = β_j′ + Δ_j′ and uses |β_j′| ≤ ε_jV_{j−1} with Σε_j = x = C_1Aγ/β (HBETA Step 1, real (H-hist)). So a SUMMABLE first-derivative bound for β_j (running thresholds) is still in the chain, via (H-hist), not via (H-hist2). HHIST2 §4.1 "β_j needs only a uniform bound" is right for L6 only; it does not remove summable ε′ for β_j from the full argument. (Alternative: Lemma H′ could bound Σ|B_j′| directly by the frozen-map ε′; then β_j′ summability is not needed. Not done in HTHR.)

## Step 2. Jacobian and summability [re-derived]
g = u^{−1/2}: dg/du = −½g³, d²g/du² = (3/4)g⁵. ∂²_u = ¼g⁶∂²_g + (3/4)g⁵∂_g; ∂_{u_i}∂_{u_l} = ¼g_i³g_l³∂_{g_i}∂_{g_l}. CONFIRMED.
Indexing. HBETA (E) as used in HTHR2 (3.4): u_{j−1} ≥ γ^{−2} + βm, m = K − j + 1. So j = K is the unit scale, u_{K−1} is the smallest u (largest g ≈ γ), and i < j ⇒ u_i ≥ u_{j−1} ⇒ g_i ≤ g_{j−1}. Direction CONFIRMED.
Sum. Σ_{m≥1}(γ^{−2}+βm)^{−2} ≤ ∫_0^∞(γ^{−2}+βx)^{−2}dx = γ²/β. Σ(…)^{−5/2} ≤ (2/3)γ³/β; Σ(…)^{−3/2} ≤ 2γ/β; Σ(…)^{−1} ~ β^{−1}log K (diverges). Claim "any u^{−p}, p > 1, sums uniformly in K" CONFIRMED.
Route 1 arithmetic. (H2-hist) 2D/(ρ_1x_ix_l) × ¼g_i³g_l³ = (D/(2ρ_1))g_i²g_l²; diagonal extra (3/4)g⁵·D/g = (3D/4)g⁴. Double sum ≤ [(D/2ρ_1)A_2² + (3D/4)(1−λ_C)^{−1}]g_{j−1}⁴. CONFIRMED. (F1) text in HHOL §4.2 matches HHIST2 §2.1 verbatim (D, λ_C, 1/x_i from own-slot Cauchy, ledger [R]); a′ = λ_C^{m/2} from HHOL §5.2 via min(a,b) ≤ √(ab). CONFIRMED.
Domain (d): moot point. (H2-hist) holds with centre x = any real history, so every real w with |w − ū| ≤ 3r is a centre. No smallness of 3rγ² is needed for real points.

## Step 3. Toy recursion [num, python -I inline, no file]
Chain x_{n+1} = λx + t_1g_nx + t_2x² + ag_n + bg_n² + c at g = 0, exact recursion for ∂_i∂_lx_J, J = 60, λ ∈ {0.3, 0.6, 0.85}, pairs (0,0), (0,10), (0,30), (5,40), (20,21).
 d/λ^{J−1−min}: 35–88 (λ=0.3), 25–59 (0.6), 9·10²–3·10³ (0.85): constant in (i,l) at fixed λ (the large constant at 0.85 is the fixed-point shift of the effective rate λ + 2t_2x*).
 d/λ^{(J−1−i)+(J−1−l)}: 5·10⁴ to 6·10³² — product with a_m = λ^m FAILS.
 d/λ^{(sum)/2}: ≤ 2.3·10³ and bounded — product with a′_m = λ^{m/2} holds (as an upper bound; the sharp form is λ^{j−1−min(i,l)}, set by the farther slot).
Mechanism: a mixed perturbation created at step l+1 (T3a start ∝ ∂_ix_l ~ λ^{l−1−i}) then propagates at rate λ, so total ~ λ^{j−2−i}. CONFIRMED. HTHR2 needs only Σ_{i,l} ≤ ε″_j with Σ_jε″_j < ∞ (no product form). CONFIRMED.

## Step 4. Route 2(a) u-disc Cauchy (SM §4.2 read)
SM §4.2 [R]: E^{(k+1)} holomorphic on |u − u_k| ≤ z_0u_k, sup ≤ C_uE_0e^{−κ′d}. Cauchy: |∂²_u| ≤ 2C_uE_0/(z_0u_k)² = 2C_uE_0z_0^{−2}g_k⁴. Power g⁴ CONFIRMED.
Mixed T3a in u-units: u-disc factor g_l²/z_0 times W = ∂_{u_i}I. Note: even with W from the u-disc alone (g_i², SM §4.2 first-order loss) the mixed term is g_i²g_l², and T2 gives σ^iσ^l ~ g_i²g_l². So ε″_j ∝ u_{j−1}^{−2} needs NO real (H-hist) at all; HHIST2's use of Lemma HH (g_i³) only improves it. Route 2(a) is stronger than stated. Inputs: R1 (SM), R2 (joint u-disc × input-ball holomorphy, [R]), R5 for the large-field part.
Caveat: the (3/4)g⁵∂_g piece of ∂²_u is not a separate issue in 2(a); Cauchy is taken directly in u.

## Step 5. Binding input
u-disc alone: ε′_j ~ Σ_ig_i²λ^{j−1−i} ~ u_{j−1}^{−1}, Σ ~ β^{−1}log K: not uniform (SM §4.3 last paragraph says the same). Real uniform (H-hist) gives ½C_1g³ per slot, ε′_j ≲ u_{j−1}^{−3/2}, Σ ≤ C_1γ/(β(1−λ)). So ε′ (frozen map) needs the real uniform (H-hist) [R3: G3 order 1, (Q), c_−]. CONFIRMED. Also Lemma H′ (HTHR §5) needs summable β_j′ from the same (H-hist): consistent with Step 1 caveat.

## Grades
(1) CORRECTED (minor): W-Gronwall uses only the frozen map; β_j enters only D as a constant; L6 over-asks. But Lemma H′ still needs SUMMABLE first derivatives of β_j (via (H-hist)), so "β_j needs only a uniform bound" holds for L6, not for the full chain. Summability arithmetic and indexing correct.
(2) CONFIRMED.
(3) CONFIRMED (toy reproduced with an independent chain).
(4) CONFIRMED, slightly stronger: ε″ ∝ u^{−2} follows from the u-disc alone; real (H-hist) not needed for ε″.
(5) CONFIRMED.
