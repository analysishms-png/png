"""Plan Defination Master (VB6 FrmPlanPackMast) — Standard-mode plan
definition form ka port (Tier-2).

VB6 evidence (FrmPlanPackMast.frm):
  - Dispatcher (MDIForm1.frm:7285 / ModuleAdd.bas:1609): "Plan Master"
    Enviro.PlanMastType='Advanced' par FrmPackageMast (python me REAL —
    p2_masters.open_planmaster), Standard par FrmPlanPackMast.
  - Code-gen loc_154BB69: Select IsNull(Max(CAST(SUBSTRING(Code,3,3)
    AS INT)),1)+1 From PlanMast WHERE SITE_CODE=... ; code = site[:2]
    + Format(N,"000") (Proc_6_45 + Format "000").
  - Save loc_154BD05: PlanMast 13-col INSERT (Plan_Package='Plan',
    ActiveYN='Yes'), phir Plan1 delete (loc_154C121) + 21-col reinsert
    (loc_154C4F4) — grid rows se.
  - FixedCharge picker loc_10C7DA1: DGRev = FixedCharge rows.
  - Browse loc_1454217: Plan1 LEFT JOIN FixedCharge (RevName ke saath).
  - Validation loc_154BAA7: PercentApp checked but RoomPer blank ->
    "Room Rate Percent is invalid".
  - Delete loc_11C6DE8: Plan1 + PlanMast.

NOTE: python me header+child CRUD packagemaster.py me already REAL hai
(save_with_children kind="Plan") — ye module sirf VB6-specific helpers
add karta hai (code-gen, FixedCharge lookup, standard-mode check,
JOIN display). Live: Plan1 0 rows, PlanMast.Plan_Package sab 'Plan',
Enviro.PlanMastType='Advanced'.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()


def mode_is_standard(cn=None) -> bool:
    """VB6 dispatcher branch: Enviro.PlanMastType 'Advanced' nahi to
    FrmPlanPackMast (ye form) khulta tha."""
    rows = db.query(
        "SELECT ISNULL(PlanMastType, '') AS T FROM Enviro "
        "WHERE LogSite_Code = ?", (SITE_CODE,), cn=cn)
    return bool(rows) and (rows[0].T or "").strip().lower() != "advanced"


def next_plan_code(cn=None) -> str:
    """VB6 loc_154BB69 code-gen: site[:2] + MAX(SUBSTRING(Code,3,3))+1
    zero-padded 3-digit (KK013 format)."""
    rows = db.query(
        "SELECT ISNULL(MAX(CAST(SUBSTRING(Code, 3, 3) AS INT)), 0) AS N "
        "FROM PlanMast WHERE SITE_CODE = ?", (SITE_CODE,), cn=cn)
    nxt = (int(rows[0].N or 0) + 1) if rows else 1
    return SITE_CODE[:2] + f"{nxt:03d}"


def list_fixed_charges(cn=None) -> list[dict]:
    """DGRev picker source (loc_10C7DA1): FixedCharge charge lines."""
    rows = db.query(
        "SELECT RTRIM(Code) AS Code, Name, Sname, RTRIM(Revcode) AS Revcode, "
        "TaxInc, TaxStru, PrintOption, PostingMethod, ChargeType, FlatRate, "
        "Adult, Child, ExtraAdult, ExtraChild FROM FixedCharge "
        "WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [{"code": (r.Code or "").strip(),
             "name": (r.Name or "").strip(),
             "sname": (r.Sname or "").strip(),
             "revcode": (r.Revcode or "").strip(),
             "taxinc": (r.TaxInc or "").strip(),
             "taxstru": (r.TaxStru or "").strip(),
             "printoption": (r.PrintOption or "").strip(),
             "postingmethod": (r.PostingMethod or "").strip(),
             "chargetype": (r.ChargeType or "").strip(),
             "flatrate": float(r.FlatRate or 0),
             "adult": int(r.Adult or 0),
             "child": int(r.Child or 0),
             "extraadult": int(r.ExtraAdult or 0),
             "extrachild": int(r.ExtraChild or 0)} for r in rows]


def get_plan_display(code: str, cn=None) -> list[dict]:
    """VB6 browse loc_1454217: Plan1 LEFT JOIN FixedCharge, RevName
    ke saath, FixedCharge.Name-ordered."""
    rows = db.query(
        "SELECT P.ChrgCode AS ChrgCode, P.RevCode AS RevCode, "
        "ISNULL(FC.Name, '') AS RevName, P.TaxInc AS TaxInc, "
        "P.TaxStru AS TaxStru, P.PrintOption AS PrintOption, "
        "P.PostingMethod AS PostingMethod, P.ChargeType AS ChargeType, "
        "P.FlatRate AS FlatRate, P.Adult AS Adult, P.Child AS Child, "
        "P.ExtraAdult AS ExtraAdult, P.ExtraChild AS ExtraChild, "
        "P.NoOfDays AS NoOfDays, P.PlanPer AS PlanPer "
        "FROM Plan1 P LEFT JOIN FixedCharge FC ON P.ChrgCode = FC.Code "
        "WHERE P.Code = ? ORDER BY FC.Name",
        ((code or "").strip(),), cn=cn)
    return [{"chrgcode": (r.ChrgCode or "").strip(),
             "revcode": (r.RevCode or "").strip(),
             "revname": (r.RevName or "").strip(),
             "taxinc": (r.TaxInc or "").strip(),
             "taxstru": (r.TaxStru or "").strip(),
             "printoption": (r.PrintOption or "").strip(),
             "postingmethod": (r.PostingMethod or "").strip(),
             "chargetype": (r.ChargeType or "").strip(),
             "flatrate": float(r.FlatRate or 0),
             "adult": int(r.Adult or 0),
             "child": int(r.Child or 0),
             "extraadult": int(r.ExtraAdult or 0),
             "extrachild": int(r.ExtraChild or 0),
             "nodays": int(r.NoOfDays or 0),
             "planper": float(r.PlanPer or 0)} for r in rows]


def validate_percent_app(percent_app: bool, room_per) -> None:
    """VB6 loc_154BAA7: 'Room Rate Percent is invalid' guard."""
    if percent_app and not str(room_per or "").strip():
        raise ValueError("Room Rate Percent is invalid")
