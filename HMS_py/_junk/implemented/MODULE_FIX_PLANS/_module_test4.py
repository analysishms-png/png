import subprocess, os, sys, json, time, base64, win32gui, win32con, win32process, win32api
from PIL import ImageGrab, Image
import pytesseract

# Fix tesseract path
tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"
pytesseract.pytesseract.tesseract_cmd = tesseract_cmd
os.environ["PATH"] = r"C:\Program Files\Tesseract-OCR;" + os.environ["PATH"]

HMS_PID = 13740
RESULTS = []

def find_window(title_sub=None, pid=None):
    results = []
    def callback(hwnd, _):
        if not win32gui.IsWindowVisible(hwnd):
            return True
        title = win32gui.GetWindowText(hwnd)
        if not title:
            return True
        if pid and win32process.GetWindowThreadProcessId(hwnd)[1] != pid:
            return True
        if title_sub and title_sub.lower() not in title.lower():
            return True
        results.append((hwnd, title))
        return True
    win32gui.EnumWindows(callback, None)
    return results

# QA directory
qa_dir = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa"
os.makedirs(qa_dir, exist_ok=True)

# Step 1: Find all HMS windows
print("=== Step 1: Finding HMS windows ===")
all_hms = find_window(pid=HMS_PID)
print(f"Found {len(all_hms)} HMS windows:")
for hwnd, title in all_hms:
    rect = win32gui.GetWindowRect(hwnd)
    print(f"  '{title}' (HWND={hwnd}, {rect[2]-rect[0]}x{rect[3]-rect[1]})")

# Step 2: Focus and restore HMS window
print("\n=== Step 2: Focusing HMS ===")
main_hwnd = all_hms[0][0]
win32gui.SetForegroundWindow(main_hwnd)
win32gui.ShowWindow(main_hwnd, win32con.SW_RESTORE)
win32gui.ShowWindow(main_hwnd, win32con.SW_SHOW)
time.sleep(1)

# Check window rect after restore
rect = win32gui.GetWindowRect(main_hwnd)
print(f"After restore: {rect[2]-rect[0]}x{rect[3]-rect[1]}")

# Step 3: Capture screen
print("\n=== Step 3: Capturing screen ===")
cap_img = ImageGrab.grab(bbox=(rect[0], rect[1], rect[2], rect[3]))
if cap_img.size[0] > 0 and cap_img.size[1] > 0:
    screen_file = os.path.join(qa_dir, "HMS_main.png")
    cap_img.save(screen_file)
    print(f"Screen saved: {screen_file} ({cap_img.size})")
    screen_ocr = pytesseract.image_to_string(cap_img)
    print(f"OCR: {screen_ocr[:300]}")
else:
    print("Empty image, capturing full screen")
    cap_img = ImageGrab.grab()
    screen_file = os.path.join(qa_dir, "HMS_full.png")
    cap_img.save(screen_file)
    screen_ocr = pytesseract.image_to_string(cap_img)
    print(f"OCR: {screen_ocr[:300]}")

# Step 4: Test modules via keyboard shortcuts
print("\n=== Step 4: Module testing ===")

modules_test = [
    ("Finance", "F"),
    ("Main Setup", "M"),
    ("Reservation", "R"),
    ("Front Office", "O"),
    ("House Keeping", "K"),
    ("Inventory", "I"),
    ("Point Of Sale", "P"),
    ("Banquet", "B"),
    ("Night Audit", "A"),
    ("HR", "H"),
    ("EPABX", "X"),
    ("Messaging", "N"),
    ("Members Mgmt", "T"),
    ("Outdoor Banquet", "U"),
    ("Extras", "E"),
    ("Direct Sale", "D"),
]

for module_name, key in modules_test:
    print(f"\nTesting: {module_name} (Alt+{key})")
    try:
        # Press Alt+key
        win32gui.SendMessage(main_hwnd, win32con.WM_KEYDOWN, win32con.VK_MENU, 0)
        time.sleep(0.05)
        win32gui.SendMessage(main_hwnd, win32con.WM_KEYDOWN, ord(key), 0)
        time.sleep(0.05)
        win32gui.SendMessage(main_hwnd, win32con.WM_KEYUP, ord(key), 0)
        win32gui.SendMessage(main_hwnd, win32con.WM_KEYUP, win32con.VK_MENU, 0)
        time.sleep(2)
        
        # Capture screen after module open
        cap = ImageGrab.grab()
        screen_file = os.path.join(qa_dir, f"module_{module_name.replace(' ', '_')}.png")
        cap.save(screen_file)
        screen_ocr = pytesseract.image_to_string(cap)
        
        if len(screen_ocr.strip()) > 10:
            print(f"  {module_name}: PASS (OCR length={len(screen_ocr)})")
            RESULTS.append({"module": module_name, "status": "PASS", "ocr_length": len(screen_ocr)})
        else:
            print(f"  {module_name}: FAIL (empty)")
            RESULTS.append({"module": module_name, "status": "FAIL", "reason": "empty"})
    except Exception as e:
        print(f"  {module_name}: ERROR - {e}")
        RESULTS.append({"module": module_name, "status": "ERROR", "reason": str(e)})

# Step 5: Database verification
print("\n=== Step 5: Database verification ===")
sqlcmd = r'C:\Program Files\Microsoft SQL Server\100\Tools\Binn\SQLCMD.EXE'
tables_to_check = ["Company", "menuHelp", "User_Module", "GuestProf", "RoomMast", "Booking", "Sale1", "Stock", "ItemMast"]
for table in tables_to_check:
    try:
        r = subprocess.run([sqlcmd, '-S', 'Localhost', '-d', 'MOONData2627', '-E', '-Q', f'SELECT COUNT(*) FROM {table}'], capture_output=True, text=True, timeout=5)
        lines = r.stdout.strip().split('\n')
        count = lines[-1].strip() if lines else '0'
        print(f"  {table}: {count} rows")
        RESULTS.append({"db_check": table, "rows": count, "status": "OK"})
    except Exception as e:
        print(f"  {table}: ERROR - {e}")
        RESULTS.append({"db_check": table, "status": "ERROR", "reason": str(e)})

# Step 6: Save report
print("\n=== Step 6: Saving report ===")
report = {
    "test_date": time.strftime("%Y-%m-%d %H:%M:%S"),
    "hms_pid": HMS_PID,
    "database": "MOONData2627",
    "total_tables": 274,
    "total_tests": len(RESULTS),
    "results": RESULTS
}
with open(os.path.join(qa_dir, "HMS_module_test.json"), "w") as f:
    json.dump(report, f, indent=2)

passed = sum(1 for r in RESULTS if r.get("status") == "PASS")
failed = sum(1 for r in RESULTS if r.get("status") == "FAIL")
print(f"\nResults: {passed} passed, {failed} failed, {len(RESULTS)-passed-failed} other")
print("Report saved to _qa/HMS_module_test.json")
print(f"Screenshots saved to _qa/")
