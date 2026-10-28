IDs in this file follow the pre-2026-10-28 scheme; see IDS.md for the mapping.
# SOURCES_G3_N2 verification (2026-10-28)
Verifier: Claude (Opus), independent. Firewall kept (no /tmp/sa_repo, SUSSMAN_ALPOGE_MAP, ONLINE_SWEEP).

## V1. Algebra of §2.4, §3.2–3.4, §4.1 (by hand)
- Q_0' = T* diag(I,H_0) T with T = [[I,0],[H_0^{-1}Γ,I]]: expands to [[I+Γ*H_0^{-1}Γ, Γ*],[Γ,H_0]]. Holds (H_0 symmetric).
- Q = Q_0' − P with P = diag(α_5Z + Γ*D_SΓ, α_5): X-block I + Γ*(H_0^{-1} − D_S)Γ − α_5Z = I − α_5Z + Γ*S_CΓ. Holds.
- Q_0'^{-1} = T^{-1}diag(I,H_0^{-1})T^{-*}; B-block = H_0^{-1} + H_0^{-1}ΓΓ*H_0^{-1}. Holds. Note: the brief's "C_0 + C_0ΓΓ*C_0" is exact only if C_0 is symmetric; for non-symmetric C_0 the correct block is with H_0^{-1} = (sym C_0^{-1})^{-1}, which is what §3.3 uses.
- PSD 2x2 block norm ≤ ‖M11‖ + ‖M22‖: holds (|<x,M12 y>| ≤ sqrt(a)|x| sqrt(c)|y|, then Cauchy–Schwarz).
- Q ≥ Λ_0^{-1} − p ≥ (2Λ_0)^{-1} under pΛ_0 ≤ ½; Λ = 2Λ_0 = 2(1 + h + h²G_Γ²), h = 4/(3γ_exp). Holds; G_Γ enters as stated.
- c_−: Σ_B ≤ H_0 ⇒ (Q^{-1})_BB ≥ H_0^{-1} ≥ ‖H_0‖^{-1}; ‖H_0‖ = sup|<B,K_0B>| ≤ γ_1^N + ε_0; ε_0 ≤ ¼γ_exp ≤ ¼γ_1^N ⇒ c_− ≥ 4/(5γ_1^N). Holds (needs γ_exp ≤ γ_1^N, which follows from the two-sided A_Z bounds).
- Schur/marginal: F_b/∫ = N(0,Q^{-1}) B(b)-marginal density; a = 0. Holds.
- (2.2): |S^{n-1}| r^{n-1} (2π)^{-n/2} det(Γ_bb)^{-1/2} e^{-r²/(2Λ)} ≤ ... (2πc_−)^{-n/2}. Holds.
- (ε_1/g²) r^{n-1} = t^{n+1}/ε_1; argmax of t^{n+1}e^{-t²/(4Λ)} at t² = 2Λ(n+1); D_n as stated; U(g) increasing. Holds.
- Open point to check: is B(b) for every cut bond a coordinate of V_red(Z_0)? If V_red is gauge-reduced (tree bonds fixed to 0), Γ_bb = 0 there and c_− fails for such b.

## V2. Cut bonds vs V_red coordinates
- V_red(Z_0) removes the b_0(c) bonds (A8 2.1). The cut (CMP 109 (2.9), CMP 116 (2.3)) excludes b_0(c) (SOURCES_Q §5, verified). Every cut bond is a kept coordinate, (CB)(b) = B(b). So Γ_bb is a true coordinate compression and c_−·I_n ≤ Γ_bb holds. Open point of V1 closed.

## V3. Page check CMP 116 pp. 16–19 (300 dpi images)
- (2.22) χ_{k,Y_0}χ^c_{k,P} ≤ exp(−½γ_2(ε_1²/g_k²)|P| + ½γ_2‖PB‖²): matches §2.3 (factor 1 on the sphere for b ∈ P).
- (2.23): ∫dμ_0(X)|_Z exp(−½<ΓX, C^{(k)}ΓX> + ½α_5‖ZX‖²)·∫dμ_{C^{(k)}(Z_0,0)}(B) exp(−<B,ΓX> + ½α_5‖Z_0B‖²); α_5 = O(1)e^{−δ_0M/3} + O(α_0+α_1) + O(1)α_4 + γ_2. The joint precision Q of §3.1 matches (X-block I − α_5Z + Γ*S_CΓ, off-diagonal Γ, B-block H_0 − α_5). Balaban's "α_5‖C^{(k)}‖ < ½" is printed (2.24). Confirmed.
- (2.26) carries exp(−½γ_2(ε_1²/g²)|P|) and the factor 2E_0ε_1C_1α_4^{-1}M^q e^{C_2κ_1} per Y. E_0 enters only here and via ε_2 ≤ 1 (p. 19).
- (2.30) (3·2³)^{-1}M^{-4}|Y| ≤ d_k(Y): gives |Y_i| ≤ 24M^4 d_k(Y_i). Confirmed.
- Budget of the |P| factor (p. 18–19): split into five factors e^{−(1/10)x|P|}, x = γ_2ε_1²/g_k². Four give e^{−(1/5)xM^{-4}|Z_0\Y_0|}, spent fully as 1/10 in (2.33), 1/20 in (2.31), 1/20 in (2.34). No slack. The fifth pays the P-sum in (2.31).
- The "≥ 4κ" condition is printed on p. 18 bottom and used in (2.33), not in (2.31).
- CORRECTION to §4.2: e^{|P|} cannot come from the M^{-4}|Z_0\Y_0| factors (wrong scale, |P| up to ~d·M^4 times larger, and no slack). It must come from the fifth factor. Under (Hγ), (1/20)x ≥ 1, so e^{|P|}e^{−(1/10)x|P|} ≤ e^{−(1/20)x|P|}. Then the P-sum (2.31) must hold at the reduced rate: (1/20)x − 4M^4 e^{−x/20} ≥ 0. This is a second γ-smallness condition of Balaban's own type (γ small depending on M, κ, γ_2). It is not implied by (Hγ). Effect: one extra condition; no change in uniformity.
- Alternative with no extra γ condition: take η in §4.2 with η ≤ 1 and bound e^{η|P|} inside the (2.31) bracket: (1/20)x − 4M^4e^{η − x/10} ≥ 0. Same type.

## V4. Numerics (python3 -I, script in /tmp, 2000 random draws, dim X + dim B ≤ 30, n = 3, non-symmetric K_0 = A + E, ‖E‖ = ε_0 ≤ ¼γ_exp, random Γ up to norm ~3·sqrt(dim), random diagonal Z; 898 draws meet (Hα))
All PASS, 0 failures:
- S_C ≤ H_0^{-1} (A8 fact): min eig margin −3e−16 (roundoff).
- Q_0'^{-1} B-block = H_0^{-1} + H_0^{-1}ΓΓ*H_0^{-1}: max entry error 2e−10.
- Q > 0 under (Hα): min eig ≥ 0.0046. ‖Q^{-1}‖ ≤ 2Λ_0: margin ≥ 2.19.
- (Q^{-1})_BB ≥ H_0^{-1}: min eig margin +1.2e−7.
- c_− ≤ Γ_bb ≤ Λ for a random bond: margins ≥ 6e−4 and ≥ 3.0.
- Γ_bb = S_b^{-1} (Schur complement): error 2e−12.
Run time < 5 s.

## V5. Uniformity and input list
- Past: S_χ uses the past only through E_0 (in (2.20) via (1.36), and in (2.26)/ε_2 ≤ 1). Q, c_−, Λ do not contain E_0 (α_4 is a free small constant). H0 §4.5 makes E_0 past-uniform only as REDUCED, relative to N6 (off-trajectory sup induction), N7 (= B7 slot definition), and N9 (A15). §4.4 names only B7. The past-uniformity of S_χ is therefore conditional on N6, N7, N9, not proved.
- k, volume, Z_0, U: confirmed as stated, given A7/A8 constants k- and volume-free and G_Γ volume-free (Schur bound). Open [I]: whether G_Γ (via Γ_1, K_½) grows with M. (Hα) needs G_Γ²δ_S small with δ_S ~ e^{−ε″M/4}; if G_Γ grows exponentially in M this fails. The author keeps this as [I] order of constants; I agree it is not shown.
- Omissions in the §6.1 list: (a) the second γ-condition of V3 ((2.31) at rate 1/20, or with e^{η}); (b) N6 and N9 for the past (only B7 named); (c) item (vii) (bound on the closed sphere |B(b)| = ε_1/g_k, the boundary of the open (1.34) domain) is the (M_r)/C9 margin, which H0 files under N3; G3 should name (M_r) here, not only as "outside G3"; (d) dominated differentiation (surface formula), also under H0 N3.
- B-block note: the brief's "C_0 + C_0ΓΓ*C_0" is exact only for symmetric C_0. In general the B-block of Q_0'^{-1} is H_0^{-1} + H_0^{-1}ΓΓ*H_0^{-1}, which §3.3 uses. SOURCES_Q 4.3's "B-block ≤ ‖C^{(k)}‖" is wrong in either case; the correction stands.

## V6. Grades
(1) CONFIRMED. Schur complement split, a = 0, one-bond form = marginal. Cut bonds are V_red coordinates (V2).
(2) CONFIRMED. c_− ≥ 4/(5γ_1^N); Λ = 2(1 + 4/(3γ_exp) + (16/(9γ_exp²))G_Γ²); Q_0^{-1} B-block (with H_0^{-1}; = C_0 form if C_0 symmetric). (Hα) is stronger than Balaban's printed α_5‖C^{(k)}‖ < ½ and rests on [I] constant order (G_Γ vs M).
(3) CORRECTED. U(g), A_n, D_n, rate 1/(4Λ), c_1′ = 24c_dM^4/(δκ), S_χ = O(γ^p): confirmed. The e^{|P|} payment: Balaban's ≥ 4κ condition belongs to (2.33), and the four M^{-4}|Z_0\Y_0| factors have no slack. Correct route: pay e^{|P|} from the fifth factor using (Hγ), and add the (2.31) bracket at rate 1/20: (1/20)x − 4M^4e^{−x/20} ≥ 0. Past-uniformity is conditional on N6, N7, N9.
(4) CONFIRMED. C_β = C_Π(S_0^{GGAIN} + S_χ); B13 stays reduced; residues as listed plus V5 omissions (a)–(d).
G3 status: PROVED relative to the listed inputs plus one extra γ-smallness condition and the inputs (M_r), N6, N9. It is not an unconditional proof. No obstruction found.
