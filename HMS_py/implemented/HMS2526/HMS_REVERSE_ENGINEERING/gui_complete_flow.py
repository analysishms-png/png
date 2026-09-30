import time
import os
from pywinauto import Application, Desktop
from pywinauto.findwindows import ElementNotFoundError

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

def find_window(title, timeout=10):
    try:
        return Desktop(backend="uia").window(title=title, found_index=0)
    except:
        return None

def main():
    # Step 1: Launch HMS
    app = Application(backend="uia").start(r"C:\PENDRIVE\HMS\Hms.exe")
    time.sleep(3)

    # Step 2: Login
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

    # Step 3: Company Details - use Desktop to find window
    cd = find_window("Company Details", timeout=15)
    if cd.exists():
        time.sleep(3)
        snap(cd, "GUI_005_CompanyDetails.png")

        # Try to find the grid - check various control types
        for ctrl_type in ["DataGrid", "Table", "List", "ListItem", "DataItem", "ComboBox", "ListBox"]:
            try:
                items = cd.descendants(control_type=ctrl_type)
                if items:
                    print(f"[{ctrl_type}] Found {len(items)}")
                    for item in items:
                        t = item.window_text()
                        safe_print(f"  - {t[:80] if t else ''}")
            except:
                pass

        # Try to click on the grid area (approximate coordinates from screenshot)
        try:
            cd.click_input(coords=(900, 260))
            time.sleep(1)
            cd.double_click_input(coords=(900, 260))
            time.sleep(2)
        except Exception as e:
            print(f"[CLICK ERR] {e}")

        snap(cd, "GUI_010_CompanySelected.png")

        # Click Login on Company Details
        try:
            login_btn2 = cd.child_window(title="Login", control_type="Button")
            login_btn2.click()
            time.sleep(5)
        except Exception as e:
            print(f"[LOGIN2 ERR] {e}")

        # Step 4: Main Menu
        main_win = find_window("HMS", timeout=10)
        if not main_win.exists():
            # Try other possible titles
            for title in ["HMS - Hotel Management System", "Analysis HMS", "HMS MDI"]:
                main_win = find_window(title, timeout=3)
                if main_win.exists():
                    break

        if main_win.exists():
            time.sleep(2)
            snap(main_win, "GUI_011_MainMenu.png")
            safe_print(f"[MAIN WINDOW] {main_win.window_text()}")
            main_win.print_control_identifiers()
        else:
            print("[INFO] Main menu not found, listing all windows:")
            windows = Desktop(backend="uia").windows()
            for w in windows:
                t = w.window_text()
                if t and t not in ("Taskbar",):
                    safe_print(f"  Window: {t}")
    else:
        print("[INFO] Company Details not found")
        windows = Desktop(backend="uia").windows()
        for w in windows:
            t = w.window_text()
            if t and t not in ("Taskbar",):
                safe_print(f"  Window: {t}")

    print("[DONE]")

if __name__ == "__main__":
    main()
