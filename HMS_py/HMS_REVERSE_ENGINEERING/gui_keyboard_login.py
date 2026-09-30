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
    cd = get_window("Company Details")
    if not cd or not cd.exists():
        print("[INFO] Company Details not found")
        return

    time.sleep(1)
    snap(cd, "GUI_027_CD_BeforeKeyboard.png")

    # Try clicking Login button using click_input with coordinates
    # Login button is at (940,334)-(1067,377), center = (1003, 355)
    try:
        cd.click_input(coords=(1003, 355))
        time.sleep(5)
        print("[CLICKED] Login via click_input")
    except Exception as e:
        print(f"[CLICK_INPUT ERR] {e}")

    # Check if main menu appeared
    for title in ["HMS", "MDI", "Analysis", "HMS - Hotel Management System"]:
        main_win = get_window(title)
        if main_win and main_win.exists():
            time.sleep(2)
            snap(main_win, "GUI_028_MainMenu.png")
            safe_print(f"[MAIN] {main_win.window_text()}")
            main_win.print_control_identifiers()
            print("[DONE]")
            return

    # If not, try keyboard Tab navigation
    print("[INFO] Login click didn't work, trying keyboard...")
    try:
        # Press Tab multiple times to reach Login button
        for i in range(5):
            send_keys("{TAB}")
            time.sleep(0.3)
        send_keys("{ENTER}")
        time.sleep(5)
        print("[KEYBOARD] Tab x5 + Enter sent")
    except Exception as e:
        print(f"[KEYBOARD ERR] {e}")

    snap(cd, "GUI_029_CD_AfterKeyboard.png")

    # Check again
    for title in ["HMS", "MDI", "Analysis", "HMS - Hotel Management System"]:
        main_win = get_window(title)
        if main_win and main_win.exists():
            time.sleep(2)
            snap(main_win, "GUI_030_MainMenu.png")
            safe_print(f"[MAIN] {main_win.window_text()}")
            main_win.print_control_identifiers()
            break
    else:
        print("[INFO] Main menu still not found, listing all windows:")
        windows = Desktop(backend="uia").windows()
        for w in windows:
            t = w.window_text()
            if t and t not in ("Taskbar",):
                safe_print(f"  Window: {t}")

    print("[DONE]")

if __name__ == "__main__":
    main()
