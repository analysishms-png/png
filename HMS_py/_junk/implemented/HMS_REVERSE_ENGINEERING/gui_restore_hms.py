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
    # Find HMS windows and restore them
    windows = Desktop(backend="win32").windows()
    hms_windows = []
    for w in windows:
        t = w.window_text()
        if t == "HMS":
            hms_windows.append(w)

    print(f"[FOUND] {len(hms_windows)} HMS windows")

    for i, hms_win in enumerate(hms_windows):
        safe_print(f"\n[WINDOW {i+1}] handle={hms_win.handle}")
        try:
            # Restore the window
            hms_win.restore()
            time.sleep(1)
            safe_print(f"[RESTORED] Window {i+1}")

            # Try to set focus
            hms_win.set_focus()
            time.sleep(0.5)
            safe_print(f"[FOCUSED] Window {i+1}")

            # Take screenshot
            snap(hms_win, f"GUI_056_HMS_Restored_{i+1}.png")

            # Print controls
            hms_win.print_control_identifiers()

        except Exception as e:
            safe_print(f"[ERR] {e}")

    # Check for main menu after restore
    time.sleep(3)
    windows = Desktop(backend="win32").windows()
    print("\n[ALL WINDOWS AFTER RESTORE]")
    for w in windows:
        t = w.window_text()
        if t and t not in ("Taskbar", "Program Manager"):
            try:
                rect = w.rectangle()
                safe_print(f"  [{w.handle}] '{t}' @({rect.left},{rect.top})-({rect.right},{rect.bottom})")
            except:
                safe_print(f"  [{w.handle}] '{t}'")

    print("[DONE]")

if __name__ == "__main__":
    main()
