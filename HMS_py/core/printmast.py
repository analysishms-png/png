"""PrintMast CRUD (VB6: frmPrintModule - Main Setup -> General Setup -> Printing Parameters).

Schema: PrintMast table
  Code varchar(5) PK, ModuleDescription varchar(200), RestCode varchar(6) FK->Depart,
  ModType varchar(10) ('FOM'/'POS'), Site_Code varchar(2),
  U_EntDt datetime, U_AE varchar(1) ('A'/'E').
VB6 frmPrintModule.frm evidence:
  SELECT ... FROM PrintMast WHERE SITE_CODE='<site>'
  INSERT INTO PrintMast(Code, ModuleDescription, RestCode, ModType, Site_Code, U_EntDt, U_AE)
  ModType validated as 'FOM' or 'POS' (VB6 KeyPress: 'F'->FOM, 'P'->POS)
  RestCode lookup from Depart WHERE RestType IN ('FOM','Outlet','Room Service')
  Duplicate check: RestCode + ModuleDescription (Proc_99_32)
"""
from __future__ import annotations

from . import db

SITE_CODE = db.get_site_code()
USER = db.get_user()
LIMITS = {"code": 5, "desc": 200, "restcode": 6, "modtype": 10}
SITE_FILTER = "(Site_Code = ? OR Site_Code = 'HO')"
SELECT_COLS = "Code, ModuleDescription, RestCode, ModType, Site_Code, U_EntDt, U_AE"


def _map(r) -> dict:
    try:
        return {
            "code": r.Code,
            "desc": (r.ModuleDescription or "").strip(),
            "restcode": r.RestCode or "",
            "modtype": r.ModType or "",
            "site_code": r.Site_Code or "",
            "u_entdt": r.U_EntDt,
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        c, d, rc, mt, sc, ue, ua = r
        return {
            "code": c, "desc": (d or "").strip(), "restcode": rc or "",
            "modtype": mt or "", "site_code": sc or "",
            "u_entdt": ue, "u_ae": ua or "",
        }


def _validate(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("desc", "").strip():
        raise ValueError("Module Description zaroori hai")
    if len(rec["desc"]) > LIMITS["desc"]:
        raise ValueError(f"ModuleDescription max {LIMITS['desc']} chars")
    if not rec.get("restcode", "").strip():
        raise ValueError("RestCode zaroori hai")
    if len(rec["restcode"]) > LIMITS["restcode"]:
        raise ValueError(f"RestCode max {LIMITS['restcode']} chars")
    mt = (rec.get("modtype") or "").upper()
    if mt not in ("FOM", "POS"):
        raise ValueError("ModType must be FOM or POS")


def _require_unique(rec: dict, exclude_code: str | None = None, cn=None) -> None:
    """VB6 duplicate check (Proc_99_32): RestCode + ModuleDescription unique."""
    sql = f"SELECT COUNT(*) FROM PrintMast WHERE {SITE_FILTER} AND RestCode = ? AND ModuleDescription = ?"
    params = [SITE_CODE, rec.get("restcode", ""), rec.get("desc", "")]
    if exclude_code is not None:
        sql += " AND Code <> ?"
        params.append(exclude_code)
    rows = db.query(sql, tuple(params), cn=cn)
    if rows and int(rows[0][0]) > 0:
        raise ValueError("Duplicate ModuleDescription for this RestCode")


def list_all(cn=None) -> list[dict]:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM PrintMast WHERE {SITE_FILTER} ORDER BY Code",
        (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM PrintMast WHERE Code = ? AND {SITE_FILTER}",
        (code, SITE_CODE), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query(
        f"SELECT 1 FROM PrintMast WHERE Code = ? AND {SITE_FILTER}",
        (code, SITE_CODE), cn=cn))


def get_rest_codes(modtype: str, cn=None) -> list[dict]:
    """VB6 lookup: Depart WHERE RestType IN ('FOM','Outlet','Room Service')."""
    mt = modtype.upper()
    if mt == "FOM":
        rest_filter = "RestType = 'FOM'"
    else:
        rest_filter = "RestType IN ('Outlet','Room Service')"
    rows = db.query(
        f"SELECT Code, Name FROM Depart WHERE {rest_filter} AND (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [{"code": r[0], "name": (r[1] or "").strip()} for r in rows]


def next_code(cn=None) -> str:
    """VB6 auto-code (frmPrintModule TopCtrl1_UnknownEvent_16 loc_126AFB0):
    Select iif(IsNull(Max(val(Code))),1,Max(val(Code))+1) AS MyCode From Printmast
    """
    rows = db.query(
        "SELECT ISNULL(MAX(CAST(Code AS INT)),0)+1 AS MyCode FROM PrintMast", cn=cn)
    n = int(rows[0][0]) if rows else 1
    return str(n)


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    db.require_absent("PrintMast", "Code", rec["code"], "PrintMast Code")
    _require_unique(rec, cn=cn)
    return db.execute(
        "INSERT INTO PrintMast (Code, ModuleDescription, RestCode, ModType, "
        "Site_Code, U_EntDt, U_AE) "
        "VALUES (?, ?, ?, ?, ?, getdate(), 'A')",
        (rec["code"], rec["desc"], rec["restcode"], rec["modtype"].upper(),
         SITE_CODE),
        cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    _require_unique(rec, exclude_code=code, cn=cn)
    return db.execute(
        "UPDATE PrintMast SET ModuleDescription = ?, RestCode = ?, ModType = ?, "
        "Site_Code = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec["desc"], rec["restcode"], rec["modtype"].upper(),
         SITE_CODE, code),
        cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    """VB6 delete chain (TopCtrl1_UnknownEvent_C):
    Check PrinterSetup dependency (ModCode) - if exists, block delete.
    """
    rows = db.query(
        "SELECT COUNT(*) FROM PrinterSetup WHERE ModCode = ? AND Site_Code = ?",
        (code, SITE_CODE), cn=cn)
    if rows and int(rows[0][0]) > 0:
        raise ValueError("Related Record Exist, Entry Can't Be Deleted")
    return db.execute(
        "DELETE FROM PrintMast WHERE Code = ? AND Site_Code = ?",
        (code, SITE_CODE), cn=cn, commit=commit)


def print_rows(cn=None) -> list[tuple]:
    """VB6 print query (TopCtrl1_UnknownEvent_14 loc_108C8BB): PrintMast.ttx + PrintMast.RPT"""
    rows = db.query(
        "SELECT Code, ModuleDescription, RestCode, ModType, Site_Code, U_EntDt, U_AE "
        "FROM PrintMast WHERE Site_Code = ? ORDER BY Code",
        (SITE_CODE,), cn=cn)
    return [tuple(r) for r in rows]


class _PrintMastAPI:
    LIMITS = LIMITS

    @staticmethod
    def list_all(cn=None): return list_all(cn)
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


PrintMastAPI = _PrintMastAPI()