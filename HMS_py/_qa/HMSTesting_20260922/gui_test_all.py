"""Module-wise GUI testing - Desktop-level menubar search + keyboard nav.

Key insight: Qt menubar is a separate top-level window, not a child of main.
Must search Desktop(backend="uia").windows() for MenuBar elements.

Usage:
  cd C:\\Users\\LENOVO\\Desktop\\serialkey\\PROJECT_REPAIR - Copy\\HMS_py
  python HMS_py\\_qa\\HMSTesting_20260922\\gui_test_all.py
"""
import os, sys, io, time, subprocess, traceback
from datetime import datetime

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
    path = os.path.join(EV, f"{name}.png")
    ImageGrab.grab().save(path)
    print(f"  [IMG] {name}.png")
    return path


def find_win(substr):
    for w in Desktop(backend="uia").windows():
        try:
            if w.is_visible() and substr.lower() in w.window_text().lower():
                return w
        except:
            pass
    return None


def get_main():
    for pat in ["moon", "mars", "2026"]:
        w = find_win(pat)
        if w:
            return Application(backend="uia").connect(handle=w.handle), w
    return None, None


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


def click_sidebar(main_win, name):
    for d in main_win.descendants():
        try:
            ct = d.element_info.control_type
            txt = d.window_text().strip()
            aid = d.element_info.automation_id or ""
            if ct in ("Button", "CheckBox") and "QPushButton" in aid and txt.lower() == name.lower():
                d.click()
                time.sleep(1.5)
                return True
        except:
            continue
    return False


def find_menubar_items():
    """Search ALL windows for MenuBar elements and return top-level menu names."""
    items = []
    print("    [DEBUG] Searching windows for menubar...")
    for w in Desktop(backend="uia").windows():
        try:
            if not w.is_visible():
                continue
            r = w.rectangle()
            if r.width() < 100 or r.height() < 50:
                continue
            t = w.window_text()
            appw = Application(backend="uia").connect(handle=w.handle)
            win = appw.window(handle=w.handle)
            for d in win.descendants():
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
                                except:
                                    continue
                except:
                    continue
        except:
            continue
    print(f"    [DEBUG] Found menubar items: {items}")
    return items


def find_menubar_for_window(window_handle):
    """Find menubar items belonging to a specific window."""
    items = []
    try:
        appw = Application(backend="uia").connect(handle=window_handle)
        win = appw.window(handle=window_handle)
        for d in win.descendants():
            if d.element_info.control_type == "MenuBar":
                txt = d.window_text()
                if txt != "System":
                    for ch in d.descendants():
                        if ch.element_info.control_type in ("MenuItem", "Menu"):
                            mt = ch.window_text()
                            if mt and mt not in items:
                                items.append(mt)
    except:
        pass
    return items


def open_menubar_item(main_win_handle, menu_text, item_text=None):
    """Click a menu bar item by finding it across all windows."""
    # First, find the specific menu item control
    for w in Desktop(backend="uia").windows():
        try:
            if not w.is_visible():
                continue
            appw = Application(backend="uia").connect(handle=w.handle)
            win = appw.window(handle=w.handle)
            for d in win.descendants():
                if d.element_info.control_type == "MenuBar":
                    txt = d.window_text()
                    if txt != "System":
                        # Found the app's menubar, find the menu item
                        for ch in d.descendants():
                            if ch.element_info.control_type in ("MenuItem", "Menu"):
                                if ch.window_text() == menu_text:
                                    # Click the menu to open it
                                    r = ch.rectangle()
                                    pyautogui.click(r.left + r.width() // 2, r.top + r.height() // 2)
                                    time.sleep(0.8)

                                    if item_text:
                                        # Find the submenu item
                                        for w2 in Desktop(backend="uia").windows():
                                            try:
                                                if w2.handle == w.handle:
                                                    continue
                                                r2 = w2.rectangle()
                                                if r2.width() < 50 or r2.height() < 50:
                                                    continue
                                                app2 = Application(backend="uia").connect(handle=w2.handle)
                                                pop = app2.window(handle=w2.handle)
                                                for mi in pop.descendants():
                                                    if mi.element_info.control_type == "MenuItem" and mi.window_text() == item_text:
                                                        r3 = mi.rectangle()
                                                        pyautogui.click(r3.left + r3.width() // 2, r3.top + r3.height() // 2)
                                                        time.sleep(1)
                                                        return True
                                            except:
                                                continue
                                        # Fallback: arrow down + enter
                                        pyautogui.press("down")
                                        time.sleep(0.3)
                                        pyautogui.press("enter")
                                        time.sleep(1)
                                        return True
                                    return True
        except:
            continue
    return False


def close_dialog():
    time.sleep(0.5)
    pyautogui.hotkey("alt", "f4")
    time.sleep(1)
    pyautogui.press("escape")
    time.sleep(0.5)
    pyautogui.click(960, 540)
    time.sleep(0.3)


class Tester:
    def __init__(self):
        self.proc = None
        self.bugs = []
        self.tests = 0
        self.passed = 0

    def bug(self, mod, sev, desc):
        self.bugs.append({"module": mod, "severity": sev, "desc": desc})
        print(f"  [BUG-{sev}] {desc}")

    def ok(self, mod, cond, desc):
        self.tests += 1
        if cond:
            self.passed += 1
            print(f"  [PASS] {desc}")
        else:
            self.bug(mod, "HIGH", desc)

    def run(self):
        print("=" * 70)
        print("HMS_PY MODULE-WISE GUI TEST")
        print(f"Started: {datetime.now():%Y-%m-%d %H:%M:%S}")
        print("=" * 70)

        # Launch
        print("\n--- Launch ---")
        self.proc = subprocess.Popen(
            [sys.executable, "HMS_py\\main.py"], cwd=HMS_DIR,
            env={**os.environ, "HMS_GUI": "1"})
        time.sleep(8)

        # Login
        print("\n--- Login ---")
        img("01_login")
        if not login():
            print("FATAL: Login failed"); self._cleanup(); return
        time.sleep(2)
        img("02_after_login")

        # Main Window
        print("\n--- Main Window ---")
        app, mw = get_main()
        if not mw:
            print("FATAL: No main window"); self._cleanup(); return
        title = mw.window_text()
        print(f"  Title: '{title}'")
        img("03_main_window")
        self.ok("Main", "2026" in title, f"Title: {title}")

        # Sidebar
        sidebar = []
        for d in mw.descendants():
            try:
                ct = d.element_info.control_type
                txt = d.window_text().strip()
                aid = d.element_info.automation_id or ""
                r = d.rectangle()
                if (ct in ("Button", "CheckBox") and "QPushButton" in aid and
                    txt and len(txt) > 2 and r.left < 350):
                    sidebar.append(txt)
            except:
                continue
        print(f"  Sidebar: {sidebar}")
        self.ok("Main", len(sidebar) >= 8, f"{len(sidebar)} modules")

        # Module config: (sidebar_name, [(menu, [items])])
        modules = [
            ("Finance", [("Transaction", ["Check In"])]),
            ("Main Setup", [("General Setup", ["Charge Master"])]),
            ("Reservation", [("Operations", ["New Reservation"])]),
            ("Front Office", [("Operations", ["Check In"])]),
            ("House Keeping", [("Operations", ["Room Status Change"])]),
            ("Inventory", [("Operations", ["Indent"])]),
            ("Point Of Sale", [("POS Operations", ["KOT Entry"])]),
            ("Banquet", [("Operation", ["Hall Booking"])]),
            ("Night Audit", [("Operation", ["Night Audit"])]),
            ("EPABX", [("Telephone Call Entry", ["Call Entry"])]),
            ("Messaging", [("InBox", ["Inbox"])]),
            ("Members Mgmt", [("Operations", ["Member Billing"])]),
        ]

        for i, (mod_name, menus) in enumerate(modules):
            print(f"\n--- Module {i+1}: {mod_name} ---")

            # Re-acquire main window
            app, mw = get_main()
            if not mw:
                print("  FATAL: Lost main window"); break

            # Click sidebar
            if not click_sidebar(mw, mod_name):
                self.bug(mod_name, "MEDIUM", f"Sidebar '{mod_name}' not found")
                continue

            # Re-acquire after click
            time.sleep(1)
            app, mw = get_main()
            if not mw:
                print("  FATAL: Lost main after sidebar"); break

            fname = f"{i+1:02d}_{mod_name.replace(' ', '_')}"
            img(f"{fname}_sidebar")

            # Find menubar items (search ALL windows)
            menubar = find_menubar_items()
            print(f"  Menubar: {menubar}")
            self.ok(mod_name, len(menubar) > 0, f"Menubar: {menubar[:5]}")

            # Open form
            opened = 0
            for menu_name, items in menus[:2]:
                for item_name in items[:1]:
                    try:
                        print(f"  Opening: {menu_name} > {item_name}")
                        success = open_menubar_item(mw.handle, menu_name, item_name)
                        if success:
                            time.sleep(2)
                            img(f"{fname}_{item_name.replace(' ', '_')[:25]}")
                            # Check for new windows
                            new_wins = []
                            for w in Desktop(backend="uia").windows():
                                try:
                                    if w.is_visible() and w.handle != mw.handle:
                                        t = w.window_text()
                                        r = w.rectangle()
                                        if (t and len(t) > 3 and r.width() > 200 and r.height() > 100
                                            and not any(skip in t.lower() for skip in
                                                ["taskbar", "program manager", "chrome", "powershell",
                                                 "notepad", "file explorer", "kiro", "chatgpt",
                                                 "health check", "edge", "opencode"])):
                                            new_wins.append((w.handle, t))
                                except:
                                    continue
                            if new_wins:
                                print(f"    New: {new_wins[:3]}")
                                opened += 1
                            close_dialog()
                    except Exception as e:
                        print(f"    Error: {e}")

            self.ok(mod_name, opened > 0, f"Opened {opened} forms")

        # Summary
        print("\n" + "=" * 70)
        print(f"TOTAL: {self.tests} tests, {self.passed} passed, {len(self.bugs)} bugs")
        for b in self.bugs:
            print(f"  [{b['severity']}] {b['module']}: {b['desc']}")

        rpt = os.path.join(EV, "TEST_REPORT.md")
        with open(rpt, "w", encoding="utf-8") as f:
            f.write(f"# HMS_PY GUI Test Report\n\n")
            f.write(f"**Date:** {datetime.now():%Y-%m-%d %H:%M}\n\n")
            f.write(f"**Tests:** {self.tests} total, {self.passed} passed, {len(self.bugs)} bugs\n\n")
            f.write("## Bugs\n\n")
            for b in self.bugs:
                f.write(f"- [{b['severity']}] **{b['module']}**: {b['desc']}\n")
        print(f"\nReport: {rpt}")
        self._cleanup()

    def _cleanup(self):
        if self.proc:
            try: self.proc.terminate(); self.proc.wait(timeout=5)
            except:
                try: self.proc.kill()
                except: pass
            print(f"Terminated PID={self.proc.pid}")


if __name__ == "__main__":
    t = Tester()
    try: t.run()
    except KeyboardInterrupt: print("\nAborted"); t._cleanup()
    except Exception as e: print(f"\nFATAL: {e}"); traceback.print_exc(); t._cleanup()
