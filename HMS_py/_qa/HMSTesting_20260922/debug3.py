"""Quick debug: menubar search after Finance click."""
import os, sys, io, time, subprocess
if hasattr(sys.stdout, "reconfigure"):
    sys.stdout = io.TextIOWrapper(sys.stdout.buffer, encoding="utf-8", errors="replace")

from pywinauto import Desktop, Application

HMS_DIR = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py"
proc = subprocess.Popen([sys.executable, "HMS_py\\main.py"], cwd=HMS_DIR,
                        env={**os.environ, "HMS_GUI": "1"})
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

# Find main
main_handle = None
for w in Desktop(backend="uia").windows():
    t = w.window_text()
    if "moon" in t.lower() or "mars" in t.lower():
        main_handle = w.handle
        break

app3 = Application(backend="uia").connect(handle=main_handle)
mw = app3.window(handle=main_handle)
print(f"Main: {mw.window_text()!r} handle={main_handle}")

# Click Finance
for d in mw.descendants():
    ct = d.element_info.control_type
    txt = d.window_text().strip()
    aid = d.element_info.automation_id or ""
    if ct in ("Button", "CheckBox") and "QPushButton" in aid and txt == "Finance":
        d.click()
        print("Clicked Finance")
        break
time.sleep(2)

# Search ALL windows
print("\nAfter Finance click, searching ALL windows:")
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
        descs = win.descendants()
        menubars = [d for d in descs if d.element_info.control_type == "MenuBar"]
        if menubars:
            for mb in menubars:
                mb_text = mb.window_text()
                items = []
                for ch in mb.descendants():
                    try:
                        if ch.element_info.control_type in ("MenuItem", "Menu"):
                            items.append(ch.window_text())
                    except:
                        pass
                print(f"  [{t}] MenuBar text={mb_text!r} items={items}")
    except Exception as e:
        pass

proc.terminate()
