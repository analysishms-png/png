"""Isolated VB6 build with member bisect.
Fresh build folder + fresh VB6 instance per subset. Compile each subset:
A = modLog + frmPassword, B = A + MDIForm1, C = B + CsehDemoForm (full).
Reveals exactly which member adds the duplicate declaration.
"""
import os
import shutil
import time
from pywinauto import Application, Desktop

SRC = r"C:\Users\LENOVO\Desktop\serialkey\vb6 code\repaired"
BUILD = os.path.join(SRC, "build")
VB6_EXE = r"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE"

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


def wins():
    try:
        return Desktop(backend="win32").windows()
    except Exception:
        return []


def find(pred):
    for w in wins():
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


def make_vbp(members, startup):
    lines = []
    if "modLog.bas" in members:
        lines.append("Module=modLog; modLog.bas")
    for f in ("frmPassword.frm", "MDIForm1.frm", "CsehDemoForm.frm"):
        if f in members:
            name = f[:-4]
            lines.append(f"Form={f}")
    return VBP_TEMPLATE.format(members="\n".join(lines), startup=startup)


def compile_subset(label, members, startup):
    log(f"\n--- SUBSET {label}: {members} (startup={startup}) ---")
    # fresh folder
    if os.path.exists(BUILD):
        shutil.rmtree(BUILD, ignore_errors=True)
    os.makedirs(BUILD, exist_ok=True)
    for f in FILES:
        shutil.copy2(os.path.join(SRC, f), os.path.join(BUILD, f))
    vbp = os.path.join(BUILD, "HMS_build.vbp")
    with open(vbp, "w", encoding="cp1252", newline="\r\n") as fh:
        fh.write(make_vbp(members, startup))

    # fresh VB6 instance
    app = Application(backend="win32").start(f'"{VB6_EXE}" "{vbp}"', timeout=30)
    pid = app.process
    log(f"VB6 instance PID={pid}")
    time.sleep(8)

    ide = None
    for i in range(15):
        ide = find(lambda x: "Microsoft Visual Basic" in x.window_text() and x.is_enabled())
        if ide:
            break
        time.sleep(2)
    if not ide:
        log("IDE nahi khuli!")
        return False, ["IDE not found"]

    app2 = Application(backend="win32").connect(handle=ide.handle)
    w = app2.window(handle=ide.handle)
    w.set_focus()
    time.sleep(2)
    w.type_keys("^({F5})", pause=0.05)
    log("Full compile bheja")

    # result wait
    outcome = "unknown"
    err_texts = []
    for i in range(15):
        time.sleep(2)
        # error dialog?
        errs = []
        for _ in range(3):
            e = None
            for x in wins():
                t = texts(x)
                if any(("Compile error" in s) or ("Run-time error" in s) or
                       ("Duplicate declaration" in s) for s in t):
                    e = x
                    break
            if not e:
                break
            errs.append(texts(e))
            click_by_text(e, "OK")
            time.sleep(1)
        if errs:
            outcome = "error"
            err_texts = errs[0]
            break
        # subset A ke liye login form = compile+run success indicator
        if startup == "frmPassword":
            login = find(lambda x: x.window_text() == "Authentication Window")
            if login:
                outcome = "ok"
                break
        else:
            # B/C subsets: startup frmPassword hi hai - wahi indicator
            login = find(lambda x: x.window_text() == "Authentication Window")
            if login:
                outcome = "ok"
                break

    log(f"SUBSET {label} RESULT: {outcome}")
    if err_texts:
        for t in err_texts:
            log(f"  {t}")
    # instance band karo (no changes made - clean close)
    try:
        app2.window(handle=ide.handle).close()
        time.sleep(3)
        # "save changes?" prompt aaye to No
        for x in wins():
            if x.class_name() == "#32770" and any(
                    "save" in t.lower() for t in texts(x)):
                click_by_text(x, "&No")
                time.sleep(1)
    except Exception:
        pass
    time.sleep(2)
    return outcome == "ok", err_texts


def main():
    log("=== ISOLATED BUILD + BISECT ===")
    results = {}
    subsets = [
        ("A", ["modLog.bas", "frmPassword.frm"], "frmPassword"),
        ("B", ["modLog.bas", "frmPassword.frm", "MDIForm1.frm"], "frmPassword"),
        ("C", FILES, "frmPassword"),
    ]
    for label, members, startup in subsets:
        ok, errs = compile_subset(label, members, startup)
        results[label] = (ok, errs)
        if not ok:
            log(f"\n>>> CULPRIT FOUND: subset {label} fail - "
                f"naya member: {members[-1]}")
            break
        # running app ko band karo before next subset
        for x in wins():
            t = x.window_text()
            if t == "Authentication Window" or "Hotel Management" in t or t == "HMS":
                try:
                    x.close()
                    time.sleep(1)
                except Exception:
                    pass

    log("\n=== BISECT SUMMARY ===")
    for k, (ok, errs) in results.items():
        log(f"  {k}: {'OK' if ok else 'FAIL - ' + str(errs[:2])}")


if __name__ == "__main__":
    main()
