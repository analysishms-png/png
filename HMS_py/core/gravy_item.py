"""Gravy Item Entry (VB6 RsGravyItemEntry) — semi-finished gravy items.

VB6 RsGravyItemEntry.frm ka faithful port (live-DB probes se verified,
_qa/probe_gravy*.py):
  - GravyItem='Yes' ItemMast rows ka dedicated master (live me 0 rows —
    fresh module).
  - Code-gen (loc_14B1E9C): site[:2] + 6-digit, MAX over
    (SELECT Code FROM Item UNION SELECT Code FROM ItemMast)
    SUBSTRING(Code,3,6) numeric, site-filtered (sample live: KK003200).
  - Save (loc_14B212E): 18-col ItemMast INSERT — Code,Name,RestCode,
    DispCode,Unit,ItemGroup,ItemCatCode,DiscApp,RateEdit,Site_Code,
    U_Name,U_EntDt,U_AE,Type,Kitchen,SaleRate,GravyItem,LogSite_Code —
    GravyItem='Yes', Type='Finish' (live convention: saare menu items
    'Finish'), U_AE 'A' insert / 'E' update.
  - UnitMast auto-create (loc_14B26CD): naam nahi mila to INSERT.
  - Edit (loc_14B248F): UPDATE ItemMast SET ... WHERE Code=? (GravyItem
    untouched — 'Yes' rehta hai).
  - Delete (loc_1310D20..13110F3): STOCK.ITEM + BOM.FinItem reference
    guards (VB6 Proc_6_108 checks), phir ItemMast + ItemRate + Stock
    deletes, transaction me.

Saare SQL param-bound. Validations VB6 form jaisi: Name/Unit/ItemGroup/
ItemCatCode/Kitchen zaroori (loc_14B1D09..14B1E44).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()


def next_gravy_code(cn=None) -> str:
    """VB6 loc_14B1E9C: site[:2] + SUBSTRING(Code,3,6) max + 1, 6-digit."""
    rows = db.query(
        "SELECT ISNULL(MAX(CAST(SUBSTRING(Q.Code, 3, 6) AS INT)), 0) + 1 AS N "
        "FROM (SELECT Code, Site_Code FROM Item "
        "UNION SELECT Code, Site_Code FROM ItemMast) Q "
        "WHERE Q.Site_Code = ? AND ISNUMERIC(SUBSTRING(Q.Code, 3, 6)) = 1",
        (SITE_CODE,), cn=cn)
    n = int(rows[0].N or 1) if rows else 1
    return SITE_CODE[:2] + str(n).rjust(6, "0")


def list_kitchens(cn=None) -> list[dict]:
    """Kitchen options (Depart codes — live kitchens bhi Depart hain)."""
    rows = db.query(
        "SELECT Code, Name FROM Depart "
        "WHERE (LOGSITE_CODE = ? OR LOGSITE_CODE = 'HO') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip()} for r in rows]


def list_units(cn=None) -> list[str]:
    rows = db.query("SELECT Name FROM UnitMast ORDER BY Name", (), cn=cn)
    return [(r.Name or "").strip() for r in rows if r.Name]


def list_item_groups(cn=None) -> list[str]:
    """ItemGrp names (VB6 DGItemGroup dropdown)."""
    rows = db.query(
        "SELECT Name FROM ItemGrp WHERE (LOGSITE_CODE = ? OR "
        "LOGSITE_CODE = 'HO') ORDER BY Name", (SITE_CODE,), cn=cn)
    return [(r.Name or "").strip() for r in rows if r.Name]


def list_item_cats(cn=None) -> list[str]:
    """ItemCatMast names (VB6 DGItemCat dropdown)."""
    rows = db.query(
        "SELECT Name FROM ItemCatMast WHERE (LOGSITE_CODE = ? OR "
        "LOGSITE_CODE = 'HO') ORDER BY Name", (SITE_CODE,), cn=cn)
    return [(r.Name or "").strip() for r in rows if r.Name]


def list_gravy_items(cn=None) -> list[dict]:
    """GravyItem='Yes' items ki list (grid ke liye)."""
    rows = db.query(
        "SELECT Code, Name, RestCode, DispCode, Unit, ItemGroup, "
        "ItemCatCode, Kitchen, SaleRate, DiscApp, RateEdit "
        "FROM ItemMast WHERE GravyItem = 'Yes' ORDER BY Code", (), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "restcode": (r.RestCode or "").strip(),
             "dispcode": int(r.DispCode or 0),
             "unit": (r.Unit or "").strip(),
             "itemgroup": (r.ItemGroup or "").strip(),
             "itemcatcode": (r.ItemCatCode or "").strip(),
             "kitchen": (r.Kitchen or "").strip(),
             "salerate": float(r.SaleRate or 0),
             "discapp": (r.DiscApp or "").strip(),
             "rateedit": (r.RateEdit or "").strip()} for r in rows]


def _ensure_unit(unit: str, user: str, cn) -> None:
    """VB6 loc_14B26CD: UnitMast me naam nahi to insert."""
    unit = (unit or "").strip()
    if not unit:
        return
    rows = db.query("SELECT COUNT(*) AS N FROM UnitMast WHERE Name = ?",
                    (unit,), cn=cn)
    if rows and int(rows[0].N or 0) == 0:
        db.execute(
            "INSERT INTO UnitMast (Name, Site_Code, U_Name, U_EntDt, "
            "U_AE, LogSite_Code) VALUES (?, ?, ?, getdate(), 'A', ?)",
            (unit, SITE_CODE, user, SITE_CODE), cn=cn, commit=False)


def _validate(name: str, unit: str, itemgroup: str, itemcatcode: str,
              kitchen: str) -> None:
    """VB6 form validations (loc_14B1D09..14B1E44)."""
    if not (name or "").strip():
        raise ValueError("Name zaroori hai")
    if not (unit or "").strip():
        raise ValueError("Unit zaroori hai")
    if not (itemgroup or "").strip():
        raise ValueError("Item Group zaroori hai")
    if not (itemcatcode or "").strip():
        raise ValueError("Item Category zaroori hai")
    if not (kitchen or "").strip():
        raise ValueError("Kitchen zaroori hai")


def insert_gravy_item(name: str, rest_code: str, unit: str,
                      itemgroup: str, itemcatcode: str, kitchen: str,
                      sale_rate: float, disp_code: int = 9999,
                      disc_app: str = "N", rate_edit: str = "N",
                      user: str = USER, cn=None,
                      commit: bool = True) -> str:
    """Naya gravy item (VB6 18-col INSERT, GravyItem='Yes'). Returns Code."""
    _validate(name, unit, itemgroup, itemcatcode, kitchen)
    own = cn is None
    cn = cn or db.connect()
    try:
        code = next_gravy_code(cn=cn)
        _ensure_unit(unit, user, cn)
        db.execute(
            "INSERT INTO ItemMast (Code, Name, RestCode, DispCode, Unit, "
            "ItemGroup, ItemCatCode, DiscApp, RateEdit, Site_Code, U_Name, "
            "U_EntDt, U_AE, Type, Kitchen, SaleRate, GravyItem, "
            "LogSite_Code) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
            "getdate(), 'A', 'Finish', ?, ?, 'Yes', ?)",
            (code, name.strip(), rest_code, int(disp_code), unit.strip(),
             itemgroup, itemcatcode, (disc_app or "N")[:1],
             (rate_edit or "N")[:1], SITE_CODE, user, kitchen, sale_rate,
             SITE_CODE), cn=cn, commit=False)
        if commit:
            cn.commit()
        return code
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


def update_gravy_item(code: str, name: str, rest_code: str, unit: str,
                      itemgroup: str, itemcatcode: str, kitchen: str,
                      sale_rate: float, disp_code: int = 9999,
                      disc_app: str = "N", rate_edit: str = "N",
                      user: str = USER, cn=None,
                      commit: bool = True) -> None:
    """Gravy item edit (VB6 UPDATE, GravyItem untouched)."""
    _validate(name, unit, itemgroup, itemcatcode, kitchen)
    own = cn is None
    cn = cn or db.connect()
    try:
        _ensure_unit(unit, user, cn)
        db.execute(
            "UPDATE ItemMast SET Name = ?, RestCode = ?, DispCode = ?, "
            "Unit = ?, ItemGroup = ?, ItemCatCode = ?, DiscApp = ?, "
            "RateEdit = ?, Site_Code = ?, U_Name = ?, U_EntDt = getdate(), "
            "U_AE = 'E', Kitchen = ?, SaleRate = ? "
            "WHERE Code = ? AND GravyItem = 'Yes'",
            (name.strip(), rest_code, int(disp_code), unit.strip(),
             itemgroup, itemcatcode, (disc_app or "N")[:1],
             (rate_edit or "N")[:1], SITE_CODE, user, kitchen, sale_rate,
             code), cn=cn, commit=False)
        if commit:
            cn.commit()
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


def delete_gravy_item(code: str, cn=None, commit: bool = True) -> None:
    """Delete (VB6 loc_1310D20..13110F3): STOCK/BOM guards, phir
    ItemMast + ItemRate + Stock rows."""
    guards = (
        ("Stock", "SELECT COUNT(*) AS N FROM Stock WHERE Item = ?",
         "Stock entries is item ke liye exist karti hain"),
        ("BOM", "SELECT COUNT(*) AS N FROM BOM WHERE FinItem = ?",
         "BOM (Consumption) me is item ka reference hai"),
    )
    rows = db.query(
        "SELECT COUNT(*) AS N FROM ItemMast WHERE Code = ? "
        "AND GravyItem = 'Yes'", (code,), cn=cn)
    if not rows or int(rows[0].N or 0) == 0:
        raise ValueError(f"Gravy item {code} nahi mila")
    for _label, sql, msg in guards:
        g = db.query(sql, (code,), cn=cn)
        if g and int(g[0].N or 0) > 0:
            raise ValueError(msg)
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute("DELETE FROM ItemMast WHERE Code = ?", (code,),
                   cn=cn, commit=False)
        db.execute("DELETE FROM ItemRate WHERE ItemCode = ?", (code,),
                   cn=cn, commit=False)
        db.execute("DELETE FROM Stock WHERE Item = ?", (code,),
                   cn=cn, commit=False)
        if commit:
            cn.commit()
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
