"""Hall Item Category & Charge Master core module — VB6 FrmHallItemCatMast.frm port.

VB6 Form: FrmHallItemCatMast (Caption="Category and Charge Master")
- Category master with linked Sale Account and Sale Tax grids
- Fields: CatCode (PK), CatName, CategoryCode (FK->HallItemGroupMast), SaleAcCode, SaleTaxCode
- Two child grids: DGSaleAc (Sale Account mapping), DGSaleTax (Sale Tax mapping)
- TopCtrl1 navigation with child grid editing
"""

from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

LIMITS = {"catcode": 6, "catname": 50, "catcode_ref": 6, "saleac": 10, "saletax": 10}
COLS = ("CatCode, CatName, CategoryCode, SaleAcCode, SaleTaxCode, "
        "U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code")


def _map_hall_item_cat(r) -> dict:
    try:
        return {
            "catcode": r.CatCode or "",
            "catname": (r.CatName or "").strip(),
            "category_code": r.CategoryCode or "",
            "sale_ac_code": r.SaleAcCode or "",
            "sale_tax_code": r.SaleTaxCode or "",
            "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        cc, cn, ccr, sac, stc, un, _, uae = r
        return {
            "catcode": cc or "",
            "catname": (cn or "").strip(),
            "category_code": ccr or "",
            "sale_ac_code": sac or "",
            "sale_tax_code": stc or "",
            "u_name": un or "",
            "u_ae": uae or "",
        }


def hall_item_cat_list(cn=None) -> list[dict]:
    rows = db.query(
        f"SELECT {COLS} FROM HallItemCatMast ORDER BY CatCode", cn=cn)
    return [_map_hall_item_cat(r) for r in rows]


def hall_item_cat_get(catcode: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {COLS} FROM HallItemCatMast WHERE CatCode = ?", (catcode,), cn=cn)
    return _map_hall_item_cat(rows[0]) if rows else None


def hall_item_cat_exists(catcode: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM HallItemCatMast WHERE CatCode = ?", (catcode,), cn=cn))


def hall_item_cat_insert(rec: dict, cn=None, commit=True) -> int:
    if not rec.get("catcode", "").strip():
        raise ValueError("CatCode zaroori hai")
    if not rec.get("catname", "").strip():
        raise ValueError("CatName zaroori hai")
    
    # Validate CategoryCode reference to HallItemGroupMast
    if rec.get("category_code"):
        exists = bool(db.query(
            "SELECT 1 FROM HallItemGroupMast WHERE Code = ?", (rec["category_code"],), cn=cn))
        if not exists:
            raise ValueError(f"CategoryCode '{rec['category_code']}' nahi mila (HallItemGroupMast)")
    
    # Validate SaleAcCode reference to GL/Account master
    if rec.get("sale_ac_code"):
        exists = bool(db.query(
            "SELECT 1 FROM AcGroup WHERE Code = ?", (rec["sale_ac_code"],), cn=cn))
        if not exists:
            raise ValueError(f"SaleAcCode '{rec['sale_ac_code']}' nahi mila (AcGroup)")
    
    # Validate SaleTaxCode reference to TaxMast
    if rec.get("sale_tax_code"):
        exists = bool(db.query(
            "SELECT 1 FROM TaxMast WHERE Code = ?", (rec["sale_tax_code"],), cn=cn))
        if not exists:
            raise ValueError(f"SaleTaxCode '{rec['sale_tax_code']}' nahi mila (TaxMast)")

    return db.execute(
        "INSERT INTO HallItemCatMast (CatCode, CatName, CategoryCode, SaleAcCode, SaleTaxCode, "
        "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["catcode"], rec["catname"], rec.get("category_code", ""),
         rec.get("sale_ac_code", ""), rec.get("sale_tax_code", ""),
         SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def hall_item_cat_update(catcode: str, rec: dict, cn=None, commit=True) -> int:
    if not rec.get("catname", "").strip():
        raise ValueError("CatName zaroori hai")
    
    # Validate references if provided
    if rec.get("category_code"):
        exists = bool(db.query(
            "SELECT 1 FROM HallItemGroupMast WHERE Code = ?", (rec["category_code"],), cn=cn))
        if not exists:
            raise ValueError(f"CategoryCode '{rec['category_code']}' nahi mila")
    
    if rec.get("sale_ac_code"):
        exists = bool(db.query(
            "SELECT 1 FROM AcGroup WHERE Code = ?", (rec["sale_ac_code"],), cn=cn))
        if not exists:
            raise ValueError(f"SaleAcCode '{rec['sale_ac_code']}' nahi mila")
    
    if rec.get("sale_tax_code"):
        exists = bool(db.query(
            "SELECT 1 FROM TaxMast WHERE Code = ?", (rec["sale_tax_code"],), cn=cn))
        if not exists:
            raise ValueError(f"SaleTaxCode '{rec['sale_tax_code']}' nahi mila")

    return db.execute(
        "UPDATE HallItemCatMast SET CatName = ?, CategoryCode = ?, SaleAcCode = ?, SaleTaxCode = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE CatCode = ?",
        (rec["catname"], rec.get("category_code", ""), rec.get("sale_ac_code", ""),
         rec.get("sale_tax_code", ""), USER, catcode), cn=cn, commit=commit)


def hall_item_cat_delete(catcode: str, cn=None, commit=True) -> int:
    # Check if referenced in HallMenuCatalog or HallMenuItemEntry
    ref_cat = db.query(
        "SELECT 1 FROM HallMenuCatalog WHERE CategoryCode = ?", (catcode,), cn=cn)
    if ref_cat:
        raise ValueError("Category is referenced in HallMenuCatalog - cannot delete")
    
    ref_item = db.query(
        "SELECT 1 FROM HallMenuItemEntry WHERE ItemCategory = ?", (catcode,), cn=cn)
    if ref_item:
        raise ValueError("Category is referenced in HallMenuItemEntry - cannot delete")
    
    return db.execute(
        "DELETE FROM HallItemCatMast WHERE CatCode = ?", (catcode,), cn=cn, commit=commit)


# ============================================================
# HallItemCatSaleAc (Sale Account grid) - VB6 DGSaleAc
# ============================================================

CATSALEAC_COLS = "CatCode, SaleAcCode, U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code"


def _map_cat_sale_ac(r) -> dict:
    try:
        return {
            "catcode": r.CatCode or "",
            "sale_ac_code": r.SaleAcCode or "",
            "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        cc, sac, un, _, uae = r
        return {
            "catcode": cc or "",
            "sale_ac_code": sac or "",
            "u_name": un or "",
            "u_ae": uae or "",
        }


def hall_item_cat_sale_ac_list(catcode: str, cn=None) -> list[dict]:
    rows = db.query(
        f"SELECT {CATSALEAC_COLS} FROM HallItemCatSaleAc WHERE CatCode = ? ORDER BY SaleAcCode",
        (catcode,), cn=cn)
    return [_map_cat_sale_ac(r) for r in rows]


def hall_item_cat_sale_ac_set(catcode: str, sale_ac_codes: list[str], user: str = USER,
                               cn=None, commit: bool = True) -> int:
    """VB6 grid save: DELETE CatCode rows -> INSERT each SaleAcCode."""
    if not str(catcode or "").strip():
        raise ValueError("CatCode zaroori hai")
    own = cn is None
    if own:
        cn = db.connect()
    try:
        db.execute("DELETE FROM HallItemCatSaleAc WHERE CatCode = ?",
                   (catcode,), cn=cn, commit=False)
        for sac in sale_ac_codes:
            sac = str(sac or "").strip()
            if not sac:
                continue
            # Validate AcGroup
            exists = bool(db.query("SELECT 1 FROM AcGroup WHERE Code = ?", (sac,), cn=cn))
            if not exists:
                raise ValueError(f"SaleAcCode '{sac}' nahi mila (AcGroup)")
            db.execute(
                "INSERT INTO HallItemCatSaleAc (CatCode, SaleAcCode, U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code) "
                "VALUES (?, ?, ?, getdate(), 'A', ?, ?)",
                (catcode, sac, user, SITE_CODE, SITE_CODE), cn=cn, commit=False)
        if commit:
            cn.commit()
        return len(sale_ac_codes)
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


# ============================================================
# HallItemCatSaleTax (Sale Tax grid) - VB6 DGSaleTax
# ============================================================

CATSALETAX_COLS = "CatCode, SaleTaxCode, U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code"


def _map_cat_sale_tax(r) -> dict:
    try:
        return {
            "catcode": r.CatCode or "",
            "sale_tax_code": r.SaleTaxCode or "",
            "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        cc, stc, un, _, uae = r
        return {
            "catcode": cc or "",
            "sale_tax_code": stc or "",
            "u_name": un or "",
            "u_ae": uae or "",
        }


def hall_item_cat_sale_tax_list(catcode: str, cn=None) -> list[dict]:
    rows = db.query(
        f"SELECT {CATSALETAX_COLS} FROM HallItemCatSaleTax WHERE CatCode = ? ORDER BY SaleTaxCode",
        (catcode,), cn=cn)
    return [_map_cat_sale_tax(r) for r in rows]


def hall_item_cat_sale_tax_set(catcode: str, sale_tax_codes: list[str], user: str = USER,
                                cn=None, commit: bool = True) -> int:
    """VB6 grid save: DELETE CatCode rows -> INSERT each SaleTaxCode."""
    if not str(catcode or "").strip():
        raise ValueError("CatCode zaroori hai")
    own = cn is None
    if own:
        cn = db.connect()
    try:
        db.execute("DELETE FROM HallItemCatSaleTax WHERE CatCode = ?",
                   (catcode,), cn=cn, commit=False)
        for stc in sale_tax_codes:
            stc = str(stc or "").strip()
            if not stc:
                continue
            # Validate TaxMast
            exists = bool(db.query("SELECT 1 FROM TaxMast WHERE Code = ?", (stc,), cn=cn))
            if not exists:
                raise ValueError(f"SaleTaxCode '{stc}' nahi mila (TaxMast)")
            db.execute(
                "INSERT INTO HallItemCatSaleTax (CatCode, SaleTaxCode, U_Name, U_EntDt, U_AE, Site_Code, LogSite_Code) "
                "VALUES (?, ?, ?, getdate(), 'A', ?, ?)",
                (catcode, stc, user, SITE_CODE, SITE_CODE), cn=cn, commit=False)
        if commit:
            cn.commit()
        return len(sale_tax_codes)
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


class _HallItemCatAPI:
    LIMITS = LIMITS
    pk_key = "catcode"

    @staticmethod
    def list_all(cn=None): return hall_item_cat_list(cn)
    @staticmethod
    def get(catcode, cn=None): return hall_item_cat_get(catcode, cn)
    @staticmethod
    def exists(catcode, cn=None): return hall_item_cat_exists(catcode, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return hall_item_cat_insert(rec, cn, commit)
    @staticmethod
    def update(catcode, rec, cn=None, commit=True): return hall_item_cat_update(catcode, rec, cn, commit)
    @staticmethod
    def delete(catcode, cn=None, commit=True): return hall_item_cat_delete(catcode, cn, commit)

HallItemCatAPI = _HallItemCatAPI()