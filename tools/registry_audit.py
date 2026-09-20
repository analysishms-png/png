"""Registry audit (WAVE S1): mdi_menu.json har leaf × shell _form_registry.

Run: C:/Python314/python.exe HMS_py/tools/registry_audit.py [module_filter]
Output: per-module LIVE/SOON/MISSING census + MISSING leaf list.
Target (S1 DOD): MISSING == sirf wahi jinki tables ABSENT hain.
"""
import json
import os
import sys

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, ROOT)
os.environ.setdefault("QT_QPA_PLATFORM", "offscreen")

from HMS_py.ui import shell  # noqa: E402

MENU = os.path.join(ROOT, "HMS_py", "core", "mdi_menu.json")


def main(module_filter: str | None = None) -> int:
    tree = json.load(open(MENU, encoding="utf-8"))
    reg = shell._form_registry()
    total = live = soon = missing = 0
    lines = []
    for mod in tree.get("children", []):
        modname = mod.get("caption", "").replace("&", "")
        if module_filter and module_filter.lower() not in modname.lower():
            continue
        leaves = []

        def walk(n, path=""):
            cap = n.get("caption", "").replace("&", "")
            p = f"{path} > {cap}" if path else cap
            if not n.get("children"):
                leaves.append(p)
            for ch in n.get("children", []):
                walk(ch, p)

        for ch in mod.get("children", []):
            walk(ch)
        g = {"LIVE": 0, "SOON": 0, "MISSING": 0}
        miss = []
        for lf in leaves:
            leaf = lf.split(" > ")[-1]
            fn = reg.get(leaf)
            r = repr(fn)
            if fn is None:
                st = "MISSING"
                miss.append(lf)
            elif "coming_soon" in r:
                st = "SOON"
            else:
                st = "LIVE"
            g[st] += 1
        total += len(leaves)
        live += g["LIVE"]; soon += g["SOON"]; missing += g["MISSING"]
        lines.append(f"[{modname}] leaves={len(leaves)} LIVE={g['LIVE']} "
                     f"SOON={g['SOON']} MISSING={g['MISSING']}")
        for m in miss:
            lines.append(f"    MISSING: {m}")
    print("\n".join(lines))
    print(f"\nTOTAL leaves={total} LIVE={live} SOON={soon} MISSING={missing}")
    return 0


if __name__ == "__main__":
    sys.stdout.reconfigure(encoding="utf-8", errors="replace")
    sys.exit(main(sys.argv[1] if len(sys.argv) > 1 else None))
