"""EXE MAKER - process-scoped (aapka khula VB6 IDE touch nahi hoga).
Fresh VB6 instance + fresh build folder. Subset bisect + Make EXE.
A = modLog+frmPassword, B = A+MDIForm1, C = full (+CsehDemoForm).
C pe compile+run pass hua to seedha File->Make HMS_build.exe.
"""
import os
import shutil
import time
from pywinauto import Application, Desktop

SRC = r"C:\Users\LENOVO\Desktop\serialkey\vb6 code\repaired"
BUILD = os.path.join(SRC, "build")
VB6_EXE = r"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE"
EXE_OUT = os.path.join(BUILD, "HMS_build.exe")

FILES = ["modLog.bas", "frmPassword.frm", "MDIForm1.frm", "CsehDemoForm.frm"]

VBP_TEMPLATE = """Type=Exe
Reference=*\\G{{00020430-0000-0000-C000-000000000046}}#2.0#0#C:\\Windows\\SysWOW64\\stdole2.tlb#OLE Automation
Object={{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}}#2.0#0; MSCOMCTL.OCX
{members}
Startup="{startup}"
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


def make_vbp(members, startup):
    lines = []
    if "modLog.bas" in members:
        lines.append("Module=modLog; modLog.bas")
    for f in ("frmPassword.frm", "MDIForm1.frm", "CsehDemoForm.frm"):
        if f in members:
            lines.append(f"Form={f}")
    return VBP_TEMPLATE.format(members="\n".join(lines), startup=startup)


def compile_and_maybe_make(members, startup, do_make):
    """Fresh instance me compile; ok ho aur do_make ho to EXE banao.
    Returns (ok, err_texts)."""
    if os.path.exists(BUILD):
        shutil.rmtree(BUILD, ignore_errors=True)
    os.makedirs(BUILD, exist_ok=True)
    for f in FILES:
        shutil.copy2(os.path.join(SRC, f), os.path.join(BUILD, f))
    vbp = os.path.join(BUILD, "HMS_build.vbp")
    with open(vbp, "w", encoding="cp1252", newline="\r\n") as fh:
        fh.write(make_vbp(members, startup))

    app = Application(backend="win32").start(f'"{VB6_EXE}" "{vbp}"', timeout=30)
    time.sleep(10)

    # IS PROCESS ki windows only (desktop-scan nahi - galat instance pe na chale)
    def pwins():
        try:
            return app.windows()
        except Exception:
            return []

    def pfind(pred):
        for w in pwins():
            try:
                if pred(w):
                    return w
            except Exception:
                continue
        return None

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

    ide = pfind(lambda w: w.is_enabled() and "Microsoft Visual Basic" in w.window_text())
    if not ide:
        for i in range(12):
            time.sleep(2)
            ide = pfind(lambda w: w.is_enabled() and "Microsoft Visual Basic" in w.window_text())
            if ide:
                break
    if not ide:
        log("IDE nahi khuli; is process ki windows:")
        for w in pwins():
            log(f"  {w.window_text()} ({w.class_name()})")
        return False, ["IDE not found"]
    log(f"IDE: {ide.window_text()}")
    ide.set_focus()
    time.sleep(2)

    ide.type_keys("^({F5})", pause=0.05)
    log("Full compile + run bheja")

    ok = False
    err_texts = []
    for i in range(25):
        time.sleep(2)
        # error dialog (process-scoped)
        e = pfind(lambda w: any(("Compile error" in t) or ("Run-time error" in t)
                                for t in texts(w)))
        if e:
            err_texts = texts(e)
            click_by_text(e, "OK")
            break
        login = pfind(lambda w: w.window_text() == "Authentication Window")
        if login:
            log(f"[{i*2}s] COMPILE OK - APP RUNNING")
            ok = True
            break
    if not ok:
        log(f"FAIL: {members}")
        for t in err_texts:
            log(f"  {t}")
        # close instance
        try:
            ide.close()
            time.sleep(2)
        except Exception:
            pass
        return False, err_texts

    if not do_make:
        log("subset OK (app running) - instance band karke agla subset")
        # app + instance close
        for w in pwins():
            t = w.window_text()
            if t == "Authentication Window" or "Hotel Management" in t:
                try:
                    w.close()
                    time.sleep(1)
                except Exception:
                    pass
        try:
            ide2 = pfind(lambda w: w.is_enabled() and "Microsoft Visual Basic" in w.window_text())
            if ide2:
                ide2.close()
                time.sleep(3)
        except Exception:
            pass
        return True, []

    # ===== MAKE EXE =====
    log("APP RUNNING me the - pehle app band karo, phir Make...")
    for w in pwins():
        t = w.window_text()
        if t == "Authentication Window" or "Hotel Management" in t or t == "HMS":
            try:
                w.close()
                time.sleep(1)
            except Exception:
                pass
    time.sleep(2)

    ide2 = pfind(lambda w: w.is_enabled() and "Microsoft Visual Basic" in w.window_text())
    if not ide2:
        log("design-mode IDE wapas nahi mili")
        return True, ["design mode lost"]
    ide2.set_focus()
    time.sleep(2)
    if os.path.exists(EXE_OUT):
        os.remove(EXE_OUT)

    made_dialog = False
    for mname in ("File->Make HMS_build.exe...", "File->Make HMS.exe..."):
        try:
            ide2.menu_select(mname)
            made_dialog = True
            log(f"menu OK: {mname}")
            break
        except Exception as e:
            log(f"menu '{mname}' fail: {e}")
    if not made_dialog:
        ide2.type_keys("%F", pause=0.4)
        ide2.type_keys("K", pause=0.6)
        log("Alt+F,K fallback bheja")

    # save dialog (#32770, 'Make ...' title)
    saved = None
    for i in range(10):
        time.sleep(1)
        saved = pfind(lambda w: w.class_name() == "#32770" and
                      w.window_text().startswith("Make "))
        if saved:
            break
    if saved:
        log(f"Save dialog: {saved.window_text()}")
        saved.set_focus()
        time.sleep(0.5)
        if not click_by_text(saved, "&Save"):
            click_by_text(saved, "Save")
        log("Save clicked")
    else:
        log("(save dialog nahi dikha - check windows)")
        for w in pwins():
            log(f"  {w.window_text()} ({w.class_name()})")

    # EXE file ka wait
    okf = False
    for i in range(30):
        time.sleep(2)
        if os.path.exists(EXE_OUT):
            okf = True
            log(f"[{i*2}s] EXE BAN GAYA!")
            break
    if not okf:
        log("EXE file nahi bani; is process ki windows:")
        for w in pwins():
            log(f"  {w.window_text()} ({w.class_name()})")
        return True, ["exe not produced"]
    return True, []


def main():
    log("=== ISOLATED EXE BUILD (process-scoped) ===")
    subsets = [
        ("A", ["modLog.bas", "frmPassword.frm"], "frmPassword", False),
        ("B", ["modLog.bas", "frmPassword.frm", "MDIForm1.frm"], "frmPassword", False),
        ("C", FILES, "frmPassword", True),
    ]
    for label, members, startup, do_make in subsets:
        log(f"\n--- SUBSET {label}: {members} ---")
        ok, errs = compile_and_maybe_make(members, startup, do_make)
        if not ok:
            log(f"\n>>> CULPRIT: subset {label} (naya member: {members[-1]})")
            log(f">>> ERRORS: {errs}")
            return 1
        if do_make and os.path.exists(EXE_OUT):
            log(f"\n=== EXE SUCCESS: {EXE_OUT} ({os.path.getsize(EXE_OUT):,} bytes) ===")
            return 0
    return 1


if __name__ == "__main__":
    exit(main())
