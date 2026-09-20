"""Finance Ledger Operations (VB6: FaLedgerAdj, FaLedgerRef, FaLedgerTDS, etc).

Core accounting engine tables:
- LEDGERADJ: Ledger adjustment entries (DocId1/V_SNo1 <-> DocId2/V_SNo2 pairing)
- LEDGERREF: Ledger reference tracking (ageing/bill-wise tracking)
- LEDGERTDS: TDS posting per voucher
- SUBGROUPCURRBAL: Current balance per subgroup (SubCode+LogSite_Code PK)
- ACGROUPCURRBAL: Current balance per account group (GroupCode+LogSite_Code PK)
- Budget: Budget master (FromDate+ToDate+SrNo PK)
- VOUCHER_Prefix: Voucher serial prefixes (V_Type+Date_From+Site_Code PK)
- Voucher_Include: Voucher type include rules (V_Type+GroupCode PK)
- Voucher_Exclude: Voucher type exclude rules (V_Type+GroupCode PK)
- LastVoucher: Last voucher tracking per user+vtype
- LedgerLog: Ledger audit log (29 cols, detail level)
- LedgerMLog: Ledger master audit log (13 cols, header level)

Schema: verified from live KailashData2526 DB.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = "KK"
USER = "PYADMIN"


# ============================================================
# LEDGERADJ - Ledger Adjustment Entries
# PK: DocId1 + V_SNo1 + DocId2 + V_SNo2 + Site_Code
# ============================================================
def _map_ledgeradj(r) -> dict:
    try:
        return {
            "docid1": r.DocId1 or "", "v_sno1": r.V_SNo1 or 0,
            "docid2": r.DocId2 or "", "v_sno2": r.V_SNo2 or 0,
            "cr": float(r.Cr or 0), "subcode": r.SubCode or "",
            "name": (r.Name or "").strip(),
            "agrefno": r.AgRefNo or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        d1, s1, d2, s2, cr, sc, nm, ar, un, _, uae = r[:11]
        return {
            "docid1": d1 or "", "v_sno1": s1 or 0,
            "docid2": d2 or "", "v_sno2": s2 or 0,
            "cr": float(cr or 0), "subcode": sc or "",
            "name": (nm or "").strip(),
            "agrefno": ar or "",
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate_ledgeradj(rec: dict):
    if not rec.get("docid1", "").strip():
        raise ValueError("DocId1 zaroori hai")
    if not rec.get("docid2", "").strip():
        raise ValueError("DocId2 zaroori hai")
    if not rec.get("subcode", "").strip():
        raise ValueError("SubCode zaroori hai")


def ledgeradj_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} DocId1, V_SNo1, DocId2, V_SNo2, Cr, "
        "SubCode, Name, AgRefNo, U_Name, U_EntDt, U_AE "
        "FROM LEDGERADJ ORDER BY DocId1", cn=cn)
    return [_map_ledgeradj(r) for r in rows]


def ledgeradj_get(docid1: str, sno1: int, docid2: str, sno2: int,
                  cn=None) -> dict | None:
    rows = db.query(
        "SELECT DocId1, V_SNo1, DocId2, V_SNo2, Cr, SubCode, Name, "
        "AgRefNo, U_Name, U_EntDt, U_AE "
        "FROM LEDGERADJ WHERE DocId1 = ? AND V_SNo1 = ? "
        "AND DocId2 = ? AND V_SNo2 = ?",
        (docid1, sno1, docid2, sno2), cn=cn)
    return _map_ledgeradj(rows[0]) if rows else None


def ledgeradj_insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate_ledgeradj(rec)
    return db.execute(
        "INSERT INTO LEDGERADJ (DocId1, V_SNo1, DocId2, V_SNo2, Cr, "
        "SubCode, Name, AgRefNo, U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?)",
        (rec["docid1"], rec["v_sno1"], rec["docid2"], rec["v_sno2"],
         float(rec.get("cr") or 0), rec["subcode"], rec.get("name", ""),
         rec.get("agrefno", ""), USER, SITE_CODE, SITE_CODE),
        cn=cn, commit=commit)


def ledgeradj_delete(docid1: str, sno1: int, docid2: str, sno2: int,
                     cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM LEDGERADJ WHERE DocId1 = ? AND V_SNo1 = ? "
        "AND DocId2 = ? AND V_SNo2 = ?",
        (docid1, sno1, docid2, sno2), cn=cn, commit=commit)


# ============================================================
# LEDGERREF - Ledger Reference Tracking (bill-wise ageing)
# PK: Id (identity)
# ============================================================
def _map_ledgerref(r) -> dict:
    try:
        return {
            "id": r.Id, "docid": r.DocId or "", "v_sno": r.V_SNo or 0,
            "dr": float(r.Dr or 0), "cr": float(r.Cr or 0),
            "subcode": r.SubCode or "",
            "due_date": r.DueDate, "agrefno": r.AgRefNo or "",
            "agref_type": r.AgRefType or "", "v_date": r.V_Date,
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        i, d, s, dr, cr, sc, un, _, uae, dd, ar, at, vd = r[:12]
        return {
            "id": i, "docid": d or "", "v_sno": s or 0,
            "dr": float(dr or 0), "cr": float(cr or 0),
            "subcode": sc or "",
            "due_date": dd, "agrefno": ar or "",
            "agref_type": at or "", "v_date": vd,
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate_ledgerref(rec: dict):
    if not rec.get("docid", "").strip():
        raise ValueError("DocId zaroori hai")
    if not rec.get("subcode", "").strip():
        raise ValueError("SubCode zaroori hai")


def ledgerref_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} Id, DocId, V_SNo, Dr, Cr, SubCode, "
        "U_Name, U_EntDt, U_AE, DueDate, AgRefNo, AgRefType, V_Date "
        "FROM LEDGERREF ORDER BY Id", cn=cn)
    return [_map_ledgerref(r) for r in rows]


def ledgerref_get(id: int, cn=None) -> dict | None:
    rows = db.query(
        "SELECT Id, DocId, V_SNo, Dr, Cr, SubCode, U_Name, U_EntDt, "
        "U_AE, DueDate, AgRefNo, AgRefType, V_Date "
        "FROM LEDGERREF WHERE Id = ?", (id,), cn=cn)
    return _map_ledgerref(rows[0]) if rows else None


def ledgerref_search(subcode: str, cn=None, limit: int = 200) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} Id, DocId, V_SNo, Dr, Cr, SubCode, "
        "U_Name, U_EntDt, U_AE, DueDate, AgRefNo, AgRefType, V_Date "
        "FROM LEDGERREF WHERE SubCode = ? ORDER BY V_Date DESC",
        (subcode,), cn=cn)
    return [_map_ledgerref(r) for r in rows]


def ledgerref_insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate_ledgerref(rec)
    return db.execute(
        "INSERT INTO LEDGERREF (DocId, V_SNo, Dr, Cr, SubCode, "
        "U_Name, U_EntDt, U_AE, DueDate, AgRefNo, AgRefType, V_Date, "
        "Site_Code, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?, ?, ?, ?)",
        (rec["docid"], rec.get("v_sno", 0), float(rec.get("dr") or 0),
         float(rec.get("cr") or 0), rec["subcode"], USER,
         rec.get("due_date"), rec.get("agrefno", ""),
         rec.get("agref_type", ""), rec.get("v_date"),
         SITE_CODE, SITE_CODE),
        cn=cn, commit=commit)


def ledgerref_delete(id: int, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM LEDGERREF WHERE Id = ?", (id,), cn=cn, commit=commit)


# ============================================================
# LEDGERTDS - TDS Posting Per Voucher
# PK: DocId + V_SNo + Site_Code + TDSDocId + TDSV_SNo
# ============================================================
def _map_ledgertds(r) -> dict:
    try:
        return {
            "docid": r.DocId or "", "v_sno": r.V_SNo or 0,
            "v_prefix": r.v_Prefix or "", "v_date": r.V_DATE,
            "tdscode": r.TDSCode or "", "tdsdrcode": r.TDSDrCode or "",
            "tdsyn": r.TDSYN or "", "onamt": float(r.ONAMT or 0),
            "tds": float(r.TDS or 0), "tdsamt": float(r.TDSAMT or 0),
            "tdspost": r.TDSPOST or "",
            "tds_docid": r.TDSDocId or "", "tds_v_sno": r.TDSV_SNo or 0,
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        d, s, vp, vd, tc, tdc, ty, oa, t, ta, tp, td, ts, un, _, uae = r
        return {
            "docid": d or "", "v_sno": s or 0,
            "v_prefix": vp or "", "v_date": vd,
            "tdscode": tc or "", "tdsdrcode": tdc or "",
            "tdsyn": ty or "", "onamt": float(oa or 0),
            "tds": float(t or 0), "tdsamt": float(ta or 0),
            "tdspost": tp or "",
            "tds_docid": td or "", "tds_v_sno": ts or 0,
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate_ledgertds(rec: dict):
    if not rec.get("docid", "").strip():
        raise ValueError("DocId zaroori hai")
    if not rec.get("tds_docid", "").strip():
        raise ValueError("TDSDocId zaroori hai")


def ledgertds_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} DocId, V_SNo, Site_Code, v_Prefix, V_DATE, "
        "TDSCode, TDSDrCode, TDSYN, ONAMT, TDS, TDSAMT, TDSPOST, "
        "TDSDocId, TDSV_SNo, U_Name, U_EntDt, U_AE "
        "FROM LEDGERTDS ORDER BY DocId, V_SNo", cn=cn)
    return [_map_ledgertds(r) for r in rows]


def ledgertds_get(docid: str, sno: int, cn=None) -> dict | None:
    rows = db.query(
        "SELECT DocId, V_SNo, Site_Code, v_Prefix, V_DATE, TDSCode, "
        "TDSDrCode, TDSYN, ONAMT, TDS, TDSAMT, TDSPOST, TDSDocId, "
        "TDSV_SNo, U_Name, U_EntDt, U_AE "
        "FROM LEDGERTDS WHERE DocId = ? AND V_SNo = ?",
        (docid, sno), cn=cn)
    return _map_ledgertds(rows[0]) if rows else None


def ledgertds_insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate_ledgertds(rec)
    return db.execute(
        "INSERT INTO LEDGERTDS (DocId, V_SNo, Site_Code, v_Prefix, V_DATE, "
        "TDSCode, TDSDrCode, TDSYN, ONAMT, TDS, TDSAMT, TDSPOST, "
        "TDSDocId, TDSV_SNo, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["docid"], rec["v_sno"], SITE_CODE, rec.get("v_prefix", ""),
         rec.get("v_date"), rec.get("tdscode", ""), rec.get("tdsdrcode", ""),
         rec.get("tdsyn", ""), float(rec.get("onamt") or 0),
         float(rec.get("tds") or 0), float(rec.get("tdsamt") or 0),
         rec.get("tdspost", ""), rec["tds_docid"], rec["tds_v_sno"],
         USER, SITE_CODE),
        cn=cn, commit=commit)


def ledgertds_delete(docid: str, sno: int, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM LEDGERTDS WHERE DocId = ? AND V_SNo = ?",
        (docid, sno), cn=cn, commit=commit)


# ============================================================
# SUBGROUPCURRBAL - Current Balance Per SubGroup
# PK: LogSite_Code + SubCode + V_Date
# ============================================================
def _map_subgroupcurrbal(r) -> dict:
    try:
        return {
            "logsite": r.LogSite_Code or "", "subcode": r.SubCode or "",
            "v_date": r.V_Date, "groupcode": r.GroupCode or "",
            "curr_bal": float(r.Curr_Bal or 0),
            "site_code": r.Site_Code or "",
        }
    except AttributeError:
        ls, sc, vd, gc, cb, site = r
        return {
            "logsite": ls or "", "subcode": sc or "",
            "v_date": vd, "groupcode": gc or "",
            "curr_bal": float(cb or 0), "site_code": site or "",
        }


def subgroupcurrbal_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} LogSite_Code, SubCode, V_Date, GroupCode, "
        "Curr_Bal, Site_Code FROM SUBGROUPCURRBAL ORDER BY SubCode", cn=cn)
    return [_map_subgroupcurrbal(r) for r in rows]


def subgroupcurrbal_get(subcode: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT LogSite_Code, SubCode, V_Date, GroupCode, Curr_Bal, Site_Code "
        "FROM SUBGROUPCURRBAL WHERE SubCode = ? AND LogSite_Code = ?",
        (subcode, SITE_CODE), cn=cn)
    return _map_subgroupcurrbal(rows[0]) if rows else None


def subgroupcurrbal_upsert(rec: dict, cn=None, commit: bool = True) -> int:
    """Insert or update current balance (single-row per subcode+site)."""
    existing = subgroupcurrbal_get(rec.get("subcode", ""), cn=cn)
    if existing:
        return db.execute(
            "UPDATE SUBGROUPCURRBAL SET Curr_Bal = ?, V_Date = ?, GroupCode = ? "
            "WHERE SubCode = ? AND LogSite_Code = ?",
            (float(rec.get("curr_bal") or 0), rec.get("v_date"),
             rec.get("groupcode", ""), rec["subcode"], SITE_CODE),
            cn=cn, commit=commit)
    else:
        return db.execute(
            "INSERT INTO SUBGROUPCURRBAL (LogSite_Code, SubCode, V_Date, "
            "GroupCode, Curr_Bal, Site_Code) VALUES (?, ?, ?, ?, ?, ?)",
            (SITE_CODE, rec["subcode"], rec.get("v_date"),
             rec.get("groupcode", ""), float(rec.get("curr_bal") or 0),
             SITE_CODE), cn=cn, commit=commit)


def subgroupcurrbal_delete(subcode: str, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM SUBGROUPCURRBAL WHERE SubCode = ? AND LogSite_Code = ?",
        (subcode, SITE_CODE), cn=cn, commit=commit)


# ============================================================
# ACGROUPCURRBAL - Current Balance Per Account Group
# PK: LogSite_Code + GroupCode + V_Date
# ============================================================
def _map_acgroupcurrbal(r) -> dict:
    try:
        return {
            "logsite": r.LogSite_Code or "", "groupcode": r.GroupCode or "",
            "v_date": r.V_Date, "curr_bal": float(r.Curr_Bal or 0),
            "site_code": r.Site_Code or "",
        }
    except AttributeError:
        ls, gc, vd, cb, site = r
        return {
            "logsite": ls or "", "groupcode": gc or "",
            "v_date": vd, "curr_bal": float(cb or 0),
            "site_code": site or "",
        }


def acgroupcurrbal_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} LogSite_Code, GroupCode, V_Date, "
        "Curr_Bal, Site_Code FROM ACGROUPCURRBAL ORDER BY GroupCode", cn=cn)
    return [_map_acgroupcurrbal(r) for r in rows]


def acgroupcurrbal_get(groupcode: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT LogSite_Code, GroupCode, V_Date, Curr_Bal, Site_Code "
        "FROM ACGROUPCURRBAL WHERE GroupCode = ? AND LogSite_Code = ?",
        (groupcode, SITE_CODE), cn=cn)
    return _map_acgroupcurrbal(rows[0]) if rows else None


def acgroupcurrbal_upsert(rec: dict, cn=None, commit: bool = True) -> int:
    existing = acgroupcurrbal_get(rec.get("groupcode", ""), cn=cn)
    if existing:
        return db.execute(
            "UPDATE ACGROUPCURRBAL SET Curr_Bal = ?, V_Date = ? "
            "WHERE GroupCode = ? AND LogSite_Code = ?",
            (float(rec.get("curr_bal") or 0), rec.get("v_date"),
             rec["groupcode"], SITE_CODE),
            cn=cn, commit=commit)
    else:
        return db.execute(
            "INSERT INTO ACGROUPCURRBAL (LogSite_Code, GroupCode, V_Date, "
            "Curr_Bal, Site_Code) VALUES (?, ?, ?, ?, ?)",
            (SITE_CODE, rec["groupcode"], rec.get("v_date"),
             float(rec.get("curr_bal") or 0), SITE_CODE),
            cn=cn, commit=commit)


def acgroupcurrbal_delete(groupcode: str, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM ACGROUPCURRBAL WHERE GroupCode = ? AND LogSite_Code = ?",
        (groupcode, SITE_CODE), cn=cn, commit=commit)


# ============================================================
# Budget - Budget Master
# PK: FromDate + ToDate + SrNo + Site_Code
# ============================================================
def _map_budget(r) -> dict:
    try:
        return {
            "from_date": r.FromDate, "to_date": r.ToDate,
            "srno": r.SrNo, "accode": r.AcCode or "",
            "acgroupcode": r.AcGroupCode or "",
            "budget_dr_amt": float(r.BudgetDRAmt or 0),
            "budget_cr_amt": float(r.BudgetCRAmt or 0),
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        fd, td, sn, ac, agc, dra, cra, un, _, uae = r
        return {
            "from_date": fd, "to_date": td, "srno": sn,
            "accode": ac or "", "acgroupcode": agc or "",
            "budget_dr_amt": float(dra or 0),
            "budget_cr_amt": float(cra or 0),
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate_budget(rec: dict):
    if rec.get("srno") is None:
        raise ValueError("SrNo zaroori hai")


def budget_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} FromDate, ToDate, SrNo, AcCode, AcGroupCode, "
        "BudgetDRAmt, BudgetCRAmt, U_Name, U_EntDt, U_AE "
        "FROM Budget ORDER BY FromDate, SrNo", cn=cn)
    return [_map_budget(r) for r in rows]


def budget_get(from_date, to_date, srno: int, cn=None) -> dict | None:
    rows = db.query(
        "SELECT FromDate, ToDate, SrNo, AcCode, AcGroupCode, "
        "BudgetDRAmt, BudgetCRAmt, U_Name, U_EntDt, U_AE "
        "FROM Budget WHERE FromDate = ? AND ToDate = ? AND SrNo = ?",
        (from_date, to_date, srno), cn=cn)
    return _map_budget(rows[0]) if rows else None


def budget_insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate_budget(rec)
    return db.execute(
        "INSERT INTO Budget (FromDate, ToDate, SrNo, AcCode, AcGroupCode, "
        "BudgetDRAmt, BudgetCRAmt, U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?)",
        (rec["from_date"], rec["to_date"], rec["srno"],
         rec.get("accode", ""), rec.get("acgroupcode", ""),
         float(rec.get("budget_dr_amt") or 0),
         float(rec.get("budget_cr_amt") or 0),
         USER, SITE_CODE, SITE_CODE),
        cn=cn, commit=commit)


def budget_update(from_date, to_date, srno: int, rec: dict,
                  cn=None, commit: bool = True) -> int:
    _validate_budget(rec)
    return db.execute(
        "UPDATE Budget SET AcCode = ?, AcGroupCode = ?, BudgetDRAmt = ?, "
        "BudgetCRAmt = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
        "WHERE FromDate = ? AND ToDate = ? AND SrNo = ?",
        (rec.get("accode", ""), rec.get("acgroupcode", ""),
         float(rec.get("budget_dr_amt") or 0),
         float(rec.get("budget_cr_amt") or 0), USER,
         from_date, to_date, srno),
        cn=cn, commit=commit)


def budget_delete(from_date, to_date, srno: int,
                  cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM Budget WHERE FromDate = ? AND ToDate = ? AND SrNo = ?",
        (from_date, to_date, srno), cn=cn, commit=commit)


# ============================================================
# VOUCHER_Prefix - Voucher Serial Prefixes
# PK: V_Type + Date_From + Site_Code
# ============================================================
def _map_vprefix(r) -> dict:
    try:
        return {
            "vtype": r.V_Type or "", "date_from": r.Date_From,
            "date_to": r.Date_To, "prefix": r.Prefix or "",
            "start_srl_no": r.Start_Srl_No or 0,
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        vt, df, dt, pfx, sno, _, __, ___, un, uae = r
        return {
            "vtype": vt or "", "date_from": df, "date_to": dt,
            "prefix": pfx or "", "start_srl_no": sno or 0,
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate_vprefix(rec: dict):
    if not rec.get("vtype", "").strip():
        raise ValueError("V_Type zaroori hai")


def vprefix_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} V_Type, Date_From, Date_To, Prefix, "
        "Start_Srl_No, Site_Code, U_EntDt, LogSite_Code, U_Name, U_AE "
        "FROM VOUCHER_Prefix ORDER BY V_Type, Date_From", cn=cn)
    return [_map_vprefix(r) for r in rows]


def vprefix_get(vtype: str, date_from, cn=None) -> dict | None:
    rows = db.query(
        "SELECT V_Type, Date_From, Date_To, Prefix, Start_Srl_No, "
        "Site_Code, U_EntDt, LogSite_Code, U_Name, U_AE "
        "FROM VOUCHER_Prefix WHERE V_Type = ? AND Date_From = ? AND Site_Code = ?",
        (vtype, date_from, SITE_CODE), cn=cn)
    return _map_vprefix(rows[0]) if rows else None


def vprefix_insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate_vprefix(rec)
    return db.execute(
        "INSERT INTO VOUCHER_Prefix (V_Type, Date_From, Date_To, Prefix, "
        "Start_Srl_No, Site_Code, U_EntDt, LogSite_Code, U_Name, U_AE) "
        "VALUES (?, ?, ?, ?, ?, ?, getdate(), ?, ?, 'A')",
        (rec["vtype"], rec["date_from"], rec.get("date_to"),
         rec.get("prefix", ""), rec.get("start_srl_no", 0),
         SITE_CODE, SITE_CODE, USER),
        cn=cn, commit=commit)


def vprefix_update(vtype: str, date_from, rec: dict,
                   cn=None, commit: bool = True) -> int:
    _validate_vprefix(rec)
    return db.execute(
        "UPDATE VOUCHER_Prefix SET Date_To = ?, Prefix = ?, Start_Srl_No = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
        "WHERE V_Type = ? AND Date_From = ? AND Site_Code = ?",
        (rec.get("date_to"), rec.get("prefix", ""),
         rec.get("start_srl_no", 0), USER,
         vtype, date_from, SITE_CODE),
        cn=cn, commit=commit)


def vprefix_delete(vtype: str, date_from, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM VOUCHER_Prefix WHERE V_Type = ? AND Date_From = ? "
        "AND Site_Code = ?",
        (vtype, date_from, SITE_CODE), cn=cn, commit=commit)


# ============================================================
# Voucher_Include - Voucher Type Include Rules
# PK: V_Type + GroupCode + Site_Code
# ============================================================
def _map_vinclude(r) -> dict:
    try:
        return {
            "vtype": r.V_Type or "", "groupcode": r.GroupCode or "",
            "dr": r.Dr or "", "cr": r.Cr or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        vt, gc, dr, cr, _, __, uae, ___, un = r
        return {
            "vtype": vt or "", "groupcode": gc or "",
            "dr": dr or "", "cr": cr or "",
            "u_name": un or "", "u_ae": uae or "",
        }


def vinclude_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} V_Type, GroupCode, Dr, Cr, Site_Code, "
        "U_EntDt, U_AE, LogSite_Code, U_Name "
        "FROM Voucher_Include ORDER BY V_Type, GroupCode", cn=cn)
    return [_map_vinclude(r) for r in rows]


def vinclude_get(vtype: str, groupcode: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT V_Type, GroupCode, Dr, Cr, Site_Code, U_EntDt, U_AE, "
        "LogSite_Code, U_Name "
        "FROM Voucher_Include WHERE V_Type = ? AND GroupCode = ? AND Site_Code = ?",
        (vtype, groupcode, SITE_CODE), cn=cn)
    return _map_vinclude(rows[0]) if rows else None


def vinclude_insert(rec: dict, cn=None, commit: bool = True) -> int:
    if not rec.get("vtype", "").strip():
        raise ValueError("V_Type zaroori hai")
    if not rec.get("groupcode", "").strip():
        raise ValueError("GroupCode zaroori hai")
    return db.execute(
        "INSERT INTO Voucher_Include (V_Type, GroupCode, Dr, Cr, Site_Code, "
        "U_EntDt, U_AE, LogSite_Code, U_Name) "
        "VALUES (?, ?, ?, ?, ?, getdate(), 'A', ?, ?)",
        (rec["vtype"], rec["groupcode"], rec.get("dr", ""),
         rec.get("cr", ""), SITE_CODE, SITE_CODE, USER),
        cn=cn, commit=commit)


def vinclude_delete(vtype: str, groupcode: str,
                    cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM Voucher_Include WHERE V_Type = ? AND GroupCode = ? "
        "AND Site_Code = ?",
        (vtype, groupcode, SITE_CODE), cn=cn, commit=commit)


# ============================================================
# Voucher_Exclude - Voucher Type Exclude Rules
# PK: V_Type + GroupCode + Site_Code
# ============================================================
def _map_vexclude(r) -> dict:
    try:
        return {
            "vtype": r.V_Type or "", "groupcode": r.GroupCode or "",
            "dr": r.Dr or "", "cr": r.Cr or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        vt, gc, dr, cr, _, __, uae, ___, un = r
        return {
            "vtype": vt or "", "groupcode": gc or "",
            "dr": dr or "", "cr": cr or "",
            "u_name": un or "", "u_ae": uae or "",
        }


def vexclude_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} V_Type, GroupCode, Dr, Cr, Site_Code, "
        "U_EntDt, U_AE, LogSite_Code, U_Name "
        "FROM Voucher_Exclude ORDER BY V_Type, GroupCode", cn=cn)
    return [_map_vexclude(r) for r in rows]


def vexclude_get(vtype: str, groupcode: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT V_Type, GroupCode, Dr, Cr, Site_Code, U_EntDt, U_AE, "
        "LogSite_Code, U_Name "
        "FROM Voucher_Exclude WHERE V_Type = ? AND GroupCode = ? AND Site_Code = ?",
        (vtype, groupcode, SITE_CODE), cn=cn)
    return _map_vexclude(rows[0]) if rows else None


def vexclude_insert(rec: dict, cn=None, commit: bool = True) -> int:
    if not rec.get("vtype", "").strip():
        raise ValueError("V_Type zaroori hai")
    if not rec.get("groupcode", "").strip():
        raise ValueError("GroupCode zaroori hai")
    return db.execute(
        "INSERT INTO Voucher_Exclude (V_Type, GroupCode, Dr, Cr, Site_Code, "
        "U_EntDt, U_AE, LogSite_Code, U_Name) "
        "VALUES (?, ?, ?, ?, ?, getdate(), 'A', ?, ?)",
        (rec["vtype"], rec["groupcode"], rec.get("dr", ""),
         rec.get("cr", ""), SITE_CODE, SITE_CODE, USER),
        cn=cn, commit=commit)


def vexclude_delete(vtype: str, groupcode: str,
                    cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM Voucher_Exclude WHERE V_Type = ? AND GroupCode = ? "
        "AND Site_Code = ?",
        (vtype, groupcode, SITE_CODE), cn=cn, commit=commit)


# ============================================================
# LastVoucher - Last Voucher Tracking Per User+VType
# PK: user_name + V_Type + Site_Code
# ============================================================
def _map_lastvou(r) -> dict:
    try:
        return {
            "user_name": r.user_name or "", "vtype": r.V_Type or "",
            "last_ent_date": r.Last_Ent_Date, "docid": r.DocId or "",
            "v_prefix": r.v_Prefix or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        un, vt, led, d, __, _, uae, pfx, site, lgs = r
        return {
            "user_name": un or "", "vtype": vt or "",
            "last_ent_date": led, "docid": d or "",
            "v_prefix": pfx or "",
            "u_name": un or "", "u_ae": uae or "",
        }


def lastvou_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} user_name, V_Type, Last_Ent_Date, DocId, "
        "U_Name, U_EntDt, U_AE, v_Prefix, Site_Code, LogSite_Code "
        "FROM LastVoucher ORDER BY user_name, V_Type", cn=cn)
    return [_map_lastvou(r) for r in rows]


def lastvou_get(user_name: str, vtype: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT user_name, V_Type, Last_Ent_Date, DocId, U_Name, U_EntDt, "
        "U_AE, v_Prefix, Site_Code, LogSite_Code "
        "FROM LastVoucher WHERE user_name = ? AND V_Type = ? AND Site_Code = ?",
        (user_name, vtype, SITE_CODE), cn=cn)
    return _map_lastvou(rows[0]) if rows else None


def lastvou_upsert(rec: dict, cn=None, commit: bool = True) -> int:
    """Update last voucher entry (VB6 updates existing, no new insert per user+vtype)."""
    existing = lastvou_get(rec.get("user_name", ""), rec.get("vtype", ""), cn=cn)
    if existing:
        return db.execute(
            "UPDATE LastVoucher SET Last_Ent_Date = ?, DocId = ?, "
            "v_Prefix = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
            "WHERE user_name = ? AND V_Type = ? AND Site_Code = ?",
            (rec.get("last_ent_date"), rec.get("docid", ""),
             rec.get("v_prefix", ""), USER,
             rec["user_name"], rec["vtype"], SITE_CODE),
            cn=cn, commit=commit)
    else:
        return db.execute(
            "INSERT INTO LastVoucher (user_name, V_Type, Last_Ent_Date, DocId, "
            "U_Name, U_EntDt, U_AE, v_Prefix, Site_Code, LogSite_Code) "
            "VALUES (?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?)",
            (rec["user_name"], rec["vtype"], rec.get("last_ent_date"),
             rec.get("docid", ""), USER, rec.get("v_prefix", ""),
             SITE_CODE, SITE_CODE),
            cn=cn, commit=commit)


# ============================================================
# LedgerLog - Ledger Audit Log (detail level)
# PK: DocId + V_SNo + Site_Code + SeqNo
# ============================================================
def _map_ledgerlog(r) -> dict:
    try:
        return {
            "docid": r.DocId or "", "v_sno": r.V_SNo or 0,
            "vtype": r.V_Type or "", "vno": r.V_No or 0,
            "v_prefix": r.v_Prefix or "", "v_date": r.V_Date,
            "subcode": r.SubCode or "",
            "amt_cr": float(r.AmtCr or 0), "amt_dr": float(r.AmtDr or 0),
            "contra_sub": r.ContraSub or "",
            "chq_no": r.Chq_No or "", "chq_date": r.Chq_Date,
            "clg_date": r.Clg_Date,
            "narration": (r.Narration or "").strip(),
            "sqty": float(r.SQty or 0), "pqty": float(r.Pqty or 0),
            "agrefno": r.AgRefNo or "",
            "mth_year": r.Mth_Year or "", "emp_code": r.emp_code or "",
            "groupcode": r.GroupCode or "",
            "groupnature": r.GroupNature or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
            "seqno": r.SeqNo or 0,
        }
    except AttributeError:
        d, s, vt, vn, vp, site, vd, sc, acr, adr, cs, cn2, cd, cld, \
            narr, un, _, uae, sq, pq, ar, vt2, my, ec, gc, gn, lgs, tid, seq = r
        return {
            "docid": d or "", "v_sno": s or 0,
            "vtype": vt or "", "vno": vn or 0,
            "v_prefix": vp or "", "v_date": vd,
            "subcode": sc or "",
            "amt_cr": float(acr or 0), "amt_dr": float(adr or 0),
            "contra_sub": cs or "",
            "chq_no": cn2 or "", "chq_date": cd,
            "clg_date": cld,
            "narration": (narr or "").strip(),
            "sqty": float(sq or 0), "pqty": float(pq or 0),
            "agrefno": ar or "",
            "mth_year": my or "", "emp_code": ec or "",
            "groupcode": gc or "",
            "groupnature": gn or "",
            "u_name": un or "", "u_ae": uae or "",
            "seqno": seq or 0,
        }


def ledgerlog_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} DocId, V_SNo, V_Type, V_No, v_Prefix, "
        "Site_Code, V_Date, SubCode, AmtCr, AmtDr, ContraSub, "
        "Chq_No, Chq_Date, Clg_Date, Narration, U_Name, U_EntDt, U_AE, "
        "SQty, Pqty, AgRefNo, VTime, Mth_Year, emp_code, GroupCode, "
        "GroupNature, LogSite_Code, TImp_Dt, SeqNo "
        "FROM LedgerLog ORDER BY DocId, V_SNo", cn=cn)
    return [_map_ledgerlog(r) for r in rows]


def ledgerlog_get(docid: str, sno: int, cn=None) -> dict | None:
    rows = db.query(
        "SELECT DocId, V_SNo, V_Type, V_No, v_Prefix, Site_Code, V_Date, "
        "SubCode, AmtCr, AmtDr, ContraSub, Chq_No, Chq_Date, Clg_Date, "
        "Narration, U_Name, U_EntDt, U_AE, SQty, Pqty, AgRefNo, VTime, "
        "Mth_Year, emp_code, GroupCode, GroupNature, LogSite_Code, TImp_Dt, SeqNo "
        "FROM LedgerLog WHERE DocId = ? AND V_SNo = ?",
        (docid, sno), cn=cn)
    return _map_ledgerlog(rows[0]) if rows else None


def ledgerlog_insert(rec: dict, cn=None, commit: bool = True) -> int:
    if not rec.get("docid", "").strip():
        raise ValueError("DocId zaroori hai")
    return db.execute(
        "INSERT INTO LedgerLog (DocId, V_SNo, V_Type, V_No, v_Prefix, "
        "Site_Code, V_Date, SubCode, AmtCr, AmtDr, ContraSub, "
        "Chq_No, Chq_Date, Clg_Date, Narration, U_Name, U_EntDt, U_AE, "
        "SQty, Pqty, AgRefNo, VTime, Mth_Year, emp_code, GroupCode, "
        "GroupNature, LogSite_Code, TImp_Dt, SeqNo) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', "
        "?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)",
        (rec["docid"], rec["v_sno"], rec.get("vtype", ""),
         rec.get("vno", 0), rec.get("v_prefix", ""), SITE_CODE,
         rec.get("v_date"), rec["subcode"],
         float(rec.get("amt_cr") or 0), float(rec.get("amt_dr") or 0),
         rec.get("contra_sub", ""), rec.get("chq_no", ""),
         rec.get("chq_date"), rec.get("clg_date"),
         rec.get("narration", ""),
         float(rec.get("sqty") or 0), float(rec.get("pqty") or 0),
         rec.get("agrefno", ""),
         rec.get("mth_year", ""), rec.get("emp_code", ""),
         rec.get("groupcode", ""), rec.get("groupnature", ""),
         SITE_CODE, rec.get("t_imp_dt"), rec.get("seqno", 0)),
        cn=cn, commit=commit)


def ledgerlog_delete(docid: str, sno: int, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM LedgerLog WHERE DocId = ? AND V_SNo = ?",
        (docid, sno), cn=cn, commit=commit)


# ============================================================
# LedgerMLog - Ledger Master Audit Log (header level)
# PK: DocId + V_Type + v_Prefix + V_No + Site_Code + SeqNo
# ============================================================
def _map_ledgermlog(r) -> dict:
    try:
        return {
            "docid": r.DocId or "", "vtype": r.V_Type or "",
            "v_prefix": r.v_Prefix or "", "vno": r.V_No or 0,
            "v_date": r.V_Date,
            "narration": (r.Narration or "").strip(),
            "trf_date": r.Trf_Date,
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
            "seqno": r.SeqNo or 0,
        }
    except AttributeError:
        d, vt, vp, vn, site, vd, narr, un, _, uae, tf, lgs, seq = r
        return {
            "docid": d or "", "vtype": vt or "",
            "v_prefix": vp or "", "vno": vn or 0,
            "v_date": vd,
            "narration": (narr or "").strip(),
            "trf_date": tf,
            "u_name": un or "", "u_ae": uae or "",
            "seqno": seq or 0,
        }


def ledgermlog_list(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {limit} DocId, V_Type, v_Prefix, V_No, Site_Code, "
        "V_Date, Narration, U_Name, U_EntDt, U_AE, Trf_Date, "
        "LogSite_Code, SeqNo FROM LedgerMLog ORDER BY DocId", cn=cn)
    return [_map_ledgermlog(r) for r in rows]


def ledgermlog_get(docid: str, cn=None) -> dict | None:
    rows = db.query(
        "SELECT DocId, V_Type, v_Prefix, V_No, Site_Code, V_Date, "
        "Narration, U_Name, U_EntDt, U_AE, Trf_Date, LogSite_Code, SeqNo "
        "FROM LedgerMLog WHERE DocId = ?",
        (docid,), cn=cn)
    return _map_ledgermlog(rows[0]) if rows else None


def ledgermlog_insert(rec: dict, cn=None, commit: bool = True) -> int:
    if not rec.get("docid", "").strip():
        raise ValueError("DocId zaroori hai")
    return db.execute(
        "INSERT INTO LedgerMLog (DocId, V_Type, v_Prefix, V_No, Site_Code, "
        "V_Date, Narration, U_Name, U_EntDt, U_AE, Trf_Date, LogSite_Code, SeqNo) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?)",
        (rec["docid"], rec.get("vtype", ""), rec.get("v_prefix", ""),
         rec.get("vno", 0), SITE_CODE,
         rec.get("v_date"), rec.get("narration", ""),
         USER, rec.get("trf_date"), SITE_CODE, rec.get("seqno", 0)),
        cn=cn, commit=commit)


def ledgermlog_delete(docid: str, cn=None, commit: bool = True) -> int:
    return db.execute(
        "DELETE FROM LedgerMLog WHERE DocId = ?", (docid,),
        cn=cn, commit=commit)


# ============================================================
# API Classes
# ============================================================
class _LEDGERADJAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return ledgeradj_list(cn, limit)
    @staticmethod
    def get(d1, s1, d2, s2, cn=None): return ledgeradj_get(d1, s1, d2, s2, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return ledgeradj_insert(rec, cn, commit)
    @staticmethod
    def delete(d1, s1, d2, s2, cn=None, commit=True): return ledgeradj_delete(d1, s1, d2, s2, cn, commit)

LEDGERADJAPI = _LEDGERADJAPI()


class _LEDGERREFAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return ledgerref_list(cn, limit)
    @staticmethod
    def get(id, cn=None): return ledgerref_get(id, cn)
    @staticmethod
    def search(subcode, cn=None, limit=200): return ledgerref_search(subcode, cn, limit)
    @staticmethod
    def insert(rec, cn=None, commit=True): return ledgerref_insert(rec, cn, commit)
    @staticmethod
    def delete(id, cn=None, commit=True): return ledgerref_delete(id, cn, commit)

LEDGERREFAPI = _LEDGERREFAPI()


class _LEDGERTDSAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return ledgertds_list(cn, limit)
    @staticmethod
    def get(docid, sno, cn=None): return ledgertds_get(docid, sno, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return ledgertds_insert(rec, cn, commit)
    @staticmethod
    def delete(docid, sno, cn=None, commit=True): return ledgertds_delete(docid, sno, cn, commit)

LEDGERTDSAPI = _LEDGERTDSAPI()


class _SUBGROUPCURRBALAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return subgroupcurrbal_list(cn, limit)
    @staticmethod
    def get(subcode, cn=None): return subgroupcurrbal_get(subcode, cn)
    @staticmethod
    def upsert(rec, cn=None, commit=True): return subgroupcurrbal_upsert(rec, cn, commit)
    @staticmethod
    def delete(subcode, cn=None, commit=True): return subgroupcurrbal_delete(subcode, cn, commit)

SUBGROUPCURRBALAPI = _SUBGROUPCURRBALAPI()


class _ACGROUPCURRBALAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return acgroupcurrbal_list(cn, limit)
    @staticmethod
    def get(groupcode, cn=None): return acgroupcurrbal_get(groupcode, cn)
    @staticmethod
    def upsert(rec, cn=None, commit=True): return acgroupcurrbal_upsert(rec, cn, commit)
    @staticmethod
    def delete(groupcode, cn=None, commit=True): return acgroupcurrbal_delete(groupcode, cn, commit)

ACGROUPCURRBALAPI = _ACGROUPCURRBALAPI()


class _BudgetAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return budget_list(cn, limit)
    @staticmethod
    def get(fd, td, srno, cn=None): return budget_get(fd, td, srno, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return budget_insert(rec, cn, commit)
    @staticmethod
    def update(fd, td, srno, rec, cn=None, commit=True): return budget_update(fd, td, srno, rec, cn, commit)
    @staticmethod
    def delete(fd, td, srno, cn=None, commit=True): return budget_delete(fd, td, srno, cn, commit)

BudgetAPI = _BudgetAPI()


class _VPrefixAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return vprefix_list(cn, limit)
    @staticmethod
    def get(vtype, date_from, cn=None): return vprefix_get(vtype, date_from, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return vprefix_insert(rec, cn, commit)
    @staticmethod
    def update(vtype, date_from, rec, cn=None, commit=True): return vprefix_update(vtype, date_from, rec, cn, commit)
    @staticmethod
    def delete(vtype, date_from, cn=None, commit=True): return vprefix_delete(vtype, date_from, cn, commit)

VPrefixAPI = _VPrefixAPI()


class _VIncludeAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return vinclude_list(cn, limit)
    @staticmethod
    def get(vtype, groupcode, cn=None): return vinclude_get(vtype, groupcode, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return vinclude_insert(rec, cn, commit)
    @staticmethod
    def delete(vtype, groupcode, cn=None, commit=True): return vinclude_delete(vtype, groupcode, cn, commit)

VIncludeAPI = _VIncludeAPI()


class _VExcludeAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return vexclude_list(cn, limit)
    @staticmethod
    def get(vtype, groupcode, cn=None): return vexclude_get(vtype, groupcode, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return vexclude_insert(rec, cn, commit)
    @staticmethod
    def delete(vtype, groupcode, cn=None, commit=True): return vexclude_delete(vtype, groupcode, cn, commit)

VExcludeAPI = _VExcludeAPI()


class _LastVouAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return lastvou_list(cn, limit)
    @staticmethod
    def get(user_name, vtype, cn=None): return lastvou_get(user_name, vtype, cn)
    @staticmethod
    def upsert(rec, cn=None, commit=True): return lastvou_upsert(rec, cn, commit)

LastVouAPI = _LastVouAPI()


class _LedgerLogAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return ledgerlog_list(cn, limit)
    @staticmethod
    def get(docid, sno, cn=None): return ledgerlog_get(docid, sno, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return ledgerlog_insert(rec, cn, commit)
    @staticmethod
    def delete(docid, sno, cn=None, commit=True): return ledgerlog_delete(docid, sno, cn, commit)

LedgerLogAPI = _LedgerLogAPI()


class _LedgerMLogAPI:
    @staticmethod
    def list_all(cn=None, limit=500): return ledgermlog_list(cn, limit)
    @staticmethod
    def get(docid, cn=None): return ledgermlog_get(docid, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return ledgermlog_insert(rec, cn, commit)
    @staticmethod
    def delete(docid, cn=None, commit=True): return ledgermlog_delete(docid, cn, commit)

LedgerMLogAPI = _LedgerMLogAPI()
