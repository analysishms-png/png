"""QA-001 evidence collector (read-only).

Settles two questions from .claude/plan/fdpostchg-room-posting-parity.md §14:
  Q1  Real RC DocId format (does it contain 'D'? layout of pads/prefix/serial?)
  Q2  string-Execute vs recordset persistence (literal batch vs sp_executesql)

Read-only: plain SELECTs against the live Moondata2627. No mutation.
"""
from __future__ import annotations

import re
import sys

from HMS_py.core import db


def q(sql, args=()):
    cn = db.connect()
    try:
        return db.query(sql, args, cn=cn)
    finally:
        cn.close()


def main() -> int:
    print("=== server/databases ===")
    try:
        for r in q("SELECT @@SERVERNAME, @@VERSION"):
            print(r)
        for r in q("SELECT name, database_id FROM sys.databases ORDER BY name"):
            print("  db:", r[0])
    except Exception as e:
        print("  sys.databases unavailable:", e)

    print("\n=== Q1a: Voucher_Prefix RC row ===")
    try:
        for r in q(
            "SELECT V_Type, Date_From, Site_Code, LogSite_Code, Prefix, "
            "Start_Srl_No FROM Voucher_Prefix WHERE V_Type = 'RC'"
        ):
            print("  ", r)
    except Exception as e:
        print("  err:", e)

    print("\n=== Q1b: live RC DocId sample (newest 25) ===")
    rows = q(
        "SELECT TOP 25 DocId, SNo, Vtype, VNo, Vdate, FolioNo, FolioNoDocid, "
        "Site_Code, VPrefix FROM PayCharge WHERE Vtype = 'RC' "
        "ORDER BY Vdate DESC, DocId DESC"
    )
    for r in rows:
        print("  ", r)

    print("\n=== Q1c: DocId shape stats (Vtype RC) ===")
    for r in q(
        "SELECT COUNT(*) AS n, MIN(LEN(DocId)) AS minlen, "
        "MAX(LEN(DocId)) AS maxlen, "
        "COUNT(DISTINCT LEN(DocId)) AS distinct_lens "
        "FROM PayCharge WHERE Vtype = 'RC'"
    ):
        print("  ", r)
    # character-class breakdown of the first 40 DocIds
    shapes = {}
    for (docid,) in q(
        "SELECT TOP 40 DocId FROM PayCharge WHERE Vtype='RC' ORDER BY Vdate DESC"
    ):
        d = docid or ""
        shape = re.sub(r"[0-9]", "9", re.sub(r"[A-Za-z]", "A", d))
        shapes[shape] = shapes.get(shape, 0) + 1
    for s, n in sorted(shapes.items(), key=lambda kv: -kv[1]):
        print(f"   shape x{n}: {s!r}")
    # does any RC DocId contain a 'D'?
    for r in q(
        "SELECT COUNT(*) FROM PayCharge WHERE Vtype='RC' "
        "AND DocId LIKE '%D%'"
    ):
        print("   RC DocIds containing literal 'D':", r[0])
    for r in q(
        "SELECT COUNT(*) FROM PayCharge WHERE Vtype='RC' "
        "AND DocId LIKE '%RC%'"
    ):
        print("   RC DocIds containing 'RC':", r[0])

    print("\n=== Q2: cached plan text for PayCharge INSERTs ===")
    try:
        plans = q(
            "SELECT TOP 50 st.text AS sql_text, cp.usecounts "
            "FROM sys.dm_exec_cached_plans cp "
            "CROSS APPLY sys.dm_exec_sql_text(cp.plan_handle) st "
            "WHERE st.text LIKE '%PayCharge%' "
            "AND (st.text LIKE '%INSERT%' OR st.text LIKE '%UPDATE%')"
        )
        if not plans:
            print("   (no PayCharge INSERT/UPDATE plans cached)")
        for text, usecounts in plans:
            t = (text or "").strip()
            tag = "sp_executesql/param" if "@" in t.split("\n")[0][:400] else "literal-batch"
            print(f"   [{tag}] usecounts={usecounts}")
            print("   ", t[:600].replace("\n", " | "))
            print("   ---")
    except Exception as e:
        print("   plan-cache query unavailable:", e)

    print("\n=== Q2b: recent RC insert timestamps (audit trail if any) ===")
    try:
        cols = q(
            "SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS "
            "WHERE TABLE_NAME='PayCharge' AND COLUMN_NAME LIKE '%Dt%' "
            "OR (TABLE_NAME='PayCharge' AND COLUMN_NAME LIKE '%Entry%')"
        )
        print("   entry/date columns:", [c[0] for c in cols])
        for r in q(
            "SELECT TOP 5 Vdate, U_EntDt, U_AE FROM PayCharge "
            "WHERE Vtype='RC' ORDER BY Vdate DESC"
        ):
            print("   ", r)
    except Exception as e:
        print("   err:", e)
    return 0


if __name__ == "__main__":
    sys.exit(main())
