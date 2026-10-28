IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# H2_CERTIFY_L13_G1_VERIFY — pre-launch verification of the G1 certifier

Written 2026-10-27 (Claude, Opus 5.5). Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. Certifier files not edited. Nothing launched on the box.

## 1. Read G1 note, launcher, driver
- Driver: atomic write (tmp + fsync + os.replace), skip-if-done from disk, shard idx % n, children X_k. Matches §4 of the G1 note.
- First observations (to check): (i) a cell FAILED at depth dmax is terminal, so DONE_<mode> is written even with FAILED cells; DONE means "finished", not "certified". (ii) Any Exception in cell_bound2 gives status split; a systematic exception would bisect every cell to depth 3 (4,096 leaves per top cell). (iii) The launcher has no restart loop: a shard killed by the cgroup OOM killer is not rerun; the for-loop then goes to the next mode.

## 2. Read h1cert_cell2.py (all 519 lines) — first-pass audit notes
- TM product/recip, TK product/recip, TP Cauchy majorants, phase/sq remainders, d second-derivative bound 2KA + 8KB + 40KC, Oishi–Rump remainder, whitening algebra, vertex convexity: derivations re-done by hand, all correct (details in §4).
- New suspect (not in G1 note): the frame Q'† rows K̂_4 e_μ − K̂_μ e_4 degenerates when K̂_4 → 0 (Q' becomes rank 1). Cells with K_4 ∈ [0, 2h] touch K_4 = 0. All G1 tests used K_4 ≥ 1.5 (pilot K_4 = 3.12; random K sorted, so K_4 is the largest). In the box domain 1/20 of top cells (8,000 per mode at h = 0.08) have K_4 ∈ [0, 0.16]. To test in §3.
- lam_up: float t I − Gm formed in float before arb; rounding covered by the final EPS·4·‖mj‖ term. Sylvester in arb is the certificate; the float shift is a guess only. Rigorous.
- After whitening, inv_or receives nR = ‖S‖²‖R_A‖_F and ignores the EPS rounding terms that SH @ A @ S adds to A.r. Size ~1e-16 relative. Not blocking; P2-accounting gap.

## 3. (B) samplers on pilot cells; K_4-small frame test
- Scratch script numerics/h1cert_verify/sample_check.py: float ρ_1 (h1cert_rho1.rho1) at centre + 16 vertices + 2,000 uniform points; asserts all ≤ ub.
- Pilot t0 (3.12)⁴: ub 2.3278, sample max 2.0853, all ≤ ub. t2 (2.48, 2.48, 3.12, 3.12): ub 2.3548, max 2.0895, all ≤ ub. t9 (0.24, 0.24, 3.12, 3.12): ub 1.9320, max 1.8820, all ≤ ub (slack 0.050).
- Random grid cells (seed 7, h = 0.08, j = ∞), cell_bound2: (2.96, 2.0, 2.16, 2.8) → 2.3695 ok. (1.84, 2.48, 2.64, 0.72) → 13.56 (not certified).
- Frame test, same K with small K_4: K_4 = 0.24 → fail (η = 3.0); K_4 = 0.08 → fail (η = 19.3). Same point permuted, (0.08, 1.84, 2.48, 2.64) → 2.0618 ok.
- CONFIRMED BLOCKER for DOMAIN=box: the Q' frame pivots on axis 4; when |K̂_4| ≪ |K̂| the frame is ill-conditioned and η ≥ 1. The cells with K_4 ∈ [0, 0.16] touch K_4 = 0 and cannot certify at any depth (they bisect to depth 3 = 4,369 cell evaluations each, then FAILED). In the sorted chamber K_4 = max_μ K_μ, so the frame conditioning is ≤ ~2 away from K = 0.
- Samplers on the 2 extra cells: (2.96, 2.0, 2.16, 2.8) ub 2.3695, max 2.0684 (a vertex); (0.08, 1.84, 2.48, 2.64) ub 2.0618, max 1.8982 (a vertex). All 5 × 2,017 points ≤ ub. (B) passes: no sample above any certified bound.

## 4. Near-origin probe, sorted cells, h = 0.08, j = ∞ (scratch near0_probe.py)
- near0 (cell_bound2 returns None): idx (0,0,0,0), (0,0,0,1), (0,0,1,1).
- fail: (0,0,0,2) η 5.5; (0,0,0,4) ub 9.83; (0,1,1,1) η 35; (1,1,1,1) η 22; (1,1,2,2) η 3.1; (0,3,3,3) ub 441.
- ok: (0,0,0,8) = (0.08, 0.08, 0.08, 1.36) → 1.659.
- So the region that fails at h = 0.08 is much larger than the near0 set: up to |K|_∞ ≈ 0.7 at least. These cells bisect. Next: does bisection to h = 0.01 certify them?
- Bisection probes (j = ∞): (0.04,0.04,0.04,0.76) h 0.04 → 1.335 ok; (0.12,0.6,0.6,0.6) h 0.04 → 1.859 ok; (0.28)⁴ h 0.04 → 225 fail; (0.26)⁴ h 0.02 → 2.656 ok; (0.25)⁴ h 0.01 → 1.168 ok; (0.41)⁴ h 0.01 → 1.066; (0.07,0.07,0.07,0.73) h 0.01 → 1.030.
- So near the origin the certifiable radius shrinks roughly like h ∝ |K|; depth 3 (h = 0.01) certifies down to |K|_∞ ≈ 0.25 on the diagonal. Inside that, cells end near0 or FAILED. In the sorted chamber this is ~O(10–100) top cells, an acceptable cost. In the box domain the K_4 ≈ 0 row (8,000 top cells) never certifies (A singular at K̂_4 = 0).

## 5. (D) P5a and P5b proved (for the exact operator); numerical check
Setting. R ∈ B_4 (signed permutations), (Rk)_{π(ν)} = s_ν k_ν. For k ∈ R⁴ define the unitary monomial matrix W_R(k) = Π_R diag(ε_ν(k)), ε_ν = 1 if s_ν = +1, ε_ν = −e^{−ik_ν} if s_ν = −1.
Lemma S1 (gradient). k̂(Rk) = W_R(k) k̂(k). Proof: e^{−ik_ν} − 1 = −e^{−ik_ν}(e^{ik_ν} − 1); permutations permute entries. Same at the coarse level: K̂(RK) = W_R(K) K̂(K). Hence P(Rk) = W P(k) W†, |k̂(Rk)| = |k̂(k)|.
Lemma S2 (fine kernel). d_μ(k) = Σ_{n} Π_ρ σ̃²(q_ρ) σ̃²(q_μ)/Σ_ρ p(q_ρ), q = k + 2πn, with σ̃², p even and the same function on every axis, and the n-set (Z⁴, or the centred window of M values, a full residue system mod M with M-periodic summand) invariant under n ↦ Rn. So d_{π(μ)}(Rk) = d_μ(k) and D(Rk) = W D(k) W† (W monomial with permutation part Π_R; diagonal phases commute with D). d, E_q, k̂ are 2π-periodic in each k_ν.
Lemma S3 (averaging). E_q(Rk) = W_R(Lk) E_q(k) W_R(k)†. Proof from the path structure of avg_profile (read: umk_beta1.py lines 66–127, and H2_CERTIFY_P4 Step 1): F^μ = χ(straight 0 → Le_μ) + Σ_{d ∈ {−h..h}⁴} L⁻⁴ n_d⁻² Σ_{i,j} χ(C(d,i,j)), where the Γ1_i run over all axis orderings of the nonzero coordinates of d (path_arrays uses itertools.permutations), n_d = number of orderings (invariant under signed permutations of d), and the block {−h..h}⁴ is symmetric. A signed permutation maps straight axis segments to straight axis segments and axis-ordered paths 0 → d to axis-ordered paths 0 → Rd. Under a reflection of axis α a step w → w + e_α becomes Rw → Rw − e_α, so χ_{RΓ}(z, α) = −χ_Γ(Rz − e_α, α), χ_{RΓ}(z, ν) = χ_Γ(Rz, ν) for ν ≠ α.
(a) Permutation π: the family for coarse link (0, μ) maps onto the family for (0, π(μ)); F^{πμ}_{πν}(Rz) = F^μ_ν(z); Fourier with Rk·Rz = k·z gives E_q(Rk) = Π E_q(k) Πᵀ.
(b) Reflection of α ≠ μ: the family for (0, μ) maps onto itself. Then F^μ_ν(z) = F^μ_ν(Rz) (ν ≠ α), F^μ_α(z) = −F^μ_α(Rz − e_α). Substituting w = Rz − e_α (z = Rw − e_α, Rk·z = k·w + k_α) gives E_q(Rk)_{μα} = −e^{ik_α} E_q(k)_{μα} = E_q(k)_{μα} conj(ε_α(k)).
(c) Reflection of α = μ: the image of C(d,i,j) is the reversal of the loop C(Rd − Le_α, j, i) of the coarse link from −Le_α to 0 (Γ1_i(0 → Rd), seg Rd → Rd − Le_α, Γ1_j shifted by −Le_α and reversed, straight −Le_α → 0); weights match (n_{Rd} = n_d); the straight path maps to the reversed straight path. So F^α_ν(z) = −F^α_ν(Rz + Le_α) (and the e_α shift on the α column as in (b)). Fourier (z = Rw + Le_α, Rk·z = k·w − Lk_α) gives the row factor −e^{−iLk_α} = ε_α(Lk). Combined with (b): E_q(Rk) = W_R(Lk) E_q(k) W_R(k)†. At k = k_l, Lk_l ≡ K (mod 2π), so the coarse factor is W_R(K) for every block. ∎
Theorem (P5a + P5b). For every R ∈ B_4, every j (every M, M = ∞), and every K: ρ_1(j, RK) = ρ_1(j, K).
Proof. R k_l = k_{l'} (mod 2π) with l' = R l mod L, a bijection of {0..L−1}⁴; by periodicity all block quantities at Rk_l equal those at k_{l'}. In h1cert_rho1.pieces/schur: Ed_l = [E_q(k_l)†, −k̂_l], A_l⁻¹ = P D P + n n†/|k̂|². By S1–S3: A_l⁻¹(Rk) = W A_l⁻¹ W†, Ed(Rk) = W(k) Ed(k) V†, V = diag(W_R(K), 1); Y likewise. So Σ_l Ed†Y ↦ V (Σ_l Ed†Y) V†, R ↦ V R V†; J5 = diag(0,0,0,0,1) commutes with V. S(RK) = V S V†, S⁻¹ likewise, S_c(RK) = V S_c W_R(K)†, S_c†RS_c ↦ W_R(K)(S_c†RS_c)W_R(K)†. λ_max is invariant under unitary conjugation. ∎ (Equivalently in (2.1): T, T2 ↦ W T W†, σ invariant, K̂ ↦ W K̂, bordered inverse conjugated by diag(W, 1), G ↦ W G W†.) Scope: the exact operator with the exact profile; the float profile is covered by P1′ as before. It also uses that ρ_1 is defined by h1cert_rho1/h2_scan (P3).
Numerical check (kept: numerics/h1cert_verify/sym_check.py): L = 13, 20 random K ∈ [−π, π)⁴, random signed permutation each, M = ∞ / 13 / 1 in turn: max relative difference 5.1·10⁻¹⁴.
Consequence: the sorted chamber 0 ≤ K_1 ≤ … ≤ K_4 ≤ π is a valid domain (with 2π-periodicity, |K_μ| ≤ π covers the Brillouin zone).

## 6. (C) near-0 cells
- Driver: cell_bound2 returns None when a TK/TM recip lower bound fails (|k̂_0|², |K̂|², or σ); the driver writes status near0, ub null, does not split, and counts it as resolved. DONE_<mode> lists near0 in status_counts. Cells that keep failing near 0 end as FAILED at depth 3 and also count as resolved.
- Size (sorted chamber, h = 0.08, j = ∞, §4): near0 top cells (0,0,0,0), (0,0,0,1), (0,0,1,1), i.e. inside |K|_∞ ≤ 0.32. Failing-but-bisectable cells extend to |K|_∞ ≈ 0.7; depth 2–3 certifies them down to about (0.25)⁴. The residual after the run is the union of near0 and FAILED leaves, inside roughly |K|_∞ ≤ 0.5 (the exact list comes from the run's JSON).
- "ρ_1(0) = 1 and continuity" does not close it: it gives no explicit radius without a modulus-of-continuity bound, and the gauge term has 1/|K̂|² factors, so continuity at 0 itself needs proof.
- The analytic route closes it: H1_ANALYTIC §6–§7 gives ρ_1² ≤ B_13(K) with box enclosures finite on boxes containing 0, sup over the chamber ≤ 9.9995 < 13, near 0 B ≈ 2. What remains for G3: (i) a verifier pass on H1_ANALYTIC Lemmas T, Gauge, (6.1), and the j-uniformity; (ii) an outward-rounded (arb) evaluation of B_13 on the residual box (bb.py uses plain float with a 10⁻⁹ inflation). The margin there is large (≈ 2 against 13).
- Note: if (i) and (ii) hold on the whole chamber, H1_ANALYTIC alone gives (H1_13) with C_*² = 10 < 13, and the G1 run is not needed for (H1_13). The G1 run is then a second, independent certificate.
- Cost risk near 0 (sorted): 35 top cells have i_4 ≤ 3; a cell whose children keep failing costs up to 1 + 16 + 256 + 4,096 = 4,369 evaluations (~12 core-h). Worst case ≈ 400 core-h per mode; realistic is much less because only children near 0 keep failing (measured: depth 1–2 suffices at |K|_∞ ≥ 0.26). Recommended: mark top cells with i_4 ≤ 2 as near0 without computing, and cover them by (ii).

## 7. (E) kill-and-resume rerun (scratch numerics/h1cert_verify/kr, deleted at the end)
- `h1cert_drive2.py 13 inf 0.08 3 --diag 5 --out kr`, SIGKILL at 28 s: t0, t1 on disk, no tmp file. Rerun computed only t2–t4 (log 2 has no t0/t1 line). All 5 JSON parse, status ok, DONE written once: {ok: 5}, max ub 2.3548. Matches the G1 note.
- Leftover tmp files (kill between open and os.replace) are named *.json.tmp<pid>; they do not end in .json, so neither the skip test nor the DONE count reads them. Safe.
- Bisection naming: a split JSON is written before the children, children X_k resume by name; resolved() recurses. Reviewed, correct.
- DONE race: each shard checks after its own last write, so the last shard to finish sees every file and writes DONE. If that shard dies, no DONE: a restart is needed.

## 8. (A) rigor audit, step by step (h1cert_cell2.py)
| step | arithmetic | a priori bound | verdict |
|---|---|---|---|
| box → per-axis jets f, f′, f″, p, p′ at k_c | arb series (Si, sin), then float(mid); radius dropped | covered by EPSS·(KA + 8KB) per block (arb radii ~2⁻⁶⁰ rel.) | ok |
| sup |f|,|f′|,|f″|,|f‴| over cell | arb centred form, upper + nextafter | Taylor with exact f⁽ⁱ⁾(k_c), i ≤ 3, plus sup|f⁽⁴⁾| | ok |
| sup|f⁽⁴⁾| ≤ 1 for n = 0 | a priori | σ̃ = ∫₀¹cos(kt/2)dt (M = ∞) or (1/M)Σ_{|m|≤(M−1)/2}e^{ikm/M}: |σ̃⁽ⁱ⁾| ≤ 2⁻ⁱ, Leibniz Σ C(4,i)2⁻⁴ = 1. M = 1: f ≡ 1. Re-derived. | ok |
| inf p over cell | arb, |p″| ≤ 2 (q² or 2M²(1 − cos(q/M))) | re-derived; |p′| ≤ 2√p also | ok |
| d box value + gradient | float kern sums | EPSS = 1e-10 vs n·u ≤ 2401·1.1e-16 | ok |
| d second-order remainder ½h_k²(2KA + 8KB + 40KC) | float sums of sup/inf arrays | re-derived: Σ|S_νλ| ≤ 2Π(G+|G′|+|G″|), Σ|Q_ν| ≤ 4√Q, Σ|Q_νν| ≤ 8, μ factor f² ≤ 2(f+|f′|+|f″|)² | ok |
| d_exact (200 blocks) | TM-2 from jets, |R| ≤ sup|f‴|h_k³/6, |p‴| ≤ 2 | | ok |
| tails, M0 interval | arb per axis (Hurwitz), float combination with outward factors (old code, H2_CERTIFY_VERIFY) | M0 diff = Σ t̄_∞(R_max − 1), R ≤ Πφ⁻⁴φ_μ⁻² checked | ok |
| V′, m′ Taylor coefficients ≤ 4 | float einsum | 1e-11·Σh^m mj[m] (n·u ≈ 3e-12; also covers P1′ 1e-13‖F‖₁) | ok |
| majorants for orders ≥ 5 | float Cauchy products | multinomial bound re-derived; tail m > 40 ≤ 2h⁴⁰mj[40]: rate h(|y|₁/L + 1 + 1/L)/41 ≈ 0.015 at h = 0.16 (assert guards h·|y|₁/L < 4) | ok |
| TK (order 3) products, sums, recip | float + EPS/EPSS | dropped orders Σ_{i+j>3}A_iB_j; recip remainder se⁴/(c⁴ lo) re-derived | ok |
| TM-2 products, recip | float + EPS | remainders re-derived term by term | ok |
| whitening S | exact algebra (any invertible S) | nR = ‖S‖₂²‖R_A‖_F; ‖S‖₂ float SVD (1e-10 slack) | gap ~1e-16: EPS terms of SH@A@S are dropped |
| Oishi–Rump | e0, norms in arb; X@M float + EPS·‖|X||M|‖ | expansion (I+F)⁻¹ = I − F + F² − F³(I+F)⁻¹ re-derived; e2 correct; vertex max of ‖XA_l‖ by convexity | ok |
| ‖X‖₂ (_n2) | lam_max_upper of float X†X | X†X formed in float, rounding not padded | gap ~1e-16 |
| λ_max | Sylvester in arb on fl(tI − G_v); float t is only a guess | fl rounding covered by + EPS·4‖G.mj‖ | ok |
| larger shift (1e-9 rel.) | | Sylvester is valid for any multiplicity; if arb cannot decide, AssertionError → driver marks split (safe) | ok |
| vertex/convexity | | λ_max(Herm(c + Σδg)) convex in δ; Herm part handles float asymmetry; quad ≤ h²Σ‖H‖_F, ‖R‖₂ ≤ ‖r‖_F | ok |
No float quantity is used as rigorous except the two ~1e-16 relative gaps (whitening EPS drop, _n2). Both are far below the 1e-6 threshold margin and the (1+1e-12)/EPS paddings nearby. Fix (optional): nX·(1 + 1e-12) and nRA += EPS·‖S‖²‖A.mj‖_F.
Not audited in depth: tail_inf / axis_data (old code, H2_CERTIFY_VERIFY items), and that the Python implements (2.1) beyond the centre agreement (point bounds match float ρ_1 to ≤ 2e-6 at 5 K; samplers §3).

## 9. (E) launcher and (F) verdict
Launcher h1cert_launch2.sh: OMP threads 1, 16 shards per mode via xargs -P 16, modes M = 1, 13, M0:169, skip a mode with DONE, smoke mode, MODE names match the driver (M0:169 → MM0169). Default DOMAIN=box (must be overridden). No restart loop: a shard killed by the cgroup OOM killer is lost until a manual rerun. Also, systemd expands $VAR in ExecStart, so a bash -c loop with $ must live in a file.
Wrapper to use (create ~/ym/h1cert_loop2.sh):
```
#!/bin/bash
# rerun the launcher until all three DONE markers exist (max 10 tries)
cd ~/ym
export DOMAIN=sorted DMAX=2 H=0.08
for try in $(seq 1 10); do
  bash h1cert_launch2.sh
  ok=0
  for m in M1 M13 MM0169; do [ -e "h1cert2_out_L13_${m}_h${H}_${DOMAIN}/DONE_L13_${m}_h${H}_${DOMAIN}" ] && ok=$((ok+1)); done
  [ "$ok" = 3 ] && exit 0
  echo "$(date) retry $try" >> h1cert2_retry.txt; sleep 60
done
exit 1
```
Run: `sudo -n systemd-run --unit=h1cert2 --collect -p User=elvin -p MemoryMax=16G bash ~/ym/h1cert_loop2.sh` (one attached root WSL session, as the memory note). Smoke first: `DOMAIN=sorted bash h1cert_launch2.sh smoke`.
DMAX=2 caps a never-certifying near-0 cell at 273 evaluations (worst case ~35 cells × 273 × 10 s ≈ 27 core-h per mode instead of ~400). Away from 0 every tested cell certified at h ≥ 0.08 directly. A FAILED leaf away from 0 can be redone later by deleting its JSON and rerunning with a larger DMAX.
After the run: DONE means "every leaf terminal", not "certified". Certification needs status_counts with FAILED/near0 leaves only inside the G3 ball; check the list.

Verdict.
- DOMAIN=box: NOT READY. Blocker: frame pivot on axis 4 (§3); the K_4 ∈ [0, 0.16] row (8,000 top cells per mode) cannot certify at any depth, and bisection cost explodes (~1,169+ evaluations per such cell).
- DOMAIN=sorted, DMAX=2, with the wrapper loop: READY TO LAUNCH, conditional on Elvin accepting (a) the P5a/P5b proof of §5 (written here, not yet checked by an independent verifier) and (b) G3 handled by H1_ANALYTIC (verifier pass + arb evaluation on the residual ball), with the two 1e-16 rounding gaps of §8 as optional fixes. Cost: ~55 core-h (G1 note §3) + ≤ ~80 core-h near 0, about 4–9 h wall on 16 cores.

Cleanup: scratch scripts and kr/ deleted; kept numerics/h1cert_verify/sym_check.py (P5 check). Pilot output untouched.
