# R3S1_GAP — mass gap for center-stabilized SU(N) Yang–Mills on R³ × S¹ at small circle: assessment and first derivations

Written 2026-10-28 (Claude, Fable 5.1). New file; no existing file edited. Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read. Scratch numerics: numerics/r3s1_*.py (Mac, minute-scale).

Grades. [P] proved here. [V] verified reading of a source in this folder or of a paper text. [I] interpretation or recollection without a source check. [R] published theorem taken as input. [N] numerical.

Notation. The circle has length L (physics notation). Balaban's block size is written L_B (odd, > 11, as in TRUST_LEDGER C3), never L. Lattice spacing ε. Spatial torus side ℓ. g² = g²(1/L) is the running coupling at scale 1/L unless written otherwise. S_I = 8π²/g² is the 4d instanton action; S_0 = S_I/N is the monopole-instanton action.

Sources read in this folder (skim): TRUST_LEDGER.md §0, §4.3, §5; INFINITE_VOLUME_FABLE.md §7 (Theorem IV, rows L1–L17). Facts taken from them are graded [V]. Physics inputs (Ünsal–Yaffe 2008, arXiv:0803.0344; Shifman–Ünsal 2008; Poppitz–Ünsal) are recalled from memory and graded [I] unless a fetch confirms them (§4.3 records the fetch).

Honesty rule applied: each task ends with a verdict line and, where a step fails, the exact failing inequality.

---

## 0. Summary of what the folder provides [V]

- Target 2 of TRUST_LEDGER (finite-torus existence, compactness form) is stated for SU(2), d = 4, on T⁴_ℓ with periodic boundary conditions, equal sides, even ℓ > 22M (M = large-field cube parameter), L_B odd > 11 fixed. The RG runs K steps from spacing ε = L_B^{−K} (unit-scale lattice of side ℓ) with g_K = g small; g_0(K, g) is chosen by Theorem 2w so that every g_k ∈ ]0, γ]. [V: ledger §0, §4.3]
- Theorem IV (INFINITE_VOLUME_FABLE §7.1) is conditional and gives subsequential (ε, ℓ) → (0, ∞) limits of the Schwinger functions of the centred plaquette density with OS0, OS1-T, OS1-H, half-space OS2, OS3. Not asserted: uniqueness, O(4), OS4, mass gap. Row L17 (mass gap) is BLOCKED as infrared. [V]
- The unit-scale output is: small-field effective action (local polymer terms with Balaban's remainders of relative size g^κ, κ > 0 fixed) + large-field polymers with activities bounded by Balaban's large-field factors. The precise form of those factors is not re-read here; I use the CMP 109/116/119 form: small-field threshold |g_k^{−1}·(plaquette angle)| ≤ p_k with p_k = p_0 (log g_k^{−1})^{p} and large-field activity ≤ e^{−c p_k²} per large-field cube. [I: recalled, not re-read]
- The ledger's open items (B18, (D), (Reg), A24, the sourced chain, …) are inherited by every use of the UV construction below. They are not re-listed; the dependency graph of §5 names "Balaban UV (ledger state)" as one node. [V]

## 1. TASK 1 — Formulation and target theorem

### 1.1 Lattice theory [P: definitions]
Lattice Λ_{ε} = (εZ/ℓZ)³ × (εZ/LZ), with ℓ/ε and L/ε integers. Links U_b ∈ SU(N). Wilson action
  S_W(U) = (2/g_0²) Σ_p Re tr(1 − U_p),
normalized so that the continuum action is (1/(2g²))∫tr F² and the SU(N) monopole-instanton has action S_0 = 8π²/(g²N) [I for the value S_0; derived for N = 2 in §4.3]. Polyakov loop Ω(x) = Π_{t ∈ εZ/LZ} U_4(x, t) for x in the spatial lattice Λ_3. Double-trace deformation
  ΔS(U) = Σ_{x ∈ Λ_3} (ε/L)³ Σ_{n=1}^{⌊N/2⌋} a_n |tr Ω(x)^n|².
The factor (ε/L)³ is the lattice form of (1/L³)∫d³x. It is fixed by dimension counting against the one-loop (Gross–Pisarski–Yaffe) potential, which is −(2/(π²L³)) Σ_n |tr Ω^n|²/n⁴ per unit 3-volume [I]. Center symmetry survives at small L when a_n exceeds the GPY coefficient; Ünsal–Yaffe give the condition [I]. a_n = O(1), not O(1/g²): the deformation is a one-loop-sized term. Measure: Π_b dU_b (Haar) · e^{−S_W − ΔS}. Each factor e^{−(ε/L)³a_n|tr Ω^n|²} lies in [e^{−(ε/L)³a_nN²}, 1]. [P]

Two parameters replace ε: a := L/N_4 is the coarsest spacing at which the circle still has N_4 lattice sites, and K with ε = a·L_B^{−K}. Balaban's RG runs from ε to a. N_4 is a fixed integer ≥ N_min; §2 fixes N_min = the ledger's "even side > 22M" requirement in the compact direction plus the divisibility conditions (ledger C-rows: 18L_B | side, …) [V for the conditions' existence; I for the exact list]. So ε → 0 means K → ∞ at fixed (N_4, L).

### 1.2 Three target statements, from weakest to strongest [P: statements only]
Fix N ≥ 2, N_4 ≥ N_min, and a_n above the GPY threshold.

Theorem A (fixed spacing a = L/N_4; no UV step). There are g_0 = g_0(N, N_4, a_n) > 0, c, C_+ > 0 such that for the lattice theory at spacing a on (aZ/ℓZ)³ × (aZ/LZ) with bare coupling g ≤ g_0, uniformly in ℓ:
 (A1) the gauge-invariant correlation functions converge as ℓ → ∞ (unique infinite-volume limit);
 (A2) truncated correlations of gauge-invariant local observables decay like exp(−m·dist) with m ≥ (c/L)·e^{−C_+/g²};
 (A3) spatial Wilson loops obey an area law with string tension σ ≥ c·(g²/L)·m.
Here g is the lattice coupling at spacing a; since a = L/N_4 with N_4 fixed, g differs from g(1/L) by O(g³ log N_4), so "g² small" and "g²(1/L) small" coincide.

Theorem B′ (uniform in ε → 0; deformation inserted at scale a). Same conclusions, with constants independent of K, for the theory at spacing ε = aL_B^{−K} whose action is S_W + ΔS_a, where ΔS_a is the deformation evaluated on the Polyakov loop of Balaban's block-averaged field at scale a. (ΔS_a is a gauge-invariant function of the ε-lattice links; it is a different lattice regularization of the same continuum deformation. §2 explains why this choice and not ΔS.)

Theorem B (uniform in ε → 0; deformation at scale ε). Same as B′ with ΔS in place of ΔS_a.

Sharp version (any of A, B′, B) with the physics exponent: m ≥ (c/L)(g²N)^{−3/2}·exp(−(1+δ)·4π²/(g²N)) and m ≤ (C/L)(g²N)^{−3/2}·exp(−(1−δ)·4π²/(g²N)), δ → 0 as g → 0. The exponent 4π²/(g²N) = S_0/2 is derived in §4.3. A rigorous proof of the sharp version is graded separately in §5 (it needs semiclassics; no template).

### 1.3 What "uniformly in ε → 0" can mean here [P: analysis]
(i) The gap is a statement about the lattice theory at spacing ε: exponential decay of truncated gauge-invariant correlations at separations ≥ L, with rate m and prefactor independent of K. It passes to every subsequential continuum limit of the correlation functions (the compactness route of Theorem IV, row L9 [V]). Existence and uniqueness of the full ε → 0 limit are not needed for the gap statement and are not claimed.
(ii) The strongest target that is not blocked by the 4d wall is B′ (or B if Task 2's line lemma is proved), at FIXED N_4. Uniformity in N_4 → ∞ (that is, letting the unit-scale lattice resolve the circle ever more finely) is not targeted: it would need an RG that blocks only the three spatial directions while carrying an N_4-layer stack, which is new (§5 node G).
(iii) Why the 4d wall does not apply [P given the physics inputs]. Balaban's construction needs every scale coupling g_k ≤ γ (small). From ε to a, asymptotic freedom gives g(ε) ≤ g(a) ≈ g(1/L) ≤ γ, so all K steps are in the weak-coupling regime, exactly as in Target 2, with K → ∞ allowed. The 4d wall is the next stage: in 4d the unit-scale theory must be followed to scales where g = O(1) and no method exists. Here the unit-scale theory is a lattice gauge theory on a slab of thickness N_4 at small coupling g(1/L); the infrared mechanism (monopole-instanton gas, Debye screening of the dual photon) operates AT weak coupling, with fugacity e^{−S_0} ≪ 1 as the expansion parameter, and the 3d theory is superrenormalizable (no coupling growth in the infrared; the 3d coupling g²/L is dimensionful). So the small parameter at every stage is g²(1/L). The price: the theorem says nothing for L ≳ 1/Λ, where g(1/L) = O(1); it is a small-L theorem, not a step toward the Clay problem.
(iv) The theorem is a 4d statement with ε → 0 (continuum in all four directions) only in the sense (i); the compactness route gives existence of limits of correlation functions but not uniqueness.

Verdict Task 1: target fixed as Theorem A (intermediate), Theorem B′ (main), Theorem B (strict), and the sharp version (physics exponent) as a separate, harder target. Not blocked by the 4d wall. Constants depend on N_4; this is a stated restriction, not an obstruction.

