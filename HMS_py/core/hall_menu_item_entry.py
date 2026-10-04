"""Hall Menu Item Entry core module — VB6 HallMenuItemEntry.frm port.

VB6 Form: HallMenuItemEntry (Caption="Menu Item Entry")
- Detailed menu item master for banquet
- Fields: Code, Name, Unit, Rate, ItemGroup, ItemCategory, RestCode, TaxCode, etc.
- Multiple lookup grids: ItemCategory, ItemGroup, RestCode, Unit
- TopCtrl1 navigation with child grids
"""

from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

LIMITS = {
    "code": 8, "name": 50, "unit": 10, "rate": 10,
    "itemgroup": 10, "itemcat": 6, "rest": 6, "tax": 10,
    "srate": 10, "pur_rate": 10, "minstock": 10, "maxstock": 10,
}
COLS = ("Code, Name, Unit, Rate, ItemGroup, ItemCategory, RestCode, TaxCode, "
        "SaleRate, PurchRate, MinStock, MaxStock, ReStock, DirectSale, "
        "U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code")


def _map_hall_menu_item(r) -> dict:
    try:
        return {
            "code": r.Code or "",
            "name": (r.Name or "").strip(),
            "unit": r.Unit or "",
            "rate": float(r.Rate or 0),
            "itemgroup": r.ItemGroup or "",
            "itemcat": r.ItemCategory or "",
            "rest": r.RestCode or "",
            "tax": r.TaxCode or "",
            "srate": float(r.SaleRate or 0),
            "pur_rate": float(r.PurchRate or 0),
            "minstock": float(r.MinStock or 0),
            "maxstock": float(r.MaxStock or 0),
            "restock": float(r.ReStock or 0),
            "direct_sale": r.DirectSale or "N",
            "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        c, n, u, rt, ig, ic, rc, tc, sr, pr, ms, xrs, rs, ds, un, _, uae = r
        return {
            "code": c or "",
            "name": (n or "").strip(),
            "unit": u or "",
            "rate": float(rt or 0),
            "itemgroup": ig or "",
            "itemcat": ic or "",
            "rest": rc or "",
            "tax": tc or "",
            "srate": float(sr or 0),
            "pur_rate": float(pr or 0),
            "minstock": float(ms or 0),
            "maxstock": float(xrs or 0),
            "restock": float(rs or 0),
            "direct_sale": ds or "N",
            "u_name": un or "",
            "u_ae": uae or "",
        }


def hall_menu_item_list(cn=None, rest_code: str = "") -> list[dict]:
    where = ""
    if rest_code:
        where = f"WHERE RestCode = '{rest_code}' "
    rows = db.query(
        f"SELECT {COLS} FROM HallMenuItemEntry {where}ORDER BY Code", cn=cn)
    return [_map_hall_menu_item(r) for r in rows]


def hall_menu_item_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {COLS} FROM HallMenuItemEntry WHERE Code = ?", (code,), cn=cn)
    return _map_hall_menu_item(rows[0]) if rows else None


def hall_menu_item_exists(code: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM HallMenuItemEntry WHERE Code = ?", (code,), cn=cn))


def hall_menu_item_insert(rec: dict, cn=None, commit=True) -> int:
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    
    # Validate references
    if rec.get("itemgroup"):
        exists = bool(db.query("SELECT 1 FROM HallItemGroupMast WHERE Code = ?", (rec["itemgroup"],), cn=cn))
        if not exists:
            raise ValueError(f"ItemGroup '{rec['itemgroup']}' nahi mila")
    
    if rec.get("itemcat"):
        exists = bool(db.query("SELECT 1 FROM HallMenuCatalog WHERE Code = ?", (rec["itemcat"],), cn=cn))
        if not exists:
            raise ValueError(f"ItemCategory '{rec['itemcat']}' nahi mila")
    
    if rec.get("rest"):
        exists = bool(db.query("SELECT 1 FROM Depart WHERE Code = ?", (rec["rest"],), cn=cn))
        if not exists:
            raise ValueError(f"RestCode '{rec['rest']}' nahi mila")
    
    if rec.get("tax"):
        exists = bool(db.query("SELECT 1 FROM TaxMast WHERE Code = ?", (rec["tax"],), cn=cn))
        if not exists:
            raise ValueError(f"TaxCode '{rec['tax']}' nahi mila")

    return db.execute(
        "INSERT INTO HallMenuItemEntry (Code, Name, Unit, Rate, ItemGroup, ItemCategory, RestCode, TaxCode, "
        "SaleRate, PurchRate, MinStock, MaxStock, ReStock, DirectSale, "
        "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["name"], rec.get("unit", ""), float(rec.get("rate", 0)),
         rec.get("itemgroup", ""), rec.get("itemcat", ""), rec.get("rest", ""),
         rec.get("tax", ""), float(rec.get("srate", 0)), float(rec.get("pur_rate", 0)),
         float(rec.get("minstock", 0)), float(rec.get("maxstock", 0)), float(rec.get("restock", 0)),
         rec.get("direct_sale", "N"), SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def hall_menu_item_update(code: str, rec: dict, cn=None, commit=True) -> int:
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    
    # Validate references if provided
    if rec.get("itemgroup"):
        exists = bool(db.query("SELECT 1 FROM HallItemGroupMast WHERE Code = ?", (rec["itemgroup"],), cn=cn))
        if not exists:
            raise ValueError(f"ItemGroup '{rec['itemgroup']}' nahi mila")
    
    if rec.get("itemcat"):
        exists = bool(db.query("SELECT 1 FROM HallMenuCatalog WHERE Code = ?", (rec["itemcat"],), cn=cn))
        if not exists:
            raise ValueError(f"ItemCategory '{rec['itemcat']}' nahi mila")
    
    if rec.get("rest"):
        exists = bool(db.query("SELECT 1 FROM Depart WHERE Code = ?", (rec["rest"],), cn=cn))
        if not exists:
            raise ValueError(f"RestCode '{rec['rest']}' nahi mila")
    
    if rec.get("tax"):
        exists = bool(db.query("SELECT 1 FROM TaxMast WHERE Code = ?", (rec["tax"],), cn=cn))
        if not exists:
            raise ValueError(f"TaxCode '{rec['tax']}' nahi mila")

    return db.execute(
        "UPDATE HallMenuItemEntry SET Name = ?, Unit = ?, Rate = ?, ItemGroup = ?, "
        "ItemCategory = ?, RestCode = ?, TaxCode = ?, SaleRate = ?, PurchRate = ?, "
        "MinStock = ?, MaxStock = ?, ReStock = ?, DirectSale = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec["name"], rec.get("unit", ""), float(rec.get("rate", 0)),
         rec.get("itemgroup", ""), rec.get("itemcat", ""), rec.get("rest", ""),
         rec.get("tax", ""), float(rec.get("srate", 0)), float(rec.get("pur_rate", 0)),
         float(rec.get("minstock", 0)), float(rec.get("maxstock", 0)), float(rec.get("restock", 0)),
         rec.get("direct_sale", "N"), USER, code), cn=cn, commit=commit)


def hall_menu_item_delete(code: str, cn=None, commit=True) -> int:
    return db.execute(
        "DELETE FROM HallMenuItemEntry WHERE Code = ?", (code,), cn=cn, commit=commit)


class _HallMenuItemAPI:
    LIMITS = LIMITS
    pk_key = "code"

    @staticmethod
    def list_all(cn=None): return hall_menu_item_list(cn)
    @staticmethod
    def get(code, cn=None): return hall_menu_item_get(code, cn)
    @staticmethod
    def exists(code, cn=None): return hall_menu_item_exists(code, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return hall_menu_item_insert(rec, cn, commit)
    @staticmethod
    def update(code, rec, cn=None, commit=True): return hall_menu_item_update(code, rec, cn, commit)
    @staticmethod
    def delete(code, cn=None, commit=True): return hall_menu_item_delete(code, cn, commit)

HallMenuItemAPI = _HallMenuItemAPI()