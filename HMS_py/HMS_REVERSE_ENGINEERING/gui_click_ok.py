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

def main():
    db_win = Desktop(backend="uia").window(title="Database Update")
    if db_win.exists():
        db_win.capture_as_image().save(os.path.join(SS, "GUI_031_Dialog.png"))
        ok_btn = db_win.child_window(title="OK", control_type="Button")
        ok_btn.click()
        print("[CLICKED] OK")
        time.sleep(2)

    cd = Desktop(backend="uia").window(title="Company Details")
    if cd.exists():
        cd.capture_as_image().save(os.path.join(SS, "GUI_032_CD_AfterOK.png"))
        login_btn = cd.child_window(title="Login", control_type="Button")
        login_btn.click()
        print("[CLICKED] Login")
        time.sleep(5)

        main_win = Desktop(backend="uia").window(title_re=".*HMS.*|.*MDI.*|.*Analysis.*")
        if main_win.exists():
            main_win.capture_as_image().save(os.path.join(SS, "GUI_033_MainMenu.png"))
            print(f"[MAIN] {main_win.window_text()}")
        else:
            print("[INFO] Checking windows after Login:")
            for w in Desktop(backend="uia").windows():
                t = w.window_text()
                if t and t not in ("Taskbar",):
                    safe_t = t.encode("ascii", errors="replace").decode("ascii")
                    print(f"  {safe_t}")

    print("[DONE]")

if __name__ == "__main__":
    main()
