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
# ============================================================
# AUDIT-20261005 P2-G FIX: VB6 OutLetMast.frm loc_1CD8B79 ka poora
# Depart column-set (60 cols). Python pehle sirf 17 likhta tha -> 45 cols
# (OutletTitle, Header1-4, token-printing, barcode-partition, POS switches...)
# kabhi persist nahi hote the.
# (column, rec key, default) — VB6 column order verbatim.
# ============================================================
DEPART_WRITE_COLS = (
    ("Code", "code", ""),
    ("Name", "name", ""),
    ("KotYn", "kotyn", ""),
    ("Header1", "header1", ""),
    ("Header2", "header2", ""),
    ("Header3", "header3", ""),
    ("Header4", "header4", ""),
    ("Phone", "phone", ""),
    ("Slogan1", "slogan1", ""),
    ("Slogan2", "slogan2", ""),
    ("LstNo", "lstno", ""),
    ("CompanyTitle", "companytitle", ""),
    ("OutletTitle", "outlettitle", ""),
    ("POS", "pos", ""),
    ("RestType", "resttype", ""),
    ("BackColor", "backcolor", 0),
    ("ShortName", "short", ""),
    ("OutletYN", "outletyn", "N"),
    ("LinkToRoom", "linktoroom", ""),
    ("PartyName", "partyname", ""),
    ("SplitBill", "splitbill", ""),
    ("RateInclTax", "rateinctax", ""),
    ("DiscApp", "discapp", ""),
    ("Roff", "roff", ""),
    ("MemberInfo", "memberinfo", ""),
    ("DisPrint", "disprint", ""),
    ("LabelPrinting", "labelprinting", ""),
    ("TokenPrint", "tokenprint", ""),
    ("TokenPrintAfter", "tokenprintafter", ""),
    ("PrintTokenNo", "printtokenno", ""),
    ("Order_Booking", "order_booking", ""),
    ("CustInfo", "custinfo", ""),
    ("CstNo", "cstno", ""),
    ("CKOTPrintYN", "ckotprintyn", ""),
    ("PrintType", "printtype", ""),
    ("BarCodePartitionAppOn", "barcodepartitionappon", ""),
    ("CKOTPrintPath", "ckotprintpath", ""),
    ("CurTokenNo", "curtokenno", 0),
    ("CurTokenNoKOT", "curtokennokot", 0),
    ("NoOfKOt", "noofkot", 0),
    ("NoOfBill", "noofbill", 0),
    ("OrderBookCom1", "orderbookcom1", ""),
    ("OrderBookCom2", "orderbookcom2", ""),
    ("SaleBillTokenHeader1", "salebilltokenheader1", ""),
    ("PrintOnSave", "printonsave", ""),
    ("AutoSettlement", "autosettlement", ""),
    ("WScaleApp", "wscaleapp", ""),
    ("BarCodeApp", "barcodeapp", ""),
    ("AutoResetToken", "autoresettoken", ""),
    ("FreeItemApp", "freeitemapp", ""),
    ("CoverMandatory", "covermandatory", ""),
    ("MobileNoMandatory", "mobilenomandatory", ""),
    ("DirectBilling", "directbilling", ""),
    ("BookOfBills", "bookofbills", 0),
    ("GrpDiscApp", "grpdiscapp", ""),
    # Python-only extras (live cols; pehle se likhe jaate the)
    ("Printer", "printer", ""),
    ("StoreType", "storetype", ""),
)
# VB6 Left$(...,1) wale 1-char Y/N flags
_DEPART_Y1_KEYS = frozenset((
    "kotyn", "pos", "outletyn", "linktoroom", "rateinctax", "discapp",
    "roff", "memberinfo", "disprint", "labelprinting", "companytitle",
    "outlettitle",
))
# VB6 numeric cols (smallint/int)
_DEPART_INT_KEYS = frozenset((
    "backcolor", "curtokenno", "curtokennokot", "noofkot", "noofbill",
    "bookofbills",
))
_EXTRA_MAP_COLS = (("U_Name", "u_name", ""), ("U_EntDt", "u_entdt", None),
                   ("U_AE", "u_ae", ""))
_MAP_SPEC = DEPART_WRITE_COLS + _EXTRA_MAP_COLS
SELECT_COLS = ", ".join(c for c, _, _ in _MAP_SPEC)


def _cv(key: str, value):
    """VB6 value coercion: Left(...,1) Y/N flags, int cols, plain str."""
    if key in _DEPART_INT_KEYS:
        try:
            return int(float(value or 0))
        except (TypeError, ValueError):
            return 0
    if key in _DEPART_Y1_KEYS:
        return str(value or "").strip().upper()[:1]
    return value if value is not None else ""
# VB6 DepartMast.frm Form_Load / Find / Print site scope filter
SITE_FILTER = "(LogSite_Code = ? OR LogSite_Code = 'HO')"

# ============================================================
# AUDIT-20261005 P2-F FIX: Outlet child tables (OutLetMast.frm)
#   SchemeOutletDiscount  (loc_1CDDDA1 delete / loc_1CDE099 insert)
#   OutletBarCodePartDetail (loc_1CDE23D delete / loc_1CDE3B8 insert)
# VB6 Outlet save in dono tables ko RestCode par delete-then-reinsert karta
# hai; Python me 0 files inhe likhti thi (scheme discount + barcode
# partition data silently lost).
# Live columns (INFORMATION_SCHEMA 2026-10-06):
#   SchemeOutletDiscount: SchemeCode varchar(6) NOTNULL, Appdate datetime,
#     Enddate datetime, FromTime varchar(5), ToTime varchar(5),
#     RestCode varchar(6) NOTNULL, DiscPer float, Site_Code, U_Name,
#     U_EntDt datetime, U_AE, LogSite_Code, Days int, Active varchar(1)
#   OutletBarCodePartDetail: BarCodePart varchar(15) NOTNULL,
#     BarCodeStartFrom int, BarCodeLength int, RestCode varchar(6) NOTNULL,
#     Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code
# ============================================================
SCHEME_DISCOUNT_COLS = (
    "RestCode, Appdate, EndDate, FromTime, ToTime, SchemeCode, DiscPer, "
    "Active, Days, Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code"
)
BARCODE_PART_COLS = (
    "RestCode, BarCodePart, BarCodeStartFrom, BarCodeLength, "
    "Site_Code, U_Name, U_EntDt, U_AE, LogSite_Code"
)


def _int_or_none(v):
    try:
        return int(v)
    except (TypeError, ValueError):
        return None


def _float_or_zero(v) -> float:
    try:
        return float(v or 0)
    except (TypeError, ValueError):
        return 0.0


def scheme_discounts(rest_code: str, cn=None) -> list[dict]:
    """Outlet ke scheme discount rows (VB6 FGrid)."""
    rows = db.query(
        f"SELECT {SCHEME_DISCOUNT_COLS} FROM SchemeOutletDiscount "
        "WHERE RestCode = ? ORDER BY SchemeCode, Appdate",
        (rest_code,), cn=cn)
    return [{
        "restcode": r.RestCode, "appdate": r.Appdate, "enddate": r.EndDate,
        "fromtime": (r.FromTime or "").strip(),
        "totime": (r.ToTime or "").strip(),
        "schemecode": (r.SchemeCode or "").strip(),
        "discper": float(r.DiscPer or 0), "active": r.Active or "",
        "days": int(r.Days or 0), "u_name": r.U_Name or "",
        "u_ae": r.U_AE or "",
    } for r in rows]


def barcode_parts(rest_code: str, cn=None) -> list[dict]:
    """Outlet ke barcode partition rows (VB6 FGBarCode)."""
    rows = db.query(
        f"SELECT {BARCODE_PART_COLS} FROM OutletBarCodePartDetail "
        "WHERE RestCode = ? ORDER BY BarCodePart",
        (rest_code,), cn=cn)
    return [{
        "restcode": r.RestCode,
        "barcodepart": (r.BarCodePart or "").strip(),
        "startfrom": int(r.BarCodeStartFrom or 0),
        "length": int(r.BarCodeLength or 0),
        "u_name": r.U_Name or "", "u_ae": r.U_AE or "",
    } for r in rows]


def _sync_outlet_children(cn, code: str, rec: dict, u_ae: str) -> None:
    """VB6 OutLetMast save: dono child tables RestCode par reset + reinsert.

    rec keys: `scheme_discounts` (list[dict]) + `barcode_parts` (list[dict]).
    Dono missing/None -> koi change nahi (read-modify-write na toote).
    """
    schemes = rec.get("scheme_discounts")
    if schemes is not None:
        db.execute("DELETE FROM SchemeOutletDiscount WHERE RestCode = ?",
                   (code,), cn=cn, commit=False)
        for s in schemes:
            db.execute(
                f"INSERT INTO SchemeOutletDiscount ({SCHEME_DISCOUNT_COLS}) "
                "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, getdate(), ?, ?)",
                (code, s.get("appdate") or None, s.get("enddate") or None,
                 (s.get("fromtime") or "")[:5],
                 (s.get("totime") or "")[:5],
                 (s.get("schemecode") or "").strip(),
                 _float_or_zero(s.get("discper")),
                 (s.get("active") or "Y").strip()[:1] or "Y",
                 _int_or_none(s.get("days")), SITE_CODE, USER, u_ae, SITE_CODE),
                cn=cn, commit=False)

    parts = rec.get("barcode_parts")
    if parts is not None:
        db.execute("DELETE FROM OutletBarCodePartDetail WHERE RestCode = ?",
                   (code,), cn=cn, commit=False)
        for b in parts:
            part = (b.get("barcodepart") or "").strip()
            if not part:
                continue
            db.execute(
                f"INSERT INTO OutletBarCodePartDetail ({BARCODE_PART_COLS}) "
                "VALUES (?, ?, ?, ?, ?, ?, getdate(), ?, ?)",
                (code, part[:15], _int_or_none(b.get("startfrom")),
                 _int_or_none(b.get("length")), SITE_CODE, USER, u_ae,
                 SITE_CODE),
                cn=cn, commit=False)


def _map(r) -> dict:
    """VB6 Depart row -> dict (poore 60-col set + audit cols).

    pyodbc Row -> attribute access; plain tuple/list -> SELECT_COLS order.
    """
    if hasattr(r, "Code"):
        def _get(col):
            return getattr(r, col, None)
    else:
        vals = list(r)

        def _get(col):
            idx = [c for c, _, _ in _MAP_SPEC].index(col)
            return vals[idx] if idx < len(vals) else None
    out = {}
    for col, key, default in _MAP_SPEC:
        v = _get(col)
        out[key] = default if v is None else _cv(key, v)
    return out


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
        # 1. Insert into Depart — AUDIT P2-G: VB6 loc_1CD8B79 ka poora
        # 60-col set (pehle sirf 17 cols likhe jaate the).
        ins_cols = ([c for c, _, _ in DEPART_WRITE_COLS]
                    + ["Site_Code", "U_Name", "U_EntDt", "U_AE",
                       "LogSite_Code"])
        ins_vals = [_cv(key, code if key == "code"
                        else rec[key] if key == "name"
                        else rec.get(key, default))
                    for _col, key, default in DEPART_WRITE_COLS]
        ins_vals += [SITE_CODE, USER]
        db.execute(
            f"INSERT INTO Depart ({', '.join(ins_cols)}) VALUES "
            f"({', '.join(['?'] * (len(ins_cols) - 3))}, getdate(), 'A', ?)",
            tuple(ins_vals) + (SITE_CODE,),
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

        # 3. AUDIT-20261005 P2-F FIX: Outlet child tables same transaction
        _sync_outlet_children(cn, code, rec, "A")

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
    # AUDIT-20261005 P2-G FIX: VB6 ka poora Depart column-set update hota hai
    # (pehle sirf 14 cols); P2-F: outlet child tables bhi sync.
    own = cn is None
    cn = cn or db.connect()
    try:
        sets = ", ".join(f"{c} = ?" for c, _, _ in DEPART_WRITE_COLS
                         if c != "Code")
        vals = tuple(_cv(key, rec[key] if key == "name"
                         else rec.get(key, default))
                     for _col, key, default in DEPART_WRITE_COLS
                     if key != "code")
        n = db.execute(
            f"UPDATE Depart SET {sets}, U_Name = ?, U_EntDt = getdate(), "
            "U_AE = 'E' WHERE Code = ?",
            vals + (USER, code),
            cn=cn, commit=False)
        _sync_outlet_children(cn, code, rec, "E")
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
        # AUDIT-20261005 P2-F: outlet child tables bhi cascade (VB6 OutLetMast
        # save RestCode par reset karta hai, isliye delete par bhi hatao).
        db.execute("DELETE FROM SchemeOutletDiscount WHERE RestCode = ?",
                   (code,), cn=cn, commit=False)
        db.execute("DELETE FROM OutletBarCodePartDetail WHERE RestCode = ?",
                   (code,), cn=cn, commit=False)
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
