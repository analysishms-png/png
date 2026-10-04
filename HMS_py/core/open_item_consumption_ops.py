"""Open Item Consumption Master (VB6 FrmConsumMast9999) — core ops port.

VB6 source: HMS_REVERSE_ENGINEERING/HMS/FrmConsumMast9999.frm
  Caption "Open Item Consumption Master", MDI child, KeyPreview.
  Dispatch evidence: ModuleAdd.bas loc_1E43224
      If (var_188 = "Open Item Consumption") Then
          Set var_90 = New FrmConsumMast9999 : ... Show
  (also HMS_py/core/mdi_menu.json leaf "Open Item Consumption",
   _dispatch_map.json -> ["FrmConsumMast9999"]).

Tables (all live, Moondata2627): BOM (2046 rows / 17 cols), ItemMast (3292),
Depart (67).  Enviro is NOT touched by this form — the VB6 MemVars that feed
its SQL come from the login/environment context, ported here as
db.get_site_code() / db.get_user():
      MemVar_1F92078 = site / LOGSITE_CODE        -> SITE_CODE
      MemVar_1F92070 = Site_Code (INSERT)         -> SITE_CODE
      MemVar_1F92044 = site (audit helper)        -> SITE_CODE
      MemVar_1F920C8 = user name (U_Name)         -> USER / arg

KEYING — how this form differs from its sibling FrmConsumMast
(ported as HMS_py/core/consumption_master.py, UI ui/pos_sub_forms_ui.py):
      FrmConsumMast     : SearchCode = FinItem+RestCode+Convert(Varchar(11),AppDate,103)
                          -> DATED recipes, save = DELETE ... AND AppDate = ? + INSERT
      FrmConsumMast9999 : SearchCode = FinItem+RestCode  (NO date)
                          -> undated open-item BOM recipe master
                             (loc_10D9273 list, loc_1413405 detail,
                              loc_1151AE0 delete, loc_FE95D5 count)
Save strategy (loc_14AE79C TopCtrl1_UnknownEvent_16):
      BeginTrans
        [Edit] DELETE FROM BOM WHERE FinItem=? AND RestCode=?     <- no date
        per raw row:  INSERT INTO BOM (17 cols)
        UPDATE ItemMast SET IssueUnit=Unit, convRatio=1,
                           PurchRate=<sum Total>, LPurRate=<sum Total>
                      WHERE Code=? AND RestCode=?
      CommitTrans
  Live proof the key is date-free: 172 distinct (FinItem,RestCode) keys but
  only ONE key carries more than one AppDate; AppDate is just a column on the
  recipe, not part of its identity.
  Add-on-existing-key is auto-promoted to Edit by Proc_132_46
  (loc_FE95D5 "Select Count(*) From BOM Where FinItem=? And RestCode=?"),
  therefore this port ALWAYS deletes the key before re-inserting — same net
  effect as VB6, but idempotent.

Row maths (verified against live rows, e.g. KK000009/KKRS):
      RawQty = grid col3, Cost = grid col5 (seeded from raw LPurRate),
      Total  = RawQty * Cost, rounded to 4 dp (live: 0.3*317.64706 ->
               95.2941; SUM of the stored totals = ItemMast.LPurRate)
      Waste  = grid col7 "Waste %"  (independent, stored as entered)
      FinQty = SavedForQty = Txt(1) "Finish Item Qty"
      WtUnit = grid col4 (DGItem "Unit" alias = IssueUnit/Unit)
  After save the summed Total is pushed back into ItemMast.PurchRate /
  LPurRate for the finish item (live: SUM(BOM.Total) == ItemMast.LPurRate).

DEVIATIONS (see also the module constant DISP predicates below):
  1. DISP CODE FILTER.  The VB6 decompile literally says
     "AND ITEMMAST.DISPCODE=9999" in all three list queries
     (loc_10D9131 finish list, loc_10D9292 master list, loc_EEF53A search).
     Live Moondata2627 has ZERO ItemMast.DispCode=9999 rows (0 of 3292), so
     the literal predicate renders an empty form.  Sibling FrmConsumMast.frm
     (:1216/:1238/:1453) emits "DISPCODE<>9999" for the identical three
     filters from the same decompiler, and it returns 697 finish candidates /
     170 BOM keys live.  This port therefore executes "<> 9999"; the verbatim
     VB6 text is kept in every function's docstring/comment.
  2. Grid ORDER BY BOM.RawSno added to the detail query (VB6 relies on
     natural table order; RawSno is the grid's own row order).
  3. The VB6 audit helper called on delete
     (loc_1151C31 Proc_154_5_10E33A4(MemVar_1F92044,"BOM","FinItem",&HC8,...))
     has no ported equivalent — skipped, delete writes no audit row.
  4. Garbled decompile divisions in the INSERT (loc_14AEF00..) resolve to the
     plain values above; live-row arithmetic was used to confirm them.

All SQL is parameterized ('?' only) — db.query / db.execute.
"""
from __future__ import annotations

import datetime

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

# VB6 literal (loc_10D9131 / loc_10D9292 / loc_EEF53A):  "= 9999"
# Executed predicate                                   :  "<> 9999"
# Reason + live counts -> module docstring DEVIATION 1.
_DISP_OK = "ISNULL(ItemMast.DispCode, 0) <> 9999"


def _banq(site: str = SITE_CODE) -> str:
    """VB6: MemVar_1F92078 & \"BANQ\" (pseudo banquet outlet code)."""
    return f"{site}BANQ"


# ───────────────────────────────────────────────────────────────────
# Form_Load  loc_10D9050
# ───────────────────────────────────────────────────────────────────

def list_finish_items(cn=None) -> list[dict]:
    """DGFinish finish-item picker (VB6 Form_Load loc_10D911C).

    VB6 verbatim (MemVar_1F92078 = site, DISP literal shown as written):
        SELECT ItemMast.Code, ItemMast.Name, ItemMast.Unit,
               Depart.Name as Department,
               Case When ItemMast.RestCode='<site>BANQ' Then 'BANQUET'
                    Else D1.Name End as RestName, ItemMast.RestCode
        FROM (ItemMast Inner JOIN Depart ON ItemMast.Kitchen = Depart.Code)
        Left join Depart as D1 on D1.Code=ItemMast.RestCode
        Where (ItemMast.LogSite_Code='<site>' or ItemMast.LogSite_Code='HO')
        AND ITEMMAST.DISPCODE=9999 and Type IN ('Finish','Semi Finish')
        Order by ItemMast.Name
    Executed with DISP predicate "<> 9999" (deviation 1).  Live: 697 rows.
    """
    rows = db.query(
        "SELECT ItemMast.Code, ItemMast.Name, ItemMast.Unit, "
        "Depart.Name AS Department, "
        "CASE WHEN ItemMast.RestCode = ? THEN 'BANQUET' ELSE D1.Name END "
        "AS RestName, ItemMast.RestCode "
        "FROM ItemMast INNER JOIN Depart ON ItemMast.Kitchen = Depart.Code "
        "LEFT JOIN Depart AS D1 ON D1.Code = ItemMast.RestCode "
        f"WHERE (ItemMast.LogSite_Code = ? OR ItemMast.LogSite_Code = 'HO') "
        f"AND {_DISP_OK} "
        "AND ItemMast.Type IN ('Finish', 'Semi Finish') "
        "ORDER BY ItemMast.Name",
        (_banq(), SITE_CODE), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "unit": (r.Unit or "").strip(),
             "department": (r.Department or "").strip(),
             "rest_name": (r.RestName or "").strip(),
             # alias consumed by ui/open_item_consumption_ui.py
             "outlet": (r.RestName or "").strip(),
             "rest_code": (r.RestCode or "").strip()} for r in rows]


def list_raw_items(cn=None) -> list[dict]:
    """DGItem raw-item picker (VB6 Form_Load loc_10D91AB).

    VB6 verbatim — ONE command, two branches UNIONed:
        Select Code,Name,IssueUnit as Unit,
               CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0)
                    ELSE ISNULL(LPurRate,0) END AS LPurRate, ConvRatio
        From ItemMast where (LOGSITE_CODE='<site>' or LOGSITE_CODE='HO')
          and DispCode<>9999 and Code=ConsumptionItem And ActiveYN<>'No'
        Union
        Select Code,Name,Unit as Unit,
               CASE WHEN ISNULL(LPurRate,0)=0 THEN ISNULL(PURCHRATE,0)
                    ELSE ISNULL(LPurRate,0) END AS LPurRate, ConvRatio
        From ItemMast Where (LOGSITE_CODE='<site>' or LOGSITE_CODE='HO')
          and Type IN ('Semi Finish') and gravyItem='Yes'
          And ItemMast.ActiveYN<>'No'
        Order by Name
    'Unit' alias is what lands in grid col4 -> BOM.WtUnit.
    (Note: this filter already reads DispCode<>9999 in VB6 — deviation 1 does
    not apply here.)  Live: 2592 rows.
    """
    rows = db.query(
        "SELECT Code, Name, IssueUnit AS Unit, "
        "CASE WHEN ISNULL(LPurRate, 0) = 0 THEN ISNULL(PurchRate, 0) "
        "ELSE ISNULL(LPurRate, 0) END AS LPurRate, ConvRatio "
        "FROM ItemMast WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "AND DispCode <> 9999 AND Code = ConsumptionItem "
        "AND ActiveYN <> 'No' "
        "UNION "
        "SELECT Code, Name, Unit AS Unit, "
        "CASE WHEN ISNULL(LPurRate, 0) = 0 THEN ISNULL(PurchRate, 0) "
        "ELSE ISNULL(LPurRate, 0) END AS LPurRate, ConvRatio "
        "FROM ItemMast WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') "
        "AND Type IN ('Semi Finish') AND GravyItem = 'Yes' "
        "AND ActiveYN <> 'No' "
        "ORDER BY Name",
        (SITE_CODE, SITE_CODE), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "unit": (r.Unit or "").strip(),
             "rate": float(r.LPurRate or 0),
             "conv_ratio": float(r.ConvRatio or 0)} for r in rows]


def list_recipes(cn=None) -> list[dict]:
    """Master recordset — saved open-item recipes (VB6 Form_Load loc_10D9273).

    VB6 verbatim (SearchCode = FinItem+RestCode, NO date):
        Select Distinct BOM.FinItem+BOM.RestCode as SearchCode, BOM.FinItem,
               ItemMast.Name, BOM.FinQty, BOM.AppDAte, ItemMast.Unit,
               BOM.Site_Code, Bom.LogSite_Code, BOM.RestCode,
               Case When BOM.RestCode='<site>BANQ' Then 'BANQUET'
                    Else Depart.Name End RestName
        From BOM
        Inner Join ItemMast on ItemMast.Code=BOM.FinItem
                            And ItemMast.RestCode=BOM.RestCode
        Left join Depart on Depart.Code=ItemMast.RestCode
        Where (BOM.LOGSITE_CODE='<site>') AND ITEMMAST.DISPCODE=9999
        Order by ItemMast.Name,RestName
    (decompile of loc_10D927A carries crossover text from the DGItem UNION —
    the trailing WHERE above is the reconstruction, DISP "<> 9999" per
    deviation 1.)  Live: 170 keys of 172.
    """
    rows = db.query(
        "SELECT DISTINCT BOM.FinItem + BOM.RestCode AS SearchCode, "
        "BOM.FinItem, ItemMast.Name, BOM.FinQty, BOM.AppDate, "
        "ItemMast.Unit, BOM.Site_Code, BOM.LogSite_Code, BOM.RestCode, "
        "CASE WHEN BOM.RestCode = ? THEN 'BANQUET' ELSE Depart.Name END "
        "AS RestName "
        "FROM BOM INNER JOIN ItemMast ON ItemMast.Code = BOM.FinItem "
        "AND ItemMast.RestCode = BOM.RestCode "
        "LEFT JOIN Depart ON Depart.Code = ItemMast.RestCode "
        f"WHERE BOM.LOGSITE_CODE = ? AND {_DISP_OK} "
        "ORDER BY ItemMast.Name, RestName",
        (_banq(), SITE_CODE), cn=cn)
    return [_recipe_row(r) for r in rows]


def search_list(cn=None) -> list[dict]:
    """TopCtrl Search list (VB6 TopCtrl1_UnknownEvent_F loc_EEF525).

    VB6 verbatim:
        Select Distinct BOM.FinItem+BOM.RestCode As SearchCode, ItemMast.Name,
               FinQty,
               Case When BOM.RestCode='<site>BANQ' Then 'BANQUET'
                    Else Depart.Name End Outlet
        FROM BOM
        Inner Join ItemMast on ItemMast.Code=BOM.FinItem
                            And ItemMast.RestCode=BOM.RestCode
        Left Join Depart On Depart.Code=ItemMast.RestCode
        Where (BOM.LOGSITE_CODE='<site>' or BOM.LOGSITE_CODE='HO')
              AND ITEMMAST.DISPCODE=9999
        Order by ItemMast.Name,Outlet
    Column widths in VB6: "2500,1000,2500".  DISP "<> 9999" (deviation 1).
    """
    rows = db.query(
        "SELECT DISTINCT BOM.FinItem + BOM.RestCode AS SearchCode, "
        "ItemMast.Name, BOM.FinQty, BOM.RestCode, "
        "CASE WHEN BOM.RestCode = ? THEN 'BANQUET' ELSE Depart.Name END "
        "AS Outlet "
        "FROM BOM INNER JOIN ItemMast ON ItemMast.Code = BOM.FinItem "
        "AND ItemMast.RestCode = BOM.RestCode "
        "LEFT JOIN Depart ON Depart.Code = ItemMast.RestCode "
        f"WHERE (BOM.LOGSITE_CODE = ? OR BOM.LOGSITE_CODE = 'HO') "
        f"AND {_DISP_OK} "
        "ORDER BY ItemMast.Name, Outlet",
        (_banq(), SITE_CODE), cn=cn)
    return [{"search_code": (r.SearchCode or "").strip(),
             "name": (r.Name or "").strip(),
             "fin_qty": float(r.FinQty or 0),
             "rest_code": (r.RestCode or "").strip(),
             "outlet": (r.Outlet or "").strip()} for r in rows]


def _recipe_row(r) -> dict:
    return {"search_code": (getattr(r, "SearchCode", None) or "").strip(),
            "fin_item": (r.FinItem or "").strip(),
            "rest_code": (r.RestCode or "").strip(),
            "fin_name": (r.Name or "").strip(),
            "fin_qty": float(r.FinQty or 1),
            "unit": (r.Unit or "").strip(),
            "app_date": str(r.AppDate)[:10] if r.AppDate else "",
            "site_code": (r.Site_Code or "").strip(),
            "logsite_code": (r.LogSite_Code or "").strip(),
            "outlet": (r.RestName or "").strip()}


def count_recipe(fin_item: str, rest_code: str, cn=None) -> int:
    """Duplicate-key probe (VB6 Proc_132_46 loc_FE95D5).

    VB6 verbatim:
        Select Count(*) From BOM Where FinItem='<FinItem>'
        And RestCode='<LblOutlet.Tag>'
    Add-mode behaviour: count > 0 -> Me.Find SearchCode=FinItem+RestCode,
    then TopCtrl1_UnknownEvent_D (switch to Edit) + reload.  This is the
    "same key already exists" guard of the undated form.
    """
    rows = db.query(
        "SELECT COUNT(*) FROM BOM WHERE FinItem = ? AND RestCode = ?",
        ((fin_item or "").strip(), (rest_code or "").strip()), cn=cn)
    return int(rows[0][0] or 0) if rows else 0


# ───────────────────────────────────────────────────────────────────
# Record load  Proc_132_50_1413BA0
# ───────────────────────────────────────────────────────────────────

def get_recipe(fin_item: str, rest_code: str, cn=None) -> dict:
    """Header + raw-row grid of one undated recipe.

    Header fields come from the master recordset (loc_10D9273 row).
    VB6 detail query verbatim (loc_1413405):
        Select BOM.*, ItemMast.Name as Name, ItemMast.Unit, ItemMast.LPurRate,
               ItemMast.IssueUnit
        From BOM Left Join ItemMast on ItemMast.Code=BOM.RawItem
                 And (ItemMast.ItemType='Store' Or GravyItem='Yes')
        where BOM.FinItem+BOM.RestCode='<SearchCode>'
    VB6 audit query verbatim (loc_1413480):
        Select BOM.U_name, bom.U_EntDt, BOm.U_AE From BOM
        Left Join ItemMast on ItemMast.Code=BOM.RawItem
        where BOM.FinItem+BOM.RestCode='<SearchCode>'
    LblUser/LblLDt captions (loc_1413591 / loc_14136B1):
        U_AE='A' -> "Created By : ", 'E' -> "Modified By : "/"Last Update : ",
        else "User : "/"entdt : "
    """
    fin_item = (fin_item or "").strip()
    rest_code = (rest_code or "").strip()
    key = fin_item + rest_code

    hdr = db.query(
        "SELECT DISTINCT BOM.FinItem + BOM.RestCode AS SearchCode, "
        "BOM.FinItem, ItemMast.Name, BOM.FinQty, BOM.AppDate, ItemMast.Unit, "
        "BOM.Site_Code, BOM.LogSite_Code, BOM.RestCode, "
        "CASE WHEN BOM.RestCode = ? THEN 'BANQUET' ELSE Depart.Name END "
        "AS RestName "
        "FROM BOM INNER JOIN ItemMast ON ItemMast.Code = BOM.FinItem "
        "AND ItemMast.RestCode = BOM.RestCode "
        "LEFT JOIN Depart ON Depart.Code = ItemMast.RestCode "
        "WHERE BOM.FinItem + BOM.RestCode = ?",
        (_banq(), key), cn=cn)
    header = _recipe_row(hdr[0]) if hdr else {
        "search_code": key, "fin_item": fin_item, "rest_code": rest_code,
        "fin_name": "", "fin_qty": 1.0, "unit": "", "app_date": "",
        "site_code": SITE_CODE, "logsite_code": SITE_CODE, "outlet": ""}

    rows = db.query(
        "SELECT BOM.RawSno, BOM.RawItem, BOM.RawQty, BOM.Cost, BOM.Waste, "
        "BOM.Total, BOM.WtUnit, BOM.FinQty, BOM.SavedForQty, BOM.AppDate, "
        "ItemMast.Name AS Name, ItemMast.Unit, ItemMast.LPurRate, "
        "ItemMast.IssueUnit "
        "FROM BOM LEFT JOIN ItemMast ON ItemMast.Code = BOM.RawItem "
        "AND (ItemMast.ItemType = 'Store' OR ItemMast.GravyItem = 'Yes') "
        "WHERE BOM.FinItem + BOM.RestCode = ? "
        "ORDER BY BOM.RawSno", (key,), cn=cn)

    audit_rows = db.query(
        "SELECT BOM.U_Name, BOM.U_EntDt, BOM.U_AE "
        "FROM BOM LEFT JOIN ItemMast ON ItemMast.Code = BOM.RawItem "
        "WHERE BOM.FinItem + BOM.RestCode = ? ORDER BY BOM.RawSno",
        (key,), cn=cn)
    audit = audit_rows[0] if audit_rows else None
    ae = (getattr(audit, "U_AE", None) or "").strip() if audit else ""
    uname = (getattr(audit, "U_Name", None) or "").strip() if audit else ""
    uentdt = getattr(audit, "U_EntDt", None) if audit else None
    user_cap = ("Created By : " if ae == "A" else
                "Modified By : " if ae == "E" else "User : ") + uname
    date_cap = ("Created By : " if ae == "A" else
                "Last Update : " if ae == "E" else "entdt : ") + (
        str(uentdt)[:10] if uentdt else "")

    header["rows"] = [{
        "sno": int(r.RawSno or 0),
        "raw_item": (r.RawItem or "").strip(),
        "raw_name": (r.Name or "").strip(),
        "raw_qty": float(r.RawQty or 0),
        "unit": (r.WtUnit or r.Unit or "").strip(),
        "cost": float(r.Cost or 0),
        "waste": float(r.Waste or 0),
        "total": float(r.Total or 0),
        "rate": float(r.LPurRate or 0),
        "issue_unit": (r.IssueUnit or "").strip(),
    } for r in rows]
    header["user_caption"] = user_cap
    header["date_caption"] = date_cap
    header["raw_count"] = len(header["rows"])
    return header


# ───────────────────────────────────────────────────────────────────
# Save  TopCtrl1_UnknownEvent_16
# ───────────────────────────────────────────────────────────────────

def save_recipe(fin_item: str, rest_code: str, fin_qty, app_date, raw_rows,
                user: str = USER, cn=None, commit: bool = True) -> dict:
    """Undated recipe save (VB6 loc_14AE79C .. loc_14AF334).

    Validations reproduced 1:1 (loc_14AE7E1 / 14AE82B / 14AE875 / 14AEA02):
      - required: "Finish Name", "Finish Qty", "Applicable Date"
        (VB6 Proc_183_19_E8DAFC returns 0 -> focus back, no save)
      - every grid row with a raw item must have Qty:
        blank or "0.00" -> MsgBox "Item Qty is required", cell highlighted
    Strategy (BeginTrans / CommitTrans):
        [Edit]  DELETE FROM BOM WHERE FinItem=? AND RestCode=?   (no date)
        per row INSERT INTO BOM(Site_Code,FinItem,FinQty,RawItem,RawQty,
            RawSno,Cost,Waste,Total,U_Name,U_EntDt,U_AE,SavedForQty,AppDate,
            WtUnit,LogSite_Code,RestCode) VALUES (...)
        UPDATE ItemMast SET IssueUnit=Unit,convRatio=1,PurchRate=<sum>,
            LPurRate=<sum> WHERE Code=? AND RestCode=?     (loc_14AF15F)
    raw_rows: [{"raw_item", "raw_qty", "cost", "waste", "unit"}] — grid
    cols 1/3/5/7/4.  Returns {rows_saved, cost_per_unit}.

    NOTE: VB6 issues the DELETE only when TopCtrl mode = "Edit"; Proc_132_46
    already routes Add-with-existing-key into Edit, so an unconditional
    delete reproduces the same net effect and keeps the save idempotent.
    """
    fin_item = (fin_item or "").strip()
    rest_code = (rest_code or "").strip()
    if not fin_item:
        raise ValueError("Finish Name is required")
    if fin_qty is None or str(fin_qty).strip() == "" or float(fin_qty) <= 0:
        raise ValueError("Finish Qty is required")
    fin_qty = float(fin_qty)
    if app_date is None or str(app_date).strip() == "":
        raise ValueError("Applicable Date is required")
    raw_rows = [r for r in (raw_rows or [])
                if (r.get("raw_item") or "").strip()]
    if not raw_rows:
        raise ValueError("Item Qty is required")
    cleaned = []
    for r in raw_rows:
        qty = r.get("raw_qty")
        if qty is None or str(qty).strip() == "":
            raise ValueError("Item Qty is required")
        qty = float(qty)
        if qty == 0.0:
            raise ValueError("Item Qty is required")
        cleaned.append({"raw_item": (r["raw_item"] or "").strip(),
                        "raw_qty": qty,
                        "cost": float(r.get("cost") or 0),
                        "waste": float(r.get("waste") or 0),
                        "unit": (r.get("unit") or "").strip()})

    own = cn is None
    cn = cn or db.connect()
    try:
        # loc_14AEB70: Delete From BOM Where FinItem=... And RestCode=...
        db.execute("DELETE FROM BOM WHERE FinItem = ? AND RestCode = ?",
                   (fin_item, rest_code), cn=cn, commit=False)
        total_all = 0.0
        for sno, r in enumerate(cleaned, start=1):
            # VB6 grid col6 format: live rows store 4-dp totals
            # (0.3 * 317.64706 -> 95.2941) and ItemMast.PurchRate is the
            # exact sum of those stored totals (140.6537).
            total = round(r["raw_qty"] * r["cost"], 4)
            total_all += total
            # loc_14AEF00: Insert Into BOM(...17 cols...) Values (...)
            db.execute(
                "INSERT INTO BOM (Site_Code, FinItem, FinQty, RawItem, "
                "RawQty, RawSno, Cost, Waste, Total, U_Name, U_EntDt, "
                "U_AE, SavedForQty, AppDate, WtUnit, LogSite_Code, "
                "RestCode) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, "
                "'A', ?, ?, ?, ?, ?)",
                (SITE_CODE, fin_item, fin_qty, r["raw_item"], r["raw_qty"],
                 sno, r["cost"], r["waste"], total, user,
                 datetime.date.today(), fin_qty, app_date, r["unit"],
                 SITE_CODE, rest_code),
                cn=cn, commit=False)
        # loc_14AF15F: Update ItemMast Set IssueUnit=Unit,convRatio=1,
        #   PurchRate=<sum>,LPurRate=<sum> where Code=... And RestCode=...
        cost_per_unit = round(total_all, 4)
        db.execute(
            "UPDATE ItemMast SET IssueUnit = Unit, convRatio = 1, "
            "PurchRate = ?, LPurRate = ? WHERE Code = ? AND RestCode = ?",
            (cost_per_unit, cost_per_unit, fin_item, rest_code),
            cn=cn, commit=False)
        if commit:
            cn.commit()
        return {"rows_saved": len(cleaned), "cost_per_unit": cost_per_unit}
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


# ───────────────────────────────────────────────────────────────────
# Delete  TopCtrl1_UnknownEvent_C
# ───────────────────────────────────────────────────────────────────

def delete_recipe(fin_item: str, rest_code: str, cn=None,
                  commit: bool = True) -> int:
    """Whole-recipe delete (VB6 TopCtrl1_UnknownEvent_C loc_1151A1C).

    VB6 verbatim (loc_1151AE0), inside BeginTrans/CommitTrans:
        Delete From BOM Where FinItem='<FinItem>'
        And RestCode='<RestCode>'           <- undated key, whole recipe
    MsgBox before it: "Delete Record ?" / "Confirmation" (vbYesNo +
    vbDefaultButton2 = &H24) — that confirm lives in the UI layer.
    Returns rows deleted.  Deviation 3: VB6's audit helper
    (loc_1151C31 Proc_154_5_10E33A4) is not reproduced.
    """
    own = cn is None
    cn = cn or db.connect()
    try:
        cur = cn.cursor()
        cur.execute("DELETE FROM BOM WHERE FinItem = ? AND RestCode = ?",
                    ((fin_item or "").strip(), (rest_code or "").strip()))
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


def delete_raw_row(fin_item: str, rest_code: str, raw_sno, cn=None,
                   commit: bool = True) -> int:
    """In-grid row delete (VB6 FGrid_UnknownEvent_D loc_102E670).

    VB6 removes the row from the flex grid only; the change reaches the DB
    on the next Save (DELETE+re-INSERT).  Kept for parity so callers can
    drop a single raw row inside an open transaction.
    """
    own = cn is None
    cn = cn or db.connect()
    try:
        cur = cn.cursor()
        cur.execute(
            "DELETE FROM BOM WHERE FinItem = ? AND RestCode = ? "
            "AND RawSno = ?",
            ((fin_item or "").strip(), (rest_code or "").strip(), raw_sno))
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
