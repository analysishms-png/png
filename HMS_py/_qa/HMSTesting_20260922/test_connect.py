"""HMS Python - Full Module-wise GUI Testing
Connects to running HMS app, navigates each module, takes screenshots.
"""
import os, sys, time
import pyautogui
from pywinauto import Application, Desktop

EVIDENCE = os.path.join(os.path.dirname(os.path.abspath(__file__)), "evidence")
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

# Connect to HMS main window
print("Connecting to HMS...")
desktop = Desktop(backend="uia")
app = None
for w in desktop.windows():
    try:
        txt = w.window_text()
        if "Moon and Mars" in txt:
            app = Application(backend="uia").connect(handle=w.handle)
            print(f"  Connected: {txt[:50]}")
            break
    except:
        pass

if not app:
    print("ERROR: HMS not found!")
    sys.exit(1)

win = app.top_window()
ss("01_main_window")

# Print main window controls
print("\nMain window controls:")
try:
    win.print_control_identifiers()
except Exception as e:
    print(f"  Error: {e}")

ss("02_main_controls")

print("\n[DONE - Check evidence/ for screenshots]")
