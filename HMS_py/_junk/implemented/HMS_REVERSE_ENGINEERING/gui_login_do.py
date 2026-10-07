import time
import os
from pywinauto import Application
from pywinauto.keyboard import send_keys

SCREENSHOT_DIR = r"C:\PENDRIVE\HMS\HMS_REVERSE_ENGINEERING\screenshots"
os.makedirs(SCREENSHOT_DIR, exist_ok=True)

def snap(app, name):
    try:
        dlg = app.top_window()
        dlg.capture_as_image().save(os.path.join(SCREENSHOT_DIR, name))
        print(f"[SCREENSHOT] {name}")
    except Exception as e:
        print(f"[SCREENSHOT FAIL] {name}: {e}")

def main():
    app = Application(backend="uia").start(r"C:\PENDRIVE\HMS\hms.exe")
    time.sleep(3)

    dlg = app.top_window()
    dlg.wait("ready", timeout=15)
    time.sleep(2)

    snap(app, "GUI_002_LoginScreen.png")

    user_edit = dlg.child_window(auto_id="22", control_type="Edit")
    pass_edit = dlg.child_window(auto_id="23", control_type="Edit")

    user_edit.set_text("sa")
    time.sleep(0.5)
    pass_edit.set_text("********")
    time.sleep(0.5)

    snap(app, "GUI_003_Login_Filled.png")

    login_btn = dlg.child_window(title="Login", control_type="Button")
    login_btn.click()
    time.sleep(5)

    snap(app, "GUI_004_AfterLogin.png")

    try:
        main_dlg = app.top_window()
        print(f"[WINDOW TITLE] {main_dlg.window_text()}")
        main_dlg.print_control_identifiers()
    except Exception as e:
        print(f"[ERROR] {e}")

    print("[DONE] Login attempt complete.")

if __name__ == "__main__":
    main()
