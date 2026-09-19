"""VB6 one-shot: open project -> full compile -> run tests -> build EXE.
windows-app-control skill ka full workflow. Sirf VB6/HMS windows touch karta hai.
"""
import time
from pywinauto import Application, Desktop

PROJECT = r"C:\Users\LENOVO\Desktop\serialkey\vb6 code\repaired\Project_repaired.vbp"
VB6_EXE = r"C:\Program Files (x86)\Microsoft Visual Studio\VB98\VB6.EXE"
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
        for st in w.descendants(class_name="Static"):
            t = st.window_text()
            if t:
                out.append(t)
    except Exception:
        pass
    return out


def click_btn(w, kw):
    try:
        for b in w.descendants(class_name="Button"):
            if kw.lower() in b.window_text().lower():
                b.click()
                return True
    except Exception:
        pass
    return False


def is_error_dialog(w):
    t = texts(w)
    return any(("Compile error" in x) or ("Run-time error" in x) for x in t)


def dismiss_errors():
    """Error dialogs read karke OK karo; return list of error texts."""
    got = []
    for _ in range(5):
        time.sleep(1)
        e = find(is_error_dialog)
        if not e:
            break
        got.append(texts(e))
        click_btn(e, "OK")
    return got


def wait_ide(timeout=60):
    end = time.time() + timeout
    while time.time() < end:
        w = find(lambda x: "Microsoft Visual Basic" in x.window_text() and x.is_enabled())
        if w:
            return w
        time.sleep(2)
    return None


def main():
    log("=== VB6 ONE-SHOT: COMPILE -> RUN-TEST -> BUILD EXE ===")

    # koi purana VB6 zinda ho to bolo (kill nahi karunga bina proof ke)
    old = find(lambda x: "Microsoft Visual Basic" in x.window_text())
    if old:
        log(f"VB6 pehle se khula hai: {old.window_text()} - usi ko use karunga")
    else:
        Application(backend="win32").start(f'"{VB6_EXE}" "{PROJECT}"', timeout=25)
        log("VB6 launched")
        time.sleep(6)

    ide = wait_ide()
    if not ide:
        log("FATAL: IDE window nahi mili. Windows:")
        for w in wins():
            log(f"  {w.window_text()} ({w.class_name()})")
        return 1
    log(f"IDE: {ide.window_text()}")

    app = Application(backend="win32").connect(handle=ide.handle)
    main_w = app.window(handle=ide.handle)
    main_w.set_focus()
    time.sleep(2)

    # STEP 1: Full compile via F5 (menu_select win32 pe VB6 menus ke saath flaky hai)
    log("Ctrl+F5 (Start with Full Compile) bhej raha hoon...")
    main_w.type_keys("^({F5})", pause=0.05)

    # STEP 2: outcome ka wait
    login_w = None
    for i in range(30):
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
            log(f"[{i*2}s] COMPILE OK - APP RUNNING (login form)")
            break
    if not login_w:
        log("App run nahi hui. Abhi ke windows:")
        for w in wins():
            log(f"  {w.window_text()} ({w.class_name()})")
        return 3

    # STEP 3: login tests
    time.sleep(1)
    app_l = Application(backend="win32").connect(handle=login_w.handle)
    lw = app_l.window(handle=login_w.handle)

    # TEST 1: wrong password
    lw.set_focus()
    try:
        lw.child_window(class_name_re="ThunderRT6TextBox", found_index=0).set_edit_text("galat")
    except Exception:
        lw.child_window(class_name_re="ThunderRT6TextBox", found_index=0).set_edit_text("galat")
    click_btn(lw, "Ok")
    time.sleep(1.5)
    msg = find(lambda x: x.window_text() == "HMS" and
               any("Invalid password" in t for t in texts(x)))
    if msg:
        log("TEST 1 PASS: galat password reject hua")
        click_btn(msg, "OK")
    else:
        log("TEST 1 WARN: invalid-password dialog nahi mila")

    time.sleep(1)

    # TEST 2: correct password -> MDI
    login_w2 = find(lambda x: x.window_text() == "Authentication Window")
    if not login_w2:
        log("TEST 2 SKIP: login form gayab")
        return 4
    app_l2 = Application(backend="win32").connect(handle=login_w2.handle)
    lw2 = app_l2.window(handle=login_w2.handle)
    lw2.set_focus()
    lw2.child_window(class_name_re="ThunderRT6TextBox", found_index=0).set_edit_text("India12")
    click_btn(lw2, "Ok")
    time.sleep(4)

    mdi = find(lambda x: "Hotel Management System" in x.window_text())
    if mdi:
        log("TEST 2 PASS: MDI shell khula")
    else:
        errs = dismiss_errors()
        log("TEST 2 ISSUE: MDI nahi mila" + (f", errors: {errs}" if errs else ""))
        return 5

    # STEP 4: app stop (Run->End)
    ide2 = find(lambda x: "Microsoft Visual Basic" in x.window_text())
    if ide2:
        try:
            Application(backend="win32").connect(handle=ide2.handle).window(
                handle=ide2.handle).menu_select("Run->End")
            log("Run->End - app stopped")
        except Exception:
            log("(menu end fail - F5 window ko manually band karna padega)")
    time.sleep(3)

    # STEP 5: EXE build
    ide3 = find(lambda x: "Microsoft Visual Basic" in x.window_text() and x.is_enabled())
    if not ide3:
        log("FATAL: IDE design mode mein wapas nahi aayi")
        return 6
    app_b = Application(backend="win32").connect(handle=ide3.handle)
    bw = app_b.window(handle=ide3.handle)
    bw.set_focus()
    time.sleep(1)

    import os
    if os.path.exists(EXE_OUT):
        os.remove(EXE_OUT)

    # File->Make HMS_repaired.exe... (project ke ExeName32 se menu item ka naam)
    log("File->Make menu khole...")
    make_ok = False
    for attempt in ("File->Make HMS_repaired.exe...", "File->Make HMS.exe..."):
        try:
            bw.menu_select(attempt)
            make_ok = True
            log(f"menu_select OK: {attempt}")
            break
        except Exception as e:
            log(f"menu '{attempt}' fail: {e}")
    if not make_ok:
        # fallback: Alt+F file menu se Make access
        bw.type_keys("%F", pause=0.3)
        bw.type_keys("K", pause=0.3)  # 'Make ...' accelerator (menu ke hisaab se)
        log("Alt+F,K fallback bheja")

    # Save dialog aayega (path pre-filled) -> Enter
    time.sleep(2)
    saved = find(lambda x: x.window_text() in
                 ("Make Project", "Make HMS_repaired.exe", "Make HMS.exe"))
    if saved:
        saved.set_focus()
        # path field already EXE_OUT set hoga; seedha Save
        click_btn(saved, "Save")
        log("Save clicked")
    else:
        log("(save dialog detect nahi hua - shayad build direct shuru)")

    # build complete hone do; error dialog bhi aa sakta hai
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
        log("EXE file 60s mein nahi bani. Windows:")
        for w in wins():
            log(f"  {w.window_text()} ({w.class_name()})")
        return 8

    time.sleep(2)
    size = os.path.getsize(EXE_OUT)
    log(f"=== SUCCESS: {EXE_OUT} ({size:,} bytes) ===")
    return 0


if __name__ == "__main__":
    exit(main())
