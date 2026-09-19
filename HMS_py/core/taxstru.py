"""Tax Structure Master CRUD (VB6: FrmTaxStruMast - Main Setup -> General Setup).

Schema evidence (live HMS DB): TaxStru table.
  Code varchar(6) PK (compound with Sno), Name varchar(35),
  Sno smallint (line number within structure),
  TaxCode varchar(6) FK -> RevMast.Code (FieldType='T'),
  Nature varchar(25) ('On Base Amt','On Running Total','On Prev. Tax Amt'),
  Rate float (percentage), Limit float, Limit1 float,
  CondApp varchar(25) ('<','<=','>','>=','=','Between'),
  CompOperator varchar(9),
  TaxBeforeDisc varchar(3) ('Yes'/'No'),
  Site_Code(2), U_Name(10), U_EntDt, U_AE(1), LogSite_Code(2).

VB6 FrmTaxStruMast: grid-based entry (FGrid) with Sno rows per Code.
Each Tax Structure (Code) has multiple tax lines (Sno 1..n).
Audit pattern VB6 jaisa: U_Name + U_EntDt(getdate()) + U_AE ('A'/'E').
Code pattern live: 'KK' + 4 digits (KK0002...).
Next code: Max(CAST(SUBSTRING(Code,3,4) AS INT)) + 1."""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = "KK"
USER = "PYADMIN"
LIMITS = {"code": 6, "name": 35, "taxcode": 6, "nature": 25,
          "condapp": 25, "compop": 9, "taxbeforedisc": 3}
SELECT_COLS = ("Code, Name, Sno, TaxCode, Nature, Rate, "
               "Limit, Limit1, CondApp, CompOperator, TaxBeforeDisc, "
               "U_Name, U_EntDt, U_AE")


def _map(r) -> dict:
    try:
        return {
            "code": r.Code,
            "name": (r.Name or "").strip(),
            "sno": r.Sno,
            "taxcode": r.TaxCode or "",
            "nature": r.Nature or "On Base Amt",
            "rate": float(r.Rate or 0),
            "limit": float(r.Limit or 0),
            "limit1": float(r.Limit1 or 0),
            "condapp": r.CondApp or "",
            "compop": r.CompOperator or "",
            "taxbeforedisc": r.TaxBeforeDisc or "No",
            "u_name": r.U_Name or "",
            "u_ae": r.U_AE or "",
        }
    except AttributeError:
        code, name, sno, taxcode, nature, rate, limit, _, _, _, u_name, _, u_ae, condapp, logsite, compop, taxbeforedisc, limit1 = r
        return {
            "code": code,
            "name": (name or "").strip(),
            "sno": sno,
            "taxcode": taxcode or "",
            "nature": nature or "On Base Amt",
            "rate": float(rate or 0),
            "limit": float(limit or 0),
            "limit1": float(limit1 or 0),
            "condapp": condapp or "",
            "compop": compop or "",
            "taxbeforedisc": taxbeforedisc or "No",
            "u_name": u_name or "",
            "u_ae": u_ae or "",
        }


def _validate(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if not rec.get("taxcode", "").strip():
        raise ValueError("TaxCode zaroori hai")
    if len(rec["taxcode"]) > LIMITS["taxcode"]:
        raise ValueError(f"TaxCode max {LIMITS['taxcode']} chars")
    if len(rec.get("nature", "")) > LIMITS["nature"]:
        raise ValueError(f"Nature max {LIMITS['nature']} chars")
    if len(rec.get("condapp", "")) > LIMITS["condapp"]:
        raise ValueError(f"CondApp max {LIMITS['condapp']} chars")
    if len(rec.get("compop", "")) > LIMITS["compop"]:
        raise ValueError(f"CompOperator max {LIMITS['compop']} chars")
    if len(rec.get("taxbeforedisc", "")) > LIMITS["taxbeforedisc"]:
        raise ValueError(f"TaxBeforeDisc max {LIMITS['taxbeforedisc']} chars")
    # Validate rate
    try:
        r = float(rec.get("rate") or 0)
        if not (0 <= r <= 100):
            raise ValueError("Rate 0-100 ke beech honi chahiye")
    except (TypeError, ValueError):
        raise ValueError("Rate numeric hona chahiye")
    # Validate Sno
    try:
        s = int(rec.get("sno") or 0)
        if s < 1:
            raise ValueError("Sno >= 1 hona chahiye")
    except (TypeError, ValueError):
        raise ValueError("Sno integer hona chahiye")


def list_all(cn=None) -> list[dict]:
    rows = db.query(f"SELECT {SELECT_COLS} FROM TaxStru ORDER BY Code, Sno", cn=cn)
    return [_map(r) for r in rows]


def list_by_code(code: str, cn=None) -> list[dict]:
    """Get all lines (Sno) for a tax structure code."""
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM TaxStru WHERE Code = ? ORDER BY Sno",
        (code,), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, sno: int, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM TaxStru WHERE Code = ? AND Sno = ?",
        (code, sno), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, sno: int, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM TaxStru WHERE Code = ? AND Sno = ?",
        (code, sno), cn=cn))


def exists_code(code: str, cn=None) -> bool:
    return bool(db.query("SELECT 1 FROM TaxStru WHERE Code = ?", (code,), cn=cn))


def next_code(cn=None) -> str:
    """VB6 pattern: 'KK' + max 4-digit suffix + 1."""
    rows = db.query(
        "SELECT MAX(Code) FROM TaxStru WHERE Code LIKE 'KK%' AND LEN(Code) = 6 "
        "AND ISNUMERIC(SUBSTRING(Code, 3, 4)) = 1",
        cn=cn)
    mx = rows[0][0] if rows and rows[0][0] else "KK0000"
    return f"KK{int(mx[2:]) + 1:04d}"


def next_sno(code: str, cn=None) -> int:
    """Next Sno for a given tax structure code."""
    rows = db.query(
        "SELECT MAX(Sno) FROM TaxStru WHERE Code = ?", (code,), cn=cn)
    return (rows[0][0] or 0) + 1 if rows and rows[0][0] else 1


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    """Insert a single tax structure line (Code + Sno)."""
    _validate(rec)
    return db.execute(
        "INSERT INTO TaxStru (Code, Name, Sno, TaxCode, Nature, Rate, "
        "Limit, Limit1, Site_Code, U_Name, U_EntDt, U_AE, "
        "CondApp, LogSite_Code, CompOperator, TaxBeforeDisc) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?, ?, ?)",
        (rec["code"], rec["name"], rec["sno"], rec["taxcode"],
         rec.get("nature", "On Base Amt"), float(rec.get("rate") or 0),
         float(rec.get("limit") or 0), float(rec.get("limit1") or 0),
         SITE_CODE, USER,
         rec.get("condapp", ""), SITE_CODE,
         rec.get("compop", ""), rec.get("taxbeforedisc", "No")),
        cn=cn, commit=commit)


def insert_structure(code: str, name: str, lines: list[dict], cn=None,
                     commit: bool = True) -> int:
    """Insert a complete tax structure with multiple lines (Sno 1..n).
    lines = [{taxcode, nature, rate, limit, limit1, condapp, compop, taxbeforedisc}, ...]
    """
    if not lines:
        raise ValueError("At least one tax line required")

    own = cn is None
    cn = cn or db.connect()
    try:
        for i, line in enumerate(lines, 1):
            sno = i
            db.execute(
                "INSERT INTO TaxStru (Code, Name, Sno, TaxCode, Nature, Rate, "
                "Limit, Limit1, Site_Code, U_Name, U_EntDt, U_AE, "
                "CondApp, LogSite_Code, CompOperator, TaxBeforeDisc) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?, ?)",
                (code, name, sno, line["taxcode"],
                 line.get("nature", "On Base Amt"), float(line.get("rate") or 0),
                 float(line.get("limit") or 0), float(line.get("limit1") or 0),
                 SITE_CODE, USER,
                 line.get("condapp", ""), SITE_CODE,
                 line.get("compop", ""), line.get("taxbeforedisc", "No")),
                cn=cn, commit=False)
        if commit:
            cn.commit()
        return len(lines)
    finally:
        if own:
            cn.close()


def update(code: str, sno: int, rec: dict, cn=None, commit: bool = True) -> int:
    _validate(rec)
    return db.execute(
        "UPDATE TaxStru SET Name = ?, TaxCode = ?, Nature = ?, Rate = ?, "
        "Limit = ?, Limit1 = ?, CondApp = ?, CompOperator = ?, "
        "TaxBeforeDisc = ?, U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
        "WHERE Code = ? AND Sno = ?",
        (rec["name"], rec["taxcode"], rec.get("nature", "On Base Amt"),
         float(rec.get("rate") or 0), float(rec.get("limit") or 0),
         float(rec.get("limit1") or 0),
         rec.get("condapp", ""), rec.get("compop", ""),
         rec.get("taxbeforedisc", "No"), USER, code, sno),
        cn=cn, commit=commit)


def update_structure(code: str, name: str, lines: list[dict], cn=None,
                     commit: bool = True) -> int:
    """Replace all lines for a tax structure code with new lines."""
    own = cn is None
    cn = cn or db.connect()
    try:
        # Delete existing lines for this code
        db.execute("DELETE FROM TaxStru WHERE Code = ?", (code,), cn=cn, commit=False)
        # Insert new lines
        for i, line in enumerate(lines, 1):
            sno = i
            db.execute(
                "INSERT INTO TaxStru (Code, Name, Sno, TaxCode, Nature, Rate, "
                "Limit, Limit1, Site_Code, U_Name, U_EntDt, U_AE, "
                "CondApp, LogSite_Code, CompOperator, TaxBeforeDisc) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), 'A', ?, ?, ?, ?, ?)",
                (code, name, sno, line["taxcode"],
                 line.get("nature", "On Base Amt"), float(line.get("rate") or 0),
                 float(line.get("limit") or 0), float(line.get("limit1") or 0),
                 SITE_CODE, USER,
                 line.get("condapp", ""), SITE_CODE,
                 line.get("compop", ""), line.get("taxbeforedisc", "No")),
                cn=cn, commit=False)
        if commit:
            cn.commit()
        return len(lines)
    finally:
        if own:
            cn.close()


def delete(code: str, sno: int, cn=None, commit: bool = True) -> int:
    """Delete a single tax structure line."""
    return db.execute(
        "DELETE FROM TaxStru WHERE Code = ? AND Sno = ?",
        (code, sno), cn=cn, commit=commit)


def delete_structure(code: str, cn=None, commit: bool = True) -> int:
    """Delete entire tax structure (all Sno lines)."""
    return db.execute("DELETE FROM TaxStru WHERE Code = ?", (code,), cn=cn, commit=commit)


def get_tax_codes(cn=None) -> list[dict]:
    """Get available tax codes from RevMast (FieldType='T')."""
    rows = db.query(
        "SELECT Code, Name FROM RevMast WHERE FieldType = 'T' AND "
        "(LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [{"code": r[0], "name": (r[1] or "").strip()} for r in rows]


def get_structures_summary(cn=None) -> list[dict]:
    """Get unique tax structures (Code + Name) for dropdown/list."""
    rows = db.query(
        "SELECT DISTINCT Code, Name FROM TaxStru ORDER BY Code", cn=cn)
    return [{"code": r[0], "name": (r[1] or "").strip()} for r in rows]