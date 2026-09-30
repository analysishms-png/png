import time
import os
from pywinauto import Desktop
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
    # Click OK on the message box
    ok_win = get_window("Database Update")
    if ok_win and ok_win.exists():
        try:
            ok_btn = ok_win.child_window(title="OK", control_type="Button")
            ok_btn.click()
            time.sleep(2)
            print("[CLICKED] OK on DB Update message")
        except Exception as e:
            print(f"[OK ERR] {e}")

    # Now find Company Details
    cd = get_window("Company Details")
    if not cd or not cd.exists():
        print("[INFO] Company Details not found")
        return

    time.sleep(2)
    snap(cd, "GUI_019_CD_AfterOK.png")

    # Click on the grid area (Pane at 768,231 to 1220,291)
    try:
        cd.click_input(coords=(900, 260))
        time.sleep(1)
        print("[CLICKED] Grid area")
    except Exception as e:
        print(f"[GRID CLICK ERR] {e}")

    snap(cd, "GUI_020_CD_GridClicked.png")

    # Try double-click to select
    try:
        cd.double_click_input(coords=(900, 260))
        time.sleep(2)
        print("[DOUBLE CLICKED] Grid area")
    except Exception as e:
        print(f"[GRID DBLCLICK ERR] {e}")

    snap(cd, "GUI_021_CD_GridDblClicked.png")

    # Check if Login button is now enabled
    try:
        login_btn = cd.child_window(title="Login", control_type="Button")
        safe_print(f"[LOGIN BTN] exists={login_btn.exists()}")
    except Exception as e:
        safe_print(f"[LOGIN BTN ERR] {e}")

    # Try clicking Login
    try:
        login_btn = cd.child_window(title="Login", control_type="Button")
        login_btn.click()
        time.sleep(5)
        print("[CLICKED] Login on Company Details")
    except Exception as e:
        print(f"[LOGIN2 ERR] {e}")

    # Check for main menu
    main_win = get_window("HMS")
    if not main_win or not main_win.exists():
        for title in ["HMS - Hotel Management System", "Analysis HMS", "HMS MDI", "MDI Form"]:
            main_win = get_window(title)
            if main_win and main_win.exists():
                break

    if main_win and main_win.exists():
        time.sleep(2)
        snap(main_win, "GUI_022_MainMenu.png")
        safe_print(f"[MAIN WINDOW] {main_win.window_text()}")
        main_win.print_control_identifiers()
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
