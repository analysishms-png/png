"""Repair: theme import jo parenthesized import ke andar ghus gaya ho.

Paren balance check karke galat position wali import ko block ke baad
move karta hai. Idempotent.
"""
from __future__ import annotations

from pathlib import Path

UI_DIR = Path(__file__).resolve().parent.parent / "HMS_py" / "ui"
THEME_LINE = "from HMS_py.ui import theme as _theme"

fixed = []
for path in sorted(UI_DIR.glob("*.py")):
    lines = path.read_text(encoding="utf-8").splitlines(keepends=True)
    idx = None
    for i, ln in enumerate(lines):
        if ln.strip() == THEME_LINE:
            idx = i
            break
    if idx is None:
        continue
    # paren balance BEFORE this line (poori file start se)
    depth = 0
    ok_line = None
    for j in range(idx):
        s = lines[j]
        for ch in s:
            if ch == "(":
                depth += 1
            elif ch == ")":
                depth -= 1
        if depth == 0 and s.strip() and not s.strip().startswith("#"):
            ok_line = j
    if depth == 0:
        continue  # position theek hai
    # galat position: import ko balance-0 waali last line ke baad le jao
    theme_line = lines.pop(idx)
    lines.insert(ok_line + 1, theme_line)
    path.write_text("".join(lines), encoding="utf-8")
    fixed.append(path.name)

print("repaired:", fixed)
