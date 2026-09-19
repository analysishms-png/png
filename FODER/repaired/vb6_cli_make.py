"""VB6 CLI MAKE - /make + VSS-dialog auto-dismiss companion.
IDE ki zaroorat nahi. VB6.EXE /make chalao, saath mein us process ke
SourceSafe dialogs ko dismiss karte raho, EXE file ka wait karo.
"""
import os
import shutil
import subprocess
import time
from pywinauto import Application

SRC = r"C:\Users\LENOVO\Desktop\serialkey\vb6 code\repaired"
BUILD = os.path.join(SRC, "build")
VB6_EXE = r"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE"
EXE_OUT = os.path.join(BUILD, "HMS_build.exe")

FILES = ["modLog.bas", "frmPassword.frm", "MDIForm1.frm", "CsehDemoForm.frm"]

VBP = """Type=Exe
Reference=*\\G{00020430-0000-0000-C000-000000000046}#2.0#0#C:\\Windows\\SysWOW64\\stdole2.tlb#OLE Automation
Object={{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}}#2.0#0; MSCOMCTL.OCX
Form=frmPassword.frm
Form=MDIForm1.frm
Form=CsehDemoForm.frm
Module=modLog; modLog.bas
Startup="frmPassword"
HelpFile=""
Title="HMS"
ExeName32="HMS_build.exe"
Command32=""
Name="HMS"
HelpContextID="0"
CompatibleMode="0"
MajorVer=2
MinorVer=5
RevisionVer=6
AutoIncrementVer=0
ServerSupportFiles=0
VersionCompanyName="Analysis Software Services"
CompilationType=-1
OptimizationType=0
StartMode=0
Unattended=0
Retained=0
ThreadPerObject=0
MaxNumberOfThreads=1

[MS Transaction Server]
AutoRefresh = 1
"""


def log(m):
    print(m, flush=True)


def main():
    log("=== VB6 CLI MAKE ===")

    # fresh build folder
    if os.path.exists(BUILD):
        shutil.rmtree(BUILD, ignore_errors=True)
    os.makedirs(BUILD)
    for f in FILES:
        shutil.copy2(os.path.join(SRC, f), os.path.join(BUILD, f))
        log(f"  copied {f}")
    vbp = os.path.join(BUILD, "HMS_build.vbp")
    with open(vbp, "w", encoding="cp1252", newline="\r\n") as fh:
        fh.write(VBP)

    # /make launch (async - hum poll karenge)
    cmdline = (f'"{VB6_EXE}" /make "{vbp}" /outdir "{BUILD}" '
               f'/out "{os.path.join(BUILD, "compile.log")}"')
    log(f"launch: {cmdline}")
    proc = subprocess.Popen(cmdline)
    log(f"PID: {proc.pid}")

    # connect for dialog handling
    app = Application(backend="win32").connect(process=proc.pid, timeout=15)

    def pwins():
        try:
            return app.windows()
        except Exception:
            return []

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

    def click_by_text(w, kw):
        try:
            for c in w.descendants():
                if c.window_text().strip().lower() == kw.lower():
                    c.click()
                    return True
        except Exception:
            pass
        return False

    compile_error = None
    dismissed = 0

    deadline = time.time() + 150  # 2.5 min max
    while time.time() < deadline:
        # EXE bana?
        if os.path.exists(EXE_OUT):
            log(f"EXE BAN GAYA: {EXE_OUT} ({os.path.getsize(EXE_OUT):,} bytes)")
            break

        # dialogs dismiss
        handled = False
        for w in pwins():
            try:
                if not (w.is_visible() and w.is_enabled()) or w.class_name() != "#32770":
                    continue
                title = w.window_text()
                body = texts(w)
                if "SourceSafe" in title:
                    log(f"  [dismiss] VSS dialog: {title}")
                    if not click_by_text(w, "OK All"):
                        if not click_by_text(w, "&No"):
                            if not click_by_text(w, "Cancel"):
                                click_by_text(w, "OK")
                    dismissed += 1
                    handled = True
                elif title.startswith("Add to SourceSafe"):
                    log("  [dismiss] Add-to-SourceSafe -> Cancel")
                    click_by_text(w, "Cancel")
                    dismissed += 1
                    handled = True
                elif title.startswith("Source Code Control"):
                    log("  [dismiss] SCC Results -> Close")
                    click_by_text(w, "Close")
                    handled = True
                elif any(("Compile error" in s) or ("Run-time error" in s) for s in body):
                    compile_error = body
                    log(f"  [ERROR DIALOG] {body}")
                    click_by_text(w, "OK")
                    handled = True
                elif any("save" in s.lower() for s in body):
                    log("  [dismiss] save prompt -> &No")
                    click_by_text(w, "&No")
                    handled = True
            except Exception:
                continue
        if handled:
            time.sleep(1)
            continue

        # process dead aur EXE nahi?
        if proc.poll() is not None and not os.path.exists(EXE_OUT):
            log("VB6 process khatam, EXE nahi bana")
            break
        time.sleep(2)

    # cleanup
    try:
        if proc.poll() is None:
            proc.kill()
            log("(leftover VB6 killed)")
    except Exception:
        pass
    time.sleep(1)

    # compile.log report
    clog = os.path.join(BUILD, "compile.log")
    if os.path.exists(clog) and os.path.getsize(clog) > 0:
        log("\n--- compile.log ---")
        for ln in open(clog, encoding="cp1252", errors="replace").read().splitlines()[:20]:
            log(f"  {ln}")

    if os.path.exists(EXE_OUT):
        log(f"\n=== SUCCESS ===\nEXE: {EXE_OUT}\nSize: {os.path.getsize(EXE_OUT):,} bytes")
        log(f"Dismissed VSS dialogs: {dismissed}")
        return 0

    log(f"\n=== FAIL === (compile_error: {compile_error})")
    return 1


if __name__ == "__main__":
    exit(main())
