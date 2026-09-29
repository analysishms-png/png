"""Consumption Master (VB6 FrmConsumMast) — BOM recipe master port.

VB6 FrmConsumMast.frm ka faithful port (live-DB probe: BOM 2048 rows,
17 cols exact match; ItemMast/Depart live):
  - Recipe = (FinItem, RestCode, AppDate) key; rows = raw items.
  - Search list (loc_EEEFE9): BOM INNER JOIN ItemMast (FinItem+RestCode)
    LEFT JOIN Depart, DispCode<>9999, LOGSITE filter.
  - Recipe detail (loc_141576C): BOM rows LEFT JOIN ItemMast on RawItem
    AND (ItemType='Store' OR GravyItem='Yes') ORDER BY RawSno.
  - Re-save (loc_15047F6): DELETE purani recipe phir per-raw-row
    17-col INSERT (Site_Code,FinItem,FinQty,RawItem,RawQty,RawSno,Cost,
    Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,WtUnit,
    LogSite_Code,RestCode) + ItemMast cost-update
    (loc_1504E21: IssueUnit=Unit, convRatio=1, PurchRate/LPurRate).
  - VB6 ka garbled division-math (decompile) clean semantics se:
    Cost = LPurRate * RawQty / SavedForQty (per-finished-unit cost),
    Total = Cost + Waste. SavedForQty = FinQty jaisa user ne bhara.

Saare SQL param-bound. Raw candidates: Store items + gravy items
(VB6 join-condition ka inverse).
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()


def list_outlets(cn=None) -> list[dict]:
    """BOM outlets (Depart; VB6 LblOutlet — BANQ pseudo-outlet included
    nahi karte, wo banquet-side hai)."""
    rows = db.query(
        "SELECT Code, Name FROM Depart WHERE (LOGSITE_CODE = ? OR "
        "LOGSITE_CODE = 'HO') ORDER BY Name", (SITE_CODE,), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip()} for r in rows]


def list_recipes(cn=None) -> list[dict]:
    """Saved recipes ki list (VB6 search grid, loc_EEEFE9)."""
    rows = db.query(
        "SELECT DISTINCT BOM.FinItem, BOM.RestCode, "
        "CONVERT(varchar(11), BOM.AppDate, 103) AS AppDateStr, "
        "BOM.AppDate, ItemMast.Name AS FinName, Depart.Name AS OutletName, "
        "(SELECT COUNT(*) FROM BOM B2 WHERE B2.FinItem = BOM.FinItem "
        "AND B2.RestCode = BOM.RestCode AND B2.AppDate = BOM.AppDate) AS RawCount "
        "FROM BOM INNER JOIN ItemMast ON ItemMast.Code = BOM.FinItem "
        "AND ItemMast.RestCode = BOM.RestCode "
        "LEFT JOIN Depart ON Depart.Code = BOM.RestCode "
        "WHERE (BOM.LOGSITE_CODE = ? OR BOM.LOGSITE_CODE = 'HO') "
        "AND ISNULL(ItemMast.DispCode, 0) <> 9999 "
        "ORDER BY ItemMast.Name, BOM.AppDate", (SITE_CODE,), cn=cn)
    return [{"fin_item": (r.FinItem or "").strip(),
             "rest_code": (r.RestCode or "").strip(),
             "app_date": str(r.AppDate)[:10] if r.AppDate else "",
             "fin_name": (r.FinName or "").strip(),
             "outlet": (r.OutletName or "").strip(),
             "raw_count": int(r.RawCount or 0)} for r in rows]


def get_recipe(fin_item: str, rest_code: str, app_date, cn=None) -> dict:
    """Ek recipe ka header + raw rows (VB6 loc_141576C pattern)."""
    rows = db.query(
        "SELECT BOM.RawItem, BOM.RawQty, BOM.RawSno, BOM.Cost, BOM.Waste, "
        "BOM.Total, BOM.SavedForQty, BOM.FinQty, BOM.AppDate, "
        "IM.Name AS RawName, IM.Unit AS RawUnit, IM.LPurRate "
        "FROM BOM LEFT JOIN ItemMast IM ON IM.Code = BOM.RawItem "
        "AND (IM.ItemType = 'Store' OR IM.GravyItem = 'Yes') "
        "WHERE BOM.FinItem = ? AND BOM.RestCode = ? "
        "AND CONVERT(date, BOM.AppDate) = ? ORDER BY BOM.RawSno",
        (fin_item, rest_code, app_date), cn=cn)
    return {
        "fin_item": fin_item, "rest_code": rest_code,
        "app_date": str(app_date),
        "fin_qty": float(rows[0].FinQty or 1) if rows else 1.0,
        "saved_for_qty": float(rows[0].SavedForQty or 1) if rows else 1.0,
        "rows": [{"raw_item": (r.RawItem or "").strip(),
                  "raw_name": (r.RawName or "").strip(),
                  "raw_unit": (r.RawUnit or "").strip(),
                  "raw_qty": float(r.RawQty or 0),
                  "cost": float(r.Cost or 0),
                  "waste": float(r.Waste or 0),
                  "total": float(r.Total or 0),
                  "sno": int(r.RawSno or 0)} for r in rows],
    }


def list_finish_items(rest_code: str, cn=None) -> list[dict]:
    """Finish-item candidates (VB6 DGFinish: menu items, DispCode<>9999)."""
    rows = db.query(
        "SELECT Code, Name, Unit FROM ItemMast WHERE RestCode = ? "
        "AND (ItemType IS NULL OR ItemType NOT IN ('Store')) "
        "AND ISNULL(DispCode, 0) <> 9999 AND ISNULL(GravyItem, '') <> 'Yes' "
        "ORDER BY Name", (rest_code,), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "unit": (r.Unit or "").strip()} for r in rows]


def list_raw_items(rest_code: str, cn=None) -> list[dict]:
    """Raw candidates: Store items + gravy items (VB6 join inverse)."""
    rows = db.query(
        "SELECT Code, Name, Unit, LPurRate, IssueUnit FROM ItemMast "
        "WHERE (ItemType = 'Store' OR GravyItem = 'Yes') "
        "AND (LOGSITE_CODE = ? OR LOGSITE_CODE = 'HO') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "unit": (r.Unit or "").strip(),
             "rate": float(r.LPurRate or 0),
             "issue_unit": (r.IssueUnit or "").strip()} for r in rows]


def save_recipe(fin_item: str, rest_code: str, fin_qty: float, app_date,
                raw_rows, user: str = USER, cn=None,
                commit: bool = True) -> dict:
    """Recipe re-save (VB6: DELETE + per-row INSERT + ItemMast update).

    raw_rows: [{raw_item, raw_qty, waste}] — rate/cost ItemMast.LPurRate
    se compute hota hai. Returns dict(rows_saved, cost_per_unit)."""
    fin_item = (fin_item or "").strip()
    rest_code = (rest_code or "").strip()
    raw_rows = [r for r in (raw_rows or []) if (r.get("raw_item") or "").strip()]
    if not fin_item or not rest_code:
        raise ValueError("Finish item aur outlet zaroori hain")
    if float(fin_qty) <= 0:
        raise ValueError("FinQty > 0 hona chahiye")
    if not raw_rows:
        raise ValueError("Kam se kam ek raw item row chahiye")
    # raw items resolve (rate ke liye)
    raw_map = {r["code"]: r for r in list_raw_items(rest_code, cn=cn)}
    for r in raw_rows:
        code = (r.get("raw_item") or "").strip()
        if code not in raw_map:
            raise ValueError(f"Raw item {code!r} Store/Gravy list me nahi hai")
        if float(r.get("raw_qty") or 0) <= 0:
            raise ValueError(f"Raw item {code!r} ki qty > 0 honi chahiye")
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute(
            "DELETE FROM BOM WHERE FinItem = ? AND RestCode = ? "
            "AND CONVERT(date, AppDate) = ?",
            (fin_item, rest_code, app_date), cn=cn, commit=False)
        total_all = 0.0
        for sno, r in enumerate(raw_rows, start=1):
            raw = raw_map[r["raw_item"]]
            raw_qty = float(r["raw_qty"])
            waste = float(r.get("waste") or 0)
            cost = float(raw["rate"] or 0) * raw_qty / float(fin_qty)
            total = cost + waste
            total_all += total
            db.execute(
                "INSERT INTO BOM (Site_Code, FinItem, FinQty, RawItem, "
                "RawQty, RawSno, Cost, Waste, Total, U_Name, U_EntDt, "
                "U_AE, SavedForQty, AppDate, WtUnit, LogSite_Code, "
                "RestCode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "getdate(), 'A', ?, ?, ?, ?, ?)",
                (SITE_CODE, fin_item, float(fin_qty), raw["code"],
                 raw_qty, sno, round(cost, 4), waste, round(total, 4),
                 user, float(fin_qty), app_date, "", SITE_CODE, rest_code),
                cn=cn, commit=False)
        # VB6 loc_1504E21: finish item ka cost backfill
        cost_per_unit = round(total_all, 4)
        db.execute(
            "UPDATE ItemMast SET IssueUnit = Unit, convRatio = 1, "
            "PurchRate = ?, LPurRate = ?, U_Name = ?, "
            "U_EntDt = getdate(), U_AE = 'E' WHERE Code = ? AND RestCode = ?",
            (cost_per_unit, cost_per_unit, user, fin_item, rest_code),
            cn=cn, commit=False)
        if commit:
            cn.commit()
        return {"rows_saved": len(raw_rows), "cost_per_unit": cost_per_unit}
    except Exception:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own:
            cn.close()


def delete_recipe(fin_item: str, rest_code: str, app_date,
                  cn=None, commit: bool = True) -> int:
    """Recipe delete (VB6 loc_113A999). Returns deleted row count."""
    own = cn is None
    cn = cn or db.connect()
    try:
        cur = cn.cursor()
        cur.execute(
            "DELETE FROM BOM WHERE FinItem = ? AND RestCode = ? "
            "AND CONVERT(date, AppDate) = ?",
            (fin_item, rest_code, app_date))
        n = cur.rowcount
        if commit:
            cn.commit()
        return max(n, 0)
    finally:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
            cn.close()
