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

def get_window(title):
    try:
        return Desktop(backend="uia").window(title=title, found_index=0)
    except:
        return None

def main():
    # Click OK on "All Company database updated" message
    db_win = get_window("Database Update")
    if db_win and db_win.exists():
        try:
            ok_btn = db_win.child_window(title="OK", control_type="Button")
            ok_btn.click()
            time.sleep(2)
            print("[CLICKED] OK on DB Update message")
        except Exception as e:
            print(f"[OK ERR] {e}")

    # Find Company Details
    cd = get_window("Company Details")
    if not cd or not cd.exists():
        print("[INFO] Company Details not found")
        windows = Desktop(backend="uia").windows()
        for w in windows:
            t = w.window_text()
            if t and t not in ("Taskbar",):
                safe_print(f"  Window: {t}")
        return

    time.sleep(2)
    snap(cd, "GUI_025_CD_AfterOK.png")

    # Click Login
    try:
        login_btn = cd.child_window(title="Login", control_type="Button")
        login_btn.click()
        time.sleep(5)
        print("[CLICKED] Login on Company Details")
    except Exception as e:
        print(f"[LOGIN ERR] {e}")

    # Check for main menu
    for title in ["HMS", "MDI", "Analysis", "HMS - Hotel Management System"]:
        main_win = get_window(title)
        if main_win and main_win.exists():
            time.sleep(2)
            snap(main_win, "GUI_026_MainMenu.png")
            safe_print(f"[MAIN] {main_win.window_text()}")
            main_win.print_control_identifiers()
            break
    else:
        print("[INFO] Main menu not found, listing all windows:")
        windows = Desktop(backend="uia").windows()
        for w in windows:
            t = w.window_text()
            if t and t not in ("Taskbar",):
                safe_print(f"  Window: {t}")

    print("[DONE]")

if __name__ == "__main__":
    main()
