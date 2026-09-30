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

    # Click on grid area - try multiple positions
    for x, y in [(900, 260), (850, 250), (950, 270), (800, 240)]:
        try:
            cd.click_input(coords=(x, y))
            time.sleep(0.5)
            print(f"[CLICKED] Grid at ({x},{y})")
        except:
            pass

    snap(cd, "GUI_014_CD_GridClicked.png")

    # Try double-click
    try:
        cd.double_click_input(coords=(900, 260))
        time.sleep(2)
        print("[DOUBLE CLICKED] Grid")
    except Exception as e:
        print(f"[DBLCLICK ERR] {e}")

    snap(cd, "GUI_015_CD_GridDblClicked.png")

    # Try Login directly (maybe grid auto-selects first row)
    try:
        login_btn = cd.child_window(title="Login", control_type="Button")
        login_btn.click()
        time.sleep(5)
        print("[CLICKED] Login")
    except Exception as e:
        print(f"[LOGIN ERR] {e}")

    # Check for main menu or any new window
    windows = Desktop(backend="uia").windows()
    for w in windows:
        t = w.window_text()
        if t and t not in ("Taskbar",):
            safe_print(f"  Window: {t}")

    # Try to find main window
    for title in ["HMS", "MDI", "Analysis"]:
        main_win = get_window(title)
        if main_win and main_win.exists():
            time.sleep(2)
            snap(main_win, "GUI_024_MainMenu.png")
            safe_print(f"[MAIN] {main_win.window_text()}")
            main_win.print_control_identifiers()
            break

    print("[DONE]")

if __name__ == "__main__":
    main()
