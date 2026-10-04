"""Current Stock (mcurstk) core module — VB6 mcurstk table access.

VB6 Evidence: HMS.bas, rFomRepView.frm reference mcurstk for current stock balances.
Live DB: 3,498 rows - Actually a stock transaction register (RQR/RQI vouchers), not a balance table.

This module provides computed current stock balances from transaction data.
"""

from __future__ import annotations
from collections import defaultdict

from HMS_py.core import db


def _map_mcurstk_txn(r) -> dict:
    """Map mcurstk transaction row to dict."""
    return {
        "doc_id": getattr(r, "DocId", "") or "",
        "sno": getattr(r, "Sno", 0) or 0,
        "vtype": getattr(r, "Vtype", "") or "",
        "vno": getattr(r, "VNo", 0) or 0,
        "site_code": getattr(r, "Site_Code", "") or "",
        "vprefix": getattr(r, "Vprefix", "") or "",
        "vdate": getattr(r, "Vdate", None),
        "party_code": getattr(r, "PartyCode", "") or "",
        "item": getattr(r, "Item", "") or "",
        "qty_iss": float(getattr(r, "QtyIss", 0) or 0),
        "qty_rec": float(getattr(r, "QtyRec", 0) or 0),
        "unit": getattr(r, "Unit", "") or "",
        "rate": float(getattr(r, "Rate", 0) or 0),
        "amount": float(getattr(r, "Amount", 0) or 0),
        "godown_code": getattr(r, "GodownCode", "") or "",
        "depart_code": getattr(r, "DepartCode", "") or "",
        "vtime": getattr(r, "VTime", "") or "",
        "u_name": getattr(r, "U_Name", "") or "",
        "u_ent_dt": getattr(r, "U_EntDt", None),
    }


def mcurstk_transactions(
    vdate_from: str = "", vdate_to: str = "",
    item: str = "", godown_code: str = "",
    vtype: str = "", limit: int = 500, cn=None
) -> list[dict]:
    """List mcurstk transaction entries (VB6 mcurstk is a transaction register).
    
    Args:
        vdate_from: Start date (YYYY-MM-DD)
        vdate_to: End date (YYYY-MM-DD)
        item: Filter by item code
        godown_code: Filter by godown code
        vtype: Filter by voucher type (RQR, RQI, etc.)
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
    if vtype:
        where.append("Vtype = ?")
        params.append(vtype)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT TOP {limit} DocId, Sno, Vtype, VNo, Site_Code, Vprefix, Vdate, PartyCode, Item, QtyIss, QtyRec, Unit, Rate, Amount, GodownCode, DepartCode, VTime, U_Name, U_EntDt FROM mcurstk{where_clause} ORDER BY Vdate DESC, DocId, Sno"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_mcurstk_txn(r) for r in rows]


def mcurstk_current_balances(item: str = "", godown_code: str = "", cn=None) -> list[dict]:
    """Compute current stock balances from transaction data.
    
    Returns: list of {item, godown_code, qty_on_hand, last_vdate, last_doc_id}
    """
    where = []
    params = []
    
    if item:
        where.append("Item = ?")
        params.append(item)
    if godown_code:
        where.append("GodownCode = ?")
        params.append(godown_code)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT Item, GodownCode, SUM(QtyRec - QtyIss) as QtyOnHand, MAX(Vdate) as LastVDate, MAX(DocId) as LastDocId FROM mcurstk{where_clause} GROUP BY Item, GodownCode HAVING SUM(QtyRec - QtyIss) <> 0 ORDER BY Item, GodownCode"
    
    rows = db.query(sql, tuple(params) if params else None, cn=cn)
    return [
        {
            "item": r.Item or "",
            "godown_code": r.GodownCode or "",
            "qty_on_hand": float(r.QtyOnHand or 0),
            "last_vdate": r.LastVDate,
            "last_doc_id": r.LastDocId or "",
        }
        for r in rows
    ]


def mcurstk_item_summary(item: str, cn=None) -> dict:
    """Get summary for an item across all godowns."""
    rows = db.query(
        "SELECT SUM(QtyRec - QtyIss) as TotalQty, SUM(Amount) as TotalAmt, COUNT(*) as TxnCount FROM mcurstk WHERE Item = ?",
        (item,), cn=cn)
    if rows:
        r = rows[0]
        return {
            "item": item,
            "total_qty": float(r.TotalQty or 0),
            "total_amount": float(r.TotalAmt or 0),
            "transaction_count": int(r.TxnCount or 0),
        }
    return {"item": item, "total_qty": 0.0, "total_amount": 0.0, "transaction_count": 0}


# Alias for compatibility with VB6 naming
mcurstk_list_txns = mcurstk_transactions
mcurstk_balances = mcurstk_current_balances
mcurstk_summary = mcurstk_item_summary