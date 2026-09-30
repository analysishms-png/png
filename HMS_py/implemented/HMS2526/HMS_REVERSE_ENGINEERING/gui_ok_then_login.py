import time
import os
from pywinauto import Desktop

SS = r"C:\PENDRIVE\HMS\HMS_REVERSE_ENGINEERING\screenshots"

def snap(dlg, name):
    try:
        dlg.capture_as_image().save(os.path.join(SS, name))
        print(f"[SS] {name}")
    except Exception as e:
        print(f"[SS FAIL] {name}: {e}")

def safe_print(text):
    try:
        print(text)
    except:
        print(text.encode("ascii", errors="replace").decode("ascii"))

def main():
    # Click OK on Database Update message box
    db_win = Desktop(backend="uia").window(title="Database Update")
    if db_win.exists():
        ok_btn = db_win.child_window(title="OK", control_type="Button")
        ok_btn.click()
        time.sleep(2)
        print("[CLICKED] OK on DB Update message")
    else:
        print("[INFO] DB Update message not found")

    # Now find Company Details and click Login
    cd = Desktop(backend="uia").window(title="Company Details")
    if cd.exists():
        time.sleep(2)
        snap(cd, "GUI_036_CD_AfterOK.png")

        # Click Login
        login_btn = cd.child_window(title="Login", control_type="Button")
        login_btn.click()
        time.sleep(5)
        print("[CLICKED] Login on Company Details")

        # Check for main menu
        for title in ["HMS", "MDI", "Analysis", "HMS - Hotel Management System"]:
            main_win = Desktop(backend="uia").window(title=title, found_index=0)
            if main_win.exists():
                time.sleep(2)
                snap(main_win, "GUI_037_MainMenu.png")
                safe_print(f"[MAIN] {main_win.window_text()}")
                main_win.print_control_identifiers()
                break
        else:
            print("[INFO] Main menu not found, listing all windows:")
            for w in Desktop(backend="uia").windows():
                t = w.window_text()
                if t and t not in ("Taskbar",):
                    safe_print(f"  Window: {t}")
    else:
        print("[INFO] Company Details not found")

    print("[DONE]")

if __name__ == "__main__":
    main()
