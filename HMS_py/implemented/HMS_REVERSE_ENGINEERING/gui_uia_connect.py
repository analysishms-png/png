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
    # Try UIA backend
    windows = Desktop(backend="uia").windows()
    print(f"[UIA WINDOWS] {len(windows)}")

    hms_windows = []
    for w in windows:
        t = w.window_text()
        if t and "HMS" in t:
            hms_windows.append(w)
            safe_print(f"  [{w.handle}] '{t}'")

    print(f"\n[HMS WINDOWS] {len(hms_windows)}")

    for i, hms_win in enumerate(hms_windows):
        safe_print(f"\n[WINDOW {i+1}] handle={hms_win.handle}")
        try:
            # Take screenshot
            snap(hms_win, f"GUI_059_HMS_UIA_{i+1}.png")

            # Print controls
            hms_win.print_control_identifiers()

            # Try to find Login button
            try:
                login_btn = hms_win.child_window(title="Login", control_type="Button")
                safe_print(f"  [LOGIN BTN] exists={login_btn.exists()}")
                if login_btn.exists():
                    login_btn.click()
                    time.sleep(5)
                    print(f"  [CLICKED] Login on window {i+1}")

                    # Check for main menu
                    for w in Desktop(backend="uia").windows():
                        t = w.window_text()
                        if t and "HMS" in t and w.handle != hms_win.handle:
                            snap(w, f"GUI_060_MainMenu.png")
                            safe_print(f"  [MAIN] {t}")
                            w.print_control_identifiers()
                            print("[DONE]")
                            return
            except Exception as e:
                safe_print(f"  [LOGIN ERR] {e}")

        except Exception as e:
            safe_print(f"  [WINDOW ERR] {e}")

    print("[DONE]")

if __name__ == "__main__":
    main()
