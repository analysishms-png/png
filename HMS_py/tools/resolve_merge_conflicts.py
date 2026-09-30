"""Resolve the known merge conflicts from codex/main-setup-parity merge.

Strategies (documented per conflict):
  shell.py  block 0 : ours only  (ours = HEAD comment, theirs dropped it)
  shell.py  block 1 : ours comment + theirs guarded lambda
  shell.py  block 2 : ours only  (ours comment)
  shell.py  block 3 : ours comments + theirs code (user=None -> na.USER fallback)
  shell.py  block 4 : ours only  (ours comment)
  shell.py  block 5 : ours comment + theirs code (sct dedicated VB6 EXTSCOP forms)
  frontoffice.py    : theirs plan-field defs + ours label ("Guest Name*")
"""

from __future__ import annotations

import re
import sys

def split_conflicts(text: str):
    # Markers must be line-anchored: ``=======`` also appears inside
    # ``# ============`` section headers, and an unanchored match silently
    # swallows the lines in between.
    pat = re.compile(
        r"^<<<<<<< [^\n]*\r?\n(.*?)^=======\r?\n(.*?)^>>>>>>> [^\n]*\r?\n",
        re.S | re.M,
    )
    blocks = []
    for m in pat.finditer(text):
        blocks.append((m.start(), m.end(), m.group(1), m.group(2)))
    return blocks


def ours_only(ours, theirs):
    return ours


def ours_comment_theirs_code(ours, theirs):
    # keep comment lines (# ...) from ours, code lines from theirs
    comments = [l for l in ours.splitlines(keepends=True) if l.lstrip().startswith("#")]
    return "".join(comments) + theirs


def theirs_only(ours, theirs):
    return theirs


def frontoffice(ours, theirs):
    # theirs carries the VB6 plan-field definitions (downstream rows reference
    # ed_plan etc.); ours carries the deliberate "Guest Name*" label change.
    # Drop theirs' label row so the row is not added twice.
    theirs_rows = [l for l in theirs.splitlines(keepends=True) if "Guest Name" not in l]
    our_rows = [l for l in ours.splitlines(keepends=True) if "Guest Name" in l]
    return "".join(theirs_rows) + "".join(our_rows)


PLAN = {
    "ui/shell.py": [ours_only, ours_comment_theirs_code, ours_only,
                    ours_comment_theirs_code, ours_only, ours_comment_theirs_code],
    "ui/frontoffice.py": [frontoffice],
}


def resolve(path: str) -> int:
    with open(path, "r", encoding="utf-8", newline="") as fh:
        text = fh.read()
    blocks = split_conflicts(text)
    if not blocks:
        print(f"{path}: no conflicts")
        return 0
    fns = PLAN[path]
    if len(blocks) != len(fns):
        print(f"{path}: expected {len(fns)} conflicts, found {len(blocks)}", file=sys.stderr)
        return 1
    out = []
    prev = 0
    for (start, end, ours, theirs), fn in zip(blocks, fns):
        out.append(text[prev:start])
        out.append(fn(ours, theirs))
        prev = end
    out.append(text[prev:])
    with open(path, "w", encoding="utf-8", newline="") as fh:
        fh.write("".join(out))
    print(f"{path}: resolved {len(blocks)} conflicts")
    return 0


if __name__ == "__main__":
    rc = 0
    for p in ("ui/shell.py", "ui/frontoffice.py"):
        rc |= resolve(p)
    sys.exit(rc)
