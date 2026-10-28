#!/bin/sh
# One commit per sync: working notes -> notes/, reports -> notes/reports/, code as is. Usage: sync.sh "message"
cd ~/git/yang_mills || exit 1
SRC=~/claude_code/yang_mills
EX="--exclude balaban/ --exclude .venv --exclude __pycache__ --exclude log_*.txt --exclude stab_search_big.out --exclude *.jsonl --exclude .lake/ --exclude OPUS_QUEUE.md"
rsync -a $EX --include '*.md' --exclude '*' "$SRC/" notes/ 2>/dev/null
rsync -a $EX "$SRC/reports/" notes/reports/
rsync -a $EX "$SRC/numerics/" numerics/
[ -d "$SRC/lean" ] && rsync -a $EX "$SRC/lean/" lean/
[ -d "$SRC/paper" ] && rsync -a $EX "$SRC/paper/" paper/
n=$(git status --porcelain | wc -l | tr -d ' ')
[ "$n" = "0" ] && { echo "nothing new"; exit 0; }
git add -A && git commit -q -m "${1:-Update $n files}" && git push -q origin main && git log --oneline | wc -l
