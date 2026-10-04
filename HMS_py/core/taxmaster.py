"""Tax Master CRUD (VB6: FrmTaxMast - Main Setup -> General Setup).

Schema: RevMast table filtered by FieldType='T' (NOT TaxStru, NOT TaxMast).
  Code varchar(6) PK, Name varchar(50), ShortName varchar(5),
  ACCode varchar(8) FK->SubGroup (ledger), PayableAc, UnregisteredAc,
  Sundry varchar(6), RoundOff varchar(3), Nature varchar(20),
  Active varchar(3), SysYN varchar(1), TaxStru varchar(6),
  Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code.
VB6 FrmTaxMast.frm evidence:
  SELECT ... FROM RevMast WHERE FieldType='T'
  INSERT INTO RevMast(..., FieldType, ...) VALUES (..., 'T', ...)
  SYSTEM ENTRY (SysYN='Y') can't be deleted.
Tax Structure lines live separately in TaxStru (see taxstru.py).
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
LIMITS = {
    "code": 6, "name": 50, "short": 5, "accode": 8, "payableac": 8,
    "unregisteredac": 8, "sundry": 6, "roundoff": 3, "nature": 20,
    "active": 3, "taxstru": 6,
}
# VB6 FrmTaxMast ka property filter - har SELECT me (Form_Load loc_10A9847,
# Print loc_1085B77, Search loc_F27F85):
#   (LOGSITE_CODE='<site>' or LOGSITE_CODE='HO')
SITE_FILTER = "(LogSite_Code = ? OR LogSite_Code = 'HO')"
SELECT_COLS = (
    "R.Code, R.Name, R.ShortName, R.ACCode, R.PayableAc, R.UnregisteredAc, "
    "R.Sundry, R.RoundOff, R.Nature, R.Active, R.TaxStru, R.SysYN, "
    "ISNULL(SM.Name, '') AS SundryName, "
    "ISNULL(SG.Name, '') AS LedgerName, "
    "ISNULL(SP.Name, '') AS PayableAcName, "
    "ISNULL(SU.Name, '') AS UnregisteredAcName, "
    "ISNULL(R.U_Name, '') AS U_Name, "
    "ISNULL(R.U_AE, '') AS U_AE, R.U_EntDt"
)
# VB6 Form_Load query: Left Join SundryMast on SundryMast.Code=R.Sundry
#                     Left Join SubGroup (Ledger/Payable/Unregistered) - textbox
#                     me Naam dikhana hai, .Tag me Code (VB6 Txt(4).Tag etc.)
SELECT_FROM = (
    "FROM RevMast R LEFT JOIN SundryMast SM ON SM.Code = R.Sundry "
    "LEFT JOIN SubGroup SG ON SG.SubCode = R.ACCode "
    "LEFT JOIN SubGroup SP ON SP.SubCode = R.PayableAc "
    "LEFT JOIN SubGroup SU ON SU.SubCode = R.UnregisteredAc "
)

# SELECT_COLS ka tuple-index -> rec key map (_map tuple fallback ke liye)
_TUPLE_COLS = (
    "code", "name", "short", "accode", "payableac", "unregisteredac",
    "sundry", "roundoff", "nature", "active", "taxstru", "sysyn",
    "sundryname", "ledgername", "payableacname", "unregisteredacname",
    "u_name", "u_ae", "u_entdt",
)


def _map(r) -> dict:
    try:
        return {
            "code": r.Code,
            "name": (r.Name or "").strip(),
            "short": (r.ShortName or "").strip(),
            "accode": r.ACCode or "",
            "payableac": r.PayableAc or "",
            "unregisteredac": r.UnregisteredAc or "",
            "sundry": r.Sundry or "",
            # VB6 FIX: SundryName comes from LEFT JOIN SundryMast
            "sundryname": (getattr(r, 'SundryName', None) or "").strip(),
            # VB6 Form_Load: textbox par ledger/payable/unregistered ka Naam
            "ledgername": (getattr(r, 'LedgerName', None) or "").strip(),
            "payableacname": (getattr(r, 'PayableAcName', None) or "").strip(),
            "unregisteredacname": (
                getattr(r, 'UnregisteredAcName', None) or "").strip(),
            "roundoff": r.RoundOff or "No",
            "nature": r.Nature or "",
            "active": r.Active or "Y",
            "taxstru": r.TaxStru or "",
            "sysyn": r.SysYN or "N",
            # VB6 audit strip: LblUser / LblLDt (U_AE 'A'=Created, 'E'=Modified)
            "u_name": (getattr(r, 'U_Name', None) or "").strip(),
            "u_ae": (getattr(r, 'U_AE', None) or "").strip(),
            "u_entdt": getattr(r, 'U_EntDt', None),
        }
    except AttributeError:
        # Fallback for tuple rows (tests) — order matches SELECT_COLS
        cols = list(r)
        while len(cols) < len(_TUPLE_COLS):
            cols.append("")
        out = {}
        for key, val in zip(_TUPLE_COLS, cols):
            if key in ("code", "name", "short", "sundryname", "ledgername",
                       "payableacname", "unregisteredacname", "u_name", "u_ae"):
                out[key] = (val or "").strip() if key != "code" else val
            elif key in ("roundoff",):
                out[key] = val or "No"
            elif key in ("active",):
                out[key] = val or "Y"
            elif key in ("sysyn",):
                out[key] = val or "N"
            else:
                out[key] = val or ""
        return out


def _validate(rec: dict):
    if not rec.get("code", "").strip():
        raise ValueError("Code zaroori hai")
    if len(rec["code"]) > LIMITS["code"]:
        raise ValueError(f"Code max {LIMITS['code']} chars")
    if not rec.get("name", "").strip():
        raise ValueError("Name zaroori hai")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if len(rec.get("short", "")) > LIMITS["short"]:
        raise ValueError(f"ShortName max {LIMITS['short']} chars")
    if len(rec.get("nature", "")) > LIMITS["nature"]:
        raise ValueError(f"Nature max {LIMITS['nature']} chars")


def list_all(cn=None) -> list[dict]:
    """List tax masters (RevMast + SundryMast JOIN, VB6 site scope).

    VB6 Form_Load query (loc_10A9996):
      SELECT R.*,...,SundryMast.Name as SundryName
      FROM RevMast R Left Join SundryMast on SundryMast.Code=R.Sundry
      WHERE FIELDTYPE='T' AND (R.LOGSITE_CODE=<site> or 'HO')
    """
    rows = db.query(
        f"SELECT {SELECT_COLS} {SELECT_FROM}"
        f"WHERE R.FieldType = ? AND {SITE_FILTER.replace('LogSite_Code', 'R.LogSite_Code')} ORDER BY R.Name",
        ("T", SITE_CODE), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} {SELECT_FROM}"
        f"WHERE R.Code = ? AND R.FieldType = ? AND {SITE_FILTER.replace('LogSite_Code', 'R.LogSite_Code')}",
        (code, "T", SITE_CODE), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query(
        "SELECT 1 FROM RevMast WHERE Code = ? AND FieldType = ? "
        f"AND {SITE_FILTER}",
        (code, "T", SITE_CODE), cn=cn))


def next_code(cn=None) -> str:
    """VB6 auto-code (FrmTaxMast loc_136F270):

      Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 AS MyCode
      From RevMast WHERE SITE_CODE='<site>' AND SYSYN<>'Y'

    prefix = Proc_6_45(site, 2) = Left$(site, 2); number 4-digit padded.
    User VB6 me code type nahi karta tha (Txt array me Code field hai hi nahi).
    """
    rows = db.query(
        "SELECT ISNULL(MAX(CAST(SUBSTRING(Code,3,4) AS INT)),0)+1 AS MyCode "
        "FROM RevMast WHERE SITE_CODE = ? AND SYSYN <> 'Y'",
        (SITE_CODE,), cn=cn)
    n = int(rows[0][0]) if rows else 1
    return f"{SITE_CODE[:2]}{n:04d}"


def _dup_count(column: str, value: str, exclude_code: str | None = None,
               cn=None) -> int:
    """VB6 duplicate check (FrmTaxMast Proc_15_34/Proc_15_35):

      Select Count(*) From RevMast Where (LOGSITE_CODE='<site>' or 'HO')
      and Name='...' [And Code<>'<current>']

    LEGACY BEHAVIOR: check par koi FieldType filter NAHI hai - saare RevMast
    rows (ledgers, revenue, tax...) count hote hain. Preserve karo.
    """
    if column not in ("Name", "ShortName"):
        raise ValueError(f"unsupported duplicate column: {column}")
    sql = f"SELECT COUNT(*) FROM RevMast WHERE {SITE_FILTER} AND {column} = ?"
    params = [SITE_CODE, value]
    if exclude_code is not None:
        sql += " AND Code <> ?"
        params.append(exclude_code)
    rows = db.query(sql, tuple(params), cn=cn)
    return int(rows[0][0]) if rows else 0


def _require_unique(rec: dict, exclude_code: str | None = None,
                    cn=None) -> None:
    """VB6 messages: 'Duplicate Name' / 'Duplicate Short Name'."""
    if _dup_count("Name", rec.get("name", ""), exclude_code=exclude_code,
                  cn=cn):
        raise ValueError("Duplicate Name")
    if _dup_count("ShortName", rec.get("short", ""), exclude_code=exclude_code,
                  cn=cn):
        raise ValueError("Duplicate Short Name")


def dup_field_error(column: str, value: str, exclude_code: str | None = None,
                    cn=None) -> str | None:
    """VB6 field-blur duplicate check (FrmTaxMast Txt_Validate):

      Proc_15_34 -> MsgBox "Duplicate Name"        (Name field)
      Proc_15_35 -> MsgBox "Duplicate Short Name"  (Short Name field)

    Returns VB6 message ya None (jab value unique/empty ho). UI isse
    editingFinished par call karke MsgBox dikhata hai - save-time
    _require_unique ka duplicate check nahi, yeh pehla line of defence hai.
    """
    if column not in ("Name", "ShortName"):
        raise ValueError(f"unsupported duplicate column: {column}")
    if not (value or "").strip():
        return None
    if _dup_count(column, value.strip(), exclude_code=exclude_code, cn=cn):
        return "Duplicate Name" if column == "Name" else "Duplicate Short Name"
    return None


def ledger_list(cn=None) -> list[dict]:
    """VB6 ledger row source (FrmTaxMast Form_Load loc_10A98B9 - DGLedgerAc):

      Select S.SubCode as Code, S.Name FROM SubGroup S WHERE S.ActiveYN=1
      And (S.LOGSITE_CODE='<site>' or 'HO') ORDER BY S.Name

    Grid ka Code column .Tag me rehta hai, display par Name.
    """
    rows = db.query(
        "SELECT S.SubCode AS Code, S.Name FROM SubGroup S "
        f"WHERE S.ActiveYN = 1 AND "
        "(S.LogSite_Code = ? OR S.LogSite_Code = 'HO') ORDER BY S.Name",
        (SITE_CODE,), cn=cn)
    return [{"code": str(r[0] or "").strip(), "name": str(r[1] or "").strip()}
            for r in rows]


def sundry_list(cn=None) -> list[dict]:
    """VB6 sundry row source (FrmTaxMast Form_Load loc_10A9934 - DGSundry):

      SELECT Code,Name FROM SundryMast WHERE (site or 'HO') ORDER BY Name
    """
    rows = db.query(
        "SELECT Code, Name FROM SundryMast "
        f"WHERE (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [{"code": str(r[0] or "").strip(), "name": str(r[1] or "").strip()}
            for r in rows]


def tax_list(cn=None) -> list[dict]:
    """VB6 tax row source (FrmTaxMast Form_Load loc_10A9847 - DGHelp):

      SELECT Code,Name FROM REVMAST WHERE FIELDTYPE='T' AND (site or 'HO')
      ORDER BY Name
    """
    rows = db.query(
        "SELECT Code, Name FROM RevMast "
        "WHERE FieldType = ? "
        "AND (LogSite_Code = ? OR LogSite_Code = 'HO') ORDER BY Name",
        ("T", SITE_CODE), cn=cn)
    return [{"code": str(r[0] or "").strip(), "name": str(r[1] or "").strip()}
            for r in rows]


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    record = dict(rec)
    if not (record.get("code") or "").strip():
        record["code"] = next_code(cn=cn)
    _validate(record)
    db.require_absent("RevMast", "Code", record["code"], "Tax Code")
    _require_unique(record, cn=cn)
    return db.execute(
        "INSERT INTO RevMast (Code, Name, ShortName, ACCode, PayableAc, "
        "UnregisteredAc, Sundry, RoundOff, Nature, Active, TaxStru, "
        "FieldType, Type, SysYN, Site_Code, U_Name, U_EntDt, U_AE, "
        "LogSite_Code) "
        "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, 'T', 'Cr', 'N', ?, ?, "
        "getdate(), 'A', ?)",
        (record["code"], record["name"], record.get("short", ""),
         record.get("accode", ""), record.get("payableac", ""),
         record.get("unregisteredac", ""), record.get("sundry", ""),
         record.get("roundoff", "No"), record.get("nature", ""),
         record.get("active", "Y"), record.get("taxstru", ""),
         SITE_CODE, USER, SITE_CODE),
        cn=cn, commit=commit)


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    # House pattern (memrev_update): code rec dict me ho ya na ho, PK yahan
    # se aata hai - _validate ko rec me code chahiye hi chahiye.
    record = {**rec, "code": (rec.get("code") or "").strip() or code}
    _validate(record)
    _require_unique(record, exclude_code=code, cn=cn)
    # VB6 UPDATE (loc_136F5CB): SET Type='Cr', ..., SITE_CODE='<site>',
    # U_name, U_EntDt, U_AE='E', Sundry=... WHERE Code='...'
    return db.execute(
        "UPDATE RevMast SET Name = ?, ShortName = ?, ACCode = ?, "
        "PayableAc = ?, UnregisteredAc = ?, Sundry = ?, RoundOff = ?, "
        "Nature = ?, Active = ?, TaxStru = ?, Type = 'Cr', Site_Code = ?, "
        "U_Name = ?, U_EntDt = getdate(), U_AE = 'E' "
        "WHERE Code = ? AND FieldType = ?",
        (rec["name"], rec.get("short", ""), rec.get("accode", ""),
         rec.get("payableac", ""), rec.get("unregisteredac", ""),
         rec.get("sundry", ""), rec.get("roundoff", "No"),
         rec.get("nature", ""), rec.get("active", "Y"),
         rec.get("taxstru", ""), SITE_CODE, USER, code, "T"),
        cn=cn, commit=commit)


def delete(code: str, cn=None, commit: bool = True) -> int:
    """Delete tax master. VB6 delete chain (FrmTaxMast loc_11DFFF9):

    1. TaxStru dependency check (MainLib Proc_6_108) - related rows hain toh
       'Related Record Exist in TaxStru, Entry Can't Be Deleted'.
    2. System entries (SysYN='Y') protected - 'SYSTEM ENTRY CAN'T BE DELETED'.
    """
    rows = db.query(
        "SELECT COUNT(*) FROM TaxStru WHERE TaxCode = ?", (code,), cn=cn)
    if rows and int(rows[0][0]) > 0:
        raise ValueError(
            "Related Record Exist in TaxStru, Entry Can't Be Deleted")
    rows = db.query(
        "SELECT SysYN FROM RevMast WHERE Code = ? AND FieldType = ?",
        (code, "T"), cn=cn)
    if rows and (rows[0][0] or "").strip().upper() == "Y":
        raise ValueError("SYSTEM ENTRY CAN'T BE DELETED")
    return db.execute(
        "DELETE FROM RevMast WHERE Code = ? AND FieldType = ?",
        (code, "T"), cn=cn, commit=commit)


def print_rows(cn=None) -> list[tuple]:
    """VB6 print query (FrmTaxMast loc_1085B77) - SubGroup/SundryMast joins,
    site filter, FieldType='T'. Crystal TaxMast.RPT layout Python me nahi hai;
    columns text-report ke liye choose kiye hain (R.* ke jagar explicit).
    ORDER BY Name - VB6 print SQL me order nahi tha; Form_Load ka main
    recordset ORDER BY R.Name hai, uske align kiya (MAIN_SETUP_LOGIC_DIFF).
    """
    rows = db.query(
        "SELECT R.Code, R.Name, R.ShortName, R.RoundOff, R.Nature, "
        "S.Name AS LedgerName, SP.Name AS PayableAcName, "
        "SU.Name AS UnregisteredAcName, SM.Name AS SundryName "
        "FROM RevMast R "
        "LEFT JOIN SubGroup S ON S.SubCode = R.ACCode "
        "LEFT JOIN SubGroup SP ON SP.SubCode = R.PayableAc "
        "LEFT JOIN SubGroup SU ON SU.SubCode = R.UnregisteredAc "
        "LEFT JOIN SundryMast SM ON SM.Code = R.Sundry "
        f"WHERE R.FieldType = ? AND (R.LogSite_Code = ? OR R.LogSite_Code = 'HO') "
        "ORDER BY R.Name",
        ("T", SITE_CODE), cn=cn)
    return [tuple(r) for r in rows]
