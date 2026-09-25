import pyautogui, time, os, subprocess, json, win32gui

SCREENSHOT_DIR = os.path.join(os.getcwd(), "HMS_py", "_qa", "kanpur_menu_wise")
os.makedirs(SCREENSHOT_DIR, exist_ok=True)

TESSERACT_PATH = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

# Use fixed coordinates from working run
# HMS window at (-12,-12) size=1944x1032 from earlier successful run
LEFT, TOP, WIDTH, HEIGHT = -12, -12, 1944, 1032

def take_screenshot(filename):
    """Take full screen screenshot"""
    img = pyautogui.screenshot()
    path = os.path.join(SCREENSHOT_DIR, filename)
    img.save(path)
    print(f"  Saved: {filename} ({img.size})")
    
    # OCR
    try:
        import pytesseract
        from PIL import Image
        pytesseract.pytesseract.tesseract_cmd = TESSERACT_PATH
        img2 = Image.open(path)
        text = pytesseract.image_to_string(img2)
        ocr_path = os.path.join(SCREENSHOT_DIR, filename.replace(".png", "_ocr.txt"))
        with open(ocr_path, "w") as f:
            f.write(text)
        return text[:300]
    except Exception as e:
        return f"OCR: {e}"

# Focus HMS window
print("Focusing HMS.exe...")
try:
    # Find HMS window at (960,540) or (-12,-12)
    hms_windows = []
    def callback(hwnd, _):
        if win32gui.IsWindowVisible(hwnd):
            title = win32gui.GetWindowText(hwnd)
            if title == "HMS":
                rect = win32gui.GetWindowRect(hwnd)
                hms_windows.append((hwnd, title, rect))
        return True
    win32gui.EnumWindows(callback, None)
    for hwnd, title, rect in hms_windows:
        print(f"  Found: {title} at ({rect[0]},{rect[1]}) size={rect[2]-rect[0]}x{rect[3]-rect[1]}")
        if rect[0] == 960 or rect[0] == -12:
            win32gui.SetForegroundWindow(hwnd)
            win32gui.ShowWindow(hwnd, 3)
            time.sleep(1)
            break
except Exception as e:
    print(f"  Window focus error: {e}")

time.sleep(1)

# Take startup screenshot
print("\nTaking startup screenshot...")
text = take_screenshot("00_startup.png")
print(f"  OCR: {text}")

# Navigate modules with keyboard shortcuts
modules = [
    ("Alt+F", "Finance", "01_finance"),
    ("Alt+S", "Main Setup", "02_main_setup"),
    ("Alt+R", "Reservation", "03_reservation"),
    ("Alt+O", "Front Office", "04_front_office"),
    ("Alt+H", "House Keeping", "05_house_keeping"),
    ("Alt+I", "Inventory", "06_inventory"),
    ("Alt+P", "Point of Sale", "07_pos"),
    ("Alt+B", "Banquet", "08_banquet"),
    ("Alt+N", "Night Audit", "09_night_audit"),
    ("Alt+U", "HR", "10_hr"),
    ("Alt+E", "EPABX", "15_epabx"),
    ("Alt+M", "Messaging", "12_messaging"),
    ("Alt+T", "Members Mgmt", "13_members"),
    ("Alt+W", "Outdoor Banquet", "14_outdoor_banquet"),
    ("Alt+X", "Extras", "11_extras"),
]

print("\n" + "="*60)
print("NAVIGATING ALL 16 MODULES")
print("="*60)

for shortcut, module_name, filename in modules:
    print(f"\n{module_name} ({shortcut})...")
    keys = shortcut.split("+")
    pyautogui.hotkey(keys[0], keys[1])
    time.sleep(2)
    text = take_screenshot(f"{filename}.png")
    print(f"  OCR: {text[:100]}")

# Go back to Front Office for extra screenshots
print("\n\nExtra screenshots...")
pyautogui.hotkey("alt", "o")
time.sleep(2)
take_screenshot("04b_front_office_detail.png")

pyautogui.hotkey("alt", "f")
time.sleep(2)
take_screenshot("01b_finance_detail.png")

pyautogui.hotkey("alt", "n")
time.sleep(2)
take_screenshot("09b_night_audit_detail.png")

# List all screenshots
print("\n" + "="*60)
print("COMPLETE")
print("="*60)
files = sorted([f for f in os.listdir(SCREENSHOT_DIR) if f.endswith('.png')])
print(f"\nTotal screenshots: {len(files)}")
for f in files:
    size = os.path.getsize(os.path.join(SCREENSHOT_DIR, f))
    print(f"  {f} ({size} bytes)")

# Verify module coverage
modules_covered = set()
for f in files:
    for mod in ["finance", "main_setup", "reservation", "front_office", "house_keeping",
                "inventory", "pos", "banquet", "night_audit", "hr", "epabx",
                "messaging", "members", "outdoor_banquet", "extras"]:
        if mod in f.lower():
            modules_covered.add(mod)
print(f"\nModules covered: {len(modules_covered)}/16")
print(f"  {sorted(modules_covered)}")
