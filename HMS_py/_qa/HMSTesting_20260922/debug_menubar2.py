"""Debug: click Finance sidebar and dump full UIA tree + popup menus."""
import os, sys, io, time, subprocess
if hasattr(sys.stdout, "reconfigure"):
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8", errors="replace")

from pywinauto import Desktop, Application
import pyautogui

HMS_DIR = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"
proc = subprocess.Popen([sys.executable, "HMS_py\\main.py"], cwd=HMS_DIR,
                        env={**os.environ, "HMS_GUI": "1"})
print(f"Launched PID={proc.pid}")
time.sleep(8)

# Login
for w in Desktop(backend="uia").windows():
    if "login" in w.window_text().lower():
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
        break

for w in Desktop(backend="uia").windows():
    if "company" in w.window_text().lower():
        app2 = Application(backend="uia").connect(handle=w.handle)
        dlg2 = app2.window(handle=w.handle)
        for d in dlg2.descendants():
            if d.element_info.control_type == "Button" and d.window_text().strip() == "Login":
                d.click(); break
        time.sleep(3)
        break

# Find main window
main_handle = None
for w in Desktop(backend="uia").windows():
    t = w.window_text()
    if "moon" in t.lower() or "mars" in t.lower():
        main_handle = w.handle
        break

if not main_handle:
    print("No main window"); sys.exit(1)

app3 = Application(backend="uia").connect(handle=main_handle)
mw = app3.window(handle=main_handle)
print(f"\nMain: {mw.window_text()!r} handle={main_handle}")

# Click Finance sidebar
print("\nClicking Finance sidebar...")
for d in mw.descendants():
    ct = d.element_info.control_type
    txt = d.window_text().strip()
    aid = d.element_info.automation_id or ""
    if ct in ("Button", "CheckBox") and "QPushButton" in aid and txt == "Finance":
        d.click()
        print(f"  Clicked Finance button")
        break
time.sleep(2)

# Check if main window title changed
print(f"\nMain window title now: {mw.window_text()!r}")

# Dump ALL MenuBar elements
print("\nSearching ALL windows for MenuBar elements...")
for w in Desktop(backend="uia").windows():
    try:
        if not w.is_visible():
            continue
        t = w.window_text()
        r = w.rectangle()
        if r.width() < 50 or r.height() < 50:
            continue
        appw = Application(backend="uia").connect(handle=w.handle)
        win = appw.window(handle=w.handle)
        for d in win.descendants():
            if d.element_info.control_type == "MenuBar":
                items = []
                for ch in d.descendants():
                    if ch.element_info.control_type in ("MenuItem", "Menu"):
                        items.append(ch.window_text())
                print(f"  [{t!r}] MenuBar: items={items}")
    except:
        pass

# Now try clicking Transaction menu via Alt+F10
print("\nTrying Alt+F10 on main window...")
mw.set_focus()
time.sleep(0.3)
pyautogui.press("alt")
time.sleep(1)

# Check all windows for menu popups
print("\nAfter Alt press, checking windows for MenuItems:")
for w in Desktop(backend="uia").windows():
    try:
        if not w.is_visible():
            continue
        t = w.window_text()
        r = w.rectangle()
        if r.width() < 50 or r.height() < 50:
            continue
        appw = Application(backend="uia").connect(handle=w.handle)
        win = appw.window(handle=w.handle)
        menu_items = []
        for d in win.descendants():
            if d.element_info.control_type == "MenuItem":
                menu_items.append(d.window_text())
        if menu_items:
            print(f"  [{t!r}] handle={w.handle} MenuItems: {menu_items}")
    except:
        pass

proc.terminate()
