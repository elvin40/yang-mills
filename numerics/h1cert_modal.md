# h1cert on Modal — plan only (not launched)

Goal: run the (H1_L) cell certification at L = 13 (three level runs: M = 1, 13, M0:169) as Modal CPU functions. See ../H2_CERTIFY_L13.md §4–§5.

Image: `modal.Image.debian_slim(python_version="3.13").pip_install("numpy", "scipy", "python-flint==0.9.0").add_local_file(...)` for h1cert_rho1.py, h1cert_cell.py, h1cert_drive.py, h2_scan.py, h1cert_prof_L13.npz (the profile cache; no jax needed then).

Function: `@app.function(cpu=1, memory=2048, timeout=3600, retries=2)` `run_batch(M, h, shard, nshards)` calls `h1cert_drive.main` logic for one shard and returns the per-top-cube JSON records. Checkpoint: results go to a `modal.Volume` (one JSON per top cube, written atomically); the driver already skips finished cubes, so a retried or restarted shard resumes. Fan-out: `run_batch.map(range(nshards))` with nshards = 4× workers for load balance (cube cost varies 2–16× with bisection).

Price (modal.com/pricing, checked 2026-10-27): $0.0000131 per physical core per second = $0.047 per core-hour, plus memory $0.00000222 per GiB-s ($0.008 per GiB-h); third-party sources report a 1.25× regional multiplier and higher non-preemptible rates. I use $0.07 per core-hour all-in (1 core + 2 GiB, ×1.25), preemptible.

Cost, per §4 of H2_CERTIFY_L13.md (L = 13, three level runs):
| cell code | cells (3 levels) | s per cell | core-h | $ at $0.07/core-h | wall, 64 workers | wall, 256 workers |
|---|---|---|---|---|---|---|
| present (naive cell enclosures, h ≈ 0.002–0.02) | ~3·10⁸ | 6.4 | ~5·10⁵ | ~$37,000 | ~11 months | ~3 months |
| Taylor-1 in the K̂-adapted frame (G1, not written) | ~1.3·10⁵ (ideal 1.6·10³, ×81 for a 3× overestimate of the cell radius) | ~30 (estimate: 5× a point) | ~1,100 | ~$75 | ~17 h | ~4 h |

Recommendation: do not run the present code on Modal. Write G1, pilot one level on the Mac (measured cell rate and cell count on a 1% sample of top cubes), then decide. Launch only with the author's explicit word.

## Update 2026-10-27: G1 cell code (h1cert_cell2.py, h1cert_drive2.py, h1cert_launch2.sh)
Measured on the Mac (one core): 8.2 s per cell at j = ∞ and M0:169, 8.1 s at M = 13, 3.3 s at M = 1; peak 0.6 GB per process. Top-cell half-width h = 0.08 certifies at the L = 13 argmax (bound 2.355 < √13); failed cells bisect.
| domain | top cells per mode (h = 0.08) | core-h, M = 1 / 13 / M0:169 | total core-h | $ at $0.07/core-h | wall on the 16-core box |
|---|---|---|---|---|---|
| [0, π]⁴ (16 sign flips, P5a) | 160,000 | 147 / 360 / 378 | ~885 (+ bisections) | ~$62 | ~2.3 days |
| sorted chamber (also 24 permutations, P5b) | 8,855 | 8 / 20 / 21 | ~49 (+ bisections) | ~$3.5 | ~3 h |
The box run is cheaper than Modal and needs no image; Modal is not needed at this size. Launch only with the author's explicit word.
