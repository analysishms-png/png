"""Audit: menuHelp sidebar leaves vs shell _form_registry (skill step 2).

Walks menu_help.module_tree() leaves (Opt4 links) and checks each leaf
caption against the registry with case-insensitive lookup. Any leaf whose
registry entry is None or _coming_soon is reported as UNWIRED.

Run: python _qa/audit_unwired_captions.py
Out: _qa/MENUHELP_UNWIRED.txt
"""
from __future__ import annotations

import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from HMS_py.core import menu_help as mh  # noqa: E402


def _wired(fn) -> bool:
    if fn is None:
        return False
    return ("coming_soon" not in repr(fn)
            and "coming_soon" not in getattr(fn, "__qualname__", ""))


def main() -> None:
    from HMS_py.ui import shell
    reg = shell._form_registry()
    reg_ci = {k.lower(): (k, fn) for k, fn in reg.items()}

    tree = mh.module_tree()
    unwired = []
    for module, rows in tree.items():
        for r in rows:
            leaf = (r.get("Opt4") or "").strip()
            if not leaf:
                continue
            hit = reg_ci.get(leaf.lower())
            if hit and _wired(hit[1]):
                continue
            unwired.append((module, leaf, "absent" if hit is None
                            else "coming_soon"))

    with open(os.path.join(ROOT, "_qa", "MENUHELP_UNWIRED.txt"), "w",
              encoding="utf-8") as f:
        f.write("MENUHELP LEAVES NOT WIRED IN SHELL REGISTRY\n")
        f.write("=" * 60 + "\n")
        f.write(f"Total leaves: {sum(len(v) for v in tree.values())}\n")
        f.write(f"Unwired: {len(unwired)}\n\n")
        for module, leaf, why in unwired:
            f.write(f"{module:<18} {leaf:<40} {why}\n")
    print(f"Unwired leaves: {len(unwired)} "
          f"(of {sum(len(r) for r in tree.values())})")
    for module, leaf, why in unwired[:40]:
        print(f"  {module:<16} {leaf:<38} {why}")


if __name__ == "__main__":
    main()
