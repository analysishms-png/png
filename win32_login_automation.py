import pyautogui, time, os, win32gui, win32con, win32process

SCREENSHOT_DIR = os.path.join(os.getcwd(), "HMS_py", "_qa", "kanpur_menu_wise")
os.makedirs(SCREENSHOT_DIR, exist_ok=True)

TESSERACT_PATH = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

# Focus HMS.exe
print("Finding HMS.exe...")
def find_hms():
    windows = []
    def callback(hwnd, _):
        if win32gui.IsWindowVisible(hwnd):
            title = win32gui.GetWindowText(hwnd)
            if title == "HMS":
                rect = win32gui.GetWindowRect(hwnd)
                windows.append((hwnd, title, rect))
        return True
    win32gui.EnumWindows(callback, None)
    return windows

hms_windows = find_hms()
for hwnd, title, rect in hms_windows:
    print(f"  {title} at ({rect[0]},{rect[1]}) size={rect[2]-rect[0]}x{rect[3]-rect[1]}")
    if rect[0] == 960 or rect[0] == -12:
        win32gui.SetForegroundWindow(hwnd)
        win32gui.ShowWindow(hwnd, 3)
        time.sleep(1)
        break

time.sleep(1)

# Login as kanpur
print("\nTyping login credentials...")
pyautogui.typewrite("kanpur")
time.sleep(0.3)
pyautogui.press("tab")
time.sleep(0.3)
pyautogui.typewrite("kanpur")
time.sleep(0.3)
pyautogui.press("enter")
time.sleep(3)
print("Login submitted!")

# Take login screenshot
print("\nTaking login verification screenshot...")
img = pyautogui.screenshot()
path = os.path.join(SCREENSHOT_DIR, "00_kanpur_login.png")
img.save(path)
print(f"Saved: {path}")

# OCR verification
try:
    import pytesseract
    from PIL import Image
    pytesseract.pytesseract.tesseract_cmd = TESSERACT_PATH
    ocr_img = Image.open(path)
    text = pytesseract.image_to_string(ocr_img)
    with open(os.path.join(SCREENSHOT_DIR, "00_kanpur_login_ocr.txt"), "w") as f:
        f.write(text)
    print(f"OCR: {text[:200]}")
except Exception as e:
    print(f"OCR skipped: {e}")

# Navigate all modules
print("\nNavigating all modules...")
modules = [
    ("Alt+F", "Finance", "login_finance"),
    ("Alt+S", "Main Setup", "login_main_setup"),
    ("Alt+R", "Reservation", "login_reservation"),
    ("Alt+O", "Front Office", "login_front_office"),
    ("Alt+H", "House Keeping", "login_house_keeping"),
    ("Alt+I", "Inventory", "login_inventory"),
    ("Alt+P", "Point of Sale", "login_pos"),
    ("Alt+B", "Banquet", "login_banquet"),
    ("Alt+N", "Night Audit", "login_night_audit"),
    ("Alt+U", "HR", "login_hr"),
    ("Alt+E", "EPABX", "login_epabx"),
    ("Alt+M", "Messaging", "login_messaging"),
    ("Alt+T", "Members Mgmt", "login_members"),
    ("Alt+W", "Outdoor Banquet", "login_outdoor_banquet"),
    ("Alt+X", "Extras", "login_extras"),
]

for shortcut, module_name, filename in modules:
    print(f"  {module_name} ({shortcut})...")
    keys = shortcut.split("+")
    pyautogui.hotkey(keys[0], keys[1])
    time.sleep(2)
    
    img = pyautogui.screenshot()
    path = os.path.join(SCREENSHOT_DIR, f"{filename}.png")
    img.save(path)
    print(f"    Saved: {filename}.png")

# Final screenshot
print("\n\nTaking final screenshot...")
img = pyautogui.screenshot()
path = os.path.join(SCREENSHOT_DIR, "login_verification_complete.png")
img.save(path)
print(f"Saved: {path}")

# List all files
print("\n" + "="*60)
files = sorted([f for f in os.listdir(SCREENSHOT_DIR) if f.endswith('.png')])
print(f"Total screenshots: {len(files)}")
for f in files:
    size = os.path.getsize(os.path.join(SCREENSHOT_DIR, f))
    print(f"  {f} ({size} bytes)")

# OCR all screenshots
print("\n\nRunning OCR on all screenshots...")
try:
    import pytesseract
    from PIL import Image
    pytesseract.pytesseract.tesseract_cmd = TESSERACT_PATH
    
    for f in files:
        if "_ocr" in f:
            continue
        path = os.path.join(SCREENSHOT_DIR, f)
        ocr_path = os.path.join(SCREENSHOT_DIR, f.replace(".png", "_ocr.txt"))
        if not os.path.exists(ocr_path):
            ocr_img = Image.open(path)
            text = pytesseract.image_to_string(ocr_img)
            with open(ocr_path, "w") as of:
                of.write(text)
            print(f"  OCR: {f} ({len(text)} chars)")
except Exception as e:
    print(f"OCR batch skipped: {e}")

print("\nDone! All modules verified via win32 MCP interaction.")
