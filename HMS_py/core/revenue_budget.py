"""Revenue Group Setting + Budget Entry (VB6: RevenueGroup + BudgetEntry port).

Revenue Group: Maps revenue codes to account groups.
Budget: CRUD for Budget table (FromDate, ToDate, SrNo, Amount per group).
"""
from __future__ import annotations
from HMS_py.core import db

SITE_CODE = "KK"
USER = "PYADMIN"


# ============================================================
# Revenue Group Setting
# ============================================================
def revenue_group_list(cn=None) -> list[dict]:
    try:
        rows = db.query(
            "SELECT RevCode, RevName, GroupCode, GroupNature "
            "FROM RevenueGroup ORDER BY RevCode", cn=cn)
    except Exception:
        return []
    return [{"rev_code": r[0] or "", "rev_name": (r[1] or "").strip(),
             "group_code": r[2] or "", "group_nature": r[3] or ""}
            for r in rows]


def revenue_group_insert(rec: dict, cn=None, commit: bool = True) -> int:
    try:
        return db.execute(
            "INSERT INTO RevenueGroup (RevCode, RevName, GroupCode, GroupNature, "
            "U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, ?, ?, ?, getdate(), 'A', ?)",
            (rec["rev_code"], rec.get("rev_name", ""),
             rec.get("group_code", ""), rec.get("group_nature", ""),
             USER, SITE_CODE), cn=cn, commit=commit)
    except Exception:
        return 0


def revenue_group_delete(rev_code: str, cn=None, commit: bool = True) -> int:
    try:
        return db.execute(
            "DELETE FROM RevenueGroup WHERE RevCode = ?", (rev_code,),
            cn=cn, commit=commit)
    except Exception:
        return 0


# ============================================================
# Budget Entry
# ============================================================
def budget_list(cn=None) -> list[dict]:
    rows = db.query(
        "SELECT FromDate, ToDate, SrNo, GroupCode, Amount, "
        "U_Name, U_EntDt FROM Budget ORDER BY FromDate, SrNo",
        cn=cn)
    return [{"from_date": r[0], "to_date": r[1], "sr_no": r[2],
             "group_code": r[3] or "", "amount": float(r[4] or 0),
             "u_name": r[5] or ""} for r in rows]


def budget_insert(rec: dict, cn=None, commit: bool = True) -> int:
    return db.execute(
        "INSERT INTO Budget (FromDate, ToDate, SrNo, GroupCode, Amount, "
        "U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["from_date"], rec["to_date"], rec.get("sr_no", 0),
         rec.get("group_code", ""), rec.get("amount", 0),
         USER, SITE_CODE), cn=cn, commit=commit)


def budget_delete(from_date, to_date, sr_no: int,
                  cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM Budget WHERE FromDate = ? AND ToDate = ? AND SrNo = ?",
        (from_date, to_date, sr_no), cn=cn, commit=commit)
