import subprocess, os, sys, json, time, win32gui, win32con, win32process
from PIL import ImageGrab
import pytesseract
pytesseract.pytesseract.tesseract_cmd = r"C:\Program Files\Tesseract-OCR\tesseract.exe"

HMS_PID = 13740
qa_dir = r"C:\Users\LENOVO\Desktop\serialkey\PROJECT_REPAIR - Copy\HMS_py\HMS_py\_qa"
os.makedirs(qa_dir, exist_ok=True)

def find_hms():
    results = []
    def cb(hwnd, _):
        if win32gui.IsWindowVisible(hwnd):
            title = win32gui.GetWindowText(hwnd)
            _, pid = win32process.GetWindowThreadProcessId(hwnd)
            if pid == HMS_PID and title:
                results.append((hwnd, title))
        return True
    win32gui.EnumWindows(cb, None)
    return results

hwnds = find_hms()
main_hwnd = hwnds[0][0]
win32gui.SetForegroundWindow(main_hwnd)
time.sleep(0.5)

modules = [('Finance','F'),('Main Setup','M'),('Reservation','R'),('Front Office','O'),('House Keeping','K'),('Inventory','I'),('Point Of Sale','P'),('Banquet','B'),('Night Audit','A'),('HR','H')]

results = []
for name, key in modules:
    print(f"Testing {name} (Alt+{key})...")
    try:
        win32gui.SendMessage(main_hwnd, win32con.WM_KEYDOWN, win32con.VK_MENU, 0)
        time.sleep(0.05)
        win32gui.SendMessage(main_hwnd, win32con.WM_KEYDOWN, ord(key), 0)
        time.sleep(0.05)
        win32gui.SendMessage(main_hwnd, win32con.WM_KEYUP, ord(key), 0)
        win32gui.SendMessage(main_hwnd, win32con.WM_KEYUP, win32con.VK_MENU, 0)
        time.sleep(1.5)
        
        r = win32gui.GetWindowRect(main_hwnd)
        img = ImageGrab.grab(bbox=(r[0], r[1], r[2], r[3]))
        fname = os.path.join(qa_dir, "module_" + name.replace(" ", "_") + ".png")
        img.save(fname)
        
        ocr = pytesseract.image_to_string(img)
        if len(ocr.strip()) > 10:
            print(f"  {name}: PASS (OCR={len(ocr)} chars)")
            results.append({"module": name, "status": "PASS", "ocr_length": len(ocr)})
        else:
            print(f"  {name}: FAIL")
            results.append({"module": name, "status": "FAIL"})
    except Exception as e:
        print(f"  {name}: ERROR - {e}")
        results.append({"module": name, "status": "ERROR", "reason": str(e)})

with open(os.path.join(qa_dir, "HMS_module_test.json"), "w") as f:
    json.dump({"results": results, "total": len(results)}, f, indent=2)

passed = sum(1 for r in results if r["status"] == "PASS")
print(f"\nResults: {passed}/{len(results)} passed")
