# INFINITE_VOLUME_FABLE — independent attempt: infinite-volume limit from the finite-torus theorem (Target 2)

Date: 2026-10-28 (Fable). Status: derivation attempt, unverified. Edits: this file only; no existing file touched.
Firewall kept: /tmp/sa_repo, reports/SUSSMAN_ALPOGE_MAP.md, reports/ONLINE_SWEEP.md not read.
Tags: [P] proved here (short, unverified); [V] quoted from a project file or verifier read this session; [I] inference, not printed anywhere; [R] reduction to a named project result or cited literature, text not re-read; [BLOCKED] fails with present tools.

Inputs read (headers and statements): THEOREM2_PROOF_v4 §1, §6 ((Vol), Theorem 2w); ASSEMBLY §0–§2, §4; ASSEMBLY_N1 (full); TRUST_LEDGER §0, §4, rows X1–X5, C31; SOURCES_A15_LOC + VERIFY; SOURCES_A15_BDRY + VERIFY; SOURCES_B21_S + VERIFY; SOURCES_T2_VOL; SOURCES_D4D5 §3–§5 (Lemma C, S1, (FX)); SOURCES_FX §6; CLOSURE_PLAN §8; INFINITE_VOLUME_PLAN.md (Opus, full); INFINITE_VOLUME_ATTEMPT.md (Opus; header only at read time, 9 lines).

## 0. Plan of this file

1. §1 Define the weak target W: objects, limits, axioms, and what Target 2 covers now.
2. §2 ℓ-audit of Target 2's chain. Decisive step: write Z[f]/Z[0] as a probability-measure expectation of a local functional and never take the log of that expectation. Lemma ν-cum. Result (S∞): the cumulant bound (S) with ℓ-free constants, given named lemmas.
3. §3 Convergence versus compactness as ℓ → ∞. Theorem LOC gives rate e^{−cℓ} for every UV constituent. It does not reach the final unit-scale integral. Subsequential limit only; the exact obstruction is named.
4. §4 OS2: RP is inherited from the full lattice measure; half-space form in the limit.
5. §5 OS1: all translations and the hypercubic group pass; O(4) does not; the missing statement and two candidate routes.
6. §6 OS0 with Schwartz weights.
7. §7 Theorem modulo named lemmas, with grades; disagreements with the Opus files.

Running summary: see §7.

## 1. The weak target W

### 1.1 Objects fixed by Target 2 [V]
- Lattice T_ε = (εZ/ℓZ)⁴, ε = L^{−K}, L odd > 11 fixed, ℓ ∈ 2N, ℓ > 22M (Vol, C31). Wilson measure μ_{ε,ℓ} with bare coupling g_0 = g_0(K, g) from Lemma D″, g_K = g ∈ ]0, γ]. g_0 does not depend on ℓ: Lemma D″ runs on the whole-lattice β_j (SOURCES_T2_KUNIF §5.1; SOURCES_T2_VOL table rows 2–3) [V]. So for each K one bare coupling serves every admissible ℓ.
- Observable: the centred plaquette density φ_p := P_p − c_{ε,ℓ}, c_{ε,ℓ} := ⟨P_p⟩_{μ_{ε,ℓ}}. Note that the centring constant depends on ℓ. Nothing else in the observable does.
- Test class on the torus: D_n(T_ℓ) = C^∞(T^{4n}_ℓ) flat on all diagonals. Lattice Schwinger functions S_{n,ε,ℓ}(F) := Σ_{p_1..p_n} F(x_{p_1}, …, x_{p_n}) ⟨φ_{p_1}⋯φ_{p_n}⟩_{μ_{ε,ℓ}} (moments, not cumulants). No field renormalization factor (B_K bounded, ASSEMBLY §0) [V].
- What Target 2 gives at fixed ℓ (ASSEMBLY §1.3): subsequence limits in K of S_{n,ε,ℓ}, every limit with (OS0)–(OS3) in torus form. Its hypothesis (H-U): |S_{n,ε,ℓ}(F)| ≤ A_ℓ (n!)^D ‖F‖_{sn}, s = 6, D > 1, with A_ℓ depending on ℓ (ASSEMBLY_N1 §1 item 4: "ℓ⁴ is absorbed in C_S") [V].
- Scope (CLOSURE_PLAN §8 items 1, 5) [V]: "Finite torus … compactness form"; "Thermal state and one observable: periodic time, centred plaquette density, test space D_n". So W must be stated for this one composite observable. Wilson loops (class C3) and tensor sources (class C2) are outside Target 2 and outside W.

### 1.2 Test class on R⁴
For a ball B = B(0, ρ_B) ⊂ R⁴ put D_n(B) := {F ∈ C_c^∞(B^n) : ∂^αF = 0 on every diagonal x_i = x_j, all α}. For ℓ > 2ρ_B the ball embeds isometrically in T⁴_ℓ, so S_{n,ε,ℓ}(F) is defined. ⁰S_n := Schwartz functions on R^{4n} flat on all diagonals (OS II class [R, X2]); C_c^∞ ∩ ⁰S_n = ∪_B D_n(B) is dense in ⁰S_n for every weighted norm |F|_p := max_{|α| ≤ p} sup (1 + |x|²)^{p/2} |∂^αF| [R, standard].

### 1.3 Statement W (the weak target)
W. There is a sequence (K_i, ℓ_i), K_i → ∞, ℓ_i → ∞ (ℓ_i even, > 22M), such that S_n(F) := lim_i S_{n,ε_i,ℓ_i}(F) exists for every n ≥ 1, every ball B, every F ∈ D_n(B), and every limit family has:
- OS0. |S_n(F)| ≤ A (n!)^D |F|_{sn} with fixed s, A, D (linear growth, OS II form; X2). S_n extends to ⁰S_n.
- OS1-T. S_n(F(· − a)) = S_n(F) for every a ∈ R⁴ (all translations).
- OS1-H. S_n(F ∘ R^{−1}) = S_n(F) for every R in the hypercubic group B_4 acting about the origin; with OS1-T, about every point.
- OS2. For θ(x_0, x⃗) = (−x_0, x⃗), F_0 ∈ C, F_n ∈ D_n(B) with supp F_n ⊂ {x_0 > 0}^n: Σ_{n,m} S_{n+m}(ΘF_n ⊗ F_m) ≥ 0, (ΘF_n)(x_1..x_n) := conj F_n(θx_n, …, θx_1).
- OS3. Permutation symmetry; S_n(F) real for real F.
Not in W: OS1-R (full SO(4)), OS4 (clustering), uniqueness of the limit, a mass gap, any observable other than the centred plaquette density.
Remark (thermal to half-space). Target 2's torus RP gives, by reconstruction, a thermal state at inverse temperature ℓ (SOURCES_D4D5 §2 [V]). OS2 in W is half-space RP. Reconstruction from W gives a Hilbert space, a positive Hamiltonian H ≥ 0 with a vector Ω, HΩ = 0, and unitary space translations. Without OS4, Ω need not be the only invariant vector [R, OS I–II]. This is the only sense in which W improves on "thermal".

### 1.4 What W asks of Target 2's chain
Two things, and only two. (a) An ℓ-uniform version of (H-U) for test functions supported in a fixed ball: (H-U∞) |S_{n,ε,ℓ}(F)| ≤ A_B^n (n!)^D ‖F‖_{sn} for F ∈ D_n(B), all K ≥ K_0, all admissible ℓ > 2ρ_B, with A_B ≤ C(1 + ρ_B)^q. (b) Exact lattice symmetries, which hold at every (ε, ℓ) and need no RG input. Everything else in W is the ASSEMBLY §2.4–§2.8 argument with one more index. So §2 is about (a).
