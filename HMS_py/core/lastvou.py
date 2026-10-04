"""Last Voucher (lastvou) core module — VB6 lastvou table access.

VB6 Evidence: Multiple forms (FaTaxVoucher.frm, FrmRoomMast.frm, pPBill.frm, PrEmployee.frm, SmartCardMast.frm) reference lastvou.
Live DB: 17 rows - tracks last voucher numbers by type.

This module provides read/write access to last voucher numbers for document numbering.
"""

from __future__ import annotations

from HMS_py.core import db


def _map_lastvou(r) -> dict:
    """Map lastvou row to dict."""
    return {
        "vtype": getattr(r, "VType", getattr(r, "V_Type", "")) or "",
        "vprefix": getattr(r, "VPrefix", getattr(r, "V_Prefix", "")) or "",
        "last_vno": int(getattr(r, "LastVNo", getattr(r, "Last_VNo", 0)) or 0),
        "fin_year": getattr(r, "FinYear", getattr(r, "Fin_Year", "")) or "",
        "comp_code": getattr(r, "CompCode", "") or "",
        "site_code": getattr(r, "SiteCode", "") or "",
    }


def lastvou_list(vtype: str = "", vprefix: str = "", cn=None) -> list[dict]:
    """List last voucher numbers.
    
    Args:
        vtype: Filter by voucher type
        vprefix: Filter by voucher prefix
        cn: Database connection (optional)
    """
    where = []
    params = []
    
    if vtype:
        where.append("VType = ?")
        params.append(vtype)
    if vprefix:
        where.append("VPrefix = ?")
        params.append(vprefix)
    
    where_clause = " WHERE " + " AND ".join(where) if where else ""
    sql = f"SELECT VType, VPrefix, LastVNo, FinYear, CompCode, SiteCode FROM lastvou{where_clause} ORDER BY VType, VPrefix"
    
    params_tuple = tuple(params) if params else None
    rows = db.query(sql, params_tuple, cn=cn) if params_tuple is not None else db.query(sql, cn=cn)
    return [_map_lastvou(r) for r in rows]


def lastvou_get(vtype: str, vprefix: str = "", fin_year: str = "", cn=None) -> dict | None:
    """Get last voucher number for a type/prefix/year."""
    where = ["VType = ?"]
    params = [vtype]
    
    if vprefix:
        where.append("VPrefix = ?")
        params.append(vprefix)
    if fin_year:
        where.append("FinYear = ?")
        params.append(fin_year)
    
    where_clause = " AND ".join(where)
    rows = db.query(
        f"SELECT VType, VPrefix, LastVNo, FinYear, CompCode, SiteCode FROM lastvou WHERE {where_clause}",
        tuple(params), cn=cn)
    return _map_lastvou(rows[0]) if rows else None


def lastvou_next_vno(vtype: str, vprefix: str = "", fin_year: str = "", cn=None) -> int:
    """Get next voucher number (increments and returns)."""
    # This should be called within a transaction
    existing = lastvou_get(vtype, vprefix, fin_year, cn=cn)
    if existing:
        new_vno = existing["last_vno"] + 1
        db.execute(
            "UPDATE lastvou SET LastVNo = ? WHERE VType = ? AND VPrefix = ? AND FinYear = ?",
            (new_vno, vtype, vprefix, fin_year), cn=cn, commit=False)
        return new_vno
    else:
        # Insert new record
        new_vno = 1
        db.execute(
            "INSERT INTO lastvou (VType, VPrefix, LastVNo, FinYear, CompCode, SiteCode) VALUES (?, ?, ?, ?, ?, ?)",
            (vtype, vprefix, new_vno, fin_year, db.get_comp_code() or "", db.get_site_code() or ""), cn=cn, commit=False)
        return new_vno


def lastvou_reset(vtype: str, vprefix: str = "", fin_year: str = "", new_vno: int = 0, cn=None) -> int:
    """Reset last voucher number (use with caution)."""
    existing = lastvou_get(vtype, vprefix, fin_year, cn=cn)
    if existing:
        db.execute(
            "UPDATE lastvou SET LastVNo = ? WHERE VType = ? AND VPrefix = ? AND FinYear = ?",
            (new_vno, vtype, vprefix, fin_year), cn=cn, commit=True)
    else:
        db.execute(
            "INSERT INTO lastvou (VType, VPrefix, LastVNo, FinYear, CompCode, SiteCode) VALUES (?, ?, ?, ?, ?, ?)",
            (vtype, vprefix, new_vno, fin_year, db.get_comp_code() or "", db.get_site_code() or ""), cn=cn, commit=True)
    return new_vno


# Alias for compatibility with VB6 naming
last_vou_list = lastvou_list
last_vou_get = lastvou_get
last_vou_next = lastvou_next_vno
last_vou_reset = lastvou_reset