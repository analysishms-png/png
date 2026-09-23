"""Test form opening via keyboard shortcuts (Ctrl+K etc) and direct opener calls.
Simpler approach - skip menu navigation, use shortcuts or direct Python calls.
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
    path = os.path.join(EV, f"ks_{name}.png")
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


def list_visible_windows():
    result = []
    for w in Desktop(backend="uia").windows():
        try:
            if w.is_visible():
                t = w.window_text()
                r = w.rectangle()
                skip = ["taskbar", "program manager", "chrome", "powershell",
                        "cmd.exe", "file explorer", "antigravity", "kiro",
                        "chatgpt", "health check", "edge", "opencode"]
                if t and r.width() > 100 and r.height() > 100 and not any(s in t.lower() for s in skip):
                    result.append((w.handle, t[:80], r.width(), r.height()))
        except: pass
    return result


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


def close_form():
    """Try to close any open form dialog."""
    pyautogui.hotkey("alt", "f4")
    time.sleep(0.8)
    pyautogui.press("escape")
    time.sleep(0.3)


def main():
    print("=" * 70, flush=True)
    print("KEYBOARD SHORTCUT FORM TEST", flush=True)
    print("=" * 70, flush=True)

    # Kill existing
    for w in Desktop(backend="uia").windows():
        try:
            t = w.window_text().lower()
            if "moon" in t or "mars" in t:
                w.close(); time.sleep(0.3)
        except: pass

    # Launch
    print("\n--- Launch ---", flush=True)
    proc = subprocess.Popen(
        [sys.executable, "HMS_py\\main.py"], cwd=HMS_DIR,
        env={**os.environ, "HMS_GUI": "1"})
    time.sleep(8)

    # Login
    print("\n--- Login ---", flush=True)
    if not login():
        print("FATAL: Login failed", flush=True); return
    time.sleep(2)

    app, mw = get_main()
    if not mw:
        print("FATAL: No main window", flush=True); return
    print(f"  Title: '{mw.window_text()}'", flush=True)
    img("ks_01_main")

    # Get baseline windows
    before = {w.handle for w in Desktop(backend="uia").windows()}

    # Test keyboard shortcuts defined in shell.py
    shortcuts = [
        ("Ctrl+K", "Check In"),
        ("Ctrl+T", "KOT Entry"),
        ("Ctrl+N", "Night Audit Log"),
        ("Ctrl+R", "Reservation/Cancellation"),
        ("Ctrl+P", "Plan Master"),
        ("Ctrl+F", "Guest Profile"),
        ("Ctrl+Y", "Indent"),
        ("Ctrl+G", "Folio Log"),
    ]

    for shortcut, desc in shortcuts:
        print(f"\n--- Testing {shortcut} ({desc}) ---", flush=True)
        app, mw = get_main()
        if not mw:
            print("  FATAL: Lost main", flush=True); break

        # Focus main window
        mw.set_focus()
        time.sleep(0.3)

        # Press the shortcut
        keys = shortcut.split("+")
        pyautogui.hotkey(*[k.lower() for k in keys])
        time.sleep(2)

        # Take screenshot
        safe_desc = desc.replace("/", "_").replace(" ", "_")[:25]
        img(f"ks_{safe_desc}")

        # Check for new windows
        after = list_visible_windows()
        new_wins = [(h, t, w, ht) for h, t, w, ht in after if h not in before]

        # Check for crash dialog
        crash = None
        for w in Desktop(backend="uia").windows():
            try:
                t = w.window_text().lower()
                if "error" in t or "traceback" in t or "takes 0" in t:
                    crash = w
                    break
            except: pass

        if crash:
            print(f"  CRASH: {crash.window_text()[:100]}", flush=True)
            img(f"ks_CRASH_{safe_desc}")
            close_form()
        elif new_wins:
            print(f"  FORM OPENED: {[(t, w, ht) for h, t, w, ht in new_wins[:2]]}", flush=True)
            img(f"ks_OPEN_{safe_desc}")
            close_form()
        else:
            print(f"  No new window detected", flush=True)

        close_form()
        time.sleep(0.5)

    print("\n" + "=" * 70, flush=True)
    print("DONE", flush=True)

    proc.terminate()
    try: proc.wait(timeout=5)
    except: proc.kill()


if __name__ == "__main__":
    try: main()
    except Exception as e:
        print(f"\nFATAL: {e}", flush=True)
        traceback.print_exc()
