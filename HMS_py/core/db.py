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
            return pyodbc.connect(CONN_STR, timeout=5)
        except pyodbc.Error:
            continue
    raise RuntimeError("Koi SQL Server ODBC driver nahi mila")


def require_absent(table: str, pk_col: str, pk_val, label: str = "Code",
                   cn: pyodbc.Connection | None = None) -> None:
    """Duplicate-code guard (VB6 CompMast.frm:3830 'A/c Code Already
    Exists'). Raises before INSERT when the PK already exists."""
    rows = query(
        f"SELECT 1 FROM {table} WHERE RTRIM({pk_col}) = ?",
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
    commit=False: transaction khula rehta hai (test/rollback ke liye)."""
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
            cn.close()
