"""Payment Type master CRUD (VB6: FrmPayTypeMast - Main Setup -> General Setup).

Schema: RevMast table filtered by PAYTYPE column.
  Code varchar(6) PK, Name varchar(50), ShortName varchar(5),
  ACCode varchar(8) FK->SubGroup (Ledger A/C),
  PAYTYPE varchar(15) ('Cash','Cheque','Credit Card','Room',etc),
  FieldType varchar(1) ('P' = Payment), Type varchar(2) ('Dr'),
  SysYN varchar(1) ('N'), BankCommPer float, BankCommAc varchar(8),
  ACPosting varchar(10), Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code.

VB6 FrmPayTypeMast.frm evidence (file-by-file pass 2026-10-01):
  Form_Load  : WHERE PayType<>'' AND PayType IS NOT NULL
               AND (LOGSITE_CODE='<site>' or LOGSITE_CODE='HO')
  Code gen   : loc_15468EB IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1
               WHERE SITE_CODE='<site>' AND SYSYN<>'Y'  (user types NO code)
  Dup Name   : Proc_17_55 site-scoped count; add msg "Duplicate  Name"
               (2 spaces!), edit msg "Duplicate Name" + And Name <> old
  Dup Short  : Proc_17_54 NO site filter, msg "Duplicate Short Name"
  Required   : "Name is a required field." / "Ledger A/C is a required field."
               (ledger exempt when PayType in Company/Staff/Member)
  Delete     : SysYN='Y' -> SYSTEM ENTRY CAN'T BE DELETED;
               MainLib Proc_6_108 PayCharge/PayCode -> "Related Record Exist
               in Payment Entry, Entry Can't Be Deleted"; then delete RevMast
               + DepartPay rows (VB6 loc_1291C6A).
  Print      : loc_108C8BB PayTypeMast.RPT + Title='Pay Type Master'.
"""
from __future__ import annotations

from HMS_py.core import db

SITE_CODE = db.get_site_code()  # BUG-014: Analysis.ini-driven (was hardcoded "KK")
USER = db.get_user()
LIMITS = {
    "code": 6, "name": 50, "short": 5, "accode": 8, "paytype": 15,
    "bankcommac": 8, "accposting": 10,
}
# VB6 Form_Load / Search / Print ka property filter (loc_114BA3B, loc_F24205,
# loc_108C8BB): (LOGSITE_CODE='<site>' or LOGSITE_CODE='HO')
SITE_FILTER = "(LogSite_Code = ? OR LogSite_Code = 'HO')"
SELECT_COLS = (
    "Code, Name, ShortName, ACCode, PAYTYPE, FieldType, Type, Active, "
    "SysYN, BankCommPer, BankCommAc, ACPosting, U_Name, U_AE"
)
# VB6 save: Company/Staff/Member paytypes ko Ledger A/C ki zaroorat NAHI
# (loc_154682A) - inka ACCode save par clear hota hai.
_NO_LEDGER_PAYTYPES = ("Company", "Staff", "Member")


def _map(r) -> dict:
    try:
        return {
            "code": r.Code,
            "name": (r.Name or "").strip(),
            "short": (r.ShortName or "").strip(),
            "accode": r.ACCode or "",
            "paytype": r.PAYTYPE or "",
            "fieldtype": r.FieldType or "",
            "type": r.Type or "",
            "active": r.Active or "Y",
            "sysyn": r.SysYN or "N",
            "bankcommper": r.BankCommPer or 0,
            "bankcommac": r.BankCommAc or "",
            "accposting": r.ACPosting or "",
            "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
        }
    except AttributeError:
        vals = list(r)
        while len(vals) < 14:
            vals.append(0)
        (c, n, sn, ac, pt, ft, tp, act, sy, bper, bac, ap, un, uae) = vals[:14]
        return {
            "code": c, "name": (n or "").strip(), "short": (sn or "").strip(),
            "accode": ac or "", "paytype": pt or "", "fieldtype": ft or "",
            "type": tp or "", "active": act or "Y", "sysyn": sy or "N",
            "bankcommper": bper or 0, "bankcommac": bac or "",
            "accposting": ap or "",
            "u_name": un or "", "u_ae": uae or "",
        }


def _validate(rec: dict):
    if not rec.get("name", "").strip():
        # VB6 Proc_183_19: "Name is a required field."
        raise ValueError("Name is a required field.")
    if len(rec["name"]) > LIMITS["name"]:
        raise ValueError(f"Name max {LIMITS['name']} chars")
    if len(rec.get("short", "")) > LIMITS["short"]:
        raise ValueError(f"ShortName max {LIMITS['short']} chars")
    if len(rec.get("paytype", "")) > LIMITS["paytype"]:
        raise ValueError(f"PayType max {LIMITS['paytype']} chars")
    # VB6 loc_154682A: paytype Company/Staff/Member ke alawa Ledger A/C
    # required ("Ledger A/C is a required field.").
    pay = (rec.get("paytype") or "").strip()
    if pay in _NO_LEDGER_PAYTYPES:
        return
    if not (rec.get("accode") or "").strip():
        raise ValueError("Ledger A/C is a required field.")


def _normalize(rec: dict) -> dict:
    """VB6 save-time field rules (loc_15467A3-1546C83)."""
    record = dict(rec)
    pay = (record.get("paytype") or "").strip()
    if pay in _NO_LEDGER_PAYTYPES:
        # VB6 Else-branch clears the ledger textbox+tag for these paytypes.
        record["accode"] = ""
    # VB6 IIf((PayType = "Credit Card"), value, 0/""): non-card paytypes
    # ka commission data save hi nahi hota.
    if pay == "Credit Card":
        try:
            record["bankcommper"] = float(record.get("bankcommper") or 0)
        except (TypeError, ValueError):
            record["bankcommper"] = 0.0
        record["bankcommac"] = record.get("bankcommac") or ""
    else:
        record["bankcommper"] = 0
        record["bankcommac"] = ""
    return record


# ============================================================
# AUDIT-20261005 P2-E FIX: CreditCardhistory child table
# VB6 FrmPayTypeMast save (loc_1547053 + loc_154736A):
#   1. Delete from CreditCardhistory where RevCode='<code>'   (unconditional)
#   2. per grid row : Insert into CreditCardhistory (AppDate,RevCode,TaxStru,
#        CommAc,CommPer,Limit,CompOperator,Limit1,U_EntDt,U_AE,U_Name,
#        Site_Code,LogSite_Code) values(...)
# Live columns (INFORMATION_SCHEMA 2026-10-06): AppDate smalldatetime NOTNULL,
#   TaxStru char(6) NOTNULL, RevCode char(6), CommPer numeric NOTNULL,
#   CommAC varchar(8), Site_Code char(2) NOTNULL, U_Name varchar(10),
#   U_EntDt smalldatetime, U_AE varchar(1), LogSite_Code char(2),
#   Limit float, CondApp varchar(25), CompOperator varchar(9), Limit1 float.
# ============================================================
CARD_HISTORY_COLS = (
    "AppDate, RevCode, TaxStru, CommAc, CommPer, Limit, CompOperator, "
    "Limit1, U_EntDt, U_AE, U_Name, Site_Code, LogSite_Code"
)


def card_history_list(code: str, cn=None) -> list[dict]:
    """Credit-card commission/limit rows for a payment type (VB6 grid)."""
    rows = db.query(
        "SELECT AppDate, RevCode, TaxStru, CommAc, CommPer, Limit, "
        "CompOperator, Limit1, U_Name, U_AE FROM CreditCardhistory "
        "WHERE RevCode = ? ORDER BY AppDate",
        (code,), cn=cn)
    return [_map_card(r) for r in rows]


def _map_card(r) -> dict:
    return {
        "appdate": r.AppDate, "revcode": (r.RevCode or "").strip(),
        "taxstru": (r.TaxStru or "").strip(),
        "commac": r.CommAc or "", "commper": float(r.CommPer or 0),
        "limit": float(r.Limit or 0),
        "compoperator": (r.CompOperator or "").strip(),
        "limit1": float(r.Limit1 or 0),
        "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
    }


def _f(v) -> float:
    try:
        return float(v or 0)
    except (TypeError, ValueError):
        return 0.0


def _sync_card_history(cn, code: str, rows, u_ae: str) -> None:
    """VB6 save block: delete-then-reinsert CreditCardhistory for RevCode.

    NOTE: caller sirf tab call karta hai jab `card_history` key di gayi ho.
    VB6 har save par unconditionally delete karta hai, par hamari pay-type UI
    me card grid nahi hai — unconditional delete se existing commission rows
    har save par ud jaate. Isliye opt-in semantics (missing key = no touch).
    """
    db.execute("DELETE FROM CreditCardhistory WHERE RevCode = ?", (code,),
               cn=cn, commit=False)
    for row in rows or ():
        db.execute(
            f"INSERT INTO CreditCardhistory ({CARD_HISTORY_COLS}) "
            "VALUES (?, ?, ?, ?, ?, ?, ?, ?, getdate(), ?, ?, ?, ?)",
            (row.get("appdate") or None, code,
             (row.get("taxstru") or "").strip(), row.get("commac") or "",
             _f(row.get("commper")), _f(row.get("limit")),
             (row.get("compoperator") or "").strip(), _f(row.get("limit1")),
             u_ae, USER, SITE_CODE, SITE_CODE),
            cn=cn, commit=False)


def list_all(cn=None) -> list[dict]:
    """VB6 Form_Load main recordset (loc_114BA3B): PayType filter + site scope."""
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM RevMast "
        f"WHERE PAYTYPE IS NOT NULL AND PAYTYPE != '' AND {SITE_FILTER} "
        "ORDER BY Name",
        (SITE_CODE,), cn=cn)
    return [_map(r) for r in rows]


def get(code: str, cn=None) -> dict | None:
    rows = db.query(
        f"SELECT {SELECT_COLS} FROM RevMast "
        f"WHERE Code = ? AND PAYTYPE IS NOT NULL AND PAYTYPE != '' "
        f"AND {SITE_FILTER}",
        (code, SITE_CODE), cn=cn)
    return _map(rows[0]) if rows else None


def exists(code: str, cn=None) -> bool:
    return bool(db.query(
        f"SELECT 1 FROM RevMast WHERE Code = ? AND PAYTYPE IS NOT NULL "
        f"AND PAYTYPE != '' AND {SITE_FILTER}",
        (code, SITE_CODE), cn=cn))


def next_code(cn=None) -> str:
    """VB6 auto-code (FrmPayTypeMast loc_15468EB):

      Select IsNull(Max(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode
      From REVMAST WHERE SITE_CODE='<site>' AND  SYSYN<>'Y'

    LEGACY BEHAVIOR: default 1 (TaxMast ka 0 NAHI) - empty table par pehla
    code site-prefix + "0002". prefix = Proc_6_45(site, 2) = Left$(site, 2).
    User VB6 me code type nahi karta (Txt array me Code field hai hi nahi).
    """
    rows = db.query(
        "SELECT ISNULL(MAX(CAST(SUBSTRING(Code,3,4) AS INT)),1)+1 AS MyCode "
        "FROM RevMast WHERE SITE_CODE = ? AND SysYN <> 'Y'",
        (SITE_CODE,), cn=cn)
    n = int(rows[0][0]) if rows else 2
    return f"{SITE_CODE[:2]}{n:04d}"


def _dup_name_count(value: str, old_name: str | None = None, cn=None) -> int:
    """VB6 Proc_17_55 (name duplicate):

      Select Count(*) From REVMAST Where (LOGSITE_CODE='<site>' or 'HO')
      and Name='...' [And Name <> '<old name>']

    LEGACY BEHAVIOR: site filter hai lekin koi PayType/FieldType filter nahi;
    edit-par exclusion Code se NAHI old Name se hota hai (global_100).
    """
    sql = f"SELECT COUNT(*) FROM RevMast WHERE {SITE_FILTER} AND Name = ?"
    params = [SITE_CODE, value]
    if old_name is not None:
        sql += " AND Name <> ?"
        params.append(old_name)
    rows = db.query(sql, tuple(params), cn=cn)
    return int(rows[0][0]) if rows else 0


def _dup_short_count(value: str, exclude_code: str | None = None,
                     cn=None) -> int:
    """VB6 Proc_17_54 (short duplicate):

      Select Count(*) From RevMast Where ShortName='...' [And Code<>'<code>']

    LEGACY BEHAVIOR: is check par koi site filter NAHI hai (name check se
    alag) - literal SQL parity preserve karo.
    """
    sql = "SELECT COUNT(*) FROM RevMast WHERE ShortName = ?"
    params = [value]
    if exclude_code is not None:
        sql += " AND Code <> ?"
        params.append(exclude_code)
    rows = db.query(sql, tuple(params), cn=cn)
    return int(rows[0][0]) if rows else 0


def _require_unique_add(rec: dict, cn=None) -> None:
    if _dup_name_count(rec.get("name", ""), cn=cn):
        # VB6 add-par message me 2 spaces hain (loc_10B6455).
        raise ValueError("Duplicate  Name")
    if _dup_short_count(rec.get("short", ""), cn=cn):
        raise ValueError("Duplicate Short Name")


def _require_unique_edit(code: str, rec: dict, cn=None) -> None:
    rows = db.query("SELECT Name FROM RevMast WHERE Code = ?", (code,),
                    cn=cn)
    old_name = (rows[0][0] or "").strip() if rows else None
    if _dup_name_count(rec.get("name", ""), old_name=old_name, cn=cn):
        raise ValueError("Duplicate Name")
    if _dup_short_count(rec.get("short", ""), exclude_code=code, cn=cn):
        raise ValueError("Duplicate Short Name")


def insert(rec: dict, cn=None, commit: bool = True) -> int:
    record = _normalize(dict(rec))
    if not (record.get("code") or "").strip():
        record["code"] = next_code(cn=cn)
    _validate(record)
    db.require_absent("RevMast", "Code", record["code"], "Payment Type Code")
    _require_unique_add(record, cn=cn)
    # VB6 insert (loc_1546BC5) ka literal column-set: Active column VB6
    # set NAHI karta (DB default ''), SysYN='N', FieldType='P', TYPE='Dr'.
    # AUDIT-20261005 P2-E FIX: card history rows same transaction me.
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "INSERT INTO RevMast (Code, Name, ShortName, ACCode, PAYTYPE, "
            "Site_Code, SysYN, FieldType, U_Name, U_EntDt, U_AE, Type, "
            "BankCommPer, BankCommAc, ACPosting, LogSite_Code) "
            "VALUES (?, ?, ?, ?, ?, ?, 'N', 'P', ?, getdate(), 'A', 'Dr', "
            "?, ?, ?, ?)",
            (record["code"], record["name"], record.get("short", ""),
             record.get("accode", ""), record.get("paytype", ""),
             SITE_CODE, USER,
             record.get("bankcommper", 0), record.get("bankcommac", ""),
             record.get("accposting", ""), SITE_CODE),
            cn=cn, commit=False)
        if record.get("card_history") is not None:
            _sync_card_history(cn, record["code"],
                               record.get("card_history"), "A")
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


def update(code: str, rec: dict, cn=None, commit: bool = True) -> int:
    # House pattern (memrev_update): code rec dict me ho ya na ho.
    record = _normalize({**rec, "code": (rec.get("code") or "").strip() or code})
    _validate(record)
    _require_unique_edit(code, record, cn=cn)
    # VB6 UPDATE (loc_1546ED5): SET Name, SITE_CODE, ACCode, PayType,
    # ShortName, U_name, U_EntDt, U_AE='E', TYPE='Dr', FieldType='P',
    # BankCommPer, BankCommAc, ACposting WHERE Code=...
    # Active/SysYN/LogSite_Code VB6 update me touch NAHI hote.
    # AUDIT-20261005 P2-E FIX: card history rows same transaction me.
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute(
            "UPDATE RevMast SET Name = ?, Site_Code = ?, ACCode = ?, "
            "PAYTYPE = ?, ShortName = ?, U_Name = ?, U_EntDt = getdate(), "
            "U_AE = 'E', Type = 'Dr', FieldType = 'P', BankCommPer = ?, "
            "BankCommAc = ?, ACPosting = ? WHERE Code = ?",
            (record["name"], SITE_CODE, record.get("accode", ""),
             record.get("paytype", ""), record.get("short", ""), USER,
             record.get("bankcommper", 0), record.get("bankcommac", ""),
             record.get("accposting", ""), code),
            cn=cn, commit=False)
        if record.get("card_history") is not None:
            _sync_card_history(cn, code, record.get("card_history"), "E")
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


def delete(code: str, cn=None, commit: bool = True) -> int:
    """Delete payment type. VB6 delete chain (FrmPayTypeMast loc_12918DD):

    1. System entries (SysYN='Y') protected - "SYSTEM ENTRY CAN'T BE DELETED".
    2. PayCharge dependency check (MainLib Proc_6_108, display "Payment
       Entry") - "Related Record Exist in Payment Entry, Entry Can't Be
       Deleted".
    3. Transaction: DELETE RevMast (VB6: WHERE Code='..' only) +
       DELETE DepartPay WHERE PayCode='..' (VB6 loc_1291C6A, no site filter).
    """
    rows = db.query("SELECT SysYN FROM RevMast WHERE Code = ?", (code,),
                    cn=cn)
    if rows and (rows[0][0] or "").strip().upper() == "Y":
        raise ValueError("SYSTEM ENTRY CAN'T BE DELETED")
    rows = db.query("SELECT COUNT(*) FROM PayCharge WHERE PayCode = ?",
                    (code,), cn=cn)
    if rows and int(rows[0][0]) > 0:
        raise ValueError(
            "Related Record Exist in Payment Entry, Entry Can't Be Deleted")
    own = cn is None
    cn = cn or db.connect()
    try:
        n = db.execute("DELETE FROM RevMast WHERE Code = ?", (code,),
                       cn=cn, commit=False)
        db.execute("DELETE FROM DepartPay WHERE PayCode = ?", (code,),
                   cn=cn, commit=False)
        # AUDIT-20261005 P2-E: child card-history rows bhi hatao (VB6 delete
        # branch ne ye NAHI kiya tha -> orphan rows; VB6 code-gen codes reuse
        # karta hai isliye safe cascade zaroori hai).
        db.execute("DELETE FROM CreditCardhistory WHERE RevCode = ?", (code,),
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


def print_rows(cn=None) -> list[tuple]:
    """VB6 print query (FrmPayTypeMast loc_108C8BB): PayTypeMast.RPT +
    formula Title='Pay Type Master', SubGroup join for LedgerName.
    Crystal engine Python me nahi hai -> house-standard text preview.
    ORDER BY Name: VB6 print SQL me order nahi tha; Form_Load ka main
    recordset ORDER BY Name hai, uske align kiya (MAIN_SETUP_LOGIC_DIFF).
    """
    rows = db.query(
        "SELECT R.Code, R.Name, R.ShortName, S.Name AS LedgerName, "
        "R.PAYTYPE, R.BankCommPer, R.BankCommAc, R.ACPosting "
        "FROM RevMast R "
        "LEFT JOIN SubGroup S ON S.SubCode = R.ACCode "
        "WHERE R.PAYTYPE IS NOT NULL AND R.PAYTYPE != '' "
        f"AND (R.LogSite_Code = ? OR R.LogSite_Code = 'HO') "
        "ORDER BY R.Name",
        (SITE_CODE,), cn=cn)
    return [tuple(r) for r in rows]
