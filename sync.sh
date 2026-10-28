#!/bin/sh
# Copy new/changed notes from the working folder and commit each with its modification time.
cd ~/git/yang_mills || exit 1
rsync -a --exclude 'balaban/' --exclude '.venv' --exclude '__pycache__' --exclude 'log_*.txt' --exclude 'stab_search_big.out' --exclude '*.jsonl' --exclude '.lake/' --exclude 'lean/.lake/' ~/claude_code/yang_mills/ ./
git status --porcelain | awk '{print $2}' | while read -r f; do
  [ -f "$f" ] || continue
  d=$(date -u -r "$(stat -f %m "$f")" +%Y-%m-%dT%H:%M:%SZ)
  git add "$f"; GIT_AUTHOR_DATE="$d" GIT_COMMITTER_DATE="$d" git commit -q -m "Update $f (modified $d)" || true
done
git push -q origin main && git log --oneline | wc -l
