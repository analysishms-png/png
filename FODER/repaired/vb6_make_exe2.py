"""EXE MAKER v2 - SourceSafe dialogs auto-dismiss ke saath.
Fresh instance -> VSS dialogs dismiss -> compile -> login test -> Make EXE.
"""
import os
import shutil
import time
from pywinauto import Application

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


def compile_and_make(members, startup, do_make):
    if os.path.exists(BUILD):
        shutil.rmtree(BUILD, ignore_errors=True)
    os.makedirs(BUILD, exist_ok=True)
    for f in FILES:
        shutil.copy2(os.path.join(SRC, f), os.path.join(BUILD, f))
    vbp = os.path.join(BUILD, "HMS_build.vbp")
    with open(vbp, "w", encoding="cp1252", newline="\r\n") as fh:
        fh.write(make_vbp(members, startup))

    app = Application(backend="win32").start(f'"{VB6_EXE}" "{vbp}"', timeout=30)
    time.sleep(8)

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

    def dismiss_popups():
        """VSS + error dialogs dismiss. Returns list of texts seen."""
        seen = []
        for _ in range(6):
            w = pfind(lambda x: x.class_name() == "#32770" and x.is_visible())
            if not w:
                break
            t = w.window_text()
            body = texts(w)
            if "SourceSafe" in t:
                # error dialog -> OK All / OK; add dialog -> Cancel
                seen.append(("VSS", t, body[:3]))
                if not click_by_text(w, "OK All"):
                    if not click_by_text(w, "&No"):
                        if not click_by_text(w, "Cancel"):
                            click_by_text(w, "OK")
            elif t.startswith("Add to SourceSafe"):
                seen.append(("VSS-Add", t, []))
                click_by_text(w, "Cancel")
            elif t.startswith("Source Code Control"):
                seen.append(("SCC", t, []))
                click_by_text(w, "Close")
            elif any(("Compile error" in s) or ("Run-time error" in s) for s in body):
                seen.append(("ERR", t, body))
                click_by_text(w, "OK")
            elif any("save" in s.lower() for s in body) and any(
                    "&No" in s for s in body):
                seen.append(("SAVE", t, []))
                click_by_text(w, "&No")
            else:
                break
            time.sleep(1.5)
        return seen

    # launch ke baad VSS dialogs clear karo
    for i in range(10):
        seen = dismiss_popups()
        if not seen:
            break
        log(f"launch dialogs: {[s[0] for s in seen]}")
        time.sleep(1)

    def find_ide():
        # Main IDE frame CLASS se dhoondo (title unreliable - chooser window bhi same title rakhta hai)
        return pfind(lambda w: w.is_visible() and w.is_enabled() and
                     w.class_name() in ("IDEOwner", "wndclass_desked_gsk"))

    # New Project chooser (agar VSS ne load cancel karwaya) -> Cancel
    chooser = pfind(lambda w: w.class_name() == "#32770" and
                    w.window_text() == "New Project" and w.is_visible())
    if chooser:
        log("New Project chooser dikha - Cancel")
        click_by_text(chooser, "Cancel")
        time.sleep(2)

    ide = find_ide()
    if not ide:
        for i in range(10):
            time.sleep(2)
            dismiss_popups()
            chooser = pfind(lambda w: w.class_name() == "#32770" and
                            w.window_text() == "New Project" and w.is_visible())
            if chooser:
                click_by_text(chooser, "Cancel")
                time.sleep(2)
            ide = find_ide()
            if ide:
                break
    if not ide:
        log("IDE nahi khuli")
        return False, ["no ide"]

    # Project load hua ya nahi? (title mein HMS hona chahiye)
    if "HMS" not in ide.window_text():
        log(f"IDE khuli par project load nahi ({ide.window_text()!r}) - File->Open Project")
        try:
            ide.menu_select("File->Open Project...")
            time.sleep(2)
            od = pfind(lambda w: w.class_name() == "#32770" and
                       ("Open Project" in w.window_text()))
            if od:
                od.set_focus()
                # File name combobox/edit mein path type
                typed = False
                for c in od.descendants():
                    if c.class_name() in ("Edit", "ComboBox", "ThunderRT6TextBox"):
                        try:
                            c.set_edit_text(vbp)
                            typed = True
                            break
                        except Exception:
                            continue
                time.sleep(0.5)
                if not click_by_text(od, "&Open"):
                    od.type_keys("{ENTER}")
                time.sleep(5)
                dismiss_popups()
        except Exception as e:
            log(f"(open project fail: {e})")
        ide = find_ide()

    log(f"IDE: {ide.window_text()}")
    ide.set_focus()
    time.sleep(2)
    ide.type_keys("^({F5})", pause=0.05)
    log("Full compile + run bheja")

    ok = False
    err_texts = []
    for i in range(25):
        time.sleep(2)
        dismiss_popups()
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
        try:
            ide.close()
            time.sleep(3)
            dismiss_popups()
        except Exception:
            pass
        return False, err_texts

    if not do_make:
        log("subset OK - instance band")
        for w in pwins():
            t = w.window_text()
            if t in ("Authentication Window", "HMS") or "Hotel Management" in t:
                try:
                    w.close()
                    time.sleep(1)
                except Exception:
                    pass
        try:
            i2 = pfind(lambda w: w.is_enabled() and "Microsoft Visual Basic" in w.window_text())
            if i2:
                i2.close()
                time.sleep(3)
                dismiss_popups()
        except Exception:
            pass
        return True, []

    # ===== MAKE EXE =====
    log("App band karke Make EXE...")
    for w in pwins():
        t = w.window_text()
        if t in ("Authentication Window", "HMS") or "Hotel Management" in t:
            try:
                w.close()
                time.sleep(1)
            except Exception:
                pass
    time.sleep(2)
    dismiss_popups()

    ide2 = pfind(lambda w: w.is_enabled() and "Microsoft Visual Basic" in w.window_text())
    if not ide2:
        log("design-mode IDE nahi mili")
        return True, ["design mode lost"]
    ide2.set_focus()
    time.sleep(2)
    if os.path.exists(EXE_OUT):
        os.remove(EXE_OUT)

    done = False
    for mname in ("File->Make HMS_build.exe...", "File->Make HMS.exe..."):
        try:
            ide2.menu_select(mname)
            done = True
            log(f"menu OK: {mname}")
            break
        except Exception:
            continue
    if not done:
        ide2.type_keys("%F", pause=0.4)
        ide2.type_keys("K", pause=0.6)
        log("Alt+F,K fallback")

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
    else:
        log("(Make save dialog nahi mila)")

    okf = False
    for i in range(30):
        time.sleep(2)
        dismiss_popups()
        if os.path.exists(EXE_OUT):
            okf = True
            log(f"[{i*2}s] EXE BAN GAYA!")
            break
    if not okf:
        log("EXE nahi bani; windows:")
        for w in pwins():
            log(f"  {w.window_text()} ({w.class_name()})")
        return True, ["exe not produced"]
    return True, []


def main():
    log("=== EXE BUILD v2 (VSS auto-dismiss) ===")
    subsets = [
        ("A", ["modLog.bas", "frmPassword.frm"], "frmPassword", False),
        ("B", ["modLog.bas", "frmPassword.frm", "MDIForm1.frm"], "frmPassword", False),
        ("C", FILES, "frmPassword", True),
    ]
    for label, members, startup, do_make in subsets:
        log(f"\n--- SUBSET {label}: {members} ---")
        ok, errs = compile_and_make(members, startup, do_make)
        if not ok:
            log(f"\n>>> CULPRIT subset {label} ({members[-1]}): {errs}")
            return 1
        if do_make and os.path.exists(EXE_OUT):
            log(f"\n=== EXE SUCCESS: {EXE_OUT} ({os.path.getsize(EXE_OUT):,} bytes) ===")
            return 0
    return 1


if __name__ == "__main__":
    exit(main())
