"""Depart CRUD (VB6: DepartMast.frm - Main Setup -> Inventory -> Department).

Schema evidence: Code varchar(6) PK, Name varchar(35), KotYn varchar(1),
POS varchar(1), Header1/Header2 varchar(50), Phone varchar(50),
ShortName varchar(20), RestType varchar(20), OutletYN varchar(1),
BackColor int, Printer varchar(75), PrintType varchar(6), StoreType varchar(4),
Site_Code, LogSite_Code, U_Name, U_EntDt, U_AE.
App-level: Code+Name required. Audit: U_Name+U_EntDt(getdate())+U_AE('A'/'E').

BUG-002 FIX (2026-10-01):
  1. list_all: VB6 DepartMast.frm Form_Load filters
       WHERE (LOGSITE_CODE='x' OR LOGSITE_CODE='HO')
       AND OutletYN='N' AND RestType NOT IN ('FOM','PURC')
     This was MISSING — now added.
  2. SELECT_COLS: ShortName, RestType, OutletYN were MISSING — added.
  3. delete(): VB6 TopCtrl1_UnknownEvent_C (loc_128618E) does:
       DELETE FROM Depart WHERE Code=...
       DELETE FROM RevMast WHERE Code=...  (cascade)
     in one transaction with RollbackTrans on error.
     Python only deleted Depart — RevMast cascade now added.
  4. Dependency checks before delete: VB6 checks ItemGrp.RestCode,
     ItemMast.RestCode, Stock.DepartCode before allowing delete.

BUG-009 FIX (2026-10-01):
  VB6 DepartMast.frm TopCtrl1_UnknownEvent_16 (loc_167F9C2) INSERT builds:
    INSERT INTO Depart(...) + INSERT INTO RevMast(...)
  both inside same BeginTrans/CommitTrans block. Python insert() only wrote
  Depart — now also inserts a matching RevMast record in same transaction.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
LIMITS = {
    "code": 6, "name": 35, "flag": 1, "header": 50, "phone": 50,
    "short": 20, "resttype": 20, "printer": 75,
}
# BUG-002 FIX: ShortName, RestType, OutletYN added to SELECT_COLS
SELECT_COLS = (
    "Code, Name, KotYn, POS, Phone, ShortName, RestType, OutletYN, "
    "BackColor, U_Name, U_EntDt, U_AE"
)
# VB6 DepartMast.frm Form_Load / Find / Print site scope filter
SITE_FILTER = "(LogSite_Code = ? OR LogSite_Code = 'HO')"


def _map(r) -> dict:
    try:
        return {
            "code": r.Code, "name": r.Name or "",
            "kotyn": r.KotYn or "", "pos": r.POS or "",
            "phone": r.Phone or "",
            "short": r.ShortName or "",
            "resttype": r.RestType or "",
            "outletyn": r.OutletYN or "N",
            "backcolor": r.BackColor or 0,
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        # tuple fallback (SELECT_COLS order)
        c, n, ky, pos, ph, sn, rt, oy, bc, un, _, uae = list(r) + [None] * 12
        return {
            "code": c or "", "name": n or "",
            "kotyn": ky or "", "pos": pos or "",
            "phone": ph or "", "short": sn or "",
            "resttype": rt or "", "outletyn": oy or "N",
            "backcolor": bc or 0,
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate(rec: dict):
    if len(rec.get("code", "")) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if len(rec.get("name", "")) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    for k in ("kotyn", "pos", "outletyn"):
        v = (rec.get(k) or "").strip().upper()
        if v and v not in ("Y", "N"):
            raise ValueError(f"{k} sirf Y/N ho sakta hai")
    if len(rec.get("phone", "")) > LIMITS["phone"]:
        raise ValueError(f"Phone max {LIMITS['phone']} chars")
    if len(rec.get("short", "")) > LIMITS["short"]:
        raise ValueError(f"ShortName max {LIMITS['short']} chars")
    if len(rec.get("resttype", "")) > LIMITS["resttype"]:
        raise ValueError(f"RestType max {LIMITS['resttype']} chars")
    # VB6 validation (loc_167F939): Kitchen/Staff Kitchen type requires Printer
    rt = (rec.get("resttype") or "").strip()
    if rt in ("Kitchen", "Staff Kitchen") and not (rec.get("printer") or "").strip():
        raise ValueError("Kitchen type ke liye Printer Path zaroori hai")


def list_all(cn=None) -> list[dict]:
    """BUG-002 FIX: VB6 DepartMast Form_Load site+RestType+OutletYN filter.

    VB6 SQL (loc_1020B71):
      WHERE (LOGSITE_CODE='x' OR LOGSITE_CODE='HO')
        AND OutletYN='N' AND RestType NOT IN ('FOM','PURC')
    """
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM Depart "
        f"WHERE {SITE_FILTER} AND OutletYN = 'N' "
        "AND RestType NOT IN ('FOM', 'PURC') "
        "ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def list_outlets(cn=None) -> list[dict]:
    """Billing outlets (OutletYN='Y') — separate list for OutLetMast context."""
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM Depart "
        f"WHERE {SITE_FILTER} AND OutletYN = 'Y' ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM Depart WHERE Code = ? AND {SITE_FILTER}",
        (code, SITE_CODE), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM Depart WHERE Code = ?", (code,), cn=cn))


def _next_code(resttype: str, cn=None) -> str:
    """VB6 DepartMast.frm auto-code (loc_167FA20):
      Select IsNull(Max(CAST(SUBSTRING(Code,4,Len-3) AS INT)),0) From
      (Select Code From GodownMast Union Select Code From Depart) as bb
      Where IsNumeric(...)=1 AND Left(Code,3)='<site-prefix>K' (Kitchen)
    Simplified: same 3-char prefix (2-char site + RestType[0]) + 3-digit seq.
    """
    prefix = (SITE_CODE[:2] + (resttype[:1] if resttype else "D")).upper()
    rows = db.query(
        "SELECT ISNULL(MAX(CAST(SUBSTRING(Code,4,LEN(Code)-3) AS INT)),0)+1 "
        "FROM ("
        "  SELECT Code FROM GodownMast WHERE ISNUMERIC(SUBSTRING(Code,4,LEN(Code)-3))=1 "
        "    AND LEFT(Code,3)=? "
        "  UNION "
        "  SELECT Code FROM Depart WHERE ISNUMERIC(SUBSTRING(Code,4,LEN(Code)-3))=1 "
        "    AND LEFT(Code,3)=?"
        ") AS bb",
        (prefix, prefix), cn=cn)
    n = int(rows[0][0]) if rows else 1
    return f"{prefix}{n:03d}"


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    """BUG-009 FIX: VB6 inserts both Depart AND RevMast in one transaction.

    VB6 DepartMast.frm TopCtrl1_UnknownEvent_16 (loc_167F9C2):
      unk.BeginTrans
      INSERT INTO Depart(Code,Name,RestType,BackColor,ShortName,OutletYN,
        Site_Code,U_Name,U_EntDt,U_AE,Printer,StoreType,LOGSITE_CODE,PrintType)
      INSERT INTO RevMast(Code,Name,...,FieldType='R',...) -- revenue account
      unk.CommitTrans
    """
    _validate(rec)
    code = (rec.get("code") or "").strip()
    if not code:
        code = _next_code(rec.get("resttype", ""), cn=cn)
    db.require_absent("Depart", "Code", code, "Department Code")

    own = cn is None
    cn = cn or db.connect()
    try:
        # 1. Insert into Depart
        db.execute(
            "INSERT INTO Depart (Code, Name, KotYn, POS, Phone, ShortName, "
            "RestType, OutletYN, BackColor, Printer, StoreType, PrintType, "
            "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?)",
            (code, rec["name"],
             (rec.get("kotyn") or "").upper(), (rec.get("pos") or "").upper(),
             rec.get("phone", ""), rec.get("short", ""),
             rec.get("resttype", ""), (rec.get("outletyn") or "N").upper(),
             int(rec.get("backcolor") or 0),
             rec.get("printer", ""), rec.get("storetype", ""),
             rec.get("printtype", ""), SITE_CODE, USER, SITE_CODE),
            cn=cn, commit=False)

        # 2. BUG-009 FIX: VB6 also inserts RevMast for the department
        # (loc_167FC10): revenue master entry so department can post revenue.
        # VB6 uses same Code, Name, FieldType='R' (Revenue).
        # Check if RevMast row with this code already exists (avoid PK clash
        # on re-runs / repairs).
        existing_rev = db.query(
            "SELECT 1 FROM RevMast WHERE Code = ?", (code,), cn=cn)
        if not existing_rev:
            db.execute(
                "INSERT INTO RevMast (Code, Name, FieldType, Type, SysYN, "
                "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code) "
                "VALUES (?, ?, 'R', 'Cr', 'N', ?, ?, getdate(), 'A', ?)",
                (code, rec["name"], SITE_CODE, USER, SITE_CODE),
                cn=cn, commit=False)

        if commit:
            cn.commit()
        return 1
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
    _validate(rec)
    return db.execute(
        "UPDATE Depart SET Name = ?, KotYn = ?, POS = ?, Phone = ?, "
        "ShortName = ?, RestType = ?, OutletYN = ?, BackColor = ?, "
        "Printer = ?, StoreType = ?, PrintType = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' WHERE Code = ?",
        (rec["name"], (rec.get("kotyn") or "").upper(),
         (rec.get("pos") or "").upper(), rec.get("phone", ""),
         rec.get("short", ""), rec.get("resttype", ""),
         (rec.get("outletyn") or "N").upper(),
         int(rec.get("backcolor") or 0),
         rec.get("printer", ""), rec.get("storetype", ""),
         rec.get("printtype", ""), USER, code),
        cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    """BUG-002 FIX: VB6 dependency checks + RevMast cascade delete.

    VB6 DepartMast.frm TopCtrl1_UnknownEvent_C (loc_1285F5D):
      1. Proc_183_56 (unsaved check)
      2. Proc_6_108: ItemGrp.RestCode, ItemMast.RestCode, Stock.DepartCode
         — if any exist, block delete
      3. BEGIN TRANS
           DELETE FROM Depart WHERE Code=...
           DELETE FROM RevMast WHERE Code=...
         COMMIT TRANS
      RollbackTrans on error.
    """
    # 1. Dependency checks (VB6 loc_1285FDB, 1286059, 12860D7)
    for table, col in (("ItemGrp", "RestCode"), ("ItemMast", "RestCode"),
                       ("Stock", "DepartCode")):
        rows = db.query(f"SELECT COUNT(*) FROM {table} WHERE {col} = ?",
                        (code,), cn=cn)
        if rows and int(rows[0][0]) > 0:
            raise ValueError(
                f"Related Record Exist in {table}, Entry Can't Be Deleted")

    own = cn is None
    cn = cn or db.connect()
    try:
        # 2. DELETE Depart (loc_128618E)
        n = db.execute("DELETE FROM Depart WHERE Code = ?", (code,),
                       cn=cn, commit=False)
        # 3. BUG-002 FIX: CASCADE DELETE RevMast (loc_12861F2)
        db.execute("DELETE FROM RevMast WHERE Code = ?", (code,),
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


# Phase A: UI inventory.py depart_list() call karta tha.
depart_list = list_all
