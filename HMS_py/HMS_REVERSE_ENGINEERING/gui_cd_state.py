import time
import os
from pywinauto import Desktop

SS = r"C:\PENDRIVE\HMS\HMS_REVERSE_ENGINEERING\screenshots"

def safe_print(text):
    try:
        print(text)
    except:
        print(text.encode("ascii", errors="replace").decode("ascii"))

def main():
    cd = Desktop(backend="uia").window(title="Company Details")
    if not cd.exists():
        print("[INFO] Company Details not found")
        return

    print("[FOUND] Company Details")
    cd.capture_as_image().save(os.path.join(SS, "GUI_034_CD_State.png"))
    print("[SS] GUI_034_CD_State.png")

    # Print all controls
    all_ctrls = cd.descendants()
    print(f"[ALL CONTROLS] {len(all_ctrls)}")
    for c in all_ctrls:
        try:
            ct = c.element_info.control_type
        except:
            ct = "Unknown"
        t = c.window_text()
        try:
            rect = c.rectangle()
            safe_print(f"  [{ct}] '{t[:60]}' @({rect.left},{rect.top})-({rect.right},{rect.bottom})")
        except:
            safe_print(f"  [{ct}] '{t[:60]}'")

    # Try to click Login button directly
    try:
        login_btn = cd.child_window(title="Login", control_type="Button")
        safe_print(f"[LOGIN BTN] exists={login_btn.exists()}")
        login_btn.click()
        time.sleep(5)
        print("[CLICKED] Login")
    except Exception as e:
        safe_print(f"[LOGIN ERR] {e}")

    # Check for main menu
    for title in ["HMS", "MDI", "Analysis", "HMS - Hotel Management System"]:
        main_win = Desktop(backend="uia").window(title=title, found_index=0)
        if main_win.exists():
            time.sleep(2)
            main_win.capture_as_image().save(os.path.join(SS, "GUI_035_MainMenu.png"))
            safe_print(f"[MAIN] {main_win.window_text()}")
            main_win.print_control_identifiers()
            break
    else:
        print("[INFO] Main menu not found, listing all windows:")
        for w in Desktop(backend="uia").windows():
            t = w.window_text()
            if t and t not in ("Taskbar",):
                safe_print(f"  Window: {t}")

    print("[DONE]")

if __name__ == "__main__":
    main()
