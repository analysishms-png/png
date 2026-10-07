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
    # Try win32 backend
    try:
        app = Application(backend="win32").connect(title="Company Details", timeout=10)
        cd = app.window(title="Company Details")
        print("[CONNECTED] win32 backend")
        time.sleep(1)
        snap(cd, "GUI_047_CD_win32.png")

        # Try to find Login button with win32
        login_btn = cd.child_window(title="Login", control_type="Button")
        safe_print(f"[LOGIN BTN] exists={login_btn.exists()}")

        # Try click with win32
        login_btn.click()
        time.sleep(5)
        print("[CLICKED] Login via win32")

        # Check for main menu
        for title in ["HMS", "MDI", "Analysis", "HMS - Hotel Management System"]:
            try:
                main_win = Application(backend="win32").connect(title=title, timeout=5)
                main_dlg = main_win.window(title=title)
                time.sleep(2)
                snap(main_dlg, "GUI_048_MainMenu.png")
                safe_print(f"[MAIN] {main_dlg.window_text()}")
                main_dlg.print_control_identifiers()
                break
            except:
                pass
        else:
            print("[INFO] Main menu not found")
            # List all windows
            from pywinauto import Desktop
            for w in Desktop(backend="win32").windows():
                t = w.window_text()
                if t and t not in ("Taskbar", "Program Manager"):
                    safe_print(f"  Window: {t}")

    except Exception as e:
        safe_print(f"[WIN32 ERR] {e}")

        # Fallback: try uia backend with different approach
        print("[FALLBACK] Trying uia backend...")
        try:
            app = Application(backend="uia").connect(title="Company Details", timeout=10)
            cd = app.window(title="Company Details")
            snap(cd, "GUI_049_CD_uia.png")

            # Try to use keyboard shortcut
            cd.set_focus()
            time.sleep(0.5)
            send_keys("{TAB 3}")
            time.sleep(0.5)
            send_keys("{ENTER}")
            time.sleep(5)
            print("[KEYBOARD] Tab x3 + Enter")

            # Check for main menu
            for title in ["HMS", "MDI", "Analysis", "HMS - Hotel Management System"]:
                try:
                    main_win = Application(backend="uia").connect(title=title, timeout=5)
                    main_dlg = main_win.window(title=title)
                    time.sleep(2)
                    snap(main_dlg, "GUI_050_MainMenu.png")
                    safe_print(f"[MAIN] {main_dlg.window_text()}")
                    main_dlg.print_control_identifiers()
                    break
                except:
                    pass
            else:
                print("[INFO] Main menu not found")
        except Exception as e2:
            safe_print(f"[UIA FALLBACK ERR] {e2}")

    print("[DONE]")

if __name__ == "__main__":
    main()
