#!/bin/sh
# One commit per sync: working notes -> notes/, reports -> notes/reports/, code as is. Usage: sync.sh "message"
cd ~/git/yang_mills || exit 1
SRC=$HOME/claude_code/yang_mills
EX="--exclude balaban/ --exclude .venv --exclude __pycache__ --exclude log_*.txt --exclude stab_search_big.out --exclude *.jsonl --exclude .lake/ --exclude OPUS_QUEUE.md --exclude archive/ --exclude CAMPAIGN_STATS.md --exclude INBOX.md"
rsync -a $EX --include '*.md' --exclude '*' "$SRC/" notes/ 2>/dev/null
rsync -a $EX --exclude "*.txt" "$SRC/reports/" notes/reports/
rsync -a $EX "$SRC/numerics/" numerics/
[ -d "$SRC/lean" ] && rsync -a $EX "$SRC/lean/" lean/
[ -d "$SRC/paper" ] && rsync -a $EX "$SRC/paper/" paper/
# Replace absolute home paths in the published copies
git ls-files -m -o --exclude-standard -- '*.md' '*.py' '*.sh' '*.tex' '*.lean' '*.txt' '*.json' '*.toml' | xargs grep -l -E "/Users/$USER|/home/$USER" 2>/dev/null | LC_ALL=C xargs sed -i '' -e "s|/Users/$USER|~|g" -e "s|/home/$USER|~|g"
n=$(git status --porcelain | wc -l | tr -d ' ')
[ "$n" = "0" ] && { echo "nothing new"; exit 0; }
git add -A && git commit -q -m "${1:-Update $n files}" && git push -q origin main && git log --oneline | wc -l
