"""Menu_Help -> module-wise options list (text report).

Source: menuHelp table, UserName='SA' (template), CompCode = live config.
VB6 MDIForm1 hierarchy: Opt1=module, Opt2=group, Opt3=item, Opt4=sub-item.
Order: ORDER BY Opt1, Opt2, Opt3, Opt4, Code (Code = VB6 tie-breaker).

Flags: E=Entry form, R=Report, N=node/header, '-'=separator, V=hidden.
Rights Param_Str: A=Add E=Edit D=Delete P=Print ('*' = denied position).
Output: MENUHELP_OPTIONS_BY_MODULE.txt (project root).
"""
import os
import sys
from datetime import date

sys.path.insert(0, os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__)))))

from HMS_py.core import db, menu_help as mh

OUT = os.path.join(os.path.dirname(os.path.dirname(
    os.path.dirname(os.path.abspath(__file__)))),
    "MENUHELP_OPTIONS_BY_MODULE.txt")

FLAG_DESC = {"E": "Entry", "R": "Report", "N": "Node", "-": "Separator", "V": "Hidden"}


def caption(v) -> str:
    s = str(v or "").strip()
    return s


def load_rows(username: str = "SA"):
    comp = mh._comp()
    try:
        rows = db.query(
            "SELECT Opt1, Opt2, Opt3, Opt4, [Option], Flag, Param_Str, Code "
            "FROM menuHelp WHERE UserName = ? AND CompCode = ? "
            "ORDER BY Opt1, Opt2, Opt3, Opt4, Code",
            (username, comp))
    except Exception:
        rows = db.query(
            "SELECT Opt1, Opt2, Opt3, Opt4, [Option], Flag, Param_Str, Code "
            "FROM menuHelp WHERE UserName = ? "
            "ORDER BY Opt1, Opt2, Opt3, Opt4, Code", (username,))
    return [tuple(r) for r in rows]


def fmt_rights(p: str) -> str:
    p = (p or "").strip()
    if not p:
        return "(blank=full)"
    return p


def main():
    rows = load_rows("SA")

    # --- partition -----------------------------------------------------
    modules: dict[int, dict] = {}   # opt1 -> {name, groups, toplevel, hidden}
    order: list[int] = []

    for opt1, opt2, opt3, opt4, cap, flag, param, code in rows:
        o1, o2, o3, o4 = int(opt1 or 0), int(opt2 or 0), int(opt3 or 0), int(opt4 or 0)
        c = caption(cap)
        f = str(flag or "").strip().upper()
        if o1 == 0:
            continue  # non-module row (user-level)
        if o1 not in modules:
            modules[o1] = {"name": "", "rows": [], "hidden": []}
            order.append(o1)
        if f == "V":
            modules[o1]["hidden"].append((o2, o3, o4, c, f, str(param or "")))
            continue
        if o2 == 0 and o3 == 0 and o4 == 0:
            # root row: N-node with [Option] caption = module name;
            # Opt1-bucket title 0-par non-module hai to skip
            if c and not modules[o1]["name"]:
                modules[o1]["name"] = c
            elif c == "-":
                modules[o1]["rows"].append((o2, o3, o4, c, f, str(param or "")))
            continue
        modules[o1]["rows"].append((o2, o3, o4, c, f, str(param or "")))

    lines = []
    ap = lines.append
    w = 78
    ap("=" * w)
    ap("HMS MENU_HELP — MODULE-WISE OPTIONS LIST")
    ap(f"Source   : menuHelp table, UserName='SA' template, CompCode={mh._comp()}")
    ap(f"Generated: {date.today().isoformat()}  (VB6 MDIForm1 hierarchy port)")
    ap("Hierarchy: Opt1=module > Opt2=group > Opt3=item > Opt4=sub-item")
    ap("Order    : Opt1,Opt2,Opt3,Opt4,Code (VB6 tie-breaker)")
    ap("Flags    : E=Entry, R=Report, N=Node/header, -=Separator, V=Hidden")
    ap("Rights   : Param_Str A=Add E=Edit D=Delete P=Print (*=denied)")
    ap("=" * w)
    ap("")

    total_e = total_r = total_hidden = 0
    for idx, o1 in enumerate(order, 1):
        m = modules[o1]
        # root N-row absent => orphan bucket (sidebar_sources isse module
        # nahi banata — VB6 bhi aise rows ko sidebar me nahi dikhata)
        name = m["name"] or f"(orphan bucket {o1} — sidebar root N-row absent)"
        vis = m["rows"]
        e_cnt = sum(1 for r in vis if r[4] == "E" and r[3] == 0)
        r_cnt = sum(1 for r in vis if r[4] == "R" and r[3] == 0)
        # leaf = E/R at any level; count L3/L4 leaves properly
        leaf_cnt = sum(1 for r in vis if r[4] in ("E", "R") and r[1] >= 1 or
                       (r[4] in ("E", "R") and r[1] == 0))
        leaf_cnt = sum(1 for r in vis if r[4] in ("E", "R"))
        h_cnt = len(m["hidden"])
        total_e += sum(1 for r in vis if r[4] == "E")
        total_r += sum(1 for r in vis if r[4] == "R")
        total_hidden += h_cnt
        ap("-" * w)
        ap(f"{idx:2}. {name.upper()}   (Opt1={o1})")
        ap(f"    visible options: {leaf_cnt} "
           f"(Entry {sum(1 for r in vis if r[4]=='E')}, "
           f"Report {sum(1 for r in vis if r[4]=='R')}), "
           f"hidden(V): {h_cnt}")
        ap("-" * w)

        # group by Opt2
        groups: dict[int, list] = {}
        gname: dict[int, str] = {}
        top: list = []
        for o2, o3, o4, c, f, p in vis:
            if o2 == 0:
                top.append((o3, o4, c, f, p))
            else:
                groups.setdefault(o2, []).append((o3, o4, c, f, p))
        # group titles: N rows at (o2,0,0)
        seen_g = set()
        for o2, o3, o4, c, f, p in vis:
            if o2 != 0 and o3 == 0 and o4 == 0 and o2 not in seen_g:
                gname[o2] = c
                seen_g.add(o2)

        for o3, o4, c, f, p in top:
            if f == "-" or c == "-":
                ap("      " + "-" * 40)
                continue
            tag = FLAG_DESC.get(f, f or "?")
            ap(f"      {c:<42} [{tag:<8}] rights={fmt_rights(p)}")
        for o2 in sorted(groups):
            title = gname.get(o2, f"(group {o2})")
            ap(f"    [G] {title}")
            items = sorted(groups[o2], key=lambda t: (t[0], t[1]))
            for o3, o4, c, f, p in items:
                if f == "-" or c == "-":
                    ap("        " + "-" * 36)
                    continue
                if o4 == 0:
                    tag = FLAG_DESC.get(f, f or "?")
                    ap(f"        {c:<40} [{tag:<8}] rights={fmt_rights(p)}")
                else:
                    tag = FLAG_DESC.get(f, f or "?")
                    ap(f"            > {c:<36} [{tag:<8}] rights={fmt_rights(p)}")
        ap("")

    ap("=" * w)
    ap("SUMMARY")
    ap(f"  modules          : {len(order)}")
    ap(f"  entry forms (E)  : {total_e}")
    ap(f"  reports (R)      : {total_r}")
    ap(f"  hidden rows (V)  : {total_hidden}  (VB6 me menu me dikhte hi nahi)")
    ap("=" * w)

    # hidden appendix
    if total_hidden:
        ap("")
        ap("APPENDIX: HIDDEN (Flag='V') ROWS — module-wise")
        ap("=" * w)
        for idx, o1 in enumerate(order, 1):
            m = modules[o1]
            if not m["hidden"]:
                continue
            ap(f"  {modules[o1]['name'] or o1}:")
            for o2, o3, o4, c, f, p in m["hidden"]:
                pos = f"{o2}.{o3}.{o4}"
                ap(f"      {c:<42} @Opt2/3/4={pos:<9} rights={fmt_rights(p)}")

    with open(OUT, "w", encoding="utf-8") as fh:
        fh.write("\n".join(lines) + "\n")
    print(f"written: {OUT}")
    print(f"modules={len(order)} E={total_e} R={total_r} hidden={total_hidden}")


if __name__ == "__main__":
    main()
