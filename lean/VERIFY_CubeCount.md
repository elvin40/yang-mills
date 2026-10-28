IDs in this file follow the pre-2026-10-29 scheme; see IDS.md for the mapping.
# VERIFY_CubeCount — statement check of YmLean/CubeCount.lean

Source: ../SOURCES_FX_O1.md §2 (Lemma O1-R proof), §3 (Lemma O1-R′); ../SOURCES_FX_O1_VERIFY.md §3 (item 2, "21^d step").

## Theorems

| Lean | Markdown inequality |
|---|---|
| `four_pow_le d hd`: 21·4^d ≤ 4·21^d for d ≥ 1 | "(4/21)^d ≤ 4/21" (O1-R proof) |
| `cube_count_sharp`, part 1: 17N ≤ 42·4^d·ℓ | VERIFY §3: "N ≤ (42/17)4^dℓ" |
| `cube_count_sharp`, part 2: N/(3·4^d) ≤ ℓ | O1-R proof "N ≤ 3·4^dℓ"; O1-R′ first inequality |
| `cube_count_lower`, part 1: N/(3·4^d) ≤ ℓ | O1-R′ first inequality |
| `cube_count_lower`, part 2: n_f/(3·4^d(ρ+2)^d) ≤ ℓ | O1-R′ second inequality |

All variables are reals except d : ℕ. No sign hypotheses on N, ℓ, n_f, N_Y: N ≥ 0 follows from (F2), and ℓ > 0 follows from (F1), (F2).

## Hypotheses

- `hd : 1 ≤ d`.
- (F1) `hF1 : N ≤ 4^d (1 + 2ℓ)`. Geometric input, NOT formalized: Fact B (a connected set of length ℓ, in coarse-cube units, meets at most 4^d(1 + 2ℓ) closed cubes of the grid), applied to a shortest tree for d′_{j+1}(S(Y)), which meets all N cubes of S(Y).
- (F2) `hF2 : 21^d ≤ N`. Geometric input, NOT formalized: S(Y) = Y′ plus ten layers of coarse cubes (§1.4).
- (F3) `hF3 : n_f ≤ (ρ+2)^d N_Y`, `hNY : N_Y ≤ N`. Geometric input, NOT formalized: Fact C (a closed coarse cube of side ρ, in fine units, meets at most (ρ+2)^d fine cubes; every fine cube of Y meets a coarse cube of Y′; Y′ ⊂ S(Y)). For the aligned case use ρ^d in place of (ρ+2)^d: the same proof applies; this version is not stated.
- `hρ : 1 ≤ ρ` is in the statement as requested, but the proof uses only (ρ+2)^d > 0, which holds for ρ > −2.

## Not formalized

- Fact A (d′_j(Y) ≤ √d(n_f − 1): spanning tree of the fine-cube adjacency graph, center → common point → center paths). Geometric.
- Consequently Lemma O1-R itself (d′_{j+1}(S(Y)) ≥ c_* d′_j(Y)) and (O1-M) are not stated; they follow from `cube_count_lower` part 2 plus Fact A (and R_j^d nesting for O1-M) by one multiplication.
- Optional item (a connected union of n unit cubes in ℤ^d has a spanning tree with n − 1 edges): skipped. It needs a cube-adjacency `SimpleGraph` on a `Finset (Fin d → ℤ)` and the tree-extraction API; not a few lines.

## Build

`lake build YmLean.CubeCount`: success, 1.5 s.

```
'YmLean.cube_count_sharp' depends on axioms: [propext, Classical.choice, Quot.sound]
'YmLean.cube_count_lower' depends on axioms: [propext, Classical.choice, Quot.sound]
```
