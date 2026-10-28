# SOURCES_P254_TRANSFER — independent verification (2026-10-28)

Verifier: Opus subagent. Firewall respected (no /tmp/sa_repo, SUSSMAN_ALPOGE_MAP, ONLINE_SWEEP).
Target: SOURCES_P254_TRANSFER.md §0–§6.

## V1. CMP 109 pp. 253–254 images (300 dpi) [V]
- p. 253 sentence read verbatim: "The considerations and results of this, and previous papers, do not depend on any particular averaging operation used; they are valid universally for all averages satisfying the above properties." Placement: right after (0.5)–(0.10) and Federbush (0.10), before (0.11). So "averages" = the group average M. Matches §1.
- p. 254 sentence read verbatim; matches §1 quote word for word. "This average" refers to (0.12) directly above it. "properties similar to ... (0.4)". Matches.
- (0.4) and (0.12) displays match §1. Note (0.12) writes U(x′, c_+), not U(c_+, x′)^{−1}; with (0.5) these agree only if M({U(Γ)^{−1}}) = U(c_+,x′)^{−1} and G(x′,c_+) = reversed G(c_+,x′). Both hold by (0.5) and the definition of G. No change.
- p. 254 also says the kernel t(V,U) is "for example" in [9, 12]; the gauge fixing is (0.14) in the variables U(y,x), x ∈ B(y), x ≠ y.
## V2. CMP 109 reference list [V image, journal p. 299 = pdf p. 51]
- "12. Bałaban, T.: Averaging operations for lattice gauge theories. Commun. Math. Phys. 98, 17–51 (1985)". [12] = CMP 98 CONFIRMED.
- [13] = CMP 99, 389–434 (background field propagators); [14] = CMP 99, 75–102; [15] = CMP 102, 277–309 (cut at page edge). [9] = HUTMP 84/B134 / Physica 124A; [10], [11] = CMP 95, 96.
- Typos in the target (no effect): reference block is pdf p. 51, not p. 54; [13] page range is 389–434, not "89–434".
## V3. CMP 109 p. 266 image [V]
- (2.4) reads "The expression under the δ-function is equal to M(V′V^{(k)})M(V^{(k)})^{−1} = exp iQ̃(B′)." M is the bond average written M(U, c) in (0.4) on p. 253. So Q̃ is built from (0.4). CONFIRMED.
- Correction (wording only): (2.4) defines Q̃(B′) as the full analytic function of B′ (the log of the averaged ratio), not only its linear part. "Q̃ = linearization of (0.4) at V^{(k)}" is right for the linear term Q̃^{(1)}; higher orders of Q̃ exist and must be bounded too. A18 Lemma Q-type bounds (transport along contours of length ≤ dL) cover the full function as well, so no change in grade.
- (2.5): G(B′) = Σ_{y∈T^{(k+1)}} Σ_{x∈B(y), x≠y} ½|B̃′(y,x)|² + G_3, with B̃′(y,x) the linear part of Ṽ′(y,x) = (V′V^{(k)})(y,x)(V^{(k)}(y,x))^{−1}. Blocks B(y), y ∈ T^{(k+1)}: CONFIRMED (I-10 block match).
- Note: the averaged contour variables U(y,x) of (0.11) are used for the gauge fixing; the bond average in (2.4) is the (0.4) one, not (0.12). So the p. 254 sentence about (0.12) is not the one that covers Q̃ of (2.4); (0.4) is covered only by "properties similar" plus the p. 252–253 "immediate extension" remark. The target says this in §1; CONFIRMED.
