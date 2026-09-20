"""HMS_py core: config + database layer.
Config source: same Analysis.ini jo VB6 HMS padhta hai (section [HMS]).
  keys: 1=Server, 6=Database, 2=Reports path, 3=Temp path...
Rules: sirf parameterized queries; schema me ZERO change.
"""
import configparser
import os

import pyodbc

DEFAULT_CONFIG = {
    "server": "Localhost",
    "database": "KailashData2526",
    "reports": r"C:\Drive\HMS2526\Reports",
    "temp": r"C:\Drive\HMS2526\Temp",
    "company": "KK",
    "site": "Kanpur",
    "modules": None,
}


def _candidate_ini_paths() -> list[str]:
    """Return the search order for Analysis.ini, preferring the project-local file."""
    project_root = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    candidates = []
    env_path = os.environ.get("HMS_ANALYSIS_INI")
    if env_path:
        candidates.append(env_path)
    candidates.extend([
        os.path.join(project_root, "Analysis.ini"),
        os.path.join(os.getcwd(), "Analysis.ini"),
        r"C:\Drive\HMS2526\Analysis.ini",
        os.path.join(project_root, "HMS_py", "Analysis.ini"),
    ])
    seen = set()
    ordered = []
    for p in candidates:
        norm = os.path.normpath(p)
        if norm and norm not in seen:
            ordered.append(norm)
            seen.add(norm)
    return ordered


def find_analysis_ini() -> str | None:
    """Locate the Analysis.ini used by VB6/HMS, preferring the repo-local copy."""
    for path in _candidate_ini_paths():
        if os.path.isfile(path):
            return path
    return None


def load_config(ini_path: str | None = None) -> dict:
    """Analysis.ini -> {server, database, reports, temp} (VB6 jaisa)."""
    ini_path = ini_path or find_analysis_ini() or os.environ.get("HMS_ANALYSIS_INI") or r"C:\Drive\HMS2526\Analysis.ini"
    cp = configparser.ConfigParser()
    read = cp.read(ini_path, encoding="latin-1")
    if not read or not cp.has_section("HMS"):
        # fallback: VB6 jaisa default, but prefer local project config when present
        return dict(DEFAULT_CONFIG)
    hms = cp["HMS"]
    # VB6 numbered keys (evidence: Analysis.ini decoded):
    #   1=server, 2=reports path, 3=temp path, 6=database,
    #   7=company code (KK), 8=site (Kanpur), 9=sidebar modules (#-list)
    def g(i):
        return hms.get(str(i), "").strip()
    modules = [m.strip() for m in g(9).split("#") if m.strip()]
    return {"server": g(1) or DEFAULT_CONFIG["server"],
            "database": g(6) or DEFAULT_CONFIG["database"],
            "reports": g(2) or DEFAULT_CONFIG["reports"],
            "temp": g(3) or DEFAULT_CONFIG["temp"],
            "printer": g(4) or "Prn",
            "company": g(7) or DEFAULT_CONFIG["company"],
            "site": g(8) or DEFAULT_CONFIG["site"],
            "modules": modules or None}


CONN_STR = None


def ensure_paths(cfg: dict | None = None) -> dict:
    """Analysis.ini keys 2/3 (reports/temp) folders create-if-missing.

    VB6 evidence: report export/PDF + Temp.Mdb in these paths (live:
    C:\\Drive\\HMS2526\\Reports + \\Temp, and package-local Reports/Temp).
    Best-effort: permission errors swallowed (production path may be
    read-only) - startup must not fail because of a folder.
    """
    cfg = cfg or load_config()
    made = {"reports": False, "temp": False}
    for key in ("reports", "temp"):
        p = cfg.get(key)
        if p and not os.path.isdir(p):
            try:
                os.makedirs(p, exist_ok=True)
                made[key] = True
            except OSError:
                pass
    return made


def connect(cfg: dict | None = None) -> pyodbc.Connection:
    """Same DB jisme VB6 HMS.exe judta hai (trusted connection).
    Driver: SQL Server Native Client 10.0 (VB6 wahi use karta hai -
    varchar codepage differences se bachne ke liye; fallback SQL Server)."""
    global CONN_STR
    cfg = cfg or load_config()
    for drv in ("SQL Server Native Client 10.0", "SQL Server"):
        try:
            CONN_STR = (f"DRIVER={{{drv}}};SERVER={cfg['server']};"
                        f"DATABASE={cfg['database']};"
                        f"Trusted_Connection=yes;")
            cn = pyodbc.connect(CONN_STR, timeout=5)
            # B017 fix: dead-process orphan transactions DB ko block kar
            # rahe the (GodownMast LCK). Query timeout + lock-timeout se
            # kabhi bhi hamesha-ke-liye block nahi honge.
            cn.timeout = 30
            try:
                cur = cn.cursor()
                cur.execute("SET LOCK_TIMEOUT 5000")
                cur.close()
            except pyodbc.Error:
                pass
            return cn
        except pyodbc.Error:
            continue
    raise RuntimeError("Koi SQL Server ODBC driver nahi mila")


_SAFE_IDENTIFIER_RE = None


def _validate_identifier(name: str, kind: str = "identifier") -> str:
    """Reject SQL injection in table/column names. Only allow [a-zA-Z0-9_]."""
    import re
    global _SAFE_IDENTIFIER_RE
    if _SAFE_IDENTIFIER_RE is None:
        _SAFE_IDENTIFIER_RE = re.compile(r'^[A-Za-z_][A-Za-z0-9_]*$')
    if not _SAFE_IDENTIFIER_RE.match(name):
        raise ValueError(f"Invalid {kind}: '{name}' — only alphanumeric/underscore allowed")
    return name


def require_absent(table: str, pk_col: str, pk_val, label: str = "Code",
                   cn: pyodbc.Connection | None = None) -> None:
    """Duplicate-code guard (VB6 CompMast.frm:3830 'A/c Code Already
    Exists'). Raises before INSERT when the PK already exists."""
    _validate_identifier(table, "table")
    _validate_identifier(pk_col, "column")
    rows = query(
        f"SELECT 1 FROM [{table}] WHERE RTRIM([{pk_col}]) = ?",
        (str(pk_val).strip(),), cn=cn)
    if rows:
        raise ValueError(f"{label} '{pk_val}' Already Exists")


def query(sql: str, params=(), cn: pyodbc.Connection | None = None):
    """SELECT -> list[pyodbc.Row]. Apna cursor band karta hai."""
    own = cn is None
    cn = cn or connect()
    try:
        cur = cn.cursor()
        cur.execute(sql, params)
        rows = cur.fetchall()
        return rows
    finally:
        if own:
            cn.close()


def execute(sql: str, params=(), cn: pyodbc.Connection | None = None,
            commit: bool = True) -> int:
    """INSERT/UPDATE/DELETE -> rows affected.
    commit=False: transaction khula rehta hai (test/rollback ke liye) —
    PAR apna (cn=None) connection pass karo to rollback ho jayega close
    se pehle (B017: orphan transaction se DB-wide lock bleed nahi hogi).
    Rollback-pattern ke liye apna cn bana ke pass karo."""
    own = cn is None
    cn = cn or connect()
    try:
        cur = cn.cursor()
        cur.execute(sql, params)
        n = cur.rowcount
        if commit:
            cn.commit()
        return n
    finally:
        if own:
            try:
                cn.rollback()
            except pyodbc.Error:
                pass
            cn.close()
