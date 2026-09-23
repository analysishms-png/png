"""Batch: TOP {limit} -> TOP {int(limit)} in core modules where untyped."""
from __future__ import annotations

import re
from pathlib import Path

ROOT = Path(r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\core")
# Only replace pure f" ... TOP {limit} ..." when line has no int() already
pat = re.compile(r"TOP \{limit\}")

changed = []
for f in sorted(ROOT.glob("*.py")):
    if f.name.endswith(".backup"):
        continue
    text = f.read_text(encoding="utf-8")
    lines = text.splitlines(keepends=True)
    out = []
    nfile = 0
    for line in lines:
        if "TOP {limit}" in line and "int(limit)" not in line and "int(top)" not in line:
            newline = line.replace("TOP {limit}", "TOP {int(limit)}")
            if newline != line:
                nfile += 1
                line = newline
        out.append(line)
    if nfile:
        f.write_text("".join(out), encoding="utf-8")
        changed.append((f.name, nfile))

for name, n in changed:
    print(f"{name}: {n} replacements")
print(f"files changed={len(changed)} total={sum(n for _, n in changed)}")
