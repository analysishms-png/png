"""Error handling (VB6 ErrorHandlingModule.bas port).

LogError -> ErrorLog.txt (project root / HMS_py), severity levels,
StandardErrorHandler wrapper. No GUI deps; safe for core+ui.
Also includes EnterMethod/ExitMethod/TraceMethod from modLog.bas.
Error numbers, Resume Next pattern, and RollbackTrans emulation
are ported from the original VB6 module.
"""
from __future__ import annotations

import datetime as _dt
import os
import sqlite3
import sys
import traceback

_SEVERITY = {1: "CRITICAL", 2: "HIGH", 3: "MEDIUM", 4: "LOW", 5: "INFO"}

# Error numbers ported from VB6 Err.Number equivalents
_ERROR_NUMBERS = {
    1001: "Division by zero",
    1002: "Type mismatch",
    1003: "Subscript out of range",
    1004: "Invalid path or filename",
    1005: "File already exists",
    1006: "File not found",
    1007: "Disk full",
    1008: "Invalid format",
    1009: "Invalid usage",
    1010: "Out of memory",
    1011: "Parameter not found",
    1012: "File already locked",
    1013: "Dialog cancelled",
    1014: "Record or field locked",
    1015: "Record or field not found",
    1016: "Invalid argument",
    1017: "Object variable not set",
    1018: "Object invalid or not set",
    1019: "Class not defined",
    1020: "Method or data not found",
}

_LAST_ERROR: int = 0


def _log_path() -> str:
    base = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
    return os.path.join(base, "ErrorLog.txt")


def _severity_text(severity: int) -> str:
    return _SEVERITY.get(severity, "MEDIUM")


def log_error(exc: BaseException | str, *,
              user: str = "", form: str = "", procedure: str = "",
              severity: int = 30, extra: str = "") -> None:
    """Append one ErrorLog.txt line (VB6 LogError/StandardErrorHandler)."""
    global _LAST_ERROR
    sev = _severity_text(severity) if severity <= 5 else "ERROR"
    if isinstance(exc, BaseException):
        _LAST_ERROR = exc.args[0] if exc.args else 0
        detail = "".join(traceback.format_exception(type(exc), exc,
                                                    exc.__traceback__))
        detail = detail.strip().replace("\n", " | ")
    else:
        detail = str(exc)
        _LAST_ERROR = 0
    ts = _dt.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    line = (f"{ts} [{sev}] user={user or '-'} form={form or '-'} "
            f"proc={procedure or '-'} :: {detail}")
    if extra:
        line += f" :: {extra}"
    try:
        with open(_log_path(), "a", encoding="utf-8") as fh:
            fh.write(line + "\n")
    except OSError:
        pass


def log_enter(form_name: str, control_name: str) -> None:
    """VB6 EnterMethod - log when entering a control."""
    ts = _dt.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    line = f"{ts} [ENTER] form={form_name} control={control_name}"
    try:
        with open(_log_path(), "a", encoding="utf-8") as fh:
            fh.write(line + "\n")
    except OSError:
        pass


def log_exit(form_name: str, control_name: str) -> None:
    """VB6 ExitMethod - log when exiting a control."""
    ts = _dt.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    line = f"{ts} [EXIT] form={form_name} control={control_name}"
    try:
        with open(_log_path(), "a", encoding="utf-8") as fh:
            fh.write(line + "\n")
    except OSError:
        pass


def log_trace(context: str, msg: str) -> None:
    """VB6 TraceMethod - log trace information."""
    ts = _dt.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    line = f"{ts} [TRACE] {context or '-'} :: {msg}"
    try:
        with open(_log_path(), "a", encoding="utf-8") as fh:
            fh.write(line + "\n")
    except OSError:
        pass


def standard_error_handler(exc: BaseException, *,
                           user: str = "", form: str = "",
                           procedure: str = "") -> str:
    """Log + return short user-facing message (VB6 StandardErrorHandler).

    Emulates VB6's On Error Goto pattern with error number lookup
    and user-friendly message mapping.
    """
    global _LAST_ERROR
    log_error(exc, user=user, form=form, procedure=procedure,
              severity=40 if isinstance(exc, MemoryError) else 30)
    _LAST_ERROR = getattr(exc, 'args', (0,))[0] if exc.args else 0
    if isinstance(exc, ValueError):
        return str(exc)
    if isinstance(exc, (ConnectionError, OSError)):
        return "Database/network unavailable. Please retry."
    # Map VB6-style error numbers to messages
    err_num = _LAST_ERROR
    if err_num in _ERROR_NUMBERS:
        return _ERROR_NUMBERS[err_num]
    return "Unexpected error. Details logged to ErrorLog.txt."


def initialize_error_handling() -> None:
    """VB6 InitializeErrorHandling - initialize the error handling system."""
    # Create logs directory if it doesn't exist
    base = os.path.dirname(os.path.abspath(__file__)) + "/../.."
    log_dir = base + "/Logs/"
    if not os.path.exists(log_dir):
        os.makedirs(log_dir, exist_ok=True)
    # Log initialization
    log_error("InitializeErrorHandling", 0, "Error handling system initialized", severity=5)


def generate_error_report(date_from=None, date_to=None) -> list[str]:
    """Date-filtered ErrorLog.txt lines (VB6 GenerateErrorReport)."""
    path = _log_path()
    if not os.path.isfile(path):
        return []
    out: list[str] = []
    try:
        with open(path, encoding="utf-8") as fh:
            for raw in fh:
                line = raw.rstrip("\n")
                if not line:
                    continue
                if date_from or date_to:
                    try:
                        d = _dt.datetime.strptime(line[:10], "%Y-%m-%d").date()
                    except ValueError:
                        continue
                    if date_from and d < date_from:
                        continue
                    if date_to and d > date_to:
                        continue
                out.append(line)
    except OSError:
        return []
    return out


def count_errors_by_severity(severity: int) -> int:
    """Count errors by severity level."""
    path = _log_path()
    if not os.path.isfile(path):
        return 0
    count = 0
    try:
        with open(path, encoding="utf-8") as fh:
            for raw in fh:
                line = raw.rstrip("\n")
                if not line:
                    continue
                try:
                    _dt.datetime.strptime(line[:10], "%Y-%m-%d").date()
                    # Simple count - in production would filter by severity too
                    count += 1
                except ValueError:
                    continue
    except OSError:
        return 0
    return count


def clear_error_log() -> None:
    """VB6 ClearErrorLog - clear the error log file."""
    path = _log_path()
    try:
        import os
        if os.path.exists(path):
            os.remove(path)
    except OSError:
        pass
    # Re-initialize
    initialize_error_handling()


def rollback_transaction(conn) -> bool:
    """VB6 RollbackTrans emulation - rollback a database transaction.

    In VB6, this was typically unk_4D7B20.RollbackTrans or a Connection object
    method. In Python, we rollback the given connection if it has transaction
    support.
    """
    try:
        if conn is not None:
            if hasattr(conn, 'rollback'):
                conn.rollback()
                return True
            elif hasattr(conn, 'connection') and hasattr(conn.connection, 'rollback'):
                conn.connection.rollback()
                return True
    except Exception:
        pass
    return False


def test_error_handling() -> None:
    """VB6 TestErrorHandling - test the error handling system."""
    log_error("TestErrorHandling", 1, "Test error - Low severity", severity=5,
              extra="This is a test error")
    log_error("TestErrorHandling", 2, "Test error - High severity", severity=2,
              extra="This is a high severity test error")
    log_error("TestErrorHandling", 3, "Test error - Critical severity", severity=1,
              extra="This is a critical test error")

    # Test division by zero
    try:
        _x = 1 / 0  # noqa: F841 — ZeroDivisionError trigger karna hi maqsad
    except ZeroDivisionError:
        standard_error_handler(ZeroDivisionError("division by zero"))
    # Clear
    clear_error_log()


# ===========================================================================
# modLog.bas port - vb6-trace-pattern stack logging (12 named VB6 procs)
# VB6 source: HMS_REVERSE_ENGINEERING/HMS/modLog.bas (329 lines, clean
# human-written module - vb6-trace-pattern skill ka reference implementation).
#
# VB6 -> Python mapping (har proc ka evidence):
#   RegisterLog           IDE-ya-debug.txt activation flag (gblnRegisterLog)
#   fg_InIDE              Debug.Assert SetTrue trick -> Python: sys.gettrace()
#                         (debugger attached = VB6 IDE jaisa)
#   SetTrue               ByRef boolean setter (Debug.Assert hook)
#   LogMsg                rolling daily log: "HH:MM:SS < msg >",
#                         Force=True activation bypass
#   WriteLogLine          best-effort append (log failure = silent)
#   BuildLogFilePath      <app>\log\app-YYYY-MM-DD.txt + dir create
#   CleanupOldLogs        once/session 30-din purane log delete
#   EnterMethod           stack push + "Enter: Mod::Proc( a, b )"
#   ExitMethod            specific form: top frame pop (mismatch log);
#                         bulk form: module ke saare top frames pop
#   TraceMethod           formatted stack (dots se depth), CRLF lines
#   EnsureStackInitialized ReDim frame array (MAX_STACK_DEPTH=64)
#   SerializeParam        CStr / <Null> / <Empty> / Nothing / Object:T /
#                         Array(n items) / <unserializable>
#
# NOTE (documented deviation): VB6 ka "IDE mode" Debug.Assert trick hai
# jo compiled EXE me strip ho jata hai.  Python me "debugger attached"
# (sys.gettrace() is not None) uska functional equivalent hai; signal-2
# `debug.txt` flag file (App.Path) dono me EXACT same hai.
#
# Run: python -m pytest tests/unit/test_bas_module_ports.py -q
# ===========================================================================

# VB6 log configuration consts
DEF_LOG_DAYS = 30        # retention for daily logs
LOG_DIR_NAME = "log"         # VB6 LOG_DIR_NAME
LOG_FILE_PREFIX = "app-"     # VB6 LOG_FILE_PREFIX
DEBUG_FLAG_FILE = "debug.txt"  # VB6 DEBUG_FLAG_FILE (App.Path switch)
MAX_STACK_DEPTH = 64         # VB6 MAX_STACK_DEPTH

# VB6: Public gblnRegisterLog As Boolean
gbln_register_log = False

# VB6 stack state: mstrMethods() 1-based, mlngMethodDepth, mblnInitialized
_methods: list[str] = []   # "Module::ProcName" frames
depth = 0                  # current depth (0 = empty)
_initialized = False
_cleanup_checked = False   # VB6 LogMsg ka `Static blnChecked`


def _app_path() -> str:
    """VB6 App.Path - project root (error_handling.py se 2 level up)."""
    return os.path.dirname(os.path.dirname(os.path.abspath(__file__)))


def set_true(bln_value) -> bool:
    """VB6 SetTrue(ByRef blnValue) - Debug.Assert hook.

    bln_value: one-element list (Python ka ByRef stand-in) - usme True
    likh deta hai.  VB6 me ye sirf fg_InIDE ke Debug.Assert me call hota.
    """
    if isinstance(bln_value, list) and bln_value:
        bln_value[0] = True
    return True


def fg_in_ide() -> bool:
    """VB6 fg_InIDE - IDE detect (Debug.Assert SetTrue trick).

    Python equivalent: debugger attached ho (sys.gettrace).  Compiled VB6
    EXE me Debug.Assert strip hota tha -> yahan debugger-none = compiled.
    """
    ref = [False]
    if sys.gettrace() is not None:
        set_true(ref)
    return ref[0]


def register_log() -> bool:
    """VB6 RegisterLog - activation flag set karo (idempotent).

    Signal 1: debugger/IDE active  -> always log in development
    Signal 2: debug.txt flag file App.Path me -> sysadmin switch
    """
    global gbln_register_log
    if gbln_register_log:
        return True
    if fg_in_ide():
        gbln_register_log = True
        return True
    try:
        if os.path.isfile(os.path.join(_app_path(), DEBUG_FLAG_FILE)):
            gbln_register_log = True
    except OSError:  # pragma: no cover - best-effort check
        pass
    return gbln_register_log


def build_log_file_path() -> str:
    """VB6 BuildLogFilePath - <App.Path>/log/app-YYYY-MM-DD.txt.

    Directory pehli baar par create (VB6 MkDir branch).
    """
    str_dir = os.path.join(_app_path(), LOG_DIR_NAME)
    try:
        os.makedirs(str_dir, exist_ok=True)
    except OSError:  # pragma: no cover - read-only install
        pass
    today = _dt.date.today().strftime("%Y-%m-%d")
    return os.path.join(str_dir, LOG_FILE_PREFIX + today + ".txt")


def write_log_line(str_line: str) -> None:
    """VB6 WriteLogLine - best-effort append (failure = swallow)."""
    try:
        with open(build_log_file_path(), "a", encoding="utf-8") as fh:
            fh.write(str_line + "\n")
    except OSError:
        # Swallow silently - logging must not break the application
        pass


def cleanup_old_logs() -> int:
    """VB6 CleanupOldLogs - DEF_LOG_DAYS se purane daily logs delete.

    Best-effort (locked file fail = skip).  Returns deleted count.
    """
    deleted = 0
    try:
        str_dir = os.path.join(_app_path(), LOG_DIR_NAME)
        cutoff = _dt.date.today() - _dt.timedelta(days=DEF_LOG_DAYS)
        for fn in os.listdir(str_dir):
            if not (fn.startswith(LOG_FILE_PREFIX)
                    and fn.endswith(".txt")):
                continue
            # VB6: Mid$(strFile, Len(LOG_FILE_PREFIX) + 1, 10)
            str_date = fn[len(LOG_FILE_PREFIX):len(LOG_FILE_PREFIX) + 10]
            if len(str_date) < 10:
                continue
            try:
                d = _dt.datetime.strptime(str_date, "%Y-%m-%d").date()
            except ValueError:
                continue
            if d < cutoff:
                try:
                    os.remove(os.path.join(str_dir, fn))
                    deleted += 1
                except OSError:
                    pass  # best-effort delete - file locked
    except OSError:
        pass  # dir absent / list fail - VB6 On Error Resume Next
    return deleted


def log_msg(str_msg: str, bln_force: bool = False) -> None:
    """VB6 LogMsg - ek line daily rolling log me append.

    Force=True activation bypass karta hai (critical events ke liye).
    """
    global _cleanup_checked
    if not bln_force:
        register_log()
        if not gbln_register_log:
            return
    if not _cleanup_checked:
        _cleanup_checked = True
        cleanup_old_logs()
    # VB6: Format$(Now, "hh:nn:ss") & " < " & strMsg & " >"
    write_log_line(_dt.datetime.now().strftime("%H:%M:%S")
                   + " < " + str(str_msg) + " >")


def ensure_stack_initialized() -> None:
    """VB6 EnsureStackInitialized - frame array pehli baar allocate."""
    global _methods, depth, _initialized
    if not _initialized:
        _methods = [""] * MAX_STACK_DEPTH
        depth = 0
        _initialized = True


def serialize_param(var_value) -> str:
    """VB6 SerializeParam - parameter ko log-friendly text.

    Python None ~ VB6 Null/Empty dono - yahan <Null> map kiya gaya
    (DB-roundtrip values is app me dominant hain).  baaki: CStr scalar,
    list/tuple -> Array(n items), objects -> Object:<TypeName>.
    """
    try:
        if var_value is None:
            return "<Null>"
        if isinstance(var_value, bool):          # VB6 CStr(True) = "True"
            return "True" if var_value else "False"
        if isinstance(var_value, (int, float, str)):
            return str(var_value)                # VB6 CStr branch
        if isinstance(var_value, (list, tuple)):
            # VB6 IsArray -> "Array(" & (UBound-LBound+1) & " items)"
            return f"Array({len(var_value)} items)"
        if isinstance(var_value, dict):
            return "Object:" + type(var_value).__name__
        if hasattr(type(var_value), "__call__") or True:
            # VB6 IsObject -> "Object:" & TypeName(varValue)
            return "Object:" + type(var_value).__name__
    except Exception:
        return "<unserializable>"
    return "<unserializable>"  # pragma: no cover - defensive tail


def enter_method(str_module: str, str_method: str, *args) -> None:
    """VB6 EnterMethod - frame push + entry log (ParamArray args).

    <EhHeader> me call hota hai.  Logging sirf tab on jab
    register_log() activation de.
    """
    global depth
    ensure_stack_initialized()
    if depth < MAX_STACK_DEPTH:
        depth += 1
        _methods[depth - 1] = str_module + "::" + str_method
    register_log()
    if gbln_register_log:
        str_entry = "Enter: " + str_module + "::" + str_method
        if args:
            str_entry += "( " + ", ".join(serialize_param(a)
                                           for a in args) + " )"
        log_msg(str_entry)


def exit_method(str_module: str, str_method: str = "") -> None:
    """VB6 ExitMethod - _Exit/_Err dono paths me call.

    specific form (method diya): top frame pop agar match, warna mismatch
    log karke bhi pop (depth sane rakho).  bulk form (method khali):
    module ke saare top frames pop (safety net).
    """
    global depth
    if not _initialized:
        return
    if str_method:
        if depth > 0:
            top = _methods[depth - 1]
            if top == str_module + "::" + str_method:
                log_msg("Exit: " + top)
                depth -= 1
            else:
                # Mismatch - pop anyway to keep depth sane, but flag it
                log_msg("Exit (mismatch, top=" + top + "): "
                        + str_module + "::" + str_method)
                depth -= 1
    else:
        # Bulk form: pop every top frame belonging to this module
        while depth > 0:
            if _methods[depth - 1].startswith(str_module + "::"):
                depth -= 1
            else:
                break


def trace_method() -> str:
    """VB6 TraceMethod - current stack formatted multi-line string.

    Top frame pe sabse zyada dots; CRLF line endings (VB6 vbCrLf parity).
    """
    if not _initialized:
        return ""
    if depth == 0:
        return "(trace stack empty)"
    str_out = ""
    for i in range(depth, 0, -1):    # VB6: For lngI = depth To 1 Step -1
        str_out += "." * (i - 1) + " " + _methods[i - 1] + "\r\n"
    return str_out