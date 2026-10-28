# H2_CERTIFY_L13_G1_VERIFY — pre-launch verification of the G1 certifier

Written 2026-10-27 (Claude, Opus 5.5). Did not read /tmp/sa_repo or reports/SUSSMAN_ALPOGE_MAP.md. Certifier files not edited. Nothing launched on the box.

## 1. Read G1 note, launcher, driver
- Driver: atomic write (tmp + fsync + os.replace), skip-if-done from disk, shard idx % n, children X_k. Matches §4 of the G1 note.
- First observations (to check): (i) a cell FAILED at depth dmax is terminal, so DONE_<mode> is written even with FAILED cells; DONE means "finished", not "certified". (ii) Any Exception in cell_bound2 gives status split; a systematic exception would bisect every cell to depth 3 (4,096 leaves per top cell). (iii) The launcher has no restart loop: a shard killed by the cgroup OOM killer is not rerun; the for-loop then goes to the next mode.
