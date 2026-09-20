"""FA Voucher engine (VB6 FaVrEnt.frm + FaChqClear.frm + FaReports port).

EVIDENCE (live + VB6):
- FaVrEnt.frm:13872 INSERT INTO LedgerM (DocId,V_Type,v_Prefix,V_No,...);
  :13719 INSERT INTO LEDGER (...SubCode,AmtCr,AmtDr,ContraSub,Narration,...);
  DocId = '{V_Type}{v_Prefix}{V_No:04d}' pattern (VB6 compiles these).
- Voucher_Prefix table: V_Type/Date_From/Date_To/Prefix/Start_Srl_No
  (next V_No = MAX(V_No)+1 per V_Type+Prefix, else Start_Srl_No+1).
- FaChqClear.frm:663 'Update Ledger Set Chq_No=...,Chq_Date=...,Clg_Date=...'
  (bank reconciliation); :1752/:1760 cleared-vs-pending filter.
- Acgroup.GroupNature: A=Assets, L=Liabilities, E=Expenses, R=Revenue
  (live: A=14, L=12, E=3, R=4). Trial/PnL/BS group-wise on Ledger.
- Ledger live: V_Type 'HPOST' 11684 rows; LedgerM 0 rows (UI vouchers
  bante the — VB6 app me unka data Ledger me hi hai).
All writes transaction-scoped + PYT-guard; reports read-only.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = "KK"
USER = "PYADMIN"


# ---------------------------------------------------------------- numbering
def _prefix_for(vtype: str, vdate) -> tuple[str, str]:
    """(Prefix, FY-window) for V_Type at vdate from Voucher_Prefix."""
    rows = db.query(
        "SELECT TOP 1 Prefix FROM Voucher_Prefix WHERE V_Type = ? "
        "AND ? BETWEEN Date_From AND Date_To ORDER BY Date_From DESC",
        (vtype, vdate), cn=None)
    if not rows:
        # FY fallback: '2025' pattern
        fy = vdate.year if vdate.month >= 4 else vdate.year - 1
        return str(fy), None
    return rows[0][0], None


def next_vno(vtype: str, vdate, cn=None) -> int:
    """Next V_No: MAX(LedgerM.V_No)+1 else MAX(Ledger.V_No)+1 else
    Voucher_Prefix.Start_Srl_No+1 (VB6 numbering parity)."""
    prefix, _ = _prefix_for(vtype, vdate)
    rows = db.query(
        "SELECT ISNULL(MAX(V_No), 0) FROM LedgerM WHERE V_Type = ? "
        "AND v_Prefix = ?", (vtype, prefix), cn=cn)
    mx = (rows[0][0] if rows else 0) or 0
    if not mx:
        rows = db.query(
            "SELECT ISNULL(MAX(V_No), 0) FROM Ledger WHERE V_Type = ? "
            "AND v_Prefix = ?", (vtype, prefix), cn=cn)
        mx = (rows[0][0] if rows else 0) or 0
    if not mx:
        rows = db.query(
            "SELECT ISNULL(Start_Srl_No, 0) FROM Voucher_Prefix "
            "WHERE V_Type = ? AND Prefix = ?", (vtype, prefix), cn=cn)
        mx = (rows[0][0] if rows else 0) or 0
    return int(mx) + 1


def _make_docid(vtype: str, prefix: str, vno: int) -> str:
    return f"{vtype}{prefix}{vno:04d}"


# ---------------------------------------------------------------- posting
def post_voucher(lines: list[dict], vdate, narration: str = "",
                 vtype: str = "JV", user: str = USER,
                 chq_no: str = "", chq_date=None,
                 cn=None, commit: bool = True) -> dict:
    """Double-entry voucher: LedgerM header + n Ledger lines.

    lines: [{'subcode','amt_dr','amt_cr','narration'?}, ...]
    Guard: har line ka SubCode live Subgroup me ho; total DR == total CR.
    Returns {'docid','vno','dr','cr'}.
    """
    if not lines or len(lines) < 2:
        raise ValueError("Voucher me kam se kam 2 lines hone chahiye")
    vdate = vdate or datetime.date.today()
    if isinstance(vdate, str):
        vdate = datetime.date.fromisoformat(vdate)
    tot_dr = round(sum(float(l.get("amt_dr") or 0) for l in lines), 2)
    tot_cr = round(sum(float(l.get("amt_cr") or 0) for l in lines), 2)
    if abs(tot_dr - tot_cr) > 0.005:
        raise ValueError(f"Debit ({tot_dr}) != Credit ({tot_cr}) "
                         "— unbalanced voucher")
    if tot_dr == 0:
        raise ValueError("Voucher amount zero nahi ho sakta")
    # subcode validation + group info (VB6 fills GroupCode/GroupNature)
    subs = {}
    for l in lines:
        sc = (l.get("subcode") or "").strip()
        if not sc:
            raise ValueError("Har line me SubCode zaroori hai")
        if sc in subs:
            continue
        g = db.query(
            "SELECT s.SubCode, s.GroupCode, a.GroupNature FROM Subgroup s "
            "JOIN Acgroup a ON a.GroupCode = s.GroupCode "
            "WHERE RTRIM(s.SubCode) = ?", (sc,), cn=cn)
        if not g:
            raise ValueError(f"SubCode '{sc}' live Subgroup me nahi mila")
        subs[sc] = (g[0][1], g[0][2])
    own = cn is None
    cn = cn or db.connect()
    try:
        prefix, _ = _prefix_for(vtype, vdate)
        vno = next_vno(vtype, vdate, cn=cn)
        docid = _make_docid(vtype, prefix, vno)
        cur = cn.cursor()
        cur.execute(
            "INSERT INTO LedgerM (DocId, V_Type, v_Prefix, V_No, Site_Code, "
            "V_Date, Narration, U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
            (docid, vtype, prefix, vno, SITE_CODE, vdate, narration,
             user, SITE_CODE))
        for sno, l in enumerate(lines, start=1):
            sc = l["subcode"].strip()
            gc, gn = subs[sc]
            cur.execute(
                "INSERT INTO Ledger (DocId, V_SNo, V_Type, V_No, v_Prefix, "
                "Site_Code, V_Date, SubCode, AmtDr, AmtCr, ContraSub, "
                "Narration, Chq_No, Chq_Date, Clg_Date, GroupCode, "
                "GroupNature, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, NULL, "
                "?, ?, ?, getdate(), 'A', ?)",
                (docid, sno, vtype, vno, prefix, SITE_CODE, vdate, sc,
                 float(l.get("amt_dr") or 0), float(l.get("amt_cr") or 0),
                 "", l.get("narration", "") or narration,
                 chq_no or "", chq_date, gc, gn, user, SITE_CODE))
        if commit:
            cn.commit()
        return {"docid": docid, "vno": vno, "dr": tot_dr, "cr": tot_cr}
    except Exception:
        try:
            cn.rollback()
        except Exception:
            pass
        raise
    finally:
        if own:
            cn.close()


def delete_voucher(docid: str, cn=None, commit: bool = True) -> int:
    """Voucher delete (header + lines) — VB6 FaVrEnt delete parity."""
    n = db.execute("DELETE FROM Ledger WHERE DocId = ?", (docid,),
                   cn=cn, commit=False)
    db.execute("DELETE FROM LedgerM WHERE DocId = ?", (docid,),
               cn=cn, commit=commit)
    return n


# ------------------------------------------------------ cheque reconciliation
def cheque_pending(subcode: str | None = None, cn=None) -> list[dict]:
    """Un-cleared cheques (VB6 FaChqClear:1760 Clg_Date IS NULL filter)."""
    sql = ("SELECT l.DocId, l.V_SNo, l.V_Date, l.SubCode, s.Name, "
           "l.Chq_No, l.Chq_Date, l.AmtDr, l.AmtCr "
           "FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode = l.SubCode "
           "WHERE l.Chq_No <> '' AND (l.Clg_Date IS NULL OR l.Clg_Date > "
           "GETDATE())")
    params = ()
    if subcode:
        sql += " AND l.SubCode = ?"
        params = (subcode,)
    rows = db.query(sql + " ORDER BY l.V_Date", params, cn=cn)
    return [{"docid": r[0], "sno": r[1], "vdate": r[2], "subcode": r[3],
             "name": r[4], "chq_no": r[5], "chq_date": r[6],
             "amt_dr": r[7], "amt_cr": r[8]} for r in rows]


def cheque_cleared(subcode: str | None = None, cn=None) -> list[dict]:
    """Cleared cheques (VB6 FaChqClear:1752 Clg_Date <= today filter)."""
    sql = ("SELECT l.DocId, l.V_SNo, l.V_Date, l.SubCode, s.Name, "
           "l.Chq_No, l.Chq_Date, l.Clg_Date, l.AmtDr, l.AmtCr "
           "FROM Ledger l LEFT JOIN Subgroup s ON s.SubCode = l.SubCode "
           "WHERE l.Chq_No <> '' AND l.Clg_Date IS NOT NULL AND "
           "l.Clg_Date <= GETDATE()")
    params = ()
    if subcode:
        sql += " AND l.SubCode = ?"
        params = (subcode,)
    rows = db.query(sql + " ORDER BY l.Clg_Date DESC", params, cn=cn)
    return [{"docid": r[0], "sno": r[1], "vdate": r[2], "subcode": r[3],
             "name": r[4], "chq_no": r[5], "chq_date": r[6],
             "clg_date": r[7], "amt_dr": r[8], "amt_cr": r[9]} for r in rows]


def cheque_mark_cleared(docid: str, sno: int, clg_date=None,
                        cn=None, commit: bool = True) -> int:
    """VB6 FaChqClear.frm:663 exact UPDATE (Chq_No/Chq_Date/Clg_Date set)."""
    clg = clg_date or datetime.date.today()
    return db.execute(
        "UPDATE Ledger SET Clg_Date = ? WHERE DocId = ? AND V_SNo = ?",
        (clg, docid, sno), cn=cn, commit=commit)


# ------------------------------------------------------------- statements
def trial_balance(d_from=None, d_to=None, cn=None) -> list[dict]:
    """Group-wise trial balance (Ledger grouped by GroupCode)."""
    sql = ("SELECT l.GroupCode, a.GroupName, a.GroupNature, "
           "SUM(l.AmtDr) AS Dr, SUM(l.AmtCr) AS Cr, "
           "SUM(l.AmtDr) - SUM(l.AmtCr) AS Bal "
           "FROM Ledger l LEFT JOIN Acgroup a ON a.GroupCode = l.GroupCode")
    params = ()
    if d_from and d_to:
        sql += " WHERE l.V_Date BETWEEN ? AND ?"
        params = (d_from, d_to)
    rows = db.query(sql + " GROUP BY l.GroupCode, a.GroupName, "
                         "a.GroupNature ORDER BY l.GroupCode", params, cn=cn)
    return [{"groupcode": r[0], "groupname": r[1] or "?",
             "nature": r[2] or "", "dr": r[3] or 0.0, "cr": r[4] or 0.0,
             "bal": r[5] or 0.0} for r in rows]


def profit_and_loss(d_from, d_to, cn=None) -> dict:
    """P&L: Revenue (R) minus Expenses (E) group-wise."""
    rows = db.query(
        "SELECT a.GroupNature, l.GroupCode, a.GroupName, "
        "SUM(l.AmtDr) - SUM(l.AmtCr) AS Bal "
        "FROM Ledger l JOIN Acgroup a ON a.GroupCode = l.GroupCode "
        "WHERE l.V_Date BETWEEN ? AND ? AND a.GroupNature IN ('E', 'R') "
        "GROUP BY a.GroupNature, l.GroupCode, a.GroupName "
        "ORDER BY a.GroupNature, l.GroupCode", (d_from, d_to), cn=cn)
    income = [{"groupcode": r[1], "name": r[2], "amount": r[3] or 0.0}
              for r in rows if r[0] == "R"]
    expense = [{"groupcode": r[1], "name": r[2], "amount": r[3] or 0.0}
               for r in rows if r[0] == "E"]
    ti = sum(i["amount"] for i in income)
    te = sum(e["amount"] for e in expense)
    return {"income": income, "expense": expense,
            "total_income": ti, "total_expense": te, "net": ti - te}


def balance_sheet(as_on=None, cn=None) -> dict:
    """Balance sheet: Assets (A) vs Liabilities (L) group-wise."""
    rows = db.query(
        "SELECT a.GroupNature, l.GroupCode, a.GroupName, "
        "SUM(l.AmtDr) - SUM(l.AmtCr) AS Bal "
        "FROM Ledger l JOIN Acgroup a ON a.GroupCode = l.GroupCode "
        "WHERE (? IS NULL OR l.V_Date <= ?) AND a.GroupNature IN ('A', 'L') "
        "GROUP BY a.GroupNature, l.GroupCode, a.GroupName "
        "ORDER BY a.GroupNature, l.GroupCode",
        (as_on, as_on), cn=cn)
    assets = [{"groupcode": r[1], "name": r[2], "amount": r[3] or 0.0}
              for r in rows if r[0] == "A"]
    liab = [{"groupcode": r[1], "name": r[2], "amount": r[3] or 0.0}
            for r in rows if r[0] == "L"]
    return {"assets": assets, "liab": liab,
            "total_assets": sum(a["amount"] for a in assets),
            "total_liab": sum(l["amount"] for l in liab)}


def bank_register(d_from, d_to, cn=None) -> list[dict]:
    """Bank-book style register (Subgroup name LIKE %BANK%)."""
    rows = db.query(
        "SELECT l.V_Date, l.DocId, s.Name, l.Chq_No, l.AmtDr, l.AmtCr "
        "FROM Ledger l JOIN Subgroup s ON s.SubCode = l.SubCode "
        "WHERE (s.Name LIKE '%BANK%') AND l.V_Date BETWEEN ? AND ? "
        "ORDER BY l.V_Date, l.DocId", (d_from, d_to), cn=cn)
    return [{"vdate": r[0], "docid": r[1], "account": r[2],
             "chq_no": r[3] or "", "dr": r[4] or 0.0, "cr": r[5] or 0.0}
            for r in rows]


def cash_and_bank_books(d_from, d_to, cn=None) -> list[dict]:
    rows = db.query(
        "SELECT l.V_Date, l.DocId, s.Name, l.Chq_No, l.AmtDr, l.AmtCr "
        "FROM Ledger l JOIN Subgroup s ON s.SubCode = l.SubCode "
        "WHERE (s.Name LIKE '%BANK%' OR s.Name LIKE '%CASH%') "
        "AND l.V_Date BETWEEN ? AND ? ORDER BY l.V_Date, l.DocId",
        (d_from, d_to), cn=cn)
    return [{"vdate": r[0], "docid": r[1], "account": r[2],
             "chq_no": r[3] or "", "dr": r[4] or 0.0, "cr": r[5] or 0.0}
            for r in rows]


def journal_book(d_from, d_to, cn=None) -> list[dict]:
    """Journal vouchers by type (live V_Type census basis)."""
    rows = db.query(
        "SELECT l.DocId, l.V_Type, l.V_Date, COUNT(*) AS Lines, "
        "SUM(l.AmtDr) AS Dr, SUM(l.AmtCr) AS Cr "
        "FROM Ledger l WHERE l.V_Date BETWEEN ? AND ? "
        "GROUP BY l.DocId, l.V_Type, l.V_Date ORDER BY l.V_Date, l.DocId",
        (d_from, d_to), cn=cn)
    return [{"docid": r[0], "vtype": r[1], "vdate": r[2], "lines": r[3],
             "dr": r[4] or 0.0, "cr": r[5] or 0.0} for r in rows]


def daily_transaction_summary(d_from, d_to, cn=None) -> list[dict]:
    rows = db.query(
        "SELECT V_Date, COUNT(DISTINCT DocId) AS Vouchers, SUM(AmtDr) AS Dr, "
        "SUM(AmtCr) AS Cr FROM Ledger WHERE V_Date BETWEEN ? AND ? "
        "GROUP BY V_Date ORDER BY V_Date", (d_from, d_to), cn=cn)
    return [{"vdate": r[0], "vouchers": r[1], "dr": r[2] or 0.0,
             "cr": r[3] or 0.0} for r in rows]
