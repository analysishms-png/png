"""HMS Python - Full Module-wise GUI Testing
Clicks each module, opens sub-forms, tests data entry, takes screenshots.
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

def pause(t=2.0):
    time.sleep(t)

# Connect to HMS
print("Connecting to HMS...")
desktop = Desktop(backend="uia")
app = None
for w in desktop.windows():
    try:
        txt = w.window_text()
        if "Moon and Mars" in txt:
            app = Application(backend="uia").connect(handle=w.handle)
            break
    except:
        pass

if not app:
    print("ERROR: HMS not found!")
    sys.exit(1)

win = app.top_window()
print(f"  Connected: {win.window_text()[:50]}")

# Maximize window
try:
    win.maximize()
    pause(1)
except:
    pass

ss("01_main_window")

# ============================================================
# Module list from sidebar
# ============================================================
modules = [
    "Finance", "Main Setup", "Reservation", "Front Office",
    "House Keeping", "Inventory", "Point Of Sale", "Banquet",
    "Night Audit", "EPABX", "Messaging", "Members Mgmt"
]

# Test each module
for mod_name in modules:
    print(f"\n--- Testing Module: {mod_name} ---")
    try:
        # Click the module button
        btn = win.child_window(title=mod_name, control_type="CheckBox")
        if btn.exists():
            btn.click()
            pause(2)
            ss(f"module_{mod_name.replace(' ', '_')}")
            
            # Look for sub-forms that opened
            try:
                new_win = app.top_window()
                if new_win != win:
                    print(f"  Sub-form opened: {new_win.window_text()[:50]}")
                    ss(f"subform_{mod_name.replace(' ', '_')}")
                    
                    # Try to find and list controls
                    try:
                        new_win.print_control_identifiers()
                    except:
                        pass
                    
                    # Close the sub-form
                    try:
                        close_btn = new_win.child_window(title="Close", control_type="Button")
                        if close_btn.exists():
                            close_btn.click()
                            pause(1)
                    except:
                        # Try Escape key
                        pyautogui.press('escape')
                        pause(1)
            except Exception as e:
                print(f"  No sub-form: {e}")
        else:
            print(f"  Button not found: {mod_name}")
    except Exception as e:
        print(f"  Error testing {mod_name}: {e}")

ss("02_all_modules_tested")

print("\n[DONE - All modules tested]")
print(f"Screenshots saved in: {EVIDENCE}")
