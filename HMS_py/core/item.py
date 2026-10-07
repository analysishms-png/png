"""ItemMast CRUD (VB6: DepOpStk/Catering aadi) + FrmItemMast `Item` table.

Schema evidence: Code varchar(8), Name varchar(35) NULL, Unit varchar(6) NULL,
Type varchar(12) NULL, ItemGroup varchar(6) NULL, SaleRate float NULL.
DB NOT NULL: Code, RestCode (restaurant FK - hum default KKA001, jaise
existing rows). App-level: Code+Name required.
Audit pattern VB6 jaisa: U_Name + U_EntDt(getdate()) + U_AE ('A'/'E').

AUDIT-20261005 P2-C / P2-I FIX (Batch A + B):
  VB6 `FrmItemMast.frm` (Main Setup -> POS -> Item List) ek hi save me DO
  tables likhta hai:

    Add  branch : INSERT INTO Item (Code,Name,BarCode,CommodityCode,
                    Site_Code,U_Name,U_EntDt,U_AE,LOGSITE_CODE)   (:903)
    Edit branch : UPDATE Item SET Name,BarCode,CommodityCode,SITE_CODE,
                    U_name,U_EntDt,U_AE WHERE Code            (:921)
                  UPDATE ItemMast SET Name,BarCode,CommodityCode,
                    SITE_CODE,U_name,U_EntDt,U_AE WHERE Code    (:930)
    Delete      : Delete From Item Where Code='..'              (:654)

  Python sirf `ItemMast` likhta tha -> `Item` table (live 3125 rows) kabhi
  write nahi hoti thi aur ItemMast ke BarCode/CommodityCode/Label* columns
  chhoot rahe the. Ab dono tables ek transaction me likhe jaate hain.
  (VB6 ka edit-branch ItemMast UPDATE bhi add kiya gaya — isi SQL me
  LabelName/LabelQty/LabelRemark1-5/MRP/RateIncTax bhi VB6 Menu Item
  master ke column-set ke saath aate hain.)

  Item-table columns live (INFORMATION_SCHEMA 2026-10-06):
    Code varchar(8) NOTNULL, Name varchar(35), BarCode varchar(30),
    Site_Code varchar(2), U_Name varchar(10), U_EntDt datetime,
    U_AE varchar(1), LogSite_Code varchar(2), CommodityCode varchar(20)
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
DEFAULT_REST = "KKA001"   # existing rows ka common RestCode
LIMITS = {
    "code": 8, "name": 35, "unit": 6, "type": 12, "group": 6,
    "barcode": 30, "commodity": 20,
    "labelname": 50, "labelqty": 50, "labelremark": 50,
}
SELECT_COLS = (
    "Code, Name, Unit, Type, ItemGroup, SaleRate, RestCode, "
    "BarCode, CommodityCode, LabelName, LabelQty, "
    "LabelRemark1, LabelRemark2, LabelRemark3, LabelRemark4, LabelRemark5, "
    "MRP, RateIncTax, U_Name, U_EntDt, U_AE"
)
# VB6 FrmItemMast `Item` table column-set (loc_13587BE / loc_1358954)
ITEM_COLS = ("Code, Name, BarCode, CommodityCode, Site_Code, U_Name, "
             "U_EntDt, U_AE, LOGSITE_CODE")


def _map(r) -> dict:
    def _s(v):
        return (v.strip() if isinstance(v, str) else str(v or ""))
    return {"code": r.Code, "name": _s(r.Name), "unit": _s(r.Unit),
            "type": _s(r.Type), "group": _s(r.ItemGroup),
            "rate": float(r.SaleRate or 0), "rest": _s(r.RestCode),
            "barcode": _s(getattr(r, "BarCode", "")),
            "commodity": _s(getattr(r, "CommodityCode", "")),
            "labelname": _s(getattr(r, "LabelName", "")),
            "labelqty": _s(getattr(r, "LabelQty", "")),
            "labelremark1": _s(getattr(r, "LabelRemark1", "")),
            "labelremark2": _s(getattr(r, "LabelRemark2", "")),
            "labelremark3": _s(getattr(r, "LabelRemark3", "")),
            "labelremark4": _s(getattr(r, "LabelRemark4", "")),
            "labelremark5": _s(getattr(r, "LabelRemark5", "")),
            "mrp": float(getattr(r, "MRP", 0) or 0),
            "rateinctax": _s(getattr(r, "RateIncTax", "")),
            "u_name": _s(r.U_Name), "u_ae": _s(r.U_AE)}


def _validate(rec: dict):
    if len(rec.get("code", "")) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if len(rec.get("name", "")) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    for k, lbl in (("unit", "Unit"), ("type", "Type"), ("group", "Group"),
                   ("barcode", "BarCode"), ("commodity", "CommodityCode"),
                   ("labelname", "LabelName"), ("labelqty", "LabelQty")):
        if len(rec.get(k, "") or "") > LIMITS[k]:
            raise ValueError(f"{lbl} max {LIMITS[k]} chars")
    for i in range(1, 6):
        k = f"labelremark{i}"
        if len(rec.get(k, "") or "") > LIMITS["labelremark"]:
            raise ValueError(f"LabelRemark{i} max {LIMITS['labelremark']} chars")
    if (rec.get("rateinctax") or "").strip().upper() not in ("", "Y", "N"):
        raise ValueError("RateIncTax sirf Y/N ho sakta hai")
    try:
        float(rec.get("mrp") or 0)
    except (TypeError, ValueError):
        raise ValueError("MRP numeric hona chahiye")


def list_all(cn=None, limit: int = 500) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} {SELECT_COLS} FROM ItemMast ORDER BY Code",
        cn=cn)
    return [_map(r) for r in rows]


def search(name_part: str, cn=None, limit: int = 100) -> list[dict]:
    rows = db.query(
        f"SELECT TOP {int(limit)} {SELECT_COLS} FROM ItemMast "
        "WHERE Name LIKE ? ORDER BY Code",
        (f"%{name_part}%",), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(f"SELECT {SELECT_COLS} FROM ItemMast WHERE Code = ?",
                    (code,), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query("SELECT 1 FROM ItemMast WHERE Code = ?", (code,),
                         cn=cn))


# ---------------------------------------------------------------- Item table
def item_exists(code: str, cn=None) -> bool:
    """`Item` table (FrmItemMast) me Code hai? (audit/verification helper)."""
    return bool(db.query("SELECT 1 FROM Item WHERE Code = ?", (code,), cn=cn))


def _item_insert(cn, code: str, rec: dict) -> None:
    """VB6 FrmItemMast Add branch (loc_13587BE):
    INSERT INTO Item(Code,Name,BarCode,CommodityCode,Site_Code,U_Name,
                     U_EntDt,U_AE,LOGSITE_CODE) VALUES(...)."""
    db.execute(
        f"INSERT INTO Item ({ITEM_COLS}) "
        "VALUES (?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (code, rec["name"], rec.get("barcode", "") or "",
         rec.get("commodity", "") or "", SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=False)


def _item_update(cn, code: str, rec: dict) -> None:
    """VB6 FrmItemMast Edit branch (loc_1358954):
    UPDATE Item SET Name,BarCode,CommodityCode,SITE_CODE,U_name,U_EntDt,
                    U_AE='E' WHERE Code."""
    db.execute(
        "UPDATE Item SET Name = ?, BarCode = ?, CommodityCode = ?, "
        "SITE_CODE = ?, U_name = ?, U_EntDt = getdate(), U_AE = 'E' "
        "WHERE Code = ?",
        (rec["name"], rec.get("barcode", "") or "",
         rec.get("commodity", "") or "", SITE_CODE, USER, code),
        cn=cn, commit=False)


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    """Naya item: `Item` + `ItemMast` dono ek transaction me (VB6 FrmItemMast).

    VB6 ka Add branch sirf `Item` me insert karta hai; Python ka master
    `ItemMast` pe chalta hai, isliye dono likhte hain (audit P2-C).
    """
    _validate(rec)
    code = rec["code"].strip()
    # VB6 duplicate guard (MainLib Proc_6_108): ItemMast + Item dono
    db.require_absent("ItemMast", "Code", code, "Item Code")
    db.require_absent("Item", "Code", code, "Item Code")
    own = cn is None
    cn = cn or db.connect()
    try:
        _item_insert(cn, code, rec)
        n = db.execute(
            "INSERT INTO ItemMast (Code, Name, Unit, Type, ItemGroup, "
            "SaleRate, RestCode, BarCode, CommodityCode, LabelName, LabelQty, "
            "LabelRemark1, LabelRemark2, LabelRemark3, LabelRemark4, "
            "LabelRemark5, MRP, RateIncTax, "
            "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
            "?, ?, getdate(), 'A', ?)",
            (code, rec["name"], rec.get("unit", ""),
             rec.get("type", ""), rec.get("group", ""),
             float(rec.get("rate") or 0), rec.get("rest") or DEFAULT_REST,
             rec.get("barcode", "") or "", rec.get("commodity", "") or "",
             rec.get("labelname", "") or "", rec.get("labelqty", "") or "",
             rec.get("labelremark1", "") or "", rec.get("labelremark2", "") or "",
             rec.get("labelremark3", "") or "", rec.get("labelremark4", "") or "",
             rec.get("labelremark5", "") or "",
             float(rec.get("mrp") or 0), rec.get("rateinctax", "") or "",
             SITE_CODE, USER, SITE_CODE),
            cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
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


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    """VB6 FrmItemMast Edit branch: `Item` UPDATE + `ItemMast` UPDATE (P2-C/I)."""
    _validate(rec)
    own = cn is None
    cn = cn or db.connect()
    try:
        _item_update(cn, code, rec)
        n = db.execute(
            "UPDATE ItemMast SET Name = ?, Unit = ?, Type = ?, ItemGroup = ?, "
            "SaleRate = ?, BarCode = ?, CommodityCode = ?, LabelName = ?, "
            "LabelQty = ?, LabelRemark1 = ?, LabelRemark2 = ?, "
            "LabelRemark3 = ?, LabelRemark4 = ?, LabelRemark5 = ?, "
            "MRP = ?, RateIncTax = ?, "
            "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
            (rec["name"], rec.get("unit", ""), rec.get("type", ""),
             rec.get("group", ""), float(rec.get("rate") or 0),
             rec.get("barcode", "") or "", rec.get("commodity", "") or "",
             rec.get("labelname", "") or "", rec.get("labelqty", "") or "",
             rec.get("labelremark1", "") or "", rec.get("labelremark2", "") or "",
             rec.get("labelremark3", "") or "", rec.get("labelremark4", "") or "",
             rec.get("labelremark5", "") or "",
             float(rec.get("mrp") or 0), rec.get("rateinctax", "") or "",
             USER, code),
            cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
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


def delete(code: str, cn=None, commit: bool = True) -> int:
    """VB6 FrmItemMast delete (loc_112CA88): DELETE From Item WHERE Code.
    Python master `ItemMast` bhi cascade delete (audit P2-C)."""
    own = cn is None
    cn = cn or db.connect()
    try:
        db.execute("DELETE FROM Item WHERE Code = ?", (code,),
                   cn=cn, commit=False)
        n = db.execute("DELETE FROM ItemMast WHERE Code = ?", (code,),
                       cn=cn, commit=False)
        if commit:
            cn.commit()
        return n
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


class _ItemMastAPI:
    LIMITS = LIMITS
    @staticmethod
    def list_all(cn=None, limit=500): return list_all(cn, limit)
    @staticmethod
    def search(name_part, cn=None, limit=100): return search(name_part, cn, limit)
    @staticmethod
    def get(code, cn=None): return get(code, cn)
    @staticmethod
    def exists(code, cn=None): return exists(code, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return insert(rec, cn, commit)
    @staticmethod
    def update(code, rec, cn=None, commit=True): return update(code, rec, cn, commit)
    @staticmethod
    def delete(code, cn=None, commit=True): return delete(code, cn, commit)

ItemAPI = _ItemMastAPI()


# ============================================================
# Item Group Master
# Table: ItemGrp - Code varchar PK, Name varchar, Type varchar,
#        Status varchar, RestCode, Choose_Limit, CatType,
#        CommodityCode, audit cols
# ============================================================
ITEMGRP_LIMITS = {"code": 6, "name": 30, "type": 10, "status": 10,
                  "rest": 6, "cattype": 10, "commodity": 6}
ITEMGRP_COLS = ("Code, Name, Type, Status, RestCode, Choose_Limit, "
                "CatType, CommodityCode, U_Name, U_EntDt, U_AE")


def _map_itemgrp(r) -> dict:
    try:
        return {"code": r.Code, "name": (r.Name or "").strip(),
                "type": r.Type or "", "status": r.Status or "",
                "rest": r.RestCode or "",
                "choose_limit": float(r.Choose_Limit or 0),
                "cattype": r.CatType or "",
                "commodity": r.CommodityCode or "",
                "u_name": r.U_Name or "", "u_ae": r.U_AE or ""}
    except AttributeError:
        c, n, t, st, rc, cl, ct, cc, un, _, uae = r
        return {"code": c, "name": (n or "").strip(),
                "type": t or "", "status": st or "",
                "rest": rc or "",
                "choose_limit": float(cl or 0),
                "cattype": ct or "", "commodity": cc or "",
                "u_name": un or "", "u_ae": uae or ""}


def itemgrp_list(cn=None) -> list[dict]:
    return [_map_itemgrp(r) for r in db.query(
        f"SELECT {ITEMGRP_COLS} FROM ItemGrp ORDER BY Code", cn=cn)]


def itemgrp_get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {ITEMGRP_COLS} FROM ItemGrp WHERE Code = ?", (code,), cn=cn)
    return _map_itemgrp(rows[0]) if rows else None


def itemgrp_exists(code: str, cn=None) -> bool:
    return bool(db.query("SELECT 1 FROM ItemGrp WHERE Code = ?", (code,), cn=cn))


def itemgrp_insert(rec: dict, cn=None, commit: bool = True) -> int:
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    db.require_absent("ItemGrp", "Code", rec["code"], "Item Group Code")
    return db.execute(
        "INSERT INTO ItemGrp (Code, Name, Type, Status, RestCode, "
        "Choose_Limit, CatType, CommodityCode, "
        "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
        (rec["code"], rec["name"], rec.get("type", ""),
         rec.get("status", ""), rec.get("rest", ""),
         float(rec.get("choose_limit") or 0), rec.get("cattype", ""),
         rec.get("commodity", ""), SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def itemgrp_update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    return db.execute(
        "UPDATE ItemGrp SET Name = ?, Type = ?, Status = ?, RestCode = ?, "
        "Choose_Limit = ?, CatType = ?, CommodityCode = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec["name"], rec.get("type", ""), rec.get("status", ""),
         rec.get("rest", ""), float(rec.get("choose_limit") or 0),
         rec.get("cattype", ""), rec.get("commodity", ""),
         USER, code), cn=cn, commit=commit)


def itemgrp_delete(code: str, cn=None, commit: bool = True) -> int:
    return db.execute("DELETE FROM ItemGrp WHERE Code = ?", (code,),
                      cn=cn, commit=commit)


class _ItemGrpAPI:
    LIMITS = ITEMGRP_LIMITS
    @staticmethod
    def list_all(cn=None): return itemgrp_list(cn)
    @staticmethod
    def get(code, cn=None): return itemgrp_get(code, cn)
    @staticmethod
    def exists(code, cn=None): return itemgrp_exists(code, cn)
    @staticmethod
    def insert(rec, cn=None, commit=True): return itemgrp_insert(rec, cn, commit)
    @staticmethod
    def update(code, rec, cn=None, commit=True): return itemgrp_update(code, rec, cn, commit)
    @staticmethod
    def delete(code, cn=None, commit=True): return itemgrp_delete(code, cn, commit)

ItemGrpAPI = _ItemGrpAPI()
