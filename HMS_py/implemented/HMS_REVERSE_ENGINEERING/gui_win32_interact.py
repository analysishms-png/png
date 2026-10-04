import time
import os
from pywinauto import Application
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

def main():
    # Connect to HMS using win32 backend
    try:
        app = Application(backend="win32").connect(title="HMS", timeout=10)
        hms_win = app.window(title="HMS")
        print("[CONNECTED] HMS via win32")
        time.sleep(1)
        snap(hms_win, "GUI_051_HMS_win32.png")

        # Print all controls
        hms_win.print_control_identifiers()

        # Try to find Company Details or Login button
        try:
            login_btn = hms_win.child_window(title="Login", control_type="Button")
            safe_print(f"[LOGIN BTN] exists={login_btn.exists()}")
            if login_btn.exists():
                login_btn.click()
                time.sleep(5)
                print("[CLICKED] Login via win32")
        except Exception as e:
            safe_print(f"[LOGIN ERR] {e}")

        # Check for main menu
        try:
            main_win = Application(backend="win32").connect(title="HMS", timeout=5)
            main_dlg = main_win.window(title="HMS")
            time.sleep(2)
            snap(main_dlg, "GUI_052_MainMenu.png")
            safe_print(f"[MAIN] {main_dlg.window_text()}")
            main_dlg.print_control_identifiers()
        except Exception as e:
            safe_print(f"[MAIN ERR] {e}")

    except Exception as e:
        safe_print(f"[WIN32 CONNECT ERR] {e}")

        # Try connecting to all HMS windows
        for title in ["HMS", "Company Details", "User Information"]:
            try:
                app = Application(backend="win32").connect(title=title, timeout=5)
                win = app.window(title=title)
                print(f"[FOUND] {title} via win32")
                snap(win, f"GUI_053_{title.replace(' ', '_')}_win32.png")
                win.print_control_identifiers()
            except:
                pass

    print("[DONE]")

if __name__ == "__main__":
    main()
