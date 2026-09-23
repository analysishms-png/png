"""Admin ke ABSENT Main Setup leaves restore (SA template se selective).

VB6 pattern (UserPermission.frm Copy-template): SA ke us leaf ka row
(Param_Str 'AEDP') admin me INSERT hota hai — baaki restrictions untouched.

ABSENT-only restore: jahan row hai (rights-tight) wahan kuch nahi badlega.
Backup: _qa/admin_restore_backup.txt. Idempotent (dry-run flag ke saath).
"""
import sys
from datetime import date

sys.path.insert(0, r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py")

from HMS_py.core import db, menu_help as mh

BACKUP = (r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy"
          r"\HMS_py\HMS_py\_qa\admin_restore_backup.txt")
USER = "admin"
MODULE = "Main Setup"
OPT1 = 12          # Main Setup bucket
DRY_RUN = "--apply" not in sys.argv


def main():
    comp = mh._comp()
    sa_rows = db.query(
        "SELECT Opt2, Opt3, Opt4, [Option], Flag, Param_Str, Module_Name, Code "
        "FROM menuHelp WHERE UserName='SA' AND CompCode=? AND Opt1=? "
        "ORDER BY Opt2, Opt3, Opt4, Code", (comp, OPT1))
    ad_rows = db.query(
        "SELECT Opt2, Opt3, Opt4, [Option], Flag, Param_Str, Code "
        "FROM menuHelp WHERE UserName=? AND CompCode=? AND Opt1=? "
        "ORDER BY Opt2, Opt3, Opt4, Code", (USER, comp, OPT1))

    # admin ke existing positions (kisi bhi caption) — ABSENT sirf wahan
    # jahan position hi nahi (VB6 rights model position-based hai)
    ad_pos = {(int(r[0]), int(r[1]), int(r[2])) for r in ad_rows}
    ad_caps = {mh._norm_caption(r[3]) for r in ad_rows}

    missing = []
    for r in sa_rows:
        o2, o3, o4, cap, flag, param, modname, code = r
        if flag in ("V", "D") or not str(cap or "").strip():
            continue  # hidden/blank rows copy nahi karte
        pos = (int(o2), int(o3), int(o4))
        ncap = mh._norm_caption(cap)
        # position-based absent (VB6-faithful); caption bhi nahi hai
        if pos not in ad_pos and ncap not in ad_caps:
            missing.append(tuple(r))

    print(f"{USER}: {MODULE} ABSENT leaves = {len(missing)} "
          f"({'DRY-RUN' if DRY_RUN else 'APPLY'})")

    with open(BACKUP, "w", encoding="utf-8") as fh:
        fh.write(f"# admin Main Setup restore backup {date.today().isoformat()}\n")
        fh.write(f"# existing admin Opt1=12 rows: {len(ad_rows)}\n")
        for r in ad_rows:
            fh.write(repr(tuple(r)) + "\n")

    if DRY_RUN:
        for o2, o3, o4, cap, flag, param, modname, code in missing[:60]:
            print(f"  would insert: ({OPT1},{o2},{o3},{o4}) {cap} [{flag}]")
        if len(missing) > 60:
            print(f"  ... +{len(missing) - 60} more")
        print("DRY_RUN_DONE (apply karne ke liye: python _qa/restore_admin_masters.py --apply)")
        return

    cn = db.connect()
    try:
        cur = cn.cursor()
        n = 0
        for o2, o3, o4, cap, flag, param, modname, code in missing:
            cur.execute(
                "INSERT INTO menuHelp (UserName, CompCode, Opt1, Opt2, Opt3, "
                "Opt4, [Option], Flag, Param_Str, Module_Name, Code) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
                (USER, comp, OPT1, int(o2), int(o3), int(o4),
                 str(cap), str(flag), str(param or "AEDP"),
                 str(modname or ""), int(code or 0)))
            n += 1
        cn.commit()
        print(f"inserted: {n} rows")
    except Exception:
        cn.rollback()
        raise
    finally:
        cn.close()
    mh.clear_cache()

    # verify
    ad2 = db.query(
        "SELECT COUNT(*) FROM menuHelp WHERE UserName=? AND CompCode=? AND Opt1=?",
        (USER, comp, OPT1))[0][0]
    print(f"post: admin Opt1=12 rows = {ad2}")
    print("RESTORE_OK")


if __name__ == "__main__":
    main()
