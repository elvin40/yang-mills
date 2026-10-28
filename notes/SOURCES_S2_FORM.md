# SOURCES_S2_FORM — S2: form bound for the dressed extension field

Target (S2): ⟨𝓔_U X, G^{−1} 𝓔_U X⟩ ≤ K ‖X‖²_S, uniform in j, volume, and regular U.
Inputs allowed: CMP 99 (3.131), QE_INV (KE′), A1′ input (K).
Firewall kept: no read of /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md.
Status tags: [V] = checked against page image; [P] = proved here; [C] = conjectured / not checked.

## Ledger (running)
- (opened) file created; sections appended below.

## 1. What (3.131) states [V CMP 99 p. 422 image, pdf page 34; context pp. 419–421 pdftotext, pdf pages 31–33]
Operator. Δ′_π is the perturbation in G^{−1} = Δ_π + DRD* + Q*aQ = G_0^{−1} + Δ′_π, G_0^{−1} = Δ + DRD* + Q*aQ (p. 420 under (3.122); p. 421 (3.130) G = Σ_n (−1)^n G_0(Δ′_πG_0)^n). Δ′_π is defined by (3.120): ⟨A, Δ_πA⟩ = ⟨A, ΔA⟩ + ⟨A, Δ′_πA⟩. So (3.131) is a bound on the BILINEAR FORM of Δ′_π, not on G and not on G^{−1}.
Printed (3.131):
 |⟨A_1, Δ′_πA_2⟩| ≤ O(1)Mα_0(‖D*A_1‖_{L¹} + (L^jη)^{−1}‖A_1‖_{L¹}) e^{−½δ_0 d(y,y′)} (|D*A_2| + (L^{j′}η)^{−1}|A_2|),
 for supp A_1 ⊂ Δ(y), y ∈ Λ_j, supp A_2 ⊂ Δ(y′), y′ ∈ Λ_{j′}.
Norms. A_1 side: L¹ norms of D*A_1 and A_1 (η^d-weighted sums [I: the L¹ convention is not restated on the page]). A_2 side: |·| without a norm symbol = sup over the support [I: reading of the notation, same as (3.42)]. Only D* (covariant divergence) appears; no curl term.
Support restriction. Each argument lives in ONE block Δ(·). This is the restriction that causes the η^{−1} problem (QE_INV_VERIFY §7).
Scaling check [P]. A field of size a on one block of side ℓ: RHS ~ Mα_0·ℓ^d·a·ℓ^{−1}·ℓ^{−1}·a = Mα_0ℓ^{d−2}a². The free energy of a block-scale field is ℓ^d(a/ℓ)² = ℓ^{d−2}a². Same order. So (3.131) is scale covariant.
Text before (3.131): "It is easy to find estimates for the operator Δ′_π using Theorem 3.1 and the inequality (3.49); we have to be careful only with the third term in the definition (3.120)". So (3.131) is derived, not a primitive; its sources are Theorem 3.1 and (3.49).
Also printed, (3.119) [V p. 419 pdftotext]: ⟨A, Δ_πA⟩ = ⟨A − DG′RD*A, Δ(A − DG′RD*A)⟩. This exact identity is the basis of §3 below.
