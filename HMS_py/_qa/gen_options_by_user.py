"""Per-user module-wise options report: SA vs admin vs AMIR.

menuHelp user-specific rows se:
  1. Module-wise counts per user (Entry/Report/hidden) — position-keyed,
     NO dedupe (VB6 menu me har occurrence alag item hai, e.g. per-outlet
     'Sale Bill Entry' x4)
  2. Caption-level diffs vs SA template:
     - ABSENT : SA me hai, user ke rows me hi nahi (leaf user ko dikhegi hi nahi)
     - V-FLAG : user ke rows me Flag='V' (explicitly hidden)
     - RIGHTS : shared position pe Param_Str alag (AEDP vs A**P vs ***P ...)
Leaf key = (norm_caption, Opt2, Opt3, Opt4) — VB6-faithful.
Output: MENUHELP_OPTIONS_BY_USER.txt (project root)
"""
import os
import sys
from datetime import date

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")

from HMS_py.core import db, menu_help as mh

OUT = (r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"
       r"\MENUHELP_OPTIONS_BY_USER.txt")
USERS = ["SA", "admin", "AMIR"]


def load_rows(username: str):
    """User ke APNE rows (no fallback — raw rights comparison ke liye)."""
    try:
        rows = db.query(
            "SELECT Opt1, Opt2, Opt3, Opt4, [Option], Flag, Param_Str "
            "FROM menuHelp WHERE UserName = ? "
            "ORDER BY Opt1, Opt2, Opt3, Opt4, Code", (username,))
    except Exception:
        rows = []
    return [tuple(r) for r in rows]


def parse(rows):
    """-> (modules {opt1: {'name','leaves','hidden'}}, order)

    leaves: {(ncap, o2, o3, o4): (flag, param, caption)}
    hidden: set of same keys
    """
    modules = {}
    order = []
    for o1, o2, o3, o4, cap, flag, param in rows:
        o1, o2, o3, o4 = int(o1 or 0), int(o2 or 0), int(o3 or 0), int(o4 or 0)
        if o1 == 0:
            continue
        c = str(cap or "").strip()
        f = str(flag or "").strip().upper()
        p = str(param or "").strip()
        m = modules.setdefault(o1, {"name": "", "leaves": {}, "hidden": set()})
        if o1 not in order:
            order.append(o1)
        if o2 == 0 and o3 == 0 and o4 == 0 and f == "N" and c:
            if not m["name"]:
                m["name"] = c
            continue
        if not c or f in ("N", "-"):
            continue
        key = (mh._norm_caption(c), o2, o3, o4)
        if f == "V":
            m["hidden"].add(key)
        elif key not in m["leaves"]:
            m["leaves"][key] = (f, p, c)
    return modules, order


def counts(mods, o1):
    m = mods.get(o1)
    if not m:
        return None
    e = sum(1 for f, _, _ in m["leaves"].values() if f == "E")
    r = sum(1 for f, _, _ in m["leaves"].values() if f == "R")
    return e, r, len(m["hidden"])


def disp(key, cap):
    return f"{cap} @{key[1]}.{key[2]}.{key[3]}"


def main():
    data = {u: parse(load_rows(u)) for u in USERS}
    sa_mods, sa_order = data["SA"]
    name_of = {o1: (sa_mods.get(o1, {}).get("name") or f"bucket {o1}")
               for o1 in sa_order}
    for u in USERS:
        mods, order = data[u]
        for o1 in order:
            if mods[o1].get("name"):
                name_of.setdefault(o1, mods[o1]["name"])

    L = []
    ap = L.append
    W = 84
    ap("=" * W)
    ap("HMS MENU_HELP — PER-USER MODULE-WISE OPTIONS (SA vs admin vs AMIR)")
    ap(f"Generated: {date.today().isoformat()}   CompCode={mh._comp()}")
    ap("Counts position-keyed (no dedupe) — VB6 menu jaisa; E/R/V column me")
    ap("Entry/Report/Hidden. Leaf dikhega ya nahi user ke APNE rows se:")
    ap("ABSENT/V-FLAG = nahi dikhega, RIGHTS = dikhega par action restricted.")
    ap("=" * W)

    # ---- section 1: counts matrix --------------------------------------
    ap("")
    ap("SECTION 1: MODULE-WISE LEAF COUNTS (E/R/V)")
    ap("=" * W)
    ap(f"{'Module':<22}" + "".join(f"{u + ':E/R/V':>20}" for u in USERS))
    ap("-" * W)
    all_buckets = sorted(set().union(*[{o for o in data[u][0]} for u in USERS]))
    for o1 in all_buckets:
        cells = []
        for u in USERS:
            c = counts(data[u][0], o1)
            cells.append(f"{'-':>20}" if not c else f"{c[0]}/{c[1]}/{c[2]}".rjust(20))
        ap(f"{name_of.get(o1, f'bucket {o1}')[:21]:<22}" + "".join(cells))
    ap("-" * W)
    for u in USERS:
        mods, order = data[u]
        tot = [counts(mods, o1) for o1 in order]
        tot = [t for t in tot if t]
        ap(f"  {u:<8} total: E={sum(t[0] for t in tot)} "
           f"R={sum(t[1] for t in tot)} V={sum(t[2] for t in tot)}  "
           f"modules={len(order)}")

    # ---- section 2: per-user diffs vs SA -------------------------------
    for u in USERS[1:]:
        mods, _ = data[u]
        ap("")
        ap("=" * W)
        ap(f"SECTION 2: {u.upper()} vs SA — DIFFS")
        ap("=" * W)
        any_diff = False
        for o1 in sa_order:
            sa_m = sa_mods.get(o1)
            if not sa_m:
                continue
            u_m = mods.get(o1) or {"leaves": {}, "hidden": set(), "name": ""}
            sa_keys = set(sa_m["leaves"])
            u_keys = set(u_m["leaves"])
            absent = sa_keys - u_keys
            vflag = {k for k in absent if k in u_m["hidden"]}
            absent -= vflag
            rights = {k for k in (sa_keys & u_keys)
                      if sa_m["leaves"][k][1] != u_m["leaves"][k][1]}
            if not (absent or vflag or rights):
                continue
            any_diff = True
            ap("")
            ap(f"  [{name_of.get(o1, o1)}]")
            if vflag:
                ap(f"    V-FLAG (hidden) — {len(vflag)}:")
                for k in sorted(vflag):
                    ap(f"        {disp(k, sa_m['leaves'][k][2])}")
            if absent:
                ap(f"    ABSENT (row hi nahi) — {len(absent)}:")
                for k in sorted(absent):
                    ap(f"        {disp(k, sa_m['leaves'][k][2])}")
            if rights:
                ap(f"    RIGHTS (Param_Str alag) — {len(rights)}:")
                for k in sorted(rights):
                    sp = sa_m["leaves"][k][1] or "(blank=full)"
                    up = u_m["leaves"][k][1] or "(blank=full)"
                    ap(f"        {disp(k, sa_m['leaves'][k][2]):<52} "
                       f"SA={sp:<8} {u}={up}")
        if not any_diff:
            ap("  (koi diff nahi — SA jaisa hi)")

    ap("")
    ap("=" * W)
    ap("END OF REPORT")
    ap("=" * W)

    with open(OUT, "w", encoding="utf-8") as fh:
        fh.write("\n".join(L) + "\n")
    print(f"written: {OUT}")


if __name__ == "__main__":
    main()
