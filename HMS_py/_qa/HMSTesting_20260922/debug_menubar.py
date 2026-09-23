"""Debug menubar structure after clicking Finance."""
import os, sys, io, time
if hasattr(sys.stdout, "reconfigure"):
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8", errors="replace")
    sys.stderr = io.TextIOWrapper(sys.stderr.buffer, encoding="utf-8", errors="replace")

from pywinauto import Desktop, Application
import subprocess

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

# Main window
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
print(f"Main: {mw.window_text()!r}")

# Click Finance sidebar
for d in mw.descendants():
    ct = d.element_info.control_type
    txt = d.window_text().strip()
    aid = d.element_info.automation_id or ""
    if ct in ("Button", "CheckBox") and "QPushButton" in aid and txt == "Finance":
        d.click()
        print("Clicked Finance")
        break
time.sleep(1.5)

# Find menubar
menubar = None
for d in mw.descendants():
    if d.element_info.control_type == "MenuBar":
        txt = d.window_text()
        if txt and txt != "System":
            menubar = d
            break

if not menubar:
    print("No menubar"); sys.exit(1)

print(f"Menubar: {menubar.window_text()!r}")

# Get top-level menus
menus = []
for d in menubar.children():
    txt = d.window_text()
    if txt:
        menus.append((txt, d))

print(f"Top-level menus: {[m[0] for m in menus]}")

# Click Transaction menu
for name, ctrl in menus:
    if name == "Transaction":
        print(f"\nClicking '{name}'...")
        ctrl.click_input()
        time.sleep(1.5)
        break

# Now check ALL windows for popup menu
print("\nAll windows after clicking Transaction:")
for w in Desktop(backend="uia").windows():
    try:
        t = w.window_text()
        r = w.rectangle()
        ct = w.element_info.control_type if hasattr(w, "element_info") else "?"
        if r.width() > 10 and r.height() > 10:
            print(f"  [{w.handle}] {t!r} rect=({r.left},{r.top},{r.right},{r.bottom})")
            # Check for menu items inside
            app4 = Application(backend="uia").connect(handle=w.handle)
            win = app4.window(handle=w.handle)
            items = [d for d in win.descendants() if d.element_info.control_type == "MenuItem"]
            if items:
                for it in items[:10]:
                    print(f"    MenuItem: {it.window_text()!r}")
    except:
        pass

proc.terminate()
