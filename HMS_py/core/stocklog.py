"""Stock Log (stocklog) core module — VB6 stocklog table access.

VB6 Evidence: HMS.bas, RsTouchScreenBookingEntry.frm, RSTouchScreenSaleBill.frm reference stocklog.
Live DB: 266 rows - stock transaction log.

Actual columns: DocId, Sno, Vtype, VNo, Site_Code, Vprefix, Vdate, PartyCode, RestCode, RoomCat, RoomType, RoomNo, ContraDocId, ContraSno, Item, QtyIss, QtyRec, Unit, Rate, Amount, TaxPer, TaxAmt, DiscPer, DiscAmt, VoidYN, Remarks, KOTDocId, KOTSno, VTime, U_Name, U_EntDt, U_AE, Total, DiscApp, RoundOff, DepartCode, GodownCode, ChalQty, RecdQty, AccQty, RejQty, RecdUnit, Specification, ItemRate, DelFlag, LandVal, ConvRatio, IndentDocId, IndentSNo, IssQty, IssueUnit, LogSite_Code, ChkId, ShiftCode
"""

from __future__ import annotations

from HMS_py.core import db


def _map_stocklog(r) -> dict:
    """Map stocklog row to dict."""
    return {
        "doc_id": getattr(r, "DocId", "") or "",
        "sno": getattr(r, "Sno", 0) or 0,
        "vtype": getattr(r, "Vtype", "") or "",
        "vno": getattr(r, "VNo", 0) or 0,
        "site_code": getattr(r, "Site_Code", "") or "",
        "vprefix": getattr(r, "Vprefix", "") or "",
        "vdate": getattr(r, "Vdate", None),
        "party_code": getattr(r, "PartyCode", "") or "",
        "rest_code": getattr(r, "RestCode", "") or "",
        "room_cat": getattr(r, "RoomCat", "") or "",
        "room_type": getattr(r, "RoomType", "") or "",
        "room_no": getattr(r, "RoomNo", "") or "",
        "contra_doc_id": getattr(r, "ContraDocId", "") or "",
        "contra_sno": getattr(r, "ContraSno", 0) or 0,
        "item": getattr(r, "Item", "") or "",
        "qty_iss": float(getattr(r, "QtyIss", 0) or 0),
        "qty_rec": float(getattr(r, "QtyRec", 0) or 0),
        "unit": getattr(r, "Unit", "") or "",
        "rate": float(getattr(r, "Rate", 0) or 0),
        "amount": float(getattr(r, "Amount", 0) or 0),
        "tax_per": float(getattr(r, "TaxPer", 0) or 0),
        "tax_amt": float(getattr(r, "TaxAmt", 0) or 0),
        "disc_per": float(getattr(r, "DiscPer", 0) or 0),
        "disc_amt": float(getattr(r, "DiscAmt", 0) or 0),
        "void_yn": getattr(r, "VoidYN", "") or "",
        "remarks": getattr(r, "Remarks", "") or "",
        "kot_doc_id": getattr(r, "KOTDocId", "") or "",
        "kot_sno": getattr(r, "KOTSno", 0) or 0,
        "vtime": getattr(r, "VTime", "") or "",
        "u_name": getattr(r, "U_Name", "") or "",
        "u_ent_dt": getattr(r, "U_EntDt", None),
        "u_ae": getattr(r, "U_AE", "") or "",
        "total": float(getattr(r, "Total", 0) or 0),
        "disc_app": getattr(r, "DiscApp", "") or "",
        "round_off": float(getattr(r, "RoundOff", 0) or 0),
        "depart_code": getattr(r, "DepartCode", "") or "",
        "godown_code": getattr(r, "GodownCode", "") or "",
        "chal_qty": float(getattr(r, "ChalQty", 0) or 0),
        "recd_qty": float(getattr(r, "RecdQty", 0) or 0),
        "acc_qty": float(getattr(r, "AccQty", 0) or 0),
        "rej_qty": float(getattr(r, "RejQty", 0) or 0),
        "recd_unit": getattr(r, "RecdUnit", "") or "",
        "specification": getattr(r, "Specification", "") or "",
        "item_rate": float(getattr(r, "ItemRate", 0) or 0),
        "del_flag": getattr(r, "DelFlag", "") or "",
        "land_val": float(getattr(r, "LandVal", 0) or 0),
        "conv_ratio": float(getattr(r, "ConvRatio", 0) or 0),
        "indent_doc_id": getattr(r, "IndentDocId", "") or "",
        "indent_sno": getattr(r, "IndentSNo", 0) or 0,
        "iss_qty": float(getattr(r, "IssQty", 0) or 0),
        "issue_unit": getattr(r, "IssueUnit", "") or "",
        "log_site_code": getattr(r, "LogSite_Code", "") or "",
        "chk_id": getattr(r, "ChkId", 0) or 0,
        "shift_code": getattr(r, "ShiftCode", "") or "",
    }


def stocklog_list(
    vdate_from: str = "", vdate_to: str = "",
    item: str = "", godown_code: str = "",
    depart_code: str = "", vtype: str = "",
    limit: int = 500, cn=None
) -> list[dict]:
    """List stock transaction log entries.
    
    Args:
        vdate_from: Start date (YYYY-MM-DD)
        vdate_to: End date (YYYY-MM-DD)
        item: Filter by item code
        godown_code: Filter by godown code
        depart_code: Filter by department code
        vtype: Filter by voucher type
        limit: Maximum rows to return
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if vdate_from:
        where.append("Vdate >= ?")
        params.append(vdate_from)
    if vdate_to:
        where.append("Vdate <= ?")
        params.append(vdate_to)
    if item:
        where.append("Item = ?")
        params.append(item)
    if godown_code:
        where.append("GodownCode = ?")
        params.append(godown_code)
    if depart_code:
        where.append("DepartCode = ?")
        params.append(depart_code)
    if vtype:
        where.append("Vtype = ?")
        params.append(vtype)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} DocId, Sno, Vtype, VNo, Site_Code, Vprefix, Vdate, PartyCode, RestCode, RoomCat, RoomType, RoomNo, ContraDocId, ContraSno, Item, QtyIss, QtyRec, Unit, Rate, Amount, TaxPer, TaxAmt, DiscPer, DiscAmt, VoidYN, Remarks, KOTDocId, KOTSno, VTime, U_Name, U_EntDt, U_AE, Total, DiscApp, RoundOff, DepartCode, GodownCode, ChalQty, RecdQty, AccQty, RejQty, RecdUnit, Specification, ItemRate, DelFlag, LandVal, ConvRatio, IndentDocId, IndentSNo, IssQty, IssueUnit, LogSite_Code, ChkId, ShiftCode FROM stocklog{where_clause} ORDER BY Vdate DESC, DocId, Sno"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_stocklog(r) for r in rows]


def stocklog_by_ref(contra_doc_id: str, cn=None) -> list[dict]:
    """Get stock log entries for a reference document."""
    rows = db.query(
        "SELECT DocId, Sno, Vtype, VNo, Site_Code, Vprefix, Vdate, PartyCode, RestCode, RoomCat, RoomType, RoomNo, ContraDocId, ContraSno, Item, QtyIss, QtyRec, Unit, Rate, Amount, TaxPer, TaxAmt, DiscPer, DiscAmt, VoidYN, Remarks, KOTDocId, KOTSno, VTime, U_Name, U_EntDt, U_AE, Total, DiscApp, RoundOff, DepartCode, GodownCode, ChalQty, RecdQty, AccQty, RejQty, RecdUnit, Specification, ItemRate, DelFlag, LandVal, ConvRatio, IndentDocId, IndentSNo, IssQty, IssueUnit, LogSite_Code, ChkId, ShiftCode FROM stocklog WHERE ContraDocId = ? ORDER BY Vdate, Sno",
        (contra_doc_id,), cn=cn)
    return [_map_stocklog(r) for r in rows]


def stocklog_item_movement(item: str, godown_code: str = "", cn=None) -> dict:
    """Get stock movement summary for an item."""
    where = ["Item = ?"]
    params = [item]
    
    if godown_code:
        where.append("GodownCode = ?")
        params.append(godown_code)
    
    where_clause = " AND ".join(where)
    rows = db.query(
        f"SELECT Vtype, SUM(QtyIss) as TotalIss, SUM(QtyRec) as TotalRec, COUNT(*) as TxnCount FROM stocklog WHERE {where_clause} GROUP BY Vtype",
        tuple(params), cn=cn)
    
    result = {}
    for r in rows:
        vtype = r.Vtype or ""
        result[vtype] = {
            "qty_issued": float(r.TotalIss or 0),
            "qty_received": float(r.TotalRec or 0),
            "txn_count": int(r.TxnCount or 0),
        }
    return result


# Alias for compatibility with VB6 naming
stock_log_list = stocklog_list
stock_log_by_ref = stocklog_by_ref
stock_log_item_movement = stocklog_item_movement