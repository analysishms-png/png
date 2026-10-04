"""PrinterSetup CRUD (VB6: frmMod_Print - Main Setup -> General Setup -> Printing Setup).

Schema: PrinterSetup table
  ModType varchar(10) ('KOT','ORD','TKN','FOM' etc), ModDescription varchar(200),
  ModCode varchar(10) FK->PrintMast.Code, Printer varchar(100),
  AutoPrint varchar(1) ('Y'/'N'), RestCode varchar(6),
  Site_Code varchar(2), U_EntDt datetime, U_AE varchar(1) ('A'/'E').
VB6 frmMod_Print.frm evidence:
  Two grids: FGrid (Bill Printing - ModType NOT IN ('KOT','ORD','TKN'))
             FGrid1 (KOT Printing - ModType IN ('KOT','ORD','TKN'))
  Save: DELETE FROM PrinterSetup WHERE SITE_CODE='<site>' then bulk INSERT
  ModType validated via PrintMast lookup (DGModType from PrintMast)
  ModDescription validated via PrintMast lookup (DgModDesc from PrintMast)
  Printer is free text, AutoPrint validated as Y/N (KeyPress 'Y'/'N')
  RestCode lookup from Depart
"""
from __future__ import annotations

from . import db

SITE_CODE = db.get_site_code()
USER = db.get_user()
LIMITS = {"modtype": 10, "moddesc": 200, "modcode": 10, "printer": 100,
          "autoprint": 1, "restcode": 6}
SELECT_COLS = "ModType, ModDescription, ModCode, Printer, AutoPrint, RestCode, Site_Code, U_EntDt, U_AE"


def _map(r) -> dict:
    try:
        return {
            "modtype": r.ModType,
            "moddesc": (r.ModDescription or "").strip(),
            "modcode": r.ModCode or "",
            "printer": r.Printer or "",
            "autoprint": r.AutoPrint or "N",
            "restcode": r.RestCode or "",
            "site_code": r.Site_Code or "",
            "u_entdt": r.U_EntDt,
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        mt, md, mc, pr, ap, rc, sc, ue, ua = r
        return {
            "modtype": mt or "", "moddesc": (md or "").strip(),
            "modcode": mc or "", "printer": pr or "",
            "autoprint": ap or "N", "restcode": rc or "",
            "site_code": sc or "", "u_entdt": ue, "u_ae": ua or "",
        }


def _validate(rec: dict, is_kot: bool = False):
    if not rec.get("modtype", "").strip():
        raise ValueError("ModType zaroori hai")
    if len(rec["modtype"]) > LIMITS["modtype"]:
        raise ValueError(f"ModType max {LIMITS['modtype']} chars")
    if not rec.get("moddesc", "").strip():
        raise ValueError("ModDescription zaroori hai")
    if len(rec["moddesc"]) > LIMITS["moddesc"]:
        raise ValueError(f"ModDescription max {LIMITS['moddesc']} chars")
    if not rec.get("modcode", "").strip():
        raise ValueError("ModCode zaroori hai")
    if len(rec["modcode"]) > LIMITS["modcode"]:
        raise ValueError(f"ModCode max {LIMITS['modcode']} chars")
    if not rec.get("printer", "").strip():
        raise ValueError("Printer zaroori hai")
    if len(rec["printer"]) > LIMITS["printer"]:
        raise ValueError(f"Printer max {LIMITS['printer']} chars")
    ap = (rec.get("autoprint") or "N").upper()
    if ap not in ("Y", "N"):
        raise ValueError("AutoPrint must be Y or N")
    if not rec.get("restcode", "").strip():
        raise ValueError("RestCode zaroori hai")
    if len(rec["restcode"]) > LIMITS["restcode"]:
        raise ValueError(f"RestCode max {LIMITS['restcode']} chars")
    # VB6: ModType must match PrintMast.ModType for the ModCode
    # KOT grid: ModType IN ('KOT','ORD','TKN'), Bill grid: NOT IN ('KOT','ORD','TKN')


def list_all(cn=None) -> list[dict]:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM PrinterSetup WHERE Site_Code = ? ORDER BY ModType, ModCode",
        (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def list_by_kot(cn=None) -> list[dict]:
    """KOT Printing grid (ModType IN ('KOT','ORD','TKN'))."""
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM PrinterSetup "
        "WHERE Site_Code = ? AND ModType IN ('KOT','ORD','TKN') ORDER BY ModCode",
        (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def list_by_bill(cn=None) -> list[dict]:
    """Bill Printing grid (ModType NOT IN ('KOT','ORD','TKN'))."""
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM PrinterSetup "
        "WHERE Site_Code = ? AND ModType NOT IN ('KOT','ORD','TKN') ORDER BY ModCode",
        (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def get(modcode: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM PrinterSetup WHERE ModCode = ? AND Site_Code = ?",
        (modcode, SITE_CODE), cn=cn)
    return _map(rows[0]) if rows else None


def exists(modcode: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM PrinterSetup WHERE ModCode = ? AND Site_Code = ?",
        (modcode, SITE_CODE), cn=cn))


def get_printmast_codes(cn=None) -> list[dict]:
    """VB6 DGModType lookup: PrintMast WHERE Site_Code = ?"""
    from HMS_py.core import printmast
    return printmast.list_all(cn=cn)


def get_printmast_by_modtype(modtype: str, cn=None) -> list[dict]:
    """VB6 DgModDesc lookup: PrintMast filtered by ModType."""
    from HMS_py.core import printmast
    rows = db.query(
        "SELECT Code, ModuleDescription FROM PrintMast WHERE ModType = ? AND Site_Code = ? ORDER BY ModuleDescription",
        (modtype, SITE_CODE), cn=cn)
    return [{"code": r[0], "desc": (r[1] or "").strip()} for r in rows]


def get_rest_codes(modtype: str, cn=None) -> list[dict]:
    """VB6 RestCode lookup: Depart WHERE RestType based on ModType."""
    mt = modtype.upper()
    if mt == "FOM":
        rest_filter = "RestType = 'FOM'"
    elif mt in ("KOT", "ORD", "TKN"):
        rest_filter = "RestType IN ('Outlet','Room Service')"
    else:
        rest_filter = "RestType IN ('Outlet','Room Service')"
    rows = db.query(
        f"SELECT Code, Name FROM Depart WHERE {rest_filter} AND (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [{"code": r[0], "name": (r[1] or "").strip()} for r in rows]


def get_printers(cn=None) -> list[str]:
    """Get list of installed printers (VB6 uses Printer object - placeholder)."""
    # In VB6: Printers collection; in Python we'd use win32print or similar
    # For now return common names
    return ["Default Printer", "Microsoft Print to PDF", "POS Printer", "KOT Printer"]


def save_all(kot_rows: list[dict], bill_rows: list[dict], cn=None, commit: bool = True) -> int:
    """VB6 CmdSave: DELETE all then bulk INSERT (transaction).
    
    VB6: BeginTrans -> DELETE FROM PRINTERSETUP WHERE SITE_CODE='<site>'
    -> loop FGrid1 (KOT) rows -> INSERT
    -> loop FGrid (Bill) rows -> INSERT
    -> CommitTrans
    """
    all_rows = kot_rows + bill_rows
    if not all_rows:
        raise ValueError("Koi print setup nahi hai")
    
    for rec in all_rows:
        _validate(rec)
    
    own = cn is None
    cn = cn or db.connect()
    try:
        # Delete existing for this site
        db.execute("DELETE FROM PrinterSetup WHERE Site_Code = ?", (SITE_CODE,), cn=cn, commit=False)
        
        # Insert KOT rows
        for rec in kot_rows:
            db.execute(
                "INSERT INTO PrinterSetup (ModType, ModDescription, ModCode, Printer, AutoPrint, "
                "RestCode, Site_Code, U_EntDt, U_AE) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, getdate(), 'A')",
                (rec["modtype"], rec["moddesc"], rec["modcode"],
                 rec["printer"], rec["autoprint"].upper(),
                 rec["restcode"], SITE_CODE),
                cn=cn, commit=False)
        
        # Insert Bill rows
        for rec in bill_rows:
            db.execute(
                "INSERT INTO PrinterSetup (ModType, ModDescription, ModCode, Printer, AutoPrint, "
                "RestCode, Site_Code, U_EntDt, U_AE) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, getdate(), 'A')",
                (rec["modtype"], rec["moddesc"], rec["modcode"],
                 rec["printer"], rec["autoprint"].upper(),
                 rec["restcode"], SITE_CODE),
                cn=cn, commit=False)
        
        if commit:
            cn.commit()
        return len(all_rows)
    finally:
        if own:
            try:
                cn.rollback()
            except Exception:
                pass
            cn.close()


def print_rows(cn=None) -> list[tuple]:
    """VB6 print uses PrinterSetup directly."""
    rows = db.query(
        "SELECT ModType, ModDescription, ModCode, Printer, AutoPrint, RestCode, Site_Code, U_EntDt, U_AE "
        "FROM PrinterSetup WHERE Site_Code = ? ORDER BY ModType, ModCode",
        (SITE_CODE,), cn=cn)
    return [tuple(r) for r in rows]


class _PrinterSetupAPI:
    LIMITS = LIMITS

    @staticmethod
    def list_all(cn=None): return list_all(cn)
    @staticmethod
    def list_kot(cn=None): return list_by_kot(cn)
    @staticmethod
    def list_bill(cn=None): return list_by_bill(cn)
    @staticmethod
    def get(modcode, cn=None): return get(modcode, cn)
    @staticmethod
    def exists(modcode, cn=None): return exists(modcode, cn)
    @staticmethod
    def save_all(kot_rows, bill_rows, cn=None, commit=True): return save_all(kot_rows, bill_rows, cn, commit)


PrinterSetupAPI = _PrinterSetupAPI()