#!/bin/sh
# One commit per sync: copy new/changed notes from the working folder and push.
cd ~/git/yang_mills || exit 1
rsync -a --exclude 'balaban/' --exclude '.venv' --exclude '__pycache__' --exclude 'log_*.txt' --exclude 'stab_search_big.out' --exclude '*.jsonl' --exclude '.lake/' --exclude 'lean/.lake/' ~/claude_code/yang_mills/ ./
n=$(git status --porcelain | wc -l | tr -d ' ')
[ "$n" = "0" ] && { echo "nothing new"; exit 0; }
git add -A && git commit -q -m "${1:-Update $n files}" && git push -q origin main && git log --oneline | wc -l
