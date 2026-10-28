# INFINITE_VOLUME_FABLE_VERIFY2

Verification of B121 edits to INFINITE_VOLUME_FABLE.md (2026-10-28). Firewall respected.

## 1. Read: INFINITE_VOLUME_FABLE.md §2 (253 lines) + change log; INFINITE_VOLUME_FABLE_VERIFY.md (full)
B121 edits (change log): (a) B18, (D), (Reg) in Theorem IV; (b) L3 residue = B18 via O3; (c) (S′∞) via σ′ = min(σ,1), q = 6/s = 16, plus singleton caveat q ≤ 10/s ≤ 20; (d) Lemma h_K; (e) Disagree 2 refreshed; (f) Lemma IV-M centring line.
Verifier items they answer: FABLE_VERIFY §3.5 (h_K), §4.1 (residue), §5.3 (S′), §6.1–6.2 (Disagree 1, 2), §7.3 (i)–(v).

## 2. Read: B21_S_PRIME §3.6, IV12_VERIFY §8(4), ASSEMBLY_N1 §3.2/§4.4 headers
B21_S_PRIME §3.6 caveat [V]: "(1 + |supp f_i|_1) … with crude cells of side h_m = δ_m/64 ≫ 1 is ≤ C(1 + d_B)^4 per factor. It adds ≤ 4 to q." IV12_VERIFY §8(4) [V]: per scale C^n (70d_B)^{4n} δ^{N−4n} σ-factor · [h^{−n} if h ≤ 1]; q = 6. That recount used (S′) of the Lemma C route, which has NO singleton volume factor.

## 3. Check (1): Lemma h_K (§2.4(b1)) re-derived
Inputs read: SOURCES_D2C §5.1, §5.3 (l. 152–156); SOURCES.md l. 88–89.
- Booking. D2C §5.1 (main booking) gives h_k ≡ 0 [V]. The alternative booking (b_X → x shift, plaquette weight point) gives |δh_j(x)| ≤ C(ρ_1λ_j/r) sup_{|c|<2r}|B_j(c)| and |h_k| ≤ C(ρ_1/r)β′λ_k L/(L−1) [V], and D2C REJECTS it ("so it is rejected", l. 168) because |∇h_k| is unbounded. So under the booking Target 2 uses, the lemma is vacuous; it is a safeguard for the rejected booking only. The file says this ("with the main booking h ≡ 0 … the term is absent"). Fine.
- Locality. The file names it as an input with tag [I] and a reason ("each δh_j varies on scale λ_j ≤ 1"), no line cite. The supporting text is D2C §5.3 l. 156: "the shift is ≤ λ_j, not Mλ_j", "each δh_j varies on scale λ_j". Each δh_j(x; f) is B_j evaluated at f at a point within λ_j of x (pointwise recursion, §5.1: B_j depends on c = f(·) only, through the constant-c history). So h_K(x; f) depends on f within R_h ≤ C λ_K = C (unit scale). The reading is sound; the tag [I] is correct; the file should cite D2C §5.3 l. 154–156 for it. Not "varies on scale" (a gradient statement) but "evaluated within λ_j" (a support statement) is the needed fact; both are in that paragraph.
- Re-derivation. ∂^S H(0, V) = −Σ_p ∂^S h_K(x_p; f(t))|_0 A_p(V). Cauchy on |t_i| ≤ r/N(f_i), i ∈ S: separated supports are disjoint, so |f(t)(y)| ≤ max_i |t_i|‖f_i‖_∞ ≤ r < 2r pointwise, inside the D2C disc. Multivariate Cauchy for the multi-index 1_S gives |∂^S h| ≤ C_h Π_{i∈S} N(f_i)/r (no |S|!; the file's |S|! is a harmless over-count). By finite range, ∂^S h_K(x_p; ·) = 0 unless every supp f_i (i ∈ S) meets B(x_p, R_h); then pairwise distances ≤ 2R_h, so σ ≤ 2R_h. Plaquette count ≤ C(1 + R_h)⁴ (the file's C(1 + D)⁴ also holds). Singleton: osc_V ≤ 2·2C_h N(f_i)/r · #{p: x_p within R_h of supp f_i} ≤ C N(f_i)(1 + |supp f_i|_1). Absorption into (Cσ^{−a})^{|S|}(|S|!)^{1+η} for σ ≤ 2R_h: yes, σ^{−a} ≥ (2R_h)^{−a}.
- Caveat: if the range were only exponential (polymer-type), "= 0 otherwise" would fail and one would need the decay structure of h, not only |h_K|. D2C §5.3 describes a pointwise shift, so strict range holds as read.
Grade (1): CONFIRMED. Wording fixes: cite D2C §5.3 l. 154–156 for the range; drop |S|!; note the lemma is moot under the main booking (already said).
