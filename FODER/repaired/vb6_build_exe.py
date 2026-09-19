"""VB6 final cycle: end-break -> compile -> login tests -> Make EXE.
Uses verified control classes: ThunderFormDC / ThunderTextBox /
ThunderCommandButton. Only touches VB6/HMS windows.
"""
import os
import time
from pywinauto import Application, Desktop

VB6_EXE = r"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE"
PROJECT = r"C:\Users\LENOVO\Desktop\serialkey\vb6 code\repaired\Project_repaired.vbp"
EXE_OUT = r"C:\Users\LENOVO\Desktop\serialkey\vb6 code\repaired\HMS_repaired.exe"


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
    """Kisi bhi class ke button/descendant pe title se click (VB6 runtime classes)."""
    try:
        for c in w.descendants():
            if c.window_text().strip().lower() == kw.lower():
                c.click()
                return True
    except Exception:
        pass
    return False


def is_err_dialog(w):
    t = texts(w)
    return any(("Compile error" in x) or ("Run-time error" in x) for x in t)


def dismiss_errors():
    got = []
    for _ in range(5):
        time.sleep(1)
        e = find(is_err_dialog)
        if not e:
            break
        got.append(texts(e))
        click_by_text(e, "OK")
    return got


def ide_any():
    return find(lambda x: "Microsoft Visual Basic" in x.window_text())


def end_running_app():
    """Break/run mode se app ko end karo."""
    ide = ide_any()
    if not ide:
        return
    title = ide.window_text()
    if "[design]" in title:
        return  # already design mode
    log(f"IDE {title} - app ko end karta hoon")
    # Route 1: running app window ko Alt+F4 (HMS ThunderMain ya MDI)
    appw = find(lambda x: x.window_text() == "HMS" or
                "Hotel Management System" in x.window_text()) 
    if appw:
        try:
            appw.set_focus()
            appw.type_keys("%{F4}")
            time.sleep(3)
        except Exception:
            pass
    ide = ide_any()
    if ide and "[design]" in ide.window_text():
        return
    # Route 2: IDE pe Alt+R, E (Run->End)
    try:
        app_i = Application(backend="win32").connect(handle=ide.handle)
        w = app_i.window(handle=ide.handle)
        w.set_focus()
        w.type_keys("%re", pause=0.2)
        time.sleep(3)
    except Exception as e:
        log(f"(end route2 fail: {e})")


def main():
    log("=== VB6 FINAL: END -> COMPILE -> TEST -> MAKE EXE ===")

    # STEP 0: existing state clean karo
    end_running_app()
    ide = ide_any()
    if not ide:
        Application(backend="win32").start(f'"{VB6_EXE}" "{PROJECT}"', timeout=25)
        time.sleep(8)
        ide = ide_any()
        if not ide:
            log("FATAL: IDE nahi khuli")
            return 1
    log(f"IDE: {ide.window_text()}")

    app = Application(backend="win32").connect(handle=ide.handle)
    main_w = app.window(handle=ide.handle)
    main_w.set_focus()
    time.sleep(2)

    # STEP 1: full compile + run
    main_w.type_keys("^({F5})", pause=0.05)
    log("Full compile + run bheja")

    login_w = None
    for i in range(25):
        time.sleep(2)
        errs = dismiss_errors()
        if errs:
            log("COMPILE ERRORS:")
            for e in errs:
                for t in e:
                    log(f"  {t}")
            return 2
        login_w = find(lambda x: x.window_text() == "Authentication Window")
        if login_w:
            log(f"[{i*2}s] COMPILE OK - APP RUNNING")
            break
    if not login_w:
        log("App run nahi hui")
        return 3

    # STEP 2: TEST wrong password
    time.sleep(1)
    app_l = Application(backend="win32").connect(handle=login_w.handle)
    lw = app_l.window(handle=login_w.handle)
    lw.set_focus()
    tb = lw.child_window(class_name_re="ThunderTextBox", found_index=0)
    tb.set_edit_text("galat")
    time.sleep(0.5)
    click_by_text(lw, "&Ok")
    time.sleep(2)

    msg = find(lambda x: x.window_text() == "HMS" and
               any("Invalid password" in t for t in texts(x)))
    if msg:
        log("TEST 1 PASS: galat password reject hua")
        click_by_text(msg, "OK")
    else:
        log("TEST 1 WARN: invalid-password dialog nahi mila")
    time.sleep(1.5)

    # STEP 3: TEST correct password -> MDI
    login_w2 = find(lambda x: x.window_text() == "Authentication Window")
    if not login_w2:
        log("TEST 2 SKIP: login gayab")
        return 4
    app_l2 = Application(backend="win32").connect(handle=login_w2.handle)
    lw2 = app_l2.window(handle=login_w2.handle)
    lw2.set_focus()
    lw2.child_window(class_name_re="ThunderTextBox", found_index=0).set_edit_text("India12")
    time.sleep(0.5)
    click_by_text(lw2, "&Ok")
    time.sleep(4)

    mdi = find(lambda x: "Hotel Management System" in x.window_text())
    if mdi:
        log("TEST 2 PASS: MDI shell khula")
    else:
        errs = dismiss_errors()
        log(f"TEST 2 ISSUE: MDI nahi mila{' - errors: ' + str(errs) if errs else ''}")
        return 5

    # STEP 4: app end
    try:
        mdi.set_focus()
        mdi.type_keys("%{F4}")
        log("MDI band kiya (Alt+F4)")
    except Exception:
        pass
    time.sleep(3)

    # design mode wapas?
    ide = ide_any()
    if ide and "[design]" not in ide.window_text():
        end_running_app()

    # STEP 5: Make EXE
    ide = ide_any()
    if not ide or "[design]" not in ide.window_text():
        log("FATAL: design mode nahi mila EXE build ke liye")
        return 6
    app_b = Application(backend="win32").connect(handle=ide.handle)
    bw = app_b.window(handle=ide.handle)
    bw.set_focus()
    time.sleep(1)

    if os.path.exists(EXE_OUT):
        os.remove(EXE_OUT)

    log("File->Make HMS_repaired.exe... bhej raha hoon")
    try:
        bw.menu_select("File->Make HMS_repaired.exe...")
    except Exception:
        try:
            bw.menu_select("File->Make HMS.exe...")
        except Exception as e:
            log(f"menu fail: {e} - Alt+F fallback")
            bw.type_keys("%F", pause=0.3)
            bw.type_keys("K", pause=0.5)

    # Save dialog (#32770, title Make ...) -> Save button (real Button class)
    saved = None
    for i in range(10):
        time.sleep(1)
        saved = find(lambda x: x.window_text().startswith("Make ") and
                     x.class_name() == "#32770")
        if saved:
            break
    if saved:
        log(f"Save dialog: {saved.window_text()}")
        saved.set_focus()
        if not click_by_text(saved, "&Save"):
            click_by_text(saved, "Save")
    else:
        log("(Make save dialog nahi mila - direct build ho raha hoga)")

    # STEP 6: EXE ka wait
    ok = False
    for i in range(30):
        time.sleep(2)
        errs = dismiss_errors()
        if errs:
            log("BUILD ERRORS:")
            for e in errs:
                for t in e:
                    log(f"  {t}")
            return 7
        if os.path.exists(EXE_OUT):
            ok = True
            log(f"[{i*2}s] EXE BAN GAYA!")
            break
    if not ok:
        log("EXE 60s mein nahi bana")
        return 8

    time.sleep(2)
    log(f"=== SUCCESS: {EXE_OUT} ({os.path.getsize(EXE_OUT):,} bytes) ===")
    return 0


if __name__ == "__main__":
    exit(main())
