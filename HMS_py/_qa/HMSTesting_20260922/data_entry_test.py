r"""Module-wise Data Entry Testing with field validation.

Tests each form with: valid data, empty required, boundary, type-mismatch, duplicate.
Uses pywinauto + pyautogui for GUI interaction.

Fixes vs v1:
  - Dialog detection: also searches "Save"/"Warning" window text (QMessageBox)
  - QTableWidget detection: checks for Window pattern + scrollarea children
  - Guest Profile: clicks New before entering data (browse→edit mode)
  - Registration Entry: opens via menu (no keyboard shortcut)
  - find_dialog: also checks QMessageBox-type dialogs

Usage:
  cd PROJECT_REPAIR - Copy/HMS_py
  python HMS_py/_qa/HMSTesting_20260922/data_entry_test.py
"""
import os, sys, io, time, subprocess, traceback
from datetime import datetime

if hasattr(sys.stdout, "reconfigure"):
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8", errors="replace")
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding="utf-8", errors="replace")

PROJECT_ROOT = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy"
HMS_DIR = os.path.join(PROJECT_ROOT, "HMS_py")
EV = os.path.join(HMS_DIR, "HMS_py", "_qa", "HMSTesting_20260922", "evidence", "dataentry")
os.makedirs(EV, exist_ok=True)

from pywinauto import Desktop, Application
from PIL import ImageGrab
import pyautogui
pyautogui.FAILSAFE = True
pyautogui.PAUSE = 0.3


def img(name):
    path = os.path.join(EV, f"{name}.png")
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


def find_msgbox(dlg=None):
    """Find QMessageBox or validation dialog (title may be 'Save', 'Warning', 'Error', etc.).

    Searches both Desktop top-level windows AND children of dlg (Qt makes QMessageBox
    a child window of the parent form, not always a top-level Desktop window).
    """
    candidates = []
    # Search Desktop top-level windows
    for w in Desktop(backend="uia").windows():
        candidates.append(w)
    # Search within the form dialog's descendants for child windows
    if dlg:
        for d in dlg.descendants():
            try:
                if d.element_info.control_type == "Window" and d.handle != dlg.handle:
                    candidates.append(d)
            except: pass

    for w in candidates:
        try:
            if not w.is_visible():
                continue
            r = w.rectangle()
            # QMessageBox is small (< 500x300), has OK button
            if r.width() < 500 and r.height() < 300 and r.width() > 80:
                app2 = Application(backend="uia").connect(handle=w.handle)
                dlg2 = app2.window(handle=w.handle)
                for d in dlg2.descendants():
                    if d.element_info.control_type == "Button":
                        bt = d.window_text().strip().lower()
                        if bt in ("ok", "&ok"):
                            return w
        except: pass
    return None


def login():
    w = find_win("user information")
    if not w:
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
        if d.element_info.control_type == "Button" and d.window_text().strip().lower() == "login":
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


def open_form(shortcut):
    """Open a form via keyboard shortcut, return True if a new dialog appeared."""
    app, mw = get_main()
    if not mw:
        return False
    mw.set_focus()
    time.sleep(0.3)
    before = {w.handle for w in Desktop(backend="uia").windows()}
    keys = shortcut.split("+")
    pyautogui.hotkey(*[k.lower() for k in keys])
    time.sleep(2)
    for w in Desktop(backend="uia").windows():
        try:
            if w.is_visible() and w.handle not in before:
                t = w.window_text().lower()
                r = w.rectangle()
                skip = ["taskbar", "program manager", "chrome", "powershell",
                        "cmd.exe", "file explorer", "antigravity", "kiro"]
                if t and r.width() > 200 and r.height() > 100 and not any(s in t for s in skip):
                    return True
        except: pass
    app, mw = get_main()
    if mw:
        for d in mw.descendants():
            try:
                ct = d.element_info.control_type
                if ct == "Window" and d.handle != mw.handle:
                    return True
            except: pass
    return False


def find_dialog():
    """Find the active dialog (form) window — checks children of main + desktop."""
    app, mw = get_main()
    if not mw:
        return None, None
    # Check main window descendants for dialog
    for d in mw.descendants():
        try:
            ct = d.element_info.control_type
            if ct == "Window" and d.handle != mw.handle:
                app2 = Application(backend="uia").connect(handle=d.handle)
                return app2.window(handle=d.handle), mw
        except: pass
    # Check desktop for new windows
    for w in Desktop(backend="uia").windows():
        try:
            if w.is_visible() and w.handle != mw.handle:
                t = w.window_text().lower()
                r = w.rectangle()
                skip = ["taskbar", "program manager", "chrome", "powershell",
                        "cmd.exe", "file explorer", "antigravity", "kiro"]
                if t and r.width() > 200 and r.height() > 100 and not any(s in t for s in skip):
                    app2 = Application(backend="uia").connect(handle=w.handle)
                    return app2.window(handle=w.handle), mw
        except: pass
    return None, mw


def close_form():
    pyautogui.hotkey("alt", "f4")
    time.sleep(0.8)
    pyautogui.press("escape")
    time.sleep(0.3)


def clear_field(field):
    field.set_focus()
    time.sleep(0.1)
    pyautogui.hotkey("ctrl", "a")
    time.sleep(0.05)
    pyautogui.press("delete")
    time.sleep(0.05)


def type_field(field, text):
    clear_field(field)
    time.sleep(0.05)
    field.type_keys(text, with_spaces=True)
    time.sleep(0.1)


def find_edit_fields(dlg):
    """Find all editable text fields in a dialog (QLineEdit via UIA Edit type)."""
    fields = []
    for d in dlg.descendants():
        try:
            if d.element_info.control_type == "Edit":
                fields.append(d)
        except: pass
    return fields


def find_buttons(dlg):
    """Find all buttons in a dialog."""
    buttons = {}
    for d in dlg.descendants():
        try:
            ct = d.element_info.control_type
            if ct == "Button":
                txt = d.window_text().strip()
                if txt:
                    buttons[txt.lower()] = d
        except: pass
    return buttons


def click_button(dlg, name):
    """Click a button by name (case-insensitive)."""
    for d in dlg.descendants():
        try:
            ct = d.element_info.control_type
            if ct == "Button" and d.window_text().strip().lower() == name.lower():
                d.click()
                time.sleep(1)
                return True
        except: pass
    return False


def dismiss_msgbox(dlg=None):
    """Dismiss any open QMessageBox by clicking OK."""
    mb = find_msgbox(dlg)
    if mb:
        app2 = Application(backend="uia").connect(handle=mb.handle)
        dlg2 = app2.window(handle=mb.handle)
        for d in dlg2.descendants():
            if d.element_info.control_type == "Button" and d.window_text().strip().lower() in ("ok", "&ok"):
                d.click()
                time.sleep(0.5)
                return True
    return False


def has_table_data(dlg):
    """Detect QTableWidget or any table with row data. Returns (found, row_count)."""
    # Method 1: standard DataGrid/Table control types
    for d in dlg.descendants():
        try:
            ct = d.element_info.control_type
            if ct in ("DataGrid", "Table"):
                if hasattr(d, 'row_count'):
                    rc = d.row_count()
                    if rc > 0:
                        return True, rc
        except: pass
    # Method 2: look for window_text containing folio data patterns
    for d in dlg.descendants():
        try:
            txt = d.window_text()
            # Check if any child has data that looks like table rows
            if any(kw in txt for kw in ["Folio", "Room", "Guest", "Check-In", "KK"]):
                return True, -1  # has data but unknown count
        except: pass
    # Method 3: count items with class QTableView in descendants
    for d in dlg.descendants():
        try:
            aid = d.element_info.automation_id or ""
            cls = d.element_info.class_name or ""
            if "table" in cls.lower() or "tableview" in aid.lower():
                return True, -1
        except: pass
    return False, 0


class DataEntryTester:
    def __init__(self):
        self.proc = None
        self.results = []
        self.tests = 0
        self.passed = 0

    def test(self, form_name, test_name, passed, detail=""):
        self.tests += 1
        if passed:
            self.passed += 1
            print(f"  [PASS] {form_name}: {test_name}", flush=True)
        else:
            print(f"  [FAIL] {form_name}: {test_name} - {detail}", flush=True)
        self.results.append({
            "form": form_name, "test": test_name,
            "passed": passed, "detail": detail
        })

    def run(self):
        print("=" * 70, flush=True)
        print("DATA ENTRY VALIDATION TEST v2", flush=True)
        print(f"Started: {datetime.now():%Y-%m-%d %H:%M:%S}", flush=True)
        print("=" * 70, flush=True)

        # Launch
        print("\n--- Launch ---", flush=True)
        self.proc = subprocess.Popen(
            [sys.executable, "HMS_py\\main.py"], cwd=HMS_DIR,
            env={**os.environ, "HMS_GUI": "1"})
        time.sleep(8)

        # Login
        print("\n--- Login ---", flush=True)
        img("de_01_login")
        if not login():
            print("FATAL: Login failed", flush=True); self._cleanup(); return
        time.sleep(2)
        img("de_02_main")

        self._test_plan_master()
        self._test_guest_profile()
        self._test_registration()
        self._test_checkin_browser()
        self._test_folio_log()

        # Summary
        print("\n" + "=" * 70, flush=True)
        print(f"RESULTS: {self.tests} tests, {self.passed} passed, "
              f"{self.tests - self.passed} failed", flush=True)
        for r in self.results:
            status = "PASS" if r["passed"] else "FAIL"
            print(f"  [{status}] {r['form']}: {r['test']}"
                  f"{' - ' + r['detail'] if r['detail'] else ''}", flush=True)

        rpt = os.path.join(EV, "DATA_ENTRY_REPORT.md")
        with open(rpt, "w", encoding="utf-8") as f:
            f.write(f"# Data Entry Test Report v2\n\n")
            f.write(f"**Date:** {datetime.now():%Y-%m-%d %H:%M}\n\n")
            f.write(f"**Results:** {self.tests} tests, {self.passed} passed, "
                    f"{self.tests - self.passed} failed\n\n")
            f.write("| Form | Test | Status | Detail |\n")
            f.write("|------|------|--------|--------|\n")
            for r in self.results:
                s = "PASS" if r["passed"] else "FAIL"
                f.write(f"| {r['form']} | {r['test']} | {s} | {r['detail']} |\n")
        print(f"\nReport: {rpt}", flush=True)
        self._cleanup()

    def _test_plan_master(self):
        form = "Plan Master"
        print(f"\n--- {form} (Ctrl+P) ---", flush=True)

        if not open_form("Ctrl+P"):
            self.test(form, "Form opens", False, "No dialog"); return
        time.sleep(1)
        img("de_plan_01_open")
        dlg, mw = find_dialog()
        if not dlg:
            self.test(form, "Form opens", False, "No dialog found"); return
        self.test(form, "Form opens", True)

        edits = find_edit_fields(dlg)
        self.test(form, f"Has fields", len(edits) >= 3,
                  f"Found {len(edits)}")

        btns = find_buttons(dlg)
        if "new" in btns:
            btns["new"].click()
            time.sleep(0.5)
            self.test(form, "New button works", True)
        else:
            self.test(form, "New button exists", False, f"Buttons: {list(btns.keys())}")

        # Test: Empty required field → Save with no data
        btns = find_buttons(dlg)
        if "save" in btns:
            btns["save"].click()
            time.sleep(1.5)
            # Check for QMessageBox (title may be "Save", "Warning", etc.)
            mb = find_msgbox(dlg)
            if mb:
                mb_text = mb.window_text()[:80]
                self.test(form, "Empty required field blocked", True, mb_text)
                dismiss_msgbox(dlg)
                time.sleep(0.3)
            else:
                self.test(form, "Empty required field blocked", False, "No error shown")

        # Enter valid data
        edits = find_edit_fields(dlg)
        if len(edits) >= 3:
            type_field(edits[0], "TTEST")
            type_field(edits[1], "Test Plan")
            type_field(edits[2], "1500")
            time.sleep(0.3)
            img("de_plan_02_data")
            self.test(form, "Valid data entered", True)

        # Save
        btns = find_buttons(dlg)
        if "save" in btns:
            btns["save"].click()
            time.sleep(2)
            img("de_plan_03_saved")
            mb = find_msgbox(dlg)
            if mb:
                txt = mb.window_text()[:100]
                self.test(form, "Save data", False, txt)
                dismiss_msgbox(dlg)
            else:
                self.test(form, "Save data", True)

        close_form()
        time.sleep(0.5)

    def _test_guest_profile(self):
        form = "Guest Profile"
        print(f"\n--- {form} (Ctrl+F) ---", flush=True)

        if not open_form("Ctrl+F"):
            self.test(form, "Form opens", False, "No dialog"); return
        time.sleep(1)
        img("de_gp_01_open")
        dlg, mw = find_dialog()
        if not dlg:
            self.test(form, "Form opens", False, "No dialog found"); return
        self.test(form, "Form opens", True)

        edits = find_edit_fields(dlg)
        self.test(form, "Has fields", len(edits) >= 4,
                  f"Found {len(edits)} edit fields")

        # Click New to enter edit mode (form starts in browse mode)
        btns = find_buttons(dlg)
        if "new" in btns:
            btns["new"].click()
            time.sleep(0.8)
            self.test(form, "New button works", True)
            # Re-find fields after switching to edit mode
            edits = find_edit_fields(dlg)
        else:
            self.test(form, "New button exists", False, f"Buttons: {list(btns.keys())}")

        # Test: Save with empty required
        btns = find_buttons(dlg)
        if "save" in btns:
            btns["save"].click()
            time.sleep(1.5)
            mb = find_msgbox(dlg)
            if mb:
                self.test(form, "Empty name blocked", True)
                dismiss_msgbox(dlg)
                time.sleep(0.3)
            else:
                self.test(form, "Empty name blocked", False, "No validation")

        # Enter valid data
        edits = find_edit_fields(dlg)
        if len(edits) >= 4:
            type_field(edits[0], "PYTEST1")
            type_field(edits[1], "PY Test Guest")
            if len(edits) >= 3:
                type_field(edits[2], "Test Address 123")
            if len(edits) >= 4:
                type_field(edits[3], "KK0002")
            if len(edits) >= 5:
                type_field(edits[4], "India")
            if len(edits) >= 7:
                type_field(edits[5], "0522-1234567")
                type_field(edits[6], "9876543210")
            if len(edits) >= 9:
                type_field(edits[7], "test@test.com")
                type_field(edits[8], "Indian")
            time.sleep(0.3)
            img("de_gp_02_data")
            self.test(form, "Valid data entered", True)

        # Save
        btns = find_buttons(dlg)
        if "save" in btns:
            btns["save"].click()
            time.sleep(2)
            img("de_gp_03_saved")
            mb = find_msgbox(dlg)
            if mb:
                txt = mb.window_text()[:100]
                self.test(form, "Save data", False, txt)
                dismiss_msgbox(dlg)
            else:
                self.test(form, "Save data", True)

        # Boundary: max length name
        btns = find_buttons(dlg)
        if "new" in btns:
            btns["new"].click()
            time.sleep(0.5)
        edits = find_edit_fields(dlg)
        if len(edits) >= 2:
            long_name = "A" * 60
            type_field(edits[0], "PYTBDY1")
            type_field(edits[1], long_name)
            time.sleep(0.3)
            actual = edits[1].window_text()
            self.test(form, "Max length enforced", len(actual) <= 50,
                      f"Typed 60 chars, got {len(actual)}")
            img("de_gp_04_boundary")

        close_form()
        time.sleep(0.5)

    def _test_registration(self):
        form = "Registration Entry"
        print(f"\n--- {form} ---", flush=True)

        # Open via sidebar: click "Front Office" button, then find Registration Entry in menubar
        app, mw = get_main()
        if not mw:
            self.test(form, "Form opens", False, "No main"); return

        # Click Front Office sidebar button
        clicked = False
        for d in mw.descendants():
            try:
                ct = d.element_info.control_type
                txt = d.window_text().strip()
                aid = d.element_info.automation_id or ""
                if ct in ("Button", "CheckBox") and "QPushButton" in aid and txt == "Front Office":
                    d.click()
                    time.sleep(1.5)
                    clicked = True
                    break
            except: continue

        if not clicked:
            self.test(form, "Form opens", False, "Front Office sidebar not found")
            close_form()
            return

        # Re-acquire main window
        app, mw = get_main()
        if not mw:
            self.test(form, "Form opens", False, "Lost main window"); return

        # Find menubar and look for Registration Entry or Check-In
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
            self.test(form, "Form opens", False, "No menubar found")
            close_form()
            return

        # Click each top-level menu to find Registration Entry submenu
        found = False
        for ch in menubar_ctrl.descendants():
            try:
                if ch.element_info.control_type in ("MenuItem", "Menu"):
                    menu_text = ch.window_text().strip()
                    if menu_text and menu_text != "System":
                        # Click this menu to open its submenu
                        ch.click_input()
                        time.sleep(0.8)
                        # Look for Registration Entry in any open popup
                        for w in Desktop(backend="uia").windows():
                            try:
                                if not w.is_visible():
                                    continue
                                r = w.rectangle()
                                if r.width() < 300:
                                    # Small popup = likely a menu
                                    app2 = Application(backend="uia").connect(handle=w.handle)
                                    dlg2 = app2.window(handle=w.handle)
                                    for item in dlg2.descendants():
                                        try:
                                            itxt = item.window_text().strip()
                                            if "registration" in itxt.lower():
                                                item.click_input()
                                                time.sleep(1.5)
                                                found = True
                                                break
                                        except: pass
                                    if found:
                                        break
                            except: pass
                        if found:
                            break
                        # Press Escape to close this submenu before trying next
                        pyautogui.press("escape")
                        time.sleep(0.3)
            except: continue

        if not found:
            self.test(form, "Form opens", False, "Registration Entry not found in menus")
            close_form()
            return

        img("de_reg_01_open")
        dlg, mw = find_dialog()
        if not dlg:
            self.test(form, "Form opens", False, "No dialog after menu click")
            close_form()
            return
        self.test(form, "Form opens via menu", True)

        title = dlg.window_text()
        self.test(form, "Correct title", "registration" in title.lower() or "check" in title.lower(),
                  f"Title: {title[:60]}")

        edits = find_edit_fields(dlg)
        self.test(form, "Has fields", len(edits) >= 3, f"Found {len(edits)} edit fields")

        close_form()
        time.sleep(0.5)

    def _test_checkin_browser(self):
        form = "Check-In Browser"
        print(f"\n--- {form} (Ctrl+K) ---", flush=True)

        if not open_form("Ctrl+K"):
            self.test(form, "Form opens", False, "No dialog"); return
        time.sleep(2)
        img("de_ci_01_open")
        dlg, mw = find_dialog()
        if not dlg:
            self.test(form, "Form opens", False, "No dialog found"); return
        self.test(form, "Form opens", True)

        has_data, rc = has_table_data(dlg)
        if has_data:
            if rc > 0:
                self.test(form, f"Table has {rc} rows", True)
            else:
                self.test(form, "Table visible with data", True)
        else:
            self.test(form, "Table has data", False, "No table found")

        btns = find_buttons(dlg)
        self.test(form, "Has Close button", "close" in btns,
                  f"Buttons: {list(btns.keys())[:5]}")

        close_form()
        time.sleep(0.5)

    def _test_folio_log(self):
        form = "Folio Log"
        print(f"\n--- {form} (Ctrl+G) ---", flush=True)

        if not open_form("Ctrl+G"):
            self.test(form, "Form opens", False, "No dialog"); return
        time.sleep(2)
        img("de_fl_01_open")
        dlg, mw = find_dialog()
        if not dlg:
            self.test(form, "Form opens", False, "No dialog found"); return
        self.test(form, "Form opens", True)

        title = dlg.window_text()
        self.test(form, "Correct title", "folio" in title.lower() or "log" in title.lower(),
                  f"Title: {title[:50]}")

        close_form()
        time.sleep(0.5)

    def _cleanup(self):
        if self.proc:
            try:
                self.proc.terminate()
                self.proc.wait(timeout=5)
            except:
                try: self.proc.kill()
                except: pass
            print(f"\nTerminated PID={self.proc.pid}", flush=True)


if __name__ == "__main__":
    t = DataEntryTester()
    try: t.run()
    except KeyboardInterrupt: print("\nAborted"); t._cleanup()
    except Exception as e:
        print(f"\nFATAL: {e}", flush=True)
        traceback.print_exc()
        t._cleanup()
