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

    snap(app, "GUI_001_Startup.png")

    try:
        dlg = app.top_window()
        dlg.wait("ready", timeout=15)
        time.sleep(2)
        snap(app, "GUI_002_LoginScreen.png")

        dlg.print_control_identifiers()
    except Exception as e:
        print(f"[ERROR] {e}")

    print("[DONE] Initial capture complete. Check screenshots folder.")

if __name__ == "__main__":
    main()
