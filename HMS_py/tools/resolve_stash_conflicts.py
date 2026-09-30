"""Resolve the 4 stash-vs-merge conflicts produced while restoring stash@{0}.

Conflicts arise because the local (stashed) session and origin/codex both
added the same symbols on top of f1acd43.  Decisions are evidence-based:

ui/pos_masters_ui.py
  1. both sides define ``open_card_registration`` -- keep the codex side: it
     follows this module's BaseMasterForm/MasterConfig pattern, carries the
     menu-rights check, and shell.py wires ``pm.open_card_registration``.
     (The stashed hand-rolled QDialog version is dropped as a duplicate; the
     stash entry itself is kept, so nothing is lost irrecoverably.)
  2. different symbols (``open_menu_item_copy`` vs ``open_card_operations``)
     -- keep BOTH.

ui/posting_utility_ui.py
  both sides rewrote NightAuditProcessWindow / ReverseNightAuditWindow
  differently -- keep the codex side for all six hunks: it is already in
  HEAD, documents the VB6 evidence, and stays QMainWindow like the
  module's pre-existing PostingUtilityWindow.
"""

from __future__ import annotations

import re
import sys

# Markers must be matched at the START of a line: plain ``=======`` also
# occurs inside ``# ============`` section headers, and an unanchored match
# silently swallows the lines in between.
CONFLICT = re.compile(
    r"^<<<<<<< [^\n]*\r?\n(.*?)^=======\r?\n(.*?)^>>>>>>> [^\n]*\r?\n",
    re.S | re.M,
)

# per file: one strategy per conflict, in source order
PLAN = {
    "pos_masters_ui.py": ["ours", "both"],
    "posting_utility_ui.py": ["ours"] * 6,
}


def resolve(path: str) -> int:
    key = path.rsplit("/", 1)[-1]
    for prefix in ("merged_", "ours_", "base_", "theirs_"):
        if key.startswith(prefix):
            key = key[len(prefix):]
    with open(path, encoding="utf-8", newline="") as fh:
        text = fh.read()

    blocks = list(CONFLICT.finditer(text))
    plan = PLAN[key]
    if len(blocks) != len(plan):
        print(f"{path}: expected {len(plan)} conflicts, found {len(blocks)}",
              file=sys.stderr)
        return 1

    out: list[str] = []
    prev = 0
    for m, strategy in zip(blocks, plan):
        ours, theirs = m.group(1), m.group(2)
        if strategy == "ours":
            piece = ours
        elif strategy == "theirs":
            piece = theirs
        elif strategy == "both":
            piece = ours.rstrip("\r\n") + "\r\n\r\n" + theirs.lstrip("\r\n")
        else:
            raise ValueError(strategy)
        out.append(text[prev:m.start()])
        out.append(piece)
        prev = m.end()
    out.append(text[prev:])

    with open(path, "w", encoding="utf-8", newline="") as fh:
        fh.write("".join(out))
    print(f"{path}: resolved {len(blocks)} conflicts {plan}")
    return 0


if __name__ == "__main__":
    code = 0
    for p in sys.argv[1:]:
        code |= resolve(p)
    sys.exit(code)
