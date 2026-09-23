"""All-users per-user menuHelp options report (SA template = baseline).

Har menuHelp user ke apne rows se:
  - module-wise E/R/V counts
  - SA-diff summary: ABSENT / V-FLAG / RIGHTS counts (module-wise total)
Leaf key = (norm_caption, Opt2, Opt3, Opt4) — VB6-faithful (no dedupe).
Output: MENUHELP_OPTIONS_ALL_USERS.txt (project root)
"""
import os
import sys
from datetime import date

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")

from HMS_py.core import db, menu_help as mh

OUT = (r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"
       r"\MENUHELP_OPTIONS_ALL_USERS.txt")


def load_rows(username: str):
    try:
        return [tuple(r) for r in db.query(
            "SELECT Opt1, Opt2, Opt3, Opt4, [Option], Flag, Param_Str "
            "FROM menuHelp WHERE UserName = ? "
            "ORDER BY Opt1, Opt2, Opt3, Opt4, Code", (username,))]
    except Exception:
        return []


def parse(rows):
    modules, order = {}, []
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
            m["leaves"][key] = (f, p)
    return modules, order


def er_v(m):
    if not m:
        return (0, 0, 0)
    return (sum(1 for f, _ in m["leaves"].values() if f == "E"),
            sum(1 for f, _ in m["leaves"].values() if f == "R"),
            len(m["hidden"]))


def main():
    users = []
    try:
        users = [str(r[0]).strip() for r in db.query(
            "SELECT DISTINCT UserName FROM menuHelp WHERE UserName IS NOT NULL "
            "ORDER BY UserName")]
    except Exception:
        pass
    if "SA" in users:
        users.remove("SA")
        users.insert(0, "SA")

    data = {u: parse(load_rows(u)) for u in users}
    sa_mods, sa_order = data.get("SA", ({}, []))
    name_of = {o1: (sa_mods.get(o1, {}).get("name") or f"bucket {o1}")
               for o1 in sa_order}
    for u in users:
        mods, order = data[u]
        for o1 in order:
            if mods[o1].get("name"):
                name_of.setdefault(o1, mods[o1]["name"])
    all_buckets = sorted({o for u in users for o in data[u][0]})

    L = []
    ap = L.append
    W = 96
    ap("=" * W)
    ap("HMS MENU_HELP — ALL USERS OPTIONS REPORT (SA = template baseline)")
    ap(f"Generated: {date.today().isoformat()}   CompCode={mh._comp()}   "
       f"users={len(users)}")
    ap("Leaf = (caption, Opt2, Opt3, Opt4) — position-keyed, no dedupe.")
    ap("=" * W)

    # ---- matrix ---------------------------------------------------------
    ap("")
    ap("SECTION 1: MODULE-WISE E/R/V MATRIX (rows=modules, cols=users)")
    ap("=" * W)
    ap(f"{'Module':<20}" + "".join(f"{u[:9]:>10}" for u in users))
    ap("-" * W)
    for o1 in all_buckets:
        cells = []
        for u in users:
            m = data[u][0].get(o1)
            e, r, v = er_v(m)
            cells.append(f"{e}/{r}/{v}".rjust(10) if (e or r or v) else "-".rjust(10))
        ap(f"{name_of.get(o1, f'bucket {o1}')[:19]:<20}" + "".join(cells))
    ap("-" * W)
    tot = ap(f"{'TOTAL (E/R/V)':<20}" + "".join(
        (lambda t: f"{t[0]}/{t[1]}/{t[2]}".rjust(10))(
            (sum(er_v(data[u][0].get(o1))[0] for o1 in all_buckets),
             sum(er_v(data[u][0].get(o1))[1] for o1 in all_buckets),
             sum(er_v(data[u][0].get(o1))[2] for o1 in all_buckets)))
        for u in users))

    # ---- per-user diff summary (SA baseline) -----------------------------
    ap("")
    ap("SECTION 2: PER-USER SA-DIFF SUMMARY (ABSENT / V-FLAG / RIGHTS)")
    ap("=" * W)
    for u in users:
        if u == "SA":
            continue
        mods, _ = data[u]
        n_abs = n_v = n_r = 0
        for o1 in sa_order:
            sa_m = sa_mods.get(o1)
            if not sa_m:
                continue
            u_m = mods.get(o1) or {"leaves": {}, "hidden": set()}
            sa_keys = set(sa_m["leaves"])
            u_keys = set(u_m["leaves"])
            absent = sa_keys - u_keys
            n_v += len({k for k in absent if k in u_m["hidden"]})
            n_abs += len(absent - u_m["hidden"])
            n_r += len({k for k in (sa_keys & u_keys)
                        if sa_m["leaves"][k][1] != u_m["leaves"][k][1]})
        e, r, v = tuple(sum(er_v(mods.get(o1)) for o1 in []),) if False else \
            (sum(er_v(mods.get(o1))[0] for o1 in all_buckets),
             sum(er_v(mods.get(o1))[1] for o1 in all_buckets),
             sum(er_v(mods.get(o1))[2] for o1 in all_buckets))
        ap(f"  {u:<12} leaves E/R/V={e}/{r}/{v}   "
           f"SA-diffs: absent={n_abs} v-flag={n_v} rights={n_r}")

    # ---- per-module diffs har user ke liye (compact) ---------------------
    ap("")
    ap("SECTION 3: MODULE-WISE DIFF COUNTS (absent/v-flag/rights)")
    ap("=" * W)
    for u in users:
        if u == "SA":
            continue
        mods, _ = data[u]
        ap(f"  {u}:")
        for o1 in sa_order:
            sa_m = sa_mods.get(o1)
            if not sa_m:
                continue
            u_m = mods.get(o1) or {"leaves": {}, "hidden": set()}
            sa_keys = set(sa_m["leaves"])
            u_keys = set(u_m["leaves"])
            absent = sa_keys - u_keys
            nv = len({k for k in absent if k in u_m["hidden"]})
            na = len(absent - u_m["hidden"])
            nr = len({k for k in (sa_keys & u_keys)
                      if sa_m["leaves"][k][1] != u_m["leaves"][k][1]})
            if na or nv or nr:
                ap(f"      {name_of.get(o1, o1):<18} absent={na:<4} "
                   f"v={nv:<3} rights={nr}")
        ap("")

    ap("=" * W)
    ap("END OF REPORT")
    ap("=" * W)

    with open(OUT, "w", encoding="utf-8") as fh:
        fh.write("\n".join(L) + "\n")
    print(f"written: {OUT}")
    print(f"users={len(users)}")


if __name__ == "__main__":
    main()
