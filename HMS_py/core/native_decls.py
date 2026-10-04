"""Module1.bas (VB6) port - Win32 / vendor-DLL declare catalog.

VB6 source: HMS_REVERSE_ENGINEERING/HMS/Module1.bas (174 lines).
Ye module me **86 `Private Declare` statements** hain aur **0 procs** -
matlab yahan koi executable VB6 logic nahi, sirf FFI prototypes jo doosre
forms/modules use karte hain.  Isliye iska Python port ek **declaration
catalog** hai: kaunsa symbol kis DLL se aata hai, aur Python me uska
equivalent / blocked status kya hai.

DLL classes (VB6 declare list se derive):
  HARDWARE_DLLS  btlock57L.DLL  - Godrej/BT physical lock reader
                                   (SerialNo/Read_Guest_Card/PowerSwitch/
                                   Lift/Reader_Alarm) -> HW, Python port
                                   BLOCKED (DLL + device chahiye)
  VENDOR_DLLS    zip32.dll / unzip32.dll (Info-ZIP), p2smon.dll
                  (Crystal Reports p2smon) -> optional vendor libs;
                  Python me zipfile / report engine replace karte hain
  WIN32_DLLS     user32, kernel32, gdi32, advapi32, Shell32, wininet,
                  winmm, wsock32, iphlpapi, netapi32, comdlg32

Run: python -m pytest tests/unit/test_bas_module_ports.py -q
"""
from __future__ import annotations

# (symbol, dll, kind) - Module1.bas ke 86 Private Declare, order preserved
DECLARATIONS: tuple[tuple[str, str, str], ...] = (
    ("GetOpenFileName", "comdlg32.dll", "Function"),
    ("SHGetPathFromIDListA", "Shell32.dll", "Sub"),
    ("SHGetSpecialFolderLocation", "Shell32.dll", "Sub"),
    ("InternetGetConnectedState", "wininet.dll", "Sub"),
    ("SerialNo_FromNow", "btlock57L.DLL", "Sub"),
    ("Read_Data", "btlock57L.DLL", "Sub"),
    ("Write_Data", "btlock57L.DLL", "Sub"),
    ("Read_Guest_PowerSwitch", "btlock57L.DLL", "Sub"),
    ("Write_Guest_PowerSwitch", "btlock57L.DLL", "Sub"),
    ("Read_Guest_Lift", "btlock57L.DLL", "Sub"),
    ("Write_Guest_Lift", "btlock57L.DLL", "Sub"),
    ("Reader_Alarm", "btlock57L.DLL", "Sub"),
    ("Write_Guest_Card", "btlock57L.DLL", "Sub"),
    ("Read_Guest_Card", "btlock57L.DLL", "Sub"),
    ("SetLayeredWindowAttributes", "user32", "Sub"),
    ("SetPixel", "gdi32", "Function"),
    ("GetTempPath", "kernel32", "Function"),
    ("GetHandleInformation", "kernel32", "Function"),
    ("GetWindowLong", "user32", "Function"),
    ("ZpArchive", "zip32.dll", "Sub"),
    ("ZpGetOptions", "zip32.dll", "Sub"),
    ("ZpSetOptions", "zip32.dll", "Sub"),
    ("ZpInit", "zip32.dll", "Sub"),
    ("UzpVersion2", "unzip32.dll", "Sub"),
    ("Wiz_SingleEntryUnzip", "unzip32.dll", "Sub"),
    ("GetKeyState", "user32", "Function"),
    ("GetKeyboardLayoutName", "user32", "Function"),
    ("MapVirtualKeyEx", "user32", "Function"),
    ("GetVersionEx", "kernel32", "Function"),
    ("VkKeyScan", "user32", "Function"),
    ("SendInput", "user32", "Sub"),
    ("GetCurrentThreadId", "kernel32", "Function"),
    ("NetMessageBufferSend", "Netapi32.dll", "Sub"),
    ("NetWkstaGetInfo", "Netapi32.dll", "Function"),
    ("lstrcpynW", "kernel32", "Sub"),
    ("lstrcpyn", "kernel32", "Function"),
    ("lstrcpyW", "kernel32", "Sub"),
    ("NetServerEnum", "Netapi32.dll", "Sub"),
    ("GetUserName", "advapi32.dll", "Function"),
    ("lstrlenW", "kernel32", "Sub"),
    ("NetApiBufferFree", "netapi32", "Sub"),
    ("NetUserEnum", "netapi32", "Sub"),
    ("RegOpenKey", "advapi32.dll", "Function"),
    ("SystemParametersInfo", "user32", "Function"),
    ("mciSendString", "winmm.dll", "Function"),
    ("sndPlaySound", "winmm.dll", "Function"),
    ("GetCurrentProcessId", "kernel32", "Function"),
    ("RegisterServiceProcess", "kernel32", "Sub"),
    ("IsWindowEnabled", "user32", "Function"),
    ("IsWindowVisible", "user32", "Function"),
    ("PostMessage", "user32", "Function"),
    ("FindWindow", "user32", "Function"),
    ("IsZoomed", "user32", "Function"),
    ("IsWindow", "user32", "Function"),
    ("IsIconic", "user32", "Function"),
    ("IsChild", "user32", "Function"),
    ("GetWindowText", "user32", "Function"),
    ("GetWindowTextLength", "user32", "Function"),
    ("EnumWindows", "user32", "Function"),
    ("Sleep", "kernel32", "Sub"),
    ("InternetGetConnectedStateEx", "wininet.dll", "Sub"),
    ("lstrlen", "kernel32", "Function"),
    ("inet_ntoa", "wsock32.dll", "Sub"),
    ("inet_addr", "wsock32.dll", "Sub"),
    ("GetRTTAndHopCount", "iphlpapi.dll", "Sub"),
    ("lstrcpy", "kernel32", "Function"),
    ("CopyMemory", "kernel32", "Sub"),
    ("gethostbyname", "wsock32", "Sub"),
    ("InternetGetConnectedState", "wininet", "Sub"),
    ("ShellExecuteA", "Shell32.dll", "Sub"),
    ("GetCursorPos", "user32", "Function"),
    ("CreateRoundRectRgn", "gdi32", "Function"),
    ("SetWindowRgn", "user32", "Function"),
    ("RegCloseKey", "advapi32.dll", "Function"),
    ("RegSetValueEx", "advapi32.dll", "Function"),
    ("RegQueryValueEx", "advapi32.dll", "Function"),
    ("RegOpenKeyEx", "advapi32.dll", "Function"),
    ("SetWindowLong", "user32", "Function"),
    ("CallWindowProc", "user32", "Function"),
    ("GetMenuItemCount", "user32", "Function"),
    ("DrawMenuBar", "user32", "Function"),
    ("RemoveMenu", "user32", "Function"),
    ("GetSystemMenu", "user32", "Function"),
    ("GetComputerName", "kernel32", "Function"),
    ("SetWindowPos", "user32", "Function"),
    ("CreateFieldDefFile", "p2smon.dll", "Sub"),
)

VB6_DECLARE_COUNT = 86   # Module1.bas `grep -c "Private Declare"`

HARDWARE_DLLS = frozenset({"btlock57L.DLL"})
VENDOR_DLLS = frozenset({"zip32.dll", "unzip32.dll", "p2smon.dll"})
# jinhe Python ne pehle se replace kar diya (core modules)
PYTHON_EQUIVALENTS = {
    "GetOpenFileName": "core.common_dialog.get_open_file_name",
    "GetTempPath": "tempfile.gettempdir (core.picture.get_temp_path)",
    "SetLayeredWindowAttributes": "core.picture.set_window_opacity",
    "GetWindowLong": "PyQt6 setWindowFlag/setWindowOpacity",
    "SetWindowLong": "PyQt6 setWindowFlag/setWindowOpacity",
    "SetWindowPos": "PyQt6 QWidget.move/resize",
    "SetWindowRgn": "PyQt6 mask / stylesheet border-radius",
    "Sleep": "time.sleep",
    "CopyMemory": "bytes / memoryview (Python-native)",
    "GetUserName": "getpass.getuser / getpass.getuser",
    "GetComputerName": "platform.node",
    "GetCursorPos": "PyQt6 QCursor.pos",
    "ShellExecuteA": "os.startfile (win) / webbrowser.open",
    "sndPlaySound": "winsound.PlaySound / Qt QSoundEffect",
    "mciSendString": "winsound / Qt multimedia",
    "InternetGetConnectedState": "socket.create_connection probe",
    "InternetGetConnectedStateEx": "socket.create_connection probe",
    "RegOpenKey": "winreg.OpenKey",
    "RegOpenKeyEx": "winreg.OpenKey",
    "RegCloseKey": "winreg.CloseKey",
    "RegSetValueEx": "winreg.SetValueEx",
    "RegQueryValueEx": "winreg.QueryValueEx",
    "ZpArchive": "zipfile.ZipFile.write",
    "ZpInit": "zipfile.ZipFile",
    "ZpGetOptions": "zipfile options",
    "ZpSetOptions": "zipfile options",
    "UzpVersion2": "zipfile / shutil.unpack_archive",
    "Wiz_SingleEntryUnzip": "zipfile.ZipFile.extract",
    "GetKeyState": "PyQt6 QGuiApplication.keyboardModifiers",
    "VkKeyScan": "PyQt6 QKeySequence / QtGui QKeyEvent",
    "MapVirtualKeyEx": "PyQt6 QKeySequence",
    "SendInput": "PyQt6 QKeyEvent / qutip input injection",
    "FindWindow": "PyQt6 QApplication.topLevelWidgets",
    "EnumWindows": "PyQt6 QApplication.topLevelWidgets",
    "IsWindow": "PyQt6 QWidget is a live wrapper",
    "IsWindowVisible": "PyQt6 QWidget.isVisible",
    "IsWindowEnabled": "PyQt6 QWidget.isEnabled",
    "IsZoomed": "PyQt6 QWidget.isMaximized",
    "IsIconic": "PyQt6 QWidget.isMinimized",
    "IsChild": "PyQt6 QWidget.isAncestorOf",
    "GetWindowText": "PyQt6 QWidget.windowTitle",
    "GetWindowTextLength": "len(QWidget.windowTitle())",
    "PostMessage": "PyQt6 signal/slot (queued connection)",
    "GetVersionEx": "platform.platform",
    "GetCurrentThreadId": "threading.get_ident",
    "GetCurrentProcessId": "os.getpid",
    "GetHandleInformation": "(no Python equivalent - Qt owns handles)",
    "SetPixel": "PyQt6 QImage.setPixelColor",
    "CreateRoundRectRgn": "Qt stylesheet border-radius",
    "GetMenuItemCount": "PyQt6 QMenu.actions",
    "DrawMenuBar": "PyQt6 QMainWindow.menuBar update",
    "RemoveMenu": "PyQt6 QMenu.removeAction",
    "GetSystemMenu": "PyQt6 QMenu (window menu bar)",
    "lstrcpy": "str slicing",
    "lstrcpyW": "str slicing",
    "lstrcpyn": "str slicing",
    "lstrcpynW": "str slicing",
    "lstrlen": "len",
    "lstrlenW": "len",
    "inet_addr": "socket.inet_aton / ipaddress",
    "inet_ntoa": "socket.inet_ntoa / ipaddress",
    "gethostbyname": "socket.gethostbyname",
    "CreateFieldDefFile": "core.reports (Crystal replacement)",
}


def declarations() -> tuple[tuple[str, str, str], ...]:
    """Module1.bas ke saare (symbol, dll, kind) tuples."""
    return DECLARATIONS


def declare_count() -> int:
    return len(DECLARATIONS)


def by_dll() -> dict[str, list[str]]:
    """DLL name -> uske symbols."""
    out: dict[str, list[str]] = {}
    for sym, dll, _kind in DECLARATIONS:
        out.setdefault(dll.lower(), []).append(sym)
    return out


def _dll_of(name: str) -> str:
    for sym, dll, _k in DECLARATIONS:
        if sym == name:
            return dll
    return ""


def status(name: str) -> str:
    """Symbol ka Python-port status.

    'hw-blocked'  -> physical device/DLL chahiye (BT lock reader)
    'vendor-dll'  -> optional vendor lib; Python stdlib se replace
    'portable'    -> Python me direct equivalent available
    """
    dll = _dll_of(name)
    if not dll:
        return "unknown"
    if dll in HARDWARE_DLLS:
        return "hw-blocked"
    if dll in VENDOR_DLLS:
        return "vendor-dll"
    return "portable"


def blocked_symbols() -> list[str]:
    """HW/DLL me atke VB6 symbols (Port nahi ho sakte)."""
    return [s for s, d, _k in DECLARATIONS if d in HARDWARE_DLLS]


def hardware_dlls() -> frozenset:
    return HARDWARE_DLLS


def vendor_dlls() -> frozenset:
    return VENDOR_DLLS


def equivalent(name: str) -> str | None:
    """Python equivalent path (na mile to None)."""
    return PYTHON_EQUIVALENTS.get(name)


def coverage() -> dict[str, int]:
    """{'total', 'portable', 'vendor', 'hw_blocked', 'with_equivalent'}."""
    total = len(DECLARATIONS)
    hw = sum(1 for s, _d, _k in DECLARATIONS if status(s) == "hw-blocked")
    vend = sum(1 for s, _d, _k in DECLARATIONS if status(s) == "vendor-dll")
    eq = sum(1 for s, _d, _k in DECLARATIONS if equivalent(s))
    return {"total": total,
            "portable": total - hw - vend,
            "vendor": vend,
            "hw_blocked": hw,
            "with_equivalent": eq}
