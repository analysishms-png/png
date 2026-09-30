import time
import os
from pywinauto import Application, Desktop

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
    # Find Company Details window
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

    print(f"[FOUND] Company Details window")
    snap(cd, "GUI_012_CD_Debug.png")

    # Click Database Update first
    try:
        db_btn = cd.child_window(title="Database Update", control_type="Button")
        db_btn.click()
        time.sleep(3)
        print("[CLICKED] Database Update")
        snap(cd, "GUI_013_CD_AfterDBUpdate.png")
    except Exception as e:
        print(f"[DB UPDATE ERR] {e}")

    # Check all controls
    all_ctrls = cd.descendants()
    print(f"[ALL CONTROLS] {len(all_ctrls)}")
    for c in all_ctrls:
        ct = c.control_type()
        t = c.window_text()
        if ct not in ("Button", "Edit", "Group", "Window", "Dialog", "TitleBar", "Pane"):
            safe_print(f"  [{ct}] {t[:80] if t else ''}")

    # Try to find grid items by text
    try:
        items = cd.descendants(control_type="ListItem")
        print(f"[LISTITEMS] {len(items)}")
        for item in items:
            safe_print(f"  - {item.window_text()[:80]}")
    except:
        pass

    # Try DataItem
    try:
        items = cd.descendants(control_type="DataItem")
        print(f"[DATAITEMS] {len(items)}")
        for item in items:
            safe_print(f"  - {item.window_text()[:80]}")
    except:
        pass

    # Try to click on grid area and see what happens
    # Grid is at approximately (768, 231) to (1220, 291) based on screenshot
    try:
        cd.click_input(coords=(900, 260))
        time.sleep(1)
        print("[CLICKED] Grid area")
        snap(cd, "GUI_014_CD_GridClicked.png")
    except Exception as e:
        print(f"[GRID CLICK ERR] {e}")

    # Try double click
    try:
        cd.double_click_input(coords=(900, 260))
        time.sleep(2)
        print("[DOUBLE CLICKED] Grid area")
        snap(cd, "GUI_015_CD_GridDblClicked.png")
    except Exception as e:
        print(f"[GRID DBLCLICK ERR] {e}")

    # Check windows again
    windows = Desktop(backend="uia").windows()
    for w in windows:
        t = w.window_text()
        if t and t not in ("Taskbar",):
            safe_print(f"  Window: {t}")

    print("[DONE]")

if __name__ == "__main__":
    main()
