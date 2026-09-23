"""menuHelp dynamic menu audit + MISSING_OPTIONS report (2026-09-23).

1. Har sidebar module ka dynamic tree build hota hai? (menuHelp source)
2. Kaunse menuHelp leaves ke liye opener/registry missing hai? -> text file.
"""
import io
import re
import sys
import os as _os
import sys as _sys
_sys.path.insert(0, _os.path.dirname(_os.path.dirname(
    _os.path.dirname(_os.path.abspath(__file__)))))
from HMS_py.core import menu_help as mh
from HMS_py.core import menu as um

OUT = _os.path.join(_os.path.dirname(_os.path.dirname(
    _os.path.dirname(_os.path.abspath(__file__)))),
    "MENUHELP_MISSING_OPTIONS.txt")


def norm(s):
    return "".join(ch for ch in str(s or "").lower() if ch.isalnum())


def registry_captions() -> set:
    """shell._form_registry() keys (no Qt import: regex on source block)."""
    import os
    here = os.path.dirname(os.path.abspath(__file__))
    shell_path = os.path.join(here, "..", "ui", "shell.py")
    src = open(shell_path, encoding="utf-8", errors="ignore").read()
    m = re.search(r"def _form_registry\(.*?^\s{4}\}", src, re.S | re.M)
    caps = set()
    if m:
        block = m.group(0)
        for cm in re.finditer(r'"((?:[^"\\]|\\.|&&){2,70})":', block):
            caps.add(cm.group(1).replace("&&", "&"))
        for cm in re.finditer(r'\("((?:[^"\\]|\\.){2,70})",', block):
            caps.add(cm.group(1))
    return caps


def report_caption_map() -> dict:
    from HMS_py.core import reports as rp
    try:
        return rp.menu_caption_map()
    except Exception:
        return {}


def main():
    caps = registry_captions()
    rep_map = report_caption_map()
    rep_caps = {norm(c) for c in rep_map}

    side = mh.sidebar_sources("SA")
    print(f"sidebar sources: {len(side)}")
    for s in side:
        print(f"  [mh] {s['name']!r}" if s.get("opt1") is not None
              else f"  [um] {s['name']!r}")

    all_missing = []
    group_counts = {}
    for s in side:
        name = s["name"]
        groups = mh.menubar_for(name, "SA")
        group_counts[name] = len(groups)
        n_leaf = 0
        for g in groups:
            for it in g.get("items") or []:
                leaves = [it] + list(it.get("children") or [])
                for leaf in leaves:
                    ln = leaf.get("name")
                    n_leaf += 1
                    if ln in caps or norm(ln) in rep_caps or norm(ln) in {norm(c) for c in caps}:
                        continue
                    all_missing.append((name, g["name"], ln,
                                        leaf.get("flag") or "N"))
        print(f"  {name!r}: groups={len(groups)} leaves={n_leaf}")

    # op1-only leaf check: EPABX etc. via User_Module fallback sab theek?
    print("\ngroup counts:", group_counts)

    # ---- MISSING report ----
    lines = []
    lines.append("MENUHELP -> MISSING OPENERS (dynamic menu audit)")
    lines.append("Generated: menuHelp tree vs shell registry + reports caption map")
    lines.append("=" * 70)
    lines.append("")
    cur_mod = None
    for mod, grp, cap, flag in all_missing:
        if mod != cur_mod:
            lines.append("")
            lines.append(f"## {mod}")
            cur_mod = mod
        lines.append(f"  [{flag}] {grp} -> {cap}")
    lines.append("")
    lines.append(f"TOTAL missing: {len(all_missing)}")
    # summary per module
    lines.append("")
    lines.append("Per-module summary:")
    from collections import Counter
    cnt = Counter(m for m, _, _, _ in all_missing)
    for m, c in cnt.most_common():
        lines.append(f"  {m}: {c}")
    with open(OUT, "w", encoding="utf-8") as f:
        f.write("\n".join(lines))

    # orphan rows (Opt1 bucket with no L1 node) - VB6 silently drops
    orphans = mh.orphan_rows("SA")
    with open(OUT, "a", encoding="utf-8") as f:
        f.write("\n\n## DATA-GAP: orphan menuHelp rows (no L1 node, "
                "VB6 me hidden)\n")
        for r in orphans:
            f.write(f"  O1={r['opt1']} O2={r['opt2']} O3={r['opt3']} "
                    f"O4={r['opt4']} [{r['flag']}] {r['caption']}\n")
        f.write(f"\nTOTAL orphan rows: {len(orphans)}\n")
    print(f"\nwritten: {OUT} (missing={len(all_missing)}, "
          f"orphans={len(orphans)})")


if __name__ == "__main__":
    main()
