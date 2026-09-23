"""HMS Python - Module-wise GUI Testing Script"""
import os, sys, time, subprocess
import pyautogui
from datetime import datetime

PROJECT = os.path.join(os.path.dirname(os.path.abspath(__file__)), "..", "..")
EVIDENCE = os.path.dirname(os.path.abspath(__file__))
os.makedirs(EVIDENCE, exist_ok=True)

_ss = 0
def ss(name):
    global _ss; _ss += 1
    path = os.path.join(EVIDENCE, f"{_ss:02d}_{name}.png")
    pyautogui.screenshot(path)
    print(f"  SS: {_ss:02d}_{name}.png")
    return path

print("=" * 60)
print("HMS Python - Module-wise GUI Testing")
print("=" * 60)

# Kill existing HMS
subprocess.run("taskkill /F /IM python.exe /FI \"WINDOWTITLE eq *HMS*\" 2>nul", shell=True, capture_output=True)
time.sleep(1)

# Launch
print("\n[1] Launching HMS...")
proc = subprocess.Popen(
    [sys.executable, "-m", "HMS_py.main"],
    cwd=PROJECT,
    creationflags=subprocess.CREATE_NEW_PROCESS_GROUP
)
print(f"  PID: {proc.pid}")
time.sleep(5)

ss("01_app_launch")

# Connect via pywinauto
from pywinauto import Application, Desktop

desktop = Desktop(backend="uia")
print("\n[2] Windows found:")
for w in desktop.windows():
    try:
        txt = w.window_text()
        if txt and len(txt) > 1:
            print(f"  - {txt[:70]}")
    except:
        pass

ss("02_windows")

# Try to connect to login/HMS window
app = None
for w in desktop.windows():
    try:
        txt = w.window_text()
        if not txt:
            continue
        if any(k in txt for k in ["Login", "HMS", "Company", "User Information"]):
            app = Application(backend="uia").connect(handle=w.handle)
            print(f"\n  Connected to: {txt[:50]}")
            break
    except:
        pass

if app:
    win = app.top_window()
    print(f"\n  Top window: {win.window_text()[:50]}")
    try:
        win.print_control_identifiers()
    except Exception as e:
        print(f"  Control listing error: {e}")
    ss("03_login_window")
else:
    print("\n  No HMS window found yet")
    ss("03_no_window")

print("\n[DONE]")
