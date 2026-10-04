"""Hall Menu Catalog core module — VB6 HallMenuCatalog.frm port.

VB6 Form: HallMenuCatalog (Caption="Menu Catalog")
- Catalog of menu items for banquet operations
- Fields: Code (PK), ItemCode (FK->ItemMast), RestCode, Name, ItemCatCode, Category, ItemGroupCode
- Category radio buttons: Veg/Non-Veg
- Grid for GroupCatalog limits (ItemCatCode + Limit per catalog item)
- TopCtrl1 navigation with child grid (GroupCatalog)
"""

from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

LIMITS = {"code": 6, "name": 50, "itemcode": 8, "rest": 6, "itemcat": 6, "category": 30, "itemgroup": 10}
COLS = ("Code, ItemCode, RestCode, Name, ItemCatCode, Category, ItemGroupCode, "
        "U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code")


def _map_hall_menu_catalog(r) -> dict:
    try:
        return {
            "code": r.Code or "",
            "itemcode": r.ItemCode or "",
            "rest": r.RestCode or "",
            "name": (r.Name or "").strip(),
            "itemcat": r.ItemCatCode or "",
            "category": r.Category or "",
            "itemgroup": r.ItemGroupCode or "",
            "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        c, ic, rc, n, icc, cat, igc, un, _, uae = r
        return {
            "code": c or "",
            "itemcode": ic or "",
            "rest": rc or "",
            "name": (n or "").strip(),
            "itemcat": icc or "",
            "category": cat or "",
            "itemgroup": igc or "",
            "u_name": un or "",
            "u_ae": uae or "",
        }


def hall_menu_catalog_list(cn=None) -> list[dict]:
    rows = db.query(
        f"SELECT {COLS} FROM HallMenuCatalog ORDER BY Code", cn=cn)
    return [_map_hall_menu_catalog(r) for r in rows]


def hall_menu_catalog_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {COLS} FROM HallMenuCatalog WHERE Code = ?", (code,), cn=cn)
    return _map_hall_menu_catalog(rows[0]) if rows else None


def hall_menu_catalog_exists(code: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM HallMenuCatalog WHERE Code = ?", (code,), cn=cn))


def hall_menu_catalog_insert(rec: dict, cn=None, commit=True) -> int:
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    if not rec.get("itemcode", "").strip():
        raise ValueError("ItemCode zaroori hai")
    
    # Validate ItemMast reference
    item_exists = bool(db.query(
        "SELECT 1 FROM ItemMast WHERE Code = ? AND Site_Code = ?",
        (rec["itemcode"], SITE_CODE), cn=cn))
    if not item_exists:
        raise ValueError(f"ItemMast Code '{rec['itemcode']}' nahi mila")

    # Validate RestCode reference
    rest_exists = bool(db.query(
        "SELECT 1 FROM Depart WHERE Code = ?", (rec["rest"],), cn=cn))
    if not rest_exists:
        raise ValueError(f"RestCode '{rec['rest']}' nahi mila")

    return db.execute(
        "INSERT INTO HallMenuCatalog (Code, ItemCode, RestCode, Name, ItemCatCode, Category, ItemGroupCode, "
        "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["itemcode"], rec["rest"], rec["name"],
         rec.get("itemcat", ""), rec.get("category", ""), rec.get("itemgroup", ""),
         SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def hall_menu_catalog_update(code: str, rec: dict, cn=None, commit=True) -> int:
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    
    # Validate references if provided
    if rec.get("itemcode"):
        item_exists = bool(db.query(
            "SELECT 1 FROM ItemMast WHERE Code = ? AND Site_Code = ?",
            (rec["itemcode"], SITE_CODE), cn=cn))
        if not item_exists:
            raise ValueError(f"ItemMast Code '{rec['itemcode']}' nahi mila")
    
    if rec.get("rest"):
        rest_exists = bool(db.query(
            "SELECT 1 FROM Depart WHERE Code = ?", (rec["rest"],), cn=cn))
        if not rest_exists:
            raise ValueError(f"RestCode '{rec['rest']}' nahi mila")

    return db.execute(
        "UPDATE HallMenuCatalog SET ItemCode = ?, RestCode = ?, Name = ?, ItemCatCode = ?, "
        "Category = ?, ItemGroupCode = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec.get("itemcode", ""), rec.get("rest", ""), rec["name"],
         rec.get("itemcat", ""), rec.get("category", ""), rec.get("itemgroup", ""),
         USER, code), cn=cn, commit=commit)


def hall_menu_catalog_delete(code: str, cn=None, commit=True) -> int:
    """Delete with VB6 parity: also delete GroupCatalog rows for this CatCode."""
    cn_inner = cn or db.connect()
    try:
        if not cn:
            cn_inner.autocommit = False
        
        # Delete GroupCatalog rows first (VB6: Delete From GroupCatalog Where CatCode='..')
        db.execute("DELETE FROM GroupCatalog WHERE CatCode = ?", (code,), cn=cn_inner, commit=False)
        
        # Delete main catalog
        db.execute("DELETE FROM HallMenuCatalog WHERE Code = ?", (code,), cn=cn_inner, commit=False)
        
        if not cn:
            cn_inner.commit()
        return 1
    except Exception:
        if not cn:
            try:
                cn_inner.rollback()
            except Exception:
                pass
        raise
    finally:
        if not cn:
            cn_inner.close()


# ============================================================
# GroupCatalog (limits per catalog item) - VB6 HallMenuCatalog grid
# ============================================================

GROUPCAT_LIMITS = {"catcode": 6, "itemcat": 6, "limit": 10}
GROUPCAT_COLS = "CatCode, ItemCatCode, Limit, U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code"


def _map_group_catalog(r) -> dict:
    try:
        return {
            "catcode": r.CatCode or "",
            "itemcat": r.ItemCatCode or "",
            "limit": r.Limit or 0,
            "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        cc, ic, lim, un, _, uae = r
        return {
            "catcode": cc or "",
            "itemcat": ic or "",
            "limit": lim or 0,
            "u_name": un or "",
            "u_ae": uae or "",
        }


def group_catalog_list(catcode: str, cn=None) -> list[dict]:
    """Get GroupCatalog rows for a catalog item (VB6 fill order: ItemGrp join)."""
    rows = db.query(
        "SELECT GC.CatCode, GC.ItemCatCode, GC.Limit, IG.Name AS GroupName "
        "FROM GroupCatalog GC LEFT JOIN ItemGrp IG ON IG.Code = GC.ItemCatCode "
        "WHERE GC.CatCode = ? ORDER BY IG.Name",
        (catcode,), cn=cn)
    return [_map_group_catalog(r) for r in rows]


def group_catalog_set(catcode: str, limits: list[dict], user: str = USER,
                      cn=None, commit: bool = True) -> int:
    """VB6 save: DELETE CatCode rows -> INSERT har (itemcat, limit) row.
    
    limits: [{itemcat, limit}] — limit int (0 = no limit).
    Transaction same-connection.
    """
    if not str(catcode or "").strip():
        raise ValueError("CatCode zaroori hai")
    own = cn is None
    if own:
        cn = db.connect()
    try:
        seen = set()
        clean = []
        for l in limits:
            ic = str(l.get("itemcat", "")).strip()
            if not ic:
                raise ValueError("ItemCatCode zaroori hai")
            if ic in seen:
                raise ValueError(f"Duplicate ItemCatCode: {ic}")
            seen.add(ic)
            try:
                lim = int(float(l.get("limit") or 0))
            except (TypeError, ValueError):
                raise ValueError("Limit number hona chahiye")
            clean.append((ic, lim))
        db.execute("DELETE FROM GroupCatalog WHERE CatCode = ?",
                   (catcode,), cn=cn, commit=False)
        for ic, lim in clean:
            db.execute(
                "INSERT INTO GroupCatalog (CatCode, ItemCatCode, Limit, "
                "U_Name, Site_Code, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, getdate(), 'A', ?)",
                (catcode, ic, lim, user, SITE_CODE, SITE_CODE),
                cn=cn, commit=False)
        if commit:
            cn.commit()
        return len(clean)
    except Exception:
        if own and cn is not None:
            try:
                cn.rollback()
            except Exception:
                pass
        raise
    finally:
        if own and cn is not None:
            cn.close()


class _HallMenuCatalogAPI:
    LIMITS = LIMITS
    pk_key = "code"

    @staticmethod
    def list_all(cn=None): return hall_menu_catalog_list(cn)
    @staticmethod
    def get(code, cn=None): return hall_menu_catalog_get(code, cn)
    @staticmethod
    def exists(code, cn=None): return hall_menu_catalog_exists(code, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return hall_menu_catalog_insert(rec, cn, commit)
    @staticmethod
    def update(code, rec, cn=None, commit=True): return hall_menu_catalog_update(code, rec, cn, commit)
    @staticmethod
    def delete(code, cn=None, commit=True): return hall_menu_catalog_delete(code, cn, commit)

HallMenuCatalogAPI = _HallMenuCatalogAPI()