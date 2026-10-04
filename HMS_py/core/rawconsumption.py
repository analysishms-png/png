"""Raw Consumption (rawconsumption) core module — VB6 rawconsumption table access.

VB6 Evidence: HMS.bas, RsTouchScreenBookingEntry.frm, RSTouchScreenSaleBill.frm reference rawconsumption.
Live DB: 467 rows - raw material consumption for kitchen/bar.

Actual columns: DocId, V_Date, V_Type, V_Prefix, V_No, Sno, Site_Code, RawItem, ThCons, WtUnit, FinishItem, DepartCode, RestCode, ThConsCost, KOTDocId, LogSite_Code, ShiftCode, FinishQty, FinishUnit
"""

from __future__ import annotations

from HMS_py.core import db


def _map_rawconsumption(r) -> dict:
    """Map rawconsumption row to dict."""
    return {
        "doc_id": getattr(r, "DocId", "") or "",
        "v_date": getattr(r, "V_Date", None),
        "v_type": getattr(r, "V_Type", "") or "",
        "v_prefix": getattr(r, "V_Prefix", "") or "",
        "v_no": getattr(r, "V_No", 0) or 0,
        "sno": getattr(r, "Sno", 0) or 0,
        "site_code": getattr(r, "Site_Code", "") or "",
        "raw_item": getattr(r, "RawItem", "") or "",
        "th_cons": float(getattr(r, "ThCons", 0) or 0),
        "wt_unit": getattr(r, "WtUnit", "") or "",
        "finish_item": getattr(r, "FinishItem", "") or "",
        "depart_code": getattr(r, "DepartCode", "") or "",
        "rest_code": getattr(r, "RestCode", "") or "",
        "th_cons_cost": float(getattr(r, "ThConsCost", 0) or 0),
        "kot_doc_id": getattr(r, "KOTDocId", "") or "",
        "log_site_code": getattr(r, "LogSite_Code", "") or "",
        "shift_code": getattr(r, "ShiftCode", "") or "",
        "finish_qty": float(getattr(r, "FinishQty", 0) or 0),
        "finish_unit": getattr(r, "FinishUnit", "") or "",
    }


def rawconsumption_list(
    vdate_from: str = "", vdate_to: str = "",
    depart_code: str = "", raw_item: str = "",
    finish_item: str = "", limit: int = 500, cn=None
) -> list[dict]:
    """List raw consumption entries.
    
    Args:
        vdate_from: Start date (YYYY-MM-DD)
        vdate_to: End date (YYYY-MM-DD)
        depart_code: Filter by department code
        raw_item: Filter by raw material item code
        finish_item: Filter by finished item code
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if vdate_from:
        where.append("V_Date >= ?")
        params.append(vdate_from)
    if vdate_to:
        where.append("V_Date <= ?")
        params.append(vdate_to)
    if depart_code:
        where.append("DepartCode = ?")
        params.append(depart_code)
    if raw_item:
        where.append("RawItem = ?")
        params.append(raw_item)
    if finish_item:
        where.append("FinishItem = ?")
        params.append(finish_item)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} DocId, V_Date, V_Type, V_Prefix, V_No, Sno, Site_Code, RawItem, ThCons, WtUnit, FinishItem, DepartCode, RestCode, ThConsCost, KOTDocId, LogSite_Code, ShiftCode, FinishQty, FinishUnit FROM rawconsumption{where_clause} ORDER BY V_Date DESC, DocId, Sno"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_rawconsumption(r) for r in rows]


def rawconsumption_by_kot(kot_doc_id: str, cn=None) -> list[dict]:
    """Get raw consumption for a specific KOT."""
    rows = db.query(
        "SELECT DocId, V_Date, V_Type, V_Prefix, V_No, Sno, Site_Code, RawItem, ThCons, WtUnit, FinishItem, DepartCode, RestCode, ThConsCost, KOTDocId, LogSite_Code, ShiftCode, FinishQty, FinishUnit FROM rawconsumption WHERE KOTDocId = ? ORDER BY Sno",
        (kot_doc_id,), cn=cn)
    return [_map_rawconsumption(r) for r in rows]


def rawconsumption_raw_item_summary(vdate_from: str, vdate_to: str, depart_code: str = "", cn=None) -> list[dict]:
    """Get raw material consumption summary by raw item."""
    where = ["V_Date >= ?", "V_Date <= ?"]
    params = [vdate_from, vdate_to]
    
    if depart_code:
        where.append("DepartCode = ?")
        params.append(depart_code)
    
    where_clause = " AND ".join(where)
    rows = db.query(
        f"SELECT RawItem, WtUnit, SUM(ThCons) as TotalCons, SUM(ThConsCost) as TotalCost, COUNT(*) as RecCount FROM rawconsumption WHERE {where_clause} GROUP BY RawItem, WtUnit ORDER BY TotalCons DESC",
        tuple(params), cn=cn)
    return [
        {
            "raw_item": r.RawItem or "",
            "wt_unit": r.WtUnit or "",
            "total_consumption": float(r.TotalCons or 0),
            "total_cost": float(r.TotalCost or 0),
            "record_count": int(r.RecCount or 0),
        }
        for r in rows
    ]


# Alias for compatibility with VB6 naming
raw_consumption_list = rawconsumption_list
raw_consumption_by_kot = rawconsumption_by_kot
raw_consumption_raw_item_summary = rawconsumption_raw_item_summary