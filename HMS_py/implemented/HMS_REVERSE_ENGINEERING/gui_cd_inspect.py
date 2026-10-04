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
    windows = Desktop(backend="uia").windows()
    cd = None
    for w in windows:
        t = w.window_text()
        if t == "Company Details":
            cd = w
            break

    if not cd:
        print("[INFO] Company Details not found")
        return

    print(f"[FOUND] Company Details")
    cd.capture_as_image().save(os.path.join(SS, "GUI_016_CD_Current.png"))
    print("[SS] GUI_016_CD_Current.png")

    # Print ALL descendants with details
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

    # Check if Login button is enabled
    try:
        login_btn = cd.child_window(title="Login", control_type="Button")
        safe_print(f"[LOGIN BTN] enabled={login_btn.is_enabled()} visible={login_btn.is_visible()}")
    except Exception as e:
        safe_print(f"[LOGIN BTN ERR] {e}")

    # Try right-click on grid area
    try:
        cd.right_click_input(coords=(900, 260))
        time.sleep(1)
        cd.capture_as_image().save(os.path.join(SS, "GUI_017_CD_RightClick.png"))
        print("[SS] GUI_017_CD_RightClick.png")
    except Exception as e:
        print(f"[RIGHT CLICK ERR] {e}")

    # Try keyboard navigation - press Down arrow to select first item
    try:
        cd.click_input(coords=(900, 260))
        time.sleep(0.5)
        from pywinauto.keyboard import send_keys
        send_keys("{DOWN}")
        time.sleep(0.5)
        send_keys("{ENTER}")
        time.sleep(2)
        cd.capture_as_image().save(os.path.join(SS, "GUI_018_CD_KeyboardNav.png"))
        print("[SS] GUI_018_CD_KeyboardNav.png")
    except Exception as e:
        print(f"[KEYBOARD NAV ERR] {e}")

    # Check windows again
    windows = Desktop(backend="uia").windows()
    for w in windows:
        t = w.window_text()
        if t and t not in ("Taskbar",):
            safe_print(f"  Window: {t}")

    print("[DONE]")

if __name__ == "__main__":
    main()
