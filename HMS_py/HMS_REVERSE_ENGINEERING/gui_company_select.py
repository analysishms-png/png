import time
import os
from pywinauto import Application

SS = r"C:\PENDRIVE\HMS\HMS_REVERSE_ENGINEERING\screenshots"

def main():
    app = Application(backend="uia").connect(title="Company Details", timeout=10)
    dlg = app.top_window()

    # Click Database Update first
    db_btn = dlg.child_window(title="Database Update", control_type="Button")
    db_btn.click()
    time.sleep(3)

    dlg.capture_as_image().save(os.path.join(SS, "GUI_009_AfterDBUpdate.png"))
    print("[SS] GUI_009_AfterDBUpdate.png")

    # Check all descendants for any grid/list
    all_ctrls = dlg.descendants()
    print(f"[ALL CONTROLS] {len(all_ctrls)}")
    for c in all_ctrls:
        ct = c.control_type()
        t = c.window_text()
        if ct not in ("Button", "Edit", "Group", "Window", "Dialog", "TitleBar"):
            print(f"  [{ct}] {t[:80] if t else ''}")

    # Also check for DataGrid, ListView, Table
    for ctrl_type in ["DataGrid", "ListView", "Table", "List", "ComboBox"]:
        items = dlg.descendants(control_type=ctrl_type)
        if items:
            print(f"[{ctrl_type}] Found {len(items)}")
            for item in items:
                print(f"  - {item.window_text()[:80]}")

    # Try clicking Login with empty fields
    login_btn = dlg.child_window(title="Login", control_type="Button")
    login_btn.click()
    time.sleep(5)

    # Check what windows exist now
    from pywinauto import Desktop
    windows = Desktop(backend="uia").windows()
    for w in windows:
        t = w.window_text()
        if t and t not in ("Taskbar",):
            print(f"  Window: {t}")

    print("[DONE]")

if __name__ == "__main__":
    main()
