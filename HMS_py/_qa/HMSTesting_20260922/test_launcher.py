"""HMS Python App - Module-wise GUI Testing Script
Uses pywinauto + pyautogui for automated data entry testing with screenshots.

Modules to test (in order):
1. Login + Company Selection
2. Front Office - Check-In
3. Front Office - Checkout
4. Front Office - Folio
5. Front Office - Reservation
6. Front Office - Room Status
7. FA - Voucher Entry
8. FA - Ledger
9. POS - Sales
10. POS - KOT
11. HR - Members
12. Masters - Room/Company/Guest
"""
import os
import sys
import time
import subprocess
import pyautogui
from datetime import datetime

# Add project to path
PROJECT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, PROJECT)

# Evidence folder
EVIDENCE = os.path.join(os.path.dirname(os.path.abspath(__file__)))
os.makedirs(EVIDENCE, exist_ok=True)

# Screenshot counter
_ss_count = 0

def screenshot(name: str):
    """Take screenshot and save to evidence folder."""
    global _ss_count
    _ss_count += 1
    fname = f"{_ss_count:02d}_{name}.png"
    path = os.path.join(EVIDENCE, fname)
    pyautogui.screenshot(path)
    print(f"  [SCREENSHOT] {fname}")
    return path

def wait_and_screenshot(name: str, delay: float = 1.0):
    """Wait then take screenshot."""
    time.sleep(delay)
    return screenshot(name)

print("=" * 60)
print("HMS Python - Module-wise GUI Testing")
print(f"Date: {datetime.now().strftime('%Y-%m-%d %H:%M')}")
print(f"Evidence: {EVIDENCE}")
print("=" * 60)

# Step 1: Launch the app
print("\n[STEP 1] Launching HMS Python app...")
proc = subprocess.Popen(
    [sys.executable, "-m", "HMS_py.main"],
    cwd=PROJECT,
    stdout=subprocess.PIPE,
    stderr=subprocess.PIPE
)
print(f"  PID: {proc.pid}")
time.sleep(3)  # Wait for app to start

# Step 2: Connect to the app window
print("\n[STEP 2] Connecting to app window...")
from pywinauto import Application, Desktop

try:
    app = Application(backend="uia").connect(title_re=".*HMS.*", timeout=10)
    print("  Connected!")
except Exception as e:
    print(f"  Connection failed: {e}")
    # Try finding any Qt window
    try:
        desktop = Desktop(backend="uia")
        for w in desktop.windows():
            txt = w.window_text()
            if "HMS" in txt or "Company" in txt or "Login" in txt:
                print(f"  Found: {txt}")
                app = Application(backend="uia").connect(handle=w.handle)
                break
    except Exception as e2:
        print(f"  Desktop scan failed: {e2}")

# Step 3: Take initial screenshot
screenshot("01_app_launch")

# Step 4: Try to find login dialog
print("\n[STEP 3] Looking for login dialog...")
try:
    # List all controls in the app
    for w in app.windows():
        print(f"  Window: {w.window_text()[:50]}")
        try:
            for child in w.children():
                print(f"    Child: {child.element_info.control_type} - {child.window_text()[:30]}")
        except:
            pass
except Exception as e:
    print(f"  Error listing: {e}")

screenshot("02_login_dialog")

print("\n[TEST LAUNCHER COMPLETE]")
print("Check _qa/HMSTesting_20260922/ for screenshots")
print("=" * 60)
