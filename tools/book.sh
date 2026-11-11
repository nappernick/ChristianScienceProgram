#!/usr/bin/env bash
# Usage: tools/book.sh count | build | check
#   count  words per chapter and per era
#   build  book/build/manuscript.md and .docx (needs pandoc)
#   check  superseded names and the negation tic, per chapter
set -euo pipefail
cd "$(dirname "$0")/.."
body() { awk 'NR==1 && /^---$/ {h=1; next} h && /^---$/ {h=0; next} !h' "$1"; }
field() { awk -v k="$2" 'NR==1 && !/^---$/ {exit} NR>1 && /^---$/ {exit} $1==k":" {sub(/^[^:]*: */,""); print}' "$1"; }

case "${1:-count}" in
count)
  declare -A era; total=0
  for f in book/chapters/*.md; do
    n=$(body "$f" | wc -w); e=$(field "$f" era)
    printf '%6d  %-6s %s\n' "$n" "$e" "$(basename "$f")"
    era[$e]=$(( ${era[$e]:-0} + n )); total=$(( total + n ))
  done
  for e in "${!era[@]}"; do printf '%6d  %s total\n' "${era[$e]}" "$e"; done
  printf '%6d  all\n' "$total" ;;
build)
  mkdir -p book/build; out=book/build/manuscript.md; : > "$out"
  for f in book/chapters/*.md; do
    printf '# %s\n\n' "$(field "$f" chapter). $(field "$f" title)" >> "$out"
    body "$f" >> "$out"; printf '\n\n' >> "$out"
  done
  command -v pandoc >/dev/null && pandoc "$out" -o book/build/manuscript.docx
  echo "built $out" ;;
check)
  for f in book/chapters/*.md; do
    m=$(body "$f" | grep -c 'Mariana' || true)
    t=$(body "$f" | { grep -oE '\bNot [a-z]+[^.]{0,40}\. Not ' || true; } | wc -l)
    p=$(body "$f" | { grep -oi 'the particular' || true; } | wc -l)
    printf '%-22s Mariana lines:%3d  "Not X. Not Y.":%2d  "the particular":%2d\n' "$(basename "$f")" "$m" "$t" "$p"
  done ;;
*) echo "usage: $0 count|build|check" >&2; exit 2 ;;
esac
