"""VB6 CLI MAKE v2.
STEP 1: Native-only EXE (frmPassword + modLog) - zero OCX dependency.
STEP 2: Full EXE (MDIForm1 + CsehDemoForm) - needs MSCOMCTL registered.
VSS dialogs auto-dismiss during builds. compile.log se errors report.
"""
import os
import shutil
import subprocess
import time
from pywinauto import Application

SRC = r"C:\Users\LENOVO\Desktop\serialkey\vb6 code\repaired"
BUILD = os.path.join(SRC, "build")
VB6_EXE = r"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE"

FILES = ["modLog.bas", "frmPassword.frm", "MDIForm1.frm", "CsehDemoForm.frm"]

VBP_NATIVE = (
    'Type=Exe\r\n'
    'Reference=*\\G{00020430-0000-0000-C000-000000000046}#2.0#0#C:\\Windows\\SysWOW64\\stdole2.tlb#OLE Automation\r\n'
    'Form=frmPassword.frm\r\n'
    'Module=modLog; modLog.bas\r\n'
    'Startup="frmPassword"\r\n'
    'Title="HMS"\r\n'
    'ExeName32="HMS_native.exe"\r\n'
    'Name="HMS"\r\n'
    'CompatibleMode="0"\r\n'
    '[MS Transaction Server]\r\n'
    'AutoRefresh = 1\r\n'
)

VBP_FULL = (
    'Type=Exe\r\n'
    'Reference=*\\G{00020430-0000-0000-C000-000000000046}#2.0#0#C:\\Windows\\SysWOW64\\stdole2.tlb#OLE Automation\r\n'
    'Object={831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0; MSCOMCTL.OCX\r\n'
    'Form=frmPassword.frm\r\n'
    'Form=MDIForm1.frm\r\n'
    'Form=CsehDemoForm.frm\r\n'
    'Module=modLog; modLog.bas\r\n'
    'Startup="frmPassword"\r\n'
    'Title="HMS"\r\n'
    'ExeName32="HMS_full.exe"\r\n'
    'Name="HMS"\r\n'
    'CompatibleMode="0"\r\n'
    '[MS Transaction Server]\r\n'
    'AutoRefresh = 1\r\n'
)


def log(m):
    print(m, flush=True)


def run_make(vbp_name, vbp_content, exe_name, needed_files):
    log(f"\n--- MAKE: {exe_name} ---")
    if os.path.exists(BUILD):
        shutil.rmtree(BUILD, ignore_errors=True)
    os.makedirs(BUILD)
    for f in needed_files:
        shutil.copy2(os.path.join(SRC, f), os.path.join(BUILD, f))
    vbp = os.path.join(BUILD, vbp_name)
    with open(vbp, "w", encoding="cp1252", newline="\r\n") as fh:
        fh.write(vbp_content)
    exe_out = os.path.join(BUILD, exe_name)

    cmdline = (f'"{VB6_EXE}" /make "{vbp}" /outdir "{BUILD}" '
               f'/out "{os.path.join(BUILD, "compile.log")}"')
    proc = subprocess.Popen(cmdline)
    log(f"PID {proc.pid} launched")
    time.sleep(3)

    try:
        app = Application(backend="win32").connect(process=proc.pid, timeout=10)
    except Exception:
        app = None

    def pwins():
        try:
            return app.windows() if app else []
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

    deadline = time.time() + 120
    err_body = None
    while time.time() < deadline:
        if os.path.exists(exe_out):
            time.sleep(2)
            log(f"EXE BAN GAYA: {exe_out} ({os.path.getsize(exe_out):,} bytes)")
            break
        for w in pwins():
            try:
                if not (w.is_visible() and w.class_name() == "#32770"):
                    continue
                title = w.window_text()
                body = texts(w)
                if "SourceSafe" in title or title.startswith("Add to SourceSafe"):
                    log(f"  [dismiss] {title}")
                    if not click_by_text(w, "OK All"):
                        if not click_by_text(w, "Cancel"):
                            click_by_text(w, "OK")
                elif any(("Compile error" in s) or ("could not be loaded" in s) or
                         ("Run-time error" in s) for s in body):
                    err_body = body
                    log(f"  [ERROR] {body[:4]}")
                    click_by_text(w, "OK")
                elif any("save" in s.lower() for s in body):
                    click_by_text(w, "&No")
            except Exception:
                continue
        if proc.poll() is not None and not os.path.exists(exe_out):
            log("process khatam, EXE nahi bana")
            break
        time.sleep(2)

    try:
        if proc.poll() is None:
            proc.kill()
    except Exception:
        pass

    clog = os.path.join(BUILD, "compile.log")
    if os.path.exists(clog) and os.path.getsize(clog) > 0:
        log("--- compile.log ---")
        for ln in open(clog, encoding="cp1252", errors="replace").read().splitlines()[:10]:
            if ln.strip():
                log(f"  {ln}")
    if err_body:
        log(f"--- error dialog --- {err_body[:6]}")
    return os.path.exists(exe_out), exe_out


def main():
    log("=== VB6 CLI MAKE v2 ===")

    # STEP 1 skip: native subset MDIForm1.Show reference ki wajah se invalid hai
    # (frmPassword MDIForm1 ko show karta hai - wo full project mein hi hai)

    # FULL build only
    ok2, exe2 = run_make("HMS_full.vbp", VBP_FULL, "HMS_full.exe", FILES)

    log("\n=== SUMMARY ===")
    log(f"  Full EXE (login+MDI+demo):  {'OK - ' + exe2 if ok2 else 'FAIL'}")
    return 0 if ok2 else 1


if __name__ == "__main__":
    exit(main())
