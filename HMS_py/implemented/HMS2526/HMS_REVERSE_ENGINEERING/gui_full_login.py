import time
import os
from pywinauto import Application
from pywinauto.findwindows import ElementNotFoundError

SS = r"C:\PENDRIVE\HMS\HMS_REVERSE_ENGINEERING\screenshots"

def snap(dlg, name):
    try:
        dlg.capture_as_image().save(os.path.join(SS, name))
        print(f"[SS] {name}")
    except Exception as e:
        print(f"[SS FAIL] {name}: {e}")

def list_buttons(dlg, label=""):
    btns = dlg.descendants(control_type="Button")
    print(f"[BUTTONS{label}] {len(btns)}")
    for b in btns:
        t = b.window_text()
        if t and t not in ('Context help',):
            print(f"  - {t}")

def main():
    app = Application(backend="uia").connect(title="User Information", timeout=10)
    dlg = app.top_window()
    time.sleep(1)

    user_edit = dlg.child_window(auto_id="22", control_type="Edit")
    pass_edit = dlg.child_window(auto_id="23", control_type="Edit")

    user_edit.set_text("sa")
    time.sleep(0.5)
    pass_edit.set_text("********")
    time.sleep(0.5)

    snap(dlg, "GUI_003_Login_Filled.png")

    login_btn = dlg.child_window(title="Login", control_type="Button")
    login_btn.click()
    time.sleep(4)

    try:
        app2 = Application(backend="uia").connect(title="Company Details", timeout=10)
        cd = app2.top_window()
        time.sleep(2)
        snap(cd, "GUI_005_CompanyDetails.png")

        pane = cd.child_window(control_type="Pane")
        print("[PANE]", (pane.window_text()[:300] if pane.window_text() else "EMPTY"))

        list_buttons(cd, "-CD")

        # Try to find and list all controls in the pane
        try:
            kids = pane.descendants()
            print(f"[PANE KIDS] {len(kids)}")
            for k in kids[:20]:
                t = k.window_text()
                print(f"  [{k.control_type}] {t[:60] if t else ''}")
        except Exception as e:
            print(f"[PANE KIDS ERR] {e}")

    except ElementNotFoundError:
        print("[INFO] Company Details window not found, checking current state...")
        for w in Application(backend="uia").windows():
            t = w.window_text()
            if t and t not in ('Taskbar',):
                print(f"  Window: {t}")

    print("[DONE]")

if __name__ == "__main__":
    main()
