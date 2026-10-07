import time
import os
from pywinauto import Application, Desktop

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
    if cd and cd.exists():
        time.sleep(3)
        snap(cd, "GUI_005_CompanyDetails.png")

        try:
            db_btn = cd.child_window(title="Database Update", control_type="Button")
            db_btn.click()
            time.sleep(3)
            snap(cd, "GUI_013_CD_AfterDBUpdate.png")
            print("[CLICKED] Database Update")
        except Exception as e:
            print(f"[DB UPDATE ERR] {e}")

        try:
            cd.click_input(coords=(900, 260))
            time.sleep(1)
            print("[CLICKED] Grid area")
        except Exception as e:
            print(f"[GRID CLICK ERR] {e}")

        snap(cd, "GUI_014_CD_GridClicked.png")

        try:
            cd.double_click_input(coords=(900, 260))
            time.sleep(2)
            print("[DOUBLE CLICKED] Grid area")
        except Exception as e:
            print(f"[GRID DBLCLICK ERR] {e}")

        snap(cd, "GUI_015_CD_GridDblClicked.png")

        try:
            login_btn2 = cd.child_window(title="Login", control_type="Button")
            login_btn2.click()
            time.sleep(5)
            print("[CLICKED] Login on Company Details")
        except Exception as e:
            print(f"[LOGIN2 ERR] {e}")

        main_win = get_window("HMS")
        if not main_win or not main_win.exists():
            for title in ["HMS - Hotel Management System", "Analysis HMS", "HMS MDI", "MDI Form"]:
                main_win = get_window(title)
                if main_win and main_win.exists():
                    break

        if main_win and main_win.exists():
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
