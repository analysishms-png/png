import os, sys, subprocess, json, time, base64
from PIL import ImageGrab
import win32gui, win32ui, win32con

SCREENSHOT_DIR = os.path.join(os.getcwd(), "HMS_py", "_qa", "kanpur_menu_wise")
os.makedirs(SCREENSHOT_DIR, exist_ok=True)

# Find HMS window
def find_hms_window():
    windows = []
    def callback(hwnd, _):
        if win32gui.IsWindowVisible(hwnd):
            title = win32gui.GetWindowText(hwnd)
            if title and "HMS" in title:
                rect = win32gui.GetWindowRect(hwnd)
                windows.append((hwnd, title, rect))
        return True
    win32gui.EnumWindows(callback, None)
    return windows

print("Finding HMS windows...")
hms_windows = find_hms_window()
print(f"Found {len(hms_windows)} HMS windows")
for hwnd, title, rect in hms_windows:
    print(f"  HWND={hwnd}: '{title}' at ({rect[0]},{rect[1]}) size={rect[2]-rect[0]}x{rect[3]-rect[1]}")

# Find the actual HMS.exe window (not File Explorer)
target_hwnd = None
target_rect = None
for hwnd, title, rect in hms_windows:
    if "File Explorer" not in title and "py" not in title.lower():
        target_hwnd = hwnd
        target_rect = rect
        break

# If no clean match, use the first one that's on-screen
if target_hwnd is None:
    for hwnd, title, rect in hms_windows:
        if rect[0] > -1000 and rect[1] > -1000:
            target_hwnd = hwnd
            target_rect = rect
            break

if target_hwnd is None and hms_windows:
    target_hwnd, target_title, target_rect = hms_windows[0]

if target_hwnd:
    left, top, right, bottom = target_rect
    width = right - left
    height = bottom - top
    print(f"\nTarget: HWND={target_hwnd} at ({left},{top}) size={width}x{height}")
    
    # Bring window to foreground
    win32gui.SetForegroundWindow(target_hwnd)
    time.sleep(0.5)
    
    # Capture just the window area using win32gui
    try:
        hdc_window = win32gui.GetWindowDC(target_hwnd)
        hdc_mem = win32ui.CreateDCFromHandle(hdc_window)
        dc = win32ui.CreateDC()
        dc.CreateCompatibleDC(hdc_mem)
        
        bmp = win32ui.CreateBitmap()
        bmp.CreateCompatibleBitmap(hdc_mem, width, height)
        old = dc.SelectObject(bmp)
        
        dc.BitBlt((0, 0), (width, height), hdc_mem, (0, 0), win32con.SRCCOPY)
        
        bmp_info = bmp.GetInfo()
        bmp_str = bmp.GetBitmapBits(True)
        
        img = ImageGrab.frombuffer(
            "RGB",
            (bmp_info["bmWidth"], bmp_info["bmHeight"]),
            bmp_str,
            "raw",
            "BGRX",
            0,
            1
        )
        
        # Save as PNG
        path = os.path.join(SCREENSHOT_DIR, "00_startup.png")
        img.save(path)
        print(f"Saved window screenshot: {path} ({img.size})")
        
        # Cleanup
        dc.SelectObject(old)
        win32gui.ReleaseDC(target_hwnd, hdc_window)
        win32gui.DeleteObject(bmp.GetHandle())
        
    except Exception as e:
        print(f"win32gui capture failed: {e}")
        # Fallback to full screen capture
        img = ImageGrab.grab()
        path = os.path.join(SCREENSHOT_DIR, "00_startup.png")
        img.save(path)
        print(f"Saved full screen: {path}")
    
    # Now take full screen and crop to window
    print("\nTaking full screen capture...")
    full_img = ImageGrab.grab()
    path = os.path.join(SCREENSHOT_DIR, "00_full_screen.png")
    full_img.save(path)
    print(f"Saved: {path}")
    
    # Crop to window area
    crop_img = full_img.crop((left, top, right, bottom))
    path = os.path.join(SCREENSHOT_DIR, "01_window_crop.png")
    crop_img.save(path)
    print(f"Saved cropped: {path}")

else:
    print("No HMS window found! Taking full screen...")
    img = ImageGrab.grab()
    path = os.path.join(SCREENSHOT_DIR, "00_full_screen.png")
    img.save(path)
    print(f"Saved: {path}")

print(f"\nScreenshots saved to: {SCREENSHOT_DIR}")
print(f"Files: {os.listdir(SCREENSHOT_DIR)}")
