"""Debug: Test actual form opening with correct menu paths.
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
    path = os.path.join(EV, f"f2_{name}.png")
    ImageGrab.grab().save(path)
    print(f"  [IMG] {name}.png", flush=True)


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


def click_menu_path(mw, *path_items):
    """Click through a menu path: menu1 > submenu1 > ... > leaf.
    Uses keyboard navigation for reliability.
    Returns True if we think something opened."""
    # Find menubar
    menubar_ctrl = None
    for d in mw.descendants():
        try:
            if d.element_info.control_type == "MenuBar":
                txt = d.window_text()
                if txt != "System":
                    menubar_ctrl = d
                    break
        except: continue
    
    if not menubar_ctrl:
        print("    No menubar found!", flush=True)
        return False
    
    # Find the top-level menu item
    top_menu = path_items[0]
    target_ctrl = None
    for ch in menubar_ctrl.descendants():
        try:
            if ch.element_info.control_type in ("MenuItem", "Menu") and ch.window_text() == top_menu:
                target_ctrl = ch
                break
        except: continue
    
    if not target_ctrl:
        print(f"    Menu '{top_menu}' not found in menubar!", flush=True)
        return False
    
    # Click the top-level menu
    r = target_ctrl.rectangle()
    pyautogui.click(r.left + r.width()//2, r.top + r.height()//2)
    time.sleep(0.8)
    
    if len(path_items) == 1:
        return True
    
    # For each sub-level, find the submenu item
    for level, item_name in enumerate(path_items[1:], 1):
        found = False
        # Search all popup windows
        for w in Desktop(backend="uia").windows():
            try:
                if w.handle == mw.handle:
                    continue
                r2 = w.rectangle()
                if r2.width() < 30 or r2.height() < 30:
                    continue
                app2 = Application(backend="uia").connect(handle=w.handle)
                pop = app2.window(handle=w.handle)
                for mi in pop.descendants():
                    if mi.element_info.control_type == "MenuItem" and mi.window_text() == item_name:
                        r3 = mi.rectangle()
                        pyautogui.click(r3.left + r3.width()//2, r3.top + r3.height()//2)
                        time.sleep(1)
                        found = True
                        break
                if found:
                    break
            except: continue
        
        if not found:
            # Keyboard fallback: use down arrow + enter
            for _ in range(10):
                pyautogui.press("down")
                time.sleep(0.15)
                # Check focused item
                for w in Desktop(backend="uia").windows():
                    try:
                        if w.handle == mw.handle:
                            continue
                        app2 = Application(backend="uia").connect(handle=w.handle)
                        pop = app2.window(handle=w.handle)
                        for mi in pop.descendants():
                            if mi.element_info.control_type == "MenuItem":
                                try:
                                    if mi.is_visible() and mi.window_text() == item_name:
                                        mi.click_input()
                                        time.sleep(1)
                                        found = True
                                        break
                                except: continue
                    except: continue
                if found:
                    break
            if not found:
                print(f"    Could not find submenu '{item_name}'!", flush=True)
                return False
    
    return True


def list_new_windows(mw_handle):
    """List windows that appeared after an action."""
    new = []
    for w in Desktop(backend="uia").windows():
        try:
            if not w.is_visible() or w.handle == mw_handle:
                continue
            t = w.window_text()
            r = w.rectangle()
            skip = ["taskbar", "program manager", "chrome", "powershell",
                     "notepad", "file explorer", "kiro", "chatgpt",
                     "health check", "edge", "opencode", "antigravity",
                     "cmd.exe", "windows powershell"]
            if (t and r.width() > 100 and r.height() > 100
                    and not any(s in t.lower() for s in skip)):
                new.append((w.handle, t, r.width(), r.height()))
        except: continue
    return new


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
    print("=" * 70, flush=True)
    print("FORM OPENING VERIFICATION TEST", flush=True)
    print("=" * 70, flush=True)

    # Kill existing HMS
    for w in Desktop(backend="uia").windows():
        try:
            t = w.window_text().lower()
            if "moon" in t or "mars" in t:
                w.close()
                time.sleep(0.3)
        except: pass

    # Launch
    print("\n--- Launch ---", flush=True)
    proc = subprocess.Popen(
        [sys.executable, "HMS_py\\main.py"], cwd=HMS_DIR,
        env={**os.environ, "HMS_GUI": "1"})
    time.sleep(8)

    # Login
    print("\n--- Login ---", flush=True)
    img("f2_01_login")
    if not login():
        print("FATAL: Login failed", flush=True); return
    time.sleep(2)

    # Main Window
    app, mw = get_main()
    if not mw:
        print("FATAL: No main window", flush=True); return
    print(f"  Title: '{mw.window_text()}'", flush=True)
    img("f2_02_main")

    # Test cases: (sidebar, [(menu_path, description)])
    tests = [
        ("Finance", [
            (["Transaction", "Voucher Entry", "Voucher Entry"], "Finance Voucher Entry"),
        ]),
        ("Front Office", [
            (["Operations", "WalkIn CheckIn"], "FO WalkIn CheckIn"),
        ]),
        ("Main Setup", [
            (["Front Office", "Country Master"], "Setup Country Master"),
        ]),
        ("EPABX", [
            (["Telephone Call Entry"], "EPABX Telephone Call Entry"),
        ]),
        ("Inventory", [
            (["Operations", "Indent"], "Inventory Indent"),
        ]),
    ]

    results = []
    for sidebar_name, menu_tests in tests:
        for menu_path, desc in menu_tests:
            print(f"\n--- Test: {desc} ---", flush=True)
            
            # Re-acquire main
            app, mw = get_main()
            if not mw:
                print("  FATAL: Lost main", flush=True)
                break
            
            # Click sidebar
            if not click_sidebar(mw, sidebar_name):
                print(f"  SKIP: Sidebar '{sidebar_name}' not found", flush=True)
                continue
            
            time.sleep(1)
            app, mw = get_main()
            if not mw:
                print("  FATAL: Lost main after sidebar", flush=True)
                break
            
            before_handles = set()
            for w in Desktop(backend="uia").windows():
                try: before_handles.add(w.handle)
                except: pass
            
            # Click menu path
            success = click_menu_path(mw, *menu_path)
            print(f"  Menu click result: {success}", flush=True)
            time.sleep(2)
            
            img(f"f2_{desc.replace(' ', '_')[:30]}")
            
            # Check for new windows
            after_windows = list_new_windows(mw.handle)
            new_windows = [(h, t, w, ht) for h, t, w, ht in after_windows if h not in before_handles]
            
            # Also check main window descendants for Window-type children
            dialog_children = []
            try:
                for d in mw.descendants():
                    ct = d.element_info.control_type
                    if ct == "Window" and d.handle != mw.handle:
                        dialog_children.append((d.handle, d.window_text()[:60]))
            except: pass
            
            # Check for crash dialog
            crash = find_win("error") or find_win("traceback") or find_win("takes 0")
            
            if new_windows:
                print(f"  NEW WINDOWS: {new_windows[:3]}", flush=True)
                results.append((desc, "PASS - new window"))
            elif dialog_children:
                print(f"  DIALOG CHILDREN: {dialog_children[:3]}", flush=True)
                results.append((desc, "PASS - dialog child"))
            elif crash:
                txt = crash.window_text()[:100]
                print(f"  CRASH: {txt}", flush=True)
                results.append((desc, f"FAIL - crash: {txt}"))
            else:
                print(f"  NO DIALOG DETECTED", flush=True)
                results.append((desc, "FAIL - no dialog"))
            
            # Close any popup
            pyautogui.hotkey("alt", "f4")
            time.sleep(0.5)
            pyautogui.press("escape")
            time.sleep(0.5)
            pyautogui.hotkey("alt", "f4")
            time.sleep(0.5)

    print("\n" + "=" * 70, flush=True)
    print("RESULTS:", flush=True)
    for desc, result in results:
        print(f"  {result}: {desc}", flush=True)
    
    proc.terminate()
    try: proc.wait(timeout=5)
    except: proc.kill()


if __name__ == "__main__":
    try: main()
    except Exception as e:
        print(f"\nFATAL: {e}", flush=True)
        traceback.print_exc()
