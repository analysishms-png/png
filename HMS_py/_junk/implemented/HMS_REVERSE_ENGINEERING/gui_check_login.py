import time
import os
from pywinauto import Desktop

SS = r"C:\PENDRIVE\HMS\HMS_REVERSE_ENGINEERING\screenshots"

def safe_print(text):
    try:
        print(text)
    except:
        print(text.encode("ascii", errors="replace").decode("ascii"))

def main():
    ui = Desktop(backend="uia").window(title="User Information")
    if ui.exists():
        ui.capture_as_image().save(os.path.join(SS, "GUI_046_Login_Failed.png"))
        print("[SS] GUI_046_Login_Failed.png")

        # Check for any message boxes or error dialogs
        for w in Desktop(backend="uia").windows():
            t = w.window_text()
            if t and t not in ("Taskbar", "User Information"):
                safe_print(f"  Window: {t}")

        # Check all controls on User Information
        all_ctrls = ui.descendants()
        print(f"[ALL CONTROLS] {len(all_ctrls)}")
        for c in all_ctrls:
            try:
                ct = c.element_info.control_type
            except:
                ct = "Unknown"
            t = c.window_text()
            if t:
                safe_print(f"  [{ct}] {t[:60]}")
    else:
        print("[INFO] User Information not found")

    print("[DONE]")

if __name__ == "__main__":
    main()
