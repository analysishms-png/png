"""PrintFormats lookup (VB6: frmPrintModule DGHelp lookup for ModuleType FOM/POS).

Schema: PrintFormats table
  ModuleName varchar(10) ('FOM'/'POS'), ModuleDescription varchar(200),
  Site_Code varchar(2), U_EntDt datetime, U_AE varchar(1).
VB6 frmPrintModule.frm: DGHelp loads "SELECT ModuleName as Code, ModuleDescription as Name 
FROM PrintFormats WHERE SITE_CODE='<site>'"
"""
from __future__ import annotations

from . import db

SITE_CODE = db.get_site_code()
USER = db.get_user()
SELECT_COLS = "ModuleName, ModuleDescription, Site_Code, U_EntDt, U_AE"


def _map(r) -> dict:
    try:
        return {
            "modname": r.ModuleName,
            "moddesc": (r.ModuleDescription or "").strip(),
            "site_code": r.Site_Code or "",
            "u_entdt": r.U_EntDt,
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        mn, md, sc, ue, ua = r
        return {
            "modname": mn or "", "moddesc": (md or "").strip(),
            "site_code": sc or "", "u_entdt": ue, "u_ae": ua or "",
        }


def list_all(cn=None) -> list[dict]:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM PrintFormats WHERE Site_Code = ? ORDER BY ModuleName, ModuleDescription",
        (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def list_by_modname(modname: str, cn=None) -> list[dict]:
    """VB6 Txt_GotFocus Index=1: filters PrintFormats by ModuleName (FOM/POS)."""
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM PrintFormats WHERE ModuleName = ? AND Site_Code = ? ORDER BY ModuleDescription",
        (modname, SITE_CODE), cn=cn)
    return [_map(r) for r in rows]


def get(modname: str, moddesc: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM PrintFormats WHERE ModuleName = ? AND ModuleDescription = ? AND Site_Code = ?",
        (modname, moddesc, SITE_CODE), cn=cn)
    return _map(rows[0]) if rows else None


def exists(modname: str, moddesc: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM PrintFormats WHERE ModuleName = ? AND ModuleDescription = ? AND Site_Code = ?",
        (modname, moddesc, SITE_CODE), cn=cn))


class _PrintFormatsAPI:
    @staticmethod
    def list_all(cn=None): return list_all(cn)
    @staticmethod
    def list_by_modname(modname, cn=None): return list_by_modname(modname, cn)
    @staticmethod
    def get(modname, moddesc, cn=None): return get(modname, moddesc, cn)
    @staticmethod
    def exists(modname, moddesc, cn=None): return exists(modname, moddesc, cn)


PrintFormatsAPI = _PrintFormatsAPI()