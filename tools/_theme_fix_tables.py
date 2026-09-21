"""One-shot UI theme fix: hardcoded QColor("#111111") table text ko
theme-aware banao (dark presets me text invisible hone wala bug).

Har ui/*.py me:
  QColor("#111111")          -> QColor(_theme.palette()["text"])
  fg: str = "#111111" _cell  -> fg sentinel "" + body `fg or _theme...`
  bg: str = "#ffffff" _cell  -> bg sentinel "" + body `bg or _theme...`
  else "#111111")            -> else _theme.palette()["text"])

Import `from HMS_py.ui import theme as _theme` missing ho to add karo
(pehli `from HMS_py...` import line ke baad).

Idempotent: dobara chalane pe kuch nahi badalta.
"""
from __future__ import annotations

import re
from pathlib import Path

UI_DIR = Path(__file__).resolve().parent.parent / "HMS_py" / "ui"
THEME_IMPORT = "from HMS_py.ui import theme as _theme"

changed_files: list[str] = []

for path in sorted(UI_DIR.glob("*.py")):
    if path.name in ("theme.py", "glass.py", "shell.py"):
        continue  # shell.py manually migrate ho chuka
    src = path.read_text(encoding="utf-8")
    orig = src

    # 1) theme import (agar nahi hai)
    if THEME_IMPORT not in src and "QColor(" in src and "#111111" in src:
        lines = src.splitlines(keepends=True)
        insert_at = None
        for i, ln in enumerate(lines):
            if ln.startswith("from HMS_py") or ln.startswith("import HMS_py"):
                insert_at = i + 1
        if insert_at is None:
            # last generic import ke baad
            for i, ln in enumerate(lines):
                if ln.startswith(("import ", "from ")):
                    insert_at = i + 1
        if insert_at is not None:
            lines.insert(insert_at, THEME_IMPORT + "\n")
            src = "".join(lines)

    # 2) direct QColor("#111111")
    src = src.replace('QColor("#111111")',
                      'QColor(_theme.palette()["text"])')

    # 3) _cell defaults -> theme-aware body
    src = src.replace(
        'def _cell(val, fg: str = "#111111") -> QTableWidgetItem:',
        'def _cell(val, fg: str = "") -> QTableWidgetItem:')
    src = src.replace(
        'def _cell(val, bg: str = "#ffffff", fg: str = "#111111")'
        ' -> QTableWidgetItem:',
        'def _cell(val, bg: str = "", fg: str = "") -> QTableWidgetItem:')

    # fg default body (sirf jab sentinel ho)
    src = re.sub(
        r"(def _cell\([^)]*fg: str = \"\"[^)]*\))\n"
        r"((?:.*\n)*?)"
        r"([ \t]*)it\.setForeground\(QColor\(fg\)\)",
        r"\1\n\2\3it.setForeground(QColor(fg or "
        r"_theme.palette()[\"text\"]))",
        src)

    # bg default body
    src = re.sub(
        r"(def _cell\([^)]*bg: str = \"\"[^)]*\))\n"
        r"((?:.*\n)*?)"
        r"([ \t]*)it\.setBackground\(QColor\(bg\)\)",
        r"\1\n\2\3it.setBackground(QColor(bg or "
        r"_theme.palette()[\"surface_solid\"]))",
        src)

    # 4) ternary else "#111111")
    src = src.replace('else "#111111")',
                      'else _theme.palette()["text"])')

    if src != orig:
        path.write_text(src, encoding="utf-8")
        changed_files.append(path.name)

print("changed:", len(changed_files))
for name in changed_files:
    print("  -", name)
