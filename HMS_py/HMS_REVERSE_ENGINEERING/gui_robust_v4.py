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
    pass_edit.set_text("kanpur")
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

    # Handle any message box first
    db_win = get_window("Database Update")
    if db_win and db_win.exists():
        try:
            ok_btn = db_win.child_window(title="OK", control_type="Button")
            ok_btn.click()
            time.sleep(2)
            print("[CLICKED] OK on DB Update message")
        except Exception as e:
            print(f"[OK ERR] {e}")

    # Now try to click Login on Company Details
    cd = get_window("Company Details")
    if cd and cd.exists():
        time.sleep(2)
        snap(cd, "GUI_042_CD_Ready.png")

        # Try multiple methods to click Login
        # Method 1: click_input with coordinates
        try:
            cd.click_input(coords=(1003, 355))
            time.sleep(5)
            print("[METHOD 1] click_input on Login")
        except Exception as e:
            safe_print(f"[METHOD 1 ERR] {e}")

        # Check for main menu
        for title in ["HMS", "MDI", "Analysis", "HMS - Hotel Management System"]:
            main_win = get_window(title)
            if main_win and main_win.exists():
                time.sleep(2)
                snap(main_win, "GUI_043_MainMenu.png")
                safe_print(f"[MAIN] {main_win.window_text()}")
                main_win.print_control_identifiers()
                print("[DONE]")
                return

        # Method 2: set_focus + Enter
        cd = get_window("Company Details")
        if cd and cd.exists():
            try:
                login_btn = cd.child_window(title="Login", control_type="Button")
                login_btn.set_focus()
                time.sleep(0.5)
                send_keys("{ENTER}")
                time.sleep(5)
                print("[METHOD 2] set_focus + Enter on Login")
            except Exception as e:
                safe_print(f"[METHOD 2 ERR] {e}")

            # Check for main menu
            for title in ["HMS", "MDI", "Analysis", "HMS - Hotel Management System"]:
                main_win = get_window(title)
                if main_win and main_win.exists():
                    time.sleep(2)
                    snap(main_win, "GUI_044_MainMenu.png")
                    safe_print(f"[MAIN] {main_win.window_text()}")
                    main_win.print_control_identifiers()
                    print("[DONE]")
                    return

        # Method 3: Tab navigation
        cd = get_window("Company Details")
        if cd and cd.exists():
            try:
                for i in range(5):
                    send_keys("{TAB}")
                    time.sleep(0.3)
                send_keys("{ENTER}")
                time.sleep(5)
                print("[METHOD 3] Tab x5 + Enter")
            except Exception as e:
                safe_print(f"[METHOD 3 ERR] {e}")

            # Check for main menu
            for title in ["HMS", "MDI", "Analysis", "HMS - Hotel Management System"]:
                main_win = get_window(title)
                if main_win and main_win.exists():
                    time.sleep(2)
                    snap(main_win, "GUI_045_MainMenu.png")
                    safe_print(f"[MAIN] {main_win.window_text()}")
                    main_win.print_control_identifiers()
                    print("[DONE]")
                    return

        print("[INFO] All methods failed, listing all windows:")
        for w in Desktop(backend="uia").windows():
            t = w.window_text()
            if t and t not in ("Taskbar",):
                safe_print(f"  Window: {t}")

    print("[DONE]")

if __name__ == "__main__":
    main()
