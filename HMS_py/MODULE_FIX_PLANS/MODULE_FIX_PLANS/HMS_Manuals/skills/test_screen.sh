#!/bin/bash
# Screen tester: navigate, state, screenshot, auto-checks
# Usage: bash test_screen.sh <url> <name>
BASE="https://www.analysishms.com"
OUT=_bugtest2
mkdir -p $OUT
URL="$1"
NAME="$2"
case "$URL" in http*) FULL="$URL";; /*) FULL="$BASE$URL";; *) FULL="$BASE/$URL";; esac
browser-act --session hks2 navigate "$FULL" >/dev/null 2>&1
sleep 9
browser-act --session hks2 state 2>&1 > $OUT/${NAME}_state.txt
browser-act --session hks2 screenshot $OUT/$NAME.png >/dev/null 2>&1
EMPTY=$(grep -icE "empty dom" $OUT/${NAME}_state.txt)
ERR=$(grep -icE "SQLSTATE|Whoops|Exception|server error" $OUT/${NAME}_state.txt)
echo "$NAME => empty:$EMPTY err:$ERR"
