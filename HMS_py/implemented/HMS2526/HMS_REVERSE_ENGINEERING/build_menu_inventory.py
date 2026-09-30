"""Parse menu_tree_raw.txt (from decompiled menu builder Proc_165_0_14C1708)
into module-wise sorted inventory. Format of raw lines: ModuleHex|Order|Parent|Caption
[INFERRED module names follow INI key-9 sequence; B/C verified from captions.]"""
import os

HERE = os.path.dirname(os.path.abspath(__file__))
RAW = os.path.join(HERE, "19_VB6_Logic", "menu_tree_raw.txt")

MODNAMES = {
    "B":  "Finance",
    "C":  "Main Setup",
    "D":  "Reservation",
    "E":  "Front Office",
    "F":  "House Keeping",
    "10": "Inventory",
    "11": "Point Of Sale",
    "12": "Banquet",
    "13": "Night Audit",
    "14": "HR & Payroll",
    "15": "EPABX",
    "16": "Messaging",
    "17": "Members Mgmt",
    "18": "Sales & Marketing",
    "19": "Mall Management",
    "1A": "System/Utility",
    "2E": "Special-A",
    "2F": "Special-B",
    "32": "Special-C",
}

rows = []
with open(RAW, encoding="utf-8", errors="replace") as f:
    for line in f:
        line = line.strip()
        if not line:
            continue
        parts = line.split("|")
        if len(parts) < 4:
            continue
        mod, order, parent, cap = parts[0], parts[1], parts[2], "|".join(parts[3:])
        try:
            order = int(order)
        except ValueError:
            continue
        rows.append((mod, order, parent, cap))

rows.sort(key=lambda r: (r[0], r[1]))

out = os.path.join(HERE, "19_VB6_Logic", "MENU_INVENTORY.md")
with open(out, "w", encoding="utf-8") as f:
    f.write("# HMS MENU INVENTORY (524 items, from decompiled menu builder)\n\n")
    f.write("Source: Proc_165_0_14C1708 calls in EXTRAS.text (extracted menu_tree_raw.txt).\n")
    f.write("Signature: Caption, ModuleID(hex), Type(0=screen,1=report,2=?,3=group,4=root),\n")
    f.write("Parent, IconKey, Flag. Module names from INI key-9 order [INFERRED for D+; B,C verified].\n\n")
    cur = None
    counts = {}
    for mod, order, parent, cap in rows:
        mname = MODNAMES.get(mod, "Module " + mod)
        counts[mname] = counts.get(mname, 0) + 1
        if mod != cur:
            f.write("\n## Module %s (%s)\n\n" % (mname, mod))
            cur = mod
        indent = "  " * (1 if parent else 0)
        pfx = "- " if parent else "### "
        f.write("%s%s%s (parent: %s)\n" % (pfx, indent, cap, parent if parent else "TOP"))
    f.write("\n\n## Counts per module\n\n")
    for k, v in sorted(counts.items(), key=lambda kv: -kv[1]):
        f.write("- %s: %d\n" % (k, v))

print("Wrote", out, "with", len(rows), "items")
