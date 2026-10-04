"""Voucher Wise Sundry Entry — VB6 VoucherSundrySetting.frm CRUD layer.

VB6 source: HMS_REVERSE_ENGINEERING/HMS/VoucherSundrySetting.frm
(Caption "Voucher Sundry Setting", MDI child, TopCtrl rights string "AEDP").

Evidence (line refs point into that .frm):
- Group list (:525):
  'Select DISTINCT (SP.V_Type+Space(5-len(SP.V_Type))+'**'+
   '+Convert(Varchar(11),SP.AppDate,103)) AS SearchCode From SundryType SP
   Where V_Type in (Select ShortName From Depart Where ShortName='PURC')
   Order By (same expression)'
- Outlet picker / DGVType (:507): 'Select ShortName as Code,Name,Code as DCOde
  From Depart Where ShortName='PURC' Order by Name'  (Code -> Txt(0).Tag,
  Name -> Txt(0).Text; .frm:74 MaxLength=30)
- SundryMast lookup / DGSundry (:513): 'Select Code,Name,Nature,SysYN
  From SundryMast Order By Name'
- RevMast lookup / DGRevenue (:519 & :526): 'Select Code,Name,DeskCode,Type
  From RevMast Where FlagType Is Null And FieldType<>'P' Order By Name'
- Detail load Proc_82_51 (:2220): 'Select VT.Description,SP.*,SM.Name As
  SundryName,RM.Name As RevName,D.Name As Department From ((((SundryType SP
  Left Join Voucher_type VT On SP.V_Type=VT.V_Type) Left Join Depart D On
  VT.RestCode=D.Code) Left Join SundryMast SM On SP.SundryCode=SM.Code) Left
  Join RevMast RM On SP.RevCode=RM.Code) Where
  SP.V_Type+Space(5-len(SP.V_Type))+'**'+Convert(Varchar(11),SP.AppDate,103)
  = '<SearchCode>' Order By SP.SNo'   (Txt(0).Tag=V_Type, Txt(0).Text=
  Department, LblDepart=Department, Txt(1)=Format(AppDate,"dd/mm/yyyy"))
- Dup guard Proc_82_46 (:1813): 'Select Count(*) From SundryType Where
  (LOGSITE_CODE=<site> or LOGSITE_CODE='HO') and (V_Type=<type> And
  AppDate=<date>)' -> MsgBox "Duplicate Entry" (title "Information").
- Save TopCtrl event 19 (:303-441): required Voucher Type + App. Date
  (shared helper Proc_6_27), dup guard, then per row (:310-339) SNo /
  DispName / Per-Amt checks, BeginTrans (:340), row INSERT when
  SundryCode non-empty (:350), CalcSign blank -> '+' (:358), COMMIT (:406),
  ROLLBACK + MsgBox(err, vbCritical) on error (:434/:439).
- INSERT column list (:395-402) verbatim:
  'Insert Into SundryType (V_Type,AppDate,SundryCode,SNo,DispName,CalcFormula,
   PerOrAmt,RoundOff,SValue,Limit,RevCode,Nature,CalcSign,SysYN,Grp,U_Name,
   U_EntDt,U_AE,AutoManual) Values (...)'  U_Name=logged-in user, U_EntDt=VB6
  Date, U_AE literal 'A'.
- Template on outlet pick Proc_82_55 (:2387): 'SELECT SF.*,SM.Name as
  SundryName FROM SundryTypeFix SF LEFT JOIN SundryMast SM ON
  SF.SundryCode = SM.Code Order By SNo'
- Search index TopCtrl event 1B (:472).
- Grid-row delete FGrid event D (:1518-1557): Ctrl+D, blocked in "Browse"
  and "Edit" mode, confirm 'Are You Sure To Delete?' / 'Delete Entry !'.
- NO UPDATE and NO DELETE SQL anywhere in the .frm (rg-verified): the only
  delete in VB6 source removes a grid row before save.

Port deviations (all documented, nothing else changed):
1. Pad-safe SearchCode expression: VB6 'Space(5-len(V_Type))' evaluates to
   NULL for V_Type longer than 5 chars (live KKPURC = 6 chars -> whole key
   NULL, group unreachable). Port uses SPACE(CASE WHEN LEN<5 THEN 5-LEN
   ELSE 0 END): identical result for len<=5, never NULL.
2. Outlet list + group list fallback: live DB has no Depart row with
   ShortName='PURC' and no SundryType.V_Type equals any Depart.ShortName,
   so the VB6 queries return 0 rows. Port falls back to distinct V_Type
   (labelled with Voucher_type.Description) so the form is usable.
3. RevMast lookup fallback: live FlagType is '' (never SQL NULL) so VB6
   'FlagType Is Null' returns 0 rows; fallback uses
   ISNULL(FlagType,'')='' AND ISNULL(FieldType,'')<>'P'.
4. INSERT adds SiteCode + LogSite_Code = site (VB6's 19-col INSERT leaves
   both at column default '') so the VB6 dup guard, which filters on
   LOGSITE_CODE='KK'/'HO', can see rows this port wrote. All 118 live rows
   already carry SiteCode='KK'.
5. Edit flow = DELETE + re-INSERT inside one transaction (VB6 .frm has no
   UPDATE SQL; a second INSERT would hit PK (V_Type,SundryCode,SNo,AppDate).
   Edited rows are stamped U_AE='E').
6. Group DELETE is a port addition (VB6 TopCtrl 'Delete' handler is absent
   from the decompiled .frm; grid-row delete is UI-only).
7. Required-field wording 'Fill Voucher Type' / 'Fill App. Date': the shared
   VB6 helper Proc_6_27_EA565C body is not part of the decompiled corpus,
   so the message text follows this form's own 'Fill ...' style.
"""
from __future__ import annotations

import datetime
import re

from HMS_py.core import db

SITE_CODE = db.get_site_code()
USER = db.get_user()

# VB6 :395-396 column list, verbatim, + SiteCode/LogSite_Code (deviation 4)
_INSERT_COLS = (
    "V_Type, AppDate, SundryCode, SNo, DispName, CalcFormula, PerOrAmt, "
    "RoundOff, SValue, Limit, RevCode, Nature, CalcSign, SysYN, Grp, "
    "U_Name, U_EntDt, U_AE, AutoManual, SiteCode, LogSite_Code")
_INSERT_PH = ", ".join("?" for _ in range(21))

# VB6 'Space(5-len(SP.V_Type))' with NULL-safety (deviation 1)
_PAD = ("SPACE(CASE WHEN LEN(SP.V_Type) < 5 THEN 5 - LEN(SP.V_Type) "
        "ELSE 0 END)")
_SEARCH_EXPR = (f"(SP.V_Type + {_PAD} + '**' + "
                "CONVERT(varchar(11), SP.AppDate, 103))")


class Vb6Msg(Exception):
    """VB6 MsgBox parity: exact text + exact title ('' = no title)."""

    def __init__(self, text: str, title: str = ""):
        super().__init__(text)
        self.text = text
        self.title = title


def _s(v, n: int | None = None) -> str:
    s = "" if v is None else str(v).strip()
    return s[:n] if n else s


def parse_date(text):
    """VB6 Txt(1) format dd/mm/yyyy (MaxLength 11) -> date."""
    t = _s(text)
    if not t:
        return None
    for fmt in ("%d/%m/%Y", "%d-%m-%Y", "%d/%m/%y", "%Y-%m-%d %H:%M:%S",
                "%Y-%m-%d"):
        try:
            return datetime.datetime.strptime(t, fmt).date()
        except ValueError:
            continue
    return None


def _as_date(value):
    if value is None or value == "":
        return None
    if isinstance(value, datetime.datetime):
        return value.date()
    if isinstance(value, datetime.date):
        return value
    return parse_date(value)


def search_code_for(v_type, app_date) -> str:
    """VB6 SearchCode = V_Type + Space(5-len) + '**' + dd/mm/yyyy."""
    d = _as_date(app_date)
    if d is None:
        return ""
    vt = _s(v_type)
    return vt + (" " * max(0, 5 - len(vt))) + "**" + d.strftime("%d/%m/%Y")


def blank_row(sno=None) -> dict:
    """One empty FGrid row (raw DB values, display conversion is UI-side)."""
    return {
        "sno": "" if sno is None else sno, "sundrycode": "", "sundry_name": "",
        "dispname": "", "calcformula": "", "peroramt": "", "svalue": 0.0,
        "roundoff": "", "limit": 0.0, "nature": "", "calcsign": "", "grp": "",
        "revcode": "", "rev_name": "", "sysyn": "", "autom": "",
        "appdate": None, "v_type": "", "department": "", "description": "",
    }


# ── lookups (VB6 Form_Load recordsets) ─────────────────────────────────
def list_search_codes(cn=None) -> list[dict]:
    """VB6 :525 group index (deviation 1 + 2 for live-DB empty fallback)."""
    where = ("WHERE SP.V_Type IN (SELECT ShortName FROM Depart "
             "WHERE ShortName='PURC') ")
    sql = (f"SELECT DISTINCT {_SEARCH_EXPR} AS SearchCode, SP.V_Type, "
           "CONVERT(varchar(11), SP.AppDate, 103) AS AppDate "
           f"FROM SundryType SP {where}ORDER BY SearchCode")
    rows = db.query(sql, (), cn=cn)
    if not rows:                                   # deviation 2
        sql = (f"SELECT DISTINCT {_SEARCH_EXPR} AS SearchCode, SP.V_Type, "
               "CONVERT(varchar(11), SP.AppDate, 103) AS AppDate "
               "FROM SundryType SP ORDER BY SearchCode")
        rows = db.query(sql, (), cn=cn)
    return [{"search_code": _s(r[0]), "v_type": _s(r[1]),
             "app_date_text": _s(r[2]), "appdate": parse_date(r[2])}
            for r in rows]


def list_outlets(cn=None) -> list[dict]:
    """VB6 :507 DGVType source (Code -> Txt(0).Tag, Name -> Txt(0).Text)."""
    rows = db.query(
        "SELECT ShortName AS Code, Name, Code AS DCOde FROM Depart "
        "WHERE ShortName='PURC' ORDER BY Name", (), cn=cn)
    out = [{"code": _s(r[0]), "name": _s(r[1])} for r in rows if _s(r[0])]
    if out:
        return out
    rows = db.query(                               # deviation 2
        "SELECT DISTINCT SP.V_Type, ISNULL(VT.Description, '') "
        "FROM SundryType SP LEFT JOIN Voucher_type VT "
        "ON SP.V_Type = VT.V_Type ORDER BY SP.V_Type", (), cn=cn)
    return [{"code": _s(r[0]), "name": _s(r[1]) or _s(r[0])}
            for r in rows if _s(r[0])]


def list_sundries(cn=None) -> list[dict]:
    """VB6 :513 DGSundry source (Code, Name, Nature, SysYN)."""
    rows = db.query("SELECT Code, Name, Nature, SysYN FROM SundryMast "
                    "ORDER BY Name", (), cn=cn)
    return [{"code": _s(r[0]), "name": _s(r[1]), "nature": _s(r[2]),
             "sysyn": _s(r[3])} for r in rows]


def list_revenues(cn=None) -> list[dict]:
    """VB6 :519 DGRevenue source + live-DB fallback (deviation 3)."""
    sql = ("SELECT Code, Name, DeskCode, Type FROM RevMast "
           "WHERE FlagType Is Null And FieldType<>'P' ORDER BY Name")
    rows = db.query(sql, (), cn=cn)
    if not rows:                                   # deviation 3
        rows = db.query(
            "SELECT Code, Name, DeskCode, Type FROM RevMast "
            "WHERE ISNULL(FlagType,'')='' AND ISNULL(FieldType,'')<>'P' "
            "ORDER BY Name", (), cn=cn)
    return [{"code": _s(r[0]), "name": _s(r[1]), "deskcode": _s(r[2]),
             "type": _s(r[3])} for r in rows]


def load_fix_template(cn=None) -> list[dict]:
    """VB6 Proc_82_55 (:2387) SundryTypeFix pre-fill, Order By SNo."""
    own = cn is None
    cn = cn or db.connect()
    try:
        cur = cn.cursor()
        cur.execute("SELECT SF.*, SM.Name as SundryName FROM SundryTypeFix SF "
                    "LEFT JOIN SundryMast SM ON SF.SundryCode = SM.Code "
                    "Order By SNo")
        names = [d[0].lower() for d in cur.description]
        rows = cur.fetchall()
    finally:
        if own:
            cn.close()
    return [_grid_row(dict(zip(names, r))) for r in rows]


def search_list(cn=None) -> list[dict]:
    """VB6 TopCtrl event 1B (:472) search index columns."""
    sql = (f"SELECT {_SEARCH_EXPR} AS SearchCode, VT.Description, "
           "CONVERT(Varchar(11), SP.AppDate, 103) As AppDate, SP.SNo, "
           "SM.Name As SundryName, SP.DispName, SP.CalcFormula, "
           "RM.Name As Revenue "
           "FROM (((SundryType SP Left Join Voucher_type VT "
           "On SP.V_Type=VT.V_Type) Left Join SundryMast SM "
           "On SP.SundryCode=SM.Code) Left Join RevMast RM "
           "On SP.RevCode=RM.Code) "
           "ORDER BY SP.AppDate, VT.Description")
    rows = db.query(sql, (), cn=cn)
    return [{"search_code": _s(r[0]), "description": _s(r[1]),
             "app_date_text": _s(r[2]), "sno": int(r[3] or 0),
             "sundry_name": _s(r[4]), "dispname": _s(r[5]),
             "calcformula": _s(r[6]), "revenue": _s(r[7])} for r in rows]


def _grid_row(d: dict) -> dict:
    """Record dict -> FGrid row (SP.* or SF.* both map through this)."""
    ad = d.get("appdate")
    if isinstance(ad, datetime.datetime):
        ad = ad.date()
    row = blank_row()
    row.update({
        "v_type": _s(d.get("v_type")),
        "appdate": ad,
        "sno": int(d.get("sno") or 0),
        "sundrycode": _s(d.get("sundrycode")),
        "sundry_name": _s(d.get("sundryname")),
        "dispname": _s(d.get("dispname")),
        "calcformula": _s(d.get("calcformula")),
        "peroramt": _s(d.get("peroramt"))[:1],
        "svalue": float(d.get("svalue") or 0),
        "roundoff": _s(d.get("roundoff"))[:1],
        "limit": float(d.get("limit") or 0),
        "nature": _s(d.get("nature")),
        "calcsign": _s(d.get("calcsign"))[:1],
        "grp": _s(d.get("grp"))[:1],
        "revcode": _s(d.get("revcode")),
        "rev_name": _s(d.get("revname")),
        "sysyn": _s(d.get("sysyn"))[:1],
        "autom": _s(d.get("autom"))[:1],
        "department": _s(d.get("department")),
        "description": _s(d.get("description")),
    })
    return row


def load_detail(search_code, cn=None) -> list[dict]:
    """VB6 Proc_82_51 detail join, Order By SP.SNo (verbatim, param ?)."""
    key = _s(search_code)
    if not key:
        return []
    sql = ("SELECT VT.Description, SP.*, SM.Name As SundryName, "
           "RM.Name As RevName, D.Name As Department "
           "FROM ((((SundryType SP "
           "Left Join Voucher_type VT On SP.V_Type=VT.V_Type) "
           "Left Join Depart D On VT.RestCode=D.Code) "
           "Left Join SundryMast SM On SP.SundryCode=SM.Code) "
           "Left Join RevMast RM On SP.RevCode=RM.Code) "
           f"WHERE {_SEARCH_EXPR} = ? ORDER BY SP.SNo")
    own = cn is None
    cn = cn or db.connect()
    try:
        cur = cn.cursor()
        cur.execute(sql, (key,))
        names = [d[0].lower() for d in cur.description]
        rows = cur.fetchall()
    finally:
        if own:
            cn.close()
    return [_grid_row(dict(zip(names, r))) for r in rows]


def count_group(v_type, app_date, site=None, cn=None) -> int:
    """VB6 Proc_82_46 (:1813) duplicate-group count (verbatim, param ?)."""
    site = site or SITE_CODE
    rows = db.query(
        "SELECT COUNT(*) FROM SundryType WHERE (LOGSITE_CODE = ? OR "
        "LOGSITE_CODE = 'HO') AND (V_Type = ? AND AppDate = ?)",
        (site, _s(v_type), _as_date(app_date)), cn=cn)
    return int(rows[0][0] or 0) if rows else 0


# ── validation (VB6 save-flow texts, exact) ─────────────────────────────
def validate_group(v_type, app_date, rows, *, check_dup: bool = True,
                   site=None, cn=None) -> list[dict]:
    """VB6 TopCtrl event 19 checks in order. Returns insert-ready rows."""
    if not _s(v_type):
        raise Vb6Msg("Fill Voucher Type", "Information")
    d = _as_date(app_date)
    if d is None:
        raise Vb6Msg("Fill App. Date", "Information")
    if check_dup and count_group(v_type, d, site=site, cn=cn) > 0:
        raise Vb6Msg("Duplicate Entry", "Information")
    for r in rows:                                   # :310-339
        name = _s(r.get("sundry_name"))
        if not name:
            continue
        if not _s(r.get("sno")):
            raise Vb6Msg(f"Fill S.NO For Sundry Name {name}", "Information")
        if not _s(r.get("dispname")):
            raise Vb6Msg(f"Fill Disp. Name For Sundry Name {name}",
                         "Information")
        if not _s(r.get("peroramt")):
            raise Vb6Msg(f"Fill Per/Amt For Sundry Name {name}", "Information")
    return [r for r in rows if _s(r.get("sundrycode"))]   # VB6 :350


def check_formula(formula, prior_snos) -> str | None:
    """VB6 Proc_82_47 (:1833) CalcFormula cell validation -> error text."""
    f = _s(formula)
    if not f:
        return None
    if f[0] in "+-":
        return "Invalid Operator at Starting position of furmula"
    if f[-1] in "+-":
        return "Invalid Operator at Ending position of furmula"
    known = set()
    for s in prior_snos:
        try:
            known.add(int(str(s).strip()))
        except (TypeError, ValueError):
            continue
    for tok in re.split(r"[+-]", f):
        tok = tok.strip()
        if not tok:
            continue
        try:
            n = int(tok)
        except ValueError:
            n = None
        if n is None or n not in known:
            return (f"Invalid Row Reference {tok}\r\n"
                    "Please Enter Correct No.")
    return None


def duplicate_sundry_name(name, rows, skip: int = -1) -> bool:
    """VB6 Proc_82_54 (:2334) — same Sundry Name in another grid row."""
    n = _s(name).upper()
    if not n:
        return False
    for i, r in enumerate(rows):
        if i == skip:
            continue
        other = _s(r.get("sundry_name")).upper()
        if other and other == n:
            return True
    return False


# ── writes ──────────────────────────────────────────────────────────────
def insert_group(v_type, app_date, rows, *, user=None, site=None,
                 u_ae: str = "A", cn=None, commit: bool = False) -> int:
    """VB6 :395-406 INSERT loop (per row with SundryCode, ?-parameterised).

    commit=False because callers wrap the loop in db.transaction()
    (VB6 BeginTrans :340 / CommitTrans :406 / Rollback :435).
    """
    user = user or USER
    site = site or SITE_CODE
    d = _as_date(app_date)
    if d is None:
        raise Vb6Msg("Fill App. Date", "Information")
    ent_dt = datetime.date.today()          # VB6 U_EntDt = Date
    n = 0
    for r in rows:
        code = _s(r.get("sundrycode"))
        if not code:                        # VB6 :350 skips code-less rows
            continue
        sign = _s(r.get("calcsign")) or "+"         # VB6 :358 default
        n += db.execute(
            f"INSERT INTO SundryType ({_INSERT_COLS}) "
            f"VALUES ({_INSERT_PH})",
            (_s(v_type)[:6], d, code[:6], int(r.get("sno") or 0),
             _s(r.get("dispname"))[:20], _s(r.get("calcformula"))[:50],
             _s(r.get("peroramt"))[:1], _s(r.get("roundoff"))[:1],
             float(r.get("svalue") or 0), float(r.get("limit") or 0),
             _s(r.get("revcode"))[:6], _s(r.get("nature"))[:20],
             sign[:1], _s(r.get("sysyn"))[:1], _s(r.get("grp"))[:1],
             user[:10], ent_dt, _s(u_ae)[:1], _s(r.get("autom"))[:1],
             site[:2], site[:2]),
            cn=cn, commit=commit)
    return n


def delete_group(v_type, app_date, cn=None, commit: bool = True) -> int:
    """PORT ADDITION (deviation 6): whole (V_Type, AppDate) group remove."""
    d = _as_date(app_date)
    if d is None:
        raise Vb6Msg("Fill App. Date", "Information")
    return db.execute("DELETE FROM SundryType WHERE V_Type = ? AND AppDate = ?",
                      (_s(v_type)[:6], d), cn=cn, commit=commit)


def save_group(v_type, app_date, rows, *, user=None, site=None,
               check_dup: bool = True, cn=None) -> int:
    """VB6 Add-save: validate -> BeginTrans -> INSERT loop -> Commit."""
    user = user or USER
    site = site or SITE_CODE
    ready = validate_group(v_type, app_date, rows, check_dup=check_dup,
                           site=site, cn=cn)
    with db.transaction(cn) as conn:
        return insert_group(v_type, app_date, ready, user=user, site=site,
                            u_ae="A", cn=conn, commit=False)


def update_group(v_type, app_date, rows, *, user=None, site=None,
                 prev_v_type=None, prev_app_date=None, cn=None) -> int:
    """PORT ADDITION (deviation 5): Edit = DELETE old key + INSERT new key,
    one transaction, U_AE='E' (VB6 .frm ships no UPDATE statement)."""
    user = user or USER
    site = site or SITE_CODE
    prev_vt = _s(prev_v_type) or _s(v_type)
    prev_dt = _as_date(prev_app_date)
    if prev_dt is None:
        prev_dt = _as_date(app_date)
    ready = validate_group(v_type, app_date, rows, check_dup=False,
                           site=site, cn=cn)
    with db.transaction(cn) as conn:
        delete_group(prev_vt, prev_dt, cn=conn, commit=False)
        return insert_group(v_type, app_date, ready, user=user, site=site,
                            u_ae="E", cn=conn, commit=False)
