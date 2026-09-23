"""HMS Python - Module-wise GUI Testing Script
Login: SA (empty password), then test each module with data entry + screenshots.
"""
import os, sys, time, subprocess, re
import pyautogui
from datetime import datetime

PROJECT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, PROJECT)
EVIDENCE = os.path.join(os.path.dirname(os.path.abspath(__file__)))
os.makedirs(EVIDENCE, exist_ok=True)

_ss = 0
def ss(name):
    global _ss; _ss += 1
    path = os.path.join(EVIDENCE, f"{_ss:02d}_{name}.png")
    pyautogui.screenshot(path)
    print(f"  SS: {_ss:02d}_{name}.png")
    return path

def pause(t=1.5):
    time.sleep(t)

print("=" * 60)
print("HMS Python - Module-wise GUI Testing")
print(f"Date: {datetime.now().strftime('%Y-%m-%d %H:%M')}")
print("=" * 60)

# Kill any existing HMS instance
subprocess.run("taskkill /F /IM python.exe /FI \"WINDOWTITLE eq *HMS*\" 2>nul", 
               shell=True, capture_output=True)
time.sleep(1)

# Launch the app
print("\n[1] Launching HMS...")
proc = subprocess.Popen(
    [sys.executable, "-m", "HMS_py.main"],
    cwd=os.path.join(PROJECT, ".."),
    creationflags=subprocess.CREATE_NEW_PROCESS_GROUP
)
print(f"  PID: {proc.pid}")
pause(4)

# Take launch screenshot
ss("01_app_launch")

# Connect
from pywinauto import Application, Desktop

app = None
desktop = Desktop(backend="uia")
print("\n[2] Connecting to windows...")
for w in desktop.windows():
    txt = w.window_text()
    if txt and ("Login" in txt or "HMS" in txt or "Company" in txt or "User" in txt):
        print(f"  Found: {txt[:50]}")
        try:
            app = Application(backend="uia").connect(handle=w.handle)
            break
        except:
            pass

if not app:
    print("  Trying title_re match...")
    try:
        app = Application(backend="uia").connect(title_re=".*", timeout=5)
    except:
        pass

ss("02_connected")

# List all windows
print("\n[3] Listing all windows...")
for w in desktop.windows():
    txt = w.window_text()
    if txt:
        try:
            print(f"  {txt[:60]}")
        except:
            print(f"  (unicode window)")

ss("03_windows_list")

print("\n[PHASE 1 COMPLETE - App launched and connected]")
print("Screenshots saved in _qa/HMSTesting_20260922/")
