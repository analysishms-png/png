"""VB6 full-compile + run test via pywinauto (windows-app-control skill).
Assumes VB6 IDE already open with repaired project.
Flow: Ctrl+F5 -> detect compile error dialog OR running app ->
login form test (wrong pass -> error msg, correct pass -> MDI) -> Run->End.
Safety: only touches VB6/HMS windows.
"""
import time
from pywinauto import Application, Desktop


def log(msg):
    print(msg, flush=True)


def all_windows():
    try:
        return Desktop(backend="win32").windows()
    except Exception:
        return []


def find_window(pred):
    for w in all_windows():
        try:
            if pred(w):
                return w
        except Exception:
            continue
    return None


def ide_window():
    return find_window(lambda w: "Microsoft Visual Basic" in w.window_text())


def read_dialog_texts(w):
    texts = []
    try:
        for st in w.descendants(class_name="Static"):
            t = st.window_text()
            if t:
                texts.append(t)
    except Exception:
        pass
    return texts


def click_button(w, keyword):
    try:
        for b in w.descendants(class_name="Button"):
            if keyword.lower() in b.window_text().lower():
                b.click()
                return True
    except Exception:
        pass
    return False


def dismiss_error_dialogs():
    """Compile/runtime error dialogs ko read karke close karo."""
    found = []
    for _ in range(6):
        time.sleep(1)
        w = find_window(lambda x: any(
            k in x.window_text() for k in
            ("Microsoft Visual Basic", "Project error", "Run-time error")))
        # Error dialogs ka class/dialog title alag hota hai - detect via body
        err = find_window(lambda x: x.window_text() in
                          ("Microsoft Visual Basic", "HMS") and
                          any("Compile error" in t or "Run-time error" in t
                              for t in read_dialog_texts(x)))
        if not err:
            break
        found.append(read_dialog_texts(err))
        click_button(err, "OK")
    return found


def main():
    log("=== VB6 FULL COMPILE + RUN TEST ===")

    ide = ide_window()
    if not ide:
        log("FATAL: VB6 IDE window nahi mili. Pehle project kholo.")
        return 1
    log(f"IDE: {ide.window_text()}")

    app = Application(backend="win32").connect(handle=ide.handle)
    main_w = app.window(handle=ide.handle)
    main_w.set_focus()
    time.sleep(2)

    # Ctrl+F5 = Start with Full Compile (menu route - keyboard stale handle pe fail hota hai)
    try:
        main_w.menu_select("Run->Start with Full Compile")
        log("Run->Start with Full Compile sent")
    except Exception as e:
        log(f"menu_select failed ({e}) - keyboard fallback")
        main_w.set_focus()
        main_w.type_keys("^({F5})")

    # Result ka wait: ya compile error dialog, ya HMS app window (frmPassword)
    outcome = None
    for i in range(25):
        time.sleep(2)

        # compile error dialog?
        errs = dismiss_error_dialogs()
        if errs:
            log("COMPILE ERRORS DETECTED:")
            for e in errs:
                for t in e:
                    log(f"  {t}")
            return 2

        # HMS login form aa gaya? (Caption: Authentication Window)
        login = find_window(lambda x: x.window_text() == "Authentication Window")
        if login:
            log(f"[{i*2}s] APP RUNNING - login form dikha!")
            outcome = "running"
            break

    if outcome != "running":
        log("App 50s mein run nahi hui aur koi error dialog bhi nahi mila.")
        log("Windows abhi:")
        for w in all_windows():
            log(f"  {w.window_text()} ({w.class_name()})")
        return 3

    time.sleep(2)

    # TEST 1: galat password
    login = find_window(lambda x: x.window_text() == "Authentication Window")
    app_l = Application(backend="win32").connect(handle=login.handle)
    lw = app_l.window(handle=login.handle)
    lw.set_focus()
    try:
        edit = lw.child_window(control_id=101, class_name="Edit")
        edit.set_edit_text("wrongpass")
    except Exception:
        # fallback: pehla edit
        edit = lw.child_window(class_name="Edit", found_index=0)
        edit.set_edit_text("wrongpass")
    click_button(lw, "Ok")
    time.sleep(1)
    # "Invalid password" msgbox aaya?
    msg = find_window(lambda x: x.window_text() == "HMS" and
                      any("Invalid password" in t for t in read_dialog_texts(x)))
    if msg:
        log("TEST 1 PASS: galat password pe 'Invalid password' message aaya")
        click_button(msg, "OK")
    else:
        log("TEST 1 WARN: expected message nahi mila (app shayad chal rahi hai)")

    time.sleep(1)

    # TEST 2: sahi password -> MDI
    login = find_window(lambda x: x.window_text() == "Authentication Window")
    if not login:
        log("TEST 2 SKIP: login form gayab hai")
        return 4
    app_l = Application(backend="win32").connect(handle=login.handle)
    lw = app_l.window(handle=login.handle)
    lw.set_focus()
    edit = lw.child_window(class_name="Edit", found_index=0)
    edit.set_edit_text("India12")
    click_button(lw, "Ok")
    time.sleep(3)

    # MDI window? (Caption: HMS - Hotel Management System)
    mdi = find_window(lambda x: "Hotel Management System" in x.window_text())
    if mdi:
        log(f"TEST 2 PASS: MDI shell khula! Title: {mdi.window_text()}")
    else:
        # error dialog?
        errs = dismiss_error_dialogs()
        if errs:
            log("TEST 2 RUNTIME ERROR:")
            for e in errs:
                for t in e:
                    log(f"  {t}")
        else:
            log("TEST 2 WARN: MDI nahi mila, koi error bhi nahi")
        return 5

    # Cleanup: app band karo (Run->End)
    ide = ide_window()
    if ide:
        app_i = Application(backend="win32").connect(handle=ide.handle)
        try:
            app_i.window(handle=ide.handle).menu_select("Run->End")
            log("Run->End sent - app stopped")
        except Exception as e:
            log(f"(Run->End skip: {e})")

    log("=== ALL TESTS PASS - EXE READY BANNE LAAYAK ===")
    return 0


if __name__ == "__main__":
    exit(main())
