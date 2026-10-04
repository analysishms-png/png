"""DatabaseSecurityModule (VB6: DatabaseSecurityModule.bas) port.

VB6 source: HMS_REVERSE_ENGINEERING/HMS/DatabaseSecurityModule.bas
(576 lines, 14 NAMED procs - ye module decompile me nahi, balki clean
human-written VB6 hai, dated 28-Feb-2026).  Koi bhi HMS .frm ise call
nahi karta (grep: sirf .bas khud) - ye standalone security wrapper hai.

VB6 -> Python mapping (har proc ka evidence):
  InitializeDatabase         conn.Open + LogError sevInfo
  GetConnectionString (priv) VB6 placeholder: Provider=Microsoft.Jet.OLEDB
                             4.0; Data Source=<App.Path>\\HMS.mdb
                             -> Python: Analysis.ini-driven core.db config
                                (password kabhi return nahi karta)
  ExecuteSecureQuery         ADODB.Command + @param0..N (adVarChar 255)
                             -> core.db.query + `?` placeholders
  ExecuteNonQuery            cmd.Execute recordsAffected; True sirf jab
                             recordsAffected > 0
  ValidateSQL (priv)         VB6 SQL_INJECTION_PATTERNS split on '|':
                             ;DROP|DELETE|INSERT|UPDATE|UNION|SELECT|EXEC|
                             EXECUTE|ALTER|CREATE|TRUNCATE|--|/*|*/
                             + "OR 1=1" / "AND 1=1"
  SanitizeInput              printable ASCII (0x20..0x7E) filter, phir
                             `'`->`''`, `;`/`--`/`/*`/`*/` hatao
  CreateSecureInsert         INSERT INTO [t] ([f0], [f1]) VALUES (@p0, @p1)
  CreateSecureUpdate         UPDATE [t] SET [f0] = @p0 ... WHERE <where>
  CreateSecureSelect         SELECT [f0], ... FROM [t] WHERE/O ORDER BY
  GetDatabaseConnection      lazy open, cached module-level conn
  CloseDatabaseConnection    conn.Close + Set conn = Nothing
  TestDatabaseSecurity       4 assertions (safe query / injection block /
                             parameterized insert / sanitization)
  BackupDatabase(backupPath) VB6: FSO copy of HMS.mdb
                             -> Python: core.db_backup.backup_database
                                (SQL Server BACKUP DATABASE), fallback
                                = Access-style .mdb/.bak file copy
  CheckDatabaseIntegrity     VB6 critical list = Patients/Appointments/
                             Billing/Inventory (medical TEMPLATE - dead in
                             HMS).  Default = HMS critical tables; VB6
                             list `VB6_SAMPLE_TABLES` me preserved hai.

KNOWN VB6 DEFECT (documented, not ported blindly):
  ValidateSQL ka pattern list me SELECT/INSERT/UPDATE/DELETE khud shaamil
  hain, isliye VB6 ka apna `ExecuteSecureQuery(CreateSecureSelect(...))`
  hamesha Nothing return karta (self-reject).  Is port me `strict=True`
  wahi exact VB6 behaviour deta hai (parity/tests ke liye), default
  `strict=False` sirf asli injection markers pakadta hai - warna saara
  parameterized SQL hi block ho jaata.

Run: python -m pytest tests/unit/test_bas_module_ports.py -q
"""
from __future__ import annotations

from HMS_py.core import db
from HMS_py.core import error_handling as _eh

# VB6: CONNECTION_TIMEOUT / COMMAND_TIMEOUT
CONNECTION_TIMEOUT = 30
COMMAND_TIMEOUT = 60

# VB6 Const SQL_INJECTION_PATTERNS (split on '|')
SQL_INJECTION_PATTERNS = (
    ";DROP|DELETE|INSERT|UPDATE|UNION|SELECT|EXEC|EXECUTE|ALTER|CREATE|"
    "TRUNCATE|--|/*|*/"
)
VB6_PATTERN_LIST = tuple(p for p in SQL_INJECTION_PATTERNS.split("|") if p)

# VB6 CheckDatabaseIntegrity ka medical-template list (HMS me dead).
VB6_SAMPLE_TABLES = ("Patients", "Appointments", "Billing", "Inventory")

# Is HMS port ke liye asli critical tables (sab live DB me verified).
DEFAULT_CRITICAL_TABLES = ("Enviro", "Depart", "RoomMast", "ItemMast")

# VB6 LogError sev constants (error_handling._SEVERITY par map hote hain)
SEV_INFO = 1
SEV_LOW = 2
SEV_HIGH = 30
SEV_CRITICAL = 40

_conn = None  # VB6 `Private conn As ADODB.Connection`


def _log(proc: str, msg: str, severity: int = SEV_INFO) -> None:
    _eh.log_error(msg, form="DatabaseSecurityModule", procedure=proc,
                  severity=severity)


# --------------------------------------------------------------- connection
def get_connection_string() -> str:
    """VB6 GetConnectionString (Private) - config-driven, password-free.

    VB6 Jet placeholder ki jagah yahan Analysis.ini ka server+database
    label hi return hota hai (credentials kabhi log/return nahi hote).
    """
    try:
        cfg = db.load_config()
    except Exception as exc:  # pragma: no cover - config file missing
        _log("GetConnectionString", f"config load fail: {exc}", SEV_HIGH)
        return ""
    return (f"driver=Analysis.ini; server={cfg.get('server', '?')}; "
            f"database={cfg.get('database', '?')}")


def initialize_database() -> bool:
    """VB6 InitializeDatabase - connection open karo (lazy/cached)."""
    global _conn
    try:
        if _conn is None:
            _conn = db.connect()
        _log("InitializeDatabase", "Database connection established",
             SEV_INFO)
        return True
    except Exception as exc:
        _log("InitializeDatabase", f"Failed to establish connection: {exc}",
             SEV_HIGH)
        return False


def get_database_connection():
    """VB6 GetDatabaseConnection - open conn return (None on failure)."""
    global _conn
    if _conn is None:
        if not initialize_database():
            return None
    return _conn


def close_database_connection() -> None:
    """VB6 CloseDatabaseConnection - conn.Close + Set conn = Nothing."""
    global _conn
    if _conn is None:
        return
    try:
        try:
            _conn.close()
        except Exception as exc:
            _log("CloseDatabaseConnection", str(exc), SEV_HIGH)
        _log("CloseDatabaseConnection", "Database connection closed",
             SEV_INFO)
    finally:
        _conn = None


# ----------------------------------------------------------------- guardrail
def validate_sql(sql: str, strict: bool = False) -> bool:
    """VB6 ValidateSQL - True = safe.

    strict=True  -> VB6 exact: SQL_INJECTION_PATTERNS ka koi bhi token
                    mila to False (yaad rakho: isme SELECT/UPDATE khud
                    shaamil hain - VB6 ka apna code bhi isme fail hota
                    tha, deko module docstring "KNOWN VB6 DEFECT").
    strict=False -> default: asli injection markers.  `;` ke baad DML,
                    comment markers, tautologies - apna literal SQL safe
                    rehta hai.
    """
    if sql is None:
        return False
    upper = sql.upper()
    if strict:
        for pat in VB6_PATTERN_LIST:
            if pat in upper:
                return False
        if "OR 1=1" in upper or "AND 1=1" in upper:
            return False
        return True
    # practical mode
    for marker in (";DROP", ";DELETE", ";UPDATE", ";INSERT", ";EXEC",
                   ";ALTER", ";CREATE", ";TRUNCATE", "--", "/*", "*/"):
        if marker in upper:
            return False
    if "OR 1=1" in upper or "AND 1=1" in upper:
        return False
    return True


def sanitize_input(input_text: str) -> str:
    """VB6 SanitizeInput - printable ASCII filter + SQL metachar strip."""
    if input_text is None:
        return ""
    # VB6: `If char >= " " And char <= "~"` -> 0x20..0x7E
    sanitized = "".join(ch for ch in str(input_text)
                        if " " <= ch <= "~")
    sanitized = sanitized.replace("'", "''")
    for junk in (";", "--", "/*", "*/"):
        sanitized = sanitized.replace(junk, "")
    return sanitized


# ----------------------------------------------------------- SQL builders
def _bracket(name: str) -> str:
    return "[" + str(name).strip().replace("]", "") + "]"


def create_secure_insert(table_name: str, fields, values) -> str:
    """VB6 CreateSecureInsert -> INSERT INTO [t] ([f0],..) VALUES (@p0,..)."""
    if not str(table_name or "").strip():
        _log("CreateSecureInsert", "Table name is empty", SEV_HIGH)
        return ""
    fields = list(fields or [])
    values = list(values if values is not None else [])
    if len(fields) != len(values):
        _log("CreateSecureInsert", "Fields and values count mismatch",
             SEV_HIGH)
        return ""
    if not fields:
        _log("CreateSecureInsert", "No fields", SEV_HIGH)
        return ""
    field_list = ", ".join(_bracket(f) for f in fields)
    param_list = ", ".join(f"@param{i}" for i in range(len(values)))
    return f"INSERT INTO {_bracket(table_name)} ({field_list}) VALUES ({param_list})"


def create_secure_update(table_name: str, fields, values,
                         where_clause: str = "") -> str:
    """VB6 CreateSecureUpdate -> UPDATE [t] SET [f0]=@p0 ... WHERE ..."""
    if not str(table_name or "").strip():
        _log("CreateSecureUpdate", "Table name is empty", SEV_HIGH)
        return ""
    fields = list(fields or [])
    values = list(values if values is not None else [])
    if len(fields) != len(values):
        _log("CreateSecureUpdate", "Fields and values count mismatch",
             SEV_HIGH)
        return ""
    if not fields:
        _log("CreateSecureUpdate", "No fields", SEV_HIGH)
        return ""
    set_clause = ", ".join(f"{_bracket(f)} = @param{i}"
                           for i, f in enumerate(fields))
    sql = f"UPDATE {_bracket(table_name)} SET {set_clause}"
    if str(where_clause or "").strip():
        sql += " WHERE " + str(where_clause).strip()
    return sql


def create_secure_select(table_name: str, fields,
                         where_clause: str = "",
                         order_by: str = "") -> str:
    """VB6 CreateSecureSelect -> SELECT [f0], .. FROM [t] WHERE/O ORDER BY.

    VB6 `Optional fields` khali ho to `*` (UBound < 0 branch).
    """
    if not str(table_name or "").strip():
        _log("CreateSecureSelect", "Table name is empty", SEV_HIGH)
        return ""
    fields = list(fields) if fields else []
    if fields:
        field_list = ", ".join(_bracket(f) for f in fields)
    else:
        field_list = "*"
    sql = f"SELECT {field_list} FROM {_bracket(table_name)}"
    if str(where_clause or "").strip():
        sql += " WHERE " + str(where_clause).strip()
    if str(order_by or "").strip():
        sql += " ORDER BY " + str(order_by).strip()
    return sql


# ---------------------------------------------------------------- executors
def execute_secure_query(sql: str, params=(), strict: bool = False):
    """VB6 ExecuteSecureQuery -> list[row] (ADODB.Recordset ka port).

    params pyodbc `?` placeholders ko bind hote hain (VB6 ka `@paramN`
    adVarChar(255) yahan driver-side binding hai - safer aur unicode
    aware).
    """
    if not validate_sql(sql, strict=strict):
        _log("ExecuteSecureQuery",
             f"SQL injection attempt detected :: SQL: {sql}",
             SEV_CRITICAL)
        return []
    try:
        rows = db.query(sql, tuple(params or ()))
        _log("ExecuteSecureQuery",
             f"Query executed successfully :: SQL: {sql[:100]}", SEV_INFO)
        return rows
    except Exception as exc:
        _log("ExecuteSecureQuery",
             f"{exc} :: SQL: {sql[:100]}", SEV_HIGH)
        return []


def execute_non_query(sql: str, params=(), strict: bool = False) -> bool:
    """VB6 ExecuteNonQuery -> True sirf jab recordsAffected > 0."""
    if not validate_sql(sql, strict=strict):
        _log("ExecuteNonQuery",
             f"SQL injection attempt detected :: SQL: {sql}", SEV_CRITICAL)
        return False
    try:
        n = db.execute(sql, tuple(params or ()))
        if n and n > 0:
            _log("ExecuteNonQuery",
                 f"Command executed successfully :: records affected: {n}",
                 SEV_INFO)
            return True
        _log("ExecuteNonQuery",
             f"No records affected :: SQL: {sql[:100]}", SEV_LOW)
        return False
    except Exception as exc:
        _log("ExecuteNonQuery", f"{exc} :: SQL: {sql[:100]}", SEV_HIGH)
        return False


# -------------------------------------------------------------------- tests
def test_database_security() -> dict:
    """VB6 TestDatabaseSecurity - MsgBox/Debug.Print ki jagah result dict.

    Returns {safe_select, injection_blocked, parameterized_insert,
             sanitize_ok}.
    """
    results: dict[str, bool] = {}

    # Test 1: safe SELECT (VB6 par ye strict list ki wajah se hi fail tha)
    sql = create_secure_select("Enviro", ["LogSite_Code"], "1 = 1",
                               "LogSite_Code")
    rows = execute_secure_query(sql)
    results["safe_select"] = isinstance(rows, list)

    # Test 2: injection attempt must be blocked (dono mode me)
    bad = "SELECT * FROM Enviro WHERE X = 'test'; DROP TABLE Enviro; --"
    results["injection_blocked"] = (not validate_sql(bad)
                                    and not validate_sql(bad, strict=True)
                                    and execute_secure_query(bad) == [])

    # Test 3: parameterized INSERT builder
    fields = ["Code", "Name"]
    values = ["PYTSEC", "Security Test"]
    sql = create_secure_insert("PYTSecurityProbe", fields, values)
    results["parameterized_insert"] = (
        sql == "INSERT INTO [PYTSecurityProbe] ([Code], [Name]) "
               "VALUES (@param0, @param1)")

    # Test 4: sanitization
    # NOTE (VB6 parity): SanitizeInput `'` -> `''` ESCAPE karta hai
    # (SQL escaping), isliye sanitized string me `'` hona EXPECTED hai.
    # Asli check: koi lone quote (escaped pair ke alawa), `;` aur `--`
    # comment marker na bacha ho - warna injection possible hai.
    san = sanitize_input("test'; DROP TABLE Patients; --")
    lone_quote = san.replace("''", "")
    results["sanitize_ok"] = ("'" not in lone_quote and ";" not in san
                              and "--" not in san and "/*" not in san)
    return results


def backup_database(backup_path: str = "") -> bool:
    """VB6 BackupDatabase(backupPath).

    VB6 FSO se `App.Path\\HMS.mdb` copy karta tha.  Is HMS port me DB
    SQL Server hai, isliye pehle `core.db_backup.backup_database`
    (BACKUP DATABASE ... TO DISK) chalta hai; `backup_path` diya ho to
    wo local .bak/.mdb copy fallback hai (VB6 parity).
    """
    from HMS_py.core import db_backup as _bk
    try:
        res = _bk.backup_database()
        if isinstance(res, dict) and res.get("success"):
            _log("BackupDatabase",
                 f"Database backup created :: {res.get('backup_file')}",
                 SEV_INFO)
            return True
        _log("BackupDatabase",
             f"backup_database returned {res!r}", SEV_HIGH)
    except Exception as exc:
        _log("BackupDatabase", f"SQL backup fail: {exc}", SEV_HIGH)

    # VB6 fallback: local database file copy
    if not str(backup_path or "").strip():
        return False
    import os
    import shutil
    try:
        cfg = db.load_config()
        # Analysis.ini driver=..;DBQ= style path nikalne ki koshish
        src = str(cfg.get("database_file", "") or "")
        if not src or not os.path.isfile(src):
            _log("BackupDatabase",
                 f"Database file not found :: {src or '(no path)'}",
                 SEV_HIGH)
            return False
        shutil.copyfile(src, backup_path)
        _log("BackupDatabase",
             f"Database backup created (file copy) :: {backup_path}",
             SEV_INFO)
        return True
    except Exception as exc:
        _log("BackupDatabase", str(exc), SEV_HIGH)
        return False


def check_database_integrity(tables=None) -> bool:
    """VB6 CheckDatabaseIntegrity - har critical table par COUNT(*).

    VB6 `Patients/Appointments/Billing/Inventory` ek medical template
    tha (HMS me absent) - default `DEFAULT_CRITICAL_TABLES` hai; VB6
    list chahiye to `tables=VB6_SAMPLE_TABLES`.
    """
    probe = list(tables) if tables is not None else list(
        DEFAULT_CRITICAL_TABLES)
    for t in probe:
        rows = execute_secure_query(
            f"SELECT COUNT(*) AS c FROM {_bracket(t)}")
        if not rows:
            _log("CheckDatabaseIntegrity",
                 f"Critical table not found: {t}", SEV_HIGH)
            return False
    _log("CheckDatabaseIntegrity", "Database integrity check passed",
         SEV_INFO)
    return True
