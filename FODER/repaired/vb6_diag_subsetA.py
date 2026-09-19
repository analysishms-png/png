"""Diagnose subset A: compile ke baad har process-window ka text dump."""
import os
import shutil
import time
from pywinauto import Application

SRC = r"C:\Users\LENOVO\Desktop\serialkey\vb6 code\repaired"
BUILD = os.path.join(SRC, "build")
VB6_EXE = r"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE"
FILES = ["modLog.bas", "frmPassword.frm"]

VBP = """Type=Exe
Reference=*\\G{00020430-0000-0000-C000-000000000046}#2.0#0#C:\\Windows\\SysWOW64\\stdole2.tlb#OLE Automation
Form=frmPassword.frm
Module=modLog; modLog.bas
Startup="frmPassword"
Name="HMS"
ExeName32="HMS_build.exe"
CompatibleMode="0"
[MS Transaction Server]
AutoRefresh = 1
"""


def log(m):
    print(m, flush=True)


if os.path.exists(BUILD):
    shutil.rmtree(BUILD, ignore_errors=True)
os.makedirs(BUILD)
for f in FILES:
    shutil.copy2(os.path.join(SRC, f), os.path.join(BUILD, f))
with open(os.path.join(BUILD, "HMS_build.vbp"), "w", encoding="cp1252", newline="\r\n") as fh:
    fh.write(VBP)

app = Application(backend="win32").start(f'"{VB6_EXE}" "{os.path.join(BUILD, "HMS_build.vbp")}"', timeout=30)
time.sleep(10)


def pwins():
    return app.windows()


def texts(w):
    out = []
    try:
        for st in w.descendants():
            t = st.window_text()
            if t:
                out.append(t)
    except Exception:
        pass
    return out


ide = None
for w in pwins():
    if "Microsoft Visual Basic" in w.window_text() and w.is_enabled():
        ide = w
        break
if not ide:
    log("IDE nahi mili; windows:")
    for w in pwins():
        log(f"  {w.window_text()} ({w.class_name()})")
    exit(1)

log(f"IDE: {ide.window_text()}")
ide.set_focus()
time.sleep(2)
ide.type_keys("^({F5})", pause=0.05)
log("Ctrl+F5 bheja... 12s wait")
time.sleep(12)

log("\n=== PROCESS WINDOWS DUMP ===")
for w in pwins():
    t = w.window_text()
    cls = w.class_name()
    en = "?"
    try:
        en = "E" if w.is_enabled() else "D"
    except Exception:
        pass
    vis = "?"
    try:
        vis = "V" if w.is_visible() else "H"
    except Exception:
        pass
    log(f"[{en}{vis}] {t!r} ({cls})")
    for x in texts(w)[:10]:
        log(f"      | {x[:100]}")
