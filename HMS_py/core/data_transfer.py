"""Data transfer / replication audit (VB6: mdlDataTransfer.bas port).

VB6 source: HMS_REVERSE_ENGINEERING/HMS/mdlDataTransfer.bas (275 lines,
9 obfuscated procs, Data Table 41CB9C).  Ye module data-transfer client
ke liye changed-row audit trail banata hai:

  TransIn   -> kaunsi tables transfer hoti hain (TableName + PK config)
  TransDel  -> delete/change log (19 cols: PK1..PK5 name/type/value +
               UName/UEntDt/UAE)
  Ledger    -> transfer hit hone par row-level audit

VB6 -> Python mapping (loc refs):
  Proc_154_0_FDAA68  mode dispatch: 0=INSERT, 2=DELETE (mode 1 khali
                     branch), skip-list AcGroup/EPABX_Data/ledgerRef/
                     MarketSeg (loc_FDA9AC) -> transfer_execute()
  Proc_154_1_F523D4  Access-style WHERE fragment by field type:
                     Date/Time -> [f]=#..#, Text/Memo -> [f]='..',
                     Number/Yes-No/Currency -> raw (loc_F52301-F523D2)
                     -> where_fragment()
  Proc_154_2_EE62BC  SQL literal by field type: Text/Memo quoted,
                     date via obfuscated Proc_6_7_F25D88, numeric raw
                     (loc_EE621E-EE62BB) -> sql_literal()
  Proc_154_3_E5AEBC  CStr(IIf(IsNull(arg), vbNullString, arg))
                     -> null_to_string()
  Proc_154_4_F329F4  ADO type-code -> literal:
                     0 -> "NULL" (loc_F329ED), numeric codes
                     {2,3,4,5,6,&H11} -> CStr (loc_F3293A), date codes
                     {1,7,&H87} -> Proc_6_7_F25D88 format, default
                     -> quoted 'v' (loc_F329D1) -> typed_value()
                     (decompile nested If-chain scrambled hai; mapping
                     ADO DataTypeEnum + upar ke loc refs se derive ki)
  Proc_154_5_10E33A4 TransIn guard (loc_10E31C4) -> TransDel 19-col
                     INSERT (loc_10E320A) -> log_table_change()
  Proc_154_6_FAFD3C  Ledger SELECT (loc_FAFC13) + per-row TransDel
                     audit (loc_FAFCB7) -> log_ledger_changes()
                     [VB6 purane `TransDel(TableName,PK1,PK2,...)`
                     layout me likhta tha jo live schema me absent hai -
                     is port me wahi audit naye 19-col layout me map
                     hota hai, dekho docstring]
  Proc_154_7_13DE5C4 Table_SearchField se Tr_<t>_A/_E/_D trigger DDL
                     (loc_13DDCE6-13DE5C2) -> create_audit_triggers()
  Proc_154_8_F64CD4  DROP+CREATE PROCEDURE dbo.Create_LogTableRecords
                     (loc_F64C00-F64CC7) -> ensure_logtable_proc()

LIVE DB (Moondata2627) probe 2026-10-02:
  TransIn (13 cols) / TransDel (19 cols) / Ledger -> MAUJOOD
  Table_SearchField / Log_TableRecords -> ABSENT (VB6 DDL targets dead
  is DB me) - isliye existence guards pehle chalte hain.

DEVIATION (documented): VB6 concatenated SQL literals string+string;
is port me writes pyodbc `?` binding se hote hain (database_security_
module.py executor pattern jaisa).  Literal builders (where_fragment /
sql_literal / typed_value) VB6-exact rakhe gaye hain - parity tests
unhe lock karte hain.

Run: python -m pytest tests/unit/test_bas_module_ports.py -q
"""
from __future__ import annotations

import datetime as _dt

from HMS_py.core import db

# VB6 loc_FDA9AC: ye tables transfer scope se BAHAR hain
TRANSFER_SKIP_TABLES = frozenset({"acgroup", "epabx_data", "ledgerref",
                                  "marketseg"})

# VB6 Proc_154_4 ke type-code groups (ADO DataTypeEnum, dekho module doc)
_NULL_TYPE_CODE = 0                       # loc_F329ED -> "NULL"
_RAW_TYPE_CODES = frozenset({2, 3, 4, 5, 6, 17})   # loc_F3293A CStr(v)
_DATE_TYPE_CODES = frozenset({1, 7, 0x87})         # Proc_6_7_F25D88

# VB6 TransDel ke 5 PK slots (loc_10E320A INSERT column list)
_TRANSDEL_COLUMNS = (
    "TableName",
    "PK1_Name", "PK1_Type", "PK1_Value",
    "PK2_Name", "PK2_Type", "PK2_Value",
    "PK3_Name", "PK3_Type", "PK3_Value",
    "PK4_Name", "PK4_Type", "PK4_Value",
    "PK5_Name", "PK5_Type", "PK5_Value",
    "UName", "UEntDt", "UAE",
)

# VB6 Proc_154_8_F64CD4 ka CREATE PROCEDURE body (loc_F64C12-F64CC7)
_LOGTABLE_PROC_DDL = (
    "CREATE PROCEDURE dbo.Create_LogTableRecords "
    "@TableName NVARCHAR(128), @AED NVARCHAR(1), "
    "@SearchKey NVARCHAR(21), @UniqueKey NVARCHAR(max), "
    "@SiteCode NVARCHAR(2), @LogSiteCode NVARCHAR(2) AS "
    "BEGIN SET NOCOUNT ON; "
    "DECLARE @Transaction_Id BIGINT; "
    "DECLARE @SearchField NVARCHAR(128); "
    "DECLARE @UniqueField NVARCHAR(max); "
    "DECLARE @UpdateDate DATETIME; "
    "DECLARE @mCreateLogYn BIT; "
    "SET @mCreateLogYn=1 "
    "IF (@mCreateLogYn=1) Begin "
    "SET @Transaction_Id=(SELECT transaction_id "
    "FROM sys.dm_tran_current_transaction) "
    "SET @SearchField=(SELECT Search_Field FROM Table_SearchField "
    "WHERE TABLE_NAME =@TableName) "
    "SET @UniqueField=(SELECT UniqueField FROM Table_SearchField "
    "WHERE TABLE_NAME =@TableName) "
    "SET @UpdateDate=(SELECT GetDate()) "
    "INSERT INTO Log_TableRecords "
    "(Transaction_Id,SearchKey,AED,UpdateDate,TableName,Site,"
    "Site_Code,LogSite_Code,UploadDate,SearchField,UniqueKey,"
    "UniqueField) VALUES "
    "(@Transaction_Id,@searchkey,@aed,@updatedate,@tablename,'',"
    "@SiteCode,@LogSiteCode,Null,@searchfield,@UniqueKey,"
    "@UniqueField) end END"
)


# ---------------------------------------------------------- literal builders
def _format_date_literal(value) -> str:
    """VB6 Proc_6_7_F25D88 (obfuscated date -> string) ka stand-in.

    Helper body decompile me nahi mili; SQL Server ISO literal use kiya
    (datetime -> 'YYYY-MM-DD HH:MM:SS', date -> 'YYYY-MM-DD').
    """
    if isinstance(value, _dt.datetime):
        return "'" + value.strftime("%Y-%m-%d %H:%M:%S") + "'"
    if isinstance(value, _dt.date):
        return "'" + value.strftime("%Y-%m-%d") + "'"
    return "'" + str(value) + "'"


def where_fragment(field_type, field_name, value) -> str:
    """VB6 Proc_154_1_F523D4 - field type se WHERE clause fragment.

    Number/Yes-No/Currency -> [f]=v, Date/Time -> [f]=#v# (Access
    date literal), Text/Memo -> [f]='v', unknown -> "" (VB6 var_88
    Empty rehta hai).
    """
    col = "[" + str(field_name).replace("]", "") + "]"
    t = str(field_type or "")
    if t == "Date/Time":
        return f"{col}=#{value}#"
    if t in ("Text", "Memo"):
        return f"{col}='{value}'"
    if t in ("Number", "Yes/No", "Currency"):
        return f"{col}={value}"
    return ""


def sql_literal(field_type, value) -> str:
    """VB6 Proc_154_2_EE62BC - field type se SQL value literal.

    Text/Memo -> 'v', Date/Time -> ISO date literal, Number/Yes-No/
    Currency -> raw CStr, unknown -> "" (VB6 var_88 khali).
    """
    t = str(field_type or "")
    if t in ("Text", "Memo"):
        return "'" + str(value) + "'"
    if t == "Date/Time":
        return _format_date_literal(value)
    if t in ("Number", "Yes/No", "Currency"):
        return str(value)
    return ""


def null_to_string(value) -> str:
    """VB6 Proc_154_3_E5AEBC - CStr(IIf(IsNull(v), vbNullString, v))."""
    return "" if value is None else str(value)


def typed_value(type_code, value) -> str:
    """VB6 Proc_154_4_F329F4 - ADO type-code -> SQL literal string.

    0 -> "NULL", numeric codes raw, date codes ISO-quoted, baaki
    (text codes 0xA/0xC8/0xCA/0x81/0x82/0x312 sahit) quoted 'v'.
    """
    try:
        code = int(type_code)
    except (TypeError, ValueError):
        code = -1
    if code == _NULL_TYPE_CODE:
        return "NULL"
    if code in _RAW_TYPE_CODES:
        return str(value)
    if code in _DATE_TYPE_CODES:
        return _format_date_literal(value)
    # loc_F329D1: default/text branch -> quoted
    return "'" + str(value) + "'"


# ------------------------------------------------------------- dispatchers
def transfer_execute(table: str, suffix: str, mode: int, cn=None,
                     commit: bool = True) -> str:
    """VB6 Proc_154_0_FDAA68 - INSERT/DELETE dispatch + skip-list.

    mode 0 -> INSERT INTO <table><suffix>
    mode 2 -> DELETE FROM <table><suffix>
    mode 1 / other -> kuch nahi (VB6 khali nested branch)
    skip-list (AcGroup/EPABX_Data/ledgerRef/MarketSeg) -> no-op.
    table name return (VB6 Result = arg_10).
    """
    name = str(table or "")
    if name.strip().lower() in TRANSFER_SKIP_TABLES:
        return name          # loc_FDA9D0: Result = arg_10: Exit Sub
    frag = str(suffix or "")
    if mode == 0:
        sql = "INSERT INTO " + name + frag        # loc_FDAA01
    elif mode == 2:
        sql = "DELETE FROM " + name + frag        # loc_FDAA43
    else:
        sql = ""                                  # mode 1 - khali branch
    if sql:
        db.execute(sql, cn=cn, commit=commit)
    return name


def _table_exists(name: str, cn=None) -> bool:
    """Existence guard - live DB me missing table par pyodbc error aata
    hai (VB6 Access/SQL par sirf khali recordset deta tha)."""
    rows = db.query(
        "SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = ?",
        (name,), cn=cn)
    return bool(rows)


# ---------------------------------------------------------------- auditors
def log_table_change(table: str, user: str = "", ent_dt=None, ae: str = "A",
                     pks=None, cn=None, commit: bool = True) -> int:
    """VB6 Proc_154_5_10E33A4 - TransIn guard -> TransDel 19-col INSERT.

    pks: [(pk_name, pk_type, pk_value), ...] - 1 se 5 tak (VB6 hamesha
    5 slots banata hai, kam par Empty padte hain).  TransIn me table
    configured nahi to 0 (VB6 RecordCount=0 -> insert skip).
    """
    rows = db.query(
        "SELECT * FROM [TransIn] WHERE [TableName] = ?", (table,), cn=cn)
    if not rows:
        return 0
    slots = [tuple(p) for p in (pks or ())]
    while len(slots) < 5:                   # VB6 5 PK slots banata hai
        slots.append(("", None, None))
    slots = slots[:5]
    cols = list(_TRANSDEL_COLUMNS)
    vals: list = [table]
    for i, (nm, tp, vl) in enumerate(slots, 1):
        vals += [nm, tp, vl]
    vals += [user, ent_dt if ent_dt is not None else _dt.datetime.now(), ae]
    sql = ("INSERT INTO [TransDel] ("
           + ", ".join(f"[{c}]" for c in cols)
           + ") VALUES (" + ", ".join("?" for _ in vals) + ")")
    return db.execute(sql, tuple(vals), cn=cn, commit=commit)


def log_ledger_changes(vtype: str, subcode: str, user: str = "",
                       ent_dt=None, ae: str = "A", cn=None,
                       commit: bool = True) -> int:
    """VB6 Proc_154_6_FAFD3C - Ledger rows -> TransDel audit.

    VB6 (loc_FAFCB7) purane layout `TransDel(TableName,PK1,PK2,
    UName,UEntDt,UAE)` me likhta tha - wo columns live schema me
    exist nahi karte.  Is port me wahi audit naye layout me map hota
    hai: PK1 = DocID, PK2 = V_SNo (row identity VB6 jaisa hi).

    Har row ek INSERT (commit=False); apna cn/transaction pass karo
    atomicity ke liye (db.transaction pattern).
    """
    rows = db.query(
        "SELECT [DocId], [V_SNo] FROM [Ledger] "
        "WHERE [V_Type] = ? AND [SubCode] = ?", (vtype, subcode), cn=cn)
    if not rows:
        return 0
    sql = ("INSERT INTO [TransDel] ("
           "[TableName], [PK1_Name], [PK1_Type], [PK1_Value], "
           "[PK2_Name], [PK2_Type], [PK2_Value], "
           "[UName], [UEntDt], [UAE]) "
           "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")
    dt = ent_dt if ent_dt is not None else _dt.datetime.now()

    def _do(c, do_commit: bool) -> int:
        n = 0
        for docid, v_sno in rows:
            n += db.execute(sql, ("Ledger", "DocID", 20, docid,
                                  "V_SNo", 3, v_sno, user, dt, ae),
                            cn=c, commit=False)
        if do_commit and c is not None:
            c.commit()
        return n

    if cn is not None:
        return _do(cn, commit)
    # cn=None: saare row-INSERT ek transaction me (rollback-pattern guard)
    with db.transaction() as own:
        return _do(own, False)


# ------------------------------------------------------------- DDL helpers
def _trigger_ddl(table_name: str, search_field: str, unique_field: str,
                 site_col: str, logsite_col: str, aud: str) -> str:
    """VB6 Proc_154_7 ki ek trigger body (loc_13DDD77-13DE5A4).

    aud: 'A' (Insert), 'E' (Update), 'D' (Delete) - VB6 teeno ke liye
    same template alag AED flag se banata hai.
    """
    event = {"A": "Insert", "E": "Update", "D": "Delete"}[aud]
    src = "Inserted" if aud in ("A", "E") else "Deleted"
    t = str(table_name)
    return (
        f"CREATE TRIGGER Tr_{t}_{aud} ON {t} "
        f"FOR {event} AS "
        "DECLARE @Code NVARCHAR(21), @UniqueKey NVARCHAR(max), "
        "@UDate DateTime, @SiteCode NVARCHAR(2), "
        "@LogSiteCode NVARCHAR(2) "
        f"IF EXISTS (SELECT * FROM {src}) BEGIN "
        "SET @UDate = (SELECT GetDate()) "
        f"DECLARE {event}_Cursor CURSOR FOR "
        f"SELECT [{search_field}],[{unique_field}],"
        f"[{site_col}],[{logsite_col}] FROM {src} i "
        f"OPEN {event}_Cursor "
        f"FETCH NEXT FROM {event}_Cursor "
        "INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode "
        "WHILE @@FETCH_STATUS = 0 BEGIN "
        "IF NOT EXISTS(SELECT * FROM Log_TableRecords "
        f"WHERE UniqueKey = @UniqueKey AND TableName = '{t}' "
        f"And AED='{aud}' AND UpdateDate =@UDate) BEGIN "
        f"EXEC Create_LogTableRecords '{t}','{aud}',"
        "@Code,@UniqueKey,@SiteCode,@LogSiteCode END "
        f"FETCH NEXT FROM {event}_Cursor "
        "INTO @Code, @UniqueKey, @SiteCode, @LogSiteCode END "
        f"CLOSE {event}_Cursor DEALLOCATE {event}_Cursor END")


def create_audit_triggers(cn=None, commit: bool = True) -> dict:
    """VB6 Proc_154_7_13DE5C4 - Table_SearchField se triggers banao.

    Live DB (Moondata2627) me Table_SearchField ABSENT hai -> guarded
    no-op (VB6 bhi khali recordset par loop skip karta tha).
    Returns {'created': n, ...}.
    """
    if not _table_exists("Table_SearchField", cn=cn):
        return {"created": 0,
                "reason": "Table_SearchField absent (live DB)"}
    rows = db.query(
        "SELECT [Table_Name], [Search_Field], [UniqueField], "
        "[SiteCode], [LogSiteCode] FROM [Table_SearchField] "
        "WHERE ISNULL([Search_Field], '') <> ''", cn=cn)
    ddls = [_trigger_ddl(tn, sf, uf, sc, lc, aud)
            for tn, sf, uf, sc, lc in rows
            for aud in ("A", "E", "D")]

    def _run(c) -> None:
        for ddl in ddls:
            db.execute(ddl, cn=c, commit=False)

    if cn is not None:
        _run(cn)
        if commit:
            cn.commit()
    else:
        # cn=None: DDL loop ek transaction me (rollback-on-close guard)
        with db.transaction() as own:
            _run(own)
    return {"created": len(ddls)}


def ensure_logtable_proc(cn=None, commit: bool = True) -> bool:
    """VB6 Proc_154_8_F64CD4 - dbo.Create_LogTableRecords drop+create.

    Live DB me Log_TableRecords ABSENT -> guarded False (DDL target
    dead).  Table ho to VB6 ka exact DROP-if-exists + CREATE chalta hai.
    """
    if not _table_exists("Log_TableRecords", cn=cn):
        return False

    def _run(c) -> None:
        db.execute(
            "IF EXISTS (SELECT * FROM sysobjects WHERE name ="
            " 'Create_LogTableRecords') "
            "Drop Procedure Create_LogTableRecords", cn=c, commit=False)
        db.execute(_LOGTABLE_PROC_DDL, cn=c, commit=False)

    if cn is not None:
        _run(cn)
        if commit:
            cn.commit()
    else:
        with db.transaction() as own:
            _run(own)
    return True
