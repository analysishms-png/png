"""Debug: Verify what happens when menu items are clicked.

Tests the actual form-opening mechanism by:
1. Clicking a sidebar module
2. Clicking a menu item  
3. Searching for new dialogs in the UIA tree (both desktop-level AND main window children)
"""
import os, sys, io, time, subprocess, traceback
if hasattr(sys.stdout, "reconfigure"):
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8", errors="replace")
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding="utf-8", errors="replace")

PROJECT_ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy"
HMS_DIR = os.path.join(PROJECT_ROOT, "HMS_py")
EV = os.path.join(HMS_DIR, "HMS_py", "_qa", "HMSTesting_20260922", "evidence")
os.makedirs(EV, exist_ok=True)

from pywinauto import Desktop, Application
from PIL import ImageGrab
import pyautogui
pyautogui.FAILSAFE = True
pyautogui.PAUSE = 0.3


def img(name):
    path = os.path.join(EV, f"debug_{name}.png")
    ImageGrab.grab().save(path)
    print(f"  [IMG] {name}.png")


def find_win(substr):
    for w in Desktop(backend="uia").windows():
        try:
            if w.is_visible() and substr.lower() in w.window_text().lower():
                return w
        except: pass
    return None


def get_main():
    for pat in ["moon", "mars", "2026"]:
        w = find_win(pat)
        if w:
            return Application(backend="uia").connect(handle=w.handle), w
    return None, None


def list_all_windows():
    """List all visible windows with their info."""
    print("  ALL VISIBLE WINDOWS:")
    for w in Desktop(backend="uia").windows():
        try:
            if w.is_visible():
                t = w.window_text()
                r = w.rectangle()
                ct = w.element_info.control_type
                if r.width() > 50 and r.height() > 50:
                    print(f"    [{ct}] '{t}' {r.width()}x{r.height()} at ({r.left},{r.top}) handle={w.handle}")
        except: pass


def list_main_children(mw):
    """List ALL descendants of the main window."""
    print(f"  MAIN WINDOW CHILDREN (handle={mw.handle}):")
    for d in mw.descendants():
        try:
            ct = d.element_info.control_type
            txt = d.window_text()[:60] if d.window_text() else ""
            r = d.rectangle()
            aid = d.element_info.automation_id or ""
            if r.width() > 20 and r.height() > 20:
                print(f"    [{ct}] '{txt}' {r.width()}x{r.height()} at ({r.left},{r.top}) aid={aid}")
        except: pass


def click_sidebar(mw, name):
    for d in mw.descendants():
        try:
            ct = d.element_info.control_type
            txt = d.window_text().strip()
            aid = d.element_info.automation_id or ""
            if ct in ("Button", "CheckBox") and "QPushButton" in aid and txt.lower() == name.lower():
                d.click()
                time.sleep(1.5)
                return True
        except: continue
    return False


def find_menubar_in_main(mw):
    """Find menubar items from main window's descendants."""
    items = []
    for d in mw.descendants():
        try:
            if d.element_info.control_type == "MenuBar":
                txt = d.window_text()
                if txt != "System":
                    for ch in d.descendants():
                        try:
                            if ch.element_info.control_type in ("MenuItem", "Menu"):
                                mt = ch.window_text()
                                if mt and mt not in items:
                                    items.append(mt)
                        except: continue
        except: continue
    return items


def click_menu_item(mw, menu_text, item_text):
    """Click a menu bar item -> submenu item, return True if a new dialog appeared."""
    # Find menubar in main window
    for d in mw.descendants():
        try:
            if d.element_info.control_type == "MenuBar":
                txt = d.window_text()
                if txt != "System":
                    # Find the menu item
                    for ch in d.descendants():
                        try:
                            if ch.element_info.control_type in ("MenuItem", "Menu") and ch.window_text() == menu_text:
                                # Click the menu
                                r = ch.rectangle()
                                pyautogui.click(r.left + r.width()//2, r.top + r.height()//2)
                                time.sleep(1)
                                img(f"menu_{menu_text}_opened")

                                # Now find submenu
                                for w2 in Desktop(backend="uia").windows():
                                    try:
                                        if w2.handle == mw.handle:
                                            continue
                                        r2 = w2.rectangle()
                                        if r2.width() < 50 or r2.height() < 50:
                                            continue
                                        app2 = Application(backend="uia").connect(handle=w2.handle)
                                        pop = app2.window(handle=w2.handle)
                                        for mi in pop.descendants():
                                            if mi.element_info.control_type == "MenuItem" and mi.window_text() == item_text:
                                                r3 = mi.rectangle()
                                                pyautogui.click(r3.left + r3.width()//2, r3.top + r3.height()//2)
                                                time.sleep(2)
                                                img(f"clicked_{item_text}")
                                                return True
                                    except: continue

                                # Fallback: keyboard
                                pyautogui.press("down")
                                time.sleep(0.3)
                                pyautogui.press("enter")
                                time.sleep(2)
                                img(f"keyboard_{item_text}")
                                return True
                        except: continue
        except: continue
    return False


def login():
    w = find_win("login")
    if not w:
        return False
    app = Application(backend="uia").connect(handle=w.handle)
    dlg = app.window(handle=w.handle)
    edits = [d for d in dlg.descendants() if d.element_info.control_type == "Edit"]
    if len(edits) >= 2:
        edits[0].set_focus(); edits[0].set_text("SA"); time.sleep(0.2)
        for d in dlg.descendants():
            if d.element_info.control_type == "Edit" and not d.window_text():
                d.set_focus(); d.set_text("KANPUR"); break
        time.sleep(0.2)
    for d in dlg.descendants():
        if d.element_info.control_type == "Button" and "sign" in d.window_text().lower():
            d.click(); break
    time.sleep(3)
    w2 = find_win("company")
    if w2:
        app2 = Application(backend="uia").connect(handle=w2.handle)
        dlg2 = app2.window(handle=w2.handle)
        for d in dlg2.descendants():
            if d.element_info.control_type == "Button" and d.window_text().strip() == "Login":
                d.click(); break
        time.sleep(3)
    return True


def main():
    print("=" * 70)
    print("DEBUG: Form Dialog Detection Test")
    print("=" * 70)

    # Kill any existing HMS processes (not our own!)
    import signal
    for w in Desktop(backend="uia").windows():
        try:
            t = w.window_text().lower()
            if "moon" in t or "mars" in t or "2026" in t:
                w.close()
                time.sleep(0.5)
        except: pass

    # Launch
    print("\n--- Launch ---")
    proc = subprocess.Popen(
        [sys.executable, "HMS_py\\main.py"], cwd=HMS_DIR,
        env={**os.environ, "HMS_GUI": "1"})
    time.sleep(8)

    # Login
    print("\n--- Login ---")
    img("debug_01_login")
    if not login():
        print("FATAL: Login failed"); return
    time.sleep(2)
    img("debug_02_after_login")

    # Main Window
    print("\n--- Main Window ---")
    app, mw = get_main()
    if not mw:
        print("FATAL: No main window"); return
    title = mw.window_text()
    print(f"  Title: '{title}'")
    img("debug_03_main_window")

    # Test 1: Click Finance sidebar
    print("\n--- Test 1: Click Finance sidebar ---")
    if not click_sidebar(mw, "Finance"):
        print("  FAILED: Finance sidebar not found")
    else:
        time.sleep(1)
        app, mw = get_main()
        img("debug_04_finance_sidebar")
        menubar = find_menubar_in_main(mw)
        print(f"  Menubar: {menubar}")
        
        # Try to click Transaction > Check In
        print("\n--- Test 2: Click Transaction > Check In ---")
        if click_menu_item(mw, "Transaction", "Check In"):
            time.sleep(2)
            img("debug_05_after_checkin_click")
            print("  After clicking 'Check In', listing ALL windows:")
            list_all_windows()
            
            # Also check main window children
            print("  Checking main window descendants for dialogs:")
            for d in mw.descendants():
                try:
                    ct = d.element_info.control_type
                    txt = d.window_text()[:80] if d.window_text() else ""
                    if ct == "Window" and d.handle != mw.handle:
                        print(f"    FOUND DIALOG: [{ct}] '{txt}' handle={d.handle}")
                except: continue

    # Test 3: Try a different module - EPABX
    print("\n--- Test 3: Click EPABX sidebar ---")
    app, mw = get_main()
    if mw and click_sidebar(mw, "EPABX"):
        time.sleep(1)
        app, mw = get_main()
        img("debug_06_epabx_sidebar")
        menubar = find_menubar_in_main(mw)
        print(f"  Menubar: {menubar}")

        print("\n--- Test 4: Click Telephone Call Entry > Call Entry ---")
        if click_menu_item(mw, "Telephone Call Entry", "Call Entry"):
            time.sleep(2)
            img("debug_07_after_call_entry_click")
            print("  After clicking 'Call Entry', listing ALL windows:")
            list_all_windows()
            
            # Check for crash dialog
            crash = find_win("error") or find_win("takes 0")
            if crash:
                print(f"  CRASH DIALOG FOUND: {crash.window_text()}")
                img("debug_08_crash")
            else:
                print("  No crash dialog found")
                
            # Check main window descendants
            print("  Checking main window descendants for dialogs:")
            for d in mw.descendants():
                try:
                    ct = d.element_info.control_type
                    txt = d.window_text()[:80] if d.window_text() else ""
                    if ct == "Window" and d.handle != mw.handle:
                        print(f"    FOUND DIALOG: [{ct}] '{txt}' handle={d.handle}")
                except: continue

    print("\n--- Cleanup ---")
    proc.terminate()
    try: proc.wait(timeout=5)
    except: proc.kill()
    print("Done")


if __name__ == "__main__":
    try: main()
    except KeyboardInterrupt: print("\nAborted")
    except Exception as e: print(f"\nFATAL: {e}"); traceback.print_exc()
