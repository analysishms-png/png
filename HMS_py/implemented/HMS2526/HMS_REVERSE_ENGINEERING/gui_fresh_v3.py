import time
import os
from pywinauto import Application, Desktop
from pywinauto.keyboard import send_keys

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
    app = Application(backend="uia").start(r"C:\PENDRIVE\HMS\Hms.exe")
    time.sleep(3)

    dlg = app.top_window()
    dlg.wait("ready", timeout=15)
    time.sleep(2)

    user_edit = dlg.child_window(auto_id="22", control_type="Edit")
    pass_edit = dlg.child_window(auto_id="23", control_type="Edit")

    user_edit.set_text("sa")
    time.sleep(0.5)
    pass_edit.set_text("********")
    time.sleep(0.5)

    snap(dlg, "GUI_003_Login_Filled.png")

    login_btn = dlg.child_window(title="Login", control_type="Button")
    login_btn.click()
    time.sleep(5)

    cd = get_window("Company Details")
    if not cd or not cd.exists():
        print("[INFO] Company Details not found")
        return

    time.sleep(3)
    snap(cd, "GUI_005_CompanyDetails.png")

    # Don't click Database Update (it crashes)
    # Instead, try to click on the grid area to select company
    # Grid is at (768,231)-(1220,291)
    try:
        cd.click_input(coords=(900, 260))
        time.sleep(1)
        print("[CLICKED] Grid area")
    except Exception as e:
        print(f"[GRID CLICK ERR] {e}")

    snap(cd, "GUI_014_CD_GridClicked.png")

    # Try to click Login using set_focus + Enter
    try:
        login_btn = cd.child_window(title="Login", control_type="Button")
        login_btn.set_focus()
        time.sleep(0.5)
        send_keys("{ENTER}")
        time.sleep(5)
        print("[KEYBOARD] Focus + Enter on Login")
    except Exception as e:
        print(f"[KEYBOARD ERR] {e}")

    # Check for main menu
    for title in ["HMS", "MDI", "Analysis", "HMS - Hotel Management System"]:
        main_win = get_window(title)
        if main_win and main_win.exists():
            time.sleep(2)
            snap(main_win, "GUI_024_MainMenu.png")
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
