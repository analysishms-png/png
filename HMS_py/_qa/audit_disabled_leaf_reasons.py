"""Disabled-leaves reason map (2026-09-23).

Har sidebar module ke menubar leaves ke liye 3 disable-reasons:
  1. V-flag      -> menuHelp me Flag='V' (VB6 hidden leaf)
  2. absent      -> caption user ke menuHelp rows me hi nahi (VB6: leaf
                    usko dikhti nahi — hum menu me chhupa dete hain)
  3. missing-opener -> rights OK but shell registry me opener nahi
                       (VB6 form port nahi hua / SOON)

Note: yahan 'disabled' ka matlab _add_item ka opener=None hona (menu me
grayed action). Leaf menu se poora gayab ho to wo 'absent' bucket me.
Output: _qa/DISABLED_LEAVES_REASON_MAP.txt
"""
import os
import re
import sys
from collections import Counter

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")

from HMS_py.core import menu_help as mh
from HMS_py.ui import shell  # registry import (Qt offscreen chahiye)

os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

OUT = os.path.join("_qa", "DISABLED_LEAVES_REASON_MAP.txt")


def registry_keys() -> set:
    reg = shell._form_registry()
    return set(reg.keys())


def reason_for(user: str, cap: str, reg: set) -> str:
    if not mh.can_open(user, cap):
        return "V-flag"
    row = mh.by_caption(user).get(mh._norm_caption(cap))
    if row is None:
        # full-access user ke liye absent = normal (sab dikhta hai)
        return "absent"
    if cap not in reg:
        return "missing-opener"
    return "ok"


def main(users=("AMIR", "admin")):
    reg = registry_keys()
    lines = ["DISABLED LEAVES REASON MAP (2026-09-23)",
             "reasons: V-flag (menuHelp hidden) | absent (row hi nahi) | "
             "missing-opener (form port pending)", "=" * 72]
    summary = {}
    for user in users:
        fa = mh.full_access(user)
        lines += ["", f"## {user} (full_access={fa})", ""]
        cnt = Counter()
        per_mod = {}
        for s in mh.sidebar_sources(user):
            mod_lines = []
            for g in mh.menubar_for(s["name"], user):
                for it in g.get("items") or []:
                    leaves = [it] + list(it.get("children") or [])
                    for leaf in leaves:
                        cap = leaf.get("name") or ""
                        r = reason_for(user, cap, reg)
                        if r != "ok":
                            cnt[r] += 1
                            mod_lines.append(f"  [{r:15}] {g['name']} -> {cap}")
            if mod_lines:
                per_mod[s["name"]] = mod_lines
        for mod, ml in per_mod.items():
            lines.append(f"### {mod}")
            lines.extend(ml)
            lines.append("")
        summary[user] = cnt
        lines.append(f"  TOTAL {user}: {dict(cnt)}")
    lines += ["", "=" * 72, "SUMMARY"]
    for u, c in summary.items():
        lines.append(f"  {u}: V-flag={c.get('V-flag', 0)} "
                     f"absent={c.get('absent', 0)} "
                     f"missing-opener={c.get('missing-opener', 0)}")
    with open(OUT, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))
    print(f"written: {OUT}")
    for u, c in summary.items():
        print(f"  {u}: {dict(c)}")


if __name__ == "__main__":
    main()
