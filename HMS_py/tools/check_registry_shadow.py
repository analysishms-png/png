"""Static check for shell._form_registry: the LAST definition of a caption wins.

The registry is one big dict literal. Real wirings ("Cap": lambda ...) and
bulk placeholders (**({cap: _coming_soon(cap) for cap in (...)})) are merged
in source order, so a placeholder batch placed AFTER a real wiring silently
shadows it -- the menu then shows "Coming Soon" even though the port exists.

This script walks the function body in source order, records every
definition event, and reports captions whose winning definition is a
coming_soon placeholder while a real wiring exists somewhere.
"""

from __future__ import annotations

import re
import sys

PATH = "ui/shell.py"

ENTRY = re.compile(r'^\s{8}"([^"]+)"\s*:\s*(?P<val>.*)$')
BATCH_START = re.compile(r"_coming_soon\(cap\) for cap in \($")


def main() -> int:
    with open(PATH, encoding="utf-8") as fh:
        lines = fh.read().splitlines()

    start = next(i for i, l in enumerate(lines) if l.startswith("def _form_registry"))
    end = next(
        i for i in range(start + 1, len(lines))
        if lines[i].startswith("def ") or lines[i].startswith("class ")
    )

    events: dict[str, list[tuple[int, str]]] = {}
    i = start
    while i < end:
        line = lines[i]
        if BATCH_START.search(line):
            j = i + 1
            caps: list[str] = []
            while j < end and ")})," not in lines[j]:
                caps += re.findall(r'"([^"]+)"', lines[j])
                j += 1
            for c in caps:
                events.setdefault(c, []).append((j, "<coming_soon>"))
            i = j
            continue
        m = ENTRY.match(line)
        if m:
            val = m.group("val").strip()
            # `lambda ... if X else _coming_soon(...)` is a REAL wiring that
            # merely degrades when its module failed to import. Only a bare
            # `_coming_soon("Cap")` value is a true placeholder.
            if "lambda" in val:
                kind = "<real>"
            elif val.startswith("_coming_soon("):
                kind = "<coming_soon>"
            else:
                kind = "<other>"
            events.setdefault(m.group(1), []).append((i + 1, kind))
        i += 1

    shadowed = []
    for cap, defs in events.items():
        if len(defs) < 2:
            continue
        # last definition wins in the dict literal; if that is a
        # coming_soon placeholder while a real wiring exists earlier,
        # the port is silently unreachable (menu shows "Coming Soon").
        if defs[-1][1] == "<coming_soon>" and any(d[1] == "<real>" for d in defs[:-1]):
            shadowed.append((cap, defs))

    print(f"captions defined more than once: {sum(1 for d in events.values() if len(d) > 1)}")
    if not shadowed:
        print("OK - no real wiring is shadowed by a coming_soon batch")
        return 0

    print(f"\nSHADOWED ({len(shadowed)}):")
    for cap, defs in sorted(shadowed):
        where = ", ".join(f"{k}@{ln}" for ln, k in defs)
        print(f"  {cap!r}: {where}  -> WINS {defs[-1]}")
    return 1


if __name__ == "__main__":
    sys.exit(main())
