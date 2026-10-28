# SOURCES_HHOL_LF_SPRIME — holomorphy and small-difference bounds with thresholds frozen at s′ near ū

Status: in progress (2026-10-28). Ledger tags: [P] proved here, [V] verified in a cited file, [I] imported from Balaban/literature, [R] reduced to a named open item.

Target: the open item from SOURCES_B15_M245_VERIFY §(R1). B15's input (R1) needs (a) a sup bound on the holomorphic extension in the weights with thresholds frozen at an arbitrary real s′ near ū, and (b) a small-difference bound between the frozen-at-s′ and frozen-at-x* objects.

## 0. Reading log
- B15 §4.2 (R1) [read]: needs w ↦ B_j(w; s′) holomorphic on 𝒫 = Π_l{|w_l − u*_l| < 0.17u*_l}, sup ≤ M, for every frozen REAL threshold vector s′ with |s′ − ū| ≤ 3r (componentwise). §4.3 also needs the threshold difference φ = B_j(·; ū) − B_j(·; s′) small on 𝒫 (tail form of §3.4 at complex w). The z-disc radius ρ_z ≥ 0.1γ^{−2} is a disc in the WEIGHT direction, not in s′; s′ stays real and within 3r of ū.
- B15_VERIFY §4 [read]: holomorphy at frozen s′ CONFIRMED by inspection (each cut is a fixed u-free set in B̃ units). Bounds UNSUPPORTED: HHOL_LF 5.3 uses e^{−c″p_0(x*_j)} and the ordering of x*_j; the R-ratio density stays at x* while thresholds move to s′ (mixed convention, never treated); (M-A) average bound "should still hold, unchecked". Expected change: constants × (1 + O(rγ²·polylog)).
