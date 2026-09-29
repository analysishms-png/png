"""Menu Item Copy (VB6 frmMenuItemCopy) — outlets ke beech menu items copy.

VB6 frmMenuItemCopy.frm ka faithful port (schema probe se verified):
  - PK ItemMast = (Code, RestCode) — same Code alag outlets me valid hai,
    isliye copy "same Code, new RestCode" rows insert karta hai.
  - Outlets (Form_Load loc_11D9450): Depart WHERE (LOGSITE_CODE=? or 'HO')
    AND OutletYN='Y' AND RestType<>'Banquet'.
  - Item select (loc_16193AC): ItemMast LEFT JOIN ItemCatMast/ItemGrp/Depart
    WHERE RestCode=<from> AND LOGSITE filter AND Code NOT IN (target ke
    existing) AND ActiveYN<>'No' AND ItemType NOT IN ('Combo','Store')
    AND DispCode<>9999 AND GravyItem<>'Yes' (+ optional cat/group filter).
  - Copy (loc_17D2C57): per selected item naya ItemMast row (29 cols) +
    ItemRate row jiska Rate = source outlet ka latest ItemRate
    (loc_1619EEF: Select Rate From ItemRate ... Order By AppDate Desc).
    ItemMast.ActiveYN 'Yes' (live convention: 3343 'Yes' / 1 'No').

Saare SQL param-bound hain. Live DB: ItemMast 50 cols, ItemRate
(ItemCode, RestCode, Rate, AppDate, ...) verified via _qa probes.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

# VB6 loc_17D2C57 insert-column list (exact order)
COPY_COLS = (
    "Code", "Name", "RestCode", "DispCode", "Unit", "ItemGroup",
    "ItemCatCode", "DiscApp", "RateEdit", "Site_Code", "U_Name", "U_EntDt",
    "U_AE", "Type", "Kitchen", "SaleRate", "SChrgApp", "RateIncTax",
    "IssueUnit", "ConvRatio", "PurchRate", "LPurRate", "LOGSITE_CODE",
    "ActiveYN", "NType", "FinItem", "ItemType", "BarCode", "CommodityCode",
)


def list_outlets(cn=None) -> list[dict]:
    """Copy ke eligible outlets (VB6 Form_Load outlet query)."""
    rows = db.query(
        "SELECT Code, Name, RestType, ShortName FROM Depart "
        "WHERE (LOGSITE_CODE = ? OR LOGSITE_CODE = 'HO') AND OutletYN = 'Y' "
        "AND RestType <> 'Banquet' ORDER BY Name", (SITE_CODE,), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "resttype": (r.RestType or "").strip(),
             "shortname": (r.ShortName or "").strip()} for r in rows]


def list_categories(cn=None) -> list[dict]:
    """ItemCatMast lookup (VB6 DGItemCat query, LOGSITE-filtered)."""
    rows = db.query(
        "SELECT Code, Name FROM ItemCatMast "
        "WHERE (LOGSITE_CODE = ? OR LOGSITE_CODE = 'HO') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip()} for r in rows]


def list_groups(cn=None) -> list[dict]:
    """ItemGrp lookup (VB6 DGItemGroup query, LOGSITE-filtered)."""
    rows = db.query(
        "SELECT Code, Name FROM ItemGrp "
        "WHERE (LOGSITE_CODE = ? OR LOGSITE_CODE = 'HO') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip()} for r in rows]


def list_copyable_items(from_rest: str, to_rest: str, item_cat: str = "",
                        item_group: str = "", cn=None) -> list[dict]:
    """Source outlet ke wo items jo target me abhi nahi hain (VB6
    Proc_176_28 item-select query). ItemCat/ItemGroup optional filters."""
    from_rest = (from_rest or "").strip()
    to_rest = (to_rest or "").strip()
    if not from_rest or not to_rest:
        return []
    sql = (
        "SELECT ItemMast.Code AS ItemCode, ItemMast.Name AS ItemName, "
        "ItemMast.Unit, ItemGrp.Code AS GroupCode, ItemGrp.Name AS GroupName, "
        "ItemCatMast.Code AS ItemCatCode, ItemCatMast.Name AS ItemCatName, "
        "ItemMast.DiscApp, ItemMast.RateEdit, ItemMast.Type, ItemMast.Kitchen, "
        "ItemMast.SaleRate, ItemMast.SChrgApp, ItemMast.RateIncTax, "
        "ItemMast.IssueUnit, ItemMast.ConvRatio, ItemMast.PurchRate, "
        "ItemMast.LPurRate, ItemMast.NType, ItemMast.FinItem, "
        "ItemMast.ItemType, ItemMast.BarCode, ItemMast.CommodityCode, "
        "ItemMast.DispCode "
        "FROM ItemMast "
        "LEFT JOIN ItemCatMast ON ItemMast.ItemCatCode = ItemCatMast.Code "
        "LEFT JOIN ItemGrp ON ItemMast.ItemGroup = ItemGrp.Code "
        "LEFT JOIN Depart ON ItemMast.RestCode = Depart.Code "
        "WHERE ItemMast.RestCode = ? "
        "AND (ItemMast.LOGSITE_CODE = ? OR ItemMast.LOGSITE_CODE = 'HO') "
        "AND ItemMast.Code NOT IN "
        "(SELECT Code FROM ItemMast WHERE RestCode = ?) "
        "AND (ItemMast.ActiveYN IS NULL OR ItemMast.ActiveYN <> 'No') "
        "AND (ItemMast.ItemType IS NULL OR "
        "ItemMast.ItemType NOT IN ('Combo', 'Store')) "
        "AND ISNULL(ItemMast.DispCode, 0) <> 9999 "
        "AND ISNULL(ItemMast.GravyItem, '') <> 'Yes'")
    params = [from_rest, SITE_CODE, to_rest]
    if item_cat:
        sql += " AND ItemMast.ItemCatCode = ?"
        params.append(item_cat)
    if item_group:
        sql += " AND ItemMast.ItemGroup = ?"
        params.append(item_group)
    sql += " ORDER BY ItemMast.Name"
    rows = db.query(sql, tuple(params), cn=cn)
    return [{"itemcode": (r.ItemCode or "").strip(),
             "itemname": (r.ItemName or "").strip(),
             "unit": (r.Unit or "").strip(),
             "groupcode": (r.GroupCode or "").strip(),
             "groupname": (r.GroupName or "").strip(),
             "itemcatcode": (r.ItemCatCode or "").strip(),
             "itemcatname": (r.ItemCatName or "").strip(),
             "discapp": (r.DiscApp or "").strip(),
             "rateedit": (r.RateEdit or "").strip(),
             "type": (r.Type or "").strip(),
             "kitchen": (r.Kitchen or "").strip(),
             "salerate": float(r.SaleRate or 0),
             "schrgapp": (r.SChrgApp or "").strip(),
             "rateinctax": (r.RateIncTax or "").strip(),
             "issueunit": (r.IssueUnit or "").strip(),
             "convratio": float(r.ConvRatio or 0),
             "purchrate": float(r.PurchRate or 0),
             "lpurrate": float(r.LPurRate or 0),
             "ntype": (r.NType or "").strip(),
             "finitem": (r.FinItem or "").strip(),
             "itemtype": (r.ItemType or "").strip(),
             "barcode": (r.BarCode or "").strip(),
             "commoditycode": (r.CommodityCode or "").strip(),
             "dispcode": int(r.DispCode or 0)} for r in rows]


def latest_rate(item_code: str, rest_code: str, cn=None) -> float:
    """Source outlet ka latest applicable rate (VB6 loc_1619EEF)."""
    rows = db.query(
        "SELECT TOP 1 Rate FROM ItemRate WHERE ItemCode = ? AND RestCode = ? "
        "AND AppDate <= getdate() ORDER BY AppDate DESC",
        (item_code, rest_code), cn=cn)
    return float(rows[0].Rate or 0) if rows else 0.0


def copy_items(from_rest: str, to_rest: str, codes, user: str = USER,
               cn=None, commit: bool = True) -> dict:
    """Selected items ko target outlet me copy karo (ItemMast + ItemRate).

    Guards: dono outlets Depart me hona chahiye, target OutletYN='Y',
    from != to, koi select item target me pehle se nahi.
    Returns dict(copied, skipped, rates)."""
    from_rest = (from_rest or "").strip()
    to_rest = (to_rest or "").strip()
    codes = [(c or "").strip() for c in (codes or []) if (c or "").strip()]
    if not from_rest or not to_rest:
        raise ValueError("Source aur target outlet dono zaroori hain")
    if from_rest == to_rest:
        raise ValueError("Source aur target outlet same nahi ho sakte")
    if not codes:
        raise ValueError("Koi item select nahi hua")
    tgt = db.query("SELECT OutletYN FROM Depart WHERE Code = ?",
                   (to_rest,), cn=cn)
    if not tgt:
        raise ValueError(f"Target outlet {to_rest} Depart me exist nahi karta")
    if (tgt[0].OutletYN or "").strip() != "Y":
        raise ValueError(f"{to_rest} valid outlet nahi (OutletYN <> 'Y')")
    src = db.query("SELECT Code FROM Depart WHERE Code = ?",
                   (from_rest,), cn=cn)
    if not src:
        raise ValueError(f"Source outlet {from_rest} Depart me exist nahi karta")
    copyable = {r["itemcode"]: r
                for r in list_copyable_items(from_rest, to_rest, cn=cn)}
    skipped = [c for c in codes if c not in copyable]
    copied, rates = [], 0
    own = cn is None
    cn = cn or db.connect()
    try:
        for code in codes:
            r = copyable.get(code)
            if r is None:
                continue
            rate = latest_rate(code, from_rest, cn=cn)
            db.execute(
                "INSERT INTO ItemMast (Code, Name, RestCode, DispCode, Unit, "
                "ItemGroup, ItemCatCode, DiscApp, RateEdit, Site_Code, "
                "U_Name, U_EntDt, U_AE, Type, Kitchen, SaleRate, SChrgApp, "
                "RateIncTax, IssueUnit, ConvRatio, PurchRate, LPurRate, "
                "LOGSITE_CODE, ActiveYN, NType, FinItem, ItemType, BarCode, "
                "CommodityCode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "getdate(), 'A', ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'Yes', ?, "
                "?, ?, ?, ?)",
                (code, r["itemname"], to_rest, r["dispcode"], r["unit"],
                 r["groupcode"], r["itemcatcode"], r["discapp"], r["rateedit"],
                 SITE_CODE, user, r["type"], r["kitchen"], r["salerate"],
                 r["schrgapp"], r["rateinctax"], r["issueunit"],
                 r["convratio"], r["purchrate"], r["lpurrate"], SITE_CODE,
                 r["ntype"], r["finitem"], r["itemtype"], r["barcode"],
                 r["commoditycode"]), cn=cn, commit=False)
            db.execute(
                "INSERT INTO ItemRate (ItemCode, RestCode, Rate, Site_Code, "
                "U_Name, U_EntDt, U_AE, AppDate, LogSite_Code) "
                "VALUES (?, ?, ?, ?, ?, getdate(), 'A', getdate(), ?)",
                (code, to_rest, rate, SITE_CODE, user, SITE_CODE),
                cn=cn, commit=False)
            copied.append(code)
            rates += 1
        if commit:
            cn.commit()
        return {"copied": copied, "skipped": skipped, "rates": rates}
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
